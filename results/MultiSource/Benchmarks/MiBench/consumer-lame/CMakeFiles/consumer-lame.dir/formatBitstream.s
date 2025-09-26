	.file	"formatBitstream.c"
	.text
	.globl	InitFormatBitStream             # -- Begin function InitFormatBitStream
	.p2align	5
	.type	InitFormatBitStream,@function
InitFormatBitStream:                    # @InitFormatBitStream
# %bb.0:
	pcalau12i	$a0, %pc_hi20(BitCount)
	st.w	$zero, $a0, %pc_lo12(BitCount)
	pcalau12i	$a0, %pc_hi20(ThisFrameSize)
	st.w	$zero, $a0, %pc_lo12(ThisFrameSize)
	pcalau12i	$a0, %pc_hi20(BitsRemaining)
	st.w	$zero, $a0, %pc_lo12(BitsRemaining)
	ret
.Lfunc_end0:
	.size	InitFormatBitStream, .Lfunc_end0-InitFormatBitStream
                                        # -- End function
	.globl	BF_BitstreamFrame               # -- Begin function BF_BitstreamFrame
	.p2align	5
	.type	BF_BitstreamFrame,@function
BF_BitstreamFrame:                      # @BF_BitstreamFrame
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(side_queue_free)
	ld.d	$s3, $a2, %pc_lo12(side_queue_free)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beqz	$s3, .LBB1_12
# %bb.1:
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s3, 24
	ld.w	$a3, $fp, 4
	ld.w	$s8, $fp, 8
	move	$s0, $fp
	ld.d	$fp, $fp, 16
	ld.d	$s7, $a0, 8
	st.d	$a1, $a2, %pc_lo12(side_queue_free)
	st.d	$zero, $s3, 0
.LBB1_2:                                # %.loopexit.i
	ld.w	$a1, $s0, 0
	st.w	$zero, $s7, 0
	ld.w	$a2, $fp, 0
	st.w	$a1, $s3, 8
	st.w	$a3, $s3, 16
	st.w	$s8, $s3, 20
	beqz	$a2, .LBB1_7
# %bb.3:                                # %.lr.ph.i.i
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %BF_addElement.exit.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a4, $a2, 8
	st.w	$a3, $a2, 0
	ldx.d	$a2, $s2, $s0
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
	ld.wu	$a1, $fp, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bgeu	$s1, $a1, .LBB1_7
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	ld.w	$a4, $a0, 0
	ld.d	$s2, $fp, 8
	addi.w	$a3, $a1, 1
	bge	$a4, $a3, .LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a1, $a1, 9
	pcaddu18i	$ra, %call36(BF_resizePartHolder)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	addi.d	$a3, $a1, 1
	b	.LBB1_4
.LBB1_7:                                # %BF_LoadHolderFromBitstreamPart.exit.i
	ld.d	$a2, $s3, 32
	move	$a1, $a2
	ld.d	$a2, $a2, 8
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a3, 24
	st.w	$zero, $a2, 0
	ld.w	$a2, $fp, 0
	st.d	$a0, $s3, 24
	beqz	$a2, .LBB1_22
# %bb.8:                                # %.lr.ph.i96.i
	move	$s0, $zero
	move	$s1, $zero
	move	$a0, $a1
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %BF_addElement.exit.i99.i
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a4, $a2, 8
	st.w	$a3, $a2, 0
	ldx.d	$a2, $s2, $s0
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
	ld.wu	$a1, $fp, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bgeu	$s1, $a1, .LBB1_23
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	ld.w	$a4, $a0, 0
	ld.d	$s2, $fp, 8
	addi.w	$a3, $a1, 1
	bge	$a4, $a3, .LBB1_9
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	addi.w	$a1, $a1, 9
	pcaddu18i	$ra, %call36(BF_resizePartHolder)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	addi.d	$a3, $a1, 1
	b	.LBB1_9
.LBB1_12:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 88
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_146
# %bb.13:
	move	$s6, $a0
	move	$s0, $fp
	ld.d	$fp, $fp, 16
	ld.w	$s3, $fp, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$s3, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s4, 8
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.w	$s3, $a1, 0
	st.d	$a0, $s7, 8
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $s6, 24
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$s3, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s4, 8
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s0, 8
	st.d	$a0, $s5, 8
	st.d	$s4, $s6, 32
	blez	$s8, .LBB1_144
# %bb.14:                               # %.lr.ph.i
	move	$s1, $zero
	addi.d	$s2, $s0, 32
	slli.d	$s0, $s8, 3
	.p2align	4, , 16
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s2, $s1
	ld.w	$s3, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$s3, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s4, 8
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 8
	add.d	$a0, $s6, $s1
	addi.d	$s1, $s1, 8
	st.d	$s4, $a0, 40
	bne	$s0, $s1, .LBB1_15
# %bb.16:                               # %.preheader181.i
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $s0, 4
	blez	$a3, .LBB1_145
# %bb.17:                               # %.preheader180.lr.ph.i
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $zero
	move	$s8, $zero
	addi.d	$s1, $s0, 48
	.p2align	4, , 16
.LBB1_18:                               # %.preheader180.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	move	$fp, $a3
	move	$s7, $s2
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_19:                               #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $s1, $s7
	ld.w	$s3, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$s3, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s4, 8
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 8
	add.d	$a0, $s6, $s7
	st.d	$s4, $a0, 56
	addi.d	$s0, $s0, -1
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB1_19
# %bb.20:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s2, 16
	move	$a3, $fp
	bne	$s8, $fp, .LBB1_18
# %bb.21:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_2
.LBB1_22:
	move	$a0, $a1
.LBB1_23:                               # %BF_LoadHolderFromBitstreamPart.exit108.i
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $t3, 16
	ld.wu	$a2, $a1, 0
	addi.w	$a3, $a2, 0
	st.d	$a0, $s3, 32
	beqz	$a3, .LBB1_26
# %bb.24:                               # %.lr.ph.preheader.i.i
	ld.d	$a4, $a1, 8
	ori	$a0, $zero, 8
	bgeu	$a2, $a0, .LBB1_27
# %bb.25:
	move	$a1, $zero
	move	$a0, $zero
	move	$a3, $a4
	b	.LBB1_30
.LBB1_26:
	move	$a1, $zero
	b	.LBB1_32
.LBB1_27:                               # %vector.ph
	bstrpick.d	$a1, $a2, 31, 3
	slli.d	$a0, $a1, 3
	slli.d	$a1, $a1, 6
	add.d	$a3, $a4, $a1
	vrepli.b	$vr0, 0
	addi.d	$a1, $a4, 36
	move	$a4, $a0
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB1_28:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, -32
	ld.h	$a6, $a1, -24
	ld.h	$a7, $a1, -16
	ld.h	$t0, $a1, -8
	vinsgr2vr.h	$vr3, $a5, 0
	vinsgr2vr.h	$vr3, $a6, 1
	vinsgr2vr.h	$vr3, $a7, 2
	vinsgr2vr.h	$vr3, $t0, 3
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a1, 8
	ld.h	$a7, $a1, 16
	ld.h	$t0, $a1, 24
	vinsgr2vr.h	$vr4, $a5, 0
	vinsgr2vr.h	$vr4, $a6, 1
	vinsgr2vr.h	$vr4, $a7, 2
	vinsgr2vr.h	$vr4, $t0, 3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 64
	bnez	$a4, .LBB1_28
# %bb.29:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a0, $a2, .LBB1_32
.LBB1_30:                               # %.lr.ph.i110.i.preheader
	sub.d	$a0, $a2, $a0
	addi.d	$a2, $a3, 4
	.p2align	4, , 16
.LBB1_31:                               # %.lr.ph.i110.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a2, 0
	add.d	$a1, $a1, $a3
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_31
.LBB1_32:                               # %BF_PartLength.exit.i
	ld.d	$a2, $t3, 24
	ld.w	$a0, $a2, 0
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_35
# %bb.33:                               # %.lr.ph.preheader.i113.i
	ld.d	$a6, $a2, 8
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB1_36
# %bb.34:
	move	$a5, $zero
	move	$a2, $zero
	move	$a3, $a6
	b	.LBB1_39
.LBB1_35:
	move	$a5, $zero
	b	.LBB1_41
.LBB1_36:                               # %vector.ph147
	bstrpick.d	$a4, $a0, 31, 0
	bstrpick.d	$a3, $a4, 31, 3
	slli.d	$a2, $a3, 3
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	vrepli.b	$vr0, 0
	addi.d	$a5, $a6, 36
	move	$a6, $a2
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB1_37:                               # %vector.body150
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a5, -32
	ld.h	$t0, $a5, -24
	ld.h	$t1, $a5, -16
	ld.h	$t2, $a5, -8
	vinsgr2vr.h	$vr3, $a7, 0
	vinsgr2vr.h	$vr3, $t0, 1
	vinsgr2vr.h	$vr3, $t1, 2
	vinsgr2vr.h	$vr3, $t2, 3
	ld.h	$a7, $a5, 0
	ld.h	$t0, $a5, 8
	ld.h	$t1, $a5, 16
	ld.h	$t2, $a5, 24
	vinsgr2vr.h	$vr4, $a7, 0
	vinsgr2vr.h	$vr4, $t0, 1
	vinsgr2vr.h	$vr4, $t1, 2
	vinsgr2vr.h	$vr4, $t2, 3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_37
# %bb.38:                               # %middle.block164
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a2, $a4, .LBB1_41
.LBB1_39:                               # %.lr.ph.i114.i.preheader
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $a3, 4
	.p2align	4, , 16
.LBB1_40:                               # %.lr.ph.i114.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a2, 0
	add.d	$a5, $a5, $a3
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_40
.LBB1_41:                               # %BF_PartLength.exit120.i
	ld.w	$a0, $t3, 8
	add.d	$s6, $a5, $a1
	blez	$a0, .LBB1_61
# %bb.42:                               # %.lr.ph192.i
	move	$fp, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$t1, $a0, 40
	addi.d	$t2, $t3, 32
	vrepli.b	$vr4, 0
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_43:                               #   in Loop: Header=BB1_45 Depth=1
	move	$a3, $zero
.LBB1_44:                               # %BF_PartLength.exit143.i
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	addi.d	$fp, $fp, 1
	add.d	$s6, $a3, $s6
	bge	$fp, $a0, .LBB1_61
.LBB1_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_49 Depth 2
                                        #       Child Loop BB1_52 Depth 3
                                        #     Child Loop BB1_57 Depth 2
                                        #     Child Loop BB1_60 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$s2, $t1, $a0
	ld.d	$a1, $s2, 8
	move	$s7, $t2
	ldx.d	$s1, $t2, $a0
	st.w	$zero, $a1, 0
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB1_53
# %bb.46:                               # %.lr.ph.i122.i
                                        #   in Loop: Header=BB1_45 Depth=1
	move	$s8, $zero
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_47:                               # %BF_resizePartHolder.exit.i
                                        #   in Loop: Header=BB1_49 Depth=2
	ld.d	$a0, $s2, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 8
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	move	$s2, $s3
	vld	$vr4, $sp, 96                   # 16-byte Folded Reload
.LBB1_48:                               # %BF_addElement.exit.i125.i
                                        #   in Loop: Header=BB1_49 Depth=2
	alsl.d	$a3, $s8, $s0, 3
	ld.d	$a4, $a1, 8
	st.w	$a2, $a1, 0
	ld.d	$a1, $a3, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	ld.wu	$a0, $s1, 0
	addi.d	$s8, $s8, 1
	bgeu	$s8, $a0, .LBB1_53
.LBB1_49:                               #   Parent Loop BB1_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_52 Depth 3
	ld.d	$a1, $s2, 8
	ld.w	$a0, $a1, 0
	ld.w	$a3, $s2, 0
	ld.d	$s0, $s1, 8
	addi.w	$a2, $a0, 1
	bge	$a3, $a2, .LBB1_48
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=2
	addi.w	$s5, $a0, 9
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.w	$s5, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s3, 8
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s4, 8
	slt	$a0, $a1, $s5
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a2
	st.w	$a1, $s4, 0
	blez	$a1, .LBB1_47
# %bb.51:                               # %.lr.ph.i167.i
                                        #   in Loop: Header=BB1_49 Depth=2
	move	$a0, $zero
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB1_52:                               #   Parent Loop BB1_45 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s2, 8
	ld.d	$a2, $a2, 8
	ld.d	$a3, $s4, 8
	ldx.d	$a2, $a2, $a0
	stx.d	$a2, $a3, $a0
	addi.d	$a0, $a0, 8
	bne	$a1, $a0, .LBB1_52
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_53:                               # %BF_LoadHolderFromBitstreamPart.exit134.i
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $fp, $t1, 3
	move	$t2, $s7
	alsl.d	$a1, $fp, $s7, 3
	st.d	$s2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.wu	$a0, $a1, 0
	addi.w	$a2, $a0, 0
	beqz	$a2, .LBB1_43
# %bb.54:                               # %.lr.ph.preheader.i136.i
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a4, $a1, 8
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB1_56
# %bb.55:                               #   in Loop: Header=BB1_45 Depth=1
	move	$a3, $zero
	move	$a1, $zero
	move	$a2, $a4
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_56:                               # %vector.ph172
                                        #   in Loop: Header=BB1_45 Depth=1
	bstrpick.d	$a2, $a0, 31, 3
	slli.d	$a1, $a2, 3
	slli.d	$a2, $a2, 6
	add.d	$a2, $a4, $a2
	addi.d	$a3, $a4, 36
	move	$a4, $a1
	vori.b	$vr0, $vr4, 0
	vori.b	$vr1, $vr4, 0
	.p2align	4, , 16
.LBB1_57:                               # %vector.body175
                                        #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a3, -32
	ld.h	$a6, $a3, -24
	ld.h	$a7, $a3, -16
	ld.h	$t0, $a3, -8
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr2, $a6, 1
	vinsgr2vr.h	$vr2, $a7, 2
	vinsgr2vr.h	$vr2, $t0, 3
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a3, 8
	ld.h	$a7, $a3, 16
	ld.h	$t0, $a3, 24
	vinsgr2vr.h	$vr3, $a5, 0
	vinsgr2vr.h	$vr3, $a6, 1
	vinsgr2vr.h	$vr3, $a7, 2
	vinsgr2vr.h	$vr3, $t0, 3
	vilvl.h	$vr2, $vr4, $vr2
	vilvl.h	$vr3, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_57
# %bb.58:                               # %middle.block189
                                        #   in Loop: Header=BB1_45 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a1, $a0, .LBB1_44
.LBB1_59:                               # %.lr.ph.i137.i.preheader
                                        #   in Loop: Header=BB1_45 Depth=1
	sub.d	$a0, $a0, $a1
	addi.d	$a1, $a2, 4
	.p2align	4, , 16
.LBB1_60:                               # %.lr.ph.i137.i
                                        #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a2, $a1, 0
	add.d	$a3, $a3, $a2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB1_60
	b	.LBB1_44
.LBB1_61:                               # %.preheader179.i
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $t1, 4
	blez	$a1, .LBB1_86
# %bb.62:                               # %.preheader178.lr.ph.i
	blez	$a0, .LBB1_86
# %bb.63:                               # %.preheader178.i.preheader
	move	$a3, $zero
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 56
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a2, $t1, 48
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr4, 0
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	b	.LBB1_66
	.p2align	4, , 16
.LBB1_64:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB1_66 Depth=1
	ld.w	$a1, $t1, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB1_65:                               # %._crit_edge.i
                                        #   in Loop: Header=BB1_66 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a1, .LBB1_86
.LBB1_66:                               # %.preheader178.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
                                        #       Child Loop BB1_74 Depth 3
                                        #         Child Loop BB1_77 Depth 4
                                        #       Child Loop BB1_82 Depth 3
                                        #       Child Loop BB1_85 Depth 3
	blez	$a0, .LBB1_65
# %bb.67:                               # %.lr.ph196.i
                                        #   in Loop: Header=BB1_66 Depth=1
	move	$s0, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$t2, $a3, $a0, 4
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$t3, $a3, $a0, 4
	b	.LBB1_70
	.p2align	4, , 16
.LBB1_68:                               #   in Loop: Header=BB1_70 Depth=2
	move	$a3, $zero
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
.LBB1_69:                               # %BF_PartLength.exit166.i
                                        #   in Loop: Header=BB1_70 Depth=2
	ld.w	$a0, $t1, 8
	addi.d	$s0, $s0, 1
	add.d	$s6, $a3, $s6
	bge	$s0, $a0, .LBB1_64
.LBB1_70:                               #   Parent Loop BB1_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_74 Depth 3
                                        #         Child Loop BB1_77 Depth 4
                                        #       Child Loop BB1_82 Depth 3
                                        #       Child Loop BB1_85 Depth 3
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	move	$s1, $t2
	ldx.d	$s2, $t2, $a0
	ld.d	$a1, $s2, 8
	move	$s6, $t3
	ldx.d	$s8, $t3, $a0
	st.w	$zero, $a1, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB1_78
# %bb.71:                               # %.lr.ph.i145.i
                                        #   in Loop: Header=BB1_70 Depth=2
	move	$fp, $zero
	b	.LBB1_74
	.p2align	4, , 16
.LBB1_72:                               # %BF_resizePartHolder.exit177.i
                                        #   in Loop: Header=BB1_74 Depth=3
	ld.d	$a0, $s2, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 8
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	move	$s2, $s3
	vld	$vr4, $sp, 96                   # 16-byte Folded Reload
.LBB1_73:                               # %BF_addElement.exit.i148.i
                                        #   in Loop: Header=BB1_74 Depth=3
	alsl.d	$a3, $fp, $s7, 3
	ld.d	$a4, $a1, 8
	st.w	$a2, $a1, 0
	ld.d	$a1, $a3, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	ld.wu	$a0, $s8, 0
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB1_78
.LBB1_74:                               #   Parent Loop BB1_66 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_77 Depth 4
	ld.d	$a1, $s2, 8
	ld.w	$a0, $a1, 0
	ld.w	$a3, $s2, 0
	ld.d	$s7, $s8, 8
	addi.w	$a2, $a0, 1
	bge	$a3, $a2, .LBB1_73
# %bb.75:                               #   in Loop: Header=BB1_74 Depth=3
	addi.w	$s5, $a0, 9
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.w	$s5, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s3, 8
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s4, 8
	slt	$a0, $a1, $s5
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a2
	st.w	$a1, $s4, 0
	blez	$a1, .LBB1_72
# %bb.76:                               # %.lr.ph.i172.i
                                        #   in Loop: Header=BB1_74 Depth=3
	move	$a0, $zero
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB1_77:                               #   Parent Loop BB1_66 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        #       Parent Loop BB1_74 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $s2, 8
	ld.d	$a2, $a2, 8
	ld.d	$a3, $s4, 8
	ldx.d	$a2, $a2, $a0
	stx.d	$a2, $a3, $a0
	addi.d	$a0, $a0, 8
	bne	$a1, $a0, .LBB1_77
	b	.LBB1_72
	.p2align	4, , 16
.LBB1_78:                               # %BF_LoadHolderFromBitstreamPart.exit157.i
                                        #   in Loop: Header=BB1_70 Depth=2
	move	$t2, $s1
	alsl.d	$a0, $s0, $s1, 3
	move	$t3, $s6
	alsl.d	$a1, $s0, $s6, 3
	st.d	$s2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.wu	$a0, $a1, 0
	addi.w	$a2, $a0, 0
	beqz	$a2, .LBB1_68
# %bb.79:                               # %.lr.ph.preheader.i159.i
                                        #   in Loop: Header=BB1_70 Depth=2
	ld.d	$a4, $a1, 8
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 8
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_70 Depth=2
	move	$a3, $zero
	move	$a1, $zero
	move	$a2, $a4
	b	.LBB1_84
	.p2align	4, , 16
.LBB1_81:                               # %vector.ph197
                                        #   in Loop: Header=BB1_70 Depth=2
	bstrpick.d	$a2, $a0, 31, 3
	slli.d	$a1, $a2, 3
	slli.d	$a2, $a2, 6
	add.d	$a2, $a4, $a2
	addi.d	$a3, $a4, 36
	move	$a4, $a1
	vori.b	$vr0, $vr4, 0
	vori.b	$vr1, $vr4, 0
	.p2align	4, , 16
.LBB1_82:                               # %vector.body200
                                        #   Parent Loop BB1_66 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a5, $a3, -32
	ld.h	$a6, $a3, -24
	ld.h	$a7, $a3, -16
	ld.h	$t0, $a3, -8
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr2, $a6, 1
	vinsgr2vr.h	$vr2, $a7, 2
	vinsgr2vr.h	$vr2, $t0, 3
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a3, 8
	ld.h	$a7, $a3, 16
	ld.h	$t0, $a3, 24
	vinsgr2vr.h	$vr3, $a5, 0
	vinsgr2vr.h	$vr3, $a6, 1
	vinsgr2vr.h	$vr3, $a7, 2
	vinsgr2vr.h	$vr3, $t0, 3
	vilvl.h	$vr2, $vr4, $vr2
	vilvl.h	$vr3, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_82
# %bb.83:                               # %middle.block214
                                        #   in Loop: Header=BB1_70 Depth=2
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a1, $a0, .LBB1_69
.LBB1_84:                               # %.lr.ph.i160.i.preheader
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$a0, $a0, $a1
	addi.d	$a1, $a2, 4
	.p2align	4, , 16
.LBB1_85:                               # %.lr.ph.i160.i
                                        #   Parent Loop BB1_66 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a2, $a1, 0
	add.d	$a3, $a3, $a2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB1_85
	b	.LBB1_69
.LBB1_86:                               # %._crit_edge200.i
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.w	$s6, $a2, 12
	pcalau12i	$a2, %pc_hi20(side_queue_head)
	addi.d	$a2, $a2, %pc_lo12(side_queue_head)
	ld.d	$a3, $a2, 0
	beqz	$a3, .LBB1_88
	.p2align	4, , 16
.LBB1_87:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB1_87
.LBB1_88:                               # %store_side_info.exit
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.d	$a3, $a2, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.w	$s6, $a2, 0
	st.w	$zero, $a2, 4
	pcalau12i	$s4, %pc_hi20(BitCount)
	pcalau12i	$s5, %pc_hi20(ThisFrameSize)
	pcalau12i	$s3, %pc_hi20(BitsRemaining)
	blez	$a1, .LBB1_126
# %bb.89:                               # %.preheader.lr.ph.i
	blez	$a0, .LBB1_136
# %bb.90:                               # %.preheader.i6.preheader
	move	$a2, $zero
	move	$s8, $zero
	addi.d	$a3, $t1, 80
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a3, $t1, 112
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a3, $t1, 144
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_91:                               # %._crit_edge.loopexit.i17
                                        #   in Loop: Header=BB1_93 Depth=1
	ld.w	$a1, $t1, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
.LBB1_92:                               # %._crit_edge.i7
                                        #   in Loop: Header=BB1_93 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a1, .LBB1_127
.LBB1_93:                               # %.preheader.i6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_97 Depth 2
                                        #       Child Loop BB1_100 Depth 3
                                        #       Child Loop BB1_110 Depth 3
                                        #       Child Loop BB1_120 Depth 3
	blez	$a0, .LBB1_92
# %bb.94:                               # %.lr.ph.i9
                                        #   in Loop: Header=BB1_93 Depth=1
	move	$a3, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_97
	.p2align	4, , 16
.LBB1_95:                               #   in Loop: Header=BB1_97 Depth=2
	move	$s7, $zero
.LBB1_96:                               # %writePartMainData.exit58.i
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $t1, 8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $s8, $a1
	add.d	$a1, $a1, $s0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	add.d	$s8, $a1, $s7
	bge	$a3, $a0, .LBB1_91
.LBB1_97:                               #   Parent Loop BB1_93 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_100 Depth 3
                                        #       Child Loop BB1_110 Depth 3
                                        #       Child Loop BB1_120 Depth 3
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	slli.d	$s7, $a3, 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s0, $a0, $s7
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB1_106
# %bb.98:                               # %.lr.ph.preheader.i.i12
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$a1, $s0, 8
	move	$s8, $zero
	move	$s6, $zero
	addi.d	$fp, $a1, 4
	b	.LBB1_100
	.p2align	4, , 16
.LBB1_99:                               #   in Loop: Header=BB1_100 Depth=3
	move	$a1, $zero
	add.d	$s8, $a1, $s8
	addi.w	$s6, $s6, 1
	addi.d	$fp, $fp, 8
	bgeu	$s6, $a0, .LBB1_107
.LBB1_100:                              # %.lr.ph.i.i13
                                        #   Parent Loop BB1_93 Depth=1
                                        #     Parent Loop BB1_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s1, $fp, 0
	beqz	$s1, .LBB1_99
# %bb.101:                              #   in Loop: Header=BB1_100 Depth=3
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	ld.w	$s2, $fp, -4
	bne	$a0, $a1, .LBB1_103
# %bb.102:                              #   in Loop: Header=BB1_100 Depth=3
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.w	$a1, $a1, $a0
	st.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bltu	$a1, $s1, .LBB1_104
	b	.LBB1_105
	.p2align	4, , 16
.LBB1_103:                              # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB1_100 Depth=3
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bgeu	$a1, $s1, .LBB1_105
.LBB1_104:                              #   in Loop: Header=BB1_100 Depth=3
	sub.w	$s1, $s1, $a1
	srl.w	$a0, $s2, $s1
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
.LBB1_105:                              #   in Loop: Header=BB1_100 Depth=3
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	add.d	$a0, $a0, $s1
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $s1
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
	ld.hu	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	add.d	$s8, $a1, $s8
	addi.w	$s6, $s6, 1
	addi.d	$fp, $fp, 8
	bltu	$s6, $a0, .LBB1_100
	b	.LBB1_107
	.p2align	4, , 16
.LBB1_106:                              #   in Loop: Header=BB1_97 Depth=2
	move	$s8, $zero
.LBB1_107:                              # %writePartMainData.exit.i
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	ldx.d	$s6, $a0, $s7
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB1_116
# %bb.108:                              # %.lr.ph.preheader.i32.i
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$a1, $s6, 8
	move	$s0, $zero
	move	$s7, $zero
	addi.d	$fp, $a1, 4
	b	.LBB1_110
	.p2align	4, , 16
.LBB1_109:                              #   in Loop: Header=BB1_110 Depth=3
	move	$a1, $zero
	add.d	$s0, $a1, $s0
	addi.w	$s7, $s7, 1
	addi.d	$fp, $fp, 8
	bgeu	$s7, $a0, .LBB1_117
.LBB1_110:                              # %.lr.ph.i33.i
                                        #   Parent Loop BB1_93 Depth=1
                                        #     Parent Loop BB1_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s1, $fp, 0
	beqz	$s1, .LBB1_109
# %bb.111:                              #   in Loop: Header=BB1_110 Depth=3
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	ld.w	$s2, $fp, -4
	bne	$a0, $a1, .LBB1_113
# %bb.112:                              #   in Loop: Header=BB1_110 Depth=3
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.w	$a1, $a1, $a0
	st.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bltu	$a1, $s1, .LBB1_114
	b	.LBB1_115
	.p2align	4, , 16
.LBB1_113:                              # %._crit_edge.i.i37.i
                                        #   in Loop: Header=BB1_110 Depth=3
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bgeu	$a1, $s1, .LBB1_115
.LBB1_114:                              #   in Loop: Header=BB1_110 Depth=3
	sub.w	$s1, $s1, $a1
	srl.w	$a0, $s2, $s1
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
.LBB1_115:                              #   in Loop: Header=BB1_110 Depth=3
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	add.d	$a0, $a0, $s1
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $s1
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
	ld.hu	$a1, $fp, 0
	ld.w	$a0, $s6, 0
	add.d	$s0, $a1, $s0
	addi.w	$s7, $s7, 1
	addi.d	$fp, $fp, 8
	bltu	$s7, $a0, .LBB1_110
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_116:                              #   in Loop: Header=BB1_97 Depth=2
	move	$s0, $zero
.LBB1_117:                              # %writePartMainData.exit44.i
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a1
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB1_95
# %bb.118:                              # %.lr.ph.preheader.i46.i
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$a1, $a2, 8
	move	$s7, $zero
	move	$fp, $zero
	addi.d	$s6, $a1, 4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_120
	.p2align	4, , 16
.LBB1_119:                              #   in Loop: Header=BB1_120 Depth=3
	move	$a1, $zero
	add.d	$s7, $a1, $s7
	addi.w	$fp, $fp, 1
	addi.d	$s6, $s6, 8
	bgeu	$fp, $a0, .LBB1_96
.LBB1_120:                              # %.lr.ph.i47.i
                                        #   Parent Loop BB1_93 Depth=1
                                        #     Parent Loop BB1_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s1, $s6, 0
	beqz	$s1, .LBB1_119
# %bb.121:                              #   in Loop: Header=BB1_120 Depth=3
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	ld.w	$s2, $s6, -4
	bne	$a0, $a1, .LBB1_123
# %bb.122:                              #   in Loop: Header=BB1_120 Depth=3
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.w	$a1, $a1, $a0
	st.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bltu	$a1, $s1, .LBB1_124
	b	.LBB1_125
	.p2align	4, , 16
.LBB1_123:                              # %._crit_edge.i.i51.i
                                        #   in Loop: Header=BB1_120 Depth=3
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bgeu	$a1, $s1, .LBB1_125
.LBB1_124:                              #   in Loop: Header=BB1_120 Depth=3
	sub.w	$s1, $s1, $a1
	srl.w	$a0, $s2, $s1
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
.LBB1_125:                              #   in Loop: Header=BB1_120 Depth=3
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	add.d	$a0, $a0, $s1
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $s1
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
	ld.hu	$a1, $s6, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	add.d	$s7, $a1, $s7
	addi.w	$fp, $fp, 1
	addi.d	$s6, $s6, 8
	bltu	$fp, $a0, .LBB1_120
	b	.LBB1_96
.LBB1_126:
	move	$s8, $zero
.LBB1_127:                              # %._crit_edge80.i
	ld.d	$s2, $t1, 176
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB1_137
.LBB1_128:                              # %.lr.ph.preheader.i60.i
	ld.d	$a1, $s2, 8
	move	$fp, $zero
	move	$s6, $zero
	addi.d	$s7, $a1, 4
	b	.LBB1_130
	.p2align	4, , 16
.LBB1_129:                              #   in Loop: Header=BB1_130 Depth=1
	move	$a1, $zero
	add.d	$fp, $a1, $fp
	addi.w	$s6, $s6, 1
	addi.d	$s7, $s7, 8
	bgeu	$s6, $a0, .LBB1_138
.LBB1_130:                              # %.lr.ph.i61.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$s0, $s7, 0
	beqz	$s0, .LBB1_129
# %bb.131:                              #   in Loop: Header=BB1_130 Depth=1
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	ld.w	$s1, $s7, -4
	bne	$a0, $a1, .LBB1_133
# %bb.132:                              #   in Loop: Header=BB1_130 Depth=1
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.w	$a1, $a1, $a0
	st.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bltu	$a1, $s0, .LBB1_134
	b	.LBB1_135
	.p2align	4, , 16
.LBB1_133:                              # %._crit_edge.i.i65.i
                                        #   in Loop: Header=BB1_130 Depth=1
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bgeu	$a1, $s0, .LBB1_135
.LBB1_134:                              #   in Loop: Header=BB1_130 Depth=1
	sub.w	$s0, $s0, $a1
	srl.w	$a0, $s1, $s0
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
.LBB1_135:                              #   in Loop: Header=BB1_130 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(BitCount)
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	add.d	$a0, $a0, $s0
	st.w	$a0, $s4, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $s0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
	ld.hu	$a1, $s7, 0
	ld.w	$a0, $s2, 0
	add.d	$fp, $a1, $fp
	addi.w	$s6, $s6, 1
	addi.d	$s7, $s7, 8
	bltu	$s6, $a0, .LBB1_130
	b	.LBB1_138
.LBB1_136:
	move	$s8, $zero
	ld.d	$s2, $t1, 176
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB1_128
.LBB1_137:
	move	$fp, $zero
.LBB1_138:                              # %main_data.exit
	pcalau12i	$a0, %pc_hi20(side_queue_head)
	ld.d	$a2, $a0, %pc_lo12(side_queue_head)
	add.d	$a0, $fp, $s8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a1, 4
	pcalau12i	$a3, %pc_hi20(forwardFrameLength)
	st.w	$zero, $a3, %pc_lo12(forwardFrameLength)
	beqz	$a2, .LBB1_142
# %bb.139:                              # %.lr.ph.i19.preheader
	move	$a1, $zero
	move	$a0, $zero
	move	$a4, $zero
	.p2align	4, , 16
.LBB1_140:                              # %.lr.ph.i19
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 8
	ld.w	$a6, $a2, 12
	ld.d	$a2, $a2, 0
	addi.d	$a1, $a1, 1
	add.w	$a4, $a5, $a4
	add.w	$a0, $a6, $a0
	bnez	$a2, .LBB1_140
# %bb.141:                              # %._crit_edge.i21
	st.w	$a4, $a3, %pc_lo12(forwardFrameLength)
	bstrpick.d	$a2, $a4, 62, 60
	add.w	$a2, $a4, $a2
	srai.d	$a2, $a2, 3
	b	.LBB1_143
.LBB1_142:
	move	$a2, $zero
	move	$a0, $zero
	move	$a1, $zero
.LBB1_143:                              # %side_queue_elements.exit
	pcalau12i	$a3, %pc_hi20(forwardSILength)
	ld.w	$a4, $s3, %pc_lo12(BitsRemaining)
	st.w	$a0, $a3, %pc_lo12(forwardSILength)
	pcalau12i	$a3, %pc_hi20(elements)
	st.w	$a1, $a3, %pc_lo12(elements)
	bstrpick.d	$a1, $a4, 62, 60
	add.w	$a1, $a4, $a1
	srli.d	$a1, $a1, 3
	bstrpick.d	$a3, $a0, 62, 60
	add.w	$a0, $a0, $a3
	srli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a1, 8
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB1_144:                              # %.preheader181.thread.i
	move	$s3, $s6
	ld.w	$a3, $s0, 4
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_2
.LBB1_145:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_2
.LBB1_146:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	BF_BitstreamFrame, .Lfunc_end1-BF_BitstreamFrame
                                        # -- End function
	.globl	BF_FlushBitstream               # -- Begin function BF_FlushBitstream
	.p2align	5
	.type	BF_FlushBitstream,@function
BF_FlushBitstream:                      # @BF_FlushBitstream
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %pc_hi20(elements)
	ld.w	$a0, $a0, %pc_lo12(elements)
	pcalau12i	$s4, %pc_hi20(forwardFrameLength)
	pcalau12i	$s5, %pc_hi20(forwardSILength)
	pcalau12i	$s1, %pc_hi20(BitCount)
	pcalau12i	$s2, %pc_hi20(ThisFrameSize)
	pcalau12i	$s3, %pc_hi20(BitsRemaining)
	beqz	$a0, .LBB2_14
# %bb.1:
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s4, %pc_lo12(forwardFrameLength)
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $s5, %pc_lo12(forwardSILength)
	sub.w	$s6, $a0, $a1
	addi.w	$a0, $s6, 31
	ori	$a1, $zero, 63
	bstrpick.d	$s7, $s6, 62, 58
	bgeu	$a0, $a1, .LBB2_5
.LBB2_2:                                # %._crit_edge
	add.d	$a0, $s6, $s7
	bstrpick.d	$a0, $a0, 31, 5
	slli.d	$a0, $a0, 5
	sub.w	$s0, $s6, $a0
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	beqz	$s0, .LBB2_14
# %bb.3:
	ld.w	$a0, $s1, %pc_lo12(BitCount)
	ld.w	$a1, $s2, %pc_lo12(ThisFrameSize)
	bne	$a0, $a1, .LBB2_11
# %bb.4:
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s1, %pc_lo12(BitCount)
	sub.w	$a1, $a1, $a0
	st.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bltu	$a1, $s0, .LBB2_12
	b	.LBB2_13
.LBB2_5:                                # %.lr.ph.preheader
	add.w	$a1, $s6, $s7
	ld.w	$a0, $s1, %pc_lo12(BitCount)
	srai.d	$s8, $a1, 5
	ori	$s4, $zero, 31
	ori	$s5, $zero, 32
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %WriteMainDataBits.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.w	$s8, $s8, -1
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(BitCount)
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	add.w	$a0, $a0, $s0
	st.w	$a0, $s1, %pc_lo12(BitCount)
	sub.d	$a1, $a1, $s0
	st.w	$a1, $s3, %pc_lo12(BitsRemaining)
	beqz	$s8, .LBB2_2
.LBB2_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, %pc_lo12(ThisFrameSize)
	bne	$a0, $a1, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s1, %pc_lo12(BitCount)
	sub.w	$a1, $a1, $a0
	st.w	$a1, $s3, %pc_lo12(BitsRemaining)
	ori	$s0, $zero, 32
	bltu	$s4, $a1, .LBB2_6
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	ori	$s0, $zero, 32
	bltu	$s4, $a1, .LBB2_6
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	sub.w	$s0, $s5, $a1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s1, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
	b	.LBB2_6
.LBB2_11:                               # %._crit_edge.i8
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	bgeu	$a1, $s0, .LBB2_13
.LBB2_12:
	sub.w	$s0, $s0, $a1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(write_side_info)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(ThisFrameSize)
	st.w	$a0, $s1, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
.LBB2_13:
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(BitCount)
	ld.w	$a1, $s3, %pc_lo12(BitsRemaining)
	add.d	$a0, $a0, $s0
	st.w	$a0, $s1, %pc_lo12(BitCount)
	sub.d	$a0, $a1, $s0
	st.w	$a0, $s3, %pc_lo12(BitsRemaining)
.LBB2_14:                               # %WriteMainDataBits.exit11
	ld.w	$a1, $s4, %pc_lo12(forwardFrameLength)
	ld.w	$a2, $s5, %pc_lo12(forwardSILength)
	pcalau12i	$s0, %pc_hi20(side_queue_head)
	ld.d	$a0, $s0, %pc_lo12(side_queue_head)
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 4
	st.w	$a2, $fp, 0
	st.w	$zero, $fp, 8
	beqz	$a0, .LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free_side_info_link)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB2_15
.LBB2_16:                               # %._crit_edge.i12
	pcalau12i	$fp, %pc_hi20(side_queue_free)
	ld.d	$a0, $fp, %pc_lo12(side_queue_free)
	st.d	$zero, $s0, %pc_lo12(side_queue_head)
	beqz	$a0, .LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %.lr.ph14.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	pcaddu18i	$ra, %call36(free_side_info_link)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB2_17
.LBB2_18:                               # %free_side_queues.exit
	st.d	$zero, $fp, %pc_lo12(side_queue_free)
	st.w	$zero, $s1, %pc_lo12(BitCount)
	st.w	$zero, $s2, %pc_lo12(ThisFrameSize)
	st.w	$zero, $s3, %pc_lo12(BitsRemaining)
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	BF_FlushBitstream, .Lfunc_end2-BF_FlushBitstream
                                        # -- End function
	.globl	BF_PartLength                   # -- Begin function BF_PartLength
	.p2align	5
	.type	BF_PartLength,@function
BF_PartLength:                          # @BF_PartLength
# %bb.0:
	ld.w	$a1, $a0, 0
	beqz	$a1, .LBB3_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a5, $a0, 8
	ori	$a0, $zero, 8
	bgeu	$a1, $a0, .LBB3_4
# %bb.2:
	move	$a4, $zero
	move	$a0, $zero
	move	$a2, $a5
	b	.LBB3_7
.LBB3_3:
	move	$a4, $zero
	addi.w	$a0, $a4, 0
	ret
.LBB3_4:                                # %vector.ph
	bstrpick.d	$a3, $a1, 31, 0
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a0, $a2, 3
	slli.d	$a2, $a2, 6
	add.d	$a2, $a5, $a2
	vrepli.b	$vr0, 0
	addi.d	$a4, $a5, 36
	move	$a5, $a0
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a4, -32
	ld.h	$a7, $a4, -24
	ld.h	$t0, $a4, -16
	ld.h	$t1, $a4, -8
	vinsgr2vr.h	$vr3, $a6, 0
	vinsgr2vr.h	$vr3, $a7, 1
	vinsgr2vr.h	$vr3, $t0, 2
	vinsgr2vr.h	$vr3, $t1, 3
	ld.h	$a6, $a4, 0
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 16
	ld.h	$t1, $a4, 24
	vinsgr2vr.h	$vr4, $a6, 0
	vinsgr2vr.h	$vr4, $a7, 1
	vinsgr2vr.h	$vr4, $t0, 2
	vinsgr2vr.h	$vr4, $t1, 3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a0, $a3, .LBB3_9
.LBB3_7:                                # %.lr.ph.preheader21
	sub.d	$a0, $a1, $a0
	addi.d	$a1, $a2, 4
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 0
	add.d	$a4, $a4, $a2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB3_8
.LBB3_9:                                # %._crit_edge
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end3:
	.size	BF_PartLength, .Lfunc_end3-BF_PartLength
                                        # -- End function
	.globl	BF_newPartHolder                # -- Begin function BF_newPartHolder
	.p2align	5
	.type	BF_newPartHolder,@function
BF_newPartHolder:                       # @BF_newPartHolder
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 8
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	BF_newPartHolder, .Lfunc_end4-BF_newPartHolder
                                        # -- End function
	.globl	BF_NewHolderFromBitstreamPart   # -- Begin function BF_NewHolderFromBitstreamPart
	.p2align	5
	.type	BF_NewHolderFromBitstreamPart,@function
BF_NewHolderFromBitstreamPart:          # @BF_NewHolderFromBitstreamPart
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s0, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$s0, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $s1
	st.d	$a0, $s1, 8
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	beqz	$s0, .LBB5_5
# %bb.1:                                # %.lr.ph.i
	move	$s0, $zero
	move	$s1, $zero
	move	$a0, $s3
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %BF_addElement.exit.i
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a4, $a2, 8
	st.w	$a3, $a2, 0
	ldx.d	$a2, $s2, $s0
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
	ld.wu	$a1, $fp, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bgeu	$s1, $a1, .LBB5_6
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	ld.w	$a4, $a0, 0
	ld.d	$s2, $fp, 8
	addi.w	$a3, $a1, 1
	bge	$a4, $a3, .LBB5_2
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a1, $a1, 9
	pcaddu18i	$ra, %call36(BF_resizePartHolder)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	addi.d	$a3, $a1, 1
	b	.LBB5_2
.LBB5_5:
	move	$a0, $s3
.LBB5_6:                                # %BF_LoadHolderFromBitstreamPart.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	BF_NewHolderFromBitstreamPart, .Lfunc_end5-BF_NewHolderFromBitstreamPart
                                        # -- End function
	.globl	BF_LoadHolderFromBitstreamPart  # -- Begin function BF_LoadHolderFromBitstreamPart
	.p2align	5
	.type	BF_LoadHolderFromBitstreamPart,@function
BF_LoadHolderFromBitstreamPart:         # @BF_LoadHolderFromBitstreamPart
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	move	$fp, $a1
	st.w	$zero, $a2, 0
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB6_5
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %BF_addElement.exit
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a4, $a2, 8
	st.w	$a3, $a2, 0
	ldx.d	$a2, $s2, $s0
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
	ld.wu	$a1, $fp, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bgeu	$s1, $a1, .LBB6_5
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	ld.w	$a4, $a0, 0
	ld.d	$s2, $fp, 8
	addi.w	$a3, $a1, 1
	bge	$a4, $a3, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	addi.w	$a1, $a1, 9
	pcaddu18i	$ra, %call36(BF_resizePartHolder)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 0
	addi.d	$a3, $a1, 1
	b	.LBB6_2
.LBB6_5:                                # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	BF_LoadHolderFromBitstreamPart, .Lfunc_end6-BF_LoadHolderFromBitstreamPart
                                        # -- End function
	.globl	BF_addElement                   # -- Begin function BF_addElement
	.p2align	5
	.type	BF_addElement,@function
BF_addElement:                          # @BF_addElement
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a3, $a0, 8
	ld.w	$a2, $a3, 0
	ld.w	$a5, $a0, 0
	addi.w	$a4, $a2, 1
	move	$fp, $a1
	bge	$a5, $a4, .LBB7_2
# %bb.1:
	addi.w	$a1, $a2, 9
	pcaddu18i	$ra, %call36(BF_resizePartHolder)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 8
	ld.w	$a2, $a3, 0
	addi.d	$a4, $a2, 1
.LBB7_2:
	ld.d	$a1, $a3, 8
	st.w	$a4, $a3, 0
	ld.d	$a3, $fp, 0
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a1, $a2
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	BF_addElement, .Lfunc_end7-BF_addElement
                                        # -- End function
	.globl	BF_resizePartHolder             # -- Begin function BF_resizePartHolder
	.p2align	5
	.type	BF_resizePartHolder,@function
BF_resizePartHolder:                    # @BF_resizePartHolder
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$s2, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 8
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s1, 8
	slt	$a0, $a1, $s2
	masknez	$a2, $s2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a2
	st.w	$a1, $s1, 0
	blez	$a1, .LBB8_3
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 8
	ld.d	$a2, $a2, 8
	ld.d	$a3, $s1, 8
	ldx.d	$a2, $a2, $a0
	stx.d	$a2, $a3, $a0
	addi.d	$a0, $a0, 8
	bne	$a1, $a0, .LBB8_2
.LBB8_3:                                # %._crit_edge
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	BF_resizePartHolder, .Lfunc_end8-BF_resizePartHolder
                                        # -- End function
	.globl	BF_freePartHolder               # -- Begin function BF_freePartHolder
	.p2align	5
	.type	BF_freePartHolder,@function
BF_freePartHolder:                      # @BF_freePartHolder
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	BF_freePartHolder, .Lfunc_end9-BF_freePartHolder
                                        # -- End function
	.globl	BF_addEntry                     # -- Begin function BF_addEntry
	.p2align	5
	.type	BF_addEntry,@function
BF_addEntry:                            # @BF_addEntry
# %bb.0:
	beqz	$a2, .LBB10_4
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a4, $a0, 8
	ld.w	$a3, $a4, 0
	ld.w	$a6, $a0, 0
	addi.w	$a5, $a3, 1
	bge	$a6, $a5, .LBB10_3
# %bb.2:
	addi.w	$a3, $a3, 9
	move	$fp, $a1
	move	$a1, $a3
	move	$s0, $a2
	pcaddu18i	$ra, %call36(BF_resizePartHolder)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a1, $fp
	ld.d	$a4, $a0, 8
	ld.w	$a3, $a4, 0
	addi.d	$a5, $a3, 1
.LBB10_3:                               # %BF_addElement.exit
	ld.d	$a6, $a4, 8
	st.w	$a5, $a4, 0
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 3
	bstrpick.d	$a2, $a2, 15, 0
	bstrins.d	$a1, $a2, 63, 32
	stx.d	$a1, $a6, $a3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB10_4:
	ret
.Lfunc_end10:
	.size	BF_addEntry, .Lfunc_end10-BF_addEntry
                                        # -- End function
	.p2align	5                               # -- Begin function write_side_info
	.type	write_side_info,@function
write_side_info:                        # @write_side_info
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
	pcalau12i	$a0, %pc_hi20(side_queue_head)
	ld.d	$s0, $a0, %pc_lo12(side_queue_head)
	ld.d	$a1, $s0, 24
	pcalau12i	$a2, %pc_hi20(side_queue_free)
	ld.d	$a3, $a2, %pc_lo12(side_queue_free)
	ld.w	$a4, $s0, 8
	ld.d	$s1, $a1, 8
	ld.d	$a1, $s0, 0
	pcalau12i	$a5, %pc_hi20(ThisFrameSize)
	st.w	$a4, $a5, %pc_lo12(ThisFrameSize)
	ld.w	$a4, $s1, 0
	st.d	$a1, $a0, %pc_lo12(side_queue_head)
	st.d	$s0, $a2, %pc_lo12(side_queue_free)
	st.d	$a3, $s0, 0
	beqz	$a4, .LBB11_7
# %bb.1:                                # %.lr.ph.preheader.i
	ld.d	$s2, $s1, 8
	move	$fp, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	ld.hu	$a1, $s2, 4
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 4
	ld.w	$a1, $s1, 0
	add.d	$fp, $fp, $a0
	addi.w	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bltu	$s3, $a1, .LBB11_2
# %bb.3:                                # %writePartSideInfo.exit
	ld.d	$a0, $s0, 32
	ld.d	$s1, $a0, 8
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB11_8
.LBB11_4:                               # %.lr.ph.preheader.i29
	ld.d	$s3, $s1, 8
	move	$s2, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB11_5:                               # %.lr.ph.i30
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	ld.hu	$a1, $s3, 4
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s3, 4
	ld.w	$a1, $s1, 0
	add.d	$s2, $s2, $a0
	addi.w	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bltu	$s4, $a1, .LBB11_5
# %bb.6:                                # %writePartSideInfo.exit35
	ld.w	$a0, $s0, 20
	add.w	$fp, $s2, $fp
	bgtz	$a0, .LBB11_9
	b	.LBB11_15
.LBB11_7:
	move	$fp, $zero
	ld.d	$a0, $s0, 32
	ld.d	$s1, $a0, 8
	ld.w	$a0, $s1, 0
	bnez	$a0, .LBB11_4
.LBB11_8:
	move	$s2, $zero
	ld.w	$a0, $s0, 20
	add.w	$fp, $s2, $fp
	blez	$a0, .LBB11_15
.LBB11_9:                               # %.lr.ph
	move	$s1, $zero
	addi.d	$s2, $s0, 40
	b	.LBB11_11
	.p2align	4, , 16
.LBB11_10:                              #   in Loop: Header=BB11_11 Depth=1
	move	$s3, $zero
	addi.d	$s1, $s1, 1
	add.w	$fp, $s3, $fp
	bge	$s1, $a0, .LBB11_15
.LBB11_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_13 Depth 2
	slli.d	$a1, $s1, 3
	ldx.d	$a1, $s2, $a1
	ld.d	$s4, $a1, 8
	ld.w	$a1, $s4, 0
	beqz	$a1, .LBB11_10
# %bb.12:                               # %.lr.ph.preheader.i37
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$s5, $s4, 8
	move	$s3, $zero
	move	$s6, $zero
	.p2align	4, , 16
.LBB11_13:                              # %.lr.ph.i38
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 0
	ld.hu	$a1, $s5, 4
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s5, 4
	ld.w	$a1, $s4, 0
	add.d	$s3, $s3, $a0
	addi.w	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bltu	$s6, $a1, .LBB11_13
# %bb.14:                               # %writePartSideInfo.exit43.loopexit
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.w	$a0, $s0, 20
	addi.d	$s1, $s1, 1
	add.w	$fp, $s3, $fp
	blt	$s1, $a0, .LBB11_11
.LBB11_15:                              # %.preheader52
	ld.w	$a1, $s0, 16
	blez	$a1, .LBB11_27
# %bb.16:                               # %.preheader.lr.ph
	blez	$a0, .LBB11_27
# %bb.17:                               # %.preheader.preheader
	move	$s1, $zero
	addi.d	$s2, $s0, 56
	b	.LBB11_20
	.p2align	4, , 16
.LBB11_18:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB11_20 Depth=1
	ld.w	$a1, $s0, 16
.LBB11_19:                              # %._crit_edge
                                        #   in Loop: Header=BB11_20 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a1, .LBB11_27
.LBB11_20:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_23 Depth 2
                                        #       Child Loop BB11_25 Depth 3
	blez	$a0, .LBB11_19
# %bb.21:                               # %.lr.ph61
                                        #   in Loop: Header=BB11_20 Depth=1
	move	$s3, $zero
	alsl.d	$s4, $s1, $s2, 4
	b	.LBB11_23
	.p2align	4, , 16
.LBB11_22:                              #   in Loop: Header=BB11_23 Depth=2
	move	$s5, $zero
	addi.d	$s3, $s3, 1
	add.w	$fp, $s5, $fp
	bge	$s3, $a0, .LBB11_18
.LBB11_23:                              #   Parent Loop BB11_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_25 Depth 3
	slli.d	$a1, $s3, 3
	ldx.d	$a1, $s4, $a1
	ld.d	$s6, $a1, 8
	ld.w	$a1, $s6, 0
	beqz	$a1, .LBB11_22
# %bb.24:                               # %.lr.ph.preheader.i45
                                        #   in Loop: Header=BB11_23 Depth=2
	ld.d	$s7, $s6, 8
	move	$s5, $zero
	move	$s8, $zero
	.p2align	4, , 16
.LBB11_25:                              # %.lr.ph.i46
                                        #   Parent Loop BB11_20 Depth=1
                                        #     Parent Loop BB11_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s7, 0
	ld.hu	$a1, $s7, 4
	pcaddu18i	$ra, %call36(putMyBits)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s7, 4
	ld.w	$a1, $s6, 0
	add.d	$s5, $s5, $a0
	addi.w	$s8, $s8, 1
	addi.d	$s7, $s7, 8
	bltu	$s8, $a1, .LBB11_25
# %bb.26:                               # %writePartSideInfo.exit51.loopexit
                                        #   in Loop: Header=BB11_23 Depth=2
	ld.w	$a0, $s0, 20
	addi.d	$s3, $s3, 1
	add.w	$fp, $s5, $fp
	blt	$s3, $a0, .LBB11_23
	b	.LBB11_18
.LBB11_27:                              # %._crit_edge65
	move	$a0, $fp
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
.Lfunc_end11:
	.size	write_side_info, .Lfunc_end11-write_side_info
                                        # -- End function
	.p2align	5                               # -- Begin function free_side_info_link
	.type	free_side_info_link,@function
free_side_info_link:                    # @free_side_info_link
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 24
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 32
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 8
	st.d	$zero, $fp, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 20
	st.d	$zero, $fp, 32
	blez	$a0, .LBB12_3
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	addi.d	$s2, $fp, 40
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s2, 0
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 20
	st.d	$zero, $s2, 0
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	blt	$s1, $a0, .LBB12_2
.LBB12_3:                               # %.preheader24
	ld.w	$a1, $fp, 16
	blez	$a1, .LBB12_11
# %bb.4:                                # %.preheader.lr.ph
	blez	$a0, .LBB12_11
# %bb.5:                                # %.preheader.preheader
	move	$s1, $zero
	addi.d	$s2, $fp, 56
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_6:                               # %._crit_edge
                                        #   in Loop: Header=BB12_7 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 16
	bge	$s1, $a1, .LBB12_11
.LBB12_7:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
	blez	$a0, .LBB12_6
# %bb.8:                                # %.lr.ph27
                                        #   in Loop: Header=BB12_7 Depth=1
	move	$s3, $zero
	move	$s4, $s2
	.p2align	4, , 16
.LBB12_9:                               #   Parent Loop BB12_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s4, 0
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 20
	st.d	$zero, $s4, 0
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB12_9
# %bb.10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB12_7 Depth=1
	ld.w	$a1, $fp, 16
	b	.LBB12_6
.LBB12_11:                              # %._crit_edge29
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end12:
	.size	free_side_info_link, .Lfunc_end12-free_side_info_link
                                        # -- End function
	.type	BitCount,@object                # @BitCount
	.local	BitCount
	.comm	BitCount,4,4
	.type	ThisFrameSize,@object           # @ThisFrameSize
	.local	ThisFrameSize
	.comm	ThisFrameSize,4,4
	.type	BitsRemaining,@object           # @BitsRemaining
	.local	BitsRemaining
	.comm	BitsRemaining,4,4
	.type	forwardFrameLength,@object      # @forwardFrameLength
	.local	forwardFrameLength
	.comm	forwardFrameLength,4,4
	.type	forwardSILength,@object         # @forwardSILength
	.local	forwardSILength
	.comm	forwardSILength,4,4
	.type	elements,@object                # @elements
	.local	elements
	.comm	elements,4,4
	.type	side_queue_free,@object         # @side_queue_free
	.local	side_queue_free
	.comm	side_queue_free,8,8
	.type	side_queue_head,@object         # @side_queue_head
	.local	side_queue_head
	.comm	side_queue_head,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot allocate side_info_link"
	.size	.L.str, 31

	.section	".note.GNU-stack","",@progbits
	.addrsig
