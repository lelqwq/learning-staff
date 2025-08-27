//a=RAM[0]
//b=RAM[1]
//product=RAM[2]
//(LOOP)
//product=product+a
//b=b-1
//if(b!=0) goto loop
//end

@R0
D=M //D=RAM[0]
@a
M=D //a=RAM[0]

@R1
D=M //D=RAM[1]
@b
M=D //b=RAM[1]

@product
M=0 //product=0

(LOOP)
@a
D=M
@product
M=D+M
@b
M=M-1
D=M
@LOOP
D;JGT

@product
D=M //D=product
@R2
M=D //RAM[2]=product

(END)
@END
0;JMP