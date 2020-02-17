print:
	mov al, [bx]
	cmp al, 0x0
	je done
	int 0x10
	add bx, 0x1
	jmp print
done:
	ret
