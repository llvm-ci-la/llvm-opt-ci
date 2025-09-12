	.file	"ffbench.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(main.nsize.1)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(main.nsize.1)
	pcalau12i	$a0, %pc_hi20(main.nsize.0)
	st.b	$a1, $a0, %pc_lo12(main.nsize.0)
	lu12i.w	$a0, 256
	ori	$a1, $a0, 16
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_33
# %bb.1:                                # %.preheader97.preheader
	move	$fp, $a0
	move	$a0, $zero
	ori	$a1, $zero, 8
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	vrepli.d	$vr1, 32
	lu52i.d	$a2, $zero, 1030
	ori	$a3, $zero, 256
	vrepli.d	$vr2, 15
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.split.us
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a3, .LBB0_16
.LBB0_3:                                # %.preheader97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_5 Depth 2
	andi	$a5, $a0, 15
	slli.d	$a4, $a0, 12
	add.d	$a4, $fp, $a4
	bne	$a5, $a1, .LBB0_6
# %bb.4:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a5, $zero, 256
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vslli.d	$vr4, $vr3, 4
	vadd.d	$vr5, $vr4, $vr1
	vpickve2gr.d	$a6, $vr4, 0
	add.d	$a6, $a4, $a6
	vpickve2gr.d	$a7, $vr4, 1
	add.d	$a7, $a4, $a7
	vpickve2gr.d	$t0, $vr5, 0
	add.d	$t0, $a4, $t0
	vpickve2gr.d	$t1, $vr5, 1
	add.d	$t1, $a4, $t1
	st.d	$a2, $a6, 8
	st.d	$a2, $a7, 8
	st.d	$a2, $t0, 8
	st.d	$a2, $t1, 8
	addi.d	$a5, $a5, -4
	vaddi.du	$vr3, $vr3, 4
	bnez	$a5, .LBB0_5
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_6:                                # %vector.body153.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a5, $zero, 256
	vori.b	$vr3, $vr0, 0
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %pred.store.continue162
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a5, $a5, -4
	vaddi.du	$vr3, $vr3, 4
	beqz	$a5, .LBB0_2
.LBB0_8:                                # %vector.body153
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vand.v	$vr4, $vr3, $vr2
	vseqi.d	$vr5, $vr4, 8
	vpickve2gr.d	$a6, $vr5, 0
	andi	$a6, $a6, 1
	vslli.d	$vr4, $vr3, 4
	beqz	$a6, .LBB0_10
# %bb.9:                                # %pred.store.if
                                        #   in Loop: Header=BB0_8 Depth=2
	vpickve2gr.d	$a6, $vr4, 0
	add.d	$a6, $a4, $a6
	st.d	$a2, $a6, 8
.LBB0_10:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_8 Depth=2
	vpickve2gr.d	$a6, $vr5, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB0_12
# %bb.11:                               # %pred.store.if157
                                        #   in Loop: Header=BB0_8 Depth=2
	vpickve2gr.d	$a6, $vr4, 1
	add.d	$a6, $a4, $a6
	st.d	$a2, $a6, 8
.LBB0_12:                               # %pred.store.continue158
                                        #   in Loop: Header=BB0_8 Depth=2
	vaddi.du	$vr4, $vr3, 2
	vand.v	$vr5, $vr4, $vr2
	vseqi.d	$vr5, $vr5, 8
	vpickve2gr.d	$a6, $vr5, 0
	andi	$a6, $a6, 1
	vslli.d	$vr4, $vr4, 4
	bnez	$a6, .LBB0_14
# %bb.13:                               # %pred.store.continue160
                                        #   in Loop: Header=BB0_8 Depth=2
	vpickve2gr.d	$a6, $vr5, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB0_7
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %pred.store.if159
                                        #   in Loop: Header=BB0_8 Depth=2
	vpickve2gr.d	$a6, $vr4, 0
	add.d	$a6, $a4, $a6
	st.d	$a2, $a6, 8
	vpickve2gr.d	$a6, $vr5, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB0_7
.LBB0_15:                               # %pred.store.if161
                                        #   in Loop: Header=BB0_8 Depth=2
	vpickve2gr.d	$a6, $vr4, 1
	add.d	$a6, $a4, $a6
	st.d	$a2, $a6, 8
	b	.LBB0_7
.LBB0_16:                               # %.preheader96.preheader
	ori	$s1, $zero, 63
	addi.w	$s0, $zero, -1
	.p2align	4, , 16
.LBB0_17:                               # %.preheader96
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fourn)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fourn)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB0_17
# %bb.18:                               # %.preheader95.preheader
	addi.d	$a0, $fp, 8
	lu12i.w	$a1, 131072
	lu32i.d	$a1, 172127
	lu52i.d	$a2, $a1, 1056
	movgr2fr.d	$fs0, $a2
	lu52i.d	$a1, $a1, -992
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	.p2align	4, , 16
.LBB0_19:                               # %.preheader95
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fcmp.cle.d	$fcc0, $fa1, $fs0
	fsel	$fs0, $fs0, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$s0, $s0, 2
	addi.d	$a0, $a0, 16
	bltu	$s0, $a1, .LBB0_19
# %bb.20:
	fsub.d	$fa0, $fa0, $fs0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -8192
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fs1, $fa1, $fa0
	addi.d	$s3, $fp, 8
	lu12i.w	$s6, 1
	ori	$s7, $zero, 255
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$s1, $zero
	move	$fp, $zero
	ori	$s4, $zero, 256
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %.split109.us
                                        #   in Loop: Header=BB0_22 Depth=1
	addi.d	$s1, $s1, 1
	add.d	$s3, $s3, $s6
	beq	$s1, $s4, .LBB0_29
.LBB0_22:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	andi	$a0, $s1, 15
	move	$s2, $zero
	lu12i.w	$s5, -1
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_24
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=2
	addi.d	$s5, $s5, 16
	addi.w	$s2, $s2, 1
	beqz	$s5, .LBB0_21
.LBB0_24:                               # %.preheader.split.us
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s3, $s5
	fldx.d	$fa0, $a0, $s6
	fsub.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	beq	$a5, $s7, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $s8, 0
	addi.w	$fp, $fp, 1
	ori	$a4, $zero, 255
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=2
	addi.d	$s5, $s5, 16
	addi.w	$s2, $s2, 1
	beqz	$s5, .LBB0_21
.LBB0_27:                               # %.preheader.split
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s3, $s5
	fldx.d	$fa0, $a0, $s6
	fsub.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	andi	$a0, $s2, 15
	addi.d	$a0, $a0, -8
	sltui	$a0, $a0, 1
	maskeqz	$a4, $s7, $a0
	beq	$a4, $a5, .LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=2
	ld.d	$a0, $s8, 0
	addi.w	$fp, $fp, 1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_26
.LBB0_29:
	ld.d	$a0, $s8, 0
	bnez	$fp, .LBB0_31
# %bb.30:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 63
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_32
.LBB0_31:
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 63
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_32:
	move	$a0, $zero
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.LBB0_33:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.p2align	5                               # -- Begin function fourn
	.type	fourn,@function
fourn:                                  # @fourn
# %bb.0:                                # %.preheader6
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(main.nsize.0)
	ld.bu	$a3, $s3, %pc_lo12(main.nsize.0)
	pcalau12i	$a2, %pc_hi20(main.nsize.1)
	ld.bu	$a2, $a2, %pc_lo12(main.nsize.1)
	move	$fp, $a0
	slli.d	$a0, $a3, 8
	slli.d	$s1, $a2, 8
	mul.d	$a3, $a2, $a0
	slli.d	$s2, $a3, 8
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a1, 345154
	ori	$a1, $a1, 3356
	lu32i.d	$a1, -450053
	lu52i.d	$a1, $a1, 1025
	movgr2fr.d	$fa1, $a1
	fmul.d	$fs2, $fa0, $fa1
	slli.d	$s0, $s1, 4
	beqz	$a2, .LBB1_10
# %bb.1:                                # %.lr.ph19
	slli.d	$s4, $a2, 9
	mul.d	$s5, $s4, $a0
	addi.d	$a0, $fp, 16
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	add.w	$a4, $a6, $a5
	addi.w	$a3, $a3, 2
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 16
	bltu	$s4, $a3, .LBB1_11
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_8 Depth 2
	bge	$a3, $a4, .LBB1_7
# %bb.4:                                # %.preheader2.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	bltu	$s5, $a3, .LBB1_7
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a5, $a4
	move	$a6, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $a5, 3
	fldx.d	$fa0, $fp, $t0
	fld.d	$fa1, $a6, -8
	alsl.d	$t1, $a5, $fp, 3
	fst.d	$fa0, $a6, -8
	fstx.d	$fa1, $fp, $t0
	fld.d	$fa0, $t1, 8
	fld.d	$fa1, $a6, 0
	fst.d	$fa0, $a6, 0
	fst.d	$fa1, $t1, 8
	add.d	$a7, $a7, $s4
	add.d	$a6, $a6, $s0
	add.w	$a5, $a5, $s4
	bgeu	$s5, $a7, .LBB1_6
.LBB1_7:                                # %.loopexit4.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a5, $s4
	.p2align	4, , 16
.LBB1_8:                                # %.loopexit4
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $a4
	addi.w	$a4, $a5, 0
	bstrpick.d	$a5, $a5, 31, 1
	bltu	$a4, $a2, .LBB1_2
# %bb.9:                                # %.loopexit4
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.w	$a7, $a5, 0
	sub.w	$a4, $a6, $a5
	blt	$a7, $a6, .LBB1_8
	b	.LBB1_2
.LBB1_10:
	move	$a1, $s2
	b	.LBB1_20
.LBB1_11:                               # %.lr.ph32.preheader
	addi.d	$s6, $fp, 8
	ori	$s7, $zero, 2
	movgr2fr.d	$fs3, $zero
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %.loopexit
                                        #   in Loop: Header=BB1_13 Depth=1
	bge	$s7, $s4, .LBB1_19
.LBB1_13:                               # %.lr.ph32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #       Child Loop BB1_18 Depth 3
	move	$s8, $s7
	slli.w	$s7, $s7, 1
	slli.d	$a0, $s8, 33
	srai.d	$a0, $a0, 33
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fs2, $fa0
	vldi	$vr0, -928
	fmul.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	blez	$s8, .LBB1_12
# %bb.14:                               # %.preheader1.lr.ph
                                        #   in Loop: Header=BB1_13 Depth=1
	vldi	$vr1, -896
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fs0, $fa1
	fneg.d	$fa2, $fa0
	slli.d	$a0, $s8, 3
	slli.d	$a1, $s7, 3
	ori	$a2, $zero, 1
	vldi	$vr4, -912
	move	$a3, $s6
	fmov.d	$fa3, $fs3
	ori	$a4, $zero, 1
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %._crit_edge26
                                        #   in Loop: Header=BB1_16 Depth=2
	addi.w	$a4, $a4, 2
	fmul.d	$fa5, $fa3, $fa2
	fmadd.d	$fa5, $fa4, $fa1, $fa5
	fmul.d	$fa6, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa5
	fmadd.d	$fa5, $fa3, $fa1, $fa6
	fadd.d	$fa3, $fa3, $fa5
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 16
                                        # kill: def $f4_64 killed $f4_64 def $vr4
	blt	$s8, $a4, .LBB1_12
.LBB1_16:                               # %.preheader.preheader
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_18 Depth 3
	bltu	$s5, $a4, .LBB1_15
# %bb.17:                               # %.lr.ph22.preheader
                                        #   in Loop: Header=BB1_16 Depth=2
	move	$a5, $a3
	move	$a6, $a2
	.p2align	4, , 16
.LBB1_18:                               # %.lr.ph22
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $a5, $a0
	fld.d	$fa5, $a7, 8
	fldx.d	$fa6, $a5, $a0
	fld.d	$fa7, $a5, 0
	fneg.d	$ft0, $fa5
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa4, $fa6, $ft0
	fsub.d	$ft1, $fa7, $ft0
	fstx.d	$ft1, $a5, $a0
	fld.d	$ft1, $a5, 8
	fmul.d	$fa6, $fa3, $fa6
	fmadd.d	$fa5, $fa4, $fa5, $fa6
	fsub.d	$fa6, $ft1, $fa5
	fst.d	$fa6, $a7, 8
	fadd.d	$fa6, $ft0, $fa7
	fst.d	$fa6, $a5, 0
	fadd.d	$fa5, $fa5, $ft1
	fst.d	$fa5, $a5, 8
	add.d	$a6, $a6, $s7
	add.d	$a5, $a5, $a1
	bge	$s5, $a6, .LBB1_18
	b	.LBB1_15
.LBB1_19:                               # %._crit_edge33.loopexit
	ld.bu	$a1, $s3, %pc_lo12(main.nsize.0)
	slli.d	$a0, $a1, 8
	mul.d	$a1, $a1, $s1
	slli.d	$a1, $a1, 8
.LBB1_20:                               # %._crit_edge33
	div.wu	$a1, $s2, $a1
	slli.d	$s1, $s1, 1
	mul.d	$s2, $a0, $s1
	mul.w	$s3, $s2, $a1
	beqz	$s2, .LBB1_33
# %bb.21:                               # %.lr.ph19.1
	addi.d	$a0, $fp, 16
	addi.d	$a1, $s1, -2
	slli.d	$a2, $s2, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_22:                               #   in Loop: Header=BB1_23 Depth=1
	add.w	$a5, $a7, $a6
	add.w	$a4, $a4, $s1
	add.d	$a3, $a3, $s1
	add.d	$a0, $a0, $s0
	bltu	$s2, $a4, .LBB1_33
.LBB1_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_32 Depth 3
                                        #     Child Loop BB1_26 Depth 2
	bge	$a4, $a5, .LBB1_25
# %bb.24:                               # %.preheader3.1
                                        #   in Loop: Header=BB1_23 Depth=1
	add.w	$a6, $a1, $a4
	bge	$a6, $a4, .LBB1_28
.LBB1_25:                               # %.loopexit4.1.preheader
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$a6, $s2
	.p2align	4, , 16
.LBB1_26:                               # %.loopexit4.1
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a6, 31, 1
	move	$a7, $a5
	bltu	$a6, $s1, .LBB1_22
# %bb.27:                               # %.loopexit4.1
                                        #   in Loop: Header=BB1_26 Depth=2
	addi.w	$t0, $a6, 0
	sub.w	$a5, $a7, $a6
	blt	$t0, $a7, .LBB1_26
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_28:                               # %.preheader2.lr.ph.1
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$a7, $a5
	move	$t0, $a0
	move	$t1, $a3
	move	$t2, $a4
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_29:                               # %._crit_edge.1
                                        #   in Loop: Header=BB1_30 Depth=2
	addi.w	$t2, $t2, 2
	addi.d	$t1, $t1, 2
	addi.d	$t0, $t0, 16
	addi.w	$a7, $a7, 2
	blt	$a6, $t2, .LBB1_25
.LBB1_30:                               # %.preheader2.1
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_32 Depth 3
	blt	$s3, $t2, .LBB1_29
# %bb.31:                               # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB1_30 Depth=2
	move	$t3, $a7
	move	$t4, $t0
	move	$t5, $t1
	.p2align	4, , 16
.LBB1_32:                               # %.lr.ph.1
                                        #   Parent Loop BB1_23 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t6, $t3, 3
	fldx.d	$fa0, $fp, $t6
	fld.d	$fa1, $t4, -8
	alsl.d	$t7, $t3, $fp, 3
	fst.d	$fa0, $t4, -8
	fstx.d	$fa1, $fp, $t6
	fld.d	$fa0, $t7, 8
	fld.d	$fa1, $t4, 0
	fst.d	$fa0, $t4, 0
	fst.d	$fa1, $t7, 8
	add.d	$t5, $t5, $s2
	add.d	$t4, $t4, $a2
	add.w	$t3, $t3, $s2
	bge	$s3, $t5, .LBB1_32
	b	.LBB1_29
.LBB1_33:                               # %.preheader5.1
	bgeu	$s1, $s2, .LBB1_45
# %bb.34:                               # %.lr.ph32.preheader.1
	addi.d	$s4, $fp, 8
	addi.d	$fp, $fp, 16
	movgr2fr.d	$fs3, $zero
	move	$s5, $s1
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_35:                               # %.loopexit.1
                                        #   in Loop: Header=BB1_36 Depth=1
	bge	$s5, $s2, .LBB1_45
.LBB1_36:                               # %.lr.ph32.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #       Child Loop BB1_42 Depth 3
                                        #         Child Loop BB1_44 Depth 4
	addi.w	$s6, $s5, 0
	slli.w	$s5, $s5, 1
	div.w	$a0, $s5, $s1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fs2, $fa0
	vldi	$vr0, -928
	fmul.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB1_35
# %bb.37:                               # %.preheader1.lr.ph.1
                                        #   in Loop: Header=BB1_36 Depth=1
	vldi	$vr1, -896
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fs0, $fa1
	fneg.d	$fa2, $fa0
	slli.d	$a0, $s5, 3
	alsl.d	$a1, $s6, $fp, 3
	ori	$a2, $zero, 1
	vldi	$vr4, -912
	move	$a3, $s4
	fmov.d	$fa3, $fs3
	ori	$a5, $zero, 1
	b	.LBB1_39
	.p2align	4, , 16
.LBB1_38:                               # %._crit_edge26.1
                                        #   in Loop: Header=BB1_39 Depth=2
	fmul.d	$fa5, $fa3, $fa2
	fmadd.d	$fa5, $fa4, $fa1, $fa5
	fmul.d	$fa6, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa5
	fmadd.d	$fa5, $fa3, $fa1, $fa6
	fadd.d	$fa3, $fa3, $fa5
	add.d	$a2, $a2, $s1
	add.d	$a3, $a3, $s0
	add.d	$a1, $a1, $s0
                                        # kill: def $f4_64 killed $f4_64 def $vr4
	move	$a5, $a4
	blt	$s6, $a4, .LBB1_35
.LBB1_39:                               # %.preheader1.1
                                        #   Parent Loop BB1_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_42 Depth 3
                                        #         Child Loop BB1_44 Depth 4
	add.w	$a4, $a5, $s1
	addi.w	$a6, $a4, -2
	blt	$a6, $a5, .LBB1_38
# %bb.40:                               # %.preheader.1.preheader
                                        #   in Loop: Header=BB1_39 Depth=2
	move	$a7, $a1
	move	$t0, $a3
	move	$t1, $a2
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_41:                               # %._crit_edge23.1
                                        #   in Loop: Header=BB1_42 Depth=3
	addi.w	$a5, $a5, 2
	addi.d	$t1, $t1, 2
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	blt	$a6, $a5, .LBB1_38
.LBB1_42:                               # %.preheader.1
                                        #   Parent Loop BB1_36 Depth=1
                                        #     Parent Loop BB1_39 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_44 Depth 4
	blt	$s3, $a5, .LBB1_41
# %bb.43:                               # %.lr.ph22.1.preheader
                                        #   in Loop: Header=BB1_42 Depth=3
	move	$t2, $zero
	move	$t3, $t1
	.p2align	4, , 16
.LBB1_44:                               # %.lr.ph22.1
                                        #   Parent Loop BB1_36 Depth=1
                                        #     Parent Loop BB1_39 Depth=2
                                        #       Parent Loop BB1_42 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa5, $a7, $t2
	add.d	$t4, $a7, $t2
	fld.d	$fa6, $t4, -8
	fneg.d	$fa7, $fa5
	fldx.d	$ft0, $t0, $t2
	fmul.d	$fa7, $fa3, $fa7
	fmadd.d	$fa7, $fa4, $fa6, $fa7
	add.d	$t5, $t0, $t2
	fsub.d	$ft0, $ft0, $fa7
	fst.d	$ft0, $t4, -8
	fld.d	$ft0, $t5, 8
	fmul.d	$fa6, $fa3, $fa6
	fldx.d	$ft1, $t0, $t2
	fmadd.d	$fa5, $fa4, $fa5, $fa6
	fsub.d	$fa6, $ft0, $fa5
	fstx.d	$fa6, $a7, $t2
	fadd.d	$fa6, $fa7, $ft1
	fstx.d	$fa6, $t0, $t2
	fadd.d	$fa5, $fa5, $ft0
	fst.d	$fa5, $t5, 8
	add.d	$t3, $t3, $s5
	add.d	$t2, $t2, $a0
	bge	$s3, $t3, .LBB1_44
	b	.LBB1_41
.LBB1_45:                               # %._crit_edge33.1
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	fourn, .Lfunc_end1-fourn
                                        # -- End function
	.type	main.nsize.0,@object            # @main.nsize.0
	.local	main.nsize.0
	.comm	main.nsize.0,1,4
	.type	main.nsize.1,@object            # @main.nsize.1
	.local	main.nsize.1
	.comm	main.nsize.1,1,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Can't allocate data array.\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Wrong answer at (%d,%d)!  Expected %d, got %d.\n"
	.size	.L.str.1, 48

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d passes.  No errors in results.\n"
	.size	.L.str.2, 35

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d passes.  %d errors in results.\n"
	.size	.L.str.3, 35

	.section	".note.GNU-stack","",@progbits
	.addrsig
