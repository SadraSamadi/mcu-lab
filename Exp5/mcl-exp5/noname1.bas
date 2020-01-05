$regfile = "m16def.dat"
$crystal = 1000000

Ddrb = &B11111111
Ddrd = &B11111111

Dim I As Byte , Current As Word

I = 0

Do
   Current = Lookup(i , Chars)
   Portb = Low(current)
   Portd = High(current)
   Incr I
   If I = 8 Then
      I = 0
   End If
   Wait 1
Loop
End

Chars:
   Data &B0000000011111111% , &B1000100001110111% ,
        &B1000100010001100% , &B1000100011111011% ,
        &B1000100011111111% , &B1000100011001111% ,
        &B0000000011110011% , &B1000100011110011%