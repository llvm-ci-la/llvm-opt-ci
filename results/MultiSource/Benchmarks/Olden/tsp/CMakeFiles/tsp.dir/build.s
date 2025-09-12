	.file	"build.c"
	.text
	.globl	build_tree                      # -- Begin function build_tree
	.p2align	5
	.type	build_tree,@function
build_tree:                             # @build_tree
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_3
# %bb.1:
	fmov.d	$fs0, $fa3
	fmov.d	$fs2, $fa2
	fmov.d	$fs1, $fa1
	fmov.d	$fs3, $fa0
	move	$s3, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(drand48)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	fadd.d	$fa1, $fa0, $fa1
	vldi	$vr2, -928
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	vldi	$vr1, -984
	vldi	$vr2, -856
	lu12i.w	$a0, 347447
	ori	$a0, $a0, 3226
	fsel	$fs4, $fa2, $fa1, $fcc0
	move	$a1, $a0
	lu32i.d	$a1, 253454
	lu52i.d	$a1, $a1, -1007
	movgr2fr.d	$fa1, $a1
	fmul.d	$fa0, $fa0, $fa1
	lu32i.d	$a0, 253462
	lu52i.d	$a0, $a0, 1040
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs4
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	bstrpick.d	$a0, $fp, 31, 31
	add.w	$a0, $fp, $a0
	srai.d	$s4, $a0, 1
	bstrpick.d	$a0, $s3, 31, 31
	add.w	$a0, $s3, $a0
	srai.d	$s3, $a0, 1
	add.w	$a2, $s3, $s1
	beqz	$s2, .LBB0_4
# %bb.2:
	fsub.d	$fa1, $fs1, $fs3
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs5, $fs3, $fa0
	move	$a0, $s4
	move	$a1, $zero
	move	$a3, $s3
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs2
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(build_tree)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s3
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(build_tree)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(drand48)
	jirl	$ra, $ra, 0
	fsub.d	$fa1, $fs0, $fs2
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fs4, $fs2, $fa0
	b	.LBB0_5
.LBB0_3:
	move	$s0, $zero
	b	.LBB0_6
.LBB0_4:
	fsub.d	$fa1, $fs0, $fs2
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs4, $fs2, $fa0
	ori	$a1, $zero, 1
	move	$a0, $s4
	move	$a3, $s3
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(build_tree)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 1
	move	$a0, $s4
	move	$a2, $s1
	move	$a3, $s3
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs4
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(build_tree)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(drand48)
	jirl	$ra, $ra, 0
	fsub.d	$fa1, $fs1, $fs3
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fs5, $fs3, $fa0
.LBB0_5:
	st.d	$s2, $s0, 24
	st.d	$s1, $s0, 32
	fst.d	$fs4, $s0, 16
	fst.d	$fs5, $s0, 8
	st.w	$fp, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 40
.LBB0_6:
	move	$a0, $s0
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end0:
	.size	build_tree, .Lfunc_end0-build_tree
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
