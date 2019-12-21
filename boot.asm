mov ah, 0x0e ; set tty mode

; Compute offset of letters
mov bx, message
add bx, 0x7c00

; Compute end of offset
mov cx, bx
add cx, 0x11

print_letter:
	mov al, [bx]
	int 0x10
	add bx, 0x1
	cmp bx, cx
	jl print_letter

message:
	db 'Hello Boot Sector'

; And now we infinite loop
loop:
	jmp loop

; Fill binary until the end of the boot sector
times 510-($-$$) db 0

; Add magic number to mark as bootable
dw 0xaa55
