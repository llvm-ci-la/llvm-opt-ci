	.file	"compute.c"
	.text
	.globl	Compute_Tree                    # -- Begin function Compute_Tree
	.p2align	5
	.type	Compute_Tree,@function
Compute_Tree:                           # @Compute_Tree
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	fld.d	$fa0, $fp, 16
	fld.d	$fa1, $fp, 24
	fmov.d	$fa2, $fa0
	fmov.d	$fa3, $fa1
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 304                  # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 272                  # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 240                  # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 208                  # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 176                  # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 144                  # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 128
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
	fld.d	$fa2, $fp, 16
	fld.d	$fa3, $fp, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	fmov.d	$fa1, $fa3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vld	$vr3, $sp, 320                  # 16-byte Folded Reload
	vld	$vr2, $sp, 304                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr2, 16
	vrepli.b	$vr2, 0
	vfadd.d	$vr2, $vr3, $vr2
	vld	$vr3, $sp, 288                  # 16-byte Folded Reload
	vld	$vr4, $sp, 272                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 256                  # 16-byte Folded Reload
	vld	$vr4, $sp, 240                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vld	$vr4, $sp, 208                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 192                  # 16-byte Folded Reload
	vld	$vr4, $sp, 176                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 160                  # 16-byte Folded Reload
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 128                  # 16-byte Folded Reload
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	vld	$vr4, $sp, 48                   # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vextrins.d	$vr3, $vr4, 16
	vfadd.d	$vr2, $vr2, $vr3
	vextrins.d	$vr0, $vr1, 16
	vfadd.d	$vr0, $vr2, $vr0
	vst	$vr0, $fp, 0
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end0:
	.size	Compute_Tree, .Lfunc_end0-Compute_Tree
                                        # -- End function
	.globl	Compute_Lateral                 # -- Begin function Compute_Lateral
	.p2align	5
	.type	Compute_Lateral,@function
Compute_Lateral:                        # @Compute_Lateral
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	fld.d	$fa4, $a0, 40
	fld.d	$fa5, $a0, 32
	fld.d	$fa6, $a0, 16
	fmul.d	$fa7, $fa1, $fa4
	fdiv.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa0, $fa7
	fmadd.d	$fs2, $fa6, $fa7, $fa2
	fld.d	$fa6, $a0, 24
	ld.d	$a0, $a0, 48
	fmul.d	$fa5, $fa0, $fa5
	fdiv.d	$fa4, $fa5, $fa4
	fadd.d	$fa4, $fa1, $fa4
	fmadd.d	$fs3, $fa6, $fa4, $fa3
	beqz	$a0, .LBB1_2
# %bb.1:
	fmov.d	$fs0, $fa0
	fmov.d	$fs1, $fa1
	fmov.d	$fa2, $fs2
	fmov.d	$fa3, $fs3
	pcaddu18i	$ra, %call36(Compute_Lateral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	fmov.d	$fs4, $fa0
	fmov.d	$fs5, $fa1
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	fmov.d	$fa3, $fs3
	pcaddu18i	$ra, %call36(Compute_Branch)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs4, $fa0
	fadd.d	$fa1, $fs5, $fa1
	b	.LBB1_3
.LBB1_2:
	ld.d	$a0, $fp, 56
	fmov.d	$fa2, $fs2
	fmov.d	$fa3, $fs3
	pcaddu18i	$ra, %call36(Compute_Branch)
	jirl	$ra, $ra, 0
.LBB1_3:
	fld.d	$fs2, $fp, 40
	fld.d	$fs1, $fp, 32
	fmul.d	$fa2, $fs2, $fs2
	fmadd.d	$fs4, $fs1, $fs1, $fa2
	fadd.d	$fs0, $fs1, $fs1
	fmul.d	$fa2, $fs0, $fs2
	fadd.d	$fs3, $fs2, $fs2
	fmul.d	$fa3, $fs2, $fs3
	fneg.d	$fa4, $fa0
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa2, $fa2, $fa1, $fa3
	fsub.d	$fa5, $fa2, $fs1
	fmul.d	$fa2, $fs2, $fa4
	fmadd.d	$fa2, $fs1, $fa1, $fa2
	fmul.d	$fa3, $fs1, $fa0
	fmadd.d	$fa2, $fa2, $fa2, $fa3
	vldi	$vr3, -880
	fmul.d	$fa3, $fs4, $fa3
	fmul.d	$fa2, $fa3, $fa2
	fmadd.d	$fa3, $fa5, $fa5, $fa2
	fsqrt.d	$fa2, $fa3
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fneg.d	$fs5, $fa5
	bceqz	$fcc0, .LBB1_5
.LBB1_4:                                # %.split
	fsub.d	$fa2, $fs5, $fa2
	fadd.d	$fa3, $fs4, $fs4
	fdiv.d	$fa2, $fa2, $fa3
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fs2, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $fp, 8
	fst.d	$fa2, $fp, 0
	fmul.d	$fa0, $fs0, $fa2
	fmul.d	$fa3, $fs3, $fa1
	vldi	$vr4, -912
	fsub.d	$fa4, $fa4, $fa0
	fsub.d	$fa4, $fa4, $fa3
	fdiv.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $fp, 16
	fdiv.d	$fa0, $fa3, $fa4
	fst.d	$fa0, $fp, 24
	fmov.d	$fa0, $fa2
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB1_5:                                # %call.sqrt
	fmov.d	$fs6, $fa0
	fmov.d	$fa0, $fa3
	fmov.d	$fs7, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fs7
	fmov.d	$fa2, $fa0
	fmov.d	$fa0, $fs6
	b	.LBB1_4
.Lfunc_end1:
	.size	Compute_Lateral, .Lfunc_end1-Compute_Lateral
                                        # -- End function
	.globl	Compute_Branch                  # -- Begin function Compute_Branch
	.p2align	5
	.type	Compute_Branch,@function
Compute_Branch:                         # @Compute_Branch
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 160                  # 8-byte Folded Spill
	move	$fp, $a0
	fld.d	$fa4, $a0, 40
	fld.d	$fa5, $a0, 32
	fld.d	$fa6, $a0, 16
	fmul.d	$fa7, $fa1, $fa4
	fdiv.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa0, $fa7
	fmadd.d	$fs2, $fa6, $fa7, $fa2
	fld.d	$fa2, $a0, 24
	ld.d	$s0, $a0, 48
	fmul.d	$fa5, $fa0, $fa5
	fdiv.d	$fa4, $fa5, $fa4
	fadd.d	$fa4, $fa1, $fa4
	fmadd.d	$fs3, $fa2, $fa4, $fa3
	beqz	$s0, .LBB2_2
# %bb.1:
	move	$a0, $s0
	fmov.d	$fa2, $fs2
	fmov.d	$fa3, $fs3
	pcaddu18i	$ra, %call36(Compute_Branch)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 8                    # 8-byte Folded Spill
	b	.LBB2_3
.LBB2_2:
                                        # implicit-def: $f0_64
                                        # kill: killed $f0_64
                                        # implicit-def: $f0_64
                                        # kill: killed $f0_64
.LBB2_3:                                # %Compute_Leaf.exit
	ld.d	$s3, $fp, 56
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s3, 8
	pcalau12i	$s2, %pc_hi20(P)
	fst.d	$fa0, $s2, %pc_lo12(P)
	pcalau12i	$s1, %pc_hi20(Q)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	movgr2fr.d	$fs4, $zero
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s4, $fp, 64
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fa0, $s3, 0
	fst.d	$fa1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fa1, $s3, 8
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $s4, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s3, $fp, 72
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fa0, $s4, 0
	fst.d	$fa1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fa1, $s4, 8
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s3, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s4, $fp, 80
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fa0, $s3, 0
	fst.d	$fa1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fa1, $s3, 8
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $s4, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s3, $fp, 88
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fa0, $s4, 0
	fst.d	$fa1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fa1, $s4, 8
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s3, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s4, $fp, 96
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fa0, $s3, 0
	fst.d	$fa1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa1, $s3, 8
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $s4, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s3, $fp, 104
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fa0, $s4, 0
	fst.d	$fa1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa1, $s4, 8
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s3, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s4, $fp, 112
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fa0, $s3, 0
	fst.d	$fa1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa1, $s3, 8
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $s4, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	ld.d	$s3, $fp, 120
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fa0, $s4, 0
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fa1, $s4, 8
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s3, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fs7, $fa1, $fs4, $fcc0
	ld.d	$s4, $fp, 128
	fsel	$fa0, $fa0, $fs4, $fcc0
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fa0, $s3, 0
	fst.d	$fs7, $s3, 8
	fld.d	$fa0, $s4, 0
	fld.d	$fa1, $s4, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fs1, $fa1, $fs4, $fcc0
	ld.d	$s5, $fp, 136
	fsel	$fs0, $fa0, $fs4, $fcc0
	fst.d	$fs0, $s4, 0
	fst.d	$fs1, $s4, 8
	fld.d	$fa0, $s5, 0
	fld.d	$fa1, $s5, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fld.d	$fa1, $s1, %pc_lo12(Q)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fs6, $fa1, $fs4, $fcc0
	ld.d	$s3, $fp, 144
	fsel	$fs5, $fa0, $fs4, $fcc0
	fst.d	$fs5, $s5, 0
	fst.d	$fs6, $s5, 8
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s3, 8
	fst.d	$fa0, $s2, %pc_lo12(P)
	fst.d	$fa1, $s1, %pc_lo12(Q)
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, %pc_lo12(P)
	fcmp.clt.d	$fcc0, $fa0, $fs4
	bceqz	$fcc0, .LBB2_5
# %bb.4:
	st.d	$zero, $s2, %pc_lo12(P)
	st.d	$zero, $s1, %pc_lo12(Q)
	fmov.d	$fa1, $fs4
	fmov.d	$fa0, $fs4
	b	.LBB2_6
.LBB2_5:                                # %._crit_edge.i.11
	fld.d	$fa1, $s1, %pc_lo12(Q)
.LBB2_6:                                # %Compute_Leaf.exit.11
	fld.d	$fa4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 8                    # 8-byte Folded Reload
	sltui	$a0, $s0, 1
	fld.d	$fa2, $sp, 144                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fs4
	fld.d	$fa3, $sp, 128                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 112                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 96                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 80                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 64                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 48                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 32                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fs7
	fadd.d	$fa2, $fa2, $fs1
	fadd.d	$fa2, $fa2, $fs6
	fld.d	$fa3, $sp, 152                  # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fs4
	fld.d	$fa6, $sp, 136                  # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fld.d	$fa6, $sp, 120                  # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fld.d	$fa6, $sp, 104                  # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fld.d	$fa6, $sp, 88                   # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fld.d	$fa6, $sp, 72                   # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fld.d	$fa6, $sp, 56                   # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fld.d	$fa6, $sp, 40                   # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fld.d	$fa6, $sp, 24                   # 8-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa3, $fs0
	fadd.d	$fa3, $fa3, $fs5
	fst.d	$fa0, $s3, 0
	fst.d	$fa1, $s3, 8
	fadd.d	$fa0, $fa3, $fa0
	fadd.d	$fa1, $fa2, $fa1
	fadd.d	$fa2, $fa4, $fa0
	fadd.d	$fa3, $fa5, $fa1
	movgr2cf	$fcc0, $a0
	fld.d	$fs1, $fp, 40
	fld.d	$fs0, $fp, 32
	fsel	$fs5, $fa2, $fa0, $fcc0
	fsel	$fs2, $fa3, $fa1, $fcc0
	fmul.d	$fa0, $fs1, $fs1
	fmadd.d	$fs6, $fs0, $fs0, $fa0
	fadd.d	$fs3, $fs0, $fs0
	fmul.d	$fa0, $fs3, $fs1
	fadd.d	$fs4, $fs1, $fs1
	fmul.d	$fa1, $fs1, $fs4
	fneg.d	$fa2, $fs5
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fs2, $fa1
	fsub.d	$fa3, $fa0, $fs0
	fmul.d	$fa0, $fs1, $fa2
	fmadd.d	$fa0, $fs0, $fs2, $fa0
	fmul.d	$fa1, $fs0, $fs5
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	vldi	$vr1, -880
	fmul.d	$fa1, $fs6, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$fa1, $fa3, $fa3, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fneg.d	$fs7, $fa3
	bceqz	$fcc0, .LBB2_8
.LBB2_7:                                # %Compute_Leaf.exit.11.split
	fsub.d	$fa0, $fs7, $fa0
	fadd.d	$fa1, $fs6, $fs6
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa0, $fs5
	fmul.d	$fa1, $fs1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fadd.d	$fa1, $fs2, $fa1
	fst.d	$fa1, $fp, 8
	fst.d	$fa0, $fp, 0
	fmul.d	$fa2, $fs3, $fa0
	fmul.d	$fa3, $fs4, $fa1
	vldi	$vr4, -912
	fsub.d	$fa4, $fa4, $fa2
	fsub.d	$fa4, $fa4, $fa3
	fdiv.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $fp, 16
	fdiv.d	$fa2, $fa3, $fa4
	fst.d	$fa2, $fp, 24
	fld.d	$fs7, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 216                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB2_8:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB2_7
.Lfunc_end2:
	.size	Compute_Branch, .Lfunc_end2-Compute_Branch
                                        # -- End function
	.globl	Compute_Leaf                    # -- Begin function Compute_Leaf
	.p2align	5
	.type	Compute_Leaf,@function
Compute_Leaf:                           # @Compute_Leaf
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	fld.d	$fa2, $a0, 0
	fld.d	$fa3, $a0, 8
	pcalau12i	$s1, %pc_hi20(P)
	fst.d	$fa2, $s1, %pc_lo12(P)
	pcalau12i	$s0, %pc_hi20(Q)
	fst.d	$fa3, $s0, %pc_lo12(Q)
	pcaddu18i	$ra, %call36(optimize_node)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, %pc_lo12(P)
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	st.d	$zero, $s1, %pc_lo12(P)
	st.d	$zero, $s0, %pc_lo12(Q)
	fmov.d	$fa0, $fa1
	b	.LBB3_3
.LBB3_2:                                # %._crit_edge
	fld.d	$fa1, $s0, %pc_lo12(Q)
.LBB3_3:
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 8
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	Compute_Leaf, .Lfunc_end3-Compute_Leaf
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function optimize_node
.LCPI4_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI4_1:
	.dword	0xc01465655f122ff6              # double -5.0990195135927845
.LCPI4_2:
	.dword	0x3fc91a556151761c              # double 0.19611613513818404
.LCPI4_3:
	.dword	0xbfef60eab9a5d3a3              # double -0.98058067569092022
.LCPI4_4:
	.dword	0xbfe999999999999a              # double -0.80000000000000004
.LCPI4_5:
	.dword	0xbfc91a556151761c              # double -0.19611613513818404
	.text
	.globl	optimize_node
	.p2align	5
	.type	optimize_node,@function
optimize_node:                          # @optimize_node
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 96                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(P)
	fld.d	$ft1, $fp, %pc_lo12(P)
	pcalau12i	$s0, %pc_hi20(Q)
	fld.d	$ft2, $s0, %pc_lo12(Q)
	vldi	$vr11, -876
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$ft4, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$ft5, $a0, %pc_lo12(.LCPI4_1)
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.d	$ft6, $a0, %pc_lo12(.LCPI4_2)
	pcalau12i	$a0, %pc_hi20(.LCPI4_3)
	fld.d	$ft7, $a0, %pc_lo12(.LCPI4_3)
	pcalau12i	$a0, %pc_hi20(.LCPI4_4)
	fld.d	$ft8, $a0, %pc_lo12(.LCPI4_4)
	movgr2fr.d	$ft9, $zero
	vldi	$vr18, -912
	pcalau12i	$s1, %pc_hi20(.LCPI4_5)
	.p2align	4, , 16
.LBB4_1:                                # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	fmadd.d	$fa2, $ft2, $ft3, $ft1
	fabs.d	$fa3, $fa2
	fcmp.cule.d	$fcc0, $fa3, $ft4
	bcnez	$fcc0, .LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	fdiv.d	$fa2, $fa2, $ft5
	fmadd.d	$ft1, $fa2, $ft6, $ft1
	fmadd.d	$ft2, $fa2, $ft7, $ft2
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	fmul.d	$fa2, $ft2, $ft2
	fmadd.d	$fa2, $ft1, $ft1, $fa2
	fadd.d	$fs3, $fa2, $ft8
	fcmp.cule.d	$fcc0, $fs3, $ft4
	bcnez	$fcc0, .LBB4_7
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
	fadd.d	$fa2, $ft1, $ft1
	fadd.d	$fa3, $ft2, $ft2
	fmadd.d	$fa4, $fa2, $fa2, $ft9
	fmadd.d	$fa4, $fa3, $fa3, $fa4
	fsqrt.d	$fs0, $fa4
	fdiv.d	$fs2, $fa2, $fs0
	fdiv.d	$fs1, $fa3, $fs0
	fmadd.d	$fa2, $fs2, $ft6, $ft9
	fmadd.d	$fa3, $fs1, $ft7, $fa2
	fnmadd.d	$fs4, $fs1, $ft7, $fa2
	fmadd.d	$fa3, $fs4, $fa3, $ft10
	fcmp.clt.d	$fcc0, $fa3, $ft9
	fmov.d	$fa2, $ft9
	bcnez	$fcc0, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	fsqrt.d	$fa2, $fa3
	fcmp.cor.d	$fcc0, $fa2, $fa2
	bceqz	$fcc0, .LBB4_17
.LBB4_6:                                # %make_orthogonal.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	fmadd.d	$fa3, $fs4, $ft6, $fs2
	fmadd.d	$fa4, $fa3, $fa3, $ft9
	fmadd.d	$fa5, $fs4, $ft7, $fs1
	fmadd.d	$fa4, $fa5, $fa5, $fa4
	fsqrt.d	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	fdiv.d	$fa4, $fa5, $fa4
	fmul.d	$fa2, $fs0, $fa2
	fneg.d	$fa5, $fs3
	fdiv.d	$fa2, $fa5, $fa2
	fmadd.d	$ft1, $fa2, $fa3, $ft1
	fmadd.d	$ft2, $fa2, $fa4, $ft2
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	fadd.d	$fa2, $ft1, $ft10
	frecip.d	$fs1, $fa2
	fsub.d	$fs7, $fs1, $fa0
	fadd.d	$fa2, $ft2, $ft10
	frecip.d	$fs2, $fa2
	fsub.d	$fs5, $fs2, $fa1
	fmadd.d	$fa2, $fs7, $fs7, $ft9
	fmadd.d	$fa2, $fs5, $fs5, $fa2
	fsqrt.d	$fs6, $fa2
	fdiv.d	$fs4, $fs7, $fs6
	fdiv.d	$fs3, $fs5, $fs6
	fmadd.d	$fa2, $fs4, $ft6, $ft9
	fmadd.d	$fa3, $fs3, $ft7, $fa2
	fnmadd.d	$fs0, $fs3, $ft7, $fa2
	fmadd.d	$fa3, $fs0, $fa3, $ft10
	fcmp.clt.d	$fcc0, $fa3, $ft9
	fmov.d	$fa2, $ft9
	bcnez	$fcc0, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_1 Depth=1
	fsqrt.d	$fa2, $fa3
	fcmp.cor.d	$fcc0, $fa2, $fa2
	bceqz	$fcc0, .LBB4_16
.LBB4_9:                                # %make_orthogonal.exit50
                                        #   in Loop: Header=BB4_1 Depth=1
	fmul.d	$fa3, $fs5, $fs5
	fmadd.d	$fa3, $fs7, $fs7, $fa3
	fsqrt.d	$fa3, $fa3
	fneg.d	$fa4, $fs1
	fmul.d	$fa4, $fs1, $fa4
	fmul.d	$fa4, $fa4, $fs7
	fdiv.d	$fa4, $fa4, $fa3
	fneg.d	$fa5, $fs2
	fmul.d	$fa5, $fs2, $fa5
	fmul.d	$fa5, $fa5, $fs5
	fdiv.d	$fa3, $fa5, $fa3
	fmadd.d	$fa4, $fs4, $fa4, $ft9
	fmadd.d	$fa3, $fs3, $fa3, $fa4
	fabs.d	$fa3, $fa3
	fdiv.d	$fa6, $fs6, $fa3
	fmadd.d	$fa3, $fs0, $ft6, $fs4
	fmadd.d	$fa4, $fa3, $fa3, $ft9
	fmadd.d	$fa5, $fs0, $ft7, $fs3
	fmadd.d	$fa4, $fa5, $fa5, $fa4
	fsqrt.d	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	fdiv.d	$fa4, $fa5, $fa4
	fadd.d	$fa5, $ft1, $ft1
	fadd.d	$fa7, $ft2, $ft2
	fmadd.d	$ft0, $fa5, $fa5, $ft9
	fmadd.d	$ft0, $fa7, $fa7, $ft0
	fsqrt.d	$ft0, $ft0
	fdiv.d	$fa5, $fa5, $ft0
	fdiv.d	$fa7, $fa7, $ft0
	fmadd.d	$fa5, $fa3, $fa5, $ft9
	fmadd.d	$fa5, $fa4, $fa7, $fa5
	fcmp.cule.d	$fcc0, $fa5, $ft9
	fmul.d	$fa2, $fa6, $fa2
	bcnez	$fcc0, .LBB4_12
# %bb.10:                               #   in Loop: Header=BB4_1 Depth=1
	fmul.d	$fa6, $ft2, $ft2
	fmadd.d	$fa6, $ft1, $ft1, $fa6
	fadd.d	$fa6, $fa6, $ft8
	fneg.d	$fa6, $fa6
	fdiv.d	$fa5, $fa6, $fa5
	fcmp.cule.d	$fcc0, $fa2, $fa5
	bcnez	$fcc0, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_1 Depth=1
	fmov.d	$fa2, $fa5
.LBB4_12:                               #   in Loop: Header=BB4_1 Depth=1
	fmadd.d	$ft1, $fa2, $fa3, $ft1
	fmadd.d	$ft2, $fa2, $fa4, $ft2
	fmadd.d	$fa2, $ft2, $ft3, $ft1
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $ft4, $fa2
	bcnez	$fcc0, .LBB4_1
# %bb.13:                               #   in Loop: Header=BB4_1 Depth=1
	fmul.d	$fa2, $ft2, $ft2
	fmadd.d	$fa2, $ft1, $ft1, $fa2
	fadd.d	$fa2, $fa2, $ft8
	fcmp.clt.d	$fcc0, $ft4, $fa2
	bcnez	$fcc0, .LBB4_1
# %bb.14:                               #   in Loop: Header=BB4_1 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $ft4
	bcnez	$fcc0, .LBB4_18
# %bb.15:                               #   in Loop: Header=BB4_1 Depth=1
	fadd.d	$fa2, $ft1, $ft10
	frecip.d	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa0
	fadd.d	$fa3, $ft2, $ft10
	frecip.d	$fa3, $fa3
	fsub.d	$fa3, $fa3, $fa1
	movgr2fr.d	$fa4, $zero
	fmadd.d	$fa4, $fa2, $fa2, $fa4
	fmadd.d	$fa4, $fa3, $fa3, $fa4
	fld.d	$fa5, $s1, %pc_lo12(.LCPI4_5)
	fsqrt.d	$fa4, $fa4
	fdiv.d	$fa2, $fa2, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa3, $fa5
	fmadd.d	$fa2, $fa2, $ft7, $fa3
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $ft4, $fa2
	bcnez	$fcc0, .LBB4_1
	b	.LBB4_18
.LBB4_16:                               # %call.sqrt87
                                        #   in Loop: Header=BB4_1 Depth=1
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fmov.d	$fa0, $fa3
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$ft1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$ft2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr18, -912
	fld.d	$ft9, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft8, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	vldi	$vr11, -876
	fld.d	$ft2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 88                   # 8-byte Folded Reload
	b	.LBB4_9
.LBB4_17:                               # %call.sqrt
                                        #   in Loop: Header=BB4_1 Depth=1
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fmov.d	$fa0, $fa3
	fmov.d	$fs6, $fa1
	fmov.d	$fs7, $ft1
	fmov.d	$fs5, $ft2
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 56                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr18, -912
	fld.d	$ft9, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft8, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	vldi	$vr11, -876
	fmov.d	$ft2, $fs5
	fmov.d	$ft1, $fs7
	fmov.d	$fa1, $fs6
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 88                   # 8-byte Folded Reload
	b	.LBB4_6
.LBB4_18:                               # %.critedge3
	fst.d	$ft1, $fp, %pc_lo12(P)
	fst.d	$ft2, $s0, %pc_lo12(Q)
	fld.d	$fs7, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 152                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end4:
	.size	optimize_node, .Lfunc_end4-optimize_node
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function find_gradient_h
.LCPI5_0:
	.dword	0x3fc91a556151761c              # double 0.19611613513818404
	.dword	0xbfef60eab9a5d3a3              # double -0.98058067569092022
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_1:
	.dword	0x401465655f122ff6              # double 5.0990195135927845
	.text
	.globl	find_gradient_h
	.p2align	5
	.type	find_gradient_h,@function
find_gradient_h:                        # @find_gradient_h
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI5_1)
	vst	$vr1, $a0, 0
	ret
.Lfunc_end5:
	.size	find_gradient_h, .Lfunc_end5-find_gradient_h
                                        # -- End function
	.globl	find_gradient_g                 # -- Begin function find_gradient_g
	.p2align	5
	.type	find_gradient_g,@function
find_gradient_g:                        # @find_gradient_g
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(P)
	fld.d	$fa0, $a1, %pc_lo12(P)
	pcalau12i	$a1, %pc_hi20(Q)
	fld.d	$fa1, $a1, %pc_lo12(Q)
	fadd.d	$fs1, $fa0, $fa0
	fadd.d	$fs0, $fa1, $fa1
	movgr2fr.d	$fa0, $zero
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	fmadd.d	$fa1, $fs0, $fs0, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_2
.LBB6_1:                                # %.split
	fdiv.d	$fa1, $fs1, $fa0
	fst.d	$fa1, $a0, 0
	fdiv.d	$fa1, $fs0, $fa0
	fst.d	$fa1, $a0, 8
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_2:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB6_1
.Lfunc_end6:
	.size	find_gradient_g, .Lfunc_end6-find_gradient_g
                                        # -- End function
	.globl	make_orthogonal                 # -- Begin function make_orthogonal
	.p2align	5
	.type	make_orthogonal,@function
make_orthogonal:                        # @make_orthogonal
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, 8
	fld.d	$fa4, $a1, 8
	movgr2fr.d	$fa0, $zero
	fmadd.d	$fa5, $fa1, $fa2, $fa0
	fnmadd.d	$fs0, $fa3, $fa4, $fa5
	fmadd.d	$fs1, $fs0, $fa2, $fa1
	fst.d	$fs1, $a0, 0
	fld.d	$fa1, $a1, 8
	fmadd.d	$fa2, $fs1, $fs1, $fa0
	fmadd.d	$fs3, $fs0, $fa1, $fa3
	fmadd.d	$fa2, $fs3, $fs3, $fa2
	fsqrt.d	$fa1, $fa2
	fcmp.cor.d	$fcc0, $fa1, $fa1
	fmadd.d	$fs2, $fa3, $fa4, $fa5
	bceqz	$fcc0, .LBB7_4
.LBB7_1:                                # %.preheader.split
	fdiv.d	$fa2, $fs1, $fa1
	fst.d	$fa2, $a0, 0
	fdiv.d	$fa2, $fs3, $fa1
	vldi	$vr1, -912
	fmadd.d	$fa1, $fs0, $fs2, $fa1
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fst.d	$fa2, $a0, 8
	bcnez	$fcc0, .LBB7_3
# %bb.2:
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB7_5
.LBB7_3:
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB7_4:                                # %call.sqrt
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fa2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fs4
	b	.LBB7_1
.LBB7_5:                                # %call.sqrt39
	fmov.d	$fa0, $fa1
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(sqrt)
	jr	$t8
.Lfunc_end7:
	.size	make_orthogonal, .Lfunc_end7-make_orthogonal
                                        # -- End function
	.globl	find_gradient_f                 # -- Begin function find_gradient_f
	.p2align	5
	.type	find_gradient_f,@function
find_gradient_f:                        # @find_gradient_f
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(P)
	fld.d	$fa2, $a1, %pc_lo12(P)
	vldi	$vr3, -912
	pcalau12i	$a1, %pc_hi20(Q)
	fld.d	$fa4, $a1, %pc_lo12(Q)
	fadd.d	$fa2, $fa2, $fa3
	frecip.d	$fa2, $fa2
	fsub.d	$fs0, $fa2, $fa0
	fadd.d	$fa0, $fa4, $fa3
	frecip.d	$fa0, $fa0
	fsub.d	$fs1, $fa0, $fa1
	movgr2fr.d	$fa0, $zero
	fmadd.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fs1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB8_2
.LBB8_1:                                # %.split
	fdiv.d	$fa1, $fs0, $fa0
	fst.d	$fa1, $a0, 0
	fdiv.d	$fa1, $fs1, $fa0
	fst.d	$fa1, $a0, 8
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_2:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB8_1
.Lfunc_end8:
	.size	find_gradient_f, .Lfunc_end8-find_gradient_f
                                        # -- End function
	.globl	find_dd_grad_f                  # -- Begin function find_dd_grad_f
	.p2align	5
	.type	find_dd_grad_f,@function
find_dd_grad_f:                         # @find_dd_grad_f
# %bb.0:
	pcalau12i	$a1, %pc_hi20(P)
	fld.d	$fa2, $a1, %pc_lo12(P)
	pcalau12i	$a1, %pc_hi20(Q)
	fld.d	$fa3, $a1, %pc_lo12(Q)
                                        # kill: def $f1_64 killed $f1_64 def $vr1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vextrins.d	$vr2, $vr3, 16
	vldi	$vr3, -912
	vfadd.d	$vr2, $vr2, $vr3
	vfrecip.d	$vr2, $vr2
	vextrins.d	$vr0, $vr1, 16
	vfsub.d	$vr0, $vr2, $vr0
	vfmul.d	$vr1, $vr0, $vr0
	vreplvei.d	$vr1, $vr1, 1
	vreplvei.d	$vr3, $vr0, 0
	fmadd.d	$fa1, $fa3, $fa3, $fa1
	fsqrt.d	$fa1, $fa1
	vbitrevi.d	$vr3, $vr2, 63
	vfmul.d	$vr2, $vr2, $vr3
	vfmul.d	$vr0, $vr2, $vr0
	vreplvei.d	$vr1, $vr1, 0
	vfdiv.d	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end9:
	.size	find_dd_grad_f, .Lfunc_end9-find_dd_grad_f
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function find_g
.LCPI10_0:
	.dword	0xbfe999999999999a              # double -0.80000000000000004
	.text
	.globl	find_g
	.p2align	5
	.type	find_g,@function
find_g:                                 # @find_g
# %bb.0:
	pcalau12i	$a0, %pc_hi20(P)
	fld.d	$fa0, $a0, %pc_lo12(P)
	pcalau12i	$a0, %pc_hi20(Q)
	fld.d	$fa1, $a0, %pc_lo12(Q)
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI10_0)
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	ret
.Lfunc_end10:
	.size	find_g, .Lfunc_end10-find_g
                                        # -- End function
	.globl	find_h                          # -- Begin function find_h
	.p2align	5
	.type	find_h,@function
find_h:                                 # @find_h
# %bb.0:
	pcalau12i	$a0, %pc_hi20(P)
	fld.d	$fa0, $a0, %pc_lo12(P)
	pcalau12i	$a0, %pc_hi20(Q)
	fld.d	$fa1, $a0, %pc_lo12(Q)
	vldi	$vr2, -876
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	ret
.Lfunc_end11:
	.size	find_h, .Lfunc_end11-find_h
                                        # -- End function
	.type	P,@object                       # @P
	.data
	.p2align	3, 0x0
P:
	.dword	0x3ff0000000000000              # double 1
	.size	P, 8

	.type	Q,@object                       # @Q
	.p2align	3, 0x0
Q:
	.dword	0x3ff0000000000000              # double 1
	.size	Q, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
