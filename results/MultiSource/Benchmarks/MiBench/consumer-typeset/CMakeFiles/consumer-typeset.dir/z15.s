	.file	"z15.c"
	.text
	.globl	MinConstraint                   # -- Begin function MinConstraint
	.p2align	5
	.type	MinConstraint,@function
MinConstraint:                          # @MinConstraint
# %bb.0:
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a1, 0
	slt	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a1, 4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.w	$a2, $a0, 0
	slt	$a2, $a5, $a6
	masknez	$a3, $a6, $a2
	ld.w	$a4, $a0, 8
	ld.w	$a1, $a1, 8
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $a0, 4
	slt	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	st.w	$a1, $a0, 8
	ret
.Lfunc_end0:
	.size	MinConstraint, .Lfunc_end0-MinConstraint
                                        # -- End function
	.globl	SetSizeToMaxForwardConstraint   # -- Begin function SetSizeToMaxForwardConstraint
	.p2align	5
	.type	SetSizeToMaxForwardConstraint,@function
SetSizeToMaxForwardConstraint:          # @SetSizeToMaxForwardConstraint
# %bb.0:
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a2, 8
	slt	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a1, 0
	ld.w	$a1, $a2, 4
	ld.w	$a2, $a2, 0
	sub.w	$a1, $a1, $a3
	slt	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	st.w	$a1, $a0, 0
	ret
.Lfunc_end1:
	.size	SetSizeToMaxForwardConstraint, .Lfunc_end1-SetSizeToMaxForwardConstraint
                                        # -- End function
	.globl	EnlargeToConstraint             # -- Begin function EnlargeToConstraint
	.p2align	5
	.type	EnlargeToConstraint,@function
EnlargeToConstraint:                    # @EnlargeToConstraint
# %bb.0:
	ld.w	$a3, $a2, 4
	ld.w	$a0, $a0, 0
	ld.w	$a2, $a2, 8
	sub.w	$a0, $a3, $a0
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	ret
.Lfunc_end2:
	.size	EnlargeToConstraint, .Lfunc_end2-EnlargeToConstraint
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function ScaleToConstraint
.LCPI3_0:
	.word	0x43000000                      # float 128
	.text
	.globl	ScaleToConstraint
	.p2align	5
	.type	ScaleToConstraint,@function
ScaleToConstraint:                      # @ScaleToConstraint
# %bb.0:
	blez	$a0, .LBB3_6
# %bb.1:
	ld.w	$a3, $a2, 0
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	bstrpick.d	$a3, $a0, 31, 0
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1168
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	add.w	$a0, $a1, $a0
	blez	$a0, .LBB3_3
.LBB3_2:
	ld.w	$a3, $a2, 4
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
.LBB3_3:
	blez	$a1, .LBB3_5
# %bb.4:
	ld.w	$a0, $a2, 8
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	bstrpick.d	$a0, $a1, 31, 0
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
.LBB3_5:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI3_0)
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.LBB3_6:
	vldi	$vr0, -1168
	add.w	$a0, $a1, $a0
	bgtz	$a0, .LBB3_2
	b	.LBB3_3
.Lfunc_end3:
	.size	ScaleToConstraint, .Lfunc_end3-ScaleToConstraint
                                        # -- End function
	.globl	InvScaleConstraint              # -- Begin function InvScaleConstraint
	.p2align	5
	.type	InvScaleConstraint,@function
InvScaleConstraint:                     # @InvScaleConstraint
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	bgtz	$a1, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_2:
	ld.w	$a3, $s1, 0
	lu12i.w	$a0, 2047
	ori	$a1, $a0, 4095
	move	$a2, $a1
	bne	$a3, $a1, .LBB4_7
# %bb.3:
	ld.w	$a3, $s1, 4
	st.w	$a2, $fp, 0
	move	$a2, $a1
	bne	$a3, $a1, .LBB4_8
.LBB4_4:
	ld.w	$a3, $s1, 8
	st.w	$a2, $fp, 4
	beq	$a3, $a1, .LBB4_6
.LBB4_5:
	slli.w	$a1, $a3, 7
	div.w	$a1, $a1, $s0
	ori	$a0, $a0, 4095
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a1, $a1, $a0
.LBB4_6:
	st.w	$a1, $fp, 8
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_7:
	slli.w	$a2, $a3, 7
	div.w	$a2, $a2, $s0
	ori	$a3, $a0, 4095
	slt	$a4, $a2, $a3
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	ld.w	$a3, $s1, 4
	st.w	$a2, $fp, 0
	move	$a2, $a1
	beq	$a3, $a1, .LBB4_4
.LBB4_8:
	slli.w	$a2, $a3, 7
	div.w	$a2, $a2, $s0
	ori	$a3, $a0, 4095
	slt	$a4, $a2, $a3
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	ld.w	$a3, $s1, 8
	st.w	$a2, $fp, 4
	bne	$a3, $a1, .LBB4_5
	b	.LBB4_6
.Lfunc_end4:
	.size	InvScaleConstraint, .Lfunc_end4-InvScaleConstraint
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function RotateConstraint
.LCPI5_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI5_1:
	.dword	0x40e6800000000000              # double 46080
.LCPI5_2:
	.dword	0xb690000000000000              # double -7.0064923216240854E-46
.LCPI5_3:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI5_4:
	.dword	0xc01921fb54442d18              # double -6.2831853071795862
.LCPI5_5:
	.dword	0x3ff921fb54442d18              # double 1.5707963267948966
.LCPI5_6:
	.dword	0xbff921fb54442d18              # double -1.5707963267948966
.LCPI5_7:
	.dword	0x4012d97c7f3321d2              # double 4.7123889803846897
.LCPI5_8:
	.dword	0xc00921fb54442d18              # double -3.1415926535897931
.LCPI5_9:
	.dword	0xc012d97c7f3321d2              # double -4.7123889803846897
.LCPI5_10:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_11:
	.word	0x4afffffe                      # float 8388607
	.text
	.globl	RotateConstraint
	.p2align	5
	.type	RotateConstraint,@function
RotateConstraint:                       # @RotateConstraint
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s0, $a1
	move	$fp, $a0
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fadd.s	$fa1, $fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(.LCPI5_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_2)
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs1
	fdiv.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa1
	bcnez	$fcc0, .LBB5_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI5_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_3)
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fcvt.d.s	$fa2, $fs0
	fadd.d	$fa2, $fa2, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fcvt.s.d	$fs0, $fa2
	bcnez	$fcc0, .LBB5_2
.LBB5_3:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_3)
	fcvt.d.s	$fs2, $fs0
	fcmp.cult.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB5_6
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.LCPI5_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_4)
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph99
                                        # =>This Inner Loop Header: Depth=1
	fadd.d	$fa2, $fs2, $fa1
	fcvt.s.d	$fs0, $fa2
	fcvt.d.s	$fs2, $fs0
	fcmp.cle.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB5_5
.LBB5_6:                                # %._crit_edge
	movgr2fr.w	$fa1, $zero
	fcmp.cult.s	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB5_12
# %bb.7:                                # %._crit_edge
	fcmp.cle.d	$fcc0, $fs2, $fa0
	bceqz	$fcc0, .LBB5_12
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.LCPI5_5)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_5)
	fcmp.cult.d	$fcc0, $fa0, $fs2
	bceqz	$fcc0, .LBB5_13
.LBB5_9:
	fcmp.cult.d	$fcc0, $fs1, $fs2
	bceqz	$fcc0, .LBB5_14
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.LCPI5_7)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_7)
	fcmp.cult.d	$fcc0, $fa1, $fs2
	bceqz	$fcc0, .LBB5_15
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.LCPI5_9)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_9)
	fadd.d	$fa1, $fs2, $fa1
	fcvt.s.d	$fs0, $fa1
	addi.d	$a0, $s2, 4
	move	$a3, $s2
	addi.d	$s2, $s2, 8
	addi.d	$a2, $s3, 8
	addi.d	$a1, $s3, 4
	move	$a4, $s3
	b	.LBB5_16
.LBB5_12:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_5)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_5)
	fcmp.cult.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB5_9
.LBB5_13:
	addi.d	$a1, $s2, 4
	addi.d	$a4, $s2, 8
	move	$a2, $s2
	addi.d	$s2, $s3, 8
	addi.d	$a0, $s3, 4
	move	$a3, $s3
	b	.LBB5_16
.LBB5_14:
	pcalau12i	$a0, %pc_hi20(.LCPI5_6)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_6)
	fadd.d	$fa1, $fs2, $fa1
	fcvt.s.d	$fs0, $fa1
	addi.d	$a3, $s2, 8
	addi.d	$a0, $s2, 4
	addi.d	$a1, $s3, 4
	addi.d	$a4, $s3, 8
	move	$a2, $s3
	b	.LBB5_16
.LBB5_15:
	pcalau12i	$a0, %pc_hi20(.LCPI5_8)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_8)
	fadd.d	$fa1, $fs2, $fa1
	fcvt.s.d	$fs0, $fa1
	addi.d	$a3, $s3, 8
	addi.d	$a0, $s3, 4
	addi.d	$a2, $s2, 8
	addi.d	$a1, $s2, 4
	move	$a4, $s2
	move	$s2, $s3
.LBB5_16:
	ld.w	$s5, $s2, 0
	ld.w	$s6, $a0, 0
	ld.w	$s8, $a3, 0
	ld.w	$s4, $a4, 0
	ld.w	$s3, $a1, 0
	ld.w	$a0, $a2, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	fcvt.d.s	$fs0, $fs0
	fsub.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fs1, $fa0
	beqz	$s1, .LBB5_21
# %bb.17:
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $s3
	ld.w	$s3, $s0, 48
	ld.w	$s2, $s0, 56
	fcvt.d.s	$fs1, $fs1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs2, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fabs.s	$fa1, $fs2
	pcalau12i	$a0, %pc_hi20(.LCPI5_10)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI5_10)
	fcvt.d.s	$fa1, $fa1
	lu12i.w	$a0, 2047
	ori	$s1, $a0, 4095
	fcmp.clt.d	$fcc0, $fa1, $fs1
	pcalau12i	$s7, %pc_hi20(.LCPI5_11)
	move	$a0, $s1
	move	$a1, $s1
	move	$a2, $s1
	bcnez	$fcc0, .LBB5_19
# %bb.18:
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $s8
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s3
	ffint.s.w	$fa2, $fa2
	fld.s	$fa3, $s7, %pc_lo12(.LCPI5_11)
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $s6
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	movgr2fr.w	$fa2, $s2
	ffint.s.w	$fa2, $fa2
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	movgr2fr.w	$fa1, $s5
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fdiv.s	$fa0, $fa0, $fs2
	fcmp.cle.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa0, $fa3, $fcc0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
.LBB5_19:                               # %SemiRotateConstraint.exit70
	st.w	$a0, $fp, 0
	st.w	$a1, $fp, 4
	st.w	$a2, $fp, 8
	ld.w	$s2, $s0, 56
	ld.w	$s0, $s0, 48
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fabs.s	$fa1, $fs2
	fcvt.d.s	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa1, $fs1
	move	$a0, $s1
	move	$a1, $s1
	bcnez	$fcc0, .LBB5_26
# %bb.20:
	fcvt.s.d	$fa0, $fa0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s2
	ffint.s.w	$fa2, $fa2
	fld.s	$fa3, $s7, %pc_lo12(.LCPI5_11)
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$s1, $fa1
	movgr2fr.w	$fa1, $s4
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	movgr2fr.w	$fa2, $s0
	ffint.s.w	$fa2, $fa2
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fdiv.s	$fa0, $fa0, $fs2
	b	.LBB5_25
.LBB5_21:
	ld.w	$s2, $s0, 52
	ld.w	$s7, $s0, 60
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs3, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fabs.s	$fa1, $fs3
	pcalau12i	$a0, %pc_hi20(.LCPI5_10)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI5_10)
	fcvt.d.s	$fa1, $fa1
	lu12i.w	$a0, 2047
	ori	$s1, $a0, 4095
	fcmp.clt.d	$fcc0, $fa1, $fs2
	move	$a0, $s1
	move	$a1, $s1
	move	$a2, $s1
	bcnez	$fcc0, .LBB5_23
# %bb.22:
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $s8
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s2
	ffint.s.w	$fa2, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI5_11)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI5_11)
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs3
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $s6
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	movgr2fr.w	$fa2, $s7
	ffint.s.w	$fa2, $fa2
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs3
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	movgr2fr.w	$fa1, $s5
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fdiv.s	$fa0, $fa0, $fs3
	fcmp.cle.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa0, $fa3, $fcc0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
.LBB5_23:                               # %SemiRotateConstraint.exit
	st.w	$a0, $fp, 0
	st.w	$a1, $fp, 4
	st.w	$a2, $fp, 8
	ld.w	$s2, $s0, 60
	ld.w	$s0, $s0, 52
	fcvt.d.s	$fs0, $fs1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fabs.s	$fa1, $fs1
	fcvt.d.s	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa1, $fs2
	move	$a0, $s1
	move	$a1, $s1
	bcnez	$fcc0, .LBB5_26
# %bb.24:
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $s4
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s2
	ffint.s.w	$fa2, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI5_11)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI5_11)
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs1
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$s1, $fa1
	movgr2fr.w	$fa1, $s3
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	movgr2fr.w	$fa2, $s0
	ffint.s.w	$fa2, $fa2
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	fdiv.s	$fa1, $fa1, $fs1
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa1, $fa1, $fa3, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fdiv.s	$fa0, $fa0, $fs1
.LBB5_25:                               # %SemiRotateConstraint.exit77
	fcmp.cle.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa0, $fa3, $fcc0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
.LBB5_26:                               # %SemiRotateConstraint.exit77
	ld.w	$a2, $fp, 0
	slt	$a3, $a2, $s1
	masknez	$a4, $s1, $a3
	ld.w	$a5, $fp, 4
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	st.w	$a2, $fp, 0
	slt	$a2, $a5, $a0
	masknez	$a0, $a0, $a2
	ld.w	$a3, $fp, 8
	maskeqz	$a2, $a5, $a2
	or	$a0, $a2, $a0
	st.w	$a0, $fp, 4
	slt	$a0, $a3, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 8
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end5:
	.size	RotateConstraint, .Lfunc_end5-RotateConstraint
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function InsertScale
.LCPI6_0:
	.word	0x43000000                      # float 128
	.text
	.globl	InsertScale
	.p2align	5
	.type	InsertScale,@function
InsertScale:                            # @InsertScale
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a2, $a0, 48
	ld.w	$a0, $a0, 56
	blez	$a2, .LBB6_9
# %bb.1:
	ld.w	$a3, $a1, 0
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	bstrpick.d	$a3, $a2, 31, 0
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1168
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	add.w	$a2, $a0, $a2
	blez	$a2, .LBB6_3
.LBB6_2:
	ld.w	$a3, $a1, 4
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
.LBB6_3:
	blez	$a0, .LBB6_5
# %bb.4:
	ld.w	$a2, $a1, 8
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
.LBB6_5:                                # %ScaleToConstraint.exit
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI6_0)
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$s4, $fa0
	ori	$a0, $zero, 26
	blt	$s4, $a0, .LBB6_8
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s3, 34
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s2, $a2, %got_pc_lo12(zz_size)
	st.w	$a0, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s1, $a2, %got_pc_lo12(zz_free)
	slli.d	$a2, $a0, 3
	ldx.d	$s0, $s1, $a2
	beqz	$s0, .LBB6_10
# %bb.7:
	alsl.d	$a0, $a0, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s0, $a2, 0
	ld.d	$a2, $s0, 0
	st.d	$a2, $a0, 0
	b	.LBB6_11
.LBB6_8:
	move	$a0, $zero
	b	.LBB6_19
.LBB6_9:
	vldi	$vr0, -1168
	add.w	$a2, $a0, $a2
	bgtz	$a2, .LBB6_2
	b	.LBB6_3
.LBB6_10:
	pcalau12i	$a2, %got_pc_hi20(no_fpos)
	ld.d	$a2, $a2, %got_pc_lo12(no_fpos)
	ld.d	$a2, $a2, 0
	move	$s0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB6_11:
	ori	$a0, $zero, 34
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.wu	$a0, $fp, 40
	ld.wu	$a2, $s0, 40
	lu12i.w	$a3, -393217
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a0, $a0, 29
	bstrins.d	$a2, $a0, 30, 29
	st.w	$a2, $s0, 40
	ld.h	$a0, $fp, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $fp, 36
	ld.wu	$a2, $s0, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a0
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $s0, 36
	ld.wu	$a2, $fp, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a0, $a2, 63, 20
	st.w	$a0, $s0, 36
	st.w	$s4, $s0, 64
	ld.w	$a0, $fp, 48
	mul.w	$a0, $a0, $s4
	bstrpick.d	$a2, $a0, 62, 56
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 7
	st.w	$a0, $s0, 48
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 8
	sub.w	$a0, $a2, $a0
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $s0, 56
	ori	$a0, $zero, 128
	st.w	$a0, $s0, 72
	ld.w	$a0, $fp, 52
	st.w	$a0, $s0, 52
	ld.w	$a0, $fp, 60
	st.w	$a0, $s0, 60
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB6_13
# %bb.12:
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 16
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	b	.LBB6_14
.LBB6_13:                               # %.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB6_14:
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB6_16
# %bb.15:
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB6_17
.LBB6_16:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB6_17:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a4, 0
	ld.d	$a5, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a0, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a7, 8
	st.d	$a2, $a3, 0
	st.d	$fp, $a4, 0
	ori	$a0, $zero, 1
	beqz	$a2, .LBB6_19
# %bb.18:
	ld.d	$a3, $fp, 16
	ld.d	$a4, $a2, 16
	st.d	$a3, $a1, 0
	st.d	$a4, $fp, 16
	st.d	$fp, $a4, 24
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
.LBB6_19:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	InsertScale, .Lfunc_end6-InsertScale
                                        # -- End function
	.globl	Constrained                     # -- Begin function Constrained
	.p2align	5
	.type	Constrained,@function
Constrained:                            # @Constrained
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
	move	$s2, $a3
	move	$s0, $a2
	move	$fp, $a1
	move	$s4, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(SetLengthDim)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 24
	beq	$a0, $s4, .LBB7_2
# %bb.1:
	ld.bu	$a0, $s4, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB7_3
	b	.LBB7_5
.LBB7_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB7_5
.LBB7_3:
	ld.h	$a0, $s4, 42
	addi.d	$a1, $s0, -1
	sltu	$a1, $zero, $a1
	andi	$a2, $a0, 16
	sltui	$a2, $a2, 1
	or	$a1, $a1, $a2
	beqz	$a1, .LBB7_88
# %bb.4:
	andi	$a0, $a0, 8
	bnez	$a0, .LBB7_88
.LBB7_5:
	addi.d	$a0, $s4, 16
	addi.d	$a1, $s4, 24
	sltui	$s8, $s0, 1
	masknez	$a0, $a0, $s8
	maskeqz	$a1, $a1, $s8
	or	$s7, $a1, $a0
	ld.d	$s6, $s7, 0
	addi.d	$s5, $s6, 8
	ori	$a1, $zero, 99
	pcalau12i	$a0, %pc_hi20(.LJTI7_0)
	addi.d	$a2, $a0, %pc_lo12(.LJTI7_0)
	move	$s3, $zero
	ori	$a3, $zero, 1
	move	$a0, $s5
.LBB7_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	ld.d	$s1, $a0, 0
	ld.bu	$a0, $s1, 32
	bltu	$a1, $a0, .LBB7_60
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $a2, $a4
	add.d	$a4, $a2, $a4
	jr	$a4
.LBB7_8:                                # %.preheader322.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a4, $s1
	.p2align	4, , 16
.LBB7_9:                                # %.preheader322
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 16
	ld.bu	$a5, $a4, 32
	beqz	$a5, .LBB7_9
# %bb.10:                               # %.preheader322
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a0, $s1, 8
	bne	$a5, $a3, .LBB7_6
# %bb.11:                               #   in Loop: Header=BB7_6 Depth=1
	ld.hu	$a4, $a4, 44
	andi	$a4, $a4, 256
	sltui	$a4, $a4, 1
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $s3, $a4
	or	$s3, $a4, $a5
	b	.LBB7_6
.LBB7_12:
	addi.d	$a0, $a0, -19
	sltui	$a0, $a0, 1
	addi.d	$a1, $s0, -1
	sltu	$a1, $zero, $a1
	beq	$a1, $a0, .LBB7_40
# %bb.13:
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	lu12i.w	$s6, 2047
	ori	$a0, $s6, 4095
	bne	$a1, $a0, .LBB7_16
# %bb.14:
	ld.w	$a2, $sp, 56
	ori	$a1, $s6, 4095
	bne	$a2, $a1, .LBB7_16
# %bb.15:
	ld.w	$a2, $sp, 60
	move	$a7, $a0
	move	$t1, $a0
	beq	$a2, $a1, .LBB7_134
.LBB7_16:
	ld.d	$a0, $s7, 0
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 8
	addi.d	$a5, $sp, 24
	addi.d	$a6, $sp, 68
	move	$a1, $s3
	pcaddu18i	$ra, %call36(SetNeighbours)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	beqz	$a1, .LBB7_93
# %bb.17:
	ld.d	$a0, $sp, 32
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a0, $a0, 56
	addi.d	$a2, $a1, 44
	ori	$a3, $zero, 151
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ExtraGap)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB7_94
.LBB7_18:
	addi.d	$a0, $a0, -30
	sltu	$a0, $zero, $a0
	xor	$a0, $s8, $a0
	beqz	$a0, .LBB7_35
	b	.LBB7_88
.LBB7_19:
	ld.w	$a0, $s1, 64
	st.w	$a0, $fp, 0
	ld.w	$a0, $s1, 68
	st.w	$a0, $fp, 4
	ld.w	$a0, $s1, 72
	st.w	$a0, $fp, 8
	b	.LBB7_89
.LBB7_20:
	addi.d	$a0, $a0, -38
	sltu	$a0, $zero, $a0
	beq	$s8, $a0, .LBB7_35
# %bb.21:
	alsl.d	$a0, $s0, $s1, 2
	ld.w	$a1, $a0, 48
	st.w	$a1, $fp, 0
	ld.w	$a2, $a0, 56
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 4
	ld.w	$a0, $a0, 56
	st.w	$a0, $fp, 8
	ld.d	$a4, $s1, 24
	beq	$a4, $s1, .LBB7_85
# %bb.22:                               # %.lr.ph.preheader
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	lu12i.w	$a0, 12312
	ori	$a3, $a0, 512
	lu32i.d	$a3, 3312
	move	$a0, $s1
.LBB7_23:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
	beqz	$s0, .LBB7_25
# %bb.24:                               #   in Loop: Header=BB7_23 Depth=1
	ld.d	$a4, $a0, 16
.LBB7_25:                               # %.preheader595
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$a0, $a4
.LBB7_26:                               #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a4, $a0, 32
	beqz	$a4, .LBB7_26
# %bb.27:                               #   in Loop: Header=BB7_23 Depth=1
	bltu	$a1, $a4, .LBB7_85
# %bb.28:                               #   in Loop: Header=BB7_23 Depth=1
	sll.d	$a5, $a2, $a4
	and	$a5, $a5, $a3
	beqz	$a5, .LBB7_83
# %bb.29:                               # %.loopexit
                                        #   in Loop: Header=BB7_23 Depth=1
	alsl.d	$a4, $s0, $a0, 2
	ld.w	$a5, $a4, 48
	st.w	$a5, $fp, 0
	ld.w	$a6, $a4, 56
	add.d	$a5, $a6, $a5
	st.w	$a5, $fp, 4
	ld.w	$a4, $a4, 56
	st.w	$a4, $fp, 8
	ld.d	$a4, $a0, 24
	bne	$a4, $a0, .LBB7_23
	b	.LBB7_85
.LBB7_30:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 32
	addi.d	$a0, $a0, -26
	sltu	$a0, $zero, $a0
	beq	$s8, $a0, .LBB7_89
# %bb.31:
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s1, 64
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 0
	ld.w	$a0, $fp, 4
	ld.w	$a1, $s1, 68
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 4
	ld.w	$a0, $fp, 8
	ld.w	$a1, $s1, 72
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 8
	st.d	$s1, $s2, 0
	b	.LBB7_89
.LBB7_32:
	addi.d	$a0, $a0, -32
	sltu	$a0, $zero, $a0
	xor	$a0, $s8, $a0
	bnez	$a0, .LBB7_88
	b	.LBB7_35
.LBB7_33:
	addi.d	$a0, $a0, -28
	sltu	$a0, $zero, $a0
	beq	$s8, $a0, .LBB7_35
# %bb.34:
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(FindShift)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	ld.w	$a2, $sp, 56
	slt	$a3, $a1, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	ld.w	$a3, $sp, 60
	sub.d	$a1, $a1, $a0
	st.w	$a1, $fp, 0
	st.w	$a2, $fp, 4
	slt	$a1, $a3, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 8
	b	.LBB7_89
.LBB7_35:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
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
	pcaddu18i	$t8, %call36(Constrained)
	jr	$t8
.LBB7_36:
	addi.d	$a0, $a0, -16
	sltu	$a0, $zero, $a0
	xor	$a0, $s8, $a0
	bnez	$a0, .LBB7_38
# %bb.37:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_38:
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 56
	lu12i.w	$a1, 2047
	ori	$a1, $a1, 4095
	bne	$a0, $a1, .LBB7_57
# %bb.39:                               # %.thread
	ld.w	$a2, $sp, 52
	slt	$a3, $a2, $a1
	masknez	$a4, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	b	.LBB7_58
.LBB7_40:
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 52
	ld.w	$a0, $sp, 56
	ld.w	$a1, $sp, 60
	lu12i.w	$a3, 2047
	ori	$a3, $a3, 4095
	bne	$a2, $a3, .LBB7_49
# %bb.41:
	bne	$a0, $a3, .LBB7_49
# %bb.42:
	bne	$a1, $a3, .LBB7_49
# %bb.43:
	move	$a0, $a3
	bstrins.d	$a0, $a3, 54, 32
	st.d	$a0, $fp, 0
	st.w	$a3, $fp, 8
	b	.LBB7_89
.LBB7_44:
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 76
	addi.d	$a3, $sp, 52
	addi.d	$a4, $sp, 8
	move	$a0, $fp
	move	$a1, $s4
	move	$a5, $s0
	pcaddu18i	$ra, %call36(RotateConstraint)
	jirl	$ra, $ra, 0
	b	.LBB7_89
.LBB7_45:
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB7_86
# %bb.46:                               # %.critedge301
	ld.w	$a1, $s1, 72
	b	.LBB7_87
.LBB7_47:
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB7_88
# %bb.48:
	ld.w	$a2, $s1, 64
	ld.w	$a0, $s1, 68
	ld.w	$a1, $s1, 72
	st.w	$a2, $sp, 52
	st.w	$a0, $sp, 56
	st.w	$a1, $sp, 60
.LBB7_49:
	ld.d	$a4, $s6, 0
	beq	$a4, $s1, .LBB7_61
# %bb.50:                               # %.preheader320.preheader
	ori	$a3, $zero, 1
	b	.LBB7_52
	.p2align	4, , 16
.LBB7_51:                               # %.loopexit321
                                        #   in Loop: Header=BB7_52 Depth=1
	ld.d	$a4, $a4, 0
	beq	$a4, $s1, .LBB7_61
.LBB7_52:                               # %.preheader320
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_53 Depth 2
	move	$a5, $a4
	.p2align	4, , 16
.LBB7_53:                               #   Parent Loop BB7_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 16
	ld.bu	$a6, $a5, 32
	beqz	$a6, .LBB7_53
# %bb.54:                               #   in Loop: Header=BB7_52 Depth=1
	bne	$a6, $a3, .LBB7_51
# %bb.55:                               #   in Loop: Header=BB7_52 Depth=1
	ld.hu	$a5, $a5, 44
	andi	$a5, $a5, 512
	bnez	$a5, .LBB7_51
# %bb.56:
	move	$a5, $zero
	b	.LBB7_62
.LBB7_57:
	alsl.d	$a1, $s0, $s1, 2
	ld.w	$a2, $a1, 56
	ld.w	$a3, $sp, 52
	sub.w	$a2, $a0, $a2
	slt	$a4, $a3, $a2
	ld.w	$a1, $a1, 48
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	sub.w	$a1, $a0, $a1
.LBB7_58:
	ld.w	$a3, $sp, 60
	slt	$a4, $a3, $a1
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
.LBB7_59:
	st.w	$a2, $fp, 0
	b	.LBB7_92
.LBB7_60:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$fp, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $fp
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
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB7_61:
	ori	$a5, $zero, 1
.LBB7_62:                               # %._crit_edge
	ld.d	$a3, $s5, 0
	beq	$a3, $s1, .LBB7_69
# %bb.63:                               # %.preheader318.preheader
	ori	$a6, $zero, 1
	b	.LBB7_65
	.p2align	4, , 16
.LBB7_64:                               # %.loopexit319
                                        #   in Loop: Header=BB7_65 Depth=1
	ld.d	$a3, $a3, 8
	beq	$a3, $s1, .LBB7_69
.LBB7_65:                               # %.preheader318
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_66 Depth 2
	move	$a7, $a3
	.p2align	4, , 16
.LBB7_66:                               #   Parent Loop BB7_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a7, 16
	ld.bu	$t0, $a7, 32
	beqz	$t0, .LBB7_66
# %bb.67:                               #   in Loop: Header=BB7_65 Depth=1
	bne	$t0, $a6, .LBB7_64
# %bb.68:                               #   in Loop: Header=BB7_65 Depth=1
	ld.hu	$a7, $a7, 44
	andi	$a7, $a7, 512
	bnez	$a7, .LBB7_64
	b	.LBB7_75
.LBB7_69:                               # %._crit_edge398
	beqz	$a5, .LBB7_74
# %bb.70:
	ld.bu	$a3, $s1, 32
	ori	$a5, $zero, 8
	bne	$a3, $a5, .LBB7_72
# %bb.71:
	ld.hu	$a3, $s1, 42
	andi	$a3, $a3, 32
	bnez	$a3, .LBB7_74
.LBB7_72:
	lu12i.w	$a3, 2047
	ori	$a3, $a3, 4095
	bne	$a0, $a3, .LBB7_102
# %bb.73:                               # %.thread312
	slt	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a5
	b	.LBB7_103
.LBB7_74:
	move	$a3, $s1
.LBB7_75:                               # %.thread310
	ld.d	$a5, $a4, 8
	beq	$a5, $a3, .LBB7_90
# %bb.76:                               # %.preheader.lr.ph
	move	$a4, $zero
	move	$a2, $zero
	ori	$a6, $zero, 1
	ori	$a7, $zero, 20
	b	.LBB7_78
	.p2align	4, , 16
.LBB7_77:                               # %.loopexit317
                                        #   in Loop: Header=BB7_78 Depth=1
	ld.d	$a5, $a5, 8
	beq	$a5, $a3, .LBB7_91
.LBB7_78:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_79 Depth 2
	move	$t0, $a5
	.p2align	4, , 16
.LBB7_79:                               #   Parent Loop BB7_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $t0, 16
	ld.bu	$t1, $t0, 32
	beqz	$t1, .LBB7_79
# %bb.80:                               #   in Loop: Header=BB7_78 Depth=1
	beq	$t1, $a6, .LBB7_77
# %bb.81:                               #   in Loop: Header=BB7_78 Depth=1
	addi.d	$t1, $t1, -119
	bltu	$t1, $a7, .LBB7_77
# %bb.82:                               #   in Loop: Header=BB7_78 Depth=1
	alsl.d	$t0, $s0, $t0, 2
	ld.w	$t1, $t0, 48
	slt	$t2, $t1, $a2
	ld.w	$t0, $t0, 56
	masknez	$t1, $t1, $t2
	maskeqz	$a2, $a2, $t2
	or	$a2, $a2, $t1
	slt	$t1, $t0, $a4
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	b	.LBB7_77
.LBB7_83:
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a4
	lu12i.w	$a2, 6
	and	$a1, $a1, $a2
	beqz	$a1, .LBB7_85
# %bb.84:
	ld.w	$a1, $a0, 64
	st.w	$a1, $fp, 0
	ld.w	$a1, $a0, 68
	st.w	$a1, $fp, 4
	ld.w	$a0, $a0, 72
	st.w	$a0, $fp, 8
.LBB7_85:                               # %.critedge
	st.d	$s1, $s2, 0
	b	.LBB7_89
.LBB7_86:
	ld.w	$a1, $s1, 64
	beqz	$a1, .LBB7_88
.LBB7_87:
	addi.d	$a2, $sp, 52
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InvScaleConstraint)
	jirl	$ra, $ra, 0
	b	.LBB7_89
.LBB7_88:
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, 8
	bstrins.d	$a0, $a0, 54, 32
	st.d	$a0, $fp, 0
.LBB7_89:
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
.LBB7_90:
	move	$a2, $zero
	move	$a4, $zero
.LBB7_91:                               # %._crit_edge406
	slt	$a3, $a0, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	lu12i.w	$a1, 2047
	ori	$a1, $a1, 4095
	xor	$a3, $a0, $a1
	sltui	$a3, $a3, 1
	sub.d	$a4, $a0, $a4
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a4, $a1, $a4
	sub.d	$a2, $a0, $a2
	masknez	$a2, $a2, $a3
	or	$a1, $a1, $a2
	st.w	$a4, $fp, 0
.LBB7_92:
	st.w	$a0, $fp, 4
	st.w	$a1, $fp, 8
	b	.LBB7_89
.LBB7_93:
	move	$s2, $zero
.LBB7_94:
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB7_96
# %bb.95:
	ld.d	$a1, $sp, 24
	alsl.d	$a1, $s0, $a1, 2
	ld.w	$a1, $a1, 48
	addi.d	$a2, $a0, 44
	ori	$a3, $zero, 153
	move	$a0, $zero
	pcaddu18i	$ra, %call36(ExtraGap)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB7_97
.LBB7_96:
	move	$s3, $zero
.LBB7_97:
	ld.bu	$a0, $s4, 32
	ld.d	$a3, $sp, 40
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB7_100
# %bb.98:
	beqz	$a3, .LBB7_104
# %bb.99:
	ld.d	$a0, $sp, 32
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a0, $a0, 56
	addi.d	$a3, $a3, 44
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB7_105
.LBB7_100:
	alsl.d	$s7, $s0, $s4, 2
	beqz	$a3, .LBB7_107
# %bb.101:
	ld.d	$a0, $sp, 32
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a0, $a0, 56
	ld.w	$a1, $s7, 48
	ld.w	$a2, $s7, 56
	addi.d	$a3, $a3, 44
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	alsl.d	$a1, $s0, $a1, 2
	ld.d	$a2, $sp, 40
	ld.w	$a1, $a1, 56
	move	$s4, $a0
	addi.d	$a3, $a2, 44
	move	$a0, $a1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	sub.d	$s5, $s4, $a0
	b	.LBB7_108
.LBB7_102:
	alsl.d	$a3, $s0, $s1, 2
	ld.w	$a4, $a3, 56
	sub.w	$a4, $a0, $a4
	slt	$a5, $a2, $a4
	ld.w	$a3, $a3, 48
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	sub.w	$a3, $a0, $a3
.LBB7_103:
	slt	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	b	.LBB7_59
.LBB7_104:
	move	$s4, $zero
.LBB7_105:
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB7_114
# %bb.106:
	ld.d	$a1, $sp, 24
	alsl.d	$a2, $s0, $a1, 2
	ld.w	$a1, $a2, 48
	ld.w	$a2, $a2, 56
	addi.d	$a3, $a0, 44
	move	$a0, $zero
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_115
.LBB7_107:
	ld.w	$s5, $s7, 48
.LBB7_108:
	ld.d	$a3, $sp, 8
	ld.w	$a0, $s7, 56
	beqz	$a3, .LBB7_110
# %bb.109:
	ld.d	$a1, $sp, 24
	alsl.d	$a2, $s0, $a1, 2
	ld.w	$a1, $a2, 48
	ld.w	$a2, $a2, 56
	addi.d	$a3, $a3, 44
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	alsl.d	$a2, $s0, $a1, 2
	ld.w	$a1, $a2, 48
	ld.d	$a3, $sp, 8
	ld.w	$a2, $a2, 56
	move	$s4, $a0
	addi.d	$a3, $a3, 44
	move	$a0, $zero
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s4, $a0
.LBB7_110:
	ld.w	$a2, $sp, 68
	ori	$a1, $zero, 153
	beq	$a2, $a1, .LBB7_121
# %bb.111:
	ori	$a1, $zero, 152
	beq	$a2, $a1, .LBB7_120
# %bb.112:
	ori	$a1, $zero, 151
	bne	$a2, $a1, .LBB7_127
# %bb.113:
	alsl.d	$a2, $s0, $s1, 2
	ld.w	$a3, $a2, 48
	ld.w	$a2, $a2, 56
	add.d	$a0, $a0, $s5
	sub.w	$a3, $a3, $a0
	b	.LBB7_130
.LBB7_114:
	move	$s5, $zero
.LBB7_115:
	ld.d	$a0, $sp, 40
	ld.d	$a3, $sp, 8
	beqz	$a0, .LBB7_118
# %bb.116:
	ld.d	$a0, $sp, 32
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a0, $a0, 56
	beqz	$a3, .LBB7_123
# %bb.117:
	ld.d	$a1, $sp, 24
	alsl.d	$a2, $s0, $a1, 2
	ld.w	$a1, $a2, 48
	ld.w	$a2, $a2, 56
	addi.d	$a3, $a3, 44
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	b	.LBB7_123
.LBB7_118:
	beqz	$a3, .LBB7_122
# %bb.119:
	ld.d	$a0, $sp, 24
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a0, $a0, 48
	b	.LBB7_123
.LBB7_120:
	alsl.d	$a2, $s0, $s1, 2
	ld.w	$a3, $a2, 48
	ld.w	$a2, $a2, 56
	sub.w	$a3, $a3, $s5
	sub.d	$a2, $a2, $a0
	b	.LBB7_130
.LBB7_121:
	alsl.d	$a2, $s0, $s1, 2
	ld.w	$a4, $a2, 56
	ld.w	$a3, $a2, 48
	add.d	$a0, $a0, $s5
	sub.d	$a2, $a4, $a0
	b	.LBB7_130
.LBB7_122:
	move	$a0, $zero
.LBB7_123:
	ld.w	$a2, $sp, 68
	ori	$a1, $zero, 153
	beq	$a2, $a1, .LBB7_129
# %bb.124:
	ori	$a1, $zero, 152
	beq	$a2, $a1, .LBB7_128
# %bb.125:
	ori	$a1, $zero, 151
	bne	$a2, $a1, .LBB7_127
# %bb.126:
	alsl.d	$a2, $s0, $s1, 2
	ld.w	$a3, $a2, 48
	ld.w	$a2, $a2, 56
	add.d	$a4, $s5, $s4
	sub.d	$a0, $a4, $a0
	add.w	$a3, $a0, $a3
	b	.LBB7_130
.LBB7_127:                              # %.thread304
	ld.w	$a6, $sp, 52
	move	$a1, $a2
                                        # implicit-def: $r7
                                        # implicit-def: $r6
	b	.LBB7_132
.LBB7_128:
	alsl.d	$a0, $s0, $s1, 2
	ld.w	$a0, $a0, 56
	move	$a3, $zero
	add.d	$a2, $a0, $s5
	b	.LBB7_130
.LBB7_129:
	alsl.d	$a2, $s0, $s1, 2
	ld.w	$a4, $a2, 56
	ld.w	$a3, $a2, 48
	add.d	$a2, $s5, $s4
	sub.d	$a0, $a2, $a0
	add.d	$a2, $a0, $a4
.LBB7_130:
	ld.w	$a6, $sp, 52
	bge	$a6, $a3, .LBB7_132
# %bb.131:
	addi.d	$a0, $zero, -1
	b	.LBB7_133
.LBB7_132:
	ld.w	$a4, $sp, 56
	add.w	$a5, $a2, $a3
	addi.d	$a0, $zero, -1
	bge	$a4, $a5, .LBB7_135
.LBB7_133:
	addi.d	$a7, $zero, -1
	addi.d	$t1, $zero, -1
.LBB7_134:                              # %CatConstrained.exit.sink.split
	st.w	$a0, $fp, 0
	st.w	$a7, $fp, 4
	st.w	$t1, $fp, 8
	b	.LBB7_89
.LBB7_135:
	ld.w	$t0, $sp, 60
	addi.w	$t2, $a2, 0
	addi.d	$a7, $zero, -1
	addi.d	$t1, $zero, -1
	blt	$t0, $t2, .LBB7_134
# %bb.136:
	ori	$a0, $zero, 153
	beq	$a1, $a0, .LBB7_141
# %bb.137:
	ori	$a0, $zero, 152
	beq	$a1, $a0, .LBB7_140
# %bb.138:
	ori	$a0, $zero, 151
	bne	$a1, $a0, .LBB7_89
# %bb.139:
	ori	$a1, $s6, 4095
	xor	$a0, $a6, $a1
	sltui	$a0, $a0, 1
	sub.w	$a2, $a6, $a3
	b	.LBB7_142
.LBB7_140:
	ori	$a1, $s6, 4095
	xor	$a0, $a6, $a1
	sltui	$a0, $a0, 1
	sub.w	$a3, $a6, $a3
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	xor	$a3, $a4, $a1
	sltui	$a3, $a3, 1
	sub.w	$a4, $a4, $a5
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	xor	$a4, $t0, $a1
	sltui	$a4, $a4, 1
	sub.w	$a2, $t0, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a1, $a4
	or	$a2, $a4, $a2
	slt	$a4, $a0, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a5
	slt	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a5
	add.w	$a0, $a0, $s2
	slt	$a4, $a0, $a1
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $a1, $a4
	or	$a0, $a0, $a4
	add.d	$a4, $s3, $s2
	add.w	$a3, $a4, $a3
	b	.LBB7_143
.LBB7_141:
	ori	$a1, $s6, 4095
	xor	$a0, $t0, $a1
	sltui	$a0, $a0, 1
	sub.w	$a2, $t0, $a2
.LBB7_142:                              # %CatConstrained.exit.sink.split
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	xor	$a2, $a4, $a1
	sltui	$a2, $a2, 1
	sub.w	$a3, $a4, $a5
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a2, $a0, $a2
	add.w	$a0, $a2, $s2
	slt	$a3, $a0, $a1
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a1, $a3
	or	$a0, $a0, $a3
	add.d	$a3, $s3, $s2
	add.w	$a3, $a3, $a2
.LBB7_143:                              # %CatConstrained.exit.sink.split
	slt	$a4, $a3, $a1
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a1, $a4
	or	$a7, $a3, $a4
	add.w	$a2, $a2, $s3
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$t1, $a2, $a1
	b	.LBB7_134
.Lfunc_end7:
	.size	Constrained, .Lfunc_end7-Constrained
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_8-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_47-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_19-.LJTI7_0
	.word	.LBB7_19-.LJTI7_0
	.word	.LBB7_36-.LJTI7_0
	.word	.LBB7_36-.LJTI7_0
	.word	.LBB7_12-.LJTI7_0
	.word	.LBB7_12-.LJTI7_0
	.word	.LBB7_12-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_30-.LJTI7_0
	.word	.LBB7_30-.LJTI7_0
	.word	.LBB7_33-.LJTI7_0
	.word	.LBB7_33-.LJTI7_0
	.word	.LBB7_18-.LJTI7_0
	.word	.LBB7_18-.LJTI7_0
	.word	.LBB7_32-.LJTI7_0
	.word	.LBB7_32-.LJTI7_0
	.word	.LBB7_45-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_20-.LJTI7_0
	.word	.LBB7_20-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_44-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_60-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
	.word	.LBB7_35-.LJTI7_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"InvScaleConstraint: sf <= 0!"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"RotateConstraint: theta!"
	.size	.L.str.2, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Constrained: x has no parent!"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Constrained: COL_THR!"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"assert failed in %s %s"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Constrained:"
	.size	.L.str.7, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
