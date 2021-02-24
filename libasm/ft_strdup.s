section .text
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc
	global _ft_strdup

_ft_strdup:
			push	rdi
			call	_ft_strlen
			lea		rdi, [rax+1]
			call	_malloc
			mov		rdi, rax
			pop		rsi
			call	_ft_strcpy
			ret
