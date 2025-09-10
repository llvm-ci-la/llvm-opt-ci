	.file	"20000808-1.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	ret
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function f
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_1:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI1_2:
	.dword	1                               # 0x1
	.dword	-1                              # 0xffffffffffffffff
.LCPI1_3:
	.dword	-1                              # 0xffffffffffffffff
	.dword	1                               # 0x1
	.text
	.globl	f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	addi.d	$sp, $sp, -16
	vinsgr2vr.d	$vr0, $a6, 0
	vinsgr2vr.d	$vr0, $a7, 1
	vinsgr2vr.d	$vr1, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 1
	vinsgr2vr.d	$vr2, $a2, 0
	vinsgr2vr.d	$vr2, $a3, 1
	vinsgr2vr.d	$vr3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr4, $a0, %pc_lo12(.LCPI1_0)
	vinsgr2vr.d	$vr3, $a1, 1
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr5, $a0, %pc_lo12(.LCPI1_1)
	vseq.d	$vr3, $vr3, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr4, $a0, %pc_lo12(.LCPI1_2)
	vseq.d	$vr2, $vr2, $vr5
	vrepli.b	$vr5, -1
	vxor.v	$vr3, $vr3, $vr5
	vseq.d	$vr1, $vr1, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI1_3)
	vxor.v	$vr2, $vr2, $vr5
	vpickev.w	$vr2, $vr2, $vr3
	vxor.v	$vr1, $vr1, $vr5
	vseq.d	$vr0, $vr0, $vr4
	vxor.v	$vr0, $vr0, $vr5
	vpickev.w	$vr0, $vr0, $vr1
	vpickev.h	$vr0, $vr0, $vr2
	vpickve2gr.h	$a0, $vr0, 1
	andi	$a0, $a0, 1
	vpickve2gr.h	$a1, $vr3, 0
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.h	$a0, $vr0, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.h	$a0, $vr0, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.h	$a0, $vr0, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.h	$a0, $vr0, 5
	bstrins.d	$a1, $a0, 5, 5
	vpickve2gr.h	$a0, $vr0, 6
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	vpickve2gr.h	$a1, $vr0, 7
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_6
# %bb.1:
	ld.d	$a0, $sp, 16
	bnez	$a0, .LBB1_6
# %bb.2:
	ld.d	$a0, $sp, 24
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB1_6
# %bb.3:
	ld.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_6
# %bb.4:
	ld.d	$a0, $sp, 40
	bnez	$a0, .LBB1_6
# %bb.5:
	addi.d	$sp, $sp, 16
	ret
.LBB1_6:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	f, .Lfunc_end1-f
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ret
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
