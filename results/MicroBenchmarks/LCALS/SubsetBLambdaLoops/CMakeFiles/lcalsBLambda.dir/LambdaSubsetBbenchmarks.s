	.file	"LambdaSubsetBbenchmarks.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL15BM_INIT3_LAMBDARN9benchmark5StateE
	.type	_ZL15BM_INIT3_LAMBDARN9benchmark5StateE,@function
_ZL15BM_INIT3_LAMBDARN9benchmark5StateE: # @_ZL15BM_INIT3_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vld	$vr0, $s0, 32
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.w	$s2, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB0_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_12
# %bb.2:                                # %.lr.ph36
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 0
	addi.w	$a0, $a2, 0
	blez	$a0, .LBB0_12
# %bb.3:                                # %.lr.ph.us.preheader
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.d	$a0, $vr6, 1
	vld	$vr7, $sp, 16                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr7, 0
	vori.b	$vr1, $vr7, 0
	vinsgr2vr.d	$vr1, $s1, 0
	vori.b	$vr2, $vr0, 0
	vshuf4i.d	$vr2, $vr1, 9
	vshuf4i.d	$vr0, $vr1, 6
	vreplvei.d	$vr1, $vr1, 1
	vori.b	$vr3, $vr6, 0
	vshuf4i.d	$vr3, $vr0, 1
	vpackev.d	$vr4, $vr6, $vr7
	vreplvei.d	$vr5, $vr7, 1
	bstrpick.d	$a1, $a2, 30, 0
	vsub.d	$vr3, $vr2, $vr3
	vsub.d	$vr0, $vr0, $vr4
	vsub.d	$vr1, $vr1, $vr6
	vsub.d	$vr2, $vr2, $vr5
	sub.d	$a3, $s1, $a0
	vslti.du	$vr2, $vr2, 16
	vslti.du	$vr1, $vr1, 16
	vpickev.w	$vr1, $vr1, $vr2
	vpickve2gr.h	$a4, $vr1, 2
	andi	$a4, $a4, 1
	vpickve2gr.h	$a5, $vr2, 0
	bstrins.d	$a5, $a4, 63, 1
	vpickve2gr.h	$a4, $vr1, 4
	bstrins.d	$a5, $a4, 2, 2
	vpickve2gr.h	$a4, $vr1, 6
	bstrins.d	$a5, $a4, 3, 3
	vslti.du	$vr0, $vr0, 16
	vslti.du	$vr1, $vr3, 16
	vpickev.w	$vr0, $vr1, $vr0
	vpickve2gr.h	$a4, $vr0, 0
	bstrins.d	$a5, $a4, 4, 4
	vpickve2gr.h	$a4, $vr0, 2
	bstrins.d	$a5, $a4, 5, 5
	vpickve2gr.h	$a4, $vr0, 4
	andi	$a4, $a4, 1
	slli.d	$a4, $a4, 6
	or	$a4, $a5, $a4
	vpickve2gr.h	$a5, $vr0, 6
	slli.d	$a5, $a5, 7
	or	$a4, $a4, $a5
	andi	$a4, $a4, 255
	sltui	$a3, $a3, 16
	sltu	$a4, $zero, $a4
	or	$a6, $a4, $a3
	bstrpick.d	$a2, $a2, 30, 1
	slli.d	$a2, $a2, 1
	vpickve2gr.d	$a3, $vr7, 0
	vpickve2gr.d	$a4, $vr7, 1
	vpickve2gr.d	$a5, $vr6, 0
	sltui	$a7, $a1, 2
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB0_12
.LBB0_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	beqz	$a6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$t4, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $a5
	move	$t0, $a0
	move	$t1, $a4
	move	$t2, $a3
	move	$t3, $s1
	move	$t4, $a2
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a7, 0
	vld	$vr1, $t0, 0
	vbitrevi.d	$vr0, $vr0, 63
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $t1, 0
	vst	$vr0, $t2, 0
	vst	$vr0, $t3, 0
	addi.d	$t4, $t4, -2
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	bnez	$t4, .LBB0_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$t4, $a2
	beq	$a1, $a2, .LBB0_4
.LBB0_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t4, $a5, 3
	alsl.d	$t0, $t4, $a0, 3
	alsl.d	$t1, $t4, $a4, 3
	alsl.d	$t2, $t4, $a3, 3
	alsl.d	$t3, $t4, $s1, 3
	sub.d	$t4, $a1, $t4
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a7, 0
	fld.d	$fa1, $t0, 0
	fneg.d	$fa0, $fa0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t1, 0
	fst.d	$fa0, $t2, 0
	fst.d	$fa0, $t3, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB0_11
	b	.LBB0_4
.LBB0_12:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end0:
	.size	_ZL15BM_INIT3_LAMBDARN9benchmark5StateE, .Lfunc_end0-_ZL15BM_INIT3_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE
	.type	_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE,@function
_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE: # @_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 24
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vld	$vr0, $s0, 8
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$s0, $s0, 40
	ld.w	$s2, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB1_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB1_12
# %bb.2:                                # %.lr.ph36
	ld.d	$a0, $fp, 32
	ld.d	$a5, $a0, 0
	addi.w	$a0, $a5, 0
	blez	$a0, .LBB1_12
# %bb.3:                                # %.lr.ph.us.preheader
	vld	$vr14, $sp, 32                  # 16-byte Folded Reload
	vori.b	$vr0, $vr14, 0
	vld	$vr15, $sp, 16                  # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr15, 9
	vpackod.d	$vr1, $vr15, $vr14
	vori.b	$vr2, $vr14, 0
	vshuf4i.d	$vr2, $vr15, 3
	vori.b	$vr3, $vr14, 0
	vshuf4i.d	$vr3, $vr0, 1
	bstrpick.d	$a0, $a5, 30, 0
	vpickve2gr.d	$a1, $vr14, 0
	alsl.d	$a6, $a0, $a1, 3
	vpickve2gr.d	$a2, $vr14, 1
	alsl.d	$a7, $a0, $a2, 3
	vpickve2gr.d	$a3, $vr15, 0
	alsl.d	$t0, $a0, $a3, 3
	vpickve2gr.d	$a4, $vr15, 1
	alsl.d	$t1, $a0, $a4, 3
	alsl.d	$t2, $a0, $s0, 3
	vpackev.d	$vr4, $vr15, $vr14
	vori.b	$vr5, $vr14, 0
	vshuf4i.d	$vr5, $vr15, 6
	vreplgr2vr.d	$vr6, $s0
	vshuf4i.d	$vr14, $vr6, 12
	vshuf4i.d	$vr15, $vr6, 6
	vinsgr2vr.d	$vr6, $t1, 0
	vinsgr2vr.d	$vr7, $a7, 0
	vinsgr2vr.d	$vr6, $a6, 1
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.d	$vr8, $a6, 1
	vori.b	$vr9, $vr7, 0
	vinsgr2vr.d	$vr9, $t0, 1
	vinsgr2vr.d	$vr7, $t1, 1
	vinsgr2vr.d	$vr10, $t0, 0
	vinsgr2vr.d	$vr10, $a7, 1
	vinsgr2vr.d	$vr11, $t2, 0
	vinsgr2vr.d	$vr12, $a6, 0
	vinsgr2vr.d	$vr11, $t1, 1
	vori.b	$vr13, $vr12, 0
	vinsgr2vr.d	$vr13, $t2, 1
	vinsgr2vr.d	$vr12, $t0, 1
	vslt.du	$vr5, $vr5, $vr7
	vslt.du	$vr7, $vr15, $vr9
	vpickev.w	$vr5, $vr7, $vr5
	vslt.du	$vr4, $vr4, $vr8
	vslt.du	$vr6, $vr14, $vr6
	vpickev.w	$vr4, $vr6, $vr4
	vpickev.h	$vr4, $vr5, $vr4
	vslt.du	$vr3, $vr3, $vr12
	vslt.du	$vr2, $vr2, $vr13
	vpickev.w	$vr2, $vr2, $vr3
	vslt.du	$vr0, $vr0, $vr11
	vslt.du	$vr1, $vr1, $vr10
	vpickev.w	$vr0, $vr0, $vr1
	vpickev.h	$vr0, $vr0, $vr2
	vand.v	$vr0, $vr0, $vr4
	sltu	$a6, $a3, $t2
	sltu	$a7, $s0, $t0
	and	$a6, $a6, $a7
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a7, $vr0, 0
	sltu	$a7, $zero, $a7
	or	$a6, $a7, $a6
	bstrpick.d	$a5, $a5, 30, 1
	slli.d	$a5, $a5, 1
	sltui	$a7, $a0, 2
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s1, $s1, -1
	beqz	$s1, .LBB1_12
.LBB1_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_11 Depth 2
	beqz	$a6, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	move	$t4, $zero
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a7, $a4
	move	$t0, $s0
	move	$t1, $a1
	move	$t2, $a2
	move	$t3, $a3
	move	$t4, $a5
	.p2align	4, , 16
.LBB1_8:                                # %vector.body
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a7, 0
	vld	$vr1, $t0, 0
	vfmul.d	$vr2, $vr0, $vr1
	vst	$vr2, $t1, 0
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $t2, 0
	vfsub.d	$vr0, $vr0, $vr1
	vst	$vr0, $t3, 0
	addi.d	$t4, $t4, -2
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	bnez	$t4, .LBB1_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$t4, $a5
	beq	$a0, $a5, .LBB1_4
.LBB1_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$a7, $t4, $a4, 3
	alsl.d	$t0, $t4, $s0, 3
	alsl.d	$t1, $t4, $a1, 3
	alsl.d	$t2, $t4, $a2, 3
	alsl.d	$t3, $t4, $a3, 3
	sub.d	$t4, $a0, $t4
	.p2align	4, , 16
.LBB1_11:                               # %scalar.ph
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a7, 0
	fld.d	$fa1, $t0, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t1, 0
	fld.d	$fa0, $a7, 0
	fld.d	$fa1, $t0, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t2, 0
	fld.d	$fa0, $a7, 0
	fld.d	$fa1, $t0, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t3, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB1_11
	b	.LBB1_4
.LBB1_12:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end1:
	.size	_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE, .Lfunc_end1-_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE
	.type	_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE,@function
_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE: # @_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
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
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
	ld.d	$s3, $s0, 16
	ld.d	$s6, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$fp, $s0, 40
	ld.w	$s0, $s1, 28
	ld.d	$s5, $s1, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s0, .LBB2_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s5, .LBB2_12
# %bb.2:                                # %.lr.ph38
	ld.d	$a1, $a0, 32
	ld.d	$a2, $a1, 0
	addi.w	$a1, $a2, 0
	blez	$a1, .LBB2_12
# %bb.3:                                # %.lr.ph.us.preheader
	move	$a5, $s6
	move	$a4, $s3
	move	$a3, $s2
	bstrpick.d	$s6, $a2, 30, 0
	vldi	$vr3, -880
	movgr2fr.d	$fs0, $zero
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s5, $s5, -1
	beqz	$s5, .LBB2_12
.LBB2_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	move	$s7, $s6
	move	$s8, $s4
	move	$s0, $fp
	move	$s3, $a5
	move	$s2, $a3
	move	$s1, $a4
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_8 Depth=2
	st.d	$zero, $s0, 0
	fmov.d	$fa0, $fs0
.LBB2_7:                                # %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"
                                        #   in Loop: Header=BB2_8 Depth=2
	fst.d	$fa0, $s8, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, 8
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	beqz	$s7, .LBB2_4
.LBB2_8:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fs1, $s2, 0
	fld.d	$fa0, $s3, 0
	fld.d	$fs2, $s1, 0
	fmul.d	$fa1, $fs1, $fa3
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$fa1, $fs2, $fs2, $fa0
	fcmp.cult.d	$fcc0, $fa1, $fs0
	bcnez	$fcc0, .LBB2_6
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_11
.LBB2_10:                               # %.split
                                        #   in Loop: Header=BB2_8 Depth=2
	fsub.d	$fa1, $fa0, $fs2
	fadd.d	$fa2, $fs1, $fs1
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $s0, 0
	fld.d	$fa1, $s1, 0
	fld.d	$fa2, $s2, 0
	fneg.d	$fa1, $fa1
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa1, $fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB2_7
.LBB2_11:                               # %call.sqrt
                                        #   in Loop: Header=BB2_8 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -880
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_10
.LBB2_12:                               # %._crit_edge
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE, .Lfunc_end2-_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE
	.type	_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE,@function
_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE: # @_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $s0, 384
	fld.d	$fs0, $s0, 392
	ld.d	$a0, $s0, 152
	fld.d	$fs1, $s0, 400
	fld.d	$fs3, $s0, 408
	fld.d	$fs4, $s0, 416
	ld.w	$s1, $a0, 0
	ld.w	$s2, $fp, 28
	ld.d	$s0, $fp, 16
	st.d	$zero, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB3_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB3_7
# %bb.2:                                # %.lr.ph53
	addi.d	$a0, $s1, 1
	fsub.d	$fa0, $fs2, $fs0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fs3, $fs4
	fmul.d	$fa1, $fa1, $fa1
	fsub.d	$fa2, $fs0, $fs1
	fmadd.d	$fa2, $fa2, $fa2, $fa1
	frsqrt.d	$fa2, $fa2
	fsub.d	$fa3, $fs2, $fs1
	fmadd.d	$fa3, $fa3, $fa3, $fa1
	frsqrt.d	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	vldi	$vr3, -928
	fmul.d	$fa2, $fa2, $fa3
	movgr2fr.d	$fa3, $zero
	vldi	$vr4, -912
	addi.d	$a0, $sp, 8
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
                                        #   in Loop: Header=BB3_4 Depth=1
	fmul.d	$fa5, $fa0, $fa2
	fst.d	$fa5, $sp, 8
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB3_7
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	ld.d	$a1, $fp, 32
	ld.w	$a1, $a1, 0
	blez	$a1, .LBB3_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	fmov.d	$fa5, $fa3
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmadd.d	$fa6, $fa5, $fa0, $fs0
	fsub.d	$fa6, $fa6, $fs1
	fmadd.d	$fa6, $fa6, $fa6, $fa1
	frsqrt.d	$fa6, $fa6
	fadd.d	$fa2, $fa2, $fa6
	addi.w	$a1, $a1, -1
	fadd.d	$fa5, $fa5, $fa4
	bnez	$a1, .LBB3_6
	b	.LBB3_3
.LBB3_7:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE, .Lfunc_end3-_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx
	.type	_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx,@function
_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx: # @_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx
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
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 7
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s5, $zero, 1
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s4, $a0, 16
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL15BM_INIT3_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL15BM_INIT3_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp2:                                 # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:
.Ltmp4:                                 # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.3:
.Ltmp6:                                 # EH_LABEL
	lu12i.w	$a1, 1
	ori	$s0, $a1, 905
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.4:
.Ltmp8:                                 # EH_LABEL
	lu12i.w	$a1, 10
	ori	$s1, $a1, 3257
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.5:
.Ltmp10:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.6:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB4_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_8:                                # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 40
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.9:                                # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp16:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.10:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE)
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
	beq	$a0, $s3, .LBB4_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_17:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 17
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
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
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
	pcalau12i	$a0, %pc_hi20(_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE)
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
	beq	$a0, $s3, .LBB4_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_26:                               # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 18
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
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s2, $zero, 1
.Ltmp48:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.28:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp50:                                # EH_LABEL
	move	$s2, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.29:
.Ltmp52:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.30:
.Ltmp54:                                # EH_LABEL
	move	$s2, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.31:
.Ltmp56:                                # EH_LABEL
	move	$s2, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.32:
.Ltmp58:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.33:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB4_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_35:                               # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
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
.LBB4_36:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i15
.Ltmp47:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_45
.LBB4_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i6
.Ltmp31:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_45
.LBB4_38:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp15:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_45
.LBB4_39:
.Ltmp60:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB4_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i21
	bnez	$s2, .LBB4_45
	b	.LBB4_46
.LBB4_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i20
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB4_45
	b	.LBB4_46
.LBB4_42:
.Ltmp44:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB4_44
	b	.LBB4_48
.LBB4_43:
.Ltmp28:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	beq	$a1, $s3, .LBB4_48
.LBB4_44:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB4_46
.LBB4_45:                               # %common.resume.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_46:                               # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_47:
.Ltmp12:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB4_44
.LBB4_48:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s5, .LBB4_46
	b	.LBB4_45
.Lfunc_end4:
	.size	_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx, .Lfunc_end4-_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
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
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
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
	.uleb128 .Lfunc_end4-.Ltmp59            #   Call between .Ltmp59 and .Lfunc_end4
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
	.asciz	"BM_INIT3_LAMBDA"
	.size	.L.str, 16

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_MULADDSUB_LAMBDA"
	.size	.L.str.3, 20

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_IF_QUAD_LAMBDA"
	.size	.L.str.5, 18

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BM_TRAP_INT_LAMBDA"
	.size	.L.str.7, 19

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx
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
	.addrsig_sym _ZL15BM_INIT3_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx
	.addrsig_sym _Unwind_Resume
