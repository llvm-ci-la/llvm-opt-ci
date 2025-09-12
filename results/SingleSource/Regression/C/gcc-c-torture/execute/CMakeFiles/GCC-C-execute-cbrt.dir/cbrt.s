	.file	"cbrt.c"
	.text
	.globl	cbrtl                           # -- Begin function cbrtl
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
	lu52i.d	$a1, $zero, 1077
	movgr2fr.d	$fa2, $a1
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
	fmul.d	$fa3, $fa2, $fa2
	fdiv.d	$fa3, $fa3, $fa1
	lu12i.w	$a1, -59919
	ori	$a1, $a1, 1521
	lu32i.d	$a1, 89877
	lu52i.d	$a1, $a1, 1022
	movgr2fr.d	$fa4, $a1
	fmadd.d	$fa3, $fa3, $fa2, $fa4
	lu12i.w	$a1, 59918
	ori	$a1, $a1, 2575
	lu32i.d	$a1, 434410
	lu52i.d	$a1, $a1, 1023
	movgr2fr.d	$fa4, $a1
	fadd.d	$fa4, $fa3, $fa4
	lu12i.w	$a1, 152364
	ori	$a1, $a1, 2100
	lu32i.d	$a1, 430558
	lu52i.d	$a1, $a1, -1026
	movgr2fr.d	$fa5, $a1
	fdiv.d	$fa3, $fa5, $fa3
	fadd.d	$fa3, $fa4, $fa3
	lu12i.w	$a1, 449389
	ori	$a1, $a1, 2926
	lu32i.d	$a1, -411941
	lu52i.d	$a1, $a1, 1023
	movgr2fr.d	$fa4, $a1
	fdiv.d	$fa3, $fa4, $fa3
	lu12i.w	$a1, -299594
	ori	$a1, $a1, 3511
	lu32i.d	$a1, 449389
	lu52i.d	$a1, $a1, 1021
	movgr2fr.d	$fa4, $a1
	fadd.d	$fa3, $fa3, $fa4
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
	fmul.d	$fa2, $fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, -1027
	movgr2fr.d	$fa2, $a0
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
