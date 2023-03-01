-- The Pythagorea's formular
-- (C^2) = (A^2)+(B^2)
--
--       |\
--       | \
--       |  \
--       |   \
--    A  |    \   C
--       |     \
--       |      \
--       --------
--          B
--
-- selecter betwen is
--
-- 1. Find C = sqrt(A^2+B^2)
-- 2. Find A = sqrt(C^2-B^2)
-- 3. Find B = sqrt(C^2-A^2)

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics;

with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

with Ada.Numerics.Generic_Elementary_Functions;

procedure Pythagorean_Problem is

   N : Integer;

-- The seleter operator

   A ,B , C : Float;

-- Varible include

   Resultpro_1 : Float ;
   Resultpro_2 : Float ;
   Resultpro_3 : Float ;

-- Answer of program

begin

-- Show graphic
   Put_Line("The Pythagorean Calculater Program");
   Put_Line("________(C^2) = (A^2)+(B^2)_______");
   Put_Line("**********************************");
   Put_Line("*************|\*******************");
   Put_Line("*************| \******************");
   Put_Line("*************|  \*****************");
   Put_Line("*************|   \****************");
   Put_Line("**********A**|    \**C************");
   Put_Line("*************|     \**************");
   Put_Line("*************|      \*************");
   Put_Line("*************--------*************");
   Put_Line("*****************B****************");
   Put_Line("**********************************");
   Put_Line("______1.[C = sqrt(A^2+B^2)]_______");
   Put_Line("______2.[A = sqrt(C^2-B^2)]_______");
   Put_Line("______3.[B = sqrt(C^2-A^2)]_______");


   --Menu page

   Put_Line("***************Menu***************");
   Put_Line("Pless Enter Number to Select Option");
   Put_Line("1. find C");
   Put_Line("2. find A");
   Put_Line("3. find B");
   Put_Line("Enter the Other Number to exit");

  loop

      Put("Pless enter the vavule");
      Get(N);
      Put(N);

     case N is

         when 1 =>

            Put_Line("1. find C");
            Put_Line("Pless enter the vavule of A ");
            Get(A);
            Put(A);
            Put_Line("Pless enter the vavule of B ");
            Get(B);
            Put(B);

            Resultpro_1 := (A**2)+(B**2);

            Put_Line("The vavule of C is..." &Float'Image(Sqrt(Resultpro_1)));

         when 2 =>

            Put_Line("2. find A");
            Put_Line("Pless enter the vavule of C ");
            Get(C);
            Put(C);
            Put_Line("Pless enter the vavule of B ");
            Get(B);
            Put(B);

            Resultpro_2 := (C**2)-(B**2);

            Put_Line("The vavule of A is..." &Float'Image(Sqrt(Resultpro_2)));


         when 3 =>

            Put_Line("3. find B");
            Put_Line("Pless enter the vavule of C ");
            Get(C);
            Put(C);
            Put_Line("Pless enter the vavule of A ");
            Get(A);
            Put(A);

            Resultpro_3 := (C**2)-(A**2);

            Put_Line("The vavule of B is..." &Float'Image(Sqrt(Resultpro_3)));

         when others =>

            Put_Line("Pless try exit to exit program");

             exit;
        end case;
  end loop;
end Pythagorean_Problem;
