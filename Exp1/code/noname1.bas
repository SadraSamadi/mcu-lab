$regfile = "m16def.dat"
$crystal = 1000000

config portb.0 = output

do
   portb.0 = 0
   wait 1
   portb.0 = 1
   wait 1
loop

end
