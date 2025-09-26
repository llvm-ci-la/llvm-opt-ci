	.file	"jcdctmgr.c"
	.text
	.globl	jinit_forward_dct               # -- Begin function jinit_forward_dct
	.p2align	5
	.type	jinit_forward_dct,@function
jinit_forward_dct:                      # @jinit_forward_dct
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 96
	ori	$s0, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 480
	pcalau12i	$a1, %pc_hi20(start_pass_fdctmgr)
	addi.d	$a2, $a1, %pc_lo12(start_pass_fdctmgr)
	ld.w	$a1, $fp, 268
	ori	$a3, $zero, 2
	st.d	$a2, $a0, 0
	beq	$a1, $a3, .LBB0_5
# %bb.1:
	beq	$a1, $s0, .LBB0_4
# %bb.2:
	bnez	$a1, .LBB0_6
# %bb.3:
	pcalau12i	$a1, %pc_hi20(forward_DCT)
	addi.d	$a1, $a1, %pc_lo12(forward_DCT)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(jpeg_fdct_islow)
	ld.d	$a1, $a1, %got_pc_lo12(jpeg_fdct_islow)
	st.d	$a1, $a0, 16
	b	.LBB0_7
.LBB0_4:
	pcalau12i	$a1, %pc_hi20(forward_DCT)
	addi.d	$a1, $a1, %pc_lo12(forward_DCT)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(jpeg_fdct_ifast)
	ld.d	$a1, $a1, %got_pc_lo12(jpeg_fdct_ifast)
	st.d	$a1, $a0, 16
	b	.LBB0_7
.LBB0_5:
	pcalau12i	$a1, %pc_hi20(forward_DCT_float)
	addi.d	$a1, $a1, %pc_lo12(forward_DCT_float)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(jpeg_fdct_float)
	ld.d	$a1, $a1, %got_pc_lo12(jpeg_fdct_float)
	st.d	$a1, $a0, 56
	b	.LBB0_7
.LBB0_6:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 47
	st.w	$a3, $a1, 40
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a0, $s0
.LBB0_7:
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 80
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	jinit_forward_dct, .Lfunc_end0-jinit_forward_dct
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function start_pass_fdctmgr
.LCPI1_0:
	.dword	0x3ff63150b14861ef              # double 1.3870398450000001
.LCPI1_1:
	.dword	0x3ff4e7ae914d6fca              # double 1.3065629649999999
.LCPI1_2:
	.dword	0x3ff2d062ef6c11aa              # double 1.1758756020000001
.LCPI1_3:
	.dword	0x3fe92469c0a7bf3b              # double 0.785694958
.LCPI1_4:
	.dword	0x3fe1517a7bc720bb              # double 0.54119609999999996
.LCPI1_5:
	.dword	0x3fd1a855de72ab5d              # double 0.275899379
	.text
	.p2align	5
	.type	start_pass_fdctmgr,@function
start_pass_fdctmgr:                     # @start_pass_fdctmgr
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 68
	blez	$a0, .LBB1_21
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $fp, 480
	ld.d	$s0, $fp, 80
	addi.d	$s1, $fp, 88
	addi.d	$a1, $a0, 64
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s3, $a0, 24
	pcalau12i	$a0, %pc_hi20(start_pass_fdctmgr.aanscalefactor)
	addi.d	$s8, $a0, %pc_lo12(start_pass_fdctmgr.aanscalefactor)
	move	$s5, $zero
	vldi	$vr5, -992
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_5)
	ori	$s2, $zero, 64
	ori	$a0, $zero, 1024
	vreplgr2vr.d	$vr6, $a0
	ori	$s7, $zero, 128
	vst	$vr6, $sp, 16                   # 16-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 47
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr6, $sp, 16                   # 16-byte Folded Reload
	vldi	$vr5, -992
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a0, $fp, 68
	addi.w	$s5, $s5, 1
	addi.d	$s0, $s0, 96
	bge	$s5, $a0, .LBB1_21
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_20 Depth 2
	ld.w	$s6, $s0, 16
	ori	$a0, $zero, 3
	bltu	$a0, $s6, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s6, 3
	ldx.d	$s4, $s1, $a0
	bnez	$s4, .LBB1_7
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s6, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 51
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr6, $sp, 16                   # 16-byte Folded Reload
	vldi	$vr5, -992
	slli.d	$a0, $s6, 3
	ldx.d	$s4, $s1, $a0
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a0, $fp, 268
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_17
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	bnez	$a0, .LBB1_2
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $s3, $a0
	bnez	$a0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	alsl.d	$s6, $s6, $s3, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $fp
	jirl	$ra, $a3, 0
	vld	$vr6, $sp, 16                   # 16-byte Folded Reload
	vldi	$vr5, -992
	st.d	$a0, $s6, 0
.LBB1_12:                               # %vector.body
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s4, 8
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a1, $s4, 16
	vsllwil.wu.hu	$vr0, $vr0, 0
	vslli.w	$vr0, $vr0, 3
	vst	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $s4, 24
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr1, $vr1, 3
	vst	$vr1, $a0, 16
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $s4, 32
	vsllwil.wu.hu	$vr0, $vr0, 0
	vslli.w	$vr0, $vr0, 3
	vst	$vr0, $a0, 32
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $s4, 40
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr1, $vr1, 3
	vst	$vr1, $a0, 48
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $s4, 48
	vsllwil.wu.hu	$vr0, $vr0, 0
	vslli.w	$vr0, $vr0, 3
	vst	$vr0, $a0, 64
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $s4, 56
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr1, $vr1, 3
	vst	$vr1, $a0, 80
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $s4, 64
	vsllwil.wu.hu	$vr0, $vr0, 0
	vslli.w	$vr0, $vr0, 3
	vst	$vr0, $a0, 96
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $s4, 72
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr1, $vr1, 3
	vst	$vr1, $a0, 112
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $s4, 80
	vsllwil.wu.hu	$vr0, $vr0, 0
	vslli.w	$vr0, $vr0, 3
	vst	$vr0, $a0, 128
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $s4, 88
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr1, $vr1, 3
	vst	$vr1, $a0, 144
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $s4, 96
	vsllwil.wu.hu	$vr0, $vr0, 0
	vslli.w	$vr0, $vr0, 3
	vst	$vr0, $a0, 160
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $s4, 104
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr1, $vr1, 3
	vst	$vr1, $a0, 176
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr0, $vr0, 3
	vslli.w	$vr1, $vr1, 3
	ld.d	$a1, $s4, 112
	ld.d	$a2, $s4, 120
	vst	$vr0, $a0, 192
	vst	$vr1, $a0, 208
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vslli.w	$vr0, $vr0, 3
	vslli.w	$vr1, $vr1, 3
	vst	$vr0, $a0, 224
	vst	$vr1, $a0, 240
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $s3, $a0
	bnez	$a0, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	alsl.d	$s6, $s6, $s3, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $fp
	jirl	$ra, $a3, 0
	vld	$vr6, $sp, 16                   # 16-byte Folded Reload
	vldi	$vr5, -992
	st.d	$a0, $s6, 0
.LBB1_15:                               # %vector.ph111
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_16:                               # %vector.body112
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a2, $s4, $a1
	vinsgr2vr.d	$vr0, $a2, 0
	vsllwil.wu.hu	$vr1, $vr0, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vshuf4i.h	$vr0, $vr0, 14
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	pcalau12i	$a2, %pc_hi20(start_pass_fdctmgr.aanscales)
	addi.d	$a2, $a2, %pc_lo12(start_pass_fdctmgr.aanscales)
	ldx.d	$a2, $a2, $a1
	vinsgr2vr.d	$vr2, $a2, 0
	vsllwil.w.h	$vr3, $vr2, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vshuf4i.h	$vr2, $vr2, 14
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vori.b	$vr4, $vr6, 0
	vmadd.d	$vr4, $vr2, $vr0
	vori.b	$vr0, $vr6, 0
	vmadd.d	$vr0, $vr3, $vr1
	vsrli.d	$vr0, $vr0, 11
	vsrli.d	$vr1, $vr4, 11
	vpickev.w	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 16
	bne	$a1, $s7, .LBB1_16
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s6, 3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	bnez	$a0, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$s6, $s6, $a0, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $fp
	jirl	$ra, $a3, 0
	vld	$vr6, $sp, 16                   # 16-byte Folded Reload
	vldi	$vr5, -992
	st.d	$a0, $s6, 0
.LBB1_19:                               #   in Loop: Header=BB1_4 Depth=1
	move	$a1, $zero
	addi.d	$a0, $a0, 16
	addi.d	$a2, $s4, 8
	.p2align	4, , 16
.LBB1_20:                               # %.preheader
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a3, $a2, -8
	fldx.d	$fa0, $s8, $a1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fa5
	ld.hu	$a3, $a2, -6
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, -16
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fs0
	fmul.d	$fa1, $fa1, $fa5
	ld.hu	$a3, $a2, -4
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, -12
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa1, $fa1, $fa5
	ld.hu	$a3, $a2, -2
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, -8
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fs2
	fmul.d	$fa1, $fa1, $fa5
	ld.hu	$a3, $a2, 0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, -4
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fa5
	ld.hu	$a3, $a2, 2
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fs3
	fmul.d	$fa1, $fa1, $fa5
	ld.hu	$a3, $a2, 4
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, 4
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fs4
	fmul.d	$fa1, $fa1, $fa5
	ld.hu	$a3, $a2, 6
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, 8
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs5
	fmul.d	$fa0, $fa0, $fa5
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 12
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 32
	addi.d	$a2, $a2, 16
	bne	$a1, $s2, .LBB1_20
	b	.LBB1_3
.LBB1_21:                               # %._crit_edge
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end1:
	.size	start_pass_fdctmgr, .Lfunc_end1-start_pass_fdctmgr
                                        # -- End function
	.p2align	5                               # -- Begin function forward_DCT
	.type	forward_DCT,@function
forward_DCT:                            # @forward_DCT
# %bb.0:
	beqz	$a6, .LBB2_6
# %bb.1:                                # %.preheader.preheader
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a3
	ld.d	$a0, $a0, 480
	ld.w	$a1, $a1, 16
	move	$s1, $zero
	ld.d	$s2, $a0, 16
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s3, $a0, 24
	bstrpick.d	$a0, $a4, 31, 0
	alsl.d	$s4, $a0, $a2, 3
	bstrpick.d	$s5, $a6, 31, 0
	addi.d	$s6, $sp, 48
	vrepli.b	$vr7, 0
	vrepli.w	$vr8, 1
	ori	$s7, $zero, 256
	vst	$vr7, $sp, 32                   # 16-byte Folded Spill
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB2_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	ld.d	$a1, $s4, 0
	bstrpick.d	$a0, $fp, 31, 0
	ldx.bu	$a2, $a1, $a0
	add.d	$a1, $a1, $a0
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 48
	ld.bu	$a2, $a1, 1
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 52
	ld.bu	$a2, $a1, 2
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 56
	ld.bu	$a2, $a1, 3
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 60
	ld.bu	$a2, $a1, 4
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 64
	ld.bu	$a2, $a1, 5
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 68
	ld.bu	$a2, $a1, 6
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 72
	ld.bu	$a1, $a1, 7
	ld.d	$a2, $s4, 8
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 76
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 80
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 84
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 88
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 92
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 96
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 100
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 104
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s4, 16
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 108
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 112
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 116
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 120
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 124
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 128
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 132
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 136
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s4, 24
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 140
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 144
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 148
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 152
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 156
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 160
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 164
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 168
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s4, 32
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 172
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 176
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 180
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 184
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 188
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 192
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 196
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 200
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s4, 40
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 204
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 208
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 212
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 216
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 220
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 224
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 228
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 232
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s4, 48
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 236
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 240
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 244
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 248
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 252
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 256
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 260
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 264
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s4, 56
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 268
	ldx.bu	$a1, $a2, $a0
	add.d	$a0, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 272
	ld.bu	$a1, $a0, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 276
	ld.bu	$a1, $a0, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 280
	ld.bu	$a1, $a0, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 284
	ld.bu	$a1, $a0, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 288
	ld.bu	$a1, $a0, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 292
	ld.bu	$a1, $a0, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 296
	ld.bu	$a0, $a0, 7
	addi.d	$a0, $a0, -128
	st.w	$a0, $sp, 300
	addi.d	$a0, $sp, 48
	jirl	$ra, $s2, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	move	$a0, $zero
	move	$a1, $s0
	.p2align	4, , 16
.LBB2_3:                                # %vector.body
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $a0, $s6
	vldx	$vr1, $s3, $a0
	vslti.w	$vr2, $vr0, 0
	vsrai.w	$vr3, $vr1, 1
	vadd.w	$vr4, $vr0, $vr3
	vslt.w	$vr5, $vr4, $vr1
	vor.v	$vr5, $vr2, $vr5
	vbitsel.v	$vr6, $vr1, $vr8, $vr5
	vdiv.w	$vr4, $vr4, $vr6
	vsub.w	$vr0, $vr3, $vr0
	vsle.w	$vr3, $vr1, $vr0
	vand.v	$vr6, $vr2, $vr3
	vbitsel.v	$vr1, $vr8, $vr1, $vr6
	vdiv.w	$vr0, $vr0, $vr1
	vand.v	$vr0, $vr3, $vr0
	vneg.w	$vr0, $vr0
	vbitsel.v	$vr1, $vr4, $vr7, $vr5
	vbitsel.v	$vr0, $vr1, $vr0, $vr2
	vpickev.h	$vr0, $vr0, $vr0
	vstelm.d	$vr0, $a1, 0, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s7, .LBB2_3
# %bb.4:                                # %middle.block
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$fp, $fp, 8
	addi.d	$s0, $s0, 128
	bne	$s1, $s5, .LBB2_2
# %bb.5:
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
.LBB2_6:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	forward_DCT, .Lfunc_end2-forward_DCT
                                        # -- End function
	.p2align	5                               # -- Begin function forward_DCT_float
	.type	forward_DCT_float,@function
forward_DCT_float:                      # @forward_DCT_float
# %bb.0:
	beqz	$a6, .LBB3_4
# %bb.1:                                # %.preheader.preheader
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	move	$fp, $a5
	ld.d	$a0, $a0, 480
	ld.w	$a1, $a1, 16
	ld.d	$s0, $a0, 56
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s1, $a0, 64
	bstrpick.d	$a0, $a4, 31, 0
	alsl.d	$s2, $a0, $a2, 3
	bstrpick.d	$s3, $a6, 31, 0
	addi.d	$s4, $a3, 64
	lu12i.w	$a0, 288768
	ori	$a0, $a0, 256
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	lu12i.w	$a0, 12
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB3_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	bstrpick.d	$a0, $fp, 31, 0
	ldx.bu	$a2, $a1, $a0
	add.d	$a1, $a1, $a0
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 48
	ld.bu	$a2, $a1, 1
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 52
	ld.bu	$a2, $a1, 2
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 56
	ld.bu	$a2, $a1, 3
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 60
	ld.bu	$a2, $a1, 4
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 64
	ld.bu	$a2, $a1, 5
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 68
	ld.bu	$a2, $a1, 6
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 72
	ld.bu	$a1, $a1, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 8
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 76
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 80
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 84
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 88
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 92
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 96
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 100
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 104
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 16
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 108
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 112
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 116
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 120
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 124
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 128
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 132
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 136
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 24
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 140
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 144
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 148
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 152
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 156
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 160
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 164
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 168
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 32
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 172
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 176
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 180
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 184
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 188
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 192
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 196
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 200
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 40
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 204
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 208
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 212
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 216
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 220
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 224
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 228
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 232
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 48
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 236
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 240
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 244
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 248
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 252
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 256
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 260
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 264
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 56
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 268
	ldx.bu	$a1, $a2, $a0
	add.d	$a0, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 272
	ld.bu	$a1, $a0, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 276
	ld.bu	$a1, $a0, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 280
	ld.bu	$a1, $a0, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 284
	ld.bu	$a1, $a0, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 288
	ld.bu	$a1, $a0, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 292
	ld.bu	$a1, $a0, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 296
	ld.bu	$a0, $a0, 7
	addi.d	$a0, $a0, -128
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 300
	addi.d	$a0, $sp, 48
	jirl	$ra, $s0, 0
	vld	$vr0, $sp, 48
	vld	$vr1, $sp, 64
	vld	$vr2, $s1, 0
	vld	$vr3, $s1, 16
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vld	$vr5, $sp, 16                   # 16-byte Folded Reload
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, -64
	vld	$vr0, $sp, 80
	vld	$vr1, $sp, 96
	vld	$vr2, $s1, 32
	vld	$vr3, $s1, 48
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, -48
	vld	$vr0, $sp, 112
	vld	$vr1, $sp, 128
	vld	$vr2, $s1, 64
	vld	$vr3, $s1, 80
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, -32
	vld	$vr0, $sp, 144
	vld	$vr1, $sp, 160
	vld	$vr2, $s1, 96
	vld	$vr3, $s1, 112
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, -16
	vld	$vr0, $sp, 176
	vld	$vr1, $sp, 192
	vld	$vr2, $s1, 128
	vld	$vr3, $s1, 144
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, 0
	vld	$vr0, $sp, 208
	vld	$vr1, $sp, 224
	vld	$vr2, $s1, 160
	vld	$vr3, $s1, 176
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, 16
	vld	$vr0, $sp, 240
	vld	$vr1, $sp, 256
	vld	$vr2, $s1, 192
	vld	$vr3, $s1, 208
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, 32
	vld	$vr0, $sp, 272
	vld	$vr1, $sp, 288
	vld	$vr2, $s1, 224
	vld	$vr3, $s1, 240
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr4
	vftintrz.w.s	$vr0, $vr0
	vftintrz.w.s	$vr1, $vr1
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vadd.h	$vr0, $vr0, $vr5
	vadd.h	$vr1, $vr1, $vr5
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $s4, 48
	addi.w	$fp, $fp, 8
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 128
	bnez	$s3, .LBB3_2
# %bb.3:
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
.LBB3_4:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	forward_DCT_float, .Lfunc_end3-forward_DCT_float
                                        # -- End function
	.type	start_pass_fdctmgr.aanscales,@object # @start_pass_fdctmgr.aanscales
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
start_pass_fdctmgr.aanscales:
	.half	16384                           # 0x4000
	.half	22725                           # 0x58c5
	.half	21407                           # 0x539f
	.half	19266                           # 0x4b42
	.half	16384                           # 0x4000
	.half	12873                           # 0x3249
	.half	8867                            # 0x22a3
	.half	4520                            # 0x11a8
	.half	22725                           # 0x58c5
	.half	31521                           # 0x7b21
	.half	29692                           # 0x73fc
	.half	26722                           # 0x6862
	.half	22725                           # 0x58c5
	.half	17855                           # 0x45bf
	.half	12299                           # 0x300b
	.half	6270                            # 0x187e
	.half	21407                           # 0x539f
	.half	29692                           # 0x73fc
	.half	27969                           # 0x6d41
	.half	25172                           # 0x6254
	.half	21407                           # 0x539f
	.half	16819                           # 0x41b3
	.half	11585                           # 0x2d41
	.half	5906                            # 0x1712
	.half	19266                           # 0x4b42
	.half	26722                           # 0x6862
	.half	25172                           # 0x6254
	.half	22654                           # 0x587e
	.half	19266                           # 0x4b42
	.half	15137                           # 0x3b21
	.half	10426                           # 0x28ba
	.half	5315                            # 0x14c3
	.half	16384                           # 0x4000
	.half	22725                           # 0x58c5
	.half	21407                           # 0x539f
	.half	19266                           # 0x4b42
	.half	16384                           # 0x4000
	.half	12873                           # 0x3249
	.half	8867                            # 0x22a3
	.half	4520                            # 0x11a8
	.half	12873                           # 0x3249
	.half	17855                           # 0x45bf
	.half	16819                           # 0x41b3
	.half	15137                           # 0x3b21
	.half	12873                           # 0x3249
	.half	10114                           # 0x2782
	.half	6967                            # 0x1b37
	.half	3552                            # 0xde0
	.half	8867                            # 0x22a3
	.half	12299                           # 0x300b
	.half	11585                           # 0x2d41
	.half	10426                           # 0x28ba
	.half	8867                            # 0x22a3
	.half	6967                            # 0x1b37
	.half	4799                            # 0x12bf
	.half	2446                            # 0x98e
	.half	4520                            # 0x11a8
	.half	6270                            # 0x187e
	.half	5906                            # 0x1712
	.half	5315                            # 0x14c3
	.half	4520                            # 0x11a8
	.half	3552                            # 0xde0
	.half	2446                            # 0x98e
	.half	1247                            # 0x4df
	.size	start_pass_fdctmgr.aanscales, 128

	.type	start_pass_fdctmgr.aanscalefactor,@object # @start_pass_fdctmgr.aanscalefactor
	.p2align	3, 0x0
start_pass_fdctmgr.aanscalefactor:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff63150b14861ef              # double 1.3870398450000001
	.dword	0x3ff4e7ae914d6fca              # double 1.3065629649999999
	.dword	0x3ff2d062ef6c11aa              # double 1.1758756020000001
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3fe92469c0a7bf3b              # double 0.785694958
	.dword	0x3fe1517a7bc720bb              # double 0.54119609999999996
	.dword	0x3fd1a855de72ab5d              # double 0.275899379
	.size	start_pass_fdctmgr.aanscalefactor, 64

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_fdctmgr
	.addrsig_sym forward_DCT
	.addrsig_sym jpeg_fdct_islow
	.addrsig_sym jpeg_fdct_ifast
	.addrsig_sym forward_DCT_float
	.addrsig_sym jpeg_fdct_float
