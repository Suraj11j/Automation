(* Keeps input vaule from going out of bounds *)

FUNCTION Limit_Value : REAL
  VAR_INPUT
    Value : REAL;
    Min_Value : REAL;
    Max_Value : REAL;
  END_VAR

IF Value < Min_Value THEN
    Limit_Value := Min_Value;
ELSIF Value > Max_Value THEN
    Limit_Value := Max_Value;
ELSE
    Limit_Value := Value;
END_IF;

END_FUNCTION