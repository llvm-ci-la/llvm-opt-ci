	.file	"getbits.c"
	.text
	.globl	Initialize_Buffer               # -- Begin function Initialize_Buffer
	.p2align	5
	.type	Initialize_Buffer,@function
Initialize_Buffer:                      # @Initialize_Buffer
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$a0, $a0, %got_pc_lo12(ld)
	ld.d	$a0, $a0, 0
	stptr.w	$zero, $a0, 2096
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 5
	stptr.d	$a1, $a0, 2056
	stptr.d	$a1, $a0, 2088
	stptr.w	$zero, $a0, 2080
	move	$a0, $zero
	pcaddu18i	$t8, %call36(Flush_Buffer)
	jr	$t8
.Lfunc_end0:
	.size	Initialize_Buffer, .Lfunc_end0-Initialize_Buffer
                                        # -- End function
	.globl	Flush_Buffer                    # -- Begin function Flush_Buffer
	.p2align	5
	.type	Flush_Buffer,@function
Flush_Buffer:                           # @Flush_Buffer
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ld)
	ld.d	$fp, $a1, %got_pc_lo12(ld)
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 2080
	ldx.w	$a2, $a1, $a2
	ori	$a3, $zero, 2096
	ldx.w	$a6, $a1, $a3
	sll.w	$a5, $a2, $a0
	stptr.w	$a5, $a1, 2080
	sub.w	$a3, $a6, $a0
	ori	$a2, $zero, 24
	stptr.w	$a3, $a1, 2096
	blt	$a2, $a3, .LBB1_11
# %bb.1:
	pcalau12i	$a2, %got_pc_hi20(System_Stream_Flag)
	ld.d	$s0, $a2, %got_pc_lo12(System_Stream_Flag)
	ld.w	$a4, $s0, 0
	ldptr.d	$a2, $a1, 2056
	beqz	$a4, .LBB1_3
# %bb.2:
	ldptr.d	$a4, $a1, 2088
	addi.d	$a4, $a4, -4
	bgeu	$a2, $a4, .LBB1_23
.LBB1_3:                                # %._crit_edge
	addi.d	$a7, $a1, 2047
	addi.d	$a4, $a7, 1
	bgeu	$a2, $a4, .LBB1_12
# %bb.4:                                # %.preheader.preheader
	ori	$a4, $zero, 17
	slt	$t0, $a4, $a3
	masknez	$t1, $a4, $t0
	maskeqz	$t0, $a3, $t0
	or	$t0, $t0, $t1
	add.d	$a0, $a0, $t0
	sub.d	$a0, $a0, $a6
	addi.d	$a6, $a0, 7
	addi.w	$a0, $a6, 0
	ori	$t0, $zero, 72
	bltu	$a0, $t0, .LBB1_7
# %bb.5:                                # %vector.memcheck
	addi.d	$t0, $a7, 9
	bstrpick.d	$a6, $a6, 31, 3
	add.d	$a6, $a2, $a6
	addi.d	$a6, $a6, 1
	bgeu	$t0, $a6, .LBB1_29
# %bb.6:                                # %vector.memcheck
	addi.d	$a6, $a7, 37
	bgeu	$a2, $a6, .LBB1_29
.LBB1_7:
	move	$a6, $a2
	move	$a0, $a3
.LBB1_8:                                # %.preheader.preheader77
	addi.d	$a2, $a6, 1
	ori	$a3, $zero, 24
	sub.d	$a6, $a3, $a0
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_9:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	stptr.d	$a2, $a1, 2056
	ld.bu	$a0, $a2, -1
	move	$a7, $a3
	sll.w	$a0, $a0, $a6
	or	$a5, $a0, $a5
	stptr.w	$a5, $a1, 2080
	addi.w	$a3, $a3, 8
	addi.d	$a2, $a2, 1
	addi.d	$a6, $a6, -8
	blt	$a7, $a4, .LBB1_9
.LBB1_10:                               # %.loopexit
	stptr.w	$a3, $a1, 2096
.LBB1_11:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
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
.LBB1_12:
	ori	$s1, $zero, 24
	ori	$s2, $zero, 2080
	ori	$s3, $zero, 17
	ori	$s4, $zero, 2047
	ori	$s5, $zero, 1
	ori	$s6, $zero, 183
	ori	$s7, $zero, 2044
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %Fill_Buffer.exit
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 2056
	addi.d	$a2, $a0, 1
	stptr.d	$a2, $a1, 2056
	ld.bu	$a0, $a0, 0
	ldx.w	$a3, $a1, $s2
	sub.d	$a4, $s1, $s8
	sll.w	$a0, $a0, $a4
	or	$a0, $a0, $a3
	stptr.w	$a0, $a1, 2080
	addi.w	$a3, $s8, 8
	bge	$s8, $s3, .LBB1_10
.LBB1_14:                               # %.preheader24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_22 Depth 2
	addi.d	$a0, $a1, 2047
	addi.d	$a0, $a0, 5
	move	$s8, $a3
	bltu	$a2, $a0, .LBB1_13
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=1
	ld.w	$a0, $a1, 0
	addi.d	$a1, $a1, 4
	ori	$a2, $zero, 2048
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $s0, 0
	addi.d	$a3, $a1, 4
	stptr.d	$a3, $a1, 2056
	beqz	$a2, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_14 Depth=1
	ldptr.d	$a2, $a1, 2088
	addi.d	$a2, $a2, -2048
	stptr.d	$a2, $a1, 2088
.LBB1_17:                               #   in Loop: Header=BB1_14 Depth=1
	addi.w	$a0, $a0, 0
	blt	$s4, $a0, .LBB1_13
# %bb.18:                               #   in Loop: Header=BB1_14 Depth=1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	andi	$a1, $a0, 3
	beqz	$a1, .LBB1_22
# %bb.19:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB1_14 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB1_20:                               # %.lr.ph.i23
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $fp, 0
	stx.b	$zero, $a2, $a1
	addi.w	$a0, $a0, 1
	andi	$a2, $a0, 3
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB1_20
# %bb.21:                               # %.preheader.i
                                        #   in Loop: Header=BB1_14 Depth=1
	addi.d	$a1, $a1, -5
	ori	$a2, $zero, 2046
	bltu	$a2, $a1, .LBB1_13
	.p2align	4, , 16
.LBB1_22:                               # %.lr.ph14.i
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 0
	move	$a2, $a0
	add.d	$a0, $a1, $a0
	st.b	$zero, $a0, 4
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $a2
	st.b	$zero, $a0, 5
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $a2
	st.b	$s5, $a0, 6
	ld.d	$a1, $fp, 0
	addi.d	$a0, $a2, 4
	add.d	$a1, $a1, $a2
	st.b	$s6, $a1, 7
	bltu	$a2, $s7, .LBB1_22
	b	.LBB1_13
.LBB1_23:                               # %.preheader26.preheader
	ori	$s0, $zero, 24
	ori	$s1, $zero, 2080
	ori	$s2, $zero, 17
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_24:                               # %Get_Byte.exit
                                        #   in Loop: Header=BB1_25 Depth=1
	addi.d	$a0, $a2, 1
	stptr.d	$a0, $a1, 2056
	ld.bu	$a2, $a2, 0
	ldx.w	$a3, $a1, $s1
	sub.d	$a4, $s0, $s3
	sll.w	$a2, $a2, $a4
	or	$a2, $a3, $a2
	stptr.w	$a2, $a1, 2080
	addi.w	$a3, $s3, 8
	move	$a2, $a0
	bge	$s3, $s2, .LBB1_10
.LBB1_25:                               # %.preheader26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
	ldptr.d	$a0, $a1, 2088
	move	$s3, $a3
	bltu	$a2, $a0, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=1
	pcaddu18i	$ra, %call36(Next_Packet)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a2, $a1, 2056
.LBB1_27:                               #   in Loop: Header=BB1_25 Depth=1
	addi.d	$a0, $a1, 2047
	addi.d	$a0, $a0, 5
	bltu	$a2, $a0, .LBB1_24
	.p2align	4, , 16
.LBB1_28:                               # %.lr.ph.i
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $a1, 0
	addi.d	$a1, $a1, 4
	ori	$a2, $zero, 2048
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 2056
	ldptr.d	$a3, $a1, 2088
	addi.d	$a2, $a0, -2048
	stptr.d	$a2, $a1, 2056
	addi.d	$a0, $a3, -2048
	addi.d	$a3, $a1, 2047
	addi.d	$a3, $a3, 5
	stptr.d	$a0, $a1, 2088
	bgeu	$a2, $a3, .LBB1_28
	b	.LBB1_24
.LBB1_29:                               # %vector.ph
	bstrpick.d	$a0, $a0, 31, 3
	addi.d	$a7, $a0, 1
	bstrpick.d	$a0, $a7, 29, 2
	slli.d	$t0, $a0, 2
	alsl.d	$a6, $a0, $a2, 2
	slli.d	$a0, $a0, 5
	vrepli.b	$vr1, 0
	add.w	$a0, $a3, $a0
	vori.b	$vr0, $vr1, 0
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $a3, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 8
	vreplgr2vr.d	$vr3, $a3
	vadd.w	$vr3, $vr2, $vr3
	vrepli.w	$vr4, 24
	vrepli.w	$vr5, 8
	vrepli.w	$vr6, 32
	move	$a3, $t0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB1_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	ld.h	$a2, $a2, 0
	ld.h	$t1, $a5, 2
	vinsgr2vr.h	$vr7, $a2, 0
	vinsgr2vr.h	$vr8, $t1, 0
	vilvl.b	$vr7, $vr1, $vr7
	vilvl.h	$vr7, $vr1, $vr7
	vilvl.b	$vr8, $vr1, $vr8
	vilvl.h	$vr8, $vr1, $vr8
	vsub.w	$vr9, $vr4, $vr3
	vsub.w	$vr10, $vr5, $vr3
	vsll.w	$vr7, $vr7, $vr9
	vsll.w	$vr8, $vr8, $vr10
	vor.v	$vr0, $vr7, $vr0
	vor.v	$vr2, $vr8, $vr2
	addi.d	$a2, $a5, 4
	addi.d	$a3, $a3, -4
	vadd.w	$vr3, $vr3, $vr6
	bnez	$a3, .LBB1_30
# %bb.31:                               # %middle.block
	vreplgr2vr.d	$vr1, $a5
	vaddi.du	$vr1, $vr1, 1
	vpickve2gr.d	$a2, $vr1, 1
	addi.d	$a2, $a2, 3
	stptr.d	$a2, $a1, 2056
	vor.v	$vr0, $vr2, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	stptr.w	$a5, $a1, 2080
	bne	$t0, $a7, .LBB1_8
# %bb.32:
	move	$a3, $a0
	b	.LBB1_10
.Lfunc_end1:
	.size	Flush_Buffer, .Lfunc_end1-Flush_Buffer
                                        # -- End function
	.globl	Fill_Buffer                     # -- Begin function Fill_Buffer
	.p2align	5
	.type	Fill_Buffer,@function
Fill_Buffer:                            # @Fill_Buffer
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$fp, $a0, %got_pc_lo12(ld)
	ld.d	$a1, $fp, 0
	ld.w	$a0, $a1, 0
	addi.d	$a1, $a1, 4
	ori	$a2, $zero, 2048
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a1, 4
	stptr.d	$a2, $a1, 2056
	pcalau12i	$a2, %got_pc_hi20(System_Stream_Flag)
	ld.d	$a2, $a2, %got_pc_lo12(System_Stream_Flag)
	ld.w	$a2, $a2, 0
	beqz	$a2, .LBB2_2
# %bb.1:
	ldptr.d	$a2, $a1, 2088
	addi.d	$a2, $a2, -2048
	stptr.d	$a2, $a1, 2088
.LBB2_2:
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2047
	blt	$a1, $a0, .LBB2_9
# %bb.3:
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	andi	$a1, $a0, 3
	beqz	$a1, .LBB2_7
# %bb.4:                                # %.lr.ph.preheader
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 0
	stx.b	$zero, $a2, $a1
	addi.w	$a0, $a0, 1
	andi	$a2, $a0, 3
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB2_5
# %bb.6:                                # %.preheader
	addi.d	$a1, $a1, -5
	ori	$a2, $zero, 2046
	bltu	$a2, $a1, .LBB2_9
.LBB2_7:                                # %.lr.ph14.preheader
	ori	$a1, $zero, 1
	ori	$a2, $zero, 183
	ori	$a3, $zero, 2044
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph14
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $fp, 0
	move	$a5, $a0
	add.d	$a0, $a4, $a0
	st.b	$zero, $a0, 4
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $a5
	st.b	$zero, $a0, 5
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $a5
	st.b	$a1, $a0, 6
	ld.d	$a4, $fp, 0
	addi.d	$a0, $a5, 4
	add.d	$a4, $a4, $a5
	st.b	$a2, $a4, 7
	bltu	$a5, $a3, .LBB2_8
.LBB2_9:                                # %.loopexit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	Fill_Buffer, .Lfunc_end2-Fill_Buffer
                                        # -- End function
	.globl	Get_Byte                        # -- Begin function Get_Byte
	.p2align	5
	.type	Get_Byte,@function
Get_Byte:                               # @Get_Byte
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$fp, $a0, %got_pc_lo12(ld)
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 2056
	addi.d	$a2, $a1, 2047
	addi.d	$a2, $a2, 5
	bltu	$a0, $a2, .LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 0
	addi.d	$a1, $a1, 4
	ori	$a2, $zero, 2048
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 2056
	ldptr.d	$a2, $a1, 2088
	addi.d	$a0, $a0, -2048
	stptr.d	$a0, $a1, 2056
	addi.d	$a2, $a2, -2048
	addi.d	$a3, $a1, 2047
	addi.d	$a3, $a3, 5
	stptr.d	$a2, $a1, 2088
	bgeu	$a0, $a3, .LBB3_1
.LBB3_2:                                # %._crit_edge
	addi.d	$a2, $a0, 1
	stptr.d	$a2, $a1, 2056
	ld.bu	$a0, $a0, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	Get_Byte, .Lfunc_end3-Get_Byte
                                        # -- End function
	.globl	Get_Word                        # -- Begin function Get_Word
	.p2align	5
	.type	Get_Word,@function
Get_Word:                               # @Get_Word
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$fp, $a0, %got_pc_lo12(ld)
	ld.d	$a1, $fp, 0
	ldptr.d	$a2, $a1, 2056
	addi.d	$a0, $a1, 2047
	addi.d	$a0, $a0, 5
	bltu	$a2, $a0, .LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 0
	addi.d	$a1, $a1, 4
	ori	$a2, $zero, 2048
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 2056
	ldptr.d	$a3, $a1, 2088
	addi.d	$a2, $a0, -2048
	stptr.d	$a2, $a1, 2056
	addi.d	$a0, $a3, -2048
	addi.d	$a3, $a1, 2047
	addi.d	$a3, $a3, 5
	stptr.d	$a0, $a1, 2088
	bgeu	$a2, $a3, .LBB4_1
.LBB4_2:                                # %Get_Byte.exit
	addi.d	$a0, $a2, 1
	stptr.d	$a0, $a1, 2056
	ld.bu	$s0, $a2, 0
	addi.d	$a2, $a1, 2047
	addi.d	$a2, $a2, 5
	bltu	$a0, $a2, .LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %.lr.ph.i2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 0
	addi.d	$a1, $a1, 4
	ori	$a2, $zero, 2048
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 2056
	ldptr.d	$a2, $a1, 2088
	addi.d	$a0, $a0, -2048
	stptr.d	$a0, $a1, 2056
	addi.d	$a2, $a2, -2048
	addi.d	$a3, $a1, 2047
	addi.d	$a3, $a3, 5
	stptr.d	$a2, $a1, 2088
	bgeu	$a0, $a3, .LBB4_3
.LBB4_4:                                # %Get_Byte.exit6
	addi.d	$a2, $a0, 1
	stptr.d	$a2, $a1, 2056
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $s0, 8
	or	$a0, $a1, $a0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	Get_Word, .Lfunc_end4-Get_Word
                                        # -- End function
	.globl	Show_Bits                       # -- Begin function Show_Bits
	.p2align	5
	.type	Show_Bits,@function
Show_Bits:                              # @Show_Bits
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(ld)
	ld.d	$a1, $a1, %got_pc_lo12(ld)
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2080
	ldx.w	$a1, $a1, $a2
	ori	$a2, $zero, 32
	sub.d	$a0, $a2, $a0
	srl.w	$a0, $a1, $a0
	ret
.Lfunc_end5:
	.size	Show_Bits, .Lfunc_end5-Show_Bits
                                        # -- End function
	.globl	Get_Bits1                       # -- Begin function Get_Bits1
	.p2align	5
	.type	Get_Bits1,@function
Get_Bits1:                              # @Get_Bits1
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$a0, $a0, %got_pc_lo12(ld)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2080
	ldx.wu	$a0, $a0, $a1
	srli.d	$fp, $a0, 31
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	Get_Bits1, .Lfunc_end6-Get_Bits1
                                        # -- End function
	.globl	Get_Bits                        # -- Begin function Get_Bits
	.p2align	5
	.type	Get_Bits,@function
Get_Bits:                               # @Get_Bits
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ld)
	ld.d	$a1, $a1, %got_pc_lo12(ld)
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2080
	ldx.w	$a1, $a1, $a2
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a0
	srl.w	$fp, $a1, $a2
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	Get_Bits, .Lfunc_end7-Get_Bits
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
