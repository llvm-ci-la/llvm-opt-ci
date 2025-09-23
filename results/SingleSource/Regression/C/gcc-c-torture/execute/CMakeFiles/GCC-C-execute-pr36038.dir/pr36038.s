	.file	"pr36038.c"
	.text
	.globl	doit                            # -- Begin function doit
	.p2align	5
	.type	doit,@function
doit:                                   # @doit
# %bb.0:
	pcalau12i	$a0, %pc_hi20(markstack_ptr)
	ld.d	$a0, $a0, %pc_lo12(markstack_ptr)
	ld.w	$a2, $a0, -4
	ori	$a1, $zero, 6
	beq	$a2, $a1, .LBB0_7
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a3, %pc_hi20(stack_base)
	ld.d	$a3, $a3, %pc_lo12(stack_base)
	ld.w	$a4, $a0, -8
	sub.d	$a0, $a1, $a2
	addi.d	$a1, $a3, 40
	sub.d	$a4, $a4, $a2
	addi.w	$a4, $a4, 2
	ori	$a5, $zero, 5
	sub.w	$a5, $a5, $a2
	ori	$a6, $zero, 3
	alsl.d	$a2, $a4, $a1, 3
	bltu	$a5, $a6, .LBB0_6
# %bb.2:                                # %.lr.ph.preheader
	slli.d	$a4, $a4, 3
	sub.d	$a6, $zero, $a4
	ori	$a7, $zero, 32
	bltu	$a6, $a7, .LBB0_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a7, $a5, 32, 2
	slli.d	$a6, $a7, 2
	sub.d	$a0, $a0, $a6
	slli.d	$a7, $a7, 5
	sub.d	$a1, $a1, $a7
	sub.d	$a2, $a2, $a7
	move	$a7, $a6
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 32
	vld	$vr1, $a3, 16
	add.d	$t0, $a3, $a4
	vst	$vr0, $t0, 32
	vst	$vr1, $t0, 16
	addi.d	$a7, $a7, -4
	addi.d	$a3, $a3, -32
	bnez	$a7, .LBB0_4
# %bb.5:                                # %middle.block
	beq	$a5, $a6, .LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a1, -8
	addi.d	$a4, $a2, -8
	addi.w	$a0, $a0, -1
	st.d	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a0, .LBB0_6
.LBB0_7:                                # %._crit_edge
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
