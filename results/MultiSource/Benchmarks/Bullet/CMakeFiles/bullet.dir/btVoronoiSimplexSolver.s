	.file	"btVoronoiSimplexSolver.cpp"
	.text
	.globl	_ZN22btVoronoiSimplexSolver12removeVertexEi # -- Begin function _ZN22btVoronoiSimplexSolver12removeVertexEi
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver12removeVertexEi,@function
_ZN22btVoronoiSimplexSolver12removeVertexEi: # @_ZN22btVoronoiSimplexSolver12removeVertexEi
# %bb.0:
	ld.w	$a2, $a0, 0
	addi.w	$a2, $a2, -1
	st.w	$a2, $a0, 0
	addi.d	$a3, $a0, 4
	slli.d	$a2, $a2, 4
	vldx	$vr0, $a3, $a2
	slli.d	$a1, $a1, 4
	vstx	$vr0, $a3, $a1
	ld.w	$a2, $a0, 0
	addi.d	$a3, $a0, 84
	slli.d	$a2, $a2, 4
	vldx	$vr0, $a3, $a2
	vstx	$vr0, $a3, $a1
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 164
	slli.d	$a2, $a2, 4
	vldx	$vr0, $a0, $a2
	vstx	$vr0, $a0, $a1
	ret
.Lfunc_end0:
	.size	_ZN22btVoronoiSimplexSolver12removeVertexEi, .Lfunc_end0-_ZN22btVoronoiSimplexSolver12removeVertexEi
                                        # -- End function
	.globl	_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield # -- Begin function _ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield,@function
_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield: # @_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield
# %bb.0:
	ld.w	$a3, $a0, 0
	ori	$a2, $zero, 4
	blt	$a3, $a2, .LBB1_3
# %bb.1:
	ld.bu	$a2, $a1, 0
	andi	$a2, $a2, 8
	bnez	$a2, .LBB1_7
# %bb.2:
	addi.w	$a2, $a3, -1
	alsl.d	$a3, $a2, $a0, 4
	vld	$vr0, $a3, 4
	vld	$vr1, $a3, 84
	vld	$vr2, $a3, 164
	st.w	$a2, $a0, 0
	vst	$vr0, $a0, 52
	vst	$vr1, $a0, 132
	vst	$vr2, $a0, 212
	b	.LBB1_8
.LBB1_3:                                # %thread-pre-split
	ori	$a2, $zero, 3
	beq	$a3, $a2, .LBB1_8
# %bb.4:
	ori	$a2, $zero, 2
	bge	$a3, $a2, .LBB1_10
# %bb.5:                                # %thread-pre-split8
	ori	$a2, $zero, 1
	beq	$a3, $a2, .LBB1_12
.LBB1_6:
	ret
.LBB1_7:
	move	$a2, $a3
.LBB1_8:                                # %thread-pre-split.thread
	ld.bu	$a3, $a1, 0
	andi	$a3, $a3, 4
	bnez	$a3, .LBB1_10
# %bb.9:
	addi.w	$a2, $a2, -1
	alsl.d	$a3, $a2, $a0, 4
	vld	$vr0, $a3, 4
	vld	$vr1, $a3, 84
	vld	$vr2, $a3, 164
	st.w	$a2, $a0, 0
	vst	$vr0, $a0, 36
	vst	$vr1, $a0, 116
	vst	$vr2, $a0, 196
.LBB1_10:                               # %.thread
	ld.bu	$a3, $a1, 0
	andi	$a3, $a3, 2
	bnez	$a3, .LBB1_12
# %bb.11:
	addi.w	$a2, $a2, -1
	alsl.d	$a3, $a2, $a0, 4
	vld	$vr0, $a3, 4
	vld	$vr1, $a3, 84
	vld	$vr2, $a3, 164
	st.w	$a2, $a0, 0
	vst	$vr0, $a0, 20
	vst	$vr1, $a0, 100
	vst	$vr2, $a0, 180
.LBB1_12:                               # %thread-pre-split8.thread
	ld.bu	$a1, $a1, 0
	andi	$a1, $a1, 1
	bnez	$a1, .LBB1_6
# %bb.13:
	addi.w	$a1, $a2, -1
	addi.d	$a2, $a0, 4
	slli.d	$a3, $a1, 4
	vldx	$vr0, $a2, $a3
	addi.d	$a2, $a0, 84
	vldx	$vr1, $a2, $a3
	addi.d	$a2, $a0, 164
	vldx	$vr2, $a2, $a3
	st.w	$a1, $a0, 0
	vst	$vr0, $a0, 4
	vst	$vr1, $a0, 84
	vst	$vr2, $a0, 164
	ret
.Lfunc_end1:
	.size	_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield, .Lfunc_end1-_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN22btVoronoiSimplexSolver5resetEv
.LCPI2_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN22btVoronoiSimplexSolver5resetEv
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver5resetEv,@function
_ZN22btVoronoiSimplexSolver5resetEv:    # @_ZN22btVoronoiSimplexSolver5resetEv
# %bb.0:
	st.b	$zero, $a0, 308
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 352
	vst	$vr0, $a0, 292
	ld.bu	$a1, $a0, 328
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 332
	st.b	$zero, $a0, 348
	andi	$a1, $a1, 240
	st.b	$a1, $a0, 328
	ret
.Lfunc_end2:
	.size	_ZN22btVoronoiSimplexSolver5resetEv, .Lfunc_end2-_ZN22btVoronoiSimplexSolver5resetEv
                                        # -- End function
	.globl	_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_ # -- Begin function _ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_,@function
_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_: # @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_
# %bb.0:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 292
	ori	$a4, $zero, 1
	st.b	$a4, $a0, 352
	ld.w	$a4, $a0, 0
	vld	$vr0, $a1, 0
	alsl.d	$a1, $a4, $a0, 4
	vst	$vr0, $a1, 4
	ld.w	$a1, $a0, 0
	vld	$vr0, $a2, 0
	alsl.d	$a1, $a1, $a0, 4
	vst	$vr0, $a1, 84
	ld.w	$a1, $a0, 0
	vld	$vr0, $a3, 0
	alsl.d	$a1, $a1, $a0, 4
	vst	$vr0, $a1, 164
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	ret
.Lfunc_end3:
	.size	_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_, .Lfunc_end3-_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv
.LCPI4_0:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv,@function
_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv: # @_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv
# %bb.0:
	ld.bu	$a1, $a0, 352
	beqz	$a1, .LBB4_4
# %bb.1:
	st.b	$zero, $a0, 348
	ld.b	$a1, $a0, 328
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 332
	ld.w	$a2, $a0, 0
	bstrins.d	$a1, $zero, 3, 0
	st.b	$a1, $a0, 328
	ori	$a3, $zero, 4
	st.b	$zero, $a0, 352
	bltu	$a3, $a2, .LBB4_14
# %bb.2:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	addi.d	$a6, $a0, 312
	addi.d	$fp, $a0, 328
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI4_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI4_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB4_3:
	move	$a1, $zero
	st.b	$zero, $a0, 308
	b	.LBB4_24
.LBB4_4:                                # %._crit_edge
	ld.b	$a1, $a0, 308
	andi	$a0, $a1, 1
	ret
.LBB4_5:
	addi.d	$a2, $a0, 4
	addi.d	$a3, $a0, 20
	addi.d	$a4, $a0, 36
	move	$s0, $a0
	addi.d	$a5, $a0, 52
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 32
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_15
# %bb.6:
	fld.s	$fa0, $s0, 84
	fld.s	$fa1, $s0, 332
	fld.s	$fa2, $s0, 88
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fld.s	$fa3, $s0, 92
	fld.s	$fa4, $s0, 100
	fld.s	$fa5, $s0, 336
	fld.s	$fa6, $s0, 104
	fld.s	$fa7, $s0, 108
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa5, $fa6
	fmul.s	$fa7, $fa5, $fa7
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa2, $fa2, $fa6
	fld.s	$fa4, $s0, 116
	fld.s	$fa6, $s0, 340
	fld.s	$ft0, $s0, 120
	fld.s	$ft1, $s0, 124
	fadd.s	$fa3, $fa3, $fa7
	fmul.s	$fa4, $fa4, $fa6
	fmul.s	$fa7, $fa6, $ft0
	fmul.s	$ft0, $fa6, $ft1
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa2, $fa2, $fa7
	fld.s	$fa4, $s0, 132
	fld.s	$fa7, $s0, 344
	fld.s	$ft1, $s0, 136
	fld.s	$ft2, $s0, 140
	fadd.s	$fa3, $fa3, $ft0
	fmul.s	$fa4, $fa4, $fa7
	fmul.s	$ft0, $fa7, $ft1
	fmul.s	$ft1, $fa7, $ft2
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa2, $fa2, $ft0
	fadd.s	$fa3, $fa3, $ft1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa4, $s0, 164
	fld.s	$ft0, $s0, 168
	fld.s	$ft1, $s0, 172
	st.d	$a0, $s0, 244
	fmul.s	$fa4, $fa1, $fa4
	fmul.s	$ft0, $fa1, $ft0
	fmul.s	$fa1, $fa1, $ft1
	fld.s	$ft1, $s0, 180
	fld.s	$ft2, $s0, 184
	fld.s	$ft3, $s0, 188
	st.d	$a1, $s0, 252
	fmul.s	$ft1, $fa5, $ft1
	fmul.s	$ft2, $fa5, $ft2
	fmul.s	$fa5, $fa5, $ft3
	fadd.s	$fa4, $fa4, $ft1
	fadd.s	$ft0, $ft0, $ft2
	fld.s	$ft1, $s0, 196
	fld.s	$ft2, $s0, 200
	fld.s	$ft3, $s0, 204
	fadd.s	$fa1, $fa1, $fa5
	fmul.s	$fa5, $fa6, $ft1
	fmul.s	$ft1, $fa6, $ft2
	fmul.s	$fa6, $fa6, $ft3
	fadd.s	$fa4, $fa4, $fa5
	fadd.s	$fa5, $ft0, $ft1
	fld.s	$ft0, $s0, 212
	fld.s	$ft1, $s0, 216
	fld.s	$ft2, $s0, 220
	fadd.s	$fa1, $fa1, $fa6
	fmul.s	$fa6, $fa7, $ft0
	fmul.s	$ft0, $fa7, $ft1
	fmul.s	$fa7, $fa7, $ft2
	fadd.s	$fa4, $fa4, $fa6
	fadd.s	$fa5, $fa5, $ft0
	fadd.s	$fa1, $fa1, $fa7
	b	.LBB4_11
.LBB4_7:
	fld.s	$fa0, $a0, 4
	movgr2fr.w	$fs0, $zero
	fsub.s	$fa2, $fs0, $fa0
	fld.s	$fa1, $a0, 20
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 12
	fld.s	$fa5, $a0, 24
	fsub.s	$fa1, $fa1, $fa0
	fld.s	$fa0, $a0, 28
	fsub.s	$fa6, $fs0, $fa3
	fsub.s	$fa3, $fa5, $fa3
	fsub.s	$fa5, $fs0, $fa4
	fsub.s	$fa4, $fa0, $fa4
	fmul.s	$fa0, $fa6, $fa3
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fmadd.s	$fa2, $fa4, $fa5, $fa0
	fcmp.cule.s	$fcc0, $fa2, $fs0
	ori	$a2, $zero, 1
	fmov.s	$fa0, $fs0
	bcnez	$fcc0, .LBB4_19
# %bb.8:
	fmul.s	$fa0, $fa3, $fa3
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa4, $fa4, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB4_18
# %bb.9:
	fdiv.s	$fa0, $fa2, $fa0
	ori	$a2, $zero, 3
	b	.LBB4_19
.LBB4_10:
	addi.d	$a2, $a0, 4
	addi.d	$a3, $a0, 20
	addi.d	$a4, $a0, 36
	vst	$vr0, $sp, 32
	addi.d	$a1, $sp, 32
	move	$a5, $a6
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s0, 84
	fld.s	$fa1, $s0, 332
	fld.s	$fa2, $s0, 88
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fld.s	$fa3, $s0, 92
	fld.s	$fa4, $s0, 100
	fld.s	$fa5, $s0, 336
	fld.s	$fa6, $s0, 104
	fld.s	$fa7, $s0, 108
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa5, $fa6
	fmul.s	$fa7, $fa5, $fa7
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa2, $fa2, $fa6
	fld.s	$fa4, $s0, 116
	fld.s	$fa6, $s0, 340
	fld.s	$ft0, $s0, 120
	fld.s	$ft1, $s0, 124
	fadd.s	$fa3, $fa3, $fa7
	fmul.s	$fa4, $fa4, $fa6
	fmul.s	$fa7, $fa6, $ft0
	fmul.s	$ft0, $fa6, $ft1
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa3, $fa3, $ft0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa4, $s0, 164
	fld.s	$fa7, $s0, 168
	fld.s	$ft0, $s0, 172
	st.d	$a0, $s0, 244
	fmul.s	$fa4, $fa1, $fa4
	fmul.s	$fa7, $fa1, $fa7
	fmul.s	$fa1, $fa1, $ft0
	fld.s	$ft0, $s0, 180
	fld.s	$ft1, $s0, 184
	fld.s	$ft2, $s0, 188
	st.d	$a1, $s0, 252
	fmul.s	$ft0, $fa5, $ft0
	fmul.s	$ft1, $fa5, $ft1
	fmul.s	$fa5, $fa5, $ft2
	fadd.s	$fa4, $fa4, $ft0
	fadd.s	$fa7, $fa7, $ft1
	fld.s	$ft0, $s0, 196
	fld.s	$ft1, $s0, 200
	fld.s	$ft2, $s0, 204
	fadd.s	$fa1, $fa1, $fa5
	fmul.s	$fa5, $fa6, $ft0
	fmul.s	$ft0, $fa6, $ft1
	fmul.s	$fa6, $fa6, $ft2
	fadd.s	$fa4, $fa4, $fa5
	fadd.s	$fa5, $fa7, $ft0
	fadd.s	$fa1, $fa1, $fa6
.LBB4_11:
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a1, $fa5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 260
	st.d	$a1, $s0, 268
	fsub.s	$fa0, $fa0, $fa4
	fsub.s	$fa2, $fa2, $fa5
	fsub.s	$fa1, $fa3, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 276
	st.d	$a1, $s0, 284
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s0, 332
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fa1, $fa0
	move	$a1, $zero
	bcnez	$fcc0, .LBB4_23
# %bb.12:
	fld.s	$fa1, $s0, 336
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB4_21
	b	.LBB4_23
.LBB4_13:                               # %_ZN25btSubSimplexClosestResult7isValidEv.exit
	vld	$vr0, $a0, 84
	vld	$vr1, $a0, 164
	vst	$vr0, $a0, 244
	vst	$vr1, $a0, 260
	fld.s	$fa0, $a0, 244
	fld.s	$fa1, $a0, 260
	fld.s	$fa2, $a0, 248
	fld.s	$fa3, $a0, 264
	fld.s	$fa4, $a0, 252
	fld.s	$fa5, $a0, 268
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 276
	st.d	$a2, $a0, 284
	st.b	$zero, $a0, 348
	vst	$vr0, $a0, 332
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 308
	b	.LBB4_24
.LBB4_14:
	st.b	$zero, $a0, 308
	andi	$a0, $zero, 1
	ret
.LBB4_15:
	ld.bu	$a0, $s0, 348
	beqz	$a0, .LBB4_17
# %bb.16:
	move	$a1, $zero
	st.b	$zero, $s0, 308
	b	.LBB4_24
.LBB4_17:
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 308
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 276
	b	.LBB4_24
.LBB4_18:
	ori	$a2, $zero, 2
	vldi	$vr0, -1168
.LBB4_19:
	or	$a1, $a1, $a2
	st.b	$a1, $a0, 328
	vldi	$vr1, -1168
	fsub.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a0, 332
	fst.s	$fa0, $a0, 336
	fld.s	$fa1, $a0, 100
	fld.s	$fa2, $a0, 84
	fld.s	$fa3, $a0, 104
	fld.s	$fa4, $a0, 88
	fld.s	$fa5, $a0, 108
	fld.s	$fa6, $a0, 92
	st.d	$zero, $a0, 340
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa5, $fa5, $fa6
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa3, $fa0, $fa3
	fmul.s	$fa5, $fa0, $fa5
	fadd.s	$fa1, $fa2, $fa1
	fadd.s	$fa2, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa5
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 244
	fld.s	$fa4, $a0, 180
	fld.s	$fa5, $a0, 164
	fld.s	$fa6, $a0, 184
	fld.s	$fa7, $a0, 168
	fld.s	$ft0, $a0, 188
	fld.s	$ft1, $a0, 172
	st.d	$a2, $a0, 252
	fsub.s	$fa4, $fa4, $fa5
	fsub.s	$fa6, $fa6, $fa7
	fsub.s	$ft0, $ft0, $ft1
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa6, $fa0, $fa6
	fmul.s	$fa0, $fa0, $ft0
	fadd.s	$fa4, $fa5, $fa4
	fadd.s	$fa5, $fa7, $fa6
	fadd.s	$fa0, $ft1, $fa0
	movfr2gr.s	$a1, $fa4
	movfr2gr.s	$a2, $fa5
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 260
	st.d	$a2, $a0, 268
	fsub.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa2, $fa5
	fsub.s	$fa0, $fa3, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 276
	st.d	$a2, $a0, 284
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s0, 332
	fcmp.cult.s	$fcc0, $fa0, $fs0
	move	$a1, $zero
	bcnez	$fcc0, .LBB4_23
# %bb.20:
	fld.s	$fa1, $s0, 336
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_23
.LBB4_21:
	fld.s	$fa1, $s0, 340
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_23
# %bb.22:
	fld.s	$fa1, $s0, 344
	fcmp.cle.s	$fcc0, $fa0, $fa1
	movcf2gr	$a1, $fcc0
.LBB4_23:                               # %_ZN25btSubSimplexClosestResult7isValidEv.exit264
	st.b	$a1, $s0, 308
.LBB4_24:
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	andi	$a0, $a1, 1
	ret
.Lfunc_end4:
	.size	_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv, .Lfunc_end4-_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_3-.LJTI4_0
	.word	.LBB4_13-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_5-.LJTI4_0
                                        # -- End function
	.text
	.globl	_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult # -- Begin function _ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult,@function
_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult: # @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult
# %bb.0:
	addi.d	$sp, $sp, -16
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	ld.b	$a0, $a5, 16
	bstrins.d	$a0, $zero, 3, 0
	st.b	$a0, $a5, 16
	fld.s	$fa4, $a3, 0
	fld.s	$fa1, $a2, 0
	fsub.s	$fa5, $fa4, $fa1
	fld.s	$fa6, $a3, 4
	fld.s	$fa2, $a2, 4
	fld.s	$fa7, $a3, 8
	fld.s	$fa3, $a2, 8
	fld.s	$ft6, $a4, 0
	fld.s	$ft7, $a4, 4
	fsub.s	$ft3, $fa6, $fa2
	fsub.s	$ft2, $fa7, $fa3
	fsub.s	$ft1, $ft6, $fa1
	fsub.s	$ft0, $ft7, $fa2
	fld.s	$ft9, $a4, 8
	fld.s	$ft15, $a1, 0
	fld.s	$fs0, $a1, 4
	fld.s	$fs1, $a1, 8
	fsub.s	$ft5, $ft9, $fa3
	fsub.s	$fa0, $ft15, $fa1
	fsub.s	$ft4, $fs0, $fa2
	fsub.s	$ft8, $fs1, $fa3
	fmul.s	$ft10, $ft3, $ft4
	fmadd.s	$ft10, $fa5, $fa0, $ft10
	fmadd.s	$ft12, $ft2, $ft8, $ft10
	fmul.s	$ft4, $ft0, $ft4
	fmadd.s	$ft4, $ft1, $fa0, $ft4
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fa0, $ft12
	fmadd.s	$ft10, $ft5, $ft8, $ft4
	bcnez	$fcc0, .LBB5_3
# %bb.1:
	movgr2fr.w	$ft8, $zero
	fcmp.cult.s	$fcc0, $ft8, $ft10
	bcnez	$fcc0, .LBB5_3
# %bb.2:
	vld	$vr0, $a2, 0
	vst	$vr0, $a5, 0
	ori	$a0, $a0, 1
	st.b	$a0, $a5, 16
	vldi	$vr0, -1168
	fmov.s	$ft4, $ft8
	b	.LBB5_21
.LBB5_3:
	fsub.s	$ft4, $ft15, $fa4
	fsub.s	$ft8, $fs0, $fa6
	fsub.s	$ft13, $fs1, $fa7
	fmul.s	$ft11, $ft3, $ft8
	fmadd.s	$ft11, $fa5, $ft4, $ft11
	fmadd.s	$ft11, $ft2, $ft13, $ft11
	fmul.s	$ft8, $ft0, $ft8
	fmadd.s	$ft4, $ft1, $ft4, $ft8
	fcmp.cult.s	$fcc0, $ft11, $fa0
	fmadd.s	$ft14, $ft5, $ft13, $ft4
	bcnez	$fcc0, .LBB5_6
# %bb.4:
	fcmp.cult.s	$fcc0, $ft11, $ft14
	bcnez	$fcc0, .LBB5_6
# %bb.5:
	vld	$vr1, $a3, 0
	vst	$vr1, $a5, 0
	ori	$a0, $a0, 2
	st.b	$a0, $a5, 16
	vldi	$vr16, -1168
	fmov.s	$ft4, $fa0
	b	.LBB5_21
.LBB5_6:
	fneg.s	$fa0, $ft10
	fmul.s	$ft4, $ft11, $fa0
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fa0, $ft11
	fmadd.s	$ft13, $ft12, $ft14, $ft4
	bcnez	$fcc0, .LBB5_10
# %bb.7:
	movgr2fr.w	$ft4, $zero
	fcmp.cult.s	$fcc0, $ft12, $ft4
	bcnez	$fcc0, .LBB5_10
# %bb.8:
	fcmp.cult.s	$fcc0, $ft4, $ft13
	bcnez	$fcc0, .LBB5_10
# %bb.9:
	fsub.s	$fa0, $ft12, $ft11
	fdiv.s	$ft8, $ft12, $fa0
	fmul.s	$fa0, $fa5, $ft8
	fmul.s	$fa4, $ft3, $ft8
	fmul.s	$fa5, $ft2, $ft8
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa1, $fa2, $fa4
	fadd.s	$fa2, $fa3, $fa5
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a5, 0
	st.d	$a2, $a5, 8
	ori	$a0, $a0, 3
	st.b	$a0, $a5, 16
	vldi	$vr0, -1168
	fsub.s	$fa0, $fa0, $ft8
	b	.LBB5_21
.LBB5_10:
	fsub.s	$ft4, $ft15, $ft6
	fsub.s	$ft8, $fs0, $ft7
	fsub.s	$ft15, $fs1, $ft9
	fmul.s	$fs0, $ft3, $ft8
	fmadd.s	$fs0, $fa5, $ft4, $fs0
	fmul.s	$ft8, $ft0, $ft8
	fmadd.s	$ft4, $ft1, $ft4, $ft8
	fmadd.s	$ft4, $ft5, $ft15, $ft4
	fcmp.cult.s	$fcc0, $ft4, $fa0
	fmadd.s	$ft15, $ft2, $ft15, $fs0
	bcnez	$fcc0, .LBB5_13
# %bb.11:
	fcmp.cult.s	$fcc0, $ft4, $ft15
	bcnez	$fcc0, .LBB5_13
# %bb.12:
	vld	$vr1, $a4, 0
	vst	$vr1, $a5, 0
	ori	$a0, $a0, 4
	st.b	$a0, $a5, 16
	vldi	$vr12, -1168
	fmov.s	$ft8, $fa0
	b	.LBB5_21
.LBB5_13:
	fneg.s	$fa0, $ft4
	fmul.s	$ft8, $ft12, $fa0
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fa0, $ft4
	fmadd.s	$ft12, $ft15, $ft10, $ft8
	bcnez	$fcc0, .LBB5_17
# %bb.14:
	movgr2fr.w	$ft8, $zero
	fcmp.cult.s	$fcc0, $ft10, $ft8
	bcnez	$fcc0, .LBB5_17
# %bb.15:
	fcmp.cult.s	$fcc0, $ft8, $ft12
	bcnez	$fcc0, .LBB5_17
# %bb.16:
	fsub.s	$fa0, $ft10, $ft4
	fdiv.s	$ft4, $ft10, $fa0
	fmul.s	$fa0, $ft1, $ft4
	fmul.s	$fa4, $ft0, $ft4
	fmul.s	$fa5, $ft5, $ft4
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa1, $fa2, $fa4
	fadd.s	$fa2, $fa3, $fa5
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a5, 0
	st.d	$a2, $a5, 8
	ori	$a0, $a0, 5
	st.b	$a0, $a5, 16
	vldi	$vr0, -1168
	fsub.s	$fa0, $fa0, $ft4
	b	.LBB5_21
.LBB5_17:
	fneg.s	$ft8, $ft14
	fmul.s	$ft8, $ft15, $ft8
	fmadd.s	$ft8, $ft11, $ft4, $ft8
	fcmp.cult.s	$fcc0, $fa0, $ft8
	bcnez	$fcc0, .LBB5_20
# %bb.18:
	fsub.s	$ft10, $ft14, $ft11
	fcmp.cult.s	$fcc0, $ft10, $fa0
	bcnez	$fcc0, .LBB5_20
# %bb.19:
	fsub.s	$ft4, $ft15, $ft4
	fcmp.cult.s	$fcc0, $ft4, $fa0
	bceqz	$fcc0, .LBB5_22
.LBB5_20:
	fadd.s	$fa0, $ft8, $ft12
	fadd.s	$fa0, $ft13, $fa0
	frecip.s	$fa0, $fa0
	fmul.s	$ft8, $ft12, $fa0
	fmul.s	$ft4, $ft13, $fa0
	fmul.s	$fa0, $fa5, $ft8
	fmul.s	$fa4, $ft3, $ft8
	fmul.s	$fa5, $ft2, $ft8
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa1, $fa2, $fa4
	fadd.s	$fa2, $fa3, $fa5
	fmul.s	$fa3, $ft1, $ft4
	fmul.s	$fa4, $ft0, $ft4
	fmul.s	$fa5, $ft5, $ft4
	fadd.s	$fa0, $fa3, $fa0
	fadd.s	$fa1, $fa4, $fa1
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a5, 0
	st.d	$a2, $a5, 8
	ori	$a0, $a0, 7
	st.b	$a0, $a5, 16
	vldi	$vr0, -1168
	fsub.s	$fa0, $fa0, $ft8
	fsub.s	$fa0, $fa0, $ft4
.LBB5_21:
	fst.s	$fa0, $a5, 20
	fst.s	$ft8, $a5, 24
	fst.s	$ft4, $a5, 28
	ori	$a0, $zero, 1
	st.w	$zero, $a5, 32
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_22:
	fadd.s	$fa1, $ft10, $ft4
	fdiv.s	$ft4, $ft10, $fa1
	fsub.s	$fa1, $ft6, $fa4
	fsub.s	$fa2, $ft7, $fa6
	fsub.s	$fa3, $ft9, $fa7
	fmul.s	$fa1, $fa1, $ft4
	fmul.s	$fa2, $fa2, $ft4
	fmul.s	$fa3, $fa3, $ft4
	fadd.s	$fa1, $fa4, $fa1
	fadd.s	$fa2, $fa6, $fa2
	fadd.s	$fa3, $fa7, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a5, 0
	st.d	$a2, $a5, 8
	ori	$a0, $a0, 6
	st.b	$a0, $a5, 16
	vldi	$vr1, -1168
	fsub.s	$ft8, $fa1, $ft4
	b	.LBB5_21
.Lfunc_end5:
	.size	_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult, .Lfunc_end5-_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult
.LCPI6_0:
	.word	0x322bcc76                      # float 9.99999905E-9
.LCPI6_1:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.text
	.globl	_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult,@function
_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult: # @_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult
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
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a6
	move	$s0, $a1
	vld	$vr0, $a1, 0
	ld.b	$a7, $a6, 16
	move	$s1, $a3
	move	$s4, $a2
	vst	$vr0, $a6, 0
	ori	$a0, $a7, 15
	st.b	$a0, $a6, 16
	fld.s	$fa0, $a3, 0
	fld.s	$fa2, $a2, 0
	fld.s	$fa4, $a3, 4
	fld.s	$fa5, $a2, 4
	move	$s3, $a5
	move	$s2, $a4
	fsub.s	$ft1, $fa0, $fa2
	fsub.s	$ft4, $fa4, $fa5
	fld.s	$fa1, $a3, 8
	fld.s	$fa3, $a2, 8
	fld.s	$fa6, $a4, 0
	fld.s	$fa7, $a4, 4
	fld.s	$ft0, $a4, 8
	fsub.s	$ft2, $fa1, $fa3
	fsub.s	$ft5, $fa6, $fa2
	fsub.s	$ft6, $fa7, $fa5
	fsub.s	$ft3, $ft0, $fa3
	fneg.s	$ft7, $ft6
	fmul.s	$ft7, $ft2, $ft7
	fmadd.s	$ft13, $ft4, $ft3, $ft7
	fneg.s	$ft7, $ft3
	fld.s	$fs0, $a1, 0
	fld.s	$fs1, $a1, 4
	fmul.s	$ft7, $ft1, $ft7
	fmadd.s	$ft14, $ft2, $ft5, $ft7
	fsub.s	$ft10, $fs0, $fa2
	fsub.s	$ft11, $fs1, $fa5
	fmul.s	$ft12, $ft11, $ft14
	fld.s	$ft7, $a5, 0
	fld.s	$ft8, $a5, 4
	fld.s	$ft9, $a5, 8
	fmadd.s	$ft12, $ft10, $ft13, $ft12
	fsub.s	$ft15, $ft7, $fa2
	fsub.s	$fs2, $ft8, $fa5
	fsub.s	$fs3, $ft9, $fa3
	fmul.s	$ft14, $ft14, $fs2
	fmadd.s	$ft13, $ft15, $ft13, $ft14
	fneg.s	$ft14, $fs2
	fmul.s	$ft14, $ft3, $ft14
	fmadd.s	$ft14, $ft6, $fs3, $ft14
	fneg.s	$fs4, $fs3
	fmul.s	$fs4, $ft5, $fs4
	fmadd.s	$fs4, $ft3, $ft15, $fs4
	fneg.s	$fs5, $ft15
	fmul.s	$fs5, $ft6, $fs5
	fmadd.s	$fs5, $ft5, $fs2, $fs5
	fmul.s	$fs6, $ft11, $fs4
	fmadd.s	$fs6, $ft10, $ft14, $fs6
	fmul.s	$fs4, $ft4, $fs4
	fmadd.s	$ft14, $ft1, $ft14, $fs4
	fneg.s	$fs4, $ft4
	fmul.s	$fs4, $fs3, $fs4
	fmadd.s	$fs4, $fs2, $ft2, $fs4
	fneg.s	$fs7, $ft1
	fmul.s	$fs2, $fs2, $fs7
	fneg.s	$fs7, $ft5
	fmul.s	$fs7, $ft4, $fs7
	fmadd.s	$ft4, $ft15, $ft4, $fs2
	fneg.s	$fs2, $ft2
	fmul.s	$ft15, $ft15, $fs2
	fmadd.s	$fs7, $ft1, $ft6, $fs7
	fmadd.s	$ft1, $fs3, $ft1, $ft15
	fmul.s	$ft11, $ft11, $ft1
	fmadd.s	$ft10, $ft10, $fs4, $ft11
	fld.s	$fs2, $a1, 8
	fmul.s	$ft1, $ft6, $ft1
	fmadd.s	$ft1, $ft5, $fs4, $ft1
	fmadd.s	$ft5, $fs3, $fs7, $ft13
	fsub.s	$ft6, $fs2, $fa3
	fmadd.s	$ft11, $ft6, $fs7, $ft12
	fmadd.s	$ft2, $ft2, $fs5, $ft14
	fmadd.s	$ft12, $ft6, $fs5, $fs6
	fmadd.s	$ft6, $ft6, $ft4, $ft10
	fmadd.s	$ft1, $ft3, $ft4, $ft1
	fsub.s	$ft3, $ft7, $fa0
	fsub.s	$ft4, $ft8, $fa4
	fsub.s	$ft7, $ft9, $fa1
	fsub.s	$fa6, $fa6, $fa0
	fsub.s	$fa7, $fa7, $fa4
	fsub.s	$ft0, $ft0, $fa1
	fneg.s	$ft8, $fa7
	fmul.s	$ft8, $ft7, $ft8
	fmadd.s	$ft8, $ft4, $ft0, $ft8
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $ft3, $ft0
	fmadd.s	$ft0, $ft7, $fa6, $ft0
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft4, $fa6
	fmadd.s	$fa6, $ft3, $fa7, $fa6
	fsub.s	$fa7, $fs0, $fa0
	fsub.s	$ft3, $fs1, $fa4
	fmul.s	$ft3, $ft3, $ft0
	fmadd.s	$fa7, $fa7, $ft8, $ft3
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa2, $fa5, $fa4
	fmul.s	$fa2, $fa2, $ft0
	fmadd.s	$fa0, $fa0, $ft8, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fsub.s	$fa2, $fs2, $fa1
	fmadd.s	$fa2, $fa2, $fa6, $fa7
	fld.s	$fa4, $a0, %pc_lo12(.LCPI6_0)
	fsub.s	$fa1, $fa3, $fa1
	fmadd.s	$fa0, $fa1, $fa6, $fa0
	fmul.s	$fa1, $ft5, $ft5
	fcmp.clt.s	$fcc1, $fa1, $fa4
	fmul.s	$fa1, $ft2, $ft2
	fcmp.clt.s	$fcc2, $fa1, $fa4
	fmul.s	$fa1, $ft1, $ft1
	fcmp.clt.s	$fcc3, $fa1, $fa4
	fmul.s	$fa1, $fa0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fmul.s	$fa1, $ft11, $ft5
	movgr2fr.w	$fa3, $zero
	fcmp.clt.s	$fcc5, $fa1, $fa3
	fmul.s	$fa1, $ft12, $ft2
	fcmp.clt.s	$fcc6, $fa1, $fa3
	fmul.s	$fa1, $ft6, $ft1
	fcmp.clt.s	$fcc7, $fa1, $fa3
	fmul.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc4, $fa0, $fa3
	movcf2gr	$a0, $fcc5
	movcf2gr	$a1, $fcc1
	movcf2gr	$a2, $fcc6
	movcf2gr	$a3, $fcc2
	movcf2gr	$a4, $fcc7
	movcf2gr	$a5, $fcc3
	masknez	$a0, $a0, $a1
	addi.w	$a6, $zero, -1
	maskeqz	$a1, $a6, $a1
	or	$a0, $a1, $a0
	masknez	$a1, $a2, $a3
	maskeqz	$a2, $a6, $a3
	or	$s8, $a2, $a1
	masknez	$a1, $a4, $a5
	maskeqz	$a2, $a6, $a5
	or	$s7, $a2, $a1
	movcf2gr	$a1, $fcc4
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a6, $a2
	or	$s6, $a2, $a1
	or	$a1, $s7, $a0
	or	$a1, $a1, $s6
	or	$a1, $a1, $s8
	st.b	$zero, $sp, 32
	bltz	$a1, .LBB6_6
# %bb.1:
	beqz	$a1, .LBB6_7
# %bb.2:
	pcalau12i	$s5, %pc_hi20(.LCPI6_1)
	beqz	$a0, .LBB6_8
# %bb.3:
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a5, $sp, 16
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $sp, 16
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 24
	fsub.s	$fa0, $fa1, $fs0
	fsub.s	$fa4, $fa2, $fs1
	fsub.s	$fa5, $fa3, $fs2
	fld.s	$fs0, $s5, %pc_lo12(.LCPI6_1)
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa0, $fa0, $fa0, $fa4
	fmadd.s	$fa0, $fa5, $fa5, $fa0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB6_5
# %bb.4:
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 3, 0
	fld.s	$fa4, $sp, 28
	ld.bu	$a0, $sp, 32
	fst.s	$fa1, $fp, 0
	fst.s	$fa2, $fp, 4
	fst.s	$fa3, $fp, 8
	andi	$a0, $a0, 7
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 36
	fld.s	$fa1, $sp, 44
	fst.s	$fa4, $fp, 12
	st.b	$a0, $fp, 16
	st.d	$a1, $fp, 20
	fst.s	$fa1, $fp, 28
	st.w	$zero, $fp, 32
	fmov.s	$fs0, $fa0
.LBB6_5:
	bnez	$s8, .LBB6_9
	b	.LBB6_11
.LBB6_6:
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 36
	b	.LBB6_18
.LBB6_7:
	move	$a0, $zero
	b	.LBB6_18
.LBB6_8:
	fld.s	$fs0, $s5, %pc_lo12(.LCPI6_1)
	beqz	$s8, .LBB6_11
.LBB6_9:
	addi.d	$a5, $sp, 16
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $sp, 16
	fld.s	$fa3, $sp, 20
	fld.s	$fa1, $sp, 24
	fld.s	$fa0, $s0, 0
	fld.s	$fa4, $s0, 4
	fld.s	$fa5, $s0, 8
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa4, $fa3, $fa4
	fsub.s	$fa5, $fa1, $fa5
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa0, $fa0, $fa0, $fa4
	fmadd.s	$fa0, $fa5, $fa5, $fa0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB6_11
# %bb.10:
	fld.s	$fa4, $sp, 28
	fst.s	$fa2, $fp, 0
	fst.s	$fa3, $fp, 4
	ld.bu	$a0, $sp, 32
	fst.s	$fa1, $fp, 8
	ld.bu	$a1, $fp, 16
	fst.s	$fa4, $fp, 12
	andi	$a2, $a0, 6
	bstrins.d	$a0, $a2, 63, 1
	srli.d	$a1, $a1, 4
	fld.s	$fa1, $sp, 36
	bstrins.d	$a0, $a1, 7, 4
	ld.d	$a1, $sp, 40
	st.b	$a0, $fp, 16
	fst.s	$fa1, $fp, 20
	st.w	$zero, $fp, 24
	st.d	$a1, $fp, 28
	fmov.s	$fs0, $fa0
.LBB6_11:
	beqz	$s7, .LBB6_14
# %bb.12:
	addi.d	$a5, $sp, 16
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $sp, 16
	fld.s	$fa3, $sp, 20
	fld.s	$fa1, $sp, 24
	fld.s	$fa0, $s0, 0
	fld.s	$fa4, $s0, 4
	fld.s	$fa5, $s0, 8
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa4, $fa3, $fa4
	fsub.s	$fa5, $fa1, $fa5
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa0, $fa0, $fa0, $fa4
	fmadd.s	$fa0, $fa5, $fa5, $fa0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB6_14
# %bb.13:
	fld.s	$fa4, $sp, 28
	fst.s	$fa2, $fp, 0
	fst.s	$fa3, $fp, 4
	ld.bu	$a0, $sp, 32
	fst.s	$fa1, $fp, 8
	fst.s	$fa4, $fp, 12
	ld.bu	$a1, $fp, 16
	srli.d	$a2, $a0, 1
	bstrpick.d	$a3, $a2, 1, 1
	bstrins.d	$a0, $a3, 63, 1
	bstrins.d	$a0, $a2, 3, 3
	srli.d	$a1, $a1, 4
	bstrins.d	$a0, $a1, 7, 4
	fld.s	$fa1, $sp, 36
	fld.s	$fa2, $sp, 44
	st.b	$a0, $fp, 16
	fld.s	$fa3, $sp, 40
	fst.s	$fa1, $fp, 20
	fst.s	$fa2, $fp, 24
	st.w	$zero, $fp, 28
	fst.s	$fa3, $fp, 32
	fmov.s	$fs0, $fa0
.LBB6_14:
	ori	$a0, $zero, 1
	beqz	$s6, .LBB6_18
# %bb.15:
	addi.d	$a5, $sp, 16
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $sp, 16
	fld.s	$fa2, $sp, 20
	fld.s	$fa0, $sp, 24
	fld.s	$fa3, $s0, 0
	fld.s	$fa4, $s0, 4
	fld.s	$fa5, $s0, 8
	fsub.s	$fa3, $fa1, $fa3
	fsub.s	$fa4, $fa2, $fa4
	fsub.s	$fa5, $fa0, $fa5
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa3, $fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fcmp.cule.s	$fcc0, $fs0, $fa3
	bcnez	$fcc0, .LBB6_17
# %bb.16:
	fld.s	$fa3, $sp, 28
	fst.s	$fa1, $fp, 0
	fst.s	$fa2, $fp, 4
	ld.bu	$a0, $sp, 32
	fst.s	$fa0, $fp, 8
	fst.s	$fa3, $fp, 12
	ld.bu	$a1, $fp, 16
	andi	$a2, $a0, 4
	bstrins.d	$a2, $a0, 1, 1
	srli.d	$a0, $a0, 1
	bstrins.d	$a2, $a0, 3, 3
	srli.d	$a0, $a1, 4
	bstrins.d	$a2, $a0, 7, 4
	st.b	$a2, $fp, 16
	fld.s	$fa0, $sp, 36
	fld.s	$fa1, $sp, 44
	fld.s	$fa2, $sp, 40
	st.w	$zero, $fp, 20
	fst.s	$fa0, $fp, 24
	fst.s	$fa1, $fp, 28
	fst.s	$fa2, $fp, 32
.LBB6_17:
	ori	$a0, $zero, 1
.LBB6_18:
	fld.d	$fs7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
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
.Lfunc_end6:
	.size	_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult, .Lfunc_end6-_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult
                                        # -- End function
	.globl	_ZN22btVoronoiSimplexSolver7closestER9btVector3 # -- Begin function _ZN22btVoronoiSimplexSolver7closestER9btVector3
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver7closestER9btVector3,@function
_ZN22btVoronoiSimplexSolver7closestER9btVector3: # @_ZN22btVoronoiSimplexSolver7closestER9btVector3
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 276
	vst	$vr0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	_ZN22btVoronoiSimplexSolver7closestER9btVector3, .Lfunc_end7-_ZN22btVoronoiSimplexSolver7closestER9btVector3
                                        # -- End function
	.globl	_ZN22btVoronoiSimplexSolver9maxVertexEv # -- Begin function _ZN22btVoronoiSimplexSolver9maxVertexEv
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver9maxVertexEv,@function
_ZN22btVoronoiSimplexSolver9maxVertexEv: # @_ZN22btVoronoiSimplexSolver9maxVertexEv
# %bb.0:
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB8_4
# %bb.1:                                # %.lr.ph
	addi.d	$a0, $a0, 12
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a0, -4
	fld.s	$fa2, $a0, -8
	fld.s	$fa3, $a0, 0
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB8_2
# %bb.3:                                # %._crit_edge
	ret
.LBB8_4:
	movgr2fr.w	$fa0, $zero
	ret
.Lfunc_end8:
	.size	_ZN22btVoronoiSimplexSolver9maxVertexEv, .Lfunc_end8-_ZN22btVoronoiSimplexSolver9maxVertexEv
                                        # -- End function
	.globl	_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_ # -- Begin function _ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_
	.p2align	5
	.type	_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_,@function
_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_: # @_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_
# %bb.0:
	ld.w	$a4, $a0, 0
	blez	$a4, .LBB9_3
# %bb.1:                                # %.lr.ph
	move	$a5, $zero
	move	$a6, $zero
	.p2align	4, , 16
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a5
	vld	$vr0, $a4, 4
	vstx	$vr0, $a3, $a5
	vld	$vr0, $a4, 84
	vstx	$vr0, $a1, $a5
	vld	$vr0, $a4, 164
	vstx	$vr0, $a2, $a5
	ld.w	$a4, $a0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 16
	blt	$a6, $a4, .LBB9_2
.LBB9_3:                                # %._crit_edge
	move	$a0, $a4
	ret
.Lfunc_end9:
	.size	_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_, .Lfunc_end9-_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_
                                        # -- End function
	.globl	_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3 # -- Begin function _ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3,@function
_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3: # @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3
# %bb.0:
	ld.w	$a3, $a0, 0
	blez	$a3, .LBB10_7
# %bb.1:                                # %.lr.ph
	fld.s	$fa0, $a1, 12
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 0
	move	$a2, $zero
	addi.d	$a4, $a0, 16
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %_ZNK9btVector3eqERKS_.exit
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 16
	beqz	$a3, .LBB10_8
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a4, 0
	fcmp.cune.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB10_2
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	fld.s	$fa4, $a4, -4
	fcmp.cune.s	$fcc0, $fa4, $fa1
	bcnez	$fcc0, .LBB10_2
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	fld.s	$fa4, $a4, -8
	fcmp.cune.s	$fcc0, $fa4, $fa2
	bcnez	$fcc0, .LBB10_2
# %bb.6:                                #   in Loop: Header=BB10_3 Depth=1
	fld.s	$fa4, $a4, -12
	fcmp.ceq.s	$fcc0, $fa4, $fa3
	movcf2gr	$a5, $fcc0
	or	$a2, $a5, $a2
	b	.LBB10_2
.LBB10_7:                               # %.._crit_edge_crit_edge
	fld.s	$fa0, $a1, 12
	move	$a2, $zero
.LBB10_8:                               # %._crit_edge
	fld.s	$fa1, $a0, 304
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB10_12
# %bb.9:
	fld.s	$fa0, $a1, 8
	fld.s	$fa1, $a0, 300
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB10_12
# %bb.10:
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 296
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB10_12
# %bb.11:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 292
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	or	$a2, $a0, $a2
.LBB10_12:                              # %_ZNK9btVector3eqERKS_.exit11
	andi	$a0, $a2, 1
	ret
.Lfunc_end10:
	.size	_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3, .Lfunc_end10-_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3
                                        # -- End function
	.globl	_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3 # -- Begin function _ZN22btVoronoiSimplexSolver14backup_closestER9btVector3
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3,@function
_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3: # @_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3
# %bb.0:
	vld	$vr0, $a0, 276
	vst	$vr0, $a1, 0
	ret
.Lfunc_end11:
	.size	_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3, .Lfunc_end11-_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3
                                        # -- End function
	.globl	_ZNK22btVoronoiSimplexSolver12emptySimplexEv # -- Begin function _ZNK22btVoronoiSimplexSolver12emptySimplexEv
	.p2align	5
	.type	_ZNK22btVoronoiSimplexSolver12emptySimplexEv,@function
_ZNK22btVoronoiSimplexSolver12emptySimplexEv: # @_ZNK22btVoronoiSimplexSolver12emptySimplexEv
# %bb.0:
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	ret
.Lfunc_end12:
	.size	_ZNK22btVoronoiSimplexSolver12emptySimplexEv, .Lfunc_end12-_ZNK22btVoronoiSimplexSolver12emptySimplexEv
                                        # -- End function
	.globl	_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_ # -- Begin function _ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_,@function
_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_: # @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv)
	jirl	$ra, $ra, 0
	vld	$vr0, $s1, 244
	vst	$vr0, $s0, 0
	vld	$vr0, $s1, 260
	vst	$vr0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_, .Lfunc_end13-_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_
.LCPI14_0:
	.word	0x322bcc76                      # float 9.99999905E-9
	.text
	.globl	_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_
	.p2align	5
	.type	_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_,@function
_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_: # @_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_
# %bb.0:
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 4
	fld.s	$fa3, $a2, 4
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa4, $a3, 8
	fld.s	$fa5, $a2, 8
	fld.s	$fa6, $a4, 0
	fld.s	$fa7, $a4, 4
	fld.s	$ft0, $a4, 8
	fsub.s	$fa4, $fa4, $fa5
	fsub.s	$fa6, $fa6, $fa1
	fsub.s	$fa7, $fa7, $fa3
	fsub.s	$ft0, $ft0, $fa5
	fneg.s	$ft1, $fa7
	fmul.s	$ft1, $fa4, $ft1
	fmadd.s	$ft1, $fa2, $ft0, $ft1
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fa0, $ft0
	fmadd.s	$fa4, $fa4, $fa6, $ft0
	fneg.s	$fa6, $fa6
	fmul.s	$fa2, $fa2, $fa6
	fld.s	$fa6, $a1, 0
	fld.s	$ft0, $a1, 4
	fld.s	$ft2, $a1, 8
	fmadd.s	$fa0, $fa0, $fa7, $fa2
	fsub.s	$fa2, $fa6, $fa1
	fsub.s	$fa6, $ft0, $fa3
	fsub.s	$fa7, $ft2, $fa5
	fmul.s	$fa6, $fa6, $fa4
	fmadd.s	$fa2, $fa2, $ft1, $fa6
	fld.s	$fa6, $a5, 0
	fld.s	$ft0, $a5, 4
	fld.s	$ft2, $a5, 8
	fmadd.s	$fa2, $fa7, $fa0, $fa2
	fsub.s	$fa1, $fa6, $fa1
	fsub.s	$fa3, $ft0, $fa3
	fsub.s	$fa5, $ft2, $fa5
	fmul.s	$fa3, $fa4, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI14_0)
	fmadd.s	$fa1, $fa1, $ft1, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fmul.s	$fa0, $fa2, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.clt.s	$fcc1, $fa0, $fa1
	movcf2gr	$a0, $fcc1
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end14:
	.size	_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_, .Lfunc_end14-_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
