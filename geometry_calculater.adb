-- My Ada micro-project to self study programing
-- Mathematic calculater (2D_Geomatic Area calculator)
-- Developed by Santisuk
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Streams.Stream_IO; use Ada.Streams.Stream_IO;
with Ada.Numerics; use Ada.Numerics;


with Ada.Numerics.Complex_Types;
use Ada.Numerics.Complex_Types;

with Ada.Numerics.Complex_Elementary_Functions;
with Ada.Numerics.Complex_Elementary_Functions;

procedure Geometry_Calculater is


   N:Integer;

--Include varible operator seletion

   W ,L:Float;

--Include varible for Rectangle area calculation

   B ,H:Float;

--Include varible for Triangle area calculation

   R:Float;

--Include varible for Circule area calculation

--type N is range 0..2;


begin


 --Menu display

   Put_Line("The Geomatic Area Calculater(2D)");
   Put_Line("Calculater Menu");
   Put_Line("Pless Enter Value 0, 1 or 2 to selection");
   Put_Line("0.Retangle area");
   Put_Line("1.Triangle area");
   Put_Line("2.Circle area");
   Put_Line("Enter the others value to exit");

   loop

      

      Put("Enter the vavule");
      Get(N);
      Put(N);

      --get secleter

      case N is

         when 0 =>
            
            --calculate to retangle
            Put_Line("Pless Insert Length");
            Get(L);
            Put_Line("Pless Insert Width");
            Get(W);
            Put_Line("You Retangle area is"& Float'Image(L*W));

         when 1 =>
            
            --calculate to triangle
            Put_Line("Pless Insert Base");
            Get(B);
            Put_Line("Pless Insert Height");
            Get(H);
            Put_Line("You Triangle area is"& Float'Image(0.5*(B*H)));

         when 2 =>

            --calculate to circule
            Put_Line("Pless Insert Radius");
            Get(R);
            Put_Line("You Circule area appoximate is"& Float'Image(Pi*(R*R)));
         when others =>

            --exit program
            Put_Line("Pless any key to exit");
            exit;

      end case;
   end loop;




end Geometry_Calculater;
