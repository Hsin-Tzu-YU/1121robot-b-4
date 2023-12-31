Integer Tokens
Integer Blocks
Integer number
Double TokenHeight
Double BlockHeight
Function task1


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


For TokenID = Tokens To 1 Step -1
	Go point2 +X(-25) +Y(-13) +Z(50 + (Tokens * TokenHeight)) CP
	Move point2 +X(-25) +Y(-13) +Z(Tokens * TokenHeight) CP
	On 8
	Wait .5
	If Sw(16) = 1 Then
	Pick_Infeed_Token_1()
	Alignment_Token_1()
	Place_Tray_Token_1()
	ElseIf Sw(16) = 0 Then
	Off 8
	Print "no token"
	Move point2 +X(-25) +Y(-13) +X(-1) +Z(50 + (Tokens * TokenHeight)) CP
	Tokens = Tokens - 1
	EndIf
Next TokenID

'Go Retract_Safe

For BlockID = Blocks To 1 Step -1
	Go point2 +X(-23) +Y(-38) +Z(48 + (Blocks * BlockHeight)) CP
	Move point2 +X(-23) +Y(-38) +Z(Blocks * BlockHeight) CP
	On 8
	Wait .5
	If Sw(16) = 1 Then
	Pick_Infeed_Block_1()
	Alignment_Block_1()
	Place_Tray_Block_1()
	ElseIf Sw(16) = 0 Then
	Off 8
	Print "no block"
	Move point2 +X(-23) +Y(-38) +Z(50 + Blocks * TokenHeight - 1) CP
	Blocks = Blocks - 1
	EndIf
Next BlockID

Go Retract_Safe

Fend
Function Pick_Infeed_Token_1
	'Pick Token from Infeed 將feeder那的圓形吸起來
	Print "Picking Token from Infeed. Token ID = ", Tokens
	Wait .5
    Move point2 +X(-25) +Y(-13) +X(-1) +Z(50 + (Tokens * TokenHeight)) CP
	'Tokens = Tokens - 1
Fend
Function Alignment_Token_1
	'Alignment Token 將圓形的放到fixture
	Print "Aligning Token. Token ID = ", Tokens
	Go point3 +X(-25) +Y(-15) +Z(20) CP
	Move point3 +X(-25) +Y(-15) +Z(6)
	Off 8
	'放開後進行調整
	Move point3 +X(-23) +Y(-15) +X(5) +Z(6)
	Move point3 +X(-23) +Y(-15) +X(5) +Z(5) +Z(6) CP
	Go point3 +X(-23) +Y(-15) +Z(5) +Z(6) CP
	Move point3 +X(-23) +Y(-15) +Z(6)
	'吸起來
	On 8
	Wait .5
	Move point3 +X(-27) +Y(-15) +Z(20) CP
Fend
Function Place_Tray_Token_1
	'Tray Token 將圓形的放到tray
	Print "Placing Token in Tray. Tray Position ID = ", Tokens
	Go point4 +X(-10) +Y(23) +X(-.05 * Tokens) +Y(30. * Tokens) -Y(30) +Z(20) CP
	Move point4 +X(-10) +Y(23) +X(-.05 * Tokens) +Y(30. * Tokens) -Y(30)
	Off 8
	Wait .5
	Move point4 +X(-10) +Y(23) +X(-.05 * Tokens) +Y(30. * Tokens) -Y(30) +Z(50) CP
	Tokens = Tokens - 1
Fend
Function Pick_Infeed_Block_1
	'Pick Token from Infeed 將feeder那的圓形吸起來
	Print "Picking Block from Infeed. Block ID = ", Blocks
    Go point2 +X(-21) +Y(-39) +Y(1.3 * Blocks) +X(-1 * Blocks) +Z(48) CP
	'Blocks = Blocks - 1
Fend
Function Alignment_Block_1
	'Alignment Block 將長方形的放到fixture
	Print "Aligning Block. Block ID = ", Blocks
	Go point3 +X(-20) +Y(-40) +Z(20) CP
	Move point3 +X(-20) +Y(-40) +Z(6)
	Off 8
	'放開後進行調整
	Move point3 +X(-20) +Y(-38) +Y(-5) +Z(6)
	Move point3 +X(-20) +Y(-38) +X(5) +Y(-8) +Z(6) CP
	Move point3 +X(-20) +Y(-38) +X(5) +Y(-8) +Z(5) +Z(6) CP
	Go point3 +X(-20) +Y(-38) +Z(5) +Z(6) CP
    Move point3 +X(-20) +Y(-38) +Z(6 - 1)
	'吸起來
	On 8
	Wait 1
    Move point3 +X(-20) +Y(-38) +Z(20) CP
Fend
Function Place_Tray_Block_1
	'Tray Block 將長方形的放到tray
	Print "Placing Block in Tray. Block Position ID = ", Blocks
	Go point4 +X(-42) +Y(25) +X(-.05 * Blocks) +Y(30. * Blocks) +Z(20) -Y(30) CP
	Move point4 +X(-42) +Y(25) +X(-.05 * Blocks) +Y(30. * Blocks) -Y(30)
	Off 8
	Wait 0.5
	Move point4 +X(-42) +Y(25) +X(-.05 * Blocks) +Y(30. * Blocks) -Y(30) +Z(50) CP
	Blocks = Blocks - 1
Fend
