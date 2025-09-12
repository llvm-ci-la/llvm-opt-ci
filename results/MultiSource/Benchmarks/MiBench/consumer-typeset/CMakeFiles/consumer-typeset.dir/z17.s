	.file	"z17.c"
	.text
	.globl	GetGap                          # -- Begin function GetGap
	.p2align	5
	.type	GetGap,@function
GetGap:                                 # @GetGap
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	ld.hu	$a4, $a2, 0
	st.h	$zero, $a2, 2
	andi	$a4, $a4, 895
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1024
	or	$a4, $a4, $a5
	st.h	$a4, $a2, 0
	ori	$a4, $zero, 158
	st.w	$a4, $a3, 0
	ld.bu	$a4, $a0, 32
	addi.d	$a4, $a4, -11
	ori	$a5, $zero, 2
	addi.d	$fp, $a0, 32
	bgeu	$a4, $a5, .LBB0_5
# %bb.1:
	ld.bu	$a4, $a0, 64
	beqz	$a4, .LBB0_67
# %bb.2:
	move	$s4, $a1
	move	$s3, $a2
	ori	$a1, $zero, 43
	addi.d	$s0, $a0, 64
	beq	$a4, $a1, .LBB0_6
# %bb.3:
	ori	$a1, $zero, 45
	move	$s1, $s0
	bne	$a4, $a1, .LBB0_8
# %bb.4:
	ori	$a1, $zero, 160
	b	.LBB0_7
.LBB0_5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	move	$a4, $fp
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB0_6:
	ori	$a1, $zero, 159
.LBB0_7:                                # %.sink.split
	st.w	$a1, $a3, 0
	addi.d	$s1, $a0, 65
.LBB0_8:
	move	$s2, $a0
	move	$s5, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_15
# %bb.9:
	ori	$a0, $zero, 46
	ori	$a1, $zero, 10
	.p2align	4, , 16
.LBB0_10:                               # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s1, 0
	addi.d	$s1, $s1, 1
	beq	$a2, $a0, .LBB0_10
# %bb.11:                               # %.critedge
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a3, $a2, -48
	bltu	$a3, $a1, .LBB0_10
# %bb.12:
	addi.d	$a0, $a2, -98
	ori	$a2, $zero, 24
	bltu	$a2, $a0, .LBB0_22
# %bb.13:
	move	$a1, $s3
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_14:
	fld.s	$fa0, $sp, 20
	lu12i.w	$a0, 284672
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	ori	$a0, $zero, 2048
	b	.LBB0_46
.LBB0_15:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 2
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a6, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a7, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_67
.LBB0_16:
	fld.s	$fa0, $sp, 20
	lu12i.w	$a0, 284672
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1024
	b	.LBB0_46
.LBB0_17:
	fld.s	$fa0, $sp, 20
	lu12i.w	$a0, 281408
	b	.LBB0_37
.LBB0_18:
	ld.h	$a0, $s4, 10
	b	.LBB0_43
.LBB0_19:
	fld.s	$fa0, $sp, 20
	lu12i.w	$a0, 274176
	b	.LBB0_37
.LBB0_20:
	ld.h	$a0, $s4, 8
	b	.LBB0_43
.LBB0_21:
	fld.s	$fs0, $sp, 20
	ld.wu	$a0, $s4, 12
	andi	$a0, $a0, 4095
	move	$a1, $s2
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fs0, $fa0
	b	.LBB0_45
.LBB0_22:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 4
	b	.LBB0_66
.LBB0_23:
	ld.w	$a0, $s5, 0
	fld.s	$fa0, $sp, 20
	ori	$a2, $zero, 160
	bne	$a0, $a2, .LBB0_25
# %bb.24:
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $sp, 20
.LBB0_25:
	ori	$a0, $zero, 158
	lu12i.w	$a2, 275264
	movgr2fr.w	$fa1, $a2
	fcmp.cule.s	$fcc0, $fa0, $fa1
	st.w	$a0, $s5, 0
	bcnez	$fcc0, .LBB0_29
# %bb.26:                               # %.lr.ph.preheader
	lu12i.w	$a0, -246976
	lu32i.d	$a0, 0
	movgr2fr.w	$fa2, $a0
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fadd.s	$fa0, $fa0, $fa2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_27
# %bb.28:                               # %.thread-pre-split_crit_edge
	fst.s	$fa0, $sp, 20
.LBB0_29:                               # %thread-pre-split
	lu12i.w	$a0, -249024
	lu32i.d	$a0, 0
	movgr2fr.w	$fa2, $a0
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_33
# %bb.30:                               # %.lr.ph95.preheader
	lu12i.w	$a0, 277312
	movgr2fr.w	$fa3, $a0
	.p2align	4, , 16
.LBB0_31:                               # %.lr.ph95
                                        # =>This Inner Loop Header: Depth=1
	fadd.s	$fa0, $fa0, $fa3
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB0_31
# %bb.32:                               # %._crit_edge
	fst.s	$fa0, $sp, 20
.LBB0_33:
	fabs.s	$fa2, $fa0
	fcmp.cle.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_35
# %bb.34:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	fld.s	$fa0, $sp, 20
.LBB0_35:
	lu12i.w	$a0, 274432
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	lu12i.w	$a0, 1
	b	.LBB0_46
.LBB0_36:
	fld.s	$fa0, $sp, 20
	lu12i.w	$a0, 278748
.LBB0_37:                               # %.thread
	movgr2fr.w	$fa1, $a0
	b	.LBB0_44
.LBB0_38:
	fld.s	$fa0, $sp, 20
	vldi	$vr1, -1228
	fmul.s	$fa0, $fa0, $fa1
	b	.LBB0_45
.LBB0_39:
	fld.s	$fa0, $sp, 20
	lu12i.w	$a0, 284672
	movgr2fr.w	$fa1, $a0
	ld.hu	$a0, $a1, 0
	fmul.s	$fa0, $fa0, $fa1
	lu12i.w	$a2, 14
	ori	$a2, $a2, 1023
	and	$a0, $a0, $a2
	ori	$a2, $a0, 3072
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	lu12i.w	$s2, 1
	ori	$a3, $s2, 1
	st.h	$a2, $a1, 0
	blt	$a0, $a3, .LBB0_47
# %bb.40:
	fld.s	$fa0, $sp, 20
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a5, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	move	$a0, $s2
	b	.LBB0_47
.LBB0_41:
	ld.h	$a0, $s4, 2
	b	.LBB0_43
.LBB0_42:
	ld.h	$a0, $s4, 6
.LBB0_43:                               # %.thread
	fld.s	$fa0, $sp, 20
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
.LBB0_44:                               # %.thread
	fmul.s	$fa0, $fa0, $fa1
.LBB0_45:                               # %.thread
	ori	$a0, $zero, 1024
.LBB0_46:                               # %.thread
	ld.hu	$a2, $a1, 0
	lu12i.w	$a3, 14
	ori	$a3, $a3, 1023
	and	$a2, $a2, $a3
	or	$a0, $a2, $a0
	st.h	$a0, $a1, 0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
.LBB0_47:
	st.h	$a0, $a1, 2
	ld.bu	$a0, $s1, 0
	addi.d	$a2, $a0, -101
	ori	$a3, $zero, 19
	bltu	$a3, $a2, .LBB0_50
# %bb.48:
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_1)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_49:
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 1
	b	.LBB0_58
.LBB0_50:
	bnez	$a0, .LBB0_52
.LBB0_51:
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 1
	bstrins.d	$a0, $a2, 63, 13
	st.h	$a0, $a1, 0
	b	.LBB0_59
.LBB0_52:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 7
	b	.LBB0_66
.LBB0_53:
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 3
	b	.LBB0_58
.LBB0_54:
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 2
	b	.LBB0_58
.LBB0_55:
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 5
	b	.LBB0_58
.LBB0_56:
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 4
	b	.LBB0_58
.LBB0_57:
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 6
.LBB0_58:
	bstrins.d	$a0, $a2, 63, 13
	st.h	$a0, $a1, 0
	addi.d	$s1, $s1, 1
.LBB0_59:
	ld.bu	$a2, $s1, 0
	ori	$a3, $zero, 117
	bne	$a2, $a3, .LBB0_64
# %bb.60:
	lu12i.w	$a2, 14
	and	$a2, $a0, $a2
	lu12i.w	$a3, 4
	bne	$a2, $a3, .LBB0_62
# %bb.61:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_63
.LBB0_62:
	ori	$a0, $a0, 128
	st.h	$a0, $a1, 0
.LBB0_63:
	ld.bu	$a2, $s1, 1
.LBB0_64:
	beqz	$a2, .LBB0_67
# %bb.65:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 8
.LBB0_66:
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_67:
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	GetGap, .Lfunc_end0-GetGap
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_36-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_16-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_49-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_54-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_55-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_56-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_57-.LJTI0_1
	.word	.LBB0_51-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_52-.LJTI0_1
	.word	.LBB0_53-.LJTI0_1
                                        # -- End function
	.text
	.globl	MinGap                          # -- Begin function MinGap
	.p2align	5
	.type	MinGap,@function
MinGap:                                 # @MinGap
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.hu	$a4, $a3, 0
	bstrpick.d	$a5, $a4, 12, 10
	addi.d	$a6, $a5, -2
	ori	$a7, $zero, 2
	bltu	$a6, $a7, .LBB1_4
# %bb.1:
	ori	$a6, $zero, 5
	beq	$a5, $a6, .LBB1_5
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a5, $a2, .LBB1_6
# %bb.3:
	ld.h	$a2, $a3, 2
	srli.d	$a3, $a4, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB1_4:
	move	$a2, $zero
	b	.LBB1_7
.LBB1_5:
	ld.h	$a3, $a3, 2
	add.d	$a2, $a2, $a1
	mul.w	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 62, 51
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 12
	srli.d	$a3, $a4, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB1_6:
	pcalau12i	$a2, %got_pc_hi20(no_fpos)
	ld.d	$a2, $a2, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	pcalau12i	$a5, %pc_hi20(.L.str.14)
	addi.d	$a5, $a5, %pc_lo12(.L.str.14)
	move	$fp, $a0
	ori	$a0, $zero, 1
	move	$s0, $a1
	ori	$a1, $zero, 2
	move	$s1, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a0, $fp
	ld.hu	$a4, $s1, 0
                                        # implicit-def: $r6
.LBB1_7:
	srli.d	$a3, $a4, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB1_8:
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	lu12i.w	$a1, 2047
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	b	.LBB1_14
.LBB1_9:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	b	.LBB1_15
.LBB1_10:
	add.d	$a2, $a1, $a0
	b	.LBB1_15
.LBB1_11:
	pcalau12i	$a3, %got_pc_hi20(BackEnd)
	ld.d	$a3, $a3, %got_pc_lo12(BackEnd)
	ld.d	$a3, $a3, 0
	ld.w	$a3, $a3, 36
	add.w	$a0, $a1, $a0
	beqz	$a3, .LBB1_16
# %bb.12:
	addi.w	$a1, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a2, -419431
	ori	$a2, $a2, 2458
	lu32i.d	$a2, -419431
	lu52i.d	$a2, $a2, 1019
	movgr2fr.d	$fa1, $a2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	add.w	$a0, $a0, $a2
	b	.LBB1_17
.LBB1_13:
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	addi.w	$a1, $a2, 0
	slt	$a2, $a1, $a0
.LBB1_14:
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a2, $a0, $a1
.LBB1_15:
	addi.w	$a0, $a2, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_16:
	addi.w	$a1, $a2, 0
.LBB1_17:
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a2, $a1, $a0
	b	.LBB1_15
.Lfunc_end1:
	.size	MinGap, .Lfunc_end1-MinGap
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
                                        # -- End function
	.text
	.globl	ExtraGap                        # -- Begin function ExtraGap
	.p2align	5
	.type	ExtraGap,@function
ExtraGap:                               # @ExtraGap
# %bb.0:
	ld.hu	$a5, $a2, 0
	bstrpick.d	$a4, $a5, 12, 10
	slli.d	$a4, $a4, 10
	ori	$a6, $zero, 1024
	bne	$a4, $a6, .LBB2_2
# %bb.1:
	ld.h	$a4, $a2, 2
	b	.LBB2_3
.LBB2_2:
	move	$a4, $zero
.LBB2_3:
	srli.d	$a2, $a5, 13
	slli.d	$a2, $a2, 2
	pcalau12i	$a5, %pc_hi20(.LJTI2_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI2_0)
	ldx.w	$a2, $a5, $a2
	add.d	$a5, $a5, $a2
	move	$a2, $zero
	jr	$a5
.LBB2_4:
	move	$a0, $a2
	ret
.LBB2_5:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $zero
	ret
.LBB2_6:
	slt	$a2, $a4, $a1
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a4
	slt	$a4, $a2, $a0
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a0, $a4
	or	$a2, $a4, $a2
	addi.d	$a3, $a3, -151
	sltui	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	sub.w	$a2, $a2, $a0
	move	$a0, $a2
	ret
.LBB2_7:
	pcalau12i	$a2, %got_pc_hi20(BackEnd)
	ld.d	$a2, $a2, %got_pc_lo12(BackEnd)
	ld.d	$a2, $a2, 0
	ld.w	$a2, $a2, 36
	beqz	$a2, .LBB2_10
# %bb.8:
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	lu32i.d	$a2, -209716
	lu52i.d	$a2, $a2, 1022
	movgr2fr.d	$fa1, $a2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	add.d	$a0, $a1, $a0
	sub.w	$a0, $a2, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	ret
.LBB2_9:
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	ret
.LBB2_10:
	add.d	$a0, $a1, $a0
	sub.w	$a0, $a4, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	ret
.Lfunc_end2:
	.size	ExtraGap, .Lfunc_end2-ExtraGap
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_5-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_9-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
                                        # -- End function
	.text
	.globl	ActualGap                       # -- Begin function ActualGap
	.p2align	5
	.type	ActualGap,@function
ActualGap:                              # @ActualGap
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.hu	$a6, $a3, 0
	bstrpick.d	$a7, $a6, 12, 10
	addi.d	$a7, $a7, -1
	ori	$t0, $zero, 4
	lu12i.w	$fp, 2047
	bltu	$t0, $a7, .LBB3_7
# %bb.1:
	slli.d	$a7, $a7, 2
	pcalau12i	$t0, %pc_hi20(.LJTI3_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI3_0)
	ldx.w	$a7, $t0, $a7
	add.d	$a7, $t0, $a7
	jr	$a7
.LBB3_2:
	ld.h	$a2, $a3, 2
	srli.d	$a3, $a6, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB3_3:
	ld.h	$a3, $a3, 2
	add.d	$a2, $a2, $a1
	sub.d	$a2, $a4, $a2
	mul.w	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 62, 51
	add.w	$a2, $a2, $a3
	srai.d	$a3, $a2, 12
	srai.d	$a2, $a2, 63
	andn	$a2, $a3, $a2
	srli.d	$a3, $a6, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB3_4:
	ld.h	$a2, $a3, 2
	lu12i.w	$a3, 1
	bge	$a3, $a2, .LBB3_9
# %bb.5:
	ori	$a2, $fp, 4095
	b	.LBB3_8
.LBB3_6:
	ld.h	$a3, $a3, 2
	add.d	$a2, $a2, $a1
	mul.w	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 62, 51
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 12
	srli.d	$a3, $a6, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB3_7:
	pcalau12i	$a2, %got_pc_hi20(no_fpos)
	ld.d	$a2, $a2, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	pcalau12i	$a6, %pc_hi20(.L.str.19)
	addi.d	$a6, $a6, %pc_lo12(.L.str.19)
	move	$s0, $a0
	ori	$a0, $zero, 1
	move	$s1, $a1
	ori	$a1, $zero, 2
	move	$s3, $a3
	move	$a3, $zero
	move	$s2, $a5
	move	$a5, $a6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a5, $s2
	move	$a1, $s1
	move	$a0, $s0
	ld.hu	$a6, $s3, 0
                                        # implicit-def: $r6
.LBB3_8:
	srli.d	$a3, $a6, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB3_9:
	mul.w	$a2, $a4, $a2
	bstrpick.d	$a3, $a2, 62, 51
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 12
	srli.d	$a3, $a6, 13
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB3_10:
	add.d	$a0, $a1, $a0
	add.d	$a2, $a0, $a2
	b	.LBB3_19
.LBB3_11:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 17
	ori	$a1, $zero, 10
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	b	.LBB3_19
.LBB3_12:
	sub.d	$a3, $a1, $a5
	add.w	$a2, $a3, $a2
	add.w	$a0, $a1, $a0
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	b	.LBB3_18
.LBB3_13:
	pcalau12i	$a3, %got_pc_hi20(BackEnd)
	ld.d	$a3, $a3, %got_pc_lo12(BackEnd)
	ld.d	$a3, $a3, 0
	ld.w	$a3, $a3, 36
	add.w	$a0, $a1, $a0
	beqz	$a3, .LBB3_16
# %bb.14:
	addi.w	$a1, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a2, -419431
	ori	$a2, $a2, 2458
	lu32i.d	$a2, -419431
	lu52i.d	$a2, $a2, 1019
	movgr2fr.d	$fa1, $a2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	add.w	$a0, $a0, $a2
	b	.LBB3_17
.LBB3_15:
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	addi.w	$a1, $a2, 0
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a2, $a0, $a1
	b	.LBB3_19
.LBB3_16:
	addi.w	$a1, $a2, 0
.LBB3_17:
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
.LBB3_18:
	or	$a2, $a1, $a0
.LBB3_19:
	addi.w	$a0, $a2, 0
	ori	$a1, $fp, 4095
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	ActualGap, .Lfunc_end3-ActualGap
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_7-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_11-.LJTI3_1
	.word	.LBB3_10-.LJTI3_1
	.word	.LBB3_10-.LJTI3_1
	.word	.LBB3_13-.LJTI3_1
	.word	.LBB3_19-.LJTI3_1
	.word	.LBB3_15-.LJTI3_1
	.word	.LBB3_12-.LJTI3_1
	.word	.LBB3_10-.LJTI3_1
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gap is not a simple word"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%f"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"width missing from %s"
	.size	.L.str.2, 22

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s, %s and %s must be enclosed in double quotes"
	.size	.L.str.3, 48

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"/"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"|"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"&"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"assert failed in %s"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"GetGap: dg!"
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"units letter missing from %s"
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%.1fr too large (1.0r substituted)"
	.size	.L.str.10, 35

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"unknown gap mode in %s"
	.size	.L.str.11, 23

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"replacing self-contradictory gap %s by breakable version"
	.size	.L.str.12, 57

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"invalid width or gap %s"
	.size	.L.str.13, 24

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"MinGap: units"
	.size	.L.str.14, 14

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"MinGap: NO_MODE"
	.size	.L.str.15, 16

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"ExtraGap: NO_MODE"
	.size	.L.str.17, 18

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"ActualGap: units"
	.size	.L.str.19, 17

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"cannot continue after previous error(s)"
	.size	.L.str.20, 40

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"ActualGap: NO_MODE"
	.size	.L.str.21, 19

	.section	".note.GNU-stack","",@progbits
	.addrsig
