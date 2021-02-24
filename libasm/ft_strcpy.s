section .text
	global	_ft_strcpy

;dst = rdi, src = rsi (char *ft_strcpy(char *dst, char *str))
;rax를 통해 반환이된다
_ft_strcpy:
			mov rax, 0
			cmp rsi, 0
			je	done
			jmp step

step:
			mov	dl, BYTE [rsi + rax]
			mov BYTE [rdi + rax], dl
			cmp dl, 0
			je	done
			inc rax
			jmp step

done:
			mov rax, rdi
			ret				;함수종료후복귀
