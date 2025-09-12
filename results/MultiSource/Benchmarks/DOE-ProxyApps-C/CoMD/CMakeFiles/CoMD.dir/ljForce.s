	.file	"ljForce.c"
	.text
	.globl	ljDestroy                       # -- Begin function ljDestroy
	.p2align	5
	.type	ljDestroy,@function
ljDestroy:                              # @ljDestroy
# %bb.0:
	beqz	$a0, .LBB0_4
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_3
# %bb.2:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB0_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB0_4:
	ret
.Lfunc_end0:
	.size	ljDestroy, .Lfunc_end0-ljDestroy
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function initLjPot
.LCPI1_0:
	.dword	0x4002851eb851eb85              # double 2.3149999999999999
	.dword	0x3fc5604189374bc7              # double 0.16700000000000001
.LCPI1_1:
	.dword	0x4017266666666666              # double 5.7874999999999996
	.dword	0x40b9ba7e39dcde3e              # double 6586.4930704157432
	.text
	.globl	initLjPot
	.p2align	5
	.type	initLjPot,@function
initLjPot:                              # @initLjPot
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ljForce)
	addi.d	$a1, $a1, %pc_lo12(ljForce)
	st.d	$a1, $a0, 40
	pcalau12i	$a1, %pc_hi20(ljPrint)
	addi.d	$a1, $a1, %pc_lo12(ljPrint)
	st.d	$a1, $a0, 48
	pcalau12i	$a1, %pc_hi20(ljDestroy)
	addi.d	$a1, $a1, %pc_lo12(ljDestroy)
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_0)
	st.d	$a1, $a0, 56
	vst	$vr0, $a0, 64
	lu12i.w	$a1, 125829
	ori	$a1, $a1, 492
	lu32i.d	$a1, -201851
	lu52i.d	$a1, $a1, 1024
	st.d	$a1, $a0, 16
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_1)
	lu12i.w	$a1, 1076
	ori	$a1, $a1, 838
	st.w	$a1, $a0, 24
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $a0, 32
	st.b	$a1, $a0, 34
	ori	$a1, $zero, 29
	st.w	$a1, $a0, 36
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	initLjPot, .Lfunc_end1-initLjPot
                                        # -- End function
	.p2align	5                               # -- Begin function ljForce
	.type	ljForce,@function
ljForce:                                # @ljForce
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 120                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	ld.d	$a1, $fp, 24
	fld.d	$fa0, $a0, 64
	fld.d	$fs0, $a0, 72
	ld.w	$a2, $a1, 20
	fld.d	$fa1, $a0, 0
	st.d	$zero, $fp, 48
	blez	$a2, .LBB2_4
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	slli.w	$a1, $a2, 6
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a1
	masknez	$a4, $a2, $a3
	ld.d	$a2, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	vrepli.b	$vr2, 0
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 40
	slli.d	$a3, $a0, 4
	alsl.d	$a3, $a0, $a3, 3
	add.d	$a4, $a2, $a3
	vstx	$vr2, $a2, $a3
	st.d	$zero, $a4, 16
	ld.d	$a2, $fp, 32
	ld.d	$a3, $a2, 48
	slli.d	$a4, $a0, 3
	addi.d	$a0, $a0, 1
	stx.d	$zero, $a3, $a4
	bne	$a0, $a1, .LBB2_2
# %bb.3:                                # %._crit_edge.loopexit
	ld.d	$a1, $fp, 24
.LBB2_4:                                # %._crit_edge
	ld.w	$a0, $a1, 12
	blez	$a0, .LBB2_23
# %bb.5:                                # %.lr.ph157
	move	$s0, $zero
	move	$s1, $zero
	fmul.d	$fs1, $fa1, $fa1
	fmul.d	$fa1, $fa0, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fs2, $fa0, $fa1
	fmul.d	$fa0, $fs1, $fs1
	fmul.d	$fa0, $fs1, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	vldi	$vr1, -784
	fadd.d	$fa1, $fa0, $fa1
	fneg.d	$fa1, $fa1
	fmul.d	$fs3, $fa0, $fa1
	vldi	$vr0, -880
	fmul.d	$fs4, $fs0, $fa0
	movgr2fr.d	$fs5, $zero
	addi.d	$s2, $sp, 12
	fmov.d	$fs6, $fs5
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %.loopexit126
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $a1, 12
	addi.d	$s0, $s0, 1
	addi.w	$s1, $s1, 64
	bge	$s0, $a0, .LBB2_22
.LBB2_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_18 Depth 4
	ld.d	$a0, $a1, 120
	slli.d	$a2, $s0, 2
	ldx.w	$s3, $a0, $a2
	beqz	$s3, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $sp, 12
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getNeighborBoxes)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	blez	$a0, .LBB2_6
# %bb.9:                                # %.lr.ph146
                                        #   in Loop: Header=BB2_7 Depth=1
	vldi	$vr7, -784
	vldi	$vr8, -928
	vldi	$vr9, -872
	vldi	$vr10, -984
	blez	$s3, .LBB2_6
# %bb.10:                               # %.lr.ph146.split.us.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $a1, 120
	move	$a3, $zero
	bstrpick.d	$a4, $s1, 31, 0
	add.w	$a5, $s3, $s1
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_11:                               # %..loopexit125_crit_edge.us
                                        #   in Loop: Header=BB2_12 Depth=2
	addi.d	$a3, $a3, 1
	beq	$a3, $a0, .LBB2_6
.LBB2_12:                               # %.lr.ph146.split.us
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_18 Depth 4
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $a6, $s2
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a2, $a7
	beqz	$a7, .LBB2_11
# %bb.13:                               # %.lr.ph141.us
                                        #   in Loop: Header=BB2_12 Depth=2
	blez	$a7, .LBB2_11
# %bb.14:                               # %.lr.ph141.split.us.us
                                        #   in Loop: Header=BB2_12 Depth=2
	ld.d	$t0, $fp, 32
	ld.d	$t1, $t0, 8
	slli.w	$t5, $a6, 6
	ld.w	$t2, $a1, 12
	alsl.d	$t3, $t5, $t1, 2
	slli.d	$t4, $t5, 4
	alsl.d	$t4, $t5, $t4, 3
	slli.d	$t5, $t5, 3
	move	$t6, $a4
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %._crit_edge136.us.us
                                        #   in Loop: Header=BB2_16 Depth=3
	addi.d	$t6, $t6, 1
	addi.w	$t7, $t6, 0
	beq	$a5, $t7, .LBB2_11
.LBB2_16:                               # %.lr.ph135.us.us
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_18 Depth 4
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $t1, $t7
	move	$t8, $a7
	move	$s3, $t5
	move	$s4, $t4
	move	$s5, $t3
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %.loopexit.us.us
                                        #   in Loop: Header=BB2_18 Depth=4
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 24
	addi.w	$t8, $t8, -1
	addi.d	$s3, $s3, 8
	beqz	$t8, .LBB2_15
.LBB2_18:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_12 Depth=2
                                        #       Parent Loop BB2_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a6, $t2, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=4
	ld.w	$s6, $s5, 0
	bge	$t7, $s6, .LBB2_17
.LBB2_20:                               #   in Loop: Header=BB2_18 Depth=4
	ld.d	$s6, $t0, 24
	alsl.d	$s7, $t6, $t6, 1
	slli.d	$s7, $s7, 3
	vldx	$vr0, $s6, $s7
	vldx	$vr1, $s6, $s4
	add.d	$s7, $s6, $s7
	add.d	$s6, $s6, $s4
	vfsub.d	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 0
	fld.d	$fa2, $s7, 16
	fld.d	$fa3, $s6, 16
	fmadd.d	$fa1, $fa1, $fa1, $fs5
	vreplvei.d	$vr4, $vr0, 1
	fmadd.d	$fa4, $fa4, $fa4, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fmadd.d	$fa2, $fa1, $fa1, $fa4
	fcmp.clt.d	$fcc0, $fs1, $fa2
	bcnez	$fcc0, .LBB2_17
# %bb.21:                               # %.loopexit.us.us.loopexit
                                        #   in Loop: Header=BB2_18 Depth=4
	frecip.d	$fa2, $fa2
	ld.d	$s6, $t0, 48
	fmul.d	$fa3, $fa2, $fa2
	fmul.d	$fa3, $fa2, $fa3
	slli.d	$s7, $t6, 3
	fldx.d	$fa4, $s6, $s7
	fmul.d	$fa3, $fs2, $fa3
	fadd.d	$fa5, $fa3, $fa7
	fmadd.d	$fa5, $fa3, $fa5, $fs3
	fmadd.d	$fa4, $fa5, $ft0, $fa4
	fstx.d	$fa4, $s6, $s7
	fldx.d	$fa4, $s6, $s3
	fmadd.d	$fa4, $fa5, $ft0, $fa4
	fstx.d	$fa4, $s6, $s3
	fmul.d	$fa4, $fs4, $fa3
	fmul.d	$fa2, $fa2, $fa4
	ld.d	$s6, $t0, 40
	fmadd.d	$fa3, $fa3, $ft2, $ft1
	slli.d	$s7, $t6, 4
	alsl.d	$s7, $t6, $s7, 3
	vldx	$vr4, $s6, $s7
	fmul.d	$fa2, $fa3, $fa2
	vbitrevi.d	$vr3, $vr0, 63
	vreplvei.d	$vr6, $vr2, 0
	vfmadd.d	$vr3, $vr3, $vr6, $vr4
	vstx	$vr3, $s6, $s7
	vldx	$vr3, $s6, $s4
	add.d	$s7, $s6, $s7
	vfmadd.d	$vr0, $vr0, $vr6, $vr3
	vstx	$vr0, $s6, $s4
	fld.d	$fa0, $s7, 16
	add.d	$s6, $s6, $s4
	fneg.d	$fa3, $fa1
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	fst.d	$fa0, $s7, 16
	fld.d	$fa0, $s6, 16
	slt	$s7, $a6, $t2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $s6, 16
	fadd.d	$fa0, $fs6, $fa5
	fmadd.d	$fa1, $fa5, $ft0, $fs6
	movgr2cf	$fcc0, $s7
	fsel	$fs6, $fa1, $fa0, $fcc0
	b	.LBB2_17
.LBB2_22:                               # %._crit_edge158.loopexit
	vldi	$vr0, -1008
	fmul.d	$fa0, $fs6, $fa0
	b	.LBB2_24
.LBB2_23:
	movgr2fr.d	$fa0, $zero
.LBB2_24:                               # %._crit_edge158
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $fp, 48
	move	$a0, $zero
	fld.d	$fs6, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 168                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end2:
	.size	ljForce, .Lfunc_end2-ljForce
                                        # -- End function
	.p2align	5                               # -- Begin function ljPrint
	.type	ljPrint,@function
ljPrint:                                # @ljPrint
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 36
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 8
	lu12i.w	$a0, -142467
	ori	$a0, $a0, 3173
	lu32i.d	$a0, -399071
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s0, 24
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end3:
	.size	ljPrint, .Lfunc_end3-ljPrint
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Cu"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"  Potential type   : Lennard-Jones\n"
	.size	.L.str.2, 36

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"  Species name     : %s\n"
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"  Atomic number    : %d\n"
	.size	.L.str.4, 25

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"  Mass             : %lg amu\n"
	.size	.L.str.5, 30

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"  Lattice Type     : %s\n"
	.size	.L.str.6, 25

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"  Lattice spacing  : %lg Angstroms\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"  Cutoff           : %lg Angstroms\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"  Epsilon          : %lg eV\n"
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"  Sigma            : %lg Angstroms\n"
	.size	.L.str.10, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ljDestroy
	.addrsig_sym ljForce
	.addrsig_sym ljPrint
