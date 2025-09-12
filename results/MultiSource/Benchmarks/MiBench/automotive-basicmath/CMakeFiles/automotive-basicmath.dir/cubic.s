	.file	"cubic.c"
	.text
	.globl	SolveCubic                      # -- Begin function SolveCubic
	.p2align	5
	.type	SolveCubic,@function
SolveCubic:                             # @SolveCubic
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa3
	fmov.d	$fs1, $fa2
	fmov.d	$fs2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s1, $a1
	fdiv.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$s8, $a1
	fdiv.d	$fa0, $fs0, $fs2
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 0
	lu32i.d	$s3, 32768
	lu52i.d	$a3, $s3, -1024
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s2, $a1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 139264
	lu52i.d	$fp, $a2, 1024
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$s2, $a1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s5, $a1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $s7
	move	$a3, $s8
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s7, $a1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s4, $a1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 241664
	lu52i.d	$a3, $a0, 1024
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 307200
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$fp, $a1
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s6
	move	$s6, $fp
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$s8, $a1
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $s7
	move	$a3, $s8
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s4, $a1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -262144
	lu52i.d	$a3, $a0, 956
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__letf2)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	lu52i.d	$a3, $s3, 1024
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s1, $a1
	blez	$s2, .LBB0_3
# %bb.1:
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	bceqz	$fcc0, .LBB0_9
.LBB0_2:                                # %.split52
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	fabs.d	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fs0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa1, $a0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s2, $a1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	slti	$a0, $a0, 0
	fneg.d	$fa0, $fs0
	movgr2cf	$fcc0, $a0
	fsel	$fs2, $fa0, $fs0, $fcc0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_8
.LBB0_3:
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_10
.LBB0_4:                                # %.split
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fsqrt.d	$fs1, $fa0
	fcmp.cor.d	$fcc0, $fs1, $fs1
	fmov.d	$fs4, $fs1
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 40
	bceqz	$fcc0, .LBB0_11
.LBB0_5:                                # %.split.split
	vldi	$vr0, -1016
	fdiv.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs1
	ld.d	$a0, $sp, 40
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB0_12
.LBB0_6:                                # %.split.split.split
	vldi	$vr1, -896
	fmul.d	$fs4, $fs4, $fa1
	fmul.d	$fs5, $fa0, $fa1
	lu12i.w	$a0, 345154
	ori	$fp, $a0, 3352
	lu32i.d	$fp, -450053
	lu52i.d	$a0, $fp, 1025
	movgr2fr.d	$fa0, $a0
	fadd.d	$fa0, $fs0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs5, $fa0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, 8
	ld.d	$a0, $sp, 40
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB0_13
.LBB0_7:                                # %.split.split.split.split
	fmul.d	$fs2, $fs4, $fs3
	vldi	$vr0, -896
	fmul.d	$fs1, $fs1, $fa0
	lu52i.d	$a0, $fp, 1026
	movgr2fr.d	$fa0, $a0
	fadd.d	$fa0, $fs0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, 16
.LBB0_8:
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__trunctfdf2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, 0
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB0_9:                                # %call.sqrt53
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	b	.LBB0_2
.LBB0_10:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.LBB0_11:                               # %call.sqrt49
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	b	.LBB0_5
.LBB0_12:                               # %call.sqrt50
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_6
.LBB0_13:                               # %call.sqrt51
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	b	.LBB0_7
.Lfunc_end0:
	.size	SolveCubic, .Lfunc_end0-SolveCubic
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
