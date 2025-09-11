	.file	"decode_i386.c"
	.text
	.globl	synth_1to1_mono                 # -- Begin function synth_1to1_mono
	.p2align	5
	.type	synth_1to1_mono,@function
synth_1to1_mono:                        # @synth_1to1_mono
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	st.w	$zero, $sp, 20
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a1, $zero
	pcaddu18i	$ra, %call36(synth_1to1)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 40
	ld.w	$a3, $sp, 48
	vld	$vr0, $sp, 24
	ld.w	$a1, $fp, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $a3, 2
	ld.h	$a2, $sp, 52
	vori.b	$vr2, $vr0, 0
	vextrins.h	$vr2, $vr0, 18
	vextrins.h	$vr2, $vr0, 36
	vextrins.h	$vr2, $vr0, 54
	vextrins.h	$vr2, $vr1, 64
	vextrins.h	$vr2, $vr1, 82
	vextrins.h	$vr2, $vr1, 100
	vinsgr2vr.h	$vr2, $a2, 7
	vstx	$vr2, $s0, $a1
	ld.d	$a3, $sp, 72
	ld.w	$a4, $sp, 80
	vld	$vr0, $sp, 56
	add.d	$a2, $s0, $a1
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a4, 2
	ld.h	$a3, $sp, 84
	vori.b	$vr2, $vr0, 0
	vextrins.h	$vr2, $vr0, 18
	vextrins.h	$vr2, $vr0, 36
	vextrins.h	$vr2, $vr0, 54
	vextrins.h	$vr2, $vr1, 64
	vextrins.h	$vr2, $vr1, 82
	vextrins.h	$vr2, $vr1, 100
	vinsgr2vr.h	$vr2, $a3, 7
	ld.d	$a3, $sp, 104
	ld.w	$a4, $sp, 112
	vld	$vr0, $sp, 88
	vst	$vr2, $a2, 16
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a4, 2
	ld.h	$a3, $sp, 116
	vori.b	$vr2, $vr0, 0
	vextrins.h	$vr2, $vr0, 18
	vextrins.h	$vr2, $vr0, 36
	vextrins.h	$vr2, $vr0, 54
	vextrins.h	$vr2, $vr1, 64
	vextrins.h	$vr2, $vr1, 82
	vextrins.h	$vr2, $vr1, 100
	vinsgr2vr.h	$vr2, $a3, 7
	ld.d	$a3, $sp, 136
	ld.w	$a4, $sp, 144
	vld	$vr0, $sp, 120
	vst	$vr2, $a2, 32
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a4, 2
	ld.h	$a3, $sp, 148
	vori.b	$vr2, $vr0, 0
	vextrins.h	$vr2, $vr0, 18
	vextrins.h	$vr2, $vr0, 36
	vextrins.h	$vr2, $vr0, 54
	vextrins.h	$vr2, $vr1, 64
	vextrins.h	$vr2, $vr1, 82
	vextrins.h	$vr2, $vr1, 100
	vinsgr2vr.h	$vr2, $a3, 7
	vst	$vr2, $a2, 48
	addi.d	$a1, $a1, 64
	st.w	$a1, $fp, 0
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	synth_1to1_mono, .Lfunc_end0-synth_1to1_mono
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function synth_1to1
.LCPI1_0:
	.dword	0x40dfffc000000000              # double 32767
.LCPI1_1:
	.dword	0xc0e0000000000000              # double -32768
	.text
	.globl	synth_1to1
	.p2align	5
	.type	synth_1to1,@function
synth_1to1:                             # @synth_1to1
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a3
	ld.w	$a4, $a3, 0
	move	$a3, $a0
	sltu	$s2, $zero, $a1
	add.d	$s3, $a2, $a4
	pcalau12i	$a0, %got_pc_hi20(gmp)
	ld.d	$s4, $a0, %got_pc_lo12(gmp)
	ld.d	$a0, $s4, 0
	lu12i.w	$s1, 7
	ori	$a2, $s1, 3200
	ldx.w	$a2, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a4, $a2, -1
	andi	$a4, $a4, 15
	masknez	$a2, $a2, $a1
	maskeqz	$a4, $a4, $a1
	or	$s6, $a4, $a2
	lu12i.w	$a2, 6
	ori	$a2, $a2, 2944
	masknez	$a2, $a2, $a1
	lu12i.w	$a4, 5
	ori	$a4, $a4, 2688
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	add.d	$s0, $a0, $a1
	andi	$a0, $s6, 1
	addi.d	$a1, $s0, 2047
	addi.d	$s7, $a1, 129
	bnez	$a0, .LBB1_2
# %bb.1:
	ori	$s5, $s6, 1
	alsl.d	$a0, $s6, $s0, 3
	alsl.d	$a1, $s6, $s7, 3
	addi.d	$a1, $a1, 8
	move	$a2, $a3
	pcaddu18i	$ra, %call36(dct64)
	jirl	$ra, $ra, 0
	move	$s0, $s7
	b	.LBB1_3
.LBB1_2:
	addi.d	$a0, $s6, 1
	andi	$a0, $a0, 14
	alsl.d	$a0, $a0, $s7, 3
	alsl.d	$a1, $s6, $s0, 3
	move	$a2, $a3
	pcaddu18i	$ra, %call36(dct64)
	jirl	$ra, $ra, 0
	move	$s5, $s6
.LBB1_3:
	ld.d	$a0, $s4, 0
	alsl.d	$a4, $s2, $s3, 1
	stptr.w	$s6, $a0, 31872
	sub.w	$a1, $zero, $s5
	pcalau12i	$a0, %got_pc_hi20(decwin)
	ld.d	$a2, $a0, %got_pc_lo12(decwin)
	move	$a0, $zero
	alsl.d	$a1, $a1, $a2, 3
	addi.d	$t2, $a1, 128
	slli.w	$a1, $s5, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $s5, 3
	sub.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a2
	addi.d	$t0, $a1, 8
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_1)
	ori	$a7, $zero, 16
	ori	$a1, $s1, 4095
	lu12i.w	$a2, 8
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_7 Depth=1
	st.h	$a1, $t1, 0
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	addi.w	$a0, $a0, 1
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	addi.w	$a7, $a7, -1
	addi.d	$s0, $a5, 128
	addi.d	$t2, $a6, 256
	addi.d	$a4, $t1, 4
	addi.d	$t0, $a3, 256
	beqz	$a7, .LBB1_11
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	move	$a5, $s0
	move	$a6, $t2
	fld.d	$fa2, $t2, 0
	fld.d	$fa3, $s0, 0
	fld.d	$fa4, $t2, 8
	fld.d	$fa5, $s0, 8
	fld.d	$fa6, $t2, 16
	fld.d	$fa7, $s0, 16
	fmul.d	$fa2, $fa2, $fa3
	fneg.d	$fa3, $fa4
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	fmadd.d	$fa2, $fa6, $fa7, $fa2
	fld.d	$fa3, $t2, 24
	fld.d	$fa4, $s0, 24
	fld.d	$fa5, $t2, 32
	fld.d	$fa6, $s0, 32
	fneg.d	$fa3, $fa3
	fld.d	$fa7, $t2, 40
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa6, $fa2
	fld.d	$fa3, $s0, 40
	fneg.d	$fa4, $fa7
	fld.d	$fa5, $t2, 48
	fld.d	$fa6, $s0, 48
	fld.d	$fa7, $t2, 56
	fld.d	$ft0, $s0, 56
	fmadd.d	$fa2, $fa4, $fa3, $fa2
	fmadd.d	$fa2, $fa5, $fa6, $fa2
	fneg.d	$fa3, $fa7
	fmadd.d	$fa2, $fa3, $ft0, $fa2
	fld.d	$fa3, $t2, 64
	fld.d	$fa4, $s0, 64
	fld.d	$fa5, $t2, 72
	fld.d	$fa6, $s0, 72
	fld.d	$fa7, $t2, 80
	fld.d	$ft0, $s0, 80
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fmadd.d	$fa2, $fa7, $ft0, $fa2
	fld.d	$fa3, $t2, 88
	fld.d	$fa4, $s0, 88
	fld.d	$fa5, $t2, 96
	fld.d	$fa6, $s0, 96
	fneg.d	$fa3, $fa3
	fld.d	$fa7, $t2, 104
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa6, $fa2
	fld.d	$fa3, $s0, 104
	fneg.d	$fa4, $fa7
	fld.d	$fa5, $t2, 112
	fld.d	$fa6, $s0, 112
	fld.d	$fa7, $t2, 120
	fld.d	$ft0, $s0, 120
	fmadd.d	$fa2, $fa4, $fa3, $fa2
	fmadd.d	$fa2, $fa5, $fa6, $fa2
	fneg.d	$fa3, $fa7
	fmadd.d	$fa2, $fa3, $ft0, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa0
	move	$t1, $a4
	move	$a3, $t0
	bceqz	$fcc0, .LBB1_4
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	st.h	$a2, $t1, 0
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_7 Depth=1
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$a4, $fa2
	st.h	$a4, $t1, 0
	b	.LBB1_6
.LBB1_11:
	fld.d	$fa2, $a6, 256
	fld.d	$fa3, $a5, 128
	fld.d	$fa4, $a6, 272
	fld.d	$fa5, $a5, 144
	fld.d	$fa6, $a6, 288
	fld.d	$fa7, $a5, 160
	fld.d	$ft0, $a6, 304
	fld.d	$ft1, $a5, 176
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa2, $fa4, $fa5, $fa2
	fmadd.d	$fa2, $fa6, $fa7, $fa2
	fmadd.d	$fa2, $ft0, $ft1, $fa2
	fld.d	$fa3, $a6, 320
	fld.d	$fa4, $a5, 192
	fld.d	$fa5, $a6, 336
	fld.d	$fa6, $a5, 208
	fld.d	$fa7, $a6, 352
	fld.d	$ft0, $a5, 224
	fld.d	$ft1, $a6, 368
	fld.d	$ft2, $a5, 240
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa6, $fa2
	fmadd.d	$fa2, $fa7, $ft0, $fa2
	fmadd.d	$fa2, $ft1, $ft2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_13
# %bb.12:
	st.h	$a1, $a4, 0
	addi.w	$a0, $a0, 1
	b	.LBB1_16
.LBB1_13:
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_15
# %bb.14:
	st.h	$a2, $a4, 0
	addi.w	$a0, $a0, 1
	b	.LBB1_16
.LBB1_15:
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$a5, $fa2
	st.h	$a5, $a4, 0
.LBB1_16:
	addi.d	$a4, $t1, 8
	addi.w	$a5, $zero, -128
	addi.w	$a6, $zero, -15
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_20 Depth=1
	st.h	$a1, $a4, 0
.LBB1_18:                               #   in Loop: Header=BB1_20 Depth=1
	addi.w	$a0, $a0, 1
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -128
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 31
	addi.d	$a3, $a3, -256
	bltz	$a7, .LBB1_24
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	add.d	$a7, $s0, $a5
	fld.d	$fa2, $a3, 112
	fldx.d	$fa3, $s0, $a5
	fld.d	$fa4, $a3, 104
	fld.d	$fa5, $a7, 8
	fneg.d	$fa2, $fa2
	fmul.d	$fa2, $fa3, $fa2
	fneg.d	$fa3, $fa4
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	fld.d	$fa3, $a3, 96
	fld.d	$fa4, $a7, 16
	fld.d	$fa5, $a3, 88
	fld.d	$fa6, $a7, 24
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $a3, 80
	fld.d	$fa4, $a7, 32
	fld.d	$fa5, $a3, 72
	fld.d	$fa6, $a7, 40
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $a3, 64
	fld.d	$fa4, $a7, 48
	fld.d	$fa5, $a3, 56
	fld.d	$fa6, $a7, 56
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $a3, 48
	fld.d	$fa4, $a7, 64
	fld.d	$fa5, $a3, 40
	fld.d	$fa6, $a7, 72
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $a3, 32
	fld.d	$fa4, $a7, 80
	fld.d	$fa5, $a3, 24
	fld.d	$fa6, $a7, 88
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $a3, 16
	fld.d	$fa4, $a7, 96
	fld.d	$fa5, $a3, 8
	fld.d	$fa6, $a7, 104
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $a3, 0
	fld.d	$fa4, $a7, 112
	fld.d	$fa5, $a3, 120
	fld.d	$fa6, $a7, 120
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fneg.d	$fa3, $fa5
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB1_17
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	st.h	$a2, $a4, 0
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_20 Depth=1
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$a7, $fa2
	st.h	$a7, $a4, 0
	b	.LBB1_19
.LBB1_24:
	ld.w	$a1, $fp, 0
	addi.d	$a1, $a1, 128
	st.w	$a1, $fp, 0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	synth_1to1, .Lfunc_end1-synth_1to1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
