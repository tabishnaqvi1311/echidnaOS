
org 0x7C00  ; tell the assembler that the variables and labels should be calculated with this offset
bits 16 ; tell the assembler to emit 16 bit code

main: 
  hlt ; stops the pc from executing, can be resumed by an interrupt


.halt:
  jmp .halt ; jumps to a given location unconditionally

;times repeats an instruction given numbber of bytes
times 510-($$-$) db 0 ; fill upto 510 bytes then decalare the two byte signature
; $ - $$ gives us the size of the program so far

