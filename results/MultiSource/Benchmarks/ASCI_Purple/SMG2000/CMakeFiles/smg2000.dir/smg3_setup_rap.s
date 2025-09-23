	.file	"smg3_setup_rap.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMG3CreateRAPOp
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_1:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_2:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_3:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_4:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_5:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_6:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI0_7:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_9:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI0_10:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_11:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_12:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_13:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_14:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI0_15:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI0_16:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_17:
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_18:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI0_19:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_20:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI0_21:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
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
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_9)
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_10)
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_11)
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_8)
	vst	$vr0, $a2, 0
	vst	$vr1, $a2, 16
	vst	$vr2, $a2, 32
	vst	$vr3, $a2, 48
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
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_9)
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_10)
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_11)
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_8)
	vst	$vr0, $a2, 0
	vst	$vr1, $a2, 16
	vst	$vr2, $a2, 32
	vst	$vr3, $a2, 48
	vrepli.b	$vr0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_21)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_21)
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_12)
	pcalau12i	$a0, %pc_hi20(.LCPI0_17)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_17)
	vst	$vr0, $a2, 76
	vst	$vr1, $a2, 96
	vst	$vr2, $a2, 112
	vst	$vr3, $a2, 128
	pcalau12i	$a0, %pc_hi20(.LCPI0_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_18)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $a2, 64
	st.w	$a0, $a2, 72
	st.w	$zero, $a2, 92
	vst	$vr0, $a2, 144
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
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_4)
	vst	$vr0, $a2, 16
	vst	$vr1, $a2, 32
	vst	$vr2, $a2, 48
	vst	$vr3, $a2, 64
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_5)
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_6)
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_7)
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_8)
	vst	$vr0, $a2, 80
	vst	$vr1, $a2, 96
	vst	$vr2, $a2, 112
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
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	vst	$vr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	vst	$vr1, $a2, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_3)
	vst	$vr0, $a2, 32
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	vst	$vr1, $a2, 48
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_5)
	vst	$vr0, $a2, 64
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_6)
	vst	$vr1, $a2, 80
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_7)
	vst	$vr0, $a2, 96
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_8)
	vst	$vr1, $a2, 112
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_12)
	vst	$vr0, $a2, 128
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 148
	vst	$vr1, $a2, 168
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_13)
	pcalau12i	$a0, %pc_hi20(.LCPI0_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_14)
	pcalau12i	$a0, %pc_hi20(.LCPI0_15)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_15)
	pcalau12i	$a0, %pc_hi20(.LCPI0_16)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_16)
	vst	$vr0, $a2, 184
	vst	$vr1, $a2, 200
	vst	$vr2, $a2, 216
	vst	$vr3, $a2, 232
	pcalau12i	$a0, %pc_hi20(.LCPI0_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_17)
	pcalau12i	$a0, %pc_hi20(.LCPI0_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_18)
	pcalau12i	$a0, %pc_hi20(.LCPI0_19)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_19)
	vst	$vr0, $a2, 248
	vst	$vr1, $a2, 264
	addi.w	$a0, $zero, -1
	vst	$vr2, $a2, 280
	pcalau12i	$a1, %pc_hi20(.LCPI0_20)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_20)
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMG3BuildRAPSym
.LCPI1_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
.LCPI1_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI1_2:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI1_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI1_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI1_6:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI1_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI1_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
	.text
	.globl	hypre_SMG3BuildRAPSym
	.p2align	5
	.type	hypre_SMG3BuildRAPSym,@function
hypre_SMG3BuildRAPSym:                  # @hypre_SMG3BuildRAPSym
# %bb.0:
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a6, .LBB1_56
# %bb.1:                                # %.preheader2462.lr.ph
	move	$s3, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s3, 8
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	vrepli.d	$vr16, 1
                                        # implicit-def: $r1
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
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	vst	$vr16, $sp, 16                  # 16-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit2458
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ori	$s0, $zero, 1
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	bge	$a4, $a0, .LBB1_56
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
	st.d	$ra, $sp, 336                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s2, $a5, -1
	slli.d	$a1, $a5, 4
	alsl.d	$a2, $a5, $a1, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	addi.d	$a3, $a5, -1
	addi.d	$s4, $a2, -24
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s2, $s2, 1
	addi.d	$s4, $s4, 24
	addi.d	$a1, $a1, 4
	bne	$a2, $a0, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 528
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 40
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 40
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $fp, 40
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$zero, $sp, 540
	st.w	$s0, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	move	$s0, $a0
	addi.w	$s4, $zero, -1
	st.d	$zero, $sp, 540
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	lu32i.d	$s4, 0
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$zero, $sp, 540
	st.w	$s5, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$zero, $sp, 540
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$zero, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s4, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s5, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$a0, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$a0, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$zero, $sp, 540
	st.w	$s5, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$zero, $sp, 540
	st.d	$s4, $sp, 288                   # 8-byte Folded Spill
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	blt	$s5, $a0, .LBB1_9
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$a1, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$s5, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	st.d	$s5, $sp, 540
	st.w	$s5, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 540
	st.w	$s5, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$s5, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$s5, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s5, $a0, .LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $s3
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	st.d	$s3, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s4
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	move	$s5, $a1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s3, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$s3, $s4
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 20
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	bltu	$a2, $a0, .LBB1_55
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s5, $sp, 328                   # 8-byte Folded Reload
	st.d	$s5, $sp, 540
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	st.d	$a0, $sp, 540
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s5, $sp, 540
	move	$s5, $s3
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	st.w	$s3, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$s3, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$s3, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 540
	st.w	$s3, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
.LBB1_10:                               # %.thread2380
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$zero, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	st.d	$s4, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$zero, $sp, 540
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 540
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 540
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, -1
	st.d	$s3, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 540
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$s3, $sp, 540
	move	$s3, $s4
	st.w	$s4, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s5
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 540
	st.w	$s3, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 540
	st.w	$s3, $sp, 548
	addi.d	$a2, $sp, 540
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	st.d	$zero, $sp, 540
	ori	$a5, $zero, 1
	st.w	$a5, $sp, 548
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.d	$a2, $a3, $s4
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	ld.w	$a0, $a2, 16
	ld.w	$a1, $a2, 4
	sub.w	$a0, $a0, $a1
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	slt	$a1, $a6, $a0
	maskeqz	$a0, $a0, $a1
	ld.w	$a2, $a2, 12
	ldx.w	$a3, $a3, $s4
	masknez	$a1, $a6, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $a6, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a6, $a2
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a7, $t0, $s4
	ld.w	$a3, $a7, 16
	ld.w	$a4, $a7, 4
	move	$s5, $a7
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $a6, $a0
	ld.w	$a2, $a7, 12
	ldx.w	$a3, $t0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a6, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $a6, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a6, $a2
	or	$a1, $a1, $a2
	st.d	$a5, $sp, 544
	ld.w	$a2, $a7, 12
	ldx.w	$a3, $t0, $s4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $a6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a6, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$a5, $sp, 540
	st.w	$zero, $sp, 548
	addi.d	$a1, $sp, 512
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s3, 8
	ld.w	$a0, $s5, 16
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $t0, $s4
	ld.w	$a1, $a1, 16
	ld.w	$a5, $sp, 536
	ld.d	$a6, $s3, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 16
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a3, $t1, 16
	ld.d	$a7, $sp, 528
	vinsgr2vr.d	$vr0, $a6, 0
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	vldx	$vr2, $a6, $s4
	vldx	$vr5, $t0, $s4
	vinsgr2vr.d	$vr3, $a7, 0
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	vldx	$vr4, $a6, $s4
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	vld	$vr1, $a6, %pc_lo12(.LCPI1_0)
	vld	$vr6, $t1, 0
	pcalau12i	$a6, %pc_hi20(.LCPI1_1)
	vld	$vr7, $a6, %pc_lo12(.LCPI1_1)
	vshuf.w	$vr1, $vr3, $vr0
	vpackev.w	$vr8, $vr2, $vr5
	vpackev.d	$vr8, $vr6, $vr8
	vshuf.w	$vr7, $vr4, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI1_2)
	vld	$vr8, $a6, %pc_lo12(.LCPI1_2)
	pcalau12i	$a6, %pc_hi20(.LCPI1_3)
	vld	$vr9, $a6, %pc_lo12(.LCPI1_3)
	pcalau12i	$a6, %pc_hi20(.LCPI1_4)
	vld	$vr10, $a6, %pc_lo12(.LCPI1_4)
	vshuf.w	$vr8, $vr3, $vr0
	vpackod.w	$vr0, $vr2, $vr5
	vshuf.w	$vr9, $vr6, $vr0
	vshuf.w	$vr10, $vr4, $vr9
	vsub.w	$vr8, $vr8, $vr10
	vinsgr2vr.w	$vr0, $a4, 0
	vinsgr2vr.w	$vr0, $a5, 1
	pcalau12i	$a4, %pc_hi20(.LCPI1_5)
	vld	$vr3, $a4, %pc_lo12(.LCPI1_5)
	vshuf4i.w	$vr0, $vr0, 64
	vilvh.w	$vr9, $vr2, $vr5
	vshuf4i.d	$vr9, $vr6, 12
	vshuf.w	$vr3, $vr4, $vr9
	vsub.w	$vr0, $vr0, $vr3
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a0, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a2, 3
	vsub.w	$vr3, $vr3, $vr10
	vmaxi.w	$vr3, $vr3, -1
	vaddi.wu	$vr3, $vr3, 1
	vmadd.w	$vr8, $vr3, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr9, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr10, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_8)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a7, $a0, 0
	vsub.w	$vr1, $vr1, $vr7
	vshuf.w	$vr9, $vr2, $vr5
	vshuf.w	$vr10, $vr6, $vr9
	vori.b	$vr2, $vr0, 0
	vshuf.w	$vr2, $vr4, $vr10
	vsub.w	$vr2, $vr2, $vr7
	vmaxi.w	$vr2, $vr2, -1
	vaddi.wu	$vr4, $vr2, 1
	ld.d	$a2, $sp, 512
	ld.w	$a0, $sp, 516
	ld.w	$a1, $sp, 512
	vmadd.w	$vr1, $vr8, $vr4
	vinsgr2vr.d	$vr2, $a2, 0
	ld.w	$a2, $sp, 520
	slt	$a3, $a1, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	masknez	$a4, $a1, $a3
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	maskeqz	$a3, $a0, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ori	$a5, $zero, 19
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	beq	$a4, $a5, .LBB1_35
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	vld	$vr16, $sp, 16                  # 16-byte Folded Reload
	ori	$a5, $zero, 15
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	beq	$a4, $a5, .LBB1_25
# %bb.14:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a5, $zero, 7
	bne	$a4, $a5, .LBB1_45
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	blez	$a3, .LBB1_2
# %bb.16:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.17:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.18:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.19:                               # %.preheader2448.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a4, $a6, 4
	move	$a1, $zero
	vpickve2gr.w	$a5, $vr4, 3
	mul.d	$a4, $a4, $a5
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	mul.d	$a5, $a0, $a4
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a6, $a6, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a4, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a4, $a0, $a7
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a4, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a6, 1
	vshuf4i.w	$vr6, $vr7, 64
	vsub.w	$vr3, $vr3, $vr6
	vmul.w	$vr5, $vr5, $vr6
	vmul.w	$vr3, $vr3, $vr4
	vinsgr2vr.w	$vr4, $a5, 3
	vsub.w	$vr4, $vr5, $vr4
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$s4, $a0, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t8, $a0, $s0, 3
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a7, 1
	.p2align	4, , 16
.LBB1_20:                               # %.preheader2448.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_21 Depth 3
                                        #         Child Loop BB1_22 Depth 4
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_21:                               # %.preheader2444.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_22 Depth 4
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_22:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t6, $vr4, 1
	sub.d	$t1, $t6, $a4
	vpickve2gr.d	$t5, $vr1, 1
	sub.d	$t4, $t5, $s4
	sub.d	$t7, $t4, $s3
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t3, $t2, 3
	fldx.d	$fa5, $s1, $t3
	slli.d	$t2, $t1, 3
	fldx.d	$fa6, $s7, $t2
	slli.d	$t1, $t7, 3
	fldx.d	$fa7, $s0, $t1
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	vpickve2gr.d	$t1, $vr4, 0
	slli.d	$t1, $t1, 3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	fstx.d	$fa5, $a0, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $fp, $t2
	alsl.d	$t7, $t4, $s0, 3
	fld.d	$fa7, $t7, -8
	fmul.d	$fa5, $fa5, $fa6
	move	$a0, $a6
	move	$a6, $fp
	move	$fp, $a3
	move	$a3, $s8
	move	$s8, $t8
	slli.d	$t8, $t4, 3
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $a1, $t1
	slli.d	$t4, $t6, 3
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $a3, $t2
	fldx.d	$fa7, $s0, $t8
	fldx.d	$ft0, $s2, $t4
	fldx.d	$ft1, $s2, $t2
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa6, $ft0, $fa7, $fa6
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	fstx.d	$fa5, $a1, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $a7, $t2
	fld.d	$fa7, $t7, 8
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	fstx.d	$fa5, $a1, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $a5, $t2
	fldx.d	$fa7, $s8, $t8
	move	$t8, $s8
	move	$s8, $a3
	move	$a3, $fp
	move	$fp, $a6
	move	$a6, $a0
	add.d	$t6, $t6, $a4
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	fstx.d	$fa5, $a0, $t1
	sub.d	$t7, $t5, $s3
	fldx.d	$fa5, $s7, $t4
	fldx.d	$fa6, $s1, $t3
	fldx.d	$fa7, $s7, $t2
	slli.d	$t7, $t7, 3
	fldx.d	$ft0, $s5, $t7
	fldx.d	$ft1, $s6, $t3
	slli.d	$t6, $t6, 3
	fldx.d	$ft2, $s7, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmul.d	$fa6, $ft1, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	fstx.d	$fa5, $a0, $t1
	fldx.d	$fa5, $fp, $t4
	fldx.d	$fa6, $s1, $t3
	fldx.d	$fa7, $fp, $t2
	slli.d	$t5, $t5, 3
	addi.d	$t7, $t5, -8
	fldx.d	$ft0, $s5, $t7
	fldx.d	$ft1, $s6, $t3
	fldx.d	$ft2, $fp, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmul.d	$fa6, $ft1, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	fstx.d	$fa5, $a6, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $s6, $t3
	fldx.d	$fa7, $s5, $t5
	fldx.d	$ft0, $s0, $t5
	fldx.d	$ft1, $s8, $t2
	fldx.d	$ft2, $a2, $t2
	fldx.d	$ft3, $s8, $t6
	fldx.d	$ft4, $s2, $t6
	fldx.d	$ft5, $s8, $t4
	fldx.d	$ft6, $s2, $t4
	fldx.d	$ft7, $a2, $t4
	fmul.d	$ft1, $fa5, $ft1
	fmadd.d	$ft1, $ft1, $fa7, $ft5
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft1, $ft3, $ft0, $ft1
	fmadd.d	$fa5, $fa5, $ft2, $ft1
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft6, $fa7, $fa5
	fmadd.d	$fa5, $ft7, $ft0, $fa5
	fstx.d	$fa5, $a3, $t1
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB1_22
# %bb.23:                               # %._crit_edge.us.us.us.us.us.us2641
                                        #   in Loop: Header=BB1_21 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_21
# %bb.24:                               # %._crit_edge2595.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_20
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	blez	$a3, .LBB1_2
# %bb.26:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	blez	$a3, .LBB1_2
# %bb.27:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	blez	$a3, .LBB1_2
# %bb.28:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	blez	$a3, .LBB1_2
# %bb.29:                               # %.preheader2449.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a4, $a6, 4
	move	$t0, $zero
	vpickve2gr.w	$a5, $vr4, 3
	mul.d	$a4, $a4, $a5
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	mul.d	$a5, $a3, $a4
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a6, $a6, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a4, 3
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a4, $a3, $a7
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a4, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a6, 1
	vshuf4i.w	$vr6, $vr7, 64
	vsub.w	$vr3, $vr3, $vr6
	vmul.w	$vr5, $vr5, $vr6
	vmul.w	$vr3, $vr3, $vr4
	vinsgr2vr.w	$vr4, $a5, 3
	vsub.w	$vr4, $vr5, $vr4
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a3, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a6, $a3, 0
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t8, $a3, $s0, 3
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a7, 1
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_30:                               # %.preheader2449.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_31 Depth 3
                                        #         Child Loop BB1_32 Depth 4
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	move	$a5, $zero
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_31:                               # %.preheader2445.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_32 Depth 4
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_32:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        #       Parent Loop BB1_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t6, $vr4, 1
	sub.d	$t1, $t6, $a0
	vpickve2gr.d	$t5, $vr1, 1
	sub.d	$t7, $t5, $a6
	sub.d	$t3, $t7, $a7
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t4, $t2, 3
	fldx.d	$fa5, $s1, $t4
	slli.d	$t2, $t1, 3
	fldx.d	$fa6, $a4, $t2
	slli.d	$t1, $t3, 3
	fldx.d	$fa7, $s0, $t1
	fldx.d	$ft0, $s3, $t2
	slli.d	$t3, $t6, 3
	fldx.d	$ft1, $s3, $t3
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $ft0
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa7, $fa5
	vpickve2gr.d	$t1, $vr4, 0
	slli.d	$t1, $t1, 3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	fstx.d	$fa5, $a0, $t1
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $s7, $t2
	fmul.d	$fa6, $fa5, $fa6
	move	$a3, $t8
	alsl.d	$t8, $t7, $s0, 3
	fldx.d	$fa7, $a1, $t2
	fld.d	$ft0, $t8, -8
	fldx.d	$ft1, $a1, $t3
	slli.d	$t7, $t7, 3
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $a0, $t1
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $fp, $t2
	fldx.d	$fa7, $s0, $t7
	fldx.d	$ft0, $s2, $t3
	fldx.d	$ft1, $s2, $t2
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa6, $ft0, $fa7, $fa6
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	fstx.d	$fa5, $a0, $t1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	fld.d	$fa5, $t8, 8
	move	$t8, $a3
	fldx.d	$fa6, $s1, $t4
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	fldx.d	$fa7, $a3, $t2
	fldx.d	$ft0, $s8, $t2
	add.d	$t6, $t6, $a0
	fldx.d	$ft1, $s8, $t3
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $fa5, $fa6
	fmadd.d	$fa5, $ft1, $fa5, $fa6
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t1
	fldx.d	$fa5, $s1, $t4
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	fldx.d	$fa6, $a3, $t2
	fldx.d	$fa7, $s4, $t2
	fldx.d	$ft0, $t8, $t7
	fldx.d	$ft1, $s4, $t3
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t1
	sub.d	$t7, $t5, $a7
	fldx.d	$fa5, $a4, $t3
	fldx.d	$fa6, $s1, $t4
	fldx.d	$fa7, $a4, $t2
	slli.d	$t7, $t7, 3
	fldx.d	$ft0, $s5, $t7
	fldx.d	$ft1, $s6, $t4
	slli.d	$t6, $t6, 3
	fldx.d	$ft2, $a4, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $s3, $t3
	fldx.d	$ft2, $a2, $t3
	fldx.d	$ft4, $a2, $t2
	fldx.d	$ft5, $s3, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t1
	fldx.d	$fa5, $s7, $t3
	fldx.d	$fa6, $s1, $t4
	fldx.d	$fa7, $s7, $t2
	slli.d	$t5, $t5, 3
	addi.d	$t7, $t5, -8
	fldx.d	$ft0, $s5, $t7
	fldx.d	$ft1, $s6, $t4
	fldx.d	$ft2, $s7, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $a1, $t3
	fldx.d	$ft2, $ra, $t3
	fldx.d	$ft4, $ra, $t2
	fldx.d	$ft5, $a1, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t1
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $s6, $t4
	fldx.d	$fa7, $s5, $t5
	fldx.d	$ft0, $s0, $t5
	fldx.d	$ft1, $fp, $t2
	fldx.d	$ft2, $a5, $t2
	fldx.d	$ft3, $fp, $t6
	fldx.d	$ft4, $s2, $t6
	fldx.d	$ft5, $fp, $t3
	fldx.d	$ft6, $s2, $t3
	fldx.d	$ft7, $a5, $t3
	fmul.d	$ft1, $fa5, $ft1
	fmadd.d	$ft1, $ft1, $fa7, $ft5
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft1, $ft3, $ft0, $ft1
	fmadd.d	$fa5, $fa5, $ft2, $ft1
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft6, $fa7, $fa5
	fmadd.d	$fa5, $ft7, $ft0, $fa5
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t1
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB1_32
# %bb.33:                               # %._crit_edge.us.us.us.us.us.us2580
                                        #   in Loop: Header=BB1_31 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	bne	$a5, $a3, .LBB1_31
# %bb.34:                               # %._crit_edge2534.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_30 Depth=2
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	bne	$t0, $a3, .LBB1_30
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=1
	vld	$vr16, $sp, 16                  # 16-byte Folded Reload
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	blez	$a3, .LBB1_2
# %bb.36:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.37:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.38:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.39:                               # %.preheader2450.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a4, $a6, 4
	move	$a1, $zero
	vpickve2gr.w	$a5, $vr4, 3
	mul.d	$a4, $a4, $a5
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	mul.d	$a5, $a0, $a4
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a6, $a6, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a4, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a4, $a0, $a7
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a4, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a6, 1
	vshuf4i.w	$vr6, $vr7, 64
	vsub.w	$vr3, $vr3, $vr6
	vmul.w	$vr5, $vr5, $vr6
	vmul.w	$vr3, $vr3, $vr4
	vinsgr2vr.w	$vr4, $a5, 3
	vsub.w	$vr4, $vr5, $vr4
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a6, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$s5, $a0, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a7, 1
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_40:                               # %.preheader2450.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_42 Depth 4
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_41:                               # %.preheader2446.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_42 Depth 4
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t6, $vr4, 1
	sub.d	$t1, $t6, $a6
	vpickve2gr.d	$t5, $vr1, 1
	sub.d	$t7, $t5, $s5
	sub.d	$t4, $t7, $a4
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t3, $t2, 3
	fldx.d	$fa5, $s1, $t3
	slli.d	$t2, $t1, 3
	fldx.d	$fa6, $a2, $t2
	alsl.d	$t8, $t4, $s0, 3
	fld.d	$fa7, $t8, -8
	fmul.d	$fa5, $fa5, $fa6
	slli.d	$t4, $t4, 3
	fmul.d	$fa5, $fa5, $fa7
	vpickve2gr.d	$t1, $vr4, 0
	slli.d	$t1, $t1, 3
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $s7, $t2
	fldx.d	$fa7, $s0, $t4
	fldx.d	$ft0, $s3, $t2
	slli.d	$t4, $t6, 3
	fldx.d	$ft1, $s3, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $ft0
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa7, $fa5
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $a3, $t2
	fld.d	$fa7, $t8, 8
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $fp, $t2
	fmul.d	$fa6, $fa5, $fa6
	alsl.d	$t8, $t7, $s0, 3
	fldx.d	$fa7, $a7, $t2
	fld.d	$ft0, $t8, -8
	fldx.d	$ft1, $a7, $t4
	slli.d	$ra, $t7, 3
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $s8, $t2
	fldx.d	$fa7, $s0, $ra
	fldx.d	$ft0, $s2, $t4
	fldx.d	$ft1, $s2, $t2
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa6, $ft0, $fa7, $fa6
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	ld.d	$a5, $sp, 496                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	fldx.d	$fa6, $a5, $t2
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	fldx.d	$fa7, $a5, $t2
	fld.d	$ft0, $t8, 8
	fldx.d	$ft1, $a5, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	ld.d	$t8, $sp, 384                   # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $t2
	alsl.d	$t7, $t7, $a0, 3
	fld.d	$fa7, $t7, -8
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	fldx.d	$fa6, $a5, $t2
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	fldx.d	$fa7, $a5, $t2
	fldx.d	$ft0, $a0, $ra
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	fldx.d	$ft1, $a5, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	fldx.d	$fa6, $a5, $t2
	fld.d	$fa7, $t7, 8
	add.d	$t6, $t6, $a6
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	sub.d	$t7, $t5, $a4
	fldx.d	$fa5, $a2, $t4
	fldx.d	$fa6, $s1, $t3
	fldx.d	$fa7, $a2, $t2
	slli.d	$t7, $t7, 3
	addi.d	$t8, $t7, -8
	fldx.d	$ft0, $s6, $t8
	fldx.d	$ft1, $s4, $t3
	slli.d	$t6, $t6, 3
	fldx.d	$ft2, $a2, $t6
	fldx.d	$ft3, $s0, $t8
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmul.d	$fa6, $ft1, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	ld.d	$t8, $sp, 416                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t1
	fldx.d	$fa5, $s7, $t4
	fldx.d	$fa6, $s1, $t3
	fldx.d	$fa7, $s7, $t2
	fldx.d	$ft0, $s6, $t7
	fldx.d	$ft1, $s4, $t3
	fldx.d	$ft2, $s7, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $s3, $t4
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	fldx.d	$ft2, $t8, $t4
	fldx.d	$ft4, $t8, $t2
	fldx.d	$ft5, $s3, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $a3, $t4
	fldx.d	$fa6, $s1, $t3
	fldx.d	$fa7, $a3, $t2
	addi.d	$t7, $t7, 8
	fldx.d	$ft0, $s6, $t7
	fldx.d	$ft1, $s4, $t3
	fldx.d	$ft2, $a3, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmul.d	$fa6, $ft1, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	ld.d	$t7, $sp, 408                   # 8-byte Folded Reload
	fstx.d	$fa5, $t7, $t1
	fldx.d	$fa5, $fp, $t4
	fldx.d	$fa6, $s1, $t3
	fldx.d	$fa7, $fp, $t2
	slli.d	$t5, $t5, 3
	addi.d	$t7, $t5, -8
	fldx.d	$ft0, $s6, $t7
	fldx.d	$ft1, $s4, $t3
	fldx.d	$ft2, $fp, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $a7, $t4
	fldx.d	$ft2, $ra, $t4
	fldx.d	$ft4, $ra, $t2
	fldx.d	$ft5, $a7, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	fldx.d	$fa5, $s1, $t3
	fldx.d	$fa6, $s4, $t3
	fldx.d	$fa7, $s6, $t5
	fldx.d	$ft0, $s0, $t5
	fldx.d	$ft1, $s8, $t2
	fldx.d	$ft2, $a1, $t2
	fldx.d	$ft3, $s8, $t6
	fldx.d	$ft4, $s2, $t6
	fldx.d	$ft5, $s8, $t4
	fldx.d	$ft6, $s2, $t4
	fldx.d	$ft7, $a1, $t4
	fmul.d	$ft1, $fa5, $ft1
	fmadd.d	$ft1, $ft1, $fa7, $ft5
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft1, $ft3, $ft0, $ft1
	fmadd.d	$fa5, $fa5, $ft2, $ft1
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft6, $fa7, $fa5
	fmadd.d	$fa5, $ft7, $ft0, $fa5
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	fstx.d	$fa5, $a5, $t1
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB1_42
# %bb.43:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_41 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_41
# %bb.44:                               # %._crit_edge2477.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_40 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_40
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_45:                               #   in Loop: Header=BB1_3 Depth=1
	blez	$a3, .LBB1_2
# %bb.46:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.47:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.48:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB1_2
# %bb.49:                               # %.preheader2447.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a4, $a6, 4
	move	$a1, $zero
	vpickve2gr.w	$a5, $vr4, 3
	mul.d	$a4, $a4, $a5
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	mul.d	$a5, $a0, $a4
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a6, $a6, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a4, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a4, $a0, $a7
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a4, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a6, 1
	vshuf4i.w	$vr7, $vr7, 64
	vsub.w	$vr3, $vr3, $vr7
	vmul.w	$vr5, $vr5, $vr7
	vinsgr2vr.w	$vr6, $a5, 3
	vmul.w	$vr3, $vr3, $vr4
	vsub.w	$vr4, $vr5, $vr6
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$t1, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$t3, $a0, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a7, 1
	.p2align	4, , 16
.LBB1_50:                               # %.preheader2447.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_51 Depth 3
                                        #         Child Loop BB1_52 Depth 4
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_51:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_52 Depth 4
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_52:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t6, $vr4, 1
	move	$a0, $t1
	sub.d	$t1, $t6, $t1
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t4, $t2, 3
	fldx.d	$fa5, $s1, $t4
	slli.d	$t1, $t1, 3
	fldx.d	$fa6, $a2, $t1
	vpickve2gr.d	$t5, $vr1, 1
	sub.d	$t7, $t5, $t3
	move	$s4, $s6
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	sub.d	$t2, $t7, $s6
	fmul.d	$fa6, $fa5, $fa6
	alsl.d	$t8, $t2, $s0, 3
	fld.d	$fa7, $t8, -8
	fldx.d	$ft0, $s3, $t1
	move	$a1, $t3
	slli.d	$t3, $t6, 3
	fldx.d	$ft1, $s3, $t3
	slli.d	$ra, $t2, 3
	fmul.d	$fa5, $fa5, $ft0
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa7, $fa5
	vpickve2gr.d	$t2, $vr4, 0
	slli.d	$t2, $t2, 3
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $s7, $t1
	fldx.d	$fa7, $a4, $t1
	fldx.d	$ft0, $s0, $ra
	fldx.d	$ft1, $a4, $t3
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $a7, $t1
	fldx.d	$fa7, $a6, $t1
	fld.d	$ft0, $t8, 8
	fldx.d	$ft1, $a6, $t3
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $fp, $t1
	fmul.d	$fa6, $fa5, $fa6
	alsl.d	$t8, $t7, $s0, 3
	fldx.d	$fa7, $a5, $t1
	fld.d	$ft0, $t8, -8
	fldx.d	$ft1, $a5, $t3
	slli.d	$ra, $t7, 3
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $s8, $t1
	fldx.d	$fa7, $s0, $ra
	fldx.d	$ft0, $s2, $t3
	fldx.d	$ft1, $s2, $t1
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa6, $ft0, $fa7, $fa6
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fld.d	$fa5, $t8, 8
	fldx.d	$fa6, $s1, $t4
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	fldx.d	$fa7, $a3, $t1
	ld.d	$t8, $sp, 360                   # 8-byte Folded Reload
	fldx.d	$ft0, $t8, $t1
	add.d	$t6, $t6, $a0
	fldx.d	$ft1, $t8, $t3
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $fa5, $fa6
	fmadd.d	$fa5, $ft1, $fa5, $fa6
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	ld.d	$t8, $sp, 384                   # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $t1
	ld.d	$t8, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$t7, $t7, $t8, 3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	fldx.d	$fa7, $a3, $t1
	fld.d	$ft0, $t7, -8
	fldx.d	$ft1, $a3, $t3
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	fldx.d	$fa6, $a3, $t1
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	fldx.d	$fa7, $a3, $t1
	fldx.d	$ft0, $t8, $ra
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	fldx.d	$ft1, $a3, $t3
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	fldx.d	$fa6, $a3, $t1
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	fldx.d	$fa7, $a3, $t1
	fld.d	$ft0, $t7, 8
	fldx.d	$ft1, $a3, $t3
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	sub.d	$t7, $t5, $s6
	move	$s6, $s4
	fldx.d	$fa5, $a2, $t3
	fldx.d	$fa6, $s1, $t4
	fldx.d	$fa7, $a2, $t1
	slli.d	$t7, $t7, 3
	addi.d	$t8, $t7, -8
	fldx.d	$ft0, $s5, $t8
	fldx.d	$ft1, $s4, $t4
	slli.d	$t6, $t6, 3
	fldx.d	$ft2, $a2, $t6
	fldx.d	$ft3, $s0, $t8
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $s3, $t3
	ld.d	$t8, $sp, 312                   # 8-byte Folded Reload
	fldx.d	$ft2, $t8, $t3
	fldx.d	$ft4, $t8, $t1
	fldx.d	$ft5, $s3, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$t8, $sp, 416                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	fldx.d	$fa5, $s7, $t3
	fldx.d	$fa6, $s1, $t4
	fldx.d	$fa7, $s7, $t1
	fldx.d	$ft0, $s5, $t7
	fldx.d	$ft1, $s4, $t4
	fldx.d	$ft2, $s7, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $a4, $t3
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	fldx.d	$ft2, $t8, $t3
	fldx.d	$ft4, $t8, $t1
	fldx.d	$ft5, $a4, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $a7, $t3
	fldx.d	$fa6, $s1, $t4
	fldx.d	$fa7, $a7, $t1
	addi.d	$t7, $t7, 8
	fldx.d	$ft0, $s5, $t7
	fldx.d	$ft1, $s4, $t4
	fldx.d	$ft2, $a7, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $a6, $t3
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	fldx.d	$ft2, $t7, $t3
	fldx.d	$ft4, $t7, $t1
	fldx.d	$ft5, $a6, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$t7, $sp, 408                   # 8-byte Folded Reload
	fstx.d	$fa5, $t7, $t2
	fldx.d	$fa5, $fp, $t3
	fldx.d	$fa6, $s1, $t4
	fldx.d	$fa7, $fp, $t1
	slli.d	$t5, $t5, 3
	addi.d	$t7, $t5, -8
	fldx.d	$ft0, $s5, $t7
	fldx.d	$ft1, $s4, $t4
	fldx.d	$ft2, $fp, $t6
	fldx.d	$ft3, $s0, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $a5, $t3
	fldx.d	$ft2, $ra, $t3
	fldx.d	$ft4, $ra, $t1
	fldx.d	$ft5, $a5, $t6
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	fstx.d	$fa5, $a3, $t2
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $s4, $t4
	fldx.d	$fa7, $s5, $t5
	fldx.d	$ft0, $s0, $t5
	fldx.d	$ft1, $s8, $t1
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	fldx.d	$ft2, $a3, $t1
	move	$t1, $a0
	fldx.d	$ft3, $s8, $t6
	fldx.d	$ft4, $s2, $t6
	fldx.d	$ft5, $s8, $t3
	fldx.d	$ft6, $s2, $t3
	fldx.d	$ft7, $a3, $t3
	move	$t3, $a1
	fmul.d	$ft1, $fa5, $ft1
	fmadd.d	$ft1, $ft1, $fa7, $ft5
	fmul.d	$ft3, $fa6, $ft3
	fmadd.d	$ft1, $ft3, $ft0, $ft1
	fmadd.d	$fa5, $fa5, $ft2, $ft1
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft6, $fa7, $fa5
	fmadd.d	$fa5, $ft7, $ft0, $fa5
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	fstx.d	$fa5, $a0, $t2
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB1_52
# %bb.53:                               # %._crit_edge.us.us.us.us.us.us2702
                                        #   in Loop: Header=BB1_51 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_51
# %bb.54:                               # %._crit_edge2656.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_50 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_50
	b	.LBB1_2
.LBB1_55:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_10
.LBB1_56:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.Lfunc_end1:
	.size	hypre_SMG3BuildRAPSym, .Lfunc_end1-hypre_SMG3BuildRAPSym
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMG3BuildRAPNoSym
.LCPI2_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
.LCPI2_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI2_2:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
.LCPI2_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI2_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI2_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI2_6:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI2_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
	.text
	.globl	hypre_SMG3BuildRAPNoSym
	.p2align	5
	.type	hypre_SMG3BuildRAPNoSym,@function
hypre_SMG3BuildRAPNoSym:                # @hypre_SMG3BuildRAPNoSym
# %bb.0:
	addi.d	$sp, $sp, -624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a6, .LBB2_58
# %bb.1:                                # %.preheader2330.lr.ph
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $fp, 8
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	vrepli.d	$vr16, 1
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
                                        # implicit-def: $r12
                                        # implicit-def: $r17
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	vst	$vr16, $sp, 16                  # 16-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit2326
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ori	$s2, $zero, 1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	bge	$a4, $a0, .LBB2_58
.LBB2_3:                                # %.preheader2330
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_52 Depth 2
                                        #       Child Loop BB2_53 Depth 3
                                        #         Child Loop BB2_54 Depth 4
                                        #     Child Loop BB2_22 Depth 2
                                        #       Child Loop BB2_23 Depth 3
                                        #         Child Loop BB2_24 Depth 4
                                        #     Child Loop BB2_32 Depth 2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_34 Depth 4
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_43 Depth 3
                                        #         Child Loop BB2_44 Depth 4
	st.d	$t5, $sp, 328                   # 8-byte Folded Spill
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s5, $a5, -1
	slli.d	$a1, $a5, 4
	alsl.d	$a2, $a5, $a1, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	addi.d	$a3, $a5, -1
	addi.d	$s1, $a2, -24
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s5, $s5, 1
	addi.d	$s1, $s1, 24
	addi.d	$a1, $a1, 4
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 512
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 40
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $s3, 40
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$zero, $sp, 524
	st.w	$s2, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$s7, $zero, -1
	st.d	$zero, $sp, 524
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	lu32i.d	$s7, 0
	st.w	$s7, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$zero, $sp, 524
	st.w	$s2, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$zero, $sp, 524
	st.w	$s7, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$zero, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$s7, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
	move	$s2, $a0
	ori	$s7, $zero, 0
	lu32i.d	$s7, -1
	st.d	$s7, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ori	$s3, $zero, 0
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $sp, 524
	st.w	$s8, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$s8, $s5
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	st.d	$s7, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $sp, 524
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$s5, $s8
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 524
	st.w	$a0, $sp, 532
	ori	$s8, $zero, 1
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 524
	st.w	$s8, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 524
	st.w	$s8, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 524
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	st.w	$s7, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s3, $sp, 524
	st.w	$s7, $sp, 532
	move	$s8, $s5
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	st.d	$s3, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$s7, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s3
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$a0, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 20
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	bltu	$s7, $a0, .LBB2_57
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s3, $sp, 524
	ori	$s5, $zero, 1
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 524
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 424                   # 8-byte Folded Reload
	st.d	$s1, $sp, 524
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$s7, $zero, 1
	lu32i.d	$s7, 1
	st.d	$s7, $sp, 524
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 524
	move	$s1, $s8
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	st.w	$s8, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 524
	st.w	$s8, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	move	$s1, $s3
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 320                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	st.d	$zero, $sp, 320                 # 8-byte Folded Spill
.LBB2_11:                               # %.thread2248
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
.LBB2_12:                               # %.thread2248
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	st.d	$s5, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$zero, $sp, 524
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 524
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 524
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 524
	st.w	$s5, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 524
	ori	$s3, $zero, 1
	st.w	$s3, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s7, $s1
	lu32i.d	$s7, 1
	st.d	$s7, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	lu32i.d	$s8, 1
	st.d	$s8, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s1, $sp, 524
	st.w	$s3, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 524
	st.w	$s3, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s7, $sp, 524
	st.w	$s3, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 524
	st.w	$s3, $sp, 532
	addi.d	$a2, $sp, 524
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
.LBB2_14:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 524
	st.w	$s3, $sp, 532
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ori	$a6, $zero, 1
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	add.d	$s7, $s3, $s5
	ld.w	$a0, $s7, 16
	ld.w	$a1, $s7, 4
	sub.w	$a0, $a0, $a1
	slt	$a1, $s1, $a0
	maskeqz	$a0, $a0, $a1
	ld.w	$a2, $s7, 12
	ldx.w	$a3, $s3, $s5
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s1, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s1, $a2
	move	$a5, $s1
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	add.d	$s8, $s1, $s5
	ld.w	$a3, $s8, 16
	ld.w	$a4, $s8, 4
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $a5, $a0
	ld.w	$a2, $s8, 12
	ldx.w	$a3, $s1, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $a5, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a5, $a2
	or	$a1, $a1, $a2
	st.d	$a6, $sp, 528
	ld.w	$a2, $s8, 12
	ldx.w	$a3, $s1, $s5
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $a5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$a6, $sp, 524
	st.w	$zero, $sp, 532
	addi.d	$a1, $sp, 496
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a4, $fp, 8
	ld.w	$a0, $s8, 16
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $t0, $s5
	ld.w	$a1, $a1, 16
	ld.w	$a5, $sp, 520
	ld.d	$a6, $fp, 0
	ld.w	$a2, $s7, 16
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a3, $s7, 16
	ld.d	$a7, $sp, 512
	vinsgr2vr.d	$vr0, $a6, 0
	vldx	$vr2, $s1, $s5
	vldx	$vr5, $t0, $s5
	vinsgr2vr.d	$vr3, $a7, 0
	vldx	$vr4, $s3, $s5
	pcalau12i	$a6, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a6, %pc_lo12(.LCPI2_0)
	vld	$vr6, $s7, 0
	pcalau12i	$a6, %pc_hi20(.LCPI2_1)
	vld	$vr7, $a6, %pc_lo12(.LCPI2_1)
	vshuf.w	$vr1, $vr3, $vr0
	vpackev.w	$vr8, $vr2, $vr5
	vpackev.d	$vr8, $vr6, $vr8
	vshuf.w	$vr7, $vr4, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI2_2)
	vld	$vr8, $a6, %pc_lo12(.LCPI2_2)
	pcalau12i	$a6, %pc_hi20(.LCPI2_3)
	vld	$vr9, $a6, %pc_lo12(.LCPI2_3)
	pcalau12i	$a6, %pc_hi20(.LCPI2_4)
	vld	$vr10, $a6, %pc_lo12(.LCPI2_4)
	vshuf.w	$vr8, $vr3, $vr0
	vpackod.w	$vr0, $vr2, $vr5
	vshuf.w	$vr9, $vr6, $vr0
	vshuf.w	$vr10, $vr4, $vr9
	vsub.w	$vr8, $vr8, $vr10
	vinsgr2vr.w	$vr0, $a4, 0
	vinsgr2vr.w	$vr0, $a5, 1
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr3, $a4, %pc_lo12(.LCPI2_5)
	vshuf4i.w	$vr0, $vr0, 64
	vilvh.w	$vr9, $vr2, $vr5
	vshuf4i.d	$vr9, $vr6, 12
	vshuf.w	$vr3, $vr4, $vr9
	vsub.w	$vr0, $vr0, $vr3
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a0, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a2, 3
	vsub.w	$vr3, $vr3, $vr10
	vmaxi.w	$vr3, $vr3, -1
	vaddi.wu	$vr3, $vr3, 1
	vmadd.w	$vr8, $vr3, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr9, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr10, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a4, $a0, 0
	vsub.w	$vr1, $vr1, $vr7
	vshuf.w	$vr9, $vr2, $vr5
	vshuf.w	$vr10, $vr6, $vr9
	vori.b	$vr2, $vr0, 0
	vshuf.w	$vr2, $vr4, $vr10
	vsub.w	$vr2, $vr2, $vr7
	vmaxi.w	$vr2, $vr2, -1
	vaddi.wu	$vr4, $vr2, 1
	ld.d	$a2, $sp, 496
	ld.w	$a0, $sp, 500
	ld.w	$a1, $sp, 496
	vmadd.w	$vr1, $vr8, $vr4
	vinsgr2vr.d	$vr2, $a2, 0
	ld.w	$a2, $sp, 504
	slt	$a3, $a1, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	masknez	$a5, $a1, $a3
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	maskeqz	$a3, $a0, $a3
	or	$a3, $a3, $a5
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	maskeqz	$a5, $a2, $a5
	or	$a3, $a5, $a3
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ori	$a6, $zero, 19
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	beq	$a5, $a6, .LBB2_37
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	vld	$vr16, $sp, 16                  # 16-byte Folded Reload
	ori	$a6, $zero, 15
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	beq	$a5, $a6, .LBB2_27
# %bb.16:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a6, $zero, 7
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	bne	$a5, $a6, .LBB2_47
# %bb.17:                               #   in Loop: Header=BB2_3 Depth=1
	blez	$a3, .LBB2_2
# %bb.18:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.19:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	blez	$a1, .LBB2_2
# %bb.20:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	blez	$a1, .LBB2_2
# %bb.21:                               # %.preheader2316.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a5, $a7, 4
	move	$a2, $zero
	vpickve2gr.w	$a6, $vr4, 3
	mul.d	$a5, $a5, $a6
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a6, $a1, $a5
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a7, $a7, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a5, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	mul.d	$a5, $a1, $a4
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a5, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a7, 1
	vshuf4i.w	$vr6, $vr7, 64
	vsub.w	$vr3, $vr3, $vr6
	vmul.w	$vr5, $vr5, $vr6
	vmul.w	$vr3, $vr3, $vr4
	vinsgr2vr.w	$vr4, $a6, 3
	vsub.w	$vr4, $vr5, $vr4
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a5, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a7, $a0, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$fp, $a1, $s4, 3
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a4, 1
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_22:                               # %.preheader2316.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_23 Depth 3
                                        #         Child Loop BB2_24 Depth 4
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $zero
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_23:                               # %.preheader2312.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_24 Depth 4
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_24:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_22 Depth=2
                                        #       Parent Loop BB2_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a6, $t1
	vpickve2gr.d	$t1, $vr1, 1
	vpickve2gr.d	$t5, $vr4, 1
	add.d	$t2, $t5, $a5
	add.d	$t6, $t1, $a7
	vpickve2gr.d	$t3, $vr1, 0
	slli.d	$t4, $t3, 3
	fldx.d	$fa5, $s6, $t4
	slli.d	$t2, $t2, 3
	fldx.d	$fa6, $s0, $t2
	slli.d	$t7, $t6, 3
	fldx.d	$fa7, $fp, $t7
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	vpickve2gr.d	$t3, $vr4, 0
	slli.d	$t3, $t3, 3
	fstx.d	$fa5, $a3, $t3
	fldx.d	$fa5, $s6, $t4
	fldx.d	$fa6, $s2, $t2
	alsl.d	$t8, $t6, $s4, 3
	fld.d	$fa7, $t8, 8
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fstx.d	$fa5, $s7, $t3
	fldx.d	$fa5, $s4, $t7
	fldx.d	$fa6, $s6, $t4
	fldx.d	$fa7, $a0, $t2
	slli.d	$t7, $t5, 3
	fldx.d	$ft0, $a1, $t7
	fldx.d	$ft1, $a1, $t2
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa7, $fa5, $fa7
	fmadd.d	$fa5, $ft0, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft1, $fa5
	fstx.d	$fa5, $s3, $t3
	fldx.d	$fa5, $s6, $t4
	fldx.d	$fa6, $a2, $t2
	fld.d	$fa7, $t8, -8
	ld.d	$t8, $sp, 360                   # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fstx.d	$fa5, $s1, $t3
	sub.d	$t6, $t6, $a4
	fldx.d	$fa5, $s6, $t4
	fldx.d	$fa6, $ra, $t2
	slli.d	$t6, $t6, 3
	fldx.d	$fa7, $s4, $t6
	sub.d	$t5, $t5, $a5
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fstx.d	$fa5, $s8, $t3
	add.d	$t6, $t1, $a4
	fldx.d	$fa5, $s0, $t7
	fldx.d	$fa6, $t8, $t4
	slli.d	$t5, $t5, 3
	fldx.d	$fa7, $s0, $t5
	slli.d	$t6, $t6, 3
	fldx.d	$ft0, $s4, $t6
	fldx.d	$ft1, $s6, $t4
	fldx.d	$ft2, $s0, $t2
	fldx.d	$ft3, $s5, $t6
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmul.d	$fa6, $ft1, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	ld.d	$t6, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $t6, $t3
	fldx.d	$fa5, $s2, $t7
	fldx.d	$fa6, $s2, $t5
	fldx.d	$fa7, $t8, $t4
	fldx.d	$ft0, $s6, $t4
	slli.d	$t1, $t1, 3
	addi.d	$t1, $t1, 8
	fldx.d	$ft1, $s4, $t1
	fldx.d	$ft2, $s2, $t2
	fldx.d	$ft3, $s5, $t1
	move	$t1, $a6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa5, $fa6, $ft1, $fa5
	fmul.d	$fa6, $ft0, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	fstx.d	$fa5, $a6, $t3
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB2_24
# %bb.25:                               # %._crit_edge.us.us.us.us.us.us2509
                                        #   in Loop: Header=BB2_23 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	bne	$a0, $a3, .LBB2_23
# %bb.26:                               # %._crit_edge2463.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_22 Depth=2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB2_22
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	blez	$a3, .LBB2_2
# %bb.28:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.29:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.30:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.31:                               # %.preheader2317.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a5, $a7, 4
	move	$a2, $zero
	vpickve2gr.w	$a6, $vr4, 3
	mul.d	$a5, $a5, $a6
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a6, $a0, $a5
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a7, $a7, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a5, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	mul.d	$a5, $a0, $a4
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a5, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a7, 1
	vshuf4i.w	$vr6, $vr7, 64
	vsub.w	$vr3, $vr3, $vr6
	vmul.w	$vr5, $vr5, $vr6
	vmul.w	$vr3, $vr3, $vr4
	vinsgr2vr.w	$vr4, $a6, 3
	vsub.w	$vr4, $vr5, $vr4
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a5, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$s7, $a0, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s8, $a0, $s4, 3
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a4, 1
	.p2align	4, , 16
.LBB2_32:                               # %.preheader2317.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_34 Depth 4
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	move	$a3, $zero
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 312                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_33:                               # %.preheader2313.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_34 Depth 4
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_34:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_32 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t3, $vr1, 1
	vpickve2gr.d	$t7, $vr4, 1
	add.d	$t1, $t7, $a5
	add.d	$t6, $t3, $s7
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t5, $t2, 3
	fldx.d	$fa5, $s6, $t5
	slli.d	$t1, $t1, 3
	fldx.d	$fa6, $s0, $t1
	slli.d	$t8, $t6, 3
	fldx.d	$fa7, $s8, $t8
	fldx.d	$ft0, $a4, $t1
	slli.d	$t4, $t7, 3
	fldx.d	$ft1, $a4, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $ft0
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa7, $fa5
	vpickve2gr.d	$t2, $vr4, 0
	slli.d	$t2, $t2, 3
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	fstx.d	$fa5, $a6, $t2
	fldx.d	$fa5, $s6, $t5
	fldx.d	$fa6, $s2, $t1
	alsl.d	$ra, $t6, $s4, 3
	fldx.d	$fa7, $a7, $t1
	fld.d	$ft0, $ra, 8
	fldx.d	$ft1, $a7, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	fstx.d	$fa5, $a6, $t2
	fldx.d	$fa5, $s6, $t5
	fldx.d	$fa6, $s1, $t1
	fldx.d	$fa7, $s4, $t8
	fldx.d	$ft0, $a3, $t4
	fldx.d	$ft1, $a3, $t1
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa6, $ft0, $fa7, $fa6
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	fld.d	$fa5, $ra, -8
	fldx.d	$fa6, $s6, $t5
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $t1
	fldx.d	$ft0, $a2, $t1
	sub.d	$t7, $t7, $a5
	fldx.d	$ft1, $a2, $t4
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $fa5, $fa6
	fmadd.d	$fa5, $ft1, $fa5, $fa6
	ld.d	$t8, $sp, 456                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	sub.d	$t6, $t6, $s3
	fldx.d	$fa5, $s6, $t5
	ld.d	$t8, $sp, 472                   # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $t1
	ld.d	$t8, $sp, 360                   # 8-byte Folded Reload
	slli.d	$t6, $t6, 3
	fldx.d	$fa7, $a0, $t1
	fldx.d	$ft0, $s4, $t6
	fldx.d	$ft1, $a0, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	fstx.d	$fa5, $a6, $t2
	add.d	$t6, $t3, $s3
	fldx.d	$fa5, $s0, $t4
	fldx.d	$fa6, $t8, $t5
	slli.d	$t7, $t7, 3
	fldx.d	$fa7, $s0, $t7
	slli.d	$t6, $t6, 3
	fldx.d	$ft0, $s4, $t6
	fldx.d	$ft1, $s6, $t5
	fldx.d	$ft2, $s0, $t1
	fldx.d	$ft3, $s5, $t6
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $fp, $t4
	fldx.d	$ft2, $a4, $t4
	fldx.d	$ft4, $a4, $t7
	fldx.d	$ft5, $fp, $t1
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$t6, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $t6, $t2
	fldx.d	$fa5, $t8, $t5
	fldx.d	$fa6, $s6, $t5
	slli.d	$t3, $t3, 3
	addi.d	$t3, $t3, 8
	fldx.d	$fa7, $s4, $t3
	fldx.d	$ft0, $s5, $t3
	fldx.d	$ft1, $s2, $t4
	fldx.d	$ft2, $a1, $t4
	fldx.d	$ft3, $a7, $t4
	fldx.d	$ft4, $s2, $t7
	fldx.d	$ft5, $a7, $t7
	fldx.d	$ft6, $s2, $t1
	fldx.d	$ft7, $a1, $t1
	fmul.d	$ft4, $fa5, $ft4
	fmadd.d	$ft1, $ft4, $fa7, $ft1
	fmul.d	$ft4, $fa6, $ft6
	fmadd.d	$ft1, $ft4, $ft0, $ft1
	fmadd.d	$fa7, $ft2, $fa7, $ft1
	fmadd.d	$fa7, $ft3, $ft0, $fa7
	fmadd.d	$fa5, $fa5, $ft5, $fa7
	fmadd.d	$fa5, $fa6, $ft7, $fa5
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	fstx.d	$fa5, $t1, $t2
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB2_34
# %bb.35:                               # %._crit_edge.us.us.us.us.us.us2448
                                        #   in Loop: Header=BB2_33 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bne	$a3, $a2, .LBB2_33
# %bb.36:                               # %._crit_edge2402.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_32 Depth=2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB2_32
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_37:                               #   in Loop: Header=BB2_3 Depth=1
	vld	$vr16, $sp, 16                  # 16-byte Folded Reload
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	blez	$a3, .LBB2_2
# %bb.38:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.39:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.40:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	blez	$a0, .LBB2_2
# %bb.41:                               # %.preheader2318.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a5, $a7, 4
	move	$a1, $zero
	vpickve2gr.w	$a6, $vr4, 3
	mul.d	$a5, $a5, $a6
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a6, $a0, $a5
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a7, $a7, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a5, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	mul.d	$a5, $a0, $a4
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a5, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a7, 1
	vshuf4i.w	$vr6, $vr7, 64
	vsub.w	$vr3, $vr3, $vr6
	vmul.w	$vr5, $vr5, $vr6
	vmul.w	$vr3, $vr3, $vr4
	vinsgr2vr.w	$vr4, $a6, 3
	vsub.w	$vr4, $vr5, $vr4
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$ra, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $s4, 3
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a4, 1
	.p2align	4, , 16
.LBB2_42:                               # %.preheader2318.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_43 Depth 3
                                        #         Child Loop BB2_44 Depth 4
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_43:                               # %.preheader2314.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_44 Depth 4
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_44:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        #       Parent Loop BB2_43 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t3, $vr1, 1
	vpickve2gr.d	$t6, $vr4, 1
	add.d	$t1, $t6, $ra
	move	$a5, $t7
	add.d	$t7, $t3, $a2
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t4, $t2, 3
	fldx.d	$fa5, $s6, $t4
	slli.d	$t1, $t1, 3
	fldx.d	$fa6, $s1, $t1
	alsl.d	$t8, $t7, $a7, 3
	fld.d	$fa7, $t8, 8
	fmul.d	$fa5, $fa5, $fa6
	move	$a4, $ra
	slli.d	$ra, $t7, 3
	fmul.d	$fa5, $fa5, $fa7
	vpickve2gr.d	$t2, $vr4, 0
	slli.d	$t2, $t2, 3
	fstx.d	$fa5, $t5, $t2
	fldx.d	$fa5, $s6, $t4
	fldx.d	$fa6, $s0, $t1
	fldx.d	$fa7, $a7, $ra
	fldx.d	$ft0, $fp, $t1
	slli.d	$t5, $t6, 3
	fldx.d	$ft1, $fp, $t5
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $ft0
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa7, $fa5
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	fstx.d	$fa5, $s5, $t2
	fldx.d	$fa5, $s6, $t4
	fldx.d	$fa6, $a1, $t1
	fld.d	$fa7, $t8, -8
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	fldx.d	$fa5, $s6, $t4
	fldx.d	$fa6, $s2, $t1
	alsl.d	$t8, $t7, $s4, 3
	fldx.d	$fa7, $s7, $t1
	fld.d	$ft0, $t8, 8
	fldx.d	$ft1, $s7, $t5
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	fstx.d	$fa5, $s5, $t2
	fldx.d	$fa5, $s6, $t4
	move	$s5, $s2
	ld.d	$s2, $sp, 352                   # 8-byte Folded Reload
	fldx.d	$fa6, $s2, $t1
	move	$s2, $s5
	fldx.d	$fa7, $s4, $ra
	fldx.d	$ft0, $a3, $t5
	fldx.d	$ft1, $a3, $t1
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa6, $ft0, $fa7, $fa6
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	fstx.d	$fa5, $s5, $t2
	fldx.d	$fa5, $s6, $t4
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $t1
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	fldx.d	$fa7, $ra, $t1
	fld.d	$ft0, $t8, -8
	fldx.d	$ft1, $ra, $t5
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$t8, $sp, 456                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	sub.d	$t7, $t7, $a6
	fldx.d	$fa5, $s6, $t4
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $t1
	alsl.d	$t8, $t7, $s4, 3
	fld.d	$fa7, $t8, 8
	fmul.d	$fa5, $fa5, $fa6
	slli.d	$t7, $t7, 3
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$ra, $sp, 384                   # 8-byte Folded Reload
	fstx.d	$fa5, $ra, $t2
	fldx.d	$fa5, $s6, $t4
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $t1
	move	$ra, $a4
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	fldx.d	$fa7, $a4, $t1
	fldx.d	$ft0, $s4, $t7
	fldx.d	$ft1, $a4, $t5
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	fstx.d	$fa5, $a4, $t2
	fldx.d	$fa5, $s6, $t4
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	fldx.d	$fa6, $a4, $t1
	fld.d	$fa7, $t8, -8
	sub.d	$t6, $t6, $ra
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	fstx.d	$fa5, $a4, $t2
	add.d	$t7, $t3, $a6
	fldx.d	$fa5, $s1, $t5
	fldx.d	$fa6, $s3, $t4
	slli.d	$t6, $t6, 3
	fldx.d	$fa7, $s1, $t6
	slli.d	$t7, $t7, 3
	addi.d	$t8, $t7, 8
	fldx.d	$ft0, $s4, $t8
	fldx.d	$ft1, $s6, $t4
	fldx.d	$ft2, $s1, $t1
	fldx.d	$ft3, $s8, $t8
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmul.d	$fa6, $ft1, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	fstx.d	$fa5, $a4, $t2
	fldx.d	$fa5, $s0, $t5
	fldx.d	$fa6, $s3, $t4
	fldx.d	$fa7, $s0, $t6
	fldx.d	$ft0, $s4, $t7
	fldx.d	$ft1, $s6, $t4
	fldx.d	$ft2, $s0, $t1
	fldx.d	$ft3, $s8, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	fldx.d	$fa7, $a0, $t5
	fldx.d	$ft2, $fp, $t5
	fldx.d	$ft4, $fp, $t6
	fldx.d	$ft5, $a0, $t1
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $a4, $t2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	add.w	$t7, $a4, $t3
	fldx.d	$fa5, $a1, $t5
	fldx.d	$fa6, $s3, $t4
	fldx.d	$fa7, $a1, $t6
	slli.d	$t7, $t7, 3
	fldx.d	$ft0, $s4, $t7
	fldx.d	$ft1, $s6, $t4
	fldx.d	$ft2, $a1, $t1
	fldx.d	$ft3, $s8, $t7
	move	$t7, $a5
	fmul.d	$fa6, $fa6, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmul.d	$fa6, $ft1, $ft2
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	fstx.d	$fa5, $a5, $t2
	fldx.d	$fa5, $s3, $t4
	fldx.d	$fa6, $s6, $t4
	slli.d	$t3, $t3, 3
	addi.d	$t3, $t3, 8
	fldx.d	$fa7, $s4, $t3
	fldx.d	$ft0, $s8, $t3
	fldx.d	$ft1, $s2, $t5
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	fldx.d	$ft2, $a4, $t5
	fldx.d	$ft3, $s7, $t5
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	fldx.d	$ft4, $s2, $t6
	fldx.d	$ft5, $s7, $t6
	fldx.d	$ft6, $s2, $t1
	fldx.d	$ft7, $a4, $t1
	fmul.d	$ft4, $fa5, $ft4
	fmadd.d	$ft1, $ft4, $fa7, $ft1
	fmul.d	$ft4, $fa6, $ft6
	fmadd.d	$ft1, $ft4, $ft0, $ft1
	fmadd.d	$fa7, $ft2, $fa7, $ft1
	fmadd.d	$fa7, $ft3, $ft0, $fa7
	fmadd.d	$fa5, $fa5, $ft5, $fa7
	fmadd.d	$fa5, $fa6, $ft7, $fa5
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	fstx.d	$fa5, $t1, $t2
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB2_44
# %bb.45:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_43 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_43
# %bb.46:                               # %._crit_edge2345.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_42 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_42
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_47:                               #   in Loop: Header=BB2_3 Depth=1
	blez	$a3, .LBB2_2
# %bb.48:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.49:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.50:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.51:                               # %.preheader2315.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a5, $a7, 4
	move	$a1, $zero
	vpickve2gr.w	$a6, $vr4, 3
	mul.d	$a5, $a5, $a6
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a6, $a0, $a5
	vmul.w	$vr5, $vr4, $vr3
	ld.w	$a7, $a7, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a5, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	mul.d	$a5, $a0, $a4
	vreplvei.w	$vr7, $vr2, 1
	vinsgr2vr.w	$vr2, $a5, 1
	vshuf4i.w	$vr2, $vr2, 64
	vsub.w	$vr2, $vr6, $vr2
	vinsgr2vr.w	$vr7, $a7, 1
	vshuf4i.w	$vr7, $vr7, 64
	vsub.w	$vr3, $vr3, $vr7
	vmul.w	$vr5, $vr5, $vr7
	vinsgr2vr.w	$vr6, $a6, 3
	vmul.w	$vr3, $vr3, $vr4
	vsub.w	$vr4, $vr5, $vr6
	vshuf.w	$vr0, $vr4, $vr3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s5, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$s8, $a0, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $s4, 3
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $a4, 1
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	st.d	$t5, $sp, 328                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_52:                               # %.preheader2315.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_53 Depth 3
                                        #         Child Loop BB2_54 Depth 4
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_53:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_54 Depth 4
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_54:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_52 Depth=2
                                        #       Parent Loop BB2_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t6, $vr4, 1
	add.d	$t1, $t6, $s5
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t3, $t2, 3
	fldx.d	$fa5, $s6, $t3
	slli.d	$t1, $t1, 3
	fldx.d	$fa6, $s1, $t1
	vpickve2gr.d	$t5, $vr1, 1
	add.d	$t7, $t5, $s8
	fmul.d	$fa6, $fa5, $fa6
	alsl.d	$t8, $t7, $a7, 3
	fld.d	$fa7, $t8, 8
	fldx.d	$ft0, $a5, $t1
	slli.d	$t4, $t6, 3
	fldx.d	$ft1, $a5, $t4
	slli.d	$ra, $t7, 3
	fmul.d	$fa5, $fa5, $ft0
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa7, $fa5
	vpickve2gr.d	$t2, $vr4, 0
	slli.d	$t2, $t2, 3
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	fstx.d	$fa5, $s3, $t2
	fldx.d	$fa5, $s6, $t3
	fldx.d	$fa6, $s0, $t1
	fldx.d	$fa7, $fp, $t1
	fldx.d	$ft0, $a7, $ra
	fldx.d	$ft1, $fp, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	fstx.d	$fa5, $s3, $t2
	fldx.d	$fa5, $s6, $t3
	fldx.d	$fa6, $a4, $t1
	fldx.d	$fa7, $a1, $t1
	fld.d	$ft0, $t8, -8
	fldx.d	$ft1, $a1, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	fldx.d	$fa5, $s6, $t3
	fldx.d	$fa6, $s2, $t1
	alsl.d	$t8, $t7, $s4, 3
	fldx.d	$fa7, $s7, $t1
	fld.d	$ft0, $t8, 8
	fldx.d	$ft1, $s7, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	fstx.d	$fa5, $s3, $t2
	fldx.d	$fa5, $s6, $t3
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	fldx.d	$fa6, $s3, $t1
	fldx.d	$fa7, $s4, $ra
	fldx.d	$ft0, $a6, $t4
	fldx.d	$ft1, $a6, $t1
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fmadd.d	$fa6, $ft0, $fa7, $fa6
	fmadd.d	$fa5, $fa5, $ft1, $fa6
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	fstx.d	$fa5, $s3, $t2
	fldx.d	$fa5, $s6, $t3
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $t1
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	fldx.d	$fa7, $ra, $t1
	fld.d	$ft0, $t8, -8
	fldx.d	$ft1, $ra, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$t8, $sp, 456                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	fldx.d	$fa5, $s6, $t3
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $t1
	sub.d	$t6, $t6, $s5
	sub.d	$t7, $t7, $a3
	fmul.d	$fa6, $fa5, $fa6
	alsl.d	$t8, $t7, $s4, 3
	ld.d	$ra, $sp, 288                   # 8-byte Folded Reload
	fldx.d	$fa7, $ra, $t1
	fld.d	$ft0, $t8, 8
	fldx.d	$ft1, $ra, $t4
	slli.d	$t7, $t7, 3
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$ra, $sp, 384                   # 8-byte Folded Reload
	fstx.d	$fa5, $ra, $t2
	fldx.d	$fa5, $s6, $t3
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $t1
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	fldx.d	$fa7, $ra, $t1
	fldx.d	$ft0, $s4, $t7
	fldx.d	$ft1, $ra, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$t7, $sp, 440                   # 8-byte Folded Reload
	fstx.d	$fa5, $t7, $t2
	fldx.d	$fa5, $s6, $t3
	ld.d	$t7, $sp, 376                   # 8-byte Folded Reload
	fldx.d	$fa6, $t7, $t1
	ld.d	$t7, $sp, 296                   # 8-byte Folded Reload
	fldx.d	$fa7, $t7, $t1
	fld.d	$ft0, $t8, -8
	fldx.d	$ft1, $t7, $t4
	fmul.d	$fa6, $fa5, $fa6
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa5, $fa6, $ft0, $fa5
	fmadd.d	$fa5, $ft1, $ft0, $fa5
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	fstx.d	$fa5, $t7, $t2
	add.d	$t7, $t5, $a3
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa6, $a0, $t3
	slli.d	$t6, $t6, 3
	fldx.d	$fa7, $s1, $t6
	slli.d	$t7, $t7, 3
	addi.d	$t8, $t7, 8
	fldx.d	$ft0, $s4, $t8
	fldx.d	$ft1, $s6, $t3
	fldx.d	$ft2, $s1, $t1
	fldx.d	$ft3, $a2, $t8
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $t4
	fldx.d	$ft2, $a5, $t4
	fldx.d	$ft4, $a5, $t6
	fldx.d	$ft5, $t8, $t1
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$t8, $sp, 400                   # 8-byte Folded Reload
	fstx.d	$fa5, $t8, $t2
	fldx.d	$fa5, $s0, $t4
	fldx.d	$fa6, $a0, $t3
	fldx.d	$fa7, $s0, $t6
	fldx.d	$ft0, $s4, $t7
	fldx.d	$ft1, $s6, $t3
	fldx.d	$ft2, $s0, $t1
	fldx.d	$ft3, $a2, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	fldx.d	$fa7, $t7, $t4
	fldx.d	$ft2, $fp, $t4
	fldx.d	$ft4, $fp, $t6
	fldx.d	$ft5, $t7, $t1
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	fstx.d	$fa5, $t7, $t2
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	add.w	$t7, $t7, $t5
	fldx.d	$fa5, $a4, $t4
	fldx.d	$fa6, $a0, $t3
	fldx.d	$fa7, $a4, $t6
	slli.d	$t7, $t7, 3
	fldx.d	$ft0, $s4, $t7
	fldx.d	$ft1, $s6, $t3
	fldx.d	$ft2, $a4, $t1
	fldx.d	$ft3, $a2, $t7
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmul.d	$fa7, $ft1, $ft2
	fmadd.d	$fa5, $fa7, $ft3, $fa5
	ld.d	$t7, $sp, 280                   # 8-byte Folded Reload
	fldx.d	$fa7, $t7, $t4
	fldx.d	$ft2, $a1, $t4
	fldx.d	$ft4, $a1, $t6
	fldx.d	$ft5, $t7, $t1
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fmadd.d	$fa5, $ft2, $ft3, $fa5
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fmadd.d	$fa5, $ft1, $ft5, $fa5
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	fstx.d	$fa5, $t7, $t2
	fldx.d	$fa5, $a0, $t3
	fldx.d	$fa6, $s6, $t3
	slli.d	$t3, $t5, 3
	addi.d	$t3, $t3, 8
	fldx.d	$fa7, $s4, $t3
	fldx.d	$ft0, $a2, $t3
	fldx.d	$ft1, $s2, $t4
	ld.d	$t3, $sp, 368                   # 8-byte Folded Reload
	fldx.d	$ft2, $t3, $t4
	fldx.d	$ft3, $s7, $t4
	fldx.d	$ft4, $s2, $t6
	fldx.d	$ft5, $s7, $t6
	fldx.d	$ft6, $s2, $t1
	fldx.d	$ft7, $t3, $t1
	fmul.d	$ft4, $fa5, $ft4
	fmadd.d	$ft1, $ft4, $fa7, $ft1
	fmul.d	$ft4, $fa6, $ft6
	fmadd.d	$ft1, $ft4, $ft0, $ft1
	fmadd.d	$fa7, $ft2, $fa7, $ft1
	fmadd.d	$fa7, $ft3, $ft0, $fa7
	fmadd.d	$fa5, $fa5, $ft5, $fa7
	fmadd.d	$fa5, $fa6, $ft7, $fa5
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	fstx.d	$fa5, $t1, $t2
	vadd.d	$vr1, $vr1, $vr16
	addi.w	$t0, $t0, -1
	vadd.d	$vr4, $vr4, $vr3
	bnez	$t0, .LBB2_54
# %bb.55:                               # %._crit_edge.us.us.us.us.us.us2570
                                        #   in Loop: Header=BB2_53 Depth=3
	vpickev.w	$vr1, $vr4, $vr1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr2, $vr1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_53
# %bb.56:                               # %._crit_edge2524.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_52 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_52
	b	.LBB2_2
.LBB2_57:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	move	$s1, $s3
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	b	.LBB2_12
.LBB2_58:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.Lfunc_end2:
	.size	hypre_SMG3BuildRAPNoSym, .Lfunc_end2-hypre_SMG3BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicSym        # -- Begin function hypre_SMG3RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicSym,@function
hypre_SMG3RAPPeriodicSym:               # @hypre_SMG3RAPPeriodicSym
# %bb.0:
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 360                  # 8-byte Folded Spill
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a3, $a0, 8
	ld.w	$a1, $a3, 64
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_77
# %bb.1:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$fp, $a3, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	blez	$a0, .LBB3_77
# %bb.2:                                # %.lr.ph
	move	$a1, $fp
	move	$s1, $zero
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ori	$s8, $zero, 16
	vrepli.d	$vr0, 32
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr24, 0
	lu52i.d	$a0, $zero, 1024
	vreplgr2vr.d	$vr25, $a0
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
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	vst	$vr24, $sp, 96                  # 16-byte Folded Spill
	vst	$vr25, $sp, 48                  # 16-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %.loopexit718
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB3_77
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_23 Depth 4
                                        #         Child Loop BB3_17 Depth 4
                                        #     Child Loop BB3_32 Depth 2
                                        #       Child Loop BB3_34 Depth 3
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_40 Depth 4
                                        #     Child Loop BB3_48 Depth 2
                                        #       Child Loop BB3_49 Depth 3
                                        #         Child Loop BB3_59 Depth 4
                                        #         Child Loop BB3_52 Depth 4
                                        #     Child Loop BB3_68 Depth 2
                                        #       Child Loop BB3_70 Depth 3
                                        #         Child Loop BB3_73 Depth 4
                                        #         Child Loop BB3_76 Depth 4
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a1, $s1, 4
	alsl.d	$a2, $s1, $a1, 3
	add.d	$a1, $a0, $a2
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	st.d	$fp, $sp, 348
	st.w	$zero, $sp, 356
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 12
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	st.d	$s7, $sp, 352
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	st.d	$s2, $sp, 348
	st.w	$s2, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 348
	st.w	$s2, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $sp, 348
	st.w	$s2, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$fp, $sp, 348
	st.w	$s2, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $sp, 348
	st.w	$zero, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s2, $sp, 348
	st.w	$zero, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s7, $sp, 348
	st.w	$zero, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s0
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $sp, 348
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	st.w	$s4, $sp, 356
	addi.d	$a2, $sp, 348
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s7
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	lu32i.d	$s0, -1
	st.d	$s0, $sp, 348
	st.w	$s4, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$a0, $s2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 348
	st.w	$s4, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 348
	st.w	$s4, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $sp, 348
	st.w	$zero, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 348
	st.w	$zero, $sp, 356
	addi.d	$a2, $sp, 348
	move	$a0, $s7
	move	$a1, $s8
	ori	$s8, $zero, 16
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 336
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 336
	ld.w	$a1, $sp, 340
	ld.w	$a4, $sp, 344
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	vldi	$vr23, -1024
	vld	$vr24, $sp, 96                  # 16-byte Folded Reload
	vld	$vr25, $sp, 48                  # 16-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	blez	$a2, .LBB3_41
# %bb.7:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_41
# %bb.8:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	blez	$a2, .LBB3_41
# %bb.9:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_41
# %bb.10:                               # %.preheader709.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	vreplgr2vr.d	$vr0, $s7
	vreplgr2vr.d	$vr2, $ra
	vinsgr2vr.d	$vr1, $ra, 0
	vinsgr2vr.d	$vr1, $t2, 1
	ld.d	$t3, $sp, 320                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr3, $t3, 0
	vinsgr2vr.d	$vr3, $s5, 1
	vori.b	$vr4, $vr1, 0
	vshuf4i.d	$vr4, $vr3, 9
	vori.b	$vr5, $vr3, 0
	vshuf4i.d	$vr5, $vr0, 1
	ld.w	$a2, $s2, 0
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $t1, 0
	ld.w	$a4, $s2, 4
	ld.w	$a5, $t1, 4
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a6, $s2, 8
	ld.w	$a7, $t1, 8
	ld.w	$t0, $t1, 16
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	slt	$a7, $t0, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t0, $a7
	or	$a5, $a5, $a7
	ld.w	$a7, $t1, 12
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a5, $a6
	add.d	$a4, $a4, $a6
	sub.w	$a3, $a7, $a3
	slt	$a6, $t0, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t0, $a6
	or	$a3, $a3, $a6
	addi.d	$a6, $a3, 1
	mul.d	$a3, $a4, $a6
	add.w	$a2, $a3, $a2
	sub.d	$a3, $a6, $a0
	sub.d	$a4, $a5, $a1
	mul.d	$a4, $a6, $a4
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	addi.w	$a5, $a0, -1
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	nor	$t0, $a4, $zero
	st.d	$a5, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a5, 31, 0
	alsl.d	$a5, $a4, $s6, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $fp, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s1, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s7, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $ra, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	addi.d	$t6, $t2, -8
	alsl.d	$a5, $a4, $t2, 3
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $t3, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $s5, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 30, 1
	slli.d	$a4, $a4, 1
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	move	$a5, $a2
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge725.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_12 Depth=2
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a4
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	beq	$a6, $a4, .LBB3_27
.LBB3_12:                               # %.preheader709.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_23 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	move	$a6, $zero
	.p2align	4, , 16
.LBB3_13:                               # %.preheader705.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_23 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	bltu	$a0, $s8, .LBB3_15
# %bb.14:                               # %vector.scevcheck1029
                                        #   in Loop: Header=BB3_13 Depth=3
	add.w	$s2, $a5, $t0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	add.w	$a4, $s2, $a4
	bge	$a4, $s2, .LBB3_19
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s0, $zero
.LBB3_16:                               # %scalar.ph1134.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	slli.d	$a4, $a5, 3
	add.w	$a7, $t0, $a5
	sub.d	$t1, $a0, $s0
	move	$t2, $s1
	ld.d	$t3, $sp, 320                   # 8-byte Folded Reload
	move	$t4, $fp
	move	$t5, $t6
	move	$t7, $ra
	move	$t8, $s6
	move	$s0, $s7
	.p2align	4, , 16
.LBB3_17:                               # %scalar.ph1134
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa6, $s0, $a4
	fldx.d	$fa7, $t8, $a4
	fmadd.d	$fa6, $fa6, $ft15, $fa7
	fstx.d	$fa6, $t8, $a4
	fldx.d	$fa6, $t7, $a4
	fldx.d	$fa7, $t5, $a4
	fldx.d	$ft0, $t4, $a4
	fadd.d	$fa6, $fa6, $fa7
	fadd.d	$fa6, $ft0, $fa6
	fstx.d	$fa6, $t4, $a4
	fldx.d	$fa6, $t3, $a4
	slli.d	$s2, $a7, 3
	fldx.d	$fa7, $s5, $s2
	fldx.d	$ft0, $t2, $a4
	fadd.d	$fa6, $fa6, $fa7
	fadd.d	$fa6, $ft0, $fa6
	fstx.d	$fa6, $t2, $a4
	addi.d	$a5, $a5, 1
	addi.d	$s0, $s0, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.w	$t1, $t1, -1
	addi.w	$a7, $a7, 1
	bnez	$t1, .LBB3_17
.LBB3_18:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.w	$a6, $a6, 1
	add.w	$a5, $a3, $a5
	bne	$a6, $a1, .LBB3_13
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_19:                               # %vector.memcheck1030
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t1, $a5, $s6, 3
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s0, $a5, $a4, 3
	alsl.d	$t2, $a5, $fp, 3
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $a4, 3
	alsl.d	$t3, $a5, $s1, 3
	move	$a4, $ra
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$ra, $a5, $a7, 3
	alsl.d	$t4, $a5, $s7, 3
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a7, 3
	alsl.d	$t5, $a5, $a4, 3
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 3
	alsl.d	$t7, $a5, $t6, 3
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t8, $a5, $a7, 3
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a7, $s2, $a7, 3
	vinsgr2vr.d	$vr8, $a7, 0
	vinsgr2vr.d	$vr9, $ra, 0
	vinsgr2vr.d	$vr9, $t8, 1
	vinsgr2vr.d	$vr10, $t8, 0
	ld.d	$t8, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t8, $a5, $t8, 3
	vori.b	$vr11, $vr8, 0
	vinsgr2vr.d	$vr11, $s7, 1
	vinsgr2vr.d	$vr12, $s7, 0
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $s7, 3
	vinsgr2vr.d	$vr7, $t2, 0
	vori.b	$vr13, $vr10, 0
	vinsgr2vr.d	$vr13, $s8, 1
	vori.b	$vr14, $vr12, 0
	vinsgr2vr.d	$vr14, $s8, 1
	vinsgr2vr.d	$vr8, $s8, 1
	vinsgr2vr.d	$vr6, $s8, 0
	alsl.d	$s8, $s2, $s5, 3
	vori.b	$vr15, $vr7, 0
	vinsgr2vr.d	$vr15, $t3, 1
	vinsgr2vr.d	$vr16, $t5, 0
	vinsgr2vr.d	$vr16, $t3, 1
	vori.b	$vr17, $vr7, 0
	vinsgr2vr.d	$vr17, $t8, 1
	vori.b	$vr18, $vr7, 0
	vinsgr2vr.d	$vr19, $t1, 0
	vinsgr2vr.d	$vr18, $t5, 1
	vori.b	$vr20, $vr19, 0
	vinsgr2vr.d	$vr20, $t8, 1
	vori.b	$vr21, $vr19, 0
	vinsgr2vr.d	$vr21, $t5, 1
	vinsgr2vr.d	$vr19, $t3, 1
	vinsgr2vr.d	$vr10, $s0, 1
	vinsgr2vr.d	$vr12, $s0, 1
	vori.b	$vr22, $vr6, 0
	vinsgr2vr.d	$vr22, $s0, 1
	vslt.du	$vr22, $vr19, $vr22
	vslt.du	$vr12, $vr21, $vr12
	vpickev.w	$vr12, $vr12, $vr22
	vslt.du	$vr10, $vr20, $vr10
	vslt.du	$vr8, $vr19, $vr8
	vpickev.w	$vr8, $vr8, $vr10
	vpickev.h	$vr8, $vr8, $vr12
	vslt.du	$vr10, $vr18, $vr14
	vslt.du	$vr12, $vr17, $vr13
	vpickev.w	$vr10, $vr12, $vr10
	vslt.du	$vr9, $vr16, $vr9
	vslt.du	$vr11, $vr15, $vr11
	vpickev.w	$vr9, $vr9, $vr11
	vpickev.h	$vr9, $vr9, $vr10
	vpickev.b	$vr8, $vr9, $vr8
	vinsgr2vr.d	$vr7, $t1, 1
	vinsgr2vr.d	$vr9, $t4, 0
	vinsgr2vr.d	$vr9, $t7, 1
	vinsgr2vr.d	$vr10, $s8, 0
	vinsgr2vr.d	$vr10, $t3, 1
	vpackev.d	$vr11, $vr9, $vr10
	vpackev.d	$vr12, $vr7, $vr9
	vpackev.d	$vr10, $vr7, $vr10
	vori.b	$vr13, $vr7, 0
	vori.b	$vr14, $vr7, 0
	vinsgr2vr.d	$vr15, $s0, 0
	vinsgr2vr.d	$vr15, $ra, 1
	vslt.du	$vr16, $vr7, $vr15
	vshuf4i.d	$vr7, $vr9, 3
	vshuf4i.d	$vr13, $vr9, 6
	vinsgr2vr.d	$vr9, $t3, 0
	vinsgr2vr.d	$vr14, $t7, 0
	vinsgr2vr.d	$vr17, $a4, 0
	vinsgr2vr.d	$vr17, $s7, 1
	vori.b	$vr18, $vr15, 0
	vpackev.d	$vr19, $vr17, $vr15
	vslt.du	$vr10, $vr10, $vr15
	vshuf4i.d	$vr15, $vr17, 6
	vshuf4i.d	$vr18, $vr17, 12
	vori.b	$vr20, $vr6, 0
	vinsgr2vr.d	$vr20, $ra, 1
	vpackev.d	$vr17, $vr17, $vr6
	vinsgr2vr.d	$vr6, $s7, 1
	vslt.du	$vr13, $vr13, $vr19
	vpickev.w	$vr13, $vr13, $vr16
	vslt.du	$vr14, $vr14, $vr18
	vpickev.w	$vr10, $vr10, $vr14
	vpickev.h	$vr10, $vr10, $vr13
	vslt.du	$vr12, $vr12, $vr17
	vslt.du	$vr6, $vr7, $vr6
	vpickev.w	$vr6, $vr6, $vr12
	vslt.du	$vr7, $vr9, $vr15
	vslt.du	$vr9, $vr11, $vr20
	vpickev.w	$vr7, $vr7, $vr9
	vpickev.h	$vr6, $vr7, $vr6
	vpickev.b	$vr6, $vr6, $vr10
	vand.v	$vr6, $vr8, $vr6
	vslli.b	$vr6, $vr6, 7
	vmskltz.b	$vr6, $vr6
	vpickve2gr.hu	$a4, $vr6, 0
	move	$s0, $zero
	bnez	$a4, .LBB3_26
# %bb.20:                               # %vector.memcheck1030
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a4, $t3, $s7
	sltu	$s7, $t8, $ra
	and	$a4, $a4, $s7
	bnez	$a4, .LBB3_26
# %bb.21:                               # %vector.memcheck1030
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a4, $t3, $a7
	sltu	$a7, $s8, $ra
	and	$a4, $a4, $a7
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	bnez	$a4, .LBB3_25
# %bb.22:                               # %vector.ph1136
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	add.d	$a5, $a4, $a5
	ori	$s8, $zero, 16
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_23:                               # %vector.body1139
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr6, $t4, 0
	vld	$vr7, $t1, 0
	vld	$vr8, $t5, 0
	vld	$vr9, $t7, 0
	vfmadd.d	$vr6, $vr6, $vr25, $vr7
	vst	$vr6, $t1, 0
	vfadd.d	$vr6, $vr8, $vr9
	vld	$vr7, $t2, 0
	vld	$vr8, $t8, 0
	slli.d	$a7, $s2, 3
	vldx	$vr9, $s5, $a7
	vld	$vr10, $t3, 0
	vfadd.d	$vr6, $vr7, $vr6
	vst	$vr6, $t2, 0
	vfadd.d	$vr6, $vr8, $vr9
	vfadd.d	$vr6, $vr10, $vr6
	vst	$vr6, $t3, 0
	addi.w	$s2, $s2, 2
	addi.d	$a4, $a4, -2
	addi.d	$t3, $t3, 16
	addi.d	$t8, $t8, 16
	addi.d	$t2, $t2, 16
	addi.d	$t7, $t7, 16
	addi.d	$t5, $t5, 16
	addi.d	$t1, $t1, 16
	addi.d	$t4, $t4, 16
	bnez	$a4, .LBB3_23
# %bb.24:                               # %middle.block1152
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	move	$s0, $a4
	bne	$a4, $a0, .LBB3_16
	b	.LBB3_18
.LBB3_25:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s8, $zero, 16
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_26:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s8, $zero, 16
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_27:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB3_41
# %bb.28:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	blez	$a4, .LBB3_41
# %bb.29:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_41
# %bb.30:                               # %.preheader708.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a4, $zero
	vsub.d	$vr5, $vr5, $vr1
	vsub.d	$vr2, $vr4, $vr2
	vsub.d	$vr3, $vr3, $vr0
	vsub.d	$vr0, $vr1, $vr0
	sub.d	$a5, $s5, $s1
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	sub.d	$a6, $s5, $t2
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vslt.du	$vr0, $vr0, $vr4
	vslt.du	$vr1, $vr3, $vr4
	vpickev.w	$vr1, $vr1, $vr0
	vpickve2gr.h	$a7, $vr1, 2
	andi	$a7, $a7, 1
	vpickve2gr.h	$t0, $vr0, 0
	bstrins.d	$t0, $a7, 63, 1
	vpickve2gr.h	$a7, $vr1, 4
	bstrins.d	$t0, $a7, 2, 2
	vpickve2gr.h	$a7, $vr1, 6
	bstrins.d	$t0, $a7, 3, 3
	vslt.du	$vr0, $vr2, $vr4
	vslt.du	$vr1, $vr5, $vr4
	vpickev.w	$vr0, $vr1, $vr0
	vpickve2gr.h	$a7, $vr0, 0
	bstrins.d	$t0, $a7, 4, 4
	vpickve2gr.h	$a7, $vr0, 2
	bstrins.d	$t0, $a7, 5, 5
	vpickve2gr.h	$a7, $vr0, 4
	andi	$a7, $a7, 1
	slli.d	$a7, $a7, 6
	or	$a7, $t0, $a7
	vpickve2gr.h	$t0, $vr0, 6
	slli.d	$t0, $t0, 7
	or	$a7, $a7, $t0
	andi	$a7, $a7, 255
	sltui	$a5, $a5, 32
	sltui	$a6, $a6, 32
	sltu	$a7, $zero, $a7
	or	$a5, $a5, $a6
	or	$a5, $a5, $a7
	bstrpick.d	$a6, $a0, 30, 2
	slli.d	$a6, $a6, 2
	addi.d	$a7, $s7, 16
	addi.d	$t0, $s5, 16
	addi.d	$t1, $ra, 16
	addi.d	$t2, $t2, 16
	addi.d	$t3, $s1, 16
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_31:                               # %._crit_edge749.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_32 Depth=2
	addi.w	$a4, $a4, 1
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t4
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	beq	$a4, $t4, .LBB3_41
.LBB3_32:                               # %.preheader708.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_34 Depth 3
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	move	$t4, $zero
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_33:                               # %._crit_edge.us.us.us.us.us.us769
                                        #   in Loop: Header=BB3_34 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$a2, $a3, $t5
	beq	$t4, $a1, .LBB3_31
.LBB3_34:                               # %.preheader704.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_37 Depth 4
                                        #         Child Loop BB3_40 Depth 4
	sltui	$t5, $a0, 10
	or	$t5, $t5, $a5
	andi	$t5, $t5, 1
	beqz	$t5, .LBB3_36
# %bb.35:                               #   in Loop: Header=BB3_34 Depth=3
	move	$s0, $zero
	move	$t5, $a2
	b	.LBB3_39
	.p2align	4, , 16
.LBB3_36:                               # %vector.ph1018
                                        #   in Loop: Header=BB3_34 Depth=3
	add.d	$t5, $a6, $a2
	alsl.d	$t6, $a2, $a7, 3
	alsl.d	$t7, $a2, $t0, 3
	alsl.d	$t8, $a2, $t1, 3
	alsl.d	$fp, $a2, $t2, 3
	alsl.d	$a2, $a2, $t3, 3
	move	$s0, $a6
	.p2align	4, , 16
.LBB3_37:                               # %vector.body1021
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        #       Parent Loop BB3_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr24, $t6, -16
	vst	$vr24, $t6, 0
	vst	$vr24, $t8, -16
	vst	$vr24, $t8, 0
	vst	$vr24, $a2, -16
	vst	$vr24, $a2, 0
	vst	$vr24, $fp, -16
	vst	$vr24, $fp, 0
	vst	$vr24, $t7, -16
	vst	$vr24, $t7, 0
	addi.d	$s0, $s0, -4
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, 32
	addi.d	$t8, $t8, 32
	addi.d	$fp, $fp, 32
	addi.d	$a2, $a2, 32
	bnez	$s0, .LBB3_37
# %bb.38:                               # %middle.block1025
                                        #   in Loop: Header=BB3_34 Depth=3
	move	$s0, $a6
	beq	$a6, $a0, .LBB3_33
.LBB3_39:                               # %scalar.ph1016.preheader
                                        #   in Loop: Header=BB3_34 Depth=3
	alsl.d	$a2, $t5, $s7, 3
	alsl.d	$t6, $t5, $ra, 3
	alsl.d	$t7, $t5, $s1, 3
	ld.d	$t8, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t8, $t5, $t8, 3
	alsl.d	$fp, $t5, $s5, 3
	sub.d	$s0, $a0, $s0
	.p2align	4, , 16
.LBB3_40:                               # %scalar.ph1016
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        #       Parent Loop BB3_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a2, 0
	st.d	$zero, $t6, 0
	st.d	$zero, $t7, 0
	st.d	$zero, $t8, 0
	st.d	$zero, $fp, 0
	addi.d	$t5, $t5, 1
	addi.d	$a2, $a2, 8
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.w	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB3_40
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_41:                               # %._crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_3
# %bb.42:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 336
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	vld	$vr24, $sp, 96                  # 16-byte Folded Reload
	ld.w	$a0, $sp, 336
	ld.w	$a1, $sp, 340
	ld.w	$a4, $sp, 344
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB3_3
# %bb.43:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_3
# %bb.44:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.45:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.46:                               # %.preheader707.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t6, $zero
	ld.w	$a2, $s2, 0
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $t2, 0
	ld.w	$a4, $s2, 4
	ld.w	$a5, $t2, 4
	ld.w	$a7, $s2, 8
	ld.w	$t0, $t2, 8
	ld.w	$t1, $t2, 16
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.d	$a7, $a7, $t0
	sub.w	$a5, $t1, $a5
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	slt	$t0, $a6, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a6, $t0
	or	$a5, $a5, $t0
	ld.w	$t0, $t2, 12
	addi.d	$t1, $a5, 1
	mul.d	$a5, $t1, $a7
	add.d	$a4, $a4, $a5
	sub.w	$a3, $t0, $a3
	slt	$a5, $a6, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a6, $a5
	or	$a3, $a3, $a5
	addi.d	$a7, $a3, 1
	mul.d	$a3, $a4, $a7
	add.w	$a5, $a3, $a2
	sub.d	$a3, $a7, $a0
	sub.d	$a2, $t1, $a1
	mul.d	$a2, $a7, $a2
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	addi.w	$a7, $a0, -1
	bstrpick.d	$a2, $a7, 31, 0
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$t1, $a4, 8
	alsl.d	$a4, $a2, $ra, 3
	addi.d	$t2, $a4, 8
	alsl.d	$a4, $a2, $s4, 3
	addi.d	$t3, $a4, 8
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$t4, $a4, 8
	alsl.d	$a2, $a2, $s3, 3
	addi.d	$t5, $a2, 8
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$a2, $a2, 1
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	sub.d	$t7, $zero, $a4
	move	$t8, $a5
	ori	$t0, $zero, 12
	b	.LBB3_48
	.p2align	4, , 16
.LBB3_47:                               # %._crit_edge776.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_48 Depth=2
	ld.d	$t6, $sp, 288                   # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a4
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	beq	$t6, $a4, .LBB3_63
.LBB3_48:                               # %.preheader707.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_49 Depth 3
                                        #         Child Loop BB3_59 Depth 4
                                        #         Child Loop BB3_52 Depth 4
	st.d	$t6, $sp, 288                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB3_49:                               # %.preheader703.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_48 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_59 Depth 4
                                        #         Child Loop BB3_52 Depth 4
	bgeu	$a0, $t0, .LBB3_54
# %bb.50:                               #   in Loop: Header=BB3_49 Depth=3
	move	$t6, $zero
.LBB3_51:                               # %scalar.ph977.preheader
                                        #   in Loop: Header=BB3_49 Depth=3
	add.w	$a4, $t7, $t8
	alsl.d	$s0, $t8, $ra, 3
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$s1, $t8, $a6, 3
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$s2, $t8, $a6, 3
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$s5, $t8, $a6, 3
	sub.d	$s6, $a0, $t6
	.p2align	4, , 16
.LBB3_52:                               # %scalar.ph977
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_48 Depth=2
                                        #       Parent Loop BB3_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a6, $a4, -2
	fld.d	$fa0, $s0, 0
	slli.d	$a6, $a6, 3
	fldx.d	$fa1, $s4, $a6
	fld.d	$fa2, $s1, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s1, 0
	fld.d	$fa0, $s2, 0
	slli.d	$a6, $a4, 3
	fldx.d	$fa1, $s3, $a6
	fld.d	$fa2, $s5, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t8, $t8, 1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s5, 0
	addi.w	$a4, $a4, 1
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	addi.w	$s6, $s6, -1
	addi.d	$s5, $s5, 8
	bnez	$s6, .LBB3_52
.LBB3_53:                               # %._crit_edge773.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_49 Depth=3
	addi.w	$fp, $fp, 1
	add.w	$t8, $a3, $t8
	bne	$fp, $a1, .LBB3_49
	b	.LBB3_47
	.p2align	4, , 16
.LBB3_54:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	sub.w	$s0, $t8, $a4
	addi.w	$s6, $s0, -2
	add.w	$a4, $s6, $a7
	move	$t6, $zero
	blt	$a4, $s6, .LBB3_51
# %bb.55:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_49 Depth=3
	add.w	$a4, $s0, $a7
	blt	$a4, $s0, .LBB3_51
# %bb.56:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$s1, $t8, $a4, 3
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t6, $t8, $a4, 3
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$s2, $t8, $a4, 3
	alsl.d	$s7, $t8, $t1, 3
	alsl.d	$s5, $t8, $ra, 3
	alsl.d	$a4, $t8, $t2, 3
	alsl.d	$ra, $s6, $s4, 3
	alsl.d	$a6, $s6, $t3, 3
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$s6, $t8, $t0, 3
	alsl.d	$t0, $t8, $t4, 3
	alsl.d	$s8, $s0, $s3, 3
	vinsgr2vr.d	$vr0, $ra, 0
	alsl.d	$ra, $s0, $t5, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.d	$vr2, $s1, 0
	vinsgr2vr.d	$vr1, $s2, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $s2, 1
	vori.b	$vr4, $vr2, 0
	vinsgr2vr.d	$vr4, $s6, 1
	vinsgr2vr.d	$vr5, $s7, 0
	vinsgr2vr.d	$vr2, $s5, 1
	vori.b	$vr6, $vr5, 0
	vinsgr2vr.d	$vr6, $t0, 1
	vinsgr2vr.d	$vr7, $ra, 0
	vinsgr2vr.d	$vr8, $a6, 0
	vinsgr2vr.d	$vr7, $a4, 1
	vori.b	$vr9, $vr8, 0
	vinsgr2vr.d	$vr9, $t6, 1
	vinsgr2vr.d	$vr5, $t6, 1
	vslt.du	$vr2, $vr2, $vr5
	vslt.du	$vr4, $vr4, $vr9
	vpickev.w	$vr2, $vr4, $vr2
	vslt.du	$vr3, $vr3, $vr7
	vslt.du	$vr1, $vr1, $vr6
	vpickev.w	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr3, $s2, 0
	vpickev.h	$vr1, $vr1, $vr2
	vori.b	$vr2, $vr3, 0
	vinsgr2vr.d	$vr2, $s6, 1
	vinsgr2vr.d	$vr0, $s1, 1
	vinsgr2vr.d	$vr3, $s1, 1
	vinsgr2vr.d	$vr4, $s8, 0
	vinsgr2vr.d	$vr4, $s5, 1
	vinsgr2vr.d	$vr5, $t6, 0
	vinsgr2vr.d	$vr8, $s7, 1
	vori.b	$vr6, $vr5, 0
	vinsgr2vr.d	$vr6, $s7, 1
	vori.b	$vr7, $vr5, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr5, $a4, 1
	vslt.du	$vr3, $vr3, $vr5
	vslt.du	$vr0, $vr0, $vr7
	vpickev.w	$vr0, $vr0, $vr3
	vslt.du	$vr3, $vr4, $vr6
	vslt.du	$vr2, $vr2, $vr8
	vpickev.w	$vr2, $vr2, $vr3
	vpickev.h	$vr0, $vr2, $vr0
	vand.v	$vr0, $vr1, $vr0
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	move	$t6, $zero
	bnez	$a4, .LBB3_62
# %bb.57:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	sltu	$a4, $s2, $ra
	sltu	$a6, $s8, $s7
	and	$a4, $a4, $a6
	ori	$t0, $zero, 12
	bnez	$a4, .LBB3_61
# %bb.58:                               # %vector.ph979
                                        #   in Loop: Header=BB3_49 Depth=3
	add.d	$t8, $a2, $t8
	move	$a4, $a2
	ori	$s8, $zero, 16
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_59:                               # %vector.body982
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_48 Depth=2
                                        #       Parent Loop BB3_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a6, $s0, -2
	vld	$vr0, $s5, 0
	slli.d	$a6, $a6, 3
	vldx	$vr1, $s4, $a6
	vfadd.d	$vr0, $vr0, $vr1
	vld	$vr1, $s1, 0
	vld	$vr2, $s6, 0
	slli.d	$a6, $s0, 3
	vldx	$vr3, $s3, $a6
	vld	$vr4, $s2, 0
	vfadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $s1, 0
	vfadd.d	$vr0, $vr2, $vr3
	vfadd.d	$vr0, $vr4, $vr0
	vst	$vr0, $s2, 0
	addi.w	$s0, $s0, 2
	addi.d	$a4, $a4, -2
	addi.d	$s2, $s2, 16
	addi.d	$s6, $s6, 16
	addi.d	$s1, $s1, 16
	addi.d	$s5, $s5, 16
	bnez	$a4, .LBB3_59
# %bb.60:                               # %middle.block992
                                        #   in Loop: Header=BB3_49 Depth=3
	move	$t6, $a2
	bne	$a2, $a0, .LBB3_51
	b	.LBB3_53
.LBB3_61:                               #   in Loop: Header=BB3_49 Depth=3
	ori	$s8, $zero, 16
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	b	.LBB3_51
.LBB3_62:                               #   in Loop: Header=BB3_49 Depth=3
	ori	$s8, $zero, 16
	ori	$t0, $zero, 12
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	b	.LBB3_51
.LBB3_63:                               # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_3
# %bb.64:                               # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.65:                               # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.66:                               # %.preheader706.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	ld.d	$t3, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a2, $t3, $ra
	sub.d	$a4, $s3, $ra
	sub.d	$a7, $s4, $ra
	sub.d	$t0, $s3, $t3
	sub.d	$t1, $s4, $t3
	sub.d	$t2, $s4, $s3
	sltui	$a2, $a2, 32
	sltui	$a4, $a4, 32
	or	$a2, $a2, $a4
	sltui	$a4, $a7, 32
	or	$a2, $a2, $a4
	sltui	$a4, $t0, 32
	or	$a2, $a2, $a4
	sltui	$a4, $t1, 32
	or	$a2, $a2, $a4
	sltui	$a4, $t2, 32
	or	$a7, $a2, $a4
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$t0, $a2, 2
	addi.d	$t1, $ra, 16
	addi.d	$t2, $s4, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $s3, 16
	b	.LBB3_68
	.p2align	4, , 16
.LBB3_67:                               # %._crit_edge802.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_68 Depth=2
	addi.w	$a6, $a6, 1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	beq	$a6, $a2, .LBB3_3
.LBB3_68:                               # %.preheader706.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_70 Depth 3
                                        #         Child Loop BB3_73 Depth 4
                                        #         Child Loop BB3_76 Depth 4
	move	$t5, $zero
	b	.LBB3_70
	.p2align	4, , 16
.LBB3_69:                               # %._crit_edge799.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_70 Depth=3
	addi.w	$t5, $t5, 1
	add.w	$a5, $a3, $t6
	beq	$t5, $a1, .LBB3_67
.LBB3_70:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_68 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_73 Depth 4
                                        #         Child Loop BB3_76 Depth 4
	sltui	$a2, $a0, 6
	or	$a2, $a2, $a7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB3_72
# %bb.71:                               #   in Loop: Header=BB3_70 Depth=3
	move	$t8, $zero
	move	$t6, $a5
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_72:                               # %vector.ph
                                        #   in Loop: Header=BB3_70 Depth=3
	add.d	$t6, $t0, $a5
	alsl.d	$a2, $a5, $t1, 3
	alsl.d	$a4, $a5, $t2, 3
	alsl.d	$t7, $a5, $t3, 3
	alsl.d	$a5, $a5, $t4, 3
	move	$t8, $t0
	.p2align	4, , 16
.LBB3_73:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_68 Depth=2
                                        #       Parent Loop BB3_70 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr24, $a2, -16
	vst	$vr24, $a2, 0
	vst	$vr24, $t7, -16
	vst	$vr24, $t7, 0
	vst	$vr24, $a5, -16
	vst	$vr24, $a5, 0
	vst	$vr24, $a4, -16
	vst	$vr24, $a4, 0
	addi.d	$t8, $t8, -4
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, 32
	addi.d	$t7, $t7, 32
	addi.d	$a5, $a5, 32
	bnez	$t8, .LBB3_73
# %bb.74:                               # %middle.block
                                        #   in Loop: Header=BB3_70 Depth=3
	move	$t8, $t0
	beq	$t0, $a0, .LBB3_69
.LBB3_75:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_70 Depth=3
	alsl.d	$a2, $t6, $ra, 3
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $t6, $a4, 3
	alsl.d	$a5, $t6, $s3, 3
	alsl.d	$t7, $t6, $s4, 3
	sub.d	$t8, $a0, $t8
	.p2align	4, , 16
.LBB3_76:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_68 Depth=2
                                        #       Parent Loop BB3_70 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a2, 0
	st.d	$zero, $a4, 0
	st.d	$zero, $a5, 0
	st.d	$zero, $t7, 0
	addi.d	$t6, $t6, 1
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB3_76
	b	.LBB3_69
.LBB3_77:                               # %.loopexit720
	move	$a0, $zero
	fld.d	$fs1, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 368                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end3:
	.size	hypre_SMG3RAPPeriodicSym, .Lfunc_end3-hypre_SMG3RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicNoSym      # -- Begin function hypre_SMG3RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicNoSym,@function
hypre_SMG3RAPPeriodicNoSym:             # @hypre_SMG3RAPPeriodicNoSym
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
	fst.d	$fs0, $sp, 1056                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1048                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1040                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1032                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1024                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1016                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1008                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1000                 # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 64
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_45
# %bb.1:                                # %.preheader490
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a1, 8
	blez	$a0, .LBB4_45
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
	bge	$s2, $a0, .LBB4_45
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_23 Depth 4
                                        #     Child Loop BB4_31 Depth 2
                                        #       Child Loop BB4_33 Depth 3
                                        #         Child Loop BB4_39 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s2, 4
	alsl.d	$fp, $s2, $a2, 3
	ld.d	$s0, $a0, 0
	add.d	$a0, $a1, $fp
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $sp, 988
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	st.w	$s3, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 988
	st.w	$s3, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	st.d	$s4, $sp, 988
	st.w	$s3, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	st.d	$s6, $sp, 988
	st.w	$s3, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	st.d	$s5, $sp, 988
	st.w	$s3, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$zero, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s3, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s6, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	st.d	$s5, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	st.d	$zero, $sp, 988
	st.w	$s4, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s3, $sp, 988
	st.w	$s4, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	st.d	$s4, $sp, 988
	st.w	$s4, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	st.d	$s6, $sp, 988
	st.w	$s4, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	st.d	$s5, $sp, 988
	st.w	$s4, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	st.d	$s5, $sp, 988
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	st.w	$s6, $sp, 996
	addi.d	$a2, $sp, 988
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu32i.d	$s1, -1
	st.d	$s1, $sp, 988
	st.w	$s6, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s2, $s5
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 988
	st.w	$s6, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 988
	st.w	$s6, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$s1, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s2, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$s3, $sp, 988
	st.w	$zero, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 988
	ori	$s5, $zero, 1
	st.w	$s5, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s1, $sp, 988
	st.w	$s5, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s2, $sp, 988
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	st.w	$s5, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s3, $sp, 988
	st.w	$s5, $sp, 996
	addi.d	$a2, $sp, 988
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s0, $fp
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 976
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$s5, $sp, 976
	ld.w	$a2, $sp, 980
	ld.w	$a3, $sp, 984
	slt	$a0, $s5, $a2
	masknez	$a1, $s5, $a0
	st.d	$a2, $sp, 784                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	blez	$a0, .LBB4_24
# %bb.7:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blez	$a0, .LBB4_24
# %bb.8:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	blez	$a0, .LBB4_24
# %bb.9:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$s5, .LBB4_24
# %bb.10:                               # %.preheader485.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $t0, 4
	ld.w	$a1, $t0, 16
	move	$t3, $zero
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
	sub.d	$a4, $a3, $s5
	st.d	$a4, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 784                   # 8-byte Folded Reload
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
	addi.d	$a0, $s5, -1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a1, $a0, $s8, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s6, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s4, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $ra, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s3, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $s5, 3
	bstrpick.d	$a0, $a0, 33, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %._crit_edge496.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	addi.w	$t3, $t3, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$t3, $a0, .LBB4_24
.LBB4_12:                               # %.preheader485.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_23 Depth 4
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_11
.LBB4_14:                               # %.preheader483.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_23 Depth 4
	st.d	$a1, $sp, 944                   # 8-byte Folded Spill
	ori	$a0, $zero, 38
	bgeu	$s5, $a0, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	move	$a4, $zero
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_16:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	alsl.d	$t3, $a6, $s8, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a0, 3
	alsl.d	$t8, $a6, $t1, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a0, 3
	alsl.d	$t5, $a6, $s6, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	alsl.d	$t6, $a6, $s4, 3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a0, 3
	alsl.d	$t7, $a6, $s7, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a0, 3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s4, $a6, $a0, 3
	alsl.d	$ra, $a6, $ra, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a1, 3
	alsl.d	$a5, $a6, $t2, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a1, 3
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a1, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a1, 3
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a1, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a1, 3
	alsl.d	$a7, $a6, $s2, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a1, 3
	ld.d	$a1, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $a1, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a1, 3
	st.d	$s2, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a1, 3
	alsl.d	$a1, $a6, $s3, 3
	ld.d	$t2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t2, 3
	st.d	$t2, $sp, 896                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr19, $t0, 0
	ld.d	$t2, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $t2, 3
	vori.b	$vr1, $vr19, 0
	vinsgr2vr.d	$vr12, $a3, 0
	vinsgr2vr.d	$vr1, $t6, 1
	vori.b	$vr2, $vr12, 0
	vinsgr2vr.d	$vr0, $a5, 0
	vinsgr2vr.d	$vr2, $t6, 1
	vori.b	$vr3, $vr0, 0
	vori.b	$vr10, $vr0, 0
	vinsgr2vr.d	$vr17, $s8, 0
	vinsgr2vr.d	$vr3, $t6, 1
	vori.b	$vr5, $vr17, 0
	vinsgr2vr.d	$vr24, $t5, 0
	vinsgr2vr.d	$vr5, $t6, 1
	vori.b	$vr6, $vr24, 0
	vinsgr2vr.d	$vr6, $t6, 1
	vori.b	$vr8, $vr24, 0
	vinsgr2vr.d	$vr8, $a1, 1
	vori.b	$vr9, $vr24, 0
	vinsgr2vr.d	$vr9, $t0, 1
	vinsgr2vr.d	$vr29, $a2, 0
	vinsgr2vr.d	$vr11, $a1, 0
	vori.b	$vr7, $vr17, 0
	vinsgr2vr.d	$vr7, $t7, 1
	vinsgr2vr.d	$vr31, $t6, 0
	vst	$vr31, $sp, 688                 # 16-byte Folded Spill
	vori.b	$vr15, $vr24, 0
	vinsgr2vr.d	$vr15, $a5, 1
	vori.b	$vr16, $vr24, 0
	vinsgr2vr.d	$vr4, $t8, 0
	vinsgr2vr.d	$vr16, $s8, 1
	vori.b	$vr0, $vr4, 0
	vinsgr2vr.d	$vr0, $a1, 1
	vori.b	$vr21, $vr4, 0
	vinsgr2vr.d	$vr21, $t0, 1
	vori.b	$vr22, $vr4, 0
	vinsgr2vr.d	$vr22, $a3, 1
	vori.b	$vr23, $vr4, 0
	vinsgr2vr.d	$vr23, $a5, 1
	vori.b	$vr27, $vr4, 0
	vinsgr2vr.d	$vr27, $s8, 1
	vinsgr2vr.d	$vr30, $s3, 0
	vinsgr2vr.d	$vr26, $t1, 0
	st.d	$a4, $sp, 928                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr18, $a4, 0
	vinsgr2vr.d	$vr13, $a0, 0
	vinsgr2vr.d	$vr14, $fp, 0
	vinsgr2vr.d	$vr25, $t4, 0
	vinsgr2vr.d	$vr20, $s7, 0
	vori.b	$vr28, $vr14, 0
	vinsgr2vr.d	$vr28, $s5, 1
	vslt.du	$vr27, $vr27, $vr28
	vori.b	$vr28, $vr20, 0
	vinsgr2vr.d	$vr28, $s5, 1
	vslt.du	$vr28, $vr23, $vr28
	vori.b	$vr23, $vr25, 0
	vpickev.w	$vr27, $vr28, $vr27
	vori.b	$vr28, $vr13, 0
	vinsgr2vr.d	$vr28, $s5, 1
	vslt.du	$vr22, $vr22, $vr28
	vori.b	$vr28, $vr18, 0
	vinsgr2vr.d	$vr28, $s5, 1
	vslt.du	$vr21, $vr21, $vr28
	vori.b	$vr28, $vr25, 0
	vpickev.w	$vr21, $vr21, $vr22
	vori.b	$vr22, $vr30, 0
	vst	$vr30, $sp, 640                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr22, $s6, 1
	vpickev.h	$vr21, $vr21, $vr27
	vori.b	$vr27, $vr26, 0
	vinsgr2vr.d	$vr27, $s5, 1
	vslt.du	$vr27, $vr0, $vr27
	vori.b	$vr0, $vr4, 0
	vinsgr2vr.d	$vr0, $t6, 1
	vslt.du	$vr22, $vr0, $vr22
	vpickev.w	$vr22, $vr22, $vr27
	vori.b	$vr27, $vr14, 0
	vinsgr2vr.d	$vr27, $s6, 1
	vslt.du	$vr16, $vr16, $vr27
	vori.b	$vr27, $vr20, 0
	vinsgr2vr.d	$vr27, $s6, 1
	vslt.du	$vr15, $vr15, $vr27
	vori.b	$vr27, $vr25, 0
	vpickev.w	$vr15, $vr15, $vr16
	vori.b	$vr16, $vr25, 0
	vpickev.h	$vr15, $vr15, $vr22
	vori.b	$vr22, $vr25, 0
	vpickev.b	$vr15, $vr15, $vr21
	vst	$vr15, $sp, 720                 # 16-byte Folded Spill
	vori.b	$vr15, $vr25, 0
	vinsgr2vr.d	$vr4, $t3, 1
	vinsgr2vr.d	$vr25, $s6, 1
	vslt.du	$vr4, $vr4, $vr25
	vori.b	$vr21, $vr31, 0
	vinsgr2vr.d	$vr21, $t3, 1
	vinsgr2vr.d	$vr15, $fp, 1
	vslt.du	$vr15, $vr21, $vr15
	vori.b	$vr21, $vr11, 0
	vinsgr2vr.d	$vr21, $t6, 1
	vpickev.w	$vr4, $vr15, $vr4
	vori.b	$vr15, $vr17, 0
	vinsgr2vr.d	$vr15, $t3, 1
	vinsgr2vr.d	$vr22, $s7, 1
	vslt.du	$vr15, $vr15, $vr22
	vst	$vr10, $sp, 704                 # 16-byte Folded Spill
	vori.b	$vr22, $vr10, 0
	vinsgr2vr.d	$vr22, $t3, 1
	vinsgr2vr.d	$vr16, $a0, 1
	vslt.du	$vr16, $vr22, $vr16
	vori.b	$vr22, $vr11, 0
	vori.b	$vr31, $vr11, 0
	vst	$vr11, $sp, 656                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr22, $t3, 1
	vpickev.w	$vr15, $vr16, $vr15
	vori.b	$vr16, $vr19, 0
	vinsgr2vr.d	$vr16, $t3, 1
	vpickev.h	$vr15, $vr15, $vr4
	vori.b	$vr4, $vr12, 0
	vinsgr2vr.d	$vr4, $t3, 1
	vinsgr2vr.d	$vr27, $a4, 1
	vslt.du	$vr25, $vr4, $vr27
	vinsgr2vr.d	$vr4, $s1, 0
	vinsgr2vr.d	$vr28, $t1, 1
	vslt.du	$vr16, $vr16, $vr28
	vori.b	$vr27, $vr14, 0
	vpickev.w	$vr25, $vr16, $vr25
	vinsgr2vr.d	$vr16, $s6, 0
	vinsgr2vr.d	$vr23, $s3, 1
	vslt.du	$vr22, $vr22, $vr23
	vori.b	$vr23, $vr16, 0
	vinsgr2vr.d	$vr23, $s5, 1
	vslt.du	$vr23, $vr0, $vr23
	vpickev.w	$vr22, $vr23, $vr22
	vori.b	$vr23, $vr14, 0
	vpickev.h	$vr22, $vr22, $vr25
	vori.b	$vr25, $vr14, 0
	vpickev.b	$vr11, $vr22, $vr15
	vst	$vr11, $sp, 672                 # 16-byte Folded Spill
	vori.b	$vr15, $vr4, 0
	vinsgr2vr.d	$vr15, $s3, 1
	vslt.du	$vr15, $vr21, $vr15
	vori.b	$vr21, $vr14, 0
	vinsgr2vr.d	$vr14, $s7, 1
	vslt.du	$vr7, $vr7, $vr14
	vst	$vr29, $sp, 736                 # 16-byte Folded Spill
	vori.b	$vr14, $vr29, 0
	vinsgr2vr.d	$vr14, $s8, 1
	vpickev.w	$vr15, $vr7, $vr15
	vori.b	$vr7, $vr10, 0
	vinsgr2vr.d	$vr7, $t7, 1
	vinsgr2vr.d	$vr21, $a0, 1
	vslt.du	$vr21, $vr7, $vr21
	vori.b	$vr7, $vr12, 0
	vinsgr2vr.d	$vr7, $t7, 1
	vinsgr2vr.d	$vr25, $a4, 1
	vslt.du	$vr22, $vr7, $vr25
	vinsgr2vr.d	$vr11, $ra, 0
	vpickev.w	$vr21, $vr22, $vr21
	vori.b	$vr22, $vr11, 0
	vinsgr2vr.d	$vr22, $s8, 1
	vpickev.h	$vr21, $vr21, $vr15
	vori.b	$vr15, $vr19, 0
	vinsgr2vr.d	$vr15, $t7, 1
	vinsgr2vr.d	$vr23, $t1, 1
	vslt.du	$vr23, $vr15, $vr23
	vori.b	$vr15, $vr31, 0
	vinsgr2vr.d	$vr15, $t7, 1
	vinsgr2vr.d	$vr27, $s3, 1
	vslt.du	$vr25, $vr15, $vr27
	vinsgr2vr.d	$vr15, $s4, 0
	vpickev.w	$vr23, $vr25, $vr23
	vori.b	$vr25, $vr15, 0
	move	$t2, $s0
	vinsgr2vr.d	$vr25, $s0, 1
	vslt.du	$vr14, $vr14, $vr25
	vori.b	$vr7, $vr15, 0
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr7, $s0, 1
	vst	$vr7, $sp, 752                  # 16-byte Folded Spill
	vslt.du	$vr22, $vr22, $vr7
	vpickev.w	$vr14, $vr14, $vr22
	vori.b	$vr22, $vr24, 0
	vinsgr2vr.d	$vr22, $a3, 1
	vpickev.h	$vr14, $vr14, $vr23
	vori.b	$vr23, $vr4, 0
	vinsgr2vr.d	$vr23, $t1, 1
	vpickev.b	$vr7, $vr14, $vr21
	vst	$vr7, $sp, 624                  # 16-byte Folded Spill
	vori.b	$vr14, $vr13, 0
	vinsgr2vr.d	$vr14, $s6, 1
	vslt.du	$vr14, $vr22, $vr14
	vori.b	$vr21, $vr18, 0
	vinsgr2vr.d	$vr21, $s6, 1
	vslt.du	$vr9, $vr9, $vr21
	vori.b	$vr21, $vr4, 0
	vinsgr2vr.d	$vr21, $a4, 1
	vpickev.w	$vr9, $vr9, $vr14
	vori.b	$vr14, $vr26, 0
	vinsgr2vr.d	$vr14, $s6, 1
	vslt.du	$vr8, $vr8, $vr14
	vori.b	$vr14, $vr30, 0
	vinsgr2vr.d	$vr14, $fp, 1
	vslt.du	$vr6, $vr6, $vr14
	vori.b	$vr14, $vr4, 0
	vinsgr2vr.d	$vr14, $a0, 1
	vpickev.w	$vr6, $vr6, $vr8
	vori.b	$vr8, $vr4, 0
	vinsgr2vr.d	$vr8, $s7, 1
	vpickev.h	$vr6, $vr6, $vr9
	vslt.du	$vr5, $vr5, $vr8
	vslt.du	$vr3, $vr3, $vr14
	vpickev.w	$vr3, $vr3, $vr5
	vslt.du	$vr2, $vr2, $vr21
	vslt.du	$vr1, $vr1, $vr23
	vpickev.w	$vr1, $vr1, $vr2
	vpickev.h	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $t7, 0
	vpickev.b	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 608                  # 16-byte Folded Spill
	vori.b	$vr22, $vr2, 0
	vori.b	$vr23, $vr29, 0
	vinsgr2vr.d	$vr23, $a7, 1
	vori.b	$vr5, $vr2, 0
	vinsgr2vr.d	$vr6, $s5, 0
	vinsgr2vr.d	$vr2, $t8, 1
	vori.b	$vr1, $vr6, 0
	vori.b	$vr3, $vr6, 0
	vori.b	$vr8, $vr6, 0
	vori.b	$vr9, $vr6, 0
	vinsgr2vr.d	$vr6, $s4, 1
	vslt.du	$vr2, $vr2, $vr6
	vori.b	$vr6, $vr11, 0
	vinsgr2vr.d	$vr6, $t8, 1
	vinsgr2vr.d	$vr9, $s0, 1
	vslt.du	$vr6, $vr6, $vr9
	vori.b	$vr9, $vr23, 0
	vshuf4i.d	$vr9, $vr0, 9
	vpickev.w	$vr2, $vr6, $vr2
	vinsgr2vr.d	$vr14, $s2, 0
	vinsgr2vr.d	$vr3, $t4, 1
	vori.b	$vr27, $vr14, 0
	ld.d	$s2, $sp, 896                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr27, $s2, 1
	vpackev.d	$vr6, $vr27, $vr3
	vslt.du	$vr6, $vr9, $vr6
	move	$a4, $t2
	vinsgr2vr.d	$vr8, $t2, 1
	vpackev.d	$vr9, $vr0, $vr23
	vslt.du	$vr8, $vr9, $vr8
	vpickev.w	$vr6, $vr6, $vr8
	vinsgr2vr.d	$vr5, $t5, 1
	vpickev.h	$vr2, $vr6, $vr2
	vori.b	$vr7, $vr16, 0
	vori.b	$vr25, $vr16, 0
	vori.b	$vr28, $vr16, 0
	vori.b	$vr6, $vr16, 0
	vinsgr2vr.d	$vr16, $s4, 1
	vslt.du	$vr5, $vr5, $vr16
	vori.b	$vr8, $vr11, 0
	vinsgr2vr.d	$vr8, $t5, 1
	vinsgr2vr.d	$vr6, $s0, 1
	vslt.du	$vr6, $vr8, $vr6
	vpickev.w	$vr5, $vr6, $vr5
	ld.d	$t2, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $t2, 3
	vinsgr2vr.d	$vr6, $t3, 0
	ld.d	$t2, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $t2, 3
	vori.b	$vr31, $vr6, 0
	vinsgr2vr.d	$vr16, $s5, 0
	st.d	$t5, $sp, 448                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr31, $t5, 1
	vori.b	$vr21, $vr16, 0
	vinsgr2vr.d	$vr21, $s6, 1
	vori.b	$vr8, $vr3, 0
	vshuf4i.d	$vr8, $vr27, 12
	vpackev.d	$vr9, $vr0, $vr21
	vslt.du	$vr8, $vr9, $vr8
	vori.b	$vr9, $vr31, 0
	vinsgr2vr.d	$vr9, $s6, 0
	vinsgr2vr.d	$vr1, $s1, 1
	vslt.du	$vr9, $vr9, $vr1
	vpickev.w	$vr8, $vr9, $vr8
	vpickev.h	$vr5, $vr5, $vr8
	vpickev.b	$vr2, $vr5, $vr2
	vst	$vr2, $sp, 592                  # 16-byte Folded Spill
	vori.b	$vr2, $vr6, 0
	vinsgr2vr.d	$vr6, $t7, 1
	vori.b	$vr5, $vr4, 0
	vinsgr2vr.d	$vr4, $t4, 1
	vslt.du	$vr4, $vr6, $vr4
	vslt.du	$vr6, $vr31, $vr3
	vpickev.w	$vr4, $vr4, $vr6
	vinsgr2vr.d	$vr2, $ra, 1
	vori.b	$vr6, $vr15, 0
	vinsgr2vr.d	$vr6, $t4, 1
	vinsgr2vr.d	$vr10, $s0, 0
	move	$t2, $s0
	vslt.du	$vr2, $vr2, $vr6
	vori.b	$vr6, $vr10, 0
	vinsgr2vr.d	$vr6, $t4, 1
	vpackev.d	$vr8, $vr23, $vr31
	vslt.du	$vr6, $vr8, $vr6
	vpickev.w	$vr2, $vr6, $vr2
	vpickev.h	$vr4, $vr2, $vr4
	vori.b	$vr2, $vr3, 0
	vshuf4i.d	$vr2, $vr27, 6
	vpackev.d	$vr6, $vr21, $vr31
	vslt.du	$vr6, $vr6, $vr2
	vori.b	$vr8, $vr31, 0
	vinsgr2vr.d	$vr2, $a4, 0
	move	$s0, $a4
	vshuf4i.d	$vr8, $vr23, 12
	vori.b	$vr9, $vr2, 0
	vinsgr2vr.d	$vr9, $t4, 1
	vslt.du	$vr8, $vr8, $vr9
	vpickev.w	$vr6, $vr6, $vr8
	st.d	$t8, $sp, 456                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr24, $t8, 1
	vslt.du	$vr1, $vr24, $vr1
	vori.b	$vr8, $vr31, 0
	vshuf4i.d	$vr8, $vr21, 12
	vinsgr2vr.d	$vr3, $s2, 0
	vslt.du	$vr3, $vr8, $vr3
	vpickev.w	$vr1, $vr1, $vr3
	vpickev.h	$vr1, $vr1, $vr6
	vpickev.b	$vr1, $vr1, $vr4
	vst	$vr1, $sp, 576                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr5, $s4, 1
	vpackev.d	$vr1, $vr5, $vr27
	vst	$vr1, $sp, 560                  # 16-byte Folded Spill
	vshuf4i.d	$vr5, $vr27, 3
	vpackod.d	$vr1, $vr21, $vr0
	vslt.du	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr22, $ra, 1
	vori.b	$vr3, $vr15, 0
	vinsgr2vr.d	$vr3, $fp, 1
	vslt.du	$vr3, $vr22, $vr3
	vpickev.w	$vr30, $vr3, $vr1
	vori.b	$vr9, $vr21, 0
	vshuf4i.d	$vr9, $vr0, 3
	vinsgr2vr.d	$vr1, $a2, 1
	vpackod.d	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 528                  # 16-byte Folded Spill
	vpackod.d	$vr0, $vr23, $vr0
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	vori.b	$vr4, $vr31, 0
	vshuf4i.d	$vr4, $vr23, 6
	vori.b	$vr3, $vr22, 0
	vshuf4i.d	$vr3, $vr23, 12
	vori.b	$vr5, $vr2, 0
	vori.b	$vr1, $vr2, 0
	vori.b	$vr24, $vr2, 0
	vori.b	$vr6, $vr2, 0
	vori.b	$vr8, $vr2, 0
	vori.b	$vr0, $vr2, 0
	vinsgr2vr.d	$vr2, $a0, 1
	vslt.du	$vr2, $vr23, $vr2
	vst	$vr2, $sp, 496                  # 16-byte Folded Spill
	vpackev.d	$vr23, $vr23, $vr22
	vori.b	$vr29, $vr10, 0
	vinsgr2vr.d	$vr29, $fp, 1
	vslt.du	$vr23, $vr23, $vr29
	vinsgr2vr.d	$vr1, $fp, 1
	vslt.du	$vr1, $vr3, $vr1
	vpickev.w	$vr1, $vr1, $vr23
	vpickev.h	$vr1, $vr1, $vr30
	vori.b	$vr3, $vr17, 0
	vinsgr2vr.d	$vr3, $a3, 1
	vori.b	$vr23, $vr13, 0
	vinsgr2vr.d	$vr23, $s4, 1
	vslt.du	$vr3, $vr3, $vr23
	vori.b	$vr23, $vr17, 0
	vinsgr2vr.d	$vr23, $a5, 1
	vori.b	$vr29, $vr20, 0
	vinsgr2vr.d	$vr29, $s4, 1
	vslt.du	$vr29, $vr23, $vr29
	vpickev.w	$vr3, $vr3, $vr29
	vinsgr2vr.d	$vr7, $fp, 1
	vori.b	$vr29, $vr27, 0
	vshuf4i.d	$vr29, $vr7, 12
	vpackev.d	$vr2, $vr21, $vr22
	vslt.du	$vr2, $vr2, $vr29
	vpackev.d	$vr27, $vr27, $vr7
	vori.b	$vr29, $vr22, 0
	vshuf4i.d	$vr29, $vr21, 12
	vori.b	$vr30, $vr7, 0
	vinsgr2vr.d	$vr7, $s2, 0
	vslt.du	$vr7, $vr29, $vr7
	vpickev.w	$vr2, $vr7, $vr2
	vpickev.h	$vr2, $vr3, $vr2
	vpickev.b	$vr1, $vr2, $vr1
	vinsgr2vr.d	$vr28, $a4, 1
	vslt.du	$vr2, $vr4, $vr28
	vori.b	$vr3, $vr31, 0
	vinsgr2vr.d	$vr3, $a7, 0
	vslt.du	$vr3, $vr3, $vr27
	vpickev.w	$vr2, $vr3, $vr2
	vshuf4i.d	$vr31, $vr21, 6
	vinsgr2vr.d	$vr30, $s2, 1
	vslt.du	$vr3, $vr31, $vr30
	vshuf4i.d	$vr22, $vr21, 3
	vinsgr2vr.d	$vr25, $s1, 1
	vslt.du	$vr4, $vr22, $vr25
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vld	$vr4, $sp, 688                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr4, $ra, 1
	vori.b	$vr3, $vr15, 0
	vinsgr2vr.d	$vr3, $s1, 1
	vslt.du	$vr3, $vr4, $vr3
	vori.b	$vr4, $vr10, 0
	vinsgr2vr.d	$vr4, $s1, 1
	vld	$vr7, $sp, 528                  # 16-byte Folded Reload
	vslt.du	$vr4, $vr7, $vr4
	vpickev.w	$vr3, $vr4, $vr3
	vld	$vr4, $sp, 560                  # 16-byte Folded Reload
	vslt.du	$vr4, $vr9, $vr4
	vinsgr2vr.d	$vr5, $s1, 1
	vld	$vr7, $sp, 544                  # 16-byte Folded Reload
	vslt.du	$vr5, $vr7, $vr5
	vpickev.w	$vr4, $vr4, $vr5
	vpickev.h	$vr3, $vr4, $vr3
	vpickev.b	$vr2, $vr3, $vr2
	vld	$vr3, $sp, 608                  # 16-byte Folded Reload
	vand.v	$vr25, $vr3, $vr2
	vld	$vr2, $sp, 624                  # 16-byte Folded Reload
	vand.v	$vr4, $vr2, $vr1
	vld	$vr1, $sp, 672                  # 16-byte Folded Reload
	vld	$vr2, $sp, 576                  # 16-byte Folded Reload
	vand.v	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 720                  # 16-byte Folded Reload
	vld	$vr3, $sp, 592                  # 16-byte Folded Reload
	vand.v	$vr3, $vr2, $vr3
	vori.b	$vr9, $vr12, 0
	vori.b	$vr2, $vr19, 0
	vinsgr2vr.d	$vr19, $a5, 1
	vori.b	$vr22, $vr10, 0
	vori.b	$vr5, $vr10, 0
	move	$a4, $t1
	st.d	$t1, $sp, 488                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr10, $t1, 1
	vslt.du	$vr7, $vr19, $vr10
	vld	$vr30, $sp, 656                 # 16-byte Folded Reload
	vori.b	$vr10, $vr30, 0
	vinsgr2vr.d	$vr10, $a5, 1
	st.d	$s3, $sp, 472                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr5, $s3, 1
	vslt.du	$vr5, $vr10, $vr5
	vori.b	$vr10, $vr12, 0
	vpickev.w	$vr5, $vr5, $vr7
	vori.b	$vr7, $vr12, 0
	vori.b	$vr19, $vr12, 0
	vinsgr2vr.d	$vr12, $a2, 1
	vori.b	$vr27, $vr13, 0
	vori.b	$vr28, $vr13, 0
	vori.b	$vr29, $vr13, 0
	ld.d	$t1, $sp, 928                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr13, $t1, 1
	vslt.du	$vr12, $vr12, $vr13
	vinsgr2vr.d	$vr2, $a2, 1
	vinsgr2vr.d	$vr29, $a4, 1
	vslt.du	$vr2, $vr2, $vr29
	vpickev.w	$vr2, $vr2, $vr12
	vpickev.h	$vr2, $vr2, $vr5
	vori.b	$vr5, $vr30, 0
	vinsgr2vr.d	$vr5, $a2, 1
	vinsgr2vr.d	$vr28, $s3, 1
	vslt.du	$vr5, $vr5, $vr28
	vinsgr2vr.d	$vr19, $t0, 1
	vori.b	$vr12, $vr18, 0
	st.d	$s0, $sp, 480                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr12, $s0, 1
	vslt.du	$vr12, $vr19, $vr12
	vinsgr2vr.d	$vr10, $a7, 1
	vinsgr2vr.d	$vr7, $a1, 1
	vpickev.w	$vr5, $vr12, $vr5
	vori.b	$vr12, $vr26, 0
	vinsgr2vr.d	$vr12, $s0, 1
	vslt.du	$vr7, $vr7, $vr12
	vld	$vr28, $sp, 640                 # 16-byte Folded Reload
	vori.b	$vr12, $vr28, 0
	ld.d	$s1, $sp, 912                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr12, $s1, 1
	vslt.du	$vr10, $vr10, $vr12
	vld	$vr31, $sp, 704                 # 16-byte Folded Reload
	vori.b	$vr13, $vr31, 0
	vinsgr2vr.d	$vr13, $a3, 1
	vpickve2gr.b	$a4, $vr25, 0
	vpickve2gr.b	$t5, $vr25, 1
	st.d	$t5, $sp, 688                   # 8-byte Folded Spill
	vpickve2gr.b	$t5, $vr25, 2
	st.d	$t5, $sp, 720                   # 8-byte Folded Spill
	vpickev.w	$vr7, $vr10, $vr7
	vori.b	$vr10, $vr26, 0
	vinsgr2vr.d	$vr10, $s4, 1
	vpickev.h	$vr5, $vr7, $vr5
	vori.b	$vr7, $vr18, 0
	vinsgr2vr.d	$vr7, $s4, 1
	vpickve2gr.b	$t5, $vr25, 3
	st.d	$t5, $sp, 672                   # 8-byte Folded Spill
	vpickev.b	$vr5, $vr5, $vr2
	vori.b	$vr2, $vr17, 0
	vinsgr2vr.d	$vr2, $a1, 1
	vinsgr2vr.d	$vr17, $t0, 1
	vslt.du	$vr7, $vr17, $vr7
	vori.b	$vr12, $vr26, 0
	vinsgr2vr.d	$vr12, $s7, 1
	vslt.du	$vr2, $vr2, $vr10
	vori.b	$vr10, $vr18, 0
	vinsgr2vr.d	$vr10, $s7, 1
	vinsgr2vr.d	$vr27, $s7, 1
	vpickev.w	$vr2, $vr2, $vr7
	vori.b	$vr7, $vr28, 0
	vinsgr2vr.d	$vr7, $s7, 1
	vpickve2gr.b	$fp, $vr25, 4
	vinsgr2vr.d	$vr9, $a5, 1
	vslt.du	$vr7, $vr23, $vr7
	vori.b	$vr17, $vr11, 0
	vinsgr2vr.d	$vr17, $a3, 1
	vslt.du	$vr17, $vr17, $vr27
	vori.b	$vr19, $vr11, 0
	vinsgr2vr.d	$vr19, $a5, 1
	vpickev.w	$vr7, $vr17, $vr7
	vori.b	$vr17, $vr11, 0
	vinsgr2vr.d	$vr17, $a1, 1
	vpickev.h	$vr2, $vr7, $vr2
	vori.b	$vr7, $vr11, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr22, $t1, 1
	vslt.du	$vr7, $vr7, $vr10
	vori.b	$vr10, $vr28, 0
	vori.b	$vr29, $vr28, 0
	move	$s0, $a0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr10, $a0, 1
	vslt.du	$vr12, $vr17, $vr12
	vpickev.w	$vr7, $vr12, $vr7
	vslt.du	$vr10, $vr19, $vr10
	vslt.du	$vr9, $vr9, $vr22
	vpickev.w	$vr9, $vr9, $vr10
	vpickev.h	$vr7, $vr9, $vr7
	vinsgr2vr.d	$vr9, $a7, 0
	vpickev.b	$vr7, $vr7, $vr2
	vori.b	$vr23, $vr9, 0
	st.d	$s8, $sp, 624                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr23, $s8, 1
	vinsgr2vr.d	$vr11, $a2, 1
	vpackev.d	$vr10, $vr11, $vr21
	vori.b	$vr19, $vr21, 0
	vshuf4i.d	$vr19, $vr13, 12
	vpackev.d	$vr2, $vr21, $vr13
	vinsgr2vr.d	$vr13, $s6, 1
	vinsgr2vr.d	$vr12, $s2, 0
	vori.b	$vr17, $vr14, 0
	move	$t8, $t2
	vinsgr2vr.d	$vr17, $t2, 1
	vslt.du	$vr2, $vr2, $vr17
	vori.b	$vr27, $vr12, 0
	vinsgr2vr.d	$vr12, $t2, 1
	vslt.du	$vr12, $vr13, $vr12
	vori.b	$vr13, $vr21, 0
	vpickev.w	$vr28, $vr12, $vr2
	vori.b	$vr22, $vr15, 0
	vinsgr2vr.d	$vr15, $s1, 1
	vslt.du	$vr15, $vr23, $vr15
	vshuf4i.d	$vr23, $vr21, 6
	vpickve2gr.b	$s7, $vr25, 5
	vpickve2gr.b	$s8, $vr25, 6
	vpickve2gr.b	$t2, $vr25, 7
	vpickve2gr.b	$t1, $vr25, 8
	vpickve2gr.b	$a0, $vr25, 9
	vpickve2gr.b	$t4, $vr25, 10
	vpickve2gr.b	$s3, $vr25, 11
	vpickve2gr.b	$s2, $vr25, 12
	vpickve2gr.b	$s1, $vr25, 13
	vpickve2gr.b	$s4, $vr25, 14
	vpickve2gr.b	$t5, $vr25, 15
	vpackod.d	$vr25, $vr21, $vr11
	vshuf4i.d	$vr21, $vr11, 3
	vori.b	$vr2, $vr14, 0
	vinsgr2vr.d	$vr2, $s0, 1
	vslt.du	$vr2, $vr21, $vr2
	ld.d	$s0, $sp, 688                   # 8-byte Folded Reload
	andi	$s0, $s0, 1
	bstrins.d	$a4, $s0, 63, 1
	ld.d	$s0, $sp, 720                   # 8-byte Folded Reload
	bstrins.d	$a4, $s0, 2, 2
	ld.d	$s0, $sp, 672                   # 8-byte Folded Reload
	bstrins.d	$a4, $s0, 3, 3
	bstrins.d	$a4, $fp, 4, 4
	bstrins.d	$a4, $s7, 5, 5
	andi	$fp, $s8, 1
	slli.d	$fp, $fp, 6
	or	$a4, $a4, $fp
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 7
	or	$a4, $a4, $t2
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 8
	or	$a4, $a4, $t1
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 9
	or	$a0, $a4, $a0
	andi	$a4, $t4, 1
	slli.d	$a4, $a4, 10
	or	$a0, $a0, $a4
	andi	$a4, $s3, 1
	ld.d	$s3, $sp, 896                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 11
	or	$a0, $a0, $a4
	andi	$a4, $s2, 1
	slli.d	$a4, $a4, 12
	or	$a0, $a0, $a4
	andi	$a4, $s1, 1
	slli.d	$a4, $a4, 13
	or	$a0, $a0, $a4
	andi	$a4, $s4, 1
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 14
	or	$a0, $a0, $a4
	slli.d	$a4, $t5, 15
	or	$a0, $a0, $a4
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr4, 0
	vpickve2gr.b	$a4, $vr4, 1
	andi	$a4, $a4, 1
	bstrins.d	$a0, $a4, 63, 1
	vpickve2gr.b	$a4, $vr4, 2
	bstrins.d	$a0, $a4, 2, 2
	vpickve2gr.b	$a4, $vr4, 3
	bstrins.d	$a0, $a4, 3, 3
	vpickve2gr.b	$a4, $vr4, 4
	bstrins.d	$a0, $a4, 4, 4
	vpickve2gr.b	$a4, $vr4, 5
	bstrins.d	$a0, $a4, 5, 5
	vpickve2gr.b	$a4, $vr4, 6
	andi	$a4, $a4, 1
	slli.d	$a4, $a4, 6
	or	$s1, $a0, $a4
	vpickve2gr.b	$s8, $vr4, 7
	vpickve2gr.b	$s7, $vr4, 8
	vpickve2gr.b	$a4, $vr4, 9
	vld	$vr12, $sp, 496                 # 16-byte Folded Reload
	vpickev.w	$vr12, $vr2, $vr12
	vori.b	$vr2, $vr20, 0
	vinsgr2vr.d	$vr2, $t8, 1
	vinsgr2vr.d	$vr24, $t8, 1
	vpickve2gr.b	$t1, $vr4, 10
	vpickev.h	$vr28, $vr12, $vr28
	vori.b	$vr12, $vr9, 0
	vinsgr2vr.d	$vr12, $a3, 1
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vslt.du	$vr12, $vr12, $vr0
	vori.b	$vr0, $vr20, 0
	vinsgr2vr.d	$vr0, $a0, 1
	vpickve2gr.b	$a0, $vr4, 11
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr27, $t2, 1
	vpickve2gr.b	$t2, $vr4, 12
	vslt.du	$vr17, $vr25, $vr27
	vori.b	$vr21, $vr20, 0
	ld.d	$t4, $sp, 480                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr20, $t4, 1
	vpickve2gr.b	$t4, $vr4, 13
	ld.d	$t5, $sp, 928                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr8, $t5, 1
	vpickev.w	$vr12, $vr12, $vr17
	vori.b	$vr25, $vr26, 0
	vinsgr2vr.d	$vr26, $t5, 1
	vpickve2gr.b	$fp, $vr4, 14
	vpickve2gr.b	$s0, $vr4, 15
	vori.b	$vr4, $vr14, 0
	ld.d	$t5, $sp, 488                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr29, $t5, 1
	vinsgr2vr.d	$vr14, $t5, 1
	vinsgr2vr.d	$vr6, $s3, 1
	vslt.du	$vr6, $vr19, $vr6
	vinsgr2vr.d	$vr17, $s6, 0
	vinsgr2vr.d	$vr17, $t0, 1
	vslt.du	$vr8, $vr17, $vr8
	vpickev.w	$vr6, $vr8, $vr6
	vpickev.h	$vr6, $vr6, $vr12
	vpickev.b	$vr6, $vr6, $vr28
	vinsgr2vr.d	$vr22, $s3, 1
	vslt.du	$vr8, $vr23, $vr22
	vpickev.w	$vr8, $vr8, $vr15
	vld	$vr12, $sp, 736                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr12, $ra, 1
	vslt.du	$vr12, $vr12, $vr20
	vshuf4i.d	$vr13, $vr11, 9
	vld	$vr15, $sp, 752                 # 16-byte Folded Reload
	vslt.du	$vr13, $vr13, $vr15
	vpickev.w	$vr12, $vr12, $vr13
	vpickev.h	$vr8, $vr12, $vr8
	vori.b	$vr12, $vr9, 0
	vinsgr2vr.d	$vr12, $ra, 1
	vslt.du	$vr0, $vr12, $vr0
	vinsgr2vr.d	$vr21, $s3, 1
	vslt.du	$vr10, $vr10, $vr21
	vpickev.w	$vr0, $vr10, $vr0
	vori.b	$vr10, $vr31, 0
	vinsgr2vr.d	$vr10, $a7, 1
	vslt.du	$vr10, $vr10, $vr24
	vinsgr2vr.d	$vr11, $s6, 0
	vslt.du	$vr2, $vr11, $vr2
	vpickev.w	$vr2, $vr10, $vr2
	vpickev.h	$vr0, $vr2, $vr0
	vpickev.b	$vr0, $vr0, $vr8
	vand.v	$vr0, $vr7, $vr0
	vand.v	$vr5, $vr5, $vr6
	vori.b	$vr2, $vr9, 0
	vinsgr2vr.d	$vr9, $a1, 1
	vslt.du	$vr6, $vr9, $vr26
	vinsgr2vr.d	$vr2, $t0, 1
	vslt.du	$vr2, $vr2, $vr29
	vpickev.w	$vr2, $vr2, $vr6
	vori.b	$vr7, $vr30, 0
	vori.b	$vr6, $vr30, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr4, $s4, 1
	vslt.du	$vr4, $vr7, $vr4
	vinsgr2vr.d	$vr6, $s5, 1
	vinsgr2vr.d	$vr25, $s4, 1
	vslt.du	$vr6, $vr6, $vr25
	vpickev.w	$vr4, $vr6, $vr4
	vpickev.h	$vr2, $vr4, $vr2
	vinsgr2vr.d	$vr16, $a7, 1
	vpackev.d	$vr4, $vr16, $vr17
	vinsgr2vr.d	$vr18, $s3, 1
	vpackev.d	$vr6, $vr14, $vr18
	vslt.du	$vr4, $vr4, $vr6
	vslt.du	$vr6, $vr16, $vr18
	vpickev.w	$vr4, $vr4, $vr6
	vshuf4i.d	$vr17, $vr0, 1
	vshuf4i.d	$vr18, $vr14, 9
	vslt.du	$vr6, $vr17, $vr18
	vinsgr2vr.d	$vr14, $s3, 0
	vinsgr2vr.d	$vr16, $s6, 1
	vslt.du	$vr7, $vr16, $vr14
	vpickev.w	$vr6, $vr7, $vr6
	vpickev.h	$vr4, $vr6, $vr4
	vand.v	$vr2, $vr2, $vr4
	vor.v	$vr3, $vr3, $vr5
	andi	$t5, $s8, 1
	slli.d	$t5, $t5, 7
	or	$t5, $s1, $t5
	andi	$s1, $s7, 1
	slli.d	$s1, $s1, 8
	or	$t5, $t5, $s1
	andi	$a4, $a4, 1
	slli.d	$a4, $a4, 9
	or	$a4, $t5, $a4
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 10
	or	$a4, $a4, $t1
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 11
	or	$a0, $a4, $a0
	andi	$a4, $t2, 1
	slli.d	$a4, $a4, 12
	or	$a0, $a0, $a4
	andi	$a4, $t4, 1
	slli.d	$a4, $a4, 13
	or	$a0, $a0, $a4
	andi	$a4, $fp, 1
	slli.d	$a4, $a4, 14
	or	$a0, $a0, $a4
	slli.d	$a4, $s0, 15
	or	$a4, $a0, $a4
	vpickve2gr.b	$a0, $vr3, 0
	vpickve2gr.b	$t1, $vr3, 1
	andi	$t1, $t1, 1
	bstrins.d	$a0, $t1, 63, 1
	vpickve2gr.b	$t1, $vr3, 2
	bstrins.d	$a0, $t1, 2, 2
	vpickve2gr.b	$t1, $vr3, 3
	bstrins.d	$a0, $t1, 3, 3
	vpickve2gr.b	$t1, $vr3, 4
	bstrins.d	$a0, $t1, 4, 4
	vpickve2gr.b	$t1, $vr3, 5
	bstrins.d	$a0, $t1, 5, 5
	vpickve2gr.b	$t1, $vr3, 6
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr3, 7
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$a0, $a0, $t1
	vpickve2gr.b	$fp, $vr3, 8
	vpickve2gr.b	$s0, $vr3, 9
	vpickve2gr.b	$t1, $vr3, 10
	vpickve2gr.b	$t2, $vr3, 11
	vpickve2gr.b	$t4, $vr3, 12
	vpickve2gr.b	$t5, $vr3, 13
	vpickve2gr.b	$s1, $vr3, 14
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.b	$s2, $vr0, 0
	vinsgr2vr.h	$vr1, $s2, 0
	vpickve2gr.b	$s2, $vr0, 1
	vinsgr2vr.h	$vr1, $s2, 1
	vpickve2gr.b	$s2, $vr0, 2
	vinsgr2vr.h	$vr1, $s2, 2
	vpickve2gr.b	$s2, $vr0, 3
	vinsgr2vr.h	$vr1, $s2, 3
	vpickve2gr.b	$s2, $vr0, 4
	vinsgr2vr.h	$vr1, $s2, 4
	vpickve2gr.b	$s2, $vr0, 5
	vinsgr2vr.h	$vr1, $s2, 5
	vpickve2gr.b	$s2, $vr0, 6
	vinsgr2vr.h	$vr1, $s2, 6
	vpickve2gr.b	$s2, $vr0, 7
	vinsgr2vr.h	$vr1, $s2, 7
	vpickve2gr.b	$s2, $vr3, 15
	vor.v	$vr1, $vr1, $vr2
	andi	$fp, $fp, 1
	slli.d	$fp, $fp, 8
	or	$a0, $a0, $fp
	andi	$fp, $s0, 1
	slli.d	$fp, $fp, 9
	or	$a0, $a0, $fp
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 10
	or	$a0, $a0, $t1
	andi	$t1, $t2, 1
	slli.d	$t1, $t1, 11
	or	$a0, $a0, $t1
	andi	$t1, $t4, 1
	slli.d	$t1, $t1, 12
	or	$a0, $a0, $t1
	andi	$t1, $t5, 1
	slli.d	$t1, $t1, 13
	or	$a0, $a0, $t1
	andi	$t1, $s1, 1
	slli.d	$t1, $t1, 14
	or	$a0, $a0, $t1
	slli.d	$t1, $s2, 15
	or	$a0, $a0, $t1
	vpickve2gr.h	$t1, $vr1, 7
	vpickve2gr.h	$t2, $vr1, 6
	vpickve2gr.h	$t4, $vr1, 5
	vpickve2gr.h	$t5, $vr1, 4
	vpickve2gr.h	$fp, $vr1, 3
	vpickve2gr.h	$s0, $vr1, 2
	vpickve2gr.h	$s1, $vr1, 0
	vpickve2gr.h	$s2, $vr1, 1
	andi	$s2, $s2, 1
	bstrins.d	$s1, $s2, 63, 1
	bstrins.d	$s1, $s0, 2, 2
	bstrins.d	$s1, $fp, 3, 3
	bstrins.d	$s1, $t5, 4, 4
	bstrins.d	$s1, $t4, 5, 5
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 6
	or	$t2, $s1, $t2
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$t1, $t2, $t1
	vpickve2gr.b	$t2, $vr0, 8
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 8
	or	$t1, $t1, $t2
	vpickve2gr.b	$t2, $vr0, 9
	vpickve2gr.b	$t4, $vr0, 10
	vpickve2gr.b	$t5, $vr0, 11
	vpickve2gr.b	$fp, $vr0, 12
	vpickve2gr.b	$s0, $vr0, 13
	vpickve2gr.b	$s1, $vr0, 14
	vpickve2gr.b	$s2, $vr0, 15
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 9
	or	$t1, $t1, $t2
	andi	$t2, $t4, 1
	slli.d	$t2, $t2, 10
	or	$t1, $t1, $t2
	andi	$t2, $t5, 1
	slli.d	$t2, $t2, 11
	or	$t1, $t1, $t2
	andi	$t2, $fp, 1
	slli.d	$t2, $t2, 12
	or	$t1, $t1, $t2
	andi	$t2, $s0, 1
	slli.d	$t2, $t2, 13
	or	$t1, $t1, $t2
	andi	$t2, $s1, 1
	slli.d	$t2, $t2, 14
	or	$t1, $t1, $t2
	slli.d	$t2, $s2, 15
	or	$t1, $t1, $t2
	bstrpick.d	$a4, $a4, 15, 0
	bstrpick.d	$a0, $a0, 15, 0
	or	$a0, $a0, $a4
	bstrpick.d	$a4, $t1, 15, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a0, $a4
	ld.d	$a4, $sp, 720                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 15, 0
	or	$a0, $a0, $a4
	bstrpick.d	$a0, $a0, 31, 0
	move	$a4, $zero
	bnez	$a0, .LBB4_21
# %bb.17:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$a0, $a1, $s4
	sltu	$t1, $s6, $s3
	and	$a0, $a0, $t1
	vld	$vr4, $sp, 352                  # 16-byte Folded Reload
	bnez	$a0, .LBB4_21
# %bb.18:                               # %vector.ph1392
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$a0, $zero
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.d	$a6, $a4, $a6
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 624                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_19:                               # %vector.body1395
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $t4, $a0
	vldx	$vr1, $t5, $a0
	vldx	$vr2, $t3, $a0
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $t7, $a0
	vldx	$vr3, $t8, $a0
	vfadd.d	$vr0, $vr2, $vr0
	vstx	$vr0, $t3, $a0
	vldx	$vr0, $t6, $a0
	vfadd.d	$vr1, $vr1, $vr3
	vldx	$vr2, $a5, $a0
	vldx	$vr3, $a2, $a0
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $t6, $a0
	vldx	$vr0, $ra, $a0
	vfadd.d	$vr1, $vr2, $vr3
	vldx	$vr2, $a7, $a0
	vldx	$vr3, $t0, $a0
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $ra, $a0
	vldx	$vr0, $a3, $a0
	vfadd.d	$vr1, $vr2, $vr3
	vstx	$vr4, $t4, $a0
	vstx	$vr4, $t5, $a0
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a3, $a0
	vldx	$vr0, $a1, $a0
	vldx	$vr1, $s6, $a0
	vstx	$vr4, $t7, $a0
	vstx	$vr4, $t8, $a0
	vstx	$vr4, $a5, $a0
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $s5, $a0
	vstx	$vr4, $a2, $a0
	vstx	$vr4, $a7, $a0
	vstx	$vr4, $t0, $a0
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $s5, $a0
	vstx	$vr4, $a1, $a0
	vstx	$vr4, $s6, $a0
	addi.d	$a0, $a0, 16
	bne	$a4, $a0, .LBB4_19
# %bb.20:                               # %middle.block1414
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	beq	$a0, $s5, .LBB4_13
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_21:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
.LBB4_22:                               # %scalar.ph1390.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	slli.d	$a0, $a6, 3
	sub.d	$a1, $s5, $a4
	ld.d	$a2, $sp, 864                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	move	$a4, $s3
	ld.d	$a5, $sp, 880                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 816                   # 8-byte Folded Reload
	move	$t0, $s2
	move	$t3, $ra
	ld.d	$t4, $sp, 832                   # 8-byte Folded Reload
	move	$t5, $t2
	move	$t6, $s4
	ld.d	$t7, $sp, 848                   # 8-byte Folded Reload
	move	$t8, $s7
	move	$fp, $s8
	move	$s0, $s6
	move	$s1, $t1
	.p2align	4, , 16
.LBB4_23:                               # %scalar.ph1390
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s1, $a0
	fldx.d	$fa1, $s0, $a0
	fldx.d	$fa2, $fp, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $fp, $a0
	stx.d	$zero, $s1, $a0
	stx.d	$zero, $s0, $a0
	fldx.d	$fa0, $t8, $a0
	fldx.d	$fa1, $t7, $a0
	fldx.d	$fa2, $t6, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t6, $a0
	stx.d	$zero, $t8, $a0
	stx.d	$zero, $t7, $a0
	fldx.d	$fa0, $t5, $a0
	fldx.d	$fa1, $t4, $a0
	fldx.d	$fa2, $t3, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t3, $a0
	stx.d	$zero, $t5, $a0
	stx.d	$zero, $t4, $a0
	fldx.d	$fa0, $t0, $a0
	fldx.d	$fa1, $a7, $a0
	fldx.d	$fa2, $a5, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a5, $a0
	stx.d	$zero, $t0, $a0
	stx.d	$zero, $a7, $a0
	fldx.d	$fa0, $a4, $a0
	fldx.d	$fa1, $a3, $a0
	fldx.d	$fa2, $a2, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a2, $a0
	stx.d	$zero, $a4, $a0
	stx.d	$zero, $a3, $a0
	addi.d	$a6, $a6, 1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB4_23
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_24:                               # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB4_3
# %bb.25:                               #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $sp, 976
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 976
	ld.w	$s5, $sp, 980
	ld.w	$a0, $sp, 984
	slt	$a1, $s4, $s5
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	blez	$a1, .LBB4_3
# %bb.26:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	blez	$a0, .LBB4_3
# %bb.27:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$s5, .LBB4_3
# %bb.28:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$s4, .LBB4_3
# %bb.29:                               # %.preheader484.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $t1, 4
	ld.w	$a2, $t1, 16
	move	$t2, $zero
	ld.w	$a3, $t1, 0
	sub.w	$a2, $a2, $a1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	slt	$a4, $a0, $a2
	maskeqz	$a2, $a2, $a4
	ld.w	$a5, $t1, 12
	masknez	$a4, $a0, $a4
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, 1
	sub.w	$a4, $a5, $a3
	slt	$a5, $a0, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a0, $a5
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	sub.d	$s6, $a4, $s4
	sub.d	$a5, $a2, $s5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	ld.w	$a7, $a0, 4
	ld.w	$t0, $a0, 8
	ld.w	$t1, $t1, 8
	mulw.d.w	$a0, $a4, $a5
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	sub.d	$a3, $a6, $a3
	sub.d	$a1, $a7, $a1
	sub.d	$a5, $t0, $t1
	mul.d	$a2, $a2, $a5
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $a4
	add.w	$a6, $a3, $a1
	addi.d	$a1, $s4, -1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $fp, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s1, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a0, 3
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	bstrpick.d	$a1, $s4, 30, 1
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	slli.d	$a1, $s4, 3
	bstrpick.d	$a1, $a1, 33, 4
	slli.d	$s2, $a1, 4
	st.d	$s4, $sp, 752                   # 8-byte Folded Spill
	st.d	$s5, $sp, 736                   # 8-byte Folded Spill
	st.d	$s6, $sp, 720                   # 8-byte Folded Spill
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_30:                               # %._crit_edge521.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_31 Depth=2
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB4_3
.LBB4_31:                               # %.preheader484.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_33 Depth 3
                                        #         Child Loop BB4_39 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	st.d	$t2, $sp, 496                   # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_32:                               # %._crit_edge518.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_33 Depth=3
	addi.w	$s3, $s3, 1
	add.w	$a6, $s6, $a6
	beq	$s3, $s5, .LBB4_30
.LBB4_33:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_39 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	ori	$a0, $zero, 30
	bgeu	$s4, $a0, .LBB4_35
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=3
	move	$a4, $zero
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_35:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_33 Depth=3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$s4, $a6, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $a0, 3
	alsl.d	$s5, $a6, $s0, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a0, 3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a0, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a0, 3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $a0, 3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a0, 3
	alsl.d	$ra, $a6, $s1, 3
	vinsgr2vr.d	$vr3, $s8, 0
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a0, 3
	vori.b	$vr5, $vr3, 0
	vori.b	$vr4, $vr3, 0
	vori.b	$vr8, $vr0, 0
	vst	$vr3, $sp, 912                  # 16-byte Folded Spill
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	vst	$vr3, $sp, 880                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr11, $s5, 0
	vinsgr2vr.d	$vr16, $s6, 0
	vori.b	$vr13, $vr11, 0
	vori.b	$vr12, $vr0, 0
	vori.b	$vr9, $vr3, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vst	$vr1, $sp, 944                  # 16-byte Folded Spill
	vori.b	$vr17, $vr11, 0
	vori.b	$vr7, $vr16, 0
	vinsgr2vr.d	$vr7, $s8, 1
	vori.b	$vr10, $vr11, 0
	vinsgr2vr.d	$vr10, $ra, 1
	vori.b	$vr24, $vr11, 0
	vinsgr2vr.d	$vr24, $s8, 1
	vinsgr2vr.d	$vr11, $s7, 1
	vinsgr2vr.d	$vr0, $s4, 1
	vinsgr2vr.d	$vr3, $s4, 1
	vinsgr2vr.d	$vr1, $s4, 1
	vinsgr2vr.d	$vr25, $a2, 0
	vinsgr2vr.d	$vr6, $t5, 0
	vinsgr2vr.d	$vr26, $t6, 0
	vinsgr2vr.d	$vr28, $a5, 0
	vori.b	$vr18, $vr25, 0
	vori.b	$vr19, $vr6, 0
	vori.b	$vr20, $vr6, 0
	vori.b	$vr21, $vr25, 0
	vori.b	$vr22, $vr26, 0
	vori.b	$vr23, $vr26, 0
	vori.b	$vr29, $vr26, 0
	vori.b	$vr30, $vr26, 0
	vori.b	$vr27, $vr26, 0
	vinsgr2vr.d	$vr26, $t5, 1
	vslt.du	$vr1, $vr1, $vr26
	vori.b	$vr26, $vr25, 0
	vinsgr2vr.d	$vr27, $a2, 1
	vslt.du	$vr3, $vr3, $vr27
	vori.b	$vr27, $vr6, 0
	vpickev.w	$vr3, $vr3, $vr1
	vinsgr2vr.d	$vr14, $a1, 0
	vinsgr2vr.d	$vr30, $a5, 1
	vslt.du	$vr0, $vr0, $vr30
	vori.b	$vr30, $vr14, 0
	vinsgr2vr.d	$vr30, $t7, 1
	vslt.du	$vr30, $vr11, $vr30
	vpickev.w	$vr0, $vr30, $vr0
	vori.b	$vr30, $vr6, 0
	vpickev.h	$vr1, $vr0, $vr3
	vori.b	$vr3, $vr6, 0
	vinsgr2vr.d	$vr6, $t7, 1
	vslt.du	$vr6, $vr24, $vr6
	vori.b	$vr31, $vr25, 0
	vinsgr2vr.d	$vr25, $t7, 1
	vslt.du	$vr10, $vr10, $vr25
	vori.b	$vr24, $vr28, 0
	vpickev.w	$vr10, $vr10, $vr6
	vori.b	$vr25, $vr28, 0
	vinsgr2vr.d	$vr3, $a1, 1
	vslt.du	$vr3, $vr7, $vr3
	vori.b	$vr6, $vr28, 0
	vori.b	$vr0, $vr28, 0
	vinsgr2vr.d	$vr28, $a1, 1
	vslt.du	$vr7, $vr11, $vr28
	vpickev.w	$vr3, $vr3, $vr7
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a0, 3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	vpickev.h	$vr3, $vr3, $vr10
	vinsgr2vr.d	$vr28, $a3, 0
	vpickev.b	$vr1, $vr3, $vr1
	vst	$vr1, $sp, 928                  # 16-byte Folded Spill
	vori.b	$vr1, $vr28, 0
	vinsgr2vr.d	$vr1, $s5, 1
	vinsgr2vr.d	$vr29, $s1, 1
	vslt.du	$vr1, $vr1, $vr29
	vori.b	$vr3, $vr28, 0
	vori.b	$vr10, $vr28, 0
	vori.b	$vr29, $vr28, 0
	vinsgr2vr.d	$vr15, $a4, 0
	vinsgr2vr.d	$vr28, $a7, 1
	vori.b	$vr7, $vr15, 0
	vinsgr2vr.d	$vr7, $s1, 1
	vslt.du	$vr7, $vr28, $vr7
	vpickev.w	$vr1, $vr1, $vr7
	vinsgr2vr.d	$vr29, $s7, 1
	vori.b	$vr7, $vr14, 0
	vinsgr2vr.d	$vr7, $s1, 1
	vslt.du	$vr7, $vr29, $vr7
	vinsgr2vr.d	$vr10, $s8, 1
	vinsgr2vr.d	$vr30, $s1, 1
	vslt.du	$vr10, $vr10, $vr30
	vpickev.w	$vr7, $vr10, $vr7
	vpickev.h	$vr1, $vr7, $vr1
	alsl.d	$t0, $a6, $fp, 3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $a0, 3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a0, 3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a0, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a0, 3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a0, 3
	vori.b	$vr30, $vr5, 0
	vinsgr2vr.d	$vr30, $t2, 1
	vori.b	$vr29, $vr4, 0
	vinsgr2vr.d	$vr29, $ra, 1
	vst	$vr29, $sp, 864                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr8, $t1, 1
	vld	$vr5, $sp, 912                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr5, $t1, 1
	vld	$vr4, $sp, 896                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr4, $s7, 1
	vld	$vr2, $sp, 880                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr2, $s7, 1
	vinsgr2vr.d	$vr3, $ra, 1
	vinsgr2vr.d	$vr31, $s1, 1
	vslt.du	$vr3, $vr3, $vr31
	vinsgr2vr.d	$vr10, $t0, 0
	vinsgr2vr.d	$vr0, $a4, 1
	vslt.du	$vr0, $vr28, $vr0
	vori.b	$vr7, $vr10, 0
	vinsgr2vr.d	$vr7, $s7, 1
	vpickev.w	$vr0, $vr0, $vr3
	vori.b	$vr3, $vr10, 0
	vinsgr2vr.d	$vr3, $s5, 1
	vinsgr2vr.d	$vr23, $a4, 1
	vslt.du	$vr3, $vr3, $vr23
	vori.b	$vr23, $vr14, 0
	vinsgr2vr.d	$vr23, $a4, 1
	vslt.du	$vr7, $vr7, $vr23
	vori.b	$vr28, $vr16, 0
	vinsgr2vr.d	$vr28, $s7, 1
	vinsgr2vr.d	$vr17, $a7, 1
	vpickev.w	$vr3, $vr7, $vr3
	vori.b	$vr7, $vr10, 0
	vinsgr2vr.d	$vr7, $a7, 1
	vpickev.h	$vr0, $vr3, $vr0
	vori.b	$vr3, $vr10, 0
	vinsgr2vr.d	$vr3, $ra, 1
	vpickev.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 912                  # 16-byte Folded Spill
	vori.b	$vr0, $vr10, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vinsgr2vr.d	$vr27, $a4, 1
	vslt.du	$vr0, $vr0, $vr27
	vinsgr2vr.d	$vr1, $fp, 0
	vinsgr2vr.d	$vr26, $a4, 1
	vslt.du	$vr3, $vr3, $vr26
	vori.b	$vr26, $vr1, 0
	vpickev.w	$vr0, $vr3, $vr0
	vori.b	$vr3, $vr1, 0
	vinsgr2vr.d	$vr6, $t6, 1
	vslt.du	$vr6, $vr7, $vr6
	vori.b	$vr7, $vr1, 0
	vinsgr2vr.d	$vr1, $a1, 1
	vslt.du	$vr1, $vr17, $vr1
	vori.b	$vr17, $vr16, 0
	vinsgr2vr.d	$vr17, $ra, 1
	vinsgr2vr.d	$vr13, $s4, 1
	vinsgr2vr.d	$vr12, $a7, 1
	vinsgr2vr.d	$vr9, $a7, 1
	vpickev.w	$vr1, $vr1, $vr6
	vld	$vr6, $sp, 944                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr6, $a7, 1
	vinsgr2vr.d	$vr24, $t4, 1
	vinsgr2vr.d	$vr18, $s0, 1
	vinsgr2vr.d	$vr19, $a5, 1
	vinsgr2vr.d	$vr20, $a2, 1
	vpickev.h	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr23, $t8, 0
	vinsgr2vr.d	$vr7, $t5, 1
	vslt.du	$vr1, $vr6, $vr7
	vori.b	$vr6, $vr23, 0
	vinsgr2vr.d	$vr6, $a5, 1
	vinsgr2vr.d	$vr3, $a2, 1
	vslt.du	$vr3, $vr9, $vr3
	vori.b	$vr7, $vr23, 0
	vinsgr2vr.d	$vr7, $a2, 1
	vinsgr2vr.d	$vr25, $t5, 1
	vinsgr2vr.d	$vr21, $a1, 1
	vinsgr2vr.d	$vr22, $a1, 1
	st.d	$a5, $sp, 776                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr26, $a5, 1
	vpickev.w	$vr1, $vr3, $vr1
	vslt.du	$vr3, $vr12, $vr26
	vslt.du	$vr9, $vr13, $vr22
	vpickev.w	$vr3, $vr9, $vr3
	vpickev.h	$vr1, $vr3, $vr1
	vpickev.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	vslt.du	$vr0, $vr17, $vr21
	vslt.du	$vr1, $vr28, $vr25
	vpickev.w	$vr0, $vr1, $vr0
	vslt.du	$vr1, $vr2, $vr7
	vslt.du	$vr6, $vr4, $vr6
	vpickev.w	$vr1, $vr6, $vr1
	vpickev.h	$vr0, $vr1, $vr0
	vslt.du	$vr1, $vr5, $vr20
	vslt.du	$vr6, $vr8, $vr19
	vpickev.w	$vr1, $vr6, $vr1
	vslt.du	$vr6, $vr29, $vr18
	vslt.du	$vr7, $vr30, $vr24
	vpickev.w	$vr6, $vr7, $vr6
	vpickev.h	$vr1, $vr6, $vr1
	vinsgr2vr.d	$vr26, $s4, 0
	vpickev.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 848                  # 16-byte Folded Spill
	vori.b	$vr13, $vr26, 0
	vinsgr2vr.d	$vr12, $t3, 0
	vinsgr2vr.d	$vr12, $a7, 1
	vinsgr2vr.d	$vr13, $s6, 1
	vori.b	$vr0, $vr12, 0
	vshuf4i.d	$vr0, $vr11, 3
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	vori.b	$vr19, $vr16, 0
	vori.b	$vr21, $vr26, 0
	vori.b	$vr24, $vr16, 0
	vori.b	$vr25, $vr26, 0
	vori.b	$vr6, $vr13, 0
	vinsgr2vr.d	$vr6, $t3, 1
	vinsgr2vr.d	$vr16, $s5, 1
	vori.b	$vr0, $vr26, 0
	vinsgr2vr.d	$vr0, $t2, 1
	vinsgr2vr.d	$vr29, $s0, 0
	vinsgr2vr.d	$vr28, $t4, 0
	vinsgr2vr.d	$vr26, $t1, 1
	vst	$vr29, $sp, 816                 # 16-byte Folded Spill
	vst	$vr29, $sp, 800                 # 16-byte Folded Spill
	vst	$vr28, $sp, 784                 # 16-byte Folded Spill
	vori.b	$vr9, $vr29, 0
	vori.b	$vr17, $vr28, 0
	vori.b	$vr18, $vr29, 0
	vori.b	$vr20, $vr28, 0
	vinsgr2vr.d	$vr30, $t7, 0
	vori.b	$vr22, $vr23, 0
	vinsgr2vr.d	$vr23, $t6, 1
	vslt.du	$vr1, $vr26, $vr23
	vori.b	$vr27, $vr29, 0
	vinsgr2vr.d	$vr29, $t6, 1
	vslt.du	$vr7, $vr0, $vr29
	vori.b	$vr8, $vr30, 0
	vpickev.w	$vr1, $vr7, $vr1
	vori.b	$vr29, $vr30, 0
	vinsgr2vr.d	$vr28, $t6, 1
	vslt.du	$vr6, $vr6, $vr28
	vori.b	$vr7, $vr30, 0
	vori.b	$vr26, $vr30, 0
	vinsgr2vr.d	$vr30, $t8, 1
	vslt.du	$vr4, $vr16, $vr30
	vpickev.w	$vr4, $vr4, $vr6
	vinsgr2vr.d	$vr6, $t1, 0
	vpickev.h	$vr5, $vr4, $vr1
	vori.b	$vr23, $vr6, 0
	vori.b	$vr4, $vr6, 0
	vori.b	$vr1, $vr6, 0
	vori.b	$vr0, $vr6, 0
	vinsgr2vr.d	$vr6, $s5, 1
	vinsgr2vr.d	$vr26, $s0, 1
	vinsgr2vr.d	$vr31, $t2, 0
	vslt.du	$vr6, $vr6, $vr26
	vori.b	$vr26, $vr31, 0
	vori.b	$vr28, $vr31, 0
	vori.b	$vr3, $vr31, 0
	vori.b	$vr2, $vr31, 0
	vinsgr2vr.d	$vr31, $s5, 1
	vinsgr2vr.d	$vr7, $t4, 1
	vslt.du	$vr7, $vr31, $vr7
	vpickev.w	$vr7, $vr7, $vr6
	vinsgr2vr.d	$vr0, $s6, 1
	vori.b	$vr31, $vr14, 0
	vori.b	$vr6, $vr14, 0
	vinsgr2vr.d	$vr14, $s0, 1
	vslt.du	$vr0, $vr0, $vr14
	vori.b	$vr14, $vr13, 0
	vshuf4i.d	$vr14, $vr12, 6
	vslt.du	$vr14, $vr14, $vr30
	vpickev.w	$vr0, $vr0, $vr14
	vpickev.h	$vr0, $vr0, $vr7
	vpickev.b	$vr0, $vr0, $vr5
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $s1, 0
	vinsgr2vr.d	$vr25, $a3, 1
	vori.b	$vr5, $vr0, 0
	vinsgr2vr.d	$vr5, $t7, 1
	vslt.du	$vr5, $vr25, $vr5
	vinsgr2vr.d	$vr10, $a3, 1
	vori.b	$vr7, $vr0, 0
	vori.b	$vr14, $vr0, 0
	vori.b	$vr25, $vr0, 0
	vinsgr2vr.d	$vr0, $fp, 1
	vslt.du	$vr30, $vr10, $vr0
	vpickev.w	$vr5, $vr5, $vr30
	vinsgr2vr.d	$vr24, $a3, 1
	vinsgr2vr.d	$vr25, $t8, 1
	vslt.du	$vr24, $vr24, $vr25
	vinsgr2vr.d	$vr1, $a3, 1
	vinsgr2vr.d	$vr14, $s0, 1
	vslt.du	$vr1, $vr1, $vr14
	vpickev.w	$vr1, $vr1, $vr24
	vpickev.h	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr21, $t0, 1
	vori.b	$vr5, $vr15, 0
	vori.b	$vr14, $vr15, 0
	vori.b	$vr24, $vr15, 0
	vori.b	$vr25, $vr15, 0
	vinsgr2vr.d	$vr15, $t7, 1
	vslt.du	$vr11, $vr21, $vr15
	vinsgr2vr.d	$vr19, $t0, 1
	vinsgr2vr.d	$vr25, $t8, 1
	vslt.du	$vr19, $vr19, $vr25
	vpickev.w	$vr11, $vr19, $vr11
	vinsgr2vr.d	$vr2, $a3, 1
	vinsgr2vr.d	$vr7, $t4, 1
	vslt.du	$vr2, $vr2, $vr7
	vpackev.d	$vr7, $vr10, $vr12
	vslt.du	$vr0, $vr7, $vr0
	vpickev.w	$vr0, $vr0, $vr2
	vpickev.h	$vr0, $vr11, $vr0
	vpickev.b	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr4, $t0, 1
	vinsgr2vr.d	$vr24, $s0, 1
	vslt.du	$vr0, $vr4, $vr24
	vinsgr2vr.d	$vr3, $t0, 1
	vinsgr2vr.d	$vr14, $t4, 1
	vslt.du	$vr2, $vr3, $vr14
	vpickev.w	$vr0, $vr2, $vr0
	vpackev.d	$vr2, $vr13, $vr12
	vinsgr2vr.d	$vr5, $fp, 1
	vslt.du	$vr2, $vr2, $vr5
	vinsgr2vr.d	$vr8, $t6, 1
	vslt.du	$vr3, $vr13, $vr8
	vpackod.d	$vr4, $vr13, $vr12
	vinsgr2vr.d	$vr29, $fp, 1
	vslt.du	$vr4, $vr4, $vr29
	vpickev.w	$vr2, $vr4, $vr2
	vinsgr2vr.d	$vr23, $t2, 1
	vpickev.h	$vr0, $vr2, $vr0
	vori.b	$vr2, $vr23, 0
	vshuf4i.d	$vr2, $vr12, 3
	vinsgr2vr.d	$vr22, $fp, 1
	vslt.du	$vr2, $vr2, $vr22
	vpackod.d	$vr4, $vr23, $vr12
	vinsgr2vr.d	$vr27, $fp, 1
	vslt.du	$vr4, $vr4, $vr27
	vpickev.w	$vr2, $vr4, $vr2
	vpackev.d	$vr4, $vr23, $vr12
	vshuf4i.d	$vr12, $vr0, 1
	vinsgr2vr.d	$vr20, $fp, 1
	vslt.du	$vr5, $vr12, $vr20
	vpickev.w	$vr3, $vr3, $vr5
	vpickev.h	$vr2, $vr3, $vr2
	vpickev.b	$vr7, $vr2, $vr0
	vinsgr2vr.d	$vr28, $s6, 1
	vinsgr2vr.d	$vr6, $t4, 1
	vslt.du	$vr0, $vr28, $vr6
	vinsgr2vr.d	$vr31, $t8, 1
	vslt.du	$vr2, $vr4, $vr31
	vpickev.w	$vr0, $vr2, $vr0
	vld	$vr2, $sp, 944                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr2, $t2, 1
	vinsgr2vr.d	$vr18, $t8, 1
	vslt.du	$vr2, $vr2, $vr18
	vinsgr2vr.d	$vr17, $t8, 1
	vld	$vr3, $sp, 832                  # 16-byte Folded Reload
	vslt.du	$vr3, $vr3, $vr17
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr9, $t5, 1
	vslt.du	$vr2, $vr23, $vr9
	vinsgr2vr.d	$vr23, $t3, 1
	vld	$vr3, $sp, 784                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr3, $t5, 1
	vslt.du	$vr3, $vr23, $vr3
	vpickev.w	$vr2, $vr3, $vr2
	vinsgr2vr.d	$vr26, $s8, 1
	st.d	$t4, $sp, 832                   # 8-byte Folded Spill
	vld	$vr3, $sp, 800                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr3, $t4, 1
	vslt.du	$vr3, $vr26, $vr3
	vld	$vr4, $sp, 864                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr4, $t3, 0
	st.d	$a2, $sp, 944                   # 8-byte Folded Spill
	vld	$vr5, $sp, 816                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr5, $a2, 1
	vslt.du	$vr4, $vr4, $vr5
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vpickev.b	$vr0, $vr2, $vr0
	vld	$vr2, $sp, 848                  # 16-byte Folded Reload
	vand.v	$vr0, $vr2, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	vpickve2gr.b	$a4, $vr0, 1
	andi	$a4, $a4, 1
	bstrins.d	$a1, $a4, 63, 1
	vpickve2gr.b	$a4, $vr0, 2
	bstrins.d	$a1, $a4, 2, 2
	vpickve2gr.b	$a4, $vr0, 3
	bstrins.d	$a1, $a4, 3, 3
	vpickve2gr.b	$a4, $vr0, 4
	vpickve2gr.b	$t5, $vr0, 5
	vpickve2gr.b	$t6, $vr0, 6
	vpickve2gr.b	$t7, $vr0, 7
	vpickve2gr.b	$t8, $vr0, 8
	vpickve2gr.b	$fp, $vr0, 9
	vpickve2gr.b	$s0, $vr0, 10
	vpickve2gr.b	$s1, $vr0, 11
	vpickve2gr.b	$a0, $vr0, 12
	vpickve2gr.b	$a2, $vr0, 13
	vpickve2gr.b	$a5, $vr0, 14
	vpickve2gr.b	$t4, $vr0, 15
	vld	$vr0, $sp, 896                  # 16-byte Folded Reload
	vand.v	$vr2, $vr0, $vr7
	bstrins.d	$a1, $a4, 4, 4
	bstrins.d	$a1, $t5, 5, 5
	andi	$a4, $t6, 1
	slli.d	$a4, $a4, 6
	or	$a1, $a1, $a4
	andi	$a4, $t7, 1
	slli.d	$a4, $a4, 7
	or	$a1, $a1, $a4
	andi	$a4, $t8, 1
	slli.d	$a4, $a4, 8
	or	$a1, $a1, $a4
	andi	$a4, $fp, 1
	slli.d	$a4, $a4, 9
	or	$a1, $a1, $a4
	andi	$a4, $s0, 1
	slli.d	$a4, $a4, 10
	or	$a1, $a1, $a4
	andi	$a4, $s1, 1
	slli.d	$a4, $a4, 11
	or	$a1, $a1, $a4
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 12
	or	$a0, $a1, $a0
	andi	$a1, $a2, 1
	slli.d	$a1, $a1, 13
	or	$a0, $a0, $a1
	andi	$a1, $a5, 1
	slli.d	$a1, $a1, 14
	or	$a0, $a0, $a1
	slli.d	$a1, $t4, 15
	or	$a4, $a0, $a1
	vpickve2gr.b	$a1, $vr2, 0
	vpickve2gr.b	$a0, $vr2, 1
	andi	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.b	$a0, $vr2, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.b	$a0, $vr2, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.b	$a0, $vr2, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.b	$a0, $vr2, 5
	vpickve2gr.b	$a2, $vr2, 6
	vpickve2gr.b	$a5, $vr2, 7
	vpickve2gr.b	$t4, $vr2, 8
	vpickve2gr.b	$t5, $vr2, 9
	vpickve2gr.b	$t6, $vr2, 10
	vpickve2gr.b	$t7, $vr2, 11
	vpickve2gr.b	$t8, $vr2, 12
	vpickve2gr.b	$fp, $vr2, 13
	vpickve2gr.b	$s0, $vr2, 14
	vpickve2gr.b	$s1, $vr2, 15
	vld	$vr0, $sp, 912                  # 16-byte Folded Reload
	vand.v	$vr1, $vr0, $vr1
	bstrpick.d	$a4, $a4, 15, 0
	bstrins.d	$a1, $a0, 5, 5
	andi	$a0, $a2, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	andi	$a1, $a5, 1
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a1, $t4, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a0, $a1
	andi	$a1, $t5, 1
	slli.d	$a1, $a1, 9
	or	$a0, $a0, $a1
	andi	$a1, $t6, 1
	slli.d	$a1, $a1, 10
	or	$a0, $a0, $a1
	andi	$a1, $t7, 1
	slli.d	$a1, $a1, 11
	or	$a0, $a0, $a1
	andi	$a1, $t8, 1
	slli.d	$a1, $a1, 12
	or	$a0, $a0, $a1
	andi	$a1, $fp, 1
	slli.d	$a1, $a1, 13
	or	$a0, $a0, $a1
	andi	$a1, $s0, 1
	slli.d	$a1, $a1, 14
	or	$a0, $a0, $a1
	slli.d	$a1, $s1, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	or	$a4, $a0, $a4
	vpickve2gr.b	$a1, $vr1, 0
	vpickve2gr.b	$a0, $vr1, 1
	andi	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.b	$a0, $vr1, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.b	$a0, $vr1, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.b	$a0, $vr1, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.b	$a0, $vr1, 5
	vpickve2gr.b	$a2, $vr1, 6
	vpickve2gr.b	$a5, $vr1, 7
	vpickve2gr.b	$t4, $vr1, 8
	vpickve2gr.b	$t5, $vr1, 9
	vpickve2gr.b	$t6, $vr1, 10
	vpickve2gr.b	$t7, $vr1, 11
	vpickve2gr.b	$t8, $vr1, 12
	vpickve2gr.b	$fp, $vr1, 13
	vpickve2gr.b	$s0, $vr1, 14
	vpickve2gr.b	$s1, $vr1, 15
	vld	$vr0, $sp, 928                  # 16-byte Folded Reload
	vld	$vr1, $sp, 880                  # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	slli.d	$a4, $a4, 16
	bstrins.d	$a1, $a0, 5, 5
	andi	$a0, $a2, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	andi	$a1, $a5, 1
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a1, $t4, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a0, $a1
	andi	$a1, $t5, 1
	slli.d	$a1, $a1, 9
	or	$a0, $a0, $a1
	andi	$a1, $t6, 1
	slli.d	$a1, $a1, 10
	or	$a0, $a0, $a1
	andi	$a1, $t7, 1
	slli.d	$a1, $a1, 11
	or	$a0, $a0, $a1
	andi	$a1, $t8, 1
	slli.d	$a1, $a1, 12
	or	$a0, $a0, $a1
	andi	$a1, $fp, 1
	slli.d	$a1, $a1, 13
	or	$a0, $a0, $a1
	andi	$a1, $s0, 1
	slli.d	$a1, $a1, 14
	or	$a0, $a0, $a1
	slli.d	$a1, $s1, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	or	$a1, $a4, $a0
	vpickve2gr.b	$a4, $vr0, 0
	vpickve2gr.b	$a0, $vr0, 1
	andi	$a0, $a0, 1
	bstrins.d	$a4, $a0, 63, 1
	vpickve2gr.b	$a0, $vr0, 2
	bstrins.d	$a4, $a0, 2, 2
	vpickve2gr.b	$a0, $vr0, 3
	bstrins.d	$a4, $a0, 3, 3
	vpickve2gr.b	$a0, $vr0, 4
	bstrins.d	$a4, $a0, 4, 4
	vpickve2gr.b	$a0, $vr0, 5
	vpickve2gr.b	$a2, $vr0, 6
	vpickve2gr.b	$a5, $vr0, 7
	vpickve2gr.b	$t4, $vr0, 8
	vpickve2gr.b	$t5, $vr0, 9
	vpickve2gr.b	$t6, $vr0, 10
	vpickve2gr.b	$t7, $vr0, 11
	vpickve2gr.b	$t8, $vr0, 12
	vpickve2gr.b	$fp, $vr0, 13
	vpickve2gr.b	$s0, $vr0, 14
	vpickve2gr.b	$s1, $vr0, 15
	bstrins.d	$a4, $a0, 5, 5
	andi	$a0, $a2, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a4, $a0
	andi	$a2, $a5, 1
	slli.d	$a2, $a2, 7
	or	$a0, $a0, $a2
	andi	$a2, $t4, 1
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a2
	andi	$a2, $t5, 1
	slli.d	$a2, $a2, 9
	or	$a0, $a0, $a2
	andi	$a2, $t6, 1
	slli.d	$a2, $a2, 10
	or	$a0, $a0, $a2
	andi	$a2, $t7, 1
	slli.d	$a2, $a2, 11
	or	$a0, $a0, $a2
	andi	$a2, $t8, 1
	slli.d	$a2, $a2, 12
	or	$a0, $a0, $a2
	andi	$a2, $fp, 1
	slli.d	$a2, $a2, 13
	or	$a0, $a0, $a2
	andi	$a2, $s0, 1
	slli.d	$a2, $a2, 14
	or	$a0, $a0, $a2
	slli.d	$a2, $s1, 15
	or	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	or	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	move	$a4, $zero
	bnez	$a0, .LBB4_41
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_33 Depth=3
	ld.d	$a2, $sp, 776                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a2
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	sltu	$a1, $t3, $a1
	and	$a0, $a0, $a1
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	vld	$vr5, $sp, 352                  # 16-byte Folded Reload
	bnez	$a0, .LBB4_42
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_33 Depth=3
	sltu	$a0, $ra, $a2
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	sltu	$a1, $t3, $a1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB4_42
# %bb.38:                               # %vector.ph
                                        #   in Loop: Header=BB4_33 Depth=3
	move	$a1, $zero
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
	.p2align	4, , 16
.LBB4_39:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_31 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $t0, $a1
	vldx	$vr1, $a7, $a1
	vldx	$vr2, $a3, $a1
	vldx	$vr3, $s5, $a1
	vldx	$vr4, $s6, $a1
	vfadd.d	$vr0, $vr0, $vr1
	vfadd.d	$vr0, $vr2, $vr0
	vstx	$vr0, $a3, $a1
	vfadd.d	$vr0, $vr3, $vr4
	vldx	$vr1, $s4, $a1
	vldx	$vr2, $t1, $a1
	vldx	$vr3, $s8, $a1
	vldx	$vr4, $s7, $a1
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $s4, $a1
	vfadd.d	$vr0, $vr2, $vr3
	vfadd.d	$vr0, $vr4, $vr0
	vstx	$vr0, $s7, $a1
	vldx	$vr0, $ra, $a1
	vldx	$vr1, $t3, $a1
	vstx	$vr5, $t0, $a1
	vstx	$vr5, $a7, $a1
	vstx	$vr5, $s5, $a1
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $t2, $a1
	vstx	$vr5, $s6, $a1
	vstx	$vr5, $t1, $a1
	vstx	$vr5, $s8, $a1
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $t2, $a1
	vstx	$vr5, $ra, $a1
	vstx	$vr5, $t3, $a1
	addi.d	$a1, $a1, 16
	bne	$s2, $a1, .LBB4_39
# %bb.40:                               # %middle.block
                                        #   in Loop: Header=BB4_33 Depth=3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$s4, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 720                   # 8-byte Folded Reload
	beq	$a0, $s4, .LBB4_32
	b	.LBB4_43
.LBB4_41:                               #   in Loop: Header=BB4_33 Depth=3
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
.LBB4_42:                               #   in Loop: Header=BB4_33 Depth=3
	ld.d	$s4, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 720                   # 8-byte Folded Reload
.LBB4_43:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_33 Depth=3
	slli.d	$a1, $a6, 3
	sub.d	$a2, $s4, $a4
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	move	$a7, $s1
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 392                   # 8-byte Folded Reload
	move	$t5, $s0
	ld.d	$t6, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 400                   # 8-byte Folded Reload
	move	$t8, $fp
	.p2align	4, , 16
.LBB4_44:                               # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_31 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $t7, $a1
	fldx.d	$fa2, $t6, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t6, $a1
	stx.d	$zero, $t8, $a1
	stx.d	$zero, $t7, $a1
	fldx.d	$fa0, $t5, $a1
	fldx.d	$fa1, $t4, $a1
	fldx.d	$fa2, $t3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t3, $a1
	stx.d	$zero, $t5, $a1
	stx.d	$zero, $t4, $a1
	fldx.d	$fa0, $t2, $a1
	fldx.d	$fa1, $t1, $a1
	fldx.d	$fa2, $t0, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t0, $a1
	stx.d	$zero, $t2, $a1
	stx.d	$zero, $t1, $a1
	fldx.d	$fa0, $a7, $a1
	fldx.d	$fa1, $a5, $a1
	fldx.d	$fa2, $a3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a3, $a1
	stx.d	$zero, $a7, $a1
	stx.d	$zero, $a5, $a1
	addi.d	$a6, $a6, 1
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
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_44
	b	.LBB4_32
.LBB4_45:                               # %.loopexit491
	move	$a0, $zero
	fld.d	$fs7, $sp, 1000                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1008                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1016                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1024                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1032                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1040                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1048                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1056                 # 8-byte Folded Reload
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
