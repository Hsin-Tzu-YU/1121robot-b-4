Integer Tokens
Integer Blocks
Integer number
Double TokenHeight
Double BlockHeight
Function Task3


Motor On
Power High
Speed 30
Accel 30, 30
SpeedS 500
AccelS 5000
Tool 1

number = 1
Tokens = 3
Blocks = 3
TokenHeight = 6.0
BlockHeight = 6.0
Integer TokenID
Integer BlockID

Go Retract_Safe
Do
	If Sw(0) = 1 And Tokens > 0 Then
	Place_Tray_Token_3()
	Alignment_Token_3()
	ElseIf Sw(7) = 1 And Blocks > 0 Then
	Place_Tray_Block_3()
	Alignment_Block_3()
	Else
	Print "OFF"
	EndIf
Loop

Go Retract_Safe

Fend
Function Alignment_Token_3
	'Alignment Token 將圓形的放到fixture然後疊疊樂
	Print "Aligning Token. Token ID = ", Tokens
	Go point3 +X(-30) +Y(-25) +Z(50) CP
	Move point3 +X(-30) +Y(-25) +Z(6 * number + 0.1)
	Off 8
	Wait .5
	Move point3 +X(-30) +Y(-25) +Z(50 * number + 0.1) CP
	number = number + 1

Fend
Function Place_Tray_Token_3
	'Tray Token 將圓形的吸起來
	Print "Placing Token in Tray. Tray Position ID = ", Tokens
	Go point4 +X(-10) +Y(23) +X(-.05 * Tokens) +Y(30. * Tokens) -Y(30) +Z(20) CP
	Move point4 +X(-10) +Y(23) +X(-.05 * Tokens) +Y(30. * Tokens) -Y(30)
	On 8
	Wait .5
	Move point4 +X(-10) +Y(23) +X(-.05 * Tokens) +Y(30. * Tokens) -Y(30) +Z(50) CP
	Tokens = Tokens - 1
Fend
Function Alignment_Block_3
	'Alignment Block 將長方形的放到fixture然後疊疊樂
	Print "Aligning Block. Block ID = ", Blocks
	Go point3 +X(-30) +Y(-25) +Z(50) CP
	Move point3 +X(-30) +Y(-25) +Z(6 * number + 0.1)
	Off 8
	Wait .5
    Move point3 +X(-30) +Y(-25) +Z(50 * number + 0.1) CP
    number = number + 1
Fend
Function Place_Tray_Block_3
	'Tray Block 將長方形的吸起來
	Print "Placing Block in Tray. Block Position ID = ", Blocks
	Go point4 +X(-42) +Y(25) +X(-.05 * Blocks) +Y(30. * Blocks) +Z(20) -Y(30) CP
	Move point4 +X(-42) +Y(25) +X(-.05 * Blocks) +Y(30. * Blocks) -Y(30)
	On 8
	Wait .5
	Move point4 +X(-42) +Y(25) +X(-.05 * Blocks) +Y(30. * Blocks) -Y(30) +Z(50) CP
	Blocks = Blocks - 1
Fend

