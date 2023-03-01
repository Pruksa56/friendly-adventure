with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Calendar; use Ada.Calendar;



procedure Display_Current_Year is

   Now : Time := Clock;

   Now_Year : Year_Number;
   Now_Month : Month_Number;
   Now_Day : Day_Number;
   Now_Seconds : Day_Duration;



begin

   Split(Now,
         Now_Year,
         Now_Month,
         Now_Day,
         Now_Seconds);

   Put_Line("Current day is:"
            & Day_Number'Image(Now_Day)
            & "Current month is:"
            & Month_Number'Image(Now_Month)
            & "Current year is:"
            & Year_Number'Image(Now_Year + 543));


  -- Put_Line("Current seconds is"
  --          & Second_Number'Image(Now_Seconds));

end Display_Current_Year;
