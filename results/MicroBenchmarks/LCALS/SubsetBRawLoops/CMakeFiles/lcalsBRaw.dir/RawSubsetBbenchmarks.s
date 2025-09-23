	.file	"RawSubsetBbenchmarks.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL12BM_INIT3_RAWRN9benchmark5StateE
	.type	_ZL12BM_INIT3_RAWRN9benchmark5StateE,@function
_ZL12BM_INIT3_RAWRN9benchmark5StateE:   # @_ZL12BM_INIT3_RAWRN9benchmark5StateE
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
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	blez	$a0, .LBB0_12
# %bb.3:                                # %.preheader.us.preheader
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.d	$a1, $vr6, 1
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
	vsub.d	$vr3, $vr2, $vr3
	vsub.d	$vr0, $vr0, $vr4
	vsub.d	$vr1, $vr1, $vr6
	vsub.d	$vr2, $vr2, $vr5
	sub.d	$a2, $s1, $a1
	vslti.du	$vr2, $vr2, 16
	vslti.du	$vr1, $vr1, 16
	vpickev.w	$vr1, $vr1, $vr2
	vpickve2gr.h	$a3, $vr1, 2
	andi	$a3, $a3, 1
	vpickve2gr.h	$a4, $vr2, 0
	bstrins.d	$a4, $a3, 63, 1
	vpickve2gr.h	$a3, $vr1, 4
	bstrins.d	$a4, $a3, 2, 2
	vpickve2gr.h	$a3, $vr1, 6
	bstrins.d	$a4, $a3, 3, 3
	vslti.du	$vr0, $vr0, 16
	vslti.du	$vr1, $vr3, 16
	vpickev.w	$vr0, $vr1, $vr0
	vpickve2gr.h	$a3, $vr0, 0
	bstrins.d	$a4, $a3, 4, 4
	vpickve2gr.h	$a3, $vr0, 2
	bstrins.d	$a4, $a3, 5, 5
	vpickve2gr.h	$a3, $vr0, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 6
	or	$a3, $a4, $a3
	vpickve2gr.h	$a4, $vr0, 6
	slli.d	$a4, $a4, 7
	or	$a3, $a3, $a4
	andi	$a3, $a3, 255
	sltui	$a2, $a2, 16
	sltu	$a3, $zero, $a3
	or	$a6, $a3, $a2
	bstrpick.d	$a2, $a0, 62, 1
	slli.d	$a2, $a2, 1
	vpickve2gr.d	$a3, $vr7, 0
	vpickve2gr.d	$a4, $vr7, 1
	vpickve2gr.d	$a5, $vr6, 0
	addi.d	$a7, $a0, -1
	sltui	$a7, $a7, 1
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB0_12
.LBB0_5:                                # %.preheader.us
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
	move	$t0, $a1
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
	beq	$a0, $a2, .LBB0_4
.LBB0_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t4, $a5, 3
	alsl.d	$t0, $t4, $a1, 3
	alsl.d	$t1, $t4, $a4, 3
	alsl.d	$t2, $t4, $a3, 3
	alsl.d	$t3, $t4, $s1, 3
	sub.d	$t4, $a0, $t4
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
.LBB0_12:                               # %._crit_edge38
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
	.size	_ZL12BM_INIT3_RAWRN9benchmark5StateE, .Lfunc_end0-_ZL12BM_INIT3_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL16BM_MULADDSUB_RAWRN9benchmark5StateE
	.type	_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE,@function
_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE: # @_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE
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
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	blez	$a0, .LBB1_12
# %bb.3:                                # %.preheader.us.preheader
	vld	$vr14, $sp, 32                  # 16-byte Folded Reload
	vori.b	$vr0, $vr14, 0
	vld	$vr15, $sp, 16                  # 16-byte Folded Reload
	vshuf4i.d	$vr0, $vr15, 9
	vpackod.d	$vr1, $vr15, $vr14
	vori.b	$vr2, $vr14, 0
	vshuf4i.d	$vr2, $vr15, 3
	vori.b	$vr3, $vr14, 0
	vshuf4i.d	$vr3, $vr0, 1
	vpickve2gr.d	$a1, $vr14, 0
	alsl.d	$a5, $a0, $a1, 3
	vpickve2gr.d	$a2, $vr14, 1
	alsl.d	$a6, $a0, $a2, 3
	vpickve2gr.d	$a3, $vr15, 0
	alsl.d	$a7, $a0, $a3, 3
	vpickve2gr.d	$a4, $vr15, 1
	alsl.d	$t0, $a0, $a4, 3
	alsl.d	$t1, $a0, $s0, 3
	vpackev.d	$vr4, $vr15, $vr14
	vori.b	$vr5, $vr14, 0
	vshuf4i.d	$vr5, $vr15, 6
	vreplgr2vr.d	$vr6, $s0
	vshuf4i.d	$vr14, $vr6, 12
	vshuf4i.d	$vr15, $vr6, 6
	vinsgr2vr.d	$vr6, $t0, 0
	vinsgr2vr.d	$vr7, $a6, 0
	vinsgr2vr.d	$vr6, $a5, 1
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.d	$vr8, $a5, 1
	vori.b	$vr9, $vr7, 0
	vinsgr2vr.d	$vr9, $a7, 1
	vinsgr2vr.d	$vr7, $t0, 1
	vinsgr2vr.d	$vr10, $a7, 0
	vinsgr2vr.d	$vr10, $a6, 1
	vinsgr2vr.d	$vr11, $t1, 0
	vinsgr2vr.d	$vr12, $a5, 0
	vinsgr2vr.d	$vr11, $t0, 1
	vori.b	$vr13, $vr12, 0
	vinsgr2vr.d	$vr13, $t1, 1
	vinsgr2vr.d	$vr12, $a7, 1
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
	sltu	$a5, $a3, $t1
	sltu	$a6, $s0, $a7
	and	$a5, $a5, $a6
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a6, $vr0, 0
	sltu	$a6, $zero, $a6
	or	$a6, $a6, $a5
	bstrpick.d	$a5, $a0, 62, 1
	slli.d	$a5, $a5, 1
	addi.d	$a7, $a0, -1
	sltui	$a7, $a7, 1
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s1, $s1, -1
	beqz	$s1, .LBB1_12
.LBB1_5:                                # %.preheader.us
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
.LBB1_12:                               # %._crit_edge46
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
	.size	_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE, .Lfunc_end1-_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL14BM_IF_QUAD_RAWRN9benchmark5StateE
	.type	_ZL14BM_IF_QUAD_RAWRN9benchmark5StateE,@function
_ZL14BM_IF_QUAD_RAWRN9benchmark5StateE: # @_ZL14BM_IF_QUAD_RAWRN9benchmark5StateE
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
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 8
	ld.d	$s4, $s0, 16
	ld.d	$s6, $s0, 24
	ld.d	$fp, $s0, 32
	ld.d	$s0, $s0, 40
	ld.w	$s1, $s2, 28
	ld.d	$s5, $s2, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$s1, .LBB2_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s5, .LBB2_12
# %bb.2:                                # %.preheader.lr.ph
	move	$a4, $s6
	ld.d	$a1, $a0, 32
	ld.d	$s6, $a1, 0
	blez	$s6, .LBB2_12
# %bb.3:                                # %.preheader.us.preheader
	move	$a3, $s4
	move	$a2, $s3
	vldi	$vr3, -880
	movgr2fr.d	$fs0, $zero
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s5, $s5, -1
	beqz	$s5, .LBB2_12
.LBB2_5:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	move	$s7, $s6
	move	$s8, $s0
	move	$s3, $a4
	move	$s1, $a2
	move	$s2, $a3
	move	$s4, $fp
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_8 Depth=2
	st.d	$zero, $s8, 0
	fmov.d	$fa0, $fs0
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=2
	fst.d	$fa0, $s4, 0
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, 8
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	beqz	$s7, .LBB2_4
.LBB2_8:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fs1, $s1, 0
	fld.d	$fa0, $s3, 0
	fld.d	$fs2, $s2, 0
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
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s2, 0
	fld.d	$fa2, $s1, 0
	fneg.d	$fa1, $fa1
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa1, $fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB2_7
.LBB2_11:                               # %call.sqrt
                                        #   in Loop: Header=BB2_8 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -880
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_10
.LBB2_12:                               # %._crit_edge57
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
	.size	_ZL14BM_IF_QUAD_RAWRN9benchmark5StateE, .Lfunc_end2-_ZL14BM_IF_QUAD_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL15BM_TRAP_INT_RAWRN9benchmark5StateE
	.type	_ZL15BM_TRAP_INT_RAWRN9benchmark5StateE,@function
_ZL15BM_TRAP_INT_RAWRN9benchmark5StateE: # @_ZL15BM_TRAP_INT_RAWRN9benchmark5StateE
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
# %bb.2:                                # %.preheader.lr.ph
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
	addi.d	$a0, $sp, 8
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %._crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	fmul.d	$fa3, $fa0, $fa2
	fst.d	$fa3, $sp, 8
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB3_7
.LBB3_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	ld.d	$a1, $fp, 32
	ld.d	$a1, $a1, 0
	blez	$a1, .LBB3_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	fmadd.d	$fa3, $fa3, $fa0, $fs0
	fsub.d	$fa3, $fa3, $fs1
	fmadd.d	$fa3, $fa3, $fa3, $fa1
	frsqrt.d	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	addi.d	$a1, $a1, -1
	addi.w	$a2, $a2, 1
	bnez	$a1, .LBB3_6
	b	.LBB3_3
.LBB3_7:                                # %._crit_edge54
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
	.size	_ZL15BM_TRAP_INT_RAWRN9benchmark5StateE, .Lfunc_end3-_ZL15BM_TRAP_INT_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_RawSubsetBbenchmarks.cxx
	.type	_GLOBAL__sub_I_RawSubsetBbenchmarks.cxx,@function
_GLOBAL__sub_I_RawSubsetBbenchmarks.cxx: # @_GLOBAL__sub_I_RawSubsetBbenchmarks.cxx
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
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 8
	st.d	$a1, $sp, 32
	st.w	$a0, $sp, 40
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 44
	ori	$s5, $zero, 1
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s4, $a0, 16
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL12BM_INIT3_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL12BM_INIT3_RAWRN9benchmark5StateE)
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
	ld.d	$a0, $sp, 16
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
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.9:                                # %.noexc.i
	ld.d	$a1, $sp, 8
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	vld	$vr0, $a2, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp16:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.10:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE)
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
	ld.d	$a0, $sp, 16
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
	st.d	$s3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 38
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 46
	ori	$s5, $zero, 1
.Ltmp29:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.18:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL14BM_IF_QUAD_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL14BM_IF_QUAD_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp31:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.19:
.Ltmp33:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.20:
.Ltmp35:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.21:
.Ltmp37:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.22:
.Ltmp39:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.23:
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 7
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 39
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 47
	ori	$s2, $zero, 1
.Ltmp42:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.26:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL15BM_TRAP_INT_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL15BM_TRAP_INT_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp44:                                # EH_LABEL
	move	$s2, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.27:
.Ltmp46:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.28:
.Ltmp48:                                # EH_LABEL
	move	$s2, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.29:
.Ltmp50:                                # EH_LABEL
	move	$s2, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.30:
.Ltmp52:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.31:
	move	$s0, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %__cxx_global_var_init.6.exit
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
.LBB4_34:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp15:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_41
.LBB4_35:
.Ltmp54:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB4_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i13
	bnez	$s2, .LBB4_41
	b	.LBB4_42
.LBB4_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB4_41
	b	.LBB4_42
.LBB4_38:
.Ltmp41:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB4_40
	b	.LBB4_44
.LBB4_39:
.Ltmp28:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	beq	$a1, $s3, .LBB4_44
.LBB4_40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB4_42
.LBB4_41:                               # %common.resume.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_42:                               # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_43:
.Ltmp12:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB4_40
.LBB4_44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s5, .LBB4_42
	b	.LBB4_41
.Lfunc_end4:
	.size	_GLOBAL__sub_I_RawSubsetBbenchmarks.cxx, .Lfunc_end4-_GLOBAL__sub_I_RawSubsetBbenchmarks.cxx
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
	.uleb128 .Ltmp40-.Ltmp29                #   Call between .Ltmp29 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp42-.Ltmp40                #   Call between .Ltmp40 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp53-.Ltmp42                #   Call between .Ltmp42 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Lfunc_end4-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end4
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
	.asciz	"BM_INIT3_RAW"
	.size	.L.str, 13

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_MULADDSUB_RAW"
	.size	.L.str.3, 17

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_IF_QUAD_RAW"
	.size	.L.str.5, 15

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BM_TRAP_INT_RAW"
	.size	.L.str.7, 16

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_RawSubsetBbenchmarks.cxx
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
	.addrsig_sym _ZL12BM_INIT3_RAWRN9benchmark5StateE
	.addrsig_sym _ZL16BM_MULADDSUB_RAWRN9benchmark5StateE
	.addrsig_sym _ZL14BM_IF_QUAD_RAWRN9benchmark5StateE
	.addrsig_sym _ZL15BM_TRAP_INT_RAWRN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_RawSubsetBbenchmarks.cxx
	.addrsig_sym _Unwind_Resume
