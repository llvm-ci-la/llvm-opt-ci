	.file	"smg3_setup_rap.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function hypre_SMG3CreateRAPOp
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_1:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_2:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_3:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_5:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_6:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_7:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI0_9:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_10:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_12:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_13:
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_11:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.text
	.globl	hypre_SMG3CreateRAPOp
	.p2align	5
	.type	hypre_SMG3CreateRAPOp,@function
hypre_SMG3CreateRAPOp:                  # @hypre_SMG3CreateRAPOp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a3
	move	$fp, $a1
	pcalau12i	$a0, %pc_hi20(.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost)
	ld.d	$a1, $a0, 16
	vld	$vr0, $a0, 0
	ld.d	$a0, $fp, 24
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	ld.w	$a1, $fp, 72
	ld.w	$a0, $a0, 8
	beqz	$a1, .LBB0_3
# %bb.1:
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB0_5
# %bb.2:                                # %.loopexit.loopexit158
	ori	$a0, $zero, 8
	ori	$a1, $zero, 12
	ori	$s1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_6)
	move	$a2, $a0
	xvst	$xr0, $a0, 0
	xvst	$xr1, $a0, 32
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $a2, 64
	st.w	$a0, $a2, 72
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 76
	st.w	$zero, $a2, 92
	b	.LBB0_7
.LBB0_3:
	ori	$s1, $zero, 15
	blt	$s1, $a0, .LBB0_6
# %bb.4:                                # %.loopexit.loopexit
	ori	$a0, $zero, 15
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_5)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_6)
	xvst	$xr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_12)
	xvst	$xr1, $a2, 32
	vrepli.b	$vr1, 0
	vst	$vr1, $a2, 76
	xvst	$xr0, $a2, 96
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_13)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $a2, 64
	st.w	$a0, $a2, 72
	st.w	$zero, $a2, 92
	xvst	$xr0, $a2, 128
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $a2, 160
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 176
	b	.LBB0_7
.LBB0_5:                                # %.split133.us.1
	ori	$a0, $zero, 14
	ori	$a1, $zero, 12
	ori	$s1, $zero, 14
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	xvst	$xr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	xvld	$xr2, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_4)
	xvst	$xr0, $a2, 32
	xvst	$xr1, $a2, 64
	xvst	$xr2, $a2, 96
	vst	$vr3, $a2, 128
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 144
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 148
	st.w	$zero, $a2, 164
	b	.LBB0_7
.LBB0_6:                                # %.preheader114
	ori	$a0, $zero, 27
	ori	$a1, $zero, 12
	ori	$s1, $zero, 27
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_1)
	xvst	$xr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_2)
	xvst	$xr1, $a2, 32
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_3)
	xvst	$xr0, $a2, 64
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	xvst	$xr1, $a2, 96
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_7)
	vst	$vr0, $a2, 128
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 148
	xvst	$xr1, $a2, 168
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_8)
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_9)
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	xvld	$xr2, $a0, %pc_lo12(.LCPI0_10)
	xvst	$xr0, $a2, 200
	xvst	$xr1, $a2, 232
	addi.w	$a0, $zero, -1
	xvst	$xr2, $a2, 264
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_11)
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 144
	st.w	$zero, $a2, 164
	vst	$vr0, $a2, 296
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $a2, 312
	st.w	$a0, $a2, 320
.LBB0_7:                                # %.loopexit
	ori	$a0, $zero, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	st.w	$a0, $s0, 72
	beqz	$a0, .LBB0_9
# %bb.8:
	st.w	$zero, $sp, 12
	st.w	$zero, $sp, 20
	st.w	$zero, $sp, 28
.LBB0_9:
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	hypre_SMG3CreateRAPOp, .Lfunc_end0-hypre_SMG3CreateRAPOp
                                        # -- End function
	.globl	hypre_SMG3BuildRAPSym           # -- Begin function hypre_SMG3BuildRAPSym
	.p2align	5
	.type	hypre_SMG3BuildRAPSym,@function
hypre_SMG3BuildRAPSym:                  # @hypre_SMG3BuildRAPSym
# %bb.0:
	addi.d	$sp, $sp, -1392
	st.d	$ra, $sp, 1384                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1368                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1360                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1352                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1304                  # 8-byte Folded Spill
	move	$s6, $a3
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a6, .LBB1_56
# %bb.1:                                # %.preheader2462.lr.ph
	move	$s7, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s7, 8
	move	$s5, $zero
	move	$a4, $zero
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit2458
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s5, $s5, 1
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB1_56
.LBB1_3:                                # %.preheader2462
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #       Child Loop BB1_51 Depth 3
                                        #         Child Loop BB1_52 Depth 4
                                        #     Child Loop BB1_20 Depth 2
                                        #       Child Loop BB1_21 Depth 3
                                        #         Child Loop BB1_22 Depth 4
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_31 Depth 3
                                        #         Child Loop BB1_32 Depth 4
                                        #     Child Loop BB1_40 Depth 2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_42 Depth 4
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$fp, $a4, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 2
	slli.d	$a2, $a4, 4
	alsl.d	$a2, $a4, $a2, 3
	addi.d	$a3, $a4, -1
	addi.d	$s4, $a2, -12
	.p2align	4, , 16
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$fp, $fp, 1
	addi.d	$a1, $a1, 4
	addi.d	$s4, $s4, 24
	bne	$a2, $a0, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $s5, 4
	alsl.d	$a1, $s5, $a1, 3
	st.d	$a1, $sp, 1200                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1280
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 40
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $s2, 40
	ld.d	$a3, $a0, 0
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 40
	ld.d	$a2, $s6, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1240                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s4
	st.d	$a1, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1216                  # 8-byte Folded Spill
	add.d	$a0, $a4, $s4
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	ori	$s0, $zero, 1
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	st.d	$zero, $sp, 1292
	st.d	$a1, $sp, 1248                  # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.w	$a1, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$s2, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ori	$s8, $zero, 0
	lu32i.d	$s8, -1
	st.d	$s8, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	ori	$s3, $zero, 0
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ori	$a0, $zero, 8
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	blt	$s1, $a0, .LBB1_9
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s2, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s1, $a0, .LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s2, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 1248                  # 8-byte Folded Reload
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	move	$s0, $s2
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s1, $a0, .LBB1_55
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s2, $sp, 1292
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	lu32i.d	$s5, -1
	st.d	$s5, $sp, 1292
	st.w	$s1, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	ld.d	$s2, $sp, 1168                  # 8-byte Folded Reload
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	move	$fp, $zero
.LBB1_10:                               # %.thread2380
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 1256                  # 8-byte Folded Reload
	add.d	$s1, $a0, $s4
	ld.d	$a0, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1192                  # 8-byte Folded Reload
	add.d	$s0, $a1, $a0
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.d	$s7, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1292
	st.w	$s2, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	move	$s3, $s2
	ld.d	$s2, $sp, 1248                  # 8-byte Folded Reload
	beqz	$fp, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s3, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1292
	st.w	$s3, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	move	$a0, $s2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s3, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s3, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 1292
	st.w	$s7, $sp, 1300
	ld.d	$s6, $sp, 1232                  # 8-byte Folded Reload
	ld.w	$a0, $s6, 4
	ld.w	$a1, $s6, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s3, $sp, 1240                  # 8-byte Folded Reload
	ldx.w	$a2, $s3, $s4
	ld.w	$a3, $s6, -12
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s2, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s2, $a2
	ld.d	$fp, $sp, 1208                  # 8-byte Folded Reload
	ld.w	$a3, $fp, 4
	ld.w	$a4, $fp, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s2, $a0
	ld.d	$s8, $sp, 1216                  # 8-byte Folded Reload
	ldx.w	$a2, $s8, $s4
	ld.w	$a3, $fp, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s2, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s2, $a2
	or	$a1, $a1, $a2
	st.d	$s7, $sp, 1296
	ldx.w	$a2, $s8, $s4
	ld.w	$a3, $fp, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a1, $sp, 1268
	ld.d	$s7, $sp, 1224                  # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	ld.w	$a0, $fp, -12
	ld.w	$a5, $s7, 4
	ld.w	$a2, $fp, -8
	ld.w	$a6, $s7, 8
	ld.w	$a3, $fp, -4
	ld.w	$a4, $fp, 4
	sub.d	$a7, $a1, $a0
	sub.d	$t1, $a5, $a2
	sub.d	$a3, $a6, $a3
	sub.w	$a2, $a4, $a2
	slt	$a4, $s2, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $s2, $a4
	or	$a2, $a2, $a4
	ldx.w	$a4, $s8, $s4
	addi.d	$t0, $a2, 1
	mul.d	$a2, $t0, $a3
	add.d	$a2, $t1, $a2
	sub.w	$a0, $a4, $a0
	slt	$a3, $s2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $s2, $a3
	or	$s7, $a0, $a3
	addi.d	$t1, $s7, 1
	mul.d	$a0, $a2, $t1
	add.w	$a3, $a7, $a0
	ld.w	$a0, $s1, -12
	ld.w	$a2, $s1, -8
	ld.w	$a4, $s1, -4
	ld.w	$a7, $s1, 4
	sub.d	$t3, $a1, $a0
	sub.d	$t4, $a5, $a2
	sub.d	$a4, $a6, $a4
	sub.w	$a2, $a7, $a2
	slt	$a7, $s2, $a2
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $s2, $a7
	or	$a2, $a2, $a7
	ld.d	$a7, $sp, 1256                  # 8-byte Folded Reload
	ldx.w	$a7, $a7, $s4
	addi.d	$t2, $a2, 1
	mul.d	$a2, $t2, $a4
	add.d	$a4, $t4, $a2
	sub.w	$a0, $a7, $a0
	slt	$a2, $s2, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a2, $a0, $a2
	addi.d	$t5, $a2, 1
	mul.d	$a0, $a4, $t5
	add.w	$a4, $t3, $a0
	ld.w	$a0, $sp, 1280
	ld.w	$t3, $s6, -12
	ld.w	$a7, $sp, 1284
	ld.w	$t4, $s6, -8
	ld.w	$t6, $sp, 1288
	ld.w	$t7, $s6, -4
	ld.w	$t8, $s6, 4
	sub.d	$s1, $a0, $t3
	sub.d	$a0, $a7, $t4
	sub.d	$t6, $t6, $t7
	sub.w	$a7, $t8, $t4
	slt	$t4, $s2, $a7
	maskeqz	$a7, $a7, $t4
	masknez	$t4, $s2, $t4
	or	$a7, $a7, $t4
	ldx.w	$t4, $s3, $s4
	addi.d	$a7, $a7, 1
	mul.d	$t6, $a7, $t6
	add.d	$t6, $a0, $t6
	sub.w	$a0, $t4, $t3
	slt	$t3, $s2, $a0
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $s2, $t3
	or	$a0, $a0, $t3
	addi.d	$a0, $a0, 1
	mul.d	$t3, $t6, $a0
	add.w	$t6, $s1, $t3
	ld.w	$t3, $s0, 0
	ld.w	$t4, $s0, 4
	ld.w	$t7, $s0, 8
	ld.w	$t8, $s0, 16
	sub.d	$s1, $a1, $t3
	sub.d	$a5, $a5, $t4
	sub.d	$a6, $a6, $t7
	sub.w	$a1, $t8, $t4
	slt	$t4, $s2, $a1
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $s2, $t4
	or	$a1, $a1, $t4
	ld.w	$t4, $s0, 12
	addi.d	$a1, $a1, 1
	mul.d	$a6, $a1, $a6
	add.d	$a5, $a5, $a6
	sub.w	$a6, $t4, $t3
	slt	$t3, $s2, $a6
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $s2, $t3
	or	$s4, $a6, $t3
	addi.d	$t4, $s4, 1
	mul.d	$a5, $a5, $t4
	ld.w	$t3, $sp, 1268
	ld.w	$t7, $sp, 1272
	add.w	$s1, $s1, $a5
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	st.d	$a5, $sp, 1256                  # 8-byte Folded Spill
	ld.w	$t8, $sp, 1276
	slt	$a5, $t3, $t7
	masknez	$a6, $t3, $a5
	st.d	$t7, $sp, 752                   # 8-byte Folded Spill
	maskeqz	$a5, $t7, $a5
	or	$a5, $a5, $a6
	slt	$a6, $a5, $t8
	masknez	$a5, $a5, $a6
	st.d	$t8, $sp, 136                   # 8-byte Folded Spill
	maskeqz	$a6, $t8, $a6
	or	$a5, $a6, $a5
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ori	$t7, $zero, 19
	beq	$a6, $t7, .LBB1_35
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t7, $zero, 15
	beq	$a6, $t7, .LBB1_25
# %bb.14:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t7, $zero, 1
	ori	$t8, $zero, 7
	bne	$a6, $t8, .LBB1_45
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	blez	$a5, .LBB1_2
# %bb.16:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.17:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 752                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.18:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blez	$t3, .LBB1_2
# %bb.19:                               # %.preheader2448.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$fp, $zero
	mul.d	$t8, $a5, $a0
	st.d	$t8, $sp, 1072                  # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s0, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$t8, $t3, $s0
	st.d	$t8, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t8, $sp, 752                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $t8
	mul.d	$t0, $t0, $t1
	sub.d	$t1, $t2, $t8
	mul.d	$t1, $t1, $t5
	sub.d	$a1, $a1, $t8
	mul.d	$a1, $a1, $t4
	ld.d	$t2, $sp, 1200                  # 8-byte Folded Reload
	bstrpick.d	$t5, $t2, 31, 0
	ld.d	$t2, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$t2, $t2, 31, 0
	ld.d	$t4, $sp, 1168                  # 8-byte Folded Reload
	bstrpick.d	$t4, $t4, 31, 0
	sub.w	$t3, $zero, $t3
	st.d	$t3, $sp, 1096                  # 8-byte Folded Spill
	add.d	$t1, $t1, $a2
	nor	$t1, $t1, $zero
	st.d	$t1, $sp, 1048                  # 8-byte Folded Spill
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 1040                  # 8-byte Folded Spill
	slli.d	$a2, $t4, 3
	ld.d	$t1, $sp, 968                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $a2
	st.d	$t1, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 976                   # 8-byte Folded Reload
	sub.d	$t1, $t3, $a2
	st.d	$t1, $sp, 1024                  # 8-byte Folded Spill
	slli.d	$t1, $t2, 3
	sub.d	$a2, $a2, $t1
	add.d	$a2, $t3, $a2
	st.d	$a2, $sp, 1016                  # 8-byte Folded Spill
	mul.d	$a2, $a6, $a7
	sub.d	$a6, $t7, $t8
	mul.d	$a5, $a5, $a6
	add.d	$a2, $a2, $a5
	mul.d	$a0, $a2, $a0
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	sub.d	$a0, $t3, $t1
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	add.d	$a0, $t2, $t4
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	add.d	$a0, $t0, $s7
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	nor	$a0, $s7, $zero
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	add.d	$a0, $a1, $s4
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	nor	$a0, $s4, $zero
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	st.d	$t5, $sp, 1056                  # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_20:                               # %.preheader2448.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_21 Depth 3
                                        #         Child Loop BB1_22 Depth 4
	st.d	$fp, $sp, 880                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_21:                               # %.preheader2444.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_22 Depth 4
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	move	$t8, $zero
	move	$a1, $zero
	move	$a2, $zero
	move	$fp, $t6
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t6, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t3, $a4, $a0, 3
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	sub.d	$t7, $a0, $a4
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$t4, $a3, $a0, 3
	ld.d	$a6, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a5, $a3, $a6, 3
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	alsl.d	$s0, $a3, $a0, 3
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a6, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	sub.d	$t1, $a0, $a3
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	sub.d	$t2, $a0, $s1
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	sub.d	$s5, $a0, $s1
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	ld.d	$t0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a6, $a0, $t0, 3
	st.d	$a6, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a6, $a0, $a7, 3
	st.d	$a6, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a6, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $a6, 3
	st.d	$t5, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	alsl.d	$s1, $fp, $t5, 3
	alsl.d	$a0, $fp, $t0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	alsl.d	$a0, $fp, $a7, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$a0, $fp, $a6, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s7, $fp, $a0, 3
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$s8, $fp, $a0, 3
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$ra, $fp, $a0, 3
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	ld.d	$a6, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$a6, $fp, $a6, 3
	ld.d	$a7, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$t0, $fp, $a7, 3
	ld.d	$a7, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a7, $fp, $a7, 3
	ld.d	$t5, $sp, 888                   # 8-byte Folded Reload
	st.d	$fp, $sp, 1080                  # 8-byte Folded Spill
	alsl.d	$t5, $fp, $t5, 3
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 944                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_22:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t6, $a2
	fldx.d	$fa1, $s8, $t8
	ld.d	$fp, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa2, $fp, $a2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$fp, $sp, 1216                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a2
	fldx.d	$fa0, $t6, $a2
	fldx.d	$fa1, $ra, $t8
	add.d	$fp, $s0, $a2
	fld.d	$fa2, $fp, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s6, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a2
	fldx.d	$fa0, $t6, $a2
	fldx.d	$fa1, $a0, $t8
	fldx.d	$fa2, $s0, $a2
	fldx.d	$fa3, $s1, $t8
	fldx.d	$fa4, $a6, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$s6, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a2
	fldx.d	$fa0, $t6, $a2
	fldx.d	$fa1, $t0, $t8
	fld.d	$fa2, $fp, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$fp, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a2
	fldx.d	$fa0, $t6, $a2
	fldx.d	$fa1, $a7, $t8
	ld.d	$fp, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa2, $fp, $a2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a2
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa0, $fp, $t8
	fldx.d	$fa1, $t6, $a2
	fldx.d	$fa2, $s8, $t8
	ld.d	$fp, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa3, $fp, $a2
	fldx.d	$fa4, $t3, $a2
	ld.d	$fp, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa5, $fp, $t8
	ld.d	$fp, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa6, $fp, $a2
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$fp, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a2
	ld.d	$fp, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa0, $fp, $t8
	fldx.d	$fa1, $t6, $a2
	fldx.d	$fa2, $ra, $t8
	add.d	$fp, $t4, $a2
	fld.d	$fa3, $fp, -8
	fldx.d	$fa4, $t3, $a2
	ld.d	$fp, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa5, $fp, $t8
	add.d	$fp, $a5, $a2
	fld.d	$fa6, $fp, -8
	ld.d	$fp, $sp, 1096                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$s6, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a2
	ld.d	$s6, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa0, $s6, $t8
	fldx.d	$fa1, $t6, $a2
	fldx.d	$fa2, $a0, $t8
	fldx.d	$fa3, $t4, $a2
	fldx.d	$fa4, $t3, $a2
	ld.d	$s6, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa5, $s6, $t8
	fldx.d	$fa6, $a5, $a2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t5, $t8
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa5, $s6, $t8
	fldx.d	$fa7, $s1, $t8
	fldx.d	$ft0, $s7, $t8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$s6, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a2
	addi.d	$a2, $a2, 8
	addi.d	$t7, $t7, -1
	addi.d	$a4, $a4, -1
	addi.w	$a1, $a1, -1
	sub.d	$s2, $s2, $s3
	addi.d	$t1, $t1, -1
	addi.d	$a3, $a3, -1
	addi.d	$t2, $t2, -1
	addi.d	$s5, $s5, -1
	add.d	$t8, $t8, $s4
	bne	$fp, $a1, .LBB1_22
# %bb.23:                               # %._crit_edge.us.us.us.us.us.us2641
                                        #   in Loop: Header=BB1_21 Depth=3
	sub.w	$a3, $fp, $a3
	sub.w	$a4, $fp, $a4
	ld.d	$a0, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$a2, $sp, 1080                  # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$t6, $a0, $s2
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$s1, $fp, $s5
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_21
# %bb.24:                               # %._crit_edge2595.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_20 Depth=2
	sub.w	$a3, $fp, $t1
	sub.w	$a4, $fp, $t7
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$t6, $a0, $s2
	move	$a0, $fp
	ld.d	$fp, $sp, 880                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$s1, $a0, $t2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB1_20
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t7, $zero, 1
	blez	$a5, .LBB1_2
# %bb.26:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.27:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 752                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.28:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blez	$t3, .LBB1_2
# %bb.29:                               # %.preheader2449.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$fp, $zero
	mul.d	$t8, $a5, $a0
	st.d	$t8, $sp, 936                   # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s0, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$t8, $t3, $s0
	st.d	$t8, $sp, 928                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 752                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $t8
	mul.d	$t0, $t0, $t1
	sub.d	$t1, $t2, $t8
	mul.d	$t1, $t1, $t5
	sub.d	$a1, $a1, $t8
	mul.d	$a1, $a1, $t4
	ld.d	$t2, $sp, 1200                  # 8-byte Folded Reload
	bstrpick.d	$t5, $t2, 31, 0
	ld.d	$t2, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$t2, $t2, 31, 0
	ld.d	$t4, $sp, 1168                  # 8-byte Folded Reload
	bstrpick.d	$t4, $t4, 31, 0
	sub.w	$s2, $zero, $t3
	add.d	$t1, $t1, $a2
	nor	$t1, $t1, $zero
	st.d	$t1, $sp, 912                   # 8-byte Folded Spill
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 904                   # 8-byte Folded Spill
	slli.d	$a2, $t4, 3
	ld.d	$t1, $sp, 968                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $a2
	st.d	$t1, $sp, 896                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 976                   # 8-byte Folded Reload
	sub.d	$t1, $t3, $a2
	st.d	$t1, $sp, 888                   # 8-byte Folded Spill
	slli.d	$t1, $t2, 3
	sub.d	$a2, $a2, $t1
	add.d	$a2, $t3, $a2
	st.d	$a2, $sp, 880                   # 8-byte Folded Spill
	mul.d	$a2, $a6, $a7
	sub.d	$a6, $t7, $t8
	mul.d	$a5, $a5, $a6
	add.d	$a2, $a2, $a5
	mul.d	$a0, $a2, $a0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	sub.d	$a0, $t3, $t1
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	add.d	$a0, $t2, $t4
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	add.d	$a0, $t0, $s7
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	nor	$a0, $s7, $zero
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	add.d	$a0, $a1, $s4
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	nor	$a0, $s4, $zero
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	st.d	$t5, $sp, 920                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1248                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_30:                               # %.preheader2449.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_31 Depth 3
                                        #         Child Loop BB1_32 Depth 4
	st.d	$fp, $sp, 424                   # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_31:                               # %.preheader2445.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_32 Depth 4
	st.d	$a2, $sp, 960                   # 8-byte Folded Spill
	move	$t8, $zero
	move	$a7, $zero
	move	$s0, $zero
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s4, $a4, $a0, 3
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	sub.d	$t7, $a0, $a4
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$s8, $a3, $a0, 3
	ld.d	$a1, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$s6, $a3, $a1, 3
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a0, 3
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	sub.d	$fp, $a0, $a3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	sub.d	$s3, $a0, $s1
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t6
	ld.d	$t2, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $t2, 3
	st.d	$a2, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a5, 3
	st.d	$a2, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $t1, 3
	st.d	$a2, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a2, 3
	st.d	$t0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $t0, 3
	st.d	$t3, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t4, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$t3, $t6, $a5, 3
	alsl.d	$s2, $t6, $a2, 3
	alsl.d	$t4, $t6, $t4, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	alsl.d	$a0, $t6, $t2, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	alsl.d	$a0, $t6, $t1, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	alsl.d	$a0, $t6, $t0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$s7, $t6, $a0, 3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$s5, $t6, $a0, 3
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$t5, $t6, $a0, 3
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a0, $t6, $a0, 3
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$t0, $t6, $a2, 3
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	st.d	$t6, $sp, 952                   # 8-byte Folded Spill
	alsl.d	$t1, $t6, $a2, 3
	ld.d	$t6, $sp, 944                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 928                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_32:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        #       Parent Loop BB1_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $s0
	fldx.d	$fa1, $s7, $t8
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $t8
	ld.d	$a2, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa3, $a2, $s0
	fldx.d	$fa4, $t3, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a2, $sp, 1216                  # 8-byte Folded Reload
	fstx.d	$fa0, $a2, $s0
	fldx.d	$fa0, $a6, $s0
	fldx.d	$fa1, $s5, $t8
	add.d	$a2, $ra, $s0
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $t8
	fld.d	$fa3, $a2, -8
	fldx.d	$fa4, $s2, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	fldx.d	$fa0, $a6, $s0
	fldx.d	$fa1, $t5, $t8
	fldx.d	$fa2, $ra, $s0
	fldx.d	$fa3, $t4, $t8
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$a0, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	fldx.d	$fa0, $a6, $s0
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $t8
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $t8
	fld.d	$fa3, $a2, 8
	ld.d	$a0, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	fldx.d	$fa0, $a6, $s0
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $t8
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $t8
	ld.d	$a2, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa3, $a2, $s0
	ld.d	$a0, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $t8
	fldx.d	$fa1, $a6, $s0
	fldx.d	$fa2, $s7, $t8
	fldx.d	$fa3, $t6, $s0
	fldx.d	$fa4, $s4, $s0
	ld.d	$a0, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $t8
	ld.d	$a2, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa6, $a2, $s0
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t3, $t8
	ld.d	$a0, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $t8
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa7, $a0, $t8
	ld.d	$a0, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$ft0, $a0, $t8
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	ld.d	$a0, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $t8
	fldx.d	$fa1, $a6, $s0
	fldx.d	$fa2, $s5, $t8
	add.d	$a2, $s8, $s0
	fld.d	$fa3, $a2, -8
	fldx.d	$fa4, $s4, $s0
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $t8
	add.d	$a2, $s6, $s0
	fld.d	$fa6, $a2, -8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $s2, $t8
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $t8
	fldx.d	$fa7, $t0, $t8
	ld.d	$a0, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$ft0, $a0, $t8
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $t8
	fldx.d	$fa1, $a6, $s0
	fldx.d	$fa2, $t5, $t8
	fldx.d	$fa3, $s8, $s0
	fldx.d	$fa4, $s4, $s0
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $t8
	fldx.d	$fa6, $s6, $s0
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t1, $t8
	ld.d	$a0, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $t8
	fldx.d	$fa7, $t4, $t8
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$ft0, $a0, $t8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$a0, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	addi.d	$s0, $s0, 8
	addi.d	$t7, $t7, -1
	addi.d	$a4, $a4, -1
	addi.w	$a7, $a7, -1
	sub.d	$t2, $t2, $a5
	addi.d	$fp, $fp, -1
	addi.d	$a3, $a3, -1
	addi.d	$s3, $s3, -1
	addi.d	$a1, $a1, -1
	add.d	$t8, $t8, $s1
	ld.d	$a0, $sp, 1248                  # 8-byte Folded Reload
	bne	$a0, $a7, .LBB1_32
# %bb.33:                               # %._crit_edge.us.us.us.us.us.us2580
                                        #   in Loop: Header=BB1_31 Depth=3
	ld.d	$s2, $sp, 1248                  # 8-byte Folded Reload
	sub.w	$a3, $s2, $a3
	sub.w	$a4, $s2, $a4
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 952                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	sub.w	$t6, $a0, $t2
	ld.d	$a2, $sp, 960                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$s1, $s2, $a1
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB1_31
# %bb.34:                               # %._crit_edge2534.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_30 Depth=2
	sub.w	$a3, $s2, $fp
	sub.w	$a4, $s2, $t7
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	sub.w	$t6, $a0, $t2
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$s1, $s2, $s3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB1_30
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t7, $zero, 1
	blez	$a5, .LBB1_2
# %bb.36:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.37:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 752                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.38:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blez	$t3, .LBB1_2
# %bb.39:                               # %.preheader2450.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$fp, $zero
	mul.d	$t8, $a5, $a0
	st.d	$t8, $sp, 848                   # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s0, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$t8, $t3, $s0
	st.d	$t8, $sp, 840                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 752                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $t8
	mul.d	$t0, $t0, $t1
	sub.d	$t1, $t2, $t8
	mul.d	$t1, $t1, $t5
	sub.d	$a1, $a1, $t8
	mul.d	$a1, $a1, $t4
	ld.d	$t2, $sp, 1200                  # 8-byte Folded Reload
	bstrpick.d	$t5, $t2, 31, 0
	ld.d	$t2, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$t2, $t2, 31, 0
	ld.d	$t4, $sp, 1168                  # 8-byte Folded Reload
	bstrpick.d	$t4, $t4, 31, 0
	sub.w	$t3, $zero, $t3
	add.d	$t1, $t1, $a2
	nor	$t1, $t1, $zero
	st.d	$t1, $sp, 824                   # 8-byte Folded Spill
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 968                   # 8-byte Folded Reload
	addi.d	$s2, $a2, -8
	ld.d	$t1, $sp, 976                   # 8-byte Folded Reload
	addi.d	$s3, $t1, -8
	mul.d	$a2, $a6, $a7
	sub.d	$a6, $t7, $t8
	mul.d	$a5, $a5, $a6
	add.d	$a2, $a2, $a5
	mul.d	$a0, $a2, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$t5, $sp, 832                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 784                   # 8-byte Folded Spill
	slli.d	$a2, $t4, 3
	st.d	$s2, $sp, 808                   # 8-byte Folded Spill
	sub.d	$a5, $s2, $a2
	st.d	$a5, $sp, 776                   # 8-byte Folded Spill
	sub.d	$a5, $s3, $a2
	st.d	$a5, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 616                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	st.d	$a5, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	st.d	$a5, $sp, 512                   # 8-byte Folded Spill
	slli.d	$a5, $t2, 3
	sub.d	$a2, $a2, $a5
	st.d	$s3, $sp, 800                   # 8-byte Folded Spill
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	sub.d	$a2, $t1, $a5
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	add.d	$a2, $t2, $t4
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a2
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	add.d	$a2, $t0, $s7
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	nor	$a2, $s7, $zero
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	add.d	$a1, $a1, $s4
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	nor	$a1, $s4, $zero
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	st.d	$t3, $sp, 1248                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_40:                               # %.preheader2450.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_42 Depth 4
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$a1, $s1
	.p2align	4, , 16
.LBB1_41:                               # %.preheader2446.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_42 Depth 4
	st.d	$a2, $sp, 864                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
	move	$t1, $zero
	move	$s2, $t6
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t3, $a4, $a0, 3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sub.d	$s1, $a0, $a4
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a2, 3
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$fp, $a3, $a0, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$s4, $a3, $a0, 3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s8, $a3, $a0, 3
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a0, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$s3, $a0, $a2, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	sub.d	$s7, $a0, $a3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	sub.d	$t8, $a0, $a1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a5, 3
	st.d	$a2, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $t6, 3
	st.d	$a2, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $t0, 3
	st.d	$a2, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a7, 3
	st.d	$a2, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $t4, 3
	st.d	$a2, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t2, $a1, $a2, 3
	st.d	$t2, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t2, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t5, $a1, $t2, 3
	st.d	$t5, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s0, 3
	st.d	$a1, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$t7, $s2, $t0, 3
	alsl.d	$a2, $s2, $a2, 3
	alsl.d	$s0, $s2, $s0, 3
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a1, $s2, $a5, 3
	st.d	$a1, $sp, 968                   # 8-byte Folded Spill
	alsl.d	$a1, $s2, $t6, 3
	st.d	$a1, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 952                   # 8-byte Folded Spill
	alsl.d	$a1, $s2, $a7, 3
	st.d	$a1, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$a1, $s2, $t4, 3
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$a1, $s2, $t2, 3
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$t2, $s2, $a1, 3
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a5, 3
	st.d	$a5, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t6, $s2, $a5, 3
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t0, $s2, $a5, 3
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a5, 3
	st.d	$a5, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a7, $s2, $a5, 3
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a5, 3
	st.d	$a5, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	st.d	$s2, $sp, 856                   # 8-byte Folded Spill
	alsl.d	$a5, $s2, $a5, 3
	st.d	$a5, $sp, 880                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 840                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $t2, $s5
	fldx.d	$fa2, $s3, $t1
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a5, $s3, $t1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t4, $sp, 1232                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $a1, $s5
	ld.d	$t4, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s5
	fld.d	$fa3, $a5, 8
	fldx.d	$fa4, $t7, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t4, $sp, 1224                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $t6, $s5
	fld.d	$fa2, $a5, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a5, $sp, 1216                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $t0, $s5
	add.d	$a5, $ra, $t1
	ld.d	$t4, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s5
	fld.d	$fa3, $a5, -8
	fldx.d	$fa4, $a2, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t4, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $a7, $s5
	fldx.d	$fa2, $ra, $t1
	fldx.d	$fa3, $s0, $s5
	ld.d	$t4, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa4, $t4, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t4, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$t4, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $s5
	ld.d	$t4, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s5
	fld.d	$fa3, $a5, 8
	ld.d	$a5, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa4, $a5, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a5, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$a5, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa1, $a5, $s5
	fldx.d	$fa2, $s8, $t1
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a5, $s8, $t1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t4, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$t4, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $s5
	ld.d	$t4, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s5
	fld.d	$fa3, $a5, 8
	ld.d	$t4, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa4, $t4, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t4, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$t4, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $s5
	fld.d	$fa2, $a5, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a5, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $t2, $s5
	ld.d	$a5, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa2, $a5, $s5
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $fp, $t1
	fldx.d	$fa3, $t3, $t1
	ld.d	$a5, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa4, $a5, $s5
	add.d	$a5, $fp, $t1
	fldx.d	$fa5, $s4, $t1
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	add.d	$t4, $s4, $t1
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ld.d	$t5, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t1
	ld.d	$t5, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa0, $t5, $s5
	fldx.d	$fa1, $a6, $t1
	fldx.d	$fa2, $a1, $s5
	fld.d	$fa3, $a5, 8
	fldx.d	$fa4, $t3, $t1
	ld.d	$t5, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s5
	fld.d	$fa6, $t4, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t7, $s5
	ld.d	$t5, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s5
	ld.d	$t5, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s5
	ld.d	$t5, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t5, $sp, 1144                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t1
	fld.d	$fa0, $a5, 16
	ld.d	$a5, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa1, $a5, $s5
	fldx.d	$fa2, $a6, $t1
	fldx.d	$fa3, $t6, $s5
	fldx.d	$fa4, $t3, $t1
	ld.d	$a5, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa5, $a5, $s5
	fld.d	$fa6, $t4, 16
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a5, $sp, 1136                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $t0, $s5
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa2, $a5, $s5
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$a5, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa3, $a5, $t1
	fldx.d	$fa4, $t3, $t1
	ld.d	$t4, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa5, $t4, $s5
	ld.d	$t4, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa6, $t4, $t1
	add.d	$a5, $a5, $t1
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $a2, $s5
	ld.d	$t5, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s5
	ld.d	$t5, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s5
	ld.d	$t5, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s5
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t5, $sp, 1128                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t1
	fld.d	$fa0, $a5, 8
	add.d	$a5, $t4, $t1
	ld.d	$t4, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $s5
	fldx.d	$fa2, $a6, $t1
	fldx.d	$fa3, $a7, $s5
	fldx.d	$fa4, $t3, $t1
	ld.d	$t4, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa5, $t4, $s5
	fld.d	$fa6, $a5, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$a5, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa3, $a5, $s5
	ld.d	$a5, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa5, $a5, $s5
	fldx.d	$fa7, $s0, $s5
	ld.d	$a5, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$ft0, $a5, $s5
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$a5, $sp, 1120                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t1
	addi.d	$t1, $t1, 8
	addi.d	$s1, $s1, -1
	addi.d	$a4, $a4, -1
	addi.w	$s6, $s6, -1
	ld.d	$a5, $sp, 1256                  # 8-byte Folded Reload
	sub.d	$s2, $s2, $a5
	ld.d	$a5, $sp, 872                   # 8-byte Folded Reload
	add.d	$s5, $s5, $a5
	addi.d	$s7, $s7, -1
	addi.d	$a3, $a3, -1
	addi.d	$t8, $t8, -1
	addi.d	$a0, $a0, -1
	ld.d	$a5, $sp, 1248                  # 8-byte Folded Reload
	bne	$a5, $s6, .LBB1_42
# %bb.43:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_41 Depth=3
	ld.d	$t3, $sp, 1248                  # 8-byte Folded Reload
	sub.w	$a3, $t3, $a3
	sub.w	$a4, $t3, $a4
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 856                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a5
	sub.w	$t6, $a1, $s2
	ld.d	$a2, $sp, 864                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$a1, $t3, $a0
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB1_41
# %bb.44:                               # %._crit_edge2477.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_40 Depth=2
	sub.w	$a3, $t3, $s7
	sub.w	$a4, $t3, $s1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	sub.w	$t6, $a0, $s2
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$s1, $t3, $t8
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB1_40
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_45:                               #   in Loop: Header=BB1_3 Depth=1
	blez	$a5, .LBB1_2
# %bb.46:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.47:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 752                   # 8-byte Folded Reload
	blez	$a5, .LBB1_2
# %bb.48:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blez	$t3, .LBB1_2
# %bb.49:                               # %.preheader2447.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$fp, $zero
	mul.d	$t8, $a5, $a0
	st.d	$t8, $sp, 448                   # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s0, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$t8, $t3, $s0
	st.d	$t8, $sp, 440                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 752                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $t8
	mul.d	$t0, $t0, $t1
	sub.d	$t1, $t2, $t8
	mul.d	$t1, $t1, $t5
	sub.d	$a1, $a1, $t8
	mul.d	$a1, $a1, $t4
	ld.d	$t2, $sp, 1200                  # 8-byte Folded Reload
	bstrpick.d	$t5, $t2, 31, 0
	ld.d	$t2, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$t2, $t2, 31, 0
	ld.d	$t4, $sp, 1168                  # 8-byte Folded Reload
	bstrpick.d	$t4, $t4, 31, 0
	sub.w	$t3, $zero, $t3
	add.d	$t1, $t1, $a2
	nor	$t1, $t1, $zero
	st.d	$t1, $sp, 424                   # 8-byte Folded Spill
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 968                   # 8-byte Folded Reload
	addi.d	$s2, $a2, -8
	ld.d	$t1, $sp, 976                   # 8-byte Folded Reload
	addi.d	$s3, $t1, -8
	mul.d	$a2, $a6, $a7
	sub.d	$a6, $t7, $t8
	mul.d	$a5, $a5, $a6
	add.d	$a2, $a2, $a5
	mul.d	$a0, $a2, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$t5, $sp, 432                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	slli.d	$a2, $t4, 3
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	sub.d	$a5, $s2, $a2
	st.d	$a5, $sp, 376                   # 8-byte Folded Spill
	sub.d	$a5, $s3, $a2
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	st.d	$a5, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 616                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	st.d	$a5, $sp, 352                   # 8-byte Folded Spill
	slli.d	$a5, $t2, 3
	sub.d	$a2, $a2, $a5
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	sub.d	$a2, $t1, $a5
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	add.d	$a2, $t2, $t4
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	st.d	$a5, $sp, 320                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a2
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	add.d	$a2, $t0, $s7
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	nor	$a2, $s7, $zero
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	add.d	$a1, $a1, $s4
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	nor	$a1, $s4, $zero
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	st.d	$t3, $sp, 1248                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_50:                               # %.preheader2447.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_51 Depth 3
                                        #         Child Loop BB1_52 Depth 4
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_51:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_52 Depth 4
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	move	$s3, $zero
	move	$s8, $zero
	move	$t1, $zero
	move	$s7, $t6
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$fp, $a4, $a0, 3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	sub.d	$s0, $a0, $a4
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a1, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a0, 3
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t8, $a3, $a0, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$a2, $a0, $a1, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	sub.d	$s2, $a0, $a3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.d	$t5, $a0, $s1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a5, $a0, $s1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t6
	ld.d	$t2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t2, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a7, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$s5, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s5, 3
	st.d	$a1, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t4, 3
	st.d	$a1, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t6, 3
	st.d	$a1, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$s1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s1, 3
	st.d	$a1, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a1, 3
	st.d	$t0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $t7, 3
	st.d	$t0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s6, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$t0, $s7, $a7, 3
	alsl.d	$a7, $s7, $t3, 3
	alsl.d	$t3, $s7, $t6, 3
	alsl.d	$a1, $s7, $a1, 3
	alsl.d	$s6, $s7, $s6, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $t2, 3
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $s5, 3
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $t4, 3
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $s1, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $t7, 3
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s1, $s7, $a0, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t7, $s7, $a0, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s5, $s7, $a0, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t2, $s7, $t2, 3
	st.d	$t2, $sp, 816                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t2, $s7, $t2, 3
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $t4, 3
	st.d	$t4, $sp, 808                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $t4, 3
	st.d	$t4, $sp, 800                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $t4, 3
	st.d	$t4, $sp, 792                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $t4, 3
	st.d	$t4, $sp, 784                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $t4, 3
	st.d	$t4, $sp, 776                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	st.d	$s7, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$t4, $s7, $t4, 3
	st.d	$t4, $sp, 768                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_52:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $s1, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t4, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s3
	fldx.d	$fa3, $a2, $t1
	fldx.d	$fa4, $t0, $s3
	add.d	$t4, $a2, $t1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1216                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $t7, $s3
	ld.d	$t6, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t4, 8
	fldx.d	$fa4, $a7, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $s5, $s3
	ld.d	$t6, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t4, 16
	fldx.d	$fa4, $t3, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t4, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $a0, $s3
	add.d	$t4, $t8, $t1
	ld.d	$t6, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t4, -8
	fldx.d	$fa4, $a1, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $t2, $s3
	fldx.d	$fa2, $t8, $t1
	fldx.d	$fa3, $s6, $s3
	ld.d	$t6, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa4, $t6, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t6, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$t6, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	ld.d	$t6, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t4, 8
	ld.d	$t4, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa4, $t4, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t4, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$t4, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t4, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s3
	fldx.d	$fa3, $ra, $t1
	ld.d	$t4, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa4, $t4, $s3
	add.d	$t4, $ra, $t1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	ld.d	$t6, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t4, 8
	ld.d	$t6, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa4, $t6, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $a6, $t1
	ld.d	$t6, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	ld.d	$t6, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t4, 16
	ld.d	$t4, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa4, $t4, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t4, $sp, 1152                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $s1, $s3
	ld.d	$t4, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t4, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa3, $t4, $t1
	fldx.d	$fa4, $fp, $t1
	ld.d	$t6, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s3
	add.d	$t4, $t4, $t1
	ld.d	$t6, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa6, $t6, $t1
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	add.d	$t6, $t6, $t1
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $t0, $s3
	ld.d	$s4, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	ld.d	$s4, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $s3
	ld.d	$s4, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $s3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t1
	ld.d	$s4, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa0, $s4, $s3
	fldx.d	$fa1, $a6, $t1
	fldx.d	$fa2, $t7, $s3
	fld.d	$fa3, $t4, 8
	fldx.d	$fa4, $fp, $t1
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	fld.d	$fa6, $t6, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a7, $s3
	ld.d	$s4, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	ld.d	$s4, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $s3
	ld.d	$s4, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $s3
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 1128                  # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t1
	fld.d	$fa0, $t4, 16
	ld.d	$t4, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $s3
	fldx.d	$fa2, $a6, $t1
	fldx.d	$fa3, $s5, $s3
	fldx.d	$fa4, $fp, $t1
	ld.d	$t4, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa5, $t4, $s3
	fld.d	$fa6, $t6, 16
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	fldx.d	$fa3, $t3, $s3
	ld.d	$t4, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa5, $t4, $s3
	ld.d	$t4, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa7, $t4, $s3
	ld.d	$t4, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$ft0, $t4, $s3
	fmadd.d	$fa0, $fa3, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t4, $sp, 1120                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $a6, $t1
	fldx.d	$fa1, $a0, $s3
	ld.d	$t4, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t4, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa3, $t4, $t1
	fldx.d	$fa4, $fp, $t1
	ld.d	$t6, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s3
	ld.d	$t6, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa6, $t6, $t1
	add.d	$t4, $t4, $t1
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $a1, $s3
	ld.d	$s4, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	ld.d	$s4, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $s3
	ld.d	$s4, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $s3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 1112                  # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t1
	fld.d	$fa0, $t4, 8
	add.d	$t4, $t6, $t1
	ld.d	$t6, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	fldx.d	$fa2, $a6, $t1
	fldx.d	$fa3, $t2, $s3
	fldx.d	$fa4, $fp, $t1
	ld.d	$t6, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s3
	fld.d	$fa6, $t4, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$t4, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa3, $t4, $s3
	ld.d	$t4, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa5, $t4, $s3
	fldx.d	$fa7, $s6, $s3
	ld.d	$t4, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$ft0, $t4, $s3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$t4, $sp, 1104                  # 8-byte Folded Reload
	fstx.d	$fa0, $t4, $t1
	addi.d	$t1, $t1, 8
	addi.d	$s0, $s0, -1
	addi.d	$a4, $a4, -1
	addi.w	$s8, $s8, -1
	ld.d	$t4, $sp, 1256                  # 8-byte Folded Reload
	sub.d	$s7, $s7, $t4
	ld.d	$t4, $sp, 760                   # 8-byte Folded Reload
	add.d	$s3, $s3, $t4
	addi.d	$s2, $s2, -1
	addi.d	$a3, $a3, -1
	addi.d	$t5, $t5, -1
	addi.d	$a5, $a5, -1
	ld.d	$t4, $sp, 1248                  # 8-byte Folded Reload
	bne	$t4, $s8, .LBB1_52
# %bb.53:                               # %._crit_edge.us.us.us.us.us.us2702
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$t3, $sp, 1248                  # 8-byte Folded Reload
	sub.w	$a3, $t3, $a3
	sub.w	$a4, $t3, $a4
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$t6, $a0, $s7
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$s1, $t3, $a5
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_51
# %bb.54:                               # %._crit_edge2656.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_50 Depth=2
	sub.w	$a3, $t3, $s2
	sub.w	$a4, $t3, $s0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$t6, $a0, $s7
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$s1, $t3, $t5
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB1_50
	b	.LBB1_2
.LBB1_55:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s2, $sp, 1168                  # 8-byte Folded Reload
	ori	$fp, $zero, 1
	b	.LBB1_10
.LBB1_56:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1352                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1360                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1384                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1392
	ret
.Lfunc_end1:
	.size	hypre_SMG3BuildRAPSym, .Lfunc_end1-hypre_SMG3BuildRAPSym
                                        # -- End function
	.globl	hypre_SMG3BuildRAPNoSym         # -- Begin function hypre_SMG3BuildRAPNoSym
	.p2align	5
	.type	hypre_SMG3BuildRAPNoSym,@function
hypre_SMG3BuildRAPNoSym:                # @hypre_SMG3BuildRAPNoSym
# %bb.0:
	addi.d	$sp, $sp, -1280
	st.d	$ra, $sp, 1272                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1192                  # 8-byte Folded Spill
	move	$s4, $a3
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	blez	$a6, .LBB2_57
# %bb.1:                                # %.preheader2330.lr.ph
	move	$s5, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s5, 8
	move	$s6, $zero
	move	$a4, $zero
	ld.w	$a2, $a0, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit2326
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s6, $s6, 1
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ori	$s2, $zero, 1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bge	$s6, $a0, .LBB2_57
.LBB2_3:                                # %.preheader2330
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_51 Depth 2
                                        #       Child Loop BB2_52 Depth 3
                                        #         Child Loop BB2_53 Depth 4
                                        #     Child Loop BB2_21 Depth 2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_23 Depth 4
                                        #     Child Loop BB2_31 Depth 2
                                        #       Child Loop BB2_32 Depth 3
                                        #         Child Loop BB2_33 Depth 4
                                        #     Child Loop BB2_41 Depth 2
                                        #       Child Loop BB2_42 Depth 3
                                        #         Child Loop BB2_43 Depth 4
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s1, $a4, -1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 2
	slli.d	$a2, $a4, 4
	alsl.d	$a2, $a4, $a2, 3
	addi.d	$a3, $a4, -1
	addi.d	$s3, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s1, $s1, 1
	addi.d	$a1, $a1, 4
	addi.d	$s3, $s3, 24
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $s6, 4
	alsl.d	$a1, $s6, $a1, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1168
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 40
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 40
	ld.d	$a3, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a2, $s4, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1128                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1104                  # 8-byte Folded Spill
	add.d	$s8, $a4, $s3
	st.d	$zero, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	st.d	$zero, $sp, 1180
	st.d	$a1, $sp, 1136                  # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.w	$a1, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s0
	move	$s0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	ori	$fp, $zero, 0
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$fp, $sp, 1080                  # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s0, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s0, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1136                  # 8-byte Folded Reload
	st.d	$s8, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$fp, $s8
	lu32i.d	$fp, 1
	st.d	$fp, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s0, $a0, .LBB2_56
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s8, $sp, 1180
	ori	$s0, $zero, 1
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	ld.d	$s0, $sp, 1064                  # 8-byte Folded Reload
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	ori	$s2, $zero, 1
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s5
	ori	$s5, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 1072                  # 8-byte Folded Reload
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $zero
.LBB2_10:                               # %.thread2248
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1096                  # 8-byte Folded Reload
.LBB2_11:                               # %.thread2248
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 1144                  # 8-byte Folded Reload
	add.d	$fp, $a1, $s3
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	st.d	$s2, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1080                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 1136                  # 8-byte Folded Reload
	beqz	$s5, .LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s0, $s7
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	ori	$s2, $zero, 1
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	ori	$s2, $zero, 1
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 1180
	st.w	$s2, $sp, 1188
	ld.d	$s4, $sp, 1120                  # 8-byte Folded Reload
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s4, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ldx.w	$a2, $s0, $s3
	ld.w	$a3, $s4, -12
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s7, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s7, $a2
	ld.w	$a3, $s8, 4
	ld.w	$a4, $s8, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s7, $a0
	ld.d	$s5, $sp, 1104                  # 8-byte Folded Reload
	ldx.w	$a2, $s5, $s3
	ld.w	$a3, $s8, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s7, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s7, $a2
	or	$a1, $a1, $a2
	st.d	$s2, $sp, 1184
	ldx.w	$a2, $s5, $s3
	ld.w	$a3, $s8, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a1, $sp, 1156
	ld.d	$s2, $sp, 1112                  # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a3, $s8, -12
	ld.w	$a1, $s2, 4
	ld.w	$a4, $s8, -8
	ld.w	$a2, $s2, 8
	ld.w	$a5, $s8, -4
	ld.w	$a6, $s8, 4
	sub.d	$a7, $a0, $a3
	sub.d	$t0, $a1, $a4
	sub.d	$a5, $a2, $a5
	sub.w	$a4, $a6, $a4
	slt	$a6, $s7, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s7, $a6
	or	$a4, $a4, $a6
	ldx.w	$a6, $s5, $s3
	addi.d	$t1, $a4, 1
	mul.d	$a4, $t1, $a5
	add.d	$a4, $t0, $a4
	sub.w	$a3, $a6, $a3
	slt	$a5, $s7, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $s7, $a5
	or	$s2, $a3, $a5
	addi.d	$t2, $s2, 1
	mul.d	$a3, $a4, $t2
	add.w	$a4, $a7, $a3
	ld.w	$a3, $fp, -12
	ld.w	$a5, $fp, -8
	ld.w	$a6, $fp, -4
	ld.w	$a7, $fp, 4
	sub.d	$t3, $a0, $a3
	sub.d	$t0, $a1, $a5
	sub.d	$a6, $a2, $a6
	sub.w	$a5, $a7, $a5
	slt	$a7, $s7, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $s7, $a7
	or	$a5, $a5, $a7
	ld.d	$a7, $sp, 1144                  # 8-byte Folded Reload
	ldx.w	$a7, $a7, $s3
	addi.d	$t6, $a5, 1
	mul.d	$a5, $t6, $a6
	add.d	$a5, $t0, $a5
	sub.w	$a3, $a7, $a3
	slt	$a6, $s7, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s7, $a6
	or	$t0, $a3, $a6
	addi.d	$t7, $t0, 1
	mul.d	$a3, $a5, $t7
	add.w	$a5, $t3, $a3
	ld.w	$a3, $sp, 1168
	ld.w	$a6, $s4, -12
	ld.w	$a7, $sp, 1172
	ld.w	$t3, $s4, -8
	ld.w	$t4, $sp, 1176
	ld.w	$t5, $s4, -4
	ld.w	$t8, $s4, 4
	sub.d	$a3, $a3, $a6
	sub.d	$a7, $a7, $t3
	sub.d	$t4, $t4, $t5
	sub.w	$t3, $t8, $t3
	slt	$t5, $s7, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $s7, $t5
	or	$t3, $t3, $t5
	ldx.w	$t5, $s0, $s3
	addi.d	$s3, $t3, 1
	mul.d	$t3, $s3, $t4
	add.d	$a7, $a7, $t3
	sub.w	$a6, $t5, $a6
	slt	$t3, $s7, $a6
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $s7, $t3
	or	$a6, $a6, $t3
	addi.d	$s0, $a6, 1
	mul.d	$a6, $a7, $s0
	add.w	$a6, $a3, $a6
	ld.w	$a3, $s1, 0
	ld.w	$a7, $s1, 4
	ld.w	$t3, $s1, 8
	ld.w	$t4, $s1, 16
	sub.d	$t5, $a0, $a3
	sub.d	$a1, $a1, $a7
	sub.d	$a2, $a2, $t3
	sub.w	$a0, $t4, $a7
	slt	$a7, $s7, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a7, $s7, $a7
	or	$a0, $a0, $a7
	ld.w	$a7, $s1, 12
	addi.d	$a0, $a0, 1
	mul.d	$a2, $a0, $a2
	add.d	$a2, $a1, $a2
	sub.w	$a1, $a7, $a3
	slt	$a3, $s7, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s7, $a3
	or	$s7, $a1, $a3
	addi.d	$a1, $s7, 1
	mul.d	$a2, $a2, $a1
	ld.w	$a3, $sp, 1156
	st.d	$a3, $sp, 496                   # 8-byte Folded Spill
	ld.w	$t3, $sp, 1160
	add.w	$a7, $t5, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 624                   # 8-byte Folded Spill
	ld.w	$t4, $sp, 1164
	slt	$a2, $a3, $t3
	masknez	$a3, $a3, $a2
	st.d	$t3, $sp, 648                   # 8-byte Folded Spill
	maskeqz	$a2, $t3, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $t4
	masknez	$a2, $a2, $a3
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	maskeqz	$a3, $t4, $a3
	or	$a2, $a3, $a2
	ori	$a3, $zero, 19
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	beq	$t3, $a3, .LBB2_36
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a3, $zero, 15
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	beq	$t3, $a3, .LBB2_26
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$t3, $zero, 1
	ori	$a3, $zero, 7
	ld.d	$t4, $sp, 136                   # 8-byte Folded Reload
	bne	$t4, $a3, .LBB2_46
# %bb.16:                               #   in Loop: Header=BB2_3 Depth=1
	blez	$a2, .LBB2_2
# %bb.17:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.18:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.19:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.20:                               # %.preheader2316.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 4
	move	$fp, $zero
	mul.d	$t4, $a2, $s0
	st.d	$t4, $sp, 1016                  # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$t5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 496                   # 8-byte Folded Reload
	mul.d	$t4, $t8, $t5
	st.d	$t4, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $t4
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $t4
	mul.d	$t2, $t2, $t7
	sub.d	$a0, $a0, $t4
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 1096                  # 8-byte Folded Reload
	bstrpick.d	$t6, $a1, 31, 0
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	bstrpick.d	$t7, $a1, 31, 0
	sub.w	$s4, $zero, $t8
	add.d	$a1, $t2, $t0
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	nor	$a1, $t0, $zero
	st.d	$a1, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t2, $t0, $a1, 3
	st.d	$t2, $sp, 968                   # 8-byte Folded Spill
	sub.d	$t0, $t7, $t0
	st.d	$t0, $sp, 960                   # 8-byte Folded Spill
	st.d	$t7, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$a1, $t7, $a1, 3
	st.d	$a1, $sp, 952                   # 8-byte Folded Spill
	add.d	$a1, $t1, $s2
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 944                   # 8-byte Folded Spill
	nor	$a1, $s2, $zero
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s7
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	nor	$a0, $s7, $zero
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $s3
	sub.d	$a1, $t3, $t4
	mul.d	$a1, $a2, $a1
	slli.d	$s5, $t5, 3
	add.d	$a0, $a0, $a1
	st.d	$t6, $sp, 1000                  # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	mul.d	$a0, $a0, $s0
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_21:                               # %.preheader2316.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_23 Depth 4
	st.d	$fp, $sp, 896                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_22:                               # %.preheader2312.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_23 Depth 4
	st.d	$a1, $sp, 1032                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$ra, $zero
	move	$a2, $zero
	move	$s0, $a6
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a0, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$t3, $a5, $a0, 3
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	sub.d	$s7, $a0, $a5
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	sub.d	$a5, $a0, $a5
	ld.d	$a3, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a3, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $a0, $a3, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a3, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	alsl.d	$t5, $a4, $a0, 3
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	sub.d	$s2, $a0, $a4
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	sub.d	$t6, $a0, $a4
	alsl.d	$a0, $a4, $a3, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a1, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a7
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	sub.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	add.d	$a4, $a0, $s0
	ld.d	$fp, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$s1, $a4, $fp, 3
	ld.d	$t8, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t1, $a4, $t8, 3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $t7, 3
	ld.d	$t0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$t2, $a4, $t0, 3
	ld.d	$t0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t0, $a4, $t0, 3
	alsl.d	$t7, $s0, $t7, 3
	alsl.d	$a4, $s0, $fp, 3
	alsl.d	$t8, $s0, $t8, 3
	ld.d	$t4, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$fp, $s0, $t4, 3
	ld.d	$t4, $sp, 904                   # 8-byte Folded Reload
	st.d	$s0, $sp, 1024                  # 8-byte Folded Spill
	alsl.d	$s3, $s0, $t4, 3
	ld.d	$s0, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$t4, $sp, 624                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_23:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        #       Parent Loop BB2_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $a2
	fldx.d	$fa1, $s1, $s8
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $s6, $a2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s6, $sp, 1096                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a2
	fldx.d	$fa0, $a6, $a2
	fldx.d	$fa1, $t1, $s8
	move	$s6, $s5
	move	$s5, $s4
	add.d	$s4, $t5, $a2
	fld.d	$fa2, $s4, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	fldx.d	$fa0, $a6, $a2
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $s8
	fldx.d	$fa2, $t5, $a2
	fldx.d	$fa3, $t7, $s8
	fldx.d	$fa4, $a1, $s8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$a0, $sp, 1080                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	fldx.d	$fa0, $a6, $a2
	fldx.d	$fa1, $t2, $s8
	fld.d	$fa2, $s4, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1072                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	fldx.d	$fa0, $a6, $a2
	fldx.d	$fa1, $t0, $s8
	ld.d	$s4, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa2, $s4, $a2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	fldx.d	$fa0, $a4, $s8
	fldx.d	$fa1, $t3, $a2
	fldx.d	$fa2, $fp, $s8
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa3, $s4, $a2
	fldx.d	$fa4, $a6, $a2
	fldx.d	$fa5, $s1, $s8
	ld.d	$s4, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa6, $s4, $a2
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	fldx.d	$fa0, $t8, $s8
	fldx.d	$fa1, $t3, $a2
	fldx.d	$fa2, $s3, $s8
	ld.d	$s4, $sp, 1112                  # 8-byte Folded Reload
	add.d	$s4, $s4, $a2
	fld.d	$fa3, $s4, 8
	fldx.d	$fa4, $a6, $a2
	fldx.d	$fa5, $t1, $s8
	ld.d	$s4, $sp, 1104                  # 8-byte Folded Reload
	add.d	$s4, $s4, $a2
	fld.d	$fa6, $s4, 8
	move	$s4, $s5
	move	$s5, $s6
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a2, 8
	addi.d	$s7, $s7, -1
	addi.d	$a5, $a5, -1
	addi.w	$ra, $ra, -1
	addi.d	$s2, $s2, -1
	addi.d	$t6, $t6, -1
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, -1
	add.d	$s8, $s8, $s6
	sub.d	$s0, $s0, $t4
	bne	$s4, $ra, .LBB2_23
# %bb.24:                               # %._crit_edge.us.us.us.us.us.us2509
                                        #   in Loop: Header=BB2_22 Depth=3
	sub.w	$a4, $s4, $t6
	sub.w	$a5, $s4, $a5
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$a2, $sp, 1024                  # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$a6, $a0, $s0
	ld.d	$a1, $sp, 1032                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$a7, $s4, $a7
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_22
# %bb.25:                               # %._crit_edge2463.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_21 Depth=2
	sub.w	$a4, $s4, $s2
	sub.w	$a5, $s4, $s7
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$a6, $a0, $s0
	ld.d	$fp, $sp, 896                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$a7, $s4, $a3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB2_21
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$t3, $zero, 1
	blez	$a2, .LBB2_2
# %bb.27:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.28:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.29:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.30:                               # %.preheader2317.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 4
	move	$fp, $zero
	mul.d	$t4, $a2, $s0
	st.d	$t4, $sp, 904                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$t5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 496                   # 8-byte Folded Reload
	mul.d	$t4, $t8, $t5
	st.d	$t4, $sp, 896                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $t4
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $t4
	mul.d	$t2, $t2, $t7
	sub.d	$a0, $a0, $t4
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 1096                  # 8-byte Folded Reload
	bstrpick.d	$t6, $a1, 31, 0
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	bstrpick.d	$t7, $a1, 31, 0
	sub.w	$t8, $zero, $t8
	add.d	$a1, $t2, $t0
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	nor	$a1, $t0, $zero
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t2, $t0, $a1, 3
	st.d	$t2, $sp, 856                   # 8-byte Folded Spill
	sub.d	$t0, $t7, $t0
	st.d	$t0, $sp, 848                   # 8-byte Folded Spill
	st.d	$t7, $sp, 880                   # 8-byte Folded Spill
	alsl.d	$a1, $t7, $a1, 3
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	add.d	$a1, $t1, $s2
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	nor	$a1, $s2, $zero
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s7
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	nor	$a0, $s7, $zero
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	st.d	$t6, $sp, 888                   # 8-byte Folded Spill
	slli.d	$a0, $t6, 3
	mul.d	$a1, $a3, $s3
	sub.d	$a3, $t3, $t4
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a0
	st.d	$a3, $sp, 792                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 784                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $s0
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_31:                               # %.preheader2317.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_32 Depth 3
                                        #         Child Loop BB2_33 Depth 4
	st.d	$fp, $sp, 760                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_32:                               # %.preheader2313.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_33 Depth 4
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
	move	$t5, $zero
	move	$s0, $a6
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a0, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$t2, $a5, $a0, 3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	sub.d	$s4, $a0, $a5
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	sub.d	$a5, $a0, $a5
	ld.d	$a2, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a2, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a2, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$s2, $a4, $a0, 3
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	sub.d	$s8, $a0, $a4
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sub.d	$s3, $a0, $a4
	alsl.d	$a0, $a4, $a2, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a1, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sub.d	$t1, $a0, $a7
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	sub.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s0
	ld.d	$s1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $s1, 3
	ld.d	$t0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t0, 3
	st.d	$a1, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$ra, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $ra, 3
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a2, 3
	st.d	$a1, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$s7, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s7, 3
	st.d	$a1, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a1, 3
	st.d	$a4, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a4, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	st.d	$a4, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $a4, 3
	st.d	$t3, $sp, 984                   # 8-byte Folded Spill
	move	$t6, $t8
	ld.d	$t8, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $t8, 3
	st.d	$t3, $sp, 976                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t3, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	alsl.d	$t4, $s0, $t0, 3
	alsl.d	$t7, $s0, $a2, 3
	alsl.d	$a0, $s0, $s7, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a1, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a4, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $s1, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $t8, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$ra, $s0, $ra, 3
	alsl.d	$a4, $s0, $t3, 3
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$s7, $s0, $a0, 3
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$t3, $s0, $a1, 3
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	st.d	$s0, $sp, 912                   # 8-byte Folded Spill
	alsl.d	$s0, $s0, $a1, 3
	ld.d	$s1, $sp, 896                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 800                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_33:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $t5
	fldx.d	$fa1, $fp, $s5
	ld.d	$a1, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $a1, $s5
	ld.d	$a1, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $t5
	fldx.d	$fa4, $t4, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a1, $sp, 1096                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t5
	fldx.d	$fa0, $a6, $t5
	fldx.d	$fa1, $a3, $s5
	add.d	$a1, $s2, $t5
	ld.d	$t8, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $s5
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $t7, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 1088                  # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $t5
	fldx.d	$fa0, $a6, $t5
	ld.d	$t8, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $s5
	fldx.d	$fa2, $s2, $t5
	ld.d	$t8, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $s5
	ld.d	$t8, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t8, $sp, 1080                  # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $t5
	fldx.d	$fa0, $a6, $t5
	ld.d	$t8, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $s5
	ld.d	$t8, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $s5
	fld.d	$fa3, $a1, -8
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa4, $a1, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a1, $sp, 1072                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t5
	fldx.d	$fa0, $a6, $t5
	ld.d	$a1, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa1, $a1, $s5
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa2, $a1, $s5
	ld.d	$a1, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $t5
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa4, $a1, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a1, $sp, 1064                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t5
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $s5
	fldx.d	$fa1, $t2, $t5
	fldx.d	$fa2, $s7, $s5
	ld.d	$a1, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $t5
	fldx.d	$fa4, $a6, $t5
	fldx.d	$fa5, $fp, $s5
	ld.d	$a1, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa6, $a1, $t5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa2, $a1, $s5
	fldx.d	$fa5, $t4, $s5
	fldx.d	$fa7, $a0, $s5
	ld.d	$a1, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$ft0, $a1, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a1, $sp, 1056                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t5
	fldx.d	$fa0, $ra, $s5
	fldx.d	$fa1, $t2, $t5
	fldx.d	$fa2, $t3, $s5
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	add.d	$a1, $a1, $t5
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $a6, $t5
	fldx.d	$fa5, $a3, $s5
	ld.d	$a1, $sp, 1104                  # 8-byte Folded Reload
	add.d	$a1, $a1, $t5
	fld.d	$fa6, $a1, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a4, $s5
	fldx.d	$fa5, $t7, $s5
	fldx.d	$fa7, $s0, $s5
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$ft0, $a1, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a1, $sp, 1048                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t5
	addi.d	$t5, $t5, 8
	addi.d	$s4, $s4, -1
	addi.d	$a5, $a5, -1
	addi.w	$s6, $s6, -1
	addi.d	$s8, $s8, -1
	addi.d	$s3, $s3, -1
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, -1
	add.d	$s5, $s5, $t0
	sub.d	$s1, $s1, $a2
	bne	$t6, $s6, .LBB2_33
# %bb.34:                               # %._crit_edge.us.us.us.us.us.us2448
                                        #   in Loop: Header=BB2_32 Depth=3
	sub.w	$a4, $t6, $s3
	sub.w	$a5, $t6, $a5
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 912                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$a6, $a0, $s1
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$a7, $t6, $a7
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	move	$t8, $t6
	bne	$a1, $a0, .LBB2_32
# %bb.35:                               # %._crit_edge2402.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_31 Depth=2
	sub.w	$a4, $t8, $s8
	sub.w	$a5, $t8, $s4
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$a6, $a0, $s1
	ld.d	$fp, $sp, 760                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$a7, $t8, $t1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB2_31
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_36:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$t3, $zero, 1
	blez	$a2, .LBB2_2
# %bb.37:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.38:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.39:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.40:                               # %.preheader2318.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 4
	move	$fp, $zero
	mul.d	$t4, $a2, $s0
	st.d	$t4, $sp, 784                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$t5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 496                   # 8-byte Folded Reload
	mul.d	$t4, $t8, $t5
	st.d	$t4, $sp, 776                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $t4
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $t4
	mul.d	$t2, $t2, $t7
	sub.d	$a0, $a0, $t4
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 1096                  # 8-byte Folded Reload
	bstrpick.d	$t6, $a1, 31, 0
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	bstrpick.d	$t7, $a1, 31, 0
	add.d	$a1, $t0, $t2
	sub.d	$a1, $a1, $t8
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	sub.d	$a1, $t0, $t8
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 640                   # 8-byte Folded Reload
	addi.d	$a1, $t0, 8
	ld.d	$t2, $sp, 632                   # 8-byte Folded Reload
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	mul.d	$a1, $a3, $s3
	sub.d	$a3, $t3, $t4
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $s0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	st.d	$t6, $sp, 768                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	slli.d	$a2, $t5, 3
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	sub.d	$a2, $t7, $t2
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	st.d	$t7, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a2, $t7, $t0, 3
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	add.d	$a2, $s2, $t1
	sub.d	$a2, $a2, $t8
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	sub.d	$a2, $s2, $t8
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	sub.d	$a0, $a0, $t8
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a0, $s7, $t8
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_41:                               # %.preheader2318.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_42 Depth 3
                                        #         Child Loop BB2_43 Depth 4
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_42:                               # %.preheader2314.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_43 Depth 4
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
	move	$a3, $zero
	move	$t2, $a4
	move	$t1, $a7
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a0, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	st.d	$a5, $sp, 816                   # 8-byte Folded Spill
	alsl.d	$a5, $a5, $a0, 3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $s4, 3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$t7, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $t7, 3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$t3, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$s8, $a0, $t3, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	alsl.d	$t6, $a0, $a1, 3
	ld.d	$s3, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $s3, 3
	ld.d	$t4, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t4, 3
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	alsl.d	$t0, $a0, $a1, 3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s1, $a0, $a1, 3
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s0, 3
	st.d	$a1, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s2, 3
	st.d	$a1, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$fp, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $fp, 3
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$t8, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t8, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $ra, 3
	st.d	$a1, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$s7, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s7, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	alsl.d	$a1, $t2, $t7, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	alsl.d	$t3, $t2, $t3, 3
	st.d	$t3, $sp, 1016                  # 8-byte Folded Spill
	st.d	$t2, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$t2, $t2, $s4, 3
	st.d	$t2, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 992                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 984                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 976                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 968                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 960                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 952                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 944                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 936                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 928                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 920                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t2, $t1, $t3, 3
	st.d	$t2, $sp, 912                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	st.d	$t1, $sp, 824                   # 8-byte Folded Spill
	alsl.d	$t1, $t1, $t3, 3
	st.d	$t1, $sp, 904                   # 8-byte Folded Spill
	alsl.d	$t4, $a6, $t4, 3
	alsl.d	$t7, $a6, $s0, 3
	alsl.d	$t1, $a6, $s2, 3
	st.d	$t1, $sp, 896                   # 8-byte Folded Spill
	alsl.d	$t1, $a6, $fp, 3
	st.d	$t1, $sp, 888                   # 8-byte Folded Spill
	alsl.d	$t1, $a6, $t8, 3
	st.d	$t1, $sp, 880                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	st.d	$t1, $sp, 872                   # 8-byte Folded Spill
	alsl.d	$t1, $a6, $s3, 3
	st.d	$t1, $sp, 864                   # 8-byte Folded Spill
	alsl.d	$t1, $a6, $ra, 3
	st.d	$t1, $sp, 856                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	st.d	$t1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	st.d	$t1, $sp, 840                   # 8-byte Folded Spill
	alsl.d	$t1, $a6, $s7, 3
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t2, 3
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	st.d	$a6, $sp, 808                   # 8-byte Folded Spill
	alsl.d	$s7, $a6, $t3, 3
	ld.d	$a6, $sp, 792                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_43:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        #       Parent Loop BB2_42 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $t6, $s5
	fldx.d	$fa2, $a7, $s6
	fmul.d	$fa0, $fa0, $fa1
	add.d	$t8, $a7, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$ra, $sp, 1000                  # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s6
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $a2, $s5
	fldx.d	$fa2, $a6, $s5
	fld.d	$fa3, $t8, -8
	fldx.d	$fa4, $t4, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$ra, $sp, 992                   # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s6
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $t0, $s5
	fld.d	$fa2, $t8, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t8, $sp, 984                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $s6
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $s1, $s5
	add.d	$t8, $a0, $s6
	ld.d	$ra, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa2, $ra, $s5
	fld.d	$fa3, $t8, 8
	fldx.d	$fa4, $t7, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$ra, $sp, 976                   # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$ra, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa1, $ra, $s5
	fldx.d	$fa2, $a0, $s6
	ld.d	$ra, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa3, $ra, $s5
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa4, $ra, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$ra, $sp, 968                   # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$ra, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa1, $ra, $s5
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa2, $ra, $s5
	fld.d	$fa3, $t8, -8
	ld.d	$t8, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 960                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$t8, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $s5
	fldx.d	$fa2, $s8, $s6
	fmul.d	$fa0, $fa0, $fa1
	add.d	$t8, $s8, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$ra, $sp, 952                   # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$ra, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa1, $ra, $s5
	ld.d	$ra, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa2, $ra, $s5
	fld.d	$fa3, $t8, -8
	ld.d	$ra, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa4, $ra, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$ra, $sp, 944                   # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$ra, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa1, $ra, $s5
	fld.d	$fa2, $t8, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t8, $sp, 936                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $s6
	fldx.d	$fa0, $a5, $s6
	fldx.d	$fa1, $t2, $s5
	ld.d	$t8, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $s5
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $a1, $s6
	fldx.d	$fa3, $a4, $s6
	fldx.d	$fa4, $t6, $s5
	fldx.d	$fa5, $t5, $s6
	add.d	$t8, $a1, $s6
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ld.d	$ra, $sp, 928                   # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s6
	fld.d	$fa0, $t8, -8
	add.d	$t8, $t5, $s6
	ld.d	$ra, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa1, $ra, $s5
	fldx.d	$fa2, $a5, $s6
	fldx.d	$fa3, $s7, $s5
	fldx.d	$fa4, $a4, $s6
	fldx.d	$fa5, $a2, $s5
	fld.d	$fa6, $t8, -8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$t8, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $s5
	fldx.d	$fa5, $t4, $s5
	ld.d	$t8, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $s5
	ld.d	$t8, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$ft0, $t8, $s5
	fmadd.d	$fa0, $fa3, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t8, $sp, 920                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $s6
	ld.d	$t8, $sp, 1056                  # 8-byte Folded Reload
	add.w	$t8, $t8, $a3
	ld.d	$ra, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa0, $ra, $s5
	fldx.d	$fa1, $a5, $s6
	ld.d	$ra, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa2, $ra, $s5
	slli.d	$t8, $t8, 3
	fldx.d	$fa3, $fp, $t8
	fldx.d	$fa4, $a4, $s6
	fldx.d	$fa5, $t0, $s5
	fldx.d	$fa6, $s3, $t8
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$t8, $sp, 912                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $s6
	ld.d	$t8, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $s5
	fldx.d	$fa1, $a5, $s6
	ld.d	$t8, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $s5
	ld.d	$t8, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $s6
	fldx.d	$fa4, $a4, $s6
	fldx.d	$fa5, $s1, $s5
	ld.d	$t8, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $s6
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t1, $s5
	fldx.d	$fa5, $t7, $s5
	ld.d	$t8, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $s5
	ld.d	$t8, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$ft0, $t8, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t8, $sp, 904                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $s6
	addi.w	$a3, $a3, 1
	addi.d	$s6, $s6, 8
	sub.d	$t3, $t3, $s2
	add.d	$s5, $s5, $s0
	bne	$s4, $a3, .LBB2_43
# %bb.44:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_42 Depth=3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	add.d	$a0, $a0, $a3
	addi.w	$a4, $a0, 1
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 816                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	add.d	$a0, $a0, $a3
	addi.w	$a5, $a0, 1
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	sub.w	$a6, $a0, $t3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 824                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.w	$a7, $a0, 1
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_42
# %bb.45:                               # %._crit_edge2345.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_41 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	add.w	$a4, $a0, $a3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	add.w	$a5, $a0, $a3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	sub.w	$a6, $a0, $t3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	add.w	$a7, $a0, $a3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB2_41
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_46:                               #   in Loop: Header=BB2_3 Depth=1
	blez	$a2, .LBB2_2
# %bb.47:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.48:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.49:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	blez	$a2, .LBB2_2
# %bb.50:                               # %.preheader2315.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 4
	move	$fp, $zero
	mul.d	$t4, $a2, $s0
	st.d	$t4, $sp, 320                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$t5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 496                   # 8-byte Folded Reload
	mul.d	$t4, $t8, $t5
	st.d	$t4, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $t4
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $t4
	mul.d	$t2, $t2, $t7
	sub.d	$a0, $a0, $t4
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 1096                  # 8-byte Folded Reload
	bstrpick.d	$t6, $a1, 31, 0
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	bstrpick.d	$t7, $a1, 31, 0
	add.d	$a1, $t0, $t2
	sub.d	$a1, $a1, $t8
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a1, $t0, $t8
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 640                   # 8-byte Folded Reload
	addi.d	$a1, $t0, 8
	ld.d	$t2, $sp, 632                   # 8-byte Folded Reload
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	mul.d	$a1, $a3, $s3
	sub.d	$a3, $t3, $t4
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $s0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	slli.d	$a2, $t5, 3
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	sub.d	$a2, $t7, $t2
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	st.d	$t7, $sp, 296                   # 8-byte Folded Spill
	alsl.d	$a2, $t7, $t0, 3
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	add.d	$a2, $s2, $t1
	sub.d	$a2, $a2, $t8
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a2, $s2, $t8
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	sub.d	$a0, $a0, $t8
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $s7, $t8
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_51:                               # %.preheader2315.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_52 Depth 3
                                        #         Child Loop BB2_53 Depth 4
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB2_52:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_51 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_53 Depth 4
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	move	$t4, $zero
	move	$t6, $zero
	move	$a0, $zero
	move	$s2, $a5
	move	$a3, $a4
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $t3, 3
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a5, $a1, $fp, 3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$s3, $a1, $t1, 3
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	ld.d	$a2, $sp, 704                   # 8-byte Folded Reload
	st.d	$a2, $sp, 704                   # 8-byte Folded Spill
	alsl.d	$t8, $a1, $a2, 3
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s8, 3
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t5, $a1, $a2, 3
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	st.d	$a2, $sp, 672                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 712                   # 8-byte Folded Reload
	st.d	$a2, $sp, 712                   # 8-byte Folded Spill
	alsl.d	$t0, $a1, $a2, 3
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s1, 3
	st.d	$a2, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s5, $a1, $a2, 3
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	st.d	$a2, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	st.d	$a2, $sp, 664                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s4, 3
	st.d	$a2, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $t7, 3
	st.d	$a2, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $t2, 3
	st.d	$a2, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$s7, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s7, 3
	st.d	$a2, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $ra, 3
	st.d	$a2, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s6, 3
	st.d	$a2, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 656                   # 8-byte Folded Reload
	st.d	$a2, $sp, 656                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $a2, 3
	st.d	$a1, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$s0, $s2, $a1, 3
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	st.d	$s2, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a2, $s2, $a1, 3
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	st.d	$a1, $sp, 1008                  # 8-byte Folded Spill
	alsl.d	$fp, $a3, $fp, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s2, $a3, $a1, 3
	alsl.d	$a1, $a3, $t1, 3
	st.d	$a1, $sp, 968                   # 8-byte Folded Spill
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	alsl.d	$a1, $a3, $t3, 3
	st.d	$a1, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	st.d	$a7, $sp, 408                   # 8-byte Folded Spill
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	alsl.d	$s8, $a6, $s8, 3
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a1, 3
	alsl.d	$s1, $a6, $s1, 3
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a1, 3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $s4, 3
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $t7, 3
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $t2, 3
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $s7, 3
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $ra, 3
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $s6, 3
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$t2, $a6, $a1, 3
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_53:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_51 Depth=2
                                        #       Parent Loop BB2_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s0, $t6
	fldx.d	$fa1, $t8, $t4
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa2, $a6, $t4
	fldx.d	$fa3, $a5, $t6
	fldx.d	$fa4, $s8, $t4
	add.d	$s4, $a5, $t6
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 952                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	fldx.d	$fa1, $t5, $t4
	ld.d	$a7, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fld.d	$fa3, $s4, -8
	fldx.d	$fa4, $t3, $t4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 944                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	fldx.d	$fa1, $t0, $t4
	ld.d	$a7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fld.d	$fa3, $s4, -16
	fldx.d	$fa4, $s1, $t4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 936                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	fldx.d	$fa1, $s5, $t4
	add.d	$s4, $s2, $t6
	ld.d	$a7, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fld.d	$fa3, $s4, 8
	fldx.d	$fa4, $a3, $t4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 928                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	ld.d	$a7, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $t4
	fldx.d	$fa2, $s2, $t6
	ld.d	$a7, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $t4
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $t4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$a7, $sp, 920                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	ld.d	$a7, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $t4
	ld.d	$a7, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fld.d	$fa3, $s4, -8
	ld.d	$a7, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $t4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 912                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	ld.d	$a7, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $t4
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$a7, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fldx.d	$fa3, $s3, $t6
	ld.d	$a7, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $t4
	add.d	$s4, $s3, $t6
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 904                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	ld.d	$a7, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $t4
	ld.d	$a7, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fld.d	$fa3, $s4, -8
	ld.d	$a7, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $t4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 896                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $s0, $t6
	ld.d	$a7, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $t4
	ld.d	$a7, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fld.d	$fa3, $s4, -16
	ld.d	$a7, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $t4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 888                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fldx.d	$fa0, $a2, $t6
	ld.d	$a7, $sp, 744                   # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $t4
	ld.d	$a7, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $fp, $t6
	fldx.d	$fa4, $s0, $t6
	fldx.d	$fa5, $t8, $t4
	fldx.d	$fa6, $a4, $t6
	add.d	$s4, $fp, $t6
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	ld.d	$a7, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fldx.d	$fa5, $s8, $t4
	ld.d	$a7, $sp, 736                   # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $t4
	ld.d	$a7, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $t4
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 880                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	fld.d	$fa0, $s4, -8
	add.d	$s4, $a4, $t6
	ld.d	$a7, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $t4
	fldx.d	$fa2, $a2, $t6
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $t4
	fldx.d	$fa4, $s0, $t6
	fldx.d	$fa5, $t5, $t4
	fld.d	$fa6, $s4, -8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$a7, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $t4
	fldx.d	$fa5, $t3, $t4
	fldx.d	$fa7, $t2, $t4
	ld.d	$a7, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $t4
	fmadd.d	$fa0, $fa3, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 872                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	ld.d	$a7, $sp, 1008                  # 8-byte Folded Reload
	add.w	$s4, $a7, $a0
	ld.d	$a7, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $t4
	fldx.d	$fa1, $a2, $t6
	ld.d	$a7, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	slli.d	$s4, $s4, 3
	fldx.d	$fa3, $a1, $s4
	fldx.d	$fa4, $s0, $t6
	fldx.d	$fa5, $t0, $t4
	fldx.d	$fa6, $ra, $s4
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a7, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fldx.d	$fa5, $s1, $t4
	ld.d	$a7, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $t4
	ld.d	$a7, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $t4
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 864                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	ld.d	$a7, $sp, 760                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $t4
	fldx.d	$fa1, $a2, $t6
	ld.d	$a7, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	ld.d	$a7, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $t6
	fldx.d	$fa4, $s0, $t6
	fldx.d	$fa5, $s5, $t4
	ld.d	$a7, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa6, $a7, $t6
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a7, $sp, 752                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t4
	fldx.d	$fa5, $a3, $t4
	ld.d	$a7, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $t4
	ld.d	$a7, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $t4
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 856                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $t6
	addi.w	$a0, $a0, 1
	addi.d	$t6, $t6, 8
	sub.d	$t1, $t1, $s7
	add.d	$t4, $t4, $t7
	bne	$s6, $a0, .LBB2_53
# %bb.54:                               # %._crit_edge.us.us.us.us.us.us2570
                                        #   in Loop: Header=BB2_52 Depth=3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t3
	add.d	$a1, $a1, $a0
	addi.w	$a4, $a1, 1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	add.d	$a1, $a1, $a0
	addi.w	$a5, $a1, 1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 392                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	sub.w	$a6, $a1, $t1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a0
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	addi.w	$a7, $a1, 1
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB2_52
# %bb.55:                               # %._crit_edge2524.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_51 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t3
	add.w	$a4, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	add.w	$a5, $a1, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	sub.w	$a6, $a1, $t1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	add.w	$a7, $a1, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB2_51
	b	.LBB2_2
.LBB2_56:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s8, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1064                  # 8-byte Folded Reload
	ori	$s5, $zero, 1
	b	.LBB2_11
.LBB2_57:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1272                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1280
	ret
.Lfunc_end2:
	.size	hypre_SMG3BuildRAPNoSym, .Lfunc_end2-hypre_SMG3BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicSym        # -- Begin function hypre_SMG3RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicSym,@function
hypre_SMG3RAPPeriodicSym:               # @hypre_SMG3RAPPeriodicSym
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a3, $a0, 8
	ld.w	$a1, $a3, 64
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_114
# %bb.1:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$fp, $a3, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	blez	$a0, .LBB3_114
# %bb.2:                                # %.lr.ph
	move	$a1, $fp
	move	$s0, $zero
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$s7, $zero, 16
	xvrepli.b	$xr6, 0
	xvldi	$xr7, -1024
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
                                        # implicit-def: $r27
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	xvst	$xr6, $sp, 80                   # 32-byte Folded Spill
	xvst	$xr7, $sp, 16                   # 32-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %.loopexit718
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB3_114
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
                                        #     Child Loop BB3_59 Depth 2
                                        #       Child Loop BB3_61 Depth 3
                                        #         Child Loop BB3_64 Depth 4
                                        #         Child Loop BB3_67 Depth 4
                                        #     Child Loop BB3_75 Depth 2
                                        #       Child Loop BB3_76 Depth 3
                                        #         Child Loop BB3_93 Depth 4
                                        #         Child Loop BB3_79 Depth 4
                                        #     Child Loop BB3_105 Depth 2
                                        #       Child Loop BB3_107 Depth 3
                                        #         Child Loop BB3_110 Depth 4
                                        #         Child Loop BB3_113 Depth 4
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	slli.d	$a1, $s0, 4
	alsl.d	$a2, $s0, $a1, 3
	add.d	$a1, $a0, $a2
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $sp, 396
	st.w	$zero, $sp, 404
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 12
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s1, $sp, 400
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	st.d	$s6, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$s1, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s2, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s6, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s1, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	move	$s6, $s2
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	st.d	$s2, $sp, 396
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 396
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 396
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 396
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $sp, 396
	move	$s2, $s6
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 384
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 384
	ld.w	$s0, $sp, 388
	ld.w	$a3, $sp, 392
	slt	$a1, $a0, $s0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	vldi	$vr5, -1024
	xvld	$xr6, $sp, 80                   # 32-byte Folded Reload
	xvld	$xr7, $sp, 16                   # 32-byte Folded Reload
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	blez	$a1, .LBB3_68
# %bb.7:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_68
# %bb.8:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	blez	$a1, .LBB3_68
# %bb.9:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$s0, .LBB3_68
# %bb.10:                               # %.preheader709.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $zero
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a5, 0
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $t0, 0
	ld.w	$a3, $a5, 4
	ld.w	$a4, $t0, 4
	ld.w	$a5, $a5, 8
	ld.w	$a6, $t0, 8
	ld.w	$a7, $t0, 16
	sub.d	$a1, $a1, $a2
	sub.d	$a3, $a3, $a4
	sub.d	$a5, $a5, $a6
	sub.w	$a4, $a7, $a4
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	slt	$a6, $a7, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a7, $a6
	or	$a4, $a4, $a6
	ld.w	$a6, $t0, 12
	addi.d	$a4, $a4, 1
	mul.d	$a5, $a4, $a5
	add.d	$a3, $a3, $a5
	sub.w	$a2, $a6, $a2
	slt	$a5, $a7, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a7, $a5
	or	$a2, $a2, $a5
	addi.d	$a5, $a2, 1
	mul.d	$a2, $a3, $a5
	add.w	$a2, $a2, $a1
	sub.d	$a6, $a5, $a0
	sub.d	$a1, $a4, $s0
	mul.d	$a1, $a5, $a1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a3, $a0, -1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	nor	$t0, $a1, $zero
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 0
	alsl.d	$a4, $a1, $s2, 3
	addi.d	$a3, $a4, 8
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $s1, 3
	addi.d	$a3, $a4, 8
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $t6, 3
	addi.d	$a3, $a4, 8
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $s8, 3
	addi.d	$a3, $a4, 8
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $s6, 3
	addi.d	$a3, $a4, 8
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a4, $a3, -8
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $a3, 3
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	move	$a3, $a6
	alsl.d	$a4, $a1, $ra, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $s5, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	move	$a5, $a2
	st.d	$a6, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s2, $sp, 288                   # 8-byte Folded Spill
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge725.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_12 Depth=2
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB3_54
.LBB3_12:                               # %.preheader709.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	move	$a6, $zero
	.p2align	4, , 16
.LBB3_13:                               # %.preheader705.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	bltu	$a0, $s7, .LBB3_15
# %bb.14:                               # %vector.scevcheck1030
                                        #   in Loop: Header=BB3_13 Depth=3
	add.w	$t1, $a5, $t0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.w	$a1, $t1, $a1
	bge	$a1, $t1, .LBB3_19
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=3
	move	$a4, $zero
.LBB3_16:                               # %scalar.ph1135.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	slli.d	$a7, $a5, 3
	add.w	$t1, $t0, $a5
	sub.d	$a4, $a0, $a4
	move	$t2, $t6
	move	$t3, $ra
	move	$t4, $s1
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	move	$t7, $s6
	move	$t8, $s2
	move	$fp, $s8
	.p2align	4, , 16
.LBB3_17:                               # %scalar.ph1135
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a7
	fldx.d	$fa1, $t8, $a7
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fstx.d	$fa0, $t8, $a7
	fldx.d	$fa0, $t7, $a7
	fldx.d	$fa1, $t5, $a7
	fldx.d	$fa2, $t4, $a7
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t4, $a7
	fldx.d	$fa0, $t3, $a7
	slli.d	$a1, $t1, 3
	fldx.d	$fa1, $s5, $a1
	fldx.d	$fa2, $t2, $a7
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t2, $a7
	addi.d	$a5, $a5, 1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.w	$a4, $a4, -1
	addi.w	$t1, $t1, 1
	bnez	$a4, .LBB3_17
.LBB3_18:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.w	$a6, $a6, 1
	add.w	$a5, $a3, $a5
	bne	$a6, $s0, .LBB3_13
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_19:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t2, $a5, $s2, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	alsl.d	$t3, $a5, $s1, 3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$s2, $a5, $a4, 3
	sltu	$a4, $t2, $s2
	sltu	$a7, $t3, $a1
	and	$a7, $a4, $a7
	move	$a4, $zero
	bnez	$a7, .LBB3_53
# %bb.20:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t4, $a5, $t6, 3
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a7, 3
	sltu	$t5, $t2, $a7
	sltu	$t7, $t4, $a1
	and	$t5, $t5, $t7
	bnez	$t5, .LBB3_53
# %bb.21:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t5, $a5, $s8, 3
	ld.d	$t7, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $t7, 3
	sltu	$t7, $t2, $s7
	sltu	$t8, $t5, $a1
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_52
# %bb.22:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	move	$t6, $s8
	alsl.d	$t7, $a5, $s6, 3
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $t8, 3
	sltu	$t8, $t2, $s8
	sltu	$fp, $t7, $a1
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_51
# %bb.23:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$t8, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t8, $a5, $t8, 3
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s0, $a5, $fp, 3
	sltu	$fp, $t2, $s0
	sltu	$s1, $t8, $a1
	and	$fp, $fp, $s1
	bnez	$fp, .LBB3_49
# %bb.24:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$ra, $a5, $ra, 3
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $fp, 3
	sltu	$fp, $t2, $s6
	sltu	$s1, $ra, $a1
	and	$fp, $fp, $s1
	bnez	$fp, .LBB3_48
# %bb.25:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$fp, $t1, $s5, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s1, $t1, $a3, 3
	sltu	$a3, $t2, $s1
	sltu	$a1, $fp, $a1
	and	$a1, $a3, $a1
	bnez	$a1, .LBB3_47
# %bb.26:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t3, $a7
	sltu	$a3, $t4, $s2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB3_47
# %bb.27:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t3, $s7
	sltu	$a3, $t5, $s2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB3_47
# %bb.28:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t3, $s8
	sltu	$a3, $t7, $s2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB3_47
# %bb.29:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t3, $s0
	sltu	$a3, $t8, $s2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB3_47
# %bb.30:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t3, $s6
	sltu	$a3, $ra, $s2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB3_47
# %bb.31:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t3, $s1
	sltu	$a3, $fp, $s2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB3_47
# %bb.32:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t4, $s7
	sltu	$a3, $t5, $a7
	and	$a1, $a1, $a3
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_42
# %bb.33:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t4, $s8
	sltu	$a3, $t7, $a7
	and	$a1, $a1, $a3
	ori	$s7, $zero, 16
	bnez	$a1, .LBB3_43
# %bb.34:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t4, $s0
	sltu	$a3, $t8, $a7
	and	$a1, $a1, $a3
	move	$s8, $t6
	bnez	$a1, .LBB3_44
# %bb.35:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t4, $s6
	sltu	$a3, $ra, $a7
	and	$a1, $a1, $a3
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_40
# %bb.36:                               # %vector.memcheck1031
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t4, $s1
	sltu	$a3, $fp, $a7
	and	$a1, $a1, $a3
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_41
# %bb.37:                               # %vector.ph1137
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	add.d	$a5, $a4, $a5
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_38:                               # %vector.body1140
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t5, 0
	xvld	$xr1, $t2, 0
	xvld	$xr2, $t7, 0
	xvld	$xr3, $t8, 0
	xvfmadd.d	$xr0, $xr0, $xr7, $xr1
	xvst	$xr0, $t2, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvld	$xr1, $t3, 0
	xvld	$xr2, $ra, 0
	slli.d	$a1, $t1, 3
	xvldx	$xr3, $s5, $a1
	xvld	$xr4, $t4, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $t3, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $t4, 0
	addi.w	$t1, $t1, 4
	addi.d	$a4, $a4, -4
	addi.d	$t4, $t4, 32
	addi.d	$ra, $ra, 32
	addi.d	$t3, $t3, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t2, $t2, 32
	addi.d	$t5, $t5, 32
	bnez	$a4, .LBB3_38
# %bb.39:                               # %middle.block1153
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $a1
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_16
	b	.LBB3_18
.LBB3_40:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
.LBB3_41:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_42:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
.LBB3_43:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s8, $t6
.LBB3_44:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
.LBB3_45:                               # %scalar.ph1135.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
.LBB3_46:                               # %scalar.ph1135.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_47:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $t6
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_45
.LBB3_48:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $t6
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	b	.LBB3_50
.LBB3_49:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $t6
.LBB3_50:                               # %scalar.ph1135.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_51:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $t6
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_52:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
.LBB3_53:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_54:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_68
# %bb.55:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	blez	$a1, .LBB3_68
# %bb.56:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$s0, .LBB3_68
# %bb.57:                               # %.preheader708.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a4, $zero
	sub.d	$a1, $s6, $s8
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	sub.d	$a3, $t4, $s8
	sub.d	$a5, $ra, $s8
	sub.d	$a6, $s5, $s8
	sub.d	$a7, $t4, $s6
	sub.d	$t0, $ra, $s6
	sub.d	$t1, $s5, $s6
	sub.d	$t2, $ra, $t4
	sub.d	$t3, $s5, $t4
	sltui	$a1, $a1, 64
	sltui	$a3, $a3, 64
	or	$a1, $a1, $a3
	sub.d	$a3, $s5, $ra
	sltui	$a5, $a5, 64
	or	$a1, $a1, $a5
	sltui	$a5, $a6, 64
	or	$a1, $a1, $a5
	sltui	$a5, $a7, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t0, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t1, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t2, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t3, 64
	or	$a1, $a1, $a5
	sltui	$a3, $a3, 64
	or	$a5, $a1, $a3
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a6, $a1, 3
	addi.d	$a7, $s8, 32
	addi.d	$t0, $s5, 32
	addi.d	$t1, $s6, 32
	addi.d	$t2, $ra, 32
	addi.d	$t3, $t4, 32
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               # %._crit_edge749.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_59 Depth=2
	addi.w	$a4, $a4, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beq	$a4, $a1, .LBB3_68
.LBB3_59:                               # %.preheader708.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_61 Depth 3
                                        #         Child Loop BB3_64 Depth 4
                                        #         Child Loop BB3_67 Depth 4
	move	$t4, $zero
	b	.LBB3_61
	.p2align	4, , 16
.LBB3_60:                               # %._crit_edge.us.us.us.us.us.us769
                                        #   in Loop: Header=BB3_61 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$a2, $a3, $t5
	beq	$t4, $s0, .LBB3_58
.LBB3_61:                               # %.preheader704.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_64 Depth 4
                                        #         Child Loop BB3_67 Depth 4
	sltui	$a1, $a0, 12
	or	$a1, $a1, $a5
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_63
# %bb.62:                               #   in Loop: Header=BB3_61 Depth=3
	move	$fp, $zero
	move	$t5, $a2
	b	.LBB3_66
	.p2align	4, , 16
.LBB3_63:                               # %vector.ph1019
                                        #   in Loop: Header=BB3_61 Depth=3
	add.d	$t5, $a6, $a2
	alsl.d	$a1, $a2, $a7, 3
	alsl.d	$t6, $a2, $t0, 3
	alsl.d	$t7, $a2, $t1, 3
	alsl.d	$t8, $a2, $t2, 3
	alsl.d	$a2, $a2, $t3, 3
	move	$fp, $a6
	.p2align	4, , 16
.LBB3_64:                               # %vector.body1022
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_59 Depth=2
                                        #       Parent Loop BB3_61 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr6, $a1, -32
	xvst	$xr6, $a1, 0
	xvst	$xr6, $t7, -32
	xvst	$xr6, $t7, 0
	xvst	$xr6, $a2, -32
	xvst	$xr6, $a2, 0
	xvst	$xr6, $t8, -32
	xvst	$xr6, $t8, 0
	xvst	$xr6, $t6, -32
	xvst	$xr6, $t6, 0
	addi.d	$fp, $fp, -8
	addi.d	$a1, $a1, 64
	addi.d	$t6, $t6, 64
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	addi.d	$a2, $a2, 64
	bnez	$fp, .LBB3_64
# %bb.65:                               # %middle.block1026
                                        #   in Loop: Header=BB3_61 Depth=3
	move	$fp, $a6
	beq	$a6, $a0, .LBB3_60
.LBB3_66:                               # %scalar.ph1017.preheader
                                        #   in Loop: Header=BB3_61 Depth=3
	alsl.d	$a1, $t5, $s8, 3
	alsl.d	$a2, $t5, $s6, 3
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$t6, $t5, $a3, 3
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t7, $t5, $ra, 3
	alsl.d	$t8, $t5, $s5, 3
	sub.d	$fp, $a0, $fp
	.p2align	4, , 16
.LBB3_67:                               # %scalar.ph1017
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_59 Depth=2
                                        #       Parent Loop BB3_61 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a1, 0
	st.d	$zero, $a2, 0
	st.d	$zero, $t6, 0
	st.d	$zero, $t7, 0
	st.d	$zero, $t8, 0
	addi.d	$t5, $t5, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 8
	addi.w	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB3_67
	b	.LBB3_60
	.p2align	4, , 16
.LBB3_68:                               # %._crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_3
# %bb.69:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 384
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr6, $sp, 80                   # 32-byte Folded Reload
	ld.w	$a0, $sp, 384
	ld.w	$a1, $sp, 388
	ld.w	$a4, $sp, 392
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB3_3
# %bb.70:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_3
# %bb.71:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.72:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.73:                               # %.preheader707.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $zero
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a6, 0
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $t2, 0
	ld.w	$a4, $a6, 4
	ld.w	$a5, $t2, 4
	ld.w	$a6, $a6, 8
	ld.w	$a7, $t2, 8
	ld.w	$t0, $t2, 16
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	slt	$a7, $t1, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t1, $a7
	or	$a5, $a5, $a7
	ld.w	$a7, $t2, 12
	addi.d	$t0, $a5, 1
	mul.d	$a5, $t0, $a6
	add.d	$a4, $a4, $a5
	sub.w	$a3, $a7, $a3
	slt	$a5, $t1, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t1, $a5
	or	$a3, $a3, $a5
	addi.d	$a6, $a3, 1
	mul.d	$a3, $a4, $a6
	add.w	$a5, $a3, $a2
	sub.d	$a3, $a6, $a0
	sub.d	$a2, $t0, $a1
	mul.d	$a2, $a6, $a2
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	addi.w	$a7, $a0, -1
	bstrpick.d	$a2, $a7, 31, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $t0, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $t1, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$a4, $a2, $s4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $t2, 3
	addi.d	$t4, $a4, 8
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $s3, 3
	addi.d	$t5, $a2, 8
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$t6, $a2, 2
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	sub.d	$t7, $zero, $a2
	move	$t8, $a5
	ori	$t3, $zero, 12
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_74:                               # %._crit_edge776.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_75 Depth=2
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a2
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	beq	$fp, $a2, .LBB3_100
.LBB3_75:                               # %.preheader707.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_76 Depth 3
                                        #         Child Loop BB3_93 Depth 4
                                        #         Child Loop BB3_79 Depth 4
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB3_76:                               # %.preheader703.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_75 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_93 Depth 4
                                        #         Child Loop BB3_79 Depth 4
	bgeu	$a0, $t3, .LBB3_81
# %bb.77:                               #   in Loop: Header=BB3_76 Depth=3
	move	$s1, $zero
.LBB3_78:                               # %scalar.ph978.preheader
                                        #   in Loop: Header=BB3_76 Depth=3
	add.w	$s0, $t7, $t8
	alsl.d	$s2, $t8, $a4, 3
	alsl.d	$s5, $t8, $t0, 3
	alsl.d	$s6, $t8, $t2, 3
	alsl.d	$s7, $t8, $t1, 3
	sub.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB3_79:                               # %scalar.ph978
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_75 Depth=2
                                        #       Parent Loop BB3_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $s0, -2
	fld.d	$fa0, $s2, 0
	slli.d	$a2, $a2, 3
	fldx.d	$fa1, $s4, $a2
	fld.d	$fa2, $s5, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s5, 0
	fld.d	$fa0, $s6, 0
	slli.d	$a2, $s0, 3
	fldx.d	$fa1, $s3, $a2
	fld.d	$fa2, $s7, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t8, $t8, 1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s7, 0
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 8
	addi.w	$s1, $s1, -1
	addi.d	$s7, $s7, 8
	bnez	$s1, .LBB3_79
.LBB3_80:                               # %._crit_edge773.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_76 Depth=3
	addi.w	$fp, $fp, 1
	add.w	$t8, $a3, $t8
	bne	$fp, $a1, .LBB3_76
	b	.LBB3_74
	.p2align	4, , 16
.LBB3_81:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_76 Depth=3
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	sub.w	$s0, $t8, $a2
	addi.w	$s7, $s0, -2
	add.w	$a2, $s7, $a7
	move	$s1, $zero
	blt	$a2, $s7, .LBB3_78
# %bb.82:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_76 Depth=3
	add.w	$a2, $s0, $a7
	blt	$a2, $s0, .LBB3_78
# %bb.83:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	alsl.d	$s2, $t8, $t0, 3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$ra, $t8, $a2, 3
	alsl.d	$s5, $t8, $t1, 3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s8, $t8, $a2, 3
	sltu	$a2, $s2, $s8
	sltu	$a4, $s5, $ra
	and	$a2, $a2, $a4
	move	$s1, $zero
	bnez	$a2, .LBB3_99
# %bb.84:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$s6, $t8, $a2, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a4, $t8, $a2, 3
	sltu	$a2, $s2, $a4
	sltu	$a6, $s6, $ra
	and	$a2, $a2, $a6
	bnez	$a2, .LBB3_99
# %bb.85:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	alsl.d	$a2, $s7, $s4, 3
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a6, 3
	sltu	$t0, $s2, $a6
	sltu	$t1, $a2, $ra
	and	$t0, $t0, $t1
	bnez	$t0, .LBB3_98
# %bb.86:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	alsl.d	$s7, $t8, $t2, 3
	alsl.d	$t0, $t8, $t4, 3
	sltu	$t1, $s2, $t0
	sltu	$t2, $s7, $ra
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_96
# %bb.87:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	alsl.d	$t1, $s0, $s3, 3
	alsl.d	$t2, $s0, $t5, 3
	sltu	$t3, $s2, $t2
	sltu	$ra, $t1, $ra
	and	$t3, $t3, $ra
	bnez	$t3, .LBB3_95
# %bb.88:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	sltu	$a4, $s5, $a4
	sltu	$t3, $s6, $s8
	and	$a4, $a4, $t3
	bnez	$a4, .LBB3_95
# %bb.89:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	sltu	$a4, $s5, $a6
	sltu	$a2, $a2, $s8
	and	$a2, $a4, $a2
	ori	$t3, $zero, 12
	bnez	$a2, .LBB3_96
# %bb.90:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	sltu	$a2, $s5, $t0
	sltu	$a4, $s7, $s8
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_96
# %bb.91:                               # %vector.memcheck922
                                        #   in Loop: Header=BB3_76 Depth=3
	sltu	$a2, $s5, $t2
	sltu	$a4, $t1, $s8
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_96
# %bb.92:                               # %vector.ph980
                                        #   in Loop: Header=BB3_76 Depth=3
	add.d	$t8, $t6, $t8
	move	$s1, $t6
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_93:                               # %vector.body983
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_75 Depth=2
                                        #       Parent Loop BB3_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $s0, -2
	xvld	$xr0, $s6, 0
	slli.d	$a2, $a2, 3
	xvldx	$xr1, $s4, $a2
	xvfadd.d	$xr0, $xr0, $xr1
	xvld	$xr1, $s2, 0
	xvld	$xr2, $s7, 0
	slli.d	$a2, $s0, 3
	xvldx	$xr3, $s3, $a2
	xvld	$xr4, $s5, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $s2, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $s5, 0
	addi.w	$s0, $s0, 4
	addi.d	$s1, $s1, -4
	addi.d	$s5, $s5, 32
	addi.d	$s7, $s7, 32
	addi.d	$s2, $s2, 32
	addi.d	$s6, $s6, 32
	bnez	$s1, .LBB3_93
# %bb.94:                               # %middle.block993
                                        #   in Loop: Header=BB3_76 Depth=3
	move	$s1, $t6
	bne	$t6, $a0, .LBB3_78
	b	.LBB3_80
.LBB3_95:                               #   in Loop: Header=BB3_76 Depth=3
	ori	$t3, $zero, 12
.LBB3_96:                               #   in Loop: Header=BB3_76 Depth=3
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
.LBB3_97:                               # %scalar.ph978.preheader
                                        #   in Loop: Header=BB3_76 Depth=3
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	b	.LBB3_78
.LBB3_98:                               #   in Loop: Header=BB3_76 Depth=3
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	b	.LBB3_97
.LBB3_99:                               #   in Loop: Header=BB3_76 Depth=3
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	b	.LBB3_78
.LBB3_100:                              # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$s7, $zero, 16
	blez	$a0, .LBB3_3
# %bb.101:                              # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.102:                              # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.103:                              # %.preheader706.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	ld.d	$t3, $sp, 344                   # 8-byte Folded Reload
	sub.d	$a2, $t3, $a4
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	sub.d	$a4, $s3, $a4
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	sub.d	$a7, $s4, $a7
	sub.d	$t0, $s3, $t3
	sub.d	$t1, $s4, $t3
	sub.d	$t2, $s4, $s3
	sltui	$a2, $a2, 64
	sltui	$a4, $a4, 64
	or	$a2, $a2, $a4
	sltui	$a4, $a7, 64
	or	$a2, $a2, $a4
	sltui	$a4, $t0, 64
	or	$a2, $a2, $a4
	sltui	$a4, $t1, 64
	or	$a2, $a2, $a4
	sltui	$a4, $t2, 64
	or	$a7, $a2, $a4
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$t0, $a2, 3
	addi.d	$t1, $a4, 32
	addi.d	$t2, $s4, 32
	addi.d	$t3, $t3, 32
	addi.d	$t4, $s3, 32
	b	.LBB3_105
	.p2align	4, , 16
.LBB3_104:                              # %._crit_edge802.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_105 Depth=2
	addi.w	$a6, $a6, 1
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a2
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	beq	$a6, $a2, .LBB3_3
.LBB3_105:                              # %.preheader706.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_107 Depth 3
                                        #         Child Loop BB3_110 Depth 4
                                        #         Child Loop BB3_113 Depth 4
	move	$t5, $zero
	b	.LBB3_107
	.p2align	4, , 16
.LBB3_106:                              # %._crit_edge799.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_107 Depth=3
	addi.w	$t5, $t5, 1
	add.w	$a5, $a3, $t6
	beq	$t5, $a1, .LBB3_104
.LBB3_107:                              # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_105 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_110 Depth 4
                                        #         Child Loop BB3_113 Depth 4
	sltui	$a2, $a0, 8
	or	$a2, $a2, $a7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB3_109
# %bb.108:                              #   in Loop: Header=BB3_107 Depth=3
	move	$a2, $zero
	move	$t6, $a5
	b	.LBB3_112
	.p2align	4, , 16
.LBB3_109:                              # %vector.ph
                                        #   in Loop: Header=BB3_107 Depth=3
	add.d	$t6, $t0, $a5
	alsl.d	$t7, $a5, $t1, 3
	alsl.d	$t8, $a5, $t2, 3
	alsl.d	$fp, $a5, $t3, 3
	alsl.d	$a5, $a5, $t4, 3
	move	$a2, $t0
	.p2align	4, , 16
.LBB3_110:                              # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_105 Depth=2
                                        #       Parent Loop BB3_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr6, $t7, -32
	xvst	$xr6, $t7, 0
	xvst	$xr6, $fp, -32
	xvst	$xr6, $fp, 0
	xvst	$xr6, $a5, -32
	xvst	$xr6, $a5, 0
	xvst	$xr6, $t8, -32
	xvst	$xr6, $t8, 0
	addi.d	$a2, $a2, -8
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	addi.d	$fp, $fp, 64
	addi.d	$a5, $a5, 64
	bnez	$a2, .LBB3_110
# %bb.111:                              # %middle.block
                                        #   in Loop: Header=BB3_107 Depth=3
	move	$a2, $t0
	beq	$t0, $a0, .LBB3_106
.LBB3_112:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_107 Depth=3
	alsl.d	$a5, $t6, $a4, 3
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$t7, $t6, $t7, 3
	alsl.d	$t8, $t6, $s3, 3
	alsl.d	$fp, $t6, $s4, 3
	sub.d	$s0, $a0, $a2
	.p2align	4, , 16
.LBB3_113:                              # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_105 Depth=2
                                        #       Parent Loop BB3_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a5, 0
	st.d	$zero, $t7, 0
	st.d	$zero, $t8, 0
	st.d	$zero, $fp, 0
	addi.d	$t6, $t6, 1
	addi.d	$a5, $a5, 8
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.w	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB3_113
	b	.LBB3_106
.LBB3_114:                              # %.loopexit720
	move	$a0, $zero
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end3:
	.size	hypre_SMG3RAPPeriodicSym, .Lfunc_end3-hypre_SMG3RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicNoSym      # -- Begin function hypre_SMG3RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicNoSym,@function
hypre_SMG3RAPPeriodicNoSym:             # @hypre_SMG3RAPPeriodicNoSym
# %bb.0:
	addi.d	$sp, $sp, -832
	st.d	$ra, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 808                   # 8-byte Folded Spill
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 792                   # 8-byte Folded Spill
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	st.d	$s4, $sp, 776                   # 8-byte Folded Spill
	st.d	$s5, $sp, 768                   # 8-byte Folded Spill
	st.d	$s6, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 752                   # 8-byte Folded Spill
	st.d	$s8, $sp, 744                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 736                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 728                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 720                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 680                  # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 64
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_91
# %bb.1:                                # %.preheader490
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a1, 8
	blez	$a0, .LBB4_91
# %bb.2:                                # %.lr.ph
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	move	$s2, $zero
	addi.w	$a2, $zero, -1
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %.loopexit489
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB4_91
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_68 Depth 4
                                        #     Child Loop BB4_79 Depth 2
                                        #       Child Loop BB4_81 Depth 3
                                        #         Child Loop BB4_89 Depth 4
                                        #         Child Loop BB4_84 Depth 4
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s2, 4
	alsl.d	$fp, $s2, $a2, 3
	ld.d	$s0, $a0, 0
	add.d	$a0, $a1, $fp
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $sp, 668
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	st.w	$s3, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s3, $sp, 668
	st.w	$s3, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$s4, $zero, 1
	st.d	$s4, $sp, 668
	st.w	$s3, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	st.d	$s6, $sp, 668
	st.w	$s3, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	st.d	$s5, $sp, 668
	st.w	$s3, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$zero, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s6, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$zero, $sp, 668
	st.w	$s4, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s3, $sp, 668
	st.w	$s4, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s4, $sp, 668
	st.w	$s4, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 668
	st.w	$s4, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	st.w	$s4, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	st.d	$s5, $sp, 668
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	st.w	$s6, $sp, 676
	addi.d	$a2, $sp, 668
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu32i.d	$s1, -1
	st.d	$s1, $sp, 668
	st.w	$s6, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$s2, $s5
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 668
	st.w	$s6, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 668
	st.w	$s6, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	ori	$s5, $zero, 1
	st.w	$s5, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 668
	st.w	$s5, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 668
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	st.w	$s5, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 668
	st.w	$s5, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s0, $fp
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 656
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 656
	ld.w	$a2, $sp, 660
	ld.w	$a3, $sp, 664
	slt	$a0, $a1, $a2
	st.d	$a1, $sp, 624                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	xvrepli.b	$xr28, 0
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	blez	$a0, .LBB4_72
# %bb.7:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blez	$a0, .LBB4_72
# %bb.8:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	blez	$a0, .LBB4_72
# %bb.9:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	blez	$a0, .LBB4_72
# %bb.10:                               # %.preheader485.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $t0, 4
	ld.w	$a1, $t0, 16
	move	$t2, $zero
	ld.w	$a2, $t0, 0
	sub.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	slt	$a3, $a5, $a1
	maskeqz	$a1, $a1, $a3
	ld.w	$a4, $t0, 12
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	sub.w	$a3, $a4, $a2
	slt	$a4, $a5, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	ld.d	$t1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $t1
	st.d	$a4, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a4, $a1, $a4
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a5, $a7, 0
	ld.w	$a6, $a7, 4
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t0, 8
	mulw.d.w	$a4, $a3, $a4
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	sub.d	$a2, $a5, $a2
	sub.d	$a0, $a6, $a0
	sub.d	$a4, $a7, $t0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a3
	add.w	$a6, $a2, $a0
	addi.d	$a0, $t1, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s8, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s5, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s6, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s0, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $ra, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s3, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s4, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t1, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 416                   # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %._crit_edge496.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$t2, $a0, .LBB4_72
.LBB4_12:                               # %.preheader485.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_68 Depth 4
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_11
.LBB4_14:                               # %.preheader483.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_68 Depth 4
	st.d	$a1, $sp, 592                   # 8-byte Folded Spill
	ori	$a0, $zero, 40
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	move	$a0, $zero
	b	.LBB4_67
	.p2align	4, , 16
.LBB4_16:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	alsl.d	$t3, $a6, $s5, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a0, 3
	alsl.d	$t4, $a6, $s1, 3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $s0
	alsl.d	$s0, $a6, $a0, 3
	alsl.d	$t5, $a6, $s7, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	alsl.d	$t6, $a6, $s6, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$t0, $s4
	alsl.d	$s4, $a6, $a0, 3
	alsl.d	$t7, $a6, $s2, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	alsl.d	$t8, $a6, $a1, 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	alsl.d	$ra, $a6, $ra, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a0, 3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a0, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a0, 3
	alsl.d	$a2, $a6, $s3, 3
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a0, 3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a0, 3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $a0, 3
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a0, 3
	alsl.d	$t0, $a6, $t0, 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a0, 3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a0, 3
	xvinsgr2vr.d	$xr5, $a3, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a0, 3
	xvori.b	$xr2, $xr5, 0
	xvinsgr2vr.d	$xr2, $t5, 1
	xvinsgr2vr.d	$xr2, $t0, 2
	xvinsgr2vr.d	$xr6, $t8, 0
	xvinsgr2vr.d	$xr2, $t5, 3
	xvori.b	$xr3, $xr6, 0
	xvinsgr2vr.d	$xr3, $t5, 1
	xvinsgr2vr.d	$xr3, $a5, 2
	xvinsgr2vr.d	$xr3, $t5, 3
	xvinsgr2vr.d	$xr8, $t0, 0
	xvinsgr2vr.d	$xr8, $t4, 1
	xvinsgr2vr.d	$xr8, $t6, 2
	xvinsgr2vr.d	$xr8, $t5, 3
	xvinsgr2vr.d	$xr11, $a5, 0
	xvinsgr2vr.d	$xr11, $t4, 1
	xvinsgr2vr.d	$xr11, $a3, 2
	xvinsgr2vr.d	$xr1, $t6, 0
	xvinsgr2vr.d	$xr11, $t4, 3
	xvori.b	$xr13, $xr1, 0
	xvinsgr2vr.d	$xr13, $t4, 1
	xvinsgr2vr.d	$xr13, $t8, 2
	xvinsgr2vr.d	$xr9, $t3, 0
	xvinsgr2vr.d	$xr13, $t4, 3
	xvori.b	$xr15, $xr9, 0
	xvinsgr2vr.d	$xr15, $t0, 1
	xvinsgr2vr.d	$xr15, $t3, 2
	xvinsgr2vr.d	$xr15, $t4, 3
	xvori.b	$xr17, $xr9, 0
	xvinsgr2vr.d	$xr17, $a5, 1
	xvinsgr2vr.d	$xr17, $t3, 2
	xvinsgr2vr.d	$xr17, $a3, 3
	xvinsgr2vr.d	$xr9, $t6, 1
	xvinsgr2vr.d	$xr9, $t3, 2
	xvinsgr2vr.d	$xr19, $t2, 0
	xvinsgr2vr.d	$xr9, $t8, 3
	xvori.b	$xr7, $xr19, 0
	xvinsgr2vr.d	$xr7, $t1, 1
	xvinsgr2vr.d	$xr7, $t2, 2
	xvinsgr2vr.d	$xr7, $fp, 3
	xvori.b	$xr10, $xr19, 0
	xvinsgr2vr.d	$xr10, $s7, 1
	xvinsgr2vr.d	$xr10, $t2, 2
	xvinsgr2vr.d	$xr16, $s0, 0
	xvinsgr2vr.d	$xr10, $s1, 3
	xvori.b	$xr12, $xr16, 0
	xvinsgr2vr.d	$xr12, $fp, 1
	xvinsgr2vr.d	$xr12, $t2, 2
	xvinsgr2vr.d	$xr12, $s6, 3
	xvori.b	$xr14, $xr16, 0
	xvinsgr2vr.d	$xr14, $s1, 1
	xvinsgr2vr.d	$xr14, $s0, 2
	xvinsgr2vr.d	$xr14, $t1, 3
	xvinsgr2vr.d	$xr16, $s6, 1
	xvinsgr2vr.d	$xr16, $s0, 2
	xvinsgr2vr.d	$xr4, $t1, 0
	xvinsgr2vr.d	$xr16, $s7, 3
	xvori.b	$xr18, $xr4, 0
	xvinsgr2vr.d	$xr18, $a4, 1
	xvinsgr2vr.d	$xr18, $fp, 2
	xvinsgr2vr.d	$xr0, $s7, 0
	xvinsgr2vr.d	$xr18, $t2, 3
	xvori.b	$xr20, $xr0, 0
	xvinsgr2vr.d	$xr20, $a4, 1
	xvinsgr2vr.d	$xr20, $s1, 2
	xvinsgr2vr.d	$xr20, $a4, 3
	xvinsgr2vr.d	$xr19, $a4, 1
	xvinsgr2vr.d	$xr19, $s6, 2
	xvinsgr2vr.d	$xr19, $a4, 3
	xvslt.du	$xr19, $xr9, $xr19
	xvpickve2gr.d	$a0, $xr19, 0
	vinsgr2vr.b	$vr9, $a0, 0
	xvpickve2gr.d	$a0, $xr19, 1
	xvreplgr2vr.b	$xr21, $a0
	xvpermi.q	$xr21, $xr9, 18
	xvextrins.b	$xr9, $xr21, 17
	xvpickve2gr.d	$a0, $xr19, 2
	xvreplgr2vr.b	$xr21, $a0
	xvpermi.q	$xr21, $xr9, 18
	xvextrins.b	$xr9, $xr21, 34
	xvpickve2gr.d	$a0, $xr19, 3
	xvreplgr2vr.b	$xr19, $a0
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 51
	xvslt.du	$xr17, $xr17, $xr20
	xvpickve2gr.d	$a0, $xr17, 0
	xvreplgr2vr.b	$xr19, $a0
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 68
	xvpickve2gr.d	$a0, $xr17, 1
	xvreplgr2vr.b	$xr19, $a0
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 85
	xvpickve2gr.d	$a0, $xr17, 2
	xvreplgr2vr.b	$xr19, $a0
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 102
	xvpickve2gr.d	$a0, $xr17, 3
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 119
	xvslt.du	$xr15, $xr15, $xr18
	xvpickve2gr.d	$a0, $xr15, 0
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 136
	xvpickve2gr.d	$a0, $xr15, 1
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 153
	xvpickve2gr.d	$a0, $xr15, 2
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 170
	xvpickve2gr.d	$a0, $xr15, 3
	xvreplgr2vr.b	$xr15, $a0
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 187
	xvslt.du	$xr13, $xr13, $xr16
	xvpickve2gr.d	$a0, $xr13, 0
	xvreplgr2vr.b	$xr15, $a0
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 204
	xvpickve2gr.d	$a0, $xr13, 1
	xvreplgr2vr.b	$xr15, $a0
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 221
	xvpickve2gr.d	$a0, $xr13, 2
	xvreplgr2vr.b	$xr15, $a0
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 238
	xvpickve2gr.d	$a0, $xr13, 3
	xvreplgr2vr.b	$xr13, $a0
	xvpermi.q	$xr13, $xr9, 18
	xvextrins.b	$xr9, $xr13, 255
	xvslt.du	$xr11, $xr11, $xr14
	xvpickve2gr.d	$a0, $xr11, 0
	xvreplgr2vr.b	$xr13, $a0
	xvpermi.q	$xr13, $xr9, 48
	xvextrins.b	$xr9, $xr13, 0
	xvpickve2gr.d	$a0, $xr11, 1
	xvreplgr2vr.b	$xr13, $a0
	xvpermi.q	$xr13, $xr9, 48
	xvextrins.b	$xr9, $xr13, 17
	xvpickve2gr.d	$a0, $xr11, 2
	xvreplgr2vr.b	$xr13, $a0
	xvpermi.q	$xr13, $xr9, 48
	xvextrins.b	$xr9, $xr13, 34
	xvpickve2gr.d	$a0, $xr11, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 51
	xvslt.du	$xr8, $xr8, $xr12
	xvpickve2gr.d	$a0, $xr8, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 68
	xvpickve2gr.d	$a0, $xr8, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 85
	xvpickve2gr.d	$a0, $xr8, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 102
	xvpickve2gr.d	$a0, $xr8, 3
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 119
	xvslt.du	$xr3, $xr3, $xr10
	xvpickve2gr.d	$a0, $xr3, 0
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 136
	xvpickve2gr.d	$a0, $xr3, 1
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 153
	xvpickve2gr.d	$a0, $xr3, 2
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 170
	xvpickve2gr.d	$a0, $xr3, 3
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 187
	xvslt.du	$xr2, $xr2, $xr7
	xvpickve2gr.d	$a0, $xr2, 0
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 204
	xvpickve2gr.d	$a0, $xr2, 1
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 221
	xvpickve2gr.d	$a0, $xr2, 2
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 238
	xvpickve2gr.d	$a0, $xr2, 3
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr9, 48
	xvinsgr2vr.d	$xr16, $t5, 0
	xvextrins.b	$xr9, $xr2, 255
	xvori.b	$xr11, $xr16, 0
	xvinsgr2vr.d	$xr11, $a7, 1
	xvinsgr2vr.d	$xr11, $t5, 2
	xvinsgr2vr.d	$xr11, $a1, 3
	xvori.b	$xr12, $xr16, 0
	xvinsgr2vr.d	$xr12, $ra, 1
	xvinsgr2vr.d	$xr12, $t5, 2
	xvinsgr2vr.d	$xr18, $t4, 0
	xvinsgr2vr.d	$xr12, $a2, 3
	xvori.b	$xr14, $xr18, 0
	xvinsgr2vr.d	$xr14, $a1, 1
	xvinsgr2vr.d	$xr14, $t5, 2
	xvinsgr2vr.d	$xr14, $t7, 3
	xvori.b	$xr17, $xr18, 0
	xvinsgr2vr.d	$xr17, $a2, 1
	xvinsgr2vr.d	$xr17, $t4, 2
	xvinsgr2vr.d	$xr17, $a7, 3
	xvinsgr2vr.d	$xr18, $t7, 1
	xvinsgr2vr.d	$xr18, $t4, 2
	xvinsgr2vr.d	$xr2, $a7, 0
	xvinsgr2vr.d	$xr18, $ra, 3
	xvori.b	$xr21, $xr2, 0
	xvinsgr2vr.d	$xr21, $t3, 1
	xvinsgr2vr.d	$xr21, $a1, 2
	xvinsgr2vr.d	$xr3, $ra, 0
	xvinsgr2vr.d	$xr21, $t5, 3
	xvori.b	$xr23, $xr3, 0
	xvinsgr2vr.d	$xr23, $t3, 1
	xvinsgr2vr.d	$xr23, $a2, 2
	xvinsgr2vr.d	$xr23, $t3, 3
	xvinsgr2vr.d	$xr16, $t3, 1
	xvinsgr2vr.d	$xr16, $t7, 2
	xvinsgr2vr.d	$xr7, $s3, 0
	xvinsgr2vr.d	$xr16, $t3, 3
	xvori.b	$xr13, $xr7, 0
	xvinsgr2vr.d	$xr13, $t2, 1
	xvinsgr2vr.d	$xr13, $s5, 2
	xvinsgr2vr.d	$xr8, $s8, 0
	xvinsgr2vr.d	$xr13, $t2, 3
	xvori.b	$xr15, $xr8, 0
	xvinsgr2vr.d	$xr15, $t2, 1
	xvinsgr2vr.d	$xr15, $s2, 2
	xvinsgr2vr.d	$xr15, $t2, 3
	xvinsgr2vr.d	$xr19, $s5, 0
	xvinsgr2vr.d	$xr19, $s0, 1
	xvinsgr2vr.d	$xr19, $s4, 2
	xvinsgr2vr.d	$xr19, $t2, 3
	xvinsgr2vr.d	$xr20, $s2, 0
	xvinsgr2vr.d	$xr20, $s0, 1
	xvinsgr2vr.d	$xr20, $s3, 2
	xvinsgr2vr.d	$xr10, $s4, 0
	xvinsgr2vr.d	$xr20, $s0, 3
	xvori.b	$xr22, $xr10, 0
	xvinsgr2vr.d	$xr22, $s0, 1
	xvinsgr2vr.d	$xr22, $s8, 2
	xvinsgr2vr.d	$xr25, $a4, 0
	xvinsgr2vr.d	$xr22, $s0, 3
	xvori.b	$xr24, $xr25, 0
	xvinsgr2vr.d	$xr24, $s5, 1
	xvinsgr2vr.d	$xr24, $a4, 2
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr24, $s0, 3
	xvori.b	$xr26, $xr25, 0
	xvinsgr2vr.d	$xr26, $s2, 1
	xvinsgr2vr.d	$xr26, $a4, 2
	xvinsgr2vr.d	$xr26, $s3, 3
	xvinsgr2vr.d	$xr25, $s4, 1
	st.d	$a4, $sp, 560                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr25, $a4, 2
	xvinsgr2vr.d	$xr25, $s8, 3
	xvslt.du	$xr25, $xr16, $xr25
	xvpickve2gr.d	$a0, $xr25, 0
	vinsgr2vr.b	$vr16, $a0, 0
	xvpickve2gr.d	$a0, $xr25, 1
	xvreplgr2vr.b	$xr27, $a0
	xvpermi.q	$xr27, $xr16, 18
	xvextrins.b	$xr16, $xr27, 17
	xvpickve2gr.d	$a0, $xr25, 2
	xvreplgr2vr.b	$xr27, $a0
	xvpermi.q	$xr27, $xr16, 18
	xvextrins.b	$xr16, $xr27, 34
	xvpickve2gr.d	$a0, $xr25, 3
	xvreplgr2vr.b	$xr25, $a0
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 51
	xvslt.du	$xr23, $xr23, $xr26
	xvpickve2gr.d	$a0, $xr23, 0
	xvreplgr2vr.b	$xr25, $a0
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 68
	xvpickve2gr.d	$a0, $xr23, 1
	xvreplgr2vr.b	$xr25, $a0
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 85
	xvpickve2gr.d	$a0, $xr23, 2
	xvreplgr2vr.b	$xr25, $a0
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 102
	xvpickve2gr.d	$a0, $xr23, 3
	xvreplgr2vr.b	$xr23, $a0
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 119
	xvslt.du	$xr21, $xr21, $xr24
	xvpickve2gr.d	$a0, $xr21, 0
	xvreplgr2vr.b	$xr23, $a0
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 136
	xvpickve2gr.d	$a0, $xr21, 1
	xvreplgr2vr.b	$xr23, $a0
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 153
	xvpickve2gr.d	$a0, $xr21, 2
	xvreplgr2vr.b	$xr23, $a0
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 170
	xvpickve2gr.d	$a0, $xr21, 3
	xvreplgr2vr.b	$xr21, $a0
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 187
	xvslt.du	$xr18, $xr18, $xr22
	xvpickve2gr.d	$a0, $xr18, 0
	xvreplgr2vr.b	$xr21, $a0
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 204
	xvpickve2gr.d	$a0, $xr18, 1
	xvreplgr2vr.b	$xr21, $a0
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 221
	xvpickve2gr.d	$a0, $xr18, 2
	xvreplgr2vr.b	$xr21, $a0
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 238
	xvpickve2gr.d	$a0, $xr18, 3
	xvreplgr2vr.b	$xr18, $a0
	xvpermi.q	$xr18, $xr16, 18
	xvextrins.b	$xr16, $xr18, 255
	xvslt.du	$xr17, $xr17, $xr20
	xvpickve2gr.d	$a0, $xr17, 0
	xvreplgr2vr.b	$xr18, $a0
	xvpermi.q	$xr18, $xr16, 48
	xvextrins.b	$xr16, $xr18, 0
	xvpickve2gr.d	$a0, $xr17, 1
	xvreplgr2vr.b	$xr18, $a0
	xvpermi.q	$xr18, $xr16, 48
	xvextrins.b	$xr16, $xr18, 17
	xvpickve2gr.d	$a0, $xr17, 2
	xvreplgr2vr.b	$xr18, $a0
	xvpermi.q	$xr18, $xr16, 48
	xvextrins.b	$xr16, $xr18, 34
	xvpickve2gr.d	$a0, $xr17, 3
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 51
	xvslt.du	$xr14, $xr14, $xr19
	xvpickve2gr.d	$a0, $xr14, 0
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 68
	xvpickve2gr.d	$a0, $xr14, 1
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 85
	xvpickve2gr.d	$a0, $xr14, 2
	xvreplgr2vr.b	$xr17, $a0
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 102
	xvpickve2gr.d	$a0, $xr14, 3
	xvreplgr2vr.b	$xr14, $a0
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 119
	xvslt.du	$xr12, $xr12, $xr15
	xvpickve2gr.d	$a0, $xr12, 0
	xvreplgr2vr.b	$xr14, $a0
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 136
	xvpickve2gr.d	$a0, $xr12, 1
	xvreplgr2vr.b	$xr14, $a0
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 153
	xvpickve2gr.d	$a0, $xr12, 2
	xvreplgr2vr.b	$xr14, $a0
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 170
	xvpickve2gr.d	$a0, $xr12, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 187
	xvslt.du	$xr11, $xr11, $xr13
	xvpickve2gr.d	$a0, $xr11, 0
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 204
	xvpickve2gr.d	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 221
	xvpickve2gr.d	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 238
	xvpickve2gr.d	$a0, $xr11, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr16, 48
	xvextrins.b	$xr16, $xr11, 255
	xvand.v	$xr9, $xr9, $xr16
	xvori.b	$xr11, $xr3, 0
	xvinsgr2vr.d	$xr11, $a5, 1
	xvinsgr2vr.d	$xr11, $a3, 2
	xvinsgr2vr.d	$xr11, $a5, 3
	xvori.b	$xr12, $xr3, 0
	xvinsgr2vr.d	$xr12, $a3, 1
	xvinsgr2vr.d	$xr12, $ra, 2
	xvinsgr2vr.d	$xr12, $t0, 3
	xvori.b	$xr14, $xr6, 0
	xvinsgr2vr.d	$xr14, $t0, 1
	xvinsgr2vr.d	$xr14, $t8, 2
	xvinsgr2vr.d	$xr14, $a5, 3
	xvori.b	$xr16, $xr6, 0
	xvinsgr2vr.d	$xr16, $a5, 1
	xvinsgr2vr.d	$xr16, $t8, 2
	xvinsgr2vr.d	$xr16, $a3, 3
	xvori.b	$xr17, $xr5, 0
	xvinsgr2vr.d	$xr17, $t7, 1
	xvinsgr2vr.d	$xr17, $t0, 2
	xvinsgr2vr.d	$xr17, $t7, 3
	xvori.b	$xr19, $xr6, 0
	xvinsgr2vr.d	$xr19, $t7, 1
	xvinsgr2vr.d	$xr19, $a5, 2
	xvinsgr2vr.d	$xr19, $t7, 3
	xvinsgr2vr.d	$xr5, $t6, 1
	xvinsgr2vr.d	$xr5, $t0, 2
	xvinsgr2vr.d	$xr5, $t6, 3
	xvinsgr2vr.d	$xr6, $t6, 1
	xvinsgr2vr.d	$xr6, $a5, 2
	xvinsgr2vr.d	$xr6, $t6, 3
	xvinsgr2vr.d	$xr13, $fp, 0
	xvinsgr2vr.d	$xr13, $s1, 1
	xvinsgr2vr.d	$xr13, $s2, 2
	xvinsgr2vr.d	$xr13, $t1, 3
	xvinsgr2vr.d	$xr15, $s1, 0
	xvinsgr2vr.d	$xr15, $s7, 1
	xvinsgr2vr.d	$xr15, $t1, 2
	xvinsgr2vr.d	$xr15, $s7, 3
	xvinsgr2vr.d	$xr4, $s8, 1
	xvinsgr2vr.d	$xr4, $fp, 2
	xvinsgr2vr.d	$xr4, $s7, 3
	xvori.b	$xr18, $xr0, 0
	xvinsgr2vr.d	$xr18, $s8, 1
	xvinsgr2vr.d	$xr18, $s1, 2
	xvinsgr2vr.d	$xr21, $s6, 0
	xvinsgr2vr.d	$xr18, $s8, 3
	xvori.b	$xr20, $xr21, 0
	xvinsgr2vr.d	$xr20, $t1, 1
	xvinsgr2vr.d	$xr20, $s6, 2
	xvinsgr2vr.d	$xr20, $fp, 3
	xvinsgr2vr.d	$xr21, $s7, 1
	xvinsgr2vr.d	$xr21, $s6, 2
	xvinsgr2vr.d	$xr21, $s1, 3
	xvori.b	$xr22, $xr10, 0
	st.d	$t1, $sp, 536                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr22, $t1, 1
	xvinsgr2vr.d	$xr22, $s4, 2
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr22, $fp, 3
	xvinsgr2vr.d	$xr10, $s7, 1
	xvinsgr2vr.d	$xr10, $s4, 2
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr10, $s1, 3
	xvslt.du	$xr10, $xr6, $xr10
	xvpickve2gr.d	$a0, $xr10, 0
	vinsgr2vr.b	$vr6, $a0, 0
	xvpickve2gr.d	$a0, $xr10, 1
	xvreplgr2vr.b	$xr23, $a0
	xvpermi.q	$xr23, $xr6, 18
	xvextrins.b	$xr6, $xr23, 17
	xvpickve2gr.d	$a0, $xr10, 2
	xvreplgr2vr.b	$xr23, $a0
	xvpermi.q	$xr23, $xr6, 18
	xvextrins.b	$xr6, $xr23, 34
	xvpickve2gr.d	$a0, $xr10, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 51
	xvslt.du	$xr5, $xr5, $xr22
	xvpickve2gr.d	$a0, $xr5, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 68
	xvpickve2gr.d	$a0, $xr5, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 85
	xvpickve2gr.d	$a0, $xr5, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 102
	xvpickve2gr.d	$a0, $xr5, 3
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 18
	xvextrins.b	$xr6, $xr5, 119
	xvslt.du	$xr5, $xr19, $xr21
	xvpickve2gr.d	$a0, $xr5, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 136
	xvpickve2gr.d	$a0, $xr5, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 153
	xvpickve2gr.d	$a0, $xr5, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 170
	xvpickve2gr.d	$a0, $xr5, 3
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 18
	xvextrins.b	$xr6, $xr5, 187
	xvslt.du	$xr5, $xr17, $xr20
	xvpickve2gr.d	$a0, $xr5, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 204
	xvpickve2gr.d	$a0, $xr5, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 221
	xvpickve2gr.d	$a0, $xr5, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 238
	xvpickve2gr.d	$a0, $xr5, 3
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 18
	xvextrins.b	$xr6, $xr5, 255
	xvslt.du	$xr5, $xr16, $xr18
	xvpickve2gr.d	$a0, $xr5, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 48
	xvextrins.b	$xr6, $xr10, 0
	xvpickve2gr.d	$a0, $xr5, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 48
	xvextrins.b	$xr6, $xr10, 17
	xvpickve2gr.d	$a0, $xr5, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr6, 48
	xvextrins.b	$xr6, $xr10, 34
	xvpickve2gr.d	$a0, $xr5, 3
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 51
	xvslt.du	$xr4, $xr14, $xr4
	xvpickve2gr.d	$a0, $xr4, 0
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 68
	xvpickve2gr.d	$a0, $xr4, 1
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 85
	xvpickve2gr.d	$a0, $xr4, 2
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 102
	xvpickve2gr.d	$a0, $xr4, 3
	xvreplgr2vr.b	$xr4, $a0
	xvpermi.q	$xr4, $xr6, 48
	xvextrins.b	$xr6, $xr4, 119
	xvslt.du	$xr4, $xr12, $xr15
	xvpickve2gr.d	$a0, $xr4, 0
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 136
	xvpickve2gr.d	$a0, $xr4, 1
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 153
	xvpickve2gr.d	$a0, $xr4, 2
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 170
	xvpickve2gr.d	$a0, $xr4, 3
	xvreplgr2vr.b	$xr4, $a0
	xvpermi.q	$xr4, $xr6, 48
	xvextrins.b	$xr6, $xr4, 187
	xvslt.du	$xr4, $xr11, $xr13
	xvpickve2gr.d	$a0, $xr4, 0
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 204
	xvpickve2gr.d	$a0, $xr4, 1
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 221
	xvpickve2gr.d	$a0, $xr4, 2
	xvreplgr2vr.b	$xr5, $a0
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 238
	xvpickve2gr.d	$a0, $xr4, 3
	xvreplgr2vr.b	$xr4, $a0
	xvpermi.q	$xr4, $xr6, 48
	xvextrins.b	$xr6, $xr4, 255
	xvinsgr2vr.d	$xr4, $a1, 0
	xvinsgr2vr.d	$xr4, $a2, 1
	xvinsgr2vr.d	$xr4, $a5, 2
	xvinsgr2vr.d	$xr4, $a7, 3
	xvinsgr2vr.d	$xr5, $a2, 0
	xvinsgr2vr.d	$xr5, $ra, 1
	xvinsgr2vr.d	$xr5, $a7, 2
	xvinsgr2vr.d	$xr5, $ra, 3
	xvinsgr2vr.d	$xr2, $t8, 1
	xvinsgr2vr.d	$xr2, $a1, 2
	xvinsgr2vr.d	$xr2, $ra, 3
	xvinsgr2vr.d	$xr3, $t8, 1
	xvinsgr2vr.d	$xr3, $a2, 2
	xvinsgr2vr.d	$xr14, $t7, 0
	xvinsgr2vr.d	$xr3, $t8, 3
	xvori.b	$xr12, $xr14, 0
	xvinsgr2vr.d	$xr12, $a7, 1
	xvinsgr2vr.d	$xr12, $t7, 2
	xvinsgr2vr.d	$xr12, $a1, 3
	xvinsgr2vr.d	$xr14, $ra, 1
	xvinsgr2vr.d	$xr14, $t7, 2
	xvinsgr2vr.d	$xr14, $a2, 3
	xvori.b	$xr16, $xr1, 0
	xvinsgr2vr.d	$xr16, $a7, 1
	xvinsgr2vr.d	$xr16, $t6, 2
	xvinsgr2vr.d	$xr16, $a1, 3
	xvinsgr2vr.d	$xr1, $ra, 1
	xvinsgr2vr.d	$xr1, $t6, 2
	xvinsgr2vr.d	$xr1, $a2, 3
	xvori.b	$xr10, $xr0, 0
	xvinsgr2vr.d	$xr10, $s2, 1
	xvinsgr2vr.d	$xr10, $s3, 2
	xvinsgr2vr.d	$xr10, $s2, 3
	xvinsgr2vr.d	$xr0, $s3, 1
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr0, $s7, 2
	xvinsgr2vr.d	$xr0, $s5, 3
	xvori.b	$xr11, $xr8, 0
	xvinsgr2vr.d	$xr11, $s5, 1
	xvinsgr2vr.d	$xr11, $s8, 2
	xvinsgr2vr.d	$xr11, $s2, 3
	xvori.b	$xr13, $xr8, 0
	xvinsgr2vr.d	$xr13, $s2, 1
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr13, $s8, 2
	xvinsgr2vr.d	$xr13, $s3, 3
	xvori.b	$xr15, $xr7, 0
	xvinsgr2vr.d	$xr15, $s6, 1
	xvinsgr2vr.d	$xr15, $s5, 2
	xvinsgr2vr.d	$xr15, $s6, 3
	xvori.b	$xr17, $xr8, 0
	xvinsgr2vr.d	$xr17, $s6, 1
	xvinsgr2vr.d	$xr17, $s2, 2
	xvinsgr2vr.d	$xr17, $s6, 3
	xvinsgr2vr.d	$xr7, $s4, 1
	xvinsgr2vr.d	$xr7, $s5, 2
	xvinsgr2vr.d	$xr7, $s4, 3
	xvinsgr2vr.d	$xr8, $s4, 1
	xvinsgr2vr.d	$xr8, $s2, 2
	xvinsgr2vr.d	$xr8, $s4, 3
	xvslt.du	$xr8, $xr1, $xr8
	xvpickve2gr.d	$a0, $xr8, 0
	vinsgr2vr.b	$vr1, $a0, 0
	xvpickve2gr.d	$a0, $xr8, 1
	xvreplgr2vr.b	$xr18, $a0
	xvpermi.q	$xr18, $xr1, 18
	xvextrins.b	$xr1, $xr18, 17
	xvpickve2gr.d	$a0, $xr8, 2
	xvreplgr2vr.b	$xr18, $a0
	xvpermi.q	$xr18, $xr1, 18
	xvextrins.b	$xr1, $xr18, 34
	xvpickve2gr.d	$a0, $xr8, 3
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 51
	xvslt.du	$xr7, $xr16, $xr7
	xvpickve2gr.d	$a0, $xr7, 0
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 68
	xvpickve2gr.d	$a0, $xr7, 1
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 85
	xvpickve2gr.d	$a0, $xr7, 2
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 102
	xvpickve2gr.d	$a0, $xr7, 3
	xvreplgr2vr.b	$xr7, $a0
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 119
	xvslt.du	$xr7, $xr14, $xr17
	xvpickve2gr.d	$a0, $xr7, 0
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 136
	xvpickve2gr.d	$a0, $xr7, 1
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 153
	xvpickve2gr.d	$a0, $xr7, 2
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 170
	xvpickve2gr.d	$a0, $xr7, 3
	xvreplgr2vr.b	$xr7, $a0
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 187
	xvslt.du	$xr7, $xr12, $xr15
	xvpickve2gr.d	$a0, $xr7, 0
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 204
	xvpickve2gr.d	$a0, $xr7, 1
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 221
	xvpickve2gr.d	$a0, $xr7, 2
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 238
	xvpickve2gr.d	$a0, $xr7, 3
	xvreplgr2vr.b	$xr7, $a0
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 255
	xvslt.du	$xr3, $xr3, $xr13
	xvpickve2gr.d	$a0, $xr3, 0
	xvreplgr2vr.b	$xr7, $a0
	xvpermi.q	$xr7, $xr1, 48
	xvextrins.b	$xr1, $xr7, 0
	xvpickve2gr.d	$a0, $xr3, 1
	xvreplgr2vr.b	$xr7, $a0
	xvpermi.q	$xr7, $xr1, 48
	xvextrins.b	$xr1, $xr7, 17
	xvpickve2gr.d	$a0, $xr3, 2
	xvreplgr2vr.b	$xr7, $a0
	xvpermi.q	$xr7, $xr1, 48
	xvextrins.b	$xr1, $xr7, 34
	xvpickve2gr.d	$a0, $xr3, 3
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 51
	xvslt.du	$xr2, $xr2, $xr11
	xvpickve2gr.d	$a0, $xr2, 0
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 68
	xvpickve2gr.d	$a0, $xr2, 1
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 85
	xvpickve2gr.d	$a0, $xr2, 2
	xvreplgr2vr.b	$xr3, $a0
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 102
	xvpickve2gr.d	$a0, $xr2, 3
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 119
	xvslt.du	$xr0, $xr5, $xr0
	xvpickve2gr.d	$a0, $xr0, 0
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 136
	xvpickve2gr.d	$a0, $xr0, 1
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 153
	xvpickve2gr.d	$a0, $xr0, 2
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 170
	xvpickve2gr.d	$a0, $xr0, 3
	xvreplgr2vr.b	$xr0, $a0
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 187
	xvslt.du	$xr0, $xr4, $xr10
	xvpickve2gr.d	$a0, $xr0, 0
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 204
	xvpickve2gr.d	$a0, $xr0, 1
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 221
	xvpickve2gr.d	$a0, $xr0, 2
	xvreplgr2vr.b	$xr2, $a0
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 238
	xvpickve2gr.d	$a0, $xr0, 3
	xvreplgr2vr.b	$xr0, $a0
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 255
	xvand.v	$xr0, $xr6, $xr1
	xvor.v	$xr0, $xr9, $xr0
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr0, $xr0
	xvpickve2gr.wu	$a0, $xr0, 0
	xvpickve2gr.wu	$t1, $xr0, 4
	bstrins.d	$a0, $t1, 31, 16
	addi.w	$t1, $a0, 0
	move	$a0, $zero
	bnez	$t1, .LBB4_69
# %bb.17:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$a4, $s3
	move	$s1, $s5
	move	$s5, $s4
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $t1, 3
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $t1, 3
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $fp, 3
	sltu	$s4, $s0, $s8
	sltu	$fp, $t1, $s7
	and	$fp, $s4, $fp
	bnez	$fp, .LBB4_61
# %bb.18:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $t3, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.19:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $t4, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.20:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $t2
	sltu	$s4, $t5, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.21:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s5
	sltu	$s4, $t6, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.22:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s6
	sltu	$s4, $t7, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.23:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 520                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $t8, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.24:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $ra, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.25:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s2
	sltu	$s4, $a5, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.26:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $a2, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.27:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $a4
	sltu	$s4, $a3, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.28:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 536                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $a7, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.29:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s1
	sltu	$s4, $t0, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.30:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $a1, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_61
# %bb.31:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	sltu	$fp, $t1, $fp
	sltu	$s4, $t3, $s8
	and	$fp, $fp, $s4
	move	$s7, $s3
	bnez	$fp, .LBB4_70
# %bb.32:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	sltu	$fp, $t1, $fp
	sltu	$s4, $t4, $s8
	and	$fp, $fp, $s4
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	bnez	$fp, .LBB4_71
# %bb.33:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t1, $t2
	sltu	$fp, $t5, $s8
	and	$t2, $t2, $fp
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	bnez	$t2, .LBB4_64
# %bb.34:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t1, $s5
	sltu	$fp, $t6, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.35:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t1, $s6
	sltu	$fp, $t7, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.36:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 520                   # 8-byte Folded Reload
	sltu	$t2, $t1, $t2
	sltu	$fp, $t8, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.37:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	sltu	$t2, $t1, $t2
	sltu	$fp, $ra, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.38:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t1, $s2
	sltu	$fp, $a5, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.39:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 544                   # 8-byte Folded Reload
	sltu	$t2, $t1, $t2
	sltu	$fp, $a2, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.40:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t1, $a4
	sltu	$fp, $a3, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.41:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 536                   # 8-byte Folded Reload
	sltu	$t2, $t1, $t2
	sltu	$fp, $a7, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.42:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t1, $s1
	sltu	$fp, $t0, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.43:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 528                   # 8-byte Folded Reload
	sltu	$t2, $t1, $t2
	sltu	$fp, $a1, $s8
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_64
# %bb.44:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 552                   # 8-byte Folded Reload
	sltu	$t2, $t3, $t2
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	sltu	$fp, $t4, $fp
	and	$t2, $t2, $fp
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	bnez	$t2, .LBB4_65
# %bb.45:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t6, $s6
	sltu	$fp, $t7, $s5
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.46:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a5, $s1
	sltu	$fp, $t0, $s2
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.47:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	sltu	$t2, $a5, $s5
	sltu	$fp, $a1, $s2
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.48:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a2, $a4
	ld.d	$s6, $sp, 544                   # 8-byte Folded Reload
	sltu	$fp, $a3, $s6
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.49:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	sltu	$t2, $a2, $s2
	sltu	$fp, $a7, $s6
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.50:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a2, $s1
	sltu	$fp, $t0, $s6
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.51:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a2, $s5
	sltu	$fp, $a1, $s6
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.52:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a3, $s2
	sltu	$fp, $a7, $a4
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.53:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a3, $s1
	sltu	$fp, $t0, $a4
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.54:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a3, $s5
	sltu	$fp, $a1, $a4
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.55:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a7, $s1
	sltu	$fp, $t0, $s2
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.56:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $a7, $s5
	sltu	$fp, $a1, $s2
	and	$t2, $t2, $fp
	bnez	$t2, .LBB4_65
# %bb.57:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $t0, $s5
	sltu	$a4, $a1, $s1
	and	$a4, $t2, $a4
	bnez	$a4, .LBB4_65
# %bb.58:                               # %vector.ph1392
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$a0, $zero
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.d	$a6, $a4, $a6
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_59:                               # %vector.body1395
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $t1, $a0
	xvldx	$xr1, $t3, $a0
	xvldx	$xr2, $s0, $a0
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t5, $a0
	xvldx	$xr3, $t6, $a0
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $s0, $a0
	xvldx	$xr0, $t4, $a0
	xvfadd.d	$xr1, $xr1, $xr3
	xvldx	$xr2, $t8, $a0
	xvldx	$xr3, $ra, $a0
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t4, $a0
	xvldx	$xr0, $t7, $a0
	xvfadd.d	$xr1, $xr2, $xr3
	xvldx	$xr2, $a2, $a0
	xvldx	$xr3, $a3, $a0
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t7, $a0
	xvldx	$xr0, $a5, $a0
	xvfadd.d	$xr1, $xr2, $xr3
	xvstx	$xr28, $t1, $a0
	xvstx	$xr28, $t3, $a0
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $a5, $a0
	xvldx	$xr0, $t0, $a0
	xvldx	$xr1, $a1, $a0
	xvstx	$xr28, $t5, $a0
	xvstx	$xr28, $t6, $a0
	xvstx	$xr28, $t8, $a0
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $a7, $a0
	xvstx	$xr28, $ra, $a0
	xvstx	$xr28, $a2, $a0
	xvstx	$xr28, $a3, $a0
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $a7, $a0
	xvstx	$xr28, $t0, $a0
	xvstx	$xr28, $a1, $a0
	addi.d	$a0, $a0, 32
	bne	$a4, $a0, .LBB4_59
# %bb.60:                               # %middle.block1414
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $a2
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_13
	b	.LBB4_67
.LBB4_61:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	move	$s7, $s3
.LBB4_62:                               # %scalar.ph1390.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
.LBB4_63:                               # %scalar.ph1390.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	b	.LBB4_66
.LBB4_64:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
.LBB4_65:                               # %scalar.ph1390.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
.LBB4_66:                               # %scalar.ph1390.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
.LBB4_67:                               # %scalar.ph1390.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	slli.d	$a1, $a6, 3
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	move	$a4, $s4
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 488                   # 8-byte Folded Reload
	move	$t0, $s3
	move	$t1, $s2
	move	$t2, $ra
	move	$t3, $s0
	move	$t4, $s1
	move	$t5, $s6
	move	$t6, $s7
	ld.d	$t7, $sp, 472                   # 8-byte Folded Reload
	move	$t8, $s5
	move	$fp, $s8
	.p2align	4, , 16
.LBB4_68:                               # %scalar.ph1390
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a1
	fldx.d	$fa1, $t8, $a1
	fldx.d	$fa2, $t7, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t7, $a1
	stx.d	$zero, $fp, $a1
	stx.d	$zero, $t8, $a1
	fldx.d	$fa0, $t6, $a1
	fldx.d	$fa1, $t5, $a1
	fldx.d	$fa2, $t4, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t4, $a1
	stx.d	$zero, $t6, $a1
	stx.d	$zero, $t5, $a1
	fldx.d	$fa0, $t3, $a1
	fldx.d	$fa1, $t2, $a1
	fldx.d	$fa2, $t1, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t1, $a1
	stx.d	$zero, $t3, $a1
	stx.d	$zero, $t2, $a1
	fldx.d	$fa0, $t0, $a1
	fldx.d	$fa1, $a7, $a1
	fldx.d	$fa2, $a5, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a5, $a1
	stx.d	$zero, $t0, $a1
	stx.d	$zero, $a7, $a1
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $a3, $a1
	fldx.d	$fa2, $a2, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a2, $a1
	stx.d	$zero, $a4, $a1
	stx.d	$zero, $a3, $a1
	addi.d	$a6, $a6, 1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB4_68
	b	.LBB4_13
.LBB4_69:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	b	.LBB4_67
.LBB4_70:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	b	.LBB4_62
.LBB4_71:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	b	.LBB4_63
	.p2align	4, , 16
.LBB4_72:                               # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_3
# %bb.73:                               #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $sp, 656
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	xvst	$xr28, $sp, 416                 # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 656
	ld.w	$a1, $sp, 660
	ld.w	$a4, $sp, 664
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB4_3
# %bb.74:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	blez	$a2, .LBB4_3
# %bb.75:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$a1, .LBB4_3
# %bb.76:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$a0, .LBB4_3
# %bb.77:                               # %.preheader484.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $t3, 4
	ld.w	$a3, $t3, 16
	move	$t4, $zero
	ld.w	$a5, $t3, 0
	sub.w	$a3, $a3, $a2
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	slt	$a4, $a7, $a3
	maskeqz	$a3, $a3, $a4
	ld.w	$a6, $t3, 12
	masknez	$a4, $a7, $a4
	or	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	sub.w	$a4, $a6, $a5
	slt	$a6, $a7, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a7, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	sub.d	$a4, $a6, $a0
	sub.d	$a7, $a3, $a1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$t0, $t2, 0
	ld.w	$t1, $t2, 4
	ld.w	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	mulw.d.w	$a7, $a6, $a7
	st.d	$a7, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a5, $t0, $a5
	sub.d	$a2, $t1, $a2
	sub.d	$a7, $t2, $t3
	mul.d	$a3, $a3, $a7
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a6
	add.w	$a6, $a5, $a2
	addi.d	$a2, $a0, -1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	slli.d	$a2, $a0, 3
	bstrpick.d	$a2, $a2, 33, 5
	slli.d	$s2, $a2, 5
	b	.LBB4_79
	.p2align	4, , 16
.LBB4_78:                               # %._crit_edge521.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_79 Depth=2
	ld.d	$t4, $sp, 312                   # 8-byte Folded Reload
	addi.w	$t4, $t4, 1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	beq	$t4, $a2, .LBB4_3
.LBB4_79:                               # %.preheader484.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_81 Depth 3
                                        #         Child Loop BB4_89 Depth 4
                                        #         Child Loop BB4_84 Depth 4
	st.d	$t4, $sp, 312                   # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB4_81
	.p2align	4, , 16
.LBB4_80:                               # %._crit_edge518.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_81 Depth=3
	addi.w	$s3, $s3, 1
	add.w	$a6, $a4, $a6
	beq	$s3, $a1, .LBB4_78
.LBB4_81:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_79 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_89 Depth 4
                                        #         Child Loop BB4_84 Depth 4
	ori	$a2, $zero, 32
	bgeu	$a0, $a2, .LBB4_85
# %bb.82:                               #   in Loop: Header=BB4_81 Depth=3
	move	$t3, $zero
.LBB4_83:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_81 Depth=3
	slli.d	$a2, $a6, 3
	sub.d	$a3, $a0, $t3
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_84:                               # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_79 Depth=2
                                        #       Parent Loop BB4_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a2
	fldx.d	$fa1, $t8, $a2
	fldx.d	$fa2, $t7, $a2
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t7, $a2
	stx.d	$zero, $fp, $a2
	stx.d	$zero, $t8, $a2
	fldx.d	$fa0, $t6, $a2
	fldx.d	$fa1, $t5, $a2
	fldx.d	$fa2, $t4, $a2
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t4, $a2
	stx.d	$zero, $t6, $a2
	stx.d	$zero, $t5, $a2
	fldx.d	$fa0, $t3, $a2
	fldx.d	$fa1, $t2, $a2
	fldx.d	$fa2, $t1, $a2
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t1, $a2
	stx.d	$zero, $t3, $a2
	stx.d	$zero, $t2, $a2
	fldx.d	$fa0, $t0, $a2
	fldx.d	$fa1, $a7, $a2
	fldx.d	$fa2, $a5, $a2
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a5, $a2
	stx.d	$zero, $t0, $a2
	stx.d	$zero, $a7, $a2
	addi.d	$a6, $a6, 1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	bnez	$a3, .LBB4_84
	b	.LBB4_80
	.p2align	4, , 16
.LBB4_85:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_81 Depth=3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s4, $a6, $a2, 3
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a2, 3
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a2, 3
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a2, 3
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a2, 3
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a2, 3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a2, 3
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $a2, 3
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a2, 3
	ld.d	$a2, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a2, 3
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$ra, $a6, $a2, 3
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $a2, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a2, 3
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a2, 3
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a3, 3
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a3, 3
	ld.d	$a7, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a7, 3
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $a7, 3
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a7, 3
	xvinsgr2vr.d	$xr4, $a7, 0
	xvst	$xr4, $sp, 560                  # 32-byte Folded Spill
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t2, 3
	xvinsgr2vr.d	$xr4, $s6, 1
	xvinsgr2vr.d	$xr4, $s8, 2
	xvinsgr2vr.d	$xr3, $a5, 0
	xvinsgr2vr.d	$xr4, $s7, 3
	xvori.b	$xr6, $xr3, 0
	xvinsgr2vr.d	$xr6, $s6, 1
	xvinsgr2vr.d	$xr6, $a3, 2
	xvinsgr2vr.d	$xr14, $s5, 0
	xvinsgr2vr.d	$xr6, $s6, 3
	xvori.b	$xr10, $xr14, 0
	xvinsgr2vr.d	$xr10, $s6, 1
	xvinsgr2vr.d	$xr10, $s8, 2
	xvinsgr2vr.d	$xr10, $s6, 3
	xvori.b	$xr12, $xr14, 0
	xvinsgr2vr.d	$xr12, $a3, 1
	xvinsgr2vr.d	$xr12, $s5, 2
	xvinsgr2vr.d	$xr12, $a7, 3
	xvori.b	$xr0, $xr14, 0
	xvinsgr2vr.d	$xr0, $s8, 1
	xvinsgr2vr.d	$xr0, $s5, 2
	xvinsgr2vr.d	$xr13, $s4, 0
	xvinsgr2vr.d	$xr0, $a5, 3
	xvori.b	$xr1, $xr13, 0
	xvinsgr2vr.d	$xr1, $a7, 1
	xvinsgr2vr.d	$xr1, $s4, 2
	xvinsgr2vr.d	$xr1, $s6, 3
	xvori.b	$xr2, $xr13, 0
	xvinsgr2vr.d	$xr2, $a5, 1
	xvinsgr2vr.d	$xr2, $s4, 2
	xvinsgr2vr.d	$xr2, $a3, 3
	xvinsgr2vr.d	$xr13, $s6, 1
	xvinsgr2vr.d	$xr13, $s4, 2
	xvinsgr2vr.d	$xr17, $fp, 0
	xvinsgr2vr.d	$xr13, $s8, 3
	xvori.b	$xr7, $xr17, 0
	xvinsgr2vr.d	$xr7, $t2, 1
	xvinsgr2vr.d	$xr7, $t0, 2
	xvinsgr2vr.d	$xr7, $t6, 3
	xvinsgr2vr.d	$xr17, $t7, 1
	xvinsgr2vr.d	$xr17, $fp, 2
	xvinsgr2vr.d	$xr9, $t2, 0
	xvinsgr2vr.d	$xr17, $t8, 3
	xvori.b	$xr18, $xr9, 0
	xvinsgr2vr.d	$xr18, $t0, 1
	xvinsgr2vr.d	$xr18, $fp, 2
	xvinsgr2vr.d	$xr20, $t7, 0
	xvst	$xr20, $sp, 592                 # 32-byte Folded Spill
	xvinsgr2vr.d	$xr18, $t6, 3
	xvinsgr2vr.d	$xr20, $s0, 1
	xvinsgr2vr.d	$xr20, $t8, 2
	xvinsgr2vr.d	$xr11, $t0, 0
	xvst	$xr11, $sp, 624                 # 32-byte Folded Spill
	xvinsgr2vr.d	$xr20, $s0, 3
	xvinsgr2vr.d	$xr11, $s0, 1
	xvinsgr2vr.d	$xr11, $t6, 2
	xvinsgr2vr.d	$xr5, $t8, 0
	xvinsgr2vr.d	$xr11, $s0, 3
	xvori.b	$xr16, $xr5, 0
	xvinsgr2vr.d	$xr16, $s1, 1
	xvinsgr2vr.d	$xr16, $t2, 2
	xvinsgr2vr.d	$xr8, $t6, 0
	xvinsgr2vr.d	$xr16, $s0, 3
	xvori.b	$xr19, $xr8, 0
	xvinsgr2vr.d	$xr19, $s1, 1
	xvinsgr2vr.d	$xr19, $t7, 2
	xvinsgr2vr.d	$xr15, $s0, 0
	xvinsgr2vr.d	$xr19, $s1, 3
	xvori.b	$xr21, $xr15, 0
	xvinsgr2vr.d	$xr21, $s1, 1
	xvinsgr2vr.d	$xr21, $t0, 2
	xvinsgr2vr.d	$xr21, $s1, 3
	xvslt.du	$xr21, $xr13, $xr21
	xvpickve2gr.d	$t5, $xr21, 0
	vinsgr2vr.b	$vr13, $t5, 0
	xvpickve2gr.d	$t5, $xr21, 1
	xvreplgr2vr.b	$xr22, $t5
	xvpermi.q	$xr22, $xr13, 18
	xvextrins.b	$xr13, $xr22, 17
	xvpickve2gr.d	$t5, $xr21, 2
	xvreplgr2vr.b	$xr22, $t5
	xvpermi.q	$xr22, $xr13, 18
	xvextrins.b	$xr13, $xr22, 34
	xvpickve2gr.d	$t5, $xr21, 3
	xvreplgr2vr.b	$xr21, $t5
	xvpermi.q	$xr21, $xr13, 18
	xvextrins.b	$xr13, $xr21, 51
	xvslt.du	$xr2, $xr2, $xr19
	xvpickve2gr.d	$t5, $xr2, 0
	xvreplgr2vr.b	$xr19, $t5
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 68
	xvpickve2gr.d	$t5, $xr2, 1
	xvreplgr2vr.b	$xr19, $t5
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 85
	xvpickve2gr.d	$t5, $xr2, 2
	xvreplgr2vr.b	$xr19, $t5
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 102
	xvpickve2gr.d	$t5, $xr2, 3
	xvreplgr2vr.b	$xr2, $t5
	xvpermi.q	$xr2, $xr13, 18
	xvextrins.b	$xr13, $xr2, 119
	xvslt.du	$xr1, $xr1, $xr16
	xvpickve2gr.d	$t5, $xr1, 0
	xvreplgr2vr.b	$xr2, $t5
	xvpermi.q	$xr2, $xr13, 18
	xvextrins.b	$xr13, $xr2, 136
	xvpickve2gr.d	$t5, $xr1, 1
	xvreplgr2vr.b	$xr2, $t5
	xvpermi.q	$xr2, $xr13, 18
	xvextrins.b	$xr13, $xr2, 153
	xvpickve2gr.d	$t5, $xr1, 2
	xvreplgr2vr.b	$xr2, $t5
	xvpickve2gr.d	$t5, $xr1, 3
	xvreplgr2vr.b	$xr1, $t5
	xvslt.du	$xr0, $xr0, $xr11
	xvpickve2gr.d	$t5, $xr0, 0
	xvreplgr2vr.b	$xr11, $t5
	xvpickve2gr.d	$t5, $xr0, 1
	xvreplgr2vr.b	$xr16, $t5
	xvpickve2gr.d	$t5, $xr0, 2
	xvreplgr2vr.b	$xr19, $t5
	xvpickve2gr.d	$t5, $xr0, 3
	xvreplgr2vr.b	$xr22, $t5
	xvslt.du	$xr0, $xr12, $xr20
	xvpickve2gr.d	$t5, $xr0, 0
	xvreplgr2vr.b	$xr24, $t5
	xvpickve2gr.d	$t5, $xr0, 1
	xvreplgr2vr.b	$xr26, $t5
	xvpickve2gr.d	$t5, $xr0, 2
	xvreplgr2vr.b	$xr27, $t5
	xvpickve2gr.d	$t5, $xr0, 3
	xvreplgr2vr.b	$xr12, $t5
	xvslt.du	$xr0, $xr10, $xr18
	xvpickve2gr.d	$t5, $xr0, 0
	xvreplgr2vr.b	$xr10, $t5
	xvpickve2gr.d	$t5, $xr0, 1
	xvreplgr2vr.b	$xr21, $t5
	xvpickve2gr.d	$t5, $xr0, 2
	xvreplgr2vr.b	$xr23, $t5
	xvpickve2gr.d	$t5, $xr0, 3
	xvreplgr2vr.b	$xr25, $t5
	xvslt.du	$xr0, $xr6, $xr17
	xvpickve2gr.d	$t5, $xr0, 0
	xvreplgr2vr.b	$xr17, $t5
	xvpickve2gr.d	$t5, $xr0, 1
	xvreplgr2vr.b	$xr28, $t5
	xvpickve2gr.d	$t5, $xr0, 2
	xvreplgr2vr.b	$xr29, $t5
	xvpickve2gr.d	$t5, $xr0, 3
	xvreplgr2vr.b	$xr30, $t5
	xvslt.du	$xr4, $xr4, $xr7
	xvpickve2gr.d	$t5, $xr4, 0
	xvreplgr2vr.b	$xr7, $t5
	xvpickve2gr.d	$t5, $xr4, 1
	xvreplgr2vr.b	$xr31, $t5
	xvpickve2gr.d	$t5, $xr4, 2
	xvreplgr2vr.b	$xr0, $t5
	xvpickve2gr.d	$t5, $xr4, 3
	xvreplgr2vr.b	$xr4, $t5
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $t5, 3
	xvpermi.q	$xr2, $xr13, 18
	xvextrins.b	$xr13, $xr2, 170
	xvpermi.q	$xr1, $xr13, 18
	xvextrins.b	$xr13, $xr1, 187
	xvori.b	$xr18, $xr15, 0
	xvori.b	$xr20, $xr15, 0
	xvinsgr2vr.d	$xr20, $t4, 1
	xvinsgr2vr.d	$xr20, $s0, 2
	xvinsgr2vr.d	$xr15, $t3, 1
	xvinsgr2vr.d	$xr15, $s0, 2
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $s0, 3
	xvpermi.q	$xr11, $xr13, 18
	xvextrins.b	$xr13, $xr11, 204
	xvpermi.q	$xr16, $xr13, 18
	xvextrins.b	$xr13, $xr16, 221
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 238
	xvpermi.q	$xr22, $xr13, 18
	xvextrins.b	$xr13, $xr22, 255
	xvpermi.q	$xr24, $xr13, 48
	xvextrins.b	$xr13, $xr24, 0
	xvpermi.q	$xr26, $xr13, 48
	xvextrins.b	$xr13, $xr26, 17
	xvpermi.q	$xr27, $xr13, 48
	xvinsgr2vr.d	$xr26, $s0, 0
	xvextrins.b	$xr13, $xr27, 34
	xvori.b	$xr16, $xr26, 0
	xvinsgr2vr.d	$xr6, $t1, 0
	xvinsgr2vr.d	$xr16, $fp, 1
	xvori.b	$xr19, $xr6, 0
	xvinsgr2vr.d	$xr19, $fp, 1
	xvinsgr2vr.d	$xr19, $t4, 2
	xvinsgr2vr.d	$xr19, $fp, 3
	xvinsgr2vr.d	$xr18, $fp, 1
	xvinsgr2vr.d	$xr18, $t3, 2
	xvinsgr2vr.d	$xr27, $s1, 0
	xvinsgr2vr.d	$xr18, $fp, 3
	xvori.b	$xr24, $xr27, 0
	xvinsgr2vr.d	$xr24, $s0, 1
	xvinsgr2vr.d	$xr24, $s1, 2
	xvinsgr2vr.d	$xr24, $fp, 3
	xvori.b	$xr2, $xr27, 0
	xvinsgr2vr.d	$xr27, $fp, 1
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $fp, 3
	xvpermi.q	$xr12, $xr13, 48
	xvextrins.b	$xr13, $xr12, 51
	xvpermi.q	$xr10, $xr13, 48
	xvextrins.b	$xr13, $xr10, 68
	xvpermi.q	$xr21, $xr13, 48
	xvextrins.b	$xr13, $xr21, 85
	xvpermi.q	$xr23, $xr13, 48
	xvextrins.b	$xr13, $xr23, 102
	xvpermi.q	$xr25, $xr13, 48
	xvextrins.b	$xr13, $xr25, 119
	xvpermi.q	$xr17, $xr13, 48
	xvextrins.b	$xr13, $xr17, 136
	xvpermi.q	$xr28, $xr13, 48
	xvextrins.b	$xr13, $xr28, 153
	xvpermi.q	$xr29, $xr13, 48
	xvextrins.b	$xr13, $xr29, 170
	xvpermi.q	$xr30, $xr13, 48
	xvextrins.b	$xr13, $xr30, 187
	xvpermi.q	$xr7, $xr13, 48
	xvextrins.b	$xr13, $xr7, 204
	xvpermi.q	$xr31, $xr13, 48
	xvextrins.b	$xr13, $xr31, 221
	xvpermi.q	$xr0, $xr13, 48
	xvextrins.b	$xr13, $xr0, 238
	xvpermi.q	$xr4, $xr13, 48
	xvinsgr2vr.d	$xr22, $s6, 0
	xvextrins.b	$xr13, $xr4, 255
	xvori.b	$xr21, $xr22, 0
	xvinsgr2vr.d	$xr21, $fp, 1
	xvinsgr2vr.d	$xr21, $s7, 2
	xvinsgr2vr.d	$xr21, $ra, 3
	xvinsgr2vr.d	$xr22, $a2, 1
	xvinsgr2vr.d	$xr22, $s6, 2
	xvinsgr2vr.d	$xr11, $fp, 0
	xvinsgr2vr.d	$xr22, $t5, 3
	xvori.b	$xr0, $xr11, 0
	xvinsgr2vr.d	$xr0, $s7, 1
	xvinsgr2vr.d	$xr0, $s6, 2
	xvinsgr2vr.d	$xr12, $a2, 0
	xvinsgr2vr.d	$xr0, $ra, 3
	xvori.b	$xr1, $xr12, 0
	xvinsgr2vr.d	$xr1, $s5, 1
	xvinsgr2vr.d	$xr1, $t5, 2
	xvinsgr2vr.d	$xr17, $s7, 0
	xvinsgr2vr.d	$xr1, $s5, 3
	xvori.b	$xr4, $xr17, 0
	xvinsgr2vr.d	$xr4, $s5, 1
	xvinsgr2vr.d	$xr4, $ra, 2
	xvinsgr2vr.d	$xr7, $t5, 0
	xvinsgr2vr.d	$xr4, $s5, 3
	xvori.b	$xr23, $xr7, 0
	xvinsgr2vr.d	$xr23, $s4, 1
	xvinsgr2vr.d	$xr23, $fp, 2
	xvinsgr2vr.d	$xr10, $ra, 0
	xvinsgr2vr.d	$xr23, $s5, 3
	xvori.b	$xr25, $xr10, 0
	xvinsgr2vr.d	$xr25, $s4, 1
	xvinsgr2vr.d	$xr25, $a2, 2
	xvinsgr2vr.d	$xr25, $s4, 3
	xvinsgr2vr.d	$xr14, $s4, 1
	xvinsgr2vr.d	$xr14, $s7, 2
	xvinsgr2vr.d	$xr14, $s4, 3
	xvinsgr2vr.d	$xr16, $t3, 2
	xvinsgr2vr.d	$xr16, $t0, 3
	xvinsgr2vr.d	$xr20, $s0, 3
	xvinsgr2vr.d	$xr15, $t1, 3
	xvinsgr2vr.d	$xr2, $t1, 1
	xvinsgr2vr.d	$xr2, $s1, 2
	xvinsgr2vr.d	$xr2, $t4, 3
	xvinsgr2vr.d	$xr27, $s1, 2
	xvinsgr2vr.d	$xr27, $t3, 3
	xvslt.du	$xr27, $xr14, $xr27
	xvpickve2gr.d	$s1, $xr27, 0
	vinsgr2vr.b	$vr14, $s1, 0
	xvpickve2gr.d	$s1, $xr27, 1
	xvreplgr2vr.b	$xr28, $s1
	xvpermi.q	$xr28, $xr14, 18
	xvextrins.b	$xr14, $xr28, 17
	xvpickve2gr.d	$s1, $xr27, 2
	xvreplgr2vr.b	$xr28, $s1
	xvpermi.q	$xr28, $xr14, 18
	xvextrins.b	$xr14, $xr28, 34
	xvpickve2gr.d	$s1, $xr27, 3
	xvreplgr2vr.b	$xr27, $s1
	xvpermi.q	$xr27, $xr14, 18
	xvextrins.b	$xr14, $xr27, 51
	xvslt.du	$xr2, $xr25, $xr2
	xvpickve2gr.d	$s1, $xr2, 0
	xvreplgr2vr.b	$xr25, $s1
	xvpermi.q	$xr25, $xr14, 18
	xvextrins.b	$xr14, $xr25, 68
	xvpickve2gr.d	$s1, $xr2, 1
	xvreplgr2vr.b	$xr25, $s1
	xvpermi.q	$xr25, $xr14, 18
	xvextrins.b	$xr14, $xr25, 85
	xvpickve2gr.d	$s1, $xr2, 2
	xvreplgr2vr.b	$xr25, $s1
	xvpermi.q	$xr25, $xr14, 18
	xvextrins.b	$xr14, $xr25, 102
	xvpickve2gr.d	$s1, $xr2, 3
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr14, 18
	xvextrins.b	$xr14, $xr2, 119
	xvslt.du	$xr2, $xr23, $xr24
	xvpickve2gr.d	$s1, $xr2, 0
	xvreplgr2vr.b	$xr23, $s1
	xvpermi.q	$xr23, $xr14, 18
	xvextrins.b	$xr14, $xr23, 136
	xvpickve2gr.d	$s1, $xr2, 1
	xvreplgr2vr.b	$xr23, $s1
	xvpermi.q	$xr23, $xr14, 18
	xvextrins.b	$xr14, $xr23, 153
	xvpickve2gr.d	$s1, $xr2, 2
	xvreplgr2vr.b	$xr23, $s1
	xvpermi.q	$xr23, $xr14, 18
	xvextrins.b	$xr14, $xr23, 170
	xvpickve2gr.d	$s1, $xr2, 3
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr14, 18
	xvextrins.b	$xr14, $xr2, 187
	xvslt.du	$xr2, $xr4, $xr15
	xvpickve2gr.d	$s1, $xr2, 0
	xvreplgr2vr.b	$xr4, $s1
	xvpermi.q	$xr4, $xr14, 18
	xvextrins.b	$xr14, $xr4, 204
	xvpickve2gr.d	$s1, $xr2, 1
	xvreplgr2vr.b	$xr4, $s1
	xvpermi.q	$xr4, $xr14, 18
	xvextrins.b	$xr14, $xr4, 221
	xvpickve2gr.d	$s1, $xr2, 2
	xvreplgr2vr.b	$xr4, $s1
	xvpermi.q	$xr4, $xr14, 18
	xvextrins.b	$xr14, $xr4, 238
	xvpickve2gr.d	$s1, $xr2, 3
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr14, 18
	xvextrins.b	$xr14, $xr2, 255
	xvslt.du	$xr1, $xr1, $xr20
	xvpickve2gr.d	$s1, $xr1, 0
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr14, 48
	xvextrins.b	$xr14, $xr2, 0
	xvpickve2gr.d	$s1, $xr1, 1
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr14, 48
	xvextrins.b	$xr14, $xr2, 17
	xvpickve2gr.d	$s1, $xr1, 2
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr14, 48
	xvextrins.b	$xr14, $xr2, 34
	xvpickve2gr.d	$s1, $xr1, 3
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 51
	xvslt.du	$xr0, $xr0, $xr18
	xvpickve2gr.d	$s1, $xr0, 0
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 68
	xvpickve2gr.d	$s1, $xr0, 1
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 85
	xvpickve2gr.d	$s1, $xr0, 2
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 102
	xvpickve2gr.d	$s1, $xr0, 3
	xvreplgr2vr.b	$xr0, $s1
	xvpermi.q	$xr0, $xr14, 48
	xvextrins.b	$xr14, $xr0, 119
	xvslt.du	$xr0, $xr22, $xr19
	xvpickve2gr.d	$s1, $xr0, 0
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 136
	xvpickve2gr.d	$s1, $xr0, 1
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 153
	xvpickve2gr.d	$s1, $xr0, 2
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 170
	xvpickve2gr.d	$s1, $xr0, 3
	xvreplgr2vr.b	$xr0, $s1
	xvpermi.q	$xr0, $xr14, 48
	xvextrins.b	$xr14, $xr0, 187
	xvslt.du	$xr0, $xr21, $xr16
	xvpickve2gr.d	$s1, $xr0, 0
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 204
	xvpickve2gr.d	$s1, $xr0, 1
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 221
	xvpickve2gr.d	$s1, $xr0, 2
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 238
	xvpickve2gr.d	$s1, $xr0, 3
	xvreplgr2vr.b	$xr0, $s1
	xvpermi.q	$xr0, $xr14, 48
	xvextrins.b	$xr14, $xr0, 255
	xvand.v	$xr13, $xr13, $xr14
	xvld	$xr0, $sp, 560                  # 32-byte Folded Reload
	xvori.b	$xr18, $xr0, 0
	xvinsgr2vr.d	$xr18, $a3, 1
	xvinsgr2vr.d	$xr18, $a7, 2
	xvinsgr2vr.d	$xr18, $t5, 3
	xvori.b	$xr19, $xr12, 0
	xvinsgr2vr.d	$xr19, $a7, 1
	xvinsgr2vr.d	$xr19, $a2, 2
	xvinsgr2vr.d	$xr19, $a3, 3
	xvori.b	$xr21, $xr3, 0
	xvinsgr2vr.d	$xr21, $a7, 1
	xvinsgr2vr.d	$xr21, $a5, 2
	xvinsgr2vr.d	$xr21, $a3, 3
	xvinsgr2vr.d	$xr0, $ra, 1
	xvinsgr2vr.d	$xr0, $a5, 2
	xvinsgr2vr.d	$xr0, $a3, 3
	xvori.b	$xr24, $xr0, 0
	xvinsgr2vr.d	$xr3, $ra, 1
	xvinsgr2vr.d	$xr3, $a3, 2
	xvinsgr2vr.d	$xr14, $a3, 0
	xvinsgr2vr.d	$xr3, $ra, 3
	xvori.b	$xr1, $xr14, 0
	xvinsgr2vr.d	$xr1, $s8, 1
	xvinsgr2vr.d	$xr1, $a7, 2
	xvinsgr2vr.d	$xr1, $s8, 3
	xvori.b	$xr2, $xr17, 0
	xvinsgr2vr.d	$xr2, $s8, 1
	xvinsgr2vr.d	$xr2, $a5, 2
	xvinsgr2vr.d	$xr2, $s8, 3
	xvinsgr2vr.d	$xr17, $a3, 1
	xvinsgr2vr.d	$xr17, $s7, 2
	xvinsgr2vr.d	$xr16, $t4, 0
	xvinsgr2vr.d	$xr17, $a7, 3
	xvori.b	$xr20, $xr16, 0
	xvinsgr2vr.d	$xr20, $t2, 1
	xvinsgr2vr.d	$xr20, $t8, 2
	xvinsgr2vr.d	$xr20, $t2, 3
	xvori.b	$xr22, $xr5, 0
	xvinsgr2vr.d	$xr22, $t7, 1
	xvinsgr2vr.d	$xr22, $t2, 2
	xvinsgr2vr.d	$xr22, $t8, 3
	xvinsgr2vr.d	$xr5, $t1, 1
	xvinsgr2vr.d	$xr5, $t2, 2
	xvinsgr2vr.d	$xr5, $t7, 3
	xvori.b	$xr0, $xr8, 0
	xvinsgr2vr.d	$xr0, $t2, 1
	xvinsgr2vr.d	$xr0, $t7, 2
	xvinsgr2vr.d	$xr0, $t1, 3
	xvinsgr2vr.d	$xr8, $t7, 1
	xvinsgr2vr.d	$xr8, $t6, 2
	xvinsgr2vr.d	$xr8, $t8, 3
	xvinsgr2vr.d	$xr4, $t3, 0
	xvinsgr2vr.d	$xr4, $t8, 1
	xvinsgr2vr.d	$xr4, $t3, 2
	xvinsgr2vr.d	$xr4, $t2, 3
	xvinsgr2vr.d	$xr9, $t6, 1
	xvinsgr2vr.d	$xr9, $t3, 2
	xvinsgr2vr.d	$xr9, $t7, 3
	xvld	$xr30, $sp, 592                 # 32-byte Folded Reload
	xvori.b	$xr15, $xr30, 0
	xvinsgr2vr.d	$xr15, $t0, 1
	xvinsgr2vr.d	$xr15, $t8, 2
	xvinsgr2vr.d	$xr15, $t0, 3
	xvslt.du	$xr17, $xr17, $xr15
	xvpickve2gr.d	$s1, $xr17, 0
	vinsgr2vr.b	$vr15, $s1, 0
	xvpickve2gr.d	$s1, $xr17, 1
	xvreplgr2vr.b	$xr23, $s1
	xvpermi.q	$xr23, $xr15, 18
	xvextrins.b	$xr15, $xr23, 17
	xvpickve2gr.d	$s1, $xr17, 2
	xvreplgr2vr.b	$xr23, $s1
	xvpermi.q	$xr23, $xr15, 18
	xvextrins.b	$xr15, $xr23, 34
	xvpickve2gr.d	$s1, $xr17, 3
	xvreplgr2vr.b	$xr17, $s1
	xvpermi.q	$xr17, $xr15, 18
	xvextrins.b	$xr15, $xr17, 51
	xvslt.du	$xr2, $xr2, $xr9
	xvpickve2gr.d	$s1, $xr2, 0
	xvreplgr2vr.b	$xr9, $s1
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 68
	xvpickve2gr.d	$s1, $xr2, 1
	xvreplgr2vr.b	$xr9, $s1
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 85
	xvpickve2gr.d	$s1, $xr2, 2
	xvreplgr2vr.b	$xr9, $s1
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 102
	xvpickve2gr.d	$s1, $xr2, 3
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr15, 18
	xvextrins.b	$xr15, $xr2, 119
	xvslt.du	$xr1, $xr1, $xr4
	xvpickve2gr.d	$s1, $xr1, 0
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr15, 18
	xvextrins.b	$xr15, $xr2, 136
	xvpickve2gr.d	$s1, $xr1, 1
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr15, 18
	xvextrins.b	$xr15, $xr2, 153
	xvpickve2gr.d	$s1, $xr1, 2
	xvreplgr2vr.b	$xr2, $s1
	xvpermi.q	$xr2, $xr15, 18
	xvextrins.b	$xr15, $xr2, 170
	xvpickve2gr.d	$s1, $xr1, 3
	xvreplgr2vr.b	$xr1, $s1
	xvpermi.q	$xr1, $xr15, 18
	xvextrins.b	$xr15, $xr1, 187
	xvslt.du	$xr1, $xr3, $xr8
	xvpickve2gr.d	$s1, $xr1, 0
	xvreplgr2vr.b	$xr2, $s1
	xvpickve2gr.d	$s1, $xr1, 1
	xvreplgr2vr.b	$xr3, $s1
	xvpickve2gr.d	$s1, $xr1, 2
	xvreplgr2vr.b	$xr8, $s1
	xvpickve2gr.d	$s1, $xr1, 3
	xvreplgr2vr.b	$xr9, $s1
	xvslt.du	$xr0, $xr24, $xr0
	xvpickve2gr.d	$s1, $xr0, 0
	xvreplgr2vr.b	$xr17, $s1
	xvpickve2gr.d	$s1, $xr0, 1
	xvreplgr2vr.b	$xr23, $s1
	xvpickve2gr.d	$s1, $xr0, 2
	xvreplgr2vr.b	$xr24, $s1
	xvpickve2gr.d	$s1, $xr0, 3
	xvreplgr2vr.b	$xr25, $s1
	xvslt.du	$xr1, $xr21, $xr5
	xvpickve2gr.d	$s1, $xr1, 0
	xvreplgr2vr.b	$xr5, $s1
	xvpickve2gr.d	$s1, $xr1, 1
	xvreplgr2vr.b	$xr0, $s1
	xvpickve2gr.d	$s1, $xr1, 2
	xvreplgr2vr.b	$xr4, $s1
	xvpickve2gr.d	$s1, $xr1, 3
	xvreplgr2vr.b	$xr21, $s1
	xvslt.du	$xr1, $xr19, $xr22
	xvpickve2gr.d	$s1, $xr1, 0
	xvreplgr2vr.b	$xr19, $s1
	xvpickve2gr.d	$s1, $xr1, 1
	xvreplgr2vr.b	$xr22, $s1
	xvpickve2gr.d	$s1, $xr1, 2
	xvreplgr2vr.b	$xr27, $s1
	xvpickve2gr.d	$s1, $xr1, 3
	xvreplgr2vr.b	$xr28, $s1
	xvslt.du	$xr29, $xr18, $xr20
	xvpickve2gr.d	$s1, $xr29, 0
	xvreplgr2vr.b	$xr18, $s1
	xvpickve2gr.d	$s1, $xr29, 1
	xvreplgr2vr.b	$xr1, $s1
	xvpickve2gr.d	$s1, $xr29, 2
	xvreplgr2vr.b	$xr20, $s1
	xvpickve2gr.d	$s1, $xr29, 3
	xvreplgr2vr.b	$xr29, $s1
	xvpermi.q	$xr2, $xr15, 18
	xvextrins.b	$xr15, $xr2, 204
	xvori.b	$xr2, $xr26, 0
	xvinsgr2vr.d	$xr2, $t4, 1
	xvinsgr2vr.d	$xr2, $s0, 2
	xvinsgr2vr.d	$xr2, $t8, 3
	xvinsgr2vr.d	$xr30, $s0, 1
	xvinsgr2vr.d	$xr30, $t7, 2
	xvpermi.q	$xr3, $xr15, 18
	xvextrins.b	$xr15, $xr3, 221
	xvori.b	$xr3, $xr6, 0
	xvinsgr2vr.d	$xr26, $t6, 1
	xvinsgr2vr.d	$xr6, $t6, 1
	xvinsgr2vr.d	$xr6, $t4, 2
	xvinsgr2vr.d	$xr6, $t6, 3
	xvpermi.q	$xr8, $xr15, 18
	xvextrins.b	$xr15, $xr8, 238
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 255
	xvpermi.q	$xr17, $xr15, 48
	xvextrins.b	$xr15, $xr17, 0
	xvpermi.q	$xr23, $xr15, 48
	xvextrins.b	$xr15, $xr23, 17
	xvpermi.q	$xr24, $xr15, 48
	xvextrins.b	$xr15, $xr24, 34
	xvpermi.q	$xr25, $xr15, 48
	xvextrins.b	$xr15, $xr25, 51
	xvpermi.q	$xr5, $xr15, 48
	xvextrins.b	$xr15, $xr5, 68
	xvpermi.q	$xr0, $xr15, 48
	xvextrins.b	$xr15, $xr0, 85
	xvpermi.q	$xr4, $xr15, 48
	xvextrins.b	$xr15, $xr4, 102
	xvpermi.q	$xr21, $xr15, 48
	xvextrins.b	$xr15, $xr21, 119
	xvpermi.q	$xr19, $xr15, 48
	xvextrins.b	$xr15, $xr19, 136
	xvpermi.q	$xr22, $xr15, 48
	xvextrins.b	$xr15, $xr22, 153
	xvpermi.q	$xr27, $xr15, 48
	xvextrins.b	$xr15, $xr27, 170
	xvpermi.q	$xr28, $xr15, 48
	xvextrins.b	$xr15, $xr28, 187
	xvpermi.q	$xr18, $xr15, 48
	xvextrins.b	$xr15, $xr18, 204
	xvpermi.q	$xr1, $xr15, 48
	xvextrins.b	$xr15, $xr1, 221
	xvpermi.q	$xr20, $xr15, 48
	xvextrins.b	$xr15, $xr20, 238
	xvpermi.q	$xr29, $xr15, 48
	xvextrins.b	$xr15, $xr29, 255
	xvinsgr2vr.d	$xr14, $fp, 1
	xvinsgr2vr.d	$xr14, $t5, 2
	xvinsgr2vr.d	$xr14, $fp, 3
	xvori.b	$xr5, $xr7, 0
	xvinsgr2vr.d	$xr5, $a2, 1
	xvinsgr2vr.d	$xr5, $fp, 2
	xvinsgr2vr.d	$xr5, $t5, 3
	xvinsgr2vr.d	$xr7, $a5, 1
	xvinsgr2vr.d	$xr7, $fp, 2
	xvinsgr2vr.d	$xr7, $a2, 3
	xvori.b	$xr0, $xr10, 0
	xvinsgr2vr.d	$xr0, $fp, 1
	xvinsgr2vr.d	$xr0, $a2, 2
	xvinsgr2vr.d	$xr0, $a5, 3
	xvinsgr2vr.d	$xr10, $a2, 1
	xvinsgr2vr.d	$xr10, $ra, 2
	xvinsgr2vr.d	$xr10, $t5, 3
	xvinsgr2vr.d	$xr4, $s8, 0
	xvinsgr2vr.d	$xr4, $t5, 1
	xvinsgr2vr.d	$xr4, $s8, 2
	xvinsgr2vr.d	$xr4, $fp, 3
	xvinsgr2vr.d	$xr11, $ra, 1
	xvinsgr2vr.d	$xr11, $s8, 2
	xvinsgr2vr.d	$xr11, $a2, 3
	xvinsgr2vr.d	$xr12, $s7, 1
	xvinsgr2vr.d	$xr12, $t5, 2
	xvinsgr2vr.d	$xr12, $s7, 3
	xvinsgr2vr.d	$xr30, $t4, 3
	xvinsgr2vr.d	$xr3, $s0, 1
	xvinsgr2vr.d	$xr3, $t1, 2
	xvinsgr2vr.d	$xr3, $t4, 3
	xvinsgr2vr.d	$xr26, $t1, 2
	xvinsgr2vr.d	$xr26, $t4, 3
	xvinsgr2vr.d	$xr16, $t3, 1
	xvinsgr2vr.d	$xr16, $s0, 2
	xvinsgr2vr.d	$xr16, $t3, 3
	xvld	$xr1, $sp, 624                  # 32-byte Folded Reload
	xvori.b	$xr8, $xr1, 0
	xvinsgr2vr.d	$xr8, $t3, 1
	xvinsgr2vr.d	$xr8, $t1, 2
	xvinsgr2vr.d	$xr8, $t3, 3
	xvinsgr2vr.d	$xr1, $t4, 1
	xvinsgr2vr.d	$xr1, $t0, 2
	xvinsgr2vr.d	$xr1, $s0, 3
	xvslt.du	$xr9, $xr12, $xr1
	xvpickve2gr.d	$t3, $xr9, 0
	vinsgr2vr.b	$vr1, $t3, 0
	xvpickve2gr.d	$t3, $xr9, 1
	xvreplgr2vr.b	$xr12, $t3
	xvpermi.q	$xr12, $xr1, 18
	xvextrins.b	$xr1, $xr12, 17
	xvpickve2gr.d	$t3, $xr9, 2
	xvreplgr2vr.b	$xr12, $t3
	xvpermi.q	$xr12, $xr1, 18
	xvextrins.b	$xr1, $xr12, 34
	xvpickve2gr.d	$t3, $xr9, 3
	xvreplgr2vr.b	$xr9, $t3
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 51
	xvslt.du	$xr8, $xr11, $xr8
	xvpickve2gr.d	$t3, $xr8, 0
	xvreplgr2vr.b	$xr9, $t3
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 68
	xvpickve2gr.d	$t3, $xr8, 1
	xvreplgr2vr.b	$xr9, $t3
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 85
	xvpickve2gr.d	$t3, $xr8, 2
	xvreplgr2vr.b	$xr9, $t3
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 102
	xvpickve2gr.d	$t3, $xr8, 3
	xvreplgr2vr.b	$xr8, $t3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 119
	xvslt.du	$xr4, $xr4, $xr16
	xvpickve2gr.d	$t3, $xr4, 0
	xvreplgr2vr.b	$xr8, $t3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 136
	xvpickve2gr.d	$t3, $xr4, 1
	xvreplgr2vr.b	$xr8, $t3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 153
	xvpickve2gr.d	$t3, $xr4, 2
	xvreplgr2vr.b	$xr8, $t3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 170
	xvpickve2gr.d	$t3, $xr4, 3
	xvreplgr2vr.b	$xr4, $t3
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 187
	xvslt.du	$xr4, $xr10, $xr6
	xvpickve2gr.d	$t3, $xr4, 0
	xvreplgr2vr.b	$xr6, $t3
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 204
	xvpickve2gr.d	$t3, $xr4, 1
	xvreplgr2vr.b	$xr6, $t3
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 221
	xvpickve2gr.d	$t3, $xr4, 2
	xvreplgr2vr.b	$xr6, $t3
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 238
	xvpickve2gr.d	$t3, $xr4, 3
	xvreplgr2vr.b	$xr4, $t3
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 255
	xvslt.du	$xr0, $xr0, $xr26
	xvpickve2gr.d	$t3, $xr0, 0
	xvreplgr2vr.b	$xr4, $t3
	xvpermi.q	$xr4, $xr1, 48
	xvextrins.b	$xr1, $xr4, 0
	xvpickve2gr.d	$t3, $xr0, 1
	xvreplgr2vr.b	$xr4, $t3
	xvpermi.q	$xr4, $xr1, 48
	xvextrins.b	$xr1, $xr4, 17
	xvpickve2gr.d	$t3, $xr0, 2
	xvreplgr2vr.b	$xr4, $t3
	xvpermi.q	$xr4, $xr1, 48
	xvextrins.b	$xr1, $xr4, 34
	xvpickve2gr.d	$t3, $xr0, 3
	xvreplgr2vr.b	$xr0, $t3
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 51
	xvslt.du	$xr0, $xr7, $xr3
	xvpickve2gr.d	$t3, $xr0, 0
	xvreplgr2vr.b	$xr3, $t3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 68
	xvpickve2gr.d	$t3, $xr0, 1
	xvreplgr2vr.b	$xr3, $t3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 85
	xvpickve2gr.d	$t3, $xr0, 2
	xvreplgr2vr.b	$xr3, $t3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 102
	xvpickve2gr.d	$t3, $xr0, 3
	xvreplgr2vr.b	$xr0, $t3
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 119
	xvslt.du	$xr0, $xr5, $xr30
	xvpickve2gr.d	$t3, $xr0, 0
	xvreplgr2vr.b	$xr3, $t3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 136
	xvpickve2gr.d	$t3, $xr0, 1
	xvreplgr2vr.b	$xr3, $t3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 153
	xvpickve2gr.d	$t3, $xr0, 2
	xvreplgr2vr.b	$xr3, $t3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 170
	xvpickve2gr.d	$t3, $xr0, 3
	xvreplgr2vr.b	$xr0, $t3
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 187
	xvslt.du	$xr0, $xr14, $xr2
	xvpickve2gr.d	$t3, $xr0, 0
	xvreplgr2vr.b	$xr2, $t3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 204
	xvpickve2gr.d	$t3, $xr0, 1
	xvreplgr2vr.b	$xr2, $t3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 221
	xvpickve2gr.d	$t3, $xr0, 2
	xvreplgr2vr.b	$xr2, $t3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 238
	xvpickve2gr.d	$t3, $xr0, 3
	xvreplgr2vr.b	$xr0, $t3
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 255
	xvand.v	$xr0, $xr15, $xr1
	xvor.v	$xr0, $xr13, $xr0
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr0, $xr0
	xvpickve2gr.wu	$t3, $xr0, 0
	xvpickve2gr.wu	$t4, $xr0, 4
	bstrins.d	$t3, $t4, 31, 16
	addi.w	$t4, $t3, 0
	move	$t3, $zero
	bnez	$t4, .LBB4_83
# %bb.86:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_81 Depth=3
	sltu	$t1, $s7, $t1
	sltu	$t0, $a5, $t0
	and	$t0, $t1, $t0
	xvld	$xr5, $sp, 416                  # 32-byte Folded Reload
	bnez	$t0, .LBB4_83
# %bb.87:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_81 Depth=3
	sltu	$t0, $a7, $t2
	sltu	$t1, $fp, $s0
	and	$t0, $t0, $t1
	bnez	$t0, .LBB4_83
# %bb.88:                               # %vector.ph
                                        #   in Loop: Header=BB4_81 Depth=3
	move	$t0, $zero
	ld.d	$t1, $sp, 456                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	.p2align	4, , 16
.LBB4_89:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_79 Depth=2
                                        #       Parent Loop BB4_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $s5, $t0
	xvldx	$xr1, $s6, $t0
	xvldx	$xr2, $s4, $t0
	xvldx	$xr3, $s8, $t0
	xvldx	$xr4, $ra, $t0
	xvfadd.d	$xr0, $xr0, $xr1
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $s4, $t0
	xvfadd.d	$xr0, $xr3, $xr4
	xvldx	$xr1, $s7, $t0
	xvldx	$xr2, $a2, $t0
	xvldx	$xr3, $a3, $t0
	xvldx	$xr4, $a5, $t0
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $s7, $t0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvstx	$xr0, $a5, $t0
	xvldx	$xr0, $a7, $t0
	xvldx	$xr1, $fp, $t0
	xvstx	$xr5, $s5, $t0
	xvstx	$xr5, $s6, $t0
	xvstx	$xr5, $s8, $t0
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t5, $t0
	xvstx	$xr5, $ra, $t0
	xvstx	$xr5, $a2, $t0
	xvstx	$xr5, $a3, $t0
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $t5, $t0
	xvstx	$xr5, $a7, $t0
	xvstx	$xr5, $fp, $t0
	addi.d	$t0, $t0, 32
	bne	$s2, $t0, .LBB4_89
# %bb.90:                               # %middle.block
                                        #   in Loop: Header=BB4_81 Depth=3
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	move	$t3, $a2
	beq	$a2, $a0, .LBB4_80
	b	.LBB4_83
.LBB4_91:                               # %.loopexit491
	move	$a0, $zero
	fld.d	$fs7, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 696                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 720                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 728                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 736                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 808                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 816                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 824                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 832
	ret
.Lfunc_end4:
	.size	hypre_SMG3RAPPeriodicNoSym, .Lfunc_end4-hypre_SMG3RAPPeriodicNoSym
                                        # -- End function
	.type	.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost,@object # @__const.hypre_SMG3CreateRAPOp.RAP_num_ghost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
