	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"main.c"
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,main
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	mov	ecx, 40
	call	square
	lea	rcx, [rip + "??_C@_02DPKJAMEF@?$CFd?$AA@"]
	mov	edx, eax
	call	printf
	xor	eax, eax
	add	rsp, 40
	ret
	.seh_handlerdata
	.section	.text,"xr",one_only,main
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                          # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 64
	.seh_stackalloc 64
	.seh_endprologue
	mov	rsi, rcx
	mov	qword ptr [rsp + 104], rdx
	mov	qword ptr [rsp + 112], r8
	mov	qword ptr [rsp + 120], r9
	mov	rax, qword ptr [rip + __security_cookie]
	xor	rax, rsp
	mov	qword ptr [rsp + 56], rax
	lea	rbx, [rsp + 104]
	mov	qword ptr [rsp + 48], rbx
	mov	ecx, 1
	call	qword ptr [rip + __imp___acrt_iob_func]
	mov	rdi, rax
	call	__local_stdio_printf_options
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rsp + 32], rbx
	mov	rdx, rdi
	mov	r8, rsi
	xor	r9d, r9d
	call	qword ptr [rip + __imp___stdio_common_vfprintf]
	mov	esi, eax
	mov	rcx, qword ptr [rsp + 56]
	xor	rcx, rsp
	call	__security_check_cookie
	mov	eax, esi
	add	rsp, 64
	pop	rbx
	pop	rdi
	pop	rsi
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,printf
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options    # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	lea	rax, [rip + __local_stdio_printf_options._OptionsStorage]
	ret
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_02DPKJAMEF@?$CFd?$AA@"
	.globl	"??_C@_02DPKJAMEF@?$CFd?$AA@"   # @"??_C@_02DPKJAMEF@?$CFd?$AA@"
"??_C@_02DPKJAMEF@?$CFd?$AA@":
	.asciz	"%d"

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.section	.drectve,"yn"
	.ascii	" /DEFAULTLIB:msvcrt.lib"
	.ascii	" /DEFAULTLIB:oldnames.lib"
	.addrsig
	.addrsig_sym __local_stdio_printf_options._OptionsStorage
