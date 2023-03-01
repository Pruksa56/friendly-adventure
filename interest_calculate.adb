--The compound interest formular
-- A=P[(1+R/100)^T]-P
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics;




procedure Interest_Calculate is

   P, A, R : Float;
   T : Integer;
   Operate: Float;



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

   Operate := (1.0000 + (R / 100.0000))**T;

   A := (P*Operate)-P;

   Put(A);

end Interest_Calculate;
