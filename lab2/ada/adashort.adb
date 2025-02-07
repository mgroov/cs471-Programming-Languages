--Matthew Groover
--9-8-20
--Lab2 
--This program tests whether or not short circuit is implemented
with Ada.Text_IO; use Ada.Text_IO;
with Funcall;

procedure ADAshort is
   --var decs
   I: Integer;
begin
   I:=1;
   
   --Testing and for short circuit 
   -- if short circuit happens the func wont print
   
   -- test 1 func call after potential short circuit on and struct-- 
   Put_Line("testing false and call");
   if I =0 and Funcall =0 then
      Put_Line("true");
   else
      Put_Line("false");
   end if;

  -- test 2 func call first to show if actual short circuit on and struct--
   Put_Line("testing call and false");
   if Funcall=0 and I=0 then
      Put_Line("true");
   else
      Put_Line("false");
   end if;
   
   -- test 3 func call after potential short circuit on and then struct --
   
    Put_Line("testing false and then call");
   if I =0 and then Funcall =0 then
      Put_Line("true");
   else
      Put_Line("false");
   end if;
   
   -- test 4 func call first to show if actual short circuit on and then struct--
   
     Put_Line("testing call and then false");
   if Funcall=0 and then  I=0 then
      Put_Line("true");
   else
      Put_Line("false");
   end if;
   
 end ADAshort;
  
