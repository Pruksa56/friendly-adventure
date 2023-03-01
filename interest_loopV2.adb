with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics;



procedure Interest_Loop is

   P, A, R : Float;
   T : Integer;
   I : Integer := 1;
   Operate: Float;
   Increment_power : Float;

begin

    --Menu page
   Put_Line("The Finalcal Calculating (Compound Interest) ");
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

   loop

      Operate := Increment_power**I;

      A := (P*Operate);

      --Put_Line("The resuit of interest is:" &Integer'Image(I),"Your get interest is"&Float'Image(Operate));




      Put_Line("Your get interest is" &Float'Image(A));


   exit when I = T;

      I := I+1;

   end loop;
end Interest_Loop;
