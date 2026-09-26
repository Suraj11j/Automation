# BatchProcessingPlant — CODESYS PLC Project

Batch processing plant automation built in CODESYS V3.5 Controls
ingredient filling, mixing, discharge, and packaging via a state
machine sequencer, with equipment interlocks, fault handling, a
compacting alarm display, and a working Visu HMI.

> **Repo note**: `BatchProcessingPlant.project` is CODESYS's binary/
> encrypted project format — it can't be diffed, reviewed, or read
> outside the IDE. Everything below describes what the project
> *contains*, for anyone who can't just open it and look.

## Project structure

```
BatchProcessingPlant/
├── BatchProcessingPlant.project        ← main CODESYS project (binary)
├── BatchProcessingPlant-AllUsers.opt   ← shared IDE settings (commit this)
├── .gitignore
└── README.md
```

Personal `.opt` files (`BatchProcessingPlant-<username>.opt`) and
CODESYS temp files (`*.~u`) are excluded — see **Team workflow**.

## POU overview

| Layer | Objects | Language |
|---|---|---|
| Data types | `E_MACHINE_STATE`, `ST_BATCH` (default recipe values), `ST_ALARM` | DUT |
| Functions | `Calculate_err`, `Engineering_Unit`, `Limit_Value`, `Scale_analog`, `State_Transition` | ST |
| Function blocks | `FB_Motor`, `FB_Pump`, `FB_Valve`, `FB_Alarm`, `FB_BatchProgress` | ST |
| Programs | `Safety_Manager`, `Analog_Manager`, `Conveyor_Controller`, `Equipment_Controller`, `Batch_Controller`, `Alarm_Manager` | Ladder (LD) |
| Programs | `HMI_Manager`, `Alarm_Display` | ST |
| Global vars | `Global_Vars` (GVL) | — |

## Task configuration

| Task | Interval | Priority | Calls |
|---|---|---|---|
| Safety_Task | 10ms | 0 | Safety_Manager |
| Control_Task | 50ms | 1 | Conveyor_Controller → Equipment_Controller |
| Analog_Task | 100ms | 2 | Analog_Manager |
| Batch_Task | 250ms | 3 | Batch_Controller |
| Alarm_Task | 500ms | 4 | Alarm_Manager → Alarm_Display |
| HMI_Task | 1s | 5 | HMI_Manager |

Call order within a shared task matters — a program called later in the
same task sees the earlier program's output from the *same* scan.

## Visu / HMI screens

- **Batch State** — current state as readable text (`E_MACHINE_STATE`
  enum, not a raw number), `Safety_OK` indicator, 0–100% batch progress
  bar driven by `FB_BatchProgress`
- **Equipment Status** — 10 device tiles (Conveyor, Mixer, Packaging,
  Pump A/B, Discharge Pump, Inlet/A/B/Discharge Valves). Each is a
  single light: Normal state color = run/open, Alarm state color
  (overrides) = fault. Gray/green/red, no separate fault dot needed.
- **Batch Control** — Start / Stop / Reset / Ack, all bound via
  **Tap**, not Toggle (see warning below)
- **Batch Recipe** — live values from `Batch_Controller.Batch`. Time
  fields (Mix/Pack time) are converted via `TIME_TO_DINT` to whole
  seconds before display, rather than relying on the `%t[...]`
  placeholder, which extracts time *components* (e.g. `%t[s]` on
  `T#120S` gives `0`, the seconds-within-the-minute remainder — not
  the total).
- **Conveyor Control** — manual Start/Stop bound to `Conveyor_Start_Cmd`
  / `Conveyor_Stop_Cmd`, never the computed `Conveyor_Start`/`Stop`
  directly (those are overwritten every scan by `Conveyor_Controller`).
  Mode text via `HMI_Manager.Conveyor_Mode_Text` (`SEL` on `Conveyor_Auto`).
- **Alarms** — `Alarm_Display` packs whichever of the 14 alarms are
  currently active into a small fixed number of visible rows with no
  gaps, instead of reserving 14 fixed (mostly-empty) slots.

**Button binding warning**: `Batch_Stop` and `Batch_Reset` must be
**Tap** (momentary), never Toggle. Both force `Batch_State_Code` to 0
every scan while `TRUE` — a Toggle-bound button left in the "on"
position freezes the whole sequence at IDLE until manually un-toggled.

## Setup

1. Clone the repo, open `BatchProcessingPlant.project` in CODESYS
   V3.5 SP19+ with Simulation
2. Build → Login (Simulation) → Start; confirm 0 errors
3. Your own `.opt` file generates automatically and is gitignored —
   nothing to do with it manually

## Team workflow

The `.project` file is binary — Git can't merge it, only pick one
version over another on conflict. Rules:

1. **One person edits at a time.** Claim a POU in team chat before
   opening it, release it when you push.
2. **Commit and push in small steps**, not one giant end-of-day commit.
3. **Never edit `main` directly** — use branches.
4. **Always `git pull` before opening the project.**

### Branch naming
```
feature/hmi-manager
fix/batch-timeout
test/conveyor-simulation
```

### Commit message format
```
[POU name] short description

Equipment_Controller: make FB calls unconditional
Alarm_Manager: add 14 FB_Alarm instances with codes/messages
Batch_Controller: add per-state TON timeouts
```
