	.file	"btPersistentManifold.cpp"
	.text
	.globl	_ZN20btPersistentManifoldC2Ev   # -- Begin function _ZN20btPersistentManifoldC2Ev
	.p2align	5
	.type	_ZN20btPersistentManifoldC2Ev,@function
_ZN20btPersistentManifoldC2Ev:          # @_ZN20btPersistentManifoldC2Ev
# %bb.0:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	st.d	$zero, $a0, 120
	st.w	$zero, $a0, 128
	st.b	$zero, $a0, 132
	st.d	$zero, $a0, 136
	st.w	$zero, $a0, 144
	st.d	$zero, $a0, 296
	st.w	$zero, $a0, 304
	st.b	$zero, $a0, 308
	st.d	$zero, $a0, 312
	st.w	$zero, $a0, 320
	st.d	$zero, $a0, 472
	st.w	$zero, $a0, 480
	st.b	$zero, $a0, 484
	st.d	$zero, $a0, 488
	st.w	$zero, $a0, 496
	st.d	$zero, $a0, 648
	st.w	$zero, $a0, 656
	st.b	$zero, $a0, 660
	st.d	$zero, $a0, 664
	st.w	$zero, $a0, 672
	st.w	$zero, $a0, 740
	st.w	$zero, $a0, 728
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 712
	ret
.Lfunc_end0:
	.size	_ZN20btPersistentManifoldC2Ev, .Lfunc_end0-_ZN20btPersistentManifoldC2Ev
                                        # -- End function
	.globl	_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint # -- Begin function _ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint
	.p2align	5
	.type	_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint,@function
_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint: # @_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a1, 112
	beqz	$a0, .LBB1_4
# %bb.1:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a1
	pcalau12i	$a1, %pc_hi20(gContactDestroyedCallback)
	ld.d	$a1, $a1, %pc_lo12(gContactDestroyedCallback)
	beqz	$a1, .LBB1_3
# %bb.2:
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 112
.LBB1_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_4:
	ret
.Lfunc_end1:
	.size	_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint, .Lfunc_end1-_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint
	.cfi_endproc
                                        # -- End function
	.globl	_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint # -- Begin function _ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint
	.p2align	5
	.type	_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint,@function
_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint: # @_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint
# %bb.0:
	fld.s	$fa0, $a1, 80
	fld.s	$fa1, $a0, 88
	fld.s	$fa2, $a0, 264
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$a2, $fcc0
	sub.d	$a2, $zero, $a2
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa0, $fa2, $fcc0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a2, $a3
	fld.s	$fa1, $a0, 440
	ori	$a2, $zero, 1
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $a4
	fcmp.clt.s	$fcc1, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a4, $fcc1
	fld.s	$fa1, $a0, 616
	masknez	$a3, $a3, $a4
	ori	$a5, $zero, 2
	maskeqz	$a4, $a5, $a4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	or	$a3, $a4, $a3
	movcf2gr	$a4, $fcc0
	maskeqz	$a3, $a3, $a4
	ori	$a5, $zero, 3
	fld.s	$ft2, $a1, 0
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	fcmp.clt.s	$fcc0, $fa1, $fa0
	beqz	$a3, .LBB2_3
# %bb.1:
	fld.s	$fa7, $a0, 184
	fld.s	$ft4, $a1, 4
	fld.s	$ft0, $a0, 188
	fsub.s	$fa1, $ft2, $fa7
	fsub.s	$ft3, $ft4, $ft0
	fld.s	$ft5, $a1, 8
	fld.s	$ft1, $a0, 192
	fld.s	$fa4, $a0, 536
	fld.s	$fa0, $a0, 360
	fld.s	$fa5, $a0, 540
	fld.s	$fa2, $a0, 364
	fld.s	$fa6, $a0, 544
	fld.s	$fa3, $a0, 368
	fsub.s	$ft11, $ft5, $ft1
	fsub.s	$ft7, $fa4, $fa0
	fsub.s	$ft6, $fa5, $fa2
	fsub.s	$ft8, $fa6, $fa3
	fneg.s	$ft9, $ft6
	fmul.s	$ft10, $ft11, $ft9
	fmadd.s	$ft12, $ft3, $ft8, $ft10
	fneg.s	$ft10, $ft8
	fmul.s	$ft13, $fa1, $ft10
	fmadd.s	$ft13, $ft11, $ft7, $ft13
	fneg.s	$ft11, $ft7
	fmul.s	$ft3, $ft3, $ft11
	fmadd.s	$fa1, $fa1, $ft6, $ft3
	fmul.s	$ft3, $ft13, $ft13
	fmadd.s	$ft3, $ft12, $ft12, $ft3
	fmadd.s	$fa1, $fa1, $fa1, $ft3
	bne	$a3, $a2, .LBB2_4
# %bb.2:                                # %._crit_edge208
	fld.s	$ft3, $a0, 8
	fld.s	$ft6, $a0, 12
	fld.s	$ft7, $a0, 16
	fsub.s	$ft3, $ft2, $ft3
	fsub.s	$ft4, $ft4, $ft6
	fsub.s	$ft5, $ft5, $ft7
	movgr2fr.w	$ft2, $zero
	b	.LBB2_7
.LBB2_3:                                # %._crit_edge
	fld.s	$ft4, $a1, 4
	fld.s	$fa4, $a0, 536
	fld.s	$fa0, $a0, 360
	fld.s	$fa5, $a0, 540
	fld.s	$fa2, $a0, 364
	fld.s	$fa6, $a0, 544
	fld.s	$fa3, $a0, 368
	fld.s	$ft5, $a1, 8
	fsub.s	$ft7, $fa4, $fa0
	fsub.s	$ft6, $fa5, $fa2
	fsub.s	$ft8, $fa6, $fa3
	fneg.s	$ft9, $ft6
	fneg.s	$ft10, $ft8
	fneg.s	$ft11, $ft7
	movgr2fr.w	$fa1, $zero
.LBB2_4:
	fld.s	$fa7, $a0, 8
	fld.s	$ft0, $a0, 12
	fld.s	$ft1, $a0, 16
	fsub.s	$ft3, $ft2, $fa7
	fsub.s	$ft4, $ft4, $ft0
	fsub.s	$ft5, $ft5, $ft1
	fmul.s	$fa7, $ft5, $ft9
	fmadd.s	$ft2, $ft4, $ft8, $fa7
	fmul.s	$fa7, $ft3, $ft10
	fmadd.s	$ft7, $ft5, $ft7, $fa7
	fmul.s	$fa7, $ft4, $ft11
	fmadd.s	$ft6, $ft3, $ft6, $fa7
	fld.s	$fa7, $a0, 184
	fld.s	$ft0, $a0, 188
	fld.s	$ft1, $a0, 192
	fmul.s	$ft7, $ft7, $ft7
	fmadd.s	$ft2, $ft2, $ft2, $ft7
	fmadd.s	$ft2, $ft6, $ft6, $ft2
	bcnez	$fcc0, .LBB2_7
# %bb.5:
	bceqz	$fcc1, .LBB2_7
# %bb.6:
	movgr2fr.w	$fa4, $zero
	b	.LBB2_8
.LBB2_7:                                # %._crit_edge215
	fsub.s	$fa4, $fa4, $fa7
	fsub.s	$fa5, $fa5, $ft0
	fsub.s	$fa6, $fa6, $ft1
	fneg.s	$ft6, $fa5
	fmul.s	$ft6, $ft5, $ft6
	fmadd.s	$ft6, $ft4, $fa6, $ft6
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft3, $fa6
	fmadd.s	$fa6, $ft5, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $ft4, $fa4
	fmadd.s	$fa4, $ft3, $fa5, $fa4
	fmul.s	$fa5, $fa6, $fa6
	fmadd.s	$fa5, $ft6, $ft6, $fa5
	fmadd.s	$fa4, $fa4, $fa4, $fa5
	bcnez	$fcc0, .LBB2_9
.LBB2_8:                                # %._crit_edge222
	fsub.s	$fa0, $fa0, $fa7
	fsub.s	$fa2, $fa2, $ft0
	fsub.s	$fa3, $fa3, $ft1
	fneg.s	$fa5, $fa2
	fmul.s	$fa5, $ft5, $fa5
	fmadd.s	$fa5, $ft4, $fa3, $fa5
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $ft3, $fa3
	fmadd.s	$fa3, $ft5, $fa0, $fa3
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $ft4, $fa0
	fmadd.s	$fa0, $ft3, $fa2, $fa0
	fmul.s	$fa2, $fa3, $fa3
	fmadd.s	$fa2, $fa5, $fa5, $fa2
	fmadd.s	$fa0, $fa0, $fa0, $fa2
	fabs.s	$fa0, $fa0
	b	.LBB2_10
.LBB2_9:
	movgr2fr.w	$fa0, $zero
.LBB2_10:
	fabs.s	$fa1, $fa1
	fabs.s	$fa2, $ft2
	fabs.s	$fa3, $fa4
	lu12i.w	$a0, -141856
	ori	$a0, $a0, 2923
	lu32i.d	$a0, 0
	movgr2fr.w	$fa4, $a0
	fcmp.cule.s	$fcc0, $fa1, $fa4
	fsel	$fa1, $fa1, $fa4, $fcc0
	movcf2gr	$a0, $fcc0
	sub.d	$a0, $zero, $a0
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	fcmp.clt.s	$fcc0, $fa1, $fa0
	or	$a0, $a1, $a0
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 3
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint, .Lfunc_end2-_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint
                                        # -- End function
	.globl	_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint # -- Begin function _ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint
	.p2align	5
	.type	_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint,@function
_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint: # @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint
# %bb.0:
	ld.w	$a2, $a0, 728
	blez	$a2, .LBB3_4
# %bb.1:                                # %.lr.ph
	move	$a3, $zero
	fld.s	$fa3, $a0, 732
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	fmul.s	$fa3, $fa3, $fa3
	addi.d	$a1, $a0, 16
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, -8
	fld.s	$fa5, $a1, -4
	fld.s	$fa6, $a1, 0
	fsub.s	$fa4, $fa4, $fa0
	fsub.s	$fa5, $fa5, $fa1
	fsub.s	$fa6, $fa6, $fa2
	fmul.s	$fa5, $fa5, $fa5
	fmadd.s	$fa4, $fa4, $fa4, $fa5
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa3, $fa4, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a0, $a4, $a0
	addi.d	$a1, $a1, 176
	addi.d	$a2, $a2, -1
	addi.w	$a3, $a3, 1
	bnez	$a2, .LBB3_2
# %bb.3:                                # %._crit_edge
	ret
.LBB3_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end3:
	.size	_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint, .Lfunc_end3-_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint
                                        # -- End function
	.globl	_ZNK20btPersistentManifold27getContactBreakingThresholdEv # -- Begin function _ZNK20btPersistentManifold27getContactBreakingThresholdEv
	.p2align	5
	.type	_ZNK20btPersistentManifold27getContactBreakingThresholdEv,@function
_ZNK20btPersistentManifold27getContactBreakingThresholdEv: # @_ZNK20btPersistentManifold27getContactBreakingThresholdEv
# %bb.0:
	fld.s	$fa0, $a0, 732
	ret
.Lfunc_end4:
	.size	_ZNK20btPersistentManifold27getContactBreakingThresholdEv, .Lfunc_end4-_ZNK20btPersistentManifold27getContactBreakingThresholdEv
                                        # -- End function
	.globl	_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint # -- Begin function _ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint
	.p2align	5
	.type	_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint,@function
_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint: # @_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.w	$s0, $a0, 728
	ori	$a0, $zero, 4
	bne	$s0, $a0, .LBB5_5
# %bb.1:
	move	$a0, $fp
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 176
	mul.d	$a0, $s0, $a0
	add.d	$a1, $fp, $a0
	ld.d	$a0, $a1, 120
	beqz	$a0, .LBB5_4
# %bb.2:
	pcalau12i	$a2, %pc_hi20(gContactDestroyedCallback)
	ld.d	$a2, $a2, %pc_lo12(gContactDestroyedCallback)
	beqz	$a2, .LBB5_4
# %bb.3:
	addi.d	$s2, $a1, 120
	jirl	$ra, $a2, 0
	st.d	$zero, $s2, 0
.LBB5_4:
	move	$a1, $s1
	b	.LBB5_6
.LBB5_5:
	addi.d	$a0, $s0, 1
	st.w	$a0, $fp, 728
.LBB5_6:                                # %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit
	srai.d	$a0, $s0, 63
	andn	$s0, $s0, $a0
	ori	$a0, $zero, 176
	mul.d	$a0, $s0, $a0
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, 8
	ori	$a2, $zero, 172
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint, .Lfunc_end5-_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint
	.cfi_endproc
                                        # -- End function
	.globl	_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_ # -- Begin function _ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_
	.p2align	5
	.type	_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_,@function
_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_: # @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_
	.cfi_startproc
# %bb.0:
	ld.w	$a3, $a0, 728
	blez	$a3, .LBB6_16
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$fp, $a0
	bstrpick.d	$s2, $a3, 31, 0
	addi.d	$a0, $a3, 1
	ori	$a4, $zero, 176
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a3, $fp
	addi.d	$a3, $a3, -168
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa2, $a3, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa3, $a3, 4
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a3, 8
	fld.s	$fa6, $a1, 48
	fmul.s	$fa1, $fa1, $fa3
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fadd.s	$fa0, $fa0, $fa6
	fld.s	$fa1, $a1, 20
	fld.s	$fa4, $a1, 16
	fld.s	$fa6, $a1, 24
	fld.s	$fa7, $a1, 52
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa2, $fa1
	fmadd.s	$fa1, $fa6, $fa5, $fa1
	fadd.s	$fa1, $fa7, $fa1
	fld.s	$fa4, $a1, 36
	fld.s	$fa6, $a1, 32
	fld.s	$fa7, $a1, 40
	fld.s	$ft0, $a1, 56
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa2, $fa6, $fa2, $fa3
	fmadd.s	$fa2, $fa7, $fa5, $fa2
	fadd.s	$fa2, $ft0, $fa2
	movfr2gr.s	$a5, $fa0
	movfr2gr.s	$a6, $fa1
	bstrins.d	$a5, $a6, 63, 32
	movfr2gr.s	$a6, $fa2
	bstrpick.d	$a6, $a6, 31, 0
	st.d	$a5, $a3, 48
	st.d	$a6, $a3, 56
	fld.s	$fa3, $a2, 4
	fld.s	$fa4, $a3, 20
	fld.s	$fa5, $a2, 0
	fld.s	$fa6, $a3, 16
	fmul.s	$fa3, $fa3, $fa4
	fld.s	$fa7, $a2, 8
	fld.s	$ft0, $a3, 24
	fmadd.s	$fa3, $fa5, $fa6, $fa3
	fld.s	$fa5, $a2, 48
	fld.s	$ft1, $a2, 20
	fmadd.s	$fa3, $fa7, $ft0, $fa3
	fld.s	$fa7, $a2, 16
	fadd.s	$fa3, $fa3, $fa5
	fmul.s	$fa5, $fa4, $ft1
	fld.s	$ft1, $a2, 36
	fmadd.s	$fa5, $fa7, $fa6, $fa5
	fld.s	$fa7, $a2, 32
	fld.s	$ft2, $a2, 24
	fmul.s	$fa4, $fa4, $ft1
	fld.s	$ft1, $a2, 52
	fmadd.s	$fa4, $fa7, $fa6, $fa4
	fld.s	$fa6, $a2, 40
	fld.s	$fa7, $a2, 56
	fmadd.s	$fa5, $ft2, $ft0, $fa5
	fadd.s	$fa5, $ft1, $fa5
	fmadd.s	$fa4, $fa6, $ft0, $fa4
	fadd.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a5, $fa3
	movfr2gr.s	$a6, $fa5
	bstrins.d	$a5, $a6, 63, 32
	movfr2gr.s	$a6, $fa4
	bstrpick.d	$a6, $a6, 31, 0
	st.d	$a5, $a3, 32
	st.d	$a6, $a3, 40
	fsub.s	$fa0, $fa0, $fa3
	fsub.s	$fa1, $fa1, $fa5
	fld.s	$fa3, $a3, 68
	fsub.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a3, 64
	fld.s	$fa5, $a3, 72
	fmul.s	$fa1, $fa1, $fa3
	ld.w	$a5, $a3, 136
	fmadd.s	$fa0, $fa0, $fa4, $fa1
	fmadd.s	$fa0, $fa2, $fa5, $fa0
	fst.s	$fa0, $a3, 80
	addi.d	$a5, $a5, 1
	st.w	$a5, $a3, 136
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, -176
	bltu	$a4, $a0, .LBB6_2
# %bb.3:                                # %.lr.ph111
	addi.d	$s3, $fp, 8
	ori	$s4, $zero, 176
	mul.d	$a0, $s2, $s4
	add.d	$a0, $a0, $fp
	addi.d	$s5, $a0, -56
	pcalau12i	$s6, %pc_hi20(gContactDestroyedCallback)
	ori	$s7, $zero, 1
	pcalau12i	$s8, %pc_hi20(gContactProcessedCallback)
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_4:                                # %_ZN20btPersistentManifold18removeContactPointEi.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	st.w	$a0, $fp, 728
.LBB6_5:                                #   in Loop: Header=BB6_6 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$a0, $s2, 1
	addi.d	$s5, $s5, -176
	bgeu	$s7, $a0, .LBB6_15
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, -32
	fld.s	$fa0, $fp, 732
	fcmp.cle.s	$fcc0, $fa1, $fa0
	addi.d	$s0, $s5, -112
	bceqz	$fcc0, .LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=1
	fld.s	$fa2, $s5, -48
	fmul.s	$fa2, $fa1, $fa2
	fld.s	$fa3, $s5, -44
	fld.s	$fa4, $s5, -40
	fld.s	$fa5, $s5, -64
	fld.s	$fa6, $s5, -60
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa5, $fa2
	fsub.s	$fa3, $fa6, $fa3
	fld.s	$fa4, $s5, -56
	fld.s	$fa5, $s5, -80
	fld.s	$fa6, $s5, -76
	fld.s	$fa7, $s5, -72
	fsub.s	$fa1, $fa4, $fa1
	fsub.s	$fa2, $fa5, $fa2
	fsub.s	$fa3, $fa6, $fa3
	fsub.s	$fa1, $fa7, $fa1
	fmul.s	$fa3, $fa3, $fa3
	fmadd.s	$fa2, $fa2, $fa2, $fa3
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fmul.s	$fa0, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_13
.LBB6_8:                                #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB6_11
# %bb.9:                                #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a1, $s6, %pc_lo12(gContactDestroyedCallback)
	beqz	$a1, .LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_6 Depth=1
	jirl	$ra, $a1, 0
	st.d	$zero, $s5, 0
.LBB6_11:                               # %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit.i
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.wu	$a1, $fp, 728
	addi.w	$a0, $a1, -1
	beq	$s2, $a1, .LBB6_4
# %bb.12:                               #   in Loop: Header=BB6_6 Depth=1
	mul.d	$a0, $a0, $s4
	add.d	$s1, $s3, $a0
	ori	$a2, $zero, 172
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 112
	st.d	$zero, $s1, 128
	ld.w	$a0, $fp, 728
	st.w	$zero, $s1, 120
	st.b	$zero, $s1, 124
	st.w	$zero, $s1, 136
	addi.d	$a0, $a0, -1
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_13:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a3, $s8, %pc_lo12(gContactProcessedCallback)
	beqz	$a3, .LBB6_5
# %bb.14:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a1, $fp, 712
	ld.d	$a2, $fp, 720
	move	$a0, $s0
	jirl	$ra, $a3, 0
	b	.LBB6_5
.LBB6_15:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.LBB6_16:                               # %._crit_edge
	ret
.Lfunc_end6:
	.size	_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_, .Lfunc_end6-_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_
	.cfi_endproc
                                        # -- End function
	.type	gContactBreakingThreshold,@object # @gContactBreakingThreshold
	.data
	.globl	gContactBreakingThreshold
	.p2align	2, 0x0
gContactBreakingThreshold:
	.word	0x3ca3d70a                      # float 0.0199999996
	.size	gContactBreakingThreshold, 4

	.type	gContactDestroyedCallback,@object # @gContactDestroyedCallback
	.bss
	.globl	gContactDestroyedCallback
	.p2align	3, 0x0
gContactDestroyedCallback:
	.dword	0
	.size	gContactDestroyedCallback, 8

	.type	gContactProcessedCallback,@object # @gContactProcessedCallback
	.globl	gContactProcessedCallback
	.p2align	3, 0x0
gContactProcessedCallback:
	.dword	0
	.size	gContactProcessedCallback, 8

	.globl	_ZN20btPersistentManifoldC1Ev
	.type	_ZN20btPersistentManifoldC1Ev,@function
_ZN20btPersistentManifoldC1Ev = _ZN20btPersistentManifoldC2Ev
	.section	".note.GNU-stack","",@progbits
	.addrsig
