	.file	"pr36038.c"
	.text
	.globl	doit                            # -- Begin function doit
	.p2align	5
	.type	doit,@function
doit:                                   # @doit
# %bb.0:
	pcalau12i	$a0, %pc_hi20(markstack_ptr)
	ld.d	$a0, $a0, %pc_lo12(markstack_ptr)
	ld.w	$a1, $a0, -4
	ori	$a2, $zero, 6
	beq	$a1, $a2, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a2, %pc_hi20(stack_base)
	ld.d	$a2, $a2, %pc_lo12(stack_base)
	ld.w	$a3, $a0, -8
	addi.d	$a0, $a2, 40
	sub.d	$a2, $a3, $a1
	addi.w	$a3, $a2, 2
	addi.w	$a2, $a1, -6
	slli.d	$a1, $a3, 3
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	addi.d	$a4, $a0, -8
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 1
	slli.d	$a5, $a2, 31
	stx.d	$a3, $a0, $a1
	move	$a0, $a4
	bgez	$a5, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	doit, .Lfunc_end0-doit
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI1_2:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI1_3:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.lr.ph.preheader.i
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(list)
	addi.d	$a1, $a0, %pc_lo12(list)
	vst	$vr0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_3)
	vst	$vr0, $a1, 16
	addi.d	$a0, $a1, 16
	vst	$vr1, $a1, 32
	vst	$vr2, $a1, 48
	ori	$a2, $zero, 9
	st.d	$a2, $a1, 72
	pcalau12i	$a2, %pc_hi20(indices)
	addi.d	$a2, $a2, %pc_lo12(indices)
	addi.d	$a3, $a2, 36
	pcalau12i	$a4, %pc_hi20(markstack_ptr)
	st.d	$a3, $a4, %pc_lo12(markstack_ptr)
	ori	$a3, $zero, 1
	ld.d	$a4, $a1, 32
	lu32i.d	$a3, 2
	st.d	$a3, $a2, 28
	vld	$vr0, $a1, 40
	st.d	$a4, $a1, 40
	ld.d	$a2, $a1, 56
	pcalau12i	$a3, %pc_hi20(stack_base)
	st.d	$a0, $a3, %pc_lo12(stack_base)
	vst	$vr0, $a1, 48
	st.d	$a2, $a1, 64
	pcalau12i	$a0, %pc_hi20(expect)
	addi.d	$a0, $a0, %pc_lo12(expect)
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_2
# %bb.1:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	expect,@object                  # @expect
	.data
	.globl	expect
	.p2align	3, 0x0
expect:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	9                               # 0x9
	.size	expect, 80

	.type	stack_base,@object              # @stack_base
	.bss
	.globl	stack_base
	.p2align	3, 0x0
stack_base:
	.dword	0
	.size	stack_base, 8

	.type	markstack_ptr,@object           # @markstack_ptr
	.globl	markstack_ptr
	.p2align	3, 0x0
markstack_ptr:
	.dword	0
	.size	markstack_ptr, 8

	.type	list,@object                    # @list
	.globl	list
	.p2align	4, 0x0
list:
	.space	80
	.size	list, 80

	.type	indices,@object                 # @indices
	.globl	indices
	.p2align	2, 0x0
indices:
	.space	40
	.size	indices, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expect
	.addrsig_sym list
	.addrsig_sym indices
