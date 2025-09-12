	.file	"trig.c"
	.text
	.globl	MultMatrixMatrix                # -- Begin function MultMatrixMatrix
	.p2align	5
	.type	MultMatrixMatrix,@function
MultMatrixMatrix:                       # @MultMatrixMatrix
# %bb.0:                                # %.preheader
	st.d	$zero, $a2, 0
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	movgr2fr.d	$fa0, $zero
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 0
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a1, 32
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 0
	fld.d	$fa2, $a0, 16
	fld.d	$fa3, $a1, 64
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 0
	fld.d	$fa2, $a0, 24
	fld.d	$fa3, $a1, 96
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 0
	st.d	$zero, $a2, 8
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 8
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 8
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a1, 40
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 8
	fld.d	$fa2, $a0, 16
	fld.d	$fa3, $a1, 72
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 8
	fld.d	$fa2, $a0, 24
	fld.d	$fa3, $a1, 104
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 8
	st.d	$zero, $a2, 16
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 16
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 16
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a1, 48
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 16
	fld.d	$fa2, $a0, 16
	fld.d	$fa3, $a1, 80
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 16
	fld.d	$fa2, $a0, 24
	fld.d	$fa3, $a1, 112
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 16
	st.d	$zero, $a2, 24
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 24
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 24
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a1, 56
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 24
	fld.d	$fa2, $a0, 16
	fld.d	$fa3, $a1, 88
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 24
	fld.d	$fa2, $a0, 24
	fld.d	$fa3, $a1, 120
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 24
	st.d	$zero, $a2, 32
	fld.d	$fa1, $a0, 32
	fld.d	$fa2, $a1, 0
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 32
	fld.d	$fa2, $a0, 40
	fld.d	$fa3, $a1, 32
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 32
	fld.d	$fa2, $a0, 48
	fld.d	$fa3, $a1, 64
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 32
	fld.d	$fa2, $a0, 56
	fld.d	$fa3, $a1, 96
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 32
	st.d	$zero, $a2, 40
	fld.d	$fa1, $a0, 32
	fld.d	$fa2, $a1, 8
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 40
	fld.d	$fa2, $a0, 40
	fld.d	$fa3, $a1, 40
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 40
	fld.d	$fa2, $a0, 48
	fld.d	$fa3, $a1, 72
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 40
	fld.d	$fa2, $a0, 56
	fld.d	$fa3, $a1, 104
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 40
	st.d	$zero, $a2, 48
	fld.d	$fa1, $a0, 32
	fld.d	$fa2, $a1, 16
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 48
	fld.d	$fa2, $a0, 40
	fld.d	$fa3, $a1, 48
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 48
	fld.d	$fa2, $a0, 48
	fld.d	$fa3, $a1, 80
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 48
	fld.d	$fa2, $a0, 56
	fld.d	$fa3, $a1, 112
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 48
	st.d	$zero, $a2, 56
	fld.d	$fa1, $a0, 32
	fld.d	$fa2, $a1, 24
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 56
	fld.d	$fa2, $a0, 40
	fld.d	$fa3, $a1, 56
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 56
	fld.d	$fa2, $a0, 48
	fld.d	$fa3, $a1, 88
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 56
	fld.d	$fa2, $a0, 56
	fld.d	$fa3, $a1, 120
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 56
	st.d	$zero, $a2, 64
	fld.d	$fa1, $a0, 64
	fld.d	$fa2, $a1, 0
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 64
	fld.d	$fa2, $a0, 72
	fld.d	$fa3, $a1, 32
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 64
	fld.d	$fa2, $a0, 80
	fld.d	$fa3, $a1, 64
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 64
	fld.d	$fa2, $a0, 88
	fld.d	$fa3, $a1, 96
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 64
	st.d	$zero, $a2, 72
	fld.d	$fa1, $a0, 64
	fld.d	$fa2, $a1, 8
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 72
	fld.d	$fa2, $a0, 72
	fld.d	$fa3, $a1, 40
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 72
	fld.d	$fa2, $a0, 80
	fld.d	$fa3, $a1, 72
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 72
	fld.d	$fa2, $a0, 88
	fld.d	$fa3, $a1, 104
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 72
	st.d	$zero, $a2, 80
	fld.d	$fa1, $a0, 64
	fld.d	$fa2, $a1, 16
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 80
	fld.d	$fa2, $a0, 72
	fld.d	$fa3, $a1, 48
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 80
	fld.d	$fa2, $a0, 80
	fld.d	$fa3, $a1, 80
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 80
	fld.d	$fa2, $a0, 88
	fld.d	$fa3, $a1, 112
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 80
	st.d	$zero, $a2, 88
	fld.d	$fa1, $a0, 64
	fld.d	$fa2, $a1, 24
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 88
	fld.d	$fa2, $a0, 72
	fld.d	$fa3, $a1, 56
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 88
	fld.d	$fa2, $a0, 80
	fld.d	$fa3, $a1, 88
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 88
	fld.d	$fa2, $a0, 88
	fld.d	$fa3, $a1, 120
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 88
	st.d	$zero, $a2, 96
	fld.d	$fa1, $a0, 96
	fld.d	$fa2, $a1, 0
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 96
	fld.d	$fa2, $a0, 104
	fld.d	$fa3, $a1, 32
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 96
	fld.d	$fa2, $a0, 112
	fld.d	$fa3, $a1, 64
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 96
	fld.d	$fa2, $a0, 120
	fld.d	$fa3, $a1, 96
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 96
	st.d	$zero, $a2, 104
	fld.d	$fa1, $a0, 96
	fld.d	$fa2, $a1, 8
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 104
	fld.d	$fa2, $a0, 104
	fld.d	$fa3, $a1, 40
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 104
	fld.d	$fa2, $a0, 112
	fld.d	$fa3, $a1, 72
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 104
	fld.d	$fa2, $a0, 120
	fld.d	$fa3, $a1, 104
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 104
	st.d	$zero, $a2, 112
	fld.d	$fa1, $a0, 96
	fld.d	$fa2, $a1, 16
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fst.d	$fa1, $a2, 112
	fld.d	$fa2, $a0, 104
	fld.d	$fa3, $a1, 48
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 112
	fld.d	$fa2, $a0, 112
	fld.d	$fa3, $a1, 80
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 112
	fld.d	$fa2, $a0, 120
	fld.d	$fa3, $a1, 112
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a2, 112
	st.d	$zero, $a2, 120
	fld.d	$fa1, $a0, 96
	fld.d	$fa2, $a1, 24
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $a2, 120
	fld.d	$fa1, $a0, 104
	fld.d	$fa2, $a1, 56
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $a2, 120
	fld.d	$fa1, $a0, 112
	fld.d	$fa2, $a1, 88
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $a2, 120
	fld.d	$fa1, $a0, 120
	fld.d	$fa2, $a1, 120
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $a2, 120
	ret
.Lfunc_end0:
	.size	MultMatrixMatrix, .Lfunc_end0-MultMatrixMatrix
                                        # -- End function
	.globl	MultMatrixHPoint                # -- Begin function MultMatrixHPoint
	.p2align	5
	.type	MultMatrixHPoint,@function
MultMatrixHPoint:                       # @MultMatrixHPoint
# %bb.0:
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 8
	fld.d	$fa3, $a1, 8
	fld.d	$fa4, $a2, 16
	fld.d	$fa5, $a1, 16
	fld.d	$fa6, $a2, 24
	fld.d	$fa7, $a1, 24
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa0, $fa1, $fa3
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa1, $fa6, $fa7, $fa1
	fld.d	$fa3, $a1, 40
	fst.d	$fa1, $a0, 0
	fld.d	$fa1, $a1, 32
	fld.d	$fa5, $a1, 48
	fmul.d	$fa3, $fa2, $fa3
	fld.d	$fa7, $a1, 56
	fmadd.d	$fa1, $fa0, $fa1, $fa3
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fld.d	$fa3, $a1, 72
	fmadd.d	$fa1, $fa6, $fa7, $fa1
	fst.d	$fa1, $a0, 8
	fld.d	$fa1, $a1, 64
	fmul.d	$fa3, $fa2, $fa3
	fld.d	$fa5, $a1, 80
	fld.d	$fa7, $a1, 104
	fmadd.d	$fa1, $fa0, $fa1, $fa3
	fld.d	$fa3, $a1, 96
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmul.d	$fa2, $fa2, $fa7
	fld.d	$fa5, $a1, 88
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fld.d	$fa2, $a1, 112
	fld.d	$fa3, $a1, 120
	fmadd.d	$fa1, $fa6, $fa5, $fa1
	fst.d	$fa1, $a0, 16
	fmadd.d	$fa0, $fa4, $fa2, $fa0
	fmadd.d	$fa0, $fa6, $fa3, $fa0
	fst.d	$fa0, $a0, 24
	ret
.Lfunc_end1:
	.size	MultMatrixHPoint, .Lfunc_end1-MultMatrixHPoint
                                        # -- End function
	.globl	CopyMatrix                      # -- Begin function CopyMatrix
	.p2align	5
	.type	CopyMatrix,@function
CopyMatrix:                             # @CopyMatrix
# %bb.0:
	beqz	$a0, .LBB2_2
# %bb.1:                                # %.loopexit.loopexit
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 128
	move	$a1, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB2_2:                                # %.loopexit
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	CopyMatrix, .Lfunc_end2-CopyMatrix
                                        # -- End function
	.globl	IdentMatrix                     # -- Begin function IdentMatrix
	.p2align	5
	.type	IdentMatrix,@function
IdentMatrix:                            # @IdentMatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	vst	$vr0, $a0, 24
	st.d	$a1, $a0, 40
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	st.d	$a1, $a0, 80
	vst	$vr0, $a0, 88
	vst	$vr0, $a0, 104
	st.d	$a1, $a0, 120
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	IdentMatrix, .Lfunc_end3-IdentMatrix
                                        # -- End function
	.globl	TranslateMatrix                 # -- Begin function TranslateMatrix
	.p2align	5
	.type	TranslateMatrix,@function
TranslateMatrix:                        # @TranslateMatrix
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs2, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa2
	fmov.d	$fs1, $fa1
	fmov.d	$fs2, $fa0
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 8
	st.d	$a1, $a0, 40
	st.d	$zero, $a0, 48
	vst	$vr0, $a0, 64
	st.d	$a1, $a0, 80
	st.d	$zero, $a0, 96
	vst	$vr0, $a0, 104
	st.d	$a1, $a0, 120
	fst.d	$fs2, $a0, 24
	fst.d	$fs1, $a0, 56
	fst.d	$fs0, $a0, 88
	fld.d	$fs2, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	TranslateMatrix, .Lfunc_end4-TranslateMatrix
                                        # -- End function
	.globl	RotateMatrix                    # -- Begin function RotateMatrix
	.p2align	5
	.type	RotateMatrix,@function
RotateMatrix:                           # @RotateMatrix
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fs3, $fa2
	fmov.d	$fs2, $fa1
	lu12i.w	$a0, -383703
	ori	$a0, $a0, 3716
	lu32i.d	$a0, 122694
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fs5, $a0
	fmul.d	$fs1, $fa0, $fs5
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmul.d	$fs4, $fs2, $fs5
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmul.d	$fs5, $fs3, $fs5
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	lu52i.d	$s2, $zero, 1023
	st.d	$s2, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 8
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 56
	vst	$vr0, $a0, 88
	vst	$vr0, $a0, 104
	st.d	$s2, $a0, 120
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	vst	$vr0, $a0, 24
	st.d	$s2, $a0, 40
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 88
	vst	$vr0, $a0, 104
	st.d	$s2, $a0, 120
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	st.d	$s2, $a0, 80
	vst	$vr0, $a0, 88
	vst	$vr0, $a0, 104
	st.d	$s2, $a0, 120
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	fst.d	$fs0, $fp, 40
	fneg.d	$fa0, $fs1
	fst.d	$fa0, $fp, 48
	fst.d	$fs1, $fp, 72
	fst.d	$fs0, $fp, 80
	fst.d	$fs2, $s0, 0
	fst.d	$fs4, $s0, 16
	fneg.d	$fa0, $fs4
	fst.d	$fa0, $s0, 64
	fst.d	$fs2, $s0, 80
	fst.d	$fs3, $s1, 0
	fneg.d	$fa0, $fs5
	fst.d	$fa0, $s1, 8
	fst.d	$fs5, $s1, 32
	fst.d	$fs3, $s1, 40
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MultMatrixMatrix)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(MultMatrixMatrix)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end5:
	.size	RotateMatrix, .Lfunc_end5-RotateMatrix
                                        # -- End function
	.globl	ScaleMatrix                     # -- Begin function ScaleMatrix
	.p2align	5
	.type	ScaleMatrix,@function
ScaleMatrix:                            # @ScaleMatrix
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs2, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa2
	fmov.d	$fs1, $fa1
	fmov.d	$fs2, $fa0
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 88
	vst	$vr0, $a0, 104
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, 120
	fst.d	$fs2, $a0, 0
	fst.d	$fs1, $a0, 40
	fst.d	$fs0, $a0, 80
	fld.d	$fs2, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	ScaleMatrix, .Lfunc_end6-ScaleMatrix
                                        # -- End function
	.globl	RotatePoint                     # -- Begin function RotatePoint
	.p2align	5
	.type	RotatePoint,@function
RotatePoint:                            # @RotatePoint
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	move	$fp, $a1
	vld	$vr3, $a1, 32
	vld	$vr4, $a1, 16
	vld	$vr5, $a1, 0
	fmov.d	$fs0, $fa2
	fmov.d	$fs1, $fa1
	fmov.d	$fs2, $fa0
	move	$s0, $a0
	vst	$vr3, $sp, 48
	vst	$vr4, $sp, 32
	vst	$vr5, $sp, 16
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(PointToHPoint)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs0
	pcaddu18i	$ra, %call36(RotateMatrix)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vld	$vr2, $fp, 32
	vst	$vr0, $s0, 0
	vst	$vr1, $s0, 16
	vst	$vr2, $s0, 32
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end7:
	.size	RotatePoint, .Lfunc_end7-RotatePoint
                                        # -- End function
	.globl	PrintMatrix                     # -- Begin function PrintMatrix
	.p2align	5
	.type	PrintMatrix,@function
PrintMatrix:                            # @PrintMatrix
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a4, $a0, 24
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 8
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 56
	ld.d	$a3, $fp, 48
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 88
	ld.d	$a3, $fp, 80
	ld.d	$a2, $fp, 72
	ld.d	$a1, $fp, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 120
	ld.d	$a3, $fp, 112
	ld.d	$a2, $fp, 104
	ld.d	$a1, $fp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end8:
	.size	PrintMatrix, .Lfunc_end8-PrintMatrix
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [[ %.2f, %.2f, %.2f, %.2f] \n"
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"  [ %.2f, %.2f, %.2f, %.2f] \n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"  [ %.2f, %.2f, %.2f, %.2f]]\n"
	.size	.L.str.2, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
