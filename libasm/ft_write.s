section .text
	global _ft_write

_ft_write:
			mov		rax, 0x2000004 ;write함수 등판
			syscall
			ret
