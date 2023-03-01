with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics;



procedure Triangle_Area_Calculation is

   B, H : Float;

begin

   Put_Line("Triangle_Area_Calculation");
   Put_Line("B Bass is");
   Get(B);
   Put_Line("H Height is");
   Get(H);



   Put_Line("Triangle_Area_is" & Float'Image((B*H)*0.50));

end Triangle_Area_Calculation;
