	.file	"va-arg-6.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$a7, $sp, 88
	st.d	$a6, $sp, 80
	st.d	$a5, $sp, 72
	st.d	$a4, $sp, 64
	st.d	$a3, $sp, 56
	st.d	$a2, $sp, 48
	st.d	$a1, $sp, 40
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 8
	ld.w	$a0, $sp, 40
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB0_10
# %bb.1:
	addi.d	$a0, $sp, 40
	addi.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	lu12i.w	$a3, 344254
	ori	$a3, $a3, 1024
	lu32i.d	$a3, 2
	st.d	$a1, $sp, 8
	bne	$a2, $a3, .LBB0_10
# %bb.2:
	ld.w	$a1, $a0, 16
	addi.d	$a2, $a0, 24
	ori	$a3, $zero, 11
	st.d	$a2, $sp, 8
	bne	$a1, $a3, .LBB0_10
# %bb.3:
	addi.d	$a0, $a0, 39
	move	$fp, $a0
	bstrins.d	$fp, $zero, 3, 0
	addi.d	$a1, $fp, 16
	st.d	$a1, $sp, 8
	ori	$a1, $zero, 8
	bstrins.d	$a0, $a1, 3, 0
	ld.d	$a1, $a0, 0
	ld.d	$a0, $fp, 0
	lu12i.w	$a2, 335544
	ori	$a2, $a2, 1311
	lu32i.d	$a2, 335544
	lu52i.d	$a2, $a2, -328
	lu12i.w	$a3, -503317
	ori	$a3, $a3, 2129
	lu32i.d	$a3, 37355
	lu52i.d	$a3, $a3, 1024
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_10
# %bb.4:
	ld.w	$a0, $fp, 16
	addi.d	$a1, $fp, 24
	ori	$a2, $zero, 12
	st.d	$a1, $sp, 8
	bne	$a0, $a2, .LBB0_10
# %bb.5:
	ld.w	$a0, $fp, 24
	addi.d	$a1, $fp, 32
	ori	$a2, $zero, 13
	st.d	$a1, $sp, 8
	bne	$a0, $a2, .LBB0_10
# %bb.6:
	addi.d	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	lu12i.w	$a2, -360068
	ori	$a2, $a2, 2048
	lu32i.d	$a2, 4
	st.d	$a0, $sp, 8
	bne	$a1, $a2, .LBB0_10
# %bb.7:
	ld.w	$a0, $fp, 40
	addi.d	$a1, $fp, 48
	ori	$a2, $zero, 14
	st.d	$a1, $sp, 8
	bne	$a0, $a2, .LBB0_10
# %bb.8:
	addi.d	$a0, $fp, 56
	fld.d	$fa0, $fp, 48
	lu12i.w	$a1, 377487
	ori	$a1, $a1, 1475
	lu32i.d	$a1, 377487
	lu52i.d	$a1, $a1, 1024
	movgr2fr.d	$fa1, $a1
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a0, $sp, 8
	bceqz	$fcc0, .LBB0_10
# %bb.9:
	move	$a0, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB0_10:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 8
	lu12i.w	$a0, -360068
	ori	$a0, $a0, 2048
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 0
	lu12i.w	$a0, 377487
	ori	$a0, $a0, 1475
	lu32i.d	$a0, 377487
	lu52i.d	$a0, $a0, 1024
	lu12i.w	$a1, 344254
	ori	$a2, $a1, 1024
	lu32i.d	$a2, 2
	lu12i.w	$a1, 335544
	ori	$a1, $a1, 1311
	lu32i.d	$a1, 335544
	lu52i.d	$a4, $a1, -328
	lu12i.w	$a1, -503317
	ori	$a1, $a1, 2129
	lu32i.d	$a1, 37355
	lu52i.d	$a5, $a1, 1024
	ori	$a1, $zero, 10
	ori	$a3, $zero, 11
	ori	$a6, $zero, 12
	ori	$a7, $zero, 13
	st.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
