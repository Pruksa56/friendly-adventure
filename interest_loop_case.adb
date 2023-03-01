--The Financal Compoud Interest formular
-- PF = PI*(1+(R/100))^T
-- PF is
-- PI is
-- R is Interest rate
-- T is time (Year)


with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Calendar; use Ada.Calendar;


with Ada.Numerics; use Ada.Numerics;

with Ada.Numerics.Elementary_Functions;
use  Ada.Numerics.Elementary_Functions;

with Ada.Numerics.Generic_Elementary_Functions;


procedure Interest_Loop is

   P, R : Float;
   A : Float;
   T : Integer;
   I : Integer := 1;
   Operate: Float;
   Increment_power : Float;
   N : Integer;

   -- case secleter

   YearResuit :Float;
   -- time resuit
   P_Ratio : Float;

begin

   --Menu page

   Put_Line("The Finalcal Calculating (Compound Interest) ");
   Put_Line("Pless seclect the number to you need");
   Put_Line("1.Find the resuit of your money");
   Put_Line("2.Find the Time to use");
   Put_Line("Enter the other to exit");


   loop


   Put("Pless enter the vavule");
      Get(N);
      Put(N);


   Put_Line("Pless enter the initially money in the bank account");
   Put(P);
   Get(P);
   Put_Line("Pless enter the interest rate ");
   Put(R);
   Get(R);
   Put_Line("Pless enter the year");
   Put(T);
   Get(T);

   Increment_power := (1.0000 + (R / 100.0000));



      case N is

      when => 1

         -- Find the PF (Interest net.)
        -- Put_Line("1.Find the resuit of your money") ;

         loop

         Operate := P*(Increment_power**I);

         Put_Line("The resuit of interest is:" &Integer'Image(I));

         Put_Line("Your get interest is" &Float'Image(Operate));

         exit when I = T;

         I := I+1;

         end loop;

        exit;

         when => 2


      --    Put_Line("2.Find the Time to use") ;
          Put_Line("Pless Enter the money your taget");
          Put(A);
          Get(A);

          P_Ratio := (A/P);

          YearResuit := Log(P_Ratio) / Log(Increment_power);

          Put_Line("The year to use get money target is :" &Float'Image(YearResuit));

        exit;

       when others =>

           Put_Line("Pless any key to exit");

         exit;
     end case;
   end loop;
end Interest_Loop;
