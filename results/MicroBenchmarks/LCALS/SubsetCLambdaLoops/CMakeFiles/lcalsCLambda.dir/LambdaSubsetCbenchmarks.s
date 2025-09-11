	.file	"LambdaSubsetCbenchmarks.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE
	.type	_ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE,@function
_ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE: # @_ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	fld.d	$fa0, $s0, 384
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 392
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 400
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	vld	$vr11, $sp, 16                  # 16-byte Folded Reload
	vld	$vr10, $sp, 32                  # 16-byte Folded Reload
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
	bnez	$s4, .LBB0_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_12
# %bb.2:                                # %.lr.ph39
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 0
	addi.w	$a0, $a2, 0
	blez	$a0, .LBB0_12
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$a0, $a2, 30, 0
	alsl.d	$a3, $a0, $s1, 3
	alsl.d	$a4, $a0, $s2, 3
	addi.d	$a5, $s3, 80
	addi.d	$a1, $s3, 88
	alsl.d	$a6, $a0, $a1, 3
	sltu	$a4, $s1, $a4
	sltu	$a7, $s2, $a3
	and	$a4, $a4, $a7
	sltu	$a6, $s1, $a6
	sltu	$a3, $a5, $a3
	and	$a3, $a6, $a3
	or	$a6, $a4, $a3
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr0, $vr11, 0
	vreplvei.d	$vr1, $vr10, 0
	vreplvei.d	$vr2, $vr9, 0
	addi.d	$a3, $s2, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $s3, 104
	sltui	$a7, $a0, 4
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %"._Z6forallIZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB0_12
.LBB0_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	beqz	$a6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$t2, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $a5
	move	$t0, $a4
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t1, -16
	vld	$vr4, $t1, 0
	vld	$vr5, $a7, -16
	vld	$vr6, $a7, 0
	vld	$vr7, $a7, -24
	vld	$vr8, $a7, -8
	vfmul.d	$vr5, $vr0, $vr5
	vfmul.d	$vr6, $vr0, $vr6
	vfmadd.d	$vr5, $vr1, $vr7, $vr5
	vfmadd.d	$vr6, $vr1, $vr8, $vr6
	vfmadd.d	$vr3, $vr3, $vr5, $vr2
	vfmadd.d	$vr4, $vr4, $vr6, $vr2
	vst	$vr3, $t0, -16
	vst	$vr4, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t2, .LBB0_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$t2, $a2
	beq	$a0, $a2, .LBB0_4
.LBB0_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t2, $s2, 3
	alsl.d	$t0, $t2, $a1, 3
	alsl.d	$t1, $t2, $s1, 3
	sub.d	$t2, $a0, $t2
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t0, 0
	fld.d	$fa4, $t0, -8
	fld.d	$fa5, $a7, 0
	fmul.d	$fa3, $ft3, $fa3
	fmadd.d	$fa3, $ft2, $fa4, $fa3
	fmadd.d	$fa3, $fa5, $fa3, $ft1
	fst.d	$fa3, $t1, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_11
	b	.LBB0_4
.LBB0_12:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end0:
	.size	_ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE, .Lfunc_end0-_ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL14BM_ICCG_LAMBDARN9benchmark5StateE
	.type	_ZL14BM_ICCG_LAMBDARN9benchmark5StateE,@function
_ZL14BM_ICCG_LAMBDARN9benchmark5StateE: # @_ZL14BM_ICCG_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 136
	ld.d	$s2, $s0, 144
	ld.w	$s3, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB1_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB1_9
# %bb.2:                                # %.lr.ph39
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.d	$a1, $s1, 8
	addi.d	$a2, $s2, 8
	addi.w	$a3, $a0, 0
	ori	$a4, $zero, 2
	ori	$a5, $zero, 3
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %._crit_edge46
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB1_9
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	blt	$a3, $a4, .LBB1_3
# %bb.5:                                # %.lr.ph.preheader.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a7, $zero
	move	$a6, $a0
	move	$t2, $a0
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph.preheader
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	addi.w	$t1, $a7, 1
	move	$a7, $t2
	bstrpick.d	$t0, $a6, 31, 1
	addi.w	$t2, $t2, 0
	alsl.d	$t3, $t2, $a1, 3
	alsl.d	$t4, $t1, $s1, 3
	alsl.d	$t5, $t1, $a2, 3
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t4, 0
	fld.d	$fa1, $t5, -8
	fld.d	$fa2, $t4, -8
	fld.d	$fa3, $t5, 0
	fld.d	$fa4, $t4, 8
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fneg.d	$fa1, $fa3
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa0, $t3, 0
	addi.d	$t1, $t1, 2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	blt	$t1, $t2, .LBB1_7
# %bb.8:                                # %"_Z6forallIZL14BM_ICCG_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiiT_.exit"
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.w	$t1, $a6, 0
	add.d	$t2, $t0, $a7
	move	$a6, $t0
	bltu	$a5, $t1, .LBB1_6
	b	.LBB1_3
.LBB1_9:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end1:
	.size	_ZL14BM_ICCG_LAMBDARN9benchmark5StateE, .Lfunc_end1-_ZL14BM_ICCG_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE
	.type	_ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE,@function
_ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE: # @_ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s0, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	st.d	$zero, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB2_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB2_7
# %bb.2:
	addi.d	$a0, $sp, 8
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %"_Z6forallIZL20BM_INNER_PROD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$s2, $s2, -1
	beqz	$s2, .LBB2_7
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	ld.d	$a1, $fp, 32
	ld.d	$a1, $a1, 0
	addi.w	$a2, $a1, 0
	st.d	$zero, $sp, 8
	blez	$a2, .LBB2_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	bstrpick.d	$a1, $a1, 30, 0
	move	$a2, $s0
	move	$a3, $s1
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $sp, 8
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $sp, 8
	#APP
	#NO_APP
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB2_6
	b	.LBB2_3
.LBB2_7:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	_ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE, .Lfunc_end2-_ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE
	.type	_ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE,@function
_ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE: # @_ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s0, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB3_13
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB3_13
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 4
	bge	$a2, $a1, .LBB3_11
# %bb.3:                                # %.preheader.us.preheader
	addi.d	$a0, $a0, -5
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a1, -209716
	ori	$a1, $a1, 3277
	lu32i.d	$a1, 0
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 34
	fld.d	$fa0, $s1, 40
	addi.d	$a0, $a0, 1
	addi.d	$a1, $s0, 32
	addi.d	$a2, $s1, 2047
	addi.d	$a2, $a2, 1929
	lu12i.w	$a5, 1
	ori	$a3, $a5, 3856
	add.d	$a3, $s1, $a3
	ori	$a4, $zero, 4016
	ori	$a5, $a5, 3896
	.p2align	4, , 16
.LBB3_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_9 Depth 2
	move	$a6, $a1
	move	$a7, $s1
	move	$t0, $a0
	.p2align	4, , 16
.LBB3_5:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a7, 0
	fld.d	$fa2, $a6, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 40
	bnez	$t0, .LBB3_5
# %bb.6:                                # %"._Z6forallIZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiiT_.exit_crit_edge.us.us"
                                        #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa2, $s0, 32
	fldx.d	$fa1, $s1, $a4
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $s1, 40
	move	$a6, $a1
	move	$a7, $a2
	move	$t0, $a0
	.p2align	4, , 16
.LBB3_7:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a7, 0
	fld.d	$fa3, $a6, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 40
	bnez	$t0, .LBB3_7
# %bb.8:                                # %"._Z6forallIZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiiT_.exit_crit_edge.us.us.1"
                                        #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa3, $s0, 32
	fldx.d	$fa2, $s1, $a5
	fmul.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $s1, $a4
	move	$a6, $a1
	move	$a7, $a3
	move	$t0, $a0
	.p2align	4, , 16
.LBB3_9:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a7, 0
	fld.d	$fa3, $a6, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa2, $fa1, $fa3, $fa2
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 40
	bnez	$t0, .LBB3_9
# %bb.10:                               # %"._Z6forallIZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiiT_.exit_crit_edge.us.us.2"
                                        #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa1, $s0, 32
	fmul.d	$fa1, $fa2, $fa1
	addi.d	$s2, $s2, -1
	fstx.d	$fa1, $s1, $a5
	bnez	$s2, .LBB3_4
	b	.LBB3_13
.LBB3_11:                               # %.preheader.preheader
	fld.d	$fa0, $s1, 40
	ori	$a0, $zero, 4016
	fldx.d	$fa1, $s1, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3896
	fldx.d	$fa2, $s1, $a1
	.p2align	4, , 16
.LBB3_12:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s0, 32
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s1, 40
	fld.d	$fa3, $s0, 32
	fmul.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $s1, $a0
	fld.d	$fa3, $s0, 32
	fmul.d	$fa2, $fa2, $fa3
	addi.d	$s2, $s2, -1
	fstx.d	$fa2, $s1, $a1
	bnez	$s2, .LBB3_12
.LBB3_13:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end3:
	.size	_ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE, .Lfunc_end3-_ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE
	.type	_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE,@function
_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE: # @_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 17
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB4_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB4_7
# %bb.2:                                # %.lr.ph31
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB4_7
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$a3, $a0, 30, 0
	addi.d	$a0, $s3, 8
	addi.d	$a1, $s2, 8
	addi.d	$a2, $s1, 8
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	fld.d	$fa0, $s1, 0
	move	$a4, $a3
	move	$a5, $a2
	move	$a6, $a1
	move	$a7, $a0
	.p2align	4, , 16
.LBB4_5:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a6, 0
	fld.d	$fa2, $a7, 0
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a5, 0
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB4_5
# %bb.6:                                # %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB4_4
.LBB4_7:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end4:
	.size	_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE, .Lfunc_end4-_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL13BM_EOS_LAMBDARN9benchmark5StateE
	.type	_ZL13BM_EOS_LAMBDARN9benchmark5StateE,@function
_ZL13BM_EOS_LAMBDARN9benchmark5StateE:  # @_ZL13BM_EOS_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	fld.d	$fa0, $s0, 384
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 392
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 400
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ld.w	$s5, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	vld	$vr11, $sp, 16                  # 16-byte Folded Reload
	vld	$vr10, $sp, 32                  # 16-byte Folded Reload
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
	bnez	$s5, .LBB5_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB5_12
# %bb.2:                                # %.lr.ph41
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.w	$a0, $a1, 0
	blez	$a0, .LBB5_12
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$a0, $a1, 30, 0
	alsl.d	$a2, $a0, $s1, 3
	alsl.d	$a3, $a0, $s4, 3
	addi.d	$a3, $a3, 48
	alsl.d	$a4, $a0, $s3, 3
	alsl.d	$a5, $a0, $s2, 3
	sltu	$a3, $s1, $a3
	sltu	$a6, $s4, $a2
	and	$a3, $a3, $a6
	sltu	$a4, $s1, $a4
	sltu	$a6, $s3, $a2
	and	$a4, $a4, $a6
	or	$a3, $a3, $a4
	sltu	$a4, $s1, $a5
	sltu	$a2, $s2, $a2
	and	$a2, $a4, $a2
	or	$a3, $a3, $a2
	bstrpick.d	$a1, $a1, 30, 1
	slli.d	$a1, $a1, 1
	vreplvei.d	$vr0, $vr10, 0
	vreplvei.d	$vr1, $vr9, 0
	vreplvei.d	$vr2, $vr11, 0
	addi.d	$a2, $s4, 24
	sltui	$a4, $a0, 2
	or	$a3, $a4, $a3
	andi	$a3, $a3, 1
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB5_12
.LBB5_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
	beqz	$a3, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	move	$t0, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$t0, $a2
	move	$a4, $s3
	move	$a5, $s2
	move	$a6, $s1
	move	$a7, $a1
	.p2align	4, , 16
.LBB5_8:                                # %vector.body
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a4, 0
	vld	$vr4, $a5, 0
	vld	$vr5, $t0, -24
	vld	$vr6, $t0, -8
	vld	$vr7, $t0, -16
	vfmadd.d	$vr3, $vr0, $vr4, $vr3
	vfmadd.d	$vr3, $vr0, $vr3, $vr5
	vld	$vr4, $t0, 0
	vfmadd.d	$vr5, $vr0, $vr7, $vr6
	vld	$vr6, $t0, 16
	vld	$vr7, $t0, 8
	vld	$vr8, $t0, 24
	vfmadd.d	$vr4, $vr0, $vr5, $vr4
	addi.d	$t0, $t0, 16
	vfmadd.d	$vr5, $vr1, $vr7, $vr6
	vfmadd.d	$vr5, $vr1, $vr5, $vr8
	vfmadd.d	$vr4, $vr2, $vr5, $vr4
	vfmadd.d	$vr3, $vr2, $vr4, $vr3
	vst	$vr3, $a6, 0
	addi.d	$a7, $a7, -2
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a7, .LBB5_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$t0, $a1
	beq	$a0, $a1, .LBB5_4
.LBB5_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.d	$a4, $a0, $t0
	alsl.d	$a5, $t0, $s1, 3
	alsl.d	$a6, $t0, $s2, 3
	alsl.d	$a7, $t0, $s3, 3
	alsl.d	$t0, $t0, $a2, 3
	.p2align	4, , 16
.LBB5_11:                               # %scalar.ph
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a7, 0
	fld.d	$fa4, $a6, 0
	fld.d	$fa5, $t0, -24
	fld.d	$fa6, $t0, -8
	fld.d	$fa7, $t0, -16
	fmadd.d	$fa3, $ft2, $fa4, $fa3
	fmadd.d	$fa3, $ft2, $fa3, $fa5
	fld.d	$fa4, $t0, 0
	fmadd.d	$fa5, $ft2, $fa7, $fa6
	fld.d	$fa6, $t0, 16
	fld.d	$fa7, $t0, 8
	fld.d	$ft0, $t0, 24
	fmadd.d	$fa4, $ft2, $fa5, $fa4
	addi.d	$t0, $t0, 8
	fmadd.d	$fa5, $ft1, $fa7, $fa6
	fmadd.d	$fa5, $ft1, $fa5, $ft0
	fmadd.d	$fa4, $ft3, $fa5, $fa4
	fmadd.d	$fa3, $ft3, $fa4, $fa3
	fst.d	$fa3, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	bnez	$a4, .LBB5_11
	b	.LBB5_4
.LBB5_12:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end5:
	.size	_ZL13BM_EOS_LAMBDARN9benchmark5StateE, .Lfunc_end5-_ZL13BM_EOS_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL13BM_ADI_LAMBDARN9benchmark5StateE
	.type	_ZL13BM_ADI_LAMBDARN9benchmark5StateE,@function
_ZL13BM_ADI_LAMBDARN9benchmark5StateE:  # @_ZL13BM_ADI_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 24                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 19
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 360
	ld.d	$s5, $s0, 368
	ld.d	$s6, $s0, 376
	fld.d	$fs0, $s0, 384
	fld.d	$fa0, $s0, 392
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fld.d	$fa0, $s0, 400
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	fld.d	$fs3, $s0, 408
	fld.d	$fs4, $s0, 416
	fld.d	$fs5, $s0, 424
	fld.d	$fs6, $s0, 432
	fld.d	$fs7, $s0, 440
	fld.d	$fs1, $s0, 448
	fld.d	$fs2, $s0, 456
	ld.w	$s7, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	fld.d	$fa7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fa6, $sp, 16                   # 8-byte Folded Reload
	bnez	$s7, .LBB6_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB6_9
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a3, $a0, 0
	addi.w	$a0, $a3, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_9
# %bb.3:                                # %.preheader.lr.ph.split.us
	ld.d	$t2, $s4, 0
	ld.d	$t3, $s5, 0
	ld.d	$t4, $s6, 0
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s5, 8
	ld.d	$a2, $s6, 8
	bstrpick.d	$t1, $a3, 30, 0
	ld.d	$a3, $t2, 0
	ld.d	$a4, $t3, 0
	ld.d	$a5, $t4, 0
	ld.d	$a6, $t2, 8
	ld.d	$a7, $t3, 8
	ld.d	$t0, $t4, 8
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	vldi	$vr0, -896
	.p2align	4, , 16
.LBB6_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #     Child Loop BB6_7 Depth 2
	ori	$t5, $zero, 8
	move	$t6, $t1
	move	$t7, $t0
	move	$t8, $a7
	move	$s4, $a6
	move	$s8, $a5
	move	$s7, $a4
	move	$s6, $a3
	.p2align	4, , 16
.LBB6_5:                                #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $s4
	add.d	$s4, $t2, $t5
	ld.d	$s4, $s4, -8
	fld.d	$fa1, $s6, 8
	fld.d	$fa2, $s4, 8
	move	$s6, $t8
	add.d	$t8, $t3, $t5
	ld.d	$t8, $t8, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s1, $t5
	fld.d	$fa1, $s7, 8
	fld.d	$fa2, $t8, 8
	move	$s7, $t7
	add.d	$t7, $t4, $t5
	ld.d	$t7, $t7, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s2, $t5
	fld.d	$fa1, $s8, 8
	fld.d	$fa2, $t7, 8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s3, $t5
	fld.d	$fa2, $s5, 8
	fldx.d	$fa3, $s1, $t5
	fldx.d	$fa4, $s2, $t5
	fmadd.d	$fa3, $fa6, $fa3, $fa2
	fmadd.d	$fa3, $fa7, $fa4, $fa3
	fld.d	$fa4, $s5, 16
	fld.d	$fa5, $s5, 0
	fmadd.d	$fa1, $fs3, $fa1, $fa3
	ldx.d	$s8, $a0, $t5
	fmadd.d	$fa2, $fa2, $fa0, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fmadd.d	$fa1, $fs0, $fa2, $fa1
	fst.d	$fa1, $s8, 8
	fld.d	$fa1, $s6, 8
	fldx.d	$fa2, $s1, $t5
	fldx.d	$fa3, $s2, $t5
	fmadd.d	$fa2, $fs4, $fa2, $fa1
	fldx.d	$fa4, $s3, $t5
	fmadd.d	$fa2, $fs5, $fa3, $fa2
	fld.d	$fa3, $s6, 16
	fld.d	$fa5, $s6, 0
	fmadd.d	$fa2, $fs6, $fa4, $fa2
	ldx.d	$s8, $a1, $t5
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $s8, 8
	fld.d	$fa1, $s7, 8
	fldx.d	$fa2, $s1, $t5
	fldx.d	$fa3, $s2, $t5
	fmadd.d	$fa2, $fs7, $fa2, $fa1
	fldx.d	$fa4, $s3, $t5
	fmadd.d	$fa2, $fs1, $fa3, $fa2
	fld.d	$fa3, $s7, 16
	fld.d	$fa5, $s7, 0
	fmadd.d	$fa2, $fs2, $fa4, $fa2
	ldx.d	$s8, $a2, $t5
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $s8, 8
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	move	$s8, $s7
	move	$s7, $s6
	move	$s6, $s5
	bnez	$t6, .LBB6_5
# %bb.6:                                # %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.preheader"
                                        #   in Loop: Header=BB6_4 Depth=1
	ori	$t5, $zero, 8
	move	$t6, $t1
	move	$t7, $t0
	move	$t8, $a7
	move	$s4, $a6
	move	$s8, $a5
	move	$s7, $a4
	move	$s6, $a3
	.p2align	4, , 16
.LBB6_7:                                # %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us"
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $s4
	add.d	$s4, $t2, $t5
	ld.d	$s4, $s4, -8
	fld.d	$fa1, $s6, 16
	fld.d	$fa2, $s4, 16
	move	$s6, $t8
	add.d	$t8, $t3, $t5
	ld.d	$t8, $t8, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s1, $t5
	fld.d	$fa1, $s7, 16
	fld.d	$fa2, $t8, 16
	move	$s7, $t7
	add.d	$t7, $t4, $t5
	ld.d	$t7, $t7, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s2, $t5
	fld.d	$fa1, $s8, 16
	fld.d	$fa2, $t7, 16
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s3, $t5
	fld.d	$fa2, $s5, 16
	fldx.d	$fa3, $s1, $t5
	fldx.d	$fa4, $s2, $t5
	fmadd.d	$fa3, $fa6, $fa3, $fa2
	fmadd.d	$fa3, $fa7, $fa4, $fa3
	fld.d	$fa4, $s5, 24
	fld.d	$fa5, $s5, 8
	fmadd.d	$fa1, $fs3, $fa1, $fa3
	ldx.d	$s8, $a0, $t5
	fmadd.d	$fa2, $fa2, $fa0, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fmadd.d	$fa1, $fs0, $fa2, $fa1
	fst.d	$fa1, $s8, 16
	fld.d	$fa1, $s6, 16
	fldx.d	$fa2, $s1, $t5
	fldx.d	$fa3, $s2, $t5
	fmadd.d	$fa2, $fs4, $fa2, $fa1
	fldx.d	$fa4, $s3, $t5
	fmadd.d	$fa2, $fs5, $fa3, $fa2
	fld.d	$fa3, $s6, 24
	fld.d	$fa5, $s6, 8
	fmadd.d	$fa2, $fs6, $fa4, $fa2
	ldx.d	$s8, $a1, $t5
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $s8, 16
	fld.d	$fa1, $s7, 16
	fldx.d	$fa2, $s1, $t5
	fldx.d	$fa3, $s2, $t5
	fmadd.d	$fa2, $fs7, $fa2, $fa1
	fldx.d	$fa4, $s3, $t5
	fmadd.d	$fa2, $fs1, $fa3, $fa2
	fld.d	$fa3, $s7, 24
	fld.d	$fa5, $s7, 8
	fmadd.d	$fa2, $fs2, $fa4, $fa2
	ldx.d	$s8, $a2, $t5
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $s8, 16
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	move	$s8, $s7
	move	$s7, $s6
	move	$s6, $s5
	bnez	$t6, .LBB6_7
# %bb.8:                                # %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.1"
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB6_4
.LBB6_9:                                # %._crit_edge
	move	$a0, $fp
	fld.d	$fs7, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end6:
	.size	_ZL13BM_ADI_LAMBDARN9benchmark5StateE, .Lfunc_end6-_ZL13BM_ADI_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE
	.type	_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE,@function
_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE: # @_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	.cfi_offset 59, -72
	.cfi_offset 60, -80
	.cfi_offset 61, -88
	.cfi_offset 62, -96
	.cfi_offset 63, -104
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	fld.d	$fs0, $s0, 384
	fld.d	$fs1, $s0, 392
	fld.d	$fs2, $s0, 400
	fld.d	$fs3, $s0, 408
	fld.d	$fs4, $s0, 416
	fld.d	$fs5, $s0, 424
	fld.d	$fs6, $s0, 432
	fld.d	$fs7, $s0, 440
	ld.w	$s2, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB7_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB7_7
# %bb.2:                                # %.lr.ph46
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB7_7
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$a0, $a0, 30, 0
	.p2align	4, , 16
.LBB7_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	move	$a1, $a0
	move	$a2, $s1
	.p2align	4, , 16
.LBB7_5:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	fld.d	$fa0, $a3, 88
	fld.d	$fa1, $a3, 96
	fmul.d	$fa0, $fs5, $fa0
	fld.d	$fa2, $a3, 80
	fld.d	$fa3, $a3, 72
	fld.d	$fa4, $a3, 64
	fmadd.d	$fa0, $fs6, $fa1, $fa0
	fmadd.d	$fa0, $fs4, $fa2, $fa0
	fmadd.d	$fa0, $fs3, $fa3, $fa0
	fmadd.d	$fa0, $fs2, $fa4, $fa0
	fld.d	$fa1, $a3, 56
	fld.d	$fa2, $a3, 48
	fld.d	$fa3, $a3, 32
	fld.d	$fa4, $a3, 40
	fmadd.d	$fa0, $fs1, $fa1, $fa0
	fld.d	$fa1, $a3, 16
	fmadd.d	$fa0, $fs0, $fa2, $fa0
	fadd.d	$fa2, $fa3, $fa4
	fmadd.d	$fa0, $fs7, $fa2, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB7_5
# %bb.6:                                # %"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB7_4
.LBB7_7:                                # %._crit_edge
	move	$a0, $fp
	fld.d	$fs7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end7:
	.size	_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE, .Lfunc_end7-_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE
	.type	_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE,@function
_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE: # @_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 21
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	ld.d	$s0, $s0, 240
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB8_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB8_7
# %bb.2:                                # %.lr.ph28
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB8_7
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$a0, $a0, 30, 0
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	move	$a1, $a0
	move	$a2, $s1
	move	$a3, $s0
	.p2align	4, , 16
.LBB8_5:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a2, 0
	fld.d	$fa0, $a4, 32
	fld.d	$fa1, $a5, 32
	fld.d	$fa2, $a5, 40
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa0, $a5, 32
	fld.d	$fa0, $a5, 48
	fsub.d	$fa2, $fa1, $fa2
	fst.d	$fa1, $a5, 40
	fld.d	$fa1, $a5, 56
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa2, $a5, 48
	fld.d	$fa2, $a5, 64
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa0, $a5, 56
	fld.d	$fa0, $a5, 72
	fsub.d	$fa2, $fa1, $fa2
	fst.d	$fa1, $a5, 64
	fld.d	$fa1, $a5, 80
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa2, $a5, 72
	fld.d	$fa2, $a5, 88
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $a5, 96
	fst.d	$fa0, $a5, 80
	fsub.d	$fa0, $fa1, $fa2
	fst.d	$fa1, $a5, 88
	fsub.d	$fa1, $fa0, $fa3
	fst.d	$fa1, $a5, 104
	fst.d	$fa0, $a5, 96
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB8_5
# %bb.6:                                # %"._Z6forallIZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$s2, $s2, -1
	bnez	$s2, .LBB8_4
.LBB8_7:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end8:
	.size	_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE, .Lfunc_end8-_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE
	.type	_ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE,@function
_ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE: # @_ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s0, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB9_8
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB9_8
# %bb.2:                                # %.lr.ph28
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	bge	$a2, $a1, .LBB9_7
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$a2, $a0, 30, 0
	addi.d	$a0, $s1, 8
	addi.d	$a1, $s0, 8
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB9_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	move	$a3, $a2
	move	$a4, $a1
	move	$a5, $a0
	.p2align	4, , 16
.LBB9_5:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a4, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a5, 0
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB9_5
# %bb.6:                                # %"._Z6forallIZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s2, $s2, -1
	bnez	$s2, .LBB9_4
	b	.LBB9_8
.LBB9_7:                                # %"_Z6forallIZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.preheader"
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
.LBB9_8:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end9:
	.size	_ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE, .Lfunc_end9-_ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE
	.type	_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE,@function
_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE: # @_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB10_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB10_12
# %bb.2:                                # %.lr.ph28
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 0
	addi.w	$a0, $a2, 0
	blez	$a0, .LBB10_12
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$a0, $a2, 30, 0
	alsl.d	$a3, $a0, $s1, 3
	addi.d	$a1, $s2, 8
	alsl.d	$a4, $a0, $a1, 3
	sltu	$a4, $s1, $a4
	sltu	$a3, $s2, $a3
	and	$a5, $a4, $a3
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s1, 16
	addi.d	$a4, $s2, 16
	sltui	$a6, $a0, 4
	or	$a5, $a6, $a5
	andi	$a5, $a5, 1
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_4:                               # %"._Z6forallIZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB10_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB10_12
.LBB10_5:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
                                        #     Child Loop BB10_11 Depth 2
	beqz	$a5, .LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_5 Depth=1
	move	$t0, $zero
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_7:                               # %vector.body.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$a6, $a4
	move	$a7, $a3
	move	$t0, $a2
	.p2align	4, , 16
.LBB10_8:                               # %vector.body
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, -8
	vld	$vr1, $a6, 8
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB10_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$t0, $a2
	beq	$a0, $a2, .LBB10_4
.LBB10_10:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	alsl.d	$a6, $t0, $a1, 3
	alsl.d	$a7, $t0, $s1, 3
	sub.d	$t0, $a0, $t0
	.p2align	4, , 16
.LBB10_11:                              # %scalar.ph
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, 0
	fld.d	$fa1, $a6, -8
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a7, 0
	addi.d	$a6, $a6, 8
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB10_11
	b	.LBB10_4
.LBB10_12:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end10:
	.size	_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE, .Lfunc_end10-_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE
	.type	_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE,@function
_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE: # @_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	ld.d	$s2, $s0, 240
	ld.d	$s3, $s0, 248
	ld.d	$s4, $s0, 8
	ld.d	$s5, $s0, 16
	ld.d	$s6, $s0, 152
	ld.d	$s7, $s0, 160
	ld.d	$s0, $s0, 352
	ld.w	$a0, $fp, 28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s8, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bnez	$a1, .LBB11_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s8, .LBB11_7
# %bb.2:                                # %.lr.ph44
	ld.d	$a1, $fp, 32
	ld.d	$a2, $a1, 0
	addi.w	$a1, $a2, 0
	blez	$a1, .LBB11_7
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$t1, $a2, 30, 0
	vldi	$vr0, -912
	.p2align	4, , 16
.LBB11_4:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	move	$a1, $t1
	move	$a2, $s1
	.p2align	4, , 16
.LBB11_5:                               #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a3, 8
	ftintrz.l.d	$fa3, $fa1
	ftintrz.l.d	$fa4, $fa2
	movfr2gr.d	$a4, $fa4
	andi	$a4, $a4, 63
	slli.d	$a4, $a4, 3
	ldx.d	$a5, $s2, $a4
	movfr2gr.d	$a6, $fa3
	andi	$a6, $a6, 63
	slli.d	$a6, $a6, 3
	fldx.d	$fa3, $a5, $a6
	fld.d	$fa4, $a3, 16
	ldx.d	$a4, $s3, $a4
	fadd.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $a3, 16
	fldx.d	$fa4, $a4, $a6
	fld.d	$fa5, $a3, 24
	fadd.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $a3, 24
	fadd.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $a3, 0
	fadd.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $a3, 8
	ftintrz.l.d	$fa3, $fa1
	movfr2gr.d	$a4, $fa3
	andi	$a4, $a4, 63
	addi.d	$a5, $a4, 32
	slli.d	$a6, $a5, 3
	fldx.d	$fa3, $s4, $a6
	ftintrz.l.d	$fa4, $fa2
	movfr2gr.d	$a6, $fa4
	andi	$a6, $a6, 63
	fadd.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $a3, 0
	addi.d	$a7, $a6, 32
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $s5, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s7, $a7
	fadd.d	$fa1, $fa2, $fa1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s6, $a5
	add.w	$a6, $a7, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s0, $a6
	fst.d	$fa1, $a3, 8
	add.w	$a3, $a5, $a4
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $a6, $a3
	fadd.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a6, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB11_5
# %bb.6:                                # %"._Z6forallIZL16BM_PIC_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB11_4 Depth=1
	addi.d	$s8, $s8, -1
	bnez	$s8, .LBB11_4
.LBB11_7:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end11:
	.size	_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE, .Lfunc_end11-_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE
	.type	_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE,@function
_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE: # @_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 25
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$s5, $s0, 40
	ld.d	$s6, $s0, 48
	ld.d	$s7, $s0, 56
	ld.d	$s8, $s0, 64
	ld.d	$a1, $s0, 72
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	fld.d	$fa0, $s0, 384
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ld.d	$a1, $s0, 168
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s0, $s0, 176
	ld.d	$a0, $a0, 184
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 28
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$fp, $fp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bnez	$a1, .LBB12_18
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$fp, .LBB12_18
# %bb.2:                                # %.lr.ph92
	ld.d	$a1, $a0, 32
	ld.d	$a3, $a1, 0
	bstrpick.d	$t6, $a3, 30, 0
	alsl.d	$a1, $t6, $s1, 3
	alsl.d	$a2, $t6, $t7, 3
	alsl.d	$a4, $t6, $s2, 3
	alsl.d	$a5, $t6, $s5, 3
	alsl.d	$a6, $t6, $s3, 3
	alsl.d	$a7, $t6, $s7, 3
	sltu	$t0, $s1, $a2
	sltu	$t1, $t7, $a1
	and	$t0, $t0, $t1
	sltu	$t1, $s1, $a4
	sltu	$t2, $s2, $a1
	and	$t1, $t1, $t2
	or	$t0, $t0, $t1
	sltu	$t1, $s1, $a5
	sltu	$t2, $s5, $a1
	and	$t1, $t1, $t2
	or	$t0, $t0, $t1
	sltu	$t1, $s1, $a6
	sltu	$t2, $s3, $a1
	and	$t1, $t1, $t2
	or	$t0, $t0, $t1
	sltu	$t1, $s1, $a7
	sltu	$a1, $s7, $a1
	and	$a1, $t1, $a1
	or	$a1, $t0, $a1
	sltu	$t0, $t7, $a4
	sltu	$t1, $s2, $a2
	and	$t0, $t0, $t1
	or	$a1, $a1, $t0
	sltu	$t0, $t7, $a5
	sltu	$t1, $s5, $a2
	and	$t0, $t0, $t1
	or	$a1, $a1, $t0
	sltu	$t0, $t7, $a6
	sltu	$t1, $s3, $a2
	and	$t0, $t0, $t1
	or	$a1, $a1, $t0
	sltu	$t0, $t7, $a7
	sltu	$a2, $s7, $a2
	and	$a2, $t0, $a2
	or	$a1, $a1, $a2
	sltu	$a2, $s2, $a5
	sltu	$a5, $s5, $a4
	and	$a2, $a2, $a5
	or	$a1, $a1, $a2
	sltu	$a2, $s2, $a6
	sltu	$a5, $s3, $a4
	and	$a2, $a2, $a5
	or	$a1, $a1, $a2
	sltu	$a2, $s2, $a7
	sltu	$a4, $s7, $a4
	and	$a2, $a2, $a4
	or	$a1, $a1, $a2
	bstrpick.d	$a2, $a3, 30, 1
	slli.d	$a2, $a2, 1
	vreplvei.d	$vr0, $vr9, 0
	addi.w	$a3, $a3, 0
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -912
	ori	$a4, $zero, 2047
	vreplgr2vr.w	$vr3, $a4
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               # %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit"
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$fp, $fp, -1
	beqz	$fp, .LBB12_18
.LBB12_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #     Child Loop BB12_12 Depth 2
                                        #     Child Loop BB12_15 Depth 2
                                        #     Child Loop BB12_17 Depth 2
	move	$a4, $t6
	move	$a5, $s1
	move	$a6, $s2
	move	$a7, $ra
	move	$t0, $t8
	move	$t1, $s3
	move	$t2, $s7
	move	$t3, $s5
	bgtz	$a3, .LBB12_7
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_5:                               #   in Loop: Header=BB12_7 Depth=2
	alsl.d	$t5, $t4, $s4, 3
	fld.d	$fa4, $t5, -8
	fst.d	$fa4, $t3, 0
	alsl.d	$t4, $t4, $s6, 3
	fld.d	$fa4, $t4, -8
.LBB12_6:                               # %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
                                        #   in Loop: Header=BB12_7 Depth=2
	fst.d	$fa4, $t2, 0
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB12_9
.LBB12_7:                               # %.lr.ph
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $a7, 0
	st.d	$zero, $a5, 0
	st.d	$zero, $a6, 0
	st.w	$t4, $t0, 0
	movgr2fr.w	$fa4, $t4
	ffint.d.w	$fa4, $fa4
	fst.d	$fa4, $t1, 0
	bnez	$t4, .LBB12_5
# %bb.8:                                # %.thread.i
                                        #   in Loop: Header=BB12_7 Depth=2
	st.d	$zero, $t3, 0
	fmov.d	$fa4, $fa1
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_9:                               # %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.preheader"
                                        #   in Loop: Header=BB12_4 Depth=1
	sltui	$a4, $t6, 2
	or	$a4, $a4, $a1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB12_11
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=1
	move	$t3, $zero
	b	.LBB12_14
	.p2align	4, , 16
.LBB12_11:                              # %vector.body.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a4, $s1
	move	$a5, $s5
	move	$a6, $s2
	move	$a7, $s3
	move	$t0, $s7
	move	$t1, $s0
	move	$t2, $t7
	move	$t3, $a2
	.p2align	4, , 16
.LBB12_12:                              # %vector.body
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $a4, 0
	vld	$vr5, $a5, 0
	vld	$vr6, $a6, 0
	vld	$vr7, $a7, 0
	vld	$vr8, $t0, 0
	vfadd.d	$vr4, $vr4, $vr5
	vfsub.d	$vr5, $vr6, $vr7
	vfmadd.d	$vr4, $vr5, $vr8, $vr4
	vst	$vr4, $a4, 0
	vfadd.d	$vr4, $vr4, $vr6
	vfadd.d	$vr4, $vr0, $vr4
	vreplvei.d	$vr5, $vr4, 0
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t4, $fa5
	vinsgr2vr.w	$vr5, $t4, 0
	vreplvei.d	$vr6, $vr4, 1
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$t5, $fa6
	vinsgr2vr.w	$vr5, $t5, 1
	movgr2fr.w	$fa6, $t5
	ffint.d.w	$fa6, $fa6
	movgr2fr.w	$fa7, $t4
	ffint.d.w	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vfsub.d	$vr4, $vr4, $vr7
	vst	$vr4, $t2, 0
	vand.v	$vr5, $vr5, $vr3
	vaddi.wu	$vr5, $vr5, 1
	vstelm.d	$vr5, $t1, 0, 0
	vpickve2gr.w	$t4, $vr5, 1
	andi	$t4, $t4, 4095
	movgr2fr.w	$fa6, $t4
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$t4, $vr5, 0
	andi	$t4, $t4, 4095
	movgr2fr.w	$fa5, $t4
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	vfadd.d	$vr4, $vr4, $vr5
	vst	$vr4, $a6, 0
	addi.d	$t3, $t3, -2
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$t3, .LBB12_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$t3, $a2
	beq	$t6, $a2, .LBB12_16
.LBB12_14:                              # %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.preheader160"
                                        #   in Loop: Header=BB12_4 Depth=1
	alsl.d	$a4, $t3, $t7, 3
	alsl.d	$a5, $t3, $s0, 2
	alsl.d	$a6, $t3, $s7, 3
	alsl.d	$a7, $t3, $s3, 3
	alsl.d	$t0, $t3, $s2, 3
	alsl.d	$t1, $t3, $s5, 3
	alsl.d	$t2, $t3, $s1, 3
	sub.d	$t3, $t6, $t3
	.p2align	4, , 16
.LBB12_15:                              # %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa4, $t2, 0
	fld.d	$fa5, $t1, 0
	fld.d	$fa6, $t0, 0
	fld.d	$fa7, $a7, 0
	fld.d	$ft0, $a6, 0
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa5, $fa6, $fa7
	fmadd.d	$fa4, $fa5, $ft0, $fa4
	fst.d	$fa4, $t2, 0
	fld.d	$fa5, $t0, 0
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $ft1, $fa4
	ftintrz.w.d	$fa5, $fa4
	movfr2gr.s	$t4, $fa5
	movgr2fr.w	$fa5, $t4
	ffint.d.w	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $a4, 0
	andi	$t4, $t4, 2047
	addi.d	$t4, $t4, 1
	st.w	$t4, $a5, 0
	movgr2fr.w	$fa5, $t4
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $t0, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	bnez	$t3, .LBB12_15
.LBB12_16:                              # %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.preheader"
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a4, $t6
	move	$a5, $t7
	move	$a6, $s0
	.p2align	4, , 16
.LBB12_17:                              # %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit"
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	fld.d	$fa4, $a5, 0
	alsl.d	$t0, $a7, $s8, 3
	fld.d	$fa5, $t0, -8
	fsub.d	$fa4, $fa2, $fa4
	slli.d	$a7, $a7, 3
	fadd.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $t0, -8
	fld.d	$fa4, $a5, 0
	fldx.d	$fa5, $s8, $a7
	fadd.d	$fa4, $fa4, $fa5
	fstx.d	$fa4, $s8, $a7
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB12_17
	b	.LBB12_3
.LBB12_18:                              # %._crit_edge
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end12:
	.size	_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE, .Lfunc_end12-_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE
.LCPI13_0:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI13_1:
	.dword	0x3f70cb295e9e1b09              # double 0.0041000000000000003
.LCPI13_2:
	.dword	0x3f6e4f765fd8adac              # double 0.0037000000000000002
	.text
	.p2align	5
	.type	_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE,@function
_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE: # @_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
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
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 26
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 264
	ld.d	$a0, $fp, 272
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 280
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s7, $fp, 288
	ld.d	$a0, $fp, 296
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s2, $fp, 304
	ld.d	$a0, $fp, 312
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 320
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 32
	ld.d	$a1, $fp, 328
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s3, $fp, 336
	ld.d	$s4, $fp, 344
	ld.d	$fp, $a0, 0
	ld.w	$s0, $s1, 28
	ld.d	$s5, $s1, 16
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB13_68
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s5, .LBB13_68
# %bb.2:                                # %.preheader99.lr.ph
	bstrpick.d	$a0, $fp, 30, 0
	addi.d	$s8, $a0, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $s8
	bstrins.d	$a0, $zero, 0, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $s8, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$t8, $fp, 0
	ori	$fp, $zero, 2
	lu12i.w	$a0, 392586
	ori	$a0, $a0, 3500
	lu32i.d	$a0, -110730
	lu52i.d	$a0, $a0, 1014
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, 387553
	ori	$a0, $a0, 2825
	lu32i.d	$a0, 52009
	lu52i.d	$t4, $a0, 1015
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %.split.us
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$s5, $s5, -1
	beqz	$s5, .LBB13_68
.LBB13_4:                               # %.preheader99
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #       Child Loop BB13_13 Depth 3
                                        #       Child Loop BB13_9 Depth 3
                                        #     Child Loop BB13_17 Depth 2
                                        #       Child Loop BB13_25 Depth 3
                                        #       Child Loop BB13_19 Depth 3
                                        #     Child Loop BB13_46 Depth 2
                                        #     Child Loop BB13_30 Depth 2
                                        #     Child Loop BB13_51 Depth 2
                                        #     Child Loop BB13_33 Depth 2
                                        #     Child Loop BB13_56 Depth 2
                                        #     Child Loop BB13_36 Depth 2
                                        #     Child Loop BB13_61 Depth 2
                                        #     Child Loop BB13_39 Depth 2
                                        #     Child Loop BB13_66 Depth 2
                                        #     Child Loop BB13_42 Depth 2
	blt	$t8, $fp, .LBB13_3
# %bb.5:                                # %.preheader96.us.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t8, $s7, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $a0, 8
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $ra, 8
	ori	$a6, $zero, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_6:                               # %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$a3, $t1
	move	$t7, $t0
	move	$t8, $a7
	ori	$a0, $zero, 6
	beq	$a6, $a0, .LBB13_15
.LBB13_7:                               # %.preheader96.us
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_13 Depth 3
                                        #       Child Loop BB13_9 Depth 3
	alsl.d	$a0, $a6, $s2, 3
	slli.d	$a1, $a6, 3
	addi.d	$a6, $a6, 1
	slli.d	$a4, $a6, 3
	ldx.d	$a7, $s7, $a4
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$t0, $a5, $a4
	ldx.d	$t2, $s2, $a1
	ldx.d	$t1, $ra, $a4
	ldx.d	$t3, $s6, $a1
	ld.d	$t5, $a0, -8
	ldx.d	$t6, $a2, $a1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	bgeu	$s8, $a1, .LBB13_10
.LBB13_8:                               # %scalar.ph501.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $a0
	slli.d	$s0, $a0, 3
	addi.d	$s3, $t1, -8
	addi.d	$t2, $t2, -8
	addi.d	$s4, $a7, -8
	addi.d	$s5, $t0, -8
	addi.d	$t8, $t8, -8
	addi.d	$a4, $t7, -8
	.p2align	4, , 16
.LBB13_9:                               # %scalar.ph501
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s4, $s0
	fldx.d	$fa2, $s5, $s0
	fldx.d	$fa3, $t8, $s0
	fadd.d	$fa1, $fa1, $fa2
	add.d	$a0, $t8, $s0
	fsub.d	$fa1, $fa1, $fa3
	fldx.d	$fa2, $a4, $s0
	add.d	$a1, $t2, $s0
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $t2, $s0
	add.d	$t7, $a3, $s0
	fld.d	$fa5, $t7, -8
	fldx.d	$fa6, $s3, $s0
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa4
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $fa5, $fa6
	fdiv.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $t3, $s0
	fldx.d	$fa1, $t8, $s0
	fldx.d	$fa2, $a4, $s0
	fld.d	$fa3, $a0, 8
	add.d	$a0, $a4, $s0
	fadd.d	$fa1, $fa1, $fa2
	fsub.d	$fa1, $fa1, $fa3
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $t5, $s0
	fldx.d	$fa5, $a3, $s0
	fld.d	$fa6, $t7, -8
	fsub.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa4
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $fa5, $fa6
	fdiv.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $t6, $s0
	addi.d	$a5, $a5, -1
	addi.d	$t3, $t3, 8
	addi.d	$s3, $s3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t5, $t5, 8
	addi.d	$a3, $a3, 8
	addi.d	$t6, $t6, 8
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, 8
	addi.d	$t8, $t8, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB13_9
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_10:                              # %vector.memcheck420
                                        #   in Loop: Header=BB13_7 Depth=2
	vinsgr2vr.d	$vr1, $t6, 0
	vinsgr2vr.d	$vr1, $t3, 1
	vaddi.du	$vr3, $vr1, 8
	vreplvei.d	$vr4, $vr3, 0
	vreplvei.d	$vr1, $vr3, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $t3, $a1
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a4, $a7, $s0
	vori.b	$vr5, $vr2, 0
	vinsgr2vr.d	$vr5, $a4, 1
	vslt.du	$vr5, $vr3, $vr5
	vshuf4i.d	$vr3, $vr0, 1
	add.d	$a5, $t6, $a1
	add.d	$fp, $t0, $s0
	add.d	$s1, $t8, $a1
	add.d	$s2, $t7, $a1
	add.d	$s3, $t2, $a1
	add.d	$s4, $a3, $a1
	add.d	$s5, $t1, $s0
	addi.d	$s0, $t5, 8
	add.d	$a1, $t5, $a1
	vinsgr2vr.d	$vr6, $a1, 0
	vinsgr2vr.d	$vr6, $a4, 1
	vinsgr2vr.d	$vr7, $s4, 0
	vinsgr2vr.d	$vr7, $s5, 1
	vinsgr2vr.d	$vr8, $s2, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr8, $s3, 1
	vinsgr2vr.d	$vr9, $fp, 0
	vinsgr2vr.d	$vr9, $s1, 1
	vslt.du	$vr10, $vr1, $vr9
	vpickev.w	$vr5, $vr10, $vr5
	vslt.du	$vr10, $vr1, $vr8
	vslt.du	$vr11, $vr1, $vr7
	vpickev.w	$vr10, $vr11, $vr10
	vpickev.h	$vr5, $vr10, $vr5
	vslt.du	$vr3, $vr3, $vr6
	vslt.du	$vr6, $vr4, $vr9
	vpickev.w	$vr3, $vr6, $vr3
	vslt.du	$vr6, $vr4, $vr8
	vslt.du	$vr4, $vr4, $vr7
	vpickev.w	$vr4, $vr4, $vr6
	vpickev.h	$vr3, $vr4, $vr3
	vpickev.b	$vr3, $vr3, $vr5
	vinsgr2vr.d	$vr1, $a7, 1
	vinsgr2vr.d	$vr4, $t0, 0
	vinsgr2vr.d	$vr4, $t8, 1
	vinsgr2vr.d	$vr5, $t7, 0
	vinsgr2vr.d	$vr5, $t2, 1
	vinsgr2vr.d	$vr6, $a3, 0
	vinsgr2vr.d	$vr6, $t1, 1
	vinsgr2vr.d	$vr7, $s0, 0
	vinsgr2vr.d	$vr7, $a7, 1
	vinsgr2vr.d	$vr8, $a5, 0
	vinsgr2vr.d	$vr8, $a0, 1
	vinsgr2vr.d	$vr2, $a5, 1
	vreplgr2vr.d	$vr9, $a0
	vreplgr2vr.d	$vr10, $a5
	vslt.du	$vr11, $vr5, $vr10
	vslt.du	$vr12, $vr6, $vr10
	vpickev.w	$vr11, $vr12, $vr11
	vslt.du	$vr10, $vr4, $vr10
	vslt.du	$vr2, $vr7, $vr2
	vpickev.w	$vr2, $vr10, $vr2
	vpickev.h	$vr2, $vr11, $vr2
	vslt.du	$vr5, $vr5, $vr9
	vslt.du	$vr6, $vr6, $vr9
	vpickev.w	$vr5, $vr6, $vr5
	vslt.du	$vr4, $vr4, $vr9
	vslt.du	$vr1, $vr1, $vr8
	vpickev.w	$vr1, $vr4, $vr1
	vpickev.h	$vr1, $vr5, $vr1
	vpickev.b	$vr1, $vr2, $vr1
	vand.v	$vr1, $vr3, $vr1
	vslli.b	$vr1, $vr1, 7
	vmskltz.b	$vr1, $vr1
	vpickve2gr.hu	$a4, $vr1, 0
	ori	$a0, $zero, 1
	bnez	$a4, .LBB13_8
# %bb.11:                               # %vector.memcheck420
                                        #   in Loop: Header=BB13_7 Depth=2
	addi.d	$a4, $t6, 8
	sltu	$a0, $a4, $a1
	sltu	$a1, $s0, $a5
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	bnez	$a1, .LBB13_8
# %bb.12:                               # %vector.body506.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	addi.d	$a0, $t2, 8
	addi.d	$a5, $t3, 8
	move	$s1, $t7
	move	$s3, $t8
	move	$s4, $a7
	move	$s5, $t0
	move	$s7, $a3
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	move	$s2, $t1
	.p2align	4, , 16
.LBB13_13:                              # %vector.body506
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $s4, 0
	vld	$vr2, $s5, 0
	vld	$vr3, $s3, 0
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vld	$vr2, $s1, 0
	vld	$vr4, $a0, 0
	vld	$vr5, $a0, -8
	vld	$vr6, $s7, 0
	vld	$vr7, $s2, 0
	vfsub.d	$vr1, $vr1, $vr2
	vfadd.d	$vr5, $vr4, $vr5
	vfmul.d	$vr1, $vr1, $vr5
	vfadd.d	$vr5, $vr6, $vr7
	vfdiv.d	$vr1, $vr1, $vr5
	vst	$vr1, $a5, 0
	vld	$vr1, $s3, 8
	vfadd.d	$vr2, $vr3, $vr2
	vld	$vr3, $s1, 8
	vld	$vr5, $s0, 0
	vfsub.d	$vr1, $vr2, $vr1
	vld	$vr2, $s7, 8
	vfsub.d	$vr1, $vr1, $vr3
	vfadd.d	$vr3, $vr4, $vr5
	vfmul.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr6
	vfdiv.d	$vr1, $vr1, $vr2
	vst	$vr1, $a4, 0
	addi.d	$s2, $s2, 16
	addi.d	$s8, $s8, -2
	addi.d	$a4, $a4, 16
	addi.d	$s7, $s7, 16
	addi.d	$s0, $s0, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$a0, $a0, 16
	addi.d	$a5, $a5, 16
	addi.d	$s3, $s3, 16
	addi.d	$s1, $s1, 16
	bnez	$s8, .LBB13_13
# %bb.14:                               # %middle.block526
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$s8, $a1, .LBB13_6
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_15:                              # %.preheader95.us.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t7, $a0, 8
	ld.d	$t6, $a2, 8
	ld.d	$t5, $s2, 8
	ori	$t8, $zero, 1
	b	.LBB13_17
	.p2align	4, , 16
.LBB13_16:                              # %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB13_17 Depth=2
	move	$t5, $a6
	move	$t6, $a7
	move	$t7, $t0
	ori	$a0, $zero, 6
	beq	$t8, $a0, .LBB13_27
.LBB13_17:                              # %.preheader95.us
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_25 Depth 3
                                        #       Child Loop BB13_19 Depth 3
	slli.d	$a0, $t8, 3
	ldx.d	$ra, $s6, $a0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a3, 3
	ld.d	$t3, $a1, -8
	alsl.d	$a1, $t8, $s2, 3
	addi.d	$t8, $t8, 1
	slli.d	$a4, $t8, 3
	ldx.d	$a7, $a2, $a4
	ldx.d	$t0, $a3, $a4
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$s0, $a3, $a0
	ld.d	$a3, $a1, -8
	ldx.d	$a6, $s2, $a4
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$t1, $a1, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	bgeu	$s8, $a1, .LBB13_20
.LBB13_18:                              # %scalar.ph388.preheader
                                        #   in Loop: Header=BB13_17 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$t2, $a1, $a0
	slli.d	$a5, $a0, 3
	move	$s3, $t0
	move	$s4, $a7
	move	$s5, $a6
	.p2align	4, , 16
.LBB13_19:                              # %scalar.ph388
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $t7, $a5
	fldx.d	$fa1, $t7, $a5
	fld.d	$fa2, $a0, 8
	add.d	$a1, $ra, $a5
	fld.d	$fa3, $a0, -8
	fldx.d	$fa4, $ra, $a5
	fsub.d	$fa2, $fa1, $fa2
	fld.d	$fa5, $a1, -8
	fsub.d	$fa3, $fa1, $fa3
	fneg.d	$fa3, $fa3
	fldx.d	$fa6, $t3, $a5
	fldx.d	$fa7, $t6, $a5
	fmul.d	$fa3, $fa5, $fa3
	fmadd.d	$fa2, $fa4, $fa2, $fa3
	fsub.d	$fa3, $fa1, $fa6
	fneg.d	$fa4, $fa7
	fldx.d	$fa5, $s4, $a5
	fldx.d	$fa6, $s3, $a5
	fldx.d	$fa7, $s0, $a5
	pcalau12i	$a0, %pc_hi20(.LCPI13_1)
	fld.d	$ft0, $a0, %pc_lo12(.LCPI13_1)
	fmadd.d	$fa2, $fa4, $fa3, $fa2
	fsub.d	$fa1, $fa1, $fa6
	fmadd.d	$fa1, $fa5, $fa1, $fa2
	fmadd.d	$fa1, $fa1, $ft0, $fa7
	fstx.d	$fa1, $s0, $a5
	add.d	$a0, $t5, $a5
	fldx.d	$fa1, $t5, $a5
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a0, -8
	fldx.d	$fa4, $ra, $a5
	fsub.d	$fa2, $fa1, $fa2
	fld.d	$fa5, $a1, -8
	fsub.d	$fa3, $fa1, $fa3
	fneg.d	$fa3, $fa3
	fldx.d	$fa6, $a3, $a5
	fldx.d	$fa7, $t6, $a5
	fmul.d	$fa3, $fa5, $fa3
	fmadd.d	$fa2, $fa4, $fa2, $fa3
	fsub.d	$fa3, $fa1, $fa6
	fneg.d	$fa4, $fa7
	fldx.d	$fa5, $s5, $a5
	fldx.d	$fa6, $s4, $a5
	fldx.d	$fa7, $t1, $a5
	fmadd.d	$fa2, $fa4, $fa3, $fa2
	fsub.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fa6, $fa1, $fa2
	fmadd.d	$fa1, $fa1, $ft0, $fa7
	fstx.d	$fa1, $t1, $a5
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$s5, $s5, 8
	addi.d	$ra, $ra, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t3, $t3, 8
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, 8
	addi.d	$t5, $t5, 8
	addi.d	$a3, $a3, 8
	bnez	$t2, .LBB13_19
	b	.LBB13_16
	.p2align	4, , 16
.LBB13_20:                              # %vector.memcheck297
                                        #   in Loop: Header=BB13_17 Depth=2
	vinsgr2vr.d	$vr1, $t1, 0
	vinsgr2vr.d	$vr1, $s0, 1
	vinsgr2vr.d	$vr3, $a3, 0
	vinsgr2vr.d	$vr3, $t6, 1
	vinsgr2vr.d	$vr2, $a7, 0
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	vld	$vr4, $a0, %pc_lo12(.LCPI13_0)
	vinsgr2vr.d	$vr5, $t3, 0
	vinsgr2vr.d	$vr5, $t0, 1
	vaddi.du	$vr7, $vr5, 8
	vadd.d	$vr6, $vr2, $vr4
	vaddi.du	$vr2, $vr1, 8
	vaddi.du	$vr1, $vr3, 8
	vori.b	$vr4, $vr2, 0
	vshuf4i.d	$vr4, $vr1, 6
	vpackev.d	$vr8, $vr2, $vr6
	vori.b	$vr9, $vr2, 0
	vshuf4i.d	$vr9, $vr1, 3
	vpackod.d	$vr10, $vr2, $vr7
	vori.b	$vr11, $vr2, 0
	vshuf4i.d	$vr11, $vr7, 6
	vreplvei.d	$vr12, $vr2, 0
	vreplvei.d	$vr3, $vr2, 1
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	add.d	$s7, $s0, $s4
	add.d	$s3, $t1, $s4
	add.d	$a1, $ra, $s4
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	add.d	$fp, $t7, $a5
	add.d	$a4, $t6, $s4
	add.d	$s8, $t3, $s4
	add.d	$s1, $a7, $s4
	add.d	$a0, $t0, $s4
	add.d	$a5, $t5, $a5
	add.d	$s5, $a3, $s4
	addi.d	$t2, $a6, 8
	add.d	$s4, $a6, $s4
	vinsgr2vr.d	$vr13, $a1, 0
	vinsgr2vr.d	$vr14, $s7, 0
	vinsgr2vr.d	$vr13, $fp, 1
	vori.b	$vr15, $vr14, 0
	vinsgr2vr.d	$vr5, $s3, 0
	vinsgr2vr.d	$vr15, $s4, 1
	vori.b	$vr16, $vr5, 0
	vinsgr2vr.d	$vr16, $a0, 1
	vori.b	$vr17, $vr5, 0
	vinsgr2vr.d	$vr17, $s8, 1
	vinsgr2vr.d	$vr18, $fp, 0
	vinsgr2vr.d	$vr18, $a4, 1
	vori.b	$vr19, $vr14, 0
	vinsgr2vr.d	$vr19, $a1, 1
	vori.b	$vr20, $vr14, 0
	vinsgr2vr.d	$vr20, $a5, 1
	vinsgr2vr.d	$vr14, $s1, 1
	vslt.du	$vr11, $vr11, $vr14
	vslt.du	$vr10, $vr10, $vr20
	vpickev.w	$vr10, $vr10, $vr11
	vslt.du	$vr11, $vr2, $vr19
	vslt.du	$vr14, $vr3, $vr18
	vpickev.w	$vr11, $vr14, $vr11
	vpickev.h	$vr10, $vr10, $vr11
	vslt.du	$vr9, $vr9, $vr17
	vslt.du	$vr8, $vr8, $vr16
	vpickev.w	$vr8, $vr8, $vr9
	vslt.du	$vr4, $vr4, $vr15
	vslt.du	$vr9, $vr12, $vr13
	vpickev.w	$vr4, $vr9, $vr4
	vpickev.h	$vr4, $vr8, $vr4
	vpickev.b	$vr4, $vr4, $vr10
	vori.b	$vr8, $vr2, 0
	vshuf4i.d	$vr8, $vr7, 12
	vpackev.d	$vr7, $vr7, $vr2
	vshuf4i.d	$vr2, $vr6, 9
	vinsgr2vr.d	$vr3, $ra, 1
	vinsgr2vr.d	$vr1, $t7, 0
	vinsgr2vr.d	$vr6, $t5, 1
	vinsgr2vr.d	$vr9, $t2, 1
	vori.b	$vr10, $vr3, 0
	vori.b	$vr11, $vr3, 0
	vinsgr2vr.d	$vr5, $s7, 1
	vslt.du	$vr5, $vr3, $vr5
	vshuf4i.d	$vr3, $vr1, 9
	vshuf4i.d	$vr10, $vr9, 12
	vshuf4i.d	$vr11, $vr6, 12
	vinsgr2vr.d	$vr6, $s5, 0
	vinsgr2vr.d	$vr6, $s7, 1
	vinsgr2vr.d	$vr9, $s1, 0
	vinsgr2vr.d	$vr9, $s3, 1
	vinsgr2vr.d	$vr12, $a4, 0
	vinsgr2vr.d	$vr12, $s3, 1
	vinsgr2vr.d	$vr13, $a0, 0
	vinsgr2vr.d	$vr13, $s7, 1
	vinsgr2vr.d	$vr14, $s8, 0
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr14, $s7, 1
	vreplgr2vr.d	$vr15, $s3
	vreplgr2vr.d	$vr16, $s7
	vslt.du	$vr2, $vr2, $vr14
	vslt.du	$vr11, $vr11, $vr13
	vpickev.w	$vr2, $vr11, $vr2
	vslt.du	$vr1, $vr1, $vr16
	vpickev.w	$vr1, $vr1, $vr5
	vpickev.h	$vr1, $vr2, $vr1
	vslt.du	$vr2, $vr7, $vr12
	vslt.du	$vr5, $vr8, $vr9
	vpickev.w	$vr2, $vr5, $vr2
	vslt.du	$vr5, $vr10, $vr6
	vslt.du	$vr3, $vr3, $vr15
	vpickev.w	$vr3, $vr3, $vr5
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.b	$vr1, $vr2, $vr1
	vand.v	$vr1, $vr4, $vr1
	vslli.b	$vr1, $vr1, 7
	vmskltz.b	$vr1, $vr1
	vpickve2gr.hu	$a1, $vr1, 0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB13_18
# %bb.21:                               # %vector.memcheck297
                                        #   in Loop: Header=BB13_17 Depth=2
	addi.d	$s7, $t1, 8
	sltu	$a0, $s7, $a5
	sltu	$a1, $t5, $s3
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	bnez	$a1, .LBB13_18
# %bb.22:                               # %vector.memcheck297
                                        #   in Loop: Header=BB13_17 Depth=2
	addi.d	$a5, $a3, 8
	sltu	$a0, $s7, $s5
	sltu	$a1, $a5, $s3
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	bnez	$a1, .LBB13_18
# %bb.23:                               # %vector.memcheck297
                                        #   in Loop: Header=BB13_17 Depth=2
	sltu	$a0, $s7, $s4
	sltu	$a1, $t2, $s3
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	bnez	$a1, .LBB13_18
# %bb.24:                               # %vector.body393.preheader
                                        #   in Loop: Header=BB13_17 Depth=2
	move	$a0, $zero
	addi.d	$a4, $t5, 8
	addi.d	$s1, $ra, 8
	addi.d	$s3, $t7, 8
	addi.d	$s4, $t6, 8
	addi.d	$s5, $t3, 8
	addi.d	$s8, $a7, 8
	addi.d	$s2, $t0, 8
	addi.d	$fp, $s0, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_25:                              # %vector.body393
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s6, $s3, $a0
	vldx	$vr1, $s3, $a0
	vld	$vr2, $s6, 8
	add.d	$a2, $s1, $a0
	vld	$vr3, $s6, -8
	vldx	$vr4, $s1, $a0
	vfsub.d	$vr2, $vr1, $vr2
	vld	$vr5, $a2, -8
	vfsub.d	$vr3, $vr1, $vr3
	vbitrevi.d	$vr3, $vr3, 63
	vldx	$vr6, $s5, $a0
	vfmul.d	$vr3, $vr5, $vr3
	vfmadd.d	$vr2, $vr4, $vr2, $vr3
	vldx	$vr3, $s4, $a0
	vfsub.d	$vr6, $vr1, $vr6
	vldx	$vr7, $s2, $a0
	vldx	$vr8, $s8, $a0
	vbitrevi.d	$vr3, $vr3, 63
	vfmadd.d	$vr2, $vr3, $vr6, $vr2
	vfsub.d	$vr1, $vr1, $vr7
	vfmadd.d	$vr1, $vr8, $vr1, $vr2
	vldx	$vr2, $fp, $a0
	vreplgr2vr.d	$vr6, $t4
	add.d	$a2, $a4, $a0
	vldx	$vr7, $a4, $a0
	vld	$vr9, $a2, -8
	vfmadd.d	$vr1, $vr1, $vr6, $vr2
	vstx	$vr1, $fp, $a0
	vld	$vr1, $a2, 8
	vfsub.d	$vr2, $vr7, $vr9
	vbitrevi.d	$vr2, $vr2, 63
	vfmul.d	$vr2, $vr5, $vr2
	vldx	$vr5, $a5, $a0
	vfsub.d	$vr1, $vr7, $vr1
	vfmadd.d	$vr1, $vr4, $vr1, $vr2
	vldx	$vr2, $t2, $a0
	vfsub.d	$vr4, $vr7, $vr5
	vldx	$vr5, $s7, $a0
	vfmadd.d	$vr1, $vr3, $vr4, $vr1
	vfsub.d	$vr2, $vr7, $vr2
	vfmadd.d	$vr1, $vr8, $vr2, $vr1
	vfmadd.d	$vr1, $vr1, $vr6, $vr5
	vstx	$vr1, $s7, $a0
	addi.d	$a1, $a1, -2
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB13_25
# %bb.26:                               # %middle.block417
                                        #   in Loop: Header=BB13_17 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$s8, $a1, .LBB13_16
	b	.LBB13_18
	.p2align	4, , 16
.LBB13_27:                              # %.preheader.us.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $s2, 8
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 8
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $s3, 8
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $a0, 8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t2, $s4, 8
	ori	$a0, $zero, 1
	pcalau12i	$t5, %pc_hi20(.LCPI13_2)
	ori	$fp, $zero, 2
	bgeu	$s8, $fp, .LBB13_43
# %bb.28:                               #   in Loop: Header=BB13_4 Depth=1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
.LBB13_29:                              # %scalar.ph281.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	alsl.d	$a1, $a0, $a3, 3
	alsl.d	$a3, $a0, $a6, 3
	alsl.d	$a4, $a0, $a7, 3
	alsl.d	$a5, $a0, $t0, 3
	alsl.d	$a6, $a0, $t1, 3
	alsl.d	$a7, $a0, $t2, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB13_30:                              # %scalar.ph281
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a3, 0
	fld.d	$fa3, $t5, %pc_lo12(.LCPI13_2)
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	fld.d	$fa1, $a5, 0
	fld.d	$fa2, $a6, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a7, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 8
	bnez	$a0, .LBB13_30
.LBB13_31:                              # %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $s2, 16
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 16
	ld.d	$a7, $s3, 16
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 16
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $a0, 16
	ld.d	$t2, $s4, 16
	ori	$a0, $zero, 1
	bgeu	$s8, $fp, .LBB13_48
.LBB13_32:                              # %scalar.ph247.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a4, $a0, $t2, 3
	alsl.d	$a5, $a0, $t1, 3
	alsl.d	$t0, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_33:                              # %scalar.ph247
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $t5, %pc_lo12(.LCPI13_2)
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a7, 0
	fld.d	$fa1, $t0, 0
	fld.d	$fa2, $a5, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_33
.LBB13_34:                              # %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit_crit_edge.us.1"
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $s2, 24
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 24
	ld.d	$a7, $s3, 24
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 24
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $a0, 24
	ld.d	$t2, $s4, 24
	ori	$a0, $zero, 1
	bgeu	$s8, $fp, .LBB13_53
.LBB13_35:                              # %scalar.ph213.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a4, $a0, $t2, 3
	alsl.d	$a5, $a0, $t1, 3
	alsl.d	$t0, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_36:                              # %scalar.ph213
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $t5, %pc_lo12(.LCPI13_2)
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a7, 0
	fld.d	$fa1, $t0, 0
	fld.d	$fa2, $a5, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_36
.LBB13_37:                              # %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit_crit_edge.us.2"
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $s2, 32
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 32
	ld.d	$a7, $s3, 32
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 32
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $a0, 32
	ld.d	$t2, $s4, 32
	ori	$a0, $zero, 1
	bgeu	$s8, $fp, .LBB13_58
.LBB13_38:                              # %scalar.ph179.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a4, $a0, $t2, 3
	alsl.d	$a5, $a0, $t1, 3
	alsl.d	$t0, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_39:                              # %scalar.ph179
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $t5, %pc_lo12(.LCPI13_2)
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a7, 0
	fld.d	$fa1, $t0, 0
	fld.d	$fa2, $a5, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_39
.LBB13_40:                              # %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit_crit_edge.us.3"
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $s2, 40
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 40
	ld.d	$a7, $s3, 40
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 40
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $a0, 40
	ld.d	$t2, $s4, 40
	ori	$a0, $zero, 1
	bgeu	$s8, $fp, .LBB13_63
.LBB13_41:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a4, $a0, $t2, 3
	alsl.d	$a5, $a0, $t1, 3
	alsl.d	$t0, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_42:                              # %scalar.ph
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $t5, %pc_lo12(.LCPI13_2)
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a7, 0
	fld.d	$fa1, $t0, 0
	fld.d	$fa2, $a5, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_42
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_43:                              # %vector.memcheck263
                                        #   in Loop: Header=BB13_4 Depth=1
	vinsgr2vr.d	$vr1, $t2, 0
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr1, $a7, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $t0, 1
	vinsgr2vr.d	$vr4, $t1, 0
	vinsgr2vr.d	$vr4, $t2, 1
	vinsgr2vr.d	$vr5, $a6, 0
	vreplgr2vr.d	$vr6, $t2
	vori.b	$vr7, $vr5, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr5, $a7, 1
	vinsgr2vr.d	$vr2, $a3, 1
	vsub.d	$vr4, $vr4, $vr2
	vsub.d	$vr3, $vr3, $vr5
	vsub.d	$vr1, $vr1, $vr2
	vsub.d	$vr2, $vr6, $vr7
	vslti.du	$vr1, $vr1, 16
	vslti.du	$vr3, $vr3, 16
	vpickev.w	$vr3, $vr3, $vr1
	vpickve2gr.h	$a1, $vr3, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a2, $vr1, 0
	bstrins.d	$a2, $a1, 63, 1
	vpickve2gr.h	$a1, $vr3, 4
	bstrins.d	$a2, $a1, 2, 2
	vpickve2gr.h	$a1, $vr3, 6
	bstrins.d	$a2, $a1, 3, 3
	vslti.du	$vr1, $vr4, 16
	vslti.du	$vr2, $vr2, 16
	vpickev.w	$vr1, $vr2, $vr1
	vpickve2gr.h	$a1, $vr1, 0
	bstrins.d	$a2, $a1, 4, 4
	vpickve2gr.h	$a1, $vr1, 2
	bstrins.d	$a2, $a1, 5, 5
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a2, $a1
	vpickve2gr.h	$a2, $vr1, 6
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	andi	$a1, $a1, 255
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	bnez	$a1, .LBB13_29
# %bb.44:                               # %vector.memcheck263
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t2, $t1
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB13_29
# %bb.45:                               # %vector.body286.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a6, 8
	addi.d	$a4, $a7, 8
	addi.d	$a5, $t0, 8
	addi.d	$t3, $t1, 8
	addi.d	$t6, $t2, 8
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_46:                              # %vector.body286
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $a4, 0
	vld	$vr1, $a5, 0
	vld	$vr2, $t3, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $t6, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$t3, $t3, 16
	addi.d	$t7, $t7, -2
	addi.d	$t6, $t6, 16
	bnez	$t7, .LBB13_46
# %bb.47:                               # %middle.block294
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB13_29
	b	.LBB13_31
	.p2align	4, , 16
.LBB13_48:                              # %vector.memcheck229
                                        #   in Loop: Header=BB13_4 Depth=1
	vinsgr2vr.d	$vr1, $t2, 0
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr1, $a7, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $t0, 1
	vinsgr2vr.d	$vr4, $t1, 0
	vinsgr2vr.d	$vr4, $t2, 1
	vinsgr2vr.d	$vr5, $a6, 0
	vreplgr2vr.d	$vr6, $t2
	vori.b	$vr7, $vr5, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr5, $a7, 1
	vinsgr2vr.d	$vr2, $a3, 1
	vsub.d	$vr4, $vr4, $vr2
	vsub.d	$vr3, $vr3, $vr5
	vsub.d	$vr1, $vr1, $vr2
	vsub.d	$vr2, $vr6, $vr7
	vslti.du	$vr1, $vr1, 16
	vslti.du	$vr3, $vr3, 16
	vpickev.w	$vr3, $vr3, $vr1
	vpickve2gr.h	$a1, $vr3, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a2, $vr1, 0
	bstrins.d	$a2, $a1, 63, 1
	vpickve2gr.h	$a1, $vr3, 4
	bstrins.d	$a2, $a1, 2, 2
	vpickve2gr.h	$a1, $vr3, 6
	bstrins.d	$a2, $a1, 3, 3
	vslti.du	$vr1, $vr4, 16
	vslti.du	$vr2, $vr2, 16
	vpickev.w	$vr1, $vr2, $vr1
	vpickve2gr.h	$a1, $vr1, 0
	bstrins.d	$a2, $a1, 4, 4
	vpickve2gr.h	$a1, $vr1, 2
	bstrins.d	$a2, $a1, 5, 5
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a2, $a1
	vpickve2gr.h	$a2, $vr1, 6
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	andi	$a1, $a1, 255
	bnez	$a1, .LBB13_32
# %bb.49:                               # %vector.memcheck229
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t2, $t1
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB13_32
# %bb.50:                               # %vector.body252.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a6, 8
	addi.d	$a4, $a7, 8
	addi.d	$a5, $t0, 8
	addi.d	$t3, $t1, 8
	addi.d	$t6, $t2, 8
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_51:                              # %vector.body252
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $a4, 0
	vld	$vr1, $a5, 0
	vld	$vr2, $t3, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $t6, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$t3, $t3, 16
	addi.d	$t7, $t7, -2
	addi.d	$t6, $t6, 16
	bnez	$t7, .LBB13_51
# %bb.52:                               # %middle.block260
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB13_32
	b	.LBB13_34
	.p2align	4, , 16
.LBB13_53:                              # %vector.memcheck195
                                        #   in Loop: Header=BB13_4 Depth=1
	vinsgr2vr.d	$vr1, $t2, 0
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr1, $a7, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $t0, 1
	vinsgr2vr.d	$vr4, $t1, 0
	vinsgr2vr.d	$vr4, $t2, 1
	vinsgr2vr.d	$vr5, $a6, 0
	vreplgr2vr.d	$vr6, $t2
	vori.b	$vr7, $vr5, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr5, $a7, 1
	vinsgr2vr.d	$vr2, $a3, 1
	vsub.d	$vr4, $vr4, $vr2
	vsub.d	$vr3, $vr3, $vr5
	vsub.d	$vr1, $vr1, $vr2
	vsub.d	$vr2, $vr6, $vr7
	vslti.du	$vr1, $vr1, 16
	vslti.du	$vr3, $vr3, 16
	vpickev.w	$vr3, $vr3, $vr1
	vpickve2gr.h	$a1, $vr3, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a2, $vr1, 0
	bstrins.d	$a2, $a1, 63, 1
	vpickve2gr.h	$a1, $vr3, 4
	bstrins.d	$a2, $a1, 2, 2
	vpickve2gr.h	$a1, $vr3, 6
	bstrins.d	$a2, $a1, 3, 3
	vslti.du	$vr1, $vr4, 16
	vslti.du	$vr2, $vr2, 16
	vpickev.w	$vr1, $vr2, $vr1
	vpickve2gr.h	$a1, $vr1, 0
	bstrins.d	$a2, $a1, 4, 4
	vpickve2gr.h	$a1, $vr1, 2
	bstrins.d	$a2, $a1, 5, 5
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a2, $a1
	vpickve2gr.h	$a2, $vr1, 6
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	andi	$a1, $a1, 255
	bnez	$a1, .LBB13_35
# %bb.54:                               # %vector.memcheck195
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t2, $t1
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB13_35
# %bb.55:                               # %vector.body218.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a6, 8
	addi.d	$a4, $a7, 8
	addi.d	$a5, $t0, 8
	addi.d	$t3, $t1, 8
	addi.d	$t6, $t2, 8
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_56:                              # %vector.body218
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $a4, 0
	vld	$vr1, $a5, 0
	vld	$vr2, $t3, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $t6, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$t3, $t3, 16
	addi.d	$t7, $t7, -2
	addi.d	$t6, $t6, 16
	bnez	$t7, .LBB13_56
# %bb.57:                               # %middle.block226
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB13_35
	b	.LBB13_37
	.p2align	4, , 16
.LBB13_58:                              # %vector.memcheck161
                                        #   in Loop: Header=BB13_4 Depth=1
	vinsgr2vr.d	$vr1, $t2, 0
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr1, $a7, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $t0, 1
	vinsgr2vr.d	$vr4, $t1, 0
	vinsgr2vr.d	$vr4, $t2, 1
	vinsgr2vr.d	$vr5, $a6, 0
	vreplgr2vr.d	$vr6, $t2
	vori.b	$vr7, $vr5, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr5, $a7, 1
	vinsgr2vr.d	$vr2, $a3, 1
	vsub.d	$vr4, $vr4, $vr2
	vsub.d	$vr3, $vr3, $vr5
	vsub.d	$vr1, $vr1, $vr2
	vsub.d	$vr2, $vr6, $vr7
	vslti.du	$vr1, $vr1, 16
	vslti.du	$vr3, $vr3, 16
	vpickev.w	$vr3, $vr3, $vr1
	vpickve2gr.h	$a1, $vr3, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a2, $vr1, 0
	bstrins.d	$a2, $a1, 63, 1
	vpickve2gr.h	$a1, $vr3, 4
	bstrins.d	$a2, $a1, 2, 2
	vpickve2gr.h	$a1, $vr3, 6
	bstrins.d	$a2, $a1, 3, 3
	vslti.du	$vr1, $vr4, 16
	vslti.du	$vr2, $vr2, 16
	vpickev.w	$vr1, $vr2, $vr1
	vpickve2gr.h	$a1, $vr1, 0
	bstrins.d	$a2, $a1, 4, 4
	vpickve2gr.h	$a1, $vr1, 2
	bstrins.d	$a2, $a1, 5, 5
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a2, $a1
	vpickve2gr.h	$a2, $vr1, 6
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	andi	$a1, $a1, 255
	bnez	$a1, .LBB13_38
# %bb.59:                               # %vector.memcheck161
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t2, $t1
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB13_38
# %bb.60:                               # %vector.body184.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a6, 8
	addi.d	$a4, $a7, 8
	addi.d	$a5, $t0, 8
	addi.d	$t3, $t1, 8
	addi.d	$t6, $t2, 8
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_61:                              # %vector.body184
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $a4, 0
	vld	$vr1, $a5, 0
	vld	$vr2, $t3, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $t6, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$t3, $t3, 16
	addi.d	$t7, $t7, -2
	addi.d	$t6, $t6, 16
	bnez	$t7, .LBB13_61
# %bb.62:                               # %middle.block192
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB13_38
	b	.LBB13_40
	.p2align	4, , 16
.LBB13_63:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	vinsgr2vr.d	$vr1, $t2, 0
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr1, $a7, 1
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.d	$vr3, $t0, 1
	vinsgr2vr.d	$vr4, $t1, 0
	vinsgr2vr.d	$vr4, $t2, 1
	vinsgr2vr.d	$vr5, $a6, 0
	vreplgr2vr.d	$vr6, $t2
	vori.b	$vr7, $vr5, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr5, $a7, 1
	vinsgr2vr.d	$vr2, $a3, 1
	vsub.d	$vr4, $vr4, $vr2
	vsub.d	$vr3, $vr3, $vr5
	vsub.d	$vr1, $vr1, $vr2
	vsub.d	$vr2, $vr6, $vr7
	vslti.du	$vr1, $vr1, 16
	vslti.du	$vr3, $vr3, 16
	vpickev.w	$vr3, $vr3, $vr1
	vpickve2gr.h	$a1, $vr3, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a2, $vr1, 0
	bstrins.d	$a2, $a1, 63, 1
	vpickve2gr.h	$a1, $vr3, 4
	bstrins.d	$a2, $a1, 2, 2
	vpickve2gr.h	$a1, $vr3, 6
	bstrins.d	$a2, $a1, 3, 3
	vslti.du	$vr1, $vr4, 16
	vslti.du	$vr2, $vr2, 16
	vpickev.w	$vr1, $vr2, $vr1
	vpickve2gr.h	$a1, $vr1, 0
	bstrins.d	$a2, $a1, 4, 4
	vpickve2gr.h	$a1, $vr1, 2
	bstrins.d	$a2, $a1, 5, 5
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a2, $a1
	vpickve2gr.h	$a2, $vr1, 6
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	andi	$a1, $a1, 255
	bnez	$a1, .LBB13_41
# %bb.64:                               # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t2, $t1
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB13_41
# %bb.65:                               # %vector.body.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a6, 8
	addi.d	$a4, $a7, 8
	addi.d	$a5, $t0, 8
	addi.d	$t3, $t1, 8
	addi.d	$t6, $t2, 8
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_66:                              # %vector.body
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $a4, 0
	vld	$vr1, $a5, 0
	vld	$vr2, $t3, 0
	vfmadd.d	$vr1, $vr2, $vr0, $vr1
	vst	$vr1, $t6, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$t3, $t3, 16
	addi.d	$t7, $t7, -2
	addi.d	$t6, $t6, 16
	bnez	$t7, .LBB13_66
# %bb.67:                               # %middle.block
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$s8, $a1, .LBB13_3
	b	.LBB13_41
.LBB13_68:                              # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end13:
	.size	_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE, .Lfunc_end13-_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE
	.type	_ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE,@function
_ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE: # @_ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 27
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	fld.d	$fs0, $s0, 384
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB14_14
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB14_14
# %bb.2:                                # %.lr.ph61
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.w	$a4, $a0, 1
	ori	$a1, $zero, 2
	blt	$a4, $a1, .LBB14_9
# %bb.3:                                # %.lr.ph.us.us.preheader
	bstrpick.d	$a0, $a0, 30, 0
	slli.d	$a1, $a0, 3
	addi.d	$a3, $a1, -8
	add.d	$a1, $s2, $a3
	add.d	$a2, $s3, $a3
	add.d	$a3, $s1, $a3
	addi.d	$a4, $a4, -1
	.p2align	4, , 16
.LBB14_4:                               # %.lr.ph.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_5 Depth 2
                                        #     Child Loop BB14_7 Depth 2
	move	$a5, $a0
	move	$a6, $s1
	move	$a7, $s3
	move	$t0, $s2
	.p2align	4, , 16
.LBB14_5:                               #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmadd.d	$fa0, $fs0, $fa1, $fa0
	fst.d	$fa0, $a6, 0
	fsub.d	$fs0, $fa0, $fs0
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB14_5
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=1
	move	$a5, $a4
	move	$a6, $a3
	move	$a7, $a2
	move	$t0, $a1
	.p2align	4, , 16
.LBB14_7:                               # %"._Z6forallIZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us"
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmadd.d	$fa0, $fs0, $fa1, $fa0
	fst.d	$fa0, $a6, 0
	fsub.d	$fs0, $fa0, $fs0
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -8
	bnez	$a5, .LBB14_7
# %bb.8:                                # %"._Z6forallIZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us.us"
                                        #   in Loop: Header=BB14_4 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB14_4
	b	.LBB14_14
.LBB14_9:                               # %.lr.ph61.split
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB14_14
# %bb.10:                               # %.lr.ph.us69.preheader
	bstrpick.d	$a0, $a0, 30, 0
	.p2align	4, , 16
.LBB14_11:                              # %.lr.ph.us69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_12 Depth 2
	move	$a1, $a0
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s2
	.p2align	4, , 16
.LBB14_12:                              #   Parent Loop BB14_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a4, 0
	fld.d	$fa1, $a3, 0
	fmadd.d	$fa0, $fs0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	fsub.d	$fs0, $fa0, $fs0
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB14_12
# %bb.13:                               # %"._Z6forallIZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us70"
                                        #   in Loop: Header=BB14_11 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB14_11
.LBB14_14:                              # %._crit_edge
	move	$a0, $fp
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end14:
	.size	_ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE, .Lfunc_end14-_ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE
.LCPI15_0:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
	.text
	.p2align	5
	.type	_ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE,@function
_ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE: # @_ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 28
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$s5, $s0, 40
	ld.d	$s6, $s0, 48
	ld.d	$s7, $s0, 56
	ld.d	$s8, $s0, 64
	ld.d	$fp, $s0, 80
	fld.d	$fs0, $s0, 384
	fld.d	$fs1, $s0, 392
	fld.d	$fs2, $s0, 400
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bnez	$a1, .LBB15_10
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB15_10
# %bb.2:                                # %.lr.ph55
	ld.d	$a1, $a0, 32
	ld.d	$a2, $a1, 0
	addi.w	$a1, $a2, 0
	blez	$a1, .LBB15_10
# %bb.3:                                # %.lr.ph.us.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI15_0)
	bstrpick.d	$t4, $a2, 30, 0
	addi.d	$a1, $s8, 8
	movgr2fr.d	$fa1, $zero
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_4:                               # %"._Z6forallIZL18BM_DISC_ORD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB15_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB15_10
.LBB15_5:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
	fld.d	$fa2, $s8, 0
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s5
	move	$a6, $s6
	move	$a7, $s3
	move	$t0, $a1
	move	$t1, $t4
	move	$t2, $s7
	move	$t3, $s2
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_6:                               # %"_ZZL18BM_DISC_ORD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"
                                        #   in Loop: Header=BB15_7 Depth=2
	fld.d	$fa4, $a6, 0
	fld.d	$fa5, $a5, 0
	fld.d	$fa6, $a4, 0
	fld.d	$fa7, $a3, 0
	fmadd.d	$fa4, $fa5, $fa3, $fa4
	fmadd.d	$fa2, $fa4, $fa2, $fa6
	fmadd.d	$fa4, $fa5, $fa3, $fa7
	fdiv.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $a2, 0
	fld.d	$fa4, $t0, -8
	fsub.d	$fa2, $fa2, $fa4
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	fst.d	$fa2, $t0, 0
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	beqz	$t1, .LBB15_4
.LBB15_7:                               #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t2, 0
	fld.d	$fa4, $t3, 0
	fadd.d	$fa5, $fs2, $fa2
	fdiv.d	$fa3, $fa3, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fcmp.ceq.d	$fcc0, $fa4, $fa1
	fmov.d	$fa3, $fa0
	bcnez	$fcc0, .LBB15_6
# %bb.8:                                #   in Loop: Header=BB15_7 Depth=2
	fld.d	$fa3, $a7, 0
	fdiv.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fs1, $fa3
	fsel	$fa3, $fa3, $fs1, $fcc0
	fcmp.cule.d	$fcc0, $fs0, $fa3
	bcnez	$fcc0, .LBB15_6
# %bb.9:                                #   in Loop: Header=BB15_7 Depth=2
	fmov.d	$fa3, $fs0
	b	.LBB15_6
.LBB15_10:                              # %._crit_edge
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end15:
	.size	_ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE, .Lfunc_end15-_ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE
	.type	_ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE,@function
_ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE: # @_ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 29
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	ld.d	$s2, $s0, 240
	ld.d	$s0, $s0, 352
	ld.w	$s4, $fp, 28
	ld.d	$s3, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB16_11
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s3, .LBB16_11
# %bb.2:                                # %.preheader33.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB16_11
# %bb.3:                                # %.preheader33.us.preheader
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 25
	.p2align	4, , 16
.LBB16_4:                               # %.preheader33.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
                                        #       Child Loop BB16_6 Depth 3
                                        #         Child Loop BB16_7 Depth 4
	move	$a2, $zero
	.p2align	4, , 16
.LBB16_5:                               # %.preheader.us.us
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_6 Depth 3
                                        #         Child Loop BB16_7 Depth 4
	slli.d	$a3, $a2, 3
	ldx.d	$a4, $s0, $a3
	move	$a5, $zero
	.p2align	4, , 16
.LBB16_6:                               # %.lr.ph.us.us.us
                                        #   Parent Loop BB16_4 Depth=1
                                        #     Parent Loop BB16_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_7 Depth 4
	alsl.d	$a6, $a5, $a4, 3
	slli.d	$a7, $a5, 3
	move	$t0, $a0
	move	$t1, $s1
	move	$t2, $s2
	.p2align	4, , 16
.LBB16_7:                               #   Parent Loop BB16_4 Depth=1
                                        #     Parent Loop BB16_5 Depth=2
                                        #       Parent Loop BB16_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t3, $t2, 0
	ld.d	$t4, $t1, 0
	fld.d	$fa0, $a6, 0
	fldx.d	$fa1, $t3, $a3
	fldx.d	$fa2, $t4, $a7
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $t4, $a7
	addi.d	$t2, $t2, 8
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 8
	bnez	$t0, .LBB16_7
# %bb.8:                                # %"._Z6forallIZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.us"
                                        #   in Loop: Header=BB16_6 Depth=3
	addi.d	$a5, $a5, 1
	bne	$a5, $a1, .LBB16_6
# %bb.9:                                # %.split.us.us.us
                                        #   in Loop: Header=BB16_5 Depth=2
	addi.d	$a2, $a2, 1
	bne	$a2, $a1, .LBB16_5
# %bb.10:                               # %.split38.us.us
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB16_4
.LBB16_11:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end16:
	.size	_ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE, .Lfunc_end16-_ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE
.LCPI17_0:
	.dword	0x4033cccccccccccd              # double 19.800000000000001
	.text
	.p2align	5
	.type	_ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE,@function
_ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE: # @_ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 56, -96
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 30
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	ld.d	$a1, $s0, 32
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a1, 3
	fld.d	$fa0, $a1, -8
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI17_0)
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s0, 16
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s0, $s0, 40
	fmul.d	$fa0, $fa0, $fa1
	move	$s1, $a1
	alsl.d	$a0, $a0, $a1, 3
	fst.d	$fa0, $a0, -8
	ld.w	$fp, $s2, 28
	ld.d	$s5, $s2, 16
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB17_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s5, .LBB17_7
# %bb.2:                                # %.lr.ph40
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB17_7
# %bb.3:                                # %.lr.ph.us.preheader
	bstrpick.d	$s6, $a0, 30, 0
	.p2align	4, , 16
.LBB17_4:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	move	$s7, $s6
	move	$s8, $s0
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	move	$s3, $s1
	.p2align	4, , 16
.LBB17_5:                               #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $fp, 0
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 0
	fld.d	$fs0, $s2, 0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s8, 0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, 8
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB17_5
# %bb.6:                                # %"._Z6forallIZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$s5, $s5, -1
	bnez	$s5, .LBB17_4
.LBB17_7:                               # %._crit_edge
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end17:
	.size	_ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE, .Lfunc_end17-_ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE
.LCPI18_0:
	.dword	0x3fc6666666666666              # double 0.17499999999999999
	.text
	.p2align	5
	.type	_ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE,@function
_ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE: # @_ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
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
	move	$s6, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 31
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 264
	ld.d	$s1, $s0, 272
	ld.d	$s5, $s0, 280
	ld.d	$s4, $s0, 288
	ld.d	$s2, $s0, 296
	ld.d	$fp, $s0, 304
	ld.w	$s0, $s6, 28
	ld.d	$a0, $s6, 16
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB18_15
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB18_15
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	ld.d	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB18_15
# %bb.3:                                # %.preheader.us.preheader
	ld.d	$a6, $s3, 16
	ld.d	$s7, $s5, 8
	ld.d	$a2, $s3, 0
	ld.d	$t6, $s1, 8
	ld.d	$a5, $s3, 8
	ld.d	$t7, $s4, 8
	ld.d	$s0, $s2, 8
	bstrpick.d	$s6, $a0, 30, 0
	ld.d	$a4, $s3, 24
	ld.d	$a0, $s5, 16
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$ra, $s1, 16
	ld.d	$t0, $s4, 16
	ld.d	$t1, $s2, 16
	ld.d	$a3, $s3, 32
	ld.d	$a0, $s5, 24
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 24
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$t4, $s4, 24
	ld.d	$t5, $s2, 24
	ld.d	$a7, $s3, 40
	ld.d	$a0, $s5, 32
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t8, $s4, 32
	ld.d	$a0, $s3, 48
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 40
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 40
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t2, $s4, 40
	ld.d	$s8, $s2, 32
	ld.d	$t3, $s2, 40
	ld.d	$s1, $fp, 8
	ld.d	$s2, $fp, 16
	ld.d	$s3, $fp, 24
	ld.d	$a0, $fp, 32
	ld.d	$a1, $fp, 40
	addi.d	$fp, $s7, 8
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 8
	addi.d	$a2, $s0, 8
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a2, $s1, 8
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a2, $s6, -1
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a2, $s2, 8
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a2, $t1, 8
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a2, $t0, 8
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $ra, 8
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s1, $s3, 8
	addi.d	$s2, $t5, 8
	addi.d	$s3, $t4, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s4, $a2, 8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s5, $a2, 8
	addi.d	$s6, $a0, 8
	addi.d	$s7, $s8, 8
	addi.d	$s8, $t8, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$ra, $a0, 8
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 8
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $t3, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $t2, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a6, 8
	addi.d	$a2, $a4, 8
	addi.d	$t0, $a3, 8
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	addi.d	$t8, $a7, 8
	addi.d	$a0, $a5, 16
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	addi.d	$t3, $a6, 16
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	addi.d	$s0, $a5, 8
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a5, $a4, 16
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a6, $a3, 16
	st.d	$t6, $sp, 136                   # 8-byte Folded Spill
	st.d	$t7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB18_4:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_5 Depth 2
                                        #     Child Loop BB18_7 Depth 2
                                        #     Child Loop BB18_9 Depth 2
                                        #     Child Loop BB18_11 Depth 2
                                        #     Child Loop BB18_13 Depth 2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	fld.d	$fa1, $a3, 0
	move	$a3, $zero
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_5:                               #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $a1, $a3
	fldx.d	$fa2, $t4, $a3
	fldx.d	$fa3, $t6, $a3
	fldx.d	$fa4, $t2, $a3
	fldx.d	$fa5, $a0, $a3
	fldx.d	$fa6, $t7, $a3
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa4, $fa2
	add.d	$a7, $a0, $a3
	fmadd.d	$fa2, $fa5, $fa6, $fa0
	fldx.d	$fa3, $t5, $a3
	fldx.d	$fa4, $s1, $a3
	fld.d	$fa5, $a7, -8
	pcalau12i	$t1, %pc_hi20(.LCPI18_0)
	fld.d	$fa0, $t1, %pc_lo12(.LCPI18_0)
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fadd.d	$fa1, $fa1, $fa4
	fsub.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fa1, $fa0, $fa5
	fst.d	$fa1, $a7, -8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB18_5
# %bb.6:                                # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.preheader"
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	fld.d	$fa1, $a3, 0
	move	$a3, $zero
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_7:                               # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us"
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $a2, $a3
	fldx.d	$fa3, $s0, $a3
	fldx.d	$fa4, $t5, $a3
	fldx.d	$fa5, $s1, $a3
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa2, $fa2, $fa5, $fa3
	add.d	$a7, $t3, $a3
	fldx.d	$fa3, $t3, $a3
	fldx.d	$fa4, $t4, $a3
	fldx.d	$fa5, $t2, $a3
	fldx.d	$fa6, $t1, $a3
	fld.d	$fa7, $a7, -8
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	fadd.d	$fa1, $fa1, $fa6
	fsub.d	$fa1, $fa1, $fa7
	fmadd.d	$fa1, $fa1, $fa0, $fa7
	fst.d	$fa1, $a7, -8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB18_7
# %bb.8:                                # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.1.preheader"
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa1, $a3, 0
	move	$a3, $zero
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_9:                               # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.1"
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $t0, $a3
	fldx.d	$fa3, $a1, $a3
	fldx.d	$fa4, $s4, $a3
	fldx.d	$fa5, $s5, $a3
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa2, $fa2, $fa5, $fa3
	add.d	$a7, $a5, $a3
	fldx.d	$fa3, $a5, $a3
	fldx.d	$fa4, $s3, $a3
	fldx.d	$fa5, $s2, $a3
	fldx.d	$fa6, $s1, $a3
	fld.d	$fa7, $a7, -8
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	fadd.d	$fa1, $fa1, $fa6
	fsub.d	$fa1, $fa1, $fa7
	fmadd.d	$fa1, $fa1, $fa0, $fa7
	fst.d	$fa1, $a7, -8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB18_9
# %bb.10:                               # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.2.preheader"
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	fld.d	$fa1, $a3, 0
	move	$a3, $zero
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_11:                              # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.2"
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $t8, $a3
	fldx.d	$fa3, $a2, $a3
	fldx.d	$fa4, $ra, $a3
	fldx.d	$fa5, $fp, $a3
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa2, $fa2, $fa5, $fa3
	add.d	$a7, $a6, $a3
	fldx.d	$fa3, $a6, $a3
	fldx.d	$fa4, $s8, $a3
	fldx.d	$fa5, $s7, $a3
	fldx.d	$fa6, $s6, $a3
	fld.d	$fa7, $a7, -8
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	fadd.d	$fa1, $fa1, $fa6
	fsub.d	$fa1, $fa1, $fa7
	fmadd.d	$fa1, $fa1, $fa0, $fa7
	fst.d	$fa1, $a7, -8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB18_11
# %bb.12:                               # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.3.preheader"
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fld.d	$fa1, $a3, 0
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $t0
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	move	$a4, $t8
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_13:                              # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.3"
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t2, 0
	fld.d	$fa3, $a3, 0
	fld.d	$fa4, $t1, 0
	fld.d	$fa5, $a7, 0
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa2, $fa2, $fa5, $fa3
	fld.d	$fa3, $a4, 8
	fld.d	$fa4, $t4, 0
	fld.d	$fa5, $t5, 0
	fld.d	$fa6, $t6, 0
	fld.d	$fa7, $a4, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	fadd.d	$fa1, $fa1, $fa6
	fsub.d	$fa1, $fa1, $fa7
	fmadd.d	$fa1, $fa1, $fa0, $fa7
	fst.d	$fa1, $a4, 0
	addi.d	$a4, $a4, 8
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a7, $a7, 8
	bnez	$t7, .LBB18_13
# %bb.14:                               # %"._Z6forallIZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.us.4"
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a3, $a3, -1
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	bnez	$a3, .LBB18_4
.LBB18_15:                              # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end18:
	.size	_ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE, .Lfunc_end18-_ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE
	.type	_ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE,@function
_ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE: # @_ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	ld.w	$s2, $fp, 28
	ld.d	$s1, $fp, 16
	st.w	$zero, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB19_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB19_9
# %bb.2:                                # %.lr.ph27
	addi.d	$a0, $s0, 8
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 4
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_3:                               # %"_Z6forallIZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
                                        #   in Loop: Header=BB19_4 Depth=1
	addi.d	$s1, $s1, -1
	beqz	$s1, .LBB19_9
.LBB19_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_7 Depth 2
	ld.d	$a3, $fp, 32
	ld.d	$a3, $a3, 0
	addi.w	$a4, $a3, 0
	st.w	$zero, $sp, 4
	blt	$a4, $a1, .LBB19_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB19_4 Depth=1
	bstrpick.d	$a3, $a3, 30, 0
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 1
	move	$a5, $a0
	b	.LBB19_7
	.p2align	4, , 16
.LBB19_6:                               # %"_ZZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
                                        #   in Loop: Header=BB19_7 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	beqz	$a3, .LBB19_3
.LBB19_7:                               # %.lr.ph
                                        #   Parent Loop BB19_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $sp, 4
	fld.d	$fa0, $a5, 0
	slli.d	$a6, $a6, 3
	fldx.d	$fa1, $s0, $a6
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_6
# %bb.8:                                #   in Loop: Header=BB19_7 Depth=2
	st.w	$a4, $sp, 4
	#APP
	#NO_APP
	b	.LBB19_6
.LBB19_9:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	_ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE, .Lfunc_end19-_ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx
	.type	_GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx,@function
_GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx: # @_GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s3, $sp, 24
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 40
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s4, $a0, 16
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp5:                                 # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.3:
.Ltmp7:                                 # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.4:
.Ltmp9:                                 # EH_LABEL
	lu12i.w	$a1, 1
	ori	$s0, $a1, 905
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.5:
.Ltmp11:                                # EH_LABEL
	lu12i.w	$a1, 10
	ori	$s1, $a1, 3257
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.6:
.Ltmp13:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.7:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_9:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 30
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 38
	ori	$s5, $zero, 1
.Ltmp16:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.10:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL14BM_ICCG_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL14BM_ICCG_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp18:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.11:
.Ltmp20:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.12:
.Ltmp22:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.13:
.Ltmp24:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.14:
.Ltmp26:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.15:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_17:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 40
.Ltmp29:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.18:                               # %.noexc.i9
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp32:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.19:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp34:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.20:
.Ltmp36:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.21:
.Ltmp38:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.22:
.Ltmp40:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.23:
.Ltmp42:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.24:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_26:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 40
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.27:                               # %.noexc.i18
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp48:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.28:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp50:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.29:
.Ltmp52:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.30:
.Ltmp54:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.31:
.Ltmp56:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.32:
.Ltmp58:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.33:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_35:                              # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 40
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.36:                               # %.noexc.i27
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp64:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.37:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp66:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.38:
.Ltmp68:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.39:
.Ltmp70:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.40:
.Ltmp72:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.41:
.Ltmp74:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.42:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_44
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_44:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s5, $zero, 1
.Ltmp77:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.45:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_EOS_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL13BM_EOS_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp79:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.46:
.Ltmp81:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.47:
.Ltmp83:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.48:
.Ltmp85:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.49:
.Ltmp87:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.50:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_52:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s5, $zero, 1
.Ltmp90:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.53:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_ADI_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL13BM_ADI_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp92:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.54:
.Ltmp94:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.55:
.Ltmp96:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.56:
.Ltmp98:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.57:
.Ltmp100:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.58:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_60
# %bb.59:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_60:                              # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 40
.Ltmp103:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.61:                               # %.noexc.i46
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp106:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.62:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp108:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.63:
.Ltmp110:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.64:
.Ltmp112:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.65:
.Ltmp114:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.66:
.Ltmp116:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.67:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_69
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_69:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 40
.Ltmp119:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.70:                               # %.noexc.i55
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp122:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.71:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp124:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.72:
.Ltmp126:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.73:
.Ltmp128:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.74:
.Ltmp130:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.75:
.Ltmp132:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.76:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_78
# %bb.77:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_78:                              # %__cxx_global_var_init.16.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_10_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 40
.Ltmp135:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.79:                               # %.noexc.i64
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp138:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.80:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp140:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.81:
.Ltmp142:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.82:
.Ltmp144:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.83:
.Ltmp146:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.84:
.Ltmp148:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.85:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_87
# %bb.86:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_87:                              # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_11_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_11_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 40
.Ltmp151:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.88:                               # %.noexc.i73
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp154:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.89:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp156:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.90:
.Ltmp158:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.91:
.Ltmp160:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.92:
.Ltmp162:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.93:
.Ltmp164:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.94:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_96
# %bb.95:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_96:                              # %__cxx_global_var_init.20.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_12_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_12_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 40
.Ltmp167:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.97:                               # %.noexc.i82
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	vld	$vr0, $a2, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp170:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.98:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp172:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.99:
.Ltmp174:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.100:
.Ltmp176:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.101:
.Ltmp178:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.102:
.Ltmp180:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.103:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_105
# %bb.104:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_105:                             # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_13_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_13_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 40
.Ltmp183:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.106:                              # %.noexc.i91
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.25)
	vld	$vr0, $a2, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp186:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.107:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp188:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.108:
.Ltmp190:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.109:
.Ltmp192:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.110:
.Ltmp194:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.111:
.Ltmp196:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.112:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_114
# %bb.113:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_114:                             # %__cxx_global_var_init.24.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_14_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_14_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 40
.Ltmp199:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
# %bb.115:                              # %.noexc.i100
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp202:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.116:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp204:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.117:
.Ltmp206:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.118:
.Ltmp208:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.119:
.Ltmp210:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.120:
.Ltmp212:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.121:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_123
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_123:                             # %__cxx_global_var_init.26.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_15_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_15_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 40
.Ltmp215:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.124:                              # %.noexc.i109
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a2, $a2, %pc_lo12(.L.str.29)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp218:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.125:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp220:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.126:
.Ltmp222:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.127:
.Ltmp224:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.128:
.Ltmp226:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.129:
.Ltmp228:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.130:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_132
# %bb.131:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_132:                             # %__cxx_global_var_init.28.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_16_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_16_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 40
.Ltmp231:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.133:                              # %.noexc.i118
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a2, $a2, %pc_lo12(.L.str.31)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp234:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.134:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp236:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
# %bb.135:
.Ltmp238:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp239:                               # EH_LABEL
# %bb.136:
.Ltmp240:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.137:
.Ltmp242:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.138:
.Ltmp244:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.139:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_141
# %bb.140:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_141:                             # %__cxx_global_var_init.30.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_17_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_17_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 40
.Ltmp247:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.142:                              # %.noexc.i127
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp250:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.143:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp252:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.144:
.Ltmp254:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
# %bb.145:
.Ltmp256:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.146:
.Ltmp258:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.147:
.Ltmp260:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp261:                               # EH_LABEL
# %bb.148:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_150
# %bb.149:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_150:                             # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_18_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_18_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 40
.Ltmp263:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.151:                              # %.noexc.i136
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp266:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.152:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp268:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.153:
.Ltmp270:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.154:
.Ltmp272:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.155:
.Ltmp274:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.156:
.Ltmp276:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.157:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_159
# %bb.158:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_159:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_19_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_19_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 40
.Ltmp279:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.160:                              # %.noexc.i145
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp282:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.161:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp284:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.162:
.Ltmp286:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.163:
.Ltmp288:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.164:
.Ltmp290:                               # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.165:
.Ltmp292:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.166:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_168
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_168:                             # %__cxx_global_var_init.36.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_20_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_20_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 40
.Ltmp295:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.169:                              # %.noexc.i154
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s2, $zero, 1
.Ltmp298:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.170:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp300:                               # EH_LABEL
	move	$s2, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.171:
.Ltmp302:                               # EH_LABEL
	ori	$a1, $zero, 171
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.172:
.Ltmp304:                               # EH_LABEL
	move	$s2, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.173:
.Ltmp306:                               # EH_LABEL
	move	$s2, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.174:
.Ltmp308:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.175:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_177
# %bb.176:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_177:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_21_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_21_benchmark_)
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB20_178:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i151
.Ltmp297:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_179:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i142
.Ltmp281:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_180:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i133
.Ltmp265:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_181:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i124
.Ltmp249:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_182:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i115
.Ltmp233:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_183:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i106
.Ltmp217:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_184:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i97
.Ltmp201:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_185:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i88
.Ltmp185:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_186:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i79
.Ltmp169:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_187:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i70
.Ltmp153:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_188:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i61
.Ltmp137:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_189:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i52
.Ltmp121:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_190:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i43
.Ltmp105:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_191:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i24
.Ltmp63:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_192:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i15
.Ltmp47:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_193:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i6
.Ltmp31:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_194:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB20_217
.LBB20_195:
.Ltmp310:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_197
# %bb.196:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i157
	bnez	$s2, .LBB20_217
	b	.LBB20_218
.LBB20_197:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i156
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB20_217
	b	.LBB20_218
.LBB20_198:
.Ltmp294:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_199:
.Ltmp278:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_200:
.Ltmp262:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_201:
.Ltmp246:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_202:
.Ltmp230:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_203:
.Ltmp214:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_204:
.Ltmp198:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_205:
.Ltmp182:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_206:
.Ltmp166:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_207:
.Ltmp150:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_208:
.Ltmp134:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_209:
.Ltmp118:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_210:
.Ltmp102:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_211:
.Ltmp89:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_212:
.Ltmp76:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_213:
.Ltmp60:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_214:
.Ltmp44:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
	b	.LBB20_220
.LBB20_215:
.Ltmp28:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	beq	$a1, $s3, .LBB20_220
.LBB20_216:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB20_218
.LBB20_217:                             # %common.resume.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_218:                             # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_219:
.Ltmp15:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_216
.LBB20_220:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s5, .LBB20_218
	b	.LBB20_217
.Lfunc_end20:
	.size	_GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx, .Lfunc_end20-_GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp14-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp27-.Ltmp16                #   Call between .Ltmp16 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp29-.Ltmp27                #   Call between .Ltmp27 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp43-.Ltmp32                #   Call between .Ltmp32 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp45-.Ltmp43                #   Call between .Ltmp43 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp59-.Ltmp48                #   Call between .Ltmp48 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp61-.Ltmp59                #   Call between .Ltmp59 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp75-.Ltmp64                #   Call between .Ltmp64 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp77-.Ltmp75                #   Call between .Ltmp75 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp88-.Ltmp77                #   Call between .Ltmp77 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin0          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp90-.Ltmp88                #   Call between .Ltmp88 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp101-.Ltmp90               #   Call between .Ltmp90 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin0         # >> Call Site 19 <<
	.uleb128 .Ltmp103-.Ltmp101              #   Call between .Ltmp101 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 20 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin0         # >> Call Site 21 <<
	.uleb128 .Ltmp117-.Ltmp106              #   Call between .Ltmp106 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Ltmp119-.Ltmp117              #   Call between .Ltmp117 and .Ltmp119
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin0         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp133-.Ltmp122              #   Call between .Ltmp122 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin0         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp135-.Ltmp133              #   Call between .Ltmp133 and .Ltmp135
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin0         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp149-.Ltmp138              #   Call between .Ltmp138 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin0         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp151-.Ltmp149              #   Call between .Ltmp149 and .Ltmp151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin0         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp165-.Ltmp154              #   Call between .Ltmp154 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin0         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp167-.Ltmp165              #   Call between .Ltmp165 and .Ltmp167
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin0         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp181-.Ltmp170              #   Call between .Ltmp170 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin0         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp183-.Ltmp181              #   Call between .Ltmp181 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin0         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp197-.Ltmp186              #   Call between .Ltmp186 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin0         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp199-.Ltmp197              #   Call between .Ltmp197 and .Ltmp199
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp213-.Ltmp202              #   Call between .Ltmp202 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin0         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp215-.Ltmp213              #   Call between .Ltmp213 and .Ltmp215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin0         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp229-.Ltmp218              #   Call between .Ltmp218 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp231-.Ltmp229              #   Call between .Ltmp229 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin0         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp245-.Ltmp234              #   Call between .Ltmp234 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin0         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp247-.Ltmp245              #   Call between .Ltmp245 and .Ltmp247
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin0         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp261-.Ltmp250              #   Call between .Ltmp250 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin0         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp263-.Ltmp261              #   Call between .Ltmp261 and .Ltmp263
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin0         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp277-.Ltmp266              #   Call between .Ltmp266 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin0         #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp279-.Ltmp277              #   Call between .Ltmp277 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin0         #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp293-.Ltmp282              #   Call between .Ltmp282 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin0         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp295-.Ltmp293              #   Call between .Ltmp293 and .Ltmp295
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin0         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp309-.Ltmp298              #   Call between .Ltmp298 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin0         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Lfunc_end20-.Ltmp309          #   Call between .Ltmp309 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_HYDRO_1D_LAMBDA"
	.size	.L.str, 19

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_ICCG_LAMBDA"
	.size	.L.str.3, 15

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_INNER_PROD_LAMBDA"
	.size	.L.str.5, 21

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BM_BAND_LIN_EQ_LAMBDA"
	.size	.L.str.7, 22

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BM_TRIDIAG_ELIM_LAMBDA"
	.size	.L.str.9, 23

	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"BM_EOS_LAMBDA"
	.size	.L.str.11, 14

	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"BM_ADI_LAMBDA"
	.size	.L.str.13, 14

	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"BM_INT_PREDICT_LAMBDA"
	.size	.L.str.15, 22

	.type	_ZL28benchmark_uniq_10_benchmark_,@object # @_ZL28benchmark_uniq_10_benchmark_
	.local	_ZL28benchmark_uniq_10_benchmark_
	.comm	_ZL28benchmark_uniq_10_benchmark_,8,8
	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"BM_DIFF_PREDICT_LAMBDA"
	.size	.L.str.17, 23

	.type	_ZL28benchmark_uniq_11_benchmark_,@object # @_ZL28benchmark_uniq_11_benchmark_
	.local	_ZL28benchmark_uniq_11_benchmark_
	.comm	_ZL28benchmark_uniq_11_benchmark_,8,8
	.type	.L.str.19,@object               # @.str.19
	.p2align	3, 0x0
.L.str.19:
	.asciz	"BM_FIRST_SUM_LAMBDA"
	.size	.L.str.19, 20

	.type	_ZL28benchmark_uniq_12_benchmark_,@object # @_ZL28benchmark_uniq_12_benchmark_
	.local	_ZL28benchmark_uniq_12_benchmark_
	.comm	_ZL28benchmark_uniq_12_benchmark_,8,8
	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"BM_FIRST_DIFF_LAMBDA"
	.size	.L.str.21, 21

	.type	_ZL28benchmark_uniq_13_benchmark_,@object # @_ZL28benchmark_uniq_13_benchmark_
	.local	_ZL28benchmark_uniq_13_benchmark_
	.comm	_ZL28benchmark_uniq_13_benchmark_,8,8
	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"BM_PIC_2D_LAMBDA"
	.size	.L.str.23, 17

	.type	_ZL28benchmark_uniq_14_benchmark_,@object # @_ZL28benchmark_uniq_14_benchmark_
	.local	_ZL28benchmark_uniq_14_benchmark_
	.comm	_ZL28benchmark_uniq_14_benchmark_,8,8
	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"BM_PIC_1D_LAMBDA"
	.size	.L.str.25, 17

	.type	_ZL28benchmark_uniq_15_benchmark_,@object # @_ZL28benchmark_uniq_15_benchmark_
	.local	_ZL28benchmark_uniq_15_benchmark_
	.comm	_ZL28benchmark_uniq_15_benchmark_,8,8
	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"BM_HYDRO_2D_LAMBDA"
	.size	.L.str.27, 19

	.type	_ZL28benchmark_uniq_16_benchmark_,@object # @_ZL28benchmark_uniq_16_benchmark_
	.local	_ZL28benchmark_uniq_16_benchmark_
	.comm	_ZL28benchmark_uniq_16_benchmark_,8,8
	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"BM_GEN_LIN_RECUR_LAMBDA"
	.size	.L.str.29, 24

	.type	_ZL28benchmark_uniq_17_benchmark_,@object # @_ZL28benchmark_uniq_17_benchmark_
	.local	_ZL28benchmark_uniq_17_benchmark_
	.comm	_ZL28benchmark_uniq_17_benchmark_,8,8
	.type	.L.str.31,@object               # @.str.31
	.p2align	3, 0x0
.L.str.31:
	.asciz	"BM_DISC_ORD_LAMBDA"
	.size	.L.str.31, 19

	.type	_ZL28benchmark_uniq_18_benchmark_,@object # @_ZL28benchmark_uniq_18_benchmark_
	.local	_ZL28benchmark_uniq_18_benchmark_
	.comm	_ZL28benchmark_uniq_18_benchmark_,8,8
	.type	.L.str.33,@object               # @.str.33
	.p2align	3, 0x0
.L.str.33:
	.asciz	"BM_MAT_X_MAT_LAMBDA"
	.size	.L.str.33, 20

	.type	_ZL28benchmark_uniq_19_benchmark_,@object # @_ZL28benchmark_uniq_19_benchmark_
	.local	_ZL28benchmark_uniq_19_benchmark_
	.comm	_ZL28benchmark_uniq_19_benchmark_,8,8
	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"BM_PLANCKIAN_LAMBDA"
	.size	.L.str.35, 20

	.type	_ZL28benchmark_uniq_20_benchmark_,@object # @_ZL28benchmark_uniq_20_benchmark_
	.local	_ZL28benchmark_uniq_20_benchmark_
	.comm	_ZL28benchmark_uniq_20_benchmark_,8,8
	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"BM_IMP_HYDRO_2D_LAMBDA"
	.size	.L.str.37, 23

	.type	_ZL28benchmark_uniq_21_benchmark_,@object # @_ZL28benchmark_uniq_21_benchmark_
	.local	_ZL28benchmark_uniq_21_benchmark_
	.comm	_ZL28benchmark_uniq_21_benchmark_,8,8
	.type	.L.str.39,@object               # @.str.39
	.p2align	3, 0x0
.L.str.39:
	.asciz	"BM_FIND_FIRST_MIN_LAMBDA"
	.size	.L.str.39, 25

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZL18BM_HYDRO_1D_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL14BM_ICCG_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL20BM_INNER_PROD_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL21BM_BAND_LIN_EQ_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL13BM_EOS_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL13BM_ADI_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL19BM_FIRST_SUM_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL23BM_GEN_LIN_RECUR_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL18BM_DISC_ORD_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL19BM_MAT_X_MAT_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL19BM_PLANCKIAN_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL22BM_IMP_HYDRO_2D_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL24BM_FIND_FIRST_MIN_LAMBDARN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_LambdaSubsetCbenchmarks.cxx
	.addrsig_sym _Unwind_Resume
