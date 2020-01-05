$regfile = "m16def.dat"
$crystal = 1000000

ddrb = &B11111111
Ddrd.0 = 0 : Portd.0 = 1

Dim I As Integer

Dim Effectmode As Byte , Direct As Bit

Effectmode = 0 : Direct = 0 : I = -1

Do
   If Pind.0 = 0 Then
      Incr Effectmode
   End If
   If Effectmode = 2 Then
      Effectmode = 0
   End If
   Select Case Effectmode
   Case 0:
      If Direct = 0 Then
         Incr I
         If 6 < I Then
            Direct = 1
         End If
         Portb = Lookup(i , Mode0)
         Waitms 500
      Else
         Decr I
         If I < 1 Then
            Direct = 0
         End If
         Portb = Lookup(i , Mode0)
         Waitms 500
      End If
   Case 1:
      Incr I
      If 1 < I Then
         I = 0
      End If
      Portb = Lookup(i , Mode1)
      Waitms 500
   End Select
Loop

End

Mode0:
   Data &B00000001 , &B00000010 , &B00000100 , &B00001000 , &B00010000 , &B00100000 , &B01000000 , &B10000000

Mode1:
    Data &B01010101 , &B10101010
