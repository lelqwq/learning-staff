@24576
D=A
@keyboard
M=D //keyboard=24576


(LOOP)
//reset n
@8192
D=A
@n
M=D //n=8192

//reset screen
@16384
D=A
@screen
M=D //screen=16384

//listen to keyboard
@keyboard
A=M
D=M
@Pressed
D;JGT
@Released
D;JMP

(Released)
@screen
A=M
M=0
@screen
M=M+1 //screen=screen+1
@n
M=M-1 //n=n-1
D=M
@Released
D;JGT //if(n>0) goto Released
@LOOP
0;JMP //else goto LOOP

(Pressed)
@screen
A=M
M=-1
@screen
M=M+1 //screen=screen+1
@n
M=M-1 //n=n-1
D=M
@Pressed
D;JGT //if(n>0) goto Pressed
@LOOP
0;JMP //else goto LOOP
