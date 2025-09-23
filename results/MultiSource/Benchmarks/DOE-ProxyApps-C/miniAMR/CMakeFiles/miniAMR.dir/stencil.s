	.file	"stencil.c"
	.text
	.globl	stencil_calc                    # -- Begin function stencil_calc
	.p2align	5
	.type	stencil_calc,@function
stencil_calc:                           # @stencil_calc
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 280                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 384
	pcalau12i	$a1, %pc_hi20(x_block_size)
	ld.w	$a1, $a1, %pc_lo12(x_block_size)
	st.d	$a0, $fp, -344                  # 8-byte Folded Spill
	st.d	$a1, $fp, -256                  # 8-byte Folded Spill
	addi.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.wu	$a1, $a1, %pc_lo12(y_block_size)
	bstrpick.d	$a2, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.wu	$a3, $a0, %pc_lo12(z_block_size)
	addi.w	$a0, $a1, 0
	st.d	$a0, $fp, -320                  # 8-byte Folded Spill
	st.d	$a1, $fp, -280                  # 8-byte Folded Spill
	addi.d	$a4, $a1, 2
	bstrpick.d	$a1, $a4, 31, 0
	addi.w	$a0, $a3, 0
	st.d	$a0, $fp, -328                  # 8-byte Folded Spill
	addi.d	$a5, $a3, 2
	bstrpick.d	$a0, $a5, 31, 0
	mulw.d.wu	$a4, $a5, $a4
	mul.d	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	addi.d	$a2, $a2, 15
	bstrins.d	$a2, $zero, 3, 0
	sub.d	$t3, $sp, $a2
	move	$sp, $t3
	pcalau12i	$a4, %pc_hi20(sorted_index)
	ld.d	$a4, $a4, %pc_lo12(sorted_index)
	pcalau12i	$a5, %pc_hi20(num_refine)
	ld.w	$a5, $a5, %pc_lo12(num_refine)
	pcalau12i	$a6, %pc_hi20(stencil)
	ld.w	$a6, $a6, %pc_lo12(stencil)
	alsl.d	$a4, $a5, $a4, 2
	ld.w	$a5, $a4, 4
	ori	$a4, $zero, 7
	st.d	$a5, $fp, -304                  # 8-byte Folded Spill
	bne	$a6, $a4, .LBB0_24
# %bb.1:                                # %.preheader255
	blez	$a5, .LBB0_57
# %bb.2:                                # %.lr.ph313
	move	$t2, $zero
	pcalau12i	$a4, %pc_hi20(sorted_list)
	ld.d	$a4, $a4, %pc_lo12(sorted_list)
	st.d	$a4, $fp, -200                  # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	st.d	$a4, $fp, -192                  # 8-byte Folded Spill
	ld.d	$t0, $fp, -256                  # 8-byte Folded Reload
	slti	$a4, $t0, 1
	ld.d	$a7, $fp, -320                  # 8-byte Folded Reload
	slti	$a5, $a7, 1
	ld.d	$t1, $fp, -328                  # 8-byte Folded Reload
	slti	$a6, $t1, 1
	addi.w	$s5, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	slli.d	$a2, $a3, 3
	bstrpick.d	$a3, $t0, 31, 0
	st.d	$a3, $fp, -160                  # 8-byte Folded Spill
	bstrpick.d	$s7, $s5, 31, 0
	addi.d	$a3, $s7, -1
	bstrpick.d	$s3, $a7, 31, 0
	move	$s4, $a3
	bstrins.d	$s4, $zero, 0, 0
	st.d	$a3, $fp, -120                  # 8-byte Folded Spill
	ori	$a3, $a3, 1
	st.d	$a3, $fp, -128                  # 8-byte Folded Spill
	or	$a3, $a4, $a5
	or	$a3, $a3, $a6
	st.d	$a3, $fp, -216                  # 8-byte Folded Spill
	slli.d	$a3, $a1, 3
	addi.d	$a3, $a3, 8
	mul.d	$a3, $a3, $a0
	add.d	$a3, $t3, $a3
	st.d	$a3, $fp, -224                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -208                  # 8-byte Folded Spill
	mul.d	$a1, $a0, $a1
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -144                  # 8-byte Folded Spill
	slli.d	$s6, $a0, 3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -262144
	lu52i.d	$a0, $a0, 1025
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, -240                 # 16-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t2, $fp, -184                  # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $fp, -304                  # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_57
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_22 Depth 3
	st.d	$t2, $fp, -184                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -200                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -192                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -256                  # 8-byte Folded Reload
	blez	$a1, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -320                  # 8-byte Folded Reload
	blez	$a1, .LBB0_3
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -328                  # 8-byte Folded Reload
	blez	$a1, .LBB0_3
# %bb.8:                                # %.preheader252.lr.ph.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s0, $a2
	ld.d	$a1, $fp, -192                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -168                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -344                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -176                  # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -152                  # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ld.d	$t1, $fp, -224                  # 8-byte Folded Reload
	ld.d	$a4, $fp, -208                  # 8-byte Folded Reload
	vld	$vr5, $fp, -240                 # 16-byte Folded Reload
	vldi	$vr6, -996
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge294.split
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$a3, $a3, 1
	ld.d	$a0, $fp, -144                  # 8-byte Folded Reload
	add.d	$a4, $a4, $a0
	ld.d	$t1, $fp, -136                  # 8-byte Folded Reload
	add.d	$t1, $t1, $a0
	ld.d	$a0, $fp, -160                  # 8-byte Folded Reload
	beq	$a3, $a0, .LBB0_19
.LBB0_10:                               # %.preheader252
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	ld.d	$a2, $fp, -152                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a2, 3
	slli.d	$a1, $a3, 3
	ld.d	$a6, $a0, -8
	ldx.d	$a7, $a2, $a1
	ld.d	$t0, $a0, 8
	st.d	$t1, $fp, -136                  # 8-byte Folded Spill
	move	$a5, $a4
	ori	$t3, $zero, 1
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %._crit_edge291
                                        #   in Loop: Header=BB0_12 Depth=3
	addi.d	$t3, $t3, 1
	add.d	$a5, $a5, $s6
	add.d	$t1, $t1, $s6
	beq	$t3, $s3, .LBB0_9
.LBB0_12:                               # %.preheader250
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	slli.d	$a0, $t3, 3
	ldx.d	$t4, $a6, $a0
	alsl.d	$a1, $t3, $a7, 3
	ldx.d	$t5, $a7, $a0
	ld.d	$t6, $a1, -8
	ld.d	$t7, $a1, 8
	ldx.d	$t8, $t0, $a0
	fld.d	$fa0, $t5, 8
	ori	$s1, $zero, 1
	ori	$a0, $zero, 3
	bltu	$s5, $a0, .LBB0_17
# %bb.13:                               # %vector.ph539
                                        #   in Loop: Header=BB0_12 Depth=3
	vextrins.d	$vr0, $vr0, 16
	addi.d	$s2, $t5, 16
	addi.d	$ra, $t4, 8
	addi.d	$a0, $t6, 8
	addi.d	$a1, $t7, 8
	addi.d	$a2, $t8, 8
	move	$s8, $s4
	move	$t2, $a5
	.p2align	4, , 16
.LBB0_14:                               # %vector.body542
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vori.b	$vr1, $vr0, 0
	vld	$vr2, $ra, 0
	vld	$vr3, $a0, 0
	vld	$vr4, $s2, -16
	vld	$vr0, $s2, 0
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vshuf4i.d	$vr1, $vr0, 9
	vld	$vr3, $a1, 0
	vld	$vr4, $a2, 0
	vfadd.d	$vr1, $vr2, $vr1
	vfadd.d	$vr1, $vr1, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr1, $vr1, $vr4
	vfdiv.d	$vr1, $vr1, $vr5
	vst	$vr1, $t2, 0
	addi.d	$s2, $s2, 16
	addi.d	$ra, $ra, 16
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$s8, $s8, -2
	addi.d	$t2, $t2, 16
	bnez	$s8, .LBB0_14
# %bb.15:                               # %middle.block554
                                        #   in Loop: Header=BB0_12 Depth=3
	ld.d	$a0, $fp, -120                  # 8-byte Folded Reload
	beq	$a0, $s4, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=3
	vreplvei.d	$vr0, $vr0, 1
	ld.d	$s1, $fp, -128                  # 8-byte Folded Reload
.LBB0_17:                               # %scalar.ph537.preheader
                                        #   in Loop: Header=BB0_12 Depth=3
	alsl.d	$s2, $s1, $t1, 3
	alsl.d	$a0, $s1, $t8, 3
	alsl.d	$a1, $s1, $t7, 3
	alsl.d	$a2, $s1, $t6, 3
	alsl.d	$t4, $s1, $t4, 3
	alsl.d	$t2, $s1, $t5, 3
	addi.d	$t2, $t2, 8
	sub.d	$t5, $s7, $s1
	.p2align	4, , 16
.LBB0_18:                               # %scalar.ph537
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $t4, 0
	fld.d	$fa2, $a2, 0
	fld.d	$fa3, $t2, -16
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa0
	fld.d	$fa0, $t2, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, 0
	fadd.d	$fa1, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fdiv.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $s2, 0
	addi.d	$s2, $s2, 8
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, -1
	addi.d	$t2, $t2, 8
	bnez	$t5, .LBB0_18
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_19:                               # %.preheader253
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $s0
	ld.d	$a0, $fp, -216                  # 8-byte Folded Reload
	bnez	$a0, .LBB0_3
# %bb.20:                               # %.preheader251.lr.ph.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $fp, -168                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -176                  # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -176                  # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a3, $zero, 1
	ld.d	$s2, $fp, -208                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_21:                               # %.preheader251
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
	st.d	$a1, $fp, -136                  # 8-byte Folded Spill
	st.d	$a3, $fp, -152                  # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	ld.d	$a1, $fp, -176                  # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$s1, $a0, 8
	ld.d	$s8, $fp, -280                  # 8-byte Folded Reload
	st.d	$s2, $fp, -168                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_22:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	addi.d	$s1, $s1, 8
	addi.d	$s8, $s8, -1
	add.d	$s2, $s2, $s6
	bnez	$s8, .LBB0_22
# %bb.23:                               # %._crit_edge306.split
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.d	$a3, $fp, -152                  # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a1, $fp, -136                  # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $fp, -144                  # 8-byte Folded Reload
	ld.d	$s2, $fp, -168                  # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a0, $fp, -256                  # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_21
	b	.LBB0_3
.LBB0_24:                               # %.preheader264
	blez	$a5, .LBB0_57
# %bb.25:                               # %.lr.ph
	move	$t2, $zero
	pcalau12i	$a4, %pc_hi20(sorted_list)
	ld.d	$a4, $a4, %pc_lo12(sorted_list)
	st.d	$a4, $fp, -352                  # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	st.d	$a4, $fp, -336                  # 8-byte Folded Spill
	ld.d	$t0, $fp, -256                  # 8-byte Folded Reload
	slti	$a4, $t0, 1
	ld.d	$a7, $fp, -320                  # 8-byte Folded Reload
	slti	$a5, $a7, 1
	ld.d	$t1, $fp, -328                  # 8-byte Folded Reload
	slti	$a6, $t1, 1
	addi.w	$t1, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	slli.d	$a2, $a3, 3
	bstrpick.d	$a3, $t0, 31, 0
	st.d	$a3, $fp, -288                  # 8-byte Folded Spill
	bstrpick.d	$t0, $a7, 31, 0
	st.d	$t1, $fp, -144                  # 8-byte Folded Spill
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$a3, $a1, 3
	addi.d	$a3, $a3, 8
	mul.d	$a3, $a3, $a0
	mul.d	$a7, $a0, $a1
	slli.d	$t4, $a7, 3
	st.d	$t0, $fp, -152                  # 8-byte Folded Spill
	add.d	$a1, $a1, $t0
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, -8
	mul.d	$a1, $a1, $a0
	slli.d	$a7, $t1, 3
	addi.d	$s4, $a7, 8
	addi.d	$a7, $t1, -1
	add.d	$a3, $t3, $a3
	st.d	$a3, $fp, -376                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -264                  # 8-byte Folded Spill
	add.d	$a1, $t3, $a1
	st.d	$t1, $fp, -168                  # 8-byte Folded Spill
	alsl.d	$a1, $t1, $a1, 3
	st.d	$a1, $fp, -296                  # 8-byte Folded Spill
	move	$a1, $a7
	bstrins.d	$a1, $zero, 0, 0
	st.d	$a1, $fp, -184                  # 8-byte Folded Spill
	st.d	$a7, $fp, -192                  # 8-byte Folded Spill
	ori	$a1, $a7, 1
	st.d	$a1, $fp, -200                  # 8-byte Folded Spill
	or	$a1, $a4, $a5
	or	$a1, $a1, $a6
	st.d	$a1, $fp, -384                  # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $fp, -160                  # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -327680
	lu52i.d	$s1, $a0, 1027
	st.d	$a2, $fp, -176                  # 8-byte Folded Spill
	st.d	$t4, $fp, -248                  # 8-byte Folded Spill
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %.loopexit262
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$t2, $fp, -312                  # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $fp, -304                  # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_57
.LBB0_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_55 Depth 3
	st.d	$t2, $fp, -312                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -352                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -336                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -256                  # 8-byte Folded Reload
	blez	$a1, .LBB0_26
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -320                  # 8-byte Folded Reload
	blez	$a1, .LBB0_26
# %bb.30:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -328                  # 8-byte Folded Reload
	blez	$a1, .LBB0_26
# %bb.31:                               # %.preheader260.lr.ph.split.split
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -336                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -360                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -344                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -368                  # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -272                  # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a3, $zero, 1
	ld.d	$t2, $fp, -376                  # 8-byte Folded Reload
	ld.d	$ra, $fp, -264                  # 8-byte Folded Reload
	vldi	$vr25, -965
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %._crit_edge270.split
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a3, $fp, -216                  # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a1, $fp, -208                  # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$t4, $fp, -248                  # 8-byte Folded Reload
	ld.d	$ra, $fp, -240                  # 8-byte Folded Reload
	add.d	$ra, $ra, $t4
	ld.d	$t2, $fp, -224                  # 8-byte Folded Reload
	add.d	$t2, $t2, $t4
	ld.d	$a0, $fp, -288                  # 8-byte Folded Reload
	beq	$a3, $a0, .LBB0_52
.LBB0_33:                               # %.preheader260
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
	st.d	$a1, $fp, -208                  # 8-byte Folded Spill
	mul.d	$a0, $t4, $a1
	ld.d	$a1, $fp, -264                  # 8-byte Folded Reload
	add.d	$a7, $a1, $a0
	ld.d	$a1, $fp, -296                  # 8-byte Folded Reload
	add.d	$t0, $a1, $a0
	ld.d	$a2, $fp, -272                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a2, 3
	ld.d	$a4, $a0, -8
	st.d	$a3, $fp, -216                  # 8-byte Folded Spill
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $a2, $a1
	ld.d	$a0, $a0, 8
	ld.d	$t6, $a4, 0
	st.d	$a4, $fp, -120                  # 8-byte Folded Spill
	ld.d	$t5, $a4, 8
	ld.d	$t7, $a1, 8
	st.d	$a1, $fp, -128                  # 8-byte Folded Spill
	ld.d	$s2, $a1, 0
	ld.d	$t4, $a0, 8
	vld	$vr0, $t5, 0
	vld	$vr1, $t7, 0
	st.d	$a0, $fp, -136                  # 8-byte Folded Spill
	ld.d	$a3, $a0, 0
	fld.d	$fa7, $t4, 0
	fld.d	$fa5, $t4, 8
	vpackod.d	$vr4, $vr1, $vr0
	vpackev.d	$vr6, $vr1, $vr0
	st.d	$t2, $fp, -224                  # 8-byte Folded Spill
	st.d	$ra, $fp, -240                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge
                                        #   in Loop: Header=BB0_35 Depth=3
	ld.d	$s8, $fp, -160                  # 8-byte Folded Reload
	add.d	$ra, $ra, $s8
	add.d	$t2, $t2, $s8
	fmov.d	$fa5, $fa3
	fmov.d	$fa7, $fa2
	move	$a3, $a5
	move	$s2, $a2
	move	$t6, $a1
	vori.b	$vr4, $vr0, 0
	vori.b	$vr6, $vr1, 0
	ld.d	$a1, $fp, -152                  # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_32
.LBB0_35:                               # %.preheader258
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
	move	$a1, $t5
	move	$a2, $t7
	addi.d	$a0, $a0, 1
	slli.d	$a4, $a0, 3
	ld.d	$a5, $fp, -120                  # 8-byte Folded Reload
	ldx.d	$t5, $a5, $a4
	ld.d	$a5, $fp, -128                  # 8-byte Folded Reload
	ldx.d	$t7, $a5, $a4
	move	$a5, $t4
	ld.d	$a6, $fp, -136                  # 8-byte Folded Reload
	ldx.d	$t4, $a6, $a4
	vld	$vr10, $t5, 0
	vld	$vr11, $t7, 0
	fld.d	$fa2, $t4, 0
	fld.d	$fa3, $t4, 8
	vpackod.d	$vr0, $vr11, $vr10
	vpackev.d	$vr1, $vr11, $vr10
	ori	$s3, $zero, 1
	ld.d	$a4, $fp, -144                  # 8-byte Folded Reload
	ori	$a6, $zero, 3
	bgeu	$a4, $a6, .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_35 Depth=3
	fmov.d	$ft0, $fa3
	fmov.d	$ft1, $fa2
	vori.b	$vr10, $vr1, 0
	vori.b	$vr12, $vr0, 0
.LBB0_37:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_35 Depth=3
	slli.d	$a4, $s3, 3
	addi.d	$a6, $a1, 8
	ld.d	$t1, $fp, -168                  # 8-byte Folded Reload
	sub.d	$s0, $t1, $s3
	addi.d	$s3, $t4, 8
	addi.d	$s5, $a5, 8
	addi.d	$a3, $a3, 8
	addi.d	$s6, $t7, 8
	addi.d	$s7, $a2, 8
	addi.d	$t1, $t5, 8
	move	$t8, $t2
	.p2align	4, , 16
.LBB0_38:                               # %scalar.ph
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t3, $t6, $a4
	add.d	$s8, $s2, $a4
	vld	$vr11, $t3, -8
	vld	$vr13, $s8, -8
	fld.d	$ft6, $t3, 8
	fld.d	$ft7, $s8, 8
	vpackev.d	$vr16, $vr13, $vr11
	vpackod.d	$vr11, $vr13, $vr11
	vfadd.d	$vr11, $vr16, $vr11
	vextrins.d	$vr14, $vr15, 16
	vfadd.d	$vr11, $vr11, $vr14
	vfadd.d	$vr6, $vr11, $vr6
	vfadd.d	$vr6, $vr6, $vr4
	add.d	$t3, $a3, $a4
	fld.d	$ft5, $t3, -16
	fld.d	$ft6, $t3, -8
	fldx.d	$ft7, $a3, $a4
	fldx.d	$ft3, $a6, $a4
	fldx.d	$ft8, $s7, $a4
	fadd.d	$ft5, $ft5, $ft6
	fadd.d	$ft5, $ft5, $ft7
	fadd.d	$fa7, $ft5, $fa7
	fmov.d	$ft6, $fa5
	vextrins.d	$vr11, $vr16, 16
	vfadd.d	$vr5, $vr6, $vr11
	vfadd.d	$vr6, $vr5, $vr10
	fadd.d	$fa7, $fa7, $ft6
	fldx.d	$fa5, $s5, $a4
	vfadd.d	$vr15, $vr6, $vr12
	fldx.d	$ft5, $t1, $a4
	fldx.d	$ft8, $s6, $a4
	fadd.d	$fa6, $fa7, $fa5
	fadd.d	$fa6, $fa6, $ft1
	fmov.d	$fa7, $ft0
	fldx.d	$ft0, $s3, $a4
	fadd.d	$ft9, $fa6, $fa7
	fmov.d	$ft1, $fa7
	fmov.d	$fa7, $ft6
	vori.b	$vr6, $vr4, 0
	vori.b	$vr10, $vr12, 0
	vextrins.d	$vr13, $vr16, 16
	vfadd.d	$vr4, $vr15, $vr13
	fadd.d	$ft4, $ft9, $ft0
	vreplvei.d	$vr14, $vr4, 1
	vfadd.d	$vr4, $vr4, $vr14
	vreplvei.d	$vr4, $vr4, 0
	fadd.d	$fa4, $fa4, $ft4
	fdiv.d	$fa4, $fa4, $fs1
	fstx.d	$fa4, $t8, $a4
	addi.d	$t6, $t6, 8
	addi.d	$s2, $s2, 8
	addi.d	$t8, $t8, 8
	addi.d	$a6, $a6, 8
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	addi.d	$s5, $s5, 8
	addi.d	$a3, $a3, 8
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	addi.d	$t1, $t1, 8
	vori.b	$vr4, $vr11, 0
	vori.b	$vr12, $vr13, 0
	bnez	$s0, .LBB0_38
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_39:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$a6, $a1, 16
	add.d	$a4, $a1, $s4
	sltu	$a4, $a7, $a4
	sltu	$t1, $a6, $t0
	and	$a4, $a4, $t1
	bnez	$a4, .LBB0_36
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$a4, $t6, $s4
	sltu	$a4, $a7, $a4
	sltu	$t1, $t6, $t0
	and	$a4, $a4, $t1
	bnez	$a4, .LBB0_36
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$a4, $t5, 16
	add.d	$t1, $t5, $s4
	sltu	$t1, $a7, $t1
	sltu	$t8, $a4, $t0
	and	$t1, $t1, $t8
	bnez	$t1, .LBB0_36
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s5, $a2, 16
	add.d	$t1, $a2, $s4
	sltu	$t1, $a7, $t1
	sltu	$t8, $s5, $t0
	and	$t1, $t1, $t8
	bnez	$t1, .LBB0_36
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$t1, $s2, $s4
	sltu	$t1, $a7, $t1
	sltu	$t8, $s2, $t0
	and	$t1, $t1, $t8
	bnez	$t1, .LBB0_36
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s0, $t7, 16
	add.d	$t1, $t7, $s4
	sltu	$t1, $a7, $t1
	sltu	$t8, $s0, $t0
	and	$t1, $t1, $t8
	bnez	$t1, .LBB0_36
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s6, $a5, 16
	add.d	$t1, $a5, $s4
	sltu	$t1, $a7, $t1
	sltu	$t8, $s6, $t0
	and	$t1, $t1, $t8
	bnez	$t1, .LBB0_36
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$t1, $a3, $s4
	sltu	$t1, $a7, $t1
	sltu	$t8, $a3, $t0
	and	$t1, $t1, $t8
	bnez	$t1, .LBB0_36
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s7, $t4, 16
	add.d	$t1, $t4, $s4
	sltu	$t1, $a7, $t1
	sltu	$t8, $s7, $t0
	and	$t1, $t1, $t8
	bnez	$t1, .LBB0_36
# %bb.48:                               # %vector.ph
                                        #   in Loop: Header=BB0_35 Depth=3
	move	$t1, $zero
	vextrins.d	$vr19, $vr3, 16
	vextrins.d	$vr8, $vr2, 16
	vextrins.d	$vr14, $vr5, 16
	vextrins.d	$vr5, $vr7, 16
	vreplvei.d	$vr9, $vr11, 0
	vreplvei.d	$vr20, $vr10, 0
	vreplvei.d	$vr12, $vr4, 0
	vreplvei.d	$vr21, $vr6, 0
	ld.d	$t8, $fp, -184                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_49:                               # %vector.body
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$s3, $t6, $t1
	vldx	$vr22, $t6, $t1
	vld	$vr23, $s3, 8
	vld	$vr24, $s3, 16
	vori.b	$vr7, $vr12, 0
	vori.b	$vr13, $vr10, 0
	vori.b	$vr15, $vr4, 0
	vori.b	$vr16, $vr11, 0
	vori.b	$vr17, $vr14, 0
	vori.b	$vr18, $vr19, 0
	vldx	$vr12, $a6, $t1
	vfadd.d	$vr4, $vr22, $vr23
	vfadd.d	$vr4, $vr4, $vr24
	vpackod.d	$vr10, $vr7, $vr21
	vshuf4i.d	$vr7, $vr12, 9
	vfadd.d	$vr4, $vr4, $vr10
	vfadd.d	$vr4, $vr4, $vr7
	vfadd.d	$vr4, $vr4, $vr12
	vldx	$vr10, $a4, $t1
	add.d	$s3, $s2, $t1
	vldx	$vr11, $s2, $t1
	vld	$vr14, $s3, 8
	vpackod.d	$vr19, $vr13, $vr20
	vfadd.d	$vr19, $vr4, $vr19
	vld	$vr20, $s3, 16
	vfadd.d	$vr11, $vr11, $vr14
	vldx	$vr4, $s5, $t1
	vshuf4i.d	$vr13, $vr10, 9
	vfadd.d	$vr11, $vr11, $vr20
	vpackod.d	$vr6, $vr15, $vr6
	vshuf4i.d	$vr15, $vr4, 9
	vfadd.d	$vr6, $vr11, $vr6
	vfadd.d	$vr6, $vr6, $vr15
	vfadd.d	$vr6, $vr6, $vr4
	add.d	$s3, $a3, $t1
	vldx	$vr14, $a3, $t1
	vld	$vr20, $s3, 8
	vpackod.d	$vr9, $vr16, $vr9
	vfadd.d	$vr6, $vr6, $vr9
	vldx	$vr11, $s0, $t1
	vfadd.d	$vr9, $vr14, $vr20
	vld	$vr14, $s3, 16
	vfadd.d	$vr19, $vr19, $vr13
	vfadd.d	$vr20, $vr19, $vr10
	vshuf4i.d	$vr16, $vr11, 9
	vfadd.d	$vr9, $vr9, $vr14
	vldx	$vr14, $s6, $t1
	vfadd.d	$vr6, $vr6, $vr16
	vfadd.d	$vr6, $vr6, $vr11
	vpackod.d	$vr5, $vr17, $vr5
	vshuf4i.d	$vr17, $vr14, 9
	vfadd.d	$vr5, $vr9, $vr5
	vldx	$vr19, $s7, $t1
	vfadd.d	$vr5, $vr5, $vr17
	vfadd.d	$vr5, $vr5, $vr14
	vpackod.d	$vr8, $vr18, $vr8
	vshuf4i.d	$vr18, $vr19, 9
	vfadd.d	$vr5, $vr5, $vr8
	vfadd.d	$vr5, $vr5, $vr18
	vfadd.d	$vr5, $vr5, $vr19
	vfadd.d	$vr6, $vr20, $vr6
	vfadd.d	$vr5, $vr6, $vr5
	vreplgr2vr.d	$vr6, $s1
	vfdiv.d	$vr5, $vr5, $vr6
	vstx	$vr5, $ra, $t1
	addi.d	$t8, $t8, -2
	addi.d	$t1, $t1, 16
	vori.b	$vr8, $vr18, 0
	vori.b	$vr5, $vr17, 0
	vori.b	$vr9, $vr16, 0
	vori.b	$vr6, $vr15, 0
	vori.b	$vr20, $vr13, 0
	vori.b	$vr21, $vr7, 0
	bnez	$t8, .LBB0_49
# %bb.50:                               # %middle.block
                                        #   in Loop: Header=BB0_35 Depth=3
	ld.d	$a4, $fp, -192                  # 8-byte Folded Reload
	ld.d	$a6, $fp, -184                  # 8-byte Folded Reload
	beq	$a4, $a6, .LBB0_34
# %bb.51:                               #   in Loop: Header=BB0_35 Depth=3
	vreplvei.d	$vr8, $vr19, 1
	vreplvei.d	$vr9, $vr19, 0
	vreplvei.d	$vr5, $vr14, 1
	vreplvei.d	$vr7, $vr14, 0
	vpackev.d	$vr6, $vr4, $vr12
	vpackod.d	$vr4, $vr4, $vr12
	vpackod.d	$vr12, $vr11, $vr10
	vpackev.d	$vr10, $vr11, $vr10
	ld.d	$s3, $fp, -200                  # 8-byte Folded Reload
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_52:                               # %.preheader261
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a2, $fp, -176                  # 8-byte Folded Reload
	ld.d	$a0, $fp, -384                  # 8-byte Folded Reload
	bnez	$a0, .LBB0_26
# %bb.53:                               # %.preheader259.lr.ph.split.split
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a0, $fp, -360                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -368                  # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -120                  # 8-byte Folded Spill
	move	$s3, $zero
	ori	$s5, $zero, 1
	ld.d	$s6, $fp, -264                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_54:                               # %.preheader259
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
	slli.d	$a0, $s5, 3
	ld.d	$a1, $fp, -120                  # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$s7, $a0, 8
	ld.d	$s0, $fp, -280                  # 8-byte Folded Reload
	move	$s2, $s6
	.p2align	4, , 16
.LBB0_55:                               # %.preheader257
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 0
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, -176                  # 8-byte Folded Reload
	addi.d	$s7, $s7, 8
	addi.d	$s0, $s0, -1
	add.d	$s2, $s2, $s8
	bnez	$s0, .LBB0_55
# %bb.56:                               # %._crit_edge281.split
                                        #   in Loop: Header=BB0_54 Depth=2
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 1
	ld.d	$t4, $fp, -248                  # 8-byte Folded Reload
	add.d	$s6, $s6, $t4
	ld.d	$a0, $fp, -256                  # 8-byte Folded Reload
	bne	$s3, $a0, .LBB0_54
	b	.LBB0_26
.LBB0_57:                               # %.loopexit256
	addi.d	$sp, $fp, -384
	fld.d	$fs1, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end0:
	.size	stencil_calc, .Lfunc_end0-stencil_calc
                                        # -- End function
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
	.type	max_num_blocks,@object          # @max_num_blocks
	.comm	max_num_blocks,4,4
	.type	target_active,@object           # @target_active
	.comm	target_active,4,4
	.type	target_max,@object              # @target_max
	.comm	target_max,4,4
	.type	target_min,@object              # @target_min
	.comm	target_min,4,4
	.type	uniform_refine,@object          # @uniform_refine
	.comm	uniform_refine,4,4
	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
	.type	npz,@object                     # @npz
	.comm	npz,4,4
	.type	inbalance,@object               # @inbalance
	.comm	inbalance,4,4
	.type	refine_freq,@object             # @refine_freq
	.comm	refine_freq,4,4
	.type	report_diffusion,@object        # @report_diffusion
	.comm	report_diffusion,4,4
	.type	checksum_freq,@object           # @checksum_freq
	.comm	checksum_freq,4,4
	.type	stages_per_ts,@object           # @stages_per_ts
	.comm	stages_per_ts,4,4
	.type	error_tol,@object               # @error_tol
	.comm	error_tol,4,4
	.type	num_tsteps,@object              # @num_tsteps
	.comm	num_tsteps,4,4
	.type	report_perf,@object             # @report_perf
	.comm	report_perf,4,4
	.type	plot_freq,@object               # @plot_freq
	.comm	plot_freq,4,4
	.type	lb_opt,@object                  # @lb_opt
	.comm	lb_opt,4,4
	.type	block_change,@object            # @block_change
	.comm	block_change,4,4
	.type	code,@object                    # @code
	.comm	code,4,4
	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
	.type	mesh_size,@object               # @mesh_size
	.comm	mesh_size,12,4
	.type	max_mesh_size,@object           # @max_mesh_size
	.comm	max_mesh_size,4,4
	.type	from,@object                    # @from
	.comm	from,8,8
	.type	to,@object                      # @to
	.comm	to,8,8
	.type	msg_len,@object                 # @msg_len
	.comm	msg_len,48,4
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
	.type	global_max_b,@object            # @global_max_b
	.comm	global_max_b,4,4
	.type	num_objects,@object             # @num_objects
	.comm	num_objects,4,4
	.type	objects,@object                 # @objects
	.comm	objects,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
