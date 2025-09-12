	.file	"main.c"
	.text
	.globl	rand                            # -- Begin function rand
	.p2align	5
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	pcalau12i	$a1, %pc_hi20(next)
	ld.d	$a0, $a1, %pc_lo12(next)
	lu12i.w	$a2, 269412
	ori	$a2, $a2, 3693
	mul.d	$a0, $a0, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 57
	add.d	$a2, $a0, $a2
	srli.d	$a0, $a2, 16
	bstrpick.d	$a3, $a2, 47, 16
	lu12i.w	$a4, 32
	ori	$a4, $a4, 5
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	sub.d	$a4, $a0, $a3
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 14
	slli.d	$a4, $a3, 15
	sub.d	$a3, $a3, $a4
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, 1
	st.d	$a2, $a1, %pc_lo12(next)
	ret
.Lfunc_end0:
	.size	rand, .Lfunc_end0-rand
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	5
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	bstrpick.d	$a0, $a0, 31, 0
	pcalau12i	$a1, %pc_hi20(next)
	st.d	$a0, $a1, %pc_lo12(next)
	ret
.Lfunc_end1:
	.size	srand, .Lfunc_end1-srand
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bge	$a2, $a0, .LBB2_32
# %bb.1:
	move	$fp, $a1
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB2_4
# %bb.2:                                # %sub_0
	ld.d	$a0, $fp, 24
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB2_4
# %bb.3:                                # %sub_1
	ld.bu	$a0, $a0, 1
	addi.d	$a0, $a0, -105
	sltui	$s0, $a0, 1
	b	.LBB2_5
.LBB2_4:
	move	$s0, $zero
.LBB2_5:                                # %.tail
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$fp, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a1, %pc_hi20(next)
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(next)
	slli.d	$a0, $fp, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$s1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $s4, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$s2, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $s4, 32
	addi.w	$s2, $fp, 0
	bstrpick.d	$s3, $fp, 31, 0
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	bnez	$a0, .LBB2_8
# %bb.6:                                # %.preheader
	beqz	$s2, .LBB2_33
# %bb.7:                                # %.lr.ph113.split.preheader
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_24
.LBB2_8:                                # %.lr.ph.preheader
	bstrpick.d	$a2, $s4, 31, 0
	ori	$a0, $zero, 4
	lu12i.w	$a1, 67108
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bgeu	$a2, $a0, .LBB2_10
# %bb.9:
	move	$a0, $zero
	b	.LBB2_13
.LBB2_10:                               # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a0, $s4, 31, 2
	slli.d	$a0, $a0, 2
	ori	$a2, $a1, 3539
	vreplgr2vr.w	$vr0, $a2
	ori	$a2, $zero, 1000
	vreplgr2vr.w	$vr1, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	move	$a4, $a0
	.p2align	4, , 16
.LBB2_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmuh.wu	$vr3, $vr2, $vr0
	vsrli.w	$vr3, $vr3, 6
	vaddi.wu	$vr4, $vr2, 4
	vmsub.w	$vr2, $vr3, $vr1
	vffint.s.wu	$vr2, $vr2
	vst	$vr2, $a2, 0
	vst	$vr2, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	vori.b	$vr2, $vr4, 0
	bnez	$a4, .LBB2_11
# %bb.12:                               # %middle.block
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB2_15
.LBB2_13:                               # %.lr.ph.preheader193
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a4, $a4, $a0
	ori	$a1, $a1, 3539
	ori	$a5, $zero, 1000
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a0, 31, 0
	mul.d	$a6, $a6, $a1
	srli.d	$a6, $a6, 38
	mul.d	$a6, $a6, $a5
	sub.d	$a6, $a0, $a6
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $a2, 0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.w	$a0, $a0, 1
	bnez	$a4, .LBB2_14
.LBB2_15:                               # %.preheader.thread
	beqz	$s2, .LBB2_33
# %bb.16:                               # %.lr.ph109.us.preheader
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	move	$s4, $zero
	ori	$s8, $zero, 1
	movgr2fr.w	$fs0, $zero
	lu12i.w	$a0, 269412
	ori	$s7, $a0, 3693
	lu12i.w	$a0, 3
	ori	$s2, $a0, 57
	lu12i.w	$a0, 32
	ori	$fp, $a0, 5
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %._crit_edge.us
                                        #   in Loop: Header=BB2_18 Depth=1
	slli.d	$a0, $s4, 2
	fst.s	$fs2, $s0, 0
	addi.d	$s4, $s4, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	stx.w	$zero, $a1, $a0
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beq	$s4, $s3, .LBB2_23
.LBB2_18:                               # %.lr.ph109.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
	alsl.d	$s0, $s4, $s5, 2
	srli.d	$a0, $s4, 1
	andi	$a1, $s4, 1
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a0, $s4, 0
	movgr2fr.d	$fa1, $s4
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a0
	fsel	$fs1, $fa1, $fa0, $fcc0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	fmov.s	$fs2, $fs0
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_19:                               #   in Loop: Header=BB2_21 Depth=2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
.LBB2_20:                               #   in Loop: Header=BB2_21 Depth=2
	fcvt.d.s	$fa1, $fs3
	fcvt.d.s	$fa2, $fs2
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	fcvt.s.d	$fs2, $fa0
	addi.d	$s5, $s5, 4
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 4
	beqz	$s1, .LBB2_17
.LBB2_21:                               #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a0, $s8, $s7
	add.d	$s8, $a0, $s2
	srli.d	$a0, $s8, 16
	bstrpick.d	$a1, $s8, 47, 16
	mul.d	$a1, $a1, $fp
	srli.d	$a1, $a1, 32
	sub.d	$a2, $a0, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 14
	fld.s	$fa0, $s6, 0
	sub.d	$a0, $a0, $a1
	fld.s	$fs3, $s5, 0
	andi	$a0, $a0, 1
	fmul.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	beqz	$a0, .LBB2_19
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	b	.LBB2_20
.LBB2_23:                               # %._crit_edge114.loopexit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$s8, $a0, %pc_lo12(next)
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB2_24:                               # %._crit_edge114
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s5
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s7
	pcaddu18i	$ra, %call36(fft_float)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s8
	move	$a5, $s4
	pcaddu18i	$ra, %call36(fft_float_StrictFP)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -487882
	ori	$a0, $a0, 2289
	lu32i.d	$a0, 325813
	lu52i.d	$s2, $a0, 1006
	movgr2fr.d	$fs0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	move	$fp, $s8
	move	$s0, $s6
	.p2align	4, , 16
.LBB2_25:                               # %.lr.ph116
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s0, 0
	fld.s	$fa0, $fp, 0
	fsub.s	$fa2, $fa1, $fa0
	fabs.s	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB2_31
# %bb.26:                               # %check_FP.exit
                                        #   in Loop: Header=BB2_25 Depth=1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 4
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 4
	bnez	$s3, .LBB2_25
# %bb.27:                               # %._crit_edge
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$fp, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	move	$s0, $s4
	move	$s3, $s7
	.p2align	4, , 16
.LBB2_28:                               # %.lr.ph119
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fld.s	$fa0, $s0, 0
	fsub.s	$fa2, $fa1, $fa0
	fabs.s	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB2_31
# %bb.29:                               # %check_FP.exit99
                                        #   in Loop: Header=BB2_28 Depth=1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 4
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 4
	bnez	$fp, .LBB2_28
.LBB2_30:                               # %._crit_edge120
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_31:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a4, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB2_32:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_33:                               # %._crit_edge120.critedge.critedge
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s5
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s7
	pcaddu18i	$ra, %call36(fft_float)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s8
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(fft_float_StrictFP)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB2_30
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	next,@object                    # @next
	.data
	.p2align	3, 0x0
next:
	.dword	1                               # 0x1
	.size	next, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"make <waves> random sinusoids"
	.size	.L.str.2, 30

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%f \t"
	.size	.L.str.6, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"A = %lf and B = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.9, 60

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"RealOut:"
	.size	.Lstr, 9

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"ImagOut:"
	.size	.Lstr.1, 9

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Usage: fft <waves> <length> -i"
	.size	.Lstr.2, 31

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"-i performs an inverse fft"
	.size	.Lstr.3, 27

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"<length> is the number of samples"
	.size	.Lstr.4, 34

	.section	".note.GNU-stack","",@progbits
	.addrsig
