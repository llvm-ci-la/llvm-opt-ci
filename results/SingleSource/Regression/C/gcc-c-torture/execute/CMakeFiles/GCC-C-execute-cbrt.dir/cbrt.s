	.file	"cbrt.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function cbrtl
.LCPI0_0:
	.dword	0x4350000000000000              # double 18014398509481984
.LCPI0_1:
	.dword	0x3fe15f15f15f15f1              # double 0.54285714285714282
.LCPI0_2:
	.dword	0x3ff6a0ea0ea0ea0f              # double 1.4142857142857144
.LCPI0_3:
	.dword	0xbfe691de2532c834              # double -0.70530612244897961
.LCPI0_4:
	.dword	0x3ff9b6db6db6db6e              # double 1.6071428571428572
.LCPI0_5:
	.dword	0x3fd6db6db6db6db7              # double 0.35714285714285715
.LCPI0_6:
	.dword	0xbfd5555555555555              # double -0.33333333333333331
	.text
	.globl	cbrtl
	.p2align	5
	.type	cbrtl,@function
cbrtl:                                  # @cbrtl
# %bb.0:
	movfr2gr.d	$a0, $fa0
	bstrpick.d	$a1, $a0, 62, 52
	ori	$a2, $zero, 2047
	bltu	$a1, $a2, .LBB0_2
# %bb.1:
	fadd.d	$fa0, $fa0, $fa0
	ret
.LBB0_2:
	bstrpick.d	$a1, $a0, 62, 32
	or	$a2, $a1, $a0
	addi.w	$a2, $a2, 0
	beqz	$a2, .LBB0_7
# %bb.3:
	bstrpick.d	$a2, $a1, 31, 20
	fabs.d	$fa1, $fa0
	bnez	$a2, .LBB0_5
# %bb.4:
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_0)
	fmul.d	$fa2, $fa0, $fa2
	movfr2gr.d	$a1, $fa2
	srli.d	$a2, $a1, 32
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	lu32i.d	$a3, 0
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 33
	bstrins.d	$a1, $a2, 63, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, -34669
	lu52i.d	$a2, $a2, 663
	b	.LBB0_6
.LBB0_5:
	bstrpick.d	$a1, $a1, 31, 0
	lu12i.w	$a2, -349526
	ori	$a2, $a2, 2731
	lu32i.d	$a2, 0
	mul.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	ori	$a2, $zero, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	lu52i.d	$a3, $a3, 2047
	and	$a1, $a1, $a3
	lu32i.d	$a2, -34669
	lu52i.d	$a2, $a2, 681
.LBB0_6:
	add.d	$a1, $a1, $a2
	movgr2fr.d	$fa2, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	fld.d	$fa4, $a1, %pc_lo12(.LCPI0_2)
	fmul.d	$fa5, $fa2, $fa2
	fdiv.d	$fa5, $fa5, $fa1
	fmadd.d	$fa3, $fa5, $fa2, $fa3
	fadd.d	$fa4, $fa3, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.d	$fa5, $a1, %pc_lo12(.LCPI0_3)
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	fld.d	$fa6, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	fld.d	$fa7, $a1, %pc_lo12(.LCPI0_5)
	fdiv.d	$fa3, $fa5, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fdiv.d	$fa3, $fa6, $fa3
	fadd.d	$fa3, $fa3, $fa7
	fmul.d	$fa2, $fa3, $fa2
	movfr2gr.d	$a1, $fa2
	bstrins.d	$a1, $zero, 31, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$a1, $a1, $a2
	movgr2fr.d	$fa2, $a1
	fmul.d	$fa3, $fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa3
	fadd.d	$fa3, $fa2, $fa2
	fsub.d	$fa4, $fa1, $fa2
	fadd.d	$fa1, $fa3, $fa1
	fdiv.d	$fa1, $fa4, $fa1
	fmadd.d	$fa1, $fa2, $fa1, $fa2
	movfr2gr.d	$a1, $fa1
	bstrins.d	$a0, $zero, 62, 0
	or	$a0, $a0, $a1
	movgr2fr.d	$fa1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_6)
	fmul.d	$fa3, $fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa3
	fsub.d	$fa0, $fa1, $fa0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
.LBB0_7:
	ret
.Lfunc_end0:
	.size	cbrtl, .Lfunc_end0-cbrtl
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
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
