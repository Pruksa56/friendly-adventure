with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Ifelse is
   N : Integer;
begin

   Put ("Enter an integer value:");
   Get (N);
   if N > 0 then
      Put_Line ("is a positive number");
   else
      Put_Line ("is a negative number");
   end if;
end Ifelse;
