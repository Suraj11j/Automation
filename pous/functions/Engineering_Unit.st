(* Applies multiplication factor and offset to a value *)

FUNCTION Engineering_Unit : REAL
  VAR_INPUT
    Value : REAL;
    Unit_Factor : REAL;
    Unit_Offset : REAL;
  END_VAR

Engineering_Unit := (Value * Unit_Factor) + Unit_Offset;

END_FUNCTION