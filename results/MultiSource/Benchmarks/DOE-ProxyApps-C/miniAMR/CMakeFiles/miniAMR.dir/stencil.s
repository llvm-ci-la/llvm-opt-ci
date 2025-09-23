	.file	"stencil.c"
	.text
	.globl	stencil_calc                    # -- Begin function stencil_calc
	.p2align	5
	.type	stencil_calc,@function
stencil_calc:                           # @stencil_calc
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 336
	pcalau12i	$a1, %pc_hi20(x_block_size)
	ld.w	$a1, $a1, %pc_lo12(x_block_size)
	st.d	$a0, $fp, -256                  # 8-byte Folded Spill
	st.d	$a1, $fp, -272                  # 8-byte Folded Spill
	addi.d	$a1, $a1, 2
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.wu	$a0, $a0, %pc_lo12(y_block_size)
	bstrpick.d	$a3, $a1, 31, 0
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.wu	$a4, $a1, %pc_lo12(z_block_size)
	addi.w	$a1, $a0, 0
	st.d	$a1, $fp, -224                  # 8-byte Folded Spill
	addi.d	$a5, $a0, 2
	bstrpick.d	$a2, $a5, 31, 0
	addi.w	$s5, $a4, 0
	addi.d	$a6, $a4, 2
	bstrpick.d	$a1, $a6, 31, 0
	mulw.d.wu	$a5, $a6, $a5
	mul.d	$a3, $a5, $a3
	slli.d	$a3, $a3, 3
	addi.d	$a3, $a3, 15
	bstrins.d	$a3, $zero, 3, 0
	sub.d	$a3, $sp, $a3
	move	$sp, $a3
	pcalau12i	$a5, %pc_hi20(sorted_index)
	ld.d	$a5, $a5, %pc_lo12(sorted_index)
	pcalau12i	$a6, %pc_hi20(num_refine)
	ld.w	$a6, $a6, %pc_lo12(num_refine)
	pcalau12i	$a7, %pc_hi20(stencil)
	ld.w	$a7, $a7, %pc_lo12(stencil)
	alsl.d	$a5, $a6, $a5, 2
	ld.w	$a6, $a5, 4
	ori	$a5, $zero, 7
	st.d	$a6, $fp, -288                  # 8-byte Folded Spill
	bne	$a7, $a5, .LBB0_27
# %bb.1:                                # %.preheader255
	blez	$a6, .LBB0_56
# %bb.2:                                # %.lr.ph303
	move	$a7, $zero
	pcalau12i	$a5, %pc_hi20(sorted_list)
	ld.d	$a5, $a5, %pc_lo12(sorted_list)
	st.d	$a5, $fp, -240                  # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(blocks)
	ld.d	$a5, $a5, %pc_lo12(blocks)
	st.d	$a5, $fp, -232                  # 8-byte Folded Spill
	addi.w	$t0, $s5, 1
	ld.d	$a5, $fp, -224                  # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$a6, $fp, -272                  # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	slli.d	$a4, $a4, 3
	st.d	$a4, $fp, -152                  # 8-byte Folded Spill
	bstrpick.d	$a4, $a6, 31, 0
	st.d	$a4, $fp, -280                  # 8-byte Folded Spill
	st.d	$t0, $fp, -264                  # 8-byte Folded Spill
	bstrpick.d	$a4, $t0, 31, 0
	st.d	$a4, $fp, -296                  # 8-byte Folded Spill
	addi.d	$a4, $a4, -1
	bstrpick.d	$s4, $a5, 31, 0
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	st.d	$a5, $fp, -136                  # 8-byte Folded Spill
	st.d	$a4, $fp, -184                  # 8-byte Folded Spill
	ori	$a4, $a4, 1
	st.d	$a4, $fp, -192                  # 8-byte Folded Spill
	slli.d	$a4, $a2, 3
	addi.d	$a4, $a4, 8
	mul.d	$a4, $a4, $a1
	add.d	$a3, $a3, $a4
	st.d	$a3, $fp, -304                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -248                  # 8-byte Folded Spill
	mul.d	$a2, $a1, $a2
	slli.d	$a2, $a2, 3
	st.d	$a2, $fp, -208                  # 8-byte Folded Spill
	slli.d	$s7, $a1, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $fp, -144                  # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -262144
	lu52i.d	$a0, $a0, 1025
	vreplgr2vr.d	$vr5, $a0
	vldi	$vr6, -996
	vst	$vr5, $fp, -176                 # 16-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a7, $fp, -216                  # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	ld.d	$a0, $fp, -288                  # 8-byte Folded Reload
	beq	$a7, $a0, .LBB0_56
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_25 Depth 3
	st.d	$a7, $fp, -216                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -240                  # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -232                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -272                  # 8-byte Folded Reload
	blez	$a1, .LBB0_3
# %bb.6:                                # %.preheader252.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -232                  # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	ori	$a0, $zero, 1
	ld.d	$a1, $fp, -304                  # 8-byte Folded Reload
	ld.d	$a2, $fp, -248                  # 8-byte Folded Reload
	ld.d	$s0, $fp, -264                  # 8-byte Folded Reload
	ld.d	$s3, $fp, -280                  # 8-byte Folded Reload
	ld.d	$s6, $fp, -296                  # 8-byte Folded Reload
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %._crit_edge290
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a0, $a0, 1
	ld.d	$a3, $fp, -208                  # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a3
	beq	$a0, $s3, .LBB0_19
.LBB0_8:                                # %.preheader252
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	ld.d	$a3, $fp, -256                  # 8-byte Folded Reload
	slli.d	$s8, $a3, 3
	ld.d	$a3, $fp, -224                  # 8-byte Folded Reload
	blez	$a3, .LBB0_7
# %bb.9:                                # %.preheader250.lr.ph
                                        #   in Loop: Header=BB0_8 Depth=2
	ori	$a3, $zero, 1
	move	$a4, $a1
	move	$a5, $a2
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge287
                                        #   in Loop: Header=BB0_11 Depth=3
	addi.d	$a3, $a3, 1
	add.d	$a5, $a5, $s7
	add.d	$a4, $a4, $s7
	beq	$a3, $s4, .LBB0_7
.LBB0_11:                               # %.preheader250
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	blez	$s5, .LBB0_10
# %bb.12:                               # %.lr.ph286
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a6, $s1, 184
	ldx.d	$a6, $a6, $s8
	alsl.d	$a7, $a0, $a6, 3
	slli.d	$t0, $a0, 3
	ld.d	$t1, $a7, -8
	ldx.d	$t0, $a6, $t0
	slli.d	$t2, $a3, 3
	ldx.d	$a6, $t1, $t2
	alsl.d	$t1, $a3, $t0, 3
	ld.d	$t3, $a7, 8
	ldx.d	$a7, $t0, $t2
	ld.d	$t0, $t1, -8
	ld.d	$t1, $t1, 8
	ldx.d	$t2, $t3, $t2
	fld.d	$fa0, $a7, 8
	ori	$t4, $zero, 1
	ori	$t3, $zero, 3
	bltu	$s0, $t3, .LBB0_17
# %bb.13:                               # %vector.ph476
                                        #   in Loop: Header=BB0_11 Depth=3
	vextrins.d	$vr0, $vr0, 16
	addi.d	$t3, $a7, 16
	addi.d	$t4, $a6, 8
	addi.d	$t5, $t0, 8
	addi.d	$t6, $t1, 8
	addi.d	$t7, $t2, 8
	ld.d	$t8, $fp, -136                  # 8-byte Folded Reload
	move	$s2, $a5
	.p2align	4, , 16
.LBB0_14:                               # %vector.body479
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vori.b	$vr1, $vr0, 0
	vld	$vr2, $t4, 0
	vld	$vr3, $t5, 0
	vld	$vr4, $t3, -16
	vld	$vr0, $t3, 0
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vshuf4i.d	$vr1, $vr0, 9
	vld	$vr3, $t6, 0
	vld	$vr4, $t7, 0
	vfadd.d	$vr1, $vr2, $vr1
	vfadd.d	$vr1, $vr1, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr1, $vr1, $vr4
	vfdiv.d	$vr1, $vr1, $vr5
	vst	$vr1, $s2, 0
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, -2
	addi.d	$s2, $s2, 16
	bnez	$t8, .LBB0_14
# %bb.15:                               # %middle.block491
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$t3, $fp, -184                  # 8-byte Folded Reload
	ld.d	$t4, $fp, -136                  # 8-byte Folded Reload
	beq	$t3, $t4, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=3
	vreplvei.d	$vr0, $vr0, 1
	ld.d	$t4, $fp, -192                  # 8-byte Folded Reload
.LBB0_17:                               # %scalar.ph474.preheader
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$t3, $t4, $a4, 3
	alsl.d	$t2, $t4, $t2, 3
	alsl.d	$t1, $t4, $t1, 3
	alsl.d	$t0, $t4, $t0, 3
	alsl.d	$a6, $t4, $a6, 3
	alsl.d	$a7, $t4, $a7, 3
	addi.d	$a7, $a7, 8
	sub.d	$t4, $s6, $t4
	.p2align	4, , 16
.LBB0_18:                               # %scalar.ph474
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $a6, 0
	fld.d	$fa2, $t0, 0
	fld.d	$fa3, $a7, -16
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa0
	fld.d	$fa0, $a7, 0
	fld.d	$fa2, $t1, 0
	fld.d	$fa3, $t2, 0
	fadd.d	$fa1, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fdiv.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $t3, 0
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, 8
	addi.d	$t4, $t4, -1
	addi.d	$a7, $a7, 8
	bnez	$t4, .LBB0_18
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_19:                               # %.preheader253
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $fp, -272                  # 8-byte Folded Reload
	blez	$a0, .LBB0_3
# %bb.20:                               # %.preheader251.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s6, $zero
	ori	$s3, $zero, 1
	ld.d	$a0, $fp, -248                  # 8-byte Folded Reload
	st.d	$a0, $fp, -200                  # 8-byte Folded Spill
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %._crit_edge299
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s6, $s6, 1
	ld.d	$a0, $fp, -208                  # 8-byte Folded Reload
	ld.d	$a1, $fp, -200                  # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $fp, -200                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -272                  # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_3
.LBB0_22:                               # %.preheader251
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	ld.d	$a0, $fp, -224                  # 8-byte Folded Reload
	blez	$a0, .LBB0_21
# %bb.23:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=2
	move	$s0, $zero
	ld.d	$s2, $fp, -200                  # 8-byte Folded Reload
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge296
                                        #   in Loop: Header=BB0_25 Depth=3
	addi.d	$s0, $s0, 8
	add.d	$s2, $s2, $s7
	ld.d	$a0, $fp, -144                  # 8-byte Folded Reload
	beq	$a0, $s0, .LBB0_21
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blez	$s5, .LBB0_24
# %bb.26:                               # %.lr.ph295
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $s1, 184
	ldx.d	$a0, $a0, $s8
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 8
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	ld.d	$a2, $fp, -152                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vldi	$vr6, -996
	vld	$vr5, $fp, -176                 # 16-byte Folded Reload
	b	.LBB0_24
.LBB0_27:                               # %.preheader264
	blez	$a6, .LBB0_56
# %bb.28:                               # %.lr.ph283
	move	$a7, $zero
	pcalau12i	$a5, %pc_hi20(sorted_list)
	ld.d	$a5, $a5, %pc_lo12(sorted_list)
	st.d	$a5, $fp, -312                  # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(blocks)
	ld.d	$a5, $a5, %pc_lo12(blocks)
	st.d	$a5, $fp, -304                  # 8-byte Folded Spill
	addi.w	$s8, $s5, 1
	ld.d	$a5, $fp, -224                  # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$a6, $fp, -272                  # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	slli.d	$a4, $a4, 3
	st.d	$a4, $fp, -192                  # 8-byte Folded Spill
	bstrpick.d	$a4, $a6, 31, 0
	st.d	$a4, $fp, -280                  # 8-byte Folded Spill
	bstrpick.d	$a4, $s8, 31, 0
	st.d	$a4, $fp, -184                  # 8-byte Folded Spill
	addi.d	$a4, $a4, -1
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a5, $fp, -200                  # 8-byte Folded Spill
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	st.d	$a5, $fp, -152                  # 8-byte Folded Spill
	st.d	$a4, $fp, -216                  # 8-byte Folded Spill
	ori	$a4, $a4, 1
	st.d	$a4, $fp, -232                  # 8-byte Folded Spill
	slli.d	$a4, $a2, 3
	addi.d	$a4, $a4, 8
	mul.d	$a4, $a4, $a1
	add.d	$a3, $a3, $a4
	st.d	$a3, $fp, -328                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -320                  # 8-byte Folded Spill
	mul.d	$a2, $a1, $a2
	slli.d	$a2, $a2, 3
	st.d	$a2, $fp, -264                  # 8-byte Folded Spill
	slli.d	$s4, $a1, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $fp, -176                  # 8-byte Folded Spill
	vldi	$vr27, -965
	ori	$a0, $zero, 0
	lu32i.d	$a0, -327680
	lu52i.d	$s1, $a0, 1027
	st.d	$s8, $fp, -208                  # 8-byte Folded Spill
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %.loopexit262
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a7, $fp, -296                  # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	ld.d	$a0, $fp, -288                  # 8-byte Folded Reload
	beq	$a7, $a0, .LBB0_56
.LBB0_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #         Child Loop BB0_42 Depth 4
                                        #         Child Loop BB0_47 Depth 4
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_54 Depth 3
	st.d	$a7, $fp, -296                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -312                  # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -304                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a1, $fp, -272                  # 8-byte Folded Reload
	blez	$a1, .LBB0_29
# %bb.32:                               # %.preheader260.lr.ph
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a1, $fp, -304                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -144                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $fp, -328                  # 8-byte Folded Reload
	st.d	$a1, $fp, -240                  # 8-byte Folded Spill
	ld.d	$a1, $fp, -320                  # 8-byte Folded Reload
	st.d	$a1, $fp, -248                  # 8-byte Folded Spill
	ld.d	$s0, $fp, -200                  # 8-byte Folded Reload
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %._crit_edge270
                                        #   in Loop: Header=BB0_34 Depth=2
	addi.d	$a0, $a0, 1
	ld.d	$a1, $fp, -264                  # 8-byte Folded Reload
	ld.d	$a2, $fp, -248                  # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $fp, -248                  # 8-byte Folded Spill
	ld.d	$a2, $fp, -240                  # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $fp, -240                  # 8-byte Folded Spill
	ld.d	$a1, $fp, -280                  # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_48
.LBB0_34:                               # %.preheader260
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
                                        #         Child Loop BB0_42 Depth 4
                                        #         Child Loop BB0_47 Depth 4
	ld.d	$a1, $fp, -256                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -136                  # 8-byte Folded Spill
	ld.d	$a1, $fp, -224                  # 8-byte Folded Reload
	blez	$a1, .LBB0_33
# %bb.35:                               # %.preheader258.lr.ph
                                        #   in Loop: Header=BB0_34 Depth=2
	ori	$a3, $zero, 1
	ld.d	$a4, $fp, -240                  # 8-byte Folded Reload
	ld.d	$a5, $fp, -248                  # 8-byte Folded Reload
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_36:                               # %.preheader258.._crit_edge_crit_edge
                                        #   in Loop: Header=BB0_38 Depth=3
	addi.d	$a3, $a3, 1
.LBB0_37:                               # %._crit_edge
                                        #   in Loop: Header=BB0_38 Depth=3
	add.d	$a5, $a5, $s4
	add.d	$a4, $a4, $s4
	beq	$a3, $s0, .LBB0_33
.LBB0_38:                               # %.preheader258
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_42 Depth 4
                                        #         Child Loop BB0_47 Depth 4
	blez	$s5, .LBB0_36
# %bb.39:                               # %.lr.ph
                                        #   in Loop: Header=BB0_38 Depth=3
	ld.d	$a1, $fp, -144                  # 8-byte Folded Reload
	ld.d	$a1, $a1, 184
	ld.d	$a2, $fp, -136                  # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	alsl.d	$a2, $a0, $a1, 3
	ld.d	$t0, $a2, -8
	slli.d	$t1, $a0, 3
	slli.d	$t5, $a3, 3
	addi.d	$t4, $t5, -8
	ldx.d	$a6, $t0, $t4
	ldx.d	$a7, $t0, $t5
	addi.d	$a3, $a3, 1
	ldx.d	$a1, $a1, $t1
	slli.d	$t6, $a3, 3
	ldx.d	$t0, $t0, $t6
	ld.d	$a2, $a2, 8
	ldx.d	$t1, $a1, $t4
	ldx.d	$t2, $a1, $t5
	ldx.d	$t3, $a1, $t6
	ldx.d	$t4, $a2, $t4
	ldx.d	$t5, $a2, $t5
	ldx.d	$t6, $a2, $t6
	vld	$vr8, $a6, 0
	vld	$vr4, $a7, 0
	vld	$vr6, $t0, 0
	vld	$vr9, $t1, 0
	vld	$vr10, $t2, 0
	vld	$vr12, $t3, 0
	fld.d	$fa7, $t4, 0
	fld.d	$fa2, $t4, 8
	fld.d	$fa5, $t5, 0
	fld.d	$fa1, $t5, 8
	fld.d	$fa3, $t6, 0
	fld.d	$fa0, $t6, 8
	ori	$a1, $zero, 3
	bgeu	$s8, $a1, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=3
	vpackod.d	$vr11, $vr9, $vr8
	vpackev.d	$vr13, $vr9, $vr8
	vpackod.d	$vr8, $vr10, $vr4
	vpackev.d	$vr9, $vr10, $vr4
	vpackod.d	$vr4, $vr12, $vr6
	vpackev.d	$vr6, $vr12, $vr6
	ori	$a1, $zero, 1
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_41:                               # %vector.ph
                                        #   in Loop: Header=BB0_38 Depth=3
	move	$t7, $zero
	vextrins.d	$vr14, $vr0, 16
	vextrins.d	$vr0, $vr3, 16
	vextrins.d	$vr13, $vr1, 16
	vextrins.d	$vr1, $vr5, 16
	vextrins.d	$vr11, $vr2, 16
	vextrins.d	$vr2, $vr7, 16
	vreplvei.d	$vr5, $vr12, 0
	vreplvei.d	$vr15, $vr10, 0
	vreplvei.d	$vr19, $vr9, 0
	vreplvei.d	$vr24, $vr6, 0
	vreplvei.d	$vr25, $vr4, 0
	vreplvei.d	$vr26, $vr8, 0
	addi.d	$t8, $a6, 16
	addi.d	$s2, $a7, 16
	addi.d	$ra, $t0, 16
	addi.d	$a1, $t1, 16
	addi.d	$a2, $t2, 16
	addi.d	$s3, $t3, 16
	addi.d	$s0, $t4, 16
	addi.d	$s8, $t5, 16
	addi.d	$s7, $t6, 16
	ld.d	$s6, $fp, -152                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_42:                               # %vector.body
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        #       Parent Loop BB0_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vori.b	$vr3, $vr8, 0
	vldx	$vr8, $t8, $t7
	vori.b	$vr7, $vr4, 0
	vori.b	$vr16, $vr6, 0
	vori.b	$vr17, $vr9, 0
	vori.b	$vr18, $vr10, 0
	vori.b	$vr20, $vr12, 0
	vori.b	$vr21, $vr11, 0
	vori.b	$vr22, $vr13, 0
	vori.b	$vr23, $vr14, 0
	vpackod.d	$vr6, $vr3, $vr26
	vshuf4i.d	$vr3, $vr8, 9
	vldx	$vr4, $s2, $t7
	vfadd.d	$vr6, $vr6, $vr3
	vfadd.d	$vr6, $vr6, $vr8
	vpackod.d	$vr9, $vr7, $vr25
	vshuf4i.d	$vr7, $vr4, 9
	vfadd.d	$vr9, $vr6, $vr9
	vldx	$vr6, $ra, $t7
	vfadd.d	$vr9, $vr9, $vr7
	vfadd.d	$vr9, $vr9, $vr4
	vpackod.d	$vr10, $vr16, $vr24
	vshuf4i.d	$vr16, $vr6, 9
	vfadd.d	$vr10, $vr9, $vr10
	vldx	$vr9, $a1, $t7
	vfadd.d	$vr10, $vr10, $vr16
	vfadd.d	$vr24, $vr10, $vr6
	vpackod.d	$vr11, $vr17, $vr19
	vshuf4i.d	$vr17, $vr9, 9
	vldx	$vr10, $a2, $t7
	vfadd.d	$vr11, $vr11, $vr17
	vfadd.d	$vr11, $vr11, $vr9
	vpackod.d	$vr12, $vr18, $vr15
	vshuf4i.d	$vr18, $vr10, 9
	vfadd.d	$vr11, $vr11, $vr12
	vldx	$vr12, $s3, $t7
	vfadd.d	$vr11, $vr11, $vr18
	vfadd.d	$vr11, $vr11, $vr10
	vpackod.d	$vr5, $vr20, $vr5
	vshuf4i.d	$vr20, $vr12, 9
	vfadd.d	$vr5, $vr11, $vr5
	vldx	$vr11, $s0, $t7
	vfadd.d	$vr5, $vr5, $vr20
	vfadd.d	$vr5, $vr5, $vr12
	vpackod.d	$vr2, $vr21, $vr2
	vshuf4i.d	$vr21, $vr11, 9
	vldx	$vr13, $s8, $t7
	vfadd.d	$vr2, $vr2, $vr21
	vfadd.d	$vr2, $vr2, $vr11
	vpackod.d	$vr1, $vr22, $vr1
	vshuf4i.d	$vr22, $vr13, 9
	vfadd.d	$vr1, $vr2, $vr1
	vldx	$vr14, $s7, $t7
	vfadd.d	$vr1, $vr1, $vr22
	vfadd.d	$vr1, $vr1, $vr13
	vpackod.d	$vr0, $vr23, $vr0
	vshuf4i.d	$vr23, $vr14, 9
	vfadd.d	$vr0, $vr1, $vr0
	vfadd.d	$vr0, $vr0, $vr23
	vfadd.d	$vr0, $vr0, $vr14
	vfadd.d	$vr1, $vr24, $vr5
	vfadd.d	$vr0, $vr1, $vr0
	vreplgr2vr.d	$vr1, $s1
	vfdiv.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a5, $t7
	addi.d	$s6, $s6, -2
	addi.d	$t7, $t7, 16
	vori.b	$vr0, $vr23, 0
	vori.b	$vr1, $vr22, 0
	vori.b	$vr2, $vr21, 0
	vori.b	$vr5, $vr20, 0
	vori.b	$vr15, $vr18, 0
	vori.b	$vr19, $vr17, 0
	vori.b	$vr24, $vr16, 0
	vori.b	$vr25, $vr7, 0
	vori.b	$vr26, $vr3, 0
	bnez	$s6, .LBB0_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB0_38 Depth=3
	ld.d	$a1, $fp, -216                  # 8-byte Folded Reload
	ld.d	$a2, $fp, -152                  # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_38 Depth=3
	ld.d	$s8, $fp, -208                  # 8-byte Folded Reload
	ld.d	$s0, $fp, -200                  # 8-byte Folded Reload
	b	.LBB0_37
.LBB0_45:                               #   in Loop: Header=BB0_38 Depth=3
	vreplvei.d	$vr0, $vr14, 1
	vreplvei.d	$vr3, $vr14, 0
	vreplvei.d	$vr1, $vr13, 1
	vreplvei.d	$vr5, $vr13, 0
	vreplvei.d	$vr2, $vr11, 1
	vreplvei.d	$vr7, $vr11, 0
	vpackod.d	$vr11, $vr9, $vr8
	vpackev.d	$vr13, $vr9, $vr8
	vpackod.d	$vr8, $vr10, $vr4
	vpackev.d	$vr9, $vr10, $vr4
	vpackod.d	$vr4, $vr12, $vr6
	vpackev.d	$vr6, $vr12, $vr6
	ld.d	$a1, $fp, -232                  # 8-byte Folded Reload
	ld.d	$s8, $fp, -208                  # 8-byte Folded Reload
	ld.d	$s0, $fp, -200                  # 8-byte Folded Reload
.LBB0_46:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_38 Depth=3
	slli.d	$t7, $a1, 3
	ld.d	$a2, $fp, -184                  # 8-byte Folded Reload
	sub.d	$t8, $a2, $a1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	move	$a1, $a4
	.p2align	4, , 16
.LBB0_47:                               # %scalar.ph
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        #       Parent Loop BB0_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$ft2, $a6, $t7
	fldx.d	$ft4, $t1, $t7
	vfadd.d	$vr14, $vr13, $vr11
	fmov.d	$ft5, $fa2
	vextrins.d	$vr10, $vr12, 16
	vfadd.d	$vr2, $vr14, $vr10
	vfadd.d	$vr2, $vr2, $vr9
	vfadd.d	$vr9, $vr2, $vr8
	fldx.d	$fa2, $t4, $t7
	fldx.d	$ft4, $a7, $t7
	fldx.d	$ft6, $t2, $t7
	fadd.d	$fa7, $fa7, $ft5
	fadd.d	$fa7, $fa7, $fa2
	fadd.d	$fa5, $fa7, $fa5
	fmov.d	$fa7, $fa1
	vextrins.d	$vr12, $vr14, 16
	vfadd.d	$vr1, $vr9, $vr12
	vfadd.d	$vr6, $vr1, $vr6
	fadd.d	$fa5, $fa5, $fa7
	fldx.d	$fa1, $t5, $t7
	vfadd.d	$vr15, $vr6, $vr4
	fldx.d	$ft6, $t0, $t7
	fldx.d	$ft8, $t3, $t7
	fadd.d	$fa5, $fa5, $fa1
	fadd.d	$fa3, $fa5, $fa3
	fmov.d	$fa5, $fa0
	fldx.d	$fa0, $t6, $t7
	fadd.d	$ft9, $fa3, $fa5
	fmov.d	$fa3, $fa5
	fmov.d	$fa5, $fa7
	fmov.d	$fa7, $ft5
	vori.b	$vr13, $vr11, 0
	vori.b	$vr9, $vr8, 0
	vori.b	$vr6, $vr4, 0
	vextrins.d	$vr14, $vr16, 16
	vfadd.d	$vr4, $vr15, $vr14
	fadd.d	$ft0, $ft9, $fa0
	vreplvei.d	$vr11, $vr4, 1
	vfadd.d	$vr4, $vr4, $vr11
	vreplvei.d	$vr4, $vr4, 0
	fadd.d	$fa4, $fa4, $ft0
	fdiv.d	$fa4, $fa4, $fs3
	fstx.d	$fa4, $a1, $t7
	addi.d	$a1, $a1, 8
	addi.d	$t8, $t8, -1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	vori.b	$vr11, $vr10, 0
	vori.b	$vr8, $vr12, 0
	vori.b	$vr4, $vr14, 0
	bnez	$t8, .LBB0_47
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_48:                               # %.preheader261
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $fp, -272                  # 8-byte Folded Reload
	blez	$a0, .LBB0_29
# %bb.49:                               # %.preheader259.lr.ph
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s0, $zero
	ori	$s3, $zero, 1
	ld.d	$s6, $fp, -320                  # 8-byte Folded Reload
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               # %._crit_edge279
                                        #   in Loop: Header=BB0_51 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 1
	ld.d	$a0, $fp, -264                  # 8-byte Folded Reload
	add.d	$s6, $s6, $a0
	ld.d	$a0, $fp, -272                  # 8-byte Folded Reload
	beq	$s0, $a0, .LBB0_29
.LBB0_51:                               # %.preheader259
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
	ld.d	$a0, $fp, -224                  # 8-byte Folded Reload
	blez	$a0, .LBB0_50
# %bb.52:                               # %.preheader257.lr.ph
                                        #   in Loop: Header=BB0_51 Depth=2
	move	$s7, $zero
	move	$s2, $s6
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_53:                               # %._crit_edge276
                                        #   in Loop: Header=BB0_54 Depth=3
	addi.d	$s7, $s7, 8
	add.d	$s2, $s2, $s4
	ld.d	$a0, $fp, -176                  # 8-byte Folded Reload
	beq	$a0, $s7, .LBB0_50
.LBB0_54:                               # %.preheader257
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blez	$s5, .LBB0_53
# %bb.55:                               # %.lr.ph275
                                        #   in Loop: Header=BB0_54 Depth=3
	ld.d	$a0, $fp, -144                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -136                  # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s7
	ld.d	$a0, $a0, 8
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	ld.d	$a2, $fp, -192                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vldi	$vr27, -965
	b	.LBB0_53
.LBB0_56:                               # %.loopexit256
	addi.d	$sp, $fp, -336
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
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
