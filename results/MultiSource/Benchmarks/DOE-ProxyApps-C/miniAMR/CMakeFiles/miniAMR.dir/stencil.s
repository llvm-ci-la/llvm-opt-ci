	.file	"stencil.c"
	.text
	.globl	stencil_calc                    # -- Begin function stencil_calc
	.p2align	5
	.type	stencil_calc,@function
stencil_calc:                           # @stencil_calc
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 200                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	pcalau12i	$a1, %pc_hi20(x_block_size)
	ld.w	$a1, $a1, %pc_lo12(x_block_size)
	st.d	$a0, $fp, -264                  # 8-byte Folded Spill
	st.d	$a1, $fp, -256                  # 8-byte Folded Spill
	addi.d	$a1, $a1, 2
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.wu	$a0, $a0, %pc_lo12(y_block_size)
	bstrpick.d	$a3, $a1, 31, 0
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.wu	$a4, $a1, %pc_lo12(z_block_size)
	addi.w	$a1, $a0, 0
	st.d	$a1, $fp, -216                  # 8-byte Folded Spill
	addi.d	$a5, $a0, 2
	bstrpick.d	$a2, $a5, 31, 0
	addi.w	$ra, $a4, 0
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
	st.d	$ra, $fp, -136                  # 8-byte Folded Spill
	st.d	$a6, $fp, -280                  # 8-byte Folded Spill
	bne	$a7, $a5, .LBB0_27
# %bb.1:                                # %.preheader255
	blez	$a6, .LBB0_55
# %bb.2:                                # %.lr.ph303
	move	$a7, $zero
	pcalau12i	$a5, %pc_hi20(sorted_list)
	ld.d	$a5, $a5, %pc_lo12(sorted_list)
	st.d	$a5, $fp, -232                  # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(blocks)
	ld.d	$a5, $a5, %pc_lo12(blocks)
	st.d	$a5, $fp, -224                  # 8-byte Folded Spill
	addi.w	$t0, $ra, 1
	ld.d	$a5, $fp, -216                  # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$a6, $fp, -256                  # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	slli.d	$a4, $a4, 3
	st.d	$a4, $fp, -160                  # 8-byte Folded Spill
	bstrpick.d	$a4, $a6, 31, 0
	st.d	$a4, $fp, -272                  # 8-byte Folded Spill
	st.d	$t0, $fp, -248                  # 8-byte Folded Spill
	bstrpick.d	$a4, $t0, 31, 0
	st.d	$a4, $fp, -288                  # 8-byte Folded Spill
	addi.d	$a4, $a4, -1
	bstrpick.d	$s4, $a5, 31, 0
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	st.d	$a5, $fp, -144                  # 8-byte Folded Spill
	st.d	$a4, $fp, -184                  # 8-byte Folded Spill
	ori	$a4, $a4, 1
	st.d	$a4, $fp, -192                  # 8-byte Folded Spill
	slli.d	$a4, $a2, 3
	addi.d	$a4, $a4, 8
	mul.d	$a4, $a4, $a1
	add.d	$a3, $a3, $a4
	st.d	$a3, $fp, -296                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -240                  # 8-byte Folded Spill
	mul.d	$a2, $a1, $a2
	slli.d	$a2, $a2, 3
	st.d	$a2, $fp, -200                  # 8-byte Folded Spill
	slli.d	$s7, $a1, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $fp, -152                  # 8-byte Folded Spill
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
	ld.d	$a7, $fp, -208                  # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	ld.d	$a0, $fp, -280                  # 8-byte Folded Reload
	beq	$a7, $a0, .LBB0_55
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_25 Depth 3
	st.d	$a7, $fp, -208                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -232                  # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -224                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -256                  # 8-byte Folded Reload
	blez	$a1, .LBB0_3
# %bb.6:                                # %.preheader252.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -224                  # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	ori	$a0, $zero, 1
	ld.d	$a1, $fp, -296                  # 8-byte Folded Reload
	ld.d	$a2, $fp, -240                  # 8-byte Folded Reload
	ld.d	$s0, $fp, -264                  # 8-byte Folded Reload
	ld.d	$s3, $fp, -248                  # 8-byte Folded Reload
	ld.d	$s5, $fp, -272                  # 8-byte Folded Reload
	ld.d	$s6, $fp, -288                  # 8-byte Folded Reload
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %._crit_edge290
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a0, $a0, 1
	ld.d	$a3, $fp, -200                  # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a3
	beq	$a0, $s5, .LBB0_19
.LBB0_8:                                # %.preheader252
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	slli.d	$s8, $s0, 3
	ld.d	$a3, $fp, -216                  # 8-byte Folded Reload
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
	blez	$ra, .LBB0_10
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
	bltu	$s3, $t3, .LBB0_17
# %bb.13:                               # %vector.ph476
                                        #   in Loop: Header=BB0_11 Depth=3
	vextrins.d	$vr0, $vr0, 16
	addi.d	$t3, $a7, 16
	addi.d	$t4, $a6, 8
	addi.d	$t5, $t0, 8
	addi.d	$t6, $t1, 8
	addi.d	$t7, $t2, 8
	ld.d	$t8, $fp, -144                  # 8-byte Folded Reload
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
	ld.d	$t4, $fp, -144                  # 8-byte Folded Reload
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
	ld.d	$a0, $fp, -256                  # 8-byte Folded Reload
	blez	$a0, .LBB0_3
# %bb.20:                               # %.preheader251.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s6, $zero
	ori	$s3, $zero, 1
	ld.d	$s0, $fp, -240                  # 8-byte Folded Reload
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %._crit_edge299
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s6, $s6, 1
	ld.d	$a0, $fp, -200                  # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ld.d	$a0, $fp, -256                  # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_3
.LBB0_22:                               # %.preheader251
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	ld.d	$a0, $fp, -216                  # 8-byte Folded Reload
	blez	$a0, .LBB0_21
# %bb.23:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=2
	move	$s5, $zero
	move	$s2, $s0
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge296
                                        #   in Loop: Header=BB0_25 Depth=3
	addi.d	$s5, $s5, 8
	add.d	$s2, $s2, $s7
	ld.d	$a0, $fp, -152                  # 8-byte Folded Reload
	beq	$a0, $s5, .LBB0_21
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blez	$ra, .LBB0_24
# %bb.26:                               # %.lr.ph295
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $s1, 184
	ldx.d	$a0, $a0, $s8
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 8
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	ld.d	$a2, $fp, -160                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vldi	$vr6, -996
	vld	$vr5, $fp, -176                 # 16-byte Folded Reload
	ld.d	$ra, $fp, -136                  # 8-byte Folded Reload
	b	.LBB0_24
.LBB0_27:                               # %.preheader264
	blez	$a6, .LBB0_55
# %bb.28:                               # %.lr.ph283
	move	$a7, $zero
	pcalau12i	$a5, %pc_hi20(sorted_list)
	ld.d	$a5, $a5, %pc_lo12(sorted_list)
	st.d	$a5, $fp, -304                  # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(blocks)
	ld.d	$a5, $a5, %pc_lo12(blocks)
	st.d	$a5, $fp, -296                  # 8-byte Folded Spill
	addi.w	$s7, $ra, 1
	ld.d	$a5, $fp, -216                  # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$a6, $fp, -256                  # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	slli.d	$a4, $a4, 3
	st.d	$a4, $fp, -192                  # 8-byte Folded Spill
	bstrpick.d	$a4, $a6, 31, 0
	st.d	$a4, $fp, -272                  # 8-byte Folded Spill
	bstrpick.d	$a4, $s7, 31, 0
	st.d	$a4, $fp, -184                  # 8-byte Folded Spill
	addi.d	$a4, $a4, -1
	bstrpick.d	$s8, $a5, 31, 0
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	st.d	$a5, $fp, -160                  # 8-byte Folded Spill
	st.d	$a4, $fp, -200                  # 8-byte Folded Spill
	ori	$a4, $a4, 1
	st.d	$a4, $fp, -224                  # 8-byte Folded Spill
	slli.d	$a4, $a2, 3
	addi.d	$a4, $a4, 8
	mul.d	$a4, $a4, $a1
	add.d	$a3, $a3, $a4
	st.d	$a3, $fp, -320                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -312                  # 8-byte Folded Spill
	mul.d	$a2, $a1, $a2
	slli.d	$a2, $a2, 3
	st.d	$a2, $fp, -248                  # 8-byte Folded Spill
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
	ld.d	$a7, $fp, -288                  # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	ld.d	$a0, $fp, -280                  # 8-byte Folded Reload
	beq	$a7, $a0, .LBB0_55
.LBB0_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_46 Depth 4
                                        #     Child Loop BB0_50 Depth 2
                                        #       Child Loop BB0_53 Depth 3
	st.d	$a7, $fp, -288                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -304                  # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -296                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a1, $fp, -256                  # 8-byte Folded Reload
	blez	$a1, .LBB0_29
# %bb.32:                               # %.preheader260.lr.ph
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a1, $fp, -296                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -152                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $fp, -320                  # 8-byte Folded Reload
	st.d	$a1, $fp, -232                  # 8-byte Folded Spill
	ld.d	$a1, $fp, -312                  # 8-byte Folded Reload
	st.d	$a1, $fp, -240                  # 8-byte Folded Spill
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %._crit_edge270
                                        #   in Loop: Header=BB0_34 Depth=2
	addi.d	$a0, $a0, 1
	ld.d	$a1, $fp, -248                  # 8-byte Folded Reload
	ld.d	$a2, $fp, -240                  # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $fp, -240                  # 8-byte Folded Spill
	ld.d	$a2, $fp, -232                  # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $fp, -232                  # 8-byte Folded Spill
	ld.d	$a1, $fp, -272                  # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_47
.LBB0_34:                               # %.preheader260
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_46 Depth 4
	ld.d	$a1, $fp, -264                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -144                  # 8-byte Folded Spill
	ld.d	$a1, $fp, -216                  # 8-byte Folded Reload
	blez	$a1, .LBB0_33
# %bb.35:                               # %.preheader258.lr.ph
                                        #   in Loop: Header=BB0_34 Depth=2
	ori	$a3, $zero, 1
	ld.d	$a4, $fp, -232                  # 8-byte Folded Reload
	ld.d	$a5, $fp, -240                  # 8-byte Folded Reload
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_36:                               # %.preheader258.._crit_edge_crit_edge
                                        #   in Loop: Header=BB0_38 Depth=3
	addi.d	$a3, $a3, 1
.LBB0_37:                               # %._crit_edge
                                        #   in Loop: Header=BB0_38 Depth=3
	add.d	$a5, $a5, $s4
	add.d	$a4, $a4, $s4
	beq	$a3, $s8, .LBB0_33
.LBB0_38:                               # %.preheader258
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_46 Depth 4
	blez	$ra, .LBB0_36
# %bb.39:                               # %.lr.ph
                                        #   in Loop: Header=BB0_38 Depth=3
	ld.d	$a1, $fp, -152                  # 8-byte Folded Reload
	ld.d	$a1, $a1, 184
	ld.d	$a2, $fp, -144                  # 8-byte Folded Reload
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
	fld.d	$ft9, $a6, 0
	fld.d	$ft0, $a6, 8
	fld.d	$ft8, $a7, 0
	fld.d	$fa7, $a7, 8
	fld.d	$ft4, $t0, 0
	fld.d	$fa4, $t0, 8
	fld.d	$ft7, $t1, 0
	fld.d	$fa5, $t1, 8
	fld.d	$ft6, $t2, 0
	fld.d	$fa2, $t2, 8
	fld.d	$ft2, $t3, 0
	fld.d	$fa3, $t3, 8
	fld.d	$ft5, $t4, 0
	fld.d	$fa6, $t4, 8
	fld.d	$ft3, $t5, 0
	fld.d	$fa0, $t5, 8
	fld.d	$ft1, $t6, 0
	fld.d	$fa1, $t6, 8
	ori	$a1, $zero, 1
	ori	$a2, $zero, 3
	bltu	$s7, $a2, .LBB0_45
# %bb.40:                               # %vector.ph
                                        #   in Loop: Header=BB0_38 Depth=3
	move	$s5, $s7
	move	$t7, $zero
	vextrins.d	$vr26, $vr1, 16
	vextrins.d	$vr1, $vr9, 16
	vextrins.d	$vr25, $vr0, 16
	vextrins.d	$vr0, $vr11, 16
	vextrins.d	$vr24, $vr6, 16
	vextrins.d	$vr6, $vr13, 16
	vextrins.d	$vr23, $vr3, 16
	vextrins.d	$vr3, $vr10, 16
	vextrins.d	$vr22, $vr2, 16
	vextrins.d	$vr9, $vr14, 16
	vextrins.d	$vr21, $vr5, 16
	vextrins.d	$vr10, $vr15, 16
	vextrins.d	$vr20, $vr4, 16
	vextrins.d	$vr15, $vr12, 16
	vextrins.d	$vr18, $vr7, 16
	vextrins.d	$vr16, $vr16, 16
	vextrins.d	$vr19, $vr8, 16
	vextrins.d	$vr17, $vr17, 16
	addi.d	$t8, $a6, 16
	addi.d	$s2, $a7, 16
	addi.d	$ra, $t0, 16
	addi.d	$a1, $t1, 16
	addi.d	$a2, $t2, 16
	addi.d	$s3, $t3, 16
	addi.d	$s0, $t4, 16
	addi.d	$s8, $t5, 16
	addi.d	$s7, $t6, 16
	ld.d	$s6, $fp, -160                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_41:                               # %vector.body
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        #       Parent Loop BB0_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vori.b	$vr2, $vr19, 0
	vldx	$vr19, $t8, $t7
	vori.b	$vr4, $vr18, 0
	vori.b	$vr5, $vr20, 0
	vori.b	$vr7, $vr21, 0
	vori.b	$vr8, $vr22, 0
	vori.b	$vr11, $vr23, 0
	vori.b	$vr12, $vr24, 0
	vori.b	$vr13, $vr25, 0
	vori.b	$vr14, $vr26, 0
	vpackod.d	$vr17, $vr2, $vr17
	vshuf4i.d	$vr2, $vr19, 9
	vldx	$vr18, $s2, $t7
	vfadd.d	$vr17, $vr17, $vr2
	vfadd.d	$vr17, $vr17, $vr19
	vpackod.d	$vr16, $vr4, $vr16
	vshuf4i.d	$vr4, $vr18, 9
	vfadd.d	$vr16, $vr17, $vr16
	vldx	$vr20, $ra, $t7
	vfadd.d	$vr16, $vr16, $vr4
	vfadd.d	$vr16, $vr16, $vr18
	vpackod.d	$vr15, $vr5, $vr15
	vshuf4i.d	$vr5, $vr20, 9
	vfadd.d	$vr15, $vr16, $vr15
	vldx	$vr21, $a1, $t7
	vfadd.d	$vr15, $vr15, $vr5
	vfadd.d	$vr15, $vr15, $vr20
	vpackod.d	$vr10, $vr7, $vr10
	vshuf4i.d	$vr7, $vr21, 9
	vldx	$vr22, $a2, $t7
	vfadd.d	$vr10, $vr10, $vr7
	vfadd.d	$vr10, $vr10, $vr21
	vpackod.d	$vr9, $vr8, $vr9
	vshuf4i.d	$vr8, $vr22, 9
	vfadd.d	$vr9, $vr10, $vr9
	vldx	$vr23, $s3, $t7
	vfadd.d	$vr9, $vr9, $vr8
	vfadd.d	$vr9, $vr9, $vr22
	vpackod.d	$vr3, $vr11, $vr3
	vshuf4i.d	$vr11, $vr23, 9
	vfadd.d	$vr3, $vr9, $vr3
	vldx	$vr24, $s0, $t7
	vfadd.d	$vr3, $vr3, $vr11
	vfadd.d	$vr3, $vr3, $vr23
	vpackod.d	$vr6, $vr12, $vr6
	vshuf4i.d	$vr12, $vr24, 9
	vldx	$vr25, $s8, $t7
	vfadd.d	$vr6, $vr6, $vr12
	vfadd.d	$vr6, $vr6, $vr24
	vpackod.d	$vr0, $vr13, $vr0
	vshuf4i.d	$vr13, $vr25, 9
	vfadd.d	$vr0, $vr6, $vr0
	vldx	$vr26, $s7, $t7
	vfadd.d	$vr0, $vr0, $vr13
	vfadd.d	$vr0, $vr0, $vr25
	vpackod.d	$vr1, $vr14, $vr1
	vshuf4i.d	$vr14, $vr26, 9
	vfadd.d	$vr0, $vr0, $vr1
	vfadd.d	$vr0, $vr0, $vr14
	vfadd.d	$vr0, $vr0, $vr26
	vfadd.d	$vr1, $vr15, $vr3
	vfadd.d	$vr0, $vr1, $vr0
	vreplgr2vr.d	$vr1, $s1
	vfdiv.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a5, $t7
	addi.d	$s6, $s6, -2
	addi.d	$t7, $t7, 16
	vori.b	$vr1, $vr14, 0
	vori.b	$vr0, $vr13, 0
	vori.b	$vr6, $vr12, 0
	vori.b	$vr3, $vr11, 0
	vori.b	$vr9, $vr8, 0
	vori.b	$vr10, $vr7, 0
	vori.b	$vr15, $vr5, 0
	vori.b	$vr16, $vr4, 0
	vori.b	$vr17, $vr2, 0
	bnez	$s6, .LBB0_41
# %bb.42:                               # %middle.block
                                        #   in Loop: Header=BB0_38 Depth=3
	ld.d	$a1, $fp, -200                  # 8-byte Folded Reload
	ld.d	$a2, $fp, -160                  # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_38 Depth=3
	ld.d	$ra, $fp, -136                  # 8-byte Folded Reload
	move	$s7, $s5
	ld.d	$s8, $fp, -208                  # 8-byte Folded Reload
	b	.LBB0_37
.LBB0_44:                               #   in Loop: Header=BB0_38 Depth=3
	vreplvei.d	$vr1, $vr26, 1
	vreplvei.d	$vr9, $vr26, 0
	vreplvei.d	$vr0, $vr25, 1
	vreplvei.d	$vr11, $vr25, 0
	vreplvei.d	$vr6, $vr24, 1
	vreplvei.d	$vr13, $vr24, 0
	vreplvei.d	$vr3, $vr23, 1
	vreplvei.d	$vr10, $vr23, 0
	vreplvei.d	$vr2, $vr22, 1
	vreplvei.d	$vr14, $vr22, 0
	vreplvei.d	$vr5, $vr21, 1
	vreplvei.d	$vr15, $vr21, 0
	vreplvei.d	$vr4, $vr20, 1
	vreplvei.d	$vr12, $vr20, 0
	vreplvei.d	$vr7, $vr18, 1
	vreplvei.d	$vr16, $vr18, 0
	vreplvei.d	$vr8, $vr19, 1
	vreplvei.d	$vr17, $vr19, 0
	ld.d	$a1, $fp, -224                  # 8-byte Folded Reload
	ld.d	$ra, $fp, -136                  # 8-byte Folded Reload
	move	$s7, $s5
	ld.d	$s8, $fp, -208                  # 8-byte Folded Reload
.LBB0_45:                               # %scalar.ph.preheader
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
	move	$s2, $a4
	.p2align	4, , 16
.LBB0_46:                               # %scalar.ph
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        #       Parent Loop BB0_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fmov.d	$ft10, $ft0
	fldx.d	$ft0, $a6, $t7
	fadd.d	$ft9, $ft9, $ft10
	fadd.d	$ft9, $ft9, $ft0
	fadd.d	$ft12, $ft9, $ft8
	fmov.d	$ft8, $fa7
	fmov.d	$ft9, $fa5
	fmov.d	$ft11, $fa6
	fadd.d	$ft12, $ft12, $fa7
	fadd.d	$ft7, $ft7, $fa5
	fldx.d	$fa5, $t1, $t7
	fadd.d	$ft5, $ft5, $fa6
	fldx.d	$fa6, $t4, $t7
	fldx.d	$fa7, $a7, $t7
	fadd.d	$ft7, $ft7, $fa5
	fadd.d	$ft6, $ft7, $ft6
	fmov.d	$ft7, $fa2
	fadd.d	$fa2, $ft5, $fa6
	fadd.d	$ft3, $fa2, $ft3
	fmov.d	$ft5, $fa0
	fadd.d	$ft12, $ft12, $fa7
	fadd.d	$ft6, $ft6, $ft7
	fldx.d	$fa2, $t2, $t7
	fadd.d	$ft3, $ft3, $fa0
	fldx.d	$fa0, $t5, $t7
	fadd.d	$ft4, $ft12, $ft4
	fmov.d	$ft12, $fa4
	fadd.d	$fa4, $ft6, $fa2
	fadd.d	$ft2, $fa4, $ft2
	fmov.d	$ft6, $fa3
	fadd.d	$fa3, $ft3, $fa0
	fadd.d	$ft1, $fa3, $ft1
	fmov.d	$ft3, $fa1
	fadd.d	$ft13, $ft4, $ft12
	fldx.d	$fa4, $t0, $t7
	fadd.d	$ft14, $ft2, $ft6
	fldx.d	$fa3, $t3, $t7
	fldx.d	$fa1, $t6, $t7
	fadd.d	$ft15, $ft1, $ft3
	fmov.d	$ft1, $ft3
	fmov.d	$ft3, $ft5
	fmov.d	$ft5, $ft11
	fmov.d	$ft2, $ft6
	fmov.d	$ft6, $ft7
	fmov.d	$ft7, $ft9
	fmov.d	$ft4, $ft12
                                        # kill: def $f16_64 killed $f16_64 def $vr16
	fmov.d	$ft9, $ft10
	fadd.d	$ft10, $ft13, $fa4
	fadd.d	$ft11, $ft14, $fa3
	fadd.d	$ft12, $ft15, $fa1
	fadd.d	$ft10, $ft10, $ft11
	fadd.d	$ft10, $ft10, $ft12
	fdiv.d	$ft10, $ft10, $fs3
	fstx.d	$ft10, $s2, $t7
	addi.d	$s2, $s2, 8
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
	bnez	$t8, .LBB0_46
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_47:                               # %.preheader261
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $fp, -256                  # 8-byte Folded Reload
	blez	$a0, .LBB0_29
# %bb.48:                               # %.preheader259.lr.ph
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s0, $zero
	ori	$s3, $zero, 1
	ld.d	$s6, $fp, -312                  # 8-byte Folded Reload
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               # %._crit_edge279
                                        #   in Loop: Header=BB0_50 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 1
	ld.d	$a0, $fp, -248                  # 8-byte Folded Reload
	add.d	$s6, $s6, $a0
	ld.d	$a0, $fp, -256                  # 8-byte Folded Reload
	beq	$s0, $a0, .LBB0_29
.LBB0_50:                               # %.preheader259
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
	ld.d	$a0, $fp, -216                  # 8-byte Folded Reload
	blez	$a0, .LBB0_49
# %bb.51:                               # %.preheader257.lr.ph
                                        #   in Loop: Header=BB0_50 Depth=2
	move	$s5, $zero
	move	$s2, $s6
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_52:                               # %._crit_edge276
                                        #   in Loop: Header=BB0_53 Depth=3
	addi.d	$s5, $s5, 8
	add.d	$s2, $s2, $s4
	ld.d	$a0, $fp, -176                  # 8-byte Folded Reload
	beq	$a0, $s5, .LBB0_49
.LBB0_53:                               # %.preheader257
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blez	$ra, .LBB0_52
# %bb.54:                               # %.lr.ph275
                                        #   in Loop: Header=BB0_53 Depth=3
	ld.d	$a0, $fp, -152                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -144                  # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 8
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	ld.d	$a2, $fp, -192                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vldi	$vr27, -965
	ld.d	$ra, $fp, -136                  # 8-byte Folded Reload
	b	.LBB0_52
.LBB0_55:                               # %.loopexit256
	addi.d	$sp, $fp, -320
	fld.d	$fs3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
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
