.MODEL SMALL
.STACK 64H
.DATA
	MSG1 DB 10,13, 'ENTER THE NUMBER: $'
	MSG2 DB 10,13, 'THE SUM IS: $'
.CODE
.STARTUP
	MOV AX,@DATA
	MOV DS,AX
	
	LEA DX,MSG1
	MOV AH,09H
	INT 21H

	MOV AH,01H
	INT 21H

	SUB AL,30H
	MOV BL,AL

	LEA DX,MSG1
	MOV AH,09H
	INT 21H

	MOV AH,01H
	INT 21H

	SUB AL,30H
		
	ADD BL,AL
	ADD BL,30H

	LEA DX,MSG2
	MOV AH,09H
	INT 21H

	MOV DL,BL
	MOV AH,02H
	INT 21H

	MOV AH,4CH
	INT 21H
END

	
