(* Takes input in analog and gives mesurement value *)

FUNCTION Scale_analog : REAL
  VAR_INPUT
    Raw_value : REAL;
    Raw_Min : REAL;
    Raw_Max : REAL;
    Eng_Min : REAL;
    Eng_Max : REAL;
  END_VAR

Scale_Analog := (((Raw_Value - Raw_Min) / (Raw_Max - Raw_Min)) * (Eng_Max - Eng_Min)) + Eng_Min;

END_FUNCTION