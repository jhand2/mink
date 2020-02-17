[org 0x7c00]

mov ah, 0x0e ; set tty mode

; Compute offset of letters
mov bx, message
call print

; And now we loop
loop:
	jmp loop

%include "print.asm"

message:
	db 'Hello Boot Sector', 0

; Fill binary until the end of the boot sector
times 510-($-$$) db 0

; Add magic number to mark as bootable
dw 0xaa55
