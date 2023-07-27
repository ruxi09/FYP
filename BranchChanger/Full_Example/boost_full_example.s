	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	__Z3adddd                       ## -- Begin function _Z3adddd
	.p2align	4, 0x90
__Z3adddd:                              ## @_Z3adddd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z8subtractdd                  ## -- Begin function _Z8subtractdd
	.p2align	4, 0x90
__Z8subtractdd:                         ## @_Z8subtractdd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI2_0:
	.quad	0x4025000000000000              ## double 10.5
LCPI2_1:
	.quad	0x4016000000000000              ## double 5.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp                      ## imm = 0x130
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -212(%rbp)
	leaq	__Z3adddd(%rip), %rsi
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFdddEEC1IPS1_vEET_
Ltmp0:
	leaq	__Z8subtractdd(%rip), %rsi
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__18functionIFdddEEC1IPS1_vEET_
Ltmp1:
	jmp	LBB2_1
LBB2_1:
Ltmp3:
	leaq	-112(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	callq	__ZN13BranchChangerIddEC1ENSt3__18functionIFdddEEES4_
Ltmp4:
	jmp	LBB2_2
LBB2_2:
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__18functionIFdddEED1Ev
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFdddEED1Ev
Ltmp6:
	leaq	-112(%rbp), %rdi
	movsd	LCPI2_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	LCPI2_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	callq	__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEddd
Ltmp7:
	movsd	%xmm0, -248(%rbp)               ## 8-byte Spill
	jmp	LBB2_3
LBB2_3:
	movsd	-248(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
Ltmp8:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp9:
	movq	%rax, -256(%rbp)                ## 8-byte Spill
	jmp	LBB2_4
LBB2_4:
	movq	-256(%rbp), %rdi                ## 8-byte Reload
	movsd	-240(%rbp), %xmm0               ## xmm0 = mem[0],zero
Ltmp10:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp11:
	movq	%rax, -264(%rbp)                ## 8-byte Spill
	jmp	LBB2_5
LBB2_5:
Ltmp12:
	movq	-264(%rbp), %rdi                ## 8-byte Reload
	movq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPCREL(%rip), %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp13:
	jmp	LBB2_6
LBB2_6:
Ltmp14:
	leaq	-112(%rbp), %rdi
	movsd	LCPI2_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	LCPI2_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	callq	__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEddd
Ltmp15:
	movsd	%xmm0, -272(%rbp)               ## 8-byte Spill
	jmp	LBB2_7
LBB2_7:
	movsd	-272(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
Ltmp16:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp17:
	movq	%rax, -280(%rbp)                ## 8-byte Spill
	jmp	LBB2_8
LBB2_8:
	movq	-280(%rbp), %rdi                ## 8-byte Reload
	movsd	-240(%rbp), %xmm0               ## xmm0 = mem[0],zero
Ltmp18:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp19:
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	jmp	LBB2_9
LBB2_9:
Ltmp20:
	movq	-288(%rbp), %rdi                ## 8-byte Reload
	movq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPCREL(%rip), %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp21:
	jmp	LBB2_10
LBB2_10:
	movl	$0, -212(%rbp)
	leaq	-112(%rbp), %rdi
	callq	__ZN13BranchChangerIddED1Ev
	movl	-212(%rbp), %eax
	movl	%eax, -292(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB2_17
## %bb.11:
	movl	-292(%rbp), %eax                ## 4-byte Reload
	addq	$304, %rsp                      ## imm = 0x130
	popq	%rbp
	retq
LBB2_12:
Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -224(%rbp)
	movl	%eax, -228(%rbp)
	jmp	LBB2_14
LBB2_13:
Ltmp5:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -224(%rbp)
	movl	%eax, -228(%rbp)
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__18functionIFdddEED1Ev
LBB2_14:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFdddEED1Ev
	jmp	LBB2_16
LBB2_15:
Ltmp22:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -224(%rbp)
	movl	%eax, -228(%rbp)
	leaq	-112(%rbp), %rdi
	callq	__ZN13BranchChangerIddED1Ev
LBB2_16:
	movq	-224(%rbp), %rdi
	callq	__Unwind_Resume
LBB2_17:
	callq	___stack_chk_fail
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ##     jumps to Ltmp2
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ## >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ##   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ##     jumps to Ltmp5
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ## >> Call Site 4 <<
	.uleb128 Ltmp21-Ltmp6                   ##   Call between Ltmp6 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin0            ##     jumps to Ltmp22
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ## >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp21              ##   Call between Ltmp21 and Lfunc_end0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__18functionIFdddEEC1IPS1_vEET_ ## -- Begin function _ZNSt3__18functionIFdddEEC1IPS1_vEET_
	.weak_def_can_be_hidden	__ZNSt3__18functionIFdddEEC1IPS1_vEET_
	.p2align	4, 0x90
__ZNSt3__18functionIFdddEEC1IPS1_vEET_: ## @_ZNSt3__18functionIFdddEEC1IPS1_vEET_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__18functionIFdddEEC2IPS1_vEET_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13BranchChangerIddEC1ENSt3__18functionIFdddEEES4_ ## -- Begin function _ZN13BranchChangerIddEC1ENSt3__18functionIFdddEEES4_
	.weak_def_can_be_hidden	__ZN13BranchChangerIddEC1ENSt3__18functionIFdddEEES4_
	.p2align	4, 0x90
__ZN13BranchChangerIddEC1ENSt3__18functionIFdddEEES4_: ## @_ZN13BranchChangerIddEC1ENSt3__18functionIFdddEEES4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN13BranchChangerIddEC2ENSt3__18functionIFdddEEES4_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__18functionIFdddEED1Ev  ## -- Begin function _ZNSt3__18functionIFdddEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__18functionIFdddEED1Ev
	.p2align	4, 0x90
__ZNSt3__18functionIFdddEED1Ev:         ## @_ZNSt3__18functionIFdddEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__18functionIFdddEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEddd ## -- Begin function _ZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEddd
	.weak_definition	__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEddd
	.p2align	4, 0x90
__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEddd: ## @_ZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEddd
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)                ## 8-byte Spill
	movq	%rax, -64(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)                ## 8-byte Spill
	movq	%rax, -56(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)                ## 8-byte Spill
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rcx, 16(%rax)
	movups	-64(%rbp), %xmm0
	movups	%xmm0, (%rax)
	leaq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)                ## 8-byte Spill
	callq	__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb1EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	movq	-144(%rbp), %rdx                ## 8-byte Reload
	movq	-136(%rbp), %rcx                ## 8-byte Reload
	movq	-128(%rbp), %rax                ## 8-byte Reload
	movq	-120(%rbp), %rdi                ## 8-byte Reload
	movq	%rdx, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, -72(%rbp)
Ltmp23:
	leaq	-88(%rbp), %rsi
	callq	__ZNK5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dE5else_IZNS4_IS7_EEdddEUlvE0_EEdRKT_
Ltmp24:
	movsd	%xmm0, -112(%rbp)               ## 8-byte Spill
	jmp	LBB6_1
LBB6_1:
	leaq	-40(%rbp), %rdi
	callq	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED1Ev
	movsd	-112(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$176, %rsp
	popq	%rbp
	retq
LBB6_2:
Ltmp25:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -96(%rbp)
	movl	%eax, -100(%rbp)
	leaq	-40(%rbp), %rdi
	callq	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED1Ev
## %bb.3:
	movq	-96(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception1:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.uleb128 Ltmp23-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp23
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin1            ## >> Call Site 2 <<
	.uleb128 Ltmp24-Ltmp23                  ##   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin1            ##     jumps to Ltmp25
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin1            ## >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp24              ##   Call between Ltmp24 and Lfunc_end1
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	movq	-24(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	*-16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ## -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
	movl	$10, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEddd ## -- Begin function _ZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEddd
	.weak_definition	__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEddd
	.p2align	4, 0x90
__ZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEddd: ## @_ZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEddd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	%rax, -56(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb0EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -88(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	__ZNK5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEE5else_IZNS4_IS7_EEdddEUlvE0_EEDTclclsr5boostE7declvalIT_EEEESE_
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13BranchChangerIddED1Ev     ## -- Begin function _ZN13BranchChangerIddED1Ev
	.weak_def_can_be_hidden	__ZN13BranchChangerIddED1Ev
	.p2align	4, 0x90
__ZN13BranchChangerIddED1Ev:            ## @_ZN13BranchChangerIddED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN13BranchChangerIddED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13BranchChangerIddED2Ev     ## -- Begin function _ZN13BranchChangerIddED2Ev
	.weak_def_can_be_hidden	__ZN13BranchChangerIddED2Ev
	.p2align	4, 0x90
__ZN13BranchChangerIddED2Ev:            ## @_ZN13BranchChangerIddED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	addq	$48, %rdi
	callq	__ZNSt3__18functionIFdddEED1Ev
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__18functionIFdddEED1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__18functionIFdddEEC2IPS1_vEET_ ## -- Begin function _ZNSt3__18functionIFdddEEC2IPS1_vEET_
	.weak_def_can_be_hidden	__ZNSt3__18functionIFdddEEC2IPS1_vEET_
	.p2align	4, 0x90
__ZNSt3__18functionIFdddEEC2IPS1_vEET_: ## @_ZNSt3__18functionIFdddEEC2IPS1_vEET_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRPFdddEEEONS_16remove_referenceIT_E4typeEOS5_
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__110__function12__value_funcIFdddEEC1IPS2_vEEOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4moveIRPFdddEEEONS_16remove_referenceIT_E4typeEOS5_
__ZNSt3__1L4moveIRPFdddEEEONS_16remove_referenceIT_E4typeEOS5_: ## @_ZNSt3__1L4moveIRPFdddEEEONS_16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEEC1IPS2_vEEOT_
__ZNSt3__110__function12__value_funcIFdddEEC1IPS2_vEEOT_: ## @_ZNSt3__110__function12__value_funcIFdddEEC1IPS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__19allocatorIPFdddEEC1Ev
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	-32(%rbp), %rsi                 ## 8-byte Reload
	leaq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function12__value_funcIFdddEEC1IPS2_NS_9allocatorIS5_EEEEOT_RKT0_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE
__ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE: ## @_ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIPFdddEEC1Ev
__ZNSt3__19allocatorIPFdddEEC1Ev:       ## @_ZNSt3__19allocatorIPFdddEEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__19allocatorIPFdddEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEEC1IPS2_NS_9allocatorIS5_EEEEOT_RKT0_
__ZNSt3__110__function12__value_funcIFdddEEC1IPS2_NS_9allocatorIS5_EEEEOT_RKT0_: ## @_ZNSt3__110__function12__value_funcIFdddEEC1IPS2_NS_9allocatorIS5_EEEEOT_RKT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function12__value_funcIFdddEEC2IPS2_NS_9allocatorIS5_EEEEOT_RKT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIPFdddEEC2Ev
__ZNSt3__19allocatorIPFdddEEC2Ev:       ## @_ZNSt3__19allocatorIPFdddEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFdddEEEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFdddEEEEC2Ev
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFdddEEEEC2Ev: ## @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFdddEEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEEC2IPS2_NS_9allocatorIS5_EEEEOT_RKT0_
__ZNSt3__110__function12__value_funcIFdddEEC2IPS2_NS_9allocatorIS5_EEEEOT_RKT0_: ## @_ZNSt3__110__function12__value_funcIFdddEEC2IPS2_NS_9allocatorIS5_EEEEOT_RKT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	__ZNSt3__110__functionL10__not_nullIFdddEEEbPT_
	testb	$1, %al
	jne	LBB21_1
	jmp	LBB21_2
LBB21_1:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC1IS4_EERKNS0_IT_EE
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRPFdddEEEONS_16remove_referenceIT_E4typeEOS5_
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	leaq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	__ZNSt3__19allocatorIPFdddEEC1INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	leaq	-40(%rbp), %rdx
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movq	%rcx, 32(%rax)
LBB21_2:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__functionL10__not_nullIFdddEEEbPT_
__ZNSt3__110__functionL10__not_nullIFdddEEEbPT_: ## @_ZNSt3__110__functionL10__not_nullIFdddEEEbPT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC1IS4_EERKNS0_IT_EE
__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC1IS4_EERKNS0_IT_EE: ## @_ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC1IS4_EERKNS0_IT_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC2IS4_EERKNS0_IT_EE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIPFdddEEC1INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE
__ZNSt3__19allocatorIPFdddEEC1INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE: ## @_ZNSt3__19allocatorIPFdddEEC1INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__19allocatorIPFdddEEC2INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC2IS4_EERKNS0_IT_EE
__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC2IS4_EERKNS0_IT_EE: ## @_ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC2IS4_EERKNS0_IT_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2Ev
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2Ev: ## @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIPFdddEEC2INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE
__ZNSt3__19allocatorIPFdddEEC2INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE: ## @_ZNSt3__19allocatorIPFdddEEC2INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFdddEEEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__110__function6__baseIFdddEEC2Ev
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	__ZTVNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRPFdddEEEONS_16remove_referenceIT_E4typeEOS5_
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_9allocatorIPFdddEEEEEONS_16remove_referenceIT_E4typeEOS7_
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
Ltmp26:
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_
Ltmp27:
	jmp	LBB29_1
LBB29_1:
	addq	$64, %rsp
	popq	%rbp
	retq
LBB29_2:
Ltmp28:
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	callq	__ZNSt3__110__function6__baseIFdddEED2Ev
## %bb.3:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table29:
Lexception2:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp26-Lfunc_begin2            ## >> Call Site 1 <<
	.uleb128 Ltmp27-Ltmp26                  ##   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin2            ##     jumps to Ltmp28
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin2            ## >> Call Site 2 <<
	.uleb128 Lfunc_end2-Ltmp27              ##   Call between Ltmp27 and Lfunc_end2
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__baseIFdddEEC2Ev
__ZNSt3__110__function6__baseIFdddEEC2Ev: ## @_ZNSt3__110__function6__baseIFdddEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	__ZTVNSt3__110__function6__baseIFdddEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4moveIRNS_9allocatorIPFdddEEEEEONS_16remove_referenceIT_E4typeEOS7_
__ZNSt3__1L4moveIRNS_9allocatorIPFdddEEEEEONS_16remove_referenceIT_E4typeEOS7_: ## @_ZNSt3__1L4moveIRNS_9allocatorIPFdddEEEEEONS_16remove_referenceIT_E4typeEOS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1EOS3_OS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__baseIFdddEED2Ev
__ZNSt3__110__function6__baseIFdddEED2Ev: ## @_ZNSt3__110__function6__baseIFdddEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED1Ev ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED1Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED1Ev
	.p2align	4, 0x90
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED1Ev: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED0Ev ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED0Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED0Ev
	.p2align	4, 0x90
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED0Ev: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED1Ev
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEv ## -- Begin function _ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEv
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEv
	.p2align	4, 0x90
__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEv: ## @_ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -96(%rbp)                 ## 8-byte Spill
	callq	__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E15__get_allocatorEv
	movq	%rax, %rsi
	leaq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC1IS4_EERKNS0_IT_EE
	movq	-136(%rbp), %rdi                ## 8-byte Reload
	movl	$1, %esi
	movq	%rsi, -128(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE8allocateEm
	movq	-136(%rbp), %rsi                ## 8-byte Reload
	movq	-128(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, -120(%rbp)                ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%rdi, -112(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC1ERS8_m
	movq	-120(%rbp), %rsi                ## 8-byte Reload
	movq	-112(%rbp), %rdx                ## 8-byte Reload
	leaq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	callq	__ZNKSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE3getEv
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
Ltmp29:
	callq	__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E8__targetEv
Ltmp30:
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	jmp	LBB36_1
LBB36_1:
	leaq	-72(%rbp), %rdi
	movq	%rdi, -144(%rbp)                ## 8-byte Spill
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__19allocatorIPFdddEEC1INS_10__function6__funcIS2_S3_S1_EEEERKNS0_IT_EE
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movq	-80(%rbp), %rsi                 ## 8-byte Reload
	movq	-144(%rbp), %rdx                ## 8-byte Reload
Ltmp31:
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_
Ltmp32:
	jmp	LBB36_2
LBB36_2:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE7releaseEv
	movq	%rax, -152(%rbp)                ## 8-byte Spill
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED1Ev
	movq	-152(%rbp), %rax                ## 8-byte Reload
	addq	$160, %rsp
	popq	%rbp
	retq
LBB36_3:
Ltmp33:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -64(%rbp)
	movl	%eax, -68(%rbp)
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED1Ev
## %bb.4:
	movq	-64(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table36:
Lexception3:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.uleb128 Ltmp29-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp29
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin3            ## >> Call Site 2 <<
	.uleb128 Ltmp32-Ltmp29                  ##   Call between Ltmp29 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin3            ##     jumps to Ltmp33
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin3            ## >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp32              ##   Call between Ltmp32 and Lfunc_end3
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEPNS0_6__baseIS2_EE ## -- Begin function _ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEPNS0_6__baseIS2_EE
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEPNS0_6__baseIS2_EE
	.p2align	4, 0x90
__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEPNS0_6__baseIS2_EE: ## @_ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEPNS0_6__baseIS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	addq	$8, %rdi
	callq	__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E8__targetEv
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	addq	$8, %rdi
	callq	__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E15__get_allocatorEv
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	movq	-24(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
	.p2align	4, 0x90
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E18destroy_deallocateEv ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E18destroy_deallocateEv
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E18destroy_deallocateEv
	.p2align	4, 0x90
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E18destroy_deallocateEv: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E18destroy_deallocateEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 ## 8-byte Spill
	addq	$8, %rdi
	callq	__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E15__get_allocatorEv
	movq	%rax, %rsi
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEEC1IS4_EERKNS0_IT_EE
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	addq	$8, %rdi
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
	movq	-24(%rbp), %rsi                 ## 8-byte Reload
	leaq	-16(%rbp), %rdi
	movl	$1, %edx
	callq	__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE10deallocateEPS6_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_ ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_
	.p2align	4, 0x90
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	-32(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E6targetERKSt9type_info ## -- Begin function _ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E6targetERKSt9type_info
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E6targetERKSt9type_info
	.p2align	4, 0x90
__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E6targetERKSt9type_info: ## @_ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E6targetERKSt9type_info
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	movq	__ZTIPFdddE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt9type_infoeqERKS_
	testb	$1, %al
	jne	LBB41_1
	jmp	LBB41_2
LBB41_1:
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	addq	$8, %rdi
	callq	__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E8__targetEv
	movq	%rax, -8(%rbp)
	jmp	LBB41_3
LBB41_2:
	movq	$0, -8(%rbp)
LBB41_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E11target_typeEv ## -- Begin function _ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E11target_typeEv
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E11target_typeEv
	.p2align	4, 0x90
__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E11target_typeEv: ## @_ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E11target_typeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	__ZTIPFdddE@GOTPCREL(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__baseIFdddEED1Ev
__ZNSt3__110__function6__baseIFdddEED1Ev: ## @_ZNSt3__110__function6__baseIFdddEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__baseIFdddEED0Ev
__ZNSt3__110__function6__baseIFdddEED0Ev: ## @_ZNSt3__110__function6__baseIFdddEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2EOS3_OS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRPFdddEEEONS_16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdi
	callq	__ZNSt3__1L16forward_as_tupleIJPFdddEEEENS_5tupleIJDpOT_EEES6_
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_9allocatorIPFdddEEEEEONS_16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdi
	callq	__ZNSt3__1L16forward_as_tupleIJNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEES8_
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L16forward_as_tupleIJPFdddEEEENS_5tupleIJDpOT_EEES6_
__ZNSt3__1L16forward_as_tupleIJPFdddEEEENS_5tupleIJDpOT_EEES6_: ## @_ZNSt3__1L16forward_as_tupleIJPFdddEEEENS_5tupleIJDpOT_EEES6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__15tupleIJOPFdddEEEC1IJS2_ELi0EEEDpOT_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L16forward_as_tupleIJNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEES8_
__ZNSt3__1L16forward_as_tupleIJNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEES8_: ## @_ZNSt3__1L16forward_as_tupleIJNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEES8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	%rax, %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC1IJS4_ELi0EEEDpOT_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE
__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE: ## @_ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJOPFdddEEEC1IJS2_ELi0EEEDpOT_
__ZNSt3__15tupleIJOPFdddEEEC1IJS2_ELi0EEEDpOT_: ## @_ZNSt3__15tupleIJOPFdddEEEC1IJS2_ELi0EEEDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__15tupleIJOPFdddEEEC2IJS2_ELi0EEEDpOT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJOPFdddEEEC2IJS2_ELi0EEEDpOT_
__ZNSt3__15tupleIJOPFdddEEEC2IJS2_ELi0EEEDpOT_: ## @_ZNSt3__15tupleIJOPFdddEEEC2IJS2_ELi0EEEDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC1IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC1IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC1IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC1IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC2IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC2IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC2IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOPFdddEEEC2IJLm0EEJS5_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS9_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm0EOPFdddELb0EEC2IS2_vEEOT_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0EOPFdddELb0EEC2IS2_vEEOT_
__ZNSt3__112__tuple_leafILm0EOPFdddELb0EEC2IS2_vEEOT_: ## @_ZNSt3__112__tuple_leafILm0EOPFdddELb0EEC2IS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIPFdddEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardINS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS5_E4typeE
__ZNSt3__1L7forwardINS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS5_E4typeE: ## @_ZNSt3__1L7forwardINS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC1IJS4_ELi0EEEDpOT_
__ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC1IJS4_ELi0EEEDpOT_: ## @_ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC1IJS4_ELi0EEEDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC2IJS4_ELi0EEEDpOT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC2IJS4_ELi0EEEDpOT_
__ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC2IJS4_ELi0EEEDpOT_: ## @_ZNSt3__15tupleIJONS_9allocatorIPFdddEEEEEC2IJS4_ELi0EEEDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC1IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC1IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC1IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC1IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC2IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC2IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC2IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_9allocatorIPFdddEEEEEC2IJLm0EEJS7_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EEC2IS4_vEEOT_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EEC2IS4_vEEOT_
__ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EEC2IS4_vEEOT_: ## @_ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EEC2IS4_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE
__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE: ## @_ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJOS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSA_IJDpT0_EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_5tupleIJOPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS8_
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJOS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_5tupleIJONS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJOS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4moveIRNS_5tupleIJOPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS8_
__ZNSt3__1L4moveIRNS_5tupleIJOPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS8_: ## @_ZNSt3__1L4moveIRNS_5tupleIJOPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJOS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
__ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJOS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE: ## @_ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJOS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L3getILm0EJOPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS8_
	movq	%rax, %rdi
	callq	__ZNSt3__1L7forwardIOPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4moveIRNS_5tupleIJONS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_
__ZNSt3__1L4moveIRNS_5tupleIJONS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_: ## @_ZNSt3__1L4moveIRNS_5tupleIJONS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJOS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJOS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJOS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -32(%rbp)
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L3getILm0EJONS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSA_
	movq	%rax, %rdi
	callq	__ZNSt3__1L7forwardIONS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIOPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardIOPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE: ## @_ZNSt3__1L7forwardIOPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3getILm0EJOPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS8_
__ZNSt3__1L3getILm0EJOPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS8_: ## @_ZNSt3__1L3getILm0EJOPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0EOPFdddELb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0EOPFdddELb0EE3getEv
__ZNSt3__112__tuple_leafILm0EOPFdddELb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm0EOPFdddELb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIONS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS6_E4typeE
__ZNSt3__1L7forwardIONS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS6_E4typeE: ## @_ZNSt3__1L7forwardIONS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3getILm0EJONS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSA_
__ZNSt3__1L3getILm0EJONS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSA_: ## @_ZNSt3__1L3getILm0EJONS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSA_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EE3getEv
__ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm0EONS_9allocatorIPFdddEEELb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED2Ev ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED2Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED2Ev
	.p2align	4, 0x90
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED2Ev: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__baseIFdddEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E15__get_allocatorEv
__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E15__get_allocatorEv: ## @_ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E15__get_allocatorEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE6secondEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE8allocateEm
__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE8allocateEm: ## @_ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE8allocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE8max_sizeIS8_vvEEmRKS8_
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	cmpq	%rcx, %rax
	jbe	LBB73_2
## %bb.1:
	leaq	L_.str.2(%rip), %rdi
	callq	__ZNSt3__1L20__throw_length_errorEPKc
LBB73_2:
	movq	-16(%rbp), %rdi
	shlq	$4, %rdi
	movl	$8, %esi
	callq	__ZNSt3__1L17__libcpp_allocateEmm
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC1ERS8_m
__ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC1ERS8_m: ## @_ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC1ERS8_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2ERS8_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE
__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE: ## @_ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE3getEv
__ZNKSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE3getEv: ## @_ZNKSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E8__targetEv
__ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E8__targetEv: ## @_ZNKSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E8__targetEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE7releaseEv
__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE7releaseEv: ## @_ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE7releaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	callq	__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED1Ev
__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED1Ev: ## @_ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE6secondEv
__ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE6secondEv: ## @_ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE8max_sizeIS8_vvEEmRKS8_
__ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE8max_sizeIS8_vvEEmRKS8_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE8max_sizeIS8_vvEEmRKS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	__ZNSt3__114numeric_limitsImE3maxEv
	shrq	$4, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L20__throw_length_errorEPKc
__ZNSt3__1L20__throw_length_errorEPKc:  ## @_ZNSt3__1L20__throw_length_errorEPKc
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rsi
Ltmp34:
	callq	__ZNSt12length_errorC1EPKc
Ltmp35:
	jmp	LBB84_1
LBB84_1:
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	callq	___cxa_throw
LBB84_2:
Ltmp36:
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
	callq	___cxa_free_exception
## %bb.3:
	movq	-16(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table84:
Lexception4:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ## >> Call Site 1 <<
	.uleb128 Ltmp34-Lfunc_begin4            ##   Call between Lfunc_begin4 and Ltmp34
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin4            ## >> Call Site 2 <<
	.uleb128 Ltmp35-Ltmp34                  ##   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin4            ##     jumps to Ltmp36
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin4            ## >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp35              ##   Call between Ltmp35 and Lfunc_end4
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L17__libcpp_allocateEmm
__ZNSt3__1L17__libcpp_allocateEmm:      ## @_ZNSt3__1L17__libcpp_allocateEmm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L24__is_overaligned_for_newEm
	testb	$1, %al
	jne	LBB85_1
	jmp	LBB85_2
LBB85_1:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	__ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_
	movq	%rax, -8(%rbp)
	jmp	LBB85_3
LBB85_2:
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
	movq	%rax, -8(%rbp)
LBB85_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114numeric_limitsImE3maxEv
__ZNSt3__114numeric_limitsImE3maxEv:    ## @_ZNSt3__114numeric_limitsImE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv
__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv: ## @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$-1, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt12length_errorC1EPKc
__ZNSt12length_errorC1EPKc:             ## @_ZNSt12length_errorC1EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt12length_errorC2EPKc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt12length_errorC2EPKc
__ZNSt12length_errorC2EPKc:             ## @_ZNSt12length_errorC2EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rsi
	callq	__ZNSt11logic_errorC2EPKc
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L24__is_overaligned_for_newEm
__ZNSt3__1L24__is_overaligned_for_newEm: ## @_ZNSt3__1L24__is_overaligned_for_newEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	cmpq	$16, -8(%rbp)
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_
__ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_: ## @_ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZnwmSt11align_val_t
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
__ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_: ## @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__Znwm
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2ERS8_m
__ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2ERS8_m: ## @_ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEC2ERS8_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE
__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE: ## @_ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2ILb1EvEEPS7_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISA_EEXT_EE20__good_rval_ref_typeE
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEONS_16remove_referenceIT_E4typeEOSD_
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rdx
Ltmp37:
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1IRS8_SB_EEOT_OT0_
Ltmp38:
	jmp	LBB94_1
LBB94_1:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB94_2:
Ltmp39:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table94:
Lexception5:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp37-Lfunc_begin5            ## >> Call Site 1 <<
	.uleb128 Ltmp38-Ltmp37                  ##   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin5            ##     jumps to Ltmp39
	.byte	1                               ##   On action: 1
Lcst_end5:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4moveIRNS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEONS_16remove_referenceIT_E4typeEOSD_
__ZNSt3__1L4moveIRNS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEONS_16remove_referenceIT_E4typeEOSD_: ## @_ZNSt3__1L4moveIRNS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEONS_16remove_referenceIT_E4typeEOSD_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1IRS8_SB_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1IRS8_SB_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC1IRS8_SB_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2IRS8_SB_EEOT_OT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2IRS8_SB_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2IRS8_SB_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEEC2IRS8_SB_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EEEEOT_RNS_16remove_referenceISA_E4typeE
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EEC2IRS8_vEEOT_
	movq	-40(%rbp), %rax                 ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEOT_RNS_16remove_referenceISB_E4typeE
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EEC2ISA_vEEOT_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIRPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EEEEOT_RNS_16remove_referenceISA_E4typeE
__ZNSt3__1L7forwardIRPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EEEEOT_RNS_16remove_referenceISA_E4typeE: ## @_ZNSt3__1L7forwardIRPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EEEEOT_RNS_16remove_referenceISA_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EEC2IRS8_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EEC2IRS8_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EEC2IRS8_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EEEEOT_RNS_16remove_referenceISA_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEOT_RNS_16remove_referenceISB_E4typeE
__ZNSt3__1L7forwardINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEOT_RNS_16remove_referenceISB_E4typeE: ## @_ZNSt3__1L7forwardINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEOT_RNS_16remove_referenceISB_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EEC2ISA_vEEOT_
__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EEC2ISA_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EEC2ISA_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEEEEOT_RNS_16remove_referenceISB_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv
__ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__110__function6__baseIFdddEEC2Ev
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	__ZTVNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_9allocatorIPFdddEEEEEONS_16remove_referenceIT_E4typeEOS7_
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
Ltmp40:
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_
Ltmp41:
	jmp	LBB107_1
LBB107_1:
	addq	$64, %rsp
	popq	%rbp
	retq
LBB107_2:
Ltmp42:
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	callq	__ZNSt3__110__function6__baseIFdddEED2Ev
## %bb.3:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table107:
Lexception6:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp40-Lfunc_begin6            ## >> Call Site 1 <<
	.uleb128 Ltmp41-Ltmp40                  ##   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin6            ##     jumps to Ltmp42
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin6            ## >> Call Site 2 <<
	.uleb128 Lfunc_end6-Ltmp41              ##   Call between Ltmp41 and Lfunc_end6
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end6:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_OS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_OS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L16forward_as_tupleIJRKPFdddEEEENS_5tupleIJDpOT_EEES8_
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_9allocatorIPFdddEEEEEONS_16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdi
	callq	__ZNSt3__1L16forward_as_tupleIJNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEES8_
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L16forward_as_tupleIJRKPFdddEEEENS_5tupleIJDpOT_EEES8_
__ZNSt3__1L16forward_as_tupleIJRKPFdddEEEENS_5tupleIJDpOT_EEES8_: ## @_ZNSt3__1L16forward_as_tupleIJRKPFdddEEEENS_5tupleIJDpOT_EEES8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRKPFdddEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	%rax, %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__15tupleIJRKPFdddEEEC1INS_4_AndELi0EEES4_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE
__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE: ## @_ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIRKPFdddEEEOT_RNS_16remove_referenceIS5_E4typeE
__ZNSt3__1L7forwardIRKPFdddEEEOT_RNS_16remove_referenceIS5_E4typeE: ## @_ZNSt3__1L7forwardIRKPFdddEEEOT_RNS_16remove_referenceIS5_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJRKPFdddEEEC1INS_4_AndELi0EEES4_
__ZNSt3__15tupleIJRKPFdddEEEC1INS_4_AndELi0EEES4_: ## @_ZNSt3__15tupleIJRKPFdddEEEC1INS_4_AndELi0EEES4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__15tupleIJRKPFdddEEEC2INS_4_AndELi0EEES4_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJRKPFdddEEEC2INS_4_AndELi0EEES4_
__ZNSt3__15tupleIJRKPFdddEEEC2INS_4_AndELi0EEES4_: ## @_ZNSt3__15tupleIJRKPFdddEEEC2INS_4_AndELi0EEES4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC1IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC1IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC1IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC1IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC2IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC2IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC2IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKPFdddEEEC2IJLm0EEJS6_EJEJEJS6_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRKPFdddEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm0ERKPFdddELb0EEC2IS4_vEEOT_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0ERKPFdddELb0EEC2IS4_vEEOT_
__ZNSt3__112__tuple_leafILm0ERKPFdddELb0EEC2IS4_vEEOT_: ## @_ZNSt3__112__tuple_leafILm0ERKPFdddELb0EEC2IS4_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRKPFdddEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE
__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE: ## @_ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJOS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSB_IJDpT0_EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_5tupleIJRKPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS9_
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJRKS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_5tupleIJONS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJOS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4moveIRNS_5tupleIJRKPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS9_
__ZNSt3__1L4moveIRNS_5tupleIJRKPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS9_: ## @_ZNSt3__1L4moveIRNS_5tupleIJRKPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS9_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJRKS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
__ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJRKS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE: ## @_ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJRKS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L3getILm0EJRKPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS9_
	movq	%rax, %rdi
	callq	__ZNSt3__1L7forwardIRKPFdddEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3getILm0EJRKPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS9_
__ZNSt3__1L3getILm0EJRKPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS9_: ## @_ZNSt3__1L3getILm0EJRKPFdddEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS9_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0ERKPFdddELb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0ERKPFdddELb0EE3getEv
__ZNSt3__112__tuple_leafILm0ERKPFdddELb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm0ERKPFdddELb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED2Ev
__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED2Ev: ## @_ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5resetEPS7_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5resetEPS7_
__ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5resetEPS7_: ## @_ZNSt3__110unique_ptrINS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5resetEPS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE5firstEv
	movq	-32(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, (%rax)
	cmpq	$0, -24(%rbp)
	je	LBB126_2
## %bb.1:
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE6secondEv
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi
	callq	__ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEclEPS7_
LBB126_2:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE6secondEv
__ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE6secondEv: ## @_ZNSt3__117__compressed_pairIPNS_10__function6__funcIPFdddENS_9allocatorIS4_EES3_EENS_22__allocator_destructorINS5_IS7_EEEEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEclEPS7_
__ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEclEPS7_: ## @_ZNSt3__122__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEEclEPS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rax), %rdx
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE10deallocateERS8_PS7_m
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorINS_10__function6__funcIPFdddENS2_IS6_EES5_EEEEEELi1ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE10deallocateERS8_PS7_m
__ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE10deallocateERS8_PS7_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_10__function6__funcIPFdddENS1_IS5_EES4_EEEEE10deallocateERS8_PS7_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE10deallocateEPS6_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE10deallocateEPS6_m
__ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE10deallocateEPS6_m: ## @_ZNSt3__19allocatorINS_10__function6__funcIPFdddENS0_IS4_EES3_EEE10deallocateEPS6_m
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	shlq	$4, %rsi
Ltmp43:
	movl	$8, %edx
	callq	__ZNSt3__1L19__libcpp_deallocateEPvmm
Ltmp44:
	jmp	LBB131_1
LBB131_1:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB131_2:
Ltmp45:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table131:
Lexception7:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp43-Lfunc_begin7            ## >> Call Site 1 <<
	.uleb128 Ltmp44-Ltmp43                  ##   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin7            ##     jumps to Ltmp45
	.byte	1                               ##   On action: 1
Lcst_end7:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L19__libcpp_deallocateEPvmm
__ZNSt3__1L19__libcpp_deallocateEPvmm:  ## @_ZNSt3__1L19__libcpp_deallocateEPvmm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L24__is_overaligned_for_newEm
	testb	$1, %al
	jne	LBB132_1
	jmp	LBB132_2
LBB132_1:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	__ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_
	jmp	LBB132_3
LBB132_2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
LBB132_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_
__ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_: ## @_ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	__ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
__ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_: ## @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_
__ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_: ## @_ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZdlPvSt11align_val_t
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
__ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_: ## @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_
__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_: ## @_ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__110__function6__baseIFdddEEC2Ev
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	__ZTVNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	addq	$8, %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
Ltmp46:
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_
Ltmp47:
	jmp	LBB138_1
LBB138_1:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB138_2:
Ltmp48:
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	callq	__ZNSt3__110__function6__baseIFdddEED2Ev
## %bb.3:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table138:
Lexception8:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp46-Lfunc_begin8            ## >> Call Site 1 <<
	.uleb128 Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin8            ##     jumps to Ltmp48
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin8            ## >> Call Site 2 <<
	.uleb128 Lfunc_end8-Ltmp47              ##   Call between Ltmp47 and Lfunc_end8
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end8:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC1ERKS3_RKS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EC2ERKS3_RKS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L16forward_as_tupleIJRKPFdddEEEENS_5tupleIJDpOT_EEES8_
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L16forward_as_tupleIJRKNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEESA_
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L16forward_as_tupleIJRKNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEESA_
__ZNSt3__1L16forward_as_tupleIJRKNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEESA_: ## @_ZNSt3__1L16forward_as_tupleIJRKNS_9allocatorIPFdddEEEEEENS_5tupleIJDpOT_EEESA_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRKNS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS7_E4typeE
	movq	%rax, %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC1INS_4_AndELi0EEES6_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE
__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE: ## @_ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC1IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIRKNS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS7_E4typeE
__ZNSt3__1L7forwardIRKNS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS7_E4typeE: ## @_ZNSt3__1L7forwardIRKNS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS7_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC1INS_4_AndELi0EEES6_
__ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC1INS_4_AndELi0EEES6_: ## @_ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC1INS_4_AndELi0EEES6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC2INS_4_AndELi0EEES6_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC2INS_4_AndELi0EEES6_
__ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC2INS_4_AndELi0EEES6_: ## @_ZNSt3__15tupleIJRKNS_9allocatorIPFdddEEEEEC2INS_4_AndELi0EEES6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC1IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC1IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC1IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC1IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC2IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC2IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC2IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_9allocatorIPFdddEEEEEC2IJLm0EEJS8_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRKNS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS7_E4typeE
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EEC2IS6_vEEOT_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EEC2IS6_vEEOT_
__ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EEC2IS6_vEEOT_: ## @_ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EEC2IS6_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRKNS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS7_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE
__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE: ## @_ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEEC2IJRKS2_EJRKS4_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_5tupleIJRKPFdddEEEEEEONS_16remove_referenceIT_E4typeEOS9_
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EEC2IJRKS2_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_5tupleIJRKNS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSB_
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJRKS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4moveIRNS_5tupleIJRKNS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSB_
__ZNSt3__1L4moveIRNS_5tupleIJRKNS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSB_: ## @_ZNSt3__1L4moveIRNS_5tupleIJRKNS_9allocatorIPFdddEEEEEEEEONS_16remove_referenceIT_E4typeEOSB_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJRKS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJRKS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPFdddEEELi1ELb1EEC2IJRKS4_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -32(%rbp)
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L3getILm0EJRKNS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_
	movq	%rax, %rdi
	callq	__ZNSt3__1L7forwardIRKNS_9allocatorIPFdddEEEEEOT_RNS_16remove_referenceIS7_E4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3getILm0EJRKNS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_
__ZNSt3__1L3getILm0EJRKNS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_: ## @_ZNSt3__1L3getILm0EJRKNS_9allocatorIPFdddEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EE3getEv
__ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm0ERKNS_9allocatorIPFdddEEELb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_
__ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_: ## @_ZNSt3__110__function12__alloc_funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	-32(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__128__invoke_void_return_wrapperIdLb0EE6__callIJRPFdddEddEEEdDpOT_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE: ## @_ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__128__invoke_void_return_wrapperIdLb0EE6__callIJRPFdddEddEEEdDpOT_ ## -- Begin function _ZNSt3__128__invoke_void_return_wrapperIdLb0EE6__callIJRPFdddEddEEEdDpOT_
	.weak_definition	__ZNSt3__128__invoke_void_return_wrapperIdLb0EE6__callIJRPFdddEddEEEdDpOT_
	.p2align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIdLb0EE6__callIJRPFdddEddEEEdDpOT_: ## @_ZNSt3__128__invoke_void_return_wrapperIdLb0EE6__callIJRPFdddEddEEEdDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIRPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	-32(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__1L8__invokeIRPFdddEJddEEEDTclscT_fp_spscT0_fp0_EEOS4_DpOS5_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv
__ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPFdddENS_9allocatorIS2_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L8__invokeIRPFdddEJddEEEDTclscT_fp_spscT0_fp0_EEOS4_DpOS5_
__ZNSt3__1L8__invokeIRPFdddEJddEEEDTclscT_fp_spscT0_fp0_EEOS4_DpOS5_: ## @_ZNSt3__1L8__invokeIRPFdddEJddEEEDTclscT_fp_spscT0_fp0_EEOS4_DpOS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0                   ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm1                   ## xmm1 = mem[0],zero
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardIRPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardIRPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE: ## @_ZNSt3__1L7forwardIRPFdddEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPFdddELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt9type_infoeqERKS_
__ZNKSt9type_infoeqERKS_:               ## @_ZNKSt9type_infoeqERKS_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__18functionIFdddEED2Ev  ## -- Begin function _ZNSt3__18functionIFdddEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__18functionIFdddEED2Ev
	.p2align	4, 0x90
__ZNSt3__18functionIFdddEED2Ev:         ## @_ZNSt3__18functionIFdddEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function12__value_funcIFdddEED1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEED1Ev
__ZNSt3__110__function12__value_funcIFdddEED1Ev: ## @_ZNSt3__110__function12__value_funcIFdddEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function12__value_funcIFdddEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEED2Ev
__ZNSt3__110__function12__value_funcIFdddEED2Ev: ## @_ZNSt3__110__function12__value_funcIFdddEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -16(%rbp)                 ## 8-byte Spill
	movq	32(%rcx), %rax
	cmpq	%rcx, %rax
	jne	LBB165_2
## %bb.1:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movq	32(%rax), %rdi
	movq	(%rdi), %rax
	callq	*32(%rax)
	jmp	LBB165_5
LBB165_2:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	cmpq	$0, 32(%rax)
	je	LBB165_4
## %bb.3:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movq	32(%rax), %rdi
	movq	(%rdi), %rax
	callq	*40(%rax)
LBB165_4:
	jmp	LBB165_5
LBB165_5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13BranchChangerIddEC2ENSt3__18functionIFdddEEES4_ ## -- Begin function _ZN13BranchChangerIddEC2ENSt3__18functionIFdddEEES4_
	.weak_def_can_be_hidden	__ZN13BranchChangerIddEC2ENSt3__18functionIFdddEEES4_
	.p2align	4, 0x90
__ZN13BranchChangerIddEC2ENSt3__18functionIFdddEEES4_: ## @_ZN13BranchChangerIddEC2ENSt3__18functionIFdddEEES4_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdx, -32(%rbp)                 ## 8-byte Spill
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__18functionIFdddEEC1ERKS2_
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	-32(%rbp), %rsi                 ## 8-byte Reload
	addq	$48, %rdi
Ltmp49:
	callq	__ZNSt3__18functionIFdddEEC1ERKS2_
Ltmp50:
	jmp	LBB166_1
LBB166_1:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB166_2:
Ltmp51:
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
	callq	__ZNSt3__18functionIFdddEED1Ev
## %bb.3:
	movq	-16(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table166:
Lexception9:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ## >> Call Site 1 <<
	.uleb128 Ltmp49-Lfunc_begin9            ##   Call between Lfunc_begin9 and Ltmp49
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin9            ## >> Call Site 2 <<
	.uleb128 Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin9            ##     jumps to Ltmp51
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin9            ## >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp50              ##   Call between Ltmp50 and Lfunc_end9
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end9:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__18functionIFdddEEC1ERKS2_ ## -- Begin function _ZNSt3__18functionIFdddEEC1ERKS2_
	.weak_def_can_be_hidden	__ZNSt3__18functionIFdddEEC1ERKS2_
	.p2align	4, 0x90
__ZNSt3__18functionIFdddEEC1ERKS2_:     ## @_ZNSt3__18functionIFdddEEC1ERKS2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__18functionIFdddEEC2ERKS2_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__18functionIFdddEEC2ERKS2_ ## -- Begin function _ZNSt3__18functionIFdddEEC2ERKS2_
	.weak_def_can_be_hidden	__ZNSt3__18functionIFdddEEC2ERKS2_
	.p2align	4, 0x90
__ZNSt3__18functionIFdddEEC2ERKS2_:     ## @_ZNSt3__18functionIFdddEEC2ERKS2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110__function12__value_funcIFdddEEC1ERKS3_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEEC1ERKS3_
__ZNSt3__110__function12__value_funcIFdddEEC1ERKS3_: ## @_ZNSt3__110__function12__value_funcIFdddEEC1ERKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110__function12__value_funcIFdddEEC2ERKS3_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEEC2ERKS3_
__ZNSt3__110__function12__value_funcIFdddEEC2ERKS3_: ## @_ZNSt3__110__function12__value_funcIFdddEEC2ERKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	LBB170_2
## %bb.1:
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	$0, 32(%rax)
	jmp	LBB170_6
LBB170_2:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB170_4
## %bb.3:
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__110__function12__value_funcIFdddEE9__as_baseEPv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	32(%rax), %rsi
	movq	(%rdi), %rax
	callq	*24(%rax)
	jmp	LBB170_5
LBB170_4:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	(%rdi), %rax
	callq	*16(%rax)
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rcx, 32(%rax)
LBB170_5:
	jmp	LBB170_6
LBB170_6:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__110__function12__value_funcIFdddEE9__as_baseEPv ## -- Begin function _ZNSt3__110__function12__value_funcIFdddEE9__as_baseEPv
	.weak_definition	__ZNSt3__110__function12__value_funcIFdddEE9__as_baseEPv
	.p2align	4, 0x90
__ZNSt3__110__function12__value_funcIFdddEE9__as_baseEPv: ## @_ZNSt3__110__function12__value_funcIFdddEE9__as_baseEPv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb1EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_ ## -- Begin function _ZN5boost8contract7call_ifINSt3__117integral_constantIbLb1EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	.weak_definition	__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb1EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	.p2align	4, 0x90
__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb1EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_: ## @_ZN5boost8contract7call_ifINSt3__117integral_constantIbLb1EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rcx, -8(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC1ES8_
	movq	-40(%rbp), %rax                 ## 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNK5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dE5else_IZNS4_IS7_EEdddEUlvE0_EEdRKT_ ## -- Begin function _ZNK5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dE5else_IZNS4_IS7_EEdddEUlvE0_EEdRKT_
	.weak_definition	__ZNK5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dE5else_IZNS4_IS7_EEdddEUlvE0_EEdRKT_
	.p2align	4, 0x90
__ZNK5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dE5else_IZNS4_IS7_EEdddEUlvE0_EEdRKT_: ## @_ZNK5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dE5else_IZNS4_IS7_EEdddEUlvE0_EEdRKT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNK5boost10shared_ptrIdEdeEv
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED1Ev ## -- Begin function _ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED1Ev
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED1Ev
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED1Ev: ## @_ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC1ES8_ ## -- Begin function _ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC1ES8_
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC1ES8_
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC1ES8_: ## @_ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC1ES8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC2ES8_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC2ES8_ ## -- Begin function _ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC2ES8_
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC2ES8_
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC2ES8_: ## @_ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEEC2ES8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dEC2ES8_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dEC2ES8_ ## -- Begin function _ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dEC2ES8_
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dEC2ES8_
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dEC2ES8_: ## @_ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dEC2ES8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	leaq	16(%rbp), %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	callq	__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddENKUlvE_clEv
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	movsd	%xmm0, -16(%rbp)
	leaq	-16(%rbp), %rsi
	callq	__ZN5boost11make_sharedIdJdEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost11make_sharedIdJdEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_ ## -- Begin function _ZN5boost11make_sharedIdJdEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_
	.weak_definition	__ZN5boost11make_sharedIdJdEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_
	.p2align	4, 0x90
__ZN5boost11make_sharedIdJdEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_: ## @_ZN5boost11make_sharedIdJdEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -120(%rbp)                ## 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -112(%rbp)                ## 8-byte Spill
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)                 ## 4-byte Spill
	movl	%eax, %esi
	leaq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)                 ## 8-byte Spill
	callq	__ZN5boost10shared_ptrIdEC1IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNK5boost10shared_ptrIdE29_internal_get_untyped_deleterEv
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdE7addressEv
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZN5boost6detail10sp_forwardIdEEOT_RS2_
	movq	%rax, %rcx
	movq	-104(%rbp), %rax                ## 8-byte Reload
	movsd	(%rcx), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdE15set_initializedEv
	movl	-92(%rbp), %eax                 ## 4-byte Reload
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movq	-56(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdx
Ltmp52:
                                        ## kill: def $al killed $al killed $eax
	movq	%rdx, %rsi
	callq	__ZN5boost6detail26sp_enable_shared_from_thisEz
Ltmp53:
	jmp	LBB178_1
LBB178_1:
	movq	-120(%rbp), %rdi                ## 8-byte Reload
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	callq	__ZN5boost10shared_ptrIdEC1IdEERKNS0_IT_EEPd
	leaq	-32(%rbp), %rdi
	callq	__ZN5boost10shared_ptrIdED1Ev
	movq	-112(%rbp), %rax                ## 8-byte Reload
	addq	$128, %rsp
	popq	%rbp
	retq
LBB178_2:
Ltmp54:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -72(%rbp)
	movl	%eax, -76(%rbp)
	leaq	-32(%rbp), %rdi
	callq	__ZN5boost10shared_ptrIdED1Ev
## %bb.3:
	movq	-72(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table178:
Lexception10:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ## >> Call Site 1 <<
	.uleb128 Ltmp52-Lfunc_begin10           ##   Call between Lfunc_begin10 and Ltmp52
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin10           ## >> Call Site 2 <<
	.uleb128 Ltmp53-Ltmp52                  ##   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin10           ##     jumps to Ltmp54
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin10           ## >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp53             ##   Call between Ltmp53 and Lfunc_end10
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end10:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddENKUlvE_clEv ## -- Begin function _ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddENKUlvE_clEv
	.weak_definition	__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddENKUlvE_clEv
	.p2align	4, 0x90
__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddENKUlvE_clEv: ## @_ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddENKUlvE_clEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rcx
	movsd	(%rcx), %xmm0                   ## xmm0 = mem[0],zero
	movq	16(%rax), %rax
	movsd	(%rax), %xmm1                   ## xmm1 = mem[0],zero
	callq	__ZNKSt3__18functionIFdddEEclEdd
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost10shared_ptrIdEC1IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_ ## -- Begin function _ZN5boost10shared_ptrIdEC1IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
	.weak_def_can_be_hidden	__ZN5boost10shared_ptrIdEC1IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
	.p2align	4, 0x90
__ZN5boost10shared_ptrIdEC1IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_: ## @_ZN5boost10shared_ptrIdEC1IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	__ZN5boost10shared_ptrIdEC2IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNK5boost10shared_ptrIdE29_internal_get_untyped_deleterEv ## -- Begin function _ZNK5boost10shared_ptrIdE29_internal_get_untyped_deleterEv
	.weak_definition	__ZNK5boost10shared_ptrIdE29_internal_get_untyped_deleterEv
	.p2align	4, 0x90
__ZNK5boost10shared_ptrIdE29_internal_get_untyped_deleterEv: ## @_ZNK5boost10shared_ptrIdE29_internal_get_untyped_deleterEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZNK5boost6detail12shared_count19get_untyped_deleterEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdE7addressEv ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdE7addressEv
	.weak_definition	__ZN5boost6detail13sp_ms_deleterIdE7addressEv
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdE7addressEv: ## @_ZN5boost6detail13sp_ms_deleterIdE7addressEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail10sp_forwardIdEEOT_RS2_ ## -- Begin function _ZN5boost6detail10sp_forwardIdEEOT_RS2_
	.weak_definition	__ZN5boost6detail10sp_forwardIdEEOT_RS2_
	.p2align	4, 0x90
__ZN5boost6detail10sp_forwardIdEEOT_RS2_: ## @_ZN5boost6detail10sp_forwardIdEEOT_RS2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdE15set_initializedEv ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdE15set_initializedEv
	.weak_definition	__ZN5boost6detail13sp_ms_deleterIdE15set_initializedEv
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdE15set_initializedEv: ## @_ZN5boost6detail13sp_ms_deleterIdE15set_initializedEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail26sp_enable_shared_from_thisEz ## -- Begin function _ZN5boost6detail26sp_enable_shared_from_thisEz
	.weak_definition	__ZN5boost6detail26sp_enable_shared_from_thisEz
	.p2align	4, 0x90
__ZN5boost6detail26sp_enable_shared_from_thisEz: ## @_ZN5boost6detail26sp_enable_shared_from_thisEz
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost10shared_ptrIdEC1IdEERKNS0_IT_EEPd ## -- Begin function _ZN5boost10shared_ptrIdEC1IdEERKNS0_IT_EEPd
	.weak_def_can_be_hidden	__ZN5boost10shared_ptrIdEC1IdEERKNS0_IT_EEPd
	.p2align	4, 0x90
__ZN5boost10shared_ptrIdEC1IdEERKNS0_IT_EEPd: ## @_ZN5boost10shared_ptrIdEC1IdEERKNS0_IT_EEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZN5boost10shared_ptrIdEC2IdEERKNS0_IT_EEPd
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost10shared_ptrIdED1Ev   ## -- Begin function _ZN5boost10shared_ptrIdED1Ev
	.weak_def_can_be_hidden	__ZN5boost10shared_ptrIdED1Ev
	.p2align	4, 0x90
__ZN5boost10shared_ptrIdED1Ev:          ## @_ZN5boost10shared_ptrIdED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost10shared_ptrIdED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost10shared_ptrIdEC2IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_ ## -- Begin function _ZN5boost10shared_ptrIdEC2IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
	.weak_def_can_be_hidden	__ZN5boost10shared_ptrIdEC2IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
	.p2align	4, 0x90
__ZN5boost10shared_ptrIdEC2IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_: ## @_ZN5boost10shared_ptrIdEC2IdNS_6detail14sp_inplace_tagINS3_13sp_ms_deleterIdEEEEEEPT_T0_
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, (%rdi)
	addq	$8, %rdi
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rsi
	callq	__ZN5boost6detail12shared_countC1IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	-24(%rbp), %rsi
Ltmp55:
	callq	__ZN5boost6detail20sp_deleter_constructIddEEvPNS_10shared_ptrIT_EEPT0_
Ltmp56:
	jmp	LBB188_1
LBB188_1:
	addq	$64, %rsp
	popq	%rbp
	retq
LBB188_2:
Ltmp57:
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	callq	__ZN5boost6detail12shared_countD1Ev
## %bb.3:
	movq	-40(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table188:
Lexception11:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ## >> Call Site 1 <<
	.uleb128 Ltmp55-Lfunc_begin11           ##   Call between Lfunc_begin11 and Ltmp55
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin11           ## >> Call Site 2 <<
	.uleb128 Ltmp56-Ltmp55                  ##   Call between Ltmp55 and Ltmp56
	.uleb128 Ltmp57-Lfunc_begin11           ##     jumps to Ltmp57
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin11           ## >> Call Site 3 <<
	.uleb128 Lfunc_end11-Ltmp56             ##   Call between Ltmp56 and Lfunc_end11
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end11:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5boost6detail12shared_countC1IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE ## -- Begin function _ZN5boost6detail12shared_countC1IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
	.weak_def_can_be_hidden	__ZN5boost6detail12shared_countC1IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
	.p2align	4, 0x90
__ZN5boost6detail12shared_countC1IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE: ## @_ZN5boost6detail12shared_countC1IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	__ZN5boost6detail12shared_countC2IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail20sp_deleter_constructIddEEvPNS_10shared_ptrIT_EEPT0_ ## -- Begin function _ZN5boost6detail20sp_deleter_constructIddEEvPNS_10shared_ptrIT_EEPT0_
	.weak_definition	__ZN5boost6detail20sp_deleter_constructIddEEvPNS_10shared_ptrIT_EEPT0_
	.p2align	4, 0x90
__ZN5boost6detail20sp_deleter_constructIddEEvPNS_10shared_ptrIT_EEPT0_: ## @_ZN5boost6detail20sp_deleter_constructIddEEvPNS_10shared_ptrIT_EEPT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	__ZN5boost6detail26sp_enable_shared_from_thisEz
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail12shared_countD1Ev ## -- Begin function _ZN5boost6detail12shared_countD1Ev
	.weak_def_can_be_hidden	__ZN5boost6detail12shared_countD1Ev
	.p2align	4, 0x90
__ZN5boost6detail12shared_countD1Ev:    ## @_ZN5boost6detail12shared_countD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost6detail12shared_countD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail12shared_countC2IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE ## -- Begin function _ZN5boost6detail12shared_countC2IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
	.weak_def_can_be_hidden	__ZN5boost6detail12shared_countC2IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
	.p2align	4, 0x90
__ZN5boost6detail12shared_countC2IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE: ## @_ZN5boost6detail12shared_countC2IPdNS0_13sp_ms_deleterIdEEEET_NS0_14sp_inplace_tagIT0_EE
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	$0, (%rax)
Ltmp58:
	movl	$40, %edi
	callq	__Znwm
Ltmp59:
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB192_1
LBB192_1:
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	%rdi, %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rsi
Ltmp61:
	callq	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC1ES2_
Ltmp62:
	jmp	LBB192_2
LBB192_2:
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movq	-64(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, (%rax)
	jmp	LBB192_8
LBB192_3:
Ltmp60:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	jmp	LBB192_5
LBB192_4:
Ltmp63:
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	callq	__ZdlPv
LBB192_5:
	movq	-32(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-24(%rbp), %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdE11operator_fnEPd
Ltmp64:
	callq	___cxa_rethrow
Ltmp65:
	jmp	LBB192_11
LBB192_6:
Ltmp66:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
Ltmp67:
	callq	___cxa_end_catch
Ltmp68:
	jmp	LBB192_7
LBB192_7:
	jmp	LBB192_9
LBB192_8:
	addq	$64, %rsp
	popq	%rbp
	retq
LBB192_9:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
LBB192_10:
Ltmp69:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB192_11:
	ud2
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table192:
Lexception12:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp58-Lfunc_begin12           ## >> Call Site 1 <<
	.uleb128 Ltmp59-Ltmp58                  ##   Call between Ltmp58 and Ltmp59
	.uleb128 Ltmp60-Lfunc_begin12           ##     jumps to Ltmp60
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp61-Lfunc_begin12           ## >> Call Site 2 <<
	.uleb128 Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.uleb128 Ltmp63-Lfunc_begin12           ##     jumps to Ltmp63
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp62-Lfunc_begin12           ## >> Call Site 3 <<
	.uleb128 Ltmp64-Ltmp62                  ##   Call between Ltmp62 and Ltmp64
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp64-Lfunc_begin12           ## >> Call Site 4 <<
	.uleb128 Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.uleb128 Ltmp66-Lfunc_begin12           ##     jumps to Ltmp66
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin12           ## >> Call Site 5 <<
	.uleb128 Ltmp68-Ltmp67                  ##   Call between Ltmp67 and Ltmp68
	.uleb128 Ltmp69-Lfunc_begin12           ##     jumps to Ltmp69
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp68-Lfunc_begin12           ## >> Call Site 6 <<
	.uleb128 Lfunc_end12-Ltmp68             ##   Call between Ltmp68 and Lfunc_end12
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end12:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC1ES2_ ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC1ES2_
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC1ES2_
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC1ES2_: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC1ES2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC2ES2_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdE11operator_fnEPd ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdE11operator_fnEPd
	.weak_definition	__ZN5boost6detail13sp_ms_deleterIdE11operator_fnEPd
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdE11operator_fnEPd: ## @_ZN5boost6detail13sp_ms_deleterIdE11operator_fnEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC2ES2_ ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC2ES2_
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC2ES2_
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC2ES2_: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEC2ES2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)                 ## 8-byte Spill
	callq	__ZN5boost6detail15sp_counted_baseC2Ev
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	movq	__ZTVN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rdi)
	addq	$24, %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdEC1Ev
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail15sp_counted_baseC2Ev ## -- Begin function _ZN5boost6detail15sp_counted_baseC2Ev
	.weak_def_can_be_hidden	__ZN5boost6detail15sp_counted_baseC2Ev
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_baseC2Ev: ## @_ZN5boost6detail15sp_counted_baseC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	__ZTVN5boost6detail15sp_counted_baseE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdEC1Ev ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdEC1Ev
	.weak_def_can_be_hidden	__ZN5boost6detail13sp_ms_deleterIdEC1Ev
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdEC1Ev: ## @_ZN5boost6detail13sp_ms_deleterIdEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED1Ev ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED1Ev
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED1Ev
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED1Ev: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED0Ev ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED0Ev
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED0Ev
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED0Ev: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	callq	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED1Ev
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE7disposeEv ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE7disposeEv
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE7disposeEv
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE7disposeEv: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE7disposeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	addq	$24, %rdi
	movq	16(%rax), %rsi
	callq	__ZN5boost6detail13sp_ms_deleterIdEclEPd
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail15sp_counted_base7destroyEv ## -- Begin function _ZN5boost6detail15sp_counted_base7destroyEv
	.weak_def_can_be_hidden	__ZN5boost6detail15sp_counted_base7destroyEv
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_base7destroyEv: ## @_ZN5boost6detail15sp_counted_base7destroyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	cmpq	$0, %rax
	je	LBB201_2
## %bb.1:
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rdi), %rax
	callq	*8(%rax)
LBB201_2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE11get_deleterERKSt9type_info ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE11get_deleterERKSt9type_info
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE11get_deleterERKSt9type_info
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE11get_deleterERKSt9type_info: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE11get_deleterERKSt9type_info
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	movq	__ZTIN5boost6detail13sp_ms_deleterIdEE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt9type_infoeqERKS_
	testb	$1, %al
	jne	LBB202_1
	jmp	LBB202_2
LBB202_1:
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	addq	$24, %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	jmp	LBB202_3
LBB202_2:
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	jmp	LBB202_3
LBB202_3:
	movq	-32(%rbp), %rax                 ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE17get_local_deleterERKSt9type_info ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE17get_local_deleterERKSt9type_info
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE17get_local_deleterERKSt9type_info
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE17get_local_deleterERKSt9type_info: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE17get_local_deleterERKSt9type_info
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	movq	__ZTIN5boost6detail13sp_ms_deleterIdEE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt9type_infoeqERKS_
	testb	$1, %al
	jne	LBB203_1
	jmp	LBB203_2
LBB203_1:
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	addq	$24, %rdi
	callq	__ZN5boost9addressofINS_6detail13sp_ms_deleterIdEEEEPT_RS4_
	movq	%rax, %rdi
	callq	__ZN5boost6detail17get_local_deleterINS0_13sp_ms_deleterIdEEEEPT_S5_
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	jmp	LBB203_3
LBB203_2:
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	jmp	LBB203_3
LBB203_3:
	movq	-32(%rbp), %rax                 ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE19get_untyped_deleterEv ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE19get_untyped_deleterEv
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE19get_untyped_deleterEv
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE19get_untyped_deleterEv: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE19get_untyped_deleterEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail15sp_counted_baseD1Ev ## -- Begin function _ZN5boost6detail15sp_counted_baseD1Ev
	.weak_def_can_be_hidden	__ZN5boost6detail15sp_counted_baseD1Ev
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_baseD1Ev: ## @_ZN5boost6detail15sp_counted_baseD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail15sp_counted_baseD0Ev ## -- Begin function _ZN5boost6detail15sp_counted_baseD0Ev
	.weak_def_can_be_hidden	__ZN5boost6detail15sp_counted_baseD0Ev
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_baseD0Ev: ## @_ZN5boost6detail15sp_counted_baseD0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdEC2Ev ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdEC2Ev
	.weak_def_can_be_hidden	__ZN5boost6detail13sp_ms_deleterIdEC2Ev
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdEC2Ev: ## @_ZN5boost6detail13sp_ms_deleterIdEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED2Ev ## -- Begin function _ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED2Ev
	.weak_def_can_be_hidden	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED2Ev
	.p2align	4, 0x90
__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED2Ev: ## @_ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	movq	__ZTVN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	addq	$24, %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdED1Ev
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZN5boost6detail15sp_counted_baseD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdED1Ev ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdED1Ev
	.weak_def_can_be_hidden	__ZN5boost6detail13sp_ms_deleterIdED1Ev
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdED1Ev: ## @_ZN5boost6detail13sp_ms_deleterIdED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail15sp_counted_baseD2Ev ## -- Begin function _ZN5boost6detail15sp_counted_baseD2Ev
	.weak_def_can_be_hidden	__ZN5boost6detail15sp_counted_baseD2Ev
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_baseD2Ev: ## @_ZN5boost6detail15sp_counted_baseD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdED2Ev ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdED2Ev
	.weak_def_can_be_hidden	__ZN5boost6detail13sp_ms_deleterIdED2Ev
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdED2Ev: ## @_ZN5boost6detail13sp_ms_deleterIdED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdE7destroyEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdE7destroyEv ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdE7destroyEv
	.weak_definition	__ZN5boost6detail13sp_ms_deleterIdE7destroyEv
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdE7destroyEv: ## @_ZN5boost6detail13sp_ms_deleterIdE7destroyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	testb	$1, (%rax)
	je	LBB212_2
## %bb.1:
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
LBB212_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail13sp_ms_deleterIdEclEPd ## -- Begin function _ZN5boost6detail13sp_ms_deleterIdEclEPd
	.weak_definition	__ZN5boost6detail13sp_ms_deleterIdEclEPd
	.p2align	4, 0x90
__ZN5boost6detail13sp_ms_deleterIdEclEPd: ## @_ZN5boost6detail13sp_ms_deleterIdEclEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost6detail13sp_ms_deleterIdE7destroyEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail17get_local_deleterINS0_13sp_ms_deleterIdEEEEPT_S5_ ## -- Begin function _ZN5boost6detail17get_local_deleterINS0_13sp_ms_deleterIdEEEEPT_S5_
	.weak_definition	__ZN5boost6detail17get_local_deleterINS0_13sp_ms_deleterIdEEEEPT_S5_
	.p2align	4, 0x90
__ZN5boost6detail17get_local_deleterINS0_13sp_ms_deleterIdEEEEPT_S5_: ## @_ZN5boost6detail17get_local_deleterINS0_13sp_ms_deleterIdEEEEPT_S5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost9addressofINS_6detail13sp_ms_deleterIdEEEEPT_RS4_ ## -- Begin function _ZN5boost9addressofINS_6detail13sp_ms_deleterIdEEEEPT_RS4_
	.weak_definition	__ZN5boost9addressofINS_6detail13sp_ms_deleterIdEEEEPT_RS4_
	.p2align	4, 0x90
__ZN5boost9addressofINS_6detail13sp_ms_deleterIdEEEEPT_RS4_: ## @_ZN5boost9addressofINS_6detail13sp_ms_deleterIdEEEEPT_RS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail12shared_countD2Ev ## -- Begin function _ZN5boost6detail12shared_countD2Ev
	.weak_def_can_be_hidden	__ZN5boost6detail12shared_countD2Ev
	.p2align	4, 0x90
__ZN5boost6detail12shared_countD2Ev:    ## @_ZN5boost6detail12shared_countD2Ev
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	cmpq	$0, (%rax)
	je	LBB216_3
## %bb.1:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax), %rdi
Ltmp70:
	callq	__ZN5boost6detail15sp_counted_base7releaseEv
Ltmp71:
	jmp	LBB216_2
LBB216_2:
	jmp	LBB216_3
LBB216_3:
	addq	$16, %rsp
	popq	%rbp
	retq
LBB216_4:
Ltmp72:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table216:
Lexception13:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp70-Lfunc_begin13           ## >> Call Site 1 <<
	.uleb128 Ltmp71-Ltmp70                  ##   Call between Ltmp70 and Ltmp71
	.uleb128 Ltmp72-Lfunc_begin13           ##     jumps to Ltmp72
	.byte	1                               ##   On action: 1
Lcst_end13:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5boost6detail15sp_counted_base7releaseEv ## -- Begin function _ZN5boost6detail15sp_counted_base7releaseEv
	.weak_definition	__ZN5boost6detail15sp_counted_base7releaseEv
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_base7releaseEv: ## @_ZN5boost6detail15sp_counted_base7releaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	addq	$8, %rdi
	callq	__ZN5boost6detail16atomic_decrementEPj
	cmpl	$1, %eax
	jne	LBB217_2
## %bb.1:
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rdi), %rax
	callq	*16(%rax)
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZN5boost6detail15sp_counted_base12weak_releaseEv
LBB217_2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail16atomic_decrementEPj ## -- Begin function _ZN5boost6detail16atomic_decrementEPj
	.weak_definition	__ZN5boost6detail16atomic_decrementEPj
	.p2align	4, 0x90
__ZN5boost6detail16atomic_decrementEPj: ## @_ZN5boost6detail16atomic_decrementEPj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	negl	%eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail15sp_counted_base12weak_releaseEv ## -- Begin function _ZN5boost6detail15sp_counted_base12weak_releaseEv
	.weak_definition	__ZN5boost6detail15sp_counted_base12weak_releaseEv
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_base12weak_releaseEv: ## @_ZN5boost6detail15sp_counted_base12weak_releaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	addq	$12, %rdi
	callq	__ZN5boost6detail16atomic_decrementEPj
	cmpl	$1, %eax
	jne	LBB219_2
## %bb.1:
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	movq	(%rdi), %rax
	callq	*24(%rax)
LBB219_2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNK5boost6detail12shared_count19get_untyped_deleterEv ## -- Begin function _ZNK5boost6detail12shared_count19get_untyped_deleterEv
	.weak_definition	__ZNK5boost6detail12shared_count19get_untyped_deleterEv
	.p2align	4, 0x90
__ZNK5boost6detail12shared_count19get_untyped_deleterEv: ## @_ZNK5boost6detail12shared_count19get_untyped_deleterEv
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	cmpq	$0, (%rax)
	je	LBB220_3
## %bb.1:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax), %rdi
	movq	(%rdi), %rax
	movq	48(%rax), %rax
Ltmp73:
	callq	*%rax
Ltmp74:
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB220_2
LBB220_2:
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	jmp	LBB220_4
LBB220_3:
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	jmp	LBB220_4
LBB220_4:
	movq	-32(%rbp), %rax                 ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
LBB220_5:
Ltmp75:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table220:
Lexception14:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp73-Lfunc_begin14           ## >> Call Site 1 <<
	.uleb128 Ltmp74-Ltmp73                  ##   Call between Ltmp73 and Ltmp74
	.uleb128 Ltmp75-Lfunc_begin14           ##     jumps to Ltmp75
	.byte	1                               ##   On action: 1
Lcst_end14:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase4:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5boost10shared_ptrIdEC2IdEERKNS0_IT_EEPd ## -- Begin function _ZN5boost10shared_ptrIdEC2IdEERKNS0_IT_EEPd
	.weak_def_can_be_hidden	__ZN5boost10shared_ptrIdEC2IdEERKNS0_IT_EEPd
	.p2align	4, 0x90
__ZN5boost10shared_ptrIdEC2IdEERKNS0_IT_EEPd: ## @_ZN5boost10shared_ptrIdEC2IdEERKNS0_IT_EEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, (%rdi)
	addq	$8, %rdi
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	callq	__ZN5boost6detail12shared_countC1ERKS1_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail12shared_countC1ERKS1_ ## -- Begin function _ZN5boost6detail12shared_countC1ERKS1_
	.weak_def_can_be_hidden	__ZN5boost6detail12shared_countC1ERKS1_
	.p2align	4, 0x90
__ZN5boost6detail12shared_countC1ERKS1_: ## @_ZN5boost6detail12shared_countC1ERKS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZN5boost6detail12shared_countC2ERKS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail12shared_countC2ERKS1_ ## -- Begin function _ZN5boost6detail12shared_countC2ERKS1_
	.weak_def_can_be_hidden	__ZN5boost6detail12shared_countC2ERKS1_
	.p2align	4, 0x90
__ZN5boost6detail12shared_countC2ERKS1_: ## @_ZN5boost6detail12shared_countC2ERKS1_
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	cmpq	$0, (%rax)
	je	LBB223_3
## %bb.1:
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax), %rdi
Ltmp76:
	callq	__ZN5boost6detail15sp_counted_base12add_ref_copyEv
Ltmp77:
	jmp	LBB223_2
LBB223_2:
	jmp	LBB223_3
LBB223_3:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB223_4:
Ltmp78:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table223:
Lexception15:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp76-Lfunc_begin15           ## >> Call Site 1 <<
	.uleb128 Ltmp77-Ltmp76                  ##   Call between Ltmp76 and Ltmp77
	.uleb128 Ltmp78-Lfunc_begin15           ##     jumps to Ltmp78
	.byte	1                               ##   On action: 1
Lcst_end15:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase5:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5boost6detail15sp_counted_base12add_ref_copyEv ## -- Begin function _ZN5boost6detail15sp_counted_base12add_ref_copyEv
	.weak_definition	__ZN5boost6detail15sp_counted_base12add_ref_copyEv
	.p2align	4, 0x90
__ZN5boost6detail15sp_counted_base12add_ref_copyEv: ## @_ZN5boost6detail15sp_counted_base12add_ref_copyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZN5boost6detail16atomic_incrementEPj
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost6detail16atomic_incrementEPj ## -- Begin function _ZN5boost6detail16atomic_incrementEPj
	.weak_definition	__ZN5boost6detail16atomic_incrementEPj
	.p2align	4, 0x90
__ZN5boost6detail16atomic_incrementEPj: ## @_ZN5boost6detail16atomic_incrementEPj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	lock		xaddl	%eax, (%rcx)
	movl	%eax, -16(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost10shared_ptrIdED2Ev   ## -- Begin function _ZN5boost10shared_ptrIdED2Ev
	.weak_def_can_be_hidden	__ZN5boost10shared_ptrIdED2Ev
	.p2align	4, 0x90
__ZN5boost10shared_ptrIdED2Ev:          ## @_ZN5boost10shared_ptrIdED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZN5boost6detail12shared_countD1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__18functionIFdddEEclEdd ## -- Begin function _ZNKSt3__18functionIFdddEEclEdd
	.weak_definition	__ZNKSt3__18functionIFdddEEclEdd
	.p2align	4, 0x90
__ZNKSt3__18functionIFdddEEclEdd:       ## @_ZNKSt3__18functionIFdddEEclEdd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	-32(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNKSt3__110__function12__value_funcIFdddEEclEOdS4_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__110__function12__value_funcIFdddEEclEOdS4_
__ZNKSt3__110__function12__value_funcIFdddEEclEOdS4_: ## @_ZNKSt3__110__function12__value_funcIFdddEEclEOdS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	cmpq	$0, 32(%rax)
	jne	LBB228_2
## %bb.1:
	callq	__ZNSt3__1L25__throw_bad_function_callEv
LBB228_2:
	movq	-32(%rbp), %rax                 ## 8-byte Reload
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIdEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	-40(%rbp), %rsi                 ## 8-byte Reload
	movq	%rax, %rdx
	movq	(%rdi), %rax
	callq	*48(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L25__throw_bad_function_callEv
__ZNSt3__1L25__throw_bad_function_callEv: ## @_ZNSt3__1L25__throw_bad_function_callEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rdi
	movq	%rdi, -8(%rbp)                  ## 8-byte Spill
	movq	$0, (%rdi)
	callq	__ZNSt3__117bad_function_callC1Ev
	movq	-8(%rbp), %rdi                  ## 8-byte Reload
	movq	__ZTINSt3__117bad_function_callE@GOTPCREL(%rip), %rsi
	movq	__ZNSt3__117bad_function_callD1Ev@GOTPCREL(%rip), %rdx
	callq	___cxa_throw
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__117bad_function_callC1Ev ## -- Begin function _ZNSt3__117bad_function_callC1Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callC1Ev
	.p2align	4, 0x90
__ZNSt3__117bad_function_callC1Ev:      ## @_ZNSt3__117bad_function_callC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117bad_function_callC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__117bad_function_callD1Ev ## -- Begin function _ZNSt3__117bad_function_callD1Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD1Ev
	.p2align	4, 0x90
__ZNSt3__117bad_function_callD1Ev:      ## @_ZNSt3__117bad_function_callD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117bad_function_callD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__117bad_function_callC2Ev ## -- Begin function _ZNSt3__117bad_function_callC2Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callC2Ev
	.p2align	4, 0x90
__ZNSt3__117bad_function_callC2Ev:      ## @_ZNSt3__117bad_function_callC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	callq	__ZNSt9exceptionC2Ev
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movq	__ZTVNSt3__117bad_function_callE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt9exceptionC2Ev
__ZNSt9exceptionC2Ev:                   ## @_ZNSt9exceptionC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	__ZTVSt9exception@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__117bad_function_callD0Ev ## -- Begin function _ZNSt3__117bad_function_callD0Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD0Ev
	.p2align	4, 0x90
__ZNSt3__117bad_function_callD0Ev:      ## @_ZNSt3__117bad_function_callD0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__117bad_function_callD1Ev
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__117bad_function_callD2Ev ## -- Begin function _ZNSt3__117bad_function_callD2Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD2Ev
	.p2align	4, 0x90
__ZNSt3__117bad_function_callD2Ev:      ## @_ZNSt3__117bad_function_callD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt9exceptionD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNK5boost10shared_ptrIdEdeEv  ## -- Begin function _ZNK5boost10shared_ptrIdEdeEv
	.weak_definition	__ZNK5boost10shared_ptrIdEdeEv
	.p2align	4, 0x90
__ZNK5boost10shared_ptrIdEdeEv:         ## @_ZNK5boost10shared_ptrIdEdeEv
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	cmpq	$0, (%rax)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	LBB236_1
	jmp	LBB236_3
LBB236_1:
Ltmp79:
	leaq	L___func__._ZNK5boost10shared_ptrIdEdeEv(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$777, %edx                      ## imm = 0x309
	callq	___assert_rtn
Ltmp80:
	jmp	LBB236_2
LBB236_2:
	ud2
LBB236_3:
	jmp	LBB236_4
LBB236_4:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
LBB236_5:
Ltmp81:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table236:
Lexception16:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp79-Lfunc_begin16           ## >> Call Site 1 <<
	.uleb128 Ltmp80-Ltmp79                  ##   Call between Ltmp79 and Ltmp80
	.uleb128 Ltmp81-Lfunc_begin16           ##     jumps to Ltmp81
	.byte	1                               ##   On action: 1
Lcst_end16:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase6:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED2Ev ## -- Begin function _ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED2Ev
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED2Ev
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED2Ev: ## @_ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_NS0_6detail4noneEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dED2Ev ## -- Begin function _ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dED2Ev
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dED2Ev
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dED2Ev: ## @_ZN5boost8contract17call_if_statementILb1EZN13BranchChangerIddEclINSt3__117integral_constantIbLb1EEEEEdddEUlvE_dED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN5boost10shared_ptrIdED1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
Ltmp82:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp83:
	jmp	LBB239_1
LBB239_1:
Ltmp85:
	leaq	-40(%rbp), %rdi
	callq	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
Ltmp86:
	movb	%al, -73(%rbp)                  ## 1-byte Spill
	jmp	LBB239_2
LBB239_2:
	movb	-73(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB239_3
	jmp	LBB239_18
LBB239_3:
	movq	-8(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
Ltmp87:
	callq	__ZNKSt3__18ios_base5flagsEv
Ltmp88:
	movl	%eax, -80(%rbp)                 ## 4-byte Spill
	jmp	LBB239_4
LBB239_4:
	movl	-80(%rbp), %eax                 ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB239_6
## %bb.5:
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	jmp	LBB239_7
LBB239_6:
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
LBB239_7:
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -128(%rbp)                ## 8-byte Spill
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)                ## 8-byte Spill
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
	movq	%rdi, -112(%rbp)                ## 8-byte Spill
Ltmp89:
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
Ltmp90:
	movb	%al, -97(%rbp)                  ## 1-byte Spill
	jmp	LBB239_8
LBB239_8:
	movq	-112(%rbp), %r8                 ## 8-byte Reload
	movq	-120(%rbp), %rcx                ## 8-byte Reload
	movq	-128(%rbp), %rdx                ## 8-byte Reload
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	movb	-97(%rbp), %al                  ## 1-byte Reload
	movq	-72(%rbp), %rdi
Ltmp91:
	movsbl	%al, %r9d
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp92:
	movq	%rax, -136(%rbp)                ## 8-byte Spill
	jmp	LBB239_9
LBB239_9:
	movq	-136(%rbp), %rax                ## 8-byte Reload
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdi
	callq	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	testb	$1, %al
	jne	LBB239_10
	jmp	LBB239_17
LBB239_10:
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
Ltmp93:
	movl	$5, %esi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp94:
	jmp	LBB239_11
LBB239_11:
	jmp	LBB239_17
LBB239_12:
Ltmp84:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -48(%rbp)
	movl	%eax, -52(%rbp)
	jmp	LBB239_14
LBB239_13:
Ltmp95:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -48(%rbp)
	movl	%eax, -52(%rbp)
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB239_14:
	movq	-48(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
Ltmp96:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp97:
	jmp	LBB239_15
LBB239_15:
	callq	___cxa_end_catch
LBB239_16:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
LBB239_17:
	jmp	LBB239_18
LBB239_18:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB239_16
LBB239_19:
Ltmp98:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -48(%rbp)
	movl	%eax, -52(%rbp)
Ltmp99:
	callq	___cxa_end_catch
Ltmp100:
	jmp	LBB239_20
LBB239_20:
	jmp	LBB239_21
LBB239_21:
	movq	-48(%rbp), %rdi
	callq	__Unwind_Resume
LBB239_22:
Ltmp101:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table239:
Lexception17:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp82-Lfunc_begin17           ## >> Call Site 1 <<
	.uleb128 Ltmp83-Ltmp82                  ##   Call between Ltmp82 and Ltmp83
	.uleb128 Ltmp84-Lfunc_begin17           ##     jumps to Ltmp84
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp85-Lfunc_begin17           ## >> Call Site 2 <<
	.uleb128 Ltmp94-Ltmp85                  ##   Call between Ltmp85 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin17           ##     jumps to Ltmp95
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp94-Lfunc_begin17           ## >> Call Site 3 <<
	.uleb128 Ltmp96-Ltmp94                  ##   Call between Ltmp94 and Ltmp96
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp96-Lfunc_begin17           ## >> Call Site 4 <<
	.uleb128 Ltmp97-Ltmp96                  ##   Call between Ltmp96 and Ltmp97
	.uleb128 Ltmp98-Lfunc_begin17           ##     jumps to Ltmp98
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp97-Lfunc_begin17           ## >> Call Site 5 <<
	.uleb128 Ltmp99-Ltmp97                  ##   Call between Ltmp97 and Ltmp99
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin17           ## >> Call Site 6 <<
	.uleb128 Ltmp100-Ltmp99                 ##   Call between Ltmp99 and Ltmp100
	.uleb128 Ltmp101-Lfunc_begin17          ##     jumps to Ltmp101
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp100-Lfunc_begin17          ## >> Call Site 7 <<
	.uleb128 Lfunc_end17-Ltmp100            ##   Call between Ltmp100 and Lfunc_end17
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end17:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase7:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ## -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv: ## @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movb	%r9b, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movb	%al, -49(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB242_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB242_22
LBB242_2:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	__ZNKSt3__18ios_base5widthEv
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	LBB242_4
## %bb.3:
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -72(%rbp)
	jmp	LBB242_5
LBB242_4:
	movq	$0, -72(%rbp)
LBB242_5:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jle	LBB242_9
## %bb.6:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmpq	-80(%rbp), %rax
	je	LBB242_8
## %bb.7:
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB242_22
LBB242_8:
	jmp	LBB242_9
LBB242_9:
	cmpq	$0, -72(%rbp)
	jle	LBB242_17
## %bb.10:
	movq	-72(%rbp), %rsi
	movsbl	-49(%rbp), %edx
	leaq	-104(%rbp), %rdi
	movq	%rdi, -144(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	movq	-144(%rbp), %rdi                ## 8-byte Reload
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	movq	-136(%rbp), %rdi                ## 8-byte Reload
	movq	%rax, %rsi
	movq	-72(%rbp), %rdx
Ltmp102:
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
Ltmp103:
	movq	%rax, -128(%rbp)                ## 8-byte Spill
	jmp	LBB242_11
LBB242_11:
	movq	-128(%rbp), %rax                ## 8-byte Reload
	cmpq	-72(%rbp), %rax
	je	LBB242_14
## %bb.12:
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -120(%rbp)
	jmp	LBB242_15
LBB242_13:
Ltmp104:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -112(%rbp)
	movl	%eax, -116(%rbp)
	leaq	-104(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB242_23
LBB242_14:
	movl	$0, -120(%rbp)
LBB242_15:
	leaq	-104(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	je	LBB242_16
	jmp	LBB242_25
LBB242_25:
	jmp	LBB242_22
LBB242_16:
	jmp	LBB242_17
LBB242_17:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jle	LBB242_21
## %bb.18:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmpq	-80(%rbp), %rax
	je	LBB242_20
## %bb.19:
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB242_22
LBB242_20:
	jmp	LBB242_21
LBB242_21:
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	__ZNSt3__18ios_base5widthEl
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB242_22:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
LBB242_23:
	movq	-112(%rbp), %rdi
	callq	__Unwind_Resume
## %bb.24:
	ud2
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table242:
Lexception18:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Lfunc_begin18-Lfunc_begin18    ## >> Call Site 1 <<
	.uleb128 Ltmp102-Lfunc_begin18          ##   Call between Lfunc_begin18 and Ltmp102
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp102-Lfunc_begin18          ## >> Call Site 2 <<
	.uleb128 Ltmp103-Ltmp102                ##   Call between Ltmp102 and Ltmp103
	.uleb128 Ltmp104-Lfunc_begin18          ##     jumps to Ltmp104
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin18          ## >> Call Site 3 <<
	.uleb128 Lfunc_end18-Ltmp103            ##   Call between Ltmp103 and Lfunc_end18
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end18:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__18ios_base5flagsEv
__ZNKSt3__18ios_base5flagsEv:           ## @_ZNKSt3__18ios_base5flagsEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %edi
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movl	144(%rax), %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB245_1
	jmp	LBB245_2
LBB245_1:
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	movl	$32, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movb	%al, %cl
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movsbl	%cl, %ecx
	movl	%ecx, 144(%rax)
LBB245_2:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movl	144(%rax), %eax
                                        ## kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv: ## @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	__ZNSt3__18ios_base8setstateEj
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__18ios_base5widthEv
__ZNKSt3__18ios_base5widthEv:           ## @_ZNKSt3__18ios_base5widthEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	(%rdi), %rax
	callq	*96(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsbl	-17(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	movq	%rax, %rdi
	callq	__ZNSt3__1L12__to_addressIcEEPT_S2_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_base5widthEl
__ZNSt3__18ios_base5widthEl:            ## @_ZNSt3__18ios_base5widthEl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 ## 8-byte Spill
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
	movq	-40(%rbp), %rdi                 ## 8-byte Reload
	movq	-16(%rbp), %rsi
	movsbl	-17(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE: ## @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE: ## @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__19allocatorIcEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIcEC2Ev
__ZNSt3__19allocatorIcEC2Ev:            ## @_ZNSt3__19allocatorIcEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev: ## @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L12__to_addressIcEEPT_S2_
__ZNSt3__1L12__to_addressIcEEPT_S2_:    ## @_ZNSt3__1L12__to_addressIcEEPT_S2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 ## 8-byte Spill
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	testb	$1, %al
	jne	LBB262_1
	jmp	LBB262_2
LBB262_1:
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB262_3
LBB262_2:
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
LBB262_3:
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movzbl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	andq	$1, %rax
	cmpq	$0, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	%rax, %rdi
	addq	$1, %rdi
	callq	__ZNSt3__114pointer_traitsIPcE10pointer_toERc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toERc
__ZNSt3__114pointer_traitsIPcE10pointer_toERc: ## @_ZNSt3__114pointer_traitsIPcE10pointer_toERc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L9addressofIcEEPT_RS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9addressofIcEEPT_RS1_
__ZNSt3__1L9addressofIcEEPT_RS1_:       ## @_ZNSt3__1L9addressofIcEEPT_RS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
Ltmp105:
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
Ltmp106:
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB272_1
LBB272_1:
	movq	-32(%rbp), %rax                 ## 8-byte Reload
	movq	-24(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
LBB272_2:
Ltmp107:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table272:
Lexception19:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp105-Lfunc_begin19          ## >> Call Site 1 <<
	.uleb128 Ltmp106-Ltmp105                ##   Call between Ltmp105 and Ltmp106
	.uleb128 Ltmp107-Lfunc_begin19          ##     jumps to Ltmp107
	.byte	1                               ##   On action: 1
Lcst_end19:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase8:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__18ios_base5rdbufEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__18ios_base5rdbufEv
__ZNKSt3__18ios_base5rdbufEv:           ## @_ZNKSt3__18ios_base5rdbufEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$4294967295, %eax               ## imm = 0xFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
Ltmp108:
	callq	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp109:
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB277_1
LBB277_1:
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movsbl	-9(%rbp), %esi
Ltmp110:
	callq	__ZNKSt3__15ctypeIcE5widenEc
Ltmp111:
	movb	%al, -57(%rbp)                  ## 1-byte Spill
	jmp	LBB277_2
LBB277_2:
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movb	-57(%rbp), %al                  ## 1-byte Reload
	movsbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB277_3:
Ltmp112:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
## %bb.4:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table277:
Lexception20:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Lfunc_begin20-Lfunc_begin20    ## >> Call Site 1 <<
	.uleb128 Ltmp108-Lfunc_begin20          ##   Call between Lfunc_begin20 and Ltmp108
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp108-Lfunc_begin20          ## >> Call Site 2 <<
	.uleb128 Ltmp111-Ltmp108                ##   Call between Ltmp108 and Ltmp111
	.uleb128 Ltmp112-Lfunc_begin20          ##     jumps to Ltmp112
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp111-Lfunc_begin20          ## >> Call Site 3 <<
	.uleb128 Lfunc_end20-Ltmp111            ##   Call between Ltmp111 and Lfunc_end20
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end20:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ## @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %cl
	movq	(%rdi), %rax
	movsbl	%cl, %esi
	callq	*56(%rax)
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_base8setstateEj
__ZNSt3__18ios_base8setstateEj:         ## @_ZNSt3__18ios_base8setstateEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	32(%rdi), %esi
	orl	-12(%rbp), %esi
	callq	__ZNSt3__18ios_base5clearEj
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb0EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_ ## -- Begin function _ZN5boost8contract7call_ifINSt3__117integral_constantIbLb0EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	.weak_definition	__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb0EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	.p2align	4, 0x90
__ZN5boost8contract7call_ifINSt3__117integral_constantIbLb0EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_: ## @_ZN5boost8contract7call_ifINSt3__117integral_constantIbLb0EEEZN13BranchChangerIddEclIS4_EEdddEUlvE_EENS0_17call_if_statementIXsrT_5valueET0_NS0_6detail4noneEEESB_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	16(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC1ERKS8_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNK5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEE5else_IZNS4_IS7_EEdddEUlvE0_EEDTclclsr5boostE7declvalIT_EEEESE_ ## -- Begin function _ZNK5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEE5else_IZNS4_IS7_EEdddEUlvE0_EEDTclclsr5boostE7declvalIT_EEEESE_
	.weak_definition	__ZNK5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEE5else_IZNS4_IS7_EEdddEUlvE0_EEDTclclsr5boostE7declvalIT_EEEESE_
	.p2align	4, 0x90
__ZNK5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEE5else_IZNS4_IS7_EEdddEUlvE0_EEDTclclsr5boostE7declvalIT_EEEESE_: ## @_ZNK5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEE5else_IZNS4_IS7_EEdddEUlvE0_EEDTclclsr5boostE7declvalIT_EEEESE_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	leaq	16(%rbp), %rdi
	movq	%rax, -8(%rbp)
	callq	__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddENKUlvE0_clEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC1ERKS8_ ## -- Begin function _ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC1ERKS8_
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC1ERKS8_
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC1ERKS8_: ## @_ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC1ERKS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC2ERKS8_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC2ERKS8_ ## -- Begin function _ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC2ERKS8_
	.weak_def_can_be_hidden	__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC2ERKS8_
	.p2align	4, 0x90
__ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC2ERKS8_: ## @_ZN5boost8contract17call_if_statementILb0EZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddEUlvE_NS0_6detail4noneEEC2ERKS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddENKUlvE0_clEv ## -- Begin function _ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddENKUlvE0_clEv
	.weak_definition	__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddENKUlvE0_clEv
	.p2align	4, 0x90
__ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddENKUlvE0_clEv: ## @_ZZN13BranchChangerIddEclINSt3__117integral_constantIbLb0EEEEEdddENKUlvE0_clEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$48, %rdi
	movq	8(%rax), %rcx
	movsd	(%rcx), %xmm0                   ## xmm0 = mem[0],zero
	movq	16(%rax), %rax
	movsd	(%rax), %xmm1                   ## xmm1 = mem[0],zero
	callq	__ZNKSt3__18functionIFdddEEclEdd
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Result (cond=true): "

L_.str.1:                               ## @.str.1
	.asciz	"Result (cond=false): "

	.section	__DATA,__const
	.globl	__ZTVNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE ## @_ZTVNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
	.weak_def_can_be_hidden	__ZTVNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
	.p2align	3
__ZTVNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
	.quad	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED1Ev
	.quad	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7__cloneEPNS0_6__baseIS2_EE
	.quad	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EclEOdS7_
	.quad	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_E11target_typeEv

	.section	__TEXT,__const
	.globl	__ZTSNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE ## @_ZTSNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
	.weak_definition	__ZTSNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
__ZTSNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE:
	.asciz	"NSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE"

	.globl	__ZTSNSt3__110__function6__baseIFdddEEE ## @_ZTSNSt3__110__function6__baseIFdddEEE
	.weak_definition	__ZTSNSt3__110__function6__baseIFdddEEE
__ZTSNSt3__110__function6__baseIFdddEEE:
	.asciz	"NSt3__110__function6__baseIFdddEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__110__function6__baseIFdddEEE ## @_ZTINSt3__110__function6__baseIFdddEEE
	.weak_definition	__ZTINSt3__110__function6__baseIFdddEEE
	.p2align	3
__ZTINSt3__110__function6__baseIFdddEEE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__baseIFdddEEE

	.globl	__ZTINSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE ## @_ZTINSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
	.weak_definition	__ZTINSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
	.p2align	3
__ZTINSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIPFdddENS_9allocatorIS3_EES2_EE
	.quad	__ZTINSt3__110__function6__baseIFdddEEE

	.globl	__ZTVNSt3__110__function6__baseIFdddEEE ## @_ZTVNSt3__110__function6__baseIFdddEEE
	.weak_def_can_be_hidden	__ZTVNSt3__110__function6__baseIFdddEEE
	.p2align	3
__ZTVNSt3__110__function6__baseIFdddEEE:
	.quad	0
	.quad	__ZTINSt3__110__function6__baseIFdddEEE
	.quad	__ZNSt3__110__function6__baseIFdddEED1Ev
	.quad	__ZNSt3__110__function6__baseIFdddEED0Ev
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual

	.section	__TEXT,__const
__ZNSt3__1L19piecewise_constructE:      ## @_ZNSt3__1L19piecewise_constructE
	.space	1

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"

	.section	__TEXT,__const
	.globl	__ZTSPFdddE                     ## @_ZTSPFdddE
	.weak_definition	__ZTSPFdddE
__ZTSPFdddE:
	.asciz	"PFdddE"

	.globl	__ZTSFdddE                      ## @_ZTSFdddE
	.weak_definition	__ZTSFdddE
__ZTSFdddE:
	.asciz	"FdddE"

	.section	__DATA,__const
	.globl	__ZTIFdddE                      ## @_ZTIFdddE
	.weak_definition	__ZTIFdddE
	.p2align	3
__ZTIFdddE:
	.quad	__ZTVN10__cxxabiv120__function_type_infoE+16
	.quad	__ZTSFdddE

	.globl	__ZTIPFdddE                     ## @_ZTIPFdddE
	.weak_definition	__ZTIPFdddE
	.p2align	3
__ZTIPFdddE:
	.quad	__ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	__ZTSPFdddE
	.long	0                               ## 0x0
	.space	4
	.quad	__ZTIFdddE

	.globl	__ZTVN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE ## @_ZTVN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
	.weak_def_can_be_hidden	__ZTVN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
	.p2align	3
__ZTVN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE:
	.quad	0
	.quad	__ZTIN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
	.quad	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED1Ev
	.quad	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEED0Ev
	.quad	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE7disposeEv
	.quad	__ZN5boost6detail15sp_counted_base7destroyEv
	.quad	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE11get_deleterERKSt9type_info
	.quad	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE17get_local_deleterERKSt9type_info
	.quad	__ZN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEE19get_untyped_deleterEv

	.section	__TEXT,__const
	.globl	__ZTSN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE ## @_ZTSN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
	.weak_definition	__ZTSN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
__ZTSN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE:
	.asciz	"N5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE"

	.globl	__ZTSN5boost6detail15sp_counted_baseE ## @_ZTSN5boost6detail15sp_counted_baseE
	.weak_definition	__ZTSN5boost6detail15sp_counted_baseE
__ZTSN5boost6detail15sp_counted_baseE:
	.asciz	"N5boost6detail15sp_counted_baseE"

	.section	__DATA,__const
	.globl	__ZTIN5boost6detail15sp_counted_baseE ## @_ZTIN5boost6detail15sp_counted_baseE
	.weak_definition	__ZTIN5boost6detail15sp_counted_baseE
	.p2align	3
__ZTIN5boost6detail15sp_counted_baseE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSN5boost6detail15sp_counted_baseE

	.globl	__ZTIN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE ## @_ZTIN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
	.weak_definition	__ZTIN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
	.p2align	3
__ZTIN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSN5boost6detail18sp_counted_impl_pdIPdNS0_13sp_ms_deleterIdEEEE
	.quad	__ZTIN5boost6detail15sp_counted_baseE

	.globl	__ZTVN5boost6detail15sp_counted_baseE ## @_ZTVN5boost6detail15sp_counted_baseE
	.weak_def_can_be_hidden	__ZTVN5boost6detail15sp_counted_baseE
	.p2align	3
__ZTVN5boost6detail15sp_counted_baseE:
	.quad	0
	.quad	__ZTIN5boost6detail15sp_counted_baseE
	.quad	__ZN5boost6detail15sp_counted_baseD1Ev
	.quad	__ZN5boost6detail15sp_counted_baseD0Ev
	.quad	___cxa_pure_virtual
	.quad	__ZN5boost6detail15sp_counted_base7destroyEv
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual

	.section	__TEXT,__const
	.globl	__ZTSN5boost6detail13sp_ms_deleterIdEE ## @_ZTSN5boost6detail13sp_ms_deleterIdEE
	.weak_definition	__ZTSN5boost6detail13sp_ms_deleterIdEE
__ZTSN5boost6detail13sp_ms_deleterIdEE:
	.asciz	"N5boost6detail13sp_ms_deleterIdEE"

	.section	__DATA,__const
	.globl	__ZTIN5boost6detail13sp_ms_deleterIdEE ## @_ZTIN5boost6detail13sp_ms_deleterIdEE
	.weak_definition	__ZTIN5boost6detail13sp_ms_deleterIdEE
	.p2align	3
__ZTIN5boost6detail13sp_ms_deleterIdEE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSN5boost6detail13sp_ms_deleterIdEE

	.section	__TEXT,__const
	.globl	__ZTSNSt3__117bad_function_callE ## @_ZTSNSt3__117bad_function_callE
	.weak_definition	__ZTSNSt3__117bad_function_callE
__ZTSNSt3__117bad_function_callE:
	.asciz	"NSt3__117bad_function_callE"

	.section	__DATA,__const
	.globl	__ZTINSt3__117bad_function_callE ## @_ZTINSt3__117bad_function_callE
	.weak_definition	__ZTINSt3__117bad_function_callE
	.p2align	3
__ZTINSt3__117bad_function_callE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__117bad_function_callE
	.quad	__ZTISt9exception

	.globl	__ZTVNSt3__117bad_function_callE ## @_ZTVNSt3__117bad_function_callE
	.weak_def_can_be_hidden	__ZTVNSt3__117bad_function_callE
	.p2align	3
__ZTVNSt3__117bad_function_callE:
	.quad	0
	.quad	__ZTINSt3__117bad_function_callE
	.quad	__ZNSt3__117bad_function_callD1Ev
	.quad	__ZNSt3__117bad_function_callD0Ev
	.quad	__ZNKSt9exception4whatEv

	.section	__TEXT,__cstring,cstring_literals
L___func__._ZNK5boost10shared_ptrIdEdeEv: ## @__func__._ZNK5boost10shared_ptrIdEdeEv
	.asciz	"operator*"

L_.str.3:                               ## @.str.3
	.asciz	"shared_ptr.hpp"

L_.str.4:                               ## @.str.4
	.asciz	"px != 0"

.subsections_via_symbols
