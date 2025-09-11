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
	addi.d	$sp, $sp, -1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	blez	$a6, .LBB2_57
# %bb.1:                                # %.preheader2330.lr.ph
	move	$s1, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s1, 8
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s3, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
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
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit2326
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB2_57
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
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s7, $a5, -1
	slli.d	$a1, $a5, 4
	alsl.d	$a2, $a5, $a1, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	addi.d	$a3, $a5, -1
	addi.d	$s8, $a2, -24
	ld.d	$s2, $sp, 880                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s7, $s7, 1
	addi.d	$s8, $s8, 24
	addi.d	$a1, $a1, 4
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s8, $sp, 784                   # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$s4, $a4, $a1, 3
	add.d	$a0, $a0, $s4
	addi.d	$a3, $sp, 1024
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 40
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $fp, 40
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	addi.w	$s5, $zero, -1
	st.d	$zero, $sp, 1036
	st.d	$s5, $sp, 872                   # 8-byte Folded Spill
	lu32i.d	$s5, 0
	st.w	$s5, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1036
	st.w	$s5, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$fp, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ori	$s6, $zero, 0
	lu32i.d	$s6, -1
	st.d	$s6, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ori	$s8, $zero, 0
	lu32i.d	$s8, 1
	st.d	$s8, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 896                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 832                   # 8-byte Folded Reload
	st.d	$a2, $sp, 832                   # 8-byte Folded Spill
	st.d	$s6, $sp, 912                   # 8-byte Folded Spill
	blt	$s0, $a0, .LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$fp, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1036
	st.w	$fp, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s5, $s8
	st.d	$s8, $sp, 1036
	move	$s6, $fp
	st.w	$fp, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$s8, $s7
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s0, $a0, .LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s4, $sp, 944                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 872                   # 8-byte Folded Reload
	st.d	$s4, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	move	$fp, $s4
	lu32i.d	$fp, 1
	st.d	$fp, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 20
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	bltu	$s0, $a0, .LBB2_56
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s4, $sp, 1036
	ori	$s7, $zero, 1
	st.w	$s7, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1036
	st.w	$s7, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1036
	st.w	$s7, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1036
	st.w	$s7, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1036
	st.w	$s6, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1036
	st.w	$s6, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 944                   # 8-byte Folded Reload
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $s8
	st.d	$a1, $sp, 896                   # 8-byte Folded Spill
	move	$s6, $fp
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s7, $zero
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
.LBB2_11:                               # %.thread2248
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	st.d	$a0, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 840                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 832                   # 8-byte Folded Reload
	beqz	$s7, .LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s4, $sp, 872                   # 8-byte Folded Reload
	move	$fp, $s4
	lu32i.d	$fp, 1
	st.d	$fp, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s1
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$fp, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s0, $sp, 1036
	st.w	$s3, $sp, 1044
	addi.d	$a2, $sp, 1036
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 832                   # 8-byte Folded Spill
	st.d	$s4, $sp, 840                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1036
	st.w	$s3, $sp, 1044
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 776                   # 8-byte Folded Reload
	add.d	$fp, $s6, $s8
	ld.w	$a0, $fp, 16
	ld.w	$a1, $fp, 4
	sub.w	$a0, $a0, $a1
	ld.d	$s7, $sp, 872                   # 8-byte Folded Reload
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	ld.w	$a2, $fp, 12
	ldx.w	$a3, $s6, $s8
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s7, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s7, $a2
	ld.d	$s2, $sp, 800                   # 8-byte Folded Reload
	add.d	$s0, $s2, $s8
	ld.w	$a3, $s0, 16
	ld.w	$a4, $s0, 4
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$s4, $a1, $a0
	sub.w	$a0, $a3, $a4
	slt	$a1, $s7, $a0
	ld.w	$a2, $s0, 12
	ldx.w	$a3, $s2, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s7, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s7, $a2
	or	$a1, $a1, $a2
	st.d	$s3, $sp, 1040
	ld.w	$a2, $s0, 12
	ldx.w	$a3, $s2, $s8
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1036
	st.w	$zero, $sp, 1044
	addi.d	$a1, $sp, 1008
	ld.d	$s1, $sp, 808                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s1, 8
	ld.w	$a0, $s0, 16
	ld.d	$t0, $sp, 792                   # 8-byte Folded Reload
	add.d	$a1, $t0, $s8
	ld.w	$a1, $a1, 16
	ld.w	$a5, $sp, 1032
	ld.d	$a6, $s1, 0
	ld.w	$a2, $fp, 16
	ld.d	$t1, $sp, 768                   # 8-byte Folded Reload
	ld.w	$a3, $t1, 16
	ld.d	$a7, $sp, 1024
	vinsgr2vr.d	$vr0, $a6, 0
	vldx	$vr3, $s2, $s8
	vldx	$vr5, $t0, $s8
	vinsgr2vr.d	$vr2, $a7, 0
	vldx	$vr4, $s6, $s8
	pcalau12i	$a6, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a6, %pc_lo12(.LCPI2_0)
	vld	$vr6, $t1, 0
	pcalau12i	$a6, %pc_hi20(.LCPI2_1)
	vld	$vr7, $a6, %pc_lo12(.LCPI2_1)
	vshuf.w	$vr1, $vr2, $vr0
	vpackev.w	$vr8, $vr3, $vr5
	vpackev.d	$vr8, $vr6, $vr8
	vshuf.w	$vr7, $vr4, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI2_2)
	vld	$vr8, $a6, %pc_lo12(.LCPI2_2)
	pcalau12i	$a6, %pc_hi20(.LCPI2_3)
	vld	$vr9, $a6, %pc_lo12(.LCPI2_3)
	pcalau12i	$a6, %pc_hi20(.LCPI2_4)
	vld	$vr10, $a6, %pc_lo12(.LCPI2_4)
	vshuf.w	$vr8, $vr2, $vr0
	vpackod.w	$vr0, $vr3, $vr5
	vshuf.w	$vr9, $vr6, $vr0
	vshuf.w	$vr10, $vr4, $vr9
	vsub.w	$vr8, $vr8, $vr10
	vinsgr2vr.w	$vr0, $a4, 0
	vinsgr2vr.w	$vr0, $a5, 1
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr2, $a4, %pc_lo12(.LCPI2_5)
	vshuf4i.w	$vr0, $vr0, 64
	vilvh.w	$vr9, $vr3, $vr5
	vshuf4i.d	$vr9, $vr6, 12
	vshuf.w	$vr2, $vr4, $vr9
	vsub.w	$vr0, $vr0, $vr2
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr2, $a0, 1
	vinsgr2vr.w	$vr2, $a3, 2
	vinsgr2vr.w	$vr2, $a2, 3
	vsub.w	$vr2, $vr2, $vr10
	vmaxi.w	$vr2, $vr2, -1
	vaddi.wu	$vr2, $vr2, 1
	vmadd.w	$vr8, $vr2, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr9, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr10, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	vsub.w	$vr1, $vr1, $vr7
	vshuf.w	$vr9, $vr3, $vr5
	vshuf.w	$vr10, $vr6, $vr9
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr4, $vr10
	vsub.w	$vr3, $vr3, $vr7
	vmaxi.w	$vr3, $vr3, -1
	ld.w	$a2, $sp, 1012
	ld.w	$a1, $sp, 1008
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	vaddi.wu	$vr4, $vr3, 1
	vmadd.w	$vr1, $vr8, $vr4
	ld.w	$a3, $sp, 1016
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ori	$a2, $zero, 19
	ld.d	$a3, $sp, 992                   # 8-byte Folded Reload
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 888                   # 8-byte Folded Reload
	st.d	$a3, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	move	$ra, $a3
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 896                   # 8-byte Folded Reload
	st.d	$a3, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	st.d	$a3, $sp, 488                   # 8-byte Folded Spill
	beq	$a1, $a2, .LBB2_36
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 15
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 1000                  # 8-byte Folded Reload
	ori	$t2, $zero, 1
	beq	$a1, $a2, .LBB2_26
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 7
	bne	$a1, $a2, .LBB2_46
# %bb.16:                               #   in Loop: Header=BB2_3 Depth=1
	blez	$a0, .LBB2_2
# %bb.17:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.18:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.19:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.20:                               # %.preheader2316.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 4
	move	$t7, $zero
	vpickve2gr.w	$a3, $vr4, 3
	ld.w	$a0, $a0, 8
	mul.d	$a2, $a1, $a3
	st.d	$a2, $sp, 728                   # 8-byte Folded Spill
	vmul.w	$vr0, $vr4, $vr2
	vpickve2gr.w	$a2, $vr0, 3
	mul.d	$a6, $a2, $a0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $t4
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	vpickve2gr.w	$t8, $vr4, 1
	vpickve2gr.w	$t5, $vr4, 0
	vpickve2gr.w	$fp, $vr4, 2
	vpickve2gr.w	$a7, $vr2, 1
	vpickve2gr.w	$t0, $vr2, 0
	vpickve2gr.w	$t1, $vr2, 2
	bstrpick.d	$s0, $s4, 31, 0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 31, 0
	vpickve2gr.w	$a2, $vr1, 0
	vpickve2gr.w	$a0, $vr1, 1
	vpickve2gr.w	$a5, $vr1, 2
	vpickve2gr.w	$a4, $vr1, 3
	ld.d	$t3, $sp, 464                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $t3
	addi.d	$t0, $t0, 1
	st.d	$t5, $sp, 704                   # 8-byte Folded Spill
	mul.d	$t0, $t5, $t0
	st.d	$t0, $sp, 616                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$s2, $t5, $t0, 3
	st.d	$s2, $sp, 672                   # 8-byte Folded Spill
	sub.d	$t5, $s1, $t5
	st.d	$t5, $sp, 664                   # 8-byte Folded Spill
	st.d	$s1, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$t0, $s1, $t0, 3
	st.d	$t0, $sp, 656                   # 8-byte Folded Spill
	sub.d	$a7, $a7, $t3
	addi.d	$a7, $a7, 1
	st.d	$t8, $sp, 712                   # 8-byte Folded Spill
	mul.d	$a7, $t8, $a7
	st.d	$a7, $sp, 608                   # 8-byte Folded Spill
	sub.d	$a7, $t1, $t3
	addi.d	$a7, $a7, 1
	st.d	$fp, $sp, 696                   # 8-byte Folded Spill
	mul.d	$a7, $fp, $a7
	st.d	$a7, $sp, 600                   # 8-byte Folded Spill
	slli.d	$a7, $t4, 3
	st.d	$a7, $sp, 648                   # 8-byte Folded Spill
	mul.d	$a1, $a3, $a1
	sub.d	$a3, $t2, $t3
	mul.d	$a1, $a1, $a3
	st.d	$s0, $sp, 688                   # 8-byte Folded Spill
	slli.d	$a3, $s0, 3
	add.d	$a1, $a1, $a6
	st.d	$a1, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	st.d	$a1, $sp, 640                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	st.d	$a1, $sp, 632                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_21:                               # %.preheader2316.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_23 Depth 4
	st.d	$t7, $sp, 624                   # 8-byte Folded Spill
	move	$a7, $zero
	.p2align	4, , 16
.LBB2_22:                               # %.preheader2312.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_23 Depth 4
	st.d	$a7, $sp, 768                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
	move	$a6, $a0
	alsl.d	$s7, $a2, $t6, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a2, $sp, 752                   # 8-byte Folded Spill
	alsl.d	$s8, $a2, $a0, 3
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a2, 3
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 3
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a0, 3
	alsl.d	$a0, $a6, $a3, 3
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	st.d	$a6, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$a0, $a6, $a1, 3
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$t7, $a5, $a0, 3
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a0, 3
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a0, 3
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $a0, 3
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$t2, $a5, $a0, 3
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$t3, $a5, $a0, 3
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	st.d	$a5, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$t8, $a5, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a4
	ld.d	$t4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$fp, $a1, $t4, 3
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$t1, $a1, $a3, 3
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$s2, $a1, $a0, 3
	ld.d	$t5, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$s0, $a1, $t5, 3
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$s3, $a1, $a0, 3
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$s1, $a1, $a0, 3
	alsl.d	$s4, $a4, $t5, 3
	alsl.d	$t6, $a4, $t4, 3
	alsl.d	$ra, $a4, $a3, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t4, $a4, $a0, 3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	st.d	$a4, $sp, 744                   # 8-byte Folded Spill
	alsl.d	$t5, $a4, $a0, 3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 648                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_23:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        #       Parent Loop BB2_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s7, $s6
	fldx.d	$fa1, $fp, $s5
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $s6
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t7, $s6
	fldx.d	$fa0, $s7, $s6
	fldx.d	$fa1, $t1, $s5
	add.d	$a0, $a2, $s6
	fld.d	$fa2, $a0, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a6, $s6
	fldx.d	$fa0, $s7, $s6
	fldx.d	$fa1, $s2, $s5
	fldx.d	$fa2, $a2, $s6
	fldx.d	$fa3, $s4, $s5
	fldx.d	$fa4, $s0, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $a7, $s6
	fldx.d	$fa0, $s7, $s6
	fldx.d	$fa1, $s3, $s5
	fld.d	$fa2, $a0, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t0, $s6
	fldx.d	$fa0, $s7, $s6
	fldx.d	$fa1, $s1, $s5
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $s6
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t2, $s6
	fldx.d	$fa0, $t6, $s5
	fldx.d	$fa1, $s8, $s6
	fldx.d	$fa2, $t4, $s5
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa3, $a0, $s6
	fldx.d	$fa4, $s7, $s6
	fldx.d	$fa5, $fp, $s5
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa6, $a0, $s6
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t3, $s6
	fldx.d	$fa0, $ra, $s5
	fldx.d	$fa1, $s8, $s6
	fldx.d	$fa2, $t5, $s5
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	fld.d	$fa3, $a0, 8
	fldx.d	$fa4, $s7, $s6
	fldx.d	$fa5, $t1, $s5
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	fld.d	$fa6, $a0, 8
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t8, $s6
	addi.d	$s6, $s6, 8
	addi.w	$a3, $a3, -1
	add.d	$s5, $s5, $a5
	sub.d	$a1, $a1, $a4
	bnez	$a3, .LBB2_23
# %bb.24:                               # %._crit_edge.us.us.us.us.us.us2509
                                        #   in Loop: Header=BB2_22 Depth=3
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 736                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t3
	sub.w	$a0, $a0, $a3
	ld.d	$a2, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 752                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t1
	sub.w	$a2, $a2, $a3
	ld.d	$a4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 744                   # 8-byte Folded Reload
	add.d	$a4, $a4, $t2
	sub.w	$a4, $a4, $a1
	ld.d	$a5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 760                   # 8-byte Folded Reload
	add.d	$a5, $a5, $t0
	ld.d	$a7, $sp, 768                   # 8-byte Folded Reload
	addi.w	$a7, $a7, 1
	sub.w	$a5, $a5, $a3
	ld.d	$t6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	bne	$a7, $a6, .LBB2_22
# %bb.25:                               # %._crit_edge2463.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_21 Depth=2
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t3
	sub.w	$a0, $a0, $a3
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t1
	sub.w	$a2, $a2, $a3
	ld.d	$a4, $sp, 592                   # 8-byte Folded Reload
	add.d	$a4, $a4, $t2
	sub.w	$a4, $a4, $a1
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	ld.d	$t7, $sp, 624                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	sub.w	$a5, $a1, $a3
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bne	$t7, $a1, .LBB2_21
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_3 Depth=1
	blez	$a0, .LBB2_2
# %bb.27:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.28:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.29:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.30:                               # %.preheader2317.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a4, $a0, 4
	move	$t7, $zero
	vpickve2gr.w	$a5, $vr4, 3
	ld.w	$a0, $a0, 8
	mul.d	$a1, $a4, $a5
	st.d	$a1, $sp, 608                   # 8-byte Folded Spill
	vmul.w	$vr0, $vr4, $vr2
	vpickve2gr.w	$a1, $vr0, 3
	mul.d	$a6, $a1, $a0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $t4
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	vpickve2gr.w	$t8, $vr4, 1
	vpickve2gr.w	$t5, $vr4, 0
	vpickve2gr.w	$s0, $vr4, 2
	vpickve2gr.w	$a7, $vr2, 1
	vpickve2gr.w	$t0, $vr2, 0
	vpickve2gr.w	$t1, $vr2, 2
	bstrpick.d	$s1, $s4, 31, 0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bstrpick.d	$s2, $a0, 31, 0
	vpickve2gr.w	$a1, $vr1, 0
	vpickve2gr.w	$a0, $vr1, 1
	vpickve2gr.w	$a3, $vr1, 2
	vpickve2gr.w	$a2, $vr1, 3
	ld.d	$t3, $sp, 464                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $t3
	addi.d	$t0, $t0, 1
	st.d	$t5, $sp, 584                   # 8-byte Folded Spill
	mul.d	$t0, $t5, $t0
	st.d	$t0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$s3, $t5, $t0, 3
	st.d	$s3, $sp, 552                   # 8-byte Folded Spill
	sub.d	$t5, $s2, $t5
	st.d	$t5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$t0, $s2, $t0, 3
	st.d	$t0, $sp, 536                   # 8-byte Folded Spill
	sub.d	$a7, $a7, $t3
	addi.d	$a7, $a7, 1
	st.d	$t8, $sp, 592                   # 8-byte Folded Spill
	mul.d	$a7, $t8, $a7
	st.d	$a7, $sp, 344                   # 8-byte Folded Spill
	sub.d	$a7, $t1, $t3
	addi.d	$a7, $a7, 1
	st.d	$s0, $sp, 576                   # 8-byte Folded Spill
	mul.d	$a7, $s0, $a7
	st.d	$a7, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a7, $t4, 3
	st.d	$a7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s1, $sp, 568                   # 8-byte Folded Spill
	slli.d	$a7, $s1, 3
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $a7
	st.d	$t0, $sp, 520                   # 8-byte Folded Spill
	mul.d	$a4, $a5, $a4
	sub.d	$a5, $t2, $t3
	mul.d	$a4, $a4, $a5
	sub.d	$a5, $ra, $a7
	st.d	$a5, $sp, 512                   # 8-byte Folded Spill
	add.d	$a4, $a4, $a6
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a7
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a7
	st.d	$a4, $sp, 368                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_31:                               # %.preheader2317.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_32 Depth 3
                                        #         Child Loop BB2_33 Depth 4
	st.d	$t7, $sp, 360                   # 8-byte Folded Spill
	move	$a5, $zero
	.p2align	4, , 16
.LBB2_32:                               # %.preheader2313.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_33 Depth 4
	st.d	$a5, $sp, 648                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$s2, $zero
	move	$a4, $a0
	move	$a7, $a3
	move	$fp, $a2
	alsl.d	$s3, $a1, $t6, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a1, $sp, 632                   # 8-byte Folded Spill
	alsl.d	$s5, $a1, $a0, 3
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a2, 3
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 3
	alsl.d	$a0, $a4, $a2, 3
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	st.d	$a4, $sp, 616                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a1, 3
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	ld.d	$t4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t1, $a0, $t4, 3
	alsl.d	$a1, $a0, $ra, 3
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $a3, 3
	ld.d	$t6, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t6, 3
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t2, 3
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t7, 3
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	st.d	$a2, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a2, 3
	st.d	$a5, $sp, 696                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t3, 3
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a4, 3
	st.d	$a4, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a4, 3
	st.d	$a4, $sp, 664                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a4, 3
	st.d	$a4, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a4, 3
	ld.d	$a5, $sp, 952                   # 8-byte Folded Reload
	st.d	$a7, $sp, 640                   # 8-byte Folded Spill
	alsl.d	$a7, $a7, $a5, 3
	alsl.d	$t0, $fp, $ra, 3
	alsl.d	$a5, $fp, $t6, 3
	alsl.d	$t2, $fp, $t2, 3
	alsl.d	$t6, $fp, $t7, 3
	alsl.d	$t7, $fp, $a1, 3
	alsl.d	$t8, $fp, $t4, 3
	alsl.d	$a2, $fp, $a2, 3
	alsl.d	$a3, $fp, $a3, 3
	alsl.d	$a0, $fp, $t3, 3
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$s4, $fp, $a1, 3
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a1, 3
	ld.d	$t3, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s0, $fp, $t3, 3
	ld.d	$t3, $sp, 368                   # 8-byte Folded Reload
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	alsl.d	$fp, $fp, $t3, 3
	ld.d	$t4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_33:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s3, $s2
	fldx.d	$fa1, $t1, $s1
	ld.d	$ra, $sp, 760                   # 8-byte Folded Reload
	fldx.d	$fa2, $ra, $s1
	ld.d	$ra, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa3, $ra, $s2
	fldx.d	$fa4, $t0, $s1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$ra, $sp, 768                   # 8-byte Folded Reload
	fstx.d	$fa0, $ra, $s2
	fldx.d	$fa0, $s3, $s2
	fldx.d	$fa1, $t5, $s1
	add.d	$ra, $a6, $s2
	ld.d	$s8, $sp, 752                   # 8-byte Folded Reload
	fldx.d	$fa2, $s8, $s1
	fld.d	$fa3, $ra, 8
	fldx.d	$fa4, $a5, $s1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s8, $sp, 680                   # 8-byte Folded Reload
	fstx.d	$fa0, $s8, $s2
	fldx.d	$fa0, $s3, $s2
	ld.d	$s8, $sp, 744                   # 8-byte Folded Reload
	fldx.d	$fa1, $s8, $s1
	fldx.d	$fa2, $a6, $s2
	fldx.d	$fa3, $t2, $s1
	ld.d	$s8, $sp, 736                   # 8-byte Folded Reload
	fldx.d	$fa4, $s8, $s1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$s8, $sp, 672                   # 8-byte Folded Reload
	fstx.d	$fa0, $s8, $s2
	fldx.d	$fa0, $s3, $s2
	ld.d	$s8, $sp, 728                   # 8-byte Folded Reload
	fldx.d	$fa1, $s8, $s1
	ld.d	$s8, $sp, 720                   # 8-byte Folded Reload
	fldx.d	$fa2, $s8, $s1
	fld.d	$fa3, $ra, -8
	fldx.d	$fa4, $t6, $s1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s8, $sp, 664                   # 8-byte Folded Reload
	fstx.d	$fa0, $s8, $s2
	fldx.d	$fa0, $s3, $s2
	ld.d	$s8, $sp, 712                   # 8-byte Folded Reload
	fldx.d	$fa1, $s8, $s1
	ld.d	$s8, $sp, 704                   # 8-byte Folded Reload
	fldx.d	$fa2, $s8, $s1
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa3, $ra, $s2
	fldx.d	$fa4, $t7, $s1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s8, $sp, 656                   # 8-byte Folded Reload
	fstx.d	$fa0, $s8, $s2
	fldx.d	$fa0, $t8, $s1
	fldx.d	$fa1, $s5, $s2
	fldx.d	$fa2, $s4, $s1
	ld.d	$ra, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa3, $ra, $s2
	fldx.d	$fa4, $s3, $s2
	fldx.d	$fa5, $t1, $s1
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $s2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a2, $s1
	fldx.d	$fa5, $t0, $s1
	fldx.d	$fa7, $a1, $s1
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	fldx.d	$ft0, $s8, $s1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $a4, $s2
	fldx.d	$fa0, $a3, $s1
	fldx.d	$fa1, $s5, $s2
	fldx.d	$fa2, $s0, $s1
	ld.d	$ra, $sp, 784                   # 8-byte Folded Reload
	add.d	$ra, $ra, $s2
	fld.d	$fa3, $ra, 8
	fldx.d	$fa4, $s3, $s2
	fldx.d	$fa5, $t5, $s1
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	add.d	$ra, $ra, $s2
	fld.d	$fa6, $ra, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a0, $s1
	fldx.d	$fa5, $a5, $s1
	fldx.d	$fa7, $fp, $s1
	ld.d	$s8, $sp, 688                   # 8-byte Folded Reload
	fldx.d	$ft0, $s8, $s1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $a7, $s2
	addi.d	$s2, $s2, 8
	addi.w	$t3, $t3, -1
	add.d	$s1, $s1, $s7
	sub.d	$t4, $t4, $s6
	bnez	$t3, .LBB2_33
# %bb.34:                               # %._crit_edge.us.us.us.us.us.us2448
                                        #   in Loop: Header=BB2_32 Depth=3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 616                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	sub.w	$a0, $a0, $t3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 632                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a7
	sub.w	$a1, $a1, $t3
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 624                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t0
	sub.w	$a2, $a2, $t4
	ld.d	$a3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 640                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a6
	ld.d	$a5, $sp, 648                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	sub.w	$a3, $a3, $t3
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	bne	$a5, $a4, .LBB2_32
# %bb.35:                               # %._crit_edge2402.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	sub.w	$a0, $a0, $t3
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a7
	sub.w	$a1, $a1, $t3
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t0
	sub.w	$a2, $a2, $t4
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a6
	ld.d	$t7, $sp, 360                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	sub.w	$a3, $a3, $t3
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	bne	$t7, $a4, .LBB2_31
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_36:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$t5, $zero, 1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 400                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.37:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.38:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.39:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.40:                               # %.preheader2318.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a4, $a0, 4
	move	$s1, $zero
	vpickve2gr.w	$a5, $vr4, 3
	ld.w	$a0, $a0, 8
	mul.d	$a1, $a4, $a5
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	vmul.w	$vr0, $vr4, $vr2
	vpickve2gr.w	$a1, $vr0, 3
	mul.d	$a6, $a1, $a0
	ld.d	$t8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a0, $t8, $s0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	vpickve2gr.w	$a7, $vr4, 1
	vpickve2gr.w	$t0, $vr4, 0
	vpickve2gr.w	$t1, $vr4, 2
	vpickve2gr.w	$t2, $vr2, 1
	vpickve2gr.w	$t3, $vr2, 0
	vpickve2gr.w	$t4, $vr2, 2
	move	$s6, $s2
	bstrpick.d	$s2, $s4, 31, 0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bstrpick.d	$s3, $a0, 31, 0
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	bstrpick.d	$s4, $a0, 31, 0
	vpickve2gr.w	$a1, $vr1, 0
	vpickve2gr.w	$a0, $vr1, 1
	vpickve2gr.w	$a3, $vr1, 2
	vpickve2gr.w	$a2, $vr1, 3
	ld.d	$t7, $sp, 464                   # 8-byte Folded Reload
	sub.d	$t3, $t3, $t7
	addi.d	$t3, $t3, 1
	mul.d	$t3, $t0, $t3
	sub.d	$t3, $t3, $t8
	st.d	$t3, $sp, 120                   # 8-byte Folded Spill
	sub.d	$t0, $t0, $t8
	st.d	$t0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	addi.d	$t0, $t3, 8
	st.d	$t0, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$t0, $s4, $t0, 3
	st.d	$t0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	addi.d	$t0, $t0, 8
	st.d	$t0, $sp, 248                   # 8-byte Folded Spill
	mul.d	$a4, $a5, $a4
	sub.d	$a5, $t5, $t7
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	slli.d	$a4, $s2, 3
	move	$s2, $s6
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	slli.d	$a5, $s0, 3
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	sub.d	$a5, $s3, $s4
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a5, $s6, $a4
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	sub.d	$a5, $ra, $a4
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	sub.d	$a5, $t2, $t7
	addi.d	$a5, $a5, 1
	mul.d	$a5, $a7, $a5
	sub.d	$a5, $a5, $t8
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a5, $a7, $t8
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	sub.d	$a5, $t4, $t7
	addi.d	$a5, $a5, 1
	mul.d	$a5, $t1, $a5
	sub.d	$a5, $a5, $t8
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a5, $t1, $t8
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	sub.d	$a4, $a5, $a4
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a4, $s3, $t3, 3
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_41:                               # %.preheader2318.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_42 Depth 3
                                        #         Child Loop BB2_43 Depth 4
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	move	$a5, $zero
	.p2align	4, , 16
.LBB2_42:                               # %.preheader2314.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_43 Depth 4
	st.d	$a5, $sp, 376                   # 8-byte Folded Spill
	move	$a5, $zero
	move	$a6, $zero
	move	$t8, $zero
	move	$a7, $a1
	move	$t2, $a0
	move	$s6, $a3
	move	$a4, $a2
	alsl.d	$a0, $a1, $t6, 3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a7, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$a7, $a7, $a1, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$t0, $a1, $s8, 3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t1, $a1, $s1, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$t4, $a1, $s3, 3
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a2
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t5, $a2, $fp, 3
	ld.d	$s4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t6, $a2, $s4, 3
	alsl.d	$a1, $a2, $ra, 3
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	alsl.d	$t3, $a2, $s2, 3
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $s2, 3
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $ra, 3
	st.d	$a3, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 800                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $t7, 3
	st.d	$a3, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a3, $a2, $s5, 3
	st.d	$a3, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 744                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $s7, 3
	st.d	$a3, $sp, 736                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a2, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t2
	st.d	$a2, $sp, 720                   # 8-byte Folded Spill
	move	$a3, $ra
	alsl.d	$ra, $t2, $s1, 3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	st.d	$a2, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	st.d	$a2, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	st.d	$a2, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	st.d	$a2, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s1, $t2, $a2, 3
	alsl.d	$a2, $t2, $s3, 3
	st.d	$a2, $sp, 680                   # 8-byte Folded Spill
	st.d	$t2, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a2, $t2, $s8, 3
	st.d	$a2, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 664                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 648                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 640                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 616                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 608                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 600                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 584                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 576                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 952                   # 8-byte Folded Reload
	st.d	$s6, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a2, $s6, $a2, 3
	st.d	$a2, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s3, $a4, $a2, 3
	alsl.d	$s8, $a4, $a3, 3
	alsl.d	$a2, $a4, $t7, 3
	st.d	$a2, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	st.d	$a2, $sp, 552                   # 8-byte Folded Spill
	alsl.d	$a2, $a4, $s5, 3
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$a2, $a4, $fp, 3
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	alsl.d	$a2, $a4, $s4, 3
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	alsl.d	$a2, $a4, $s7, 3
	st.d	$a2, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$s2, $a4, $s2, 3
	alsl.d	$s7, $a4, $s0, 3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$fp, $a4, $a2, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	alsl.d	$a2, $a4, $a2, 3
	ld.d	$s0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_43:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        #       Parent Loop BB2_42 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a0, $a6
	fldx.d	$fa1, $t5, $a5
	fldx.d	$fa2, $t1, $a6
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s4, $t1, $a6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s5, $sp, 664                   # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $a6
	fldx.d	$fa0, $a0, $a6
	fldx.d	$fa1, $t6, $a5
	ld.d	$s5, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa2, $s5, $a5
	fld.d	$fa3, $s4, -8
	fldx.d	$fa4, $s3, $a5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $a6
	fldx.d	$fa0, $a0, $a6
	fldx.d	$fa1, $t3, $a5
	fld.d	$fa2, $s4, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $a6
	fldx.d	$fa0, $a0, $a6
	fldx.d	$fa1, $a1, $a5
	add.d	$s4, $s1, $a6
	ld.d	$s5, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa2, $s5, $a5
	fld.d	$fa3, $s4, 8
	fldx.d	$fa4, $s8, $a5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $a6
	fldx.d	$fa0, $a0, $a6
	ld.d	$s5, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa1, $s5, $a5
	fldx.d	$fa2, $s1, $a6
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	fldx.d	$fa3, $s5, $a5
	ld.d	$s5, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa4, $s5, $a5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$s5, $sp, 632                   # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $a6
	fldx.d	$fa0, $a0, $a6
	ld.d	$s5, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$fa1, $s5, $a5
	ld.d	$s5, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa2, $s5, $a5
	fld.d	$fa3, $s4, -8
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	fldx.d	$fa4, $s4, $a5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s4, $sp, 624                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $a6
	fldx.d	$fa0, $a0, $a6
	ld.d	$s4, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa1, $s4, $a5
	fldx.d	$fa2, $t4, $a6
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s4, $t4, $a6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s5, $sp, 616                   # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $a6
	fldx.d	$fa0, $a0, $a6
	ld.d	$s5, $sp, 760                   # 8-byte Folded Reload
	fldx.d	$fa1, $s5, $a5
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	fldx.d	$fa2, $s5, $a5
	fld.d	$fa3, $s4, -8
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	fldx.d	$fa4, $s5, $a5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s5, $sp, 608                   # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $a6
	fldx.d	$fa0, $a0, $a6
	ld.d	$s5, $sp, 744                   # 8-byte Folded Reload
	fldx.d	$fa1, $s5, $a5
	fld.d	$fa2, $s4, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $a6
	fldx.d	$fa0, $a7, $a6
	fldx.d	$fa1, $fp, $a5
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	fldx.d	$fa2, $s4, $a5
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $ra, $a6
	fldx.d	$fa3, $a0, $a6
	fldx.d	$fa4, $t5, $a5
	fldx.d	$fa5, $t0, $a6
	add.d	$s4, $ra, $a6
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $a6
	fld.d	$fa0, $s4, -8
	add.d	$s4, $t0, $a6
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	fldx.d	$fa1, $s5, $a5
	fldx.d	$fa2, $a7, $a6
	fldx.d	$fa3, $a2, $a5
	fldx.d	$fa4, $a0, $a6
	fldx.d	$fa5, $t6, $a5
	fld.d	$fa6, $s4, -8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	fldx.d	$fa3, $s4, $a5
	fldx.d	$fa5, $s3, $a5
	ld.d	$s4, $sp, 688                   # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $a5
	ld.d	$s4, $sp, 736                   # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $a5
	fmadd.d	$fa0, $fa3, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $a6
	ld.d	$s4, $sp, 720                   # 8-byte Folded Reload
	add.w	$s4, $s4, $t8
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	fldx.d	$fa0, $s5, $a5
	fldx.d	$fa1, $a7, $a6
	ld.d	$s5, $sp, 696                   # 8-byte Folded Reload
	fldx.d	$fa2, $s5, $a5
	slli.d	$s4, $s4, 3
	fldx.d	$fa3, $a3, $s4
	fldx.d	$fa4, $a0, $a6
	fldx.d	$fa5, $t3, $a5
	fldx.d	$fa6, $s6, $s4
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$s4, $sp, 576                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $a6
	fldx.d	$fa0, $s2, $a5
	fldx.d	$fa1, $a7, $a6
	ld.d	$s4, $sp, 704                   # 8-byte Folded Reload
	fldx.d	$fa2, $s4, $a5
	ld.d	$s4, $sp, 680                   # 8-byte Folded Reload
	fldx.d	$fa3, $s4, $a6
	fldx.d	$fa4, $a0, $a6
	fldx.d	$fa5, $a1, $a5
	ld.d	$s4, $sp, 672                   # 8-byte Folded Reload
	fldx.d	$fa6, $s4, $a6
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $s7, $a5
	fldx.d	$fa5, $s8, $a5
	ld.d	$s4, $sp, 712                   # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $a5
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $a5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $a6
	addi.w	$t8, $t8, 1
	addi.d	$a6, $a6, 8
	sub.d	$s0, $s0, $a4
	add.d	$a5, $a5, $t2
	bne	$t7, $t8, .LBB2_43
# %bb.44:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_42 Depth=3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	add.w	$a0, $a0, $t8
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a7
	add.w	$a1, $a1, $t8
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 352                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t0
	sub.w	$a2, $a2, $s0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a6
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	add.w	$a3, $a3, $t8
	ld.d	$s5, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	bne	$a5, $a4, .LBB2_42
# %bb.45:                               # %._crit_edge2345.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_41 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	add.w	$a0, $a0, $t8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a7
	add.w	$a1, $a1, $t8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t0
	sub.w	$a2, $a2, $s0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a6
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	add.w	$a3, $a3, $t8
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	bne	$s1, $a4, .LBB2_41
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_46:                               #   in Loop: Header=BB2_3 Depth=1
	blez	$a0, .LBB2_2
# %bb.47:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.48:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.49:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.50:                               # %.preheader2315.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1008
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a3, 4
	move	$a4, $zero
	vinsgr2vr.d	$vr3, $a0, 0
	vpickve2gr.w	$a0, $vr4, 3
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a0
	vmul.w	$vr5, $vr4, $vr2
	ld.w	$a3, $a3, 8
	vori.b	$vr6, $vr4, 0
	vinsgr2vr.w	$vr6, $a0, 3
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	vreplvei.w	$vr7, $vr3, 1
	vinsgr2vr.w	$vr3, $a0, 1
	vshuf4i.w	$vr3, $vr3, 64
	vsub.w	$vr3, $vr6, $vr3
	vinsgr2vr.w	$vr7, $a3, 1
	vshuf4i.w	$vr7, $vr7, 64
	vsub.w	$vr2, $vr2, $vr7
	vmul.w	$vr5, $vr5, $vr7
	vinsgr2vr.w	$vr6, $a1, 3
	vmul.w	$vr2, $vr2, $vr4
	vsub.w	$vr4, $vr5, $vr6
	vshuf.w	$vr0, $vr4, $vr2
	addi.w	$a0, $s4, 0
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	addi.w	$t7, $a0, 0
	vrepli.d	$vr2, 1
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$s7, $a1, $a0, 3
	vori.b	$vr4, $vr2, 0
	vinsgr2vr.d	$vr4, $a2, 1
	.p2align	4, , 16
.LBB2_51:                               # %.preheader2315.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_52 Depth 3
                                        #         Child Loop BB2_53 Depth 4
	st.d	$a4, $sp, 792                   # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_52:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_51 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_53 Depth 4
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	vshuf4i.w	$vr5, $vr1, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_53:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_51 Depth=2
                                        #       Parent Loop BB2_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vpickve2gr.d	$t3, $vr5, 1
	add.d	$a0, $t3, $ra
	vpickve2gr.d	$a1, $vr1, 0
	slli.d	$t0, $a1, 3
	fldx.d	$fa6, $t6, $t0
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $a3, $a0
	vpickve2gr.d	$t2, $vr1, 1
	add.d	$t4, $t2, $t7
	fmul.d	$fa7, $fa6, $fa7
	move	$a2, $t5
	alsl.d	$t5, $t4, $s7, 3
	fld.d	$ft0, $t5, 8
	fldx.d	$ft1, $s4, $a0
	slli.d	$t1, $t3, 3
	fldx.d	$ft2, $s4, $t1
	slli.d	$t6, $t4, 3
	fmul.d	$fa6, $fa6, $ft1
	fmadd.d	$fa6, $fa7, $ft0, $fa6
	fmadd.d	$fa6, $ft2, $ft0, $fa6
	vpickve2gr.d	$a1, $vr5, 0
	slli.d	$a1, $a1, 3
	ld.d	$fp, $sp, 824                   # 8-byte Folded Reload
	fstx.d	$fa6, $fp, $a1
	ld.d	$ra, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $t0
	fldx.d	$fa7, $s0, $a0
	fldx.d	$ft0, $a6, $a0
	fldx.d	$ft1, $s7, $t6
	fldx.d	$ft2, $a6, $t1
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $ft1, $fa6
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	fstx.d	$fa6, $fp, $a1
	ld.d	$ra, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $t0
	fldx.d	$fa7, $s2, $a0
	fldx.d	$ft0, $s8, $a0
	fld.d	$ft1, $t5, -8
	fldx.d	$ft2, $s8, $t1
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $ft1, $fa6
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	fstx.d	$fa6, $t5, $a1
	ld.d	$t5, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa6, $t5, $t0
	fldx.d	$fa7, $a5, $a0
	alsl.d	$t5, $t4, $s3, 3
	fldx.d	$ft0, $s6, $a0
	fld.d	$ft1, $t5, 8
	fldx.d	$ft2, $s6, $t1
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $ft1, $fa6
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	ld.d	$fp, $sp, 920                   # 8-byte Folded Reload
	fstx.d	$fa6, $fp, $a1
	ld.d	$ra, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa6, $ra, $t0
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa7, $fp, $a0
	fldx.d	$ft0, $s3, $t6
	ld.d	$t6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$ft1, $fp, $t1
	fldx.d	$ft2, $fp, $a0
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa7, $ft0, $fa7
	fmadd.d	$fa7, $ft1, $ft0, $fa7
	fmadd.d	$fa6, $fa6, $ft2, $fa7
	ld.d	$fp, $sp, 936                   # 8-byte Folded Reload
	fstx.d	$fa6, $fp, $a1
	fldx.d	$fa6, $t6, $t0
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa7, $fp, $a0
	ld.d	$fp, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$ft0, $fp, $a0
	fld.d	$ft1, $t5, -8
	fldx.d	$ft2, $fp, $t1
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $ft1, $fa6
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	ld.d	$t5, $sp, 928                   # 8-byte Folded Reload
	fstx.d	$fa6, $t5, $a1
	fldx.d	$fa6, $t6, $t0
	ld.d	$a4, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa7, $a4, $a0
	sub.d	$t3, $t3, $ra
	ld.d	$a4, $sp, 872                   # 8-byte Folded Reload
	sub.d	$t4, $t4, $a4
	fmul.d	$fa7, $fa6, $fa7
	alsl.d	$t5, $t4, $s3, 3
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	fldx.d	$ft0, $fp, $a0
	fld.d	$ft1, $t5, 8
	fldx.d	$ft2, $fp, $t1
	slli.d	$t4, $t4, 3
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $ft1, $fa6
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	ld.d	$fp, $sp, 840                   # 8-byte Folded Reload
	fstx.d	$fa6, $fp, $a1
	fldx.d	$fa6, $t6, $t0
	ld.d	$fp, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa7, $fp, $a0
	ld.d	$fp, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$ft0, $fp, $a0
	fldx.d	$ft1, $s3, $t4
	fldx.d	$ft2, $fp, $t1
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $ft1, $fa6
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	ld.d	$t4, $sp, 912                   # 8-byte Folded Reload
	fstx.d	$fa6, $t4, $a1
	fldx.d	$fa6, $t6, $t0
	ld.d	$t4, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa7, $t4, $a0
	ld.d	$t4, $sp, 504                   # 8-byte Folded Reload
	fldx.d	$ft0, $t4, $a0
	fld.d	$ft1, $t5, -8
	fldx.d	$ft2, $t4, $t1
	fmul.d	$fa7, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	fmadd.d	$fa6, $fa7, $ft1, $fa6
	fmadd.d	$fa6, $ft2, $ft1, $fa6
	ld.d	$t4, $sp, 864                   # 8-byte Folded Reload
	fstx.d	$fa6, $t4, $a1
	add.d	$t4, $t2, $a4
	fldx.d	$fa6, $a3, $t1
	fldx.d	$fa7, $s5, $t0
	slli.d	$t3, $t3, 3
	fldx.d	$ft0, $a3, $t3
	slli.d	$t4, $t4, 3
	addi.d	$t5, $t4, 8
	fldx.d	$ft1, $s3, $t5
	fldx.d	$ft2, $t6, $t0
	fldx.d	$ft3, $a3, $a0
	fldx.d	$ft4, $s1, $t5
	move	$t5, $a2
	fmul.d	$ft0, $fa7, $ft0
	fmadd.d	$fa6, $ft0, $ft1, $fa6
	fmul.d	$ft0, $ft2, $ft3
	fmadd.d	$fa6, $ft0, $ft4, $fa6
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	fldx.d	$ft0, $a2, $t1
	fldx.d	$ft3, $s4, $t1
	fldx.d	$ft5, $s4, $t3
	fldx.d	$ft6, $a2, $a0
	fmadd.d	$fa6, $ft0, $ft1, $fa6
	fmadd.d	$fa6, $ft3, $ft4, $fa6
	fmadd.d	$fa6, $fa7, $ft5, $fa6
	fmadd.d	$fa6, $ft2, $ft6, $fa6
	fstx.d	$fa6, $t5, $a1
	fldx.d	$fa6, $s0, $t1
	fldx.d	$fa7, $s5, $t0
	fldx.d	$ft0, $s0, $t3
	fldx.d	$ft1, $s3, $t4
	fldx.d	$ft2, $t6, $t0
	fldx.d	$ft3, $s0, $a0
	fldx.d	$ft4, $s1, $t4
	fmul.d	$ft0, $fa7, $ft0
	fmadd.d	$fa6, $ft0, $ft1, $fa6
	fmul.d	$ft0, $ft2, $ft3
	fmadd.d	$fa6, $ft0, $ft4, $fa6
	ld.d	$a2, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$ft0, $a2, $t1
	fldx.d	$ft3, $a6, $t1
	fldx.d	$ft5, $a6, $t3
	fldx.d	$ft6, $a2, $a0
	fmadd.d	$fa6, $ft0, $ft1, $fa6
	fmadd.d	$fa6, $ft3, $ft4, $fa6
	fmadd.d	$fa6, $fa7, $ft5, $fa6
	fmadd.d	$fa6, $ft2, $ft6, $fa6
	ld.d	$a2, $sp, 944                   # 8-byte Folded Reload
	fstx.d	$fa6, $a2, $a1
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	add.w	$t4, $a2, $t2
	fldx.d	$fa6, $s2, $t1
	fldx.d	$fa7, $s5, $t0
	fldx.d	$ft0, $s2, $t3
	slli.d	$t4, $t4, 3
	fldx.d	$ft1, $s3, $t4
	fldx.d	$ft2, $t6, $t0
	fldx.d	$ft3, $s2, $a0
	fldx.d	$ft4, $s1, $t4
	fmul.d	$ft0, $fa7, $ft0
	fmadd.d	$fa6, $ft0, $ft1, $fa6
	fmul.d	$ft0, $ft2, $ft3
	fmadd.d	$fa6, $ft0, $ft4, $fa6
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	fldx.d	$ft0, $a2, $t1
	fldx.d	$ft3, $s8, $t1
	fldx.d	$ft5, $s8, $t3
	fldx.d	$ft6, $a2, $a0
	fmadd.d	$fa6, $ft0, $ft1, $fa6
	fmadd.d	$fa6, $ft3, $ft4, $fa6
	fmadd.d	$fa6, $fa7, $ft5, $fa6
	fmadd.d	$fa6, $ft2, $ft6, $fa6
	fstx.d	$fa6, $t8, $a1
	fldx.d	$fa6, $s5, $t0
	fldx.d	$fa7, $t6, $t0
	slli.d	$t0, $t2, 3
	addi.d	$t0, $t0, 8
	fldx.d	$ft0, $s3, $t0
	fldx.d	$ft1, $s1, $t0
	fldx.d	$ft2, $a5, $t1
	ld.d	$a2, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$ft3, $a2, $t1
	fldx.d	$ft4, $s6, $t1
	fldx.d	$ft5, $a5, $t3
	fldx.d	$ft6, $s6, $t3
	fldx.d	$ft7, $a5, $a0
	fldx.d	$ft8, $a2, $a0
	fmul.d	$ft5, $fa6, $ft5
	fmadd.d	$ft2, $ft5, $ft0, $ft2
	fmul.d	$ft5, $fa7, $ft7
	fmadd.d	$ft2, $ft5, $ft1, $ft2
	fmadd.d	$ft0, $ft3, $ft0, $ft2
	fmadd.d	$ft0, $ft4, $ft1, $ft0
	fmadd.d	$fa6, $fa6, $ft6, $ft0
	fmadd.d	$fa6, $fa7, $ft8, $fa6
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	fstx.d	$fa6, $a0, $a1
	vadd.d	$vr1, $vr1, $vr2
	addi.w	$a7, $a7, -1
	vadd.d	$vr5, $vr5, $vr4
	bnez	$a7, .LBB2_53
# %bb.54:                               # %._crit_edge.us.us.us.us.us.us2570
                                        #   in Loop: Header=BB2_52 Depth=3
	vpickev.w	$vr1, $vr5, $vr1
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vadd.w	$vr1, $vr3, $vr1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_52
# %bb.55:                               # %._crit_edge2524.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_51 Depth=2
	ld.d	$a4, $sp, 792                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	vadd.w	$vr1, $vr0, $vr1
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$a4, $a0, .LBB2_51
	b	.LBB2_2
.LBB2_56:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 944                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	b	.LBB2_11
.LBB2_57:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.Lfunc_end2:
	.size	hypre_SMG3BuildRAPNoSym, .Lfunc_end2-hypre_SMG3BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicSym        # -- Begin function hypre_SMG3RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicSym,@function
hypre_SMG3RAPPeriodicSym:               # @hypre_SMG3RAPPeriodicSym
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a3, $a0, 8
	ld.w	$a1, $a3, 64
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_87
# %bb.1:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$fp, $a3, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	blez	$a0, .LBB3_87
# %bb.2:                                # %.lr.ph
	move	$s1, $zero
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
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
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB3_87
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
                                        #         Child Loop BB3_66 Depth 4
                                        #         Child Loop BB3_52 Depth 4
                                        #     Child Loop BB3_78 Depth 2
                                        #       Child Loop BB3_80 Depth 3
                                        #         Child Loop BB3_83 Depth 4
                                        #         Child Loop BB3_86 Depth 4
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	slli.d	$a1, $s1, 4
	alsl.d	$a2, $s1, $a1, 3
	add.d	$a1, $a0, $a2
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	st.d	$fp, $sp, 364
	st.w	$zero, $sp, 372
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 12
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	st.d	$s7, $sp, 368
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $sp, 364
	st.w	$s2, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 364
	st.w	$s2, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 364
	st.w	$s2, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 364
	st.w	$s2, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s2, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s0
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	st.d	$s2, $sp, 364
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	st.w	$s4, $sp, 372
	addi.d	$a2, $sp, 364
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s7
	move	$s1, $fp
	move	$fp, $s6
	move	$s6, $s8
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	lu32i.d	$s0, -1
	st.d	$s0, $sp, 364
	st.w	$s4, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	move	$a0, $s2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 364
	st.w	$s4, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 364
	st.w	$s4, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s0, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $s7
	move	$a1, $s8
	move	$s8, $s6
	move	$s6, $fp
	move	$fp, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 352
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ori	$s7, $zero, 16
	vldi	$vr23, -1024
	vld	$vr24, $sp, 96                  # 16-byte Folded Reload
	vld	$vr25, $sp, 48                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	blez	$a2, .LBB3_41
# %bb.7:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_41
# %bb.8:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	blez	$a2, .LBB3_41
# %bb.9:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_41
# %bb.10:                               # %.preheader709.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	vreplgr2vr.d	$vr0, $s8
	vreplgr2vr.d	$vr2, $s6
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $t2, 1
	vinsgr2vr.d	$vr3, $ra, 0
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
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
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
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a5, $a0, -1
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	nor	$t0, $a4, $zero
	st.d	$a5, $sp, 328                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a5, 31, 0
	alsl.d	$a5, $a4, $fp, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $s1, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s8, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s6, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	addi.d	$t6, $t2, -8
	alsl.d	$a5, $a4, $t2, 3
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $ra, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $s5, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 30, 1
	slli.d	$a4, $a4, 1
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	move	$a5, $a2
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge725.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_12 Depth=2
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
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
	bltu	$a0, $s7, .LBB3_15
# %bb.14:                               # %vector.scevcheck1029
                                        #   in Loop: Header=BB3_13 Depth=3
	add.w	$s2, $a5, $t0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	add.w	$a4, $s2, $a4
	bge	$a4, $s2, .LBB3_19
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s0, $zero
.LBB3_16:                               # %scalar.ph1134.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	slli.d	$a4, $a5, 3
	add.w	$a7, $t0, $a5
	sub.d	$t1, $a0, $s0
	ld.d	$t2, $sp, 336                   # 8-byte Folded Reload
	move	$t3, $ra
	move	$t4, $s1
	move	$t5, $t6
	move	$t7, $s6
	move	$t8, $fp
	move	$s0, $s8
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
	alsl.d	$t1, $a5, $fp, 3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$s0, $a5, $a4, 3
	alsl.d	$t2, $a5, $s1, 3
	move	$a4, $s8
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $a7, 3
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t3, $a5, $a7, 3
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s1, $a5, $a7, 3
	move	$a7, $s6
	move	$s6, $a4
	alsl.d	$t4, $a5, $a4, 3
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a4, 3
	move	$fp, $a7
	alsl.d	$t5, $a5, $a7, 3
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 3
	alsl.d	$t7, $a5, $t6, 3
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t8, $a5, $a7, 3
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a7, $s2, $a7, 3
	vinsgr2vr.d	$vr8, $a7, 0
	vinsgr2vr.d	$vr9, $s1, 0
	vinsgr2vr.d	$vr9, $t8, 1
	vinsgr2vr.d	$vr10, $t8, 0
	alsl.d	$t8, $a5, $ra, 3
	vori.b	$vr11, $vr8, 0
	vinsgr2vr.d	$vr11, $s7, 1
	vinsgr2vr.d	$vr12, $s7, 0
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
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
	vinsgr2vr.d	$vr15, $s1, 1
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
	vinsgr2vr.d	$vr20, $s1, 1
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
	bnez	$a4, .LBB3_25
# %bb.20:                               # %vector.memcheck1030
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a4, $t3, $s7
	sltu	$s7, $t8, $s1
	and	$a4, $a4, $s7
	bnez	$a4, .LBB3_25
# %bb.21:                               # %vector.memcheck1030
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a4, $t3, $a7
	sltu	$a7, $s8, $s1
	and	$a4, $a4, $a7
	ori	$s7, $zero, 16
	bnez	$a4, .LBB3_26
# %bb.22:                               # %vector.ph1136
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	add.d	$a5, $a4, $a5
	move	$s8, $s6
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
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
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	move	$s0, $a4
	move	$s6, $fp
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	bne	$a4, $a0, .LBB3_16
	b	.LBB3_18
.LBB3_25:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
.LBB3_26:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s8, $s6
	move	$s6, $fp
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_27:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB3_41
# %bb.28:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
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
	sub.d	$a6, $s5, $ra
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
	addi.d	$a7, $s8, 16
	addi.d	$t0, $s5, 16
	addi.d	$t1, $s6, 16
	addi.d	$t2, $ra, 16
	addi.d	$t3, $s1, 16
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_31:                               # %._crit_edge749.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_32 Depth=2
	addi.w	$a4, $a4, 1
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t4
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
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
	alsl.d	$a2, $t5, $s8, 3
	alsl.d	$t6, $t5, $s6, 3
	alsl.d	$t7, $t5, $s1, 3
	alsl.d	$t8, $t5, $ra, 3
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
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_3
# %bb.42:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 352
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	vld	$vr24, $sp, 96                  # 16-byte Folded Reload
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB3_3
# %bb.43:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a0, .LBB3_3
# %bb.44:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.45:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.46:                               # %.preheader707.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $zero
	ld.w	$a2, $s2, 0
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $t2, 0
	ld.w	$a4, $s2, 4
	ld.w	$a5, $t2, 4
	ld.w	$a6, $s2, 8
	ld.w	$a7, $t2, 8
	ld.w	$t0, $t2, 16
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
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
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	addi.w	$a7, $a0, -1
	bstrpick.d	$a2, $a7, 31, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $t0, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $t1, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 312                   # 8-byte Folded Spill
	alsl.d	$a4, $a2, $s4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 296                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $t2, 3
	addi.d	$t4, $a4, 8
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $s3, 3
	addi.d	$t5, $a2, 8
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$t6, $a2, 1
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	sub.d	$t7, $zero, $a2
	move	$t8, $a5
	ori	$t3, $zero, 12
	b	.LBB3_48
	.p2align	4, , 16
.LBB3_47:                               # %._crit_edge776.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_48 Depth=2
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	beq	$fp, $a2, .LBB3_73
.LBB3_48:                               # %.preheader707.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_49 Depth 3
                                        #         Child Loop BB3_66 Depth 4
                                        #         Child Loop BB3_52 Depth 4
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB3_49:                               # %.preheader703.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_48 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_66 Depth 4
                                        #         Child Loop BB3_52 Depth 4
	bgeu	$a0, $t3, .LBB3_54
# %bb.50:                               #   in Loop: Header=BB3_49 Depth=3
	move	$s1, $zero
.LBB3_51:                               # %scalar.ph977.preheader
                                        #   in Loop: Header=BB3_49 Depth=3
	add.w	$s0, $t7, $t8
	alsl.d	$s2, $t8, $a4, 3
	alsl.d	$s5, $t8, $t0, 3
	alsl.d	$s6, $t8, $t2, 3
	alsl.d	$s7, $t8, $t1, 3
	sub.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB3_52:                               # %scalar.ph977
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_48 Depth=2
                                        #       Parent Loop BB3_49 Depth=3
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
	bnez	$s1, .LBB3_52
.LBB3_53:                               # %._crit_edge773.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_49 Depth=3
	addi.w	$fp, $fp, 1
	add.w	$t8, $a3, $t8
	bne	$fp, $a1, .LBB3_49
	b	.LBB3_47
	.p2align	4, , 16
.LBB3_54:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	sub.w	$s0, $t8, $a2
	addi.w	$s7, $s0, -2
	add.w	$a2, $s7, $a7
	move	$s1, $zero
	blt	$a2, $s7, .LBB3_51
# %bb.55:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_49 Depth=3
	add.w	$a2, $s0, $a7
	blt	$a2, $s0, .LBB3_51
# %bb.56:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	alsl.d	$s2, $t8, $t0, 3
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$ra, $t8, $a2, 3
	alsl.d	$s5, $t8, $t1, 3
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$s8, $t8, $a2, 3
	sltu	$a2, $s2, $s8
	sltu	$a4, $s5, $ra
	and	$a2, $a2, $a4
	move	$s1, $zero
	bnez	$a2, .LBB3_72
# %bb.57:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$s6, $t8, $a2, 3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $t8, $a2, 3
	sltu	$a2, $s2, $a4
	sltu	$a6, $s6, $ra
	and	$a2, $a2, $a6
	bnez	$a2, .LBB3_72
# %bb.58:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	alsl.d	$a2, $s7, $s4, 3
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a6, 3
	sltu	$t0, $s2, $a6
	sltu	$t1, $a2, $ra
	and	$t0, $t0, $t1
	bnez	$t0, .LBB3_71
# %bb.59:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	alsl.d	$s7, $t8, $t2, 3
	alsl.d	$t0, $t8, $t4, 3
	sltu	$t1, $s2, $t0
	sltu	$t2, $s7, $ra
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_69
# %bb.60:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	alsl.d	$t1, $s0, $s3, 3
	alsl.d	$t2, $s0, $t5, 3
	sltu	$t3, $s2, $t2
	sltu	$ra, $t1, $ra
	and	$t3, $t3, $ra
	bnez	$t3, .LBB3_68
# %bb.61:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	sltu	$a4, $s5, $a4
	sltu	$t3, $s6, $s8
	and	$a4, $a4, $t3
	bnez	$a4, .LBB3_68
# %bb.62:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	sltu	$a4, $s5, $a6
	sltu	$a2, $a2, $s8
	and	$a2, $a4, $a2
	ori	$t3, $zero, 12
	bnez	$a2, .LBB3_69
# %bb.63:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	sltu	$a2, $s5, $t0
	sltu	$a4, $s7, $s8
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_69
# %bb.64:                               # %vector.memcheck921
                                        #   in Loop: Header=BB3_49 Depth=3
	sltu	$a2, $s5, $t2
	sltu	$a4, $t1, $s8
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_69
# %bb.65:                               # %vector.ph979
                                        #   in Loop: Header=BB3_49 Depth=3
	add.d	$t8, $t6, $t8
	move	$s1, $t6
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_66:                               # %vector.body982
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_48 Depth=2
                                        #       Parent Loop BB3_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $s0, -2
	vld	$vr0, $s6, 0
	slli.d	$a2, $a2, 3
	vldx	$vr1, $s4, $a2
	vfadd.d	$vr0, $vr0, $vr1
	vld	$vr1, $s2, 0
	vld	$vr2, $s7, 0
	slli.d	$a2, $s0, 3
	vldx	$vr3, $s3, $a2
	vld	$vr4, $s5, 0
	vfadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $s2, 0
	vfadd.d	$vr0, $vr2, $vr3
	vfadd.d	$vr0, $vr4, $vr0
	vst	$vr0, $s5, 0
	addi.w	$s0, $s0, 2
	addi.d	$s1, $s1, -2
	addi.d	$s5, $s5, 16
	addi.d	$s7, $s7, 16
	addi.d	$s2, $s2, 16
	addi.d	$s6, $s6, 16
	bnez	$s1, .LBB3_66
# %bb.67:                               # %middle.block992
                                        #   in Loop: Header=BB3_49 Depth=3
	move	$s1, $t6
	bne	$t6, $a0, .LBB3_51
	b	.LBB3_53
.LBB3_68:                               #   in Loop: Header=BB3_49 Depth=3
	ori	$t3, $zero, 12
.LBB3_69:                               #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
.LBB3_70:                               # %scalar.ph977.preheader
                                        #   in Loop: Header=BB3_49 Depth=3
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	b	.LBB3_51
.LBB3_71:                               #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_70
.LBB3_72:                               #   in Loop: Header=BB3_49 Depth=3
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_51
.LBB3_73:                               # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	blez	$a0, .LBB3_3
# %bb.74:                               # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	blez	$a2, .LBB3_3
# %bb.75:                               # %.preheader710.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$a1, .LBB3_3
# %bb.76:                               # %.preheader706.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	ld.d	$t3, $sp, 320                   # 8-byte Folded Reload
	sub.d	$a2, $t3, $a4
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a4, $s3, $a4
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a7, $s4, $a7
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
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$t0, $a2, 2
	addi.d	$t1, $a4, 16
	addi.d	$t2, $s4, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $s3, 16
	b	.LBB3_78
	.p2align	4, , 16
.LBB3_77:                               # %._crit_edge802.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_78 Depth=2
	addi.w	$a6, $a6, 1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	beq	$a6, $a2, .LBB3_3
.LBB3_78:                               # %.preheader706.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_80 Depth 3
                                        #         Child Loop BB3_83 Depth 4
                                        #         Child Loop BB3_86 Depth 4
	move	$t5, $zero
	b	.LBB3_80
	.p2align	4, , 16
.LBB3_79:                               # %._crit_edge799.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_80 Depth=3
	addi.w	$t5, $t5, 1
	add.w	$a5, $a3, $t6
	beq	$t5, $a1, .LBB3_77
.LBB3_80:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_78 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_83 Depth 4
                                        #         Child Loop BB3_86 Depth 4
	sltui	$a2, $a0, 6
	or	$a2, $a2, $a7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB3_82
# %bb.81:                               #   in Loop: Header=BB3_80 Depth=3
	move	$a2, $zero
	move	$t6, $a5
	b	.LBB3_85
	.p2align	4, , 16
.LBB3_82:                               # %vector.ph
                                        #   in Loop: Header=BB3_80 Depth=3
	add.d	$t6, $t0, $a5
	alsl.d	$t7, $a5, $t1, 3
	alsl.d	$t8, $a5, $t2, 3
	alsl.d	$fp, $a5, $t3, 3
	alsl.d	$a5, $a5, $t4, 3
	move	$a2, $t0
	.p2align	4, , 16
.LBB3_83:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_78 Depth=2
                                        #       Parent Loop BB3_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr24, $t7, -16
	vst	$vr24, $t7, 0
	vst	$vr24, $fp, -16
	vst	$vr24, $fp, 0
	vst	$vr24, $a5, -16
	vst	$vr24, $a5, 0
	vst	$vr24, $t8, -16
	vst	$vr24, $t8, 0
	addi.d	$a2, $a2, -4
	addi.d	$t7, $t7, 32
	addi.d	$t8, $t8, 32
	addi.d	$fp, $fp, 32
	addi.d	$a5, $a5, 32
	bnez	$a2, .LBB3_83
# %bb.84:                               # %middle.block
                                        #   in Loop: Header=BB3_80 Depth=3
	move	$a2, $t0
	beq	$t0, $a0, .LBB3_79
.LBB3_85:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_80 Depth=3
	alsl.d	$a5, $t6, $a4, 3
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t7, $t6, $t7, 3
	alsl.d	$t8, $t6, $s3, 3
	alsl.d	$fp, $t6, $s4, 3
	sub.d	$s0, $a0, $a2
	.p2align	4, , 16
.LBB3_86:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_78 Depth=2
                                        #       Parent Loop BB3_80 Depth=3
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
	bnez	$s0, .LBB3_86
	b	.LBB3_79
.LBB3_87:                               # %.loopexit720
	move	$a0, $zero
	fld.d	$fs1, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end3:
	.size	hypre_SMG3RAPPeriodicSym, .Lfunc_end3-hypre_SMG3RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicNoSym      # -- Begin function hypre_SMG3RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicNoSym,@function
hypre_SMG3RAPPeriodicNoSym:             # @hypre_SMG3RAPPeriodicNoSym
# %bb.0:
	addi.d	$sp, $sp, -1088
	st.d	$ra, $sp, 1080                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1000                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 992                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 984                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 976                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 968                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 960                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 952                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 944                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 936                  # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 64
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_45
# %bb.1:                                # %.preheader490
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a1, 8
	blez	$a0, .LBB4_45
# %bb.2:                                # %.lr.ph
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	move	$s2, $zero
	addi.w	$a2, $zero, -1
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
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
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %.loopexit489
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
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
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s2, 4
	alsl.d	$fp, $s2, $a2, 3
	ld.d	$s8, $a0, 0
	add.d	$a0, $a1, $fp
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $sp, 924
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	st.w	$s3, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s3, $sp, 924
	st.w	$s3, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	st.d	$s4, $sp, 924
	st.w	$s3, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	st.d	$s6, $sp, 924
	st.w	$s3, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	st.d	$s5, $sp, 924
	st.w	$s3, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	st.d	$zero, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s3, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s4, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	st.d	$s5, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	st.d	$zero, $sp, 924
	st.w	$s4, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 924
	st.w	$s4, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 924
	st.w	$s4, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	st.d	$s6, $sp, 924
	st.w	$s4, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	st.d	$s5, $sp, 924
	st.w	$s4, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	st.d	$s5, $sp, 924
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	st.w	$s6, $sp, 932
	addi.d	$a2, $sp, 924
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu32i.d	$s1, -1
	st.d	$s1, $sp, 924
	st.w	$s6, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$s2, $s5
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 924
	st.w	$s6, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 924
	st.w	$s6, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 924
	st.w	$zero, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$s5, $sp, 924
	ori	$s5, $zero, 1
	st.w	$s5, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 924
	st.w	$s5, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 924
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	st.w	$s5, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 924
	st.w	$s5, $sp, 932
	addi.d	$a2, $sp, 924
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s8, $fp
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 912
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 912
	ld.w	$ra, $sp, 916
	ld.w	$a2, $sp, 920
	slt	$a0, $s6, $ra
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $ra, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	blez	$a0, .LBB4_24
# %bb.7:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB4_24
# %bb.8:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$ra, .LBB4_24
# %bb.9:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$s6, .LBB4_24
# %bb.10:                               # %.preheader485.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$t2, $s0
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $t0, 4
	ld.w	$a1, $t0, 16
	move	$t3, $zero
	ld.w	$a2, $t0, 0
	sub.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
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
	sub.d	$a4, $a3, $s6
	st.d	$a4, $sp, 744                   # 8-byte Folded Spill
	sub.d	$a4, $a1, $ra
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a5, $a7, 0
	ld.w	$a6, $a7, 4
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t0, 8
	mulw.d.w	$a4, $a3, $a4
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a2, $a5, $a2
	sub.d	$a0, $a6, $a0
	sub.d	$a4, $a7, $t0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a3
	add.w	$a6, $a2, $a0
	addi.d	$a0, $s6, -1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a1, $a0, $s0, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s4, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s5, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s3, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s8, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $s6, 3
	bstrpick.d	$a0, $a0, 33, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 312                   # 8-byte Folded Spill
	st.d	$s0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$ra, $sp, 288                   # 8-byte Folded Spill
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %._crit_edge496.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	addi.w	$t3, $t3, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$t3, $a0, .LBB4_24
.LBB4_12:                               # %.preheader485.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_23 Depth 4
	st.d	$t3, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	beq	$a1, $ra, .LBB4_11
.LBB4_14:                               # %.preheader483.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_23 Depth 4
	st.d	$a1, $sp, 880                   # 8-byte Folded Spill
	ori	$a0, $zero, 38
	bgeu	$s6, $a0, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	move	$a4, $zero
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_16:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	alsl.d	$t3, $a6, $t2, 3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	alsl.d	$t4, $a6, $s7, 3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a0, 3
	alsl.d	$t5, $a6, $s4, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a1, 3
	alsl.d	$t6, $a6, $s2, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a1, 3
	alsl.d	$t7, $a6, $t1, 3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a1, 3
	alsl.d	$t8, $a6, $s5, 3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a1, 3
	alsl.d	$ra, $a6, $s3, 3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a1, 3
	alsl.d	$a5, $a6, $s8, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s4, $a6, $a1, 3
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a1, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a1, 3
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a1, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $a1, 3
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a1, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a1, 3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $a1, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a1, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a1, 3
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	st.d	$t1, $sp, 520                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr0, $t0, 0
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	vori.b	$vr1, $vr0, 0
	vori.b	$vr29, $vr0, 0
	vinsgr2vr.d	$vr9, $a3, 0
	vinsgr2vr.d	$vr1, $t6, 1
	vori.b	$vr2, $vr9, 0
	vinsgr2vr.d	$vr0, $a5, 0
	vinsgr2vr.d	$vr2, $t6, 1
	vori.b	$vr3, $vr0, 0
	vori.b	$vr8, $vr0, 0
	vinsgr2vr.d	$vr19, $t8, 0
	vinsgr2vr.d	$vr3, $t6, 1
	vori.b	$vr5, $vr19, 0
	vinsgr2vr.d	$vr24, $t5, 0
	vinsgr2vr.d	$vr5, $t6, 1
	vori.b	$vr6, $vr24, 0
	vinsgr2vr.d	$vr6, $t6, 1
	vori.b	$vr7, $vr24, 0
	vinsgr2vr.d	$vr7, $a1, 1
	vori.b	$vr11, $vr24, 0
	vinsgr2vr.d	$vr11, $t0, 1
	vinsgr2vr.d	$vr28, $a2, 0
	vinsgr2vr.d	$vr14, $a1, 0
	vori.b	$vr10, $vr19, 0
	vinsgr2vr.d	$vr10, $t7, 1
	vinsgr2vr.d	$vr31, $t6, 0
	vst	$vr31, $sp, 656                 # 16-byte Folded Spill
	vori.b	$vr13, $vr24, 0
	vinsgr2vr.d	$vr13, $a5, 1
	vori.b	$vr17, $vr24, 0
	vinsgr2vr.d	$vr4, $t4, 0
	vinsgr2vr.d	$vr17, $t8, 1
	vori.b	$vr0, $vr4, 0
	vinsgr2vr.d	$vr0, $a1, 1
	vori.b	$vr18, $vr4, 0
	vinsgr2vr.d	$vr18, $t0, 1
	vori.b	$vr21, $vr4, 0
	vinsgr2vr.d	$vr21, $a3, 1
	vori.b	$vr22, $vr4, 0
	vinsgr2vr.d	$vr22, $a5, 1
	vori.b	$vr26, $vr4, 0
	vinsgr2vr.d	$vr26, $t8, 1
	vinsgr2vr.d	$vr23, $t1, 0
	vinsgr2vr.d	$vr20, $s8, 0
	vinsgr2vr.d	$vr30, $a0, 0
	vinsgr2vr.d	$vr15, $s2, 0
	vinsgr2vr.d	$vr12, $s0, 0
	vinsgr2vr.d	$vr25, $t2, 0
	vinsgr2vr.d	$vr16, $s6, 0
	vori.b	$vr27, $vr12, 0
	vinsgr2vr.d	$vr27, $a4, 1
	vslt.du	$vr26, $vr26, $vr27
	vori.b	$vr27, $vr16, 0
	vinsgr2vr.d	$vr27, $a4, 1
	vslt.du	$vr27, $vr22, $vr27
	vori.b	$vr22, $vr25, 0
	vpickev.w	$vr26, $vr27, $vr26
	vori.b	$vr27, $vr15, 0
	vinsgr2vr.d	$vr27, $a4, 1
	vslt.du	$vr21, $vr21, $vr27
	vori.b	$vr27, $vr30, 0
	vst	$vr30, $sp, 624                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr27, $a4, 1
	vslt.du	$vr18, $vr18, $vr27
	vori.b	$vr27, $vr25, 0
	vpickev.w	$vr18, $vr18, $vr21
	vori.b	$vr21, $vr23, 0
	vinsgr2vr.d	$vr21, $s7, 1
	vpickev.h	$vr18, $vr18, $vr26
	vori.b	$vr26, $vr20, 0
	vinsgr2vr.d	$vr26, $a4, 1
	vslt.du	$vr26, $vr0, $vr26
	vori.b	$vr0, $vr4, 0
	vinsgr2vr.d	$vr0, $t6, 1
	vslt.du	$vr21, $vr0, $vr21
	vpickev.w	$vr21, $vr21, $vr26
	vori.b	$vr26, $vr12, 0
	vinsgr2vr.d	$vr26, $s7, 1
	vslt.du	$vr17, $vr17, $vr26
	vori.b	$vr26, $vr16, 0
	vinsgr2vr.d	$vr26, $s7, 1
	vslt.du	$vr13, $vr13, $vr26
	vori.b	$vr26, $vr25, 0
	vpickev.w	$vr13, $vr13, $vr17
	vori.b	$vr17, $vr25, 0
	vpickev.h	$vr13, $vr13, $vr21
	vori.b	$vr21, $vr25, 0
	vpickev.b	$vr13, $vr13, $vr18
	vst	$vr13, $sp, 672                 # 16-byte Folded Spill
	vori.b	$vr13, $vr25, 0
	vinsgr2vr.d	$vr4, $t3, 1
	vinsgr2vr.d	$vr25, $s7, 1
	vslt.du	$vr4, $vr4, $vr25
	vori.b	$vr18, $vr31, 0
	vinsgr2vr.d	$vr18, $t3, 1
	vinsgr2vr.d	$vr13, $s0, 1
	vslt.du	$vr13, $vr18, $vr13
	vori.b	$vr18, $vr14, 0
	vinsgr2vr.d	$vr18, $t6, 1
	vpickev.w	$vr4, $vr13, $vr4
	vori.b	$vr13, $vr19, 0
	vinsgr2vr.d	$vr13, $t3, 1
	vinsgr2vr.d	$vr21, $s6, 1
	vslt.du	$vr13, $vr13, $vr21
	vst	$vr8, $sp, 688                  # 16-byte Folded Spill
	vori.b	$vr21, $vr8, 0
	vinsgr2vr.d	$vr21, $t3, 1
	vinsgr2vr.d	$vr17, $s2, 1
	vslt.du	$vr17, $vr21, $vr17
	vori.b	$vr21, $vr14, 0
	vst	$vr14, $sp, 608                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr21, $t3, 1
	vpickev.w	$vr13, $vr17, $vr13
	vst	$vr29, $sp, 592                 # 16-byte Folded Spill
	vori.b	$vr17, $vr29, 0
	vinsgr2vr.d	$vr17, $t3, 1
	vpickev.h	$vr25, $vr13, $vr4
	vori.b	$vr4, $vr9, 0
	vinsgr2vr.d	$vr4, $t3, 1
	vinsgr2vr.d	$vr26, $a0, 1
	vslt.du	$vr13, $vr4, $vr26
	vinsgr2vr.d	$vr4, $fp, 0
	vinsgr2vr.d	$vr27, $s8, 1
	vslt.du	$vr17, $vr17, $vr27
	vori.b	$vr26, $vr12, 0
	vpickev.w	$vr17, $vr17, $vr13
	vinsgr2vr.d	$vr13, $s7, 0
	vinsgr2vr.d	$vr22, $t1, 1
	vslt.du	$vr21, $vr21, $vr22
	vori.b	$vr22, $vr13, 0
	vinsgr2vr.d	$vr22, $a4, 1
	vslt.du	$vr22, $vr0, $vr22
	vpickev.w	$vr21, $vr22, $vr21
	vori.b	$vr22, $vr12, 0
	vpickev.h	$vr17, $vr21, $vr17
	vori.b	$vr21, $vr12, 0
	vpickev.b	$vr17, $vr17, $vr25
	vst	$vr17, $sp, 640                 # 16-byte Folded Spill
	vori.b	$vr17, $vr4, 0
	vinsgr2vr.d	$vr17, $t1, 1
	vslt.du	$vr17, $vr18, $vr17
	vori.b	$vr18, $vr12, 0
	vinsgr2vr.d	$vr12, $s6, 1
	vslt.du	$vr10, $vr10, $vr12
	vst	$vr28, $sp, 704                 # 16-byte Folded Spill
	vori.b	$vr25, $vr28, 0
	vinsgr2vr.d	$vr25, $t8, 1
	vpickev.w	$vr12, $vr10, $vr17
	vori.b	$vr10, $vr8, 0
	vinsgr2vr.d	$vr10, $t7, 1
	vinsgr2vr.d	$vr18, $s2, 1
	vslt.du	$vr17, $vr10, $vr18
	vori.b	$vr10, $vr9, 0
	vinsgr2vr.d	$vr10, $t7, 1
	vinsgr2vr.d	$vr21, $a0, 1
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	vslt.du	$vr18, $vr10, $vr21
	vinsgr2vr.d	$vr10, $ra, 0
	vpickev.w	$vr17, $vr18, $vr17
	vori.b	$vr18, $vr10, 0
	vinsgr2vr.d	$vr18, $t8, 1
	vpickev.h	$vr17, $vr17, $vr12
	vori.b	$vr12, $vr29, 0
	vinsgr2vr.d	$vr12, $t7, 1
	vinsgr2vr.d	$vr22, $s8, 1
	vslt.du	$vr21, $vr12, $vr22
	vori.b	$vr12, $vr14, 0
	vinsgr2vr.d	$vr12, $t7, 1
	vinsgr2vr.d	$vr26, $t1, 1
	vslt.du	$vr22, $vr12, $vr26
	vinsgr2vr.d	$vr12, $s5, 0
	vpickev.w	$vr21, $vr22, $vr21
	vori.b	$vr22, $vr12, 0
	vinsgr2vr.d	$vr22, $s3, 1
	vslt.du	$vr22, $vr25, $vr22
	vori.b	$vr8, $vr12, 0
	vinsgr2vr.d	$vr8, $s4, 1
	vst	$vr8, $sp, 720                  # 16-byte Folded Spill
	vslt.du	$vr18, $vr18, $vr8
	vpickev.w	$vr18, $vr22, $vr18
	vori.b	$vr22, $vr24, 0
	vinsgr2vr.d	$vr22, $a3, 1
	vpickev.h	$vr18, $vr18, $vr21
	vori.b	$vr21, $vr4, 0
	vinsgr2vr.d	$vr21, $s8, 1
	vpickev.b	$vr8, $vr18, $vr17
	vst	$vr8, $sp, 576                  # 16-byte Folded Spill
	vori.b	$vr17, $vr15, 0
	vinsgr2vr.d	$vr17, $s7, 1
	vslt.du	$vr17, $vr22, $vr17
	vori.b	$vr18, $vr30, 0
	vinsgr2vr.d	$vr18, $s7, 1
	vslt.du	$vr11, $vr11, $vr18
	vori.b	$vr18, $vr4, 0
	vinsgr2vr.d	$vr18, $a0, 1
	vpickev.w	$vr11, $vr11, $vr17
	vori.b	$vr17, $vr20, 0
	vinsgr2vr.d	$vr17, $s7, 1
	vslt.du	$vr7, $vr7, $vr17
	vori.b	$vr17, $vr23, 0
	vinsgr2vr.d	$vr17, $s0, 1
	vslt.du	$vr6, $vr6, $vr17
	vori.b	$vr17, $vr4, 0
	vinsgr2vr.d	$vr17, $s2, 1
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	vpickev.w	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.d	$vr7, $s6, 1
	vpickev.h	$vr6, $vr6, $vr11
	vslt.du	$vr5, $vr5, $vr7
	vslt.du	$vr3, $vr3, $vr17
	vpickev.w	$vr3, $vr3, $vr5
	vslt.du	$vr2, $vr2, $vr18
	vslt.du	$vr1, $vr1, $vr21
	vpickev.w	$vr1, $vr1, $vr2
	vpickev.h	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr3, $t7, 0
	vpickev.b	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 560                  # 16-byte Folded Spill
	vori.b	$vr21, $vr3, 0
	vori.b	$vr22, $vr28, 0
	vinsgr2vr.d	$vr22, $a7, 1
	vori.b	$vr5, $vr3, 0
	vinsgr2vr.d	$vr6, $a4, 0
	vinsgr2vr.d	$vr3, $t4, 1
	vori.b	$vr1, $vr6, 0
	vori.b	$vr2, $vr6, 0
	vori.b	$vr7, $vr6, 0
	vori.b	$vr11, $vr6, 0
	vinsgr2vr.d	$vr6, $s5, 1
	vslt.du	$vr3, $vr3, $vr6
	vori.b	$vr6, $vr10, 0
	vinsgr2vr.d	$vr6, $t4, 1
	vinsgr2vr.d	$vr11, $s4, 1
	vslt.du	$vr6, $vr6, $vr11
	vori.b	$vr11, $vr22, 0
	vshuf4i.d	$vr11, $vr0, 9
	vpickev.w	$vr3, $vr6, $vr3
	vinsgr2vr.d	$vr18, $s1, 0
	move	$a4, $s1
	vinsgr2vr.d	$vr2, $t2, 1
	vori.b	$vr29, $vr18, 0
	ld.d	$s1, $sp, 520                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr29, $s1, 1
	vpackev.d	$vr6, $vr29, $vr2
	vslt.du	$vr6, $vr11, $vr6
	vinsgr2vr.d	$vr7, $s3, 1
	vpackev.d	$vr11, $vr0, $vr22
	vslt.du	$vr7, $vr11, $vr7
	vpickev.w	$vr6, $vr6, $vr7
	vinsgr2vr.d	$vr5, $t5, 1
	vpickev.h	$vr3, $vr6, $vr3
	vori.b	$vr30, $vr13, 0
	vori.b	$vr25, $vr13, 0
	vori.b	$vr26, $vr13, 0
	vori.b	$vr6, $vr13, 0
	vinsgr2vr.d	$vr13, $s5, 1
	vslt.du	$vr5, $vr5, $vr13
	vori.b	$vr7, $vr10, 0
	vinsgr2vr.d	$vr7, $t5, 1
	vinsgr2vr.d	$vr6, $s4, 1
	vslt.du	$vr6, $vr7, $vr6
	vpickev.w	$vr5, $vr6, $vr5
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a0, 3
	vinsgr2vr.d	$vr6, $t3, 0
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	vori.b	$vr28, $vr6, 0
	vinsgr2vr.d	$vr31, $s7, 0
	vinsgr2vr.d	$vr28, $t5, 1
	vori.b	$vr17, $vr31, 0
	vinsgr2vr.d	$vr17, $a0, 1
	vori.b	$vr7, $vr2, 0
	vshuf4i.d	$vr7, $vr29, 12
	vpackev.d	$vr11, $vr0, $vr17
	vslt.du	$vr7, $vr11, $vr7
	vori.b	$vr11, $vr28, 0
	vinsgr2vr.d	$vr11, $a0, 0
	vinsgr2vr.d	$vr1, $fp, 1
	vslt.du	$vr11, $vr11, $vr1
	vpickev.w	$vr7, $vr11, $vr7
	vpickev.h	$vr5, $vr5, $vr7
	vpickev.b	$vr3, $vr5, $vr3
	vst	$vr3, $sp, 544                  # 16-byte Folded Spill
	vori.b	$vr3, $vr6, 0
	vinsgr2vr.d	$vr6, $t7, 1
	vori.b	$vr5, $vr4, 0
	vinsgr2vr.d	$vr4, $t2, 1
	vslt.du	$vr4, $vr6, $vr4
	vslt.du	$vr6, $vr28, $vr2
	vpickev.w	$vr4, $vr4, $vr6
	vinsgr2vr.d	$vr3, $ra, 1
	vori.b	$vr6, $vr12, 0
	vinsgr2vr.d	$vr6, $t2, 1
	vinsgr2vr.d	$vr8, $s4, 0
	vslt.du	$vr3, $vr3, $vr6
	vori.b	$vr6, $vr8, 0
	vinsgr2vr.d	$vr6, $t2, 1
	vpackev.d	$vr7, $vr22, $vr28
	vslt.du	$vr6, $vr7, $vr6
	vpickev.w	$vr3, $vr6, $vr3
	vpickev.h	$vr3, $vr3, $vr4
	vori.b	$vr4, $vr2, 0
	vshuf4i.d	$vr4, $vr29, 6
	vpackev.d	$vr6, $vr17, $vr28
	vslt.du	$vr6, $vr6, $vr4
	vori.b	$vr7, $vr28, 0
	vinsgr2vr.d	$vr4, $s3, 0
	vshuf4i.d	$vr7, $vr22, 12
	vori.b	$vr11, $vr4, 0
	vinsgr2vr.d	$vr11, $t2, 1
	vslt.du	$vr7, $vr7, $vr11
	vpickev.w	$vr6, $vr6, $vr7
	vinsgr2vr.d	$vr24, $t4, 1
	vslt.du	$vr1, $vr24, $vr1
	vori.b	$vr7, $vr28, 0
	vshuf4i.d	$vr7, $vr17, 12
	vinsgr2vr.d	$vr2, $s1, 0
	vslt.du	$vr2, $vr7, $vr2
	vpickev.w	$vr1, $vr1, $vr2
	vpickev.h	$vr1, $vr1, $vr6
	vpickev.b	$vr1, $vr1, $vr3
	vst	$vr1, $sp, 528                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr5, $s5, 1
	vpackev.d	$vr1, $vr5, $vr29
	vst	$vr1, $sp, 496                  # 16-byte Folded Spill
	vshuf4i.d	$vr5, $vr29, 3
	vpackod.d	$vr1, $vr17, $vr0
	vslt.du	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr21, $ra, 1
	vori.b	$vr2, $vr12, 0
	vinsgr2vr.d	$vr2, $s0, 1
	vslt.du	$vr2, $vr21, $vr2
	vpickev.w	$vr24, $vr2, $vr1
	vori.b	$vr13, $vr17, 0
	vshuf4i.d	$vr13, $vr0, 3
	vinsgr2vr.d	$vr1, $a2, 1
	vpackod.d	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 464                  # 16-byte Folded Spill
	vpackod.d	$vr0, $vr22, $vr0
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
	vori.b	$vr7, $vr28, 0
	vshuf4i.d	$vr7, $vr22, 6
	vori.b	$vr1, $vr21, 0
	vshuf4i.d	$vr1, $vr22, 12
	vori.b	$vr11, $vr4, 0
	vori.b	$vr0, $vr4, 0
	vori.b	$vr6, $vr4, 0
	vori.b	$vr5, $vr4, 0
	vori.b	$vr3, $vr4, 0
	vori.b	$vr2, $vr4, 0
	vinsgr2vr.d	$vr4, $s2, 1
	vslt.du	$vr4, $vr22, $vr4
	vpackev.d	$vr22, $vr22, $vr21
	vori.b	$vr27, $vr8, 0
	vinsgr2vr.d	$vr27, $s0, 1
	vslt.du	$vr22, $vr22, $vr27
	vinsgr2vr.d	$vr0, $s0, 1
	vslt.du	$vr0, $vr1, $vr0
	vpickev.w	$vr0, $vr0, $vr22
	vpickev.h	$vr0, $vr0, $vr24
	vinsgr2vr.d	$vr30, $s0, 1
	vori.b	$vr1, $vr29, 0
	vshuf4i.d	$vr1, $vr30, 12
	vpackev.d	$vr22, $vr17, $vr21
	vslt.du	$vr1, $vr22, $vr1
	vori.b	$vr24, $vr21, 0
	vshuf4i.d	$vr24, $vr17, 12
	vinsgr2vr.d	$vr31, $t0, 1
	vslt.du	$vr22, $vr31, $vr29
	vpackev.d	$vr27, $vr29, $vr30
	vori.b	$vr29, $vr30, 0
	move	$s2, $s1
	vinsgr2vr.d	$vr30, $s1, 0
	vslt.du	$vr24, $vr24, $vr30
	vpickev.w	$vr1, $vr24, $vr1
	vori.b	$vr30, $vr19, 0
	vinsgr2vr.d	$vr30, $a5, 1
	vori.b	$vr24, $vr16, 0
	vinsgr2vr.d	$vr24, $s5, 1
	vslt.du	$vr31, $vr30, $vr24
	vori.b	$vr24, $vr23, 0
	vinsgr2vr.d	$vr24, $s6, 1
	vslt.du	$vr24, $vr30, $vr24
	vinsgr2vr.d	$vr30, $a3, 1
	vori.b	$vr14, $vr15, 0
	vinsgr2vr.d	$vr14, $s5, 1
	vslt.du	$vr14, $vr30, $vr14
	vpickev.w	$vr14, $vr14, $vr31
	vpickev.h	$vr1, $vr14, $vr1
	vpickev.b	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr26, $s3, 1
	vslt.du	$vr1, $vr7, $vr26
	vori.b	$vr7, $vr28, 0
	vinsgr2vr.d	$vr7, $a7, 0
	vslt.du	$vr7, $vr7, $vr27
	vpickev.w	$vr1, $vr7, $vr1
	vshuf4i.d	$vr28, $vr17, 6
	vinsgr2vr.d	$vr29, $s1, 1
	vslt.du	$vr7, $vr28, $vr29
	vshuf4i.d	$vr21, $vr17, 3
	vinsgr2vr.d	$vr25, $fp, 1
	vslt.du	$vr14, $vr21, $vr25
	vpickev.w	$vr7, $vr14, $vr7
	vpickev.h	$vr1, $vr7, $vr1
	vld	$vr14, $sp, 656                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr14, $ra, 1
	vori.b	$vr7, $vr12, 0
	vinsgr2vr.d	$vr7, $fp, 1
	vslt.du	$vr7, $vr14, $vr7
	vori.b	$vr14, $vr8, 0
	vinsgr2vr.d	$vr14, $fp, 1
	vld	$vr21, $sp, 464                 # 16-byte Folded Reload
	vslt.du	$vr14, $vr21, $vr14
	vpickev.w	$vr7, $vr14, $vr7
	vld	$vr14, $sp, 496                 # 16-byte Folded Reload
	vslt.du	$vr13, $vr13, $vr14
	vinsgr2vr.d	$vr11, $fp, 1
	vld	$vr14, $sp, 480                 # 16-byte Folded Reload
	vslt.du	$vr11, $vr14, $vr11
	vpickev.w	$vr11, $vr13, $vr11
	vpickev.h	$vr7, $vr11, $vr7
	vpickev.b	$vr1, $vr7, $vr1
	vld	$vr7, $sp, 560                  # 16-byte Folded Reload
	vand.v	$vr21, $vr7, $vr1
	vld	$vr1, $sp, 576                  # 16-byte Folded Reload
	vand.v	$vr7, $vr1, $vr0
	vld	$vr0, $sp, 640                  # 16-byte Folded Reload
	vld	$vr1, $sp, 528                  # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	vld	$vr1, $sp, 672                  # 16-byte Folded Reload
	vld	$vr11, $sp, 544                 # 16-byte Folded Reload
	vand.v	$vr1, $vr1, $vr11
	vori.b	$vr11, $vr9, 0
	vld	$vr30, $sp, 592                 # 16-byte Folded Reload
	vori.b	$vr14, $vr30, 0
	vinsgr2vr.d	$vr14, $a5, 1
	vori.b	$vr13, $vr8, 0
	vori.b	$vr25, $vr8, 0
	st.d	$s8, $sp, 752                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr8, $s8, 1
	vslt.du	$vr8, $vr14, $vr8
	vld	$vr31, $sp, 608                 # 16-byte Folded Reload
	vori.b	$vr14, $vr31, 0
	vinsgr2vr.d	$vr14, $a5, 1
	st.d	$t1, $sp, 448                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr25, $t1, 1
	vslt.du	$vr14, $vr14, $vr25
	vori.b	$vr26, $vr9, 0
	vpickev.w	$vr8, $vr14, $vr8
	vori.b	$vr14, $vr9, 0
	vori.b	$vr27, $vr9, 0
	vinsgr2vr.d	$vr9, $a2, 1
	vori.b	$vr25, $vr15, 0
	vori.b	$vr28, $vr15, 0
	vori.b	$vr29, $vr15, 0
	ld.d	$fp, $sp, 760                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr15, $fp, 1
	vslt.du	$vr9, $vr9, $vr15
	vori.b	$vr15, $vr30, 0
	vinsgr2vr.d	$vr15, $a2, 1
	vinsgr2vr.d	$vr29, $s8, 1
	vslt.du	$vr15, $vr15, $vr29
	vpickev.w	$vr9, $vr15, $vr9
	vpickev.h	$vr8, $vr9, $vr8
	vori.b	$vr9, $vr31, 0
	vinsgr2vr.d	$vr9, $a2, 1
	vinsgr2vr.d	$vr28, $t1, 1
	vslt.du	$vr9, $vr9, $vr28
	vinsgr2vr.d	$vr27, $t0, 1
	vld	$vr28, $sp, 624                 # 16-byte Folded Reload
	vori.b	$vr15, $vr28, 0
	vinsgr2vr.d	$vr15, $s3, 1
	vslt.du	$vr15, $vr27, $vr15
	vpickev.w	$vr9, $vr15, $vr9
	vinsgr2vr.d	$vr14, $a1, 1
	vori.b	$vr15, $vr20, 0
	vinsgr2vr.d	$vr15, $s3, 1
	vslt.du	$vr14, $vr14, $vr15
	vinsgr2vr.d	$vr26, $a7, 1
	vori.b	$vr15, $vr23, 0
	move	$s1, $a4
	vinsgr2vr.d	$vr15, $a4, 1
	vslt.du	$vr15, $vr26, $vr15
	vpickve2gr.b	$a4, $vr21, 0
	vpickve2gr.b	$t1, $vr21, 1
	andi	$t1, $t1, 1
	bstrins.d	$a4, $t1, 63, 1
	vpickve2gr.b	$t1, $vr21, 2
	bstrins.d	$a4, $t1, 2, 2
	vpickve2gr.b	$t1, $vr21, 3
	bstrins.d	$a4, $t1, 3, 3
	vpickve2gr.b	$t1, $vr21, 4
	bstrins.d	$a4, $t1, 4, 4
	vpickve2gr.b	$t1, $vr21, 5
	bstrins.d	$a4, $t1, 5, 5
	vpickve2gr.b	$t1, $vr21, 6
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr21, 7
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr21, 8
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 8
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr21, 9
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 9
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr21, 10
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 10
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr21, 11
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 11
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr21, 12
	vpickve2gr.b	$t2, $vr21, 13
	vpickev.w	$vr14, $vr15, $vr14
	vori.b	$vr15, $vr19, 0
	vinsgr2vr.d	$vr19, $t0, 1
	vpickev.h	$vr9, $vr14, $vr9
	vori.b	$vr26, $vr20, 0
	vinsgr2vr.d	$vr26, $s6, 1
	vpickev.b	$vr9, $vr9, $vr8
	vori.b	$vr8, $vr28, 0
	vinsgr2vr.d	$vr8, $s5, 1
	vslt.du	$vr8, $vr19, $vr8
	vori.b	$vr19, $vr28, 0
	vori.b	$vr27, $vr28, 0
	vinsgr2vr.d	$vr19, $s6, 1
	vinsgr2vr.d	$vr25, $s6, 1
	vpickve2gr.b	$s0, $vr21, 14
	vpickve2gr.b	$s6, $vr21, 15
	vori.b	$vr14, $vr20, 0
	vinsgr2vr.d	$vr14, $s5, 1
	vinsgr2vr.d	$vr15, $a1, 1
	vslt.du	$vr15, $vr15, $vr14
	vori.b	$vr14, $vr17, 0
	vpickev.w	$vr8, $vr15, $vr8
	vori.b	$vr15, $vr10, 0
	vinsgr2vr.d	$vr15, $a3, 1
	vslt.du	$vr15, $vr15, $vr25
	vori.b	$vr21, $vr10, 0
	vpickev.w	$vr15, $vr15, $vr24
	vori.b	$vr24, $vr10, 0
	vpickev.h	$vr8, $vr15, $vr8
	vori.b	$vr15, $vr10, 0
	vinsgr2vr.d	$vr15, $t0, 1
	vslt.du	$vr15, $vr15, $vr19
	vinsgr2vr.d	$vr10, $a2, 1
	vpackod.d	$vr19, $vr17, $vr10
	vinsgr2vr.d	$vr24, $a1, 1
	vslt.du	$vr24, $vr24, $vr26
	vori.b	$vr25, $vr17, 0
	vinsgr2vr.d	$vr11, $a5, 1
	vinsgr2vr.d	$vr21, $a5, 1
	vinsgr2vr.d	$vr13, $fp, 1
	vpickev.w	$vr15, $vr24, $vr15
	vori.b	$vr24, $vr23, 0
	ld.d	$s5, $sp, 456                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr24, $s5, 1
	vslt.du	$vr21, $vr21, $vr24
	vslt.du	$vr11, $vr11, $vr13
	vld	$vr28, $sp, 688                 # 16-byte Folded Reload
	vori.b	$vr24, $vr28, 0
	vinsgr2vr.d	$vr24, $a3, 1
	vpackev.d	$vr26, $vr17, $vr24
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 12
	or	$a4, $a4, $t1
	andi	$t1, $t2, 1
	slli.d	$t1, $t1, 13
	or	$a4, $a4, $t1
	andi	$t1, $s0, 1
	slli.d	$t1, $t1, 14
	or	$a4, $a4, $t1
	slli.d	$t1, $s6, 15
	or	$a4, $a4, $t1
	st.d	$a4, $sp, 672                   # 8-byte Folded Spill
	vpickve2gr.b	$a4, $vr7, 0
	vpickve2gr.b	$t1, $vr7, 1
	andi	$t1, $t1, 1
	bstrins.d	$a4, $t1, 63, 1
	vpickve2gr.b	$t1, $vr7, 2
	bstrins.d	$a4, $t1, 2, 2
	vpickve2gr.b	$t1, $vr7, 3
	bstrins.d	$a4, $t1, 3, 3
	vpickve2gr.b	$t1, $vr7, 4
	bstrins.d	$a4, $t1, 4, 4
	vpickve2gr.b	$t1, $vr7, 5
	bstrins.d	$a4, $t1, 5, 5
	vpickve2gr.b	$t1, $vr7, 6
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$a4, $a4, $t1
	st.d	$a4, $sp, 640                   # 8-byte Folded Spill
	vpickve2gr.b	$s8, $vr7, 7
	vpickve2gr.b	$s0, $vr7, 8
	vpickve2gr.b	$a4, $vr7, 9
	st.d	$a4, $sp, 656                   # 8-byte Folded Spill
	vpickev.w	$vr11, $vr11, $vr21
	vpickev.h	$vr11, $vr11, $vr15
	vpickev.b	$vr13, $vr11, $vr8
	vori.b	$vr21, $vr16, 0
	vinsgr2vr.d	$vr21, $s4, 1
	vinsgr2vr.d	$vr6, $s4, 1
	vinsgr2vr.d	$vr11, $s2, 0
	vori.b	$vr8, $vr18, 0
	vinsgr2vr.d	$vr8, $s4, 1
	vslt.du	$vr8, $vr26, $vr8
	vori.b	$vr15, $vr11, 0
	vinsgr2vr.d	$vr15, $s4, 1
	vpickve2gr.b	$s6, $vr7, 10
	vshuf4i.d	$vr14, $vr24, 12
	vshuf4i.d	$vr25, $vr10, 3
	vinsgr2vr.d	$vr24, $a0, 1
	vslt.du	$vr15, $vr24, $vr15
	vori.b	$vr24, $vr16, 0
	vpickev.w	$vr8, $vr15, $vr8
	vori.b	$vr15, $vr18, 0
	move	$t1, $s5
	vinsgr2vr.d	$vr15, $s5, 1
	vslt.du	$vr15, $vr25, $vr15
	vori.b	$vr25, $vr16, 0
	vinsgr2vr.d	$vr16, $s3, 1
	vpickve2gr.b	$s5, $vr7, 11
	vpickev.w	$vr15, $vr15, $vr4
	vinsgr2vr.d	$vr4, $a7, 0
	vpickev.h	$vr8, $vr15, $vr8
	vori.b	$vr15, $vr4, 0
	vinsgr2vr.d	$vr15, $a3, 1
	vinsgr2vr.d	$vr2, $s1, 1
	vslt.du	$vr2, $vr15, $vr2
	vori.b	$vr15, $vr11, 0
	vinsgr2vr.d	$vr15, $t1, 1
	vpickve2gr.b	$s4, $vr7, 12
	vslt.du	$vr15, $vr19, $vr15
	vinsgr2vr.d	$vr19, $a0, 0
	vpickev.w	$vr2, $vr2, $vr15
	vori.b	$vr15, $vr19, 0
	vinsgr2vr.d	$vr15, $t0, 1
	vinsgr2vr.d	$vr25, $s1, 1
	vinsgr2vr.d	$vr3, $fp, 1
	vslt.du	$vr3, $vr15, $vr3
	vori.b	$vr15, $vr12, 0
	vinsgr2vr.d	$vr12, $s1, 1
	vpickve2gr.b	$t1, $vr7, 13
	vpickve2gr.b	$t2, $vr7, 14
	vpickve2gr.b	$s3, $vr7, 15
	vori.b	$vr7, $vr20, 0
	vinsgr2vr.d	$vr7, $s1, 1
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr27, $a4, 1
	vinsgr2vr.d	$vr20, $a4, 1
	vinsgr2vr.d	$vr24, $s2, 1
	vinsgr2vr.d	$vr15, $s2, 1
	vinsgr2vr.d	$vr5, $s2, 1
	vinsgr2vr.d	$vr23, $s2, 1
	vslt.du	$vr5, $vr14, $vr5
	vpickev.w	$vr3, $vr3, $vr5
	vpickev.h	$vr2, $vr3, $vr2
	vpickev.b	$vr3, $vr2, $vr8
	vori.b	$vr2, $vr4, 0
	vinsgr2vr.d	$vr2, $t8, 1
	vslt.du	$vr5, $vr2, $vr12
	vshuf4i.d	$vr2, $vr17, 6
	vslt.du	$vr2, $vr2, $vr15
	vpickev.w	$vr2, $vr2, $vr5
	vld	$vr5, $sp, 704                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr5, $ra, 1
	vslt.du	$vr5, $vr5, $vr16
	vori.b	$vr8, $vr17, 0
	vshuf4i.d	$vr8, $vr10, 9
	vld	$vr12, $sp, 720                 # 16-byte Folded Reload
	vslt.du	$vr8, $vr8, $vr12
	vpickev.w	$vr5, $vr5, $vr8
	vpickev.h	$vr2, $vr5, $vr2
	vori.b	$vr5, $vr4, 0
	vinsgr2vr.d	$vr5, $ra, 1
	vslt.du	$vr5, $vr5, $vr25
	vpackev.d	$vr8, $vr10, $vr17
	vslt.du	$vr8, $vr8, $vr24
	vpickev.w	$vr5, $vr8, $vr5
	vori.b	$vr8, $vr28, 0
	vinsgr2vr.d	$vr8, $a7, 1
	vslt.du	$vr6, $vr8, $vr6
	vinsgr2vr.d	$vr10, $a0, 0
	vslt.du	$vr8, $vr10, $vr21
	vpickev.w	$vr6, $vr6, $vr8
	vpickev.h	$vr5, $vr6, $vr5
	vpickev.b	$vr2, $vr5, $vr2
	vand.v	$vr2, $vr13, $vr2
	vand.v	$vr5, $vr9, $vr3
	vori.b	$vr3, $vr31, 0
	vinsgr2vr.d	$vr3, $a7, 1
	vslt.du	$vr3, $vr3, $vr27
	vori.b	$vr8, $vr30, 0
	vori.b	$vr6, $vr30, 0
	vinsgr2vr.d	$vr6, $a1, 1
	vslt.du	$vr6, $vr6, $vr7
	vpickev.w	$vr3, $vr6, $vr3
	vslt.du	$vr6, $vr17, $vr23
	vinsgr2vr.d	$vr8, $s7, 1
	vslt.du	$vr7, $vr8, $vr23
	vinsgr2vr.d	$vr19, $a1, 1
	vslt.du	$vr8, $vr19, $vr20
	vpickev.w	$vr7, $vr8, $vr7
	vpickev.h	$vr3, $vr7, $vr3
	vinsgr2vr.d	$vr4, $a0, 1
	vinsgr2vr.d	$vr11, $fp, 1
	vslt.du	$vr4, $vr4, $vr11
	vpickev.w	$vr4, $vr22, $vr4
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr18, $fp, 1
	vslt.du	$vr7, $vr19, $vr18
	vpickev.w	$vr6, $vr6, $vr7
	vpickev.h	$vr4, $vr6, $vr4
	vand.v	$vr3, $vr3, $vr4
	vor.v	$vr1, $vr1, $vr5
	andi	$fp, $s8, 1
	slli.d	$fp, $fp, 7
	ld.d	$a4, $sp, 640                   # 8-byte Folded Reload
	or	$fp, $a4, $fp
	andi	$s1, $s0, 1
	slli.d	$s1, $s1, 8
	or	$fp, $fp, $s1
	ld.d	$a4, $sp, 656                   # 8-byte Folded Reload
	andi	$s0, $a4, 1
	slli.d	$s0, $s0, 9
	or	$fp, $fp, $s0
	andi	$s0, $s6, 1
	slli.d	$s0, $s0, 10
	or	$fp, $fp, $s0
	andi	$s0, $s5, 1
	slli.d	$s0, $s0, 11
	or	$fp, $fp, $s0
	andi	$s0, $s4, 1
	slli.d	$s0, $s0, 12
	or	$fp, $fp, $s0
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 13
	or	$t1, $fp, $t1
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 14
	or	$t1, $t1, $t2
	slli.d	$a4, $s3, 15
	or	$fp, $t1, $a4
	vpickve2gr.b	$a4, $vr1, 0
	vpickve2gr.b	$t1, $vr1, 1
	andi	$t1, $t1, 1
	bstrins.d	$a4, $t1, 63, 1
	vpickve2gr.b	$t1, $vr1, 2
	bstrins.d	$a4, $t1, 2, 2
	vpickve2gr.b	$t1, $vr1, 3
	bstrins.d	$a4, $t1, 3, 3
	vpickve2gr.b	$t1, $vr1, 4
	bstrins.d	$a4, $t1, 4, 4
	vpickve2gr.b	$t1, $vr1, 5
	bstrins.d	$a4, $t1, 5, 5
	vpickve2gr.b	$t1, $vr1, 6
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr1, 7
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$a4, $a4, $t1
	vpickve2gr.b	$t1, $vr1, 8
	vpickve2gr.b	$t2, $vr1, 9
	vpickve2gr.b	$s0, $vr1, 10
	vpickve2gr.b	$s1, $vr1, 11
	vpickve2gr.b	$s2, $vr1, 12
	vpickve2gr.b	$s3, $vr1, 13
	vpickve2gr.b	$s4, $vr1, 14
	vor.v	$vr0, $vr0, $vr2
	vpickve2gr.b	$s5, $vr0, 0
	vinsgr2vr.h	$vr2, $s5, 0
	vpickve2gr.b	$s5, $vr0, 1
	vinsgr2vr.h	$vr2, $s5, 1
	vpickve2gr.b	$s5, $vr0, 2
	vinsgr2vr.h	$vr2, $s5, 2
	vpickve2gr.b	$s5, $vr0, 3
	vinsgr2vr.h	$vr2, $s5, 3
	vpickve2gr.b	$s5, $vr0, 4
	vinsgr2vr.h	$vr2, $s5, 4
	vpickve2gr.b	$s5, $vr0, 5
	vinsgr2vr.h	$vr2, $s5, 5
	vpickve2gr.b	$s5, $vr0, 6
	vinsgr2vr.h	$vr2, $s5, 6
	vpickve2gr.b	$s5, $vr0, 7
	vinsgr2vr.h	$vr2, $s5, 7
	vpickve2gr.b	$s5, $vr1, 15
	vor.v	$vr1, $vr2, $vr3
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 8
	or	$a4, $a4, $t1
	andi	$t1, $t2, 1
	slli.d	$t1, $t1, 9
	or	$a4, $a4, $t1
	andi	$t1, $s0, 1
	slli.d	$t1, $t1, 10
	or	$a4, $a4, $t1
	andi	$t1, $s1, 1
	slli.d	$t1, $t1, 11
	or	$a4, $a4, $t1
	andi	$t1, $s2, 1
	slli.d	$t1, $t1, 12
	or	$a4, $a4, $t1
	andi	$t1, $s3, 1
	slli.d	$t1, $t1, 13
	or	$a4, $a4, $t1
	andi	$t1, $s4, 1
	slli.d	$t1, $t1, 14
	or	$a4, $a4, $t1
	slli.d	$t1, $s5, 15
	or	$a4, $a4, $t1
	vpickve2gr.h	$t1, $vr1, 7
	vpickve2gr.h	$t2, $vr1, 6
	vpickve2gr.h	$s0, $vr1, 5
	vpickve2gr.h	$s1, $vr1, 4
	vpickve2gr.h	$s2, $vr1, 3
	vpickve2gr.h	$s3, $vr1, 2
	vpickve2gr.h	$s4, $vr1, 0
	vpickve2gr.h	$s5, $vr1, 1
	andi	$s5, $s5, 1
	bstrins.d	$s4, $s5, 63, 1
	bstrins.d	$s4, $s3, 2, 2
	bstrins.d	$s4, $s2, 3, 3
	bstrins.d	$s4, $s1, 4, 4
	bstrins.d	$s4, $s0, 5, 5
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 6
	or	$t2, $s4, $t2
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$t1, $t2, $t1
	vpickve2gr.b	$t2, $vr0, 8
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 8
	or	$t1, $t1, $t2
	vpickve2gr.b	$t2, $vr0, 9
	vpickve2gr.b	$s0, $vr0, 10
	vpickve2gr.b	$s1, $vr0, 11
	vpickve2gr.b	$s2, $vr0, 12
	vpickve2gr.b	$s3, $vr0, 13
	vpickve2gr.b	$s4, $vr0, 14
	vpickve2gr.b	$s5, $vr0, 15
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 9
	or	$t1, $t1, $t2
	andi	$t2, $s0, 1
	slli.d	$t2, $t2, 10
	or	$t1, $t1, $t2
	andi	$t2, $s1, 1
	slli.d	$t2, $t2, 11
	or	$t1, $t1, $t2
	andi	$t2, $s2, 1
	slli.d	$t2, $t2, 12
	or	$t1, $t1, $t2
	andi	$t2, $s3, 1
	slli.d	$t2, $t2, 13
	or	$t1, $t1, $t2
	andi	$t2, $s4, 1
	slli.d	$t2, $t2, 14
	or	$t1, $t1, $t2
	slli.d	$t2, $s5, 15
	or	$t1, $t1, $t2
	bstrpick.d	$t2, $fp, 15, 0
	bstrpick.d	$a4, $a4, 15, 0
	or	$a4, $a4, $t2
	bstrpick.d	$t1, $t1, 15, 0
	slli.d	$a4, $a4, 16
	or	$a4, $a4, $t1
	ld.d	$t1, $sp, 672                   # 8-byte Folded Reload
	bstrpick.d	$t1, $t1, 15, 0
	or	$a4, $a4, $t1
	bstrpick.d	$t1, $a4, 31, 0
	move	$a4, $zero
	bnez	$t1, .LBB4_21
# %bb.17:                               # %vector.memcheck910
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t1, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $a7, $t1
	ld.d	$t2, $sp, 760                   # 8-byte Folded Reload
	sltu	$t2, $s7, $t2
	and	$t1, $t1, $t2
	vld	$vr4, $sp, 368                  # 16-byte Folded Reload
	bnez	$t1, .LBB4_21
# %bb.18:                               # %vector.ph1392
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$a4, $zero
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	ld.d	$s8, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_19:                               # %vector.body1395
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $t4, $a4
	vldx	$vr1, $t5, $a4
	vldx	$vr2, $t3, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $t7, $a4
	vldx	$vr3, $t8, $a4
	vfadd.d	$vr0, $vr2, $vr0
	vstx	$vr0, $t3, $a4
	vldx	$vr0, $t6, $a4
	vfadd.d	$vr1, $vr1, $vr3
	vldx	$vr2, $a5, $a4
	vldx	$vr3, $a2, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $t6, $a4
	vldx	$vr0, $ra, $a4
	vfadd.d	$vr1, $vr2, $vr3
	vldx	$vr2, $a7, $a4
	vldx	$vr3, $t0, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $ra, $a4
	vldx	$vr0, $a3, $a4
	vfadd.d	$vr1, $vr2, $vr3
	vstx	$vr4, $t4, $a4
	vstx	$vr4, $t5, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a3, $a4
	vldx	$vr0, $a1, $a4
	vldx	$vr1, $a0, $a4
	vstx	$vr4, $t7, $a4
	vstx	$vr4, $t8, $a4
	vstx	$vr4, $a5, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $s7, $a4
	vstx	$vr4, $a2, $a4
	vstx	$vr4, $a7, $a4
	vstx	$vr4, $t0, $a4
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $s7, $a4
	vstx	$vr4, $a1, $a4
	vstx	$vr4, $a0, $a4
	addi.d	$a4, $a4, 16
	bne	$t1, $a4, .LBB4_19
# %bb.20:                               # %middle.block1414
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$s7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 288                   # 8-byte Folded Reload
	beq	$a0, $s6, .LBB4_13
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_21:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 288                   # 8-byte Folded Reload
.LBB4_22:                               # %scalar.ph1390.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	slli.d	$a0, $a6, 3
	sub.d	$a1, $s6, $a4
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 768                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 848                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 832                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 784                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 864                   # 8-byte Folded Reload
	move	$t3, $s3
	ld.d	$t4, $sp, 800                   # 8-byte Folded Reload
	move	$t5, $s8
	move	$t6, $s2
	move	$t7, $s5
	move	$t8, $t1
	move	$fp, $t2
	move	$s0, $s4
	move	$s1, $s7
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
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB4_3
# %bb.25:                               #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $sp, 912
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s4, $sp, 912
	ld.w	$s5, $sp, 916
	ld.w	$a0, $sp, 920
	slt	$a1, $s4, $s5
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	blez	$a1, .LBB4_3
# %bb.26:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	blez	$a0, .LBB4_3
# %bb.27:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$s5, .LBB4_3
# %bb.28:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blez	$s4, .LBB4_3
# %bb.29:                               # %.preheader484.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $t1, 4
	ld.w	$a2, $t1, 16
	move	$t2, $zero
	ld.w	$a3, $t1, 0
	sub.w	$a2, $a2, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	ld.w	$a7, $a0, 4
	ld.w	$t0, $a0, 8
	ld.w	$t1, $t1, 8
	mulw.d.w	$a0, $a4, $a5
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	sub.d	$a3, $a6, $a3
	sub.d	$a1, $a7, $a1
	sub.d	$a5, $t0, $t1
	mul.d	$a2, $a2, $a5
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $a4
	add.w	$a6, $a3, $a1
	addi.d	$a1, $s4, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $t8, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $fp, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s1, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
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
	st.d	$s5, $sp, 744                   # 8-byte Folded Spill
	st.d	$s6, $sp, 720                   # 8-byte Folded Spill
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_30:                               # %._crit_edge521.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_31 Depth=2
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
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
	alsl.d	$s4, $a6, $t8, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a0, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a0, 3
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $a0, 3
	alsl.d	$s7, $a6, $s0, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a0, 3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a0, 3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$ra, $a6, $a0, 3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $a0, 3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a0, 3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a0, 3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a0, 3
	vinsgr2vr.d	$vr6, $a5, 0
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	vst	$vr6, $sp, 848                  # 16-byte Folded Spill
	vst	$vr6, $sp, 880                  # 16-byte Folded Spill
	vori.b	$vr10, $vr0, 0
	vori.b	$vr12, $vr6, 0
	vori.b	$vr13, $vr0, 0
	vori.b	$vr14, $vr6, 0
	vinsgr2vr.d	$vr9, $s7, 0
	vinsgr2vr.d	$vr4, $s8, 0
	vori.b	$vr5, $vr9, 0
	vori.b	$vr15, $vr0, 0
	vori.b	$vr16, $vr6, 0
	vinsgr2vr.d	$vr1, $ra, 0
	vori.b	$vr17, $vr9, 0
	vinsgr2vr.d	$vr3, $s4, 0
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.d	$vr7, $a5, 1
	vori.b	$vr8, $vr9, 0
	vinsgr2vr.d	$vr8, $a2, 1
	vori.b	$vr26, $vr9, 0
	vinsgr2vr.d	$vr26, $a5, 1
	vinsgr2vr.d	$vr9, $ra, 1
	vinsgr2vr.d	$vr0, $s6, 1
	vinsgr2vr.d	$vr6, $s6, 1
	vori.b	$vr30, $vr1, 0
	vst	$vr1, $sp, 800                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr27, $a7, 0
	vinsgr2vr.d	$vr28, $a3, 0
	vinsgr2vr.d	$vr20, $t5, 0
	vinsgr2vr.d	$vr22, $t6, 0
	vinsgr2vr.d	$vr30, $s6, 1
	vori.b	$vr18, $vr27, 0
	vori.b	$vr19, $vr28, 0
	vori.b	$vr2, $vr20, 0
	vori.b	$vr21, $vr20, 0
	vori.b	$vr23, $vr28, 0
	vori.b	$vr24, $vr28, 0
	vori.b	$vr25, $vr20, 0
	vori.b	$vr31, $vr22, 0
	vinsgr2vr.d	$vr31, $t5, 1
	vslt.du	$vr30, $vr30, $vr31
	vori.b	$vr31, $vr22, 0
	vinsgr2vr.d	$vr31, $a3, 1
	vslt.du	$vr31, $vr6, $vr31
	vinsgr2vr.d	$vr11, $a1, 0
	vpickev.w	$vr30, $vr31, $vr30
	vori.b	$vr31, $vr22, 0
	vinsgr2vr.d	$vr31, $a7, 1
	vslt.du	$vr0, $vr0, $vr31
	vori.b	$vr31, $vr11, 0
	vinsgr2vr.d	$vr31, $t7, 1
	vslt.du	$vr31, $vr9, $vr31
	vpickev.w	$vr0, $vr31, $vr0
	vori.b	$vr31, $vr20, 0
	vpickev.h	$vr30, $vr0, $vr30
	vori.b	$vr29, $vr20, 0
	vinsgr2vr.d	$vr20, $t7, 1
	vslt.du	$vr0, $vr26, $vr20
	vori.b	$vr20, $vr28, 0
	vinsgr2vr.d	$vr28, $t7, 1
	vslt.du	$vr8, $vr8, $vr28
	vori.b	$vr26, $vr27, 0
	vpickev.w	$vr8, $vr8, $vr0
	vori.b	$vr0, $vr27, 0
	vinsgr2vr.d	$vr29, $a1, 1
	vslt.du	$vr7, $vr7, $vr29
	vori.b	$vr28, $vr27, 0
	vinsgr2vr.d	$vr27, $a1, 1
	vslt.du	$vr27, $vr9, $vr27
	vpickev.w	$vr7, $vr7, $vr27
	vori.b	$vr27, $vr3, 0
	vpickev.h	$vr7, $vr7, $vr8
	vori.b	$vr8, $vr3, 0
	vinsgr2vr.d	$vr8, $s7, 1
	vpickev.b	$vr6, $vr7, $vr30
	vst	$vr6, $sp, 864                  # 16-byte Folded Spill
	vori.b	$vr7, $vr22, 0
	vinsgr2vr.d	$vr7, $t8, 1
	vslt.du	$vr8, $vr8, $vr7
	vori.b	$vr29, $vr3, 0
	vori.b	$vr30, $vr3, 0
	vinsgr2vr.d	$vr6, $a4, 0
	vinsgr2vr.d	$vr3, $s5, 1
	vori.b	$vr7, $vr6, 0
	vinsgr2vr.d	$vr7, $t8, 1
	vslt.du	$vr7, $vr3, $vr7
	vpickev.w	$vr7, $vr8, $vr7
	vinsgr2vr.d	$vr30, $ra, 1
	vori.b	$vr8, $vr11, 0
	vinsgr2vr.d	$vr8, $t8, 1
	vslt.du	$vr8, $vr30, $vr8
	vinsgr2vr.d	$vr29, $a5, 1
	vinsgr2vr.d	$vr31, $t8, 1
	vslt.du	$vr29, $vr29, $vr31
	vpickev.w	$vr8, $vr29, $vr8
	alsl.d	$t0, $a6, $fp, 3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a0, 3
	alsl.d	$t1, $a6, $s1, 3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a0, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a0, 3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a0, 3
	vld	$vr31, $sp, 848                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr31, $t2, 1
	vld	$vr30, $sp, 880                 # 16-byte Folded Reload
	vinsgr2vr.d	$vr30, $a2, 1
	vst	$vr30, $sp, 880                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr10, $t1, 1
	vinsgr2vr.d	$vr12, $t1, 1
	vinsgr2vr.d	$vr13, $ra, 1
	vinsgr2vr.d	$vr14, $ra, 1
	vpickev.h	$vr7, $vr8, $vr7
	vinsgr2vr.d	$vr8, $t0, 0
	vinsgr2vr.d	$vr27, $a2, 1
	vinsgr2vr.d	$vr20, $t8, 1
	vslt.du	$vr20, $vr27, $vr20
	vori.b	$vr27, $vr8, 0
	vinsgr2vr.d	$vr27, $ra, 1
	vinsgr2vr.d	$vr28, $a4, 1
	vslt.du	$vr3, $vr3, $vr28
	vori.b	$vr28, $vr8, 0
	vinsgr2vr.d	$vr28, $s7, 1
	vpickev.w	$vr3, $vr3, $vr20
	vori.b	$vr20, $vr22, 0
	vinsgr2vr.d	$vr20, $a4, 1
	vslt.du	$vr20, $vr28, $vr20
	vori.b	$vr28, $vr11, 0
	vinsgr2vr.d	$vr28, $a4, 1
	vslt.du	$vr27, $vr27, $vr28
	vori.b	$vr28, $vr4, 0
	vinsgr2vr.d	$vr28, $ra, 1
	vinsgr2vr.d	$vr17, $s5, 1
	vpickev.w	$vr20, $vr27, $vr20
	vori.b	$vr27, $vr8, 0
	vinsgr2vr.d	$vr27, $s5, 1
	vpickev.h	$vr3, $vr20, $vr3
	vori.b	$vr20, $vr8, 0
	vinsgr2vr.d	$vr20, $a2, 1
	vpickev.b	$vr3, $vr3, $vr7
	vst	$vr3, $sp, 848                  # 16-byte Folded Spill
	vori.b	$vr7, $vr8, 0
	vinsgr2vr.d	$vr7, $a5, 1
	vinsgr2vr.d	$vr25, $a4, 1
	vslt.du	$vr7, $vr7, $vr25
	vinsgr2vr.d	$vr25, $s0, 0
	vinsgr2vr.d	$vr24, $a4, 1
	vslt.du	$vr20, $vr20, $vr24
	vori.b	$vr29, $vr25, 0
	vpickev.w	$vr7, $vr20, $vr7
	vori.b	$vr20, $vr25, 0
	vinsgr2vr.d	$vr0, $t6, 1
	vslt.du	$vr0, $vr27, $vr0
	vori.b	$vr27, $vr25, 0
	vinsgr2vr.d	$vr25, $a1, 1
	vslt.du	$vr17, $vr17, $vr25
	vori.b	$vr25, $vr4, 0
	vinsgr2vr.d	$vr25, $a2, 1
	vinsgr2vr.d	$vr5, $s6, 1
	vinsgr2vr.d	$vr15, $s5, 1
	vinsgr2vr.d	$vr16, $s5, 1
	vpickev.w	$vr0, $vr17, $vr0
	vinsgr2vr.d	$vr1, $s5, 1
	vinsgr2vr.d	$vr18, $t4, 1
	vinsgr2vr.d	$vr19, $s1, 1
	vinsgr2vr.d	$vr2, $a7, 1
	vinsgr2vr.d	$vr21, $a3, 1
	vpickev.h	$vr0, $vr0, $vr7
	vinsgr2vr.d	$vr24, $fp, 0
	vinsgr2vr.d	$vr27, $t5, 1
	vslt.du	$vr7, $vr1, $vr27
	vori.b	$vr17, $vr24, 0
	vinsgr2vr.d	$vr17, $a7, 1
	vinsgr2vr.d	$vr20, $a3, 1
	vslt.du	$vr16, $vr16, $vr20
	vori.b	$vr20, $vr24, 0
	vinsgr2vr.d	$vr20, $a3, 1
	vinsgr2vr.d	$vr26, $t5, 1
	vinsgr2vr.d	$vr23, $a1, 1
	st.d	$a7, $sp, 760                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr29, $a7, 1
	vpickev.w	$vr7, $vr16, $vr7
	vslt.du	$vr15, $vr15, $vr29
	vinsgr2vr.d	$vr22, $a1, 1
	vslt.du	$vr5, $vr5, $vr22
	vpickev.w	$vr5, $vr5, $vr15
	vpickev.h	$vr5, $vr5, $vr7
	vpickev.b	$vr0, $vr5, $vr0
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	vslt.du	$vr0, $vr25, $vr23
	vslt.du	$vr7, $vr28, $vr26
	vpickev.w	$vr0, $vr7, $vr0
	vslt.du	$vr7, $vr14, $vr20
	vslt.du	$vr13, $vr13, $vr17
	vpickev.w	$vr7, $vr13, $vr7
	vpickev.h	$vr0, $vr7, $vr0
	vslt.du	$vr7, $vr12, $vr21
	vslt.du	$vr2, $vr10, $vr2
	vpickev.w	$vr2, $vr2, $vr7
	vslt.du	$vr7, $vr30, $vr19
	vslt.du	$vr10, $vr31, $vr18
	vpickev.w	$vr7, $vr10, $vr7
	vpickev.h	$vr2, $vr7, $vr2
	vinsgr2vr.d	$vr25, $s6, 0
	vpickev.b	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 784                  # 16-byte Folded Spill
	vori.b	$vr13, $vr25, 0
	vinsgr2vr.d	$vr12, $t3, 0
	vinsgr2vr.d	$vr12, $s5, 1
	vinsgr2vr.d	$vr13, $s8, 1
	vori.b	$vr0, $vr12, 0
	vshuf4i.d	$vr0, $vr9, 3
	vst	$vr0, $sp, 768                  # 16-byte Folded Spill
	vori.b	$vr18, $vr4, 0
	vori.b	$vr19, $vr25, 0
	vori.b	$vr22, $vr4, 0
	vori.b	$vr26, $vr25, 0
	vori.b	$vr28, $vr13, 0
	vinsgr2vr.d	$vr28, $t3, 1
	vinsgr2vr.d	$vr4, $s7, 1
	vori.b	$vr29, $vr25, 0
	vinsgr2vr.d	$vr29, $t2, 1
	vinsgr2vr.d	$vr31, $s1, 0
	vinsgr2vr.d	$vr30, $t4, 0
	vinsgr2vr.d	$vr23, $t7, 0
	vinsgr2vr.d	$vr25, $t1, 1
	vori.b	$vr10, $vr31, 0
	vori.b	$vr14, $vr30, 0
	vori.b	$vr15, $vr31, 0
	vori.b	$vr16, $vr30, 0
	vori.b	$vr17, $vr31, 0
	vori.b	$vr20, $vr30, 0
	vori.b	$vr9, $vr23, 0
	vori.b	$vr21, $vr24, 0
	vinsgr2vr.d	$vr24, $t6, 1
	vslt.du	$vr2, $vr25, $vr24
	vori.b	$vr27, $vr31, 0
	vinsgr2vr.d	$vr31, $t6, 1
	vslt.du	$vr7, $vr29, $vr31
	vori.b	$vr29, $vr23, 0
	vpickev.w	$vr2, $vr7, $vr2
	vori.b	$vr7, $vr23, 0
	vinsgr2vr.d	$vr30, $t6, 1
	vslt.du	$vr24, $vr28, $vr30
	vori.b	$vr25, $vr23, 0
	vinsgr2vr.d	$vr23, $fp, 1
	vslt.du	$vr4, $vr4, $vr23
	vpickev.w	$vr4, $vr4, $vr24
	vinsgr2vr.d	$vr28, $t1, 0
	vpickev.h	$vr5, $vr4, $vr2
	vori.b	$vr24, $vr28, 0
	vori.b	$vr4, $vr28, 0
	vori.b	$vr1, $vr28, 0
	vori.b	$vr30, $vr28, 0
	vinsgr2vr.d	$vr28, $s7, 1
	vinsgr2vr.d	$vr25, $s1, 1
	vinsgr2vr.d	$vr31, $t2, 0
	vslt.du	$vr0, $vr28, $vr25
	vori.b	$vr25, $vr31, 0
	vori.b	$vr28, $vr31, 0
	vori.b	$vr3, $vr31, 0
	vori.b	$vr2, $vr31, 0
	vinsgr2vr.d	$vr31, $s7, 1
	vinsgr2vr.d	$vr7, $t4, 1
	vslt.du	$vr7, $vr31, $vr7
	vpickev.w	$vr0, $vr7, $vr0
	vinsgr2vr.d	$vr30, $s8, 1
	vori.b	$vr7, $vr11, 0
	vori.b	$vr31, $vr11, 0
	vinsgr2vr.d	$vr11, $s1, 1
	vslt.du	$vr11, $vr30, $vr11
	vori.b	$vr30, $vr13, 0
	vshuf4i.d	$vr30, $vr12, 6
	vslt.du	$vr23, $vr30, $vr23
	vpickev.w	$vr11, $vr11, $vr23
	vpickev.h	$vr0, $vr11, $vr0
	vpickev.b	$vr0, $vr0, $vr5
	vst	$vr0, $sp, 816                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $t8, 0
	vinsgr2vr.d	$vr26, $s4, 1
	vori.b	$vr5, $vr0, 0
	vinsgr2vr.d	$vr5, $t7, 1
	vslt.du	$vr5, $vr26, $vr5
	vinsgr2vr.d	$vr8, $s4, 1
	vori.b	$vr11, $vr0, 0
	vori.b	$vr26, $vr0, 0
	vori.b	$vr30, $vr0, 0
	vinsgr2vr.d	$vr0, $s0, 1
	vslt.du	$vr23, $vr8, $vr0
	vpickev.w	$vr5, $vr5, $vr23
	vinsgr2vr.d	$vr22, $s4, 1
	vinsgr2vr.d	$vr30, $fp, 1
	vslt.du	$vr22, $vr22, $vr30
	vinsgr2vr.d	$vr1, $s4, 1
	vinsgr2vr.d	$vr26, $s1, 1
	vslt.du	$vr1, $vr1, $vr26
	vpickev.w	$vr1, $vr1, $vr22
	vpickev.h	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr19, $t0, 1
	vori.b	$vr5, $vr6, 0
	vori.b	$vr22, $vr6, 0
	vori.b	$vr23, $vr6, 0
	vori.b	$vr26, $vr6, 0
	vinsgr2vr.d	$vr6, $t7, 1
	vslt.du	$vr6, $vr19, $vr6
	vinsgr2vr.d	$vr18, $t0, 1
	vinsgr2vr.d	$vr26, $fp, 1
	vslt.du	$vr18, $vr18, $vr26
	vpickev.w	$vr6, $vr18, $vr6
	vinsgr2vr.d	$vr2, $s4, 1
	vinsgr2vr.d	$vr11, $t4, 1
	vslt.du	$vr2, $vr2, $vr11
	vpackev.d	$vr8, $vr8, $vr12
	vslt.du	$vr0, $vr8, $vr0
	vpickev.w	$vr0, $vr0, $vr2
	vpickev.h	$vr0, $vr6, $vr0
	vpickev.b	$vr6, $vr0, $vr1
	vinsgr2vr.d	$vr4, $t0, 1
	vinsgr2vr.d	$vr23, $s1, 1
	vslt.du	$vr0, $vr4, $vr23
	vinsgr2vr.d	$vr3, $t0, 1
	vinsgr2vr.d	$vr22, $t4, 1
	vslt.du	$vr1, $vr3, $vr22
	vpickev.w	$vr0, $vr1, $vr0
	vpackev.d	$vr1, $vr13, $vr12
	vinsgr2vr.d	$vr5, $s0, 1
	vslt.du	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr9, $t6, 1
	vslt.du	$vr2, $vr13, $vr9
	vpackod.d	$vr3, $vr13, $vr12
	vinsgr2vr.d	$vr29, $s0, 1
	vslt.du	$vr3, $vr3, $vr29
	vpickev.w	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr24, $t2, 1
	vpickev.h	$vr0, $vr1, $vr0
	vori.b	$vr1, $vr24, 0
	vshuf4i.d	$vr1, $vr12, 3
	vinsgr2vr.d	$vr21, $s0, 1
	vslt.du	$vr1, $vr1, $vr21
	vpackod.d	$vr3, $vr24, $vr12
	vinsgr2vr.d	$vr27, $s0, 1
	vslt.du	$vr3, $vr3, $vr27
	vpickev.w	$vr1, $vr3, $vr1
	vpackev.d	$vr3, $vr24, $vr12
	vshuf4i.d	$vr12, $vr0, 1
	vinsgr2vr.d	$vr20, $s0, 1
	vslt.du	$vr4, $vr12, $vr20
	vpickev.w	$vr2, $vr2, $vr4
	vpickev.h	$vr1, $vr2, $vr1
	vpickev.b	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr28, $s8, 1
	vinsgr2vr.d	$vr31, $t4, 1
	vslt.du	$vr1, $vr28, $vr31
	vinsgr2vr.d	$vr7, $fp, 1
	vslt.du	$vr2, $vr3, $vr7
	vpickev.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 800                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr2, $t2, 1
	vinsgr2vr.d	$vr17, $fp, 1
	vslt.du	$vr2, $vr2, $vr17
	vinsgr2vr.d	$vr16, $fp, 1
	vld	$vr3, $sp, 768                  # 16-byte Folded Reload
	vslt.du	$vr3, $vr3, $vr16
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vinsgr2vr.d	$vr15, $t5, 1
	vslt.du	$vr2, $vr24, $vr15
	vinsgr2vr.d	$vr24, $t3, 1
	vinsgr2vr.d	$vr14, $t5, 1
	vslt.du	$vr3, $vr24, $vr14
	vpickev.w	$vr2, $vr3, $vr2
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	vinsgr2vr.d	$vr4, $t3, 0
	vinsgr2vr.d	$vr25, $a5, 1
	st.d	$t4, $sp, 800                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr10, $t4, 1
	vslt.du	$vr3, $vr25, $vr10
	st.d	$a3, $sp, 880                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr10, $a3, 1
	vslt.du	$vr4, $vr4, $vr10
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vpickev.b	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 784                  # 16-byte Folded Reload
	vand.v	$vr1, $vr2, $vr1
	vpickve2gr.b	$a1, $vr1, 0
	vpickve2gr.b	$a4, $vr1, 1
	andi	$a4, $a4, 1
	bstrins.d	$a1, $a4, 63, 1
	vpickve2gr.b	$a4, $vr1, 2
	bstrins.d	$a1, $a4, 2, 2
	vpickve2gr.b	$a4, $vr1, 3
	bstrins.d	$a1, $a4, 3, 3
	vpickve2gr.b	$a4, $vr1, 4
	vpickve2gr.b	$t5, $vr1, 5
	vpickve2gr.b	$t6, $vr1, 6
	vpickve2gr.b	$t7, $vr1, 7
	vpickve2gr.b	$t8, $vr1, 8
	vpickve2gr.b	$fp, $vr1, 9
	vpickve2gr.b	$s0, $vr1, 10
	vpickve2gr.b	$s1, $vr1, 11
	vpickve2gr.b	$a0, $vr1, 12
	vpickve2gr.b	$a7, $vr1, 13
	vpickve2gr.b	$a3, $vr1, 14
	vpickve2gr.b	$t4, $vr1, 15
	vld	$vr1, $sp, 832                  # 16-byte Folded Reload
	vand.v	$vr0, $vr1, $vr0
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
	andi	$a1, $a7, 1
	slli.d	$a1, $a1, 13
	or	$a0, $a0, $a1
	andi	$a1, $a3, 1
	slli.d	$a1, $a1, 14
	or	$a0, $a0, $a1
	slli.d	$a1, $t4, 15
	or	$a4, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 0
	vpickve2gr.b	$a0, $vr0, 1
	andi	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.b	$a0, $vr0, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.b	$a0, $vr0, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.b	$a0, $vr0, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.b	$a0, $vr0, 5
	vpickve2gr.b	$a3, $vr0, 6
	vpickve2gr.b	$a7, $vr0, 7
	vpickve2gr.b	$t4, $vr0, 8
	vpickve2gr.b	$t5, $vr0, 9
	vpickve2gr.b	$t6, $vr0, 10
	vpickve2gr.b	$t7, $vr0, 11
	vpickve2gr.b	$t8, $vr0, 12
	vpickve2gr.b	$fp, $vr0, 13
	vpickve2gr.b	$s0, $vr0, 14
	vpickve2gr.b	$s1, $vr0, 15
	vld	$vr0, $sp, 848                  # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr6
	bstrpick.d	$a4, $a4, 15, 0
	bstrins.d	$a1, $a0, 5, 5
	andi	$a0, $a3, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	andi	$a1, $a7, 1
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
	vpickve2gr.b	$a1, $vr0, 0
	vpickve2gr.b	$a0, $vr0, 1
	andi	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	vpickve2gr.b	$a0, $vr0, 2
	bstrins.d	$a1, $a0, 2, 2
	vpickve2gr.b	$a0, $vr0, 3
	bstrins.d	$a1, $a0, 3, 3
	vpickve2gr.b	$a0, $vr0, 4
	bstrins.d	$a1, $a0, 4, 4
	vpickve2gr.b	$a0, $vr0, 5
	vpickve2gr.b	$a3, $vr0, 6
	vpickve2gr.b	$a7, $vr0, 7
	vpickve2gr.b	$t4, $vr0, 8
	vpickve2gr.b	$t5, $vr0, 9
	vpickve2gr.b	$t6, $vr0, 10
	vpickve2gr.b	$t7, $vr0, 11
	vpickve2gr.b	$t8, $vr0, 12
	vpickve2gr.b	$fp, $vr0, 13
	vpickve2gr.b	$s0, $vr0, 14
	vpickve2gr.b	$s1, $vr0, 15
	vld	$vr0, $sp, 864                  # 16-byte Folded Reload
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	slli.d	$a4, $a4, 16
	bstrins.d	$a1, $a0, 5, 5
	andi	$a0, $a3, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a1, $a0
	andi	$a1, $a7, 1
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
	vpickve2gr.b	$a3, $vr0, 6
	vpickve2gr.b	$a7, $vr0, 7
	vpickve2gr.b	$t4, $vr0, 8
	vpickve2gr.b	$t5, $vr0, 9
	vpickve2gr.b	$t6, $vr0, 10
	vpickve2gr.b	$t7, $vr0, 11
	vpickve2gr.b	$t8, $vr0, 12
	vpickve2gr.b	$fp, $vr0, 13
	vpickve2gr.b	$s0, $vr0, 14
	vpickve2gr.b	$s1, $vr0, 15
	bstrins.d	$a4, $a0, 5, 5
	andi	$a0, $a3, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a4, $a0
	andi	$a3, $a7, 1
	slli.d	$a3, $a3, 7
	or	$a0, $a0, $a3
	andi	$a3, $t4, 1
	slli.d	$a3, $a3, 8
	or	$a0, $a0, $a3
	andi	$a3, $t5, 1
	slli.d	$a3, $a3, 9
	or	$a0, $a0, $a3
	andi	$a3, $t6, 1
	slli.d	$a3, $a3, 10
	or	$a0, $a0, $a3
	andi	$a3, $t7, 1
	slli.d	$a3, $a3, 11
	or	$a0, $a0, $a3
	andi	$a3, $t8, 1
	slli.d	$a3, $a3, 12
	or	$a0, $a0, $a3
	andi	$a3, $fp, 1
	slli.d	$a3, $a3, 13
	or	$a0, $a0, $a3
	andi	$a3, $s0, 1
	slli.d	$a3, $a3, 14
	or	$a0, $a0, $a3
	slli.d	$a3, $s1, 15
	or	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 15, 0
	or	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	move	$a4, $zero
	bnez	$a0, .LBB4_41
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_33 Depth=3
	ld.d	$a3, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a3
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	sltu	$a1, $t3, $a1
	and	$a0, $a0, $a1
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	vld	$vr5, $sp, 368                  # 16-byte Folded Reload
	bnez	$a0, .LBB4_42
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_33 Depth=3
	sltu	$a0, $a2, $a3
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
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
	vldx	$vr1, $s5, $a1
	vldx	$vr2, $s4, $a1
	vldx	$vr3, $s7, $a1
	vldx	$vr4, $s8, $a1
	vfadd.d	$vr0, $vr0, $vr1
	vfadd.d	$vr0, $vr2, $vr0
	vstx	$vr0, $s4, $a1
	vfadd.d	$vr0, $vr3, $vr4
	vldx	$vr1, $s6, $a1
	vldx	$vr2, $t1, $a1
	vldx	$vr3, $a5, $a1
	vldx	$vr4, $ra, $a1
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $s6, $a1
	vfadd.d	$vr0, $vr2, $vr3
	vfadd.d	$vr0, $vr4, $vr0
	vstx	$vr0, $ra, $a1
	vldx	$vr0, $a2, $a1
	vldx	$vr1, $t3, $a1
	vstx	$vr5, $t0, $a1
	vstx	$vr5, $s5, $a1
	vstx	$vr5, $s7, $a1
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $t2, $a1
	vstx	$vr5, $s8, $a1
	vstx	$vr5, $t1, $a1
	vstx	$vr5, $a5, $a1
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $t2, $a1
	vstx	$vr5, $a2, $a1
	vstx	$vr5, $t3, $a1
	addi.d	$a1, $a1, 16
	bne	$s2, $a1, .LBB4_39
# %bb.40:                               # %middle.block
                                        #   in Loop: Header=BB4_33 Depth=3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$s4, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 720                   # 8-byte Folded Reload
	beq	$a0, $s4, .LBB4_32
	b	.LBB4_43
.LBB4_41:                               #   in Loop: Header=BB4_33 Depth=3
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
.LBB4_42:                               #   in Loop: Header=BB4_33 Depth=3
	ld.d	$s4, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 720                   # 8-byte Folded Reload
.LBB4_43:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_33 Depth=3
	slli.d	$a1, $a6, 3
	sub.d	$a2, $s4, $a4
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	move	$t1, $s1
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	move	$t4, $s0
	move	$t5, $t8
	ld.d	$t6, $sp, 408                   # 8-byte Folded Reload
	move	$t7, $fp
	.p2align	4, , 16
.LBB4_44:                               # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_31 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t7, $a1
	fldx.d	$fa1, $t6, $a1
	fldx.d	$fa2, $t5, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t5, $a1
	stx.d	$zero, $t7, $a1
	stx.d	$zero, $t6, $a1
	fldx.d	$fa0, $t4, $a1
	fldx.d	$fa1, $t3, $a1
	fldx.d	$fa2, $t2, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t2, $a1
	stx.d	$zero, $t4, $a1
	stx.d	$zero, $t3, $a1
	fldx.d	$fa0, $t1, $a1
	fldx.d	$fa1, $t0, $a1
	fldx.d	$fa2, $a7, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a7, $a1
	stx.d	$zero, $t1, $a1
	stx.d	$zero, $t0, $a1
	fldx.d	$fa0, $a5, $a1
	fldx.d	$fa1, $a4, $a1
	fldx.d	$fa2, $a3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a3, $a1
	stx.d	$zero, $a5, $a1
	stx.d	$zero, $a4, $a1
	addi.d	$a6, $a6, 1
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
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_44
	b	.LBB4_32
.LBB4_45:                               # %.loopexit491
	move	$a0, $zero
	fld.d	$fs7, $sp, 936                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 944                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 952                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 960                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 968                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 976                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 984                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 992                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1080                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1088
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
