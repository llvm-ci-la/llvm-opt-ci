	.file	"LzmaDec.c"
	.text
	.globl	LzmaDec_InitDicAndState         # -- Begin function LzmaDec_InitDicAndState
	.p2align	5
	.type	LzmaDec_InitDicAndState,@function
LzmaDec_InitDicAndState:                # @LzmaDec_InitDicAndState
# %bb.0:
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	st.d	$a3, $a0, 92
	st.w	$zero, $a0, 108
	beqz	$a1, .LBB0_2
# %bb.1:
	st.d	$zero, $a0, 64
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 100
.LBB0_2:
	beqz	$a2, .LBB0_4
# %bb.3:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 100
.LBB0_4:
	ret
.Lfunc_end0:
	.size	LzmaDec_InitDicAndState, .Lfunc_end0-LzmaDec_InitDicAndState
                                        # -- End function
	.globl	LzmaDec_Init                    # -- Begin function LzmaDec_Init
	.p2align	5
	.type	LzmaDec_Init,@function
LzmaDec_Init:                           # @LzmaDec_Init
# %bb.0:
	st.d	$zero, $a0, 48
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 92
	st.w	$zero, $a0, 108
	st.d	$zero, $a0, 64
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 100
	ret
.Lfunc_end1:
	.size	LzmaDec_Init, .Lfunc_end1-LzmaDec_Init
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function LzmaDec_DecodeToDic
.LCPI2_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.text
	.globl	LzmaDec_DecodeToDic
	.p2align	5
	.type	LzmaDec_DecodeToDic,@function
LzmaDec_DecodeToDic:                    # @LzmaDec_DecodeToDic
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a6, $a0, 92
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$s4, $a2
	move	$s5, $a1
	ld.d	$s2, $a3, 0
	addi.w	$a0, $a6, -1
	ori	$a1, $zero, 272
	st.d	$zero, $a3, 0
	bltu	$a1, $a0, .LBB2_9
# %bb.1:
	ld.d	$a0, $s0, 48
	sub.d	$a1, $s5, $a0
	ld.w	$a2, $s0, 68
	sltu	$a3, $a1, $a6
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a6, $a3
	or	$a1, $a1, $a3
	beqz	$a2, .LBB2_3
# %bb.2:                                # %._crit_edge42.i
	ld.w	$a7, $s0, 64
	b	.LBB2_5
.LBB2_3:
	ld.w	$a2, $s0, 12
	ld.w	$a7, $s0, 64
	addi.w	$a3, $a1, 0
	sub.w	$a4, $a2, $a7
	bltu	$a3, $a4, .LBB2_5
# %bb.4:
	st.w	$a2, $s0, 68
.LBB2_5:
	ld.d	$a2, $s0, 24
	ld.d	$a3, $s0, 56
	ld.wu	$a4, $s0, 76
	add.d	$a7, $a7, $a1
	st.w	$a7, $s0, 64
	sub.d	$a6, $a6, $a1
	st.w	$a6, $s0, 92
	beqz	$a1, .LBB2_8
# %bb.6:                                # %.lr.ph.i
	sub.d	$a7, $a2, $a4
	.p2align	4, , 16
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	sltu	$a6, $a0, $a4
	maskeqz	$a6, $a3, $a6
	add.d	$a6, $a7, $a6
	ldx.b	$a6, $a6, $a0
	addi.w	$a1, $a1, -1
	stx.b	$a6, $a2, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB2_7
.LBB2_8:                                # %._crit_edge.i
	st.d	$a0, $s0, 48
.LBB2_9:                                # %LzmaDec_WriteRem.exit
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	st.w	$zero, $a5, 0
	ld.w	$a0, $s0, 92
	ori	$s7, $zero, 274
	bne	$a0, $s7, .LBB2_12
.LBB2_10:                               # %._crit_edge233
	ld.w	$a1, $s0, 44
	ori	$a0, $zero, 1
	bnez	$a1, .LBB2_76
# %bb.11:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.w	$a0, $s0, 44
	sltu	$a0, $zero, $a0
	b	.LBB2_76
.LBB2_12:                               # %.lr.ph232
	addi.d	$s6, $s0, 112
	ori	$s8, $zero, 18
	ori	$a1, $zero, 1024
	xvreplgr2vr.h	$xr0, $a1
	lu12i.w	$a1, 16384
	ori	$a1, $a1, 1024
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	b	.LBB2_17
.LBB2_13:                               #   in Loop: Header=BB2_17 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a2, $a0, -20
.LBB2_14:                               #   in Loop: Header=BB2_17 Depth=1
	st.d	$s4, $s0, 32
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(LzmaDec_DecodeReal2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_65
# %bb.15:                               #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a0, $s0, 32
	ld.d	$a2, $s1, 0
	sub.d	$a1, $a0, $s4
	add.d	$a0, $a1, $a2
	st.d	$a0, $s1, 0
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a0, $s0, 92
	add.d	$s4, $s4, $a1
	sub.d	$s2, $s2, $a1
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	beq	$a0, $s7, .LBB2_10
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
                                        #     Child Loop BB2_36 Depth 2
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_45 Depth 2
	ld.w	$a1, $s0, 96
	beqz	$a1, .LBB2_30
# %bb.18:                               # %.preheader195
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a1, $s0, 108
	beqz	$s2, .LBB2_24
# %bb.19:                               # %.lr.ph
                                        #   in Loop: Header=BB2_17 Depth=1
	ori	$a2, $zero, 4
	bltu	$a2, $a1, .LBB2_25
# %bb.20:                               # %.lr.ph304
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$a6, $zero
	ori	$a3, $zero, 5
	sltu	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $s2, -1
	add.d	$a4, $s6, $a1
	sub.d	$a5, $a2, $a1
	addi.w	$a7, $a1, 1
	.p2align	4, , 16
.LBB2_21:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a6
	ldx.b	$a1, $s4, $a6
	stx.b	$a1, $a4, $a6
	ld.d	$a6, $s1, 0
	move	$a1, $a7
	st.w	$a7, $s0, 108
	addi.d	$a6, $a6, 1
	st.d	$a6, $s1, 0
	beq	$a3, $a2, .LBB2_26
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=2
	addi.d	$a6, $a2, 1
	addi.w	$a7, $a1, 1
	bne	$a5, $a6, .LBB2_21
# %bb.23:                               # %.critedge.loopexit
                                        #   in Loop: Header=BB2_17 Depth=1
	sub.d	$s2, $s2, $a6
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_17 Depth=1
	move	$s2, $zero
.LBB2_25:                               # %.critedge
                                        #   in Loop: Header=BB2_17 Depth=1
	ori	$a2, $zero, 4
	bltu	$a2, $a1, .LBB2_28
	b	.LBB2_66
.LBB2_26:                               # %..critedge.loopexit_crit_edge
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$s2, $zero
.LBB2_27:                               # %.critedge
                                        #   in Loop: Header=BB2_17 Depth=1
	add.d	$a2, $s4, $a2
	addi.d	$s4, $a2, 1
	ori	$a2, $zero, 4
	bgeu	$a2, $a1, .LBB2_66
.LBB2_28:                               #   in Loop: Header=BB2_17 Depth=1
	ld.bu	$a1, $s6, 0
	bnez	$a1, .LBB2_65
# %bb.29:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a1, $s0, 113
	revb.2w	$a1, $a1
	st.w	$a1, $s0, 44
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s0, 40
	st.w	$zero, $s0, 96
	st.w	$zero, $s0, 108
.LBB2_30:                               #   in Loop: Header=BB2_17 Depth=1
	ld.d	$s3, $s0, 48
	bltu	$s3, $s5, .LBB2_34
# %bb.31:                               #   in Loop: Header=BB2_17 Depth=1
	bnez	$a0, .LBB2_67
# %bb.32:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a0, $s0, 44
	beqz	$a0, .LBB2_70
# %bb.33:                               #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_69
.LBB2_34:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a0, $s0, 100
	beqz	$a0, .LBB2_38
# %bb.35:                               # %iter.check
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 4
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 768
	sll.w	$a1, $a1, $a0
	ld.d	$a0, $s0, 16
	addi.d	$a1, $a1, 1846
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -22
	addi.d	$a3, $a0, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB2_36:                               # %vector.body318
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -32
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB2_36
# %bb.37:                               # %vec.epilog.vector.body
                                        #   in Loop: Header=BB2_17 Depth=1
	slli.d	$a2, $a2, 1
	xvstx	$xr0, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $a3
	bstrins.d	$a1, $a3, 58, 32
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_0)
	st.d	$a1, $a0, -12
	st.w	$a3, $a0, -4
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 88
	vst	$vr0, $s0, 72
	st.w	$zero, $s0, 100
.LBB2_38:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$fp, $s0, 108
	beqz	$fp, .LBB2_47
# %bb.39:                               # %.preheader
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$s7, $zero
	sltui	$a1, $fp, 20
	ori	$a0, $zero, 19
	bltu	$a0, $fp, .LBB2_57
# %bb.40:                               # %.preheader
                                        #   in Loop: Header=BB2_17 Depth=1
	beqz	$s2, .LBB2_57
# %bb.41:                               # %.lr.ph224.preheader
                                        #   in Loop: Header=BB2_17 Depth=1
	addi.d	$a0, $s2, -1
	ori	$a1, $zero, 19
	sub.d	$a1, $a1, $fp
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB2_43
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_17 Depth=1
	add.d	$a0, $s6, $fp
	sub.d	$a0, $a0, $s4
	bgeu	$a0, $a2, .LBB2_52
.LBB2_43:                               #   in Loop: Header=BB2_17 Depth=1
	move	$s7, $zero
.LBB2_44:                               # %.lr.ph224.preheader329
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB2_45:                               # %.lr.ph224
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a1, $s4, $s7
	move	$a2, $a0
	addi.d	$s7, $s7, 1
	addi.d	$a0, $a0, 1
	stx.b	$a1, $s6, $a2
	sltui	$a1, $a2, 19
	bltu	$s8, $a2, .LBB2_56
# %bb.46:                               # %.lr.ph224
                                        #   in Loop: Header=BB2_45 Depth=2
	bltu	$s7, $s2, .LBB2_45
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_47:                               #   in Loop: Header=BB2_17 Depth=1
	ori	$a0, $zero, 20
	bltu	$s2, $a0, .LBB2_49
# %bb.48:                               #   in Loop: Header=BB2_17 Depth=1
	bltu	$s3, $s5, .LBB2_13
.LBB2_49:                               #   in Loop: Header=BB2_17 Depth=1
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(LzmaDec_TryDummy)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_72
# %bb.50:                               #   in Loop: Header=BB2_17 Depth=1
	move	$a2, $s4
	bltu	$s3, $s5, .LBB2_14
# %bb.51:                               #   in Loop: Header=BB2_17 Depth=1
	move	$a2, $s4
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB2_14
	b	.LBB2_68
.LBB2_52:                               # %vector.ph
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$s7, $a1
	bstrins.d	$s7, $zero, 3, 0
	add.d	$a0, $s7, $fp
	addi.d	$a2, $fp, 112
	move	$a3, $s4
	move	$a4, $s7
	.p2align	4, , 16
.LBB2_53:                               # %vector.body
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vstx	$vr0, $s0, $a2
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB2_53
# %bb.54:                               # %middle.block
                                        #   in Loop: Header=BB2_17 Depth=1
	bne	$a1, $s7, .LBB2_64
# %bb.55:                               #   in Loop: Header=BB2_17 Depth=1
	addi.d	$a1, $a2, -113
	sltui	$a1, $a1, 19
	.p2align	4, , 16
.LBB2_56:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$fp, $a0
.LBB2_57:                               # %._crit_edge
                                        #   in Loop: Header=BB2_17 Depth=1
	st.w	$fp, $s0, 108
	bgeu	$s3, $s5, .LBB2_59
# %bb.58:                               # %._crit_edge
                                        #   in Loop: Header=BB2_17 Depth=1
	beqz	$a1, .LBB2_62
.LBB2_59:                               #   in Loop: Header=BB2_17 Depth=1
	bstrpick.d	$a2, $fp, 31, 0
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(LzmaDec_TryDummy)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_71
# %bb.60:                               #   in Loop: Header=BB2_17 Depth=1
	bltu	$s3, $s5, .LBB2_62
# %bb.61:                               #   in Loop: Header=BB2_17 Depth=1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB2_68
.LBB2_62:                               #   in Loop: Header=BB2_17 Depth=1
	st.d	$s6, $s0, 32
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(LzmaDec_DecodeReal2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_65
# %bb.63:                               #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a0, $s0, 32
	sub.d	$a0, $a0, $s6
	ld.d	$a2, $s1, 0
	sub.d	$a1, $s7, $fp
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 0
	add.d	$a0, $a2, $a1
	st.d	$a0, $s1, 0
	st.w	$zero, $s0, 108
	ori	$s7, $zero, 274
	b	.LBB2_16
.LBB2_64:                               #   in Loop: Header=BB2_17 Depth=1
	move	$fp, $a0
	b	.LBB2_44
.LBB2_65:
	ori	$a0, $zero, 1
	b	.LBB2_76
.LBB2_66:
	move	$a0, $zero
	b	.LBB2_74
.LBB2_67:                               # %.thread
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_69
.LBB2_68:
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	b	.LBB2_76
.LBB2_69:                               # %.loopexit
	move	$a0, $zero
	ori	$a1, $zero, 2
	b	.LBB2_75
.LBB2_70:
	move	$a0, $zero
	ori	$a1, $zero, 4
	b	.LBB2_75
.LBB2_71:
	ld.d	$a1, $s1, 0
	move	$a0, $zero
	add.d	$a1, $a1, $s7
	b	.LBB2_73
.LBB2_72:
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $zero
	st.w	$s2, $s0, 108
	add.d	$a1, $a1, $s2
.LBB2_73:                               # %.thread187
	st.d	$a1, $s1, 0
.LBB2_74:                               # %.thread187
	ori	$a1, $zero, 3
.LBB2_75:                               # %.thread187
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.w	$a1, $a2, 0
.LBB2_76:                               # %.thread187
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end2:
	.size	LzmaDec_DecodeToDic, .Lfunc_end2-LzmaDec_DecodeToDic
                                        # -- End function
	.p2align	5                               # -- Begin function LzmaDec_TryDummy
	.type	LzmaDec_TryDummy,@function
LzmaDec_TryDummy:                       # @LzmaDec_TryDummy
# %bb.0:
	ld.wu	$t4, $a0, 40
	ld.w	$a6, $a0, 44
	ld.d	$a4, $a0, 16
	ld.wu	$a3, $a0, 8
	ld.w	$t2, $a0, 64
	ld.wu	$a7, $a0, 72
	addi.d	$t3, $zero, -1
	sll.w	$a3, $t3, $a3
	andn	$t0, $t2, $a3
	slli.d	$a3, $a7, 4
	bstrpick.d	$t1, $a3, 31, 4
	slli.d	$a3, $t1, 5
	add.d	$a3, $a4, $a3
	slli.d	$a5, $t0, 1
	ldx.hu	$a5, $a3, $a5
	srli.d	$a3, $t4, 24
	bnez	$a3, .LBB3_3
# %bb.1:
	beqz	$a2, .LBB3_89
# %bb.2:
	ld.bu	$t5, $a1, 0
	slli.d	$t4, $t4, 8
	slli.w	$a6, $a6, 8
	addi.d	$a3, $a1, 1
	or	$a6, $a6, $t5
	b	.LBB3_4
.LBB3_3:
	move	$a3, $a1
.LBB3_4:
	bstrpick.d	$t5, $t4, 31, 11
	mul.d	$a5, $t5, $a5
	addi.w	$t5, $a5, 0
	add.d	$a1, $a1, $a2
	bgeu	$a6, $t5, .LBB3_17
# %bb.5:
	ld.w	$a2, $a0, 68
	addi.d	$a4, $a4, 2047
	or	$t0, $a2, $t2
	addi.d	$a2, $a4, 1645
	beqz	$t0, .LBB3_9
# %bb.6:
	ld.wu	$t0, $a0, 4
	ld.wu	$a4, $a0, 0
	ld.d	$t4, $a0, 48
	ld.d	$t1, $a0, 24
	sll.w	$t0, $t3, $t0
	andn	$t0, $t2, $t0
	sll.w	$t0, $t0, $a4
	bnez	$t4, .LBB3_8
# %bb.7:
	ld.d	$t4, $a0, 56
.LBB3_8:
	add.d	$t1, $t1, $t4
	ld.bu	$t1, $t1, -1
	ori	$t2, $zero, 8
	sub.d	$a4, $t2, $a4
	srl.w	$a4, $t1, $a4
	add.d	$a4, $a4, $t0
	alsl.d	$a4, $a4, $a4, 1
	slli.d	$a4, $a4, 8
	bstrpick.d	$a4, $a4, 31, 8
	slli.d	$a4, $a4, 9
	add.d	$a2, $a2, $a4
.LBB3_9:
	ori	$a4, $zero, 6
	bltu	$a4, $a7, .LBB3_27
# %bb.10:                               # %.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a4, $zero, 256
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_13 Depth=1
	sub.w	$a6, $a6, $a5
	sub.w	$a5, $t0, $a5
	addi.d	$a0, $a0, 1
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	bgeu	$a0, $a4, .LBB3_47
.LBB3_13:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a7, $a2, $a0
	bstrpick.d	$t0, $a5, 31, 24
	bnez	$t0, .LBB3_16
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	bgeu	$a3, $a1, .LBB3_89
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	ld.bu	$t1, $a3, 0
	slli.d	$t0, $a5, 8
	slli.w	$a5, $a6, 8
	addi.d	$a3, $a3, 1
	or	$a6, $a5, $t1
	bstrpick.d	$a5, $t0, 31, 11
	mul.d	$a5, $a5, $a7
	addi.w	$a7, $a5, 0
	bltu	$a6, $a7, .LBB3_12
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	move	$t0, $a5
	bstrpick.d	$a5, $t0, 31, 11
	mul.d	$a5, $a5, $a7
	addi.w	$a7, $a5, 0
	bltu	$a6, $a7, .LBB3_12
	b	.LBB3_11
.LBB3_17:
	alsl.d	$t2, $a7, $a4, 1
	ld.hu	$a2, $t2, 384
	sub.w	$a0, $t4, $a5
	bstrpick.d	$a7, $a0, 31, 24
	sub.w	$a6, $a6, $a5
	bnez	$a7, .LBB3_20
# %bb.18:
	bgeu	$a3, $a1, .LBB3_89
# %bb.19:
	ld.bu	$a5, $a3, 0
	slli.d	$a0, $a0, 8
	slli.w	$a6, $a6, 8
	addi.d	$a3, $a3, 1
	or	$a6, $a6, $a5
.LBB3_20:
	bstrpick.d	$a5, $a0, 31, 11
	mul.d	$t3, $a5, $a2
	addi.w	$a7, $t3, 0
	bgeu	$a6, $a7, .LBB3_29
# %bb.21:
	ori	$a0, $zero, 2
	ori	$t1, $zero, 1636
	move	$a2, $a6
.LBB3_22:
	ldx.hu	$a5, $a4, $t1
	bstrpick.d	$t2, $t3, 31, 24
	bnez	$t2, .LBB3_25
# %bb.23:
	bgeu	$a3, $a1, .LBB3_89
# %bb.24:
	ld.bu	$t2, $a3, 0
	slli.d	$t3, $t3, 8
	slli.w	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $t2
.LBB3_25:
	bstrpick.d	$t2, $t3, 31, 11
	mul.d	$a5, $t2, $a5
	addi.w	$t4, $a5, 0
	add.d	$t2, $a4, $t1
	bgeu	$a2, $t4, .LBB3_50
# %bb.26:
	move	$t1, $zero
	slli.d	$t0, $t0, 4
	bstrpick.d	$t0, $t0, 32, 4
	alsl.d	$t0, $t0, $t2, 4
	addi.d	$t0, $t0, 4
	ori	$t2, $zero, 8
	b	.LBB3_65
.LBB3_27:
	ld.d	$t0, $a0, 48
	ld.wu	$t1, $a0, 76
	ld.d	$a4, $a0, 24
	sub.d	$a7, $t0, $t1
	bgeu	$t0, $t1, .LBB3_39
# %bb.28:
	ld.d	$a0, $a0, 56
	b	.LBB3_40
.LBB3_29:
	ld.hu	$a2, $t2, 408
	sub.w	$a5, $a0, $t3
	bstrpick.d	$t4, $a5, 31, 24
	sub.w	$a0, $a6, $t3
	bnez	$t4, .LBB3_32
# %bb.30:
	bgeu	$a3, $a1, .LBB3_89
# %bb.31:
	ld.bu	$t3, $a3, 0
	slli.d	$a5, $a5, 8
	slli.w	$a0, $a0, 8
	addi.d	$a3, $a3, 1
	or	$a0, $a0, $t3
.LBB3_32:
	bstrpick.d	$t3, $a5, 31, 11
	mul.d	$a2, $t3, $a2
	addi.w	$t3, $a2, 0
	bgeu	$a0, $t3, .LBB3_55
# %bb.33:
	slli.d	$a5, $t1, 4
	alsl.d	$a5, $a5, $a4, 1
	alsl.d	$a5, $t0, $a5, 1
	ld.hu	$a5, $a5, 480
	bstrpick.d	$t1, $a2, 31, 24
	bnez	$t1, .LBB3_36
# %bb.34:
	bgeu	$a3, $a1, .LBB3_89
# %bb.35:
	ld.bu	$t1, $a3, 0
	slli.d	$a2, $a2, 8
	slli.w	$a0, $a0, 8
	addi.d	$a3, $a3, 1
	or	$a0, $a0, $t1
.LBB3_36:
	bstrpick.d	$t1, $a2, 31, 11
	mul.d	$a5, $t1, $a5
	addi.w	$t1, $a5, 0
	bgeu	$a0, $t1, .LBB3_83
# %bb.37:
	bstrpick.d	$a2, $a5, 31, 24
	ori	$a0, $zero, 3
	bnez	$a2, .LBB3_49
# %bb.38:
	sltu	$a0, $a3, $a1
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	ret
.LBB3_39:
	move	$a0, $zero
.LBB3_40:
	add.d	$a4, $a4, $a7
	ldx.bu	$a0, $a4, $a0
	ori	$a4, $zero, 1
	ori	$a7, $zero, 256
	ori	$t1, $zero, 256
	b	.LBB3_42
	.p2align	4, , 16
.LBB3_41:                               #   in Loop: Header=BB3_42 Depth=1
	sub.w	$a6, $a6, $a5
	sub.w	$a5, $t3, $a5
	addi.d	$a4, $a4, 1
	move	$t1, $t0
	bgeu	$a4, $a7, .LBB3_47
.LBB3_42:                               # =>This Inner Loop Header: Depth=1
	slli.w	$a0, $a0, 1
	and	$t0, $a0, $t1
	alsl.d	$t2, $t1, $a2, 1
	alsl.d	$t2, $t0, $t2, 1
	slli.d	$a4, $a4, 1
	ldx.hu	$t2, $t2, $a4
	bstrpick.d	$t3, $a5, 31, 24
	bnez	$t3, .LBB3_45
# %bb.43:                               #   in Loop: Header=BB3_42 Depth=1
	bgeu	$a3, $a1, .LBB3_89
# %bb.44:                               #   in Loop: Header=BB3_42 Depth=1
	ld.bu	$t4, $a3, 0
	slli.d	$t3, $a5, 8
	slli.w	$a5, $a6, 8
	addi.d	$a3, $a3, 1
	or	$a6, $a5, $t4
	bstrpick.d	$a5, $t3, 31, 11
	mul.d	$a5, $a5, $t2
	addi.w	$t2, $a5, 0
	bgeu	$a6, $t2, .LBB3_41
	b	.LBB3_46
	.p2align	4, , 16
.LBB3_45:                               #   in Loop: Header=BB3_42 Depth=1
	move	$t3, $a5
	bstrpick.d	$a5, $t3, 31, 11
	mul.d	$a5, $a5, $t2
	addi.w	$t2, $a5, 0
	bgeu	$a6, $t2, .LBB3_41
.LBB3_46:                               #   in Loop: Header=BB3_42 Depth=1
	xor	$t0, $t0, $t1
	move	$t1, $t0
	bltu	$a4, $a7, .LBB3_42
.LBB3_47:
	ori	$a0, $zero, 1
.LBB3_48:                               # %.thread
	bstrpick.d	$a2, $a5, 31, 24
	sltu	$a2, $zero, $a2
	sltu	$a1, $a3, $a1
	maskeqz	$a1, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
.LBB3_49:                               # %.critedge
	ret
.LBB3_50:
	ld.hu	$t4, $t2, 2
	sub.w	$t1, $t3, $a5
	bstrpick.d	$t3, $t1, 31, 24
	sub.w	$a2, $a2, $a5
	bnez	$t3, .LBB3_53
# %bb.51:
	bgeu	$a3, $a1, .LBB3_89
# %bb.52:
	ld.bu	$a5, $a3, 0
	slli.d	$t1, $t1, 8
	slli.w	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $a5
.LBB3_53:
	bstrpick.d	$a5, $t1, 31, 11
	mul.d	$a5, $a5, $t4
	addi.w	$t3, $a5, 0
	bgeu	$a2, $t3, .LBB3_64
# %bb.54:
	slli.d	$t0, $t0, 4
	bstrpick.d	$t0, $t0, 32, 4
	alsl.d	$t0, $t0, $t2, 4
	addi.d	$t0, $t0, 260
	ori	$t2, $zero, 8
	ori	$t1, $zero, 8
	b	.LBB3_65
.LBB3_55:
	ld.hu	$t1, $t2, 432
	sub.w	$a5, $a5, $a2
	bstrpick.d	$t3, $a5, 31, 24
	sub.w	$a2, $a0, $a2
	bnez	$t3, .LBB3_58
# %bb.56:
	bgeu	$a3, $a1, .LBB3_89
# %bb.57:
	ld.bu	$a0, $a3, 0
	slli.d	$a5, $a5, 8
	slli.w	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $a0
.LBB3_58:
	bstrpick.d	$a0, $a5, 31, 11
	mul.d	$t3, $a0, $t1
	addi.w	$t4, $t3, 0
	ori	$a0, $zero, 3
	ori	$t1, $zero, 2664
	bltu	$a2, $t4, .LBB3_22
# %bb.59:
	ld.hu	$t2, $t2, 456
	sub.w	$a5, $a5, $t3
	bstrpick.d	$t4, $a5, 31, 24
	sub.w	$a2, $a2, $t3
	bnez	$t4, .LBB3_62
# %bb.60:
	bgeu	$a3, $a1, .LBB3_89
# %bb.61:
	ld.bu	$t3, $a3, 0
	slli.d	$a5, $a5, 8
	slli.w	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $t3
.LBB3_62:
	bstrpick.d	$t3, $a5, 31, 11
	mul.d	$t3, $t3, $t2
	addi.w	$t2, $t3, 0
	bltu	$a2, $t2, .LBB3_22
# %bb.63:
	sub.w	$a5, $a5, $t3
	sub.w	$a2, $a2, $t3
	move	$t3, $a5
	b	.LBB3_22
.LBB3_64:
	sub.w	$a2, $a2, $a5
	sub.w	$a5, $t1, $a5
	addi.d	$t0, $t2, 516
	ori	$t1, $zero, 16
	ori	$t2, $zero, 256
.LBB3_65:
	ori	$t3, $zero, 1
	b	.LBB3_67
	.p2align	4, , 16
.LBB3_66:                               #   in Loop: Header=BB3_67 Depth=1
	sub.w	$a2, $a2, $a5
	sub.w	$a5, $t5, $a5
	slli.d	$t3, $t3, 1
	addi.d	$t3, $t3, 1
	addi.w	$t4, $t3, 0
	bgeu	$t4, $t2, .LBB3_72
.LBB3_67:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t4, $t3, 31, 0
	slli.d	$t4, $t4, 1
	ldx.hu	$t4, $t0, $t4
	bstrpick.d	$t5, $a5, 31, 24
	bnez	$t5, .LBB3_70
# %bb.68:                               #   in Loop: Header=BB3_67 Depth=1
	bgeu	$a3, $a1, .LBB3_89
# %bb.69:                               #   in Loop: Header=BB3_67 Depth=1
	ld.bu	$t6, $a3, 0
	slli.d	$t5, $a5, 8
	slli.w	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $t6
	bstrpick.d	$a5, $t5, 31, 11
	mul.d	$a5, $a5, $t4
	addi.w	$t4, $a5, 0
	bgeu	$a2, $t4, .LBB3_66
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_70:                               #   in Loop: Header=BB3_67 Depth=1
	move	$t5, $a5
	bstrpick.d	$a5, $t5, 31, 11
	mul.d	$a5, $a5, $t4
	addi.w	$t4, $a5, 0
	bgeu	$a2, $t4, .LBB3_66
.LBB3_71:                               #   in Loop: Header=BB3_67 Depth=1
	slli.d	$t3, $t3, 1
	addi.w	$t4, $t3, 0
	bltu	$t4, $t2, .LBB3_67
.LBB3_72:
	bgeu	$a6, $a7, .LBB3_48
# %bb.73:
	sub.d	$a6, $t1, $t2
	add.w	$a6, $a6, $t3
	sltui	$a7, $a6, 3
	maskeqz	$a6, $a6, $a7
	ori	$t0, $zero, 3
	masknez	$a7, $t0, $a7
	or	$a6, $a6, $a7
	slli.d	$a6, $a6, 7
	add.d	$a6, $a4, $a6
	addi.d	$a6, $a6, 864
	ori	$a7, $zero, 1
	ori	$t0, $zero, 64
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_74:                               #   in Loop: Header=BB3_75 Depth=1
	sub.w	$a2, $a2, $a5
	sub.w	$a5, $t2, $a5
	slli.d	$a7, $a7, 1
	addi.d	$a7, $a7, 1
	addi.w	$t1, $a7, 0
	bgeu	$t1, $t0, .LBB3_80
.LBB3_75:                               # =>This Inner Loop Header: Depth=1
	addi.w	$t1, $a7, 0
	slli.d	$t1, $t1, 1
	ldx.hu	$t1, $a6, $t1
	bstrpick.d	$t2, $a5, 31, 24
	bnez	$t2, .LBB3_78
# %bb.76:                               #   in Loop: Header=BB3_75 Depth=1
	bgeu	$a3, $a1, .LBB3_89
# %bb.77:                               #   in Loop: Header=BB3_75 Depth=1
	ld.bu	$t3, $a3, 0
	slli.d	$t2, $a5, 8
	slli.w	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $t3
	bstrpick.d	$a5, $t2, 31, 11
	mul.d	$a5, $a5, $t1
	addi.w	$t1, $a5, 0
	bgeu	$a2, $t1, .LBB3_74
	b	.LBB3_79
	.p2align	4, , 16
.LBB3_78:                               #   in Loop: Header=BB3_75 Depth=1
	move	$t2, $a5
	bstrpick.d	$a5, $t2, 31, 11
	mul.d	$a5, $a5, $t1
	addi.w	$t1, $a5, 0
	bgeu	$a2, $t1, .LBB3_74
.LBB3_79:                               #   in Loop: Header=BB3_75 Depth=1
	slli.d	$a7, $a7, 1
	addi.w	$t1, $a7, 0
	bltu	$t1, $t0, .LBB3_75
.LBB3_80:
	addi.w	$t0, $a7, -64
	ori	$a6, $zero, 4
	bltu	$t0, $a6, .LBB3_48
# %bb.81:
	ori	$t1, $zero, 13
	bstrpick.d	$a6, $t0, 31, 1
	bltu	$t1, $t0, .LBB3_84
# %bb.82:
	addi.d	$a6, $a6, -1
	ori	$t1, $zero, 1
	bstrins.d	$a7, $t1, 63, 1
	sll.w	$a7, $a7, $a6
	bstrpick.d	$a7, $a7, 31, 0
	alsl.d	$a4, $a7, $a4, 1
	slli.d	$a7, $t0, 1
	sub.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 1374
	b	.LBB3_91
.LBB3_83:
	sub.w	$t3, $a2, $a5
	sub.w	$a2, $a0, $a5
	ori	$a0, $zero, 3
	ori	$t1, $zero, 2664
	b	.LBB3_22
.LBB3_84:
	addi.d	$a6, $a6, -5
	b	.LBB3_87
.LBB3_85:                               #   in Loop: Header=BB3_87 Depth=1
	ld.bu	$a7, $a3, 0
	slli.d	$a5, $a5, 8
	slli.d	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $a7
.LBB3_86:                               #   in Loop: Header=BB3_87 Depth=1
	bstrpick.d	$a5, $a5, 31, 1
	sub.w	$a7, $a2, $a5
	slti	$a7, $a7, 0
	masknez	$a7, $a5, $a7
	addi.w	$a6, $a6, -1
	sub.w	$a2, $a2, $a7
	beqz	$a6, .LBB3_90
.LBB3_87:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $a5, 31, 24
	bnez	$a7, .LBB3_86
# %bb.88:                               #   in Loop: Header=BB3_87 Depth=1
	bltu	$a3, $a1, .LBB3_85
.LBB3_89:
	move	$a0, $zero
	ret
.LBB3_90:
	addi.d	$a4, $a4, 1604
	ori	$a6, $zero, 4
.LBB3_91:
	ori	$a7, $zero, 1
	b	.LBB3_93
.LBB3_92:                               #   in Loop: Header=BB3_93 Depth=1
	sub.w	$a2, $a2, $a5
	sub.w	$a5, $t1, $a5
	slli.d	$a7, $a7, 1
	addi.d	$a7, $a7, 1
	addi.w	$a6, $a6, -1
	beqz	$a6, .LBB3_48
.LBB3_93:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t0, $a7, 31, 0
	slli.d	$t0, $t0, 1
	ldx.hu	$t0, $a4, $t0
	bstrpick.d	$t1, $a5, 31, 24
	bnez	$t1, .LBB3_96
# %bb.94:                               #   in Loop: Header=BB3_93 Depth=1
	bgeu	$a3, $a1, .LBB3_89
# %bb.95:                               #   in Loop: Header=BB3_93 Depth=1
	ld.bu	$t2, $a3, 0
	slli.d	$t1, $a5, 8
	slli.w	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	or	$a2, $a2, $t2
	bstrpick.d	$a5, $t1, 31, 11
	mul.d	$a5, $a5, $t0
	addi.w	$t0, $a5, 0
	bgeu	$a2, $t0, .LBB3_92
	b	.LBB3_97
.LBB3_96:                               #   in Loop: Header=BB3_93 Depth=1
	move	$t1, $a5
	bstrpick.d	$a5, $t1, 31, 11
	mul.d	$a5, $a5, $t0
	addi.w	$t0, $a5, 0
	bgeu	$a2, $t0, .LBB3_92
.LBB3_97:                               #   in Loop: Header=BB3_93 Depth=1
	slli.d	$a7, $a7, 1
	addi.w	$a6, $a6, -1
	bnez	$a6, .LBB3_93
	b	.LBB3_48
.Lfunc_end3:
	.size	LzmaDec_TryDummy, .Lfunc_end3-LzmaDec_TryDummy
                                        # -- End function
	.p2align	5                               # -- Begin function LzmaDec_DecodeReal2
	.type	LzmaDec_DecodeReal2,@function
LzmaDec_DecodeReal2:                    # @LzmaDec_DecodeReal2
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	move	$t1, $a1
	ld.d	$t4, $a0, 48
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a5, $zero, 2048
	ori	$a7, $zero, 256
	st.d	$t1, $sp, 8                     # 8-byte Folded Spill
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #       Child Loop BB4_54 Depth 3
                                        #       Child Loop BB4_121 Depth 3
                                        #       Child Loop BB4_94 Depth 3
                                        #       Child Loop BB4_128 Depth 3
                                        #       Child Loop BB4_132 Depth 3
                                        #       Child Loop BB4_135 Depth 3
                                        #       Child Loop BB4_106 Depth 3
                                        #       Child Loop BB4_28 Depth 3
                                        #       Child Loop BB4_12 Depth 3
                                        #     Child Loop BB4_167 Depth 2
	ld.w	$s7, $a0, 68
	ld.w	$s4, $a0, 64
	move	$ra, $t1
	bnez	$s7, .LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	ld.w	$a1, $a0, 12
	sub.d	$a1, $a1, $s4
	sub.d	$a2, $t1, $t4
	bstrpick.d	$a1, $a1, 31, 0
	sltu	$a2, $a1, $a2
	add.d	$a1, $t4, $a1
	masknez	$a3, $t1, $a2
	maskeqz	$a1, $a1, $a2
	or	$ra, $a1, $a3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	move	$s2, $zero
	ld.d	$t0, $a0, 16
	ld.w	$s0, $a0, 72
	ld.w	$s5, $a0, 76
	ld.w	$a1, $a0, 80
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.wu	$a1, $a0, 8
	ld.w	$a2, $a0, 84
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.wu	$a3, $a0, 4
	ld.w	$a2, $a0, 88
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sll.w	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	sll.w	$a1, $a2, $a3
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 0
	ld.d	$fp, $a0, 24
	ld.d	$t3, $a0, 56
	ld.d	$t1, $a0, 32
	ld.w	$s1, $a0, 40
	ld.w	$s3, $a0, 44
	addi.d	$t5, $t0, 384
	addi.d	$a1, $t0, 408
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a1, $t0, 432
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $t0, 456
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $t0, 480
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $t0, 2047
	addi.d	$a3, $a1, 617
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a3, $t0, 1636
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a3, $t0, 864
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a3, $t0, 1604
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 1645
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 32
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_4:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_54 Depth 3
                                        #       Child Loop BB4_121 Depth 3
                                        #       Child Loop BB4_94 Depth 3
                                        #       Child Loop BB4_128 Depth 3
                                        #       Child Loop BB4_132 Depth 3
                                        #       Child Loop BB4_135 Depth 3
                                        #       Child Loop BB4_106 Depth 3
                                        #       Child Loop BB4_28 Depth 3
                                        #       Child Loop BB4_12 Depth 3
	bstrpick.d	$a1, $s1, 31, 24
	bnez	$a1, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$s1, $s1, 8
	slli.w	$a3, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a3, $a1
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	and	$t7, $s4, $a1
	slli.d	$a1, $s0, 4
	bstrpick.d	$t2, $a1, 31, 4
	slli.d	$a1, $t2, 5
	add.d	$a4, $t0, $a1
	addi.w	$a3, $t7, 0
	slli.d	$t8, $a3, 1
	ldx.hu	$a6, $a4, $t8
	bstrpick.d	$a1, $s1, 31, 11
	mul.d	$a1, $a1, $a6
	addi.w	$t6, $a1, 0
	alsl.d	$a4, $a3, $a4, 1
	bgeu	$s3, $t6, .LBB4_18
# %bb.7:                                #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a3, $a5, $a6
	srli.d	$a3, $a3, 5
	add.d	$a3, $a6, $a3
	or	$a6, $s4, $s7
	st.h	$a3, $a4, 0
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	move	$t7, $t2
	beqz	$a6, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_4 Depth=2
	sltui	$a3, $t4, 1
	masknez	$a4, $t4, $a3
	maskeqz	$a3, $t3, $a3
	or	$a3, $a3, $a4
	add.d	$a3, $fp, $a3
	ld.bu	$a3, $a3, -1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	and	$a4, $s4, $a2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sll.w	$a4, $a4, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	srl.w	$a3, $a3, $a2
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a3, $a3, 9
	add.d	$t7, $t2, $a3
.LBB4_9:                                #   in Loop: Header=BB4_4 Depth=2
	addi.w	$s1, $s0, 0
	ori	$a2, $zero, 6
	bltu	$a2, $s1, .LBB4_25
# %bb.10:                               # %.preheader.preheader
                                        #   in Loop: Header=BB4_4 Depth=2
	ori	$a4, $zero, 1
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=3
	sub.w	$s3, $s3, $a1
	sub.w	$a1, $a6, $a1
	srli.d	$a6, $t2, 5
	sub.d	$a6, $t2, $a6
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a4, $t7, 1
	st.h	$a6, $a4, 0
	move	$a4, $a3
	bgeu	$a3, $a7, .LBB4_17
.LBB4_12:                               # %.preheader
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a3, $a1, 31, 24
	bnez	$a3, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=3
	ld.bu	$a3, $t1, 0
	slli.d	$a6, $a1, 8
	slli.w	$a1, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a1, $a3
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               #   in Loop: Header=BB4_12 Depth=3
	move	$a6, $a1
.LBB4_15:                               #   in Loop: Header=BB4_12 Depth=3
	slli.d	$a3, $a4, 1
	ldx.hu	$t2, $t7, $a3
	bstrpick.d	$a1, $a6, 31, 11
	mul.d	$a1, $a1, $t2
	addi.w	$t6, $a1, 0
	bgeu	$s3, $t6, .LBB4_11
# %bb.16:                               #   in Loop: Header=BB4_12 Depth=3
	sub.d	$a6, $a5, $t2
	bstrpick.d	$a6, $a6, 31, 5
	add.d	$a6, $t2, $a6
	alsl.d	$a4, $a4, $t7, 1
	st.h	$a6, $a4, 0
	move	$a4, $a3
	bltu	$a3, $a7, .LBB4_12
.LBB4_17:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB4_4 Depth=2
	addi.d	$a2, $s1, -3
	sltu	$a4, $s1, $a2
	masknez	$s0, $a2, $a4
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_18:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s6, $s1, $a1
	sub.w	$s3, $s3, $a1
	srli.d	$a1, $a6, 5
	sub.d	$a1, $a6, $a1
	bstrpick.d	$a2, $s6, 31, 24
	st.h	$a1, $a4, 0
	bnez	$a2, .LBB4_20
# %bb.19:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$s6, $s6, 8
	slli.w	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_20:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$s1, $s0, 31, 0
	slli.d	$a4, $s1, 1
	ldx.hu	$t6, $t5, $a4
	bstrpick.d	$a1, $s6, 31, 11
	mul.d	$a1, $a1, $t6
	addi.w	$a2, $a1, 0
	alsl.d	$a6, $s1, $t5, 1
	bgeu	$s3, $a2, .LBB4_33
# %bb.21:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $t6
	srli.d	$a2, $a2, 5
	add.d	$a2, $t6, $a2
	st.h	$a2, $a6, 0
	addi.w	$s0, $s0, 12
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.hu	$a4, $a3, 0
	bstrpick.d	$a2, $a1, 31, 24
	bnez	$a2, .LBB4_23
.LBB4_22:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$a1, $a1, 8
	slli.w	$a6, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a6, $a2
.LBB4_23:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $a1, 31, 11
	mul.d	$s1, $a2, $a4
	addi.w	$a2, $s1, 0
	bgeu	$s3, $a2, .LBB4_43
# %bb.24:                               #   in Loop: Header=BB4_4 Depth=2
	move	$a1, $zero
	sub.d	$a2, $a5, $a4
	srli.d	$a2, $a2, 5
	add.d	$a2, $a4, $a2
	st.h	$a2, $a3, 0
	slli.d	$a2, $t7, 4
	bstrpick.d	$a2, $a2, 32, 4
	alsl.d	$a2, $a2, $a3, 4
	addi.d	$a3, $a2, 4
	ori	$a4, $zero, 8
	b	.LBB4_52
	.p2align	4, , 16
.LBB4_25:                               #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a3, $a0, 24
	bstrpick.d	$a4, $s5, 31, 0
	sub.d	$a6, $t4, $a4
	sltu	$a4, $t4, $a4
	maskeqz	$a4, $t3, $a4
	add.d	$a3, $a3, $a6
	ldx.bu	$a4, $a3, $a4
	ori	$t8, $zero, 256
	ori	$t2, $zero, 1
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_26:                               #   in Loop: Header=BB4_28 Depth=3
	sub.w	$s3, $s3, $a1
	sub.w	$a1, $a6, $a1
	srli.d	$a2, $t6, 5
	sub.d	$a6, $t6, $a2
	addi.d	$a3, $a3, 1
.LBB4_27:                               #   in Loop: Header=BB4_28 Depth=3
	alsl.d	$a2, $t2, $s8, 1
	st.h	$a6, $a2, 0
	move	$t2, $a3
	move	$t8, $s6
	bgeu	$a3, $a7, .LBB4_41
.LBB4_28:                               #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a3, $a1, 31, 24
	bnez	$a3, .LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_28 Depth=3
	ld.bu	$a3, $t1, 0
	slli.d	$a6, $a1, 8
	slli.w	$a1, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a1, $a3
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_30:                               #   in Loop: Header=BB4_28 Depth=3
	move	$a6, $a1
.LBB4_31:                               #   in Loop: Header=BB4_28 Depth=3
	slli.w	$a4, $a4, 1
	and	$s6, $a4, $t8
	alsl.d	$a1, $t8, $t7, 1
	alsl.d	$s8, $s6, $a1, 1
	slli.d	$a3, $t2, 1
	ldx.hu	$t6, $s8, $a3
	bstrpick.d	$a1, $a6, 31, 11
	mul.d	$a1, $a1, $t6
	addi.w	$a2, $a1, 0
	bgeu	$s3, $a2, .LBB4_26
# %bb.32:                               #   in Loop: Header=BB4_28 Depth=3
	sub.d	$a2, $a5, $t6
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a6, $t6, $a2
	xor	$s6, $s6, $t8
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_33:                               #   in Loop: Header=BB4_4 Depth=2
	srli.d	$a2, $t6, 5
	sub.d	$a2, $t6, $a2
	or	$t6, $s4, $s7
	st.h	$a2, $a6, 0
	beqz	$t6, .LBB4_173
# %bb.34:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s6, $s6, $a1
	bstrpick.d	$a2, $s6, 31, 24
	sub.w	$s3, $s3, $a1
	bnez	$a2, .LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$s6, $s6, 8
	slli.w	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_36:                               #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$t6, $a6, $a4
	bstrpick.d	$a1, $s6, 31, 11
	mul.d	$a1, $a1, $t6
	addi.w	$a2, $a1, 0
	alsl.d	$a6, $s1, $a6, 1
	bgeu	$s3, $a2, .LBB4_47
# %bb.37:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $t6
	srli.d	$a2, $a2, 5
	add.d	$a2, $t6, $a2
	bstrpick.d	$a4, $a1, 31, 24
	st.h	$a2, $a6, 0
	bnez	$a4, .LBB4_39
# %bb.38:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$a1, $a1, 8
	slli.w	$a4, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a4, $a2
.LBB4_39:                               #   in Loop: Header=BB4_4 Depth=2
	slli.d	$a2, $t2, 4
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a4, 1
	ldx.hu	$a4, $a2, $t8
	bstrpick.d	$a6, $a1, 31, 11
	mul.d	$s1, $a6, $a4
	addi.w	$a6, $s1, 0
	alsl.d	$a3, $a3, $a2, 1
	bgeu	$s3, $a6, .LBB4_113
# %bb.40:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a1, $a5, $a4
	srli.d	$a1, $a1, 5
	add.d	$a1, $a4, $a1
	st.h	$a1, $a3, 0
	bstrpick.d	$a1, $s5, 31, 0
	sub.d	$a2, $t4, $a1
	sltu	$a1, $t4, $a1
	maskeqz	$a1, $t3, $a1
	add.d	$a2, $fp, $a2
	ldx.b	$a1, $a2, $a1
	stx.b	$a1, $fp, $t4
	addi.d	$t4, $t4, 1
	addi.w	$a1, $s0, 0
	sltui	$a1, $a1, 7
	ori	$a2, $zero, 11
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 9
	maskeqz	$a1, $a3, $a1
	or	$s0, $a1, $a2
	ori	$t7, $zero, 1
	add.w	$s4, $t7, $s4
	bltu	$t4, $ra, .LBB4_108
	b	.LBB4_158
	.p2align	4, , 16
.LBB4_41:                               # %.loopexit.loopexit1155.i
                                        #   in Loop: Header=BB4_4 Depth=2
	sltui	$a2, $s1, 10
	addi.d	$a4, $zero, -6
	masknez	$a4, $a4, $a2
	addi.d	$a6, $zero, -3
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a4
	add.w	$s0, $a2, $s0
.LBB4_42:                               # %.loopexit.i
                                        #   in Loop: Header=BB4_4 Depth=2
	stx.b	$a3, $fp, $t4
	addi.d	$t4, $t4, 1
	ori	$t7, $zero, 1
	move	$s1, $a1
	add.w	$s4, $t7, $s4
	bltu	$t4, $ra, .LBB4_108
	b	.LBB4_158
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$a1, $a1, $s1
	sub.w	$s3, $s3, $s1
	srli.d	$a2, $a4, 5
	sub.d	$a2, $a4, $a2
	bstrpick.d	$a4, $a1, 31, 24
	st.h	$a2, $a3, 0
	bnez	$a4, .LBB4_45
# %bb.44:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$a1, $a1, 8
	slli.w	$a4, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a4, $a2
.LBB4_45:                               #   in Loop: Header=BB4_4 Depth=2
	ld.hu	$a4, $a3, 2
	bstrpick.d	$a2, $a1, 31, 11
	mul.d	$s1, $a2, $a4
	addi.w	$a2, $s1, 0
	bgeu	$s3, $a2, .LBB4_51
# %bb.46:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a1, $a5, $a4
	srli.d	$a1, $a1, 5
	add.d	$a1, $a4, $a1
	st.h	$a1, $a3, 2
	slli.d	$a1, $t7, 4
	bstrpick.d	$a1, $a1, 32, 4
	alsl.d	$a1, $a1, $a3, 4
	addi.d	$a3, $a1, 260
	ori	$a4, $zero, 8
	ori	$a1, $zero, 8
	b	.LBB4_52
.LBB4_47:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$a3, $s6, $a1
	sub.w	$s3, $s3, $a1
	srli.d	$a1, $t6, 5
	sub.d	$a1, $t6, $a1
	bstrpick.d	$a2, $a3, 31, 24
	st.h	$a1, $a6, 0
	bnez	$a2, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$a3, $a3, 8
	slli.w	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_49:                               #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ldx.hu	$t2, $a6, $a4
	bstrpick.d	$a1, $a3, 31, 11
	mul.d	$a1, $a1, $t2
	addi.w	$a2, $a1, 0
	alsl.d	$a6, $s1, $a6, 1
	bgeu	$s3, $a2, .LBB4_114
# %bb.50:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $t2
	srli.d	$a2, $a2, 5
	add.d	$a2, $t2, $a2
	st.h	$a2, $a6, 0
	move	$a4, $s5
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_139
.LBB4_51:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $s1
	sub.w	$s1, $a1, $s1
	srli.d	$a1, $a4, 5
	sub.d	$a1, $a4, $a1
	st.h	$a1, $a3, 2
	addi.d	$a3, $a3, 516
	ori	$a1, $zero, 16
	ori	$a4, $zero, 256
.LBB4_52:                               #   in Loop: Header=BB4_4 Depth=2
	ori	$t2, $zero, 1
	b	.LBB4_54
	.p2align	4, , 16
.LBB4_53:                               #   in Loop: Header=BB4_54 Depth=3
	sub.w	$s3, $s3, $s1
	sub.w	$s1, $a6, $s1
	srli.d	$a2, $t8, 5
	sub.d	$a6, $t8, $a2
	ori	$t2, $t2, 1
	alsl.d	$a2, $t7, $a3, 1
	addi.w	$t6, $t2, 0
	st.h	$a6, $a2, 0
	bgeu	$t6, $a4, .LBB4_59
.LBB4_54:                               #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t7, $t2, 31, 0
	slli.d	$a2, $t7, 1
	ldx.hu	$t8, $a3, $a2
	bstrpick.d	$a2, $s1, 31, 24
	bnez	$a2, .LBB4_56
# %bb.55:                               #   in Loop: Header=BB4_54 Depth=3
	ld.bu	$a2, $t1, 0
	slli.d	$a6, $s1, 8
	slli.w	$t6, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $t6, $a2
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_56:                               #   in Loop: Header=BB4_54 Depth=3
	move	$a6, $s1
.LBB4_57:                               #   in Loop: Header=BB4_54 Depth=3
	bstrpick.d	$a2, $a6, 31, 11
	mul.d	$s1, $a2, $t8
	addi.w	$a2, $s1, 0
	slli.d	$t2, $t2, 1
	bgeu	$s3, $a2, .LBB4_53
# %bb.58:                               #   in Loop: Header=BB4_54 Depth=3
	sub.d	$a2, $a5, $t8
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a6, $t8, $a2
	alsl.d	$a2, $t7, $a3, 1
	addi.w	$t6, $t2, 0
	st.h	$a6, $a2, 0
	bltu	$t6, $a4, .LBB4_54
.LBB4_59:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $t2, $a4
	add.w	$s2, $a2, $a1
	ori	$a1, $zero, 12
	bltu	$s0, $a1, .LBB4_103
# %bb.60:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a1, $s1, 31, 24
	bnez	$a1, .LBB4_62
# %bb.61:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$s1, $s1, 8
	slli.w	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_62:                               #   in Loop: Header=BB4_4 Depth=2
	sltui	$a1, $s2, 3
	ori	$a2, $zero, 3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$t7, $a2, $a1
	ld.hu	$a1, $t7, 2
	bstrpick.d	$a2, $s1, 31, 11
	mul.d	$a4, $a2, $a1
	addi.w	$a2, $a4, 0
	bgeu	$s3, $a2, .LBB4_64
# %bb.63:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $a1
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a3, $a1, $a2
	ori	$a1, $zero, 2
	bstrpick.d	$a2, $a4, 31, 24
	st.h	$a3, $t7, 2
	beqz	$a2, .LBB4_65
	b	.LBB4_66
.LBB4_64:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $a4
	sub.w	$a4, $s1, $a4
	srli.d	$a2, $a1, 5
	sub.d	$a3, $a1, $a2
	ori	$a1, $zero, 3
	bstrpick.d	$a2, $a4, 31, 24
	st.h	$a3, $t7, 2
	bnez	$a2, .LBB4_66
.LBB4_65:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$a4, $a4, 8
	slli.w	$a3, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a3, $a2
.LBB4_66:                               #   in Loop: Header=BB4_4 Depth=2
	slli.d	$a3, $a1, 1
	ldx.hu	$a6, $t7, $a3
	bstrpick.d	$a2, $a4, 31, 11
	mul.d	$t2, $a2, $a6
	addi.w	$a2, $t2, 0
	bgeu	$s3, $a2, .LBB4_68
# %bb.67:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $a6
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a4, $a6, $a2
	b	.LBB4_69
.LBB4_68:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $t2
	sub.w	$t2, $a4, $t2
	srli.d	$a2, $a6, 5
	sub.d	$a4, $a6, $a2
	ori	$a3, $a3, 1
.LBB4_69:                               #   in Loop: Header=BB4_4 Depth=2
	alsl.d	$a1, $a1, $t7, 1
	st.h	$a4, $a1, 0
	slli.d	$a1, $a3, 1
	ldx.hu	$t8, $t7, $a1
	bstrpick.d	$a2, $t2, 31, 24
	bnez	$a2, .LBB4_71
# %bb.70:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$t2, $t2, 8
	slli.w	$a4, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a4, $a2
.LBB4_71:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $t2, 31, 11
	mul.d	$a4, $a2, $t8
	addi.w	$a2, $a4, 0
	bgeu	$s3, $a2, .LBB4_73
# %bb.72:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $t8
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a6, $t8, $a2
	b	.LBB4_74
.LBB4_73:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $a4
	sub.w	$a4, $t2, $a4
	srli.d	$a2, $t8, 5
	sub.d	$a6, $t8, $a2
	ori	$a1, $a1, 1
.LBB4_74:                               #   in Loop: Header=BB4_4 Depth=2
	alsl.d	$a2, $a3, $t7, 1
	st.h	$a6, $a2, 0
	slli.d	$a3, $a1, 1
	ldx.hu	$t8, $t7, $a3
	bstrpick.d	$a2, $a4, 31, 24
	bnez	$a2, .LBB4_76
# %bb.75:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$a4, $a4, 8
	slli.w	$a6, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a6, $a2
.LBB4_76:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $a4, 31, 11
	mul.d	$t2, $a2, $t8
	addi.w	$a2, $t2, 0
	bgeu	$s3, $a2, .LBB4_78
# %bb.77:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $t8
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a4, $t8, $a2
	b	.LBB4_79
.LBB4_78:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $t2
	sub.w	$t2, $a4, $t2
	srli.d	$a2, $t8, 5
	sub.d	$a4, $t8, $a2
	ori	$a3, $a3, 1
.LBB4_79:                               #   in Loop: Header=BB4_4 Depth=2
	alsl.d	$a1, $a1, $t7, 1
	st.h	$a4, $a1, 0
	slli.d	$a4, $a3, 1
	ldx.hu	$a1, $t7, $a4
	bstrpick.d	$a2, $t2, 31, 24
	bnez	$a2, .LBB4_81
# %bb.80:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$t2, $t2, 8
	slli.w	$a6, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a6, $a2
.LBB4_81:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $t2, 31, 11
	mul.d	$t8, $a2, $a1
	addi.w	$a2, $t8, 0
	bgeu	$s3, $a2, .LBB4_83
# %bb.82:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $a1
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a1, $a1, $a2
	b	.LBB4_84
.LBB4_83:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $t8
	sub.w	$t8, $t2, $t8
	srli.d	$a2, $a1, 5
	sub.d	$a1, $a1, $a2
	ori	$a4, $a4, 1
.LBB4_84:                               #   in Loop: Header=BB4_4 Depth=2
	alsl.d	$a2, $a3, $t7, 1
	st.h	$a1, $a2, 0
	slli.d	$s1, $a4, 1
	ldx.hu	$a3, $t7, $s1
	bstrpick.d	$a1, $t8, 31, 24
	bnez	$a1, .LBB4_86
# %bb.85:                               #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$t8, $t8, 8
	slli.w	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_86:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a1, $t8, 31, 11
	mul.d	$a1, $a1, $a3
	addi.w	$a2, $a1, 0
	bgeu	$s3, $a2, .LBB4_88
# %bb.87:                               #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $a3
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a3, $a3, $a2
	b	.LBB4_89
.LBB4_88:                               #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $a1
	sub.w	$a1, $t8, $a1
	srli.d	$a2, $a3, 5
	sub.d	$a3, $a3, $a2
	ori	$s1, $s1, 1
.LBB4_89:                               #   in Loop: Header=BB4_4 Depth=2
	alsl.d	$a2, $a4, $t7, 1
	addi.d	$t7, $s1, -64
	st.h	$a3, $a2, 0
	ori	$a2, $zero, 4
	bltu	$t7, $a2, .LBB4_98
# %bb.90:                               #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a3, $t7, 31, 1
	ori	$a2, $zero, 1
	bstrins.d	$s1, $a2, 63, 1
	ori	$a2, $zero, 13
	bltu	$a2, $t7, .LBB4_118
# %bb.91:                               #   in Loop: Header=BB4_4 Depth=2
	addi.d	$a3, $a3, -1
	slli.d	$a2, $t7, 1
	sll.w	$t7, $s1, $a3
	bstrpick.d	$a4, $t7, 31, 0
	alsl.d	$a4, $a4, $t0, 1
	sub.d	$a2, $a4, $a2
	addi.d	$a4, $a2, 1374
	ori	$t2, $zero, 1
	ori	$t8, $zero, 1
	b	.LBB4_94
	.p2align	4, , 16
.LBB4_92:                               #   in Loop: Header=BB4_94 Depth=3
	sub.w	$s3, $s3, $s1
	sub.w	$s1, $a1, $s1
	srli.d	$a1, $a6, 5
	sub.d	$a1, $a6, $a1
	ori	$t8, $t8, 1
	or	$t7, $t2, $t7
.LBB4_93:                               #   in Loop: Header=BB4_94 Depth=3
	alsl.d	$a2, $s6, $a4, 1
	st.h	$a1, $a2, 0
	addi.w	$a3, $a3, -1
	slli.d	$t2, $t2, 1
	move	$a1, $s1
	beqz	$a3, .LBB4_99
.LBB4_94:                               #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a2, $a1, 31, 24
	bnez	$a2, .LBB4_96
# %bb.95:                               #   in Loop: Header=BB4_94 Depth=3
	ld.bu	$a2, $t1, 0
	slli.d	$a1, $a1, 8
	slli.w	$a6, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a6, $a2
.LBB4_96:                               #   in Loop: Header=BB4_94 Depth=3
	bstrpick.d	$s6, $t8, 31, 0
	slli.d	$a2, $s6, 1
	ldx.hu	$a6, $a4, $a2
	bstrpick.d	$a2, $a1, 31, 11
	mul.d	$s1, $a2, $a6
	addi.w	$a2, $s1, 0
	slli.d	$t8, $t8, 1
	bgeu	$s3, $a2, .LBB4_92
# %bb.97:                               #   in Loop: Header=BB4_94 Depth=3
	sub.d	$a1, $a5, $a6
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a6, $a1
	b	.LBB4_93
.LBB4_98:                               #   in Loop: Header=BB4_4 Depth=2
	move	$s1, $a1
.LBB4_99:                               # %.thread1047.i
                                        #   in Loop: Header=BB4_4 Depth=2
	addi.w	$a1, $t7, 0
	beqz	$s7, .LBB4_101
# %bb.100:                              #   in Loop: Header=BB4_4 Depth=2
	bltu	$a1, $s7, .LBB4_102
	b	.LBB4_173
.LBB4_101:                              #   in Loop: Header=BB4_4 Depth=2
	bgeu	$a1, $s4, .LBB4_173
.LBB4_102:                              #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	addi.w	$s5, $t7, 1
	sltui	$a1, $s0, 19
	ori	$a2, $zero, 10
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$s0, $a1, $a2
.LBB4_103:                              #   in Loop: Header=BB4_4 Depth=2
	beq	$ra, $t4, .LBB4_173
# %bb.104:                              #   in Loop: Header=BB4_4 Depth=2
	addi.d	$a2, $s2, 2
	sub.d	$a1, $ra, $t4
	bstrpick.d	$a3, $a2, 31, 0
	sltu	$a4, $a1, $a3
	maskeqz	$a1, $a1, $a4
	masknez	$a3, $a3, $a4
	or	$t7, $a1, $a3
	bstrpick.d	$a6, $s5, 31, 0
	sub.d	$a1, $t4, $a6
	sltu	$a3, $t4, $a6
	maskeqz	$t2, $t3, $a3
	add.d	$a1, $t2, $a1
	add.d	$a3, $a1, $t7
	sub.w	$s2, $a2, $t7
	bgeu	$t3, $a3, .LBB4_109
# %bb.105:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=2
	move	$a3, $t7
	.p2align	4, , 16
.LBB4_106:                              # %.preheader.i
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a2, $fp, $a1
	stx.b	$a2, $fp, $t4
	addi.d	$t4, $t4, 1
	addi.d	$a1, $a1, 1
	xor	$a2, $a1, $t3
	sltui	$a2, $a2, 1
	addi.w	$a3, $a3, -1
	masknez	$a1, $a1, $a2
	bnez	$a3, .LBB4_106
# %bb.107:                              # %.loopexit1142.i
                                        #   in Loop: Header=BB4_4 Depth=2
	add.w	$s4, $t7, $s4
	bgeu	$t4, $ra, .LBB4_158
.LBB4_108:                              # %.loopexit1142.i
                                        #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bltu	$t1, $a1, .LBB4_4
	b	.LBB4_158
	.p2align	4, , 16
.LBB4_109:                              # %iter.check
                                        #   in Loop: Header=BB4_4 Depth=2
	add.d	$a3, $fp, $t4
	sub.d	$a1, $t2, $a6
	move	$a4, $a3
	ori	$a2, $zero, 16
	bltu	$t7, $a2, .LBB4_134
# %bb.110:                              # %iter.check
                                        #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a6, $t2
	move	$a4, $a3
	ori	$a6, $zero, 64
	bltu	$a2, $a6, .LBB4_134
# %bb.111:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_4 Depth=2
	ori	$a2, $zero, 64
	bgeu	$t7, $a2, .LBB4_127
# %bb.112:                              #   in Loop: Header=BB4_4 Depth=2
	move	$t2, $zero
	b	.LBB4_131
.LBB4_113:                              #   in Loop: Header=BB4_4 Depth=2
	sub.w	$a1, $a1, $s1
	sub.w	$s3, $s3, $s1
	srli.d	$a2, $a4, 5
	sub.d	$a2, $a4, $a2
	st.h	$a2, $a3, 0
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_139
.LBB4_114:                              #   in Loop: Header=BB4_4 Depth=2
	sub.w	$a3, $a3, $a1
	sub.w	$s3, $s3, $a1
	srli.d	$a1, $t2, 5
	sub.d	$a1, $t2, $a1
	bstrpick.d	$a2, $a3, 31, 24
	st.h	$a1, $a6, 0
	bnez	$a2, .LBB4_116
# %bb.115:                              #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$a3, $a3, 8
	slli.w	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_116:                              #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.hu	$a4, $a1, $a4
	bstrpick.d	$a1, $a3, 31, 11
	mul.d	$a1, $a1, $a4
	addi.w	$a2, $a1, 0
	bgeu	$s3, $a2, .LBB4_137
# %bb.117:                              #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $a4
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a3, $a4, $a2
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	b	.LBB4_138
.LBB4_118:                              #   in Loop: Header=BB4_4 Depth=2
	addi.d	$a3, $a3, -5
	b	.LBB4_121
	.p2align	4, , 16
.LBB4_119:                              #   in Loop: Header=BB4_121 Depth=3
	ld.bu	$a2, $t1, 0
	slli.d	$a4, $a1, 8
	slli.d	$a1, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a1, $a2
.LBB4_120:                              #   in Loop: Header=BB4_121 Depth=3
	bstrpick.d	$a1, $a4, 31, 1
	sub.w	$a2, $s3, $a1
	srai.d	$a6, $a2, 31
	alsl.d	$t2, $s1, $a6, 1
	addi.w	$s1, $t2, 1
	and	$a6, $a6, $a1
	addi.w	$a3, $a3, -1
	add.w	$s3, $a6, $a2
	beqz	$a3, .LBB4_123
.LBB4_121:                              #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a2, $a1, 31, 24
	beqz	$a2, .LBB4_119
# %bb.122:                              #   in Loop: Header=BB4_121 Depth=3
	move	$a4, $a1
	b	.LBB4_120
.LBB4_123:                              #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $a4, 31, 25
	bnez	$a2, .LBB4_125
# %bb.124:                              #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$a1, $a1, 8
	slli.w	$a3, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a3, $a2
.LBB4_125:                              #   in Loop: Header=BB4_4 Depth=2
	ld.hu	$a3, $t0, 1606
	bstrpick.d	$a2, $a1, 31, 11
	mul.d	$a4, $a2, $a3
	addi.w	$a2, $a4, 0
	slli.w	$t7, $s1, 4
	bgeu	$s3, $a2, .LBB4_140
# %bb.126:                              #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a1, $a5, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a3, $a1
	ori	$a3, $zero, 2
	bstrpick.d	$a2, $a4, 31, 24
	st.h	$a1, $t0, 1606
	beqz	$a2, .LBB4_141
	b	.LBB4_142
.LBB4_127:                              # %vector.ph
                                        #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $t7, 31, 6
	slli.d	$t2, $a2, 6
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a4, $a2, $t4
	move	$a6, $t2
	.p2align	4, , 16
.LBB4_128:                              # %vector.body
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a4, $a1
	xvld	$xr0, $a2, -32
	xvldx	$xr1, $a4, $a1
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -64
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB4_128
# %bb.129:                              # %middle.block
                                        #   in Loop: Header=BB4_4 Depth=2
	beq	$t7, $t2, .LBB4_136
# %bb.130:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_4 Depth=2
	andi	$a2, $t7, 48
	beqz	$a2, .LBB4_156
.LBB4_131:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $t7, 31, 4
	slli.d	$a6, $a2, 4
	alsl.d	$a4, $a2, $a3, 4
	sub.d	$t8, $t2, $a6
	add.d	$a2, $t4, $t2
	add.d	$t2, $fp, $a2
	.p2align	4, , 16
.LBB4_132:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $t2, $a1
	vst	$vr0, $t2, 0
	addi.d	$t8, $t8, 16
	addi.d	$t2, $t2, 16
	bnez	$t8, .LBB4_132
# %bb.133:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_4 Depth=2
	beq	$t7, $a6, .LBB4_136
.LBB4_134:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB4_4 Depth=2
	add.d	$a3, $a3, $t7
	.p2align	4, , 16
.LBB4_135:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a2, $a4, $a1
	st.b	$a2, $a4, 0
	addi.d	$a4, $a4, 1
	bne	$a4, $a3, .LBB4_135
.LBB4_136:                              # %.loopexit1142.loopexit1156.i
                                        #   in Loop: Header=BB4_4 Depth=2
	add.d	$t4, $t7, $t4
	add.w	$s4, $t7, $s4
	bltu	$t4, $ra, .LBB4_108
	b	.LBB4_158
.LBB4_137:                              #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $a1
	sub.w	$a1, $a3, $a1
	srli.d	$a2, $a4, 5
	sub.d	$a3, $a4, $a2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
.LBB4_138:                              #   in Loop: Header=BB4_4 Depth=2
	move	$a4, $s5
	move	$s5, $a6
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a2, $s1, $a2, 1
	st.h	$a3, $a2, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
.LBB4_139:                              #   in Loop: Header=BB4_4 Depth=2
	addi.w	$a2, $s0, 0
	sltui	$a2, $a2, 7
	ori	$a3, $zero, 11
	masknez	$a3, $a3, $a2
	ori	$a6, $zero, 8
	maskeqz	$a2, $a6, $a2
	or	$s0, $a2, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	ld.hu	$a4, $a3, 0
	bstrpick.d	$a2, $a1, 31, 24
	beqz	$a2, .LBB4_22
	b	.LBB4_23
.LBB4_140:                              #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $a4
	sub.w	$a4, $a1, $a4
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
	ori	$t7, $t7, 1
	ori	$a3, $zero, 3
	bstrpick.d	$a2, $a4, 31, 24
	st.h	$a1, $t0, 1606
	bnez	$a2, .LBB4_142
.LBB4_141:                              #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a1, $t1, 0
	slli.d	$a4, $a4, 8
	slli.w	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_142:                              #   in Loop: Header=BB4_4 Depth=2
	slli.d	$a1, $a3, 1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.hu	$a6, $a2, $a1
	bstrpick.d	$a2, $a4, 31, 11
	mul.d	$t2, $a2, $a6
	addi.w	$a2, $t2, 0
	bgeu	$s3, $a2, .LBB4_144
# %bb.143:                              #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $a6
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a4, $a6, $a2
	b	.LBB4_145
.LBB4_144:                              #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $t2
	sub.w	$t2, $a4, $t2
	srli.d	$a2, $a6, 5
	sub.d	$a4, $a6, $a2
	addi.d	$a1, $a1, 1
	ori	$t7, $t7, 2
.LBB4_145:                              #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a6, 1
	st.h	$a4, $a2, 0
	slli.d	$a3, $a1, 1
	ldx.hu	$t8, $a6, $a3
	bstrpick.d	$a2, $t2, 31, 24
	bnez	$a2, .LBB4_147
# %bb.146:                              #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$t2, $t2, 8
	slli.w	$a4, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a4, $a2
.LBB4_147:                              #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $t2, 31, 11
	mul.d	$a4, $a2, $t8
	addi.w	$a2, $a4, 0
	bgeu	$s3, $a2, .LBB4_149
# %bb.148:                              #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $t8
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a6, $t8, $a2
	b	.LBB4_150
.LBB4_149:                              #   in Loop: Header=BB4_4 Depth=2
	sub.w	$s3, $s3, $a4
	sub.w	$a4, $t2, $a4
	srli.d	$a2, $t8, 5
	sub.d	$a6, $t8, $a2
	addi.d	$a3, $a3, 1
	ori	$t7, $t7, 4
.LBB4_150:                              #   in Loop: Header=BB4_4 Depth=2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 1
	st.h	$a6, $a1, 0
	slli.d	$a1, $a3, 1
	ldx.hu	$a1, $a2, $a1
	bstrpick.d	$a2, $a4, 31, 24
	bnez	$a2, .LBB4_152
# %bb.151:                              #   in Loop: Header=BB4_4 Depth=2
	ld.bu	$a2, $t1, 0
	slli.d	$a4, $a4, 8
	slli.w	$a6, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a6, $a2
.LBB4_152:                              #   in Loop: Header=BB4_4 Depth=2
	bstrpick.d	$a2, $a4, 31, 11
	mul.d	$s1, $a2, $a1
	addi.w	$a2, $s1, 0
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a6, $a3, $a6, 1
	bgeu	$s3, $a2, .LBB4_154
# %bb.153:                              # %.thread.i
                                        #   in Loop: Header=BB4_4 Depth=2
	sub.d	$a2, $a5, $a1
	srli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	st.h	$a1, $a6, 0
	b	.LBB4_99
.LBB4_154:                              #   in Loop: Header=BB4_4 Depth=2
	sub.w	$a3, $a4, $s1
	sub.w	$s3, $s3, $s1
	srli.d	$a2, $a1, 5
	sub.d	$a1, $a1, $a2
	ori	$t7, $t7, 8
	st.h	$a1, $a6, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$t7, $a1, .LBB4_157
# %bb.155:                              #   in Loop: Header=BB4_4 Depth=2
	move	$s1, $a3
	b	.LBB4_99
.LBB4_156:                              #   in Loop: Header=BB4_4 Depth=2
	add.d	$a4, $a3, $t2
	b	.LBB4_134
.LBB4_157:                              #   in Loop: Header=BB4_1 Depth=1
	addi.w	$s2, $s2, 274
	addi.d	$s0, $s0, -12
	move	$s1, $a3
	.p2align	4, , 16
.LBB4_158:                              # %.loopexit1144.i
                                        #   in Loop: Header=BB4_1 Depth=1
	bstrpick.d	$a1, $s1, 31, 24
	bnez	$a1, .LBB4_160
# %bb.159:                              #   in Loop: Header=BB4_1 Depth=1
	ld.bu	$a1, $t1, 0
	slli.d	$s1, $s1, 8
	slli.d	$a2, $s3, 8
	addi.d	$t1, $t1, 1
	or	$s3, $a2, $a1
.LBB4_160:                              #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$t1, $a0, 32
	st.w	$s1, $a0, 40
	st.w	$s3, $a0, 44
	st.w	$s2, $a0, 92
	st.d	$t4, $a0, 48
	st.w	$s4, $a0, 64
	st.w	$s5, $a0, 76
	ld.w	$a3, $a0, 12
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.w	$a2, $a0, 80
	st.w	$a1, $a0, 84
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a0, 88
	st.w	$s0, $a0, 72
	bgeu	$s4, $a3, .LBB4_169
# %bb.161:                              #   in Loop: Header=BB4_1 Depth=1
	addi.w	$a1, $s2, -1
	ld.d	$t1, $sp, 8                     # 8-byte Folded Reload
	ori	$a2, $zero, 272
	bltu	$a2, $a1, .LBB4_170
.LBB4_162:                              #   in Loop: Header=BB4_1 Depth=1
	sub.d	$a1, $t1, $t4
	ld.w	$a2, $a0, 68
	sltu	$a4, $a1, $s2
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $s2, $a4
	or	$a1, $a1, $a4
	bnez	$a2, .LBB4_165
# %bb.163:                              #   in Loop: Header=BB4_1 Depth=1
	sub.w	$a2, $a3, $s4
	addi.w	$a4, $a1, 0
	bltu	$a4, $a2, .LBB4_165
# %bb.164:                              #   in Loop: Header=BB4_1 Depth=1
	st.w	$a3, $a0, 68
.LBB4_165:                              # %._crit_edge42.i
                                        #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a3, $a0, 24
	ld.d	$a4, $a0, 56
	add.d	$a2, $s4, $a1
	st.w	$a2, $a0, 64
	sub.d	$a2, $s2, $a1
	st.w	$a2, $a0, 92
	beqz	$a1, .LBB4_168
# %bb.166:                              # %.lr.ph.i
                                        #   in Loop: Header=BB4_1 Depth=1
	bstrpick.d	$a6, $s5, 31, 0
	sub.d	$t0, $a3, $a6
	.p2align	4, , 16
.LBB4_167:                              #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$a2, $t4, $a6
	maskeqz	$a2, $a4, $a2
	add.d	$a2, $t0, $a2
	ldx.b	$a2, $a2, $t4
	addi.w	$a1, $a1, -1
	stx.b	$a2, $a3, $t4
	addi.d	$t4, $t4, 1
	bnez	$a1, .LBB4_167
.LBB4_168:                              # %._crit_edge.i
                                        #   in Loop: Header=BB4_1 Depth=1
	st.d	$t4, $a0, 48
	bltu	$t4, $t1, .LBB4_171
	b	.LBB4_175
	.p2align	4, , 16
.LBB4_169:                              #   in Loop: Header=BB4_1 Depth=1
	st.w	$a3, $a0, 68
	addi.w	$a1, $s2, -1
	ld.d	$t1, $sp, 8                     # 8-byte Folded Reload
	ori	$a2, $zero, 272
	bgeu	$a2, $a1, .LBB4_162
.LBB4_170:                              #   in Loop: Header=BB4_1 Depth=1
	bgeu	$t4, $t1, .LBB4_175
.LBB4_171:                              #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a2, $a0, 32
	ld.w	$a1, $a0, 92
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB4_176
# %bb.172:                              #   in Loop: Header=BB4_1 Depth=1
	ori	$a2, $zero, 274
	bltu	$a1, $a2, .LBB4_1
	b	.LBB4_176
.LBB4_173:
	ori	$a0, $zero, 1
.LBB4_174:                              # %LzmaDec_WriteRem.exit
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB4_175:                              # %..critedge_crit_edge
	ld.w	$a1, $a0, 92
.LBB4_176:                              # %.critedge
	ori	$a2, $zero, 275
	bltu	$a1, $a2, .LBB4_178
# %bb.177:
	ori	$a2, $zero, 274
	st.w	$a2, $a0, 92
.LBB4_178:                              # %LzmaDec_WriteRem.exit
	move	$a0, $zero
	b	.LBB4_174
.Lfunc_end4:
	.size	LzmaDec_DecodeReal2, .Lfunc_end4-LzmaDec_DecodeReal2
                                        # -- End function
	.globl	LzmaDec_DecodeToBuf             # -- Begin function LzmaDec_DecodeToBuf
	.p2align	5
	.type	LzmaDec_DecodeToBuf,@function
LzmaDec_DecodeToBuf:                    # @LzmaDec_DecodeToBuf
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s8, $a2, 0
	ld.d	$s1, $a4, 0
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a3
	move	$s4, $a1
	move	$s5, $a0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$zero, $a2, 0
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $a4, 0
	.p2align	4, , 16
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s5, 48
	ld.d	$a0, $s5, 56
	st.d	$s1, $sp, 48
	bne	$s2, $a0, .LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	move	$s2, $zero
	st.d	$zero, $s5, 48
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	sub.d	$a1, $a0, $s2
	sltu	$a2, $a1, $s8
	add.d	$a1, $s2, $s8
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	masknez	$a4, $a0, $a2
	addi.d	$a3, $sp, 48
	move	$a0, $s5
	move	$a2, $s3
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LzmaDec_DecodeToDic)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	add.d	$a1, $a1, $fp
	st.d	$a1, $a2, 0
	ld.d	$s0, $s5, 48
	ld.d	$a1, $s5, 24
	move	$s7, $a0
	sub.d	$s6, $s0, $s2
	add.d	$a1, $a1, $s2
	move	$a0, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	add.d	$a0, $a0, $s6
	st.d	$a0, $a1, 0
	bnez	$s7, .LBB5_6
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	move	$a0, $zero
	beq	$s0, $s2, .LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	sub.d	$s8, $s8, $s6
	add.d	$s4, $s4, $s6
	sub.d	$s1, $s1, $fp
	add.d	$s3, $s3, $fp
	bnez	$s8, .LBB5_1
	b	.LBB5_7
.LBB5_6:                                # %.thread
	ori	$a0, $zero, 1
.LBB5_7:                                # %.loopexit
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end5:
	.size	LzmaDec_DecodeToBuf, .Lfunc_end5-LzmaDec_DecodeToBuf
                                        # -- End function
	.globl	LzmaDec_FreeProbs               # -- Begin function LzmaDec_FreeProbs
	.p2align	5
	.type	LzmaDec_FreeProbs,@function
LzmaDec_FreeProbs:                      # @LzmaDec_FreeProbs
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$fp, $a0
	ld.d	$a3, $a1, 8
	ld.d	$a1, $a0, 16
	move	$a0, $a2
	jirl	$ra, $a3, 0
	st.d	$zero, $fp, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	LzmaDec_FreeProbs, .Lfunc_end6-LzmaDec_FreeProbs
                                        # -- End function
	.globl	LzmaDec_Free                    # -- Begin function LzmaDec_Free
	.p2align	5
	.type	LzmaDec_Free,@function
LzmaDec_Free:                           # @LzmaDec_Free
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a2, $a1, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $s0, 24
	st.d	$zero, $s0, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.d	$zero, $s0, 24
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	LzmaDec_Free, .Lfunc_end7-LzmaDec_Free
                                        # -- End function
	.globl	LzmaProps_Decode                # -- Begin function LzmaProps_Decode
	.p2align	5
	.type	LzmaProps_Decode,@function
LzmaProps_Decode:                       # @LzmaProps_Decode
# %bb.0:
	ori	$a4, $zero, 5
	ori	$a3, $zero, 4
	bltu	$a2, $a4, .LBB8_3
# %bb.1:
	ld.w	$a2, $a1, 1
	lu12i.w	$a4, 1
	sltu	$a5, $a4, $a2
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	st.w	$a2, $a0, 12
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 224
	bltu	$a2, $a1, .LBB8_3
# %bb.2:
	move	$a3, $zero
	andi	$a2, $a1, 255
	ori	$a4, $zero, 57
	mul.d	$a2, $a2, $a4
	srli.d	$a2, $a2, 9
	alsl.d	$a4, $a2, $a2, 3
	sub.d	$a4, $a1, $a4
	andi	$a4, $a4, 255
	st.w	$a4, $a0, 0
	ori	$a4, $zero, 109
	mul.d	$a4, $a1, $a4
	srli.d	$a4, $a4, 8
	sub.d	$a1, $a1, $a4
	bstrpick.d	$a1, $a1, 7, 1
	add.d	$a1, $a1, $a4
	srli.d	$a1, $a1, 5
	st.w	$a1, $a0, 8
	ori	$a1, $zero, 52
	mul.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 8
	alsl.d	$a1, $a1, $a1, 2
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	st.w	$a1, $a0, 4
.LBB8_3:
	move	$a0, $a3
	ret
.Lfunc_end8:
	.size	LzmaProps_Decode, .Lfunc_end8-LzmaProps_Decode
                                        # -- End function
	.globl	LzmaDec_AllocateProbs           # -- Begin function LzmaDec_AllocateProbs
	.p2align	5
	.type	LzmaDec_AllocateProbs,@function
LzmaDec_AllocateProbs:                  # @LzmaDec_AllocateProbs
# %bb.0:
	ori	$a5, $zero, 5
	ori	$a4, $zero, 4
	bltu	$a2, $a5, .LBB9_8
# %bb.1:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ld.bu	$s0, $a1, 0
	ori	$a2, $zero, 224
	bltu	$a2, $s0, .LBB9_7
# %bb.2:
	ld.w	$s2, $a1, 1
	andi	$a1, $s0, 255
	ori	$a2, $zero, 57
	mul.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 9
	alsl.d	$a2, $a1, $a1, 3
	sub.d	$a2, $s0, $a2
	andi	$s1, $a2, 255
	ori	$a2, $zero, 52
	mul.d	$a2, $a1, $a2
	srli.d	$a2, $a2, 8
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	andi	$s3, $a1, 255
	ld.d	$a1, $a0, 16
	add.d	$a2, $s3, $s1
	ori	$a4, $zero, 768
	sll.w	$a2, $a4, $a2
	addi.w	$s4, $a2, 1846
	beqz	$a1, .LBB9_4
# %bb.3:
	ld.w	$a2, $a0, 104
	beq	$s4, $a2, .LBB9_5
.LBB9_4:
	ld.d	$a2, $a3, 8
	move	$s5, $a0
	move	$a0, $a3
	move	$fp, $a3
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 0
	st.d	$zero, $s5, 16
	slli.w	$a1, $s4, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s5
	st.d	$a1, $s5, 16
	st.w	$s4, $s5, 104
	beqz	$a1, .LBB9_6
.LBB9_5:
	move	$a4, $zero
	lu12i.w	$a1, 1
	sltu	$a2, $a1, $s2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	ori	$a2, $zero, 109
	mul.d	$a2, $s0, $a2
	srli.d	$a2, $a2, 8
	sub.d	$a3, $s0, $a2
	bstrpick.d	$a3, $a3, 7, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 5
	st.w	$s1, $a0, 0
	st.w	$s3, $a0, 4
	st.w	$a2, $a0, 8
	st.w	$a1, $a0, 12
	b	.LBB9_7
.LBB9_6:
	ori	$a4, $zero, 2
.LBB9_7:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB9_8:                                # %LzmaProps_Decode.exit.thread
	move	$a0, $a4
	ret
.Lfunc_end9:
	.size	LzmaDec_AllocateProbs, .Lfunc_end9-LzmaDec_AllocateProbs
                                        # -- End function
	.globl	LzmaDec_Allocate                # -- Begin function LzmaDec_Allocate
	.p2align	5
	.type	LzmaDec_Allocate,@function
LzmaDec_Allocate:                       # @LzmaDec_Allocate
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a3
	move	$fp, $a0
	ori	$a3, $zero, 5
	ori	$a0, $zero, 4
	bltu	$a2, $a3, .LBB10_11
# %bb.1:
	ld.bu	$s2, $a1, 0
	ori	$a2, $zero, 224
	bltu	$a2, $s2, .LBB10_11
# %bb.2:
	ld.w	$s1, $a1, 1
	andi	$a0, $s2, 255
	ori	$a1, $zero, 57
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 9
	alsl.d	$a1, $a0, $a0, 3
	sub.d	$a1, $s2, $a1
	andi	$s3, $a1, 255
	ori	$a1, $zero, 52
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 8
	alsl.d	$a1, $a1, $a1, 2
	sub.d	$a0, $a0, $a1
	andi	$s4, $a0, 255
	ld.d	$a1, $fp, 16
	add.d	$a0, $s4, $s3
	ori	$a2, $zero, 768
	sll.w	$a0, $a2, $a0
	addi.w	$s5, $a0, 1846
	beqz	$a1, .LBB10_4
# %bb.3:
	ld.w	$a0, $fp, 104
	beq	$s5, $a0, .LBB10_5
.LBB10_4:
	ld.d	$a2, $s0, 8
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 0
	st.d	$zero, $fp, 16
	slli.w	$a1, $s5, 1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	st.d	$a0, $fp, 16
	st.w	$s5, $fp, 104
	beqz	$a0, .LBB10_10
.LBB10_5:
	lu12i.w	$a0, 1
	sltu	$a2, $a0, $s1
	ld.d	$a1, $fp, 24
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$s5, $a2, $a0
	bstrpick.d	$s1, $s5, 31, 0
	beqz	$a1, .LBB10_7
# %bb.6:
	ld.d	$a0, $fp, 56
	beq	$a0, $s1, .LBB10_8
.LBB10_7:
	ld.d	$a2, $s0, 8
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 0
	st.d	$zero, $fp, 24
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a2, 0
	st.d	$a0, $fp, 24
	beqz	$a0, .LBB10_9
.LBB10_8:
	move	$a0, $zero
	ori	$a1, $zero, 109
	mul.d	$a1, $s2, $a1
	srli.d	$a1, $a1, 8
	sub.d	$a2, $s2, $a1
	bstrpick.d	$a2, $a2, 7, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 5
	st.d	$s1, $fp, 56
	st.w	$s3, $fp, 0
	st.w	$s4, $fp, 4
	st.w	$a1, $fp, 8
	st.w	$s5, $fp, 12
	b	.LBB10_11
.LBB10_9:
	ld.d	$a2, $s0, 8
	ld.d	$a1, $fp, 16
	move	$a0, $s0
	jirl	$ra, $a2, 0
	st.d	$zero, $fp, 16
.LBB10_10:                              # %LzmaProps_Decode.exit.thread
	ori	$a0, $zero, 2
.LBB10_11:                              # %LzmaProps_Decode.exit.thread
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end10:
	.size	LzmaDec_Allocate, .Lfunc_end10-LzmaDec_Allocate
                                        # -- End function
	.globl	LzmaDecode                      # -- Begin function LzmaDecode
	.p2align	5
	.type	LzmaDecode,@function
LzmaDecode:                             # @LzmaDecode
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	ld.d	$s5, $a3, 0
	ld.d	$s0, $a1, 0
	st.d	$zero, $a1, 0
	st.d	$zero, $a3, 0
	ori	$t1, $zero, 5
	ori	$t0, $zero, 6
	bltu	$s5, $t1, .LBB11_8
# %bb.1:
	ori	$t0, $zero, 4
	bltu	$a5, $t1, .LBB11_8
# %bb.2:
	ld.bu	$s8, $a4, 0
	ori	$a5, $zero, 224
	bltu	$a5, $s8, .LBB11_8
# %bb.3:
	move	$s7, $a0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a3
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 272
	ld.w	$s2, $a4, 1
	andi	$a0, $s8, 255
	ori	$a1, $zero, 57
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 9
	alsl.d	$a1, $a0, $a0, 3
	sub.d	$a1, $s8, $a1
	andi	$s4, $a1, 255
	ori	$a1, $zero, 52
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 8
	alsl.d	$a1, $a1, $a1, 2
	sub.d	$a0, $a0, $a1
	andi	$s3, $a0, 255
	add.d	$a0, $s3, $s4
	ld.d	$a2, $fp, 8
	ori	$a1, $zero, 768
	sll.w	$a0, $a1, $a0
	addi.d	$s1, $a0, 1846
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 0
	slli.w	$a1, $s1, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.d	$a0, $sp, 64
	st.w	$s1, $sp, 152
	beqz	$a0, .LBB11_7
# %bb.4:
	lu12i.w	$a0, 1
	sltu	$a1, $a0, $s2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 109
	mul.d	$a1, $s8, $a1
	srli.d	$a1, $a1, 8
	sub.d	$a2, $s8, $a1
	bstrpick.d	$a2, $a2, 7, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 5
	st.w	$s4, $sp, 48
	st.w	$s3, $sp, 52
	st.w	$a1, $sp, 56
	st.w	$a0, $sp, 60
	st.d	$s7, $sp, 72
	st.d	$s0, $sp, 104
	st.d	$zero, $sp, 96
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 140
	st.w	$zero, $sp, 156
	st.d	$zero, $sp, 112
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	st.w	$a0, $sp, 148
	move	$a3, $s6
	st.d	$s5, $s6, 0
	addi.d	$a0, $sp, 48
	move	$a1, $s0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LzmaDec_DecodeToDic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_6
# %bb.5:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 6
	maskeqz	$s2, $a1, $a0
.LBB11_6:
	ld.d	$a2, $sp, 96
	ld.d	$a3, $fp, 8
	ld.d	$a1, $sp, 64
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a2, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$t0, $s2
	b	.LBB11_8
.LBB11_7:
	ori	$t0, $zero, 2
.LBB11_8:                               # %LzmaDec_AllocateProbs.exit.thread
	move	$a0, $t0
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end11:
	.size	LzmaDecode, .Lfunc_end11-LzmaDecode
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
