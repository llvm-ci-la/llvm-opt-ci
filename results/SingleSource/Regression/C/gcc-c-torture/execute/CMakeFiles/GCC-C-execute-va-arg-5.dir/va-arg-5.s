	.file	"va-arg-5.c"
	.text
	.globl	va_double                       # -- Begin function va_double
	.p2align	5
	.type	va_double,@function
va_double:                              # @va_double
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 8
	fld.d	$fa0, $sp, 24
	lu12i.w	$a0, -14160
	ori	$a0, $a0, 122
	lu32i.d	$a0, -450054
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_5
# %bb.1:
	addi.d	$a0, $sp, 24
	addi.d	$a1, $a0, 16
	fld.d	$fa0, $a0, 8
	lu12i.w	$a2, 358361
	ori	$a2, $a2, 1367
	lu32i.d	$a2, 376580
	lu52i.d	$a2, $a2, 1024
	movgr2fr.d	$fa1, $a2
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_5
# %bb.2:
	addi.d	$a1, $a0, 24
	fld.d	$fa0, $a0, 16
	lu12i.w	$a2, -453871
	ori	$a2, $a2, 1356
	lu32i.d	$a2, 123767
	lu52i.d	$a2, $a2, 1024
	movgr2fr.d	$fa1, $a2
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_5
# %bb.3:
	addi.d	$a1, $a0, 32
	fld.d	$fa0, $a0, 24
	lu12i.w	$a0, -124071
	ori	$a0, $a0, 542
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_5
# %bb.4:
	move	$a0, $zero
	addi.d	$sp, $sp, 80
	ret
.LBB0_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	va_double, .Lfunc_end0-va_double
                                        # -- End function
	.globl	va_long_double                  # -- Begin function va_long_double
	.p2align	5
	.type	va_long_double,@function
va_long_double:                         # @va_long_double
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
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 55
	st.d	$a0, $sp, 8
	move	$fp, $a1
	bstrins.d	$fp, $zero, 3, 0
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 8
	bstrins.d	$a1, $a0, 3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $fp, 0
	lu12i.w	$a2, 457279
	ori	$a2, $a2, 3274
	lu32i.d	$a2, -510766
	lu52i.d	$a2, $a2, -1630
	lu12i.w	$a3, -328565
	ori	$a3, $a3, 7
	lu32i.d	$a3, 37407
	lu52i.d	$a3, $a3, 1024
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_5
# %bb.1:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 24
	addi.d	$a2, $fp, 32
	st.d	$a2, $sp, 8
	lu12i.w	$a2, -505666
	ori	$a2, $a2, 2907
	lu32i.d	$a2, -287562
	lu52i.d	$a2, $a2, 1812
	lu12i.w	$a3, 284541
	ori	$a3, $a3, 2389
	lu32i.d	$a3, 23536
	lu52i.d	$a3, $a3, 1024
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_5
# %bb.2:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $fp, 40
	addi.d	$a2, $fp, 48
	st.d	$a2, $sp, 8
	lu12i.w	$a2, 44748
	ori	$a2, $a2, 780
	lu32i.d	$a2, -395486
	lu52i.d	$a2, $a2, -1087
	lu12i.w	$a3, 495921
	ori	$a3, $a3, 340
	lu32i.d	$a3, 7735
	lu52i.d	$a3, $a3, 1024
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_5
# %bb.3:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	addi.d	$a2, $fp, 64
	st.d	$a2, $sp, 8
	lu12i.w	$a2, -116018
	ori	$a2, $a2, 802
	lu32i.d	$a2, 351059
	lu52i.d	$a2, $a2, -604
	lu12i.w	$a3, -269899
	ori	$a3, $a3, 2337
	lu32i.d	$a3, 4832
	lu52i.d	$a3, $a3, 1024
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_5
# %bb.4:
	move	$a0, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB1_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	va_long_double, .Lfunc_end1-va_long_double
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -14160
	ori	$a0, $a0, 122
	lu32i.d	$a0, -450054
	lu52i.d	$a1, $a0, 1024
	lu12i.w	$a0, 358361
	ori	$a0, $a0, 1367
	lu32i.d	$a0, 376580
	lu52i.d	$a2, $a0, 1024
	lu12i.w	$a0, -453871
	ori	$a0, $a0, 1356
	lu32i.d	$a0, 123767
	lu52i.d	$a3, $a0, 1024
	lu12i.w	$a0, -124071
	ori	$a0, $a0, 542
	lu32i.d	$a0, 77323
	lu52i.d	$a4, $a0, 1024
	pcaddu18i	$ra, %call36(va_double)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -269899
	ori	$a0, $a0, 2337
	lu32i.d	$a0, 4832
	lu52i.d	$a0, $a0, 1024
	st.d	$a0, $sp, 8
	lu12i.w	$a0, -116018
	ori	$a0, $a0, 802
	lu32i.d	$a0, 351059
	lu52i.d	$a0, $a0, -604
	lu12i.w	$a1, 457279
	ori	$a1, $a1, 3274
	lu32i.d	$a1, -510766
	lu52i.d	$a2, $a1, -1630
	lu12i.w	$a1, -328565
	ori	$a1, $a1, 7
	lu32i.d	$a1, 37407
	lu52i.d	$a3, $a1, 1024
	lu12i.w	$a1, -505666
	ori	$a1, $a1, 2907
	lu32i.d	$a1, -287562
	lu52i.d	$a4, $a1, 1812
	lu12i.w	$a1, 284541
	ori	$a1, $a1, 2389
	lu32i.d	$a1, 23536
	lu52i.d	$a5, $a1, 1024
	lu12i.w	$a1, 44748
	ori	$a1, $a1, 780
	lu32i.d	$a1, -395486
	lu52i.d	$a6, $a1, -1087
	lu12i.w	$a1, 495921
	ori	$a1, $a1, 340
	lu32i.d	$a1, 7735
	lu52i.d	$a7, $a1, 1024
	st.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(va_long_double)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
