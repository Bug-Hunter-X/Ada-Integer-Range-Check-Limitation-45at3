```ada
function Check_Range(Value : Integer; Min : Integer; Max : Integer) return Boolean is
begin
  return Value >= Min and Value <= Max;
end Check_Range;

procedure Example is
   X : Integer := 10;
begin
   if Check_Range(X, 1, 100) then
      Put_Line("X is within range");
   else
      Put_Line("X is out of range");
   end if;
end Example;
```