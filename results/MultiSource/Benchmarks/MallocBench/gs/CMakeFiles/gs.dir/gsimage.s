	.file	"gsimage.c"
	.text
	.globl	gs_image_init                   # -- Begin function gs_image_init
	.p2align	5
	.type	gs_image_init,@function
gs_image_init:                          # @gs_image_init
# %bb.0:
	move	$a7, $a1
	ld.bu	$a1, $a1, 436
	beqz	$a1, .LBB0_3
# %bb.1:
	addi.w	$a1, $zero, -21
.LBB0_2:
	move	$a0, $a1
	ret
.LBB0_3:
	addi.w	$a4, $a4, -1
	ori	$t0, $zero, 7
	addi.w	$a1, $zero, -15
	bltu	$t0, $a4, .LBB0_2
# %bb.4:
	ori	$t0, $zero, 139
	srl.d	$t0, $t0, $a4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_2
# %bb.5:                                # %switch.lookup
	addi.w	$a5, $a5, 4
	ori	$t0, $zero, 8
	bltu	$t0, $a5, .LBB0_2
# %bb.6:                                # %switch.lookup
	ori	$t0, $zero, 419
	srl.d	$t0, $t0, $a5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_2
# %bb.7:                                # %switch.lookup21
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a1, $a4, 2
	pcalau12i	$a4, %pc_hi20(.Lswitch.table.gs_image_init)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table.gs_image_init)
	ldx.w	$t0, $a4, $a1
	slli.d	$a1, $a5, 2
	pcalau12i	$a4, %pc_hi20(.Lswitch.table.gs_image_init.1)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table.gs_image_init.1)
	ldx.w	$a4, $a4, $a1
	pcalau12i	$a5, %pc_hi20(.Lswitch.table.gs_image_init.2)
	addi.d	$a5, $a5, %pc_lo12(.Lswitch.table.gs_image_init.2)
	ld.d	$t1, $a7, 448
	ldx.w	$a5, $a5, $a1
	ld.d	$a1, $t1, 24
	ld.d	$t1, $t1, 16
	st.d	$t1, $sp, 8
	st.d	$a1, $sp, 0
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $t0
	pcaddu18i	$ra, %call36(image_init)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	gs_image_init, .Lfunc_end0-gs_image_init
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function image_init
.LCPI1_0:
	.word	0x45800000                      # float 4096
	.text
	.globl	image_init
	.p2align	5
	.type	image_init,@function
image_init:                             # @image_init
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	move	$fp, $a7
	move	$a7, $a0
	addi.w	$a0, $zero, -23
	blez	$a1, .LBB1_40
# %bb.1:
	bltz	$a2, .LBB1_40
# %bb.2:
	beqz	$a2, .LBB1_12
# %bb.3:
	move	$s5, $a2
	move	$s3, $a4
	move	$s6, $a1
	move	$s2, $a5
	move	$s4, $a3
	move	$s7, $a7
	addi.d	$a1, $sp, 16
	move	$a0, $a6
	pcaddu18i	$ra, %call36(gs_matrix_invert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB1_40
# %bb.4:
	addi.d	$a1, $fp, 24
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(gs_matrix_multiply)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB1_40
# %bb.5:
	addi.d	$a0, $s6, 8
	mul.w	$s0, $s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 1
	ori	$s1, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gs_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_13
# %bb.6:
	ld.d	$a6, $sp, 200
	ld.d	$a7, $sp, 192
	move	$a1, $s7
	move	$a4, $s6
	st.w	$s6, $s7, 0
	move	$t1, $s5
	st.w	$s5, $s7, 4
	fld.s	$fa1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI1_0)
	move	$a2, $s4
	st.w	$s4, $s7, 8
	move	$a5, $s3
	st.w	$s3, $s7, 12
	move	$a3, $s2
	st.w	$s2, $s7, 16
	fmul.s	$fa1, $fa1, $fa0
	fld.s	$fa2, $sp, 64
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$t3, $fa1
	fst.d	$fa1, $s7, 24
	fmul.s	$fa1, $fa2, $fa0
	ld.d	$t2, $sp, 32
	ld.d	$t4, $sp, 48
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$t5, $fa1
	fst.d	$fa1, $s7, 48
	or	$t0, $t4, $t2
	bstrpick.d	$t0, $t0, 62, 0
	sltu	$t6, $zero, $t0
	vinsgr2vr.w	$vr1, $t2, 0
	vinsgr2vr.w	$vr1, $t4, 1
	lu12i.w	$t7, 284672
	vreplgr2vr.w	$vr2, $t7
	vfmul.s	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 0
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$t7, $fa2
	vinsgr2vr.d	$vr2, $t7, 0
	vreplvei.w	$vr1, $vr1, 1
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$t7, $fa1
	vinsgr2vr.d	$vr2, $t7, 1
	vreplgr2vr.d	$vr1, $t6
	vslli.d	$vr1, $vr1, 63
	vsrai.d	$vr1, $vr1, 63
	vand.v	$vr1, $vr1, $vr2
	fld.s	$fa2, $sp, 80
	st.w	$t6, $s7, 100
	vst	$vr1, $s7, 32
	fld.s	$fa1, $sp, 96
	fmul.s	$fa2, $fa2, $fa0
	ftintrz.l.s	$fa2, $fa2
	fst.d	$fa2, $s7, 160
	fmul.s	$fa1, $fa1, $fa0
	ftintrz.l.s	$fa1, $fa1
	fst.d	$fa1, $s7, 168
	st.d	$fp, $s7, 72
	st.d	$a0, $s7, 80
	st.w	$s0, $s7, 88
	sll.d	$a0, $s6, $s4
	mul.d	$a0, $a0, $s3
	div.du	$a0, $a0, $s2
	addi.d	$a0, $a0, 7
	srli.d	$a0, $a0, 3
	st.w	$a0, $s7, 92
	bne	$s3, $s1, .LBB1_17
# %bb.7:
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB1_15
# %bb.8:
	ori	$a0, $zero, 2
	beq	$a2, $a0, .LBB1_14
# %bb.9:
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB1_16
# %bb.10:                               # %vector.ph
	addi.d	$a0, $a1, 424
	lu12i.w	$t6, -2
	addi.w	$t7, $zero, -1
	lu32i.d	$t7, 0
	.p2align	4, , 16
.LBB1_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t8, $a0, $t6
	stptr.w	$t7, $t8, 8064
	stptr.w	$t7, $t8, 8192
	stptr.w	$t7, $t8, 8032
	stptr.w	$t7, $t8, 8160
	stptr.w	$t7, $t8, 8000
	stptr.w	$t7, $t8, 8128
	stptr.w	$t7, $t8, 7968
	addi.d	$t6, $t6, 256
	stptr.w	$t7, $t8, 8096
	bnez	$t6, .LBB1_11
	b	.LBB1_16
.LBB1_12:
	move	$a0, $zero
	b	.LBB1_40
.LBB1_13:
	addi.w	$a0, $zero, -25
	b	.LBB1_40
.LBB1_14:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	stptr.w	$a0, $a1, 7816
	stptr.w	$a0, $a1, 7272
	stptr.w	$a0, $a1, 6728
	stptr.w	$a0, $a1, 6184
	stptr.w	$a0, $a1, 5096
	stptr.w	$a0, $a1, 4552
	stptr.w	$a0, $a1, 4008
	stptr.w	$a0, $a1, 3464
	stptr.w	$a0, $a1, 2376
	st.w	$a0, $a1, 1832
	st.w	$a0, $a1, 1288
	st.w	$a0, $a1, 744
.LBB1_15:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	stptr.w	$a0, $a1, 5640
	stptr.w	$a0, $a1, 2920
.LBB1_16:                               # %.loopexit
	st.d	$a7, $a1, 184
	st.w	$zero, $a1, 200
	stptr.d	$a6, $a1, 8344
	stptr.w	$zero, $a1, 8360
.LBB1_17:
	ld.d	$t6, $fp, 264
	mul.d	$a0, $t3, $a4
	mul.d	$t3, $t5, $t1
	beqz	$t0, .LBB1_19
# %bb.18:
	movgr2fr.w	$fa3, $t4
	fmul.s	$fa3, $fa3, $fa0
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$t4, $fa3
	mul.d	$t1, $t4, $t1
	add.d	$t4, $t1, $a0
	movgr2fr.w	$fa3, $t2
	fmul.s	$fa0, $fa3, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$t1, $fa0
	mul.d	$t1, $t1, $a4
	add.d	$t3, $t1, $t3
	b	.LBB1_20
.LBB1_19:
	move	$t4, $a0
.LBB1_20:
	ld.d	$t8, $t6, 56
	ld.d	$t5, $t6, 64
	ld.d	$t7, $t6, 72
	ld.d	$t2, $t6, 80
	movfr2gr.d	$t1, $fa2
	bltz	$t4, .LBB1_23
# %bb.21:
	blt	$t1, $t8, .LBB1_27
# %bb.22:
	add.d	$t4, $t4, $t1
	bge	$t7, $t4, .LBB1_25
	b	.LBB1_27
.LBB1_23:
	add.d	$t4, $t4, $t1
	blt	$t4, $t8, .LBB1_27
# %bb.24:
	blt	$t7, $t1, .LBB1_27
.LBB1_25:
	movfr2gr.d	$t4, $fa1
	bltz	$t3, .LBB1_41
# %bb.26:
	slt	$t5, $t4, $t5
	xori	$t5, $t5, 1
	add.d	$t3, $t3, $t4
	slt	$t2, $t2, $t3
	xori	$t2, $t2, 1
	and	$t3, $t5, $t2
	b	.LBB1_42
.LBB1_27:                               # %.critedge
	st.w	$zero, $a1, 96
	ori	$t2, $zero, 1
.LBB1_28:
	ld.bu	$a6, $fp, 437
	st.w	$t2, $a1, 104
	beqz	$a6, .LBB1_30
# %bb.29:
	pcalau12i	$a0, %pc_hi20(image_render_skip)
	addi.d	$a5, $a0, %pc_lo12(image_render_skip)
	b	.LBB1_35
.LBB1_30:
	ori	$a6, $zero, 1
	bge	$a6, $a5, .LBB1_32
# %bb.31:
	pcalau12i	$a0, %pc_hi20(image_render_color)
	addi.d	$a5, $a0, %pc_lo12(image_render_color)
	b	.LBB1_35
.LBB1_32:
	sltu	$a5, $zero, $a2
	or	$a5, $a5, $t2
	andi	$a6, $a5, 1
	pcalau12i	$a5, %pc_hi20(image_render_mono)
	addi.d	$a5, $a5, %pc_lo12(image_render_mono)
	bnez	$a6, .LBB1_35
# %bb.33:
	add.d	$a0, $a0, $t1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	srai.d	$a0, $a0, 12
	srai.d	$a6, $t1, 12
	sub.d	$a0, $a0, $a6
	bne	$a0, $a4, .LBB1_35
# %bb.34:
	pcalau12i	$a0, %pc_hi20(image_render_direct)
	addi.d	$a0, $a0, %pc_lo12(image_render_direct)
	st.d	$a0, $a1, 64
	pcalau12i	$a0, %pc_hi20(image_unpack_3)
	addi.d	$a0, $a0, %pc_lo12(image_unpack_3)
	b	.LBB1_39
.LBB1_35:
	ori	$a0, $zero, 1
	st.d	$a5, $a1, 64
	bne	$a3, $a0, .LBB1_37
# %bb.36:
	slli.d	$a0, $a2, 3
	pcalau12i	$a2, %pc_hi20(image_init.procs)
	addi.d	$a2, $a2, %pc_lo12(image_init.procs)
	b	.LBB1_38
.LBB1_37:
	slli.d	$a0, $a2, 3
	pcalau12i	$a2, %pc_hi20(image_init.spread_procs)
	addi.d	$a2, $a2, %pc_lo12(image_init.spread_procs)
.LBB1_38:
	ldx.d	$a0, $a2, $a0
.LBB1_39:
	st.d	$a0, $a1, 56
	move	$a0, $zero
	st.w	$zero, $a1, 144
	st.w	$zero, $a1, 152
	st.w	$zero, $a1, 176
.LBB1_40:
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB1_41:
	add.d	$t3, $t3, $t4
	slt	$t3, $t3, $t5
	xori	$t3, $t3, 1
	slt	$t2, $t2, $t4
	xori	$t2, $t2, 1
	and	$t3, $t3, $t2
.LBB1_42:
	st.w	$t3, $a1, 96
	ori	$t2, $zero, 1
	bnez	$t0, .LBB1_28
# %bb.43:
	beqz	$t3, .LBB1_28
# %bb.44:
	addi.w	$t0, $zero, -1
	beq	$a7, $t0, .LBB1_47
# %bb.45:
	beq	$a6, $t0, .LBB1_47
# %bb.46:
	move	$t2, $zero
	b	.LBB1_28
.LBB1_47:
	ld.d	$a6, $fp, 312
	ld.w	$a6, $a6, 16
	sltu	$t2, $zero, $a6
	b	.LBB1_28
.Lfunc_end1:
	.size	image_init, .Lfunc_end1-image_init
                                        # -- End function
	.globl	gs_imagemask_init               # -- Begin function gs_imagemask_init
	.p2align	5
	.type	gs_imagemask_init,@function
gs_imagemask_init:                      # @gs_imagemask_init
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a6, $a1, 304
	ld.d	$a1, $a1, 312
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a0
	move	$a0, $a6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(gx_color_render)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 312
	ld.d	$a0, $a0, 0
	sltui	$a1, $s1, 1
	addi.w	$a2, $zero, -1
	masknez	$a3, $a2, $a1
	maskeqz	$a4, $a0, $a1
	or	$a3, $a4, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 8
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	st.d	$a3, $sp, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $zero
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(image_init)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	gs_imagemask_init, .Lfunc_end2-gs_imagemask_init
                                        # -- End function
	.globl	image_unpack_0                  # -- Begin function image_unpack_0
	.p2align	5
	.type	image_unpack_0,@function
image_unpack_0:                         # @image_unpack_0
# %bb.0:
	beqz	$a3, .LBB3_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(map_4_to_32)
	addi.d	$a0, $a0, %pc_lo12(map_4_to_32)
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	srli.d	$a5, $a4, 2
	andi	$a5, $a5, 60
	ldx.w	$a5, $a0, $a5
	st.w	$a5, $a1, 0
	andi	$a4, $a4, 15
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 8
	st.w	$a4, $a1, 4
	move	$a1, $a5
	bnez	$a3, .LBB3_2
.LBB3_3:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	image_unpack_0, .Lfunc_end3-image_unpack_0
                                        # -- End function
	.globl	image_unpack_1                  # -- Begin function image_unpack_1
	.p2align	5
	.type	image_unpack_1,@function
image_unpack_1:                         # @image_unpack_1
# %bb.0:
	beqz	$a3, .LBB4_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(map_4_to_16)
	addi.d	$a0, $a0, %pc_lo12(map_4_to_16)
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	srli.d	$a5, $a4, 3
	andi	$a5, $a5, 30
	ldx.h	$a5, $a0, $a5
	st.h	$a5, $a1, 0
	andi	$a4, $a4, 15
	slli.d	$a4, $a4, 1
	ldx.h	$a4, $a0, $a4
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 4
	st.h	$a4, $a1, 2
	move	$a1, $a5
	bnez	$a3, .LBB4_2
.LBB4_3:                                # %._crit_edge
	ret
.Lfunc_end4:
	.size	image_unpack_1, .Lfunc_end4-image_unpack_1
                                        # -- End function
	.globl	image_unpack_2                  # -- Begin function image_unpack_2
	.p2align	5
	.type	image_unpack_2,@function
image_unpack_2:                         # @image_unpack_2
# %bb.0:
	beqz	$a3, .LBB5_3
# %bb.1:                                # %.lr.ph
	ld.w	$a0, $a0, 16
	.p2align	4, , 16
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	srli.d	$a5, $a4, 4
	bstrins.d	$a5, $a5, 7, 4
	st.b	$a5, $a1, 0
	add.d	$a5, $a1, $a0
	bstrins.d	$a4, $a4, 63, 4
	stx.b	$a4, $a1, $a0
	add.d	$a1, $a5, $a0
	bnez	$a3, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ret
.Lfunc_end5:
	.size	image_unpack_2, .Lfunc_end5-image_unpack_2
                                        # -- End function
	.globl	image_unpack_3                  # -- Begin function image_unpack_3
	.p2align	5
	.type	image_unpack_3,@function
image_unpack_3:                         # @image_unpack_3
# %bb.0:
	beq	$a2, $a1, .LBB6_2
# %bb.1:
	bstrpick.d	$a3, $a3, 31, 0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB6_2:
	ret
.Lfunc_end6:
	.size	image_unpack_3, .Lfunc_end6-image_unpack_3
                                        # -- End function
	.globl	image_unpack_0_spread           # -- Begin function image_unpack_0_spread
	.p2align	5
	.type	image_unpack_0_spread,@function
image_unpack_0_spread:                  # @image_unpack_0_spread
# %bb.0:
	beqz	$a3, .LBB7_3
# %bb.1:                                # %.lr.ph
	ld.w	$a0, $a0, 16
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	ext.w.b	$a5, $a4
	srli.d	$a5, $a5, 7
	st.b	$a5, $a1, 0
	add.d	$a5, $a1, $a0
	slli.w	$a6, $a4, 25
	srli.d	$a6, $a6, 31
	stx.b	$a6, $a1, $a0
	add.d	$a1, $a5, $a0
	slli.w	$a6, $a4, 26
	srli.d	$a6, $a6, 31
	stx.b	$a6, $a5, $a0
	add.d	$a5, $a1, $a0
	slli.w	$a6, $a4, 27
	srli.d	$a6, $a6, 31
	stx.b	$a6, $a1, $a0
	add.d	$a1, $a5, $a0
	slli.w	$a6, $a4, 28
	srli.d	$a6, $a6, 31
	stx.b	$a6, $a5, $a0
	add.d	$a5, $a1, $a0
	slli.w	$a6, $a4, 29
	srli.d	$a6, $a6, 31
	stx.b	$a6, $a1, $a0
	add.d	$a1, $a5, $a0
	slli.w	$a6, $a4, 30
	srli.d	$a6, $a6, 31
	stx.b	$a6, $a5, $a0
	add.d	$a5, $a1, $a0
	andi	$a4, $a4, 1
	sub.d	$a4, $zero, $a4
	stx.b	$a4, $a1, $a0
	add.d	$a1, $a5, $a0
	bnez	$a3, .LBB7_2
.LBB7_3:                                # %._crit_edge
	ret
.Lfunc_end7:
	.size	image_unpack_0_spread, .Lfunc_end7-image_unpack_0_spread
                                        # -- End function
	.globl	image_unpack_1_spread           # -- Begin function image_unpack_1_spread
	.p2align	5
	.type	image_unpack_1_spread,@function
image_unpack_1_spread:                  # @image_unpack_1_spread
# %bb.0:
	beqz	$a3, .LBB8_3
# %bb.1:                                # %.lr.ph
	ld.w	$a0, $a0, 16
	pcalau12i	$a4, %pc_hi20(map_4_to_16)
	addi.d	$a4, $a4, %pc_lo12(map_4_to_16)
	.p2align	4, , 16
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a2, 0
	srli.d	$a6, $a5, 3
	andi	$a6, $a6, 30
	ldx.h	$a6, $a4, $a6
	srli.d	$a7, $a6, 8
	st.b	$a7, $a1, 0
	stx.b	$a6, $a1, $a0
	andi	$a5, $a5, 15
	slli.d	$a5, $a5, 1
	ldx.h	$a5, $a4, $a5
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $a0
	srli.d	$a6, $a5, 8
	add.d	$a7, $a1, $a0
	stx.b	$a6, $a1, $a0
	add.d	$a1, $a7, $a0
	stx.b	$a5, $a7, $a0
	add.d	$a1, $a1, $a0
	bnez	$a3, .LBB8_2
.LBB8_3:                                # %._crit_edge
	ret
.Lfunc_end8:
	.size	image_unpack_1_spread, .Lfunc_end8-image_unpack_1_spread
                                        # -- End function
	.globl	image_unpack_3_spread           # -- Begin function image_unpack_3_spread
	.p2align	5
	.type	image_unpack_3_spread,@function
image_unpack_3_spread:                  # @image_unpack_3_spread
# %bb.0:
	beqz	$a3, .LBB9_3
# %bb.1:                                # %.lr.ph
	ld.w	$a0, $a0, 16
	.p2align	4, , 16
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	st.b	$a4, $a1, 0
	add.d	$a1, $a1, $a0
	bnez	$a3, .LBB9_2
.LBB9_3:                                # %._crit_edge
	ret
.Lfunc_end9:
	.size	image_unpack_3_spread, .Lfunc_end9-image_unpack_3_spread
                                        # -- End function
	.globl	image_render_skip               # -- Begin function image_render_skip
	.p2align	5
	.type	image_render_skip,@function
image_render_skip:                      # @image_render_skip
# %bb.0:
	move	$a0, $a3
	ret
.Lfunc_end10:
	.size	image_render_skip, .Lfunc_end10-image_render_skip
                                        # -- End function
	.globl	image_render_color              # -- Begin function image_render_color
	.p2align	5
	.type	image_render_color,@function
image_render_color:                     # @image_render_color
# %bb.0:
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$s6, $a0, 72
	ld.d	$a1, $a0, 24
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 32
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 40
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 48
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a0, 12
	ld.w	$a3, $a0, 100
	bstrpick.d	$a1, $a2, 31, 0
	add.d	$a2, $fp, $a1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a2, $a2, $a4
	ld.b	$a2, $a2, 0
	ld.d	$s8, $a0, 160
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s2, $a0, 168
	nor	$a2, $a2, $zero
	stx.b	$a2, $fp, $a1
                                        # implicit-def: $r23
                                        # implicit-def: $r26
                                        # implicit-def: $r24
	bnez	$a3, .LBB11_2
# %bb.1:
	addi.d	$a0, $s2, 2047
	addi.d	$a0, $a0, 1
	srli.d	$s1, $a0, 12
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 12
	sub.w	$a0, $a0, $s1
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.d	$s0, $a2, $a1
	srai.d	$a1, $a0, 63
	and	$s3, $a1, $a0
.LBB11_2:                               # %.lr.ph
	st.h	$zero, $sp, 322
	st.w	$zero, $sp, 318
	addi.d	$a0, $sp, 318
	pcaddu18i	$ra, %call36(gx_color_from_rgb)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 318
	addi.d	$a1, $sp, 280
	addi.d	$s5, $sp, 280
	move	$a2, $s6
	pcaddu18i	$ra, %call36(gx_color_render)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$s4, $s6
	addi.d	$a1, $s6, 8
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.w	$a1, $s1, $s3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $s8, 2047
	addi.d	$s1, $a1, 1
	addi.d	$s6, $sp, 248
	ori	$a7, $zero, 4
	lu12i.w	$a1, 8
	ori	$s3, $a1, 129
	addi.w	$a1, $s0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_3:                               #   in Loop: Header=BB11_5 Depth=1
	move	$s7, $s8
	move	$s0, $a0
	move	$a0, $s6
	move	$s6, $s5
.LBB11_4:                               # %.thread164
                                        #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$s1, $s1, $a1
	move	$s5, $s6
	move	$s6, $a0
	move	$a0, $s0
	move	$s8, $s7
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bltu	$a1, $fp, .LBB11_21
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bne	$a1, $a7, .LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	ld.bu	$a1, $fp, 3
	ld.bu	$a2, $fp, 0
	xori	$a3, $a1, 255
	xori	$a1, $a2, 255
	ld.bu	$a2, $fp, 1
	mul.d	$a1, $a1, $a3
	mul.d	$a1, $a1, $s3
	srli.d	$a1, $a1, 23
	xori	$a2, $a2, 255
	ld.bu	$a4, $fp, 2
	mul.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s3
	srli.d	$a2, $a2, 23
	xori	$a4, $a4, 255
	mul.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $s3
	srli.d	$a3, $a3, 23
	ori	$a4, $zero, 4
	b	.LBB11_8
	.p2align	4, , 16
.LBB11_7:                               #   in Loop: Header=BB11_5 Depth=1
	ld.bu	$a1, $fp, 0
	ld.bu	$a2, $fp, 1
	ld.bu	$a3, $fp, 2
	ori	$a4, $zero, 3
.LBB11_8:                               #   in Loop: Header=BB11_5 Depth=1
	slli.d	$a5, $a3, 16
	slli.d	$a6, $a2, 8
	or	$a5, $a6, $a5
	or	$s0, $a5, $a1
	add.d	$fp, $fp, $a4
	beq	$s0, $a0, .LBB11_3
# %bb.9:                                #   in Loop: Header=BB11_5 Depth=1
	bstrins.d	$a1, $a1, 63, 8
	st.h	$a1, $sp, 318
	bstrins.d	$a2, $a2, 63, 8
	st.h	$a2, $sp, 320
	bstrins.d	$a3, $a3, 63, 8
	st.h	$a3, $sp, 322
	addi.d	$a0, $sp, 318
	pcaddu18i	$ra, %call36(gx_color_from_rgb)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 318
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gx_color_render)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	ld.d	$a1, $sp, 248
	bne	$a0, $a1, .LBB11_15
# %bb.10:                               #   in Loop: Header=BB11_5 Depth=1
	ld.w	$a0, $sp, 296
	ld.w	$a1, $sp, 264
	bne	$a0, $a1, .LBB11_15
# %bb.11:                               #   in Loop: Header=BB11_5 Depth=1
	beqz	$a0, .LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$a1, $sp, 256
	bne	$a0, $a1, .LBB11_15
.LBB11_13:                              #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bltu	$a0, $fp, .LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_5 Depth=1
	move	$s7, $s8
	move	$a0, $s6
	move	$s6, $s5
	b	.LBB11_20
	.p2align	4, , 16
.LBB11_15:                              #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 104
	addi.d	$s7, $s1, -2048
	beqz	$a0, .LBB11_18
# %bb.16:                               #   in Loop: Header=BB11_5 Depth=1
	addi.d	$a0, $sp, 104
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	addi.d	$a5, $a0, -2048
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a6, $a0, $s2
	addi.d	$a0, $sp, 104
	move	$a1, $s8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s2
	pcaddu18i	$ra, %call36(gx_path_add_pgram)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_22
# %bb.17:                               #   in Loop: Header=BB11_5 Depth=1
	addi.w	$a3, $zero, -1
	addi.d	$a0, $sp, 104
	move	$a1, $s5
	move	$a2, $s4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(gx_fill_path)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	b	.LBB11_19
.LBB11_18:                              #   in Loop: Header=BB11_5 Depth=1
	addi.d	$a0, $s8, 2047
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 12
	srli.d	$a1, $s1, 12
	sub.w	$a2, $a1, $a0
	slti	$a3, $a2, 0
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	srai.d	$a1, $a2, 31
	xor	$a2, $a2, $a1
	sub.w	$a2, $a2, $a1
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s4
	pcaddu18i	$ra, %call36(gz_fill_rectangle)
	jirl	$ra, $ra, 0
.LBB11_19:                              # %.thread164
                                        #   in Loop: Header=BB11_5 Depth=1
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s5
.LBB11_20:                              # %.thread164
                                        #   in Loop: Header=BB11_5 Depth=1
	ori	$a7, $zero, 4
	b	.LBB11_4
.LBB11_21:
	ori	$a0, $zero, 1
	b	.LBB11_23
.LBB11_22:
	move	$fp, $a0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB11_23:                              # %.loopexit
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.Lfunc_end11:
	.size	image_render_color, .Lfunc_end11-image_render_color
                                        # -- End function
	.globl	image_render_direct             # -- Begin function image_render_direct
	.p2align	5
	.type	image_render_direct,@function
image_render_direct:                    # @image_render_direct
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
	ld.d	$a4, $a0, 72
	ld.d	$a4, $a4, 448
	ld.d	$a5, $a0, 168
	ld.d	$s6, $a4, 0
	ld.d	$a4, $a0, 48
	move	$s2, $a3
	move	$s0, $a2
	move	$fp, $a1
	ld.d	$t1, $a0, 160
	ld.d	$a2, $s6, 8
	add.d	$a3, $a4, $a5
	srli.d	$a7, $a5, 12
	srli.d	$a3, $a3, 12
	ld.d	$s1, $a2, 72
	ld.d	$s7, $a0, 184
	ldptr.d	$t4, $a0, 8344
	sub.w	$a2, $a3, $a7
	ori	$s4, $zero, 1
	srli.d	$a0, $t1, 12
	bne	$a2, $s4, .LBB12_2
# %bb.1:
	addi.d	$a2, $s0, 7
	bstrpick.d	$a3, $a2, 31, 3
	st.d	$t4, $sp, 8
	addi.w	$a4, $a0, 0
	addi.w	$a5, $a7, 0
	st.d	$s7, $sp, 0
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $zero
	move	$a6, $s0
	move	$a7, $s2
	jirl	$ra, $s1, 0
	move	$s4, $s2
	b	.LBB12_5
.LBB12_2:
	addi.w	$a4, $a3, 0
	addi.w	$a5, $a7, 0
	beq	$a4, $a5, .LBB12_5
# %bb.3:                                # %.lr.ph
	slti	$a4, $a2, 0
	masknez	$a5, $a7, $a4
	maskeqz	$a3, $a3, $a4
	or	$s8, $a3, $a5
	addi.d	$a3, $s0, 7
	bstrpick.d	$a4, $a3, 31, 3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$s5, $a3, $a2
	addi.w	$a2, $a4, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s3, $a0, 0
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	st.d	$t4, $sp, 8
	st.d	$s7, $sp, 0
	addi.w	$a5, $s8, 0
	ori	$a7, $zero, 1
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $zero
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $s3
	move	$a6, $s0
	move	$s2, $t4
	jirl	$ra, $s1, 0
	move	$t4, $s2
	bstrpick.d	$a0, $s5, 31, 0
	addi.d	$s5, $a0, 1
	slli.d	$a0, $s5, 31
	addi.d	$s8, $s8, 1
	bgez	$a0, .LBB12_4
.LBB12_5:                               # %.loopexit
	move	$a0, $s4
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
.Lfunc_end12:
	.size	image_render_direct, .Lfunc_end12-image_render_direct
                                        # -- End function
	.globl	image_render_mono               # -- Begin function image_render_mono
	.p2align	5
	.type	image_render_mono,@function
image_render_mono:                      # @image_render_mono
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a3, $a0, 72
	ld.d	$a0, $a0, 184
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ldptr.d	$a0, $s0, 8344
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a6, $s0, 24
	ld.d	$a0, $a3, 448
	ld.d	$a7, $s0, 32
	ld.d	$a1, $s0, 40
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$t0, $s0, 48
	ld.d	$a0, $a0, 0
	ld.w	$a4, $s0, 100
	ld.d	$s4, $s0, 160
	ld.d	$s8, $s0, 168
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a3, 264
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$t2, $a3, 312
	ld.bu	$s2, $fp, 0
	ld.d	$a0, $a0, 56
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$t1, $a1, 24
	ld.d	$a0, $a1, 32
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$t3, $a1, 40
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	beqz	$a4, .LBB13_4
# %bb.1:
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r5
                                        # implicit-def: $r4
                                        # implicit-def: $r7
                                        # kill: killed $r7
	move	$s5, $s8
.LBB13_2:
	addi.d	$a3, $a2, -1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.b	$a3, $fp, $a3
	nor	$a3, $a3, $zero
	bstrpick.d	$a4, $a2, 31, 0
	stx.b	$a3, $fp, $a4
	ori	$a3, $zero, 257
	st.h	$a3, $sp, 358
	ori	$s1, $zero, 1
	bltz	$a2, .LBB13_57
# %bb.3:                                # %.lr.ph
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a3, $s0, 184
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s3, $a2, 1
	addi.d	$a0, $s4, 2047
	addi.d	$s1, $a0, 1
	addi.w	$s7, $zero, -2
	lu32i.d	$s7, 0
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	b	.LBB13_15
.LBB13_4:
	addi.d	$a0, $s8, 2047
	addi.d	$a3, $a0, 1
	add.d	$a4, $a3, $t0
	srli.d	$a0, $a3, 12
	srli.d	$a1, $a4, 12
	sub.w	$a1, $a1, $a0
	blez	$a1, .LBB13_58
# %bb.5:
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $zero
.LBB13_6:
	lu12i.w	$a5, -1
	and	$a4, $a4, $a5
	and	$s5, $a3, $a5
	ori	$s1, $zero, 1
	blez	$t0, .LBB13_60
# %bb.7:
	bge	$s5, $t3, .LBB13_57
# %bb.8:
	blt	$t1, $a4, .LBB13_62
	b	.LBB13_57
.LBB13_9:                               #   in Loop: Header=BB13_15 Depth=1
	addi.d	$a0, $sp, 200
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 200
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s5
	move	$a5, $s8
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_add_pgram)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_63
.LBB13_10:                              #   in Loop: Header=BB13_15 Depth=1
	addi.w	$a3, $zero, -1
	addi.d	$a0, $sp, 200
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(gx_fill_path)
	jirl	$ra, $ra, 0
.LBB13_11:                              #   in Loop: Header=BB13_15 Depth=1
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
.LBB13_12:                              #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
.LBB13_13:                              #   in Loop: Header=BB13_15 Depth=1
	ld.bu	$s2, $fp, 0
	move	$s8, $s5
	move	$s4, $s6
.LBB13_14:                              #   in Loop: Header=BB13_15 Depth=1
	addi.d	$fp, $fp, 1
	add.d	$s5, $s5, $a7
	addi.w	$s3, $s3, -1
	add.d	$s1, $s1, $a6
	beqz	$s3, .LBB13_56
.LBB13_15:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 0
	beq	$s2, $a0, .LBB13_14
# %bb.16:                               #   in Loop: Header=BB13_15 Depth=1
	ld.w	$a0, $s0, 104
	addi.d	$s6, $s1, -2048
	beqz	$a0, .LBB13_21
# %bb.17:                               #   in Loop: Header=BB13_15 Depth=1
	beq	$s2, $s7, .LBB13_37
# %bb.18:                               #   in Loop: Header=BB13_15 Depth=1
	beqz	$s2, .LBB13_29
# %bb.19:                               #   in Loop: Header=BB13_15 Depth=1
	ori	$s7, $zero, 255
	bne	$s2, $s7, .LBB13_30
# %bb.20:                               #   in Loop: Header=BB13_15 Depth=1
	addi.w	$a0, $zero, -1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB13_13
	b	.LBB13_30
.LBB13_21:                              #   in Loop: Header=BB13_15 Depth=1
	addi.d	$a0, $s4, 2047
	addi.d	$a0, $a0, 1
	srli.d	$s8, $a0, 12
	srli.d	$a0, $s1, 12
	sub.w	$s4, $a0, $s8
	bgtz	$s4, .LBB13_24
# %bb.22:                               #   in Loop: Header=BB13_15 Depth=1
	beqz	$s4, .LBB13_13
# %bb.23:                               #   in Loop: Header=BB13_15 Depth=1
	sub.w	$s4, $zero, $s4
	move	$s8, $a0
.LBB13_24:                              #   in Loop: Header=BB13_15 Depth=1
	andi	$a0, $s2, 255
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB13_27
# %bb.25:                               #   in Loop: Header=BB13_15 Depth=1
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB13_32
# %bb.26:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
.LBB13_27:                              #   in Loop: Header=BB13_15 Depth=1
	addi.w	$a0, $zero, -1
	beq	$a5, $a0, .LBB13_13
# %bb.28:                               #   in Loop: Header=BB13_15 Depth=1
	addi.w	$a1, $s8, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB13_13
.LBB13_29:                              #   in Loop: Header=BB13_15 Depth=1
	addi.w	$a0, $zero, -1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB13_50
.LBB13_30:                              #   in Loop: Header=BB13_15 Depth=1
	slli.d	$a0, $s2, 5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.w	$a0, $a1, 16
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	bltz	$a0, .LBB13_35
# %bb.31:                               #   in Loop: Header=BB13_15 Depth=1
	move	$a0, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_color_load)
	jirl	$ra, $ra, 0
	b	.LBB13_36
.LBB13_32:                              #   in Loop: Header=BB13_15 Depth=1
	beq	$s2, $s7, .LBB13_55
# %bb.33:                               #   in Loop: Header=BB13_15 Depth=1
	slli.d	$a0, $s2, 5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.w	$a0, $a1, 16
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	bltz	$a0, .LBB13_53
# %bb.34:                               #   in Loop: Header=BB13_15 Depth=1
	move	$a0, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_color_load)
	jirl	$ra, $ra, 0
	b	.LBB13_54
.LBB13_35:                              #   in Loop: Header=BB13_15 Depth=1
	slli.d	$a0, $s2, 8
	add.d	$a0, $a0, $s2
	st.h	$a0, $sp, 354
	st.h	$a0, $sp, 352
	st.h	$a0, $sp, 350
	st.h	$a0, $sp, 356
	addi.d	$a0, $sp, 350
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_color_render)
	jirl	$ra, $ra, 0
.LBB13_36:                              #   in Loop: Header=BB13_15 Depth=1
	move	$s7, $s2
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
.LBB13_37:                              #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB13_45
# %bb.38:                               # %.thread240
                                        #   in Loop: Header=BB13_15 Depth=1
	addi.d	$a0, $sp, 200
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	addi.d	$a5, $a0, -2048
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a6, $a0, $s5
	addi.d	$a0, $sp, 200
	move	$a1, $s4
	move	$a2, $s8
	move	$a3, $s6
	move	$a4, $s5
	pcaddu18i	$ra, %call36(gx_path_add_pgram)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_63
# %bb.39:                               # %.thread245
                                        #   in Loop: Header=BB13_15 Depth=1
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB13_11
# %bb.40:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a1, $sp, 168
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bge	$a1, $a2, .LBB13_11
# %bb.41:                               #   in Loop: Header=BB13_15 Depth=1
	ori	$a2, $zero, 2048
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 12
	addi.w	$a1, $a1, 0
	add.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 12
	addi.w	$a0, $a0, 0
	beq	$a1, $a0, .LBB13_11
# %bb.42:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a0, $sp, 192
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB13_11
# %bb.43:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a1, $sp, 176
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bge	$a1, $a2, .LBB13_11
# %bb.44:                               #   in Loop: Header=BB13_15 Depth=1
	ori	$a2, $zero, 2048
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 12
	addi.w	$a1, $a1, 0
	add.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 12
	addi.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB13_10
	b	.LBB13_11
.LBB13_45:                              #   in Loop: Header=BB13_15 Depth=1
	lu12i.w	$a1, -1
	and	$s8, $s1, $a1
	addi.d	$a0, $s4, 2047
	addi.d	$a0, $a0, 1
	and	$s4, $a0, $a1
	bne	$s4, $s8, .LBB13_47
# %bb.46:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB13_13
.LBB13_47:                              #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	bltz	$a6, .LBB13_51
# %bb.48:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB13_13
# %bb.49:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s8, .LBB13_9
	b	.LBB13_13
.LBB13_50:                              #   in Loop: Header=BB13_15 Depth=1
	move	$s7, $zero
	b	.LBB13_13
.LBB13_51:                              #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$s8, $a0, .LBB13_13
# %bb.52:                               #   in Loop: Header=BB13_15 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB13_9
	b	.LBB13_13
.LBB13_53:                              #   in Loop: Header=BB13_15 Depth=1
	slli.d	$a0, $s2, 8
	add.d	$a0, $a0, $s2
	st.h	$a0, $sp, 354
	st.h	$a0, $sp, 352
	st.h	$a0, $sp, 350
	st.h	$a0, $sp, 356
	addi.d	$a0, $sp, 350
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_color_render)
	jirl	$ra, $ra, 0
.LBB13_54:                              #   in Loop: Header=BB13_15 Depth=1
	move	$s7, $s2
.LBB13_55:                              #   in Loop: Header=BB13_15 Depth=1
	addi.w	$a0, $s8, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a3, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gz_fill_rectangle)
	jirl	$ra, $ra, 0
	b	.LBB13_12
.LBB13_56:
	ori	$s1, $zero, 1
.LBB13_57:                              # %.loopexit
	move	$a0, $s1
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB13_58:
	ori	$s1, $zero, 1
	bgez	$a1, .LBB13_57
# %bb.59:
	sub.d	$a5, $zero, $a1
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB13_6
.LBB13_60:
	bge	$a4, $t3, .LBB13_57
# %bb.61:
	bge	$t1, $s5, .LBB13_57
.LBB13_62:
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	b	.LBB13_2
.LBB13_63:
	move	$s1, $a0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	b	.LBB13_57
.Lfunc_end13:
	.size	image_render_mono, .Lfunc_end13-image_render_mono
                                        # -- End function
	.globl	gs_image_next                   # -- Begin function gs_image_next
	.p2align	5
	.type	gs_image_next,@function
gs_image_next:                          # @gs_image_next
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
	move	$fp, $a0
	ld.w	$s2, $a0, 92
	ld.w	$s4, $a0, 152
	ld.w	$a0, $a0, 144
	ld.w	$a3, $fp, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a2
	beqz	$a0, .LBB14_3
# %bb.1:
	ld.w	$a2, $fp, 148
	beq	$s0, $a2, .LBB14_4
# %bb.2:
	addi.w	$a0, $zero, -23
	b	.LBB14_20
.LBB14_3:
	st.w	$s0, $fp, 148
.LBB14_4:
	ld.w	$a2, $fp, 16
	alsl.d	$a3, $a0, $fp, 3
	st.d	$a1, $a3, 112
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 144
	bne	$a0, $a2, .LBB14_16
# %bb.5:
	st.w	$zero, $fp, 144
	beqz	$s0, .LBB14_17
# %bb.6:                                # %.lr.ph91
	move	$s5, $zero
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_7:                               #   in Loop: Header=BB14_9 Depth=1
	vld	$vr0, $fp, 40
	vld	$vr1, $fp, 160
	move	$s4, $zero
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $fp, 160
.LBB14_8:                               #   in Loop: Header=BB14_9 Depth=1
	sub.w	$s0, $s0, $s1
	add.w	$s5, $s1, $s5
	beqz	$s0, .LBB14_17
.LBB14_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
	sub.w	$a1, $s2, $s4
	ld.w	$a0, $fp, 16
	sltu	$a2, $s0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$s1, $a2, $a1
	blez	$a0, .LBB14_12
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB14_9 Depth=1
	ld.w	$a1, $fp, 8
	move	$s7, $zero
	ld.d	$a2, $fp, 80
	ori	$a3, $zero, 3
	sub.d	$a1, $a3, $a1
	sll.w	$a1, $s4, $a1
	mul.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s8, $a2, $a0
	bstrpick.d	$s6, $s5, 31, 0
	ori	$s3, $zero, 112
	.p2align	4, , 16
.LBB14_11:                              #   Parent Loop BB14_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $fp, $s3
	ld.d	$a4, $fp, 56
	add.d	$a1, $s8, $s7
	add.d	$a2, $a0, $s6
	move	$a0, $fp
	move	$a3, $s1
	jirl	$ra, $a4, 0
	ld.w	$a0, $fp, 16
	addi.d	$s7, $s7, 1
	addi.d	$s3, $s3, 8
	blt	$s7, $a0, .LBB14_11
.LBB14_12:                              # %._crit_edge
                                        #   in Loop: Header=BB14_9 Depth=1
	add.w	$s4, $s1, $s4
	bne	$s4, $s2, .LBB14_8
# %bb.13:                               #   in Loop: Header=BB14_9 Depth=1
	ld.d	$a4, $fp, 64
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 80
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	mul.w	$a2, $a0, $a2
	ori	$a3, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	bltz	$a0, .LBB14_18
# %bb.14:                               #   in Loop: Header=BB14_9 Depth=1
	ld.w	$a0, $fp, 176
	ld.w	$a1, $fp, 4
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 176
	bne	$a0, $a1, .LBB14_7
# %bb.15:
	ori	$s0, $zero, 1
	b	.LBB14_19
.LBB14_16:
	move	$a0, $zero
	b	.LBB14_20
.LBB14_17:                              # %._crit_edge92
	move	$a0, $zero
	st.w	$s4, $fp, 152
	b	.LBB14_20
.LBB14_18:
	move	$s0, $a0
.LBB14_19:                              # %.thread80
	ld.d	$a0, $fp, 80
	ld.w	$a1, $fp, 88
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a3, $a2, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(gs_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB14_20:
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
.Lfunc_end14:
	.size	gs_image_next, .Lfunc_end14-gs_image_next
                                        # -- End function
	.type	gs_image_enum_sizeof,@object    # @gs_image_enum_sizeof
	.data
	.globl	gs_image_enum_sizeof
	.p2align	2, 0x0
gs_image_enum_sizeof:
	.word	8376                            # 0x20b8
	.size	gs_image_enum_sizeof, 4

	.type	map_4_to_32,@object             # @map_4_to_32
	.globl	map_4_to_32
	.p2align	2, 0x0
map_4_to_32:
	.word	0                               # 0x0
	.word	4278190080                      # 0xff000000
	.word	16711680                        # 0xff0000
	.word	4294901760                      # 0xffff0000
	.word	65280                           # 0xff00
	.word	4278255360                      # 0xff00ff00
	.word	16776960                        # 0xffff00
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4278190335                      # 0xff0000ff
	.word	16711935                        # 0xff00ff
	.word	4294902015                      # 0xffff00ff
	.word	65535                           # 0xffff
	.word	4278255615                      # 0xff00ffff
	.word	16777215                        # 0xffffff
	.word	4294967295                      # 0xffffffff
	.size	map_4_to_32, 64

	.type	map_4_to_16,@object             # @map_4_to_16
	.globl	map_4_to_16
	.p2align	1, 0x0
map_4_to_16:
	.half	0                               # 0x0
	.half	21760                           # 0x5500
	.half	43520                           # 0xaa00
	.half	65280                           # 0xff00
	.half	85                              # 0x55
	.half	21845                           # 0x5555
	.half	43605                           # 0xaa55
	.half	65365                           # 0xff55
	.half	170                             # 0xaa
	.half	21930                           # 0x55aa
	.half	43690                           # 0xaaaa
	.half	65450                           # 0xffaa
	.half	255                             # 0xff
	.half	22015                           # 0x55ff
	.half	43775                           # 0xaaff
	.half	65535                           # 0xffff
	.size	map_4_to_16, 32

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image buffer"
	.size	.L.str, 13

	.type	image_init.procs,@object        # @image_init.procs
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
image_init.procs:
	.dword	image_unpack_0
	.dword	image_unpack_1
	.dword	image_unpack_2
	.dword	image_unpack_3
	.size	image_init.procs, 32

	.type	image_init.spread_procs,@object # @image_init.spread_procs
	.p2align	3, 0x0
image_init.spread_procs:
	.dword	image_unpack_0_spread
	.dword	image_unpack_1_spread
	.dword	image_unpack_2
	.dword	image_unpack_3_spread
	.size	image_init.spread_procs, 32

	.type	.Lswitch.table.gs_image_init,@object # @switch.table.gs_image_init
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.Lswitch.table.gs_image_init:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.space	4
	.word	2                               # 0x2
	.space	4
	.space	4
	.space	4
	.word	3                               # 0x3
	.size	.Lswitch.table.gs_image_init, 32

	.type	.Lswitch.table.gs_image_init.1,@object # @switch.table.gs_image_init.1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.gs_image_init.1:
	.word	4                               # 0x4
	.word	3                               # 0x3
	.space	4
	.space	4
	.space	4
	.word	1                               # 0x1
	.space	4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.size	.Lswitch.table.gs_image_init.1, 36

	.type	.Lswitch.table.gs_image_init.2,@object # @switch.table.gs_image_init.2
	.p2align	2, 0x0
.Lswitch.table.gs_image_init.2:
	.word	4                               # 0x4
	.word	3                               # 0x3
	.space	4
	.space	4
	.space	4
	.word	1                               # 0x1
	.space	4
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.Lswitch.table.gs_image_init.2, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym image_unpack_0
	.addrsig_sym image_unpack_1
	.addrsig_sym image_unpack_2
	.addrsig_sym image_unpack_3
	.addrsig_sym image_unpack_0_spread
	.addrsig_sym image_unpack_1_spread
	.addrsig_sym image_unpack_3_spread
	.addrsig_sym image_render_skip
	.addrsig_sym image_render_color
	.addrsig_sym image_render_direct
	.addrsig_sym image_render_mono
