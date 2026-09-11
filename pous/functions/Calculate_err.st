(* Finds diffrence between desired and actual value *)

FUNCTION Calculate_err : REAL
  VAR_INPUT
    Setpoint : REAL;
    Process_Value : REAL;
  END_VAR

Calculate_err := Setpoint - Process_Value;

END_FUNCTION