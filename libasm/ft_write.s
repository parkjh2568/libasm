section .text
	global _ft_write
	extern ___error

_ft_write:
			mov		rax, 0x2000004 ;write함수 등판
			syscall
			jc		error
			ret

error:
			push	rax			;에러상황이므로 에러코드가 rax에 기입(스텍에 넣어두기)
			call	___error
			pop		r8			;에러코드받아옴
			mov		[rax], r8	;[rax]에 에러코드저장이라는데 뭔소리인지는 모르겠음
			mov		rax, -1
			ret	
