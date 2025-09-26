	.file	"jdmarker.c"
	.text
	.globl	jpeg_resync_to_restart          # -- Begin function jpeg_resync_to_restart
	.p2align	5
	.type	jpeg_resync_to_restart,@function
jpeg_resync_to_restart:                 # @jpeg_resync_to_restart
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
	move	$fp, $a0
	ld.w	$s1, $a0, 524
	ld.d	$a0, $a0, 0
	st.w	$s1, $a0, 44
	ld.d	$a2, $fp, 0
	move	$s0, $a1
	ori	$a1, $zero, 117
	st.w	$a1, $a0, 40
	st.w	$s0, $a2, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	addi.d	$a0, $s0, 1
	ori	$a1, $zero, 26
	bstrins.d	$a0, $a1, 63, 3
	addi.d	$a2, $s0, 2
	bstrins.d	$a2, $a1, 63, 3
	addi.d	$a3, $s0, -1
	bstrins.d	$a3, $a1, 63, 3
	addi.d	$a4, $s0, 6
	bstrins.d	$a4, $a1, 63, 3
	ori	$s0, $zero, 192
	ori	$s2, $zero, 96
	ori	$s3, $zero, 2
	addi.w	$s4, $zero, -8
	addi.w	$s5, $a0, 0
	addi.w	$s6, $a2, 0
	addi.w	$s7, $a3, 0
	addi.w	$s8, $a4, 0
	blt	$s1, $s0, .LBB0_6
	.p2align	4, , 16
.LBB0_1:
	addi.w	$a0, $s1, -216
	bltu	$a0, $s4, .LBB0_9
# %bb.2:
	beq	$s1, $s5, .LBB0_9
# %bb.3:
	beq	$s1, $s6, .LBB0_9
# %bb.4:
	beq	$s1, $s7, .LBB0_6
# %bb.5:
	bne	$s1, $s8, .LBB0_10
.LBB0_6:                                # %select.unfold
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s1, $a0, 44
	ld.d	$a1, $fp, 0
	st.w	$s2, $a0, 40
	st.w	$s3, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 4
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next_marker)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s1, $fp, 524
	bge	$s1, $s0, .LBB0_1
	b	.LBB0_6
.LBB0_8:
	move	$a0, $zero
	b	.LBB0_11
.LBB0_9:                                # %.thread35
	ld.d	$a0, $fp, 0
	st.w	$s1, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 96
	st.w	$a2, $a0, 40
	ori	$a0, $zero, 3
	st.w	$a0, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 4
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ori	$a0, $zero, 1
	b	.LBB0_11
.LBB0_10:
	ld.d	$a0, $fp, 0
	st.w	$s1, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 96
	st.w	$a2, $a0, 40
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 4
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ori	$a0, $zero, 1
	st.w	$zero, $fp, 524
.LBB0_11:                               # %.loopexit
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
.Lfunc_end0:
	.size	jpeg_resync_to_restart, .Lfunc_end0-jpeg_resync_to_restart
                                        # -- End function
	.p2align	5                               # -- Begin function next_marker
	.type	next_marker,@function
next_marker:                            # @next_marker
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
	ld.d	$s0, $a0, 32
	ld.d	$s3, $s0, 0
	ld.d	$s2, $s0, 8
	ori	$s1, $zero, 255
	bnez	$s2, .LBB1_4
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:
	ld.d	$a0, $fp, 568
	ld.w	$a1, $a0, 172
	addi.d	$a1, $a1, 2
	st.w	$a1, $a0, 172
	st.d	$s3, $s0, 0
	st.d	$s2, $s0, 8
	bnez	$s2, .LBB1_4
.LBB1_2:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB1_18
# %bb.3:
	ld.d	$s3, $s0, 0
	ld.d	$s2, $s0, 8
	ld.bu	$a1, $s3, 0
	addi.d	$a0, $s3, 1
	addi.d	$s2, $s2, -1
	bne	$a1, $s1, .LBB1_8
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:
	ld.bu	$a1, $s3, 0
	addi.d	$a0, $s3, 1
	addi.d	$s2, $s2, -1
	bne	$a1, $s1, .LBB1_8
.LBB1_5:
	move	$s3, $a0
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_6:                                #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$s2, $s0, 8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$s3, $a0, 1
	addi.d	$s2, $s2, -1
	move	$a0, $s3
	beq	$a1, $s1, .LBB1_11
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 568
	ld.w	$a2, $a1, 172
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 172
	st.d	$a0, $s0, 0
	st.d	$s2, $s0, 8
	bnez	$s2, .LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_6
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	ld.bu	$s4, $s3, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 1
	bne	$s4, $s1, .LBB1_14
.LBB1_11:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	bnez	$s2, .LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB1_18
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=1
	ld.d	$s3, $s0, 0
	ld.d	$s2, $s0, 8
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_14:
	beqz	$s4, .LBB1_1
# %bb.15:
	ld.d	$a0, $fp, 568
	ld.w	$a0, $a0, 172
	beqz	$a0, .LBB1_17
# %bb.16:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 112
	st.w	$a2, $a1, 40
	st.w	$s4, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 568
	st.w	$zero, $a0, 172
.LBB1_17:
	st.w	$s4, $fp, 524
	st.d	$s3, $s0, 0
	st.d	$s2, $s0, 8
	ori	$a0, $zero, 1
	b	.LBB1_19
.LBB1_18:
	move	$a0, $zero
.LBB1_19:                               # %.loopexit
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
	.size	next_marker, .Lfunc_end1-next_marker
                                        # -- End function
	.globl	jinit_marker_reader             # -- Begin function jinit_marker_reader
	.p2align	5
	.type	jinit_marker_reader,@function
jinit_marker_reader:                    # @jinit_marker_reader
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a2, $zero, 176
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 568
	pcalau12i	$a1, %pc_hi20(reset_marker_reader)
	addi.d	$a1, $a1, %pc_lo12(reset_marker_reader)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(read_markers)
	addi.d	$a1, $a1, %pc_lo12(read_markers)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %pc_hi20(read_restart_marker)
	addi.d	$a1, $a1, %pc_lo12(read_restart_marker)
	st.d	$a1, $a0, 16
	pcalau12i	$a1, %pc_hi20(skip_variable)
	addi.d	$a1, $a1, %pc_lo12(skip_variable)
	st.d	$a1, $a0, 32
	ld.d	$a2, $fp, 568
	st.d	$a1, $a0, 24
	st.d	$a1, $a2, 40
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 48
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 56
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 64
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 72
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 80
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 88
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 96
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 104
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 112
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 120
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 128
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 136
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 144
	ld.d	$a0, $fp, 568
	st.d	$a1, $a0, 152
	ld.d	$a0, $fp, 568
	pcalau12i	$a1, %pc_hi20(get_app0)
	addi.d	$a1, $a1, %pc_lo12(get_app0)
	st.d	$a1, $a0, 32
	ld.d	$a0, $fp, 568
	pcalau12i	$a1, %pc_hi20(get_app14)
	addi.d	$a1, $a1, %pc_lo12(get_app14)
	st.d	$a1, $a0, 144
	ld.d	$a0, $fp, 568
	st.d	$zero, $fp, 296
	st.w	$zero, $fp, 164
	st.w	$zero, $fp, 524
	st.d	$zero, $a0, 160
	st.w	$zero, $a0, 172
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	jinit_marker_reader, .Lfunc_end2-jinit_marker_reader
                                        # -- End function
	.p2align	5                               # -- Begin function reset_marker_reader
	.type	reset_marker_reader,@function
reset_marker_reader:                    # @reset_marker_reader
# %bb.0:
	ld.d	$a1, $a0, 568
	st.d	$zero, $a0, 296
	st.w	$zero, $a0, 164
	st.w	$zero, $a0, 524
	st.d	$zero, $a1, 160
	st.w	$zero, $a1, 172
	ret
.Lfunc_end3:
	.size	reset_marker_reader, .Lfunc_end3-reset_marker_reader
                                        # -- End function
	.p2align	5                               # -- Begin function read_markers
	.type	read_markers,@function
read_markers:                           # @read_markers
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 360
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 192
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 256
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 224
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s8, $fp, 312
	addi.d	$a0, $fp, 328
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 344
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.w	$s0, $fp, 524
	ori	$s6, $zero, 255
	ori	$s1, $zero, 253
	lu12i.w	$a0, 4112
	ori	$a0, $a0, 257
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a0, 16
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	b	.LBB4_3
.LBB4_1:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 8
	ori	$a1, $zero, 91
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	move	$s0, $zero
	st.w	$zero, $fp, 524
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_53 Depth 2
                                        #       Child Loop BB4_67 Depth 3
                                        #       Child Loop BB4_62 Depth 3
                                        #     Child Loop BB4_173 Depth 2
                                        #     Child Loop BB4_93 Depth 2
                                        #       Child Loop BB4_151 Depth 3
	beqz	$s0, .LBB4_7
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $s0, -1
	bltu	$s1, $a0, .LBB4_22
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 568
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a1, $a0, -1760
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_2
	b	.LBB4_232
	.p2align	4, , 16
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 568
	ld.w	$a0, $a0, 160
	beqz	$a0, .LBB4_12
# %bb.8:                                #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next_marker)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_232
# %bb.9:                                # %thread-pre-split
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$s0, $fp, 524
	addi.d	$a0, $s0, -1
	bgeu	$s1, $a0, .LBB4_5
	b	.LBB4_22
.LBB4_10:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 59
.LBB4_11:                               #   in Loop: Header=BB4_3 Depth=1
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB4_2
.LBB4_12:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s1, $fp, 32
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB4_15
# %bb.13:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s1, 0
	ld.bu	$s2, $a1, 0
	addi.d	$s3, $a0, -1
	beqz	$s3, .LBB4_17
.LBB4_14:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s4, $a1, 1
	ld.bu	$s0, $s4, 0
	beq	$s2, $s6, .LBB4_19
	b	.LBB4_20
.LBB4_15:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.16:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 0
	ld.bu	$s2, $a1, 0
	addi.d	$s3, $a0, -1
	bnez	$s3, .LBB4_14
.LBB4_17:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.18:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s4, $s1, 0
	ld.d	$s3, $s1, 8
	ld.bu	$s0, $s4, 0
	bne	$s2, $s6, .LBB4_20
.LBB4_19:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 216
	beq	$s0, $a0, .LBB4_21
.LBB4_20:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s2, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 52
	st.w	$a2, $a0, 40
	st.w	$s0, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_21:                               # %first_marker.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $s3, -1
	addi.d	$a1, $s4, 1
	st.w	$s0, $fp, 524
	st.d	$a1, $s1, 0
	st.d	$a0, $s1, 8
	ori	$s1, $zero, 253
	addi.d	$a0, $s0, -1
	bgeu	$s1, $a0, .LBB4_5
.LBB4_22:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 67
	b	.LBB4_11
.LBB4_23:                               #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(get_sof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_2
	b	.LBB4_232
.LBB4_24:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s2, $fp, 32
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB4_46
# %bb.25:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $s2, 0
	ld.bu	$s0, $a2, 0
	addi.d	$a1, $a0, -1
	beqz	$a1, .LBB4_48
.LBB4_26:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $a2, 1
	b	.LBB4_50
.LBB4_27:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s0, $fp, 32
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB4_76
# %bb.28:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 0
	ld.bu	$s3, $a1, 0
	addi.d	$s2, $a0, -1
	beqz	$s2, .LBB4_78
.LBB4_29:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $a1, 1
	b	.LBB4_80
.LBB4_30:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s0, $fp, 32
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB4_85
# %bb.31:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $s0, 0
	ld.bu	$s1, $a2, 0
	addi.d	$a1, $a0, -1
	beqz	$a1, .LBB4_87
.LBB4_32:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $a2, 1
	b	.LBB4_89
.LBB4_33:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s0, $fp, 32
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB4_159
# %bb.34:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 0
	ld.bu	$s1, $a1, 0
	addi.d	$a0, $a0, -1
	beqz	$a0, .LBB4_161
.LBB4_35:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $a1, 1
	b	.LBB4_163
.LBB4_36:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 568
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_2
	b	.LBB4_232
.LBB4_37:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_sof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_2
	b	.LBB4_232
.LBB4_38:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(get_sof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_2
	b	.LBB4_232
.LBB4_39:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_sof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_2
	b	.LBB4_232
.LBB4_40:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 101
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 568
	ld.w	$a1, $a0, 160
	beqz	$a1, .LBB4_42
# %bb.41:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 60
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 568
.LBB4_42:                               # %get_soi.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$zero, $s8, 8
	st.d	$zero, $s8, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bstrins.d	$a1, $a1, 56, 32
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $a2, 0
	st.d	$a1, $a2, 8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bstrins.d	$a1, $a1, 58, 32
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $a2, 0
	st.d	$a1, $a2, 8
	st.w	$zero, $fp, 52
	st.w	$zero, $fp, 384
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$zero, $a1, 0
	st.b	$zero, $a1, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.w	$a1, $fp, 370
	st.w	$zero, $fp, 376
	st.b	$zero, $fp, 380
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 160
	b	.LBB4_2
.LBB4_43:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s0, $fp, 32
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB4_164
# %bb.44:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $s0, 0
	ld.bu	$s1, $a2, 0
	addi.d	$a1, $a0, -1
	beqz	$a1, .LBB4_166
.LBB4_45:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $a2, 1
	b	.LBB4_168
.LBB4_46:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.47:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s2, 8
	ld.d	$a2, $s2, 0
	ld.bu	$s0, $a2, 0
	addi.d	$a1, $a0, -1
	bnez	$a1, .LBB4_26
.LBB4_48:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.49:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s2, 8
.LBB4_50:                               #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a2, $a0, 0
	slli.d	$a3, $s0, 8
	addi.d	$s6, $a1, -1
	or	$a1, $a3, $a2
	addi.d	$s5, $a0, 1
	ori	$a0, $zero, 3
	bltu	$a1, $a0, .LBB4_75
# %bb.51:                               # %.lr.ph.i88
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $a1, -2
	b	.LBB4_53
	.p2align	4, , 16
.LBB4_52:                               # %.loopexit.i96
                                        #   in Loop: Header=BB4_53 Depth=2
	sltui	$a0, $s3, 16
	addi.w	$a1, $zero, -129
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -65
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$s1, $a0, $s1
	blez	$s1, .LBB4_75
.LBB4_53:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_67 Depth 3
                                        #       Child Loop BB4_62 Depth 3
	bnez	$s6, .LBB4_56
# %bb.54:                               #   in Loop: Header=BB4_53 Depth=2
	ld.d	$a1, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.55:                               #   in Loop: Header=BB4_53 Depth=2
	ld.d	$s5, $s2, 0
	ld.d	$s6, $s2, 8
.LBB4_56:                               #   in Loop: Header=BB4_53 Depth=2
	ld.bu	$s3, $s5, 0
	ld.d	$a0, $fp, 0
	andi	$s4, $s3, 15
	st.w	$s4, $a0, 44
	ld.d	$a1, $fp, 0
	srli.d	$a2, $s3, 4
	ori	$a3, $zero, 80
	st.w	$a3, $a0, 40
	st.w	$a2, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ori	$a0, $zero, 4
	bltu	$s4, $a0, .LBB4_58
# %bb.57:                               #   in Loop: Header=BB4_53 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s4, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 30
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_58:                               #   in Loop: Header=BB4_53 Depth=2
	slli.d	$a0, $s4, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$s0, $a1, $a0
	bnez	$s0, .LBB4_60
# %bb.59:                               #   in Loop: Header=BB4_53 Depth=2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s4, $s4, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_quant_table)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s4, 0
.LBB4_60:                               #   in Loop: Header=BB4_53 Depth=2
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 1
	move	$s4, $zero
	ori	$a0, $zero, 16
	bltu	$s3, $a0, .LBB4_62
	b	.LBB4_67
	.p2align	4, , 16
.LBB4_61:                               #   in Loop: Header=BB4_62 Depth=3
	ld.bu	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(jpeg_natural_order)
	ld.d	$a1, $a1, %got_pc_lo12(jpeg_natural_order)
	ldx.w	$a1, $a1, $s4
	slli.d	$a1, $a1, 1
	stx.h	$a0, $s0, $a1
	addi.d	$s6, $s6, -1
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 1
	ori	$a0, $zero, 256
	beq	$s4, $a0, .LBB4_73
.LBB4_62:                               # %.split.us.i
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$s6, .LBB4_61
# %bb.63:                               #   in Loop: Header=BB4_62 Depth=3
	ld.d	$a1, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.64:                               #   in Loop: Header=BB4_62 Depth=3
	ld.d	$s5, $s2, 0
	ld.d	$s6, $s2, 8
	b	.LBB4_61
	.p2align	4, , 16
.LBB4_65:                               #   in Loop: Header=BB4_67 Depth=3
	addi.d	$a0, $s5, 1
.LBB4_66:                               #   in Loop: Header=BB4_67 Depth=3
	ld.bu	$a2, $a0, 0
	slli.d	$a3, $s7, 8
	or	$a2, $a3, $a2
	pcalau12i	$a3, %got_pc_hi20(jpeg_natural_order)
	ld.d	$a3, $a3, %got_pc_lo12(jpeg_natural_order)
	ldx.w	$a3, $a3, $s4
	slli.d	$a3, $a3, 1
	stx.h	$a2, $s0, $a3
	addi.d	$s6, $a1, -1
	addi.d	$s4, $s4, 4
	addi.d	$s5, $a0, 1
	ori	$a0, $zero, 256
	beq	$s4, $a0, .LBB4_73
.LBB4_67:                               # %.split.i
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$s6, .LBB4_69
# %bb.68:                               #   in Loop: Header=BB4_67 Depth=3
	ld.b	$s7, $s5, 0
	addi.d	$a1, $s6, -1
	bnez	$a1, .LBB4_65
	b	.LBB4_71
	.p2align	4, , 16
.LBB4_69:                               #   in Loop: Header=BB4_67 Depth=3
	ld.d	$a1, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.70:                               #   in Loop: Header=BB4_67 Depth=3
	ld.d	$s5, $s2, 0
	ld.d	$s6, $s2, 8
	ld.b	$s7, $s5, 0
	addi.d	$a1, $s6, -1
	bnez	$a1, .LBB4_65
.LBB4_71:                               #   in Loop: Header=BB4_67 Depth=3
	ld.d	$a1, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.72:                               #   in Loop: Header=BB4_67 Depth=3
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s2, 8
	b	.LBB4_66
	.p2align	4, , 16
.LBB4_73:                               # %.split155.us.i
                                        #   in Loop: Header=BB4_53 Depth=2
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 124
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB4_52
# %bb.74:                               # %.preheader.preheader.i
                                        #   in Loop: Header=BB4_53 Depth=2
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a0, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 60
	ori	$s4, $zero, 92
	st.w	$s4, $a0, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s0, 24
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 60
	st.w	$s4, $a1, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 32
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s0, 40
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 60
	st.w	$s4, $a1, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 48
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s0, 56
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 60
	st.w	$s4, $a1, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 64
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s0, 72
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 60
	st.w	$s4, $a1, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 80
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s0, 88
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 60
	st.w	$s4, $a1, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 96
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s0, 104
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 60
	st.w	$s4, $a1, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 112
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s0, 120
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 44
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 60
	st.w	$s4, $a1, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	b	.LBB4_52
.LBB4_75:                               # %get_dqt.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$s5, $s2, 0
	st.d	$s6, $s2, 8
	ori	$s6, $zero, 255
	ori	$s1, $zero, 253
	b	.LBB4_2
.LBB4_76:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.77:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 0
	ld.bu	$s3, $a1, 0
	addi.d	$s2, $a0, -1
	bnez	$s2, .LBB4_29
.LBB4_78:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.79:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s1, $s0, 0
	ld.d	$s2, $s0, 8
.LBB4_80:                               #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a0, $s1, 0
	slli.d	$a1, $s3, 8
	or	$a0, $a1, $a0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB4_82
# %bb.81:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 9
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_82:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $s2, -1
	beqz	$a0, .LBB4_185
# %bb.83:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $s1, 1
	ld.bu	$s1, $a1, 0
	addi.d	$a0, $a0, -1
	beqz	$a0, .LBB4_187
.LBB4_84:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $a1, 1
	b	.LBB4_189
.LBB4_85:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.86:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s0, 8
	ori	$s6, $zero, 255
	ld.d	$a2, $s0, 0
	ld.bu	$s1, $a2, 0
	addi.d	$a1, $a0, -1
	bnez	$a1, .LBB4_32
.LBB4_87:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.88:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ori	$s6, $zero, 255
.LBB4_89:                               #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a2, $a0, 0
	slli.d	$a3, $s1, 8
	addi.d	$s1, $a1, -1
	or	$a1, $a3, $a2
	addi.d	$s4, $a0, 1
	ori	$a0, $zero, 3
	bltu	$a1, $a0, .LBB4_158
# %bb.90:                               # %.lr.ph161.i
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s3, $a1, -2
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	b	.LBB4_93
	.p2align	4, , 16
.LBB4_91:                               #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	masknez	$a0, $a0, $s3
	maskeqz	$a1, $a1, $s3
	or	$s3, $a1, $a0
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB4_157
.LBB4_92:                               #   in Loop: Header=BB4_93 Depth=2
	st.b	$zero, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.b	$a1, $a0, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.b	$a1, $a0, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.b	$a1, $a0, 3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.b	$a1, $a0, 4
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.b	$a1, $a0, 5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.b	$a1, $a0, 6
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.b	$a1, $a0, 7
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.b	$a1, $a0, 8
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.b	$a1, $a0, 9
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a1, $a0, 10
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.b	$a1, $a0, 11
	st.b	$s2, $a0, 12
	st.b	$s5, $a0, 13
	st.b	$s7, $a0, 14
	st.b	$s8, $a0, 15
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.b	$a1, $a0, 16
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sub.d	$s3, $a2, $a1
	addi.d	$a0, $a0, 17
	addi.d	$a1, $sp, 248
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ori	$s6, $zero, 255
	blez	$s3, .LBB4_158
.LBB4_93:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_151 Depth 3
	bnez	$s1, .LBB4_96
# %bb.94:                               #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.95:                               #   in Loop: Header=BB4_93 Depth=2
	ld.d	$s4, $s0, 0
	ld.d	$s1, $s0, 8
.LBB4_96:                               #   in Loop: Header=BB4_93 Depth=2
	ld.bu	$a1, $s4, 0
	ld.d	$a0, $fp, 0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$a1, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 8
	ori	$a1, $zero, 79
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	addi.d	$a1, $s1, -1
	beqz	$a1, .LBB4_113
# %bb.97:                               #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $s4, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_115
.LBB4_98:                               #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_117
.LBB4_99:                               #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_119
.LBB4_100:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_121
.LBB4_101:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_123
.LBB4_102:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_125
.LBB4_103:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_127
.LBB4_104:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_129
.LBB4_105:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_131
.LBB4_106:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_133
.LBB4_107:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_135
.LBB4_108:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$s2, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_137
.LBB4_109:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$s4, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_139
.LBB4_110:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$s7, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_141
.LBB4_111:                              #   in Loop: Header=BB4_93 Depth=2
	addi.d	$a0, $a0, 1
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB4_143
.LBB4_112:                              #   in Loop: Header=BB4_93 Depth=2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$s5, $s4
	move	$a5, $s3
	addi.d	$t6, $a0, 1
	b	.LBB4_145
	.p2align	4, , 16
.LBB4_113:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.114:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_98
.LBB4_115:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.116:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_99
.LBB4_117:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.118:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_100
.LBB4_119:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.120:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_101
.LBB4_121:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.122:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_102
.LBB4_123:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.124:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_103
.LBB4_125:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.126:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_104
.LBB4_127:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.128:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_105
.LBB4_129:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.130:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_106
.LBB4_131:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.132:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_107
.LBB4_133:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.134:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_108
.LBB4_135:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.136:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$s2, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_109
.LBB4_137:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.138:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$s4, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_110
.LBB4_139:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.140:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$s7, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_111
.LBB4_141:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.142:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB4_112
.LBB4_143:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.144:                              #   in Loop: Header=BB4_93 Depth=2
	move	$s5, $s4
	move	$a5, $s3
	ld.d	$t6, $s0, 0
	ld.d	$a0, $s0, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB4_145:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a2
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t7
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $a0, $s2
	ld.d	$a1, $fp, 0
	add.d	$a0, $a0, $s5
	add.d	$a0, $a0, $s7
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	ld.bu	$s6, $t6, 0
	st.w	$a2, $a1, 44
	st.w	$a3, $a1, 48
	st.w	$a4, $a1, 52
	st.w	$a6, $a1, 56
	st.w	$a7, $a1, 60
	st.w	$t0, $a1, 64
	st.w	$t1, $a1, 68
	st.w	$t2, $a1, 72
	ori	$a2, $zero, 85
	st.w	$a2, $a1, 40
	ld.d	$a2, $a1, 8
	add.d	$a0, $a0, $s8
	add.d	$s3, $a0, $s6
	addi.d	$a0, $a5, -17
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.w	$a1, $a0, 44
	st.w	$s4, $a0, 48
	st.w	$s1, $a0, 52
	st.w	$s2, $a0, 56
	st.w	$s5, $a0, 60
	st.w	$s7, $a0, 64
	ld.d	$a2, $a0, 8
	st.w	$s8, $a0, 68
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.w	$s6, $a0, 72
	ori	$a1, $zero, 85
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ori	$a0, $zero, 256
	bltu	$a0, $s3, .LBB4_147
# %bb.146:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $s3, .LBB4_148
.LBB4_147:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 28
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_148:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s1, $a1, -1
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	beqz	$s3, .LBB4_154
# %bb.149:                              # %.lr.ph.i78.preheader
                                        #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s2
	add.d	$a1, $a1, $s5
	add.d	$a1, $a1, $s7
	add.d	$a1, $a1, $s8
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.w	$s3, $a1, $a2
	addi.d	$s6, $sp, 248
	b	.LBB4_151
	.p2align	4, , 16
.LBB4_150:                              #   in Loop: Header=BB4_151 Depth=3
	ld.b	$a1, $a0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s4, $a0, 1
	st.b	$a1, $s6, 0
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 1
	move	$a0, $s4
	beqz	$s3, .LBB4_155
.LBB4_151:                              # %.lr.ph.i78
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$s1, .LBB4_150
# %bb.152:                              #   in Loop: Header=BB4_151 Depth=3
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.153:                              #   in Loop: Header=BB4_151 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$s1, $s0, 8
	b	.LBB4_150
.LBB4_154:                              #   in Loop: Header=BB4_93 Depth=2
	move	$s4, $a0
.LBB4_155:                              # %._crit_edge.i82
                                        #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a1, 16
	sltui	$s3, $a0, 1
	addi.d	$s6, $a1, -16
	masknez	$a0, $s6, $s3
	maskeqz	$a1, $a1, $s3
	or	$a0, $a1, $a0
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB4_91
# %bb.156:                              #   in Loop: Header=BB4_93 Depth=2
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 29
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
	b	.LBB4_91
.LBB4_157:                              #   in Loop: Header=BB4_93 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_huff_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	b	.LBB4_92
.LBB4_158:                              # %get_dht.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$s4, $s0, 0
	st.d	$s1, $s0, 8
	ori	$s1, $zero, 253
	b	.LBB4_2
.LBB4_159:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.160:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 0
	ld.bu	$s1, $a1, 0
	addi.d	$a0, $a0, -1
	bnez	$a0, .LBB4_35
.LBB4_161:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.162:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 8
.LBB4_163:                              # %skip_variable.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $fp, 0
	ld.w	$a3, $fp, 524
	ld.bu	$a4, $a1, 0
	st.w	$a3, $a2, 44
	ld.d	$a3, $fp, 0
	slli.d	$a5, $s1, 8
	or	$s1, $a5, $a4
	ori	$a4, $zero, 90
	st.w	$a4, $a2, 40
	st.w	$s1, $a3, 48
	ld.d	$a2, $fp, 0
	ld.d	$a2, $a2, 8
	addi.d	$s2, $a0, -1
	addi.d	$s3, $a1, 1
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 32
	st.d	$s3, $s0, 0
	st.d	$s2, $s0, 8
	addi.d	$a1, $s1, -2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ori	$s1, $zero, 253
	b	.LBB4_2
.LBB4_164:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.165:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a2, $s0, 0
	ld.bu	$s1, $a2, 0
	addi.d	$a1, $a0, -1
	bnez	$a1, .LBB4_45
.LBB4_166:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.167:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.LBB4_168:                              #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a2, $a0, 0
	slli.d	$a3, $s1, 8
	or	$a4, $a3, $a2
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	ori	$a5, $zero, 3
	bltu	$a4, $a5, .LBB4_184
# %bb.169:                              # %.lr.ph.i64
                                        #   in Loop: Header=BB4_3 Depth=1
	add.d	$a2, $a3, $a2
	addi.d	$s1, $a2, 2
	b	.LBB4_173
	.p2align	4, , 16
.LBB4_170:                              # %.thread.i
                                        #   in Loop: Header=BB4_173 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s4, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 26
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_171:                              #   in Loop: Header=BB4_173 Depth=2
	add.d	$a0, $fp, $s4
	st.b	$s5, $a0, 328
.LBB4_172:                              #   in Loop: Header=BB4_173 Depth=2
	addi.d	$a0, $s3, 1
	addi.d	$s1, $s1, -2
	addi.d	$a1, $s2, -1
	ori	$a2, $zero, 4
	bgeu	$a2, $s1, .LBB4_184
.LBB4_173:                              #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a1, .LBB4_176
# %bb.174:                              #   in Loop: Header=BB4_173 Depth=2
	ld.bu	$s4, $a0, 0
	addi.d	$s2, $a1, -1
	beqz	$s2, .LBB4_178
.LBB4_175:                              #   in Loop: Header=BB4_173 Depth=2
	addi.d	$s3, $a0, 1
	b	.LBB4_180
	.p2align	4, , 16
.LBB4_176:                              #   in Loop: Header=BB4_173 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.177:                              #   in Loop: Header=BB4_173 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$s4, $a0, 0
	addi.d	$s2, $a1, -1
	bnez	$s2, .LBB4_175
.LBB4_178:                              #   in Loop: Header=BB4_173 Depth=2
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.179:                              #   in Loop: Header=BB4_173 Depth=2
	ld.d	$s3, $s0, 0
	ld.d	$s2, $s0, 8
.LBB4_180:                              #   in Loop: Header=BB4_173 Depth=2
	ld.d	$a0, $fp, 0
	ld.bu	$s5, $s3, 0
	st.w	$s4, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 78
	st.w	$a2, $a0, 40
	st.w	$s5, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ori	$a0, $zero, 32
	bgeu	$s4, $a0, .LBB4_170
# %bb.181:                              #   in Loop: Header=BB4_173 Depth=2
	ori	$a0, $zero, 16
	bgeu	$s4, $a0, .LBB4_171
# %bb.182:                              #   in Loop: Header=BB4_173 Depth=2
	andi	$a0, $s5, 15
	stx.b	$a0, $s8, $s4
	srli.d	$a1, $s5, 4
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	stx.b	$a1, $a2, $s4
	bgeu	$a1, $a0, .LBB4_172
# %bb.183:                              #   in Loop: Header=BB4_173 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s5, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 27
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB4_172
.LBB4_184:                              # %get_dac.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	ori	$s1, $zero, 253
	b	.LBB4_2
.LBB4_185:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.186:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 8
	ld.bu	$s1, $a1, 0
	addi.d	$a0, $a0, -1
	bnez	$a0, .LBB4_84
.LBB4_187:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.188:                              #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 8
.LBB4_189:                              # %get_dri.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a2, $a1, 0
	ld.d	$a3, $fp, 0
	slli.d	$a4, $s1, 8
	or	$s1, $a4, $a2
	st.w	$s1, $a3, 44
	ld.d	$a2, $fp, 0
	ld.d	$a2, $a2, 8
	addi.d	$s2, $a0, -1
	addi.d	$s3, $a1, 1
	ori	$a0, $zero, 81
	st.w	$a0, $a3, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.w	$s1, $fp, 360
	st.d	$s3, $s0, 0
	st.d	$s2, $s0, 8
	ori	$s1, $zero, 253
	b	.LBB4_2
.LBB4_190:
	ld.d	$s0, $fp, 32
	ld.d	$a0, $fp, 568
	ld.d	$s1, $s0, 0
	ld.w	$a0, $a0, 164
	ld.d	$s2, $s0, 8
	bnez	$a0, .LBB4_192
# %bb.191:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 61
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_192:
	bnez	$s2, .LBB4_195
# %bb.193:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.194:
	ld.d	$s1, $s0, 0
	ld.d	$s2, $s0, 8
.LBB4_195:
	ld.bu	$s3, $s1, 0
	addi.d	$a1, $s2, -1
	beqz	$a1, .LBB4_198
# %bb.196:
	addi.d	$a0, $s1, 1
	b	.LBB4_200
.LBB4_197:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 84
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.w	$zero, $fp, 524
	ori	$a0, $zero, 2
	b	.LBB4_233
.LBB4_198:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.199:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.LBB4_200:
	ld.bu	$s5, $a0, 0
	addi.d	$s2, $a1, -1
	beqz	$s2, .LBB4_202
# %bb.201:
	addi.d	$s4, $a0, 1
	b	.LBB4_204
.LBB4_202:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.203:
	ld.d	$s4, $s0, 0
	ld.d	$s2, $s0, 8
.LBB4_204:
	ld.bu	$s1, $s4, 0
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, -5
	addi.w	$a2, $zero, -4
	bltu	$a1, $a2, .LBB4_206
# %bb.205:
	slli.d	$a1, $s3, 8
	or	$a1, $a1, $s5
	slli.d	$a2, $s1, 1
	addi.d	$a2, $a2, 6
	beq	$a1, $a2, .LBB4_207
.LBB4_206:
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 9
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
.LBB4_207:
	st.w	$s1, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 8
	ori	$a1, $zero, 102
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.w	$s1, $fp, 416
	addi.d	$a0, $s4, 1
	addi.d	$a1, $s2, -1
	beqz	$s1, .LBB4_220
# %bb.208:                              # %.lr.ph179.i
	move	$s2, $zero
	addi.d	$s3, $fp, 424
	b	.LBB4_211
.LBB4_209:                              # %._crit_edge.i
                                        #   in Loop: Header=BB4_211 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s8, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 5
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_210:                              # %.loopexit.i
                                        #   in Loop: Header=BB4_211 Depth=1
	srli.d	$a0, $s4, 4
	ld.d	$a1, $fp, 0
	st.w	$a0, $s5, 20
	andi	$a0, $s4, 15
	st.w	$a0, $s5, 24
	st.w	$s8, $a1, 44
	ld.w	$a0, $s5, 20
	slli.d	$a2, $s2, 3
	st.w	$a0, $a1, 48
	ld.w	$a0, $s5, 24
	stx.d	$s5, $s3, $a2
	ld.d	$a2, $a1, 8
	st.w	$a0, $a1, 52
	ori	$a0, $zero, 103
	st.w	$a0, $a1, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	addi.d	$s2, $s2, 1
	addi.d	$a0, $s7, 1
	addi.d	$a1, $s6, -1
	beq	$s2, $s1, .LBB4_220
.LBB4_211:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_218 Depth 2
	bnez	$a1, .LBB4_214
# %bb.212:                              #   in Loop: Header=BB4_211 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.213:                              #   in Loop: Header=BB4_211 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.LBB4_214:                              #   in Loop: Header=BB4_211 Depth=1
	ld.bu	$s8, $a0, 0
	addi.d	$s6, $a1, -1
	beqz	$s6, .LBB4_216
# %bb.215:                              #   in Loop: Header=BB4_211 Depth=1
	addi.d	$s7, $a0, 1
	ld.bu	$s4, $s7, 0
	ld.w	$a0, $fp, 48
	ld.d	$s5, $fp, 296
	bgtz	$a0, .LBB4_218
	b	.LBB4_209
.LBB4_216:                              #   in Loop: Header=BB4_211 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.217:                              #   in Loop: Header=BB4_211 Depth=1
	ld.d	$s7, $s0, 0
	ld.d	$s6, $s0, 8
	ld.bu	$s4, $s7, 0
	ld.w	$a0, $fp, 48
	ld.d	$s5, $fp, 296
	blez	$a0, .LBB4_209
	.p2align	4, , 16
.LBB4_218:                              # %.lr.ph.i
                                        #   Parent Loop BB4_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s5, 0
	beq	$a1, $s8, .LBB4_210
# %bb.219:                              #   in Loop: Header=BB4_218 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$s5, $s5, 96
	bnez	$a0, .LBB4_218
	b	.LBB4_209
.LBB4_220:                              # %._crit_edge180.i
	bnez	$a1, .LBB4_223
# %bb.221:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.222:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.LBB4_223:
	ld.bu	$a3, $a0, 0
	addi.d	$a2, $a1, -1
	st.w	$a3, $fp, 508
	beqz	$a2, .LBB4_225
# %bb.224:
	addi.d	$a1, $a0, 1
	b	.LBB4_227
.LBB4_225:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.226:
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
.LBB4_227:
	ld.bu	$a3, $a1, 0
	addi.d	$a0, $a2, -1
	st.w	$a3, $fp, 512
	beqz	$a0, .LBB4_229
# %bb.228:
	addi.d	$a1, $a1, 1
	b	.LBB4_231
.LBB4_229:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_232
# %bb.230:
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 8
.LBB4_231:
	ld.bu	$a2, $a1, 0
	srli.d	$a3, $a2, 4
	ld.d	$a4, $fp, 0
	ld.w	$a5, $fp, 508
	st.w	$a3, $fp, 516
	andi	$a2, $a2, 15
	st.w	$a2, $fp, 520
	st.w	$a5, $a4, 44
	ld.w	$a2, $fp, 512
	st.w	$a2, $a4, 48
	ld.w	$a2, $fp, 516
	st.w	$a2, $a4, 52
	ld.w	$a2, $fp, 520
	st.w	$a2, $a4, 56
	ori	$a2, $zero, 104
	ld.d	$a3, $a4, 8
	st.w	$a2, $a4, 40
	addi.d	$s1, $a0, -1
	addi.d	$s2, $a1, 1
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ori	$a0, $zero, 1
	ld.d	$a1, $fp, 568
	ld.w	$a2, $fp, 164
	st.w	$zero, $a1, 168
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 164
	st.d	$s2, $s0, 0
	st.d	$s1, $s0, 8
	st.w	$zero, $fp, 524
	b	.LBB4_233
.LBB4_232:
	move	$a0, $zero
.LBB4_233:                              # %first_marker.exit.thread
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.Lfunc_end4:
	.size	read_markers, .Lfunc_end4-read_markers
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_23-.LJTI4_0
	.word	.LBB4_23-.LJTI4_0
	.word	.LBB4_38-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_30-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_39-.LJTI4_0
	.word	.LBB4_37-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_43-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_40-.LJTI4_0
	.word	.LBB4_197-.LJTI4_0
	.word	.LBB4_190-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_33-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_36-.LJTI4_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function read_restart_marker
	.type	read_restart_marker,@function
read_restart_marker:                    # @read_restart_marker
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 524
	beqz	$a0, .LBB5_3
# %bb.1:
	ld.d	$a1, $fp, 568
	ld.w	$a1, $a1, 168
	addi.w	$a2, $a1, 208
	bne	$a0, $a2, .LBB5_5
.LBB5_2:
	ld.d	$a0, $fp, 0
	st.w	$a1, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 8
	ori	$a1, $zero, 97
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 3
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.w	$zero, $fp, 524
	b	.LBB5_6
.LBB5_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next_marker)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.4:                                # %._crit_edge
	ld.w	$a0, $fp, 524
	ld.d	$a1, $fp, 568
	ld.w	$a1, $a1, 168
	addi.w	$a2, $a1, 208
	beq	$a0, $a2, .LBB5_2
.LBB5_5:
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB5_7
.LBB5_6:
	ld.d	$a0, $fp, 568
	ld.w	$a1, $a0, 168
	addi.d	$a1, $a1, 1
	andi	$a1, $a1, 7
	st.w	$a1, $a0, 168
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_7:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	read_restart_marker, .Lfunc_end5-read_restart_marker
                                        # -- End function
	.p2align	5                               # -- Begin function skip_variable
	.type	skip_variable,@function
skip_variable:                          # @skip_variable
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
	ld.d	$s1, $a0, 32
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB6_3
# %bb.1:
	ld.d	$a1, $s1, 0
	ld.bu	$s0, $a1, 0
	addi.d	$a0, $a0, -1
	beqz	$a0, .LBB6_5
.LBB6_2:
	addi.d	$a1, $a1, 1
	b	.LBB6_7
.LBB6_3:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_8
# %bb.4:
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 0
	ld.bu	$s0, $a1, 0
	addi.d	$a0, $a0, -1
	bnez	$a0, .LBB6_2
.LBB6_5:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_8
# %bb.6:
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s1, 8
.LBB6_7:
	ld.d	$a2, $fp, 0
	ld.w	$a3, $fp, 524
	ld.bu	$a4, $a1, 0
	slli.d	$a5, $s0, 8
	st.w	$a3, $a2, 44
	ld.d	$a3, $fp, 0
	or	$s2, $a5, $a4
	ori	$a4, $zero, 90
	st.w	$a4, $a2, 40
	st.w	$s2, $a3, 48
	ld.d	$a2, $fp, 0
	ld.d	$a2, $a2, 8
	addi.d	$s3, $a0, -1
	addi.d	$s4, $a1, 1
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 32
	st.d	$s4, $s1, 0
	st.d	$s3, $s1, 8
	addi.d	$a1, $s2, -2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	b	.LBB6_9
.LBB6_8:
	move	$s0, $zero
.LBB6_9:
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	skip_variable, .Lfunc_end6-skip_variable
                                        # -- End function
	.p2align	5                               # -- Begin function get_app0
	.type	get_app0,@function
get_app0:                               # @get_app0
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
	move	$fp, $a0
	ld.d	$s1, $a0, 32
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.d	$a2, $s1, 0
	ld.bu	$s0, $a2, 0
	addi.d	$a1, $a0, -1
	beqz	$a1, .LBB7_5
.LBB7_2:
	addi.d	$a0, $a2, 1
	b	.LBB7_7
.LBB7_3:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.4:
	ld.d	$a0, $s1, 8
	ld.d	$a2, $s1, 0
	ld.bu	$s0, $a2, 0
	addi.d	$a1, $a0, -1
	bnez	$a1, .LBB7_2
.LBB7_5:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.6:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
.LBB7_7:
	ld.bu	$a2, $a0, 0
	slli.d	$a3, $s0, 8
	addi.d	$s8, $a1, -1
	or	$s0, $a3, $a2
	ori	$a1, $zero, 16
	addi.d	$s7, $a0, 1
	bltu	$s0, $a1, .LBB7_23
# %bb.8:                                # %.preheader
	beqz	$s8, .LBB7_27
# %bb.9:
	ld.bu	$s2, $s7, 0
	addi.d	$a1, $s8, -1
	beqz	$a1, .LBB7_29
.LBB7_10:
	addi.d	$a0, $s7, 1
	ld.bu	$s3, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_31
.LBB7_11:
	addi.d	$a0, $a0, 1
	ld.bu	$s4, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_33
.LBB7_12:
	addi.d	$a0, $a0, 1
	ld.bu	$s5, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_35
.LBB7_13:
	addi.d	$a0, $a0, 1
	ld.bu	$s6, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_37
.LBB7_14:
	addi.d	$a0, $a0, 1
	ld.bu	$s7, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_39
.LBB7_15:
	addi.d	$a0, $a0, 1
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_41
.LBB7_16:
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_43
.LBB7_17:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_45
.LBB7_18:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_47
.LBB7_19:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_49
.LBB7_20:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_51
.LBB7_21:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB7_53
.LBB7_22:
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $s7
	addi.d	$a0, $a0, 1
	b	.LBB7_55
.LBB7_23:
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s0, -2
	ori	$a2, $zero, 76
	st.w	$a2, $a0, 40
	move	$s0, $a1
.LBB7_24:                               # %.sink.split156
	st.w	$a1, $a0, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB7_25:
	st.d	$s7, $s1, 0
	st.d	$s8, $s1, 8
	ori	$a0, $zero, 1
	blez	$s0, .LBB7_64
# %bb.26:
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 32
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ori	$a0, $zero, 1
	b	.LBB7_64
.LBB7_27:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.28:
	ld.d	$s7, $s1, 0
	ld.d	$s8, $s1, 8
	ld.bu	$s2, $s7, 0
	addi.d	$a1, $s8, -1
	bnez	$a1, .LBB7_10
.LBB7_29:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.30:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s3, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_11
.LBB7_31:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.32:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s4, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_12
.LBB7_33:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.34:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s5, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_13
.LBB7_35:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.36:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s6, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_14
.LBB7_37:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.38:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s7, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_15
.LBB7_39:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.40:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_16
.LBB7_41:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.42:
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_17
.LBB7_43:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.44:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_18
.LBB7_45:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.46:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_19
.LBB7_47:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.48:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_20
.LBB7_49:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.50:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_21
.LBB7_51:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.52:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB7_22
.LBB7_53:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_63
# %bb.54:
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $s7
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
.LBB7_55:
	addi.d	$s8, $a1, -1
	addi.d	$s7, $a0, 1
	ori	$a1, $zero, 74
	addi.d	$s0, $s0, -16
	bne	$s2, $a1, .LBB7_65
# %bb.56:
	ori	$a1, $zero, 70
	bne	$s3, $a1, .LBB7_65
# %bb.57:
	ori	$a1, $zero, 73
	bne	$s4, $a1, .LBB7_65
# %bb.58:
	ori	$a1, $zero, 70
	bne	$s5, $a1, .LBB7_65
# %bb.59:
	bnez	$s6, .LBB7_65
# %bb.60:
	ld.bu	$s2, $a0, 0
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB7_66
# %bb.61:
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB7_68
# %bb.62:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 88
	st.w	$a1, $a0, 40
	ori	$a2, $zero, 1
	ori	$a1, $zero, 1
	b	.LBB7_67
.LBB7_63:
	move	$a0, $zero
.LBB7_64:                               # %.loopexit
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
.LBB7_65:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 76
	st.w	$a1, $a0, 40
	addi.d	$a1, $s0, 14
	b	.LBB7_24
.LBB7_66:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 115
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
.LBB7_67:                               # %.sink.split
	st.w	$a2, $a0, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB7_68:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 364
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.b	$a3, $fp, 368
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	st.h	$a0, $fp, 370
	ld.d	$a1, $fp, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	or	$a2, $a2, $a4
	st.h	$a2, $fp, 372
	st.w	$a0, $a1, 44
	st.w	$a2, $a1, 48
	ld.d	$a2, $a1, 8
	st.w	$a3, $a1, 52
	ori	$a0, $zero, 86
	st.w	$a0, $a1, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	or	$a0, $s2, $s3
	beqz	$a0, .LBB7_70
# %bb.69:
	ld.d	$a0, $fp, 0
	st.w	$s3, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 89
	st.w	$a2, $a0, 40
	st.w	$s2, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB7_70:
	mul.d	$a0, $s3, $s2
	alsl.d	$a0, $a0, $a0, 1
	beq	$s0, $a0, .LBB7_25
# %bb.71:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 87
	st.w	$a1, $a0, 40
	move	$a1, $s0
	b	.LBB7_24
.Lfunc_end7:
	.size	get_app0, .Lfunc_end7-get_app0
                                        # -- End function
	.p2align	5                               # -- Begin function get_app14
	.type	get_app14,@function
get_app14:                              # @get_app14
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 32
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB8_3
# %bb.1:
	ld.d	$a2, $s1, 0
	ld.bu	$s0, $a2, 0
	addi.d	$a1, $a0, -1
	beqz	$a1, .LBB8_5
.LBB8_2:
	addi.d	$a0, $a2, 1
	b	.LBB8_7
.LBB8_3:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.4:
	ld.d	$a0, $s1, 8
	ld.d	$a2, $s1, 0
	ld.bu	$s0, $a2, 0
	addi.d	$a1, $a0, -1
	bnez	$a1, .LBB8_2
.LBB8_5:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.6:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
.LBB8_7:
	ld.bu	$a2, $a0, 0
	slli.d	$a3, $s0, 8
	addi.d	$s8, $a1, -1
	or	$s0, $a3, $a2
	ori	$a1, $zero, 14
	addi.d	$s7, $a0, 1
	bltu	$s0, $a1, .LBB8_21
# %bb.8:                                # %.preheader
	beqz	$s8, .LBB8_24
# %bb.9:
	ld.bu	$s2, $s7, 0
	addi.d	$a1, $s8, -1
	beqz	$a1, .LBB8_26
.LBB8_10:
	addi.d	$a0, $s7, 1
	ld.bu	$s3, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_28
.LBB8_11:
	addi.d	$a0, $a0, 1
	ld.bu	$s4, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_30
.LBB8_12:
	addi.d	$a0, $a0, 1
	ld.bu	$s5, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_32
.LBB8_13:
	addi.d	$a0, $a0, 1
	ld.bu	$s7, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_34
.LBB8_14:
	addi.d	$a0, $a0, 1
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_36
.LBB8_15:
	addi.d	$a0, $a0, 1
	ld.bu	$s6, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_38
.LBB8_16:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_40
.LBB8_17:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_42
.LBB8_18:
	addi.d	$a0, $a0, 1
	ld.bu	$a4, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_44
.LBB8_19:
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	ld.bu	$s6, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB8_46
.LBB8_20:
	move	$a3, $s8
	move	$a2, $s7
	addi.d	$a0, $a0, 1
	b	.LBB8_48
.LBB8_21:
	ld.d	$a0, $fp, 0
	addi.d	$s0, $s0, -2
	st.w	$s0, $a0, 44
.LBB8_22:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 8
	ori	$a1, $zero, 77
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.d	$s7, $s1, 0
	st.d	$s8, $s1, 8
	ori	$a0, $zero, 1
	blez	$s0, .LBB8_55
.LBB8_23:
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 32
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ori	$a0, $zero, 1
	b	.LBB8_55
.LBB8_24:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.25:
	ld.d	$s7, $s1, 0
	ld.d	$s8, $s1, 8
	ld.bu	$s2, $s7, 0
	addi.d	$a1, $s8, -1
	bnez	$a1, .LBB8_10
.LBB8_26:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.27:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s3, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_11
.LBB8_28:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.29:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s4, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_12
.LBB8_30:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.31:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s5, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_13
.LBB8_32:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.33:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s7, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_14
.LBB8_34:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.35:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_15
.LBB8_36:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.37:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$s6, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_16
.LBB8_38:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.39:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_17
.LBB8_40:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.41:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a0, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_18
.LBB8_42:
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.43:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	ld.bu	$a4, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_19
.LBB8_44:
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $s7
	move	$s7, $s2
	move	$s2, $s3
	move	$s3, $a4
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.45:
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	move	$a4, $s3
	move	$s3, $s2
	move	$s2, $s7
	move	$s7, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$s6, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB8_20
.LBB8_46:
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $s3
	move	$s3, $a4
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_54
# %bb.47:
	move	$a3, $s8
	move	$a2, $s7
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s1, 8
	move	$a4, $s3
	move	$s3, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
.LBB8_48:
	addi.d	$s8, $a1, -1
	addi.d	$s7, $a0, 1
	ori	$a1, $zero, 65
	addi.d	$s0, $s0, -14
	bne	$s2, $a1, .LBB8_56
# %bb.49:
	ori	$a1, $zero, 100
	bne	$s3, $a1, .LBB8_56
# %bb.50:
	ori	$a1, $zero, 111
	bne	$s4, $a1, .LBB8_56
# %bb.51:
	ori	$a1, $zero, 98
	bne	$s5, $a1, .LBB8_56
# %bb.52:
	ori	$a1, $zero, 101
	bne	$a2, $a1, .LBB8_56
# %bb.53:
	ld.bu	$s2, $a0, 0
	slli.d	$a0, $a3, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 8
	ld.d	$a2, $fp, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	or	$a1, $a1, $a3
	slli.d	$a3, $a4, 8
	or	$a3, $a3, $s6
	st.w	$a0, $a2, 44
	st.w	$a1, $a2, 48
	st.w	$a3, $a2, 52
	ld.d	$a3, $a2, 8
	st.w	$s2, $a2, 56
	ori	$a0, $zero, 75
	st.w	$a0, $a2, 40
	ori	$a1, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.w	$s3, $fp, 376
	st.b	$s2, $fp, 380
	st.d	$s7, $s1, 0
	st.d	$s8, $s1, 8
	ori	$a0, $zero, 1
	bgtz	$s0, .LBB8_23
	b	.LBB8_55
.LBB8_54:
	move	$a0, $zero
.LBB8_55:                               # %.loopexit
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB8_56:
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s0, 12
	st.w	$a1, $a0, 44
	b	.LBB8_22
.Lfunc_end8:
	.size	get_app14, .Lfunc_end8-get_app14
                                        # -- End function
	.p2align	5                               # -- Begin function get_sof
	.type	get_sof,@function
get_sof:                                # @get_sof
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
	move	$fp, $a0
	ld.d	$s0, $a0, 32
	ld.d	$a3, $s0, 8
	ld.d	$a0, $s0, 0
	st.w	$a1, $fp, 304
	st.w	$a2, $fp, 308
	beqz	$a3, .LBB9_5
# %bb.1:
	ld.bu	$s1, $a0, 0
	addi.d	$a1, $a3, -1
	beqz	$a1, .LBB9_7
.LBB9_2:
	addi.d	$a0, $a0, 1
	ld.bu	$s2, $a0, 0
	addi.d	$a1, $a1, -1
	beqz	$a1, .LBB9_9
.LBB9_3:
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	st.w	$a2, $fp, 288
	beqz	$a1, .LBB9_11
.LBB9_4:
	addi.d	$a0, $a0, 1
	b	.LBB9_13
.LBB9_5:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.6:
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 8
	ld.bu	$s1, $a0, 0
	addi.d	$a1, $a3, -1
	bnez	$a1, .LBB9_2
.LBB9_7:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.8:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$s2, $a0, 0
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB9_3
.LBB9_9:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.10:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.bu	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	st.w	$a2, $fp, 288
	bnez	$a1, .LBB9_4
.LBB9_11:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.12:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.LBB9_13:
	ld.bu	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a2, 8
	st.w	$a2, $fp, 44
	beqz	$a1, .LBB9_15
# %bb.14:
	addi.d	$a0, $a0, 1
	b	.LBB9_17
.LBB9_15:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.16:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.w	$a2, $fp, 44
.LBB9_17:
	ld.bu	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	add.d	$a2, $a2, $a3
	st.w	$a2, $fp, 44
	beqz	$a1, .LBB9_19
# %bb.18:
	addi.d	$a0, $a0, 1
	b	.LBB9_21
.LBB9_19:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.20:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.LBB9_21:
	ld.bu	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a2, 8
	st.w	$a2, $fp, 40
	beqz	$a1, .LBB9_23
# %bb.22:
	addi.d	$a0, $a0, 1
	b	.LBB9_25
.LBB9_23:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.24:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.w	$a2, $fp, 40
.LBB9_25:
	ld.bu	$a3, $a0, 0
	addi.d	$s3, $a1, -1
	add.d	$a1, $a2, $a3
	st.w	$a1, $fp, 40
	beqz	$s3, .LBB9_27
# %bb.26:
	addi.d	$s4, $a0, 1
	b	.LBB9_29
.LBB9_27:
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.28:
	ld.d	$s4, $s0, 0
	ld.d	$s3, $s0, 8
.LBB9_29:
	ld.bu	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $fp, 524
	st.w	$a0, $fp, 48
	st.w	$a2, $a1, 44
	ld.w	$a0, $fp, 40
	st.w	$a0, $a1, 48
	ld.w	$a0, $fp, 44
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, 48
	st.w	$a0, $a1, 56
	ori	$a0, $zero, 99
	ld.d	$a2, $a1, 8
	st.w	$a0, $a1, 40
	slli.d	$a0, $s1, 8
	or	$s1, $a0, $s2
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 568
	ld.w	$a0, $a0, 164
	beqz	$a0, .LBB9_31
# %bb.30:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 57
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_31:
	ld.w	$a0, $fp, 44
	addi.d	$s1, $s1, -8
	beqz	$a0, .LBB9_37
# %bb.32:
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB9_37
# %bb.33:
	ld.w	$a3, $fp, 48
	blez	$a3, .LBB9_37
# %bb.34:
	alsl.w	$a0, $a3, $a3, 1
	bne	$s1, $a0, .LBB9_38
.LBB9_35:
	ld.d	$a0, $fp, 296
	beqz	$a0, .LBB9_39
.LBB9_36:
	addi.d	$a1, $s4, 1
	addi.d	$a2, $s3, -1
	bgtz	$a3, .LBB9_40
	b	.LBB9_55
.LBB9_37:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 31
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a3, $fp, 48
	alsl.w	$a0, $a3, $a3, 1
	beq	$s1, $a0, .LBB9_35
.LBB9_38:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 9
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a3, $fp, 48
	ld.d	$a0, $fp, 296
	bnez	$a0, .LBB9_36
.LBB9_39:
	ld.d	$a0, $fp, 8
	ld.d	$a4, $a0, 0
	alsl.d	$a0, $a3, $a3, 1
	slli.d	$a2, $a0, 5
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.w	$a3, $fp, 48
	st.d	$a0, $fp, 296
	addi.d	$a1, $s4, 1
	addi.d	$a2, $s3, -1
	blez	$a3, .LBB9_55
.LBB9_40:                               # %.lr.ph
	move	$s1, $zero
	addi.d	$s2, $a0, 16
	ori	$s3, $zero, 100
	b	.LBB9_43
	.p2align	4, , 16
.LBB9_41:                               #   in Loop: Header=BB9_43 Depth=1
	addi.d	$s5, $a0, 1
.LBB9_42:                               #   in Loop: Header=BB9_43 Depth=1
	ld.bu	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $s2, -16
	st.w	$a0, $s2, 0
	st.w	$a2, $a1, 44
	ld.w	$a0, $s2, -8
	st.w	$a0, $a1, 48
	ld.w	$a0, $s2, -4
	st.w	$a0, $a1, 52
	ld.w	$a0, $s2, 0
	ld.d	$a2, $a1, 8
	st.w	$a0, $a1, 56
	st.w	$s3, $a1, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 48
	addi.w	$s1, $s1, 1
	addi.d	$a1, $s5, 1
	addi.d	$a2, $s4, -1
	addi.d	$s2, $s2, 96
	bge	$s1, $a0, .LBB9_55
.LBB9_43:                               # =>This Inner Loop Header: Depth=1
	st.w	$s1, $s2, -12
	beqz	$a2, .LBB9_46
# %bb.44:                               #   in Loop: Header=BB9_43 Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	st.w	$a0, $s2, -16
	beqz	$a2, .LBB9_48
.LBB9_45:                               #   in Loop: Header=BB9_43 Depth=1
	addi.d	$a0, $a1, 1
	b	.LBB9_50
	.p2align	4, , 16
.LBB9_46:                               #   in Loop: Header=BB9_43 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.47:                               #   in Loop: Header=BB9_43 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	ld.bu	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	st.w	$a0, $s2, -16
	bnez	$a2, .LBB9_45
.LBB9_48:                               #   in Loop: Header=BB9_43 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.49:                               #   in Loop: Header=BB9_43 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s0, 8
.LBB9_50:                               #   in Loop: Header=BB9_43 Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$s4, $a2, -1
	srli.d	$a2, $a1, 4
	st.w	$a2, $s2, -8
	andi	$a1, $a1, 15
	st.w	$a1, $s2, -4
	bnez	$s4, .LBB9_41
# %bb.51:                               #   in Loop: Header=BB9_43 Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB9_53
# %bb.52:                               #   in Loop: Header=BB9_43 Depth=1
	ld.d	$s5, $s0, 0
	ld.d	$s4, $s0, 8
	b	.LBB9_42
.LBB9_53:
	move	$a0, $zero
.LBB9_54:                               # %.loopexit
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
.LBB9_55:                               # %._crit_edge
	ld.d	$a3, $fp, 568
	ori	$a0, $zero, 1
	st.w	$a0, $a3, 164
	st.d	$a1, $s0, 0
	st.d	$a2, $s0, 8
	b	.LBB9_54
.Lfunc_end9:
	.size	get_sof, .Lfunc_end9-get_sof
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym reset_marker_reader
	.addrsig_sym read_markers
	.addrsig_sym read_restart_marker
	.addrsig_sym skip_variable
	.addrsig_sym get_app0
	.addrsig_sym get_app14
