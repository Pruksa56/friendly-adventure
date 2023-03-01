-- loop for testing
with Ada.Text_IO; use Ada.Text_IO;

procedure Greet_5A is

begin
   for I in 1..10 loop
      Put_Line("Long Live The Chadchart"& Integer'Image(I));
   end  loop;

end Greet_5A;
