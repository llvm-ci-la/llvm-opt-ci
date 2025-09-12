	.file	"z34.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function RotateSize
.LCPI0_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_1:
	.dword	0x40e6800000000000              # double 46080
.LCPI0_2:
	.dword	0x415fffffc0000000              # double 8388607
.LCPI0_3:
	.dword	0xc15fffffc0000000              # double -8388607
	.text
	.globl	RotateSize
	.p2align	5
	.type	RotateSize,@function
RotateSize:                             # @RotateSize
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
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fadd.d	$fa0, $fa0, $fa0
	ld.w	$s3, $a4, 56
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fs3, $fa0, $fa2
	ld.w	$s6, $a4, 52
	movgr2fr.w	$fa0, $s3
	ffint.s.w	$fa0, $fa0
	fcvt.d.s	$fs4, $fa0
	movgr2fr.w	$fa0, $s6
	ld.w	$s5, $a4, 48
	ffint.s.w	$fa0, $fa0
	fcvt.d.s	$fs5, $fa0
	ld.w	$s4, $a4, 60
	movgr2fr.w	$fa0, $s5
	ffint.s.w	$fa0, $fa0
	fneg.s	$fs1, $fa0
	movgr2fr.w	$fa0, $s4
	ffint.s.w	$fa0, $fa0
	fneg.s	$fs2, $fa0
	or	$a0, $s3, $s6
	movgr2fr.d	$fs0, $zero
	fmul.d	$fs7, $fs5, $fs5
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs0
	beqz	$a0, .LBB0_2
# %bb.1:
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fmadd.d	$fa1, $fs4, $fs4, $fs7
	fsqrt.d	$fa1, $fa1
.LBB0_2:
	fst.d	$fa1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fcvt.d.s	$fs6, $fs1
	fcvt.d.s	$fs4, $fs2
	fadd.d	$fs2, $fs3, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	or	$a0, $s5, $s6
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	fmov.d	$fs1, $fs0
	beqz	$a0, .LBB0_4
# %bb.3:
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fmadd.d	$fa1, $fs6, $fs6, $fs7
	fsqrt.d	$fs1, $fa1
.LBB0_4:
	or	$s5, $s5, $s4
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fadd.d	$fs2, $fs3, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fmul.d	$fs3, $fs4, $fs4
	fmov.d	$fa0, $fs0
	fmov.d	$fs5, $fs0
	beqz	$s5, .LBB0_6
# %bb.5:
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fmadd.d	$fa1, $fs6, $fs6, $fs3
	fsqrt.d	$fs5, $fa1
.LBB0_6:
	or	$s3, $s3, $s4
	fld.d	$fa1, $sp, 64                   # 8-byte Folded Reload
	fadd.d	$fs2, $fa1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs6, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmov.d	$fs7, $fs0
	beqz	$s3, .LBB0_8
# %bb.7:
	fmov.d	$fa0, $fs4
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmadd.d	$fa0, $fs4, $fs4, $fs3
	fsqrt.d	$fs7, $fa0
.LBB0_8:
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_2)
	fld.d	$fa6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa1, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa6, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa2, $fa1, $fa0, $fcc0
	fld.d	$fa3, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa3, $fs1, $fa3
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI0_3)
	fmul.d	$fa5, $fs5, $fs2
	fcmp.clt.d	$fcc0, $fa2, $fa5
	fsel	$fs2, $fa5, $fa2, $fcc0
	fmax.d	$fa1, $fa1, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa5
	fsel	$fs3, $fa1, $fa5, $fcc0
	fld.d	$fa1, $sp, 48                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa6, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fld.d	$fa2, $sp, 32                   # 8-byte Folded Reload
	fmul.d	$fa2, $fs1, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa2, $fa0, $fcc0
	fmul.d	$fa3, $fs5, $fs6
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fs1, $fa3, $fa0, $fcc0
	fmax.d	$fa0, $fa1, $fa4
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fs4, $fa0, $fa3, $fcc0
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fadd.d	$fs0, $fa0, $fs0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs5, $fs7, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs7, $fa0
	fcmp.clt.d	$fcc0, $fs4, $fs5
	fsel	$fa1, $fs4, $fs5, $fcc0
	fcmp.clt.d	$fcc0, $fs1, $fs5
	fsel	$fa2, $fs5, $fs1, $fcc0
	fcmp.clt.d	$fcc0, $fs3, $fa0
	fsel	$fa3, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fs2, $fa0
	fsel	$fa0, $fa0, $fs2, $fcc0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a0, $fa2
	sub.d	$a0, $zero, $a0
	st.w	$a0, $s2, 0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $s1, 0
	ftintrz.w.d	$fa1, $fa3
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $s0, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	sub.d	$a0, $zero, $a0
	st.w	$a0, $fp, 0
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	RotateSize, .Lfunc_end0-RotateSize
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
