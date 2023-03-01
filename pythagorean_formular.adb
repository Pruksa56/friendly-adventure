--The Pythagorean formular is
-- (C^2) = (A^2)+(B^2)
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics;

with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

with Ada.Numerics.Generic_Elementary_Functions;


procedure Pythagorean_Formular is


   A, B, C : Float ;
   Summary_1 : Float;
   Summary_2 : Float;
   Summary_3 : Float;

   I : Integer;
   -- I is case operator vavlue


begin

   -- Menu
   Put_Line("**********Menu**********");
   Put_Line("Pless Enter number to seclection");
   Put_Line("0._ Find C");
   Put_Line("1._Find A");
   Put_Line("2._Find B");
   Put_Line("Enter the others to exit");

   loop

      Put_Line("Enter number for seletion");
      Get(I);
      Put(I);


      case I is

            when 0 =>

            Put_Line("Find the C");
            Put_Line("Enter vavule of A ");
            Put(A);
            Get(A);
            Put_Line("Enter vavule of B ");
            Put(B);
            Get(B);

            Summary_1 := (A**2)+(B**2);

            Put_Line("The Resuit of C is .... "&Float'Image(Sqrt(Summary_1)));

         when 1 =>

            Put_Line("Find the A");
            Put_Line("Enter vavule of C ");
            Put(A);
            Get(A);
            Put_Line("Enter vavule of B ");
            Put(B);
            Get(B);

            Summary_2 := (C**2)-(B**2);

            Put_Line("The Resuit of A is .... "&Float'Image(Sqrt(Summary_2)));


         when 2 =>

            Put_Line("Find the B");
            Put_Line("Enter vavule of C ");
            Put(A);
            Get(A);
            Put_Line("Enter vavule of A ");
            Put(B);
            Get(B);

            Summary_3 := (C**2)-(A**2);

            Put_Line("The Resuit of B is .... "&Float'Image(Sqrt(Summary_3)));


         when others =>

            Put_Line("Pless try exit to quit program");

            exit;

      end case ;

   end loop;

end Pythagorean_Formular;
