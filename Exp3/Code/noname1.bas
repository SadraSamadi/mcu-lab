$regfile = "m16def.dat"
$crystal = 1000000

config porta.0 = input
config porta.1 = output

do
   if pina.0 = 1 then
      porta.1 = 0
   else
      porta.1 = 1
   end if
loop

end