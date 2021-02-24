section .text
	global _ft_strlen

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
