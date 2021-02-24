section .text
	global _ft_strlen

;str = rdi (ft_strlen(char *str))
;rax를 통해 리턴
_ft_strlen:
	mov rax, 0
	jmp step

step:
	cmp byte [rdi + rax], 0
	je	done
	inc	rax
	jmp step

done:
	ret
