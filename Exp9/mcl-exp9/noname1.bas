$regfile = "m16def.dat"
$crystal = 1000000

Config Adc = Single , Prescaler = Auto , Reference = Avcc

Config Lcd = 16x2
Config Lcdpin = Pin , Rs = Portb.0 , E = Portb.2 , Db4 = Portb.4 , Db5 = Portb.5 , Db6 = Portb.6 , Db7 = Portb.7

Dim Temp As Word

Cursor Off Noblink

Start Adc

Do
   Temp = Getadc(0)
   Temp = Temp / 2
   Deflcdchar 0 , 14 , 10 , 14 , 32 , 32 , 32 , 32 , 32
   Deflcdchar 1 , 14 , 17 , 17 , 16 , 16 , 17 , 17 , 14
   Cls
   Lcd "Temp: " ; Temp ; Chr(0) ; Chr(1)
   Wait 3
Loop

End