with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;

procedure Show_Current_Time is

   Now : Time := Clock;

begin

   Put_Line("Current time"& Image(Now));

end Show_Current_Time;
