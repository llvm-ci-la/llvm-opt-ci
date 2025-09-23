	.file	"build.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function build_tree
.LCPI0_0:
	.dword	0x3fe999999999999a              # double 0.80000000000000004
	.dword	0x3fc47ae147ae147b              # double 0.16
	.text
	.globl	build_tree
	.p2align	5
	.type	build_tree,@function
build_tree:                             # @build_tree
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 152
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 21
	move	$a0, $zero
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	ori	$a0, $zero, 21
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	ori	$a0, $zero, 42
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 80
	ori	$a0, $zero, 63
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
	ori	$a0, $zero, 84
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 96
	ori	$a0, $zero, 105
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 104
	ori	$a0, $zero, 126
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 112
	ori	$a0, $zero, 147
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 120
	ori	$a0, $zero, 168
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 128
	ori	$a0, $zero, 189
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 136
	ori	$a0, $zero, 210
	ori	$a1, $zero, 21
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.d	$a0, $fp, 144
	vst	$vr0, $fp, 16
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	build_tree, .Lfunc_end0-build_tree
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function build_lateral
.LCPI1_0:
	.dword	0x3ecbf647612f3696              # double 3.3333333333333333E-6
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	build_lateral
	.p2align	5
	.type	build_lateral,@function
build_lateral:                          # @build_lateral
# %bb.0:
	beqz	$a1, .LBB1_2
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s0, $s0, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(build_lateral)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 6
	mul.w	$a0, $fp, $a1
	mul.w	$a1, $s0, $a1
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(build_branch)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	move	$a1, $a0
	move	$a0, $s1
	st.d	$s2, $s1, 48
	st.d	$a1, $s1, 56
	vst	$vr0, $s1, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_2:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	build_lateral, .Lfunc_end1-build_lateral
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function build_branch
.LCPI2_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.dword	0x3ef4f8b588e368f1              # double 2.0000000000000002E-5
	.text
	.globl	build_branch
	.p2align	5
	.type	build_branch,@function
build_branch:                           # @build_branch
# %bb.0:
	beqz	$a2, .LBB2_2
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 152
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a2, $s2, -1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(build_branch)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 56
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 64
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 72
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 80
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 88
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 96
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 104
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 112
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 120
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 128
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	st.d	$a0, $fp, 136
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	move	$a1, $a0
	move	$a0, $fp
	vldi	$vr1, -912
	vst	$vr1, $a1, 0
	st.d	$a1, $fp, 144
	vst	$vr0, $fp, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_2:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	build_branch, .Lfunc_end2-build_branch
                                        # -- End function
	.globl	build_leaf                      # -- Begin function build_leaf
	.p2align	5
	.type	build_leaf,@function
build_leaf:                             # @build_leaf
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vst	$vr0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	build_leaf, .Lfunc_end3-build_leaf
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
