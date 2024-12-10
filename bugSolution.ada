```ada
function Check_Range(Value : Integer; Min : Integer; Max : Integer) return Boolean is
begin
  return Value >= Min and Value <= Max;  -- This check is insufficient if the input Value can exceed Integer's limits.
end Check_Range;

function Safe_Check_Range(Value : Integer; Min : Integer; Max : Integer) return Boolean is
   Result : Boolean := False;
begin
   -- Check for overflow/underflow and handle appropriately:
   if Value >= Min and Value <= Max then
      Result := True;
   else
      Result := False; -- Handle the out of range error appropriately.
      -- Raise an exception, or implement alternative error handling
      -- Example of raising exception:
      -- raise Range_Error with "Value out of range";
   end if;
   return Result;
end Safe_Check_Range;

procedure Example is
   X : Integer := 10;
begin
   if Safe_Check_Range(X, 1, 100) then  -- Using the safer function
      Put_Line("X is within range");
   else
      Put_Line("X is out of range");
   end if;
end Example;
```