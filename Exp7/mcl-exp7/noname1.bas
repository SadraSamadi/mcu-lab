$regfile = "m16def.dat"
$crystal = 1000000

Config Lcd = 16x2
Config Lcdpin = Pin , Rs = Porta.0 , E = Porta.2 , Db4 = Porta.4 , Db5 = Porta.5 , Db6 = Porta.6 , Db7 = Porta.7

Cls
Locate 1 , 1
Lcd "Hello"
Waitms 500
Locate 2 , 1
Lcd "World"
Waitms 500

Do
   Shiftlcd Right
   Waitms 1000
   Shiftlcd Left
   Waitms 1000
Loop

End
