section .text
	global _ft_strcmp
;s1 = rdi, s2 = rsi (int ft_strcmp(char *s1, char *s2))
;rax를 통해 리턴

_ft_strcmp:
			mov rax, 10
			mov rcx, 0
			jmp	step

step:
			mov al, BYTE[rdi + rcx]
			mov dl, BYTE[rsi + rcx]
			cmp al, 0
			je	done
			cmp dl, 0
			je	done
			cmp al, dl
			jne	done
			inc rcx
			jmp step

done:
			cmp al, dl
			je	zero
			ja	one
			jb	mine

zero:
			mov	rax, 0
			ret

one:
			mov rax, 1
			ret

mine:
			mov rax, -1
			ret

