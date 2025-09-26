	.file	"image.c"
	.text
	.globl	MbAffPostProc                   # -- Begin function MbAffPostProc
	.p2align	5
	.type	MbAffPostProc,@function
MbAffPostProc:                          # @MbAffPostProc
# %bb.0:
	addi.d	$sp, $sp, -1152
	st.d	$ra, $sp, 1144                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1064                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(enc_picture)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(enc_picture)
	ldptr.d	$s3, $a0, 6440
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s4, $a1, %got_pc_lo12(img)
	ld.d	$s2, $s4, 0
	ldptr.w	$a2, $s2, 15536
	ldptr.w	$a1, $s2, 15348
	beqz	$a2, .LBB0_17
# %bb.1:                                # %.preheader62
	blez	$a1, .LBB0_24
# %bb.2:                                # %.lr.ph71.preheader
	move	$a2, $zero
	ldptr.d	$s5, $a0, 6472
	lu12i.w	$a0, 3
	ori	$s8, $a0, 3260
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %.loopexit60
                                        #   in Loop: Header=BB0_4 Depth=1
	ldptr.w	$a0, $s2, 15348
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 2
	addi.w	$a1, $a2, 0
	bge	$a1, $a0, .LBB0_24
.LBB0_4:                                # %.lr.ph71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6480
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $a2
	beqz	$a0, .LBB0_3
# %bb.5:                                # %.preheader61
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a1, $sp, 36
	addi.d	$a2, $sp, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(get_mb_pos)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 32
	ld.w	$a1, $sp, 36
	slli.d	$a2, $a0, 3
	ldx.d	$a3, $s3, $a2
	slli.d	$a2, $a1, 1
	vldx	$vr0, $a3, $a2
	alsl.d	$a3, $a1, $a3, 1
	vst	$vr0, $sp, 40
	vld	$vr0, $a3, 16
	alsl.d	$a3, $a0, $s3, 3
	vst	$vr0, $sp, 56
	ld.d	$a4, $a3, 8
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 72
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 16
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 104
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 24
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 136
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 32
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 168
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 40
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 200
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 48
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 232
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 56
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 264
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 64
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 296
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 72
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 328
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 80
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 360
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 88
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 392
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 96
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 424
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 104
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 456
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 112
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 488
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 120
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 520
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 128
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a6, $sp, 552
	vst	$vr0, $a6, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a6, 16
	ld.d	$a4, $a3, 136
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 584
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 144
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 616
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 152
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 648
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 160
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 680
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 168
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 712
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 176
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 744
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 184
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 776
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 192
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 808
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 200
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 840
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 208
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 872
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 216
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 904
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 224
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 936
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 232
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 968
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 240
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 1000
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a3, 248
	vldx	$vr0, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	addi.d	$a5, $sp, 1032
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	move	$a4, $zero
	vst	$vr0, $a5, 16
	addi.w	$a5, $a0, 1
	ori	$t0, $zero, 256
	.p2align	4, , 16
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a7, $a3, $a4
	vld	$vr0, $a6, -512
	vstx	$vr0, $a7, $a2
	vld	$vr0, $a6, -496
	alsl.d	$a7, $a1, $a7, 1
	vst	$vr0, $a7, 16
	slli.d	$a7, $a5, 3
	ldx.d	$a7, $s3, $a7
	vld	$vr0, $a6, 0
	vstx	$vr0, $a7, $a2
	vld	$vr0, $a6, 16
	alsl.d	$a7, $a1, $a7, 1
	vst	$vr0, $a7, 16
	addi.d	$a4, $a4, 16
	addi.w	$a5, $a5, 2
	addi.d	$a6, $a6, 32
	bne	$a4, $t0, .LBB0_6
# %bb.7:                                # %.preheader59
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s2, $s4, 0
	ldptr.w	$a2, $s2, 15544
	ldptr.w	$a3, $s2, 15548
	ori	$a5, $zero, 16
	div.w	$a4, $a5, $a2
	div.w	$fp, $a1, $a4
	st.w	$fp, $sp, 36
	div.w	$a1, $a5, $a3
	div.w	$a0, $a0, $a1
	st.w	$a0, $sp, 32
	blez	$a3, .LBB0_3
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.w	$a1, $a3, 1
	ld.d	$a3, $s5, 0
	slli.d	$s0, $a2, 1
	ori	$a4, $zero, 1
	slt	$a2, $a4, $a1
	masknez	$a4, $a4, $a2
	maskeqz	$a1, $a1, $a2
	or	$s7, $a1, $a4
	alsl.d	$s6, $a0, $a3, 3
	addi.d	$s1, $sp, 40
	.p2align	4, , 16
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	alsl.d	$a1, $fp, $a0, 1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, -1
	addi.d	$s1, $s1, 32
	bnez	$s7, .LBB0_9
# %bb.10:                               # %.lr.ph68.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s1, $zero
	move	$fp, $zero
	ori	$s7, $zero, 1
	addi.d	$s0, $sp, 40
	addi.d	$s6, $sp, 40
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph68
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 32
	ld.d	$a1, $s5, 0
	add.d	$a0, $s7, $a0
	addi.w	$a0, $a0, -1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 36
	ldptr.w	$a2, $s2, 15544
	alsl.d	$a0, $a1, $a0, 1
	slli.d	$a2, $a2, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 32
	ld.d	$a1, $s5, 0
	add.w	$a0, $s7, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $s4, 0
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 36
	ldx.w	$a3, $a2, $s8
	alsl.d	$a0, $a1, $a0, 1
	ldptr.w	$a2, $a2, 15544
	add.w	$a1, $s1, $a3
	slli.d	$a1, $a1, 5
	add.d	$a1, $s6, $a1
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, 0
	ldptr.w	$a0, $s2, 15548
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 2
	addi.d	$s0, $s0, 32
	blt	$fp, $a0, .LBB0_11
# %bb.12:                               # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	blez	$a0, .LBB0_3
# %bb.13:                               # %.lr.ph.1
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.w	$a0, $a0, 1
	ldptr.w	$a1, $s2, 15544
	ld.d	$a2, $s5, 8
	ld.w	$a3, $sp, 32
	ld.w	$fp, $sp, 36
	slli.d	$s0, $a1, 1
	ori	$a4, $zero, 1
	slt	$a1, $a4, $a0
	masknez	$a4, $a4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s6, $a0, $a4
	alsl.d	$s7, $a3, $a2, 3
	addi.d	$s1, $sp, 40
	.p2align	4, , 16
.LBB0_14:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	alsl.d	$a1, $fp, $a0, 1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, -1
	addi.d	$s1, $s1, 32
	bnez	$s6, .LBB0_14
# %bb.15:                               # %.lr.ph68.1.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s1, $zero
	move	$fp, $zero
	addi.d	$s0, $sp, 40
	ori	$s7, $zero, 1
	addi.d	$s6, $sp, 40
	.p2align	4, , 16
.LBB0_16:                               # %.lr.ph68.1
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 32
	ld.d	$a1, $s5, 8
	add.d	$a0, $s7, $a0
	addi.w	$a0, $a0, -1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 36
	ldptr.w	$a2, $s2, 15544
	alsl.d	$a0, $a1, $a0, 1
	slli.d	$a2, $a2, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 32
	ld.d	$a1, $s5, 8
	add.w	$a0, $s7, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $s4, 0
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 36
	ldx.w	$a3, $a2, $s8
	alsl.d	$a0, $a1, $a0, 1
	ldptr.w	$a2, $a2, 15544
	add.w	$a1, $s1, $a3
	slli.d	$a1, $a1, 5
	add.d	$a1, $s6, $a1
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, 0
	ldptr.w	$a0, $s2, 15548
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 32
	addi.d	$s7, $s7, 2
	blt	$fp, $a0, .LBB0_16
	b	.LBB0_3
.LBB0_17:                               # %.preheader56
	blez	$a1, .LBB0_24
# %bb.18:                               # %.lr.ph77.preheader
	move	$fp, $zero
	addi.d	$s6, $sp, 552
	addi.d	$s8, $sp, 936
	addi.d	$s0, $sp, 968
	addi.d	$s1, $sp, 1000
	addi.d	$s5, $sp, 1032
	ori	$s7, $zero, 256
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %.loopexit
                                        #   in Loop: Header=BB0_20 Depth=1
	ldptr.w	$a0, $s2, 15348
	addi.d	$fp, $fp, 2
	addi.w	$a1, $fp, 0
	bge	$a1, $a0, .LBB0_24
.LBB0_20:                               # %.lr.ph77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6480
	ldx.bu	$a0, $a0, $fp
	beqz	$a0, .LBB0_19
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB0_20 Depth=1
	addi.d	$a1, $sp, 36
	addi.d	$a2, $sp, 32
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(get_mb_pos)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 32
	ld.w	$a0, $sp, 36
	slli.d	$a1, $a3, 3
	ldx.d	$a2, $s3, $a1
	slli.d	$a1, $a0, 1
	vldx	$vr0, $a2, $a1
	alsl.d	$a2, $a0, $a2, 1
	vst	$vr0, $sp, 40
	vld	$vr0, $a2, 16
	alsl.d	$a2, $a3, $s3, 3
	vst	$vr0, $sp, 56
	ld.d	$a4, $a2, 8
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 72
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 16
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 104
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 24
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 136
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 32
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 168
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 40
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 200
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 48
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 232
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 56
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 264
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 64
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 296
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 72
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 328
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 80
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 360
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 88
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 392
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 96
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 424
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 104
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 456
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 112
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 488
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 120
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 520
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 128
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $s6, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $s6, 16
	ld.d	$a4, $a2, 136
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 584
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 144
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 616
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 152
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 648
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 160
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 680
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 168
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 712
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 176
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 744
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 184
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 776
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 192
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 808
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 200
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 840
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 208
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 872
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 216
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	addi.d	$a5, $sp, 904
	vst	$vr0, $a5, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $a2, 224
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $s8, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $s8, 16
	ld.d	$a4, $a2, 232
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $s0, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $s0, 16
	ld.d	$a4, $a2, 240
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $s1, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $s1, 16
	ld.d	$a4, $a2, 248
	vldx	$vr0, $a4, $a1
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $s5, 0
	vld	$vr0, $a4, 16
	move	$a4, $zero
	vst	$vr0, $s5, 16
	addi.w	$a3, $a3, 1
	move	$a5, $s6
	.p2align	4, , 16
.LBB0_22:                               #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a6, $a2, $a4
	vld	$vr0, $a5, -512
	vstx	$vr0, $a6, $a1
	vld	$vr0, $a5, -496
	alsl.d	$a6, $a0, $a6, 1
	vst	$vr0, $a6, 16
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $s3, $a6
	vld	$vr0, $a5, 0
	vstx	$vr0, $a6, $a1
	vld	$vr0, $a5, 16
	alsl.d	$a6, $a0, $a6, 1
	vst	$vr0, $a6, 16
	addi.d	$a4, $a4, 16
	addi.w	$a3, $a3, 2
	addi.d	$a5, $a5, 32
	bne	$a4, $s7, .LBB0_22
# %bb.23:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$s2, $s4, 0
	b	.LBB0_19
.LBB0_24:                               # %.loopexit57
	ld.d	$s8, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1144                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1152
	ret
.Lfunc_end0:
	.size	MbAffPostProc, .Lfunc_end0-MbAffPostProc
                                        # -- End function
	.globl	code_a_picture                  # -- Begin function code_a_picture
	.p2align	5
	.type	code_a_picture,@function
code_a_picture:                         # @code_a_picture
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
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s3, $a0, %got_pc_lo12(input)
	ld.d	$a1, $s3, 0
	ld.w	$a2, $a1, 1560
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.w	$a3, $a0, 0
	pcalau12i	$a4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a4, $a4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a4, $a4, 0
	beqz	$a2, .LBB1_2
# %bb.1:
	sub.w	$a5, $a3, $a4
	mod.w	$a2, $a5, $a2
	sltui	$a2, $a2, 1
	stptr.d	$fp, $a0, 14208
	beq	$a3, $a4, .LBB1_3
	b	.LBB1_4
.LBB1_2:
	xor	$a2, $a3, $a4
	sltui	$a2, $a2, 1
	stptr.d	$fp, $a0, 14208
	bne	$a3, $a4, .LBB1_4
.LBB1_3:
	ld.w	$a4, $a0, 24
	ori	$a5, $zero, 2
	ori	$a3, $zero, 1
	bne	$a4, $a5, .LBB1_9
.LBB1_4:
	ld.w	$a1, $a1, 1568
	sltu	$a1, $zero, $a1
	and	$a1, $a1, $a2
	beqz	$a1, .LBB1_8
# %bb.5:
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 4
	beq	$a1, $a2, .LBB1_7
# %bb.6:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_8
.LBB1_7:
	ld.w	$a0, $a0, 24
	addi.d	$a0, $a0, -2
	sltu	$a3, $zero, $a0
	b	.LBB1_9
.LBB1_8:
	move	$a3, $zero
.LBB1_9:
	st.w	$a3, $fp, 4
	st.w	$zero, $fp, 0
	st.d	$zero, $fp, 812
	st.w	$zero, $fp, 820
	pcaddu18i	$ra, %call36(RandomIntraNewPicture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	pcalau12i	$a2, %pc_hi20(active_sps)
	ld.d	$a2, $a2, %pc_lo12(active_sps)
	ori	$a3, $zero, 1
	stptr.w	$a3, $a0, 15436
	pcaddu18i	$ra, %call36(FmoInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoStartPicture)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CalculateQuantParam)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CalculateOffsetParam)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB1_11
# %bb.10:
	pcaddu18i	$ra, %call36(CalculateQuant8Param)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CalculateOffset8Param)
	jirl	$ra, $ra, 0
.LBB1_11:
	pcaddu18i	$ra, %call36(reset_pic_bin_count)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 15348
	stptr.w	$zero, $a0, 15600
	beqz	$a1, .LBB1_16
# %bb.12:                               # %.preheader24.preheader
	pcalau12i	$a0, %got_pc_hi20(stats)
	ld.d	$s4, $a0, %got_pc_lo12(stats)
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph
                                        #   in Loop: Header=BB1_14 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(encode_one_slice)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.w	$a1, $a1, 12
	add.w	$s0, $a0, $s0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FmoSetLastMacroblockInSlice)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 16
	ld.d	$a2, $s4, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 16
	st.w	$zero, $a2, 32
.LBB1_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FmoSliceGroupCompletelyCoded)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_13
# %bb.15:                               # %._crit_edge
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 15348
	addi.w	$s1, $s1, 1
	bltu	$s0, $a0, .LBB1_14
.LBB1_16:                               # %._crit_edge29
	pcaddu18i	$ra, %call36(FmoEndPicture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldptr.w	$a2, $a1, 4168
	ld.d	$a0, $s2, 0
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB1_22
# %bb.17:
	ld.w	$a2, $a0, 20
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB1_22
# %bb.18:                               # %.preheader
	ldptr.w	$a1, $a1, 4728
	blez	$a1, .LBB1_22
# %bb.19:                               # %.lr.ph31.preheader
	pcalau12i	$a0, %got_pc_hi20(decs)
	ld.d	$fp, $a0, %got_pc_lo12(decs)
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB1_20:                               # %.lr.ph31
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	ld.d	$a0, $s2, 0
	ldx.d	$a1, $a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(DeblockFrame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a0, $a0, 4728
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB1_20
# %bb.21:                               # %.loopexit.loopexit
	ld.d	$a0, $s2, 0
.LBB1_22:                               # %.loopexit
	pcalau12i	$a1, %pc_hi20(enc_picture)
	ld.d	$a2, $a1, %pc_lo12(enc_picture)
	ldptr.d	$a1, $a2, 6440
	ldptr.d	$a2, $a2, 6472
	pcaddu18i	$ra, %call36(DeblockFrame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 15268
	beqz	$a0, .LBB1_24
# %bb.23:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(MbAffPostProc)
	jr	$t8
.LBB1_24:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	code_a_picture, .Lfunc_end1-code_a_picture
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function encode_one_frame
.LCPI2_0:
	.dword	0x3fe5c28f5c28f5c3              # double 0.68000000000000005
	.text
	.globl	encode_one_frame
	.p2align	5
	.type	encode_one_frame,@function
encode_one_frame:                       # @encode_one_frame
# %bb.0:
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 368                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(me_time)
	st.d	$zero, $a0, %pc_lo12(me_time)
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a0, $fp, 0
	stptr.w	$zero, $a0, 14260
	pcalau12i	$s5, %pc_hi20(enc_frame_picture)
	st.d	$zero, $s5, %pc_lo12(enc_frame_picture)
	pcalau12i	$a0, %pc_hi20(enc_frame_picture2)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$zero, $a0, %pc_lo12(enc_frame_picture2)
	pcalau12i	$a0, %pc_hi20(enc_frame_picture3)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$zero, $a0, %pc_lo12(enc_frame_picture3)
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	stptr.w	$zero, $a1, 15408
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s0, 0
	ldptr.w	$a0, $a0, 2092
	beqz	$a0, .LBB2_3
# %bb.1:
	ld.w	$a0, $a1, 0
	beqz	$a0, .LBB2_3
# %bb.2:
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(write_PPS)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$a1, $a1, %got_pc_lo12(stats)
	ld.d	$a2, $a1, 0
	ori	$a1, $zero, 2256
	ldx.w	$a3, $a2, $a1
	ld.d	$a1, $fp, 0
	stptr.w	$a0, $a2, 2260
	add.d	$a0, $a3, $a0
	stptr.w	$a0, $a2, 2256
.LBB2_3:
	pcalau12i	$s8, %pc_hi20(imgY_org_frm)
	ld.d	$a0, $s8, %pc_lo12(imgY_org_frm)
	pcalau12i	$a2, %pc_hi20(imgY_org)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(imgY_org)
	pcalau12i	$s2, %pc_hi20(imgUV_org_frm)
	ld.d	$a0, $s2, %pc_lo12(imgUV_org_frm)
	pcalau12i	$a2, %pc_hi20(last_P_no_frm)
	ld.d	$a4, $a2, %pc_lo12(last_P_no_frm)
	pcalau12i	$a2, %pc_hi20(imgUV_org)
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(imgUV_org)
	pcalau12i	$a0, %pc_hi20(last_P_no)
	st.d	$a4, $a0, %pc_lo12(last_P_no)
	st.d	$zero, $a1, 12
	pcalau12i	$a0, %got_pc_hi20(stats)
	ld.d	$s3, $a0, %got_pc_lo12(stats)
	ld.d	$a0, $s3, 0
	st.w	$zero, $a0, 32
	ldptr.w	$a0, $a1, 15352
	st.w	$zero, $a1, 120
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 160
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	vst	$vr0, $a1, 176
	blez	$a0, .LBB2_11
# %bb.4:                                # %.lr.ph.i
	ldptr.d	$a2, $a1, 14224
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB2_6
# %bb.5:
	move	$a3, $zero
	b	.LBB2_9
.LBB2_6:                                # %vector.ph
	bstrpick.d	$a3, $a0, 30, 1
	slli.d	$a3, $a3, 1
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a6, $a3
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a7, 0
	st.w	$a5, $a7, 536
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 1072
	bnez	$a6, .LBB2_7
# %bb.8:                                # %middle.block
	beq	$a3, $a0, .LBB2_11
.LBB2_9:                                # %scalar.ph.preheader
	sub.d	$a0, $a0, $a3
	ori	$a5, $zero, 536
	mul.d	$a3, $a3, $a5
	add.d	$a2, $a2, $a3
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB2_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 536
	bnez	$a0, .LBB2_10
.LBB2_11:                               # %._crit_edge.i
	ldptr.w	$a0, $a1, 14364
	lu12i.w	$s1, 3
	lu12i.w	$t1, 1
	beqz	$a0, .LBB2_22
# %bb.12:
	ld.d	$a0, $s0, 0
	ld.w	$a2, $a0, 20
	addi.d	$a3, $a2, 1
	stptr.w	$a3, $a1, 14360
	pcalau12i	$a2, %got_pc_hi20(start_tr_in_this_IGOP)
	ld.d	$a2, $a2, %got_pc_lo12(start_tr_in_this_IGOP)
	ld.w	$a5, $a2, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a6, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a6, $a6, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a6, $a6, 0
	sub.d	$a6, $a2, $a6
	addi.d	$a2, $a6, -1
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a5
	st.w	$a2, $a4, 0
	ldptr.w	$a7, $a1, 15240
	mul.d	$a3, $a6, $a3
	ori	$a6, $zero, 2
	add.d	$a3, $a3, $a5
	blt	$a7, $a6, .LBB2_15
# %bb.13:                               # %.lr.ph72.i.preheader
	ld.w	$a5, $a4, 0
	addi.d	$a4, $a4, 4
	ori	$a6, $zero, 1
	ori	$a7, $s1, 2072
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph72.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t0, $a1, $a7
	sub.d	$a5, $a5, $t0
	st.w	$a5, $a4, 0
	ldptr.w	$t0, $a1, 15240
	addi.d	$a6, $a6, 1
	addi.d	$a4, $a4, 4
	blt	$a6, $t0, .LBB2_14
.LBB2_15:                               # %._crit_edge73.i
	ldptr.w	$a4, $a0, 4144
	beqz	$a4, .LBB2_18
# %bb.16:
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a0, 8
	addi.w	$a5, $a5, 1
	bne	$a5, $a6, .LBB2_18
# %bb.17:
	sub.d	$a3, $a4, $a2
	stptr.w	$a3, $a1, 14360
	move	$a3, $a4
.LBB2_18:
	ld.w	$a4, $a0, 20
	ldptr.w	$a5, $a0, 2096
	addi.d	$a4, $a4, 1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	ldptr.w	$a4, $a0, 2968
	fadd.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	ori	$a5, $s1, 2064
	fstx.d	$fa0, $a1, $a5
	beqz	$a4, .LBB2_31
# %bb.19:
	ori	$a5, $zero, 3
	bne	$a4, $a5, .LBB2_21
# %bb.20:                               # %.thread53.i
	lu52i.d	$a4, $zero, 1023
	stptr.d	$a4, $a1, 14352
	vldi	$vr0, -912
.LBB2_21:
	ldptr.w	$a4, $a1, 14364
	pcalau12i	$a5, %pc_hi20(gop_structure)
	ld.d	$a5, $a5, %pc_lo12(gop_structure)
	slli.d	$a6, $a4, 4
	alsl.d	$a6, $a4, $a6, 3
	add.d	$a5, $a5, $a6
	ld.w	$a6, $a5, -20
	move	$a5, $zero
	addi.w	$a6, $a6, 1
	b	.LBB2_32
.LBB2_22:
	pcalau12i	$a0, %got_pc_hi20(start_tr_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_tr_in_this_IGOP)
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.d	$a2, $s0, 0
	ld.w	$a0, $a0, 0
	ld.w	$a5, $a2, 20
	sub.d	$a6, $a4, $a0
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a5, $a6
	ori	$a5, $s1, 2044
	ldx.w	$a7, $a1, $a5
	ldptr.w	$a5, $a2, 4144
	add.w	$a3, $a6, $a3
	stptr.w	$a3, $a1, 14248
	stptr.w	$a7, $a1, 14336
	stptr.w	$a3, $a1, 14332
	beqz	$a5, .LBB2_25
# %bb.23:
	ld.w	$a6, $a2, 8
	addi.w	$a7, $a4, 1
	bne	$a7, $a6, .LBB2_25
# %bb.24:
	stptr.w	$a5, $a1, 14248
	move	$a3, $a5
.LBB2_25:
	beq	$a4, $a0, .LBB2_28
# %bb.26:
	ldptr.w	$a4, $a2, 2096
	beqz	$a4, .LBB2_28
# %bb.27:
	pcalau12i	$a4, %pc_hi20(nextP_tr_frm)
	st.w	$a3, $a4, %pc_lo12(nextP_tr_frm)
.LBB2_28:
	ldptr.w	$a4, $a2, 5116
	beqz	$a4, .LBB2_40
.LBB2_29:
	ld.w	$a3, $a1, 112
	ld.w	$a2, $a2, 68
	st.w	$a3, $a1, 116
	blez	$a2, .LBB2_69
# %bb.30:
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 68
	sub.w	$a0, $a3, $a0
	div.w	$a0, $a0, $a2
	bstrpick.d	$a2, $a4, 62, 59
	add.w	$a2, $a4, $a2
	srai.d	$a2, $a2, 4
	mod.w	$a0, $a0, $a2
	st.w	$a0, $a1, 112
	b	.LBB2_69
.LBB2_31:
	ori	$a4, $s1, 2076
	ldx.w	$a6, $a1, $a4
	ori	$a5, $zero, 1
	move	$a4, $a6
.LBB2_32:
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	add.w	$a2, $a2, $a6
	addi.w	$a3, $a3, -1
	slt	$a6, $a2, $a3
	ldptr.w	$a7, $a0, 5116
	maskeqz	$a2, $a2, $a6
	masknez	$a3, $a3, $a6
	or	$a2, $a2, $a3
	stptr.w	$a2, $a1, 14248
	bnez	$a7, .LBB2_69
# %bb.33:
	beqz	$a5, .LBB2_47
# %bb.34:
	ldptr.w	$a3, $a0, 4156
	blez	$a3, .LBB2_65
# %bb.35:
	slli.w	$a4, $a3, 1
	blt	$a2, $a3, .LBB2_37
# %bb.36:
	ldptr.w	$a5, $a0, 2152
	beqz	$a5, .LBB2_39
.LBB2_37:
	mod.w	$a5, $a2, $a4
	blt	$a5, $a3, .LBB2_58
# %bb.38:
	ldptr.w	$a5, $a0, 2152
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB2_58
.LBB2_39:                               # %.thread59.i
	ori	$a5, $t1, 56
	b	.LBB2_59
.LBB2_40:
	ld.w	$a5, $a1, 20
	ldptr.w	$a4, $a2, 4156
	ori	$a6, $zero, 2
	bne	$a5, $a6, .LBB2_48
# %bb.41:
	blez	$a4, .LBB2_55
# %bb.42:
	blt	$a3, $a4, .LBB2_44
# %bb.43:
	ldptr.w	$a5, $a2, 2152
	beqz	$a5, .LBB2_46
.LBB2_44:
	slli.w	$a5, $a4, 1
	mod.w	$a3, $a3, $a5
	blt	$a3, $a4, .LBB2_55
# %bb.45:
	ldptr.w	$a3, $a2, 2152
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB2_55
.LBB2_46:
	ori	$a3, $t1, 64
	ldx.w	$a3, $a2, $a3
	st.w	$a3, $a1, 36
	b	.LBB2_29
.LBB2_47:
	pcalau12i	$a0, %pc_hi20(gop_structure)
	ld.d	$a0, $a0, %pc_lo12(gop_structure)
	slli.d	$a2, $a4, 4
	alsl.d	$a2, $a4, $a2, 3
	add.d	$a0, $a0, $a2
	ld.w	$a0, $a0, -12
	b	.LBB2_68
.LBB2_48:
	blez	$a4, .LBB2_56
# %bb.49:
	blt	$a3, $a4, .LBB2_51
# %bb.50:
	ldptr.w	$a6, $a2, 2152
	beqz	$a6, .LBB2_53
.LBB2_51:
	slli.w	$a6, $a4, 1
	mod.w	$a6, $a3, $a6
	blt	$a6, $a4, .LBB2_56
# %bb.52:
	ldptr.w	$a6, $a2, 2152
	ori	$a7, $zero, 1
	bne	$a6, $a7, .LBB2_56
.LBB2_53:
	ori	$a6, $t1, 52
	ldptr.w	$a7, $a1, 15360
	ldx.w	$a6, $a2, $a6
	beqz	$a7, .LBB2_471
# %bb.54:
	move	$a7, $zero
	b	.LBB2_472
.LBB2_55:
	ld.w	$a3, $a2, 12
	st.w	$a3, $a1, 36
	b	.LBB2_29
.LBB2_56:
	ldptr.w	$a7, $a1, 15360
	ld.w	$a6, $a2, 16
	beqz	$a7, .LBB2_461
# %bb.57:
	move	$a7, $zero
	add.d	$a6, $a7, $a6
	ori	$a7, $zero, 3
	st.w	$a6, $a1, 36
	bne	$a5, $a7, .LBB2_29
	b	.LBB2_462
.LBB2_58:
	ori	$a5, $zero, 2104
.LBB2_59:                               # %.thread59.i
	ldx.w	$a5, $a0, $a5
	ldptr.w	$a6, $a1, 15360
	st.w	$a5, $a1, 36
	beqz	$a6, .LBB2_69
# %bb.60:                               # %.thread61.i
	blt	$a2, $a3, .LBB2_62
# %bb.61:
	ldptr.w	$a5, $a0, 2152
	beqz	$a5, .LBB2_64
.LBB2_62:
	mod.w	$a2, $a2, $a4
	blt	$a2, $a3, .LBB2_66
# %bb.63:
	ldptr.w	$a2, $a0, 2152
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB2_66
.LBB2_64:
	ori	$a2, $s1, 3164
	ldx.w	$a2, $a1, $a2
	ori	$a3, $t1, 56
	ldx.w	$a3, $a0, $a3
	ori	$a4, $t1, 68
	b	.LBB2_67
.LBB2_65:                               # %.thread65.i
	ori	$a2, $zero, 2104
	ldx.w	$a2, $a0, $a2
	ldptr.w	$a3, $a1, 15360
	st.w	$a2, $a1, 36
	beqz	$a3, .LBB2_69
.LBB2_66:                               # %.thread67.i
	ori	$a2, $s1, 3164
	ldx.w	$a2, $a1, $a2
	ori	$a3, $zero, 2104
	ldx.w	$a3, $a0, $a3
	ori	$a4, $zero, 2108
.LBB2_67:                               # %init_frame.exit
	ldx.w	$a0, $a0, $a4
	sub.w	$a2, $zero, $a2
	add.w	$a0, $a0, $a3
	slt	$a3, $a2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
	slti	$a2, $a0, 51
	maskeqz	$a0, $a0, $a2
	ori	$a3, $zero, 51
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
.LBB2_68:                               # %init_frame.exit
	st.w	$a0, $a1, 36
.LBB2_69:                               # %init_frame.exit
	ld.w	$a2, $a1, 36
	ori	$a0, $s1, 3164
	ldx.w	$a3, $a1, $a0
	ldptr.w	$a0, $a1, 15248
	add.d	$a2, $a3, $a2
	st.w	$a2, $a1, 44
	pcaddu18i	$ra, %call36(UpdateSubseqInfo)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s4
	pcaddu18i	$ra, %call36(UpdateSceneInformation)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a2, $a1, 14364
	ori	$a0, $s1, 3080
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	vstx	$vr0, $a1, $a0
	pcalau12i	$t0, %pc_hi20(frame_no)
	st.d	$fp, $sp, 312                   # 8-byte Folded Spill
	st.d	$s0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	beqz	$a2, .LBB2_166
# %bb.70:
	ld.d	$a0, $s0, 0
	ldptr.w	$a4, $a0, 2968
	pcalau12i	$a3, %got_pc_hi20(start_tr_in_this_IGOP)
	ld.d	$a3, $a3, %got_pc_lo12(start_tr_in_this_IGOP)
	ld.w	$a3, $a3, 0
	ld.w	$a5, $a1, 0
	pcalau12i	$a6, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a6, $a6, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a6, $a6, 0
	nor	$a6, $a6, $zero
	ld.w	$a7, $a0, 20
	add.d	$a5, $a5, $a6
	ori	$a6, $s1, 2064
	fldx.d	$fa0, $a1, $a6
	addi.d	$a6, $a7, 1
	mul.d	$a5, $a6, $a5
	add.d	$a3, $a5, $a3
	beqz	$a4, .LBB2_72
# %bb.71:
	pcalau12i	$a4, %pc_hi20(gop_structure)
	ld.d	$a4, $a4, %pc_lo12(gop_structure)
	slli.d	$a5, $a2, 4
	alsl.d	$a2, $a2, $a5, 3
	add.d	$a2, $a4, $a2
	ld.w	$a2, $a2, -20
	addi.d	$a2, $a2, 1
.LBB2_72:
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	add.w	$a2, $a3, $a2
.LBB2_73:                               # %.sink.split.i
	st.w	$a2, $t0, %pc_lo12(frame_no)
	move	$s6, $a2
.LBB2_74:                               # %CalculateFrameNumber.exit
	ld.w	$a6, $a0, 56
	ldptr.w	$a1, $a1, 15440
	ld.w	$s7, $a0, 60
	ldptr.w	$a4, $a0, 5268
	ldptr.w	$a5, $a0, 5264
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a1, $a1, $a2
	srai.d	$s1, $a1, 3
	ldptr.w	$a2, $a0, 5272
	mul.d	$a3, $s7, $a6
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	mul.d	$a1, $a5, $a4
	ori	$a4, $zero, 1
	mul.w	$s2, $a3, $s1
	st.d	$t0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s8, $sp, 272                   # 8-byte Folded Spill
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 216                   # 8-byte Folded Spill
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	bne	$a2, $a4, .LBB2_76
# %bb.75:
	ld.w	$a2, $a0, 64
	addi.d	$a2, $a2, -3
	sltui	$a2, $a2, 1
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	b	.LBB2_77
.LBB2_76:
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
.LBB2_77:
	ld.w	$s8, $a0, 276
	mul.w	$s5, $a1, $s1
	bstrpick.d	$a0, $s2, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB2_79
# %bb.78:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB2_79:
	pcalau12i	$s0, %pc_hi20(p_in)
	ld.w	$a0, $s0, %pc_lo12(p_in)
	alsl.w	$fp, $s5, $s2, 1
	move	$a1, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
	beq	$a0, $s8, .LBB2_81
# %bb.80:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_81:
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 1572
	ld.w	$a0, $s0, %pc_lo12(p_in)
	mul.d	$a1, $a1, $fp
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB2_83
# %bb.82:
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a0, 1572
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s8, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 300
	move	$a0, $s8
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_83:
	ld.w	$a0, $s0, %pc_lo12(p_in)
	mul.d	$a1, $fp, $s6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB2_85
# %bb.84:
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 1572
	add.w	$a3, $a0, $s6
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s4, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 300
	move	$a0, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_85:
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3152
	ldx.bu	$a0, $a0, $a1
	andi	$a0, $a0, 7
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_478
# %bb.86:
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_88
# %bb.87:
	ld.w	$a0, $s0, %pc_lo12(p_in)
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	mul.d	$a1, $fp, $a1
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.w	$a1, $a1, $a2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
.LBB2_88:
	ld.w	$a0, $s0, %pc_lo12(p_in)
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB2_477
# %bb.89:
	ld.d	$a0, $s8, %pc_lo12(imgY_org_frm)
	move	$a1, $s3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s1
	pcaddu18i	$ra, %call36(buf2img)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.w	$a0, $a0, 15536
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_96
# %bb.90:
	ld.w	$a0, $s0, %pc_lo12(p_in)
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB2_477
# %bb.91:
	ld.d	$a0, $s7, %pc_lo12(imgUV_org_frm)
	ld.d	$a0, $a0, 0
	move	$a1, $s3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(buf2img)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_93
# %bb.92:
	ld.w	$a0, $s0, %pc_lo12(p_in)
	sub.d	$a1, $zero, $fp
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
.LBB2_93:
	ld.w	$a0, $s0, %pc_lo12(p_in)
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB2_477
# %bb.94:
	ld.d	$a0, $s7, %pc_lo12(imgUV_org_frm)
	ld.d	$a0, $a0, 8
	move	$a1, $s3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(buf2img)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_96
# %bb.95:
	ld.w	$a0, $s0, %pc_lo12(p_in)
	slli.d	$a1, $fp, 1
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1366
	lu32i.d	$a2, 349525
	lu52i.d	$a2, $a2, 1365
	mulh.d	$a1, $a1, $a2
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
.LBB2_96:                               # %ReadOneFrame.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s4, 0
	ld.w	$a6, $a0, 60
	ld.w	$a7, $a1, 52
	ld.w	$t0, $a1, 68
	ldptr.w	$a5, $a0, 5268
	ldptr.w	$a2, $a0, 5264
	ld.w	$a3, $a1, 64
	ld.w	$a4, $a1, 80
	blez	$a6, .LBB2_102
# %bb.97:                               # %.preheader63.lr.ph.i
	ld.w	$t4, $a0, 56
	bge	$t4, $a7, .LBB2_102
# %bb.98:                               # %.preheader63.us.preheader.i
	ld.d	$t1, $s8, %pc_lo12(imgY_org_frm)
	move	$t2, $zero
	slli.d	$t3, $t4, 1
	sub.d	$t4, $a7, $t4
	.p2align	4, , 16
.LBB2_99:                               # %.preheader63.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_100 Depth 2
	slli.d	$t5, $t2, 3
	ldx.d	$t5, $t1, $t5
	add.d	$t5, $t5, $t3
	ld.hu	$t6, $t5, -2
	move	$t7, $t4
	.p2align	4, , 16
.LBB2_100:                              #   Parent Loop BB2_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t6, $t5, 0
	addi.d	$t7, $t7, -1
	addi.d	$t5, $t5, 2
	bnez	$t7, .LBB2_100
# %bb.101:                              # %._crit_edge.us.i
                                        #   in Loop: Header=BB2_99 Depth=1
	addi.d	$t2, $t2, 1
	bne	$t2, $a6, .LBB2_99
.LBB2_102:                              # %.preheader62.i
	bge	$a6, $t0, .LBB2_119
# %bb.103:                              # %.preheader61.lr.ph.i
	blez	$a7, .LBB2_119
# %bb.104:                              # %.preheader61.us.preheader.i
	ld.d	$t1, $s8, %pc_lo12(imgY_org_frm)
	andi	$t2, $a7, 8
	bstrpick.d	$t3, $a7, 30, 4
	slli.d	$t3, $t3, 4
	bstrpick.d	$t4, $a7, 30, 3
	slli.d	$t4, $t4, 3
	sub.d	$t5, $zero, $t4
	ori	$t6, $zero, 8
	ori	$t7, $zero, 32
	ori	$t8, $zero, 16
	b	.LBB2_106
	.p2align	4, , 16
.LBB2_105:                              # %._crit_edge.us69.i
                                        #   in Loop: Header=BB2_106 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $t0, .LBB2_119
.LBB2_106:                              # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_114 Depth 2
                                        #     Child Loop BB2_111 Depth 2
                                        #     Child Loop BB2_118 Depth 2
	alsl.d	$fp, $a6, $t1, 3
	slli.d	$s0, $a6, 3
	ld.d	$fp, $fp, -8
	ldx.d	$s0, $t1, $s0
	move	$s2, $zero
	bltu	$a7, $t6, .LBB2_117
# %bb.107:                              # %iter.check
                                        #   in Loop: Header=BB2_106 Depth=1
	sub.d	$s1, $s0, $fp
	bltu	$s1, $t7, .LBB2_117
# %bb.108:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_106 Depth=1
	bgeu	$a7, $t8, .LBB2_113
# %bb.109:                              #   in Loop: Header=BB2_106 Depth=1
	move	$s3, $zero
.LBB2_110:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB2_106 Depth=1
	add.d	$s1, $t5, $s3
	alsl.d	$s2, $s3, $s0, 1
	alsl.d	$s3, $s3, $fp, 1
	.p2align	4, , 16
.LBB2_111:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB2_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s3, 0
	vst	$vr0, $s2, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	bnez	$s1, .LBB2_111
# %bb.112:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_106 Depth=1
	move	$s2, $t4
	beq	$t4, $a7, .LBB2_105
	b	.LBB2_117
	.p2align	4, , 16
.LBB2_113:                              # %vector.body420.preheader
                                        #   in Loop: Header=BB2_106 Depth=1
	addi.d	$s1, $s0, 16
	addi.d	$s2, $fp, 16
	move	$s3, $t3
	.p2align	4, , 16
.LBB2_114:                              # %vector.body420
                                        #   Parent Loop BB2_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s2, -16
	vld	$vr1, $s2, 0
	vst	$vr0, $s1, -16
	vst	$vr1, $s1, 0
	addi.d	$s3, $s3, -16
	addi.d	$s1, $s1, 32
	addi.d	$s2, $s2, 32
	bnez	$s3, .LBB2_114
# %bb.115:                              # %middle.block424
                                        #   in Loop: Header=BB2_106 Depth=1
	beq	$t3, $a7, .LBB2_105
# %bb.116:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_106 Depth=1
	move	$s3, $t3
	move	$s2, $t3
	bnez	$t2, .LBB2_110
	.p2align	4, , 16
.LBB2_117:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB2_106 Depth=1
	sub.d	$s1, $a7, $s2
	alsl.d	$s0, $s2, $s0, 1
	alsl.d	$fp, $s2, $fp, 1
	.p2align	4, , 16
.LBB2_118:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB2_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s2, $fp, 0
	st.h	$s2, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 2
	addi.d	$fp, $fp, 2
	bnez	$s1, .LBB2_118
	b	.LBB2_105
.LBB2_119:                              # %._crit_edge68.i
	ldptr.w	$a6, $a1, 15536
	beqz	$a6, .LBB2_152
# %bb.120:                              # %.preheader60.i
	blez	$a2, .LBB2_130
# %bb.121:                              # %.preheader60.i
	bge	$a5, $a3, .LBB2_130
# %bb.122:                              # %.preheader59.lr.ph.split.us.i
	ld.d	$t0, $s7, %pc_lo12(imgUV_org_frm)
	move	$a6, $zero
	ld.d	$a7, $t0, 0
	ld.d	$t0, $t0, 8
	slli.d	$t1, $a5, 1
	addi.d	$t2, $t1, -2
	slli.d	$t3, $a3, 1
	sub.d	$a5, $a3, $a5
	b	.LBB2_124
	.p2align	4, , 16
.LBB2_123:                              # %._crit_edge.us72.i
                                        #   in Loop: Header=BB2_124 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a2, .LBB2_130
.LBB2_124:                              # %.lver.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_129 Depth 2
                                        #     Child Loop BB2_127 Depth 2
	slli.d	$t4, $a6, 3
	ldx.d	$t6, $a7, $t4
	ldx.d	$t7, $t0, $t4
	add.d	$t4, $t6, $t2
	add.d	$t5, $t7, $t3
	bgeu	$t4, $t5, .LBB2_128
# %bb.125:                              # %.lver.check
                                        #   in Loop: Header=BB2_124 Depth=1
	add.d	$t4, $t6, $t3
	add.d	$t5, $t7, $t2
	bgeu	$t5, $t4, .LBB2_128
# %bb.126:                              # %.ph.lver.orig.preheader
                                        #   in Loop: Header=BB2_124 Depth=1
	add.d	$t4, $t7, $t1
	add.d	$t5, $t6, $t1
	move	$t6, $a5
	.p2align	4, , 16
.LBB2_127:                              # %.ph.lver.orig
                                        #   Parent Loop BB2_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $t5, -2
	st.h	$t7, $t5, 0
	ld.h	$t7, $t4, -2
	st.h	$t7, $t4, 0
	addi.d	$t6, $t6, -1
	addi.d	$t4, $t4, 2
	addi.d	$t5, $t5, 2
	bnez	$t6, .LBB2_127
	b	.LBB2_123
	.p2align	4, , 16
.LBB2_128:                              # %.ph
                                        #   in Loop: Header=BB2_124 Depth=1
	ldx.hu	$t4, $t6, $t2
	ldx.hu	$t5, $t7, $t2
	add.d	$t7, $t7, $t1
	add.d	$t6, $t6, $t1
	move	$t8, $a5
	.p2align	4, , 16
.LBB2_129:                              #   Parent Loop BB2_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t4, $t6, 0
	st.h	$t5, $t7, 0
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 2
	addi.d	$t6, $t6, 2
	bnez	$t8, .LBB2_129
	b	.LBB2_123
.LBB2_130:                              # %.preheader58.i
	blez	$a3, .LBB2_152
# %bb.131:                              # %.preheader58.i
	bge	$a2, $a4, .LBB2_152
# %bb.132:                              # %.preheader.lr.ph.split.us.i
	ld.d	$a6, $s7, %pc_lo12(imgUV_org_frm)
	ld.d	$a5, $a6, 0
	ld.d	$a6, $a6, 8
	andi	$a7, $a3, 8
	bstrpick.d	$t0, $a3, 30, 4
	slli.d	$t0, $t0, 4
	bstrpick.d	$t1, $a3, 30, 3
	slli.d	$t1, $t1, 3
	sub.d	$t2, $zero, $t1
	ori	$t3, $zero, 8
	ori	$t4, $zero, 32
	ori	$t5, $zero, 16
	b	.LBB2_134
	.p2align	4, , 16
.LBB2_133:                              # %._crit_edge.us75.i
                                        #   in Loop: Header=BB2_134 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a4, .LBB2_152
.LBB2_134:                              # %iter.check445
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_149 Depth 2
                                        #     Child Loop BB2_146 Depth 2
                                        #     Child Loop BB2_137 Depth 2
	slli.d	$fp, $a2, 3
	addi.d	$t8, $fp, -8
	ldx.d	$t6, $a5, $t8
	ldx.d	$t7, $a5, $fp
	ldx.d	$t8, $a6, $t8
	ldx.d	$fp, $a6, $fp
	bgeu	$a3, $t3, .LBB2_138
# %bb.135:                              #   in Loop: Header=BB2_134 Depth=1
	move	$s0, $zero
.LBB2_136:                              # %vec.epilog.scalar.ph461.preheader
                                        #   in Loop: Header=BB2_134 Depth=1
	sub.d	$s1, $a3, $s0
	alsl.d	$fp, $s0, $fp, 1
	alsl.d	$t8, $s0, $t8, 1
	alsl.d	$t7, $s0, $t7, 1
	alsl.d	$t6, $s0, $t6, 1
	.p2align	4, , 16
.LBB2_137:                              # %vec.epilog.scalar.ph461
                                        #   Parent Loop BB2_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s0, $t6, 0
	st.h	$s0, $t7, 0
	ld.h	$s0, $t8, 0
	st.h	$s0, $fp, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 2
	addi.d	$t8, $t8, 2
	addi.d	$t7, $t7, 2
	addi.d	$t6, $t6, 2
	bnez	$s1, .LBB2_137
	b	.LBB2_133
	.p2align	4, , 16
.LBB2_138:                              # %vector.memcheck433
                                        #   in Loop: Header=BB2_134 Depth=1
	sub.d	$s1, $fp, $t7
	move	$s0, $zero
	bltu	$s1, $t4, .LBB2_136
# %bb.139:                              # %vector.memcheck433
                                        #   in Loop: Header=BB2_134 Depth=1
	sub.d	$s1, $t7, $t6
	bltu	$s1, $t4, .LBB2_136
# %bb.140:                              # %vector.memcheck433
                                        #   in Loop: Header=BB2_134 Depth=1
	sub.d	$s1, $t8, $t7
	bltu	$s1, $t4, .LBB2_136
# %bb.141:                              # %vector.memcheck433
                                        #   in Loop: Header=BB2_134 Depth=1
	sub.d	$s1, $fp, $t6
	bltu	$s1, $t4, .LBB2_136
# %bb.142:                              # %vector.memcheck433
                                        #   in Loop: Header=BB2_134 Depth=1
	sub.d	$s1, $fp, $t8
	bltu	$s1, $t4, .LBB2_136
# %bb.143:                              # %vector.main.loop.iter.check447
                                        #   in Loop: Header=BB2_134 Depth=1
	bgeu	$a3, $t5, .LBB2_148
# %bb.144:                              #   in Loop: Header=BB2_134 Depth=1
	move	$s4, $zero
.LBB2_145:                              # %vec.epilog.ph464
                                        #   in Loop: Header=BB2_134 Depth=1
	add.d	$s0, $t2, $s4
	alsl.d	$s1, $s4, $fp, 1
	alsl.d	$s2, $s4, $t8, 1
	alsl.d	$s3, $s4, $t7, 1
	alsl.d	$s4, $s4, $t6, 1
	.p2align	4, , 16
.LBB2_146:                              # %vec.epilog.vector.body467
                                        #   Parent Loop BB2_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s4, 0
	vst	$vr0, $s3, 0
	vld	$vr0, $s2, 0
	vst	$vr0, $s1, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	bnez	$s0, .LBB2_146
# %bb.147:                              # %vec.epilog.middle.block472
                                        #   in Loop: Header=BB2_134 Depth=1
	move	$s0, $t1
	beq	$t1, $a3, .LBB2_133
	b	.LBB2_136
.LBB2_148:                              # %vector.body451.preheader
                                        #   in Loop: Header=BB2_134 Depth=1
	addi.d	$s0, $t6, 16
	addi.d	$s1, $fp, 16
	addi.d	$s2, $t7, 16
	addi.d	$s3, $t8, 16
	move	$s4, $t0
	.p2align	4, , 16
.LBB2_149:                              # %vector.body451
                                        #   Parent Loop BB2_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s0, -16
	vld	$vr1, $s0, 0
	vst	$vr0, $s2, -16
	vst	$vr1, $s2, 0
	vld	$vr0, $s3, -16
	vld	$vr1, $s3, 0
	vst	$vr0, $s1, -16
	vst	$vr1, $s1, 0
	addi.d	$s4, $s4, -16
	addi.d	$s0, $s0, 32
	addi.d	$s1, $s1, 32
	addi.d	$s2, $s2, 32
	addi.d	$s3, $s3, 32
	bnez	$s4, .LBB2_149
# %bb.150:                              # %middle.block458
                                        #   in Loop: Header=BB2_134 Depth=1
	beq	$t0, $a3, .LBB2_133
# %bb.151:                              # %vec.epilog.iter.check462
                                        #   in Loop: Header=BB2_134 Depth=1
	move	$s4, $t0
	move	$s0, $t0
	beqz	$a7, .LBB2_136
	b	.LBB2_145
.LBB2_152:                              # %PaddAutoCropBorders.exit
	ori	$a2, $zero, 2112
	ldx.w	$a2, $a0, $a2
	lu12i.w	$a5, 1
	ori	$a3, $a5, 656
	ldx.w	$a3, $a0, $a3
	stptr.w	$a2, $a1, 14452
	stptr.w	$a3, $a1, 14440
	ldptr.d	$a2, $a0, 4756
	stptr.d	$a2, $a1, 14444
	ori	$a2, $a5, 1556
	ldx.w	$a2, $a0, $a2
	ld.w	$a3, $a1, 20
	stptr.w	$a2, $a1, 15260
	slli.d	$a2, $a3, 2
	pcalau12i	$a3, %pc_hi20(frame_ctr)
	addi.d	$fp, $a3, %pc_lo12(frame_ctr)
	ldx.w	$a3, $fp, $a2
	addi.d	$a3, $a3, 1
	stx.w	$a3, $fp, $a2
	pcalau12i	$a2, %got_pc_hi20(snr)
	ld.d	$s5, $a2, %got_pc_lo12(snr)
	ld.d	$a2, $s5, 0
	ld.w	$a3, $a2, 120
	ld.w	$a1, $a1, 20
	addi.d	$a3, $a3, 1
	ori	$a4, $zero, 3
	st.w	$a3, $a2, 120
	bne	$a1, $a4, .LBB2_155
# %bb.153:
	ldptr.w	$a1, $a0, 2152
	beqz	$a1, .LBB2_156
# %bb.154:
	pcalau12i	$a0, %pc_hi20(sp2_frame_indicator)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(sp2_frame_indicator)
	pcaddu18i	$ra, %call36(read_SP_coefficients)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 1
	ld.d	$a0, $s6, 0
	b	.LBB2_156
.LBB2_155:
	pcalau12i	$a1, %pc_hi20(sp2_frame_indicator)
	st.w	$zero, $a1, %pc_lo12(sp2_frame_indicator)
.LBB2_156:
	ldptr.w	$a2, $a0, 4704
	ori	$a1, $a5, 1020
	ldx.w	$a1, $a0, $a1
	ori	$a3, $zero, 1
	pcalau12i	$a4, %pc_hi20(frame_pic_si)
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(frame_pic_3)
	addi.d	$a4, $a4, %pc_lo12(frame_pic_3)
	st.d	$a4, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(frame_pic_2)
	addi.d	$s1, $a4, %pc_lo12(frame_pic_2)
	pcalau12i	$a4, %pc_hi20(frame_pic_1)
	addi.d	$s4, $a4, %pc_lo12(frame_pic_1)
	pcalau12i	$s3, %pc_hi20(top_pic)
	pcalau12i	$s2, %pc_hi20(bottom_pic)
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	bne	$a2, $a3, .LBB2_160
# %bb.157:
	beqz	$a1, .LBB2_159
# %bb.158:
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 4
.LBB2_159:                              # %.thread351
	ld.d	$fp, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $fp, 0
	ld.d	$a0, $s3, %pc_lo12(top_pic)
	ld.d	$a1, $s2, %pc_lo12(bottom_pic)
	ori	$s0, $zero, 1
	stptr.w	$s0, $a2, 15312
	pcaddu18i	$ra, %call36(field_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	move	$a2, $zero
	stptr.w	$s0, $a0, 14256
	ori	$a1, $zero, 2244
	b	.LBB2_265
.LBB2_160:
	pcalau12i	$s8, %pc_hi20(mb_adaptive)
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	beqz	$a1, .LBB2_168
# %bb.161:                              # %.thread361
	pcalau12i	$fp, %pc_hi20(generic_RC)
	ld.d	$a1, $fp, %pc_lo12(generic_RC)
	ldptr.w	$a2, $a0, 4708
	st.w	$zero, $a1, 4
	beqz	$a2, .LBB2_170
# %bb.162:
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $a0, 5128
	ldptr.w	$a3, $a1, 15352
	ori	$a4, $zero, 1
	st.w	$a4, $s8, %pc_lo12(mb_adaptive)
	stptr.w	$zero, $a1, 15312
	bgeu	$a2, $a3, .LBB2_171
# %bb.163:
	ld.w	$a3, $a1, 20
	beqz	$a3, .LBB2_165
# %bb.164:
	ldptr.w	$a3, $a0, 5136
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB2_171
.LBB2_165:
	ld.w	$a3, $a1, 0
	pcalau12i	$a4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a4, $a4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a4, $a4, 0
	xor	$a3, $a3, $a4
	sltu	$a3, $zero, $a3
	sll.w	$a2, $a2, $a3
	b	.LBB2_171
.LBB2_166:
	pcalau12i	$a0, %got_pc_hi20(start_tr_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_tr_in_this_IGOP)
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a4, $a0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.d	$a0, $s0, 0
	ld.w	$a4, $a4, 0
	ld.w	$a5, $a0, 20
	sub.d	$a4, $a2, $a4
	ldptr.w	$a2, $a0, 4144
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a5, $a4
	add.w	$s6, $a4, $a3
	st.w	$s6, $t0, %pc_lo12(frame_no)
	beqz	$a2, .LBB2_74
# %bb.167:
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a0, 8
	addi.w	$a3, $a3, 1
	beq	$a3, $a4, .LBB2_73
	b	.LBB2_74
.LBB2_168:
	ldptr.w	$a0, $a0, 4708
	beqz	$a0, .LBB2_201
# %bb.169:                              # %.thread346
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	st.w	$a1, $s8, %pc_lo12(mb_adaptive)
	b	.LBB2_202
.LBB2_170:                              # %._crit_edge
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a2, $a5, 1032
	ldx.w	$a2, $a0, $a2
	stptr.w	$zero, $a1, 15312
.LBB2_171:
	ldptr.w	$a0, $a0, 2940
	stptr.w	$a2, $a1, 15404
	pcalau12i	$s0, %pc_hi20(quadratic_RC)
	beqz	$a0, .LBB2_173
# %bb.172:
	pcalau12i	$a0, %pc_hi20(quadratic_RC_init)
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC_init)
	ld.d	$a1, $s0, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC_init)
	ld.d	$a0, $a0, %pc_lo12(generic_RC_init)
	ld.d	$a1, $fp, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
.LBB2_173:
	ld.d	$a0, $s0, %pc_lo12(quadratic_RC)
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	vldi	$vr0, -1168
	move	$a2, $zero
	pcaddu18i	$ra, %call36(rc_init_pict)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(updateQP)
	ld.d	$a2, $a0, %pc_lo12(updateQP)
	ld.d	$a0, $s0, %pc_lo12(quadratic_RC)
	move	$a1, $zero
	jirl	$ra, $a2, 0
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.w	$a1, $a1, 1148
	st.w	$a0, $a2, 36
	pcalau12i	$a0, %pc_hi20(QP)
	st.w	$zero, $a0, %pc_lo12(QP)
	beqz	$a1, .LBB2_175
# %bb.174:
	ld.d	$a0, $fp, %pc_lo12(generic_RC)
	st.w	$zero, $a0, 0
.LBB2_175:
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 1576
	pcalau12i	$fp, %pc_hi20(active_pps)
	beqz	$a0, .LBB2_177
.LBB2_176:
	pcalau12i	$a0, %got_pc_hi20(PicParSet)
	ld.d	$a0, $a0, %got_pc_lo12(PicParSet)
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, %pc_lo12(active_pps)
.LBB2_177:
	ld.d	$a0, $s4, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(frame_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.w	$a2, $a0, 2944
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bnez	$a2, .LBB2_179
# %bb.178:
	ld.w	$a2, $a1, 20
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB2_244
.LBB2_179:
	ldptr.w	$a2, $a0, 2940
	beqz	$a2, .LBB2_244
# %bb.180:
	ld.w	$a2, $a1, 36
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(intras)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a2, $a2, %pc_lo12(intras)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a3, $a1, 20
	lu12i.w	$a2, 3
	ori	$a4, $a2, 3320
	ldptr.w	$a2, $a0, 5116
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	ldx.w	$a0, $a1, $a4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(quadratic_RC_best)
	pcalau12i	$s0, %pc_hi20(generic_RC_best)
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $a3
	beqz	$a2, .LBB2_182
# %bb.181:
	ld.d	$a0, $s8, %pc_lo12(quadratic_RC_best)
	pcalau12i	$a1, %pc_hi20(quadratic_RC)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(generic_RC_best)
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a1, 20
.LBB2_182:
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 2
	pcalau12i	$a3, %pc_hi20(frame_pic)
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	beq	$a0, $a2, .LBB2_186
# %bb.183:
	ld.d	$a2, $s6, 0
	ld.w	$a2, $a2, 1576
	beqz	$a2, .LBB2_186
# %bb.184:
	move	$s8, $fp
	beqz	$a0, .LBB2_212
# %bb.185:
	pcalau12i	$a0, %got_pc_hi20(PicParSet)
	ld.d	$a0, $a0, %got_pc_lo12(PicParSet)
	ld.d	$a0, $a0, 16
	st.d	$a0, $s8, %pc_lo12(active_pps)
	b	.LBB2_188
.LBB2_186:
	ldptr.w	$a0, $a1, 15260
	move	$s8, $fp
	bnez	$a0, .LBB2_188
# %bb.187:
	ld.w	$a0, $a1, 36
	addi.d	$a0, $a0, -1
	st.w	$a0, $a1, 36
.LBB2_188:                              # %.thread.i
	ld.d	$a0, $s8, %pc_lo12(active_pps)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$fp, $a1, 36
	ld.d	$a2, $s6, 0
	stptr.w	$zero, $a1, 15408
.LBB2_189:
	ldptr.w	$a0, $a2, 5116
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_191
# %bb.190:
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	move	$s0, $s5
	move	$s5, $s1
	pcalau12i	$s1, %pc_hi20(quadratic_RC)
	ld.d	$a0, $s1, %pc_lo12(quadratic_RC)
	pcalau12i	$a1, %pc_hi20(quadratic_RC_init)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a1, %pc_hi20(generic_RC_init)
	ld.d	$a1, $a1, %pc_lo12(generic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 1576
	ld.d	$a0, $s1, %pc_lo12(quadratic_RC)
	sltui	$a1, $a1, 1
	vldi	$vr0, -1168
	lu12i.w	$a2, 259481
	ori	$a2, $a2, 2458
	movgr2fr.w	$fa1, $a2
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa0, $fa1, $fcc0
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(rc_init_pict)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(updateQP)
	ld.d	$a2, $a0, %pc_lo12(updateQP)
	ld.d	$a0, $s1, %pc_lo12(quadratic_RC)
	move	$s1, $s5
	move	$s5, $s0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.d	$a1, $s6, 0
	st.w	$a0, $a1, 36
.LBB2_191:
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(frame_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(picture_coding_decision)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	stptr.w	$a0, $a1, 14260
	beqz	$a0, .LBB2_197
# %bb.192:
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(intras)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $s1, 0
	ldptr.w	$a0, $a0, 5116
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a3
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a3, %pc_lo12(frame_pic)
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_194
# %bb.193:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC_best)
	pcalau12i	$a1, %pc_hi20(quadratic_RC)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(generic_RC_best)
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.LBB2_194:
	move	$a0, $zero
	ld.w	$a2, $a1, 20
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB2_205
.LBB2_195:
	pcalau12i	$a2, %got_pc_hi20(PicParSet)
	ld.d	$a2, $a2, %got_pc_lo12(PicParSet)
	ld.d	$a2, $a2, 0
	ldptr.w	$a3, $a1, 15260
	st.d	$a2, $s8, %pc_lo12(active_pps)
	bnez	$a3, .LBB2_217
# %bb.196:
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	b	.LBB2_216
.LBB2_197:
	move	$a0, $zero
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
.LBB2_198:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(enc_frame_picture)
	ld.w	$a3, $a1, 20
	pcalau12i	$a4, %pc_hi20(enc_picture)
	ori	$a5, $zero, 2
	st.d	$a2, $a4, %pc_lo12(enc_picture)
	beq	$a3, $a5, .LBB2_203
# %bb.199:
	ld.d	$a2, $s6, 0
	ld.w	$a2, $a2, 1576
	beqz	$a2, .LBB2_203
# %bb.200:
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.w	$a2, $a1, 36
	pcalau12i	$a2, %got_pc_hi20(PicParSet)
	ld.d	$a2, $a2, %got_pc_lo12(PicParSet)
	ld.d	$a2, $a2, 0
	st.d	$a2, $s8, %pc_lo12(active_pps)
	b	.LBB2_204
.LBB2_201:
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
.LBB2_202:
	stptr.w	$zero, $a0, 15312
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 1576
	pcalau12i	$fp, %pc_hi20(active_pps)
	bnez	$a0, .LBB2_176
	b	.LBB2_177
.LBB2_203:
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.w	$a2, $a1, 36
.LBB2_204:
	ld.d	$a2, $s4, 0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	st.w	$a4, $a3, %pc_lo12(intras)
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a3, %pc_lo12(frame_pic)
	ld.w	$a2, $a1, 20
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB2_195
.LBB2_205:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.w	$a0, $a1, 36
	beqz	$a2, .LBB2_209
# %bb.206:
	ld.d	$a0, $s6, 0
	ld.w	$a2, $a0, 1576
	beqz	$a2, .LBB2_215
# %bb.207:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(test_wp_B_slice)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB2_214
# %bb.208:
	pcalau12i	$a0, %got_pc_hi20(PicParSet)
	ld.d	$a0, $a0, %got_pc_lo12(PicParSet)
	b	.LBB2_224
.LBB2_209:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(intras)
	ldptr.w	$a2, $a1, 15352
	ori	$a3, $zero, 100
	mul.w	$a0, $a0, $a3
	div.wu	$a0, $a0, $a2
	ori	$a2, $zero, 75
	bltu	$a0, $a2, .LBB2_221
# %bb.210:
	ori	$a0, $zero, 2
.LBB2_211:                              # %.thread53.sink.split.i
	st.w	$a0, $a1, 20
	pcalau12i	$a0, %got_pc_hi20(PicParSet)
	ld.d	$a0, $a0, %got_pc_lo12(PicParSet)
	b	.LBB2_225
.LBB2_212:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(test_wp_P_slice)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_463
# %bb.213:
	pcalau12i	$a0, %got_pc_hi20(PicParSet)
	ld.d	$a0, $a0, %got_pc_lo12(PicParSet)
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $s8, %pc_lo12(active_pps)
	b	.LBB2_188
.LBB2_214:                              # %._crit_edge62.i
	ld.d	$a0, $s6, 0
.LBB2_215:
	ldptr.w	$a2, $a1, 15360
	ori	$a3, $zero, 2956
	ldx.w	$a0, $a0, $a3
	sltu	$a2, $zero, $a2
	sub.d	$a2, $zero, $a2
	ori	$a2, $a2, 1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
.LBB2_216:
	st.w	$a2, $a1, 36
.LBB2_217:
	stptr.w	$zero, $a1, 15408
	beqz	$a0, .LBB2_227
# %bb.218:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1972
	ldx.w	$a0, $a1, $a0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$zero, $a2, %pc_lo12(enc_frame_picture3)
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.w	$a2, $a1, 36
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB2_239
.LBB2_219:
	bnez	$a0, .LBB2_241
# %bb.220:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_frame_picture)
	pcalau12i	$a2, %pc_hi20(enc_picture)
	st.d	$a0, $a2, %pc_lo12(enc_picture)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 20
	pcalau12i	$a0, %got_pc_hi20(PicParSet)
	ld.d	$a0, $a0, %got_pc_lo12(PicParSet)
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, %pc_lo12(active_pps)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.w	$a0, $a1, 36
	b	.LBB2_240
.LBB2_221:
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 1576
	beqz	$a0, .LBB2_226
# %bb.222:
	ori	$a0, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(test_wp_P_slice)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_467
# %bb.223:                              # %..thread53.sink.split.i_crit_edge
	pcalau12i	$a0, %got_pc_hi20(PicParSet)
	ld.d	$a0, $a0, %got_pc_lo12(PicParSet)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
.LBB2_224:                              # %.thread53.sink.split.i
	addi.d	$a0, $a0, 8
.LBB2_225:                              # %.thread53.sink.split.i
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, %pc_lo12(active_pps)
.LBB2_226:                              # %.thread53.i154
	stptr.w	$zero, $a1, 15408
.LBB2_227:
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$fp, $s5
	move	$s5, $s1
	ld.d	$a0, $s6, 0
	ldptr.w	$a0, $a0, 5116
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_229
# %bb.228:
	pcalau12i	$s0, %pc_hi20(quadratic_RC)
	ld.d	$a0, $s0, %pc_lo12(quadratic_RC)
	pcalau12i	$a1, %pc_hi20(quadratic_RC_init)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a1, %pc_hi20(generic_RC_init)
	ld.d	$a1, $a1, %pc_lo12(generic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a1, $a0, 1576
	ld.d	$a0, $s0, %pc_lo12(quadratic_RC)
	sltui	$a1, $a1, 1
	vldi	$vr0, -1168
	lu12i.w	$a2, 260403
	ori	$a2, $a2, 819
	movgr2fr.w	$fa1, $a2
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa0, $fa1, $fcc0
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(rc_init_pict)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(updateQP)
	ld.d	$a2, $a0, %pc_lo12(updateQP)
	ld.d	$a0, $s0, %pc_lo12(quadratic_RC)
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.d	$a1, $s1, 0
	st.w	$a0, $a1, 36
.LBB2_229:
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(frame_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.w	$a0, $a0, 14260
	ld.d	$a1, $s0, 0
	beqz	$a0, .LBB2_231
# %bb.230:
	ld.d	$a0, $s5, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(picture_coding_decision)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 1972
	ldx.w	$a2, $a1, $a2
	add.w	$a0, $a2, $a0
	b	.LBB2_232
.LBB2_231:
	ld.d	$a0, $s4, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(picture_coding_decision)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	slli.w	$a0, $a0, 1
.LBB2_232:
	stptr.w	$a0, $a1, 14260
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $s6, 0
	ldptr.w	$a2, $a2, 5116
	beqz	$a2, .LBB2_237
# %bb.233:
	ori	$a2, $zero, 2
	move	$s1, $s5
	bne	$a0, $a2, .LBB2_235
# %bb.234:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC_best)
	pcalau12i	$a1, %pc_hi20(quadratic_RC)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(generic_RC_best)
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.LBB2_235:
	ldptr.w	$a0, $a1, 14260
	ori	$a2, $zero, 2
	move	$s5, $fp
	bne	$a0, $a2, .LBB2_238
.LBB2_236:                              # %.thread77.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$fp, $a1, $a0
	ld.d	$a0, $s6, 0
	ldptr.w	$a2, $a0, 5116
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	bnez	$a2, .LBB2_242
	b	.LBB2_243
.LBB2_237:
	move	$s1, $s5
	ldptr.w	$a0, $a1, 14260
	ori	$a2, $zero, 2
	move	$s5, $fp
	beq	$a0, $a2, .LBB2_236
.LBB2_238:
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB2_219
.LBB2_239:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_frame_picture2)
	pcalau12i	$a2, %pc_hi20(enc_picture)
	st.d	$a0, $a2, %pc_lo12(enc_picture)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 20
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s8, %pc_lo12(active_pps)
	st.w	$fp, $a1, 36
.LBB2_240:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a0, %pc_lo12(intras)
.LBB2_241:
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ldptr.w	$a2, $a0, 5116
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	beqz	$a2, .LBB2_243
.LBB2_242:
	pcalau12i	$a0, %pc_hi20(quadratic_RC)
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	ld.d	$a1, $a3, %pc_lo12(quadratic_RC_best)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	ld.d	$a1, $s0, %pc_lo12(generic_RC_best)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s6, 0
.LBB2_243:                              # %rdPictureCoding.exit
	stptr.w	$fp, $a1, 15608
.LBB2_244:
	lu12i.w	$a2, 3
	ori	$s0, $a2, 3320
	ld.w	$a2, $a1, 20
	ldx.w	$fp, $a1, $s0
	ori	$s8, $zero, 3
	bne	$a2, $s8, .LBB2_248
# %bb.245:
	pcalau12i	$a1, %pc_hi20(si_frame_indicator)
	ld.w	$a3, $a1, %pc_lo12(si_frame_indicator)
	bnez	$a3, .LBB2_248
# %bb.246:
	ldptr.w	$a2, $a0, 2148
	beqz	$a2, .LBB2_249
# %bb.247:
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(frame_pic_si)
	ori	$a2, $zero, 1
	st.w	$a2, $a1, %pc_lo12(si_frame_indicator)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(frame_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 20
	ld.d	$a0, $s6, 0
.LBB2_248:
	bne	$a2, $s8, .LBB2_251
.LBB2_249:                              # %.thread348
	ldptr.w	$a1, $a0, 2156
	beqz	$a1, .LBB2_251
# %bb.250:
	pcaddu18i	$ra, %call36(output_SP_coefficients)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
.LBB2_251:
	ldptr.w	$a1, $a0, 4708
	beqz	$a1, .LBB2_253
# %bb.252:
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.w	$zero, $a1, %pc_lo12(mb_adaptive)
.LBB2_253:
	ldptr.w	$a1, $a0, 4704
	ori	$a2, $zero, 2
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB2_262
# %bb.254:
	move	$a1, $s5
	move	$s5, $s1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ldptr.w	$a0, $a0, 5116
	beqz	$a0, .LBB2_256
# %bb.255:
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 4
.LBB2_256:
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s3, %pc_lo12(top_pic)
	ld.d	$a1, $s2, %pc_lo12(bottom_pic)
	stptr.d	$zero, $a2, 15408
	ori	$a3, $zero, 1
	stptr.w	$a3, $a2, 15312
	pcaddu18i	$ra, %call36(field_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$s1, $s3, %pc_lo12(top_pic)
	ldptr.w	$a1, $a0, 15460
	ldptr.w	$a2, $a0, 14260
	ld.w	$a0, $a0, 36
	ld.d	$s8, $s2, %pc_lo12(bottom_pic)
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $a0, -12
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	addi.d	$a0, $a2, -1
	sltui	$a0, $a0, 1
	sltui	$a1, $a2, 1
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a0, $a1, $a0
	ld.d	$s7, $a0, 0
	vldi	$vr2, -1016
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	fld.s	$fa3, $s7, 812
	fld.s	$fa4, $s7, 816
	fld.s	$fa5, $s7, 820
	fmul.d	$fa2, $fa0, $fa1
	fadd.s	$fa0, $fa3, $fa4
	fadd.s	$fa0, $fa0, $fa5
	fld.s	$fa1, $s1, 812
	fld.s	$fa3, $s1, 816
	fld.s	$fa4, $s1, 820
	ld.w	$a0, $s1, 808
	ld.w	$a2, $s8, 808
	ld.w	$a1, $s7, 808
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa1, $fa1, $fa4
	add.w	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(decide_fld_frame)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	stptr.w	$a0, $a1, 14256
	beqz	$a0, .LBB2_258
# %bb.257:
	ldx.w	$fp, $a1, $s0
.LBB2_258:
	pcaddu18i	$ra, %call36(update_field_frame_contexts)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $s6, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a1, 5116
	lu12i.w	$a2, 3
	ori	$a2, $a2, 1968
	ldx.w	$s0, $a0, $a2
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_260
# %bb.259:
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	sltui	$a2, $s0, 1
	st.w	$a2, $a1, 8
.LBB2_260:                              # %._crit_edge288
	stptr.w	$fp, $a0, 15608
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	move	$s1, $s5
	beqz	$s0, .LBB2_263
# %bb.261:
	move	$a2, $zero
	ori	$a1, $zero, 2244
	b	.LBB2_264
.LBB2_262:                              # %.thread355
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s0, $zero
	stptr.w	$zero, $a0, 14256
	stptr.w	$fp, $a0, 15608
	ori	$a2, $zero, 1
	ori	$a1, $zero, 2240
	b	.LBB2_265
.LBB2_263:
	move	$s0, $zero
	ori	$a2, $zero, 1
	ori	$a1, $zero, 2240
.LBB2_264:
	move	$s5, $a3
.LBB2_265:
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.w	$a4, $a3, $a1
	ld.w	$a5, $a3, 40
	ld.w	$a1, $a0, 20
	add.d	$a4, $a5, $a4
	ori	$a5, $zero, 1
	st.w	$a4, $a3, 40
	beq	$a1, $a5, .LBB2_267
# %bb.266:
	stptr.w	$s0, $a0, 14328
.LBB2_267:
	ld.d	$a4, $s8, %pc_lo12(imgY_org_frm)
	ld.d	$a3, $s7, %pc_lo12(imgUV_org_frm)
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	st.d	$a4, $a5, %pc_lo12(imgY_org)
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	st.d	$a3, $a4, %pc_lo12(imgUV_org)
	beqz	$a2, .LBB2_275
# %bb.268:
	ld.d	$a2, $s6, 0
	ldptr.w	$a4, $a2, 4704
	bnez	$a4, .LBB2_270
# %bb.269:
	ldptr.w	$a4, $a2, 4708
	beqz	$a4, .LBB2_271
.LBB2_270:
	ld.w	$a4, $a0, 0
	ori	$a5, $zero, 1
	stptr.w	$a5, $a0, 14252
	srli.d	$a5, $a4, 30
	bstrins.d	$a5, $a4, 63, 1
	addi.w	$a4, $a5, 1
	srli.d	$a4, $a4, 1
	ld.w	$a5, $a2, 60
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3300
	ldx.w	$a6, $a0, $a6
	st.w	$a4, $a0, 0
	ld.w	$a4, $a0, 84
	ld.d	$a7, $s5, 0
	add.d	$a5, $a6, $a5
	st.w	$a5, $a0, 68
	st.w	$a4, $a0, 80
	st.d	$zero, $a7, 0
	st.w	$zero, $a7, 8
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	st.d	$a3, $a4, %pc_lo12(imgUV_org)
.LBB2_271:                              # %frame_mode_buffer.exit
	ldptr.w	$a2, $a2, 2940
	beqz	$a2, .LBB2_276
# %bb.272:
	ldptr.w	$a0, $a0, 14260
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB2_341
# %bb.273:
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB2_276
# %bb.274:
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(writeout_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(frame_pic_si)
	bnez	$a0, .LBB2_280
	b	.LBB2_281
.LBB2_275:
	ld.d	$a1, $s5, 0
	st.d	$zero, $a1, 0
	ld.d	$a0, $s3, %pc_lo12(top_pic)
	st.w	$zero, $a1, 8
	pcaddu18i	$ra, %call36(writeout_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(bottom_pic)
	pcaddu18i	$ra, %call36(writeout_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(frame_pic_si)
	bnez	$a0, .LBB2_280
	b	.LBB2_281
.LBB2_276:                              # %.thread
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB2_279
# %bb.277:                              # %.thread
	pcalau12i	$fp, %pc_hi20(si_frame_indicator)
	ld.w	$a0, $fp, %pc_lo12(si_frame_indicator)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_279
# %bb.278:
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(frame_pic_si)
	pcaddu18i	$ra, %call36(writeout_picture)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, %pc_lo12(si_frame_indicator)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(frame_pic_si)
	bnez	$a0, .LBB2_280
	b	.LBB2_281
.LBB2_279:
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(writeout_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(frame_pic_si)
	beqz	$a0, .LBB2_281
.LBB2_280:
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
.LBB2_281:
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_283
# %bb.282:
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
.LBB2_283:
	move	$fp, $s7
	ld.d	$a0, $s1, 0
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_285
# %bb.284:
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
.LBB2_285:
	ld.d	$a0, $s4, 0
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_287
# %bb.286:
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
.LBB2_287:
	ld.d	$a0, $s3, %pc_lo12(top_pic)
	beqz	$a0, .LBB2_289
# %bb.288:
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
.LBB2_289:
	ld.d	$a0, $s2, %pc_lo12(bottom_pic)
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_291
# %bb.290:
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
.LBB2_291:
	ld.d	$s2, $s6, 0
	ldptr.w	$a0, $s2, 5116
	beqz	$a0, .LBB2_293
# %bb.292:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 24
	pcalau12i	$a0, %pc_hi20(quadratic_RC)
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	sub.w	$s4, $a1, $a2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(rc_update_pict_frame)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s6, 0
	ldptr.w	$a0, $s2, 4704
	bnez	$a0, .LBB2_299
	b	.LBB2_294
.LBB2_293:
	move	$s4, $zero
	ldptr.w	$a0, $s2, 4704
	bnez	$a0, .LBB2_299
.LBB2_294:
	ldptr.w	$a0, $s2, 4168
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_297
# %bb.295:
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB2_297
# %bb.296:
	pcaddu18i	$ra, %call36(UpdateDecoders)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s6, 0
.LBB2_297:
	ldptr.w	$a0, $s2, 4732
	beqz	$a0, .LBB2_299
# %bb.298:
	pcaddu18i	$ra, %call36(UpdatePixelMap)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s6, 0
.LBB2_299:
	ldptr.w	$a0, $s2, 5112
	beqz	$a0, .LBB2_312
# %bb.300:
	st.d	$s4, $sp, 288                   # 8-byte Folded Spill
	move	$s4, $s5
	ld.d	$s3, $s0, 0
	lu12i.w	$a1, 3
	ori	$a0, $a1, 3232
	ldx.w	$a0, $s3, $a0
	ori	$a1, $a1, 3236
	ldx.w	$a1, $s3, $a1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a3, $s2, 60
	ld.w	$a4, $s2, 56
	ldptr.w	$s5, $s2, 5264
	ldptr.w	$a2, $s3, 14256
	ldptr.w	$s6, $s2, 5268
	mul.d	$a1, $a0, $a0
	mul.d	$a0, $a4, $a3
	beqz	$a2, .LBB2_313
# %bb.301:                              # %.preheader110.i
	blez	$a4, .LBB2_333
# %bb.302:                              # %.preheader109.lr.ph.i
	blez	$a3, .LBB2_342
# %bb.303:                              # %.preheader109.lr.ph.split.us.i
	move	$a5, $zero
	move	$a2, $zero
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(imgY_org)
	pcalau12i	$a7, %pc_hi20(imgY_com)
	ld.d	$a7, $a7, %pc_lo12(imgY_com)
	ldptr.d	$t0, $s3, 14232
	bstrpick.d	$t1, $a3, 30, 1
	slli.d	$t1, $t1, 1
	addi.d	$t2, $a6, 8
	addi.d	$t3, $a7, 8
	ori	$t4, $zero, 1
	b	.LBB2_305
	.p2align	4, , 16
.LBB2_304:                              # %._crit_edge.us.i172
                                        #   in Loop: Header=BB2_305 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a4, .LBB2_334
.LBB2_305:                              # %.preheader109.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_308 Depth 2
                                        #     Child Loop BB2_311 Depth 2
	slli.d	$t5, $a5, 1
	bne	$a3, $t4, .LBB2_307
# %bb.306:                              #   in Loop: Header=BB2_305 Depth=1
	move	$t8, $zero
	b	.LBB2_310
	.p2align	4, , 16
.LBB2_307:                              # %vector.body480.preheader
                                        #   in Loop: Header=BB2_305 Depth=1
	move	$t6, $zero
	move	$t7, $t1
	move	$t8, $t3
	move	$fp, $t2
	.p2align	4, , 16
.LBB2_308:                              # %vector.body480
                                        #   Parent Loop BB2_305 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $fp, -8
	ld.d	$s1, $fp, 0
	ld.d	$s7, $t8, -8
	ld.d	$s8, $t8, 0
	ldx.hu	$s0, $s0, $t5
	ldx.hu	$s1, $s1, $t5
	ldx.hu	$s7, $s7, $t5
	ldx.hu	$s8, $s8, $t5
	sub.d	$s0, $s0, $s7
	sub.d	$s1, $s1, $s8
	slli.d	$s0, $s0, 2
	slli.d	$s1, $s1, 2
	ldx.w	$s0, $t0, $s0
	ldx.w	$s1, $t0, $s1
	add.d	$a2, $a2, $s0
	add.d	$t6, $t6, $s1
	addi.d	$fp, $fp, 16
	addi.d	$t7, $t7, -2
	addi.d	$t8, $t8, 16
	bnez	$t7, .LBB2_308
# %bb.309:                              # %middle.block484
                                        #   in Loop: Header=BB2_305 Depth=1
	add.d	$a2, $t6, $a2
	move	$t8, $t1
	beq	$t1, $a3, .LBB2_304
.LBB2_310:                              # %scalar.ph475.preheader
                                        #   in Loop: Header=BB2_305 Depth=1
	sub.d	$t6, $a3, $t8
	alsl.d	$t7, $t8, $a7, 3
	alsl.d	$t8, $t8, $a6, 3
	.p2align	4, , 16
.LBB2_311:                              # %scalar.ph475
                                        #   Parent Loop BB2_305 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $t8, 0
	ld.d	$s0, $t7, 0
	ldx.hu	$fp, $fp, $t5
	ldx.hu	$s0, $s0, $t5
	sub.d	$fp, $fp, $s0
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $t0, $fp
	add.d	$a2, $a2, $fp
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	bnez	$t6, .LBB2_311
	b	.LBB2_304
.LBB2_312:
	ld.d	$a0, $s5, 0
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	st.d	$zero, $a0, 96
	st.w	$zero, $a0, 104
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	ldptr.w	$a0, $s2, 5084
	pcalau12i	$s1, %pc_hi20(key_frame)
	bnez	$a0, .LBB2_351
	b	.LBB2_364
.LBB2_313:
	ld.d	$a6, $s8, %pc_lo12(imgY_org_frm)
	ld.d	$a5, $fp, %pc_lo12(imgUV_org_frm)
	ldptr.w	$a2, $s2, 4704
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	st.d	$a6, $a7, %pc_lo12(imgY_org)
	ori	$a7, $zero, 2
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	st.d	$a5, $t0, %pc_lo12(imgUV_org)
	bne	$a2, $a7, .LBB2_315
# %bb.314:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(enc_frame_picture)
	pcalau12i	$a7, %pc_hi20(enc_picture)
	st.d	$a2, $a7, %pc_lo12(enc_picture)
.LBB2_315:
	move	$a2, $zero
	blez	$a4, .LBB2_326
# %bb.316:
	blez	$a3, .LBB2_326
# %bb.317:                              # %.preheader105.lr.ph.split.us.i
	pcalau12i	$a2, %pc_hi20(enc_picture)
	ld.d	$t1, $a2, %pc_lo12(enc_picture)
	move	$a7, $zero
	move	$a2, $zero
	ldptr.d	$t0, $s3, 14232
	ldptr.d	$t1, $t1, 6440
	bstrpick.d	$t2, $a3, 30, 1
	slli.d	$t2, $t2, 1
	addi.d	$t3, $a6, 8
	addi.d	$t4, $t1, 8
	ori	$t5, $zero, 2
	b	.LBB2_319
	.p2align	4, , 16
.LBB2_318:                              # %._crit_edge.us136.i
                                        #   in Loop: Header=BB2_319 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a4, .LBB2_326
.LBB2_319:                              # %.preheader105.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_322 Depth 2
                                        #     Child Loop BB2_325 Depth 2
	slli.d	$t6, $a7, 1
	bgeu	$a3, $t5, .LBB2_321
# %bb.320:                              #   in Loop: Header=BB2_319 Depth=1
	move	$fp, $zero
	b	.LBB2_324
	.p2align	4, , 16
.LBB2_321:                              # %vector.body492.preheader
                                        #   in Loop: Header=BB2_319 Depth=1
	move	$t7, $zero
	move	$t8, $t2
	move	$fp, $t4
	move	$s0, $t3
	.p2align	4, , 16
.LBB2_322:                              # %vector.body492
                                        #   Parent Loop BB2_319 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s0, -8
	ld.d	$s7, $s0, 0
	ld.d	$s8, $fp, -8
	ld.d	$ra, $fp, 0
	ldx.hu	$s1, $s1, $t6
	ldx.hu	$s7, $s7, $t6
	ldx.hu	$s8, $s8, $t6
	ldx.hu	$ra, $ra, $t6
	sub.d	$s1, $s1, $s8
	sub.d	$s7, $s7, $ra
	slli.d	$s1, $s1, 2
	slli.d	$s7, $s7, 2
	ldx.w	$s1, $t0, $s1
	ldx.w	$s7, $t0, $s7
	add.d	$a2, $a2, $s1
	add.d	$t7, $t7, $s7
	addi.d	$s0, $s0, 16
	addi.d	$t8, $t8, -2
	addi.d	$fp, $fp, 16
	bnez	$t8, .LBB2_322
# %bb.323:                              # %middle.block497
                                        #   in Loop: Header=BB2_319 Depth=1
	add.d	$a2, $t7, $a2
	move	$fp, $t2
	beq	$t2, $a3, .LBB2_318
.LBB2_324:                              # %scalar.ph487.preheader
                                        #   in Loop: Header=BB2_319 Depth=1
	sub.d	$t7, $a3, $fp
	alsl.d	$t8, $fp, $t1, 3
	alsl.d	$fp, $fp, $a6, 3
	.p2align	4, , 16
.LBB2_325:                              # %scalar.ph487
                                        #   Parent Loop BB2_319 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $fp, 0
	ld.d	$s1, $t8, 0
	ldx.hu	$s0, $s0, $t6
	ldx.hu	$s1, $s1, $t6
	sub.d	$s0, $s0, $s1
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $t0, $s0
	add.d	$a2, $a2, $s0
	addi.d	$t7, $t7, -1
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, 8
	bnez	$t7, .LBB2_325
	b	.LBB2_318
.LBB2_326:                              # %._crit_edge134.i
	ldptr.w	$a3, $s3, 15536
	move	$s0, $zero
	beqz	$a3, .LBB2_343
# %bb.327:                              # %._crit_edge134.i
	blez	$s6, .LBB2_343
# %bb.328:                              # %._crit_edge134.i
	blez	$s5, .LBB2_343
# %bb.329:                              # %.preheader.lr.ph.split.us.i173
	pcalau12i	$a3, %pc_hi20(enc_picture)
	ld.d	$a3, $a3, %pc_lo12(enc_picture)
	ldptr.d	$a7, $a3, 6472
	ldptr.d	$a3, $s3, 14232
	ld.d	$a4, $a5, 0
	ld.d	$a6, $a7, 0
	ld.d	$a5, $a5, 8
	ld.d	$a7, $a7, 8
	move	$t0, $zero
	move	$s7, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_330:                              # %.preheader.us.i174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_331 Depth 2
	slli.d	$t1, $t0, 1
	move	$t2, $a4
	move	$t3, $a6
	move	$t4, $a5
	move	$t5, $a7
	move	$t6, $s5
	.p2align	4, , 16
.LBB2_331:                              #   Parent Loop BB2_330 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t2, 0
	ld.d	$t8, $t3, 0
	ld.d	$fp, $t4, 0
	ld.d	$s1, $t5, 0
	ldx.hu	$t7, $t7, $t1
	ldx.hu	$t8, $t8, $t1
	ldx.hu	$fp, $fp, $t1
	ldx.hu	$s1, $s1, $t1
	sub.d	$t7, $t7, $t8
	sub.d	$t8, $fp, $s1
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a3, $t7
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a3, $t8
	add.d	$s7, $s7, $t7
	add.d	$s0, $s0, $t8
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	bnez	$t6, .LBB2_331
# %bb.332:                              # %._crit_edge.us148.i
                                        #   in Loop: Header=BB2_330 Depth=1
	addi.d	$t0, $t0, 1
	bne	$t0, $s6, .LBB2_330
	b	.LBB2_344
.LBB2_333:
	move	$a2, $zero
.LBB2_334:                              # %._crit_edge115.i
	ldptr.w	$a3, $s3, 15536
	move	$s0, $zero
	beqz	$a3, .LBB2_343
.LBB2_335:                              # %._crit_edge115.i
	blez	$s6, .LBB2_343
# %bb.336:                              # %._crit_edge115.i
	blez	$s5, .LBB2_343
# %bb.337:                              # %.preheader106.lr.ph.split.us.i
	pcalau12i	$a3, %pc_hi20(imgUV_com)
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a6, $a4, %pc_lo12(imgUV_org)
	ld.d	$a7, $a3, %pc_lo12(imgUV_com)
	ldptr.d	$a3, $s3, 14232
	ld.d	$a4, $a6, 0
	ld.d	$a5, $a7, 0
	ld.d	$a6, $a6, 8
	ld.d	$a7, $a7, 8
	move	$t0, $zero
	move	$s7, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_338:                              # %.preheader106.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_339 Depth 2
	slli.d	$t1, $t0, 1
	move	$t2, $a4
	move	$t3, $a5
	move	$t4, $a6
	move	$t5, $a7
	move	$t6, $s5
	.p2align	4, , 16
.LBB2_339:                              #   Parent Loop BB2_338 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t2, 0
	ld.d	$t8, $t3, 0
	ld.d	$fp, $t4, 0
	ld.d	$s1, $t5, 0
	ldx.hu	$t7, $t7, $t1
	ldx.hu	$t8, $t8, $t1
	ldx.hu	$fp, $fp, $t1
	ldx.hu	$s1, $s1, $t1
	sub.d	$t7, $t7, $t8
	sub.d	$t8, $fp, $s1
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a3, $t7
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a3, $t8
	add.d	$s7, $s7, $t7
	add.d	$s0, $s0, $t8
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	bnez	$t6, .LBB2_339
# %bb.340:                              # %._crit_edge.us126.i
                                        #   in Loop: Header=BB2_338 Depth=1
	addi.d	$t0, $t0, 1
	bne	$t0, $s6, .LBB2_338
	b	.LBB2_344
.LBB2_341:
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(writeout_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(frame_pic_si)
	bnez	$a0, .LBB2_280
	b	.LBB2_281
.LBB2_342:
	move	$a2, $zero
	ldptr.w	$a3, $s3, 15536
	move	$s0, $zero
	bnez	$a3, .LBB2_335
.LBB2_343:
	move	$s7, $s0
.LBB2_344:                              # %.loopexit104.i
	ld.d	$s8, $s4, 0
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fs3, $fa0
	fst.s	$fs3, $s8, 96
	movgr2fr.d	$fa0, $s7
	ffint.s.l	$fs1, $fa0
	fst.s	$fs1, $s8, 100
	movgr2fr.d	$fa0, $s0
	ffint.s.l	$fs0, $fa0
	fst.s	$fs0, $s8, 104
	ori	$fp, $zero, 1
	sltu	$a3, $fp, $a2
	masknez	$a4, $fp, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	movgr2fr.d	$fa2, $a2
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s3, 15536
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs2, $fa0
	fst.s	$fs2, $s8, 0
	beqz	$a0, .LBB2_346
# %bb.345:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a0
	mul.d	$a1, $s6, $s5
	sltu	$a2, $fp, $s0
	masknez	$a3, $fp, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a3
	sltu	$a2, $fp, $s7
	masknez	$a3, $fp, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs5, $fa0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs6, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fs6, $fa0
	fmul.d	$fa0, $fa0, $fs5
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs4, $fa0
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fs6, $fa0
	fmul.d	$fa0, $fa0, $fs5
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	b	.LBB2_347
.LBB2_346:
	movgr2fr.w	$fs4, $zero
	fmov.s	$fa0, $fs4
.LBB2_347:
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 0
	fst.s	$fs4, $s8, 4
	fst.s	$fa0, $s8, 8
	move	$s5, $s4
	beqz	$a0, .LBB2_349
# %bb.348:
	ld.w	$a0, $s8, 120
	fld.s	$fa1, $s8, 84
	addi.d	$a1, $a0, -1
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa2, $fs2
	movgr2fr.w	$fa3, $a0
	fld.s	$fa4, $s8, 88
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s8, 84
	fmadd.s	$fa1, $fa4, $fa2, $fs4
	fld.s	$fa4, $s8, 92
	fdiv.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s8, 88
	fld.s	$fa1, $s8, 108
	fmadd.s	$fa0, $fa4, $fa2, $fa0
	fdiv.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $s8, 92
	fmadd.s	$fa0, $fa1, $fa2, $fs3
	fld.s	$fa1, $s8, 112
	fdiv.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $s8, 108
	fld.s	$fa0, $s8, 116
	fmadd.s	$fa1, $fa1, $fa2, $fs1
	fdiv.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s8, 112
	fmadd.s	$fa0, $fa0, $fa2, $fs0
	fdiv.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $s8, 116
	b	.LBB2_350
.LBB2_349:                              # %.loopexit.loopexit.i
	fst.s	$fs2, $s8, 12
	fst.s	$fs4, $s8, 16
	fst.s	$fa0, $s8, 20
	fst.s	$fs2, $s8, 84
	fst.s	$fs4, $s8, 88
	fst.s	$fa0, $s8, 92
	fst.s	$fs3, $s8, 108
	fst.s	$fs1, $s8, 112
	fst.s	$fs0, $s8, 116
	st.d	$zero, $s8, 24
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	vst	$vr0, $s8, 32
	vst	$vr0, $s8, 48
	vst	$vr0, $s8, 64
	st.w	$zero, $s8, 80
.LBB2_350:                              # %find_snr.exit
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 20
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	alsl.d	$a0, $a0, $s8, 2
	fld.s	$fa0, $a0, 24
	addi.d	$a2, $a1, -1
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa1, $fs2
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 24
	fld.s	$fa0, $a0, 44
	fld.s	$fa3, $s8, 4
	fmadd.s	$fa0, $fa0, $fa1, $fa3
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 44
	fld.s	$fa0, $a0, 64
	fld.s	$fa3, $s8, 8
	fmadd.s	$fa0, $fa0, $fa1, $fa3
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 64
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	ldptr.w	$a0, $s2, 5084
	pcalau12i	$s1, %pc_hi20(key_frame)
	beqz	$a0, .LBB2_364
.LBB2_351:
	ld.w	$a1, $s1, %pc_lo12(key_frame)
	beqz	$a1, .LBB2_364
# %bb.352:                              # %.preheader203
	ld.d	$a2, $s0, 0
	ld.w	$a1, $a2, 52
	blez	$a1, .LBB2_358
# %bb.353:                              # %.preheader202.lr.ph
	ld.w	$a3, $a2, 68
	blez	$a3, .LBB2_358
# %bb.354:                              # %.preheader202.lr.ph.split.us
	ld.d	$a5, $fp, %pc_lo12(enc_frame_picture)
	pcalau12i	$a4, %pc_hi20(imgY_tmp)
	ld.d	$a4, $a4, %pc_lo12(imgY_tmp)
	ldptr.d	$a5, $a5, 6440
	move	$a6, $zero
	.p2align	4, , 16
.LBB2_355:                              # %.preheader202.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_356 Depth 2
	slli.d	$a7, $a6, 1
	move	$t0, $a3
	move	$t1, $a4
	move	$t2, $a5
	.p2align	4, , 16
.LBB2_356:                              #   Parent Loop BB2_355 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, 0
	ldx.h	$t3, $t3, $a7
	ld.d	$t4, $t1, 0
	stx.h	$t3, $t4, $a7
	addi.d	$t2, $t2, 8
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 8
	bnez	$t0, .LBB2_356
# %bb.357:                              # %._crit_edge.us
                                        #   in Loop: Header=BB2_355 Depth=1
	addi.d	$a6, $a6, 1
	bne	$a6, $a1, .LBB2_355
.LBB2_358:                              # %.preheader200
	ld.w	$a1, $a2, 64
	blez	$a1, .LBB2_364
# %bb.359:                              # %.preheader199.lr.ph
	ld.w	$a2, $a2, 80
	blez	$a2, .LBB2_364
# %bb.360:                              # %.preheader199.lr.ph.split.us
	pcalau12i	$a3, %pc_hi20(imgUV_tmp)
	addi.d	$a4, $a3, %pc_lo12(imgUV_tmp)
	ld.d	$a3, $fp, %pc_lo12(enc_frame_picture)
	ldptr.d	$a6, $a3, 6472
	ld.d	$a3, $a4, 0
	ld.d	$a4, $a4, 8
	ld.d	$a5, $a6, 0
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	.p2align	4, , 16
.LBB2_361:                              # %.preheader199.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_362 Depth 2
	slli.d	$t0, $a7, 1
	move	$t1, $a2
	move	$t2, $a4
	move	$t3, $a6
	move	$t4, $a3
	move	$t5, $a5
	.p2align	4, , 16
.LBB2_362:                              #   Parent Loop BB2_361 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t5, 0
	ldx.h	$t6, $t6, $t0
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t3, 0
	stx.h	$t6, $t7, $t0
	ldx.h	$t6, $t8, $t0
	ld.d	$t7, $t2, 0
	stx.h	$t6, $t7, $t0
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 8
	bnez	$t1, .LBB2_362
# %bb.363:                              # %._crit_edge.us216
                                        #   in Loop: Header=BB2_361 Depth=1
	addi.d	$a7, $a7, 1
	bne	$a7, $a1, .LBB2_361
.LBB2_364:                              # %.loopexit201
	pcalau12i	$s2, %pc_hi20(redundant_coding)
	beqz	$a0, .LBB2_378
# %bb.365:                              # %.loopexit201
	ld.w	$a0, $s2, %pc_lo12(redundant_coding)
	beqz	$a0, .LBB2_378
# %bb.366:                              # %.preheader198
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 52
	blez	$a0, .LBB2_372
# %bb.367:                              # %.preheader197.lr.ph
	ld.w	$a2, $a1, 68
	blez	$a2, .LBB2_372
# %bb.368:                              # %.preheader197.lr.ph.split.us
	ld.d	$a4, $fp, %pc_lo12(enc_frame_picture)
	pcalau12i	$a3, %pc_hi20(imgY_tmp)
	ld.d	$a3, $a3, %pc_lo12(imgY_tmp)
	ldptr.d	$a4, $a4, 6440
	move	$a5, $zero
	.p2align	4, , 16
.LBB2_369:                              # %.preheader197.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_370 Depth 2
	slli.d	$a6, $a5, 1
	move	$a7, $a2
	move	$t0, $a4
	move	$t1, $a3
	.p2align	4, , 16
.LBB2_370:                              #   Parent Loop BB2_369 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t1, 0
	ldx.h	$t2, $t2, $a6
	ld.d	$t3, $t0, 0
	stx.h	$t2, $t3, $a6
	addi.d	$t1, $t1, 8
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB2_370
# %bb.371:                              # %._crit_edge.us220
                                        #   in Loop: Header=BB2_369 Depth=1
	addi.d	$a5, $a5, 1
	bne	$a5, $a0, .LBB2_369
.LBB2_372:                              # %.preheader196
	ld.w	$a0, $a1, 64
	blez	$a0, .LBB2_378
# %bb.373:                              # %.preheader.lr.ph
	ld.w	$a1, $a1, 80
	blez	$a1, .LBB2_378
# %bb.374:                              # %.preheader.lr.ph.split.us
	pcalau12i	$a2, %pc_hi20(imgUV_tmp)
	addi.d	$a3, $a2, %pc_lo12(imgUV_tmp)
	ld.d	$a2, $fp, %pc_lo12(enc_frame_picture)
	ldptr.d	$a5, $a2, 6472
	ld.d	$a2, $a3, 0
	ld.d	$a3, $a3, 8
	ld.d	$a4, $a5, 0
	ld.d	$a5, $a5, 8
	move	$a6, $zero
	.p2align	4, , 16
.LBB2_375:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_376 Depth 2
	slli.d	$a7, $a6, 1
	move	$t0, $a1
	move	$t1, $a5
	move	$t2, $a3
	move	$t3, $a4
	move	$t4, $a2
	.p2align	4, , 16
.LBB2_376:                              #   Parent Loop BB2_375 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t5, $t4, 0
	ldx.h	$t5, $t5, $a7
	ld.d	$t6, $t3, 0
	ld.d	$t7, $t2, 0
	stx.h	$t5, $t6, $a7
	ldx.h	$t5, $t7, $a7
	ld.d	$t6, $t1, 0
	stx.h	$t5, $t6, $a7
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 8
	bnez	$t0, .LBB2_376
# %bb.377:                              # %._crit_edge.us224
                                        #   in Loop: Header=BB2_375 Depth=1
	addi.d	$a6, $a6, 1
	bne	$a6, $a0, .LBB2_375
.LBB2_378:                              # %.loopexit
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	ld.hu	$a1, $sp, 328
	ld.d	$a2, $sp, 360
	ld.hu	$a3, $sp, 344
	pcalau12i	$a4, %pc_hi20(tot_time)
	ld.d	$a5, $a4, %pc_lo12(tot_time)
	sub.d	$a0, $a0, $a2
	ori	$a2, $zero, 1000
	mul.d	$a6, $a0, $a2
	ld.d	$a0, $s6, 0
	sub.d	$a2, $a1, $a3
	ld.d	$a1, $s0, 0
	add.d	$a3, $a2, $a5
	ldptr.w	$a5, $a0, 4704
	lu12i.w	$a2, 3
	ori	$a2, $a2, 1968
	ldx.w	$a2, $a1, $a2
	add.d	$a3, $a3, $a6
	ori	$a6, $zero, 2
	st.d	$a3, $a4, %pc_lo12(tot_time)
	bne	$a5, $a6, .LBB2_381
# %bb.379:
	beqz	$a2, .LBB2_383
# %bb.380:
	pcalau12i	$a0, %pc_hi20(enc_bottom_picture)
	ld.d	$a0, $a0, %pc_lo12(enc_bottom_picture)
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(enc_frame_picture)
	b	.LBB2_392
.LBB2_381:
	beqz	$a2, .LBB2_384
# %bb.382:
	pcalau12i	$a0, %pc_hi20(enc_bottom_picture)
	ld.d	$a0, $a0, %pc_lo12(enc_bottom_picture)
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	b	.LBB2_393
.LBB2_383:
	ld.d	$a0, $fp, %pc_lo12(enc_frame_picture)
	pcaddu18i	$ra, %call36(replace_top_pic_with_frame)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(enc_bottom_picture)
	ld.d	$a0, $a0, %pc_lo12(enc_bottom_picture)
	b	.LBB2_392
.LBB2_384:
	ldptr.w	$a1, $a1, 14260
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB2_387
# %bb.385:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB2_388
# %bb.386:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_frame_picture3)
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(enc_frame_picture)
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_frame_picture2)
	b	.LBB2_392
.LBB2_387:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_frame_picture2)
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(enc_frame_picture)
	b	.LBB2_391
.LBB2_388:
	ldptr.w	$a0, $a0, 5084
	beqz	$a0, .LBB2_390
# %bb.389:
	ld.w	$a0, $s1, %pc_lo12(key_frame)
	bnez	$a0, .LBB2_393
.LBB2_390:
	ld.d	$a0, $fp, %pc_lo12(enc_frame_picture)
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_frame_picture2)
.LBB2_391:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(enc_frame_picture3)
.LBB2_392:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
.LBB2_393:
	ld.d	$a1, $s0, 0
	lu12i.w	$a0, 3
	ori	$a2, $a0, 3320
	ld.d	$a3, $s6, 0
	ldptr.w	$a0, $a1, 15352
	ldx.w	$a2, $a1, $a2
	ldptr.w	$a4, $a3, 5116
	bstrpick.d	$a5, $a0, 31, 1
	add.w	$a2, $a5, $a2
	div.wu	$a2, $a2, $a0
	stptr.w	$a2, $a1, 15604
	beqz	$a4, .LBB2_397
# %bb.394:
	ld.w	$a4, $a1, 20
	ori	$a5, $zero, 1
	beq	$a4, $a5, .LBB2_397
# %bb.395:
	ldptr.w	$a3, $a3, 5128
	bgeu	$a3, $a0, .LBB2_397
# %bb.396:
	pcalau12i	$a0, %pc_hi20(quadratic_RC)
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	st.w	$a2, $a0, 1356
.LBB2_397:
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 24
	pcalau12i	$a4, %pc_hi20(Bit_Buffer)
	ld.d	$a4, $a4, %pc_lo12(Bit_Buffer)
	sub.w	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(total_frame_buffer)
	ld.d	$a3, $a3, %got_pc_lo12(total_frame_buffer)
	ld.d	$a5, $a3, 0
	slli.d	$a5, $a5, 3
	stx.d	$a2, $a4, $a5
	ld.d	$a2, $a3, 0
	ldptr.w	$a4, $a1, 15272
	addi.d	$a2, $a2, 1
	ori	$a5, $zero, 2
	st.d	$a2, $a3, 0
	bne	$a4, $a5, .LBB2_402
# %bb.398:
	ldptr.w	$a2, $a1, 15360
	pcalau12i	$a3, %pc_hi20(encode_one_frame.consecutive_non_reference_pictures)
	ld.w	$a4, $a3, %pc_lo12(encode_one_frame.consecutive_non_reference_pictures)
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	pcalau12i	$fp, %pc_hi20(encode_one_frame.prev_frame_no)
	ld.w	$a5, $fp, %pc_lo12(encode_one_frame.prev_frame_no)
	sltui	$a2, $a2, 1
	addi.w	$a4, $a4, 1
	maskeqz	$a2, $a4, $a2
	st.w	$a2, $a3, %pc_lo12(encode_one_frame.consecutive_non_reference_pictures)
	blt	$a1, $a5, .LBB2_400
# %bb.399:
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_401
.LBB2_400:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ld.d	$a0, $s3, 0
.LBB2_401:
	st.w	$a1, $fp, %pc_lo12(encode_one_frame.prev_frame_no)
.LBB2_402:
	ldptr.w	$a0, $a0, 2260
	beqz	$a0, .LBB2_405
# %bb.403:
	ld.d	$a0, $s6, 0
	ldptr.w	$a0, $a0, 5112
	beqz	$a0, .LBB2_405
# %bb.404:
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_405:                              # %ReportNALNonVLCBits.exit
	ld.d	$a0, $s0, 0
	ld.w	$a2, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$s1, $a1, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $s1, 0
	ld.d	$a1, $s6, 0
	bne	$a2, $a3, .LBB2_409
# %bb.406:
	ldptr.w	$a1, $a1, 5112
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB2_412
# %bb.407:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_414
# %bb.408:
	ld.d	$a2, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ldptr.w	$a3, $a0, 15604
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a4, %pc_hi20(.L.str.14)
	addi.d	$a4, $a4, %pc_lo12(.L.str.14)
	masknez	$a4, $a4, $a2
	pcalau12i	$a5, %pc_hi20(.L.str.15)
	addi.d	$a5, $a5, %pc_lo12(.L.str.15)
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 8
	st.d	$zero, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a2, $zero
	move	$a7, $zero
	b	.LBB2_413
.LBB2_409:
	ldptr.w	$a2, $a1, 5116
	beqz	$a2, .LBB2_421
# %bb.410:
	ldptr.w	$a2, $a1, 4704
	beqz	$a2, .LBB2_419
# %bb.411:                              # %._crit_edge281
	ld.d	$a2, $s3, 0
	b	.LBB2_420
.LBB2_412:
	ld.d	$a2, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ldptr.w	$a4, $a0, 15604
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(.L.str.14)
	addi.d	$a3, $a3, %pc_lo12(.L.str.14)
	masknez	$a3, $a3, $a2
	pcalau12i	$a5, %pc_hi20(.L.str.15)
	addi.d	$a5, $a5, %pc_lo12(.L.str.15)
	pcalau12i	$a6, %pc_hi20(intras)
	ld.w	$a6, $a6, %pc_lo12(intras)
	ldptr.w	$a7, $a0, 14456
	ldptr.w	$t0, $a0, 14460
	ldptr.w	$t1, $a0, 14260
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a3
	st.d	$a0, $sp, 56
	st.d	$t1, $sp, 48
	st.d	$t0, $sp, 40
	st.d	$a7, $sp, 32
	st.d	$a6, $sp, 24
	st.d	$a2, $sp, 16
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	vst	$vr3, $sp, 0
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a2, $zero
	move	$a3, $zero
.LBB2_413:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_414:
	ld.d	$a0, $s6, 0
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB2_418
# %bb.415:
	ldptr.w	$a1, $a0, 4704
	bnez	$a1, .LBB2_417
# %bb.416:
	ldptr.w	$a0, $a0, 4708
	beqz	$a0, .LBB2_418
.LBB2_417:
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	pcalau12i	$a1, %pc_hi20(quadratic_RC)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	st.d	$a0, $a1, 1512
.LBB2_418:                              # %ReportFirstframe.exit
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $a0, 720
	st.d	$zero, $a0, 16
	b	.LBB2_452
.LBB2_419:
	ldptr.w	$a3, $a1, 4708
	ld.d	$a2, $s3, 0
	beqz	$a3, .LBB2_439
.LBB2_420:
	pcalau12i	$a3, %pc_hi20(quadratic_RC)
	ld.d	$a3, $a3, %pc_lo12(quadratic_RC)
	ld.d	$a2, $a2, 16
	ld.d	$a4, $a3, 1520
	sub.w	$s4, $a2, $a4
	st.d	$a2, $a3, 1520
.LBB2_421:
	ld.d	$a2, $s3, 0
	ld.w	$a5, $a0, 20
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a2, 24
	ori	$a6, $zero, 1
	sub.d	$a3, $a3, $a4
	beq	$a5, $a6, .LBB2_431
# %bb.422:
	ori	$a4, $zero, 3
	beq	$a5, $a4, .LBB2_428
# %bb.423:
	ori	$a4, $zero, 2
	bne	$a5, $a4, .LBB2_434
# %bb.424:
	ld.d	$a5, $a2, 720
	ldptr.w	$a1, $a1, 5112
	add.d	$a3, $a3, $a5
	st.d	$a3, $a2, 720
	beq	$a1, $a4, .LBB2_442
# %bb.425:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_452
# %bb.426:
	ldptr.d	$a1, $a0, 14208
	ld.d	$a4, $s5, 0
	ld.w	$a5, $a1, 4
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ldptr.w	$a3, $a0, 15604
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a4, 4
	fld.s	$fa3, $a4, 8
	ldptr.w	$a4, $a0, 14256
	fcvt.d.s	$fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa3
	sltui	$a6, $a4, 1
	pcalau12i	$a4, %pc_hi20(.L.str.14)
	addi.d	$a4, $a4, %pc_lo12(.L.str.14)
	masknez	$a7, $a4, $a6
	pcalau12i	$a4, %pc_hi20(.L.str.15)
	addi.d	$t0, $a4, %pc_lo12(.L.str.15)
	ldptr.w	$a4, $a0, 15360
	maskeqz	$a0, $t0, $a6
	or	$a0, $a0, $a7
	bne	$a5, $a2, .LBB2_447
# %bb.427:
	st.d	$a4, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	movfr2gr.d	$a4, $fa2
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB2_448
.LBB2_428:
	ld.d	$a4, $a2, 728
	ldptr.w	$a1, $a1, 5112
	add.d	$a3, $a3, $a4
	ori	$a4, $zero, 2
	st.d	$a3, $a2, 728
	beq	$a1, $a4, .LBB2_440
# %bb.429:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_452
# %bb.430:
	ld.d	$a2, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ldptr.w	$a3, $a0, 15604
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a4, %pc_hi20(.L.str.14)
	addi.d	$a4, $a4, %pc_lo12(.L.str.14)
	masknez	$a4, $a4, $a2
	pcalau12i	$a5, %pc_hi20(.L.str.15)
	addi.d	$a5, $a5, %pc_lo12(.L.str.15)
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 8
	st.d	$zero, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	b	.LBB2_448
.LBB2_431:
	ld.d	$a4, $a2, 736
	ldptr.w	$a1, $a1, 5112
	add.d	$a3, $a3, $a4
	ori	$a4, $zero, 2
	st.d	$a3, $a2, 736
	beq	$a1, $a4, .LBB2_441
# %bb.432:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_452
# %bb.433:
	ld.d	$a2, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ldptr.w	$a3, $a0, 15604
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a4, %pc_hi20(.L.str.14)
	addi.d	$a4, $a4, %pc_lo12(.L.str.14)
	masknez	$a4, $a4, $a2
	pcalau12i	$a5, %pc_hi20(.L.str.15)
	addi.d	$a5, $a5, %pc_lo12(.L.str.15)
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 8
	st.d	$zero, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB2_448
.LBB2_434:
	ld.d	$a6, $a2, 728
	ldptr.w	$a5, $a1, 5112
	add.d	$a3, $a3, $a6
	st.d	$a3, $a2, 728
	beq	$a5, $a4, .LBB2_444
# %bb.435:
	ori	$a2, $zero, 1
	bne	$a5, $a2, .LBB2_452
# %bb.436:
	ldptr.w	$a1, $a1, 5084
	beqz	$a1, .LBB2_446
# %bb.437:
	ld.w	$a1, $s2, %pc_lo12(redundant_coding)
	beqz	$a1, .LBB2_446
# %bb.438:
	ld.d	$a1, $s5, 0
	ldptr.w	$a2, $a0, 15604
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	ldptr.w	$a1, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(.L.str.14)
	addi.d	$a3, $a3, %pc_lo12(.L.str.14)
	masknez	$a3, $a3, $a1
	pcalau12i	$a4, %pc_hi20(.L.str.15)
	addi.d	$a4, $a4, %pc_lo12(.L.str.15)
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 0
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	move	$a1, $zero
	move	$a6, $zero
	move	$a7, $zero
	b	.LBB2_451
.LBB2_439:
	ld.d	$a3, $a2, 16
	ld.d	$a2, $a2, 24
	sub.w	$s4, $a3, $a2
	b	.LBB2_421
.LBB2_440:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a2, $a1, %pc_lo12(active_pps)
	ld.d	$a5, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ld.w	$a3, $a2, 192
	ldptr.w	$a4, $a0, 15604
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a5, 4
	fld.s	$fa2, $a5, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a5, %pc_hi20(.L.str.14)
	addi.d	$a5, $a5, %pc_lo12(.L.str.14)
	masknez	$a5, $a5, $a2
	pcalau12i	$a6, %pc_hi20(.L.str.15)
	addi.d	$a6, $a6, %pc_lo12(.L.str.15)
	pcalau12i	$a7, %pc_hi20(intras)
	ld.w	$a7, $a7, %pc_lo12(intras)
	ldptr.w	$t0, $a0, 14456
	ldptr.w	$t1, $a0, 14460
	ldptr.w	$t2, $a0, 14260
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a5
	st.d	$a0, $sp, 56
	st.d	$t2, $sp, 48
	st.d	$t1, $sp, 40
	st.d	$t0, $sp, 32
	st.d	$a7, $sp, 24
	st.d	$a2, $sp, 16
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	vst	$vr3, $sp, 0
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	b	.LBB2_445
.LBB2_441:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a2, $a1, %pc_lo12(active_pps)
	ld.d	$a5, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ld.w	$a3, $a2, 196
	ldptr.w	$a4, $a0, 15604
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a5, 4
	fld.s	$fa2, $a5, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a5, %pc_hi20(.L.str.14)
	addi.d	$a5, $a5, %pc_lo12(.L.str.14)
	masknez	$a5, $a5, $a2
	pcalau12i	$a6, %pc_hi20(.L.str.15)
	addi.d	$a6, $a6, %pc_lo12(.L.str.15)
	pcalau12i	$a7, %pc_hi20(intras)
	ld.w	$a7, $a7, %pc_lo12(intras)
	ldptr.w	$t0, $a0, 14452
	ldptr.w	$t1, $a0, 14456
	ldptr.w	$t2, $a0, 14460
	ldptr.w	$t3, $a0, 14260
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a5
	st.d	$a0, $sp, 64
	st.d	$t3, $sp, 56
	st.d	$t2, $sp, 48
	st.d	$t1, $sp, 40
	st.d	$t0, $sp, 32
	st.d	$a7, $sp, 24
	st.d	$a2, $sp, 16
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	vst	$vr3, $sp, 0
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB2_445
.LBB2_442:
	ldptr.d	$a1, $a0, 14208
	ld.d	$a2, $s5, 0
	ld.w	$t0, $a1, 4
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ldptr.w	$a4, $a0, 15604
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa3, $a2, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa3
	sltui	$t1, $a2, 1
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$a2, $a2, %pc_lo12(.L.str.14)
	masknez	$t2, $a2, $t1
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$t3, $a2, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(intras)
	ld.w	$a2, $a2, %pc_lo12(intras)
	ldptr.w	$a3, $a0, 14456
	ldptr.w	$a5, $a0, 14460
	ldptr.w	$a6, $a0, 14260
	ldptr.w	$a7, $a0, 15360
	maskeqz	$a0, $t3, $t1
	ori	$t1, $zero, 1
	or	$a0, $a0, $t2
	bne	$t0, $t1, .LBB2_449
# %bb.443:
	st.d	$a7, $sp, 56
	st.d	$a6, $sp, 48
	st.d	$a5, $sp, 40
	st.d	$a3, $sp, 32
	st.d	$a2, $sp, 24
	st.d	$a0, $sp, 16
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	vst	$vr3, $sp, 0
	movfr2gr.d	$a5, $fa2
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB2_450
.LBB2_444:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a2, $a1, %pc_lo12(active_pps)
	ld.d	$a5, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ld.w	$a3, $a2, 192
	ldptr.w	$a4, $a0, 15604
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a5, 4
	fld.s	$fa2, $a5, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a5, %pc_hi20(.L.str.14)
	addi.d	$a5, $a5, %pc_lo12(.L.str.14)
	masknez	$a5, $a5, $a2
	pcalau12i	$a6, %pc_hi20(.L.str.15)
	addi.d	$a6, $a6, %pc_lo12(.L.str.15)
	pcalau12i	$a7, %pc_hi20(intras)
	ld.w	$a7, $a7, %pc_lo12(intras)
	ldptr.w	$t0, $a0, 14456
	ldptr.w	$t1, $a0, 14460
	ldptr.w	$t2, $a0, 14260
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a5
	st.d	$a0, $sp, 56
	st.d	$t2, $sp, 48
	st.d	$t1, $sp, 40
	st.d	$t0, $sp, 32
	st.d	$a7, $sp, 24
	st.d	$a2, $sp, 16
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	vst	$vr3, $sp, 0
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
.LBB2_445:                              # %ReportIntra.exit
	move	$a2, $zero
	b	.LBB2_451
.LBB2_446:
	ld.d	$a2, $s5, 0
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	ldptr.w	$a3, $a0, 15604
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	ldptr.w	$a2, $a0, 14256
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	sltui	$a2, $a2, 1
	pcalau12i	$a4, %pc_hi20(.L.str.14)
	addi.d	$a4, $a4, %pc_lo12(.L.str.14)
	masknez	$a4, $a4, $a2
	pcalau12i	$a5, %pc_hi20(.L.str.15)
	addi.d	$a5, $a5, %pc_lo12(.L.str.15)
	ldptr.w	$a0, $a0, 15360
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 8
	st.d	$zero, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB2_448
.LBB2_447:
	st.d	$a4, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	movfr2gr.d	$a4, $fa2
	movfr2gr.d	$a5, $fa1
	movfr2gr.d	$a6, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB2_448:                              # %ReportIntra.exit
	move	$a2, $zero
	move	$a7, $zero
	b	.LBB2_451
.LBB2_449:
	st.d	$a7, $sp, 56
	st.d	$a6, $sp, 48
	st.d	$a5, $sp, 40
	st.d	$a3, $sp, 32
	st.d	$a2, $sp, 24
	st.d	$a0, $sp, 16
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	vst	$vr3, $sp, 0
	movfr2gr.d	$a5, $fa2
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
.LBB2_450:                              # %ReportIntra.exit
	move	$a2, $zero
	move	$a3, $zero
.LBB2_451:                              # %ReportIntra.exit
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_452:                              # %ReportIntra.exit
	ld.d	$a0, $s6, 0
	ldptr.w	$a0, $a0, 5112
	bnez	$a0, .LBB2_454
# %bb.453:
	ld.w	$a1, $s7, %pc_lo12(frame_no)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_454:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 16
	ldptr.w	$a1, $a1, 5116
	st.d	$a2, $a0, 24
	beqz	$a1, .LBB2_460
# %bb.455:
	pcalau12i	$fp, %pc_hi20(quadratic_RC)
	ld.d	$a0, $fp, %pc_lo12(quadratic_RC)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(rc_update_pict)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 20
	beqz	$a1, .LBB2_457
# %bb.456:
	ld.d	$a1, $s6, 0
	ldptr.w	$a1, $a1, 5136
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_460
.LBB2_457:
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s1, 0
	beq	$a0, $a1, .LBB2_460
# %bb.458:
	ld.d	$a0, $fp, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(updateRCModel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.w	$a0, $a0, 5136
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_460
# %bb.459:
	pcaddu18i	$ra, %call36(ComputeFrameMAD)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(quadratic_RC)
	fst.d	$fa0, $a0, 1432
.LBB2_460:
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $s3, 0
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	stptr.w	$zero, $a2, 2260
	fld.d	$fs6, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB2_461:
	ori	$a7, $t1, 1660
	ldx.w	$a7, $a2, $a7
	add.d	$a6, $a7, $a6
	ori	$a7, $zero, 3
	st.w	$a6, $a1, 36
	bne	$a5, $a7, .LBB2_29
.LBB2_462:
	bgtz	$a4, .LBB2_473
	b	.LBB2_474
.LBB2_463:
	ld.d	$a2, $s6, 0
	ori	$a0, $zero, 2948
	ldx.w	$a0, $a2, $a0
	pcalau12i	$a1, %got_pc_hi20(PicParSet)
	ld.d	$a3, $a1, %got_pc_lo12(PicParSet)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a4, $a3, 0
	ldptr.w	$a3, $a1, 15260
	ld.w	$fp, $a1, 36
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $s8, %pc_lo12(active_pps)
	bnez	$a3, .LBB2_465
# %bb.464:
	addi.d	$fp, $fp, -1
	st.w	$fp, $a1, 36
.LBB2_465:                              # %._crit_edge.i160
	stptr.w	$zero, $a1, 15408
	beqz	$a0, .LBB2_189
# %bb.466:                              # %.thread73.i
	stptr.w	$zero, $a1, 14260
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$zero, $a2, %pc_lo12(enc_frame_picture2)
	b	.LBB2_198
.LBB2_467:
	ld.d	$a0, $s6, 0
	ldptr.w	$a1, $a0, 2952
	beqz	$a1, .LBB2_469
# %bb.468:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 4
	ori	$a2, $zero, 66
	bne	$a1, $a2, .LBB2_476
.LBB2_469:
	ori	$a1, $zero, 2948
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(PicParSet)
	ld.d	$a2, $a1, %got_pc_lo12(PicParSet)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ldptr.w	$a3, $a1, 15260
	st.d	$a2, $s8, %pc_lo12(active_pps)
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	bnez	$a3, .LBB2_217
# %bb.470:
	ld.w	$a2, $a1, 36
	addi.d	$a2, $a2, 1
	b	.LBB2_216
.LBB2_471:
	ori	$a7, $t1, 1660
	ldx.w	$a7, $a2, $a7
.LBB2_472:                              # %.thread51.i
	add.d	$a6, $a7, $a6
	ori	$a7, $zero, 3
	st.w	$a6, $a1, 36
	bne	$a5, $a7, .LBB2_29
.LBB2_473:                              # %.thread52.i
	slli.w	$a5, $a4, 1
	mod.w	$a3, $a3, $a5
	bge	$a3, $a4, .LBB2_475
.LBB2_474:
	ldptr.d	$a3, $a2, 2140
	st.d	$a3, $a1, 36
	b	.LBB2_29
.LBB2_475:
	ori	$a3, $t1, 52
	ldx.w	$a3, $a2, $a3
	ld.w	$a4, $a2, 16
	ori	$a5, $zero, 2140
	ldx.w	$a5, $a2, $a5
	ori	$a6, $zero, 2144
	ldx.w	$a6, $a2, $a6
	sub.d	$a3, $a3, $a4
	add.d	$a4, $a3, $a5
	st.w	$a4, $a1, 36
	add.d	$a3, $a6, $a3
	st.w	$a3, $a1, 40
	b	.LBB2_29
.LBB2_476:
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB2_211
.LBB2_477:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(report_stats_on_error)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_478:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	encode_one_frame, .Lfunc_end2-encode_one_frame
                                        # -- End function
	.globl	read_SP_coefficients            # -- Begin function read_SP_coefficients
	.p2align	5
	.type	read_SP_coefficients,@function
read_SP_coefficients:                   # @read_SP_coefficients
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s0, 0
	ldptr.w	$a1, $a0, 4156
	blez	$a1, .LBB3_2
# %bb.1:
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 14248
	slli.w	$a3, $a1, 1
	mod.w	$a2, $a2, $a3
	bge	$a2, $a1, .LBB3_4
.LBB3_2:
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 625
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_5
# %bb.3:
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a1, $a0, 369
	b	.LBB3_22
.LBB3_4:
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 369
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_21
.LBB3_5:
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 88
	alsl.d	$a0, $a0, $a0, 1
	pcalau12i	$s0, %pc_hi20(number_sp2_frames)
	ld.w	$a1, $s0, %pc_lo12(number_sp2_frames)
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	mul.w	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_20
# %bb.6:
	ld.d	$a0, $s1, 0
	ld.w	$a1, $s0, %pc_lo12(number_sp2_frames)
	ld.w	$a2, $a0, 68
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, %pc_lo12(number_sp2_frames)
	blez	$a2, .LBB3_10
# %bb.7:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s3, $zero
	pcalau12i	$s4, %pc_hi20(lrec)
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, %pc_lo12(lrec)
	ld.w	$s0, $a0, 52
	ldx.d	$a0, $a1, $s2
	ori	$a1, $zero, 4
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s0, $a0, .LBB3_19
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 68
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a1, .LBB3_8
.LBB3_10:                               # %.preheader22
	ld.w	$a1, $a0, 80
	blez	$a1, .LBB3_18
# %bb.11:                               # %.lr.ph25.preheader
	move	$s3, $zero
	move	$s4, $zero
	pcalau12i	$s2, %pc_hi20(lrec_uv)
	.p2align	4, , 16
.LBB3_12:                               # %.lr.ph25
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, %pc_lo12(lrec_uv)
	ld.d	$a1, $a1, 0
	ld.w	$s0, $a0, 64
	ldx.d	$a0, $a1, $s3
	ori	$a1, $zero, 4
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s0, $a0, .LBB3_19
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 80
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a1, .LBB3_12
# %bb.14:                               # %._crit_edge
	blez	$a1, .LBB3_18
# %bb.15:                               # %.lr.ph25.1.preheader
	move	$s3, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph25.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, %pc_lo12(lrec_uv)
	ld.d	$a1, $a1, 8
	ld.w	$s0, $a0, 64
	ldx.d	$a0, $a1, $s3
	ori	$a1, $zero, 4
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s0, $a0, .LBB3_19
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 80
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a1, .LBB3_16
.LBB3_18:                               # %.split.us
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB3_19:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_20:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_21:
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a1, $a0, 625
.LBB3_22:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	read_SP_coefficients, .Lfunc_end3-read_SP_coefficients
                                        # -- End function
	.globl	field_picture                   # -- Begin function field_picture
	.p2align	5
	.type	field_picture,@function
field_picture:                          # @field_picture
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
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	ld.d	$a5, $s1, 0
	stptr.w	$zero, $a5, 15608
	pcalau12i	$a0, %got_pc_hi20(stats)
	ld.d	$a0, $a0, %got_pc_lo12(stats)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 197
	stptr.w	$zero, $a0, 2244
	ld.w	$a2, $a5, 0
	lu12i.w	$s3, 3
	ori	$a3, $s3, 2952
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$a3, $a5, $a3
	stptr.d	$a1, $a0, 2248
	slli.d	$a0, $a2, 1
	st.w	$a0, $a5, 0
	slli.d	$a0, $a3, 1
	stptr.w	$a0, $a5, 15240
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 60
	ori	$a1, $s3, 3300
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ldx.w	$a1, $a5, $a1
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	ld.wu	$a3, $a5, 84
	add.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 1
	st.w	$a2, $a5, 68
	srli.d	$a0, $a3, 31
	ori	$a1, $s3, 3064
	ldx.wu	$a1, $a5, $a1
	add.w	$a0, $a3, $a0
	srai.d	$a4, $a0, 1
	st.w	$a4, $a5, 80
	srli.d	$a6, $a1, 1
	ld.w	$a0, $a5, 24
	ld.w	$a1, $a5, 52
	ld.w	$a3, $a5, 64
	stptr.w	$a6, $a5, 15348
	ori	$fp, $zero, 1
	stptr.w	$fp, $a5, 14256
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	pcalau12i	$s0, %pc_hi20(enc_top_picture)
	ori	$a2, $s3, 3028
	ldx.w	$a3, $a1, $a2
	ori	$a2, $s3, 3044
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a2, $a1, $a2
	st.d	$a0, $s0, %pc_lo12(enc_top_picture)
	st.w	$a3, $a0, 4
	st.w	$a3, $a0, 16
	stptr.w	$a2, $a0, 6364
	stptr.w	$a2, $a0, 6360
	stptr.d	$zero, $a0, 6428
	stptr.w	$zero, $a1, 15268
	pcalau12i	$a4, %pc_hi20(get_mb_block_pos)
	pcalau12i	$a2, %got_pc_hi20(get_mb_block_pos_normal)
	ld.d	$a2, $a2, %got_pc_lo12(get_mb_block_pos_normal)
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $a4, %pc_lo12(get_mb_block_pos)
	pcalau12i	$a4, %pc_hi20(getNeighbour)
	pcalau12i	$a2, %got_pc_hi20(getNonAffNeighbour)
	ld.d	$a2, $a2, %got_pc_lo12(getNonAffNeighbour)
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $a4, %pc_lo12(getNeighbour)
	pcalau12i	$s8, %pc_hi20(active_sps)
	ld.d	$a2, $s8, %pc_lo12(active_sps)
	stptr.w	$a3, $a1, 15328
	st.w	$fp, $a1, 24
	pcalau12i	$s7, %pc_hi20(enc_picture)
	ld.w	$a3, $a2, 1148
	ld.w	$a4, $a2, 1160
	ld.w	$a5, $a2, 32
	st.d	$a0, $s7, %pc_lo12(enc_picture)
	stptr.w	$a3, $a0, 6564
	stptr.w	$a4, $a0, 6568
	stptr.w	$a5, $a0, 6560
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	beqz	$a4, .LBB4_2
# %bb.1:
	vld	$vr0, $a2, 1164
	b	.LBB4_3
.LBB4_2:
	vrepli.b	$vr0, 0
.LBB4_3:                                # %copy_params.exit
	lu12i.w	$s3, 1
	ori	$s2, $s3, 2476
	vstx	$vr0, $a0, $s2
	stptr.w	$zero, $a1, 14252
	pcalau12i	$a0, %pc_hi20(imgY_org_top)
	ld.d	$a0, $a0, %pc_lo12(imgY_org_top)
	pcalau12i	$a1, %pc_hi20(imgUV_org_top)
	ld.d	$a1, $a1, %pc_lo12(imgUV_org_top)
	pcalau12i	$a2, %pc_hi20(imgY_org)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(imgY_org)
	pcalau12i	$a0, %pc_hi20(imgUV_org)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $a0, %pc_lo12(imgUV_org)
	pcaddu18i	$ra, %call36(init_field)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 20
	pcalau12i	$a2, %pc_hi20(nextP_tr_fld)
	bne	$a0, $fp, .LBB4_5
# %bb.4:
	ld.w	$a0, $a2, %pc_lo12(nextP_tr_fld)
	addi.d	$a0, $a0, -1
	st.w	$a0, $a2, %pc_lo12(nextP_tr_fld)
.LBB4_5:
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$fp, $zero, 1
	ldptr.w	$a2, $a0, 5116
	stptr.w	$fp, $a1, 14256
	pcalau12i	$s5, %pc_hi20(quadratic_RC)
	pcalau12i	$s6, %pc_hi20(updateQP)
	pcalau12i	$s4, %pc_hi20(generic_RC)
	beqz	$a2, .LBB4_7
# %bb.6:
	ori	$a2, $s3, 1032
	ldx.w	$a2, $a0, $a2
	ldptr.w	$a3, $a0, 4704
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	stptr.w	$a2, $a1, 15404
	addi.d	$a1, $a3, -1
	sltui	$a3, $a1, 1
	ori	$a2, $zero, 1
	vldi	$vr0, -1168
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rc_init_pict)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, %pc_lo12(updateQP)
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	ori	$a1, $zero, 1
	jirl	$ra, $a2, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s4, %pc_lo12(generic_RC)
	st.w	$a0, $a1, 36
	st.w	$fp, $a2, 0
.LBB4_7:
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(top_pic)
	ld.d	$a0, $a0, %pc_lo12(top_pic)
	pcaddu18i	$ra, %call36(code_a_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(enc_picture)
	ld.d	$a0, $s0, %pc_lo12(enc_top_picture)
	st.w	$fp, $a1, 0
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 0
	ldptr.d	$a0, $a4, 14216
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	ld.w	$a5, $a0, 0
	ld.w	$a0, $a4, 24
	ld.w	$a1, $a4, 52
	ld.w	$a2, $a4, 68
	ld.w	$a3, $a4, 64
	ld.w	$a4, $a4, 80
	slli.d	$s0, $a5, 3
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	st.w	$s0, $s3, 808
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3032
	ldx.w	$a3, $a1, $a2
	pcalau12i	$a2, %pc_hi20(enc_bottom_picture)
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a4, $a1, $a4
	st.d	$a0, $a2, %pc_lo12(enc_bottom_picture)
	st.w	$a3, $a0, 4
	st.w	$a3, $a0, 16
	stptr.w	$a4, $a0, 6364
	stptr.w	$a4, $a0, 6360
	stptr.d	$zero, $a0, 6428
	stptr.w	$zero, $a1, 15268
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	st.d	$a4, $a2, %pc_lo12(get_mb_block_pos)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	st.d	$a4, $a2, %pc_lo12(getNeighbour)
	ld.d	$a2, $s8, %pc_lo12(active_sps)
	stptr.w	$a3, $a1, 15328
	ori	$a3, $zero, 2
	st.w	$a3, $a1, 24
	ld.w	$a3, $a2, 1148
	ld.w	$a4, $a2, 1160
	ld.w	$a5, $a2, 32
	st.d	$a0, $s7, %pc_lo12(enc_picture)
	stptr.w	$a3, $a0, 6564
	stptr.w	$a4, $a0, 6568
	stptr.w	$a5, $a0, 6560
	beqz	$a4, .LBB4_9
# %bb.8:
	vld	$vr0, $a2, 1164
	b	.LBB4_10
.LBB4_9:
	vrepli.b	$vr0, 0
.LBB4_10:                               # %copy_params.exit13
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	vstx	$vr0, $a0, $s2
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(imgY_org_bot)
	ld.d	$a0, $a0, %pc_lo12(imgY_org_bot)
	pcalau12i	$a2, %pc_hi20(imgUV_org_bot)
	ld.d	$a2, $a2, %pc_lo12(imgUV_org_bot)
	ld.w	$a3, $a1, 0
	stptr.w	$fp, $a1, 14252
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $s2, %pc_lo12(imgY_org)
	st.d	$a2, $s4, %pc_lo12(imgUV_org)
	addi.d	$a0, $a3, 1
	st.w	$a0, $a1, 0
	pcaddu18i	$ra, %call36(init_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a2, $a0, 20
	bne	$a2, $fp, .LBB4_12
# %bb.11:                               # %.thread
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(nextP_tr_fld)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a3, %pc_lo12(nextP_tr_fld)
	b	.LBB4_15
.LBB4_12:
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB4_15
# %bb.13:
	ldptr.w	$a2, $a1, 4712
	ori	$a3, $zero, 1
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	beq	$a2, $a3, .LBB4_16
# %bb.14:
	ldptr.w	$a2, $a1, 2964
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	st.w	$a2, $a0, 20
	b	.LBB4_16
.LBB4_15:
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
.LBB4_16:
	ldptr.w	$a1, $a1, 5116
	ori	$a2, $zero, 1
	stptr.w	$a2, $a0, 14256
	beqz	$a1, .LBB4_18
# %bb.17:
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	st.w	$s0, $a0, 1552
	vldi	$vr0, -1168
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(rc_init_pict)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, %pc_lo12(updateQP)
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $fp, %pc_lo12(generic_RC)
	st.w	$a0, $a1, 36
	st.w	$zero, $a2, 0
.LBB4_18:
	ld.d	$a1, $s7, %pc_lo12(enc_picture)
	pcalau12i	$a0, %pc_hi20(bottom_pic)
	ld.d	$a0, $a0, %pc_lo12(bottom_pic)
	ori	$a2, $zero, 2
	st.w	$a2, $a1, 0
	pcaddu18i	$ra, %call36(code_a_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.d	$a1, $a0, 14216
	ld.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 0
	ld.wu	$a2, $a0, 0
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a3, 808
	srli.d	$a1, $a2, 31
	add.w	$a1, $a2, $a1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a2, $a0, $a2
	srli.d	$a1, $a1, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	st.w	$a1, $a0, 0
	srli.d	$a1, $a2, 31
	add.w	$a1, $a2, $a1
	ld.w	$a2, $a3, 60
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a3
	srli.d	$a1, $a1, 1
	ld.w	$a4, $a0, 84
	stptr.w	$a1, $a0, 15240
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 68
	st.w	$a4, $a0, 80
	pcaddu18i	$ra, %call36(combine_field)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(imgY_org_frm)
	ld.d	$a0, $a0, %pc_lo12(imgY_org_frm)
	pcalau12i	$a1, %pc_hi20(imgUV_org_frm)
	ld.d	$a1, $a1, %pc_lo12(imgUV_org_frm)
	st.d	$a0, $s2, %pc_lo12(imgY_org)
	st.d	$a1, $s4, %pc_lo12(imgUV_org)
	pcaddu18i	$ra, %call36(find_distortion)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a0, $a0, 0
	fld.s	$fa0, $a0, 0
	fst.s	$fa0, $s3, 812
	fld.s	$fa0, $a0, 4
	fst.s	$fa0, $s3, 816
	fld.s	$fa0, $a0, 8
	fst.s	$fa0, $s3, 820
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
.Lfunc_end4:
	.size	field_picture, .Lfunc_end4-field_picture
                                        # -- End function
	.globl	frame_picture                   # -- Begin function frame_picture
	.p2align	5
	.type	frame_picture,@function
frame_picture:                          # @frame_picture
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s1, 0
	lu12i.w	$s2, 3
	ori	$a1, $s2, 3064
	ldx.w	$a5, $a0, $a1
	ld.w	$a1, $a0, 52
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 64
	ld.w	$a4, $a0, 80
	stptr.w	$zero, $a0, 15608
	st.w	$zero, $a0, 24
	stptr.w	$a5, $a0, 15348
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	beq	$s0, $a2, .LBB5_3
# %bb.1:
	ori	$a1, $zero, 2
	bne	$s0, $a1, .LBB5_4
# %bb.2:
	ld.d	$a1, $s1, 0
	ori	$a2, $s2, 3036
	ldx.w	$a2, $a1, $a2
	st.w	$a2, $a0, 4
	ldptr.d	$a3, $a1, 15316
	stptr.w	$a2, $a1, 15328
	st.d	$a3, $a0, 8
	ori	$a3, $s2, 3044
	ldx.w	$a3, $a1, $a3
	pcalau12i	$a4, %pc_hi20(enc_frame_picture3)
	st.d	$a0, $a4, %pc_lo12(enc_frame_picture3)
	b	.LBB5_5
.LBB5_3:
	ld.d	$a1, $s1, 0
	ori	$a3, $s2, 3036
	ldx.w	$a3, $a1, $a3
	st.w	$a3, $a0, 4
	ldptr.d	$a4, $a1, 15316
	stptr.w	$a3, $a1, 15328
	st.d	$a4, $a0, 8
	ori	$a4, $s2, 3044
	ldx.w	$a4, $a1, $a4
	pcalau12i	$a5, %pc_hi20(enc_frame_picture2)
	st.d	$a0, $a5, %pc_lo12(enc_frame_picture2)
	st.w	$a3, $a0, 16
	stptr.w	$a4, $a0, 6364
	stptr.w	$a4, $a0, 6360
	b	.LBB5_6
.LBB5_4:
	ld.d	$a1, $s1, 0
	ori	$a2, $s2, 3036
	ldx.w	$a2, $a1, $a2
	st.w	$a2, $a0, 4
	ldptr.d	$a3, $a1, 15316
	stptr.w	$a2, $a1, 15328
	st.d	$a3, $a0, 8
	ori	$a3, $s2, 3044
	ldx.w	$a3, $a1, $a3
	pcalau12i	$a4, %pc_hi20(enc_frame_picture)
	st.d	$a0, $a4, %pc_lo12(enc_frame_picture)
.LBB5_5:
	st.w	$a2, $a0, 16
	stptr.w	$a3, $a0, 6364
	stptr.w	$a3, $a0, 6360
	ori	$a2, $zero, 1
.LBB5_6:
	stptr.w	$a2, $a0, 6428
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 4708
	sltu	$a2, $zero, $a2
	stptr.w	$a2, $a1, 15268
	stptr.w	$a2, $a0, 6432
	pcalau12i	$a3, %got_pc_hi20(get_mb_block_pos_normal)
	ld.d	$a3, $a3, %got_pc_lo12(get_mb_block_pos_normal)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %got_pc_hi20(get_mb_block_pos_mbaff)
	ld.d	$a4, $a4, %got_pc_lo12(get_mb_block_pos_mbaff)
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	pcalau12i	$a4, %pc_hi20(get_mb_block_pos)
	st.d	$a3, $a4, %pc_lo12(get_mb_block_pos)
	pcalau12i	$a3, %got_pc_hi20(getNonAffNeighbour)
	ld.d	$a3, $a3, %got_pc_lo12(getNonAffNeighbour)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %got_pc_hi20(getAffNeighbour)
	ld.d	$a4, $a4, %got_pc_lo12(getAffNeighbour)
	maskeqz	$a2, $a4, $a2
	or	$a3, $a2, $a3
	pcalau12i	$a2, %pc_hi20(active_sps)
	ld.d	$a2, $a2, %pc_lo12(active_sps)
	pcalau12i	$a4, %pc_hi20(getNeighbour)
	st.d	$a3, $a4, %pc_lo12(getNeighbour)
	pcalau12i	$a3, %pc_hi20(enc_picture)
	ld.w	$a4, $a2, 1148
	ld.w	$a5, $a2, 1160
	ld.w	$a6, $a2, 32
	st.d	$a0, $a3, %pc_lo12(enc_picture)
	stptr.w	$a4, $a0, 6564
	stptr.w	$a5, $a0, 6568
	stptr.w	$a6, $a0, 6560
	beqz	$a5, .LBB5_8
# %bb.7:                                # %copy_params.exit.sink.split
	vld	$vr0, $a2, 1164
	b	.LBB5_9
.LBB5_8:
	vrepli.b	$vr0, 0
.LBB5_9:                                # %copy_params.exit
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2476
	vstx	$vr0, $a0, $a2
	pcalau12i	$a0, %got_pc_hi20(stats)
	ld.d	$a0, $a0, %got_pc_lo12(stats)
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a0, 2047
	addi.d	$a2, $a2, 193
	stptr.w	$zero, $a0, 2240
	stptr.d	$a2, $a0, 2248
	stptr.w	$zero, $a1, 14256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(code_a_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.d	$a1, $a0, 14216
	ld.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 24
	slli.d	$a1, $a1, 3
	st.w	$a1, $fp, 808
	bnez	$a0, .LBB5_11
# %bb.10:
	pcaddu18i	$ra, %call36(find_distortion)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a0, $a0, 0
	fld.s	$fa0, $a0, 0
	fst.s	$fa0, $fp, 812
	ld.d	$a0, $a0, 4
	st.d	$a0, $fp, 816
.LBB5_11:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	frame_picture, .Lfunc_end5-frame_picture
                                        # -- End function
	.globl	output_SP_coefficients          # -- Begin function output_SP_coefficients
	.p2align	5
	.type	output_SP_coefficients,@function
output_SP_coefficients:                 # @output_SP_coefficients
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(number_sp2_frames)
	ld.w	$a1, $s1, %pc_lo12(number_sp2_frames)
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 113
	beqz	$a1, .LBB6_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB6_4
	b	.LBB6_14
.LBB6_2:
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_14
# %bb.3:
	move	$fp, $a0
	ld.w	$a0, $s1, %pc_lo12(number_sp2_frames)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, %pc_lo12(number_sp2_frames)
.LBB6_4:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 68
	blez	$a0, .LBB6_7
# %bb.5:                                # %.lr.ph.preheader
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$s3, %pc_hi20(lrec)
	.p2align	4, , 16
.LBB6_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, %pc_lo12(lrec)
	ldx.d	$a0, $a0, $s1
	ld.w	$a2, $a1, 52
	ori	$a1, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 68
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB6_6
.LBB6_7:                                # %.preheader15
	ld.w	$a0, $a1, 80
	blez	$a0, .LBB6_13
# %bb.8:                                # %.lr.ph18.preheader
	move	$s2, $zero
	move	$s3, $zero
	pcalau12i	$s1, %pc_hi20(lrec_uv)
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph18
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, %pc_lo12(lrec_uv)
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s2
	ld.w	$a2, $a1, 64
	ori	$a1, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 80
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB6_9
# %bb.10:                               # %._crit_edge
	blez	$a0, .LBB6_13
# %bb.11:                               # %.lr.ph18.1.preheader
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB6_12:                               # %.lr.ph18.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, %pc_lo12(lrec_uv)
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s2
	ld.w	$a2, $a1, 64
	ori	$a1, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 80
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB6_12
.LBB6_13:                               # %.split.us
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB6_14:
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a1, $a0, 113
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	output_SP_coefficients, .Lfunc_end6-output_SP_coefficients
                                        # -- End function
	.p2align	5                               # -- Begin function writeout_picture
	.type	writeout_picture,@function
writeout_picture:                       # @writeout_picture
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
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s1, 0
	ld.w	$a4, $a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	stptr.d	$a0, $a1, 14208
	blez	$a4, .LBB7_12
# %bb.1:                                # %.lr.ph20
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a1, 3
	ori	$a0, $a1, 3064
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $a1, 3156
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s5, $a1, 3160
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a0, $a1, %got_pc_lo12(input)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(WriteNALU)
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$fp, $a1, %got_pc_lo12(stats)
	move	$a5, $zero
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a4, $a0, 0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
.LBB7_3:                                # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a5, $a5, 1
	bge	$a5, $a4, .LBB7_12
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	slli.d	$a1, $a5, 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s7, $a0, $a1
	ld.w	$a2, $s7, 12
	ld.d	$a3, $s1, 0
	ld.w	$a1, $s7, 16
	st.w	$a2, $a3, 12
	blez	$a1, .LBB7_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s2, $zero
	ori	$s3, $zero, 2
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                #   in Loop: Header=BB7_9 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	sltui	$a1, $a1, 1
	ldptr.w	$a2, $a0, 15360
	masknez	$a0, $s3, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	sltu	$a1, $zero, $a2
	slli.d	$a1, $a1, 1
.LBB7_7:                                # %writeUnit.exit
                                        #   in Loop: Header=BB7_9 Depth=2
	ld.d	$a2, $s8, %pc_lo12(WriteNALU)
	st.w	$a0, $s0, 12
	st.w	$a1, $s0, 16
	st.w	$zero, $s0, 20
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 16
	add.d	$a0, $a2, $a0
	st.d	$a0, $a1, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeNALU)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 16
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 1
	addi.d	$s6, $s6, 104
	bge	$s2, $a1, .LBB7_2
.LBB7_9:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 24
	ldx.d	$s4, $a0, $s6
	ld.w	$a0, $s4, 40
	beqz	$a0, .LBB7_8
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ldx.w	$a2, $a0, $s5
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a3
	slli.d	$a1, $a1, 8
	slli.d	$a2, $a2, 9
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 128
	mul.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 500
	pcaddu18i	$ra, %call36(AllocNALU)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 12
	move	$s0, $a0
	addi.w	$a0, $s3, -2
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 3
	ld.wu	$a2, $s4, 0
	st.w	$a0, $s0, 0
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s4, 32
	addi.d	$a3, $a2, 1
	st.w	$a3, $s0, 4
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.d	$a1, $a0, 14208
	ld.w	$a1, $a1, 4
	beqz	$a1, .LBB7_6
# %bb.11:                               #   in Loop: Header=BB7_9 Depth=2
	ori	$a1, $zero, 3
	ori	$a0, $zero, 5
	b	.LBB7_7
.LBB7_12:                               # %._crit_edge21
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
.Lfunc_end7:
	.size	writeout_picture, .Lfunc_end7-writeout_picture
                                        # -- End function
	.globl	copy_params                     # -- Begin function copy_params
	.p2align	5
	.type	copy_params,@function
copy_params:                            # @copy_params
# %bb.0:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a1, $a0, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1148
	pcalau12i	$a0, %pc_hi20(enc_picture)
	ld.d	$a0, $a0, %pc_lo12(enc_picture)
	ld.w	$a3, $a1, 1160
	ld.w	$a4, $a1, 32
	stptr.w	$a2, $a0, 6564
	stptr.w	$a3, $a0, 6568
	stptr.w	$a4, $a0, 6560
	beqz	$a3, .LBB8_2
# %bb.1:
	vld	$vr0, $a1, 1164
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2476
	vstx	$vr0, $a0, $a1
	ret
.LBB8_2:
	vrepli.b	$vr0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2476
	vstx	$vr0, $a0, $a1
	ret
.Lfunc_end8:
	.size	copy_params, .Lfunc_end8-copy_params
                                        # -- End function
	.p2align	5                               # -- Begin function find_distortion
	.type	find_distortion,@function
find_distortion:                        # @find_distortion
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a1, 24
	beqz	$a0, .LBB9_12
# %bb.1:                                # %.preheader75
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a2, $a0, 0
	ld.w	$a3, $a2, 56
	blez	$a3, .LBB9_23
# %bb.2:                                # %.preheader74.lr.ph
	ld.w	$a4, $a2, 60
	blez	$a4, .LBB9_31
# %bb.3:                                # %.preheader74.lr.ph.split.us
	move	$a5, $zero
	move	$a0, $zero
	pcalau12i	$a6, %pc_hi20(imgY_org)
	ld.d	$a6, $a6, %pc_lo12(imgY_org)
	pcalau12i	$a7, %pc_hi20(imgY_com)
	ld.d	$a7, $a7, %pc_lo12(imgY_com)
	ldptr.d	$t0, $a1, 14232
	bstrpick.d	$t1, $a4, 30, 1
	slli.d	$t1, $t1, 1
	addi.d	$t2, $a6, 8
	addi.d	$t3, $a7, 8
	ori	$t4, $zero, 1
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB9_5 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a3, .LBB9_24
.LBB9_5:                                # %.preheader74.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
                                        #     Child Loop BB9_11 Depth 2
	slli.d	$t5, $a5, 1
	bne	$a4, $t4, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	move	$t8, $zero
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$t6, $zero
	move	$t7, $t1
	move	$t8, $t3
	move	$fp, $t2
	.p2align	4, , 16
.LBB9_8:                                # %vector.body
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $fp, -8
	ld.d	$s1, $fp, 0
	ld.d	$s2, $t8, -8
	ld.d	$s3, $t8, 0
	ldx.hu	$s0, $s0, $t5
	ldx.hu	$s1, $s1, $t5
	ldx.hu	$s2, $s2, $t5
	ldx.hu	$s3, $s3, $t5
	sub.d	$s0, $s0, $s2
	sub.d	$s1, $s1, $s3
	slli.d	$s0, $s0, 2
	slli.d	$s1, $s1, 2
	ldx.w	$s0, $t0, $s0
	ldx.w	$s1, $t0, $s1
	add.d	$a0, $a0, $s0
	add.d	$t6, $t6, $s1
	addi.d	$fp, $fp, 16
	addi.d	$t7, $t7, -2
	addi.d	$t8, $t8, 16
	bnez	$t7, .LBB9_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB9_5 Depth=1
	add.d	$a0, $t6, $a0
	move	$t8, $t1
	beq	$t1, $a4, .LBB9_4
.LBB9_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	alsl.d	$t6, $t8, $a6, 3
	alsl.d	$t7, $t8, $a7, 3
	sub.d	$t8, $a4, $t8
	.p2align	4, , 16
.LBB9_11:                               # %scalar.ph
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $t6, 0
	ld.d	$s0, $t7, 0
	ldx.hu	$fp, $fp, $t5
	ldx.hu	$s0, $s0, $t5
	sub.d	$fp, $fp, $s0
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $t0, $fp
	add.d	$a0, $a0, $fp
	addi.d	$t6, $t6, 8
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB9_11
	b	.LBB9_4
.LBB9_12:
	pcalau12i	$a0, %pc_hi20(imgY_org_frm)
	ld.d	$a4, $a0, %pc_lo12(imgY_org_frm)
	pcalau12i	$a0, %pc_hi20(imgUV_org_frm)
	ld.d	$a2, $a0, %pc_lo12(imgUV_org_frm)
	pcalau12i	$a0, %pc_hi20(imgY_org)
	st.d	$a4, $a0, %pc_lo12(imgY_org)
	pcalau12i	$a0, %pc_hi20(imgUV_org)
	st.d	$a2, $a0, %pc_lo12(imgUV_org)
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a3, $a0, 0
	ld.w	$a5, $a3, 56
	blez	$a5, .LBB9_32
# %bb.13:                               # %.preheader70.lr.ph
	ld.w	$a6, $a3, 60
	blez	$a6, .LBB9_40
# %bb.14:                               # %.preheader70.lr.ph.split.us
	pcalau12i	$a0, %pc_hi20(enc_picture)
	ld.d	$t1, $a0, %pc_lo12(enc_picture)
	move	$a7, $zero
	move	$a0, $zero
	ldptr.d	$t0, $a1, 14232
	ldptr.d	$t1, $t1, 6440
	bstrpick.d	$t2, $a6, 30, 1
	slli.d	$t2, $t2, 1
	addi.d	$t3, $a4, 8
	addi.d	$t4, $t1, 8
	ori	$t5, $zero, 1
	b	.LBB9_16
	.p2align	4, , 16
.LBB9_15:                               # %._crit_edge.us105
                                        #   in Loop: Header=BB9_16 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a5, .LBB9_33
.LBB9_16:                               # %.preheader70.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_19 Depth 2
                                        #     Child Loop BB9_22 Depth 2
	slli.d	$t6, $a7, 1
	bne	$a6, $t5, .LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_16 Depth=1
	move	$fp, $zero
	b	.LBB9_21
	.p2align	4, , 16
.LBB9_18:                               # %vector.body185.preheader
                                        #   in Loop: Header=BB9_16 Depth=1
	move	$t7, $zero
	move	$t8, $t2
	move	$fp, $t4
	move	$s0, $t3
	.p2align	4, , 16
.LBB9_19:                               # %vector.body185
                                        #   Parent Loop BB9_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s0, -8
	ld.d	$s2, $s0, 0
	ld.d	$s3, $fp, -8
	ld.d	$s4, $fp, 0
	ldx.hu	$s1, $s1, $t6
	ldx.hu	$s2, $s2, $t6
	ldx.hu	$s3, $s3, $t6
	ldx.hu	$s4, $s4, $t6
	sub.d	$s1, $s1, $s3
	sub.d	$s2, $s2, $s4
	slli.d	$s1, $s1, 2
	slli.d	$s2, $s2, 2
	ldx.w	$s1, $t0, $s1
	ldx.w	$s2, $t0, $s2
	add.d	$a0, $a0, $s1
	add.d	$t7, $t7, $s2
	addi.d	$s0, $s0, 16
	addi.d	$t8, $t8, -2
	addi.d	$fp, $fp, 16
	bnez	$t8, .LBB9_19
# %bb.20:                               # %middle.block190
                                        #   in Loop: Header=BB9_16 Depth=1
	add.d	$a0, $t7, $a0
	move	$fp, $t2
	beq	$t2, $a6, .LBB9_15
.LBB9_21:                               # %scalar.ph180.preheader
                                        #   in Loop: Header=BB9_16 Depth=1
	alsl.d	$t7, $fp, $a4, 3
	alsl.d	$t8, $fp, $t1, 3
	sub.d	$fp, $a6, $fp
	.p2align	4, , 16
.LBB9_22:                               # %scalar.ph180
                                        #   Parent Loop BB9_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $t7, 0
	ld.d	$s1, $t8, 0
	ldx.hu	$s0, $s0, $t6
	ldx.hu	$s1, $s1, $t6
	sub.d	$s0, $s0, $s1
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $t0, $s0
	add.d	$a0, $a0, $s0
	addi.d	$t7, $t7, 8
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB9_22
	b	.LBB9_15
.LBB9_23:
	move	$a0, $zero
.LBB9_24:                               # %._crit_edge81
	ldptr.w	$a3, $a1, 15536
	beqz	$a3, .LBB9_41
.LBB9_25:                               # %.preheader72
	ldptr.w	$a3, $a2, 5268
	blez	$a3, .LBB9_41
# %bb.26:                               # %.preheader71.lr.ph
	ldptr.w	$a4, $a2, 5264
	blez	$a4, .LBB9_41
# %bb.27:                               # %.preheader71.lr.ph.split.us
	pcalau12i	$a2, %pc_hi20(imgUV_com)
	pcalau12i	$a5, %pc_hi20(imgUV_org)
	ld.d	$t0, $a5, %pc_lo12(imgUV_org)
	ld.d	$a2, $a2, %pc_lo12(imgUV_com)
	ldptr.d	$a5, $a1, 14232
	ld.d	$a6, $t0, 0
	ld.d	$a7, $a2, 0
	ld.d	$t0, $t0, 8
	ld.d	$t1, $a2, 8
	move	$t2, $zero
	move	$a2, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB9_28:                               # %.preheader71.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_29 Depth 2
	slli.d	$t3, $t2, 1
	move	$t4, $a4
	move	$t5, $t1
	move	$t6, $t0
	move	$t7, $a7
	move	$t8, $a6
	.p2align	4, , 16
.LBB9_29:                               #   Parent Loop BB9_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $t8, 0
	ld.d	$s0, $t7, 0
	ld.d	$s1, $t6, 0
	ld.d	$s2, $t5, 0
	ldx.hu	$fp, $fp, $t3
	ldx.hu	$s0, $s0, $t3
	ldx.hu	$s1, $s1, $t3
	ldx.hu	$s2, $s2, $t3
	sub.d	$fp, $fp, $s0
	sub.d	$s0, $s1, $s2
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a5, $fp
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a5, $s0
	add.d	$a1, $a1, $fp
	add.d	$a2, $a2, $s0
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 8
	bnez	$t4, .LBB9_29
# %bb.30:                               # %._crit_edge.us94
                                        #   in Loop: Header=BB9_28 Depth=1
	addi.d	$t2, $t2, 1
	bne	$t2, $a3, .LBB9_28
	b	.LBB9_42
.LBB9_31:
	move	$a0, $zero
	ldptr.w	$a3, $a1, 15536
	bnez	$a3, .LBB9_25
	b	.LBB9_41
.LBB9_32:
	move	$a0, $zero
.LBB9_33:                               # %._crit_edge102
	ldptr.w	$a4, $a1, 15536
	beqz	$a4, .LBB9_41
.LBB9_34:                               # %.preheader69
	ldptr.w	$a4, $a3, 5268
	blez	$a4, .LBB9_41
# %bb.35:                               # %.preheader.lr.ph
	ldptr.w	$a3, $a3, 5264
	blez	$a3, .LBB9_41
# %bb.36:                               # %.preheader.lr.ph.split.us
	pcalau12i	$a5, %pc_hi20(enc_picture)
	ld.d	$a5, $a5, %pc_lo12(enc_picture)
	ldptr.d	$t1, $a5, 6472
	ldptr.d	$a5, $a1, 14232
	ld.d	$a6, $a2, 0
	ld.d	$a7, $t1, 0
	ld.d	$t0, $a2, 8
	ld.d	$t1, $t1, 8
	move	$t2, $zero
	move	$a2, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB9_37:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_38 Depth 2
	slli.d	$t3, $t2, 1
	move	$t4, $a3
	move	$t5, $t1
	move	$t6, $t0
	move	$t7, $a7
	move	$t8, $a6
	.p2align	4, , 16
.LBB9_38:                               #   Parent Loop BB9_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $t8, 0
	ld.d	$s0, $t7, 0
	ld.d	$s1, $t6, 0
	ld.d	$s2, $t5, 0
	ldx.hu	$fp, $fp, $t3
	ldx.hu	$s0, $s0, $t3
	ldx.hu	$s1, $s1, $t3
	ldx.hu	$s2, $s2, $t3
	sub.d	$fp, $fp, $s0
	sub.d	$s0, $s1, $s2
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a5, $fp
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a5, $s0
	add.d	$a1, $a1, $fp
	add.d	$a2, $a2, $s0
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 8
	bnez	$t4, .LBB9_38
# %bb.39:                               # %._crit_edge.us118
                                        #   in Loop: Header=BB9_37 Depth=1
	addi.d	$t2, $t2, 1
	bne	$t2, $a4, .LBB9_37
	b	.LBB9_42
.LBB9_40:
	move	$a0, $zero
	ldptr.w	$a4, $a1, 15536
	bnez	$a4, .LBB9_34
.LBB9_41:
	move	$a1, $zero
	move	$a2, $zero
.LBB9_42:                               # %.loopexit
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a0, $a0, 0
	fst.s	$fa0, $a0, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a0, 4
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a0, 8
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	find_distortion, .Lfunc_end9-find_distortion
                                        # -- End function
	.p2align	5                               # -- Begin function init_field
	.type	init_field,@function
init_field:                             # @init_field
# %bb.0:
	pcalau12i	$a0, %pc_hi20(last_P_no_fld)
	ld.d	$t0, $a0, %pc_lo12(last_P_no_fld)
	pcalau12i	$a0, %pc_hi20(last_P_no)
	st.d	$t0, $a0, %pc_lo12(last_P_no)
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	st.d	$zero, $a0, 12
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$a1, $a1, %got_pc_lo12(stats)
	ld.d	$a1, $a1, 0
	st.w	$zero, $a1, 32
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ld.w	$a6, $a1, 20
	ori	$a2, $zero, 2096
	ldx.w	$a7, $a1, $a2
	slli.d	$a4, $a6, 1
	ld.wu	$t1, $a0, 0
	st.w	$a4, $a1, 20
	slli.d	$a5, $a7, 1
	stptr.w	$a5, $a1, 2096
	srli.d	$a3, $t1, 31
	lu12i.w	$a2, 3
	ori	$t2, $a2, 2952
	ldx.wu	$t3, $a0, $t2
	add.w	$a3, $t1, $a3
	srai.d	$t2, $a3, 1
	st.w	$t2, $a0, 0
	srli.d	$a3, $t3, 31
	add.w	$a3, $t3, $a3
	srai.d	$a3, $a3, 1
	stptr.w	$a3, $a0, 15240
	st.w	$zero, $a0, 120
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 176
	ldptr.w	$t4, $a0, 14364
	vst	$vr0, $a0, 160
	ori	$t3, $zero, 2
	alsl.w	$t3, $a6, $t3, 1
	mul.d	$a6, $t2, $t3
	beqz	$t4, .LBB10_5
# %bb.1:
	ldptr.w	$a4, $a0, 14252
	stptr.w	$t3, $a0, 14360
	addi.d	$a3, $t2, -1
	mul.d	$a3, $a3, $t3
	add.d	$a7, $a4, $a3
	add.w	$a6, $a4, $a6
	beqz	$a4, .LBB10_16
# %bb.2:
	addi.d	$a3, $a6, -1
	st.w	$a3, $t0, 0
	st.w	$a7, $t0, 4
	ldptr.w	$a3, $a0, 15240
	blez	$a3, .LBB10_19
# %bb.3:                                # %.lr.ph.preheader
	move	$a4, $zero
	addi.d	$a5, $t0, 8
	ori	$t0, $a2, 2072
	.p2align	4, , 16
.LBB10_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a5, -8
	ldx.w	$t1, $a0, $t0
	sub.d	$a3, $a3, $t1
	st.w	$a3, $a5, 0
	ld.w	$a3, $a5, -4
	ldx.w	$t1, $a0, $t0
	sub.d	$a3, $a3, $t1
	st.w	$a3, $a5, 4
	ldptr.w	$a3, $a0, 15240
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	blt	$a4, $a3, .LBB10_4
	b	.LBB10_19
.LBB10_5:
	ldptr.w	$t0, $a0, 14252
	add.w	$a6, $t0, $a6
	stptr.w	$a6, $a0, 14248
	bnez	$t0, .LBB10_7
# %bb.6:
	ori	$t0, $a2, 2052
	ldx.w	$t0, $a0, $t0
	stptr.w	$t0, $a0, 14344
	stptr.w	$a6, $a0, 14340
.LBB10_7:
	ldptr.w	$t0, $a1, 4144
	beqz	$t0, .LBB10_10
# %bb.8:
	ld.w	$t3, $a1, 8
	addi.d	$t2, $t2, 1
	bne	$t2, $t3, .LBB10_10
# %bb.9:
	stptr.w	$t0, $a0, 14248
	move	$a6, $t0
.LBB10_10:
	addi.w	$t0, $t1, 1
	ori	$t1, $zero, 3
	bltu	$t0, $t1, .LBB10_13
# %bb.11:
	beqz	$a7, .LBB10_13
# %bb.12:
	pcalau12i	$a7, %pc_hi20(nextP_tr_fld)
	st.w	$a6, $a7, %pc_lo12(nextP_tr_fld)
.LBB10_13:
	ldptr.w	$a7, $a1, 5116
	beqz	$a7, .LBB10_37
.LBB10_14:
	ld.w	$a7, $a0, 112
	ld.w	$a6, $a1, 68
	st.w	$a7, $a0, 116
	blez	$a6, .LBB10_66
# %bb.15:
	ld.w	$a7, $a0, 0
	ld.w	$t0, $a0, 52
	div.w	$a6, $a7, $a6
	bstrpick.d	$a7, $t0, 62, 59
	add.w	$a7, $t0, $a7
	srai.d	$a7, $a7, 4
	mod.w	$a6, $a6, $a7
	st.w	$a6, $a0, 112
	b	.LBB10_66
.LBB10_16:
	ori	$a3, $a3, 1
	st.w	$a3, $t0, 0
	st.w	$a7, $t0, 4
	ldptr.w	$a3, $a0, 15240
	blez	$a3, .LBB10_19
# %bb.17:                               # %.lr.ph87.preheader
	move	$a4, $zero
	addi.d	$a5, $t0, 8
	ori	$t0, $a2, 2072
	.p2align	4, , 16
.LBB10_18:                              # %.lr.ph87
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a5, -8
	ldx.w	$t1, $a0, $t0
	sub.d	$a3, $a3, $t1
	st.w	$a3, $a5, 0
	ld.w	$a3, $a5, -4
	ldx.w	$t1, $a0, $t0
	sub.d	$a3, $a3, $t1
	st.w	$a3, $a5, 4
	ldptr.w	$a3, $a0, 15240
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	blt	$a4, $a3, .LBB10_18
.LBB10_19:                              # %.loopexit
	ldptr.w	$a4, $a1, 4144
	beqz	$a4, .LBB10_22
# %bb.20:
	ld.w	$a5, $a0, 0
	ld.w	$t0, $a1, 8
	addi.w	$a5, $a5, 1
	bne	$a5, $t0, .LBB10_22
# %bb.21:
	sub.d	$a5, $a4, $a7
	stptr.w	$a5, $a0, 14360
	move	$a6, $a4
.LBB10_22:
	ld.w	$a4, $a1, 20
	ldptr.w	$a5, $a1, 2096
	addi.d	$t0, $a4, 1
	movgr2fr.w	$fa0, $t0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	ldptr.w	$t0, $a1, 2968
	fadd.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	ori	$t1, $a2, 2064
	fstx.d	$fa0, $a0, $t1
	beqz	$t0, .LBB10_26
# %bb.23:
	ori	$t1, $zero, 3
	bne	$t0, $t1, .LBB10_25
# %bb.24:                               # %.thread66
	lu52i.d	$t0, $zero, 1023
	stptr.d	$t0, $a0, 14352
	vldi	$vr0, -912
.LBB10_25:
	ldptr.w	$t0, $a0, 14364
	pcalau12i	$t1, %pc_hi20(gop_structure)
	ld.d	$t1, $t1, %pc_lo12(gop_structure)
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	add.d	$t1, $t1, $t2
	ld.w	$t2, $t1, -20
	move	$t1, $zero
	addi.w	$t2, $t2, 1
	b	.LBB10_27
.LBB10_26:
	ori	$t0, $a2, 2076
	ldx.w	$t2, $a0, $t0
	ori	$t1, $zero, 1
	move	$t0, $t2
.LBB10_27:
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $t2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t2, $fa0
	add.w	$a7, $a7, $t2
	stptr.w	$a7, $a0, 14248
	blt	$a7, $a6, .LBB10_29
# %bb.28:
	addi.w	$a7, $a6, -1
	stptr.w	$a7, $a0, 14248
.LBB10_29:
	ldptr.w	$a6, $a1, 5116
	bnez	$a6, .LBB10_66
# %bb.30:
	beqz	$t1, .LBB10_44
# %bb.31:
	ldptr.w	$a6, $a1, 4156
	blez	$a6, .LBB10_62
# %bb.32:
	slli.w	$t0, $a6, 1
	blt	$a7, $a6, .LBB10_34
# %bb.33:
	ldptr.w	$t1, $a1, 2152
	beqz	$t1, .LBB10_36
.LBB10_34:
	mod.w	$t1, $a7, $t0
	blt	$t1, $a6, .LBB10_55
# %bb.35:
	ldptr.w	$t1, $a1, 2152
	ori	$t2, $zero, 1
	bne	$t1, $t2, .LBB10_55
.LBB10_36:                              # %.thread72
	lu12i.w	$t1, 1
	ori	$t1, $t1, 56
	b	.LBB10_56
.LBB10_37:
	ld.w	$t0, $a0, 20
	ldptr.w	$a7, $a1, 4156
	ori	$t1, $zero, 2
	bne	$t0, $t1, .LBB10_45
# %bb.38:
	blez	$a7, .LBB10_52
# %bb.39:
	blt	$a6, $a7, .LBB10_41
# %bb.40:
	ldptr.w	$t0, $a1, 2152
	beqz	$t0, .LBB10_43
.LBB10_41:
	slli.w	$t0, $a7, 1
	mod.w	$a6, $a6, $t0
	blt	$a6, $a7, .LBB10_52
# %bb.42:
	ldptr.w	$a6, $a1, 2152
	ori	$a7, $zero, 1
	bne	$a6, $a7, .LBB10_52
.LBB10_43:
	lu12i.w	$a6, 1
	ori	$a6, $a6, 64
	ldx.w	$a6, $a1, $a6
	st.w	$a6, $a0, 36
	b	.LBB10_14
.LBB10_44:
	pcalau12i	$a6, %pc_hi20(gop_structure)
	ld.d	$a6, $a6, %pc_lo12(gop_structure)
	slli.d	$a7, $t0, 4
	alsl.d	$a7, $t0, $a7, 3
	add.d	$a6, $a6, $a7
	ld.w	$a6, $a6, -12
	b	.LBB10_65
.LBB10_45:
	blez	$a7, .LBB10_53
# %bb.46:
	blt	$a6, $a7, .LBB10_48
# %bb.47:
	ldptr.w	$t1, $a1, 2152
	beqz	$t1, .LBB10_50
.LBB10_48:
	slli.w	$t1, $a7, 1
	mod.w	$t1, $a6, $t1
	blt	$t1, $a7, .LBB10_53
# %bb.49:
	ldptr.w	$t1, $a1, 2152
	ori	$t2, $zero, 1
	bne	$t1, $t2, .LBB10_53
.LBB10_50:
	lu12i.w	$t2, 1
	ori	$t1, $t2, 52
	ldptr.w	$t3, $a0, 15360
	ldx.w	$t1, $a1, $t1
	beqz	$t3, .LBB10_69
# %bb.51:
	move	$t2, $zero
	b	.LBB10_70
.LBB10_52:
	ld.w	$a6, $a1, 12
	st.w	$a6, $a0, 36
	b	.LBB10_14
.LBB10_53:
	ldptr.w	$t2, $a0, 15360
	ld.w	$t1, $a1, 16
	beqz	$t2, .LBB10_67
# %bb.54:
	move	$t2, $zero
	add.d	$t1, $t2, $t1
	ori	$t2, $zero, 3
	st.w	$t1, $a0, 36
	bne	$t0, $t2, .LBB10_14
	b	.LBB10_68
.LBB10_55:
	ori	$t1, $zero, 2104
.LBB10_56:                              # %.thread72
	ldx.w	$t1, $a1, $t1
	ldptr.w	$t2, $a0, 15360
	st.w	$t1, $a0, 36
	beqz	$t2, .LBB10_66
# %bb.57:                               # %.thread74
	blt	$a7, $a6, .LBB10_59
# %bb.58:
	ldptr.w	$t1, $a1, 2152
	beqz	$t1, .LBB10_61
.LBB10_59:
	mod.w	$a7, $a7, $t0
	blt	$a7, $a6, .LBB10_63
# %bb.60:
	ldptr.w	$a6, $a1, 2152
	ori	$a7, $zero, 1
	bne	$a6, $a7, .LBB10_63
.LBB10_61:
	ori	$a6, $a2, 3164
	ldx.w	$a6, $a0, $a6
	lu12i.w	$a7, 1
	ori	$t0, $a7, 56
	ldx.w	$t0, $a1, $t0
	ori	$a7, $a7, 68
	ldx.w	$a7, $a1, $a7
	sub.w	$a6, $zero, $a6
	add.w	$a7, $a7, $t0
	b	.LBB10_64
.LBB10_62:                              # %.thread78
	ori	$a6, $zero, 2104
	ldx.w	$a6, $a1, $a6
	ldptr.w	$a7, $a0, 15360
	st.w	$a6, $a0, 36
	beqz	$a7, .LBB10_66
.LBB10_63:                              # %.thread80
	ori	$a6, $a2, 3164
	ldx.w	$a6, $a0, $a6
	ori	$a7, $zero, 2104
	ldx.w	$a7, $a1, $a7
	ori	$t0, $zero, 2108
	ldx.w	$t0, $a1, $t0
	sub.w	$a6, $zero, $a6
	add.w	$a7, $t0, $a7
.LBB10_64:
	slt	$t0, $a6, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $a7, $a6
	slti	$a7, $a6, 51
	maskeqz	$a6, $a6, $a7
	ori	$t0, $zero, 51
	masknez	$a7, $t0, $a7
	or	$a6, $a6, $a7
.LBB10_65:
	st.w	$a6, $a0, 36
.LBB10_66:
	ld.w	$a6, $a0, 36
	ori	$a7, $a2, 3164
	ldx.w	$a7, $a0, $a7
	add.d	$a6, $a7, $a6
	st.w	$a6, $a0, 44
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a4, $a4, $a6
	srli.d	$a4, $a4, 1
	st.w	$a4, $a1, 20
	bstrpick.d	$a4, $a5, 31, 31
	add.w	$a4, $a5, $a4
	srli.d	$a4, $a4, 1
	ld.w	$a5, $a0, 0
	ori	$a2, $a2, 1964
	ldx.w	$a2, $a0, $a2
	stptr.w	$a4, $a1, 2096
	slli.d	$a1, $a3, 1
	stptr.w	$a1, $a0, 15240
	alsl.d	$a1, $a5, $a2, 1
	st.w	$a1, $a0, 0
	ret
.LBB10_67:
	lu12i.w	$t2, 1
	ori	$t2, $t2, 1660
	ldx.w	$t2, $a1, $t2
	add.d	$t1, $t2, $t1
	ori	$t2, $zero, 3
	st.w	$t1, $a0, 36
	bne	$t0, $t2, .LBB10_14
.LBB10_68:
	bgtz	$a7, .LBB10_71
	b	.LBB10_72
.LBB10_69:
	ori	$t2, $t2, 1660
	ldx.w	$t2, $a1, $t2
.LBB10_70:                              # %.thread64
	add.d	$t1, $t2, $t1
	ori	$t2, $zero, 3
	st.w	$t1, $a0, 36
	bne	$t0, $t2, .LBB10_14
.LBB10_71:                              # %.thread65
	slli.w	$t0, $a7, 1
	mod.w	$a6, $a6, $t0
	bge	$a6, $a7, .LBB10_73
.LBB10_72:
	ldptr.d	$a6, $a1, 2140
	st.d	$a6, $a0, 36
	b	.LBB10_14
.LBB10_73:
	lu12i.w	$a6, 1
	ori	$a6, $a6, 52
	ldx.w	$a6, $a1, $a6
	ld.w	$a7, $a1, 16
	ori	$t0, $zero, 2140
	ldx.w	$t0, $a1, $t0
	ori	$t1, $zero, 2144
	ldx.w	$t1, $a1, $t1
	sub.d	$a6, $a6, $a7
	add.d	$a7, $a6, $t0
	st.w	$a7, $a0, 36
	add.d	$a6, $a6, $t1
	st.w	$a6, $a0, 40
	b	.LBB10_14
.Lfunc_end10:
	.size	init_field, .Lfunc_end10-init_field
                                        # -- End function
	.globl	UnifiedOneForthPix              # -- Begin function UnifiedOneForthPix
	.p2align	5
	.type	UnifiedOneForthPix,@function
UnifiedOneForthPix:                     # @UnifiedOneForthPix
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$a0, $a0, 6448
	beqz	$a0, .LBB11_2
.LBB11_1:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_2:
	lu12i.w	$s3, 1
	ori	$a0, $s3, 2300
	ldx.w	$a0, $fp, $a0
	ori	$a1, $s3, 2296
	ldx.w	$a1, $fp, $a1
	addi.w	$s0, $a0, 40
	addi.w	$s1, $a1, 40
	ori	$a0, $s3, 2352
	add.d	$s2, $fp, $a0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	move	$a0, $s2
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(get_mem4Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB11_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB11_4:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s2, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 5772
	beqz	$a0, .LBB11_12
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 15536
	beqz	$a0, .LBB11_12
# %bb.6:
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB11_9
# %bb.7:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_10
# %bb.8:
	ori	$a0, $s3, 2368
	add.d	$a0, $fp, $a0
	bstrpick.d	$a1, $s0, 31, 31
	add.w	$a1, $s0, $a1
	srai.d	$a4, $a1, 1
	bstrpick.d	$a1, $s1, 31, 31
	add.w	$a1, $s1, $a1
	srai.d	$a5, $a1, 1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	ori	$a3, $zero, 8
	b	.LBB11_11
.LBB11_9:
	ori	$a0, $s3, 2368
	add.d	$a0, $fp, $a0
	bstrpick.d	$a1, $s1, 31, 31
	add.w	$a1, $s1, $a1
	srai.d	$a5, $a1, 1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 4
	ori	$a3, $zero, 8
	move	$a4, $s0
	b	.LBB11_11
.LBB11_10:
	ori	$a0, $s3, 2368
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 4
	ori	$a3, $zero, 4
	move	$a4, $s0
	move	$a5, $s1
.LBB11_11:
	pcaddu18i	$ra, %call36(get_mem5Dpel)
	jirl	$ra, $ra, 0
.LBB11_12:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getSubImagesLuma)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 15536
	beqz	$a0, .LBB11_1
# %bb.13:
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 5772
	beqz	$a0, .LBB11_1
# %bb.14:
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(getSubImagesChroma)
	jr	$t8
.Lfunc_end11:
	.size	UnifiedOneForthPix, .Lfunc_end11-UnifiedOneForthPix
                                        # -- End function
	.globl	dummy_slice_too_big             # -- Begin function dummy_slice_too_big
	.p2align	5
	.type	dummy_slice_too_big,@function
dummy_slice_too_big:                    # @dummy_slice_too_big
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	dummy_slice_too_big, .Lfunc_end12-dummy_slice_too_big
                                        # -- End function
	.globl	copy_rdopt_data                 # -- Begin function copy_rdopt_data
	.p2align	5
	.type	copy_rdopt_data,@function
copy_rdopt_data:                        # @copy_rdopt_data
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s6, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s6, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	pcalau12i	$s3, %pc_hi20(rdopt)
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	add.d	$s7, $a2, $a1
	ld.w	$a1, $a3, 1560
	ld.w	$s2, $a0, 20
	ld.w	$a2, $a3, 1640
	ld.d	$a4, $a3, 1648
	st.w	$a1, $s7, 72
	ld.w	$a1, $a3, 1712
	st.w	$a2, $s7, 364
	st.d	$a4, $s7, 368
	ld.h	$a2, $a3, 1564
	stptr.w	$a1, $a0, 15244
	ld.w	$a0, $a3, 1732
	ld.w	$a1, $a3, 1736
	ld.w	$s5, $s7, 432
	st.h	$a2, $s7, 480
	st.w	$a0, $s7, 496
	st.w	$a1, $s7, 500
	ld.w	$a0, $a3, 1744
	ld.w	$a1, $a3, 1740
	ld.w	$a2, $a3, 1728
	ld.w	$s4, $a3, 1656
	st.w	$a0, $s7, 504
	st.w	$a1, $s7, 4
	st.w	$a2, $s7, 8
	move	$a0, $s7
	pcaddu18i	$ra, %call36(set_chroma_qp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ld.d	$a0, $s6, 0
	ld.w	$a2, $a1, 1716
	ldptr.w	$a3, $a0, 15528
	addi.w	$a4, $zero, -3
	st.w	$a2, $s7, 416
	blt	$a3, $a4, .LBB13_4
# %bb.1:                                # %.preheader181.preheader
	move	$fp, $zero
	addi.w	$s0, $zero, -1
	lu12i.w	$a1, 3
	ori	$s1, $a1, 3240
	.p2align	4, , 16
.LBB13_2:                               # %.preheader181
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $a1, 1544
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldx.w	$a1, $a0, $s1
	addi.w	$a1, $a1, 3
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $a1, .LBB13_2
# %bb.3:                                # %.preheader179.loopexit
	ld.d	$a1, $s3, %pc_lo12(rdopt)
.LBB13_4:                               # %.preheader179
	ldptr.d	$a0, $a0, 14168
	ld.d	$a1, $a1, 1552
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14168
	ld.d	$a1, $a1, 1552
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14168
	ld.d	$a1, $a1, 1552
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14168
	ld.d	$a1, $a1, 1552
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14168
	ld.d	$a1, $a1, 1552
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	ldptr.d	$a0, $a0, 14168
	ld.d	$a1, $a1, 1552
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(enc_picture)
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 0
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 168
	ld.w	$a3, $a3, 1680
	stx.w	$a3, $a0, $a1
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a1, 6488
	ld.d	$a3, $a0, 0
	ld.d	$a4, $s6, 0
	ldx.d	$a5, $a3, $a2
	ldptr.d	$a6, $a1, 6496
	ld.w	$a7, $a4, 168
	slli.d	$a0, $s5, 8
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a6, $a6, 0
	ldx.b	$t0, $a5, $a7
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 24
	ldx.d	$a2, $a6, $a2
	slli.d	$a6, $t0, 3
	ldx.d	$a6, $a1, $a6
	slli.d	$t0, $a7, 3
	stx.d	$a6, $a2, $t0
	addi.d	$a6, $a7, 1
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 2
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 3
	ldx.b	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a5
	ld.w	$a4, $a4, 172
	slli.d	$a5, $a6, 3
	stx.d	$a1, $a2, $a5
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	slli.d	$a2, $a4, 3
	addi.d	$a2, $a2, 8
	ldx.d	$a3, $a3, $a2
	ld.w	$a1, $a1, 1684
	stx.w	$a1, $a3, $a7
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a3, $a1, 6488
	ld.d	$a3, $a3, 0
	ld.d	$a4, $s6, 0
	ldx.d	$a5, $a3, $a2
	ldptr.d	$a6, $a1, 6496
	ld.w	$a7, $a4, 168
	ld.d	$a6, $a6, 0
	ldx.b	$t0, $a5, $a7
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 24
	ldx.d	$a2, $a6, $a2
	slli.d	$a6, $t0, 3
	ldx.d	$a6, $a1, $a6
	slli.d	$t0, $a7, 3
	stx.d	$a6, $a2, $t0
	addi.d	$a6, $a7, 1
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 2
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 3
	ldx.b	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a5
	ld.w	$a4, $a4, 172
	slli.d	$a5, $a6, 3
	stx.d	$a1, $a2, $a5
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	slli.d	$a2, $a4, 3
	addi.d	$a2, $a2, 16
	ldx.d	$a3, $a3, $a2
	ld.w	$a1, $a1, 1688
	stx.w	$a1, $a3, $a7
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a3, $a1, 6488
	ld.d	$a3, $a3, 0
	ld.d	$a4, $s6, 0
	ldx.d	$a5, $a3, $a2
	ldptr.d	$a6, $a1, 6496
	ld.w	$a7, $a4, 168
	ld.d	$a6, $a6, 0
	ldx.b	$t0, $a5, $a7
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 24
	ldx.d	$a2, $a6, $a2
	slli.d	$a6, $t0, 3
	ldx.d	$a6, $a1, $a6
	slli.d	$t0, $a7, 3
	stx.d	$a6, $a2, $t0
	addi.d	$a6, $a7, 1
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 2
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 3
	ldx.b	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a5
	ld.w	$a4, $a4, 172
	slli.d	$a5, $a6, 3
	stx.d	$a1, $a2, $a5
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	slli.d	$a2, $a4, 3
	addi.d	$a5, $a2, 24
	ldx.d	$a2, $a3, $a5
	ld.w	$a1, $a1, 1692
	stx.w	$a1, $a2, $a7
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a3, $a1, 6488
	ld.d	$a4, $a3, 0
	ld.d	$a2, $s6, 0
	ldx.d	$a6, $a4, $a5
	ldptr.d	$a7, $a1, 6496
	ld.w	$a4, $a2, 168
	ld.d	$a7, $a7, 0
	ldx.b	$t0, $a6, $a4
	add.d	$t1, $a1, $a0
	addi.d	$t1, $t1, 24
	ldx.d	$a5, $a7, $a5
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $t1, $a7
	slli.d	$t0, $a4, 3
	stx.d	$a7, $a5, $t0
	addi.d	$a7, $a4, 1
	ldx.b	$t0, $a6, $a7
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t1, $t0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a5, $a7
	addi.d	$a7, $a4, 2
	ldx.b	$t0, $a6, $a7
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t1, $t0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a5, $a7
	addi.d	$a7, $a4, 3
	ldx.b	$a6, $a6, $a7
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t1, $a6
	slli.d	$a7, $a7, 3
	ori	$t0, $zero, 1
	stx.d	$a6, $a5, $a7
	bne	$s2, $t0, .LBB13_6
# %bb.5:                                # %.preheader175
	ld.w	$a1, $a2, 172
	ld.d	$a2, $a3, 8
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $a2, $a1
	ld.w	$a3, $a3, 1696
	stx.w	$a3, $a2, $a4
	ld.d	$a2, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a3, $a2, 6488
	ld.d	$a3, $a3, 8
	ld.d	$a4, $s6, 0
	ldx.d	$a5, $a3, $a1
	ldptr.d	$a6, $a2, 6496
	ld.w	$a7, $a4, 168
	ld.d	$a6, $a6, 8
	ldx.b	$t0, $a5, $a7
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 288
	ldx.d	$a1, $a6, $a1
	slli.d	$a6, $t0, 3
	ldx.d	$a6, $a2, $a6
	slli.d	$t0, $a7, 3
	stx.d	$a6, $a1, $t0
	addi.d	$a6, $a7, 1
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a2, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a1, $a6
	addi.d	$a6, $a7, 2
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a2, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a1, $a6
	addi.d	$a6, $a7, 3
	ldx.b	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a2, $a2, $a5
	ld.w	$a4, $a4, 172
	slli.d	$a5, $a6, 3
	stx.d	$a2, $a1, $a5
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	slli.d	$a2, $a4, 3
	addi.d	$a2, $a2, 8
	ldx.d	$a3, $a3, $a2
	ld.w	$a1, $a1, 1700
	stx.w	$a1, $a3, $a7
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a3, $a1, 6488
	ld.d	$a3, $a3, 8
	ld.d	$a4, $s6, 0
	ldx.d	$a5, $a3, $a2
	ldptr.d	$a6, $a1, 6496
	ld.w	$a7, $a4, 168
	ld.d	$a6, $a6, 8
	ldx.b	$t0, $a5, $a7
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 288
	ldx.d	$a2, $a6, $a2
	slli.d	$a6, $t0, 3
	ldx.d	$a6, $a1, $a6
	slli.d	$t0, $a7, 3
	stx.d	$a6, $a2, $t0
	addi.d	$a6, $a7, 1
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 2
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 3
	ldx.b	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a5
	ld.w	$a4, $a4, 172
	slli.d	$a5, $a6, 3
	stx.d	$a1, $a2, $a5
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	slli.d	$a2, $a4, 3
	addi.d	$a2, $a2, 16
	ldx.d	$a3, $a3, $a2
	ld.w	$a1, $a1, 1704
	stx.w	$a1, $a3, $a7
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a3, $a1, 6488
	ld.d	$a3, $a3, 8
	ld.d	$a4, $s6, 0
	ldx.d	$a5, $a3, $a2
	ldptr.d	$a6, $a1, 6496
	ld.w	$a7, $a4, 168
	ld.d	$a6, $a6, 8
	ldx.b	$t0, $a5, $a7
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 288
	ldx.d	$a2, $a6, $a2
	slli.d	$a6, $t0, 3
	ldx.d	$a6, $a1, $a6
	slli.d	$t0, $a7, 3
	stx.d	$a6, $a2, $t0
	addi.d	$a6, $a7, 1
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 2
	ldx.b	$t0, $a5, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a1, $t0
	slli.d	$a6, $a6, 3
	stx.d	$t0, $a2, $a6
	addi.d	$a6, $a7, 3
	ldx.b	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a5
	ld.w	$a4, $a4, 172
	slli.d	$a5, $a6, 3
	stx.d	$a1, $a2, $a5
	ld.d	$a1, $s3, %pc_lo12(rdopt)
	slli.d	$a2, $a4, 3
	addi.d	$a4, $a2, 24
	ldx.d	$a2, $a3, $a4
	ld.w	$a1, $a1, 1708
	stx.w	$a1, $a2, $a7
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a2, $a1, 6488
	ld.d	$a3, $a2, 8
	ld.d	$a2, $s6, 0
	ldx.d	$a3, $a3, $a4
	ldptr.d	$a5, $a1, 6496
	ld.w	$a6, $a2, 168
	ld.d	$a5, $a5, 8
	ldx.b	$a7, $a3, $a6
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 288
	ldx.d	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a7, $a6, 3
	stx.d	$a5, $a4, $a7
	addi.d	$a5, $a6, 1
	ldx.b	$a7, $a3, $a5
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$a5, $a5, 3
	stx.d	$a7, $a4, $a5
	addi.d	$a5, $a6, 2
	ldx.b	$a7, $a3, $a5
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$a5, $a5, 3
	stx.d	$a7, $a4, $a5
	addi.d	$a5, $a6, 3
	ldx.b	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a3, $a5, 3
	stx.d	$a0, $a4, $a3
.LBB13_6:                               # %.loopexit176
	ld.w	$a0, $a2, 180
	ldptr.d	$a1, $a1, 6440
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a2, 176
	vld	$vr0, $a3, 8
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 24
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 40
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 56
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 72
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 88
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 104
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 120
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 32
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 136
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 152
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 40
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 168
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 184
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 48
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 200
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 216
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 56
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 232
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 248
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 64
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 264
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 280
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 72
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 296
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 312
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 80
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 328
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 344
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 88
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 360
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 376
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 96
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 392
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 408
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 104
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 424
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 440
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 112
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 456
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 472
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 180
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 120
	ld.w	$a1, $a1, 176
	vld	$vr0, $a3, 488
	slli.d	$a2, $a1, 1
	vstx	$vr0, $a0, $a2
	vld	$vr0, $a3, 504
	alsl.d	$a0, $a1, $a0, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s6, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB13_10
# %bb.7:                                # %.preheader173
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB13_10
# %bb.8:                                # %.lr.ph.preheader
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB13_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, %pc_lo12(enc_picture)
	ldptr.d	$a1, $a1, 6472
	ld.w	$a2, $a0, 188
	ld.d	$a1, $a1, 0
	add.d	$a2, $s0, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 184
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	ldptr.w	$a4, $a0, 15544
	alsl.d	$a0, $a2, $a1, 1
	add.d	$a1, $a3, $fp
	addi.d	$a1, $a1, 520
	slli.d	$a2, $a4, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(enc_picture)
	ld.d	$a1, $s6, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a2, $a1, 188
	ld.d	$a0, $a0, 8
	add.d	$a2, $s0, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a2, $a1, 184
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	ldptr.w	$a4, $a1, 15544
	alsl.d	$a0, $a2, $a0, 1
	add.d	$a1, $a3, $fp
	addi.d	$a1, $a1, 1032
	slli.d	$a2, $a4, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.w	$a1, $a0, 15548
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 32
	blt	$s0, $a1, .LBB13_9
.LBB13_10:                              # %.loopexit174
	ld.d	$a0, $s3, %pc_lo12(rdopt)
	vld	$vr0, $a0, 1568
	vst	$vr0, $s7, 376
	ld.d	$a0, $s3, %pc_lo12(rdopt)
	vld	$vr0, $a0, 1584
	vst	$vr0, $s7, 392
	ld.d	$a0, $s3, %pc_lo12(rdopt)
	ld.w	$a1, $a0, 1720
	ori	$a2, $zero, 8
	st.w	$a1, $s7, 472
	bne	$s4, $a2, .LBB13_13
# %bb.11:                               # %.lr.ph198.preheader
	vld	$vr0, $a0, 1608
	vst	$vr0, $s7, 332
	ld.d	$a0, $s6, 0
	ld.w	$a2, $a0, 172
	addi.d	$a1, $a2, -1
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB13_12:                              # %.lr.ph198
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	ld.d	$a3, $a3, 1600
	ld.d	$a4, $a0, 128
	ld.w	$a0, $a0, 168
	ldx.d	$a3, $a3, $a2
	ldx.d	$a4, $a4, $a2
	ldx.w	$a3, $a3, $a0
	stx.w	$a3, $a4, $a0
	ld.d	$a0, $s6, 0
	ld.w	$a3, $a0, 172
	addi.w	$a3, $a3, 3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	blt	$a1, $a3, .LBB13_12
	b	.LBB13_18
.LBB13_13:
	addi.w	$a1, $zero, -5
	lu32i.d	$a1, 0
	and	$a1, $s4, $a1
	addi.w	$a1, $a1, 0
	ori	$a3, $zero, 9
	addi.d	$a2, $s7, 332
	bne	$a1, $a3, .LBB13_16
# %bb.14:                               # %.lr.ph196.preheader
	vld	$vr0, $a0, 1608
	vst	$vr0, $a2, 0
	ld.d	$a0, $s3, %pc_lo12(rdopt)
	vld	$vr0, $a0, 1624
	vst	$vr0, $s7, 348
	ld.d	$a0, $s6, 0
	ld.w	$a2, $a0, 172
	addi.d	$a1, $a2, -1
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB13_15:                              # %.lr.ph196
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s3, %pc_lo12(rdopt)
	ld.d	$a3, $a3, 1600
	ld.d	$a4, $a0, 128
	ld.w	$a0, $a0, 168
	ldx.d	$a3, $a3, $a2
	ldx.d	$a4, $a4, $a2
	ldx.w	$a3, $a3, $a0
	stx.w	$a3, $a4, $a0
	ld.d	$a0, $s6, 0
	ld.w	$a3, $a0, 172
	addi.w	$a3, $a3, 3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	blt	$a1, $a3, .LBB13_15
	b	.LBB13_18
.LBB13_16:                              # %.lr.ph194.preheader
	lu12i.w	$a0, 8224
	ori	$a1, $a0, 514
	move	$a0, $a1
	bstrins.d	$a0, $a1, 57, 32
	st.d	$a0, $a2, 8
	st.d	$a0, $a2, 0
	ld.d	$a0, $s6, 0
	ld.w	$a3, $a0, 172
	addi.d	$a2, $a3, -1
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB13_17:                              # %.lr.ph194
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 128
	ldx.d	$a4, $a4, $a3
	ld.w	$a0, $a0, 168
	stx.w	$a1, $a4, $a0
	ld.d	$a0, $s6, 0
	ld.w	$a4, $a0, 172
	addi.w	$a4, $a4, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $a4, .LBB13_17
.LBB13_18:                              # %.loopexit170
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB13_30
# %bb.19:
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 32
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	blez	$a1, .LBB13_26
# %bb.20:                               # %.split81.us.i
	ldptr.d	$a2, $a0, 14384
	ldptr.d	$a3, $a0, 14376
	move	$a4, $zero
	.p2align	4, , 16
.LBB13_21:                              # %.preheader76.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_22 Depth 2
                                        #       Child Loop BB13_23 Depth 3
	ld.d	$a7, $s3, %pc_lo12(rdopt)
	ld.d	$a6, $a7, 1672
	ld.d	$a7, $a7, 1664
	move	$t0, $zero
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	slli.d	$t1, $a4, 3
	.p2align	4, , 16
.LBB13_22:                              # %.preheader75.us.us.i
                                        #   Parent Loop BB13_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_23 Depth 3
	slli.d	$t2, $t0, 3
	ldx.d	$t3, $a6, $t2
	ldx.d	$t4, $a2, $t2
	ldx.d	$t5, $t3, $t1
	ldx.d	$t6, $t4, $t1
	ldx.d	$t4, $a7, $t2
	ldx.d	$t7, $a3, $t2
	ld.d	$t2, $t5, 0
	ld.d	$t3, $t6, 0
	ldx.d	$t8, $t4, $t1
	ldx.d	$fp, $t7, $t1
	ld.d	$t4, $t5, 8
	ld.d	$t5, $t6, 8
	ld.d	$t6, $t8, 0
	ld.d	$t7, $fp, 0
	ld.d	$t8, $t8, 8
	ld.d	$s4, $fp, 8
	move	$s5, $a1
	.p2align	4, , 16
.LBB13_23:                              # %.preheader.us.us.i
                                        #   Parent Loop BB13_21 Depth=1
                                        #     Parent Loop BB13_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $t2, 0
	ld.d	$fp, $s6, 0
	ld.d	$s8, $t3, 0
	ld.h	$s0, $fp, 0
	ld.d	$s1, $s8, 0
	ld.d	$s7, $t4, 0
	st.h	$s0, $s1, 0
	ld.h	$fp, $fp, 2
	ld.d	$s0, $s7, 0
	ld.d	$ra, $t5, 0
	st.h	$fp, $s1, 2
	ld.h	$s1, $s0, 0
	ld.d	$s2, $ra, 0
	ld.d	$fp, $t6, 0
	st.h	$s1, $s2, 0
	ld.h	$s0, $s0, 2
	ld.d	$s1, $fp, 0
	ld.d	$s3, $t7, 0
	st.h	$s0, $s2, 2
	ld.h	$s2, $s1, 0
	ld.d	$a4, $s3, 0
	ld.d	$s0, $t8, 0
	st.h	$s2, $a4, 0
	ld.h	$s2, $s1, 2
	ld.d	$a5, $s0, 0
	ld.d	$s1, $s4, 0
	st.h	$s2, $a4, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 0
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 8
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 8
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 8
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 8
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 8
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s3, 8
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 8
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 8
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 16
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 16
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 16
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 16
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 16
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s3, 16
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 16
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 16
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 24
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 24
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 24
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 24
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 24
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s3, 24
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 24
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 24
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 32
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 32
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 32
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 32
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 32
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s3, 32
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 32
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 32
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 40
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 40
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 40
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 40
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 40
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s3, 40
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 40
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 40
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 48
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 48
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 48
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 48
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 48
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s3, 48
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 48
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 48
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 56
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 56
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 56
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 56
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 56
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s3, 56
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 56
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s1, 56
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s6, 64
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $s8, 64
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s7, 64
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$s2, $ra, 64
	st.h	$a4, $s2, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $fp, 64
	st.h	$a4, $s2, 2
	ld.h	$a4, $a5, 0
	ld.d	$fp, $s3, 64
	st.h	$a4, $fp, 0
	ld.h	$a4, $a5, 2
	ld.d	$a5, $s0, 64
	st.h	$a4, $fp, 2
	ld.h	$a4, $a5, 0
	ld.d	$fp, $s1, 64
	st.h	$a4, $fp, 0
	ld.h	$a4, $a5, 2
	st.h	$a4, $fp, 2
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	bnez	$s5, .LBB13_23
# %bb.24:                               # %._crit_edge.us.us.i
                                        #   in Loop: Header=BB13_22 Depth=2
	addi.d	$t0, $t0, 1
	ori	$a4, $zero, 4
	bne	$t0, $a4, .LBB13_22
# %bb.25:                               # %.split.us.us.i
                                        #   in Loop: Header=BB13_21 Depth=1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ori	$a5, $zero, 4
	bne	$a4, $a5, .LBB13_21
.LBB13_26:                              # %copy_motion_vectors_MB.exit
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a4, 72
	ori	$a1, $zero, 14
	bltu	$a1, $a2, .LBB13_31
# %bb.27:                               # %copy_motion_vectors_MB.exit
	ori	$a1, $zero, 1
	sll.d	$a2, $a1, $a2
	lu12i.w	$a3, 6
	ori	$a3, $a3, 1536
	and	$a2, $a2, $a3
	beqz	$a2, .LBB13_31
# %bb.28:
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a4, 0
	ldptr.d	$a0, $a0, 6512
	ld.w	$a3, $a2, 172
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a3, 3
	ld.w	$a2, $a2, 168
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6512
	ld.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a2, 172
	alsl.d	$a0, $a3, $a0, 3
	ld.w	$a2, $a2, 168
	ld.d	$a0, $a0, 8
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	vst	$vr0, $a0, 0
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6512
	ld.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a2, 172
	alsl.d	$a0, $a3, $a0, 3
	ld.w	$a2, $a2, 168
	ld.d	$a0, $a0, 16
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	vst	$vr0, $a0, 0
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6512
	ld.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a2, 172
	alsl.d	$a0, $a3, $a0, 3
	ld.w	$a2, $a2, 168
	ld.d	$a0, $a0, 24
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB13_30
# %bb.29:                               # %.preheader168.preheader
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ld.d	$a1, $a4, 0
	ldptr.d	$a0, $a0, 6512
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 8
	slli.d	$a2, $a2, 3
	ld.w	$a1, $a1, 168
	ldx.d	$a0, $a0, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	vst	$vr0, $a0, 0
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.w	$a1, $a1, 168
	ld.d	$a0, $a0, 8
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	vst	$vr0, $a0, 0
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.w	$a1, $a1, 168
	ld.d	$a0, $a0, 16
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	vst	$vr0, $a0, 0
	ld.d	$a0, $a5, %pc_lo12(enc_picture)
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.w	$a1, $a1, 168
	ld.d	$a0, $a0, 24
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	vst	$vr0, $a0, 0
.LBB13_30:                              # %.loopexit
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
.LBB13_31:                              # %.preheader167
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a3, $a4, 376
	addi.d	$a4, $a4, 392
	ori	$a5, $zero, 1
	ori	$a6, $zero, 4
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB13_33
	.p2align	4, , 16
.LBB13_32:                              #   in Loop: Header=BB13_33 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	beq	$a2, $a6, .LBB13_30
.LBB13_33:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_38 Depth 2
	ld.d	$a7, $s3, %pc_lo12(rdopt)
	move	$t0, $zero
	move	$t1, $zero
	ld.d	$t2, $t2, %pc_lo12(enc_picture)
	andi	$t3, $a2, 2
	add.d	$t4, $a7, $a1
	slli.d	$t5, $a2, 3
	b	.LBB13_38
.LBB13_34:                              #   in Loop: Header=BB13_38 Depth=2
	addi.w	$s0, $s3, 0
.LBB13_35:                              # %.thread165
                                        #   in Loop: Header=BB13_38 Depth=2
	add.d	$s1, $t4, $t1
	ld.b	$s2, $s1, 1696
	ld.d	$fp, $fp, 8
	slli.d	$s2, $s2, 3
	ldx.d	$s2, $fp, $s2
	ld.d	$t7, $t7, 8
	slli.d	$s3, $t6, 3
	ldx.d	$t6, $s2, $s3
	slli.d	$t8, $t8, 3
	ldx.d	$t7, $t7, $t8
	ld.h	$t8, $t6, 0
	slli.d	$t6, $s0, 3
	ldx.d	$t6, $t7, $t6
	st.h	$t8, $t6, 0
	ld.b	$t7, $s1, 1696
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $fp, $t7
	ldx.d	$t7, $t7, $s3
	ld.hu	$t7, $t7, 2
.LBB13_36:                              # %.sink.split
                                        #   in Loop: Header=BB13_38 Depth=2
	st.h	$t7, $t6, 2
.LBB13_37:                              #   in Loop: Header=BB13_38 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 8
	beq	$t1, $a6, .LBB13_32
.LBB13_38:                              #   Parent Loop BB13_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t1, 31, 1
	or	$t6, $t6, $t3
	slli.d	$t6, $t6, 2
	ldx.w	$s0, $a4, $t6
	ldx.w	$t6, $a3, $t6
	bne	$s0, $a5, .LBB13_41
# %bb.39:                               # %.thread
                                        #   in Loop: Header=BB13_38 Depth=2
	ldptr.d	$t7, $t2, 6512
	ld.w	$t8, $a0, 172
	ld.d	$fp, $t7, 0
	add.w	$t8, $t8, $a2
	ld.w	$s0, $a0, 168
	slli.d	$s1, $t8, 3
	ldx.d	$fp, $fp, $s1
	add.d	$s0, $t1, $s0
	slli.d	$s1, $s0, 3
	ldx.d	$fp, $fp, $s1
	st.w	$zero, $fp, 0
	bne	$s5, $a5, .LBB13_37
# %bb.40:                               # %.thread..thread165_crit_edge
                                        #   in Loop: Header=BB13_38 Depth=2
	ld.d	$fp, $a7, 1672
	ldx.d	$fp, $fp, $t5
	ldx.d	$fp, $fp, $t0
	b	.LBB13_35
	.p2align	4, , 16
.LBB13_41:                              #   in Loop: Header=BB13_38 Depth=2
	ld.d	$t7, $a7, 1672
	ldx.d	$t7, $t7, $t5
	ldx.d	$fp, $t7, $t0
	add.d	$s4, $t4, $t1
	ld.b	$t7, $s4, 1680
	ld.d	$s5, $fp, 0
	slli.d	$t7, $t7, 3
	ldx.d	$t8, $s5, $t7
	ldptr.d	$t7, $t2, 6512
	ld.w	$s1, $a0, 172
	slli.d	$s6, $t6, 3
	ldx.d	$s2, $t8, $s6
	ld.d	$s3, $t7, 0
	add.w	$t8, $s1, $a2
	ld.w	$s7, $a0, 168
	slli.d	$s1, $t8, 3
	ldx.d	$s8, $s3, $s1
	ld.h	$ra, $s2, 0
	add.d	$s3, $t1, $s7
	slli.d	$s2, $s3, 3
	ldx.d	$s7, $s8, $s2
	st.h	$ra, $s7, 0
	ld.b	$s4, $s4, 1680
	slli.d	$s4, $s4, 3
	ldx.d	$s4, $s5, $s4
	ldx.d	$s4, $s4, $s6
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.h	$s4, $s4, 2
	st.h	$s4, $s7, 2
	bne	$s5, $a5, .LBB13_37
# %bb.42:                               #   in Loop: Header=BB13_38 Depth=2
	bnez	$s0, .LBB13_34
# %bb.43:                               #   in Loop: Header=BB13_38 Depth=2
	ld.d	$t6, $t7, 8
	ldx.d	$t6, $t6, $s1
	ldx.d	$t6, $t6, $s2
	move	$t7, $zero
	st.h	$zero, $t6, 0
	b	.LBB13_36
.Lfunc_end13:
	.size	copy_rdopt_data, .Lfunc_end13-copy_rdopt_data
                                        # -- End function
	.globl	buf2img                         # -- Begin function buf2img
	.p2align	5
	.type	buf2img,@function
buf2img:                                # @buf2img
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
	ori	$a5, $zero, 3
	move	$s3, $a4
	move	$fp, $a3
	move	$s2, $a2
	move	$s0, $a1
	move	$s1, $a0
	bltu	$a4, $a5, .LBB14_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB14_2:
	pcaddu18i	$ra, %call36(testEndian)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_13
# %bb.3:
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB14_38
# %bb.4:
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB14_20
# %bb.5:
	ori	$a0, $zero, 4
	bne	$s3, $a0, .LBB14_12
# %bb.6:                                # %.preheader87
	blez	$fp, .LBB14_12
# %bb.7:                                # %.preheader87
	blez	$s2, .LBB14_12
# %bb.8:                                # %.preheader86.us.preheader
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a2, $s2, 2
	.p2align	4, , 16
.LBB14_9:                               # %.preheader86.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_10 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s1, $a3
	move	$a4, $s2
	move	$a5, $a0
	.p2align	4, , 16
.LBB14_10:                              #   Parent Loop BB14_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a5, 31, 2
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s0, $a6
	revb.2w	$a6, $a6
	st.h	$a6, $a3, 0
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB14_10
# %bb.11:                               # %._crit_edge.us
                                        #   in Loop: Header=BB14_9 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $a2
	bne	$a1, $fp, .LBB14_9
.LBB14_12:                              # %.loopexit88
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 500
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
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB14_13:                              # %.preheader79
	blez	$fp, .LBB14_19
# %bb.14:                               # %.preheader79
	blez	$s2, .LBB14_19
# %bb.15:                               # %.preheader.us.preheader
	move	$s4, $zero
	mul.d	$s5, $s3, $s2
	slli.d	$s6, $s2, 1
	.p2align	4, , 16
.LBB14_16:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_17 Depth 2
	move	$s7, $zero
	alsl.d	$s8, $s4, $s1, 3
	move	$s2, $s0
	.p2align	4, , 16
.LBB14_17:                              #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s8, 0
	add.d	$a0, $a1, $s7
	stx.h	$zero, $a1, $s7
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 2
	add.d	$s2, $s2, $s3
	bne	$s6, $s7, .LBB14_17
# %bb.18:                               # %._crit_edge.us101
                                        #   in Loop: Header=BB14_16 Depth=1
	addi.d	$s4, $s4, 1
	add.d	$s0, $s0, $s5
	bne	$s4, $fp, .LBB14_16
.LBB14_19:                              # %.loopexit
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
.LBB14_20:                              # %.preheader84
	blez	$fp, .LBB14_19
# %bb.21:                               # %.preheader84
	blez	$s2, .LBB14_19
# %bb.22:                               # %.preheader83.us.preheader
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a2, $s2, 1
	sub.d	$a3, $zero, $a2
	andi	$a4, $s2, 8
	bstrpick.d	$a5, $s2, 30, 4
	slli.d	$a5, $a5, 4
	bstrpick.d	$a6, $s2, 30, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $s0, 16
	sub.d	$t0, $zero, $a6
	ori	$t1, $zero, 8
	ori	$t2, $zero, 32
	ori	$t3, $zero, 16
	b	.LBB14_24
	.p2align	4, , 16
.LBB14_23:                              # %._crit_edge.us95
                                        #   in Loop: Header=BB14_24 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a7, $a7, $a2
	add.d	$a0, $a0, $s2
	beq	$a1, $fp, .LBB14_19
.LBB14_24:                              # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_35 Depth 2
                                        #     Child Loop BB14_32 Depth 2
                                        #     Child Loop BB14_28 Depth 2
	slli.d	$t4, $a1, 3
	ldx.d	$t4, $s1, $t4
	bltu	$s2, $t1, .LBB14_26
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB14_24 Depth=1
	mul.d	$t5, $a3, $a1
	sub.d	$t5, $t5, $s0
	add.d	$t5, $t5, $t4
	bgeu	$t5, $t2, .LBB14_29
.LBB14_26:                              #   in Loop: Header=BB14_24 Depth=1
	move	$t6, $zero
.LBB14_27:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB14_24 Depth=1
	alsl.d	$t4, $t6, $t4, 1
	add.d	$t5, $t6, $a0
	alsl.d	$t5, $t5, $s0, 1
	sub.d	$t6, $s2, $t6
	.p2align	4, , 16
.LBB14_28:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB14_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $t5, 0
	revb.2h	$t7, $t7
	st.h	$t7, $t4, 0
	addi.d	$t4, $t4, 2
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
	bnez	$t6, .LBB14_28
	b	.LBB14_23
	.p2align	4, , 16
.LBB14_29:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB14_24 Depth=1
	bgeu	$s2, $t3, .LBB14_34
# %bb.30:                               #   in Loop: Header=BB14_24 Depth=1
	move	$t7, $zero
.LBB14_31:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB14_24 Depth=1
	add.d	$t5, $t0, $t7
	alsl.d	$t6, $t7, $t4, 1
	add.d	$t7, $t7, $a0
	alsl.d	$t7, $t7, $s0, 1
	.p2align	4, , 16
.LBB14_32:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB14_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vshuf4i.b	$vr0, $vr0, 177
	vst	$vr0, $t6, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	bnez	$t5, .LBB14_32
# %bb.33:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB14_24 Depth=1
	move	$t6, $a6
	beq	$a6, $s2, .LBB14_23
	b	.LBB14_27
.LBB14_34:                              # %vector.body.preheader
                                        #   in Loop: Header=BB14_24 Depth=1
	addi.d	$t5, $t4, 16
	move	$t6, $a7
	move	$t7, $a5
	.p2align	4, , 16
.LBB14_35:                              # %vector.body
                                        #   Parent Loop BB14_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t6, -16
	vld	$vr1, $t6, 0
	vshuf4i.b	$vr0, $vr0, 177
	vshuf4i.b	$vr1, $vr1, 177
	vst	$vr0, $t5, -16
	vst	$vr1, $t5, 0
	addi.d	$t7, $t7, -16
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB14_35
# %bb.36:                               # %middle.block
                                        #   in Loop: Header=BB14_24 Depth=1
	beq	$a5, $s2, .LBB14_23
# %bb.37:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB14_24 Depth=1
	move	$t7, $a5
	move	$t6, $a5
	bnez	$a4, .LBB14_31
	b	.LBB14_27
.LBB14_38:                              # %.preheader81
	blez	$fp, .LBB14_19
# %bb.39:                               # %.preheader81
	blez	$s2, .LBB14_19
# %bb.40:                               # %.preheader80.us.preheader
	move	$a0, $zero
	slli.d	$a1, $s2, 1
	mul.d	$a2, $fp, $s2
	add.d	$a2, $s0, $a2
	andi	$a3, $s2, 8
	bstrpick.d	$a4, $s2, 30, 4
	slli.d	$a4, $a4, 4
	bstrpick.d	$a5, $s2, 30, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $s0, 8
	sub.d	$a7, $zero, $a5
	ori	$t0, $zero, 8
	ori	$t1, $zero, 16
	vrepli.b	$vr0, 0
	move	$t2, $s0
	b	.LBB14_42
	.p2align	4, , 16
.LBB14_41:                              # %._crit_edge.us98
                                        #   in Loop: Header=BB14_42 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $s2
	add.d	$t2, $t2, $s2
	beq	$a0, $fp, .LBB14_19
.LBB14_42:                              # %iter.check159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_54 Depth 2
                                        #     Child Loop BB14_51 Depth 2
                                        #     Child Loop BB14_47 Depth 2
	slli.d	$t3, $a0, 3
	ldx.d	$t3, $s1, $t3
	bltu	$s2, $t0, .LBB14_45
# %bb.43:                               # %vector.memcheck155
                                        #   in Loop: Header=BB14_42 Depth=1
	bgeu	$t3, $a2, .LBB14_48
# %bb.44:                               # %vector.memcheck155
                                        #   in Loop: Header=BB14_42 Depth=1
	add.d	$t4, $t3, $a1
	bgeu	$s0, $t4, .LBB14_48
.LBB14_45:                              #   in Loop: Header=BB14_42 Depth=1
	move	$t4, $zero
.LBB14_46:                              # %vec.epilog.scalar.ph173.preheader
                                        #   in Loop: Header=BB14_42 Depth=1
	alsl.d	$t3, $t4, $t3, 1
	.p2align	4, , 16
.LBB14_47:                              # %vec.epilog.scalar.ph173
                                        #   Parent Loop BB14_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t5, $t2, $t4
	st.h	$t5, $t3, 0
	addi.d	$t4, $t4, 1
	addi.d	$t3, $t3, 2
	bne	$s2, $t4, .LBB14_47
	b	.LBB14_41
	.p2align	4, , 16
.LBB14_48:                              # %vector.main.loop.iter.check161
                                        #   in Loop: Header=BB14_42 Depth=1
	bgeu	$s2, $t1, .LBB14_53
# %bb.49:                               #   in Loop: Header=BB14_42 Depth=1
	move	$t6, $zero
.LBB14_50:                              # %vec.epilog.ph176
                                        #   in Loop: Header=BB14_42 Depth=1
	add.d	$t4, $a7, $t6
	alsl.d	$t5, $t6, $t3, 1
	add.d	$t6, $t2, $t6
	.p2align	4, , 16
.LBB14_51:                              # %vec.epilog.vector.body179
                                        #   Parent Loop BB14_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t6, 0
	vinsgr2vr.d	$vr1, $t7, 0
	vilvl.b	$vr1, $vr0, $vr1
	vst	$vr1, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 8
	bnez	$t4, .LBB14_51
# %bb.52:                               # %vec.epilog.middle.block183
                                        #   in Loop: Header=BB14_42 Depth=1
	move	$t4, $a5
	beq	$a5, $s2, .LBB14_41
	b	.LBB14_46
.LBB14_53:                              # %vector.body165.preheader
                                        #   in Loop: Header=BB14_42 Depth=1
	addi.d	$t4, $t3, 16
	move	$t5, $a6
	move	$t6, $a4
	.p2align	4, , 16
.LBB14_54:                              # %vector.body165
                                        #   Parent Loop BB14_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t5, -8
	ld.d	$t8, $t5, 0
	vinsgr2vr.d	$vr1, $t7, 0
	vinsgr2vr.d	$vr2, $t8, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vst	$vr1, $t4, -16
	vst	$vr2, $t4, 0
	addi.d	$t6, $t6, -16
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 16
	bnez	$t6, .LBB14_54
# %bb.55:                               # %middle.block170
                                        #   in Loop: Header=BB14_42 Depth=1
	beq	$a4, $s2, .LBB14_41
# %bb.56:                               # %vec.epilog.iter.check174
                                        #   in Loop: Header=BB14_42 Depth=1
	move	$t6, $a4
	move	$t4, $a4
	bnez	$a3, .LBB14_50
	b	.LBB14_46
.Lfunc_end14:
	.size	buf2img, .Lfunc_end14-buf2img
                                        # -- End function
	.type	enc_picture,@object             # @enc_picture
	.comm	enc_picture,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	encode_one_frame.prev_frame_no,@object # @encode_one_frame.prev_frame_no
	.local	encode_one_frame.prev_frame_no
	.comm	encode_one_frame.prev_frame_no,4,4
	.type	encode_one_frame.consecutive_non_reference_pictures,@object # @encode_one_frame.consecutive_non_reference_pictures
	.local	encode_one_frame.consecutive_non_reference_pictures
	.comm	encode_one_frame.consecutive_non_reference_pictures,4,4
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	enc_frame_picture,@object       # @enc_frame_picture
	.comm	enc_frame_picture,8,8
	.type	enc_frame_picture2,@object      # @enc_frame_picture2
	.comm	enc_frame_picture2,8,8
	.type	enc_frame_picture3,@object      # @enc_frame_picture3
	.comm	enc_frame_picture3,8,8
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	quadratic_RC_init,@object       # @quadratic_RC_init
	.comm	quadratic_RC_init,8,8
	.type	quadratic_RC,@object            # @quadratic_RC
	.comm	quadratic_RC,8,8
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	updateQP,@object                # @updateQP
	.comm	updateQP,8,8
	.type	QP,@object                      # @QP
	.comm	QP,4,4
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	enc_bottom_picture,@object      # @enc_bottom_picture
	.comm	enc_bottom_picture,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\n"
	.size	.L.str, 137

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Completed Encoding Frame %05d.\r"
	.size	.L.str.1, 32

	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	enc_top_picture,@object         # @enc_top_picture
	.comm	enc_top_picture,8,8
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"alloc_storable_picture: s->imgY_sub"
	.size	.L.str.2, 36

	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel."
	.size	.L.str.3, 110

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture"
	.size	.L.str.4, 80

	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"wb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Fatal: cannot open SP output file '%s', exit (-1)\n"
	.size	.L.str.6, 51

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ab"
	.size	.L.str.7, 3

	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"rb"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Fatal: cannot open SP input file '%s', exit (-1)\n"
	.size	.L.str.9, 50

	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	seiHasBufferingPeriod_info,@object # @seiHasBufferingPeriod_info
	.comm	seiHasBufferingPeriod_info,4,4
	.type	seiBufferingPeriod,@object      # @seiBufferingPeriod
	.comm	seiBufferingPeriod,280,8
	.type	seiHasPicTiming_info,@object    # @seiHasPicTiming_info
	.comm	seiHasPicTiming_info,4,4
	.type	seiPicTiming,@object            # @seiPicTiming
	.comm	seiPicTiming,152,8
	.type	WriteNALU,@object               # @WriteNALU
	.comm	WriteNALU,8,8
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	quadratic_RC_best,@object       # @quadratic_RC_best
	.comm	quadratic_RC_best,8,8
	.type	last_P_no,@object               # @last_P_no
	.comm	last_P_no,8,8
	.type	last_P_no_frm,@object           # @last_P_no_frm
	.comm	last_P_no_frm,8,8
	.type	last_P_no_fld,@object           # @last_P_no_fld
	.comm	last_P_no_fld,8,8
	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%04d(NVB)%8d \n"
	.size	.L.str.12, 15

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%04d(IDR)%8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.13, 59

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"FLD"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"FRM"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.16, 78

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%04d(I)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.17, 59

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.18, 78

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%04d(SP) %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.19, 59

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.20, 78

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%04d(B)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.21, 59

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d %1d %2d %2d  %d   %d\n"
	.size	.L.str.22, 80

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%04d(P)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.23, 59

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"    (R)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\n"
	.size	.L.str.24, 59

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\n"
	.size	.L.str.25, 78

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"ReadOneFrame: buf"
	.size	.L.str.26, 18

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"ReadOneFrame: cannot fseek to (Header size) in p_in"
	.size	.L.str.27, 52

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\n"
	.size	.L.str.28, 67

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting"
	.size	.L.str.29, 77

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8"
	.size	.L.str.30, 75

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Fatal: cannot read in SP input file, exit (-1)"
	.size	.Lstr.1, 47

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Fatal: cannot seek in SP input file, exit (-1)"
	.size	.Lstr.2, 47

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_mb_block_pos_mbaff
	.addrsig_sym get_mb_block_pos_normal
	.addrsig_sym getAffNeighbour
	.addrsig_sym getNonAffNeighbour
	.addrsig_sym errortext
