	.file	"fftFunctions.c"
	.section	.text.unlikely.,"ax",@progbits
	.globl	keika                           # -- Begin function keika
	.p2align	5
	.type	keika,@function
keika:                                  # @keika
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	bnez	$a1, .LBB0_2
# %bb.1:
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.w	$s0, $s0, 1
	addi.w	$a3, $fp, 1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s0, $fp, .LBB0_4
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_4:
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end0:
	.size	keika, .Lfunc_end0-keika
                                        # -- End function
	.text
	.globl	maxItch                         # -- Begin function maxItch
	.p2align	5
	.type	maxItch,@function
maxItch:                                # @maxItch
# %bb.0:
	movgr2fr.d	$fa0, $zero
	blez	$a1, .LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB1_1
.LBB1_2:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	maxItch, .Lfunc_end1-maxItch
                                        # -- End function
	.globl	calcNaiseki                     # -- Begin function calcNaiseki
	.p2align	5
	.type	calcNaiseki,@function
calcNaiseki:                            # @calcNaiseki
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a2, 8
	fld.d	$fa3, $a2, 0
	fmul.d	$fa4, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa4
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a1, 0
	fld.d	$fa3, $a2, 0
	fneg.d	$fa0, $fa0
	fmul.d	$fa1, $fa1, $fa3
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fst.d	$fa0, $a0, 8
	ret
.Lfunc_end2:
	.size	calcNaiseki, .Lfunc_end2-calcNaiseki
                                        # -- End function
	.globl	AllocateFukusosuuVec            # -- Begin function AllocateFukusosuuVec
	.p2align	5
	.type	AllocateFukusosuuVec,@function
AllocateFukusosuuVec:                   # @AllocateFukusosuuVec
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_2
.LBB3_1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_2:
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$s0, $a0
	move	$a0, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_1
.Lfunc_end3:
	.size	AllocateFukusosuuVec, .Lfunc_end3-AllocateFukusosuuVec
                                        # -- End function
	.globl	AllocateFukusosuuMtx            # -- Begin function AllocateFukusosuuMtx
	.p2align	5
	.type	AllocateFukusosuuMtx,@function
AllocateFukusosuuMtx:                   # @AllocateFukusosuuMtx
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_8
# %bb.1:                                # %.preheader
	move	$s1, $a0
	blez	$s0, .LBB4_5
# %bb.2:                                # %.lr.ph
	move	$s3, $s0
	move	$s2, $s1
	.p2align	4, , 16
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_6
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	st.d	$a0, $s2, 0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB4_3
.LBB4_5:                                # %._crit_edge
	slli.d	$a0, $s0, 3
	stx.d	$zero, $s1, $a0
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_6:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	st.d	$zero, $s2, 0
.LBB4_7:
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_8:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	b	.LBB4_7
.Lfunc_end4:
	.size	AllocateFukusosuuMtx, .Lfunc_end4-AllocateFukusosuuMtx
                                        # -- End function
	.globl	AllocateFukusosuuCub            # -- Begin function AllocateFukusosuuCub
	.p2align	5
	.type	AllocateFukusosuuCub,@function
AllocateFukusosuuCub:                   # @AllocateFukusosuuCub
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB5_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB5_2:
	blez	$s0, .LBB5_5
# %bb.3:                                # %.lr.ph.preheader
	move	$s3, $s0
	move	$s4, $s2
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 8
	bnez	$s3, .LBB5_4
.LBB5_5:                                # %._crit_edge
	slli.d	$a0, $s0, 3
	stx.d	$zero, $s2, $a0
	move	$a0, $s2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	AllocateFukusosuuCub, .Lfunc_end5-AllocateFukusosuuCub
                                        # -- End function
	.globl	FreeFukusosuuVec                # -- Begin function FreeFukusosuuVec
	.p2align	5
	.type	FreeFukusosuuVec,@function
FreeFukusosuuVec:                       # @FreeFukusosuuVec
# %bb.0:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end6:
	.size	FreeFukusosuuVec, .Lfunc_end6-FreeFukusosuuVec
                                        # -- End function
	.globl	FreeFukusosuuMtx                # -- Begin function FreeFukusosuuMtx
	.p2align	5
	.type	FreeFukusosuuMtx,@function
FreeFukusosuuMtx:                       # @FreeFukusosuuMtx
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB7_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s0, $fp, 8
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	addi.d	$s0, $s0, 8
	bnez	$a0, .LBB7_2
.LBB7_3:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end7:
	.size	FreeFukusosuuMtx, .Lfunc_end7-FreeFukusosuuMtx
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function getKouho
.LCPI8_0:
	.dword	0xc0c387f333333333              # double -9999.8999999999996
	.text
	.globl	getKouho
	.p2align	5
	.type	getKouho,@function
getKouho:                               # @getKouho
# %bb.0:
	blez	$a1, .LBB8_7
# %bb.1:                                # %.preheader.lr.ph
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a4, $a3, $a4
	srai.d	$a4, $a4, 1
	sub.d	$a4, $zero, $a4
	blez	$a3, .LBB8_8
# %bb.2:                                # %.preheader.us.preheader
	move	$a5, $zero
	move	$a6, $zero
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	fld.d	$fa0, $a7, %pc_lo12(.LCPI8_0)
	lu12i.w	$a7, 209715
	ori	$a7, $a7, 819
	lu32i.d	$a7, 231411
	lu52i.d	$a7, $a7, -1012
	.p2align	4, , 16
.LBB8_3:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	move	$t0, $zero
	move	$t1, $a3
	move	$t2, $a2
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB8_4:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t2, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	masknez	$a6, $a6, $t3
	maskeqz	$t3, $t0, $t3
	or	$a6, $t3, $a6
	addi.w	$t0, $t0, 1
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 8
	bnez	$t1, .LBB8_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB8_3 Depth=1
	slli.d	$t0, $a6, 3
	stx.d	$a7, $a2, $t0
	add.d	$t0, $a6, $a4
	slli.d	$t1, $a5, 2
	addi.d	$a5, $a5, 1
	stx.w	$t0, $a0, $t1
	bne	$a5, $a1, .LBB8_3
.LBB8_6:                                # %._crit_edge28
	move	$a0, $a1
	ret
.LBB8_7:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB8_8:                                # %.preheader.lr.ph.split
	lu12i.w	$a3, 209715
	ori	$a3, $a3, 819
	lu32i.d	$a3, 231411
	lu52i.d	$a3, $a3, -1012
	st.d	$a3, $a2, 0
	ori	$a3, $zero, 8
	bstrpick.d	$a2, $a1, 31, 0
	bgeu	$a1, $a3, .LBB8_10
# %bb.9:
	move	$a3, $zero
	b	.LBB8_13
.LBB8_10:                               # %vector.ph
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.w	$vr0, $a4
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB8_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB8_11
# %bb.12:                               # %middle.block
	beq	$a3, $a2, .LBB8_6
.LBB8_13:                               # %.preheader.preheader
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB8_14:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB8_14
	b	.LBB8_6
.Lfunc_end8:
	.size	getKouho, .Lfunc_end8-getKouho
                                        # -- End function
	.globl	zurasu2                         # -- Begin function zurasu2
	.p2align	5
	.type	zurasu2,@function
zurasu2:                                # @zurasu2
# %bb.0:
	blez	$a0, .LBB9_17
# %bb.1:                                # %.preheader32
	blez	$a1, .LBB9_9
# %bb.2:                                # %.lr.ph40.preheader
	ori	$t0, $zero, 4
	move	$a7, $zero
	bltu	$a1, $t0, .LBB9_7
# %bb.3:                                # %.lr.ph40.preheader
	sub.d	$t0, $a5, $a3
	ori	$t1, $zero, 32
	bltu	$t0, $t1, .LBB9_7
# %bb.4:                                # %vector.ph82
	bstrpick.d	$a7, $a1, 30, 2
	slli.d	$a7, $a7, 2
	addi.d	$t0, $a5, 16
	addi.d	$t1, $a3, 16
	move	$t2, $a7
	.p2align	4, , 16
.LBB9_5:                                # %vector.body85
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB9_5
# %bb.6:                                # %middle.block90
	beq	$a7, $a1, .LBB9_9
.LBB9_7:                                # %.lr.ph40.preheader111
	alsl.d	$a5, $a7, $a5, 3
	alsl.d	$a3, $a7, $a3, 3
	sub.d	$a1, $a1, $a7
	.p2align	4, , 16
.LBB9_8:                                # %.lr.ph40
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, 0
	st.d	$a7, $a5, 0
	addi.d	$a5, $a5, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB9_8
.LBB9_9:                                # %.preheader
	blez	$a2, .LBB9_33
# %bb.10:                               # %.lr.ph42
	ori	$a3, $zero, 4
	move	$a1, $zero
	bltu	$a2, $a3, .LBB9_15
# %bb.11:                               # %.lr.ph42
	sub.d	$a3, $a6, $a4
	ori	$a5, $zero, 32
	bltu	$a3, $a5, .LBB9_15
# %bb.12:                               # %vector.ph97
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a3, $a6, 16
	addi.d	$a5, $a4, 16
	vreplgr2vr.d	$vr0, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB9_13:                               # %vector.body100
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a7, $a7, -4
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB9_13
# %bb.14:                               # %middle.block105
	beq	$a1, $a2, .LBB9_33
.LBB9_15:                               # %scalar.ph95.preheader
	alsl.d	$a3, $a1, $a6, 3
	alsl.d	$a4, $a1, $a4, 3
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB9_16:                               # %scalar.ph95
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a4, 0
	add.d	$a2, $a2, $a0
	st.d	$a2, $a3, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB9_16
	b	.LBB9_33
.LBB9_17:                               # %.preheader35
	blez	$a1, .LBB9_25
# %bb.18:                               # %.lr.ph
	move	$a7, $zero
	ori	$t0, $zero, 4
	sub.d	$a0, $zero, $a0
	bltu	$a1, $t0, .LBB9_23
# %bb.19:                               # %.lr.ph
	sub.d	$t0, $a5, $a3
	ori	$t1, $zero, 32
	bltu	$t0, $t1, .LBB9_23
# %bb.20:                               # %vector.ph
	bstrpick.d	$a7, $a1, 30, 2
	slli.d	$a7, $a7, 2
	addi.d	$t0, $a5, 16
	addi.d	$t1, $a3, 16
	vreplgr2vr.d	$vr0, $a0
	move	$t2, $a7
	.p2align	4, , 16
.LBB9_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t1, -16
	vld	$vr2, $t1, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $t0, -16
	vst	$vr2, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB9_21
# %bb.22:                               # %middle.block
	beq	$a7, $a1, .LBB9_25
.LBB9_23:                               # %scalar.ph.preheader
	alsl.d	$a5, $a7, $a5, 3
	alsl.d	$a3, $a7, $a3, 3
	sub.d	$a1, $a1, $a7
	.p2align	4, , 16
.LBB9_24:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, 0
	add.d	$a7, $a7, $a0
	st.d	$a7, $a5, 0
	addi.d	$a5, $a5, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB9_24
.LBB9_25:                               # %.preheader33
	blez	$a2, .LBB9_33
# %bb.26:                               # %.lr.ph38.preheader
	ori	$a1, $zero, 4
	move	$a0, $zero
	bltu	$a2, $a1, .LBB9_31
# %bb.27:                               # %.lr.ph38.preheader
	sub.d	$a1, $a6, $a4
	ori	$a3, $zero, 32
	bltu	$a1, $a3, .LBB9_31
# %bb.28:                               # %vector.ph67
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $a6, 16
	addi.d	$a3, $a4, 16
	move	$a5, $a0
	.p2align	4, , 16
.LBB9_29:                               # %vector.body70
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a5, $a5, -4
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB9_29
# %bb.30:                               # %middle.block75
	beq	$a0, $a2, .LBB9_33
.LBB9_31:                               # %.lr.ph38.preheader112
	alsl.d	$a1, $a0, $a6, 3
	alsl.d	$a3, $a0, $a4, 3
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB9_32:                               # %.lr.ph38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a3, 0
	st.d	$a2, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB9_32
.LBB9_33:                               # %.loopexit
	ret
.Lfunc_end9:
	.size	zurasu2, .Lfunc_end9-zurasu2
                                        # -- End function
	.globl	zurasu                          # -- Begin function zurasu
	.p2align	5
	.type	zurasu,@function
zurasu:                                 # @zurasu
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
	move	$fp, $a6
	move	$s3, $a5
	move	$s0, $a4
	move	$s4, $a3
	move	$s1, $a2
	move	$s5, $a1
	move	$s2, $a0
	blez	$a0, .LBB10_5
# %bb.1:                                # %.preheader32
	blez	$s5, .LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph40
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, -1
	addi.d	$s3, $s3, 8
	bnez	$s5, .LBB10_2
.LBB10_3:                               # %.preheader
	blez	$s1, .LBB10_10
	.p2align	4, , 16
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB10_4
	b	.LBB10_10
.LBB10_5:                               # %.preheader35
	blez	$s5, .LBB10_8
# %bb.6:                                # %.lr.ph
	sub.d	$s2, $zero, $s2
	.p2align	4, , 16
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s3, 0
	add.d	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, -1
	addi.d	$s3, $s3, 8
	bnez	$s5, .LBB10_7
.LBB10_8:                               # %.preheader33
	blez	$s1, .LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %.lr.ph38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB10_9
.LBB10_10:                              # %.loopexit
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
.Lfunc_end10:
	.size	zurasu, .Lfunc_end10-zurasu
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function alignableReagion
.LCPI11_0:
	.dword	0x4059000000000000              # double 100
.LCPI11_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	alignableReagion
	.p2align	5
	.type	alignableReagion,@function
alignableReagion:                       # @alignableReagion
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s4, $a1
	move	$s5, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sltu	$a1, $s6, $a0
	masknez	$fp, $a0, $a1
	maskeqz	$s0, $s6, $a1
	sltu	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(fftWinSize)
	ld.d	$s2, $a0, %got_pc_lo12(fftWinSize)
	ld.w	$a0, $s2, 0
	pcalau12i	$s1, %pc_hi20(alignableReagion.alloclen)
	ld.w	$a1, $s1, %pc_lo12(alignableReagion.alloclen)
	add.w	$s6, $a0, $a2
	pcalau12i	$s3, %pc_hi20(alignableReagion.stra)
	bge	$a1, $s6, .LBB11_5
# %bb.1:
	beqz	$a1, .LBB11_3
# %bb.2:
	ld.d	$a0, $s3, %pc_lo12(alignableReagion.stra)
	pcaddu18i	$ra, %call36(FreeDoubleVec)
	jirl	$ra, $ra, 0
	b	.LBB11_4
.LBB11_3:
	pcalau12i	$a1, %got_pc_hi20(fftThreshold)
	ld.d	$a1, $a1, %got_pc_lo12(fftThreshold)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.LCPI11_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI11_0)
	pcalau12i	$a2, %pc_hi20(.LCPI11_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI11_1)
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(alignableReagion.threshold)
	fst.d	$fa0, $a0, %pc_lo12(alignableReagion.threshold)
.LBB11_4:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(alignableReagion.stra)
	st.w	$s6, $s1, %pc_lo12(alignableReagion.alloclen)
.LBB11_5:
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	or	$a0, $s0, $fp
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	blez	$s5, .LBB11_11
# %bb.6:
	blez	$s4, .LBB11_11
# %bb.7:                                # %.preheader179.us.preheader
	move	$a0, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB11_8:                               # %.preheader179.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fldx.d	$fa0, $a2, $a1
	move	$a1, $s4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_9:                               #   Parent Loop BB11_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a2, 0
	fmadd.d	$fs0, $fa0, $fa1, $fs0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB11_9
# %bb.10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB11_8 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB11_8
.LBB11_11:                              # %.preheader178
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB11_30
# %bb.12:                               # %.preheader177.lr.ph
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(alignableReagion.stra)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(alignableReagion.prf1)
	addi.d	$s6, $a0, %pc_lo12(alignableReagion.prf1)
	pcalau12i	$a0, %pc_hi20(alignableReagion.prf2)
	addi.d	$s7, $a0, %pc_lo12(alignableReagion.prf2)
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$s8, $a0, %got_pc_lo12(amino_n)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(alignableReagion.hat1)
	addi.d	$fp, $a0, %pc_lo12(alignableReagion.hat1)
	pcalau12i	$a0, %pc_hi20(alignableReagion.hat2)
	addi.d	$s0, $a0, %pc_lo12(alignableReagion.hat2)
	move	$s3, $zero
	addi.w	$s1, $zero, -8
	ori	$s2, $zero, 104
	b	.LBB11_14
	.p2align	4, , 16
.LBB11_13:                              # %._crit_edge200
                                        #   in Loop: Header=BB11_14 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 3
	fdiv.d	$fa0, $fa0, $fs0
	addi.d	$s3, $s3, 1
	fst.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB11_30
.LBB11_14:                              # %.preheader177
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
                                        #     Child Loop BB11_17 Depth 2
                                        #     Child Loop BB11_20 Depth 2
                                        #     Child Loop BB11_27 Depth 2
                                        #       Child Loop BB11_28 Depth 3
	ori	$a2, $zero, 208
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 208
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	blez	$s5, .LBB11_16
	.p2align	4, , 16
.LBB11_15:                              # %.lr.ph
                                        #   Parent Loop BB11_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ldx.b	$a3, $a3, $s3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s8, $a3
	fld.d	$fa0, $a1, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $s6, $a3
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s6, $a3
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB11_15
.LBB11_16:                              # %.preheader175
                                        #   in Loop: Header=BB11_14 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	blez	$s4, .LBB11_18
	.p2align	4, , 16
.LBB11_17:                              # %.lr.ph188
                                        #   Parent Loop BB11_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ldx.b	$a3, $a3, $s3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s8, $a3
	fld.d	$fa0, $a1, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $s7, $a3
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s7, $a3
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB11_17
.LBB11_18:                              # %.preheader174.preheader
                                        #   in Loop: Header=BB11_14 Depth=1
	ori	$a2, $zero, 26
	ori	$a0, $zero, 200
	ori	$a1, $zero, 25
	ori	$a3, $zero, 26
	b	.LBB11_20
	.p2align	4, , 16
.LBB11_19:                              #   in Loop: Header=BB11_20 Depth=2
	addi.d	$a0, $a0, -8
	addi.w	$a1, $a1, -1
	beq	$a0, $s1, .LBB11_24
.LBB11_20:                              # %.preheader174
                                        #   Parent Loop BB11_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $s6, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB11_22
# %bb.21:                               #   in Loop: Header=BB11_20 Depth=2
	slli.d	$a3, $a3, 2
	stx.w	$a1, $fp, $a3
	move	$a3, $a1
.LBB11_22:                              #   in Loop: Header=BB11_20 Depth=2
	fldx.d	$fa0, $s7, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB11_19
# %bb.23:                               #   in Loop: Header=BB11_20 Depth=2
	slli.d	$a2, $a2, 2
	stx.w	$a1, $s0, $a2
	move	$a2, $a1
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_24:                              #   in Loop: Header=BB11_14 Depth=1
	addi.w	$a0, $zero, -1
	slli.d	$a1, $a3, 2
	move	$a3, $a0
	lu32i.d	$a3, 0
	stx.w	$a3, $fp, $a1
	ld.w	$a1, $fp, 104
	slli.d	$a2, $a2, 2
	stx.w	$a3, $s0, $a2
	fmov.d	$fa0, $fs1
	beq	$a1, $a0, .LBB11_13
# %bb.25:                               # %.preheader173.lr.ph
                                        #   in Loop: Header=BB11_14 Depth=1
	ld.w	$a2, $s0, 104
	fmov.d	$fa0, $fs1
	beq	$a2, $a0, .LBB11_13
# %bb.26:                               # %.preheader173.preheader
                                        #   in Loop: Header=BB11_14 Depth=1
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB11_27:                              # %.preheader173
                                        #   Parent Loop BB11_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_28 Depth 3
	mul.d	$a3, $a1, $s2
	pcalau12i	$a4, %got_pc_hi20(n_disFFT)
	ld.d	$a4, $a4, %got_pc_lo12(n_disFFT)
	slli.d	$a5, $a1, 3
	fldx.d	$fa1, $s6, $a5
	add.d	$a3, $a4, $a3
	move	$a4, $a2
	.p2align	4, , 16
.LBB11_28:                              #   Parent Loop BB11_14 Depth=1
                                        #     Parent Loop BB11_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a5, $a4, 2
	ldx.w	$a6, $a3, $a5
	slli.d	$a4, $a4, 3
	fldx.d	$fa2, $s7, $a4
	ldx.w	$a4, $s0, $a5
	movgr2fr.w	$fa3, $a6
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	bne	$a4, $a0, .LBB11_28
# %bb.29:                               # %._crit_edge
                                        #   in Loop: Header=BB11_27 Depth=2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	bne	$a1, $a0, .LBB11_27
	b	.LBB11_13
.LBB11_30:                              # %._crit_edge204
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $s7, 0
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	st.w	$zero, $s6, 24
	st.w	$zero, $s6, 76
	blez	$a0, .LBB11_48
# %bb.31:                               # %.lr.ph208
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $s8, %pc_lo12(alignableReagion.stra)
	movgr2fr.d	$fs0, $zero
	move	$a2, $a0
	.p2align	4, , 16
.LBB11_32:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB11_32
# %bb.33:                               # %.preheader
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB11_49
.LBB11_34:                              # %.lr.ph217.preheader
	move	$fp, $zero
	move	$a3, $zero
	move	$s0, $zero
	move	$a2, $zero
	move	$a4, $zero
	ld.d	$a1, $s8, %pc_lo12(alignableReagion.stra)
	pcalau12i	$s2, %pc_hi20(alignableReagion.threshold)
	fld.d	$fa0, $s2, %pc_lo12(alignableReagion.threshold)
	movgr2fr.d	$fs1, $zero
	ori	$s1, $zero, 1
	ori	$s3, $zero, 150
	lu12i.w	$a5, 24
	ori	$s4, $a5, 1694
	ori	$s5, $zero, 1
	fmov.d	$fa1, $fs1
	b	.LBB11_37
	.p2align	4, , 16
.LBB11_35:                              #   in Loop: Header=BB11_37 Depth=1
	move	$a4, $zero
	move	$a3, $zero
	move	$a2, $s1
	fmov.d	$fa1, $fs1
.LBB11_36:                              #   in Loop: Header=BB11_37 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a5, $a5, $a0
	addi.w	$s1, $s1, 1
	addi.d	$fp, $fp, 8
	bge	$s5, $a5, .LBB11_45
.LBB11_37:                              # %.lr.ph217
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $a1, $fp
	add.w	$a5, $a0, $s1
	alsl.d	$a5, $a5, $a1, 3
	fld.d	$fa3, $a5, -8
	fsub.d	$fa2, $fs0, $fa2
	fadd.d	$fs0, $fa2, $fa3
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB11_39
# %bb.38:                               #   in Loop: Header=BB11_37 Depth=1
	sltui	$a5, $a4, 1
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $s1, $a5
	or	$a2, $a4, $a2
	addi.w	$a3, $a3, 1
	masknez	$a3, $a3, $a5
	ori	$a4, $zero, 1
	maskeqz	$a6, $a4, $a5
	movgr2cf	$fcc0, $a5
	fsel	$fa1, $fa1, $fs1, $fcc0
	or	$a3, $a6, $a3
	fadd.d	$fa1, $fa1, $fs0
.LBB11_39:                              #   in Loop: Header=BB11_37 Depth=1
	fcmp.cle.d	$fcc0, $fs0, $fa0
	slt	$a5, $s3, $a3
	movcf2gr	$a6, $fcc0
	or	$a6, $a6, $a5
	beqz	$a6, .LBB11_36
# %bb.40:                               #   in Loop: Header=BB11_37 Depth=1
	beqz	$a4, .LBB11_36
# %bb.41:                               #   in Loop: Header=BB11_37 Depth=1
	bge	$a0, $a3, .LBB11_43
# %bb.42:                               #   in Loop: Header=BB11_37 Depth=1
	st.w	$a2, $s6, 0
	ld.w	$a0, $s7, 0
	st.w	$s1, $s6, 4
	add.d	$a2, $a2, $a0
	add.d	$a2, $s1, $a2
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	st.w	$a2, $s6, 8
	fst.d	$fa1, $s6, 16
	st.w	$a5, $s6, 24
	st.w	$a5, $s6, 76
	addi.w	$s0, $s0, 1
	addi.d	$s6, $s6, 48
.LBB11_43:                              #   in Loop: Header=BB11_37 Depth=1
	blt	$s0, $s4, .LBB11_35
# %bb.44:                               #   in Loop: Header=BB11_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, %pc_lo12(alignableReagion.stra)
	fld.d	$fa0, $s2, %pc_lo12(alignableReagion.threshold)
	ld.w	$a0, $s7, 0
	b	.LBB11_35
.LBB11_45:                              # %._crit_edge218
	beqz	$a4, .LBB11_50
# %bb.46:                               # %._crit_edge218
	bge	$a0, $a3, .LBB11_50
# %bb.47:
	st.w	$a2, $s6, 0
	ld.w	$a0, $s7, 0
	st.w	$s1, $s6, 4
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	st.w	$a0, $s6, 8
	fst.d	$fa1, $s6, 16
	addi.w	$s0, $s0, 1
	b	.LBB11_50
.LBB11_48:
	movgr2fr.d	$fs0, $zero
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	ori	$a2, $zero, 2
	bge	$a1, $a2, .LBB11_34
.LBB11_49:
	move	$s0, $zero
.LBB11_50:                              # %._crit_edge218.thread
	move	$a0, $s0
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end11:
	.size	alignableReagion, .Lfunc_end11-alignableReagion
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function blockAlign
.LCPI12_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	blockAlign
	.p2align	5
	.type	blockAlign,@function
blockAlign:                             # @blockAlign
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
	pcalau12i	$s8, %pc_hi20(blockAlign.crossscore)
	ld.d	$a4, $s8, %pc_lo12(blockAlign.crossscore)
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	lu12i.w	$a0, 24
	pcalau12i	$s7, %pc_hi20(blockAlign.track)
	beqz	$a4, .LBB12_23
# %bb.1:
	ld.w	$s6, $fp, 0
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	blez	$s6, .LBB12_24
.LBB12_2:                               # %.preheader146.lr.ph
	move	$a0, $zero
	ld.d	$a1, $s8, %pc_lo12(blockAlign.crossscore)
	bstrpick.d	$a2, $s6, 30, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	ori	$a4, $zero, 32
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s6, .LBB12_11
.LBB12_4:                               # %.preheader146.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #     Child Loop BB12_10 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $s0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	bltu	$s6, $a3, .LBB12_9
# %bb.5:                                # %.preheader146.us
                                        #   in Loop: Header=BB12_4 Depth=1
	sub.d	$t0, $a6, $a5
	bltu	$t0, $a4, .LBB12_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$a7, $a6, 16
	addi.d	$t0, $a5, 16
	move	$t1, $a2
	.p2align	4, , 16
.LBB12_7:                               # %vector.body
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB12_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a7, $a2
	beq	$a2, $s6, .LBB12_3
.LBB12_9:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	alsl.d	$a5, $a7, $a5, 3
	alsl.d	$a6, $a7, $a6, 3
	sub.d	$a7, $s6, $a7
	.p2align	4, , 16
.LBB12_10:                              # %scalar.ph
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a5, 0
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB12_10
	b	.LBB12_3
.LBB12_11:                              # %.preheader143
	slli.d	$s3, $s6, 2
	pcalau12i	$a0, %pc_hi20(blockAlign.ocut1)
	addi.d	$a0, $a0, %pc_lo12(blockAlign.ocut1)
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(blockAlign.ocut2)
	addi.d	$a0, $a0, %pc_lo12(blockAlign.ocut2)
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	slli.d	$s5, $s6, 3
	pcalau12i	$a0, %pc_hi20(blockAlign.max)
	addi.d	$s3, $a0, %pc_lo12(blockAlign.max)
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(blockAlign.point)
	addi.d	$s4, $a0, %pc_lo12(blockAlign.point)
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 1
	beq	$s6, $t8, .LBB12_26
# %bb.12:                               # %.lr.ph158.split.preheader
	ld.d	$a0, $s8, %pc_lo12(blockAlign.crossscore)
	ld.d	$a1, $s7, %pc_lo12(blockAlign.track)
	ori	$a2, $zero, 1
	lu52i.d	$a3, $zero, 1107
	pcalau12i	$a4, %pc_hi20(.LCPI12_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI12_0)
	lu12i.w	$a4, 275200
	addi.d	$a5, $s3, 8
	addi.d	$a6, $s4, 8
	movgr2fr.d	$fa1, $zero
	pcalau12i	$a7, %got_pc_hi20(penalty)
	ld.d	$a7, $a7, %got_pc_lo12(penalty)
	move	$t8, $s6
	ori	$t0, $zero, 1
	b	.LBB12_14
	.p2align	4, , 16
.LBB12_13:                              # %._crit_edge
                                        #   in Loop: Header=BB12_14 Depth=1
	addi.d	$t0, $t0, 1
	bge	$t0, $t8, .LBB12_25
.LBB12_14:                              # %.lr.ph158.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
	bge	$a2, $t8, .LBB12_13
# %bb.15:                               # %.lr.ph154
                                        #   in Loop: Header=BB12_14 Depth=1
	move	$t2, $zero
	addi.d	$t3, $t0, -1
	slli.d	$t1, $t3, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t4, $t0, 3
	ldx.d	$t5, $a1, $t4
	srli.d	$t6, $t0, 32
	or	$t6, $t6, $a3
	movgr2fr.d	$fa2, $t6
	fsub.d	$fa2, $fa2, $fa0
	move	$t6, $t0
	bstrins.d	$t6, $a4, 63, 32
	movgr2fr.d	$fa3, $t6
	fadd.d	$fa2, $fa3, $fa2
	ldx.d	$t4, $a0, $t4
	srli.d	$t6, $t3, 32
	or	$t6, $t6, $a3
	movgr2fr.d	$fa3, $t6
	fsub.d	$fa3, $fa3, $fa0
	bstrins.d	$t3, $a4, 63, 32
	movgr2fr.d	$fa4, $t3
	fadd.d	$fa3, $fa4, $fa3
	addi.d	$t3, $t4, 8
	addi.d	$t4, $t5, 4
	ori	$t5, $zero, 1
	move	$t6, $a6
	move	$t7, $a5
	fmov.d	$fa4, $fa1
	fmov.d	$fa5, $fa1
	b	.LBB12_17
	.p2align	4, , 16
.LBB12_16:                              #   in Loop: Header=BB12_17 Depth=2
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	fcmp.clt.d	$fcc0, $fa4, $fa7
	fsel	$fa5, $fa5, $fa6, $fcc0
	fsel	$fa4, $fa4, $fa7, $fcc0
	addi.d	$t5, $t5, 1
	ld.w	$t8, $fp, 0
	addi.d	$t1, $t1, 8
	addi.w	$t2, $s3, 0
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 4
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	bge	$t5, $t8, .LBB12_13
.LBB12_17:                              #   Parent Loop BB12_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $t4, 0
	ld.w	$t8, $a7, 0
	fld.d	$fa6, $t7, 0
	fld.d	$fa7, $t1, 0
	movgr2fr.w	$ft0, $t8
	ffint.d.w	$ft1, $ft0
	fadd.d	$ft0, $fa6, $ft1
	fcmp.cule.d	$fcc0, $ft0, $fa7
	bcnez	$fcc0, .LBB12_19
# %bb.18:                               #   in Loop: Header=BB12_17 Depth=2
	fld.d	$fa7, $t6, 0
	fsub.d	$fa7, $fa7, $fa2
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$t8, $fa7
	st.w	$t8, $t4, 0
	ld.w	$t8, $a7, 0
	movgr2fr.w	$fa7, $t8
	ffint.d.w	$ft1, $fa7
	fmov.d	$fa7, $ft0
.LBB12_19:                              #   in Loop: Header=BB12_17 Depth=2
	fadd.d	$ft0, $fa4, $ft1
	fcmp.cule.d	$fcc0, $ft0, $fa7
	addi.d	$s3, $t2, 1
	bcnez	$fcc0, .LBB12_21
# %bb.20:                               #   in Loop: Header=BB12_17 Depth=2
	bstrpick.d	$t8, $s3, 31, 0
	movgr2fr.d	$fa7, $t8
	ffint.d.l	$fa7, $fa7
	fsub.d	$fa7, $fa7, $fa5
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$t8, $fa7
	st.w	$t8, $t4, 0
	fmov.d	$fa7, $ft0
.LBB12_21:                              #   in Loop: Header=BB12_17 Depth=2
	fld.d	$ft0, $t3, 0
	fadd.d	$fa7, $fa7, $ft0
	fst.d	$fa7, $t3, 0
	fld.d	$fa7, $t1, 0
	fcmp.cule.d	$fcc0, $fa7, $fa6
	bcnez	$fcc0, .LBB12_16
# %bb.22:                               #   in Loop: Header=BB12_17 Depth=2
	fst.d	$fa7, $t7, 0
	fst.d	$fa3, $t6, 0
	b	.LBB12_16
.LBB12_23:
	ori	$s3, $a0, 1696
	move	$a0, $s3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(blockAlign.crossscore)
	move	$a0, $s3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(blockAlign.track)
	ld.w	$s6, $fp, 0
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	bgtz	$s6, .LBB12_2
.LBB12_24:
	move	$t8, $s6
	b	.LBB12_31
.LBB12_25:                              # %.preheader142
	blez	$t8, .LBB12_31
.LBB12_26:                              # %.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s4, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s3, $a0, %pc_lo12(.L.str.8)
	move	$s5, $zero
	b	.LBB12_28
	.p2align	4, , 16
.LBB12_27:                              # %._crit_edge167
                                        #   in Loop: Header=BB12_28 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$t8, $fp, 0
	addi.d	$s5, $s5, 1
	bge	$s5, $t8, .LBB12_31
.LBB12_28:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_30 Depth 2
	blez	$t8, .LBB12_27
# %bb.29:                               # %.lr.ph166.preheader
                                        #   in Loop: Header=BB12_28 Depth=1
	move	$s6, $zero
	move	$s8, $zero
	slli.d	$s1, $s5, 3
.LBB12_30:                              # %.lr.ph166
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, %pc_lo12(blockAlign.track)
	ldx.d	$a1, $a0, $s1
	ld.d	$a0, $s4, 0
	ldx.w	$a2, $a1, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 4
	blt	$s8, $a0, .LBB12_30
	b	.LBB12_27
.LBB12_31:                              # %._crit_edge169
	addi.d	$a2, $t8, -1
	pcalau12i	$a0, %pc_hi20(blockAlign.result1)
	addi.d	$a0, $a0, %pc_lo12(blockAlign.result1)
	lu12i.w	$a3, 97
	ori	$a4, $a3, 2684
	stx.w	$a2, $a0, $a4
	pcalau12i	$a1, %pc_hi20(blockAlign.result2)
	addi.d	$a1, $a1, %pc_lo12(blockAlign.result2)
	stx.w	$a2, $a1, $a4
	ori	$a2, $a3, 2680
	add.d	$a3, $a1, $a2
	ld.d	$a4, $s7, %pc_lo12(blockAlign.track)
	add.d	$a5, $a0, $a2
	lu12i.w	$t4, 24
	ori	$a2, $t4, 1695
	ori	$a6, $zero, 1
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB12_35
	.p2align	4, , 16
.LBB12_32:                              #   in Loop: Header=BB12_35 Depth=1
	addi.d	$t0, $t0, -1
.LBB12_33:                              #   in Loop: Header=BB12_35 Depth=1
	st.w	$t0, $a5, 0
	addi.d	$a7, $a7, -1
.LBB12_34:                              #   in Loop: Header=BB12_35 Depth=1
	st.w	$a7, $a3, 0
	addi.w	$a2, $a2, -1
	addi.w	$a7, $a2, 1
	addi.d	$a3, $a3, -4
	addi.d	$a5, $a5, -4
	bgeu	$a6, $a7, .LBB12_44
.LBB12_35:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a7, $a2, 2
	ldx.w	$t0, $a0, $a7
	beqz	$t0, .LBB12_41
# %bb.36:                               #   in Loop: Header=BB12_35 Depth=1
	ldx.w	$a7, $a1, $a7
	beqz	$a7, .LBB12_41
# %bb.37:                               #   in Loop: Header=BB12_35 Depth=1
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a4, $t1
	slli.d	$t2, $a7, 2
	ldx.w	$t1, $t1, $t2
	beqz	$t1, .LBB12_32
# %bb.38:                               #   in Loop: Header=BB12_35 Depth=1
	blez	$t1, .LBB12_40
# %bb.39:                               #   in Loop: Header=BB12_35 Depth=1
	addi.d	$t0, $t0, -1
	st.w	$t0, $a5, 0
	sub.d	$a7, $a7, $t1
	b	.LBB12_34
	.p2align	4, , 16
.LBB12_40:                              #   in Loop: Header=BB12_35 Depth=1
	add.d	$t0, $t1, $t0
	b	.LBB12_33
.LBB12_41:
	ori	$a3, $t4, 1695
	bge	$a3, $a2, .LBB12_45
# %bb.42:
	move	$a4, $zero
.LBB12_43:                              # %._crit_edge176
	st.w	$a4, $fp, 0
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
.LBB12_44:
	move	$a2, $zero
.LBB12_45:                              # %.lr.ph175.preheader
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a1, $a2, $a1, 2
	lu12i.w	$a3, -25
	ori	$a3, $a3, 2400
	add.d	$a2, $a2, $a3
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a3, %pc_hi20(blockAlign.ocut1)
	addi.d	$a3, $a3, %pc_lo12(blockAlign.ocut1)
	pcalau12i	$a4, %pc_hi20(blockAlign.ocut2)
	addi.d	$a5, $a4, %pc_lo12(blockAlign.ocut2)
	move	$a4, $zero
	b	.LBB12_48
	.p2align	4, , 16
.LBB12_46:                              #   in Loop: Header=BB12_48 Depth=1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	slli.d	$t0, $a4, 2
	stx.w	$a7, $s2, $t0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a5, $a6
	stx.w	$a6, $t3, $t0
	addi.w	$a4, $a4, 1
.LBB12_47:                              #   in Loop: Header=BB12_48 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB12_43
.LBB12_48:                              # %.lr.ph175
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	slli.d	$t0, $a7, 3
	ld.w	$a6, $a1, 0
	ldx.d	$t0, $s0, $t0
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $t0, $t1
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_47
# %bb.49:                               #   in Loop: Header=BB12_48 Depth=1
	ld.w	$t0, $a0, -4
	ld.w	$t2, $a1, -4
	move	$t1, $t2
	beq	$a7, $t0, .LBB12_51
# %bb.50:                               #   in Loop: Header=BB12_48 Depth=1
	move	$t1, $a6
	bne	$a6, $t2, .LBB12_46
.LBB12_51:                              #   in Loop: Header=BB12_48 Depth=1
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $s0, $t0
	slli.d	$t1, $t1, 3
	fldx.d	$fa2, $t0, $t1
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB12_46
# %bb.52:                               #   in Loop: Header=BB12_48 Depth=1
	addi.w	$a4, $a4, -1
	b	.LBB12_46
.Lfunc_end12:
	.size	blockAlign, .Lfunc_end12-blockAlign
                                        # -- End function
	.globl	blockAlign2                     # -- Begin function blockAlign2
	.p2align	5
	.type	blockAlign2,@function
blockAlign2:                            # @blockAlign2
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	ld.w	$s4, $a5, 0
	pcalau12i	$s3, %pc_hi20(blockAlign2.crossscoresize)
	ld.w	$a3, $s3, %pc_lo12(blockAlign2.crossscoresize)
	move	$s0, $a4
	move	$s1, $a1
	move	$s2, $a0
	addi.w	$a2, $s4, 2
	pcalau12i	$s6, %pc_hi20(blockAlign2.track)
	pcalau12i	$s5, %pc_hi20(blockAlign2.crossscore)
	bge	$a3, $a2, .LBB13_7
# %bb.1:
	st.w	$a2, $s3, %pc_lo12(blockAlign2.crossscoresize)
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB13_60
# %bb.2:
	ld.d	$a0, $s6, %pc_lo12(blockAlign2.track)
	beqz	$a0, .LBB13_4
.LBB13_3:
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
.LBB13_4:
	ld.d	$a0, $s5, %pc_lo12(blockAlign2.crossscore)
	beqz	$a0, .LBB13_6
# %bb.5:
	pcaddu18i	$ra, %call36(FreeDoubleMtx)
	jirl	$ra, $ra, 0
.LBB13_6:
	ld.w	$a0, $s3, %pc_lo12(blockAlign2.crossscoresize)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(blockAlign2.crossscoresize)
	st.d	$a0, $s6, %pc_lo12(blockAlign2.track)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $fp, 0
	st.d	$a0, $s5, %pc_lo12(blockAlign2.crossscore)
.LBB13_7:
	blez	$s4, .LBB13_19
# %bb.8:                                # %.preheader162.lr.ph
	move	$a0, $zero
	ld.d	$a1, $s5, %pc_lo12(blockAlign2.crossscore)
	bstrpick.d	$a2, $s4, 30, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	ori	$a4, $zero, 32
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_9:                               # %._crit_edge.us
                                        #   in Loop: Header=BB13_10 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s4, .LBB13_17
.LBB13_10:                              # %.preheader162.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_13 Depth 2
                                        #     Child Loop BB13_16 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $s0, $a6
	ldx.d	$a6, $a1, $a6
	move	$a7, $zero
	bltu	$s4, $a3, .LBB13_15
# %bb.11:                               # %.preheader162.us
                                        #   in Loop: Header=BB13_10 Depth=1
	sub.d	$t0, $a6, $a5
	bltu	$t0, $a4, .LBB13_15
# %bb.12:                               # %vector.body.preheader
                                        #   in Loop: Header=BB13_10 Depth=1
	addi.d	$a7, $a6, 16
	addi.d	$t0, $a5, 16
	move	$t1, $a2
	.p2align	4, , 16
.LBB13_13:                              # %vector.body
                                        #   Parent Loop BB13_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB13_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB13_10 Depth=1
	move	$a7, $a2
	beq	$a2, $s4, .LBB13_9
.LBB13_15:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_10 Depth=1
	alsl.d	$a5, $a7, $a5, 3
	alsl.d	$a6, $a7, $a6, 3
	sub.d	$a7, $s4, $a7
	.p2align	4, , 16
.LBB13_16:                              # %scalar.ph
                                        #   Parent Loop BB13_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a5, 0
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB13_16
	b	.LBB13_9
.LBB13_17:                              # %.preheader160
	slli.d	$s3, $s4, 2
	pcalau12i	$a0, %pc_hi20(blockAlign2.ocut1)
	addi.d	$a0, $a0, %pc_lo12(blockAlign2.ocut1)
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(blockAlign2.ocut2)
	addi.d	$a0, $a0, %pc_lo12(blockAlign2.ocut2)
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(blockAlign2.track)
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB13_42
# %bb.18:
	ori	$s4, $zero, 1
	b	.LBB13_20
.LBB13_19:                              # %.preheader160.thread
	ld.d	$a0, $s6, %pc_lo12(blockAlign2.track)
.LBB13_20:                              # %._crit_edge208
	addi.d	$a3, $s4, -1
	pcalau12i	$a1, %pc_hi20(blockAlign2.result1)
	addi.d	$a1, $a1, %pc_lo12(blockAlign2.result1)
	lu12i.w	$a4, 97
	ori	$a5, $a4, 2684
	stx.w	$a3, $a1, $a5
	pcalau12i	$a2, %pc_hi20(blockAlign2.result2)
	addi.d	$a2, $a2, %pc_lo12(blockAlign2.result2)
	stx.w	$a3, $a2, $a5
	ori	$a3, $a4, 2680
	add.d	$a4, $a2, $a3
	add.d	$a6, $a1, $a3
	lu12i.w	$a5, 24
	ori	$a3, $a5, 1695
	ori	$a7, $zero, 1
	b	.LBB13_24
	.p2align	4, , 16
.LBB13_21:                              #   in Loop: Header=BB13_24 Depth=1
	addi.d	$t1, $t1, -1
.LBB13_22:                              #   in Loop: Header=BB13_24 Depth=1
	st.w	$t1, $a6, 0
	addi.d	$t0, $t0, -1
.LBB13_23:                              #   in Loop: Header=BB13_24 Depth=1
	st.w	$t0, $a4, 0
	addi.w	$a3, $a3, -1
	addi.w	$t0, $a3, 1
	addi.d	$a4, $a4, -4
	addi.d	$a6, $a6, -4
	bgeu	$a7, $t0, .LBB13_33
.LBB13_24:                              # =>This Inner Loop Header: Depth=1
	slli.d	$t0, $a3, 2
	ldx.w	$t1, $a1, $t0
	beqz	$t1, .LBB13_30
# %bb.25:                               #   in Loop: Header=BB13_24 Depth=1
	ldx.w	$t0, $a2, $t0
	beqz	$t0, .LBB13_30
# %bb.26:                               #   in Loop: Header=BB13_24 Depth=1
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t2, $t2, $t3
	beqz	$t2, .LBB13_21
# %bb.27:                               #   in Loop: Header=BB13_24 Depth=1
	blez	$t2, .LBB13_29
# %bb.28:                               #   in Loop: Header=BB13_24 Depth=1
	addi.d	$t1, $t1, -1
	st.w	$t1, $a6, 0
	sub.d	$t0, $t0, $t2
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_29:                              #   in Loop: Header=BB13_24 Depth=1
	add.d	$t1, $t2, $t1
	b	.LBB13_22
.LBB13_30:
	ori	$a0, $a5, 1695
	bge	$a0, $a3, .LBB13_34
# %bb.31:
	move	$a4, $zero
.LBB13_32:                              # %._crit_edge216
	st.w	$a4, $fp, 0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB13_33:
	move	$a3, $zero
.LBB13_34:                              # %.lr.ph215.preheader
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a0, $a3, $a1, 2
	alsl.d	$a1, $a3, $a2, 2
	lu12i.w	$a2, -25
	ori	$a2, $a2, 2400
	add.d	$a2, $a3, $a2
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a3, %pc_hi20(blockAlign2.ocut1)
	addi.d	$a3, $a3, %pc_lo12(blockAlign2.ocut1)
	pcalau12i	$a4, %pc_hi20(blockAlign2.ocut2)
	addi.d	$a5, $a4, %pc_lo12(blockAlign2.ocut2)
	move	$a4, $zero
	b	.LBB13_37
	.p2align	4, , 16
.LBB13_35:                              #   in Loop: Header=BB13_37 Depth=1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	slli.d	$t0, $a4, 2
	stx.w	$a7, $s2, $t0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a5, $a6
	stx.w	$a6, $s1, $t0
	addi.w	$a4, $a4, 1
.LBB13_36:                              #   in Loop: Header=BB13_37 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB13_32
.LBB13_37:                              # %.lr.ph215
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	slli.d	$t0, $a7, 3
	ld.w	$a6, $a1, 0
	ldx.d	$t0, $s0, $t0
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $t0, $t1
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB13_36
# %bb.38:                               #   in Loop: Header=BB13_37 Depth=1
	ld.w	$t0, $a0, -4
	ld.w	$t2, $a1, -4
	move	$t1, $t2
	beq	$a7, $t0, .LBB13_40
# %bb.39:                               #   in Loop: Header=BB13_37 Depth=1
	move	$t1, $a6
	bne	$a6, $t2, .LBB13_35
.LBB13_40:                              #   in Loop: Header=BB13_37 Depth=1
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $s0, $t0
	slli.d	$t1, $t1, 3
	fldx.d	$fa2, $t0, $t1
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB13_35
# %bb.41:                               #   in Loop: Header=BB13_37 Depth=1
	addi.w	$a4, $a4, -1
	b	.LBB13_35
.LBB13_42:                              # %.preheader.preheader
	ld.d	$a1, $s5, %pc_lo12(blockAlign2.crossscore)
	pcalau12i	$a2, %pc_hi20(blockAlign2.maxj)
	fld.d	$fa1, $a2, %pc_lo12(blockAlign2.maxj)
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 1
	movgr2fr.d	$fa0, $zero
	ori	$a5, $zero, 3
	ori	$a6, $zero, 1
	move	$a7, $a3
	b	.LBB13_45
	.p2align	4, , 16
.LBB13_43:                              # %._crit_edge193
                                        #   in Loop: Header=BB13_45 Depth=1
	fst.d	$fa1, $a2, %pc_lo12(blockAlign2.maxj)
.LBB13_44:                              #   in Loop: Header=BB13_45 Depth=1
	addi.d	$a6, $a6, 1
	addi.w	$a7, $a7, 1
	bge	$a6, $s4, .LBB13_20
.LBB13_45:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_49 Depth 2
                                        #       Child Loop BB13_54 Depth 3
                                        #       Child Loop BB13_59 Depth 3
	bge	$a4, $s4, .LBB13_44
# %bb.46:                               # %.lr.ph192
                                        #   in Loop: Header=BB13_45 Depth=1
	alsl.d	$t0, $a6, $a1, 3
	slli.d	$t2, $a6, 3
	ld.d	$t0, $t0, -8
	ldx.d	$t1, $a0, $t2
	ldx.d	$t2, $a1, $t2
	bstrpick.d	$t3, $a7, 31, 0
	ori	$t4, $zero, 1
	move	$t5, $a3
	b	.LBB13_49
	.p2align	4, , 16
.LBB13_47:                              #   in Loop: Header=BB13_49 Depth=2
	move	$t7, $zero
	fmov.d	$fa1, $fa0
.LBB13_48:                              # %._crit_edge172
                                        #   in Loop: Header=BB13_49 Depth=2
	pcalau12i	$t8, %got_pc_hi20(penalty)
	ld.d	$t8, $t8, %got_pc_lo12(penalty)
	ld.w	$t8, $t8, 0
	movgr2fr.w	$fa3, $t8
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	alsl.d	$t8, $t4, $t0, 3
	fld.d	$fa4, $t8, -8
	fadd.d	$fa1, $fa1, $fa3
	slli.d	$t8, $t4, 3
	slli.d	$s3, $t4, 2
	fcmp.clt.d	$fcc0, $fa4, $fa2
	fsel	$fa2, $fa4, $fa2, $fcc0
	fcmp.clt.d	$fcc1, $fa2, $fa1
	fsel	$fa2, $fa2, $fa1, $fcc1
	sub.d	$t7, $t7, $a6
	sub.d	$t6, $t4, $t6
	movcf2gr	$s4, $fcc0
	maskeqz	$t6, $t6, $s4
	movcf2gr	$s4, $fcc1
	masknez	$t6, $t6, $s4
	maskeqz	$t7, $t7, $s4
	fldx.d	$fa3, $t2, $t8
	or	$t6, $t7, $t6
	stx.w	$t6, $t1, $s3
	ld.w	$s4, $fp, 0
	fadd.d	$fa2, $fa2, $fa3
	fstx.d	$fa2, $t2, $t8
	addi.d	$t4, $t4, 1
	addi.w	$t5, $t5, 1
	bge	$t4, $s4, .LBB13_43
.LBB13_49:                              #   Parent Loop BB13_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_54 Depth 3
                                        #       Child Loop BB13_59 Depth 3
	addi.w	$t7, $s4, -1
	bltu	$t4, $a5, .LBB13_52
# %bb.50:                               # %.lr.ph168
                                        #   in Loop: Header=BB13_49 Depth=2
	bge	$t4, $t7, .LBB13_53
# %bb.51:                               #   in Loop: Header=BB13_49 Depth=2
	fld.d	$fa2, $t0, 0
	move	$t6, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa2, $fa0, $fa2, $fcc0
	b	.LBB13_55
	.p2align	4, , 16
.LBB13_52:                              #   in Loop: Header=BB13_49 Depth=2
	move	$t6, $zero
	fmov.d	$fa2, $fa0
	b	.LBB13_55
	.p2align	4, , 16
.LBB13_53:                              # %.lr.ph168.split.preheader
                                        #   in Loop: Header=BB13_49 Depth=2
	move	$t8, $zero
	move	$t6, $zero
	bstrpick.d	$s3, $t5, 31, 0
	move	$s4, $t0
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB13_54:                              # %.lr.ph168.split
                                        #   Parent Loop BB13_45 Depth=1
                                        #     Parent Loop BB13_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $s4, 0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	movcf2gr	$s5, $fcc0
	masknez	$t6, $t6, $s5
	maskeqz	$s5, $t8, $s5
	or	$t6, $s5, $t6
	addi.d	$t8, $t8, 1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 8
	bnez	$s3, .LBB13_54
.LBB13_55:                              # %._crit_edge
                                        #   in Loop: Header=BB13_49 Depth=2
	bltu	$a6, $a5, .LBB13_47
# %bb.56:                               # %.lr.ph171
                                        #   in Loop: Header=BB13_49 Depth=2
	bge	$a6, $t7, .LBB13_58
# %bb.57:                               #   in Loop: Header=BB13_49 Depth=2
	ld.d	$t7, $a1, 0
	alsl.d	$t7, $t4, $t7, 3
	fld.d	$fa1, $t7, -8
	move	$t7, $zero
	fmax.d	$fa1, $fa1, $fa0
	b	.LBB13_48
	.p2align	4, , 16
.LBB13_58:                              # %.lr.ph171.split.preheader
                                        #   in Loop: Header=BB13_49 Depth=2
	move	$t8, $zero
	move	$t7, $zero
	move	$s3, $t3
	move	$s4, $a1
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB13_59:                              # %.lr.ph171.split
                                        #   Parent Loop BB13_45 Depth=1
                                        #     Parent Loop BB13_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s4, 0
	alsl.d	$s5, $t4, $s5, 3
	fld.d	$fa3, $s5, -8
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	movcf2gr	$s5, $fcc0
	masknez	$t7, $t7, $s5
	maskeqz	$s5, $t8, $s5
	or	$t7, $s5, $t7
	addi.d	$t8, $t8, 1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 8
	bnez	$s3, .LBB13_59
	b	.LBB13_48
.LBB13_60:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(blockAlign2.track)
	bnez	$a0, .LBB13_3
	b	.LBB13_4
.Lfunc_end13:
	.size	blockAlign2, .Lfunc_end13-blockAlign2
                                        # -- End function
	.globl	blockAlign3                     # -- Begin function blockAlign3
	.p2align	5
	.type	blockAlign3,@function
blockAlign3:                            # @blockAlign3
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
	move	$fp, $a5
	ld.w	$a3, $a5, 0
	move	$s0, $a4
	move	$s1, $a1
	move	$s4, $a0
	pcalau12i	$s2, %pc_hi20(blockAlign3.crossscoresize)
	ld.w	$a0, $s2, %pc_lo12(blockAlign3.crossscoresize)
	addi.w	$a2, $a3, 2
	pcalau12i	$a1, %pc_hi20(blockAlign3.track)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(blockAlign3.crossscore)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(blockAlign3.jumppos)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(blockAlign3.jumpscore)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bge	$a0, $a2, .LBB14_11
# %bb.1:
	st.w	$a2, $s2, %pc_lo12(blockAlign3.crossscoresize)
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB14_56
# %bb.2:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blockAlign3.track)
	beqz	$a0, .LBB14_4
.LBB14_3:
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
.LBB14_4:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blockAlign3.crossscore)
	beqz	$a0, .LBB14_6
# %bb.5:
	pcaddu18i	$ra, %call36(FreeDoubleMtx)
	jirl	$ra, $ra, 0
.LBB14_6:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blockAlign3.jumppos)
	beqz	$a0, .LBB14_8
# %bb.7:
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
.LBB14_8:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blockAlign3.jumpscore)
	beqz	$a0, .LBB14_10
# %bb.9:
	pcaddu18i	$ra, %call36(FreeDoubleVec)
	jirl	$ra, $ra, 0
.LBB14_10:
	ld.w	$a0, $s2, %pc_lo12(blockAlign3.crossscoresize)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(blockAlign3.crossscoresize)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(blockAlign3.track)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(blockAlign3.crossscoresize)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(blockAlign3.crossscore)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(blockAlign3.crossscoresize)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(blockAlign3.jumppos)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(blockAlign3.jumpscore)
.LBB14_11:
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	blez	$a3, .LBB14_34
# %bb.12:                               # %.preheader154.lr.ph
	move	$a0, $zero
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(blockAlign3.crossscore)
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 32
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_13:                              # %._crit_edge.us
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a3, .LBB14_21
.LBB14_14:                              # %.preheader154.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_17 Depth 2
                                        #     Child Loop BB14_20 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$a6, $s0, $a7
	ldx.d	$a7, $a1, $a7
	move	$t0, $zero
	bltu	$a3, $a4, .LBB14_19
# %bb.15:                               # %.preheader154.us
                                        #   in Loop: Header=BB14_14 Depth=1
	sub.d	$t1, $a7, $a6
	bltu	$t1, $a5, .LBB14_19
# %bb.16:                               # %vector.body.preheader
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$t0, $a7, 16
	addi.d	$t1, $a6, 16
	move	$t2, $a2
	.p2align	4, , 16
.LBB14_17:                              # %vector.body
                                        #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB14_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB14_14 Depth=1
	move	$t0, $a2
	beq	$a2, $a3, .LBB14_13
.LBB14_19:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB14_14 Depth=1
	alsl.d	$a6, $t0, $a6, 3
	alsl.d	$a7, $t0, $a7, 3
	sub.d	$t0, $a3, $t0
	.p2align	4, , 16
.LBB14_20:                              # %scalar.ph
                                        #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, 0
	fst.d	$fa0, $a7, 0
	addi.d	$a6, $a6, 8
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB14_20
	b	.LBB14_13
.LBB14_21:                              # %.lr.ph160
	slli.d	$s3, $a3, 2
	pcalau12i	$a0, %pc_hi20(blockAlign3.ocut1)
	addi.d	$a0, $a0, %pc_lo12(blockAlign3.ocut1)
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(blockAlign3.ocut2)
	addi.d	$a0, $a0, %pc_lo12(blockAlign3.ocut2)
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(blockAlign3.jumpscore)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(blockAlign3.jumppos)
	lu12i.w	$a3, -50332
	ori	$a3, $a3, 1442
	lu32i.d	$a3, -49155
	lu52i.d	$s2, $a3, -1016
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB14_22:                              # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a2, 0
	ld.w	$a3, $fp, 0
	st.d	$s2, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 8
	blt	$a0, $a3, .LBB14_22
# %bb.23:                               # %.preheader
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB14_34
# %bb.24:                               # %.lr.ph164.split.preheader
	ori	$a1, $zero, 1
	pcalau12i	$s8, %pc_hi20(blockAlign3.jumpscorei)
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s3, $a0, %pc_lo12(.L.str.11)
	ori	$s4, $zero, 1
	b	.LBB14_26
	.p2align	4, , 16
.LBB14_25:                              # %._crit_edge
                                        #   in Loop: Header=BB14_26 Depth=1
	addi.d	$s4, $s4, 1
	bge	$s4, $a3, .LBB14_34
.LBB14_26:                              # %.lr.ph164.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_28 Depth 2
	st.d	$s2, $s8, %pc_lo12(blockAlign3.jumpscorei)
	bge	$a1, $a3, .LBB14_25
# %bb.27:                               # %.lr.ph162
                                        #   in Loop: Header=BB14_26 Depth=1
	move	$s7, $zero
	ori	$s5, $zero, 1
	ori	$s1, $zero, 4
	slli.d	$fp, $s4, 3
	ori	$s0, $zero, 1
.LBB14_28:                              #   Parent Loop BB14_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blockAlign3.crossscore)
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a1, $a1, -8
	ldx.d	$a0, $a0, $fp
	fldx.d	$fa0, $a1, $s7
	add.d	$a2, $a0, $s7
	fld.d	$fa1, $a2, 8
	add.d	$a1, $a1, $s7
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(blockAlign3.track)
	fld.d	$fa2, $s8, %pc_lo12(blockAlign3.jumpscorei)
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 8
	fld.d	$fa0, $a1, 8
	ldx.d	$a2, $a3, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(blockAlign3.jumpscore)
	fcmp.cule.d	$fcc0, $fa0, $fa2
	stx.w	$zero, $a2, $s1
	bcnez	$fcc0, .LBB14_30
# %bb.29:                               #   in Loop: Header=BB14_28 Depth=2
	fst.d	$fa0, $s8, %pc_lo12(blockAlign3.jumpscorei)
.LBB14_30:                              #   in Loop: Header=BB14_28 Depth=2
	add.d	$a1, $a1, $s7
	fld.d	$fa1, $a1, 8
	fldx.d	$fa0, $a0, $s7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_32
# %bb.31:                               #   in Loop: Header=BB14_28 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blockAlign3.jumppos)
	fst.d	$fa0, $a1, 8
	stx.w	$s4, $a0, $s1
.LBB14_32:                              #   in Loop: Header=BB14_28 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	addi.d	$s0, $s0, 1
	addi.w	$s5, $s5, 1
	addi.d	$s7, $s7, 8
	addi.d	$s1, $s1, 4
	blt	$s0, $a3, .LBB14_28
# %bb.33:                               #   in Loop: Header=BB14_26 Depth=1
	ori	$a1, $zero, 1
	b	.LBB14_25
.LBB14_34:                              # %._crit_edge165
	addi.d	$a2, $a3, -1
	pcalau12i	$a0, %pc_hi20(blockAlign3.result1)
	addi.d	$a0, $a0, %pc_lo12(blockAlign3.result1)
	lu12i.w	$a3, 97
	ori	$a4, $a3, 2684
	stx.w	$a2, $a0, $a4
	pcalau12i	$a1, %pc_hi20(blockAlign3.result2)
	addi.d	$a1, $a1, %pc_lo12(blockAlign3.result2)
	stx.w	$a2, $a1, $a4
	ori	$a2, $a3, 2680
	add.d	$a3, $a1, $a2
	add.d	$a4, $a0, $a2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $a2, %pc_lo12(blockAlign3.track)
	lu12i.w	$a5, 24
	ori	$a2, $a5, 1695
	ori	$a7, $zero, 1
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	b	.LBB14_38
	.p2align	4, , 16
.LBB14_35:                              #   in Loop: Header=BB14_38 Depth=1
	addi.d	$t1, $t1, -1
.LBB14_36:                              #   in Loop: Header=BB14_38 Depth=1
	st.w	$t1, $a4, 0
	addi.d	$t0, $t0, -1
.LBB14_37:                              #   in Loop: Header=BB14_38 Depth=1
	st.w	$t0, $a3, 0
	addi.w	$a2, $a2, -1
	addi.w	$t0, $a2, 1
	addi.d	$a3, $a3, -4
	addi.d	$a4, $a4, -4
	bgeu	$a7, $t0, .LBB14_47
.LBB14_38:                              # =>This Inner Loop Header: Depth=1
	slli.d	$t0, $a2, 2
	ldx.w	$t1, $a0, $t0
	beqz	$t1, .LBB14_44
# %bb.39:                               #   in Loop: Header=BB14_38 Depth=1
	ldx.w	$t0, $a1, $t0
	beqz	$t0, .LBB14_44
# %bb.40:                               #   in Loop: Header=BB14_38 Depth=1
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a6, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t2, $t2, $t3
	beqz	$t2, .LBB14_35
# %bb.41:                               #   in Loop: Header=BB14_38 Depth=1
	blez	$t2, .LBB14_43
# %bb.42:                               #   in Loop: Header=BB14_38 Depth=1
	addi.d	$t1, $t1, -1
	st.w	$t1, $a4, 0
	sub.d	$t0, $t0, $t2
	b	.LBB14_37
	.p2align	4, , 16
.LBB14_43:                              #   in Loop: Header=BB14_38 Depth=1
	add.d	$t1, $t2, $t1
	b	.LBB14_36
.LBB14_44:
	ori	$a3, $a5, 1695
	bge	$a3, $a2, .LBB14_48
# %bb.45:
	move	$a4, $zero
.LBB14_46:                              # %._crit_edge173
	st.w	$a4, $t4, 0
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
.LBB14_47:
	move	$a2, $zero
.LBB14_48:                              # %.lr.ph172.preheader
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a1, $a2, $a1, 2
	lu12i.w	$a3, -25
	ori	$a3, $a3, 2400
	add.d	$a2, $a2, $a3
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a3, %pc_hi20(blockAlign3.ocut1)
	addi.d	$a3, $a3, %pc_lo12(blockAlign3.ocut1)
	pcalau12i	$a4, %pc_hi20(blockAlign3.ocut2)
	addi.d	$a5, $a4, %pc_lo12(blockAlign3.ocut2)
	move	$a4, $zero
	b	.LBB14_51
	.p2align	4, , 16
.LBB14_49:                              #   in Loop: Header=BB14_51 Depth=1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	slli.d	$t0, $a4, 2
	stx.w	$a7, $t7, $t0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a5, $a6
	stx.w	$a6, $t6, $t0
	addi.w	$a4, $a4, 1
.LBB14_50:                              #   in Loop: Header=BB14_51 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB14_46
.LBB14_51:                              # %.lr.ph172
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	slli.d	$t0, $a7, 3
	ld.w	$a6, $a1, 0
	ldx.d	$t0, $t5, $t0
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $t0, $t1
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB14_50
# %bb.52:                               #   in Loop: Header=BB14_51 Depth=1
	ld.w	$t0, $a0, -4
	ld.w	$t2, $a1, -4
	move	$t1, $t2
	beq	$a7, $t0, .LBB14_54
# %bb.53:                               #   in Loop: Header=BB14_51 Depth=1
	move	$t1, $a6
	bne	$a6, $t2, .LBB14_49
.LBB14_54:                              #   in Loop: Header=BB14_51 Depth=1
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t5, $t0
	slli.d	$t1, $t1, 3
	fldx.d	$fa2, $t0, $t1
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB14_49
# %bb.55:                               #   in Loop: Header=BB14_51 Depth=1
	addi.w	$a4, $a4, -1
	b	.LBB14_49
.LBB14_56:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blockAlign3.track)
	bnez	$a0, .LBB14_3
	b	.LBB14_4
.Lfunc_end14:
	.size	blockAlign3, .Lfunc_end14-blockAlign3
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s :         "
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\b\b\b\b\b\b\b\b"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%3d /%3d"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\b\b\b\b\b\b\b\bdone.     \n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Cannot allocate %d FukusosuuVec\n"
	.size	.L.str.4, 33

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Cannot allocate %d x %d FukusosuuVecMtx\n"
	.size	.L.str.5, 41

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Cannot allocate Fukusosuu"
	.size	.L.str.6, 26

	.type	alignableReagion.stra,@object   # @alignableReagion.stra
	.local	alignableReagion.stra
	.comm	alignableReagion.stra,8,8
	.type	alignableReagion.alloclen,@object # @alignableReagion.alloclen
	.local	alignableReagion.alloclen
	.comm	alignableReagion.alloclen,4,4
	.type	alignableReagion.threshold,@object # @alignableReagion.threshold
	.local	alignableReagion.threshold
	.comm	alignableReagion.threshold,8,8
	.type	alignableReagion.prf1,@object   # @alignableReagion.prf1
	.local	alignableReagion.prf1
	.comm	alignableReagion.prf1,208,8
	.type	alignableReagion.prf2,@object   # @alignableReagion.prf2
	.local	alignableReagion.prf2
	.comm	alignableReagion.prf2,208,8
	.type	alignableReagion.hat1,@object   # @alignableReagion.hat1
	.local	alignableReagion.hat1
	.comm	alignableReagion.hat1,108,4
	.type	alignableReagion.hat2,@object   # @alignableReagion.hat2
	.local	alignableReagion.hat2
	.comm	alignableReagion.hat2,108,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"TOO MANY SEGMENTS!"
	.size	.L.str.7, 19

	.type	blockAlign.result1,@object      # @blockAlign.result1
	.local	blockAlign.result1
	.comm	blockAlign.result1,400000,4
	.type	blockAlign.result2,@object      # @blockAlign.result2
	.local	blockAlign.result2
	.comm	blockAlign.result2,400000,4
	.type	blockAlign.ocut1,@object        # @blockAlign.ocut1
	.local	blockAlign.ocut1
	.comm	blockAlign.ocut1,400000,8
	.type	blockAlign.ocut2,@object        # @blockAlign.ocut2
	.local	blockAlign.ocut2
	.comm	blockAlign.ocut2,400000,8
	.type	blockAlign.max,@object          # @blockAlign.max
	.local	blockAlign.max
	.comm	blockAlign.max,800000,8
	.type	blockAlign.point,@object        # @blockAlign.point
	.local	blockAlign.point
	.comm	blockAlign.point,800000,8
	.type	blockAlign.crossscore,@object   # @blockAlign.crossscore
	.local	blockAlign.crossscore
	.comm	blockAlign.crossscore,8,8
	.type	blockAlign.track,@object        # @blockAlign.track
	.local	blockAlign.track
	.comm	blockAlign.track,8,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%3d "
	.size	.L.str.8, 5

	.type	blockAlign2.crossscoresize,@object # @blockAlign2.crossscoresize
	.local	blockAlign2.crossscoresize
	.comm	blockAlign2.crossscoresize,4,4
	.type	blockAlign2.result1,@object     # @blockAlign2.result1
	.local	blockAlign2.result1
	.comm	blockAlign2.result1,400000,4
	.type	blockAlign2.result2,@object     # @blockAlign2.result2
	.local	blockAlign2.result2
	.comm	blockAlign2.result2,400000,4
	.type	blockAlign2.ocut1,@object       # @blockAlign2.ocut1
	.local	blockAlign2.ocut1
	.comm	blockAlign2.ocut1,400000,8
	.type	blockAlign2.ocut2,@object       # @blockAlign2.ocut2
	.local	blockAlign2.ocut2
	.comm	blockAlign2.ocut2,400000,8
	.type	blockAlign2.crossscore,@object  # @blockAlign2.crossscore
	.local	blockAlign2.crossscore
	.comm	blockAlign2.crossscore,8,8
	.type	blockAlign2.track,@object       # @blockAlign2.track
	.local	blockAlign2.track
	.comm	blockAlign2.track,8,8
	.type	blockAlign2.maxj,@object        # @blockAlign2.maxj
	.local	blockAlign2.maxj
	.comm	blockAlign2.maxj,8,8
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"allocating crossscore and track, size = %d\n"
	.size	.L.str.10, 44

	.type	blockAlign3.crossscoresize,@object # @blockAlign3.crossscoresize
	.local	blockAlign3.crossscoresize
	.comm	blockAlign3.crossscoresize,4,4
	.type	blockAlign3.jumppos,@object     # @blockAlign3.jumppos
	.local	blockAlign3.jumppos
	.comm	blockAlign3.jumppos,8,8
	.type	blockAlign3.jumpscorei,@object  # @blockAlign3.jumpscorei
	.local	blockAlign3.jumpscorei
	.comm	blockAlign3.jumpscorei,8,8
	.type	blockAlign3.jumpscore,@object   # @blockAlign3.jumpscore
	.local	blockAlign3.jumpscore
	.comm	blockAlign3.jumpscore,8,8
	.type	blockAlign3.result1,@object     # @blockAlign3.result1
	.local	blockAlign3.result1
	.comm	blockAlign3.result1,400000,4
	.type	blockAlign3.result2,@object     # @blockAlign3.result2
	.local	blockAlign3.result2
	.comm	blockAlign3.result2,400000,4
	.type	blockAlign3.ocut1,@object       # @blockAlign3.ocut1
	.local	blockAlign3.ocut1
	.comm	blockAlign3.ocut1,400000,8
	.type	blockAlign3.ocut2,@object       # @blockAlign3.ocut2
	.local	blockAlign3.ocut2
	.comm	blockAlign3.ocut2,400000,8
	.type	blockAlign3.crossscore,@object  # @blockAlign3.crossscore
	.local	blockAlign3.crossscore
	.comm	blockAlign3.crossscore,8,8
	.type	blockAlign3.track,@object       # @blockAlign3.track
	.local	blockAlign3.track
	.comm	blockAlign3.track,8,8
	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"in blockalign3, ### i=%d, j=%d\n"
	.size	.L.str.11, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
