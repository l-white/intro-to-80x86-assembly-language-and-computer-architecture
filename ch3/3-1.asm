<<<<<<< HEAD
.586							; directive - recognize 80x86 bit operands
.MODEL FLAT, stdcall					; directive - generate code for flat memory model execution
.STACK 4096						; directive - reserve 4096-byte stack

ExitProcess PROTO, dwExitCode:DWORD

.DATA							; reserve data for storage
number DWORD -105
sum DWORD ?

.CODE							; start of main program code
main PROC						; marks the beginning of a procedure
  mov eax, number					; copy the doubleword in memory at the location identified by number to the EAX register in the CPU
  add eax, 158						; add a doubleword representation of 158 to the current doubleword in the EAX register
  mov sum, eax						; copy the doubleword in the EAX register to the doubleword in memory identified by sum

  mov eax, 0						; exit with return code 0
  INVOKE ExitProcess, eax
  ret

main ENDP								; marks the end of the procedure

END main								; end the procedure