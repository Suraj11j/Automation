FUNCTION State_Transition : INT
  VAR_INPUT
    Current_State : INT;
    Required_State : INT;
    Next_State : INT;
  END_VAR

IF Current_State = Required_State THEN
    State_Transition := Next_State;
ELSE
    State_Transition := Current_State;
END_IF;

END_FUNCTION