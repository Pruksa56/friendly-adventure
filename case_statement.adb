-- find direction with case statement method.
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Case_Statement is

   N : Integer;

begin

   loop
      Put("Enter your Integer value?");
      Get(N);
      Put(N);

      case N is
         when 0 | 360 =>
            Put_Line("Is due North");
         when 1..89 =>
            Put_Line("is in the northeast quadrant");
         when 90 =>
            Put_Line("is due east");
         when 91..179 =>
            Put_Line("is in the southeast quadrant");
         when 180 =>
            Put_Line("is due south");
         when 181..269 =>
            Put_Line("is in the southwest quadrant");
         when 270 =>
            Put_Line("is due west");
         when 271..359 =>
            Put_Line("is in the nothwest quadrant");
         when others =>
            Put_Line("Au revoir");
         exit;
      end case;
    end loop;

end Case_Statement;
