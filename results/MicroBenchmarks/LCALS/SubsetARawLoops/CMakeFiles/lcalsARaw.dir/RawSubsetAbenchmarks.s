	.file	"RawSubsetAbenchmarks.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE
	.type	_ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE,@function
_ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE: # @_ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$s5, $s0, 40
	fld.d	$fa0, $s0, 384
	xvst	$xr0, $sp, 112                  # 32-byte Folded Spill
	fld.d	$fa0, $s0, 392
	xvst	$xr0, $sp, 80                   # 32-byte Folded Spill
	fld.d	$fa0, $s0, 400
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	fld.d	$fa0, $s0, 408
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	ld.w	$s6, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	xvld	$xr15, $sp, 16                  # 32-byte Folded Reload
	xvld	$xr14, $sp, 48                  # 32-byte Folded Reload
	xvld	$xr13, $sp, 80                  # 32-byte Folded Reload
	xvld	$xr12, $sp, 112                 # 32-byte Folded Reload
	bnez	$s6, .LBB0_30
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_30
# %bb.2:                                # %.preheader62.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	blez	$a0, .LBB0_30
# %bb.3:                                # %.preheader62.us.us.preheader
	alsl.d	$a3, $a0, $s3, 3
	alsl.d	$a4, $a0, $s2, 3
	alsl.d	$a5, $a0, $s4, 3
	alsl.d	$a6, $a0, $s5, 3
	sub.d	$a1, $s2, $s1
	sltui	$a2, $a0, 8
	sltui	$a1, $a1, 64
	or	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 62, 3
	slli.d	$a2, $a2, 3
	xvreplve0.d	$xr0, $xr12
	sltu	$a4, $s3, $a4
	sltu	$a7, $s2, $a3
	and	$a4, $a4, $a7
	sltu	$a5, $s3, $a5
	sltu	$a7, $s4, $a3
	and	$a5, $a5, $a7
	or	$a4, $a4, $a5
	sltu	$a5, $s3, $a6
	sltu	$a3, $s5, $a3
	and	$a3, $a5, $a3
	or	$a6, $a4, $a3
	bstrpick.d	$a3, $a0, 62, 2
	slli.d	$a3, $a3, 2
	xvreplve0.d	$xr1, $xr13
	xvreplve0.d	$xr2, $xr15
	xvreplve0.d	$xr3, $xr14
	addi.d	$a4, $s2, 32
	addi.d	$a5, $s1, 32
	vldi	$vr4, -912
	sltui	$a7, $a0, 4
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	movgr2fr.d	$fa5, $zero
	xvrepli.b	$xr6, 0
	lu52i.d	$a7, $zero, 1023
	xvreplgr2vr.d	$xr7, $a7
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB0_30
.LBB0_5:                                # %.preheader62.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_28 Depth 2
	beqz	$a1, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$t1, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                # %vector.body114.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $a5
	move	$t0, $a4
	move	$t1, $a2
	.p2align	4, , 16
.LBB0_8:                                # %vector.body114
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr8, $a7, -32
	xvld	$xr9, $a7, 0
	xvfadd.d	$xr8, $xr8, $xr7
	xvfadd.d	$xr9, $xr9, $xr7
	xvfmul.d	$xr8, $xr0, $xr8
	xvfmul.d	$xr9, $xr0, $xr9
	xvst	$xr8, $t0, -32
	xvst	$xr9, $t0, 0
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 64
	addi.d	$a7, $a7, 64
	bnez	$t1, .LBB0_8
# %bb.9:                                # %middle.block119
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$t1, $a2
	beq	$a0, $a2, .LBB0_12
.LBB0_10:                               # %scalar.ph107.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t1, $s1, 3
	alsl.d	$t0, $t1, $s2, 3
	sub.d	$t1, $a0, $t1
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph107
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$ft0, $a7, 0
	fadd.d	$ft0, $ft0, $fa4
	fmul.d	$ft0, $ft4, $ft0
	fst.d	$ft0, $t0, 0
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB0_11
.LBB0_12:                               # %..preheader_crit_edge.us.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$a6, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	move	$t3, $zero
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_14:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $s2
	move	$t0, $s4
	move	$t1, $s5
	move	$t2, $a3
	move	$t3, $s3
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_15:                               # %pred.store.continue105
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$t3, $t3, 32
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	beqz	$t2, .LBB0_24
.LBB0_16:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr8, $a7, 0
	xvld	$xr9, $t0, 0
	xvfmul.d	$xr8, $xr8, $xr9
	xvld	$xr9, $t1, 0
	xvbitclri.d	$xr10, $xr8, 63
	xvfcmp.cule.d	$xr10, $xr1, $xr10
	xvand.v	$xr10, $xr10, $xr8
	xvfcmp.cle.d	$xr11, $xr2, $xr9
	xvbitsel.v	$xr8, $xr10, $xr6, $xr11
	xvfcmp.clt.d	$xr9, $xr8, $xr3
	xvor.v	$xr11, $xr11, $xr9
	xvpickve2gr.d	$t4, $xr11, 0
	andi	$t5, $t4, 1
	xvst	$xr10, $t3, 0
	beqz	$t5, .LBB0_18
# %bb.17:                               # %pred.store.if
                                        #   in Loop: Header=BB0_16 Depth=2
	xvpickve2gr.d	$t5, $xr9, 0
	andi	$t5, $t5, 1
	xvpickve.d	$xr10, $xr8, 0
	movgr2cf	$fcc0, $t5
	fsel	$ft2, $ft2, $ft6, $fcc0
	fst.d	$ft2, $t3, 0
.LBB0_18:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_16 Depth=2
	vinsgr2vr.w	$vr10, $t4, 0
	xvpickve2gr.d	$t4, $xr11, 1
	vinsgr2vr.w	$vr10, $t4, 1
	xvpickve2gr.d	$t4, $xr11, 2
	vinsgr2vr.w	$vr10, $t4, 2
	xvpickve2gr.d	$t4, $xr11, 3
	vinsgr2vr.w	$vr10, $t4, 3
	vpickve2gr.w	$t4, $vr10, 1
	andi	$t4, $t4, 1
	bnez	$t4, .LBB0_21
# %bb.19:                               # %pred.store.continue101
                                        #   in Loop: Header=BB0_16 Depth=2
	vpickve2gr.w	$t4, $vr10, 2
	andi	$t4, $t4, 1
	bnez	$t4, .LBB0_22
.LBB0_20:                               # %pred.store.continue103
                                        #   in Loop: Header=BB0_16 Depth=2
	vpickve2gr.w	$t4, $vr10, 3
	andi	$t4, $t4, 1
	beqz	$t4, .LBB0_15
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_21:                               # %pred.store.if100
                                        #   in Loop: Header=BB0_16 Depth=2
	xvpickve2gr.d	$t4, $xr9, 1
	andi	$t4, $t4, 1
	xvpickve.d	$xr11, $xr8, 1
	movgr2cf	$fcc0, $t4
	fsel	$ft3, $ft3, $ft6, $fcc0
	fst.d	$ft3, $t3, 8
	vpickve2gr.w	$t4, $vr10, 2
	andi	$t4, $t4, 1
	beqz	$t4, .LBB0_20
.LBB0_22:                               # %pred.store.if102
                                        #   in Loop: Header=BB0_16 Depth=2
	xvpickve2gr.d	$t4, $xr9, 2
	andi	$t4, $t4, 1
	xvpickve.d	$xr11, $xr8, 2
	movgr2cf	$fcc0, $t4
	fsel	$ft3, $ft3, $ft6, $fcc0
	fst.d	$ft3, $t3, 16
	vpickve2gr.w	$t4, $vr10, 3
	andi	$t4, $t4, 1
	beqz	$t4, .LBB0_15
.LBB0_23:                               # %pred.store.if104
                                        #   in Loop: Header=BB0_16 Depth=2
	xvpickve2gr.d	$t4, $xr9, 3
	andi	$t4, $t4, 1
	xvpickve.d	$xr8, $xr8, 3
	movgr2cf	$fcc0, $t4
	fsel	$ft0, $ft0, $ft6, $fcc0
	fst.d	$ft0, $t3, 24
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_24:                               # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$t3, $a3
	beq	$a0, $a3, .LBB0_4
.LBB0_25:                               # %..preheader_crit_edge.us.us.preheader122
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t3, $s2, 3
	alsl.d	$t0, $t3, $s4, 3
	alsl.d	$t1, $t3, $s3, 3
	alsl.d	$t2, $t3, $s5, 3
	sub.d	$t3, $a0, $t3
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_28 Depth=2
	fcmp.clt.d	$fcc0, $ft0, $ft6
	fsel	$ft0, $ft0, $ft6, $fcc0
	fst.d	$ft0, $t1, 0
.LBB0_27:                               #   in Loop: Header=BB0_28 Depth=2
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	beqz	$t3, .LBB0_4
.LBB0_28:                               # %..preheader_crit_edge.us.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$ft0, $a7, 0
	fld.d	$ft1, $t0, 0
	fmul.d	$ft0, $ft0, $ft1
	fabs.d	$ft1, $ft0
	fcmp.clt.d	$fcc0, $ft1, $ft5
	fsel	$ft0, $ft0, $fa5, $fcc0
	fst.d	$ft0, $t1, 0
	fld.d	$ft1, $t2, 0
	fcmp.cle.d	$fcc0, $ft7, $ft1
	fsel	$ft0, $ft0, $fa5, $fcc0
	bcnez	$fcc0, .LBB0_26
# %bb.29:                               # %..preheader_crit_edge.us.us
                                        #   in Loop: Header=BB0_28 Depth=2
	fcmp.cule.d	$fcc0, $ft6, $ft0
	bcnez	$fcc0, .LBB0_27
	b	.LBB0_26
.LBB0_30:                               # %._crit_edge68
	move	$a0, $fp
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end0:
	.size	_ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE, .Lfunc_end0-_ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE
.LCPI1_0:
	.dword	0x3c18987cee7f439d              # double 3.333333E-19
.LCPI1_1:
	.dword	0x3842e7922a37d1a0              # double 1.1111110000000001E-37
	.text
	.p2align	5
	.type	_ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE,@function
_ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE: # @_ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -656
	.cfi_def_cfa_offset 656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 520                  # 8-byte Folded Spill
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
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 24
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s4, $fp, 32
	ld.d	$s5, $fp, 40
	ld.d	$s6, $fp, 48
	ld.d	$s7, $fp, 56
	ld.d	$s8, $fp, 64
	ld.d	$s1, $fp, 72
	ld.d	$a0, $fp, 80
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	ld.d	$s2, $fp, 88
	ld.d	$a0, $fp, 96
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 104
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 112
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 120
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	fld.d	$fs0, $fp, 384
	fld.d	$fa0, $fp, 392
	xvst	$xr0, $sp, 272                  # 32-byte Folded Spill
	fld.d	$fa0, $fp, 400
	xvst	$xr0, $sp, 240                  # 32-byte Folded Spill
	fld.d	$fs1, $fp, 408
	ld.w	$fp, $s0, 28
	ld.d	$s3, $s0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	xvld	$xr9, $sp, 240                  # 32-byte Folded Reload
	xvld	$xr8, $sp, 272                  # 32-byte Folded Reload
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	move	$t4, $s0
	bnez	$fp, .LBB1_51
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s3, .LBB1_51
# %bb.2:                                # %.preheader226.lr.ph
	move	$t3, $s1
	move	$ra, $s5
	move	$t8, $s4
	ld.d	$a0, $t4, 32
	ld.d	$s1, $a0, 0
	alsl.d	$a0, $s1, $t5, 3
	alsl.d	$a1, $s1, $s8, 3
	alsl.d	$a2, $s1, $t7, 3
	alsl.d	$a3, $s1, $s5, 3
	alsl.d	$a4, $s1, $s7, 3
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a5, $s1, $fp, 3
	alsl.d	$a6, $s1, $s6, 3
	st.d	$s2, $sp, 432                   # 8-byte Folded Spill
	sub.d	$a7, $t5, $t6
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	sub.d	$t0, $t5, $t7
	st.d	$s7, $sp, 344                   # 8-byte Folded Spill
	sub.d	$t1, $t5, $s5
	st.d	$s8, $sp, 336                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	sub.d	$t2, $t5, $t2
	st.d	$t3, $sp, 224                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 336                   # 8-byte Folded Reload
	sub.d	$t3, $t5, $t3
	sltui	$a7, $a7, 64
	sltui	$t0, $t0, 64
	or	$a7, $a7, $t0
	sltui	$t0, $t1, 64
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	or	$a7, $a7, $t0
	sltui	$t0, $t2, 64
	ld.d	$t2, $sp, 336                   # 8-byte Folded Reload
	or	$a7, $a7, $t0
	sltui	$t0, $t3, 64
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	or	$a7, $a7, $t0
	bstrpick.d	$t0, $s1, 62, 3
	slli.d	$t0, $t0, 3
	st.d	$t0, $sp, 424                   # 8-byte Folded Spill
	sltu	$a2, $t5, $a2
	sltu	$t0, $t7, $a0
	and	$a2, $a2, $t0
	sltu	$a3, $t5, $a3
	sltu	$t0, $s5, $a0
	and	$a3, $a3, $t0
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	sltu	$a3, $t5, $a4
	sltu	$a4, $t1, $a0
	and	$a3, $a3, $a4
	or	$a2, $a2, $a3
	sltu	$a3, $t5, $a5
	sltu	$a4, $fp, $a0
	and	$a3, $a3, $a4
	or	$a2, $a2, $a3
	sltu	$a3, $t5, $a6
	move	$a5, $s3
	sltu	$a4, $t0, $a0
	and	$a3, $a3, $a4
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	move	$a3, $s1
	bstrpick.d	$a2, $s1, 62, 2
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	sltu	$a1, $t5, $a1
	sltu	$a0, $t2, $a0
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	xvreplve0.d	$xr10, $xr8
	xvreplve0.d	$xr11, $xr9
	addi.d	$a0, $t6, 32
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	addi.d	$a0, $t5, 32
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	addi.d	$a0, $t7, 32
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	addi.d	$a0, $t2, 32
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 32
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	addi.d	$a0, $t1, 32
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	sltui	$a0, $s1, 8
	or	$a0, $a0, $a7
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	vldi	$vr12, -800
	vldi	$vr13, -928
	movgr2fr.d	$fs2, $zero
	vldi	$vr14, -880
	vldi	$vr15, -1016
	vldi	$vr16, -864
	vldi	$vr17, -996
	vldi	$vr18, -872
	lu52i.d	$a0, $zero, 1022
	xvreplgr2vr.d	$xr19, $a0
	lu52i.d	$a0, $zero, -1023
	xvreplgr2vr.d	$xr20, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -524288
	lu52i.d	$a0, $a0, 1024
	xvreplgr2vr.d	$xr21, $a0
	vldi	$vr22, -912
	st.d	$s1, $sp, 504                   # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %._crit_edge
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a5, $a5, -1
	beqz	$a5, .LBB1_51
.LBB1_4:                                # %.preheader226
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_47 Depth 2
	blez	$a3, .LBB1_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$a5, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	move	$a6, $zero
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_7:                                # %vector.body325.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	lu52i.d	$fp, $zero, -1026
	.p2align	4, , 16
.LBB1_8:                                # %vector.body325
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvld	$xr4, $a0, -32
	xvld	$xr5, $a0, 0
	xvld	$xr6, $a3, -32
	xvld	$xr7, $a3, 0
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvreplgr2vr.d	$xr4, $fp
	xvfmul.d	$xr5, $xr6, $xr4
	xvfmul.d	$xr4, $xr7, $xr4
	xvld	$xr6, $a2, -32
	xvld	$xr7, $a2, 0
	xvfmadd.d	$xr0, $xr5, $xr2, $xr0
	xvfmadd.d	$xr1, $xr4, $xr3, $xr1
	xvfmadd.d	$xr0, $xr6, $xr19, $xr0
	xvfmadd.d	$xr1, $xr7, $xr19, $xr1
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	addi.d	$a4, $a4, 64
	addi.d	$a3, $a3, 64
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a6, .LBB1_8
# %bb.9:                                # %middle.block338
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	move	$a6, $a0
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	move	$fp, $a3
	move	$s0, $t7
	move	$s1, $t3
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	move	$s3, $t5
	move	$s4, $a7
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	move	$s8, $t0
	beq	$a3, $a0, .LBB1_16
.LBB1_10:                               # %.lr.ph.preheader342
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a0, $a6, $t5, 3
	alsl.d	$a1, $a6, $t2, 3
	alsl.d	$a2, $a6, $t1, 3
	move	$fp, $a3
	alsl.d	$a3, $a6, $ra, 3
	alsl.d	$a4, $a6, $t7, 3
	alsl.d	$a5, $a6, $t6, 3
	sub.d	$a6, $fp, $a6
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a4, 0
	fld.d	$fa3, $a5, 0
	fld.d	$fa4, $a1, 0
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $ft4
	fmadd.d	$fa0, $fa1, $fa0, $fa3
	fmadd.d	$fa0, $fa4, $ft5, $fa0
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	move	$fp, $a3
	move	$s0, $t7
	move	$s1, $t3
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	move	$s3, $t5
	move	$s4, $a7
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	move	$s8, $t0
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_16 Depth=2
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
.LBB1_14:                               #   in Loop: Header=BB1_16 Depth=2
	fld.d	$fa1, $s6, 0
	fld.d	$fa2, $s7, 0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
.LBB1_15:                               #   in Loop: Header=BB1_16 Depth=2
	fst.d	$fa0, $s8, 0
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB1_20
.LBB1_16:                               # %.lr.ph229
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s0, 0
	fcmp.clt.d	$fcc0, $fs2, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	fmov.d	$fa0, $fs2
	bcnez	$fcc0, .LBB1_15
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=2
	fld.d	$fa0, $s1, 0
	fadd.d	$fa0, $fa0, $ft14
	frecip.d	$fa0, $fa0
	fld.d	$fa1, $s2, 0
	fld.d	$fa2, $s4, 0
	fld.d	$fa3, $s3, 0
	fld.d	$fa4, $s5, 0
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fa2
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fmul.d	$fa0, $fa0, $fa4
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fdiv.d	$fa1, $fa0, $fs0
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_13
# %bb.18:                               #   in Loop: Header=BB1_16 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_14
# %bb.19:                               # %call.sqrt
                                        #   in Loop: Header=BB1_16 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$t4, $sp, 216                   # 8-byte Folded Spill
	st.d	$t8, $sp, 208                   # 8-byte Folded Spill
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	xvst	$xr10, $sp, 160                 # 32-byte Folded Spill
	xvst	$xr11, $sp, 128                 # 32-byte Folded Spill
	xvst	$xr19, $sp, 96                  # 32-byte Folded Spill
	xvst	$xr20, $sp, 64                  # 32-byte Folded Spill
	xvst	$xr21, $sp, 32                  # 32-byte Folded Spill
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	vldi	$vr22, -912
	xvld	$xr21, $sp, 32                  # 32-byte Folded Reload
	xvld	$xr20, $sp, 64                  # 32-byte Folded Reload
	xvld	$xr19, $sp, 96                  # 32-byte Folded Reload
	vldi	$vr18, -872
	vldi	$vr17, -996
	vldi	$vr16, -864
	vldi	$vr15, -1016
	vldi	$vr14, -880
	vldi	$vr13, -928
	vldi	$vr12, -800
	xvld	$xr11, $sp, 128                 # 32-byte Folded Reload
	xvld	$xr10, $sp, 160                 # 32-byte Folded Reload
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	xvld	$xr9, $sp, 240                  # 32-byte Folded Reload
	xvld	$xr8, $sp, 272                  # 32-byte Folded Reload
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 216                   # 8-byte Folded Reload
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_20:                               # %.preheader224
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	sltui	$a0, $a3, 4
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	or	$a1, $a0, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_4 Depth=1
	move	$a7, $zero
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_22:                               # %vector.body299.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a1, $t5
	move	$a2, $t7
	move	$a3, $ra
	move	$a4, $t1
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	move	$a6, $t0
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_23:                               # %vector.body299
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a3, 0
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a5, 0
	xvld	$xr4, $a6, 0
	xvfadd.d	$xr0, $xr0, $xr1
	xvld	$xr1, $a1, 0
	xvfmul.d	$xr2, $xr2, $xr19
	xvfadd.d	$xr3, $xr3, $xr4
	xvfmul.d	$xr3, $xr3, $xr20
	xvfmadd.d	$xr0, $xr0, $xr21, $xr3
	xvfmadd.d	$xr0, $xr2, $xr0, $xr1
	xvst	$xr0, $a1, 0
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	bnez	$a7, .LBB1_23
# %bb.24:                               # %middle.block308
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $a2
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_27
.LBB1_25:                               # %.lr.ph231.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a1, $a7, $t0, 3
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a2, $a7, $a2, 3
	alsl.d	$a3, $a7, $t1, 3
	alsl.d	$a4, $a7, $ra, 3
	alsl.d	$a5, $a7, $t7, 3
	alsl.d	$a6, $a7, $t5, 3
	ld.d	$fp, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a7, $fp, $a7
	.p2align	4, , 16
.LBB1_26:                               # %.lr.ph231
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a4, 0
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a5, 0
	fld.d	$fa3, $a2, 0
	fld.d	$fa4, $a1, 0
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $a6, 0
	fmul.d	$fa2, $fa2, $ft5
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa3, $ft6
	fmadd.d	$fa0, $fa0, $ft7, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fst.d	$fa0, $a6, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB1_26
.LBB1_27:                               # %.lr.ph233.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_4 Depth=1
	move	$a2, $zero
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_29:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $t2
	move	$a1, $t5
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_30:                               # %vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a0, 0
	xvld	$xr1, $a1, 0
	xvfmadd.d	$xr0, $xr0, $xr19, $xr1
	xvbitclri.d	$xr1, $xr0, 63
	xvfcmp.cule.d	$xr1, $xr10, $xr1
	xvand.v	$xr0, $xr1, $xr0
	xvfcmp.clt.d	$xr1, $xr0, $xr11
	xvbitsel.v	$xr0, $xr0, $xr11, $xr1
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB1_30
# %bb.31:                               # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	move	$a2, $a0
	beq	$a3, $a0, .LBB1_34
.LBB1_32:                               # %.lr.ph233.preheader341
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a0, $a2, $t5, 3
	alsl.d	$a1, $a2, $t2, 3
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB1_33:                               # %.lr.ph233
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fa0, $fa0, $ft5, $fa1
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $ft0
	fsel	$fa0, $fa0, $fs2, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $ft1
	fsel	$fa0, $fa0, $ft1, $fcc0
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_33
.LBB1_34:                               # %.lr.ph235.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$s7, $a3
	move	$s3, $t7
	move	$s6, $ra
	move	$s0, $t1
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	move	$fp, $t0
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	move	$a6, $a7
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 480                   # 8-byte Folded Reload
	move	$s5, $t5
	move	$s4, $t8
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_35:                               # %.lr.ph235._crit_edge
                                        #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fs4, $s5, 0
	fld.d	$fs5, $s4, 0
	fmov.d	$fa0, $fs2
.LBB1_36:                               #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa1, $s6, 0
	fld.d	$fa2, $s0, 0
	fld.d	$fa3, $s1, 0
	fld.d	$fa4, $fp, 0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa4
	fmul.d	$fa2, $fa2, $ft8
	fmadd.d	$fa1, $fa1, $ft9, $fa2
	fadd.d	$fa0, $fa0, $fs5
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fs3, $fa0
	fdiv.d	$fa0, $fa0, $ft10
	fadd.d	$fa0, $fs4, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $ft0
	fsel	$fa0, $fa0, $fs2, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $ft1
	fsel	$fa0, $fa0, $ft1, $fcc0
	fst.d	$fa0, $s5, 0
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, 8
	addi.d	$s2, $s2, 8
	addi.d	$s8, $s8, 8
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, -1
	addi.d	$s3, $s3, 8
	beqz	$s7, .LBB1_43
.LBB1_37:                               # %.lr.ph235
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fs3, $s3, 0
	fcmp.cule.d	$fcc0, $fs3, $fs2
	bceqz	$fcc0, .LBB1_35
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fs4, $s5, 0
	fld.d	$fs5, $s4, 0
	fmul.d	$fa1, $fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fmul.d	$fa1, $fa1, $fs5
	fmadd.d	$fa0, $fa0, $fs4, $fa1
	fdiv.d	$fa1, $fa0, $fs0
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_41
# %bb.39:                               #   in Loop: Header=BB1_37 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_42
# %bb.40:                               # %call.sqrt504
                                        #   in Loop: Header=BB1_37 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$t4, $sp, 216                   # 8-byte Folded Spill
	st.d	$t8, $sp, 208                   # 8-byte Folded Spill
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	xvst	$xr10, $sp, 160                 # 32-byte Folded Spill
	xvst	$xr11, $sp, 128                 # 32-byte Folded Spill
	xvst	$xr19, $sp, 96                  # 32-byte Folded Spill
	xvst	$xr20, $sp, 64                  # 32-byte Folded Spill
	xvst	$xr21, $sp, 32                  # 32-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	vldi	$vr22, -912
	xvld	$xr21, $sp, 32                  # 32-byte Folded Reload
	xvld	$xr20, $sp, 64                  # 32-byte Folded Reload
	xvld	$xr19, $sp, 96                  # 32-byte Folded Reload
	vldi	$vr18, -872
	vldi	$vr17, -996
	vldi	$vr16, -864
	vldi	$vr15, -1016
	vldi	$vr14, -880
	vldi	$vr13, -928
	vldi	$vr12, -800
	xvld	$xr11, $sp, 128                 # 32-byte Folded Reload
	xvld	$xr10, $sp, 160                 # 32-byte Folded Reload
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	xvld	$xr9, $sp, 240                  # 32-byte Folded Reload
	xvld	$xr8, $sp, 272                  # 32-byte Folded Reload
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 216                   # 8-byte Folded Reload
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_41:                               #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
.LBB1_42:                               #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa1, $s8, 0
	fld.d	$fa2, $s2, 0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_43:                               #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $a3
	move	$s0, $t7
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	move	$s2, $t5
	ld.d	$s3, $sp, 472                   # 8-byte Folded Reload
	move	$s4, $a7
	move	$s5, $t8
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	move	$s8, $t0
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_44:                               #   in Loop: Header=BB1_47 Depth=2
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
.LBB1_45:                               #   in Loop: Header=BB1_47 Depth=2
	fld.d	$fa1, $s6, 0
	fld.d	$fa2, $s7, 0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs1
	fsel	$fa0, $fa0, $fs2, $fcc0
	fst.d	$fa0, $s8, 0
.LBB1_46:                               #   in Loop: Header=BB1_47 Depth=2
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB1_3
.LBB1_47:                               # %.lr.ph237
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s0, 0
	fcmp.cult.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB1_46
# %bb.48:                               #   in Loop: Header=BB1_47 Depth=2
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s3, 0
	fld.d	$fa2, $s4, 0
	fld.d	$fa3, $s2, 0
	fld.d	$fa4, $s5, 0
	fmul.d	$fa1, $fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fmul.d	$fa1, $fa1, $fa4
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fdiv.d	$fa1, $fa0, $fs0
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_44
# %bb.49:                               #   in Loop: Header=BB1_47 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_45
# %bb.50:                               # %call.sqrt506
                                        #   in Loop: Header=BB1_47 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$t4, $sp, 216                   # 8-byte Folded Spill
	st.d	$t8, $sp, 208                   # 8-byte Folded Spill
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	xvst	$xr10, $sp, 160                 # 32-byte Folded Spill
	xvst	$xr11, $sp, 128                 # 32-byte Folded Spill
	xvst	$xr19, $sp, 96                  # 32-byte Folded Spill
	xvst	$xr20, $sp, 64                  # 32-byte Folded Spill
	xvst	$xr21, $sp, 32                  # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	vldi	$vr22, -912
	xvld	$xr21, $sp, 32                  # 32-byte Folded Reload
	xvld	$xr20, $sp, 64                  # 32-byte Folded Reload
	xvld	$xr19, $sp, 96                  # 32-byte Folded Reload
	vldi	$vr18, -872
	vldi	$vr17, -996
	vldi	$vr16, -864
	vldi	$vr15, -1016
	vldi	$vr14, -880
	vldi	$vr13, -928
	vldi	$vr12, -800
	xvld	$xr11, $sp, 128                 # 32-byte Folded Reload
	xvld	$xr10, $sp, 160                 # 32-byte Folded Reload
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	xvld	$xr9, $sp, 240                  # 32-byte Folded Reload
	xvld	$xr8, $sp, 272                  # 32-byte Folded Reload
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 216                   # 8-byte Folded Reload
	b	.LBB1_45
.LBB1_51:                               # %._crit_edge240
	move	$a0, $t4
	fld.d	$fs5, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 560                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end1:
	.size	_ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE, .Lfunc_end1-_ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE
.LCPI2_0:
	.dword	0x3fb5555555555555              # double 0.083333333333333329
	.text
	.p2align	5
	.type	_ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE,@function
_ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE: # @_ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
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
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s0, 8
	ld.d	$a0, $s2, 32
	ld.d	$s6, $s0, 16
	ld.d	$a1, $s0, 24
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 32
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	addi.d	$a0, $sp, 144
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZN7ADomainC2Eii)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 180
	ld.w	$fp, $sp, 184
	ld.w	$s1, $s2, 28
	ld.d	$s4, $s2, 16
.Ltmp0:                                 # EH_LABEL
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB2_4
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s4, .LBB2_4
# %bb.3:                                # %.lr.ph213
	ld.w	$s8, $sp, 208
	ld.w	$a2, $sp, 212
	bge	$a2, $s8, .LBB2_8
.LBB2_4:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp2:                                 # EH_LABEL
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.5:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 216
	beqz	$a0, .LBB2_7
# %bb.6:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %_ZN7ADomainD2Ev.exit
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB2_8:                                # %.lr.ph.preheader
	addi.d	$a0, $s7, 8
	alsl.d	$a7, $s0, $s7, 3
	slli.d	$a1, $s8, 3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a5, $s8, $a3, 3
	sub.w	$a3, $a2, $s8
	bstrpick.d	$a4, $a3, 31, 0
	alsl.d	$a6, $a4, $a5, 3
	addi.d	$a6, $a6, 8
	slli.d	$t0, $fp, 3
	slli.d	$t1, $s0, 3
	alsl.d	$t0, $s8, $t0, 3
	alsl.d	$t4, $s0, $t0, 3
	add.d	$t2, $s7, $t4
	alsl.d	$t3, $a4, $t4, 3
	addi.d	$t5, $t3, 16
	add.d	$t6, $s7, $t5
	add.d	$t8, $s7, $t0
	alsl.d	$t3, $a4, $t0, 3
	addi.d	$t3, $t3, 16
	add.d	$s1, $s7, $t3
	alsl.d	$s2, $s8, $s7, 3
	sltu	$t6, $a5, $t6
	sltu	$t2, $t2, $a6
	and	$t2, $t6, $t2
	alsl.d	$t6, $a4, $a1, 3
	addi.d	$t7, $t6, 16
	sltu	$t6, $a5, $s1
	sltu	$t8, $t8, $a6
	and	$t8, $t6, $t8
	add.d	$s1, $s7, $t7
	alsl.d	$t6, $s8, $t1, 3
	or	$t1, $t2, $t8
	add.d	$t2, $s7, $t6
	sltu	$t8, $a5, $s1
	sltu	$s1, $s2, $a6
	and	$t8, $t8, $s1
	alsl.d	$s1, $a4, $t6, 3
	addi.d	$s1, $s1, 16
	or	$t1, $t1, $t8
	add.d	$t8, $s7, $s1
	sltu	$t8, $a5, $t8
	sltu	$t2, $t2, $a6
	and	$t2, $t8, $t2
	add.d	$t8, $s6, $t4
	or	$t1, $t1, $t2
	add.d	$t2, $s6, $t5
	sltu	$t2, $a5, $t2
	sltu	$t8, $t8, $a6
	and	$t2, $t2, $t8
	add.d	$t8, $s6, $t0
	or	$t1, $t1, $t2
	add.d	$t2, $s6, $t3
	sltu	$t2, $a5, $t2
	sltu	$t8, $t8, $a6
	and	$t2, $t2, $t8
	alsl.d	$t8, $s8, $s6, 3
	or	$t1, $t1, $t2
	add.d	$t2, $s6, $t7
	sltu	$t2, $a5, $t2
	sltu	$t8, $t8, $a6
	and	$t2, $t2, $t8
	add.d	$t8, $s6, $t6
	or	$s2, $t1, $t2
	add.d	$t1, $s6, $s1
	sltu	$t1, $a5, $t1
	sltu	$t2, $t8, $a6
	and	$t8, $t1, $t2
	alsl.d	$t1, $s0, $a0, 3
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$t2, $fp, $a0, 3
	alsl.d	$a0, $fp, $a7, 3
	or	$a7, $s2, $t8
	addi.d	$s2, $s6, 8
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	add.d	$t4, $s3, $t4
	add.d	$t5, $s3, $t5
	sltu	$t5, $a5, $t5
	sltu	$t4, $t4, $a6
	and	$t4, $t5, $t4
	alsl.d	$t8, $s0, $s2, 3
	or	$a7, $a7, $t4
	alsl.d	$t4, $fp, $s6, 3
	alsl.d	$t5, $fp, $s2, 3
	st.d	$t5, $sp, 104                   # 8-byte Folded Spill
	add.d	$t0, $s3, $t0
	add.d	$t3, $s3, $t3
	sltu	$t3, $a5, $t3
	sltu	$t0, $t0, $a6
	and	$t0, $t3, $t0
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$t3, $s0, $t4, 3
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	or	$a7, $a7, $t0
	alsl.d	$t0, $s8, $s3, 3
	add.d	$t3, $s3, $t7
	sltu	$t3, $a5, $t3
	sltu	$t0, $t0, $a6
	and	$t0, $t3, $t0
	alsl.d	$t3, $fp, $t8, 3
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	or	$a7, $a7, $t0
	addi.d	$t3, $s3, 8
	add.d	$t0, $s3, $s1
	sltu	$a5, $a5, $t0
	alsl.d	$t4, $s0, $s3, 3
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$t3, $s0, $t3, 3
	add.d	$t0, $s3, $t6
	sltu	$t0, $t0, $a6
	alsl.d	$a6, $fp, $s3, 3
	and	$a5, $a5, $t0
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$t0, $fp, $t4, 3
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	st.d	$t3, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$t0, $fp, $t3, 3
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$t0, $a4, 1
	or	$a4, $a7, $a5
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a5, $t0, 32, 2
	sltui	$a3, $a3, 3
	or	$a3, $a3, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI2_0)
	lu12i.w	$a4, 349525
	ori	$a4, $a4, 1365
	lu32i.d	$a4, 349525
	lu52i.d	$a4, $a4, 1019
	xvreplgr2vr.d	$xr1, $a4
	slli.d	$a4, $a5, 2
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a4, $a5, $s8, 2
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	andi	$t1, $a3, 1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge
                                        #   in Loop: Header=BB2_10 Depth=1
	addi.d	$s4, $s4, -1
	beqz	$s4, .LBB2_4
.LBB2_10:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	move	$a2, $s8
	bnez	$t1, .LBB2_14
# %bb.11:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_10 Depth=1
	move	$s5, $s8
	move	$a7, $t8
	move	$s8, $s6
	move	$t4, $s6
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$fp, $a6
	move	$a2, $a0
	move	$s0, $t2
	move	$s6, $s7
	move	$s1, $s7
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_12:                               # %vector.body
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$ra, $a2, $a1
	xvld	$xr3, $ra, 8
	add.d	$ra, $s1, $a1
	xvld	$xr2, $ra, 8
	xvfsub.d	$xr2, $xr3, $xr2
	add.d	$ra, $a4, $a1
	xvld	$xr4, $ra, -8
	add.d	$ra, $s0, $a1
	xvld	$xr5, $ra, -8
	xvldx	$xr6, $a4, $a1
	xvldx	$xr8, $s1, $a1
	xvldx	$xr9, $s0, $a1
	xvfsub.d	$xr7, $xr3, $xr4
	xvfsub.d	$xr4, $xr3, $xr5
	xvfsub.d	$xr5, $xr6, $xr8
	xvfsub.d	$xr3, $xr9, $xr8
	xvldx	$xr6, $a2, $a1
	xvldx	$xr10, $t5, $a1
	add.d	$ra, $t4, $a1
	xvld	$xr11, $ra, 8
	add.d	$ra, $a7, $a1
	xvld	$xr12, $ra, -8
	xvfsub.d	$xr9, $xr6, $xr8
	add.d	$ra, $t5, $a1
	xvfsub.d	$xr6, $xr10, $xr11
	xvfsub.d	$xr11, $xr10, $xr12
	add.d	$t7, $a5, $a1
	xvldx	$xr8, $a5, $a1
	xvldx	$xr12, $a7, $a1
	xvldx	$xr13, $t4, $a1
	xvld	$xr14, $t7, 8
	xvld	$xr15, $ra, -8
	xvfsub.d	$xr10, $xr10, $xr8
	xvfsub.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr8, $xr14, $xr13
	xvfsub.d	$xr13, $xr15, $xr13
	xvldx	$xr14, $t6, $a1
	xvldx	$xr15, $t0, $a1
	add.d	$t7, $t6, $a1
	xvldx	$xr16, $a3, $a1
	add.d	$ra, $t0, $a1
	xvfsub.d	$xr15, $xr14, $xr15
	add.d	$t3, $a3, $a1
	xvfsub.d	$xr16, $xr14, $xr16
	add.d	$s7, $fp, $a1
	xvldx	$xr17, $fp, $a1
	xvld	$xr18, $t3, 8
	xvld	$xr19, $ra, -8
	xvld	$xr20, $s7, 8
	xvld	$xr21, $t7, -8
	xvfsub.d	$xr14, $xr14, $xr17
	xvfsub.d	$xr17, $xr18, $xr19
	xvfsub.d	$xr18, $xr20, $xr19
	xvfsub.d	$xr19, $xr21, $xr19
	xvfadd.d	$xr20, $xr2, $xr9
	xvfadd.d	$xr21, $xr6, $xr13
	xvfadd.d	$xr22, $xr15, $xr19
	xvbitrevi.d	$xr23, $xr12, 63
	xvfmul.d	$xr23, $xr16, $xr23
	xvfmadd.d	$xr23, $xr11, $xr17, $xr23
	xvbitrevi.d	$xr24, $xr17, 63
	xvfmul.d	$xr24, $xr7, $xr24
	xvfmadd.d	$xr24, $xr16, $xr5, $xr24
	xvbitrevi.d	$xr25, $xr5, 63
	xvfmul.d	$xr25, $xr11, $xr25
	xvfmadd.d	$xr25, $xr7, $xr12, $xr25
	xvfmul.d	$xr21, $xr21, $xr24
	xvfmadd.d	$xr20, $xr20, $xr23, $xr21
	xvfmadd.d	$xr20, $xr22, $xr25, $xr20
	xvfadd.d	$xr7, $xr7, $xr3
	xvfadd.d	$xr11, $xr11, $xr8
	xvfadd.d	$xr16, $xr16, $xr18
	xvbitrevi.d	$xr21, $xr13, 63
	xvfmul.d	$xr21, $xr14, $xr21
	xvfmadd.d	$xr21, $xr10, $xr19, $xr21
	xvbitrevi.d	$xr19, $xr19, 63
	xvfmul.d	$xr19, $xr4, $xr19
	xvfmadd.d	$xr19, $xr14, $xr9, $xr19
	xvbitrevi.d	$xr9, $xr9, 63
	xvfmul.d	$xr9, $xr10, $xr9
	xvfmadd.d	$xr9, $xr4, $xr13, $xr9
	xvfmul.d	$xr11, $xr11, $xr19
	xvfmadd.d	$xr7, $xr7, $xr21, $xr11
	xvfmadd.d	$xr7, $xr16, $xr9, $xr7
	xvfadd.d	$xr7, $xr20, $xr7
	xvfadd.d	$xr4, $xr4, $xr5
	xvfadd.d	$xr5, $xr10, $xr12
	xvfadd.d	$xr9, $xr14, $xr17
	xvbitrevi.d	$xr10, $xr8, 63
	xvfmul.d	$xr10, $xr15, $xr10
	xvfmadd.d	$xr10, $xr6, $xr18, $xr10
	xvbitrevi.d	$xr11, $xr18, 63
	xvfmul.d	$xr11, $xr2, $xr11
	xvfmadd.d	$xr11, $xr15, $xr3, $xr11
	xvbitrevi.d	$xr3, $xr3, 63
	xvfmul.d	$xr3, $xr6, $xr3
	xvfmadd.d	$xr2, $xr2, $xr8, $xr3
	xvfmul.d	$xr3, $xr5, $xr11
	xvfmadd.d	$xr3, $xr4, $xr10, $xr3
	xvfmadd.d	$xr2, $xr9, $xr2, $xr3
	xvfadd.d	$xr2, $xr2, $xr7
	xvfmul.d	$xr2, $xr2, $xr1
	xvstx	$xr2, $s2, $a1
	addi.d	$s3, $s3, -4
	addi.d	$s2, $s2, 32
	addi.d	$a4, $a4, 32
	addi.d	$s1, $s1, 32
	addi.d	$s0, $s0, 32
	addi.d	$a2, $a2, 32
	addi.d	$fp, $fp, 32
	addi.d	$a3, $a3, 32
	addi.d	$t0, $t0, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$a5, $a5, 32
	addi.d	$t4, $t4, 32
	addi.d	$a7, $a7, 32
	bnez	$s3, .LBB2_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$s7, $s6
	move	$s6, $s8
	move	$s8, $s5
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB2_9
.LBB2_14:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_10 Depth=1
	slli.d	$ra, $a2, 3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	sub.d	$fp, $a3, $a2
	move	$t5, $a6
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	move	$s2, $s6
	move	$a5, $t8
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $t2
	move	$s1, $s7
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $a0
	.p2align	4, , 16
.LBB2_15:                               # %scalar.ph
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a4, $ra
	add.d	$t7, $a2, $ra
	fld.d	$fa2, $t7, -8
	add.d	$t7, $a3, $ra
	fld.d	$fa3, $t7, -8
	fldx.d	$fa4, $a2, $ra
	fld.d	$fa5, $t3, 8
	fldx.d	$fa7, $a3, $ra
	vldx	$vr8, $a4, $ra
	fldx.d	$ft1, $s1, $ra
	fsub.d	$fa6, $fa5, $fa2
	vldx	$vr10, $s1, $ra
	fsub.d	$fa3, $fa5, $fa3
	fsub.d	$fa4, $fa4, $ft1
	fsub.d	$fa2, $fa7, $ft1
	vfsub.d	$vr9, $vr8, $vr10
	add.d	$t3, $t0, $ra
	add.d	$t7, $a5, $ra
	fld.d	$fa5, $t7, -8
	add.d	$t7, $a7, $ra
	fld.d	$fa7, $t7, -8
	fldx.d	$ft0, $a5, $ra
	fld.d	$ft2, $t3, 8
	fldx.d	$ft3, $a7, $ra
	vldx	$vr12, $t0, $ra
	fldx.d	$ft5, $s2, $ra
	fsub.d	$ft6, $ft2, $fa5
	vldx	$vr15, $s2, $ra
	fsub.d	$fa7, $ft2, $fa7
	fsub.d	$ft0, $ft0, $ft5
	fsub.d	$fa5, $ft3, $ft5
	vfsub.d	$vr10, $vr12, $vr15
	add.d	$t3, $t6, $ra
	add.d	$t7, $t4, $ra
	fld.d	$ft3, $t7, -8
	add.d	$t7, $t5, $ra
	fldx.d	$ft4, $t5, $ra
	fldx.d	$ft5, $t4, $ra
	fld.d	$ft7, $t3, 8
	fld.d	$ft8, $t7, 8
	vldx	$vr17, $t6, $ra
	fldx.d	$ft10, $s3, $ra
	fsub.d	$ft3, $ft7, $ft3
	vldx	$vr19, $s3, $ra
	fsub.d	$ft4, $ft7, $ft4
	fsub.d	$ft5, $ft5, $ft10
	fsub.d	$ft7, $ft8, $ft10
	vfsub.d	$vr16, $vr17, $vr19
	vreplvei.d	$vr17, $vr9, 0
	vreplvei.d	$vr9, $vr9, 1
	fadd.d	$ft10, $ft1, $ft9
	vreplvei.d	$vr19, $vr10, 0
	vreplvei.d	$vr10, $vr10, 1
	fadd.d	$ft12, $ft2, $ft11
	vreplvei.d	$vr21, $vr16, 0
	vreplvei.d	$vr16, $vr16, 1
	fadd.d	$ft14, $ft8, $ft13
	fneg.d	$ft15, $ft0
	fmul.d	$ft15, $ft3, $ft15
	fmadd.d	$ft15, $ft6, $ft5, $ft15
	fneg.d	$fs0, $ft5
	fmul.d	$fs0, $fa6, $fs0
	fmadd.d	$fs0, $ft3, $fa4, $fs0
	fneg.d	$fs1, $fa4
	fmul.d	$fs1, $ft6, $fs1
	fmadd.d	$fs1, $fa6, $ft0, $fs1
	fmul.d	$ft12, $ft12, $fs0
	fmadd.d	$ft10, $ft10, $ft15, $ft12
	fmadd.d	$ft10, $ft14, $fs1, $ft10
	fadd.d	$fa6, $fa6, $fa2
	fadd.d	$ft6, $ft6, $fa5
	fadd.d	$ft3, $ft3, $ft7
	fneg.d	$ft12, $ft11
	fmul.d	$ft12, $ft4, $ft12
	fmadd.d	$ft12, $fa7, $ft13, $ft12
	fneg.d	$ft13, $ft13
	fmul.d	$ft13, $fa3, $ft13
	fmadd.d	$ft13, $ft4, $ft9, $ft13
	fneg.d	$ft9, $ft9
	fmul.d	$ft9, $fa7, $ft9
	fmadd.d	$ft9, $fa3, $ft11, $ft9
	fmul.d	$ft6, $ft6, $ft13
	fmadd.d	$fa6, $fa6, $ft12, $ft6
	fmadd.d	$fa6, $ft3, $ft9, $fa6
	fadd.d	$fa6, $ft10, $fa6
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa4, $fa7, $ft0
	fadd.d	$fa7, $ft4, $ft5
	fneg.d	$ft0, $fa5
	fmul.d	$ft0, $ft8, $ft0
	fmadd.d	$ft0, $ft2, $ft7, $ft0
	fneg.d	$ft3, $ft7
	fmul.d	$ft3, $ft1, $ft3
	fmadd.d	$ft3, $ft8, $fa2, $ft3
	fneg.d	$fa2, $fa2
	fmul.d	$fa2, $ft2, $fa2
	fmadd.d	$fa2, $ft1, $fa5, $fa2
	fmul.d	$fa4, $fa4, $ft3
	fmadd.d	$fa3, $fa3, $ft0, $fa4
	fmadd.d	$fa2, $fa7, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa6
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s0, $ra
	addi.d	$a4, $a4, 8
	addi.w	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	addi.d	$a2, $a2, 8
	addi.d	$s1, $s1, 8
	addi.d	$a3, $a3, 8
	addi.d	$t0, $t0, 8
	addi.d	$t6, $t6, 8
	addi.d	$s3, $s3, 8
	addi.d	$a5, $a5, 8
	addi.d	$s2, $s2, 8
	addi.d	$a7, $a7, 8
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 8
	bnez	$fp, .LBB2_15
	b	.LBB2_9
.LBB2_16:
.Ltmp4:                                 # EH_LABEL
	ld.d	$a1, $sp, 216
	move	$fp, $a0
	beqz	$a1, .LBB2_18
# %bb.17:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_18:                               # %_ZN7ADomainD2Ev.exit201
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE, .Lfunc_end2-_ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp3             #   Call between .Ltmp3 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE
.LCPI3_0:
	.dword	0xbfe0000000000000              # double -0.5
	.dword	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_1:
	.dword	0x3bc79ca10c924223              # double 9.9999999999999995E-21
	.text
	.p2align	5
	.type	_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE,@function
_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE: # @_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$a0, $fp, 32
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$s0, $s0, 40
	ld.w	$a1, $a0, 0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZN7ADomainC2Eii)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 44
	ld.w	$s7, $fp, 28
	ld.d	$s5, $fp, 16
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s7, .LBB3_8
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s5, .LBB3_8
# %bb.3:                                # %.preheader.lr.ph
	ld.w	$a0, $sp, 88
	blez	$a0, .LBB3_8
# %bb.4:                                # %.preheader.us.preheader
	addi.d	$a1, $s1, 8
	alsl.d	$a2, $s6, $a1, 3
	alsl.d	$a3, $s6, $s1, 3
	alsl.d	$a4, $s6, $s2, 3
	addi.d	$a5, $s3, 8
	alsl.d	$a6, $s6, $a5, 3
	alsl.d	$a7, $s6, $s3, 3
	alsl.d	$t0, $s6, $s4, 3
	ld.d	$t1, $sp, 80
	pcalau12i	$t2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $t2, %pc_lo12(.LCPI3_0)
	pcalau12i	$t2, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $t2, %pc_lo12(.LCPI3_1)
	vldi	$vr2, -928
	lu52i.d	$t2, $zero, 1022
	vreplgr2vr.d	$vr3, $t2
	.p2align	4, , 16
.LBB3_5:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	move	$t2, $a0
	move	$t3, $t1
	.p2align	4, , 16
.LBB3_6:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	slli.d	$t4, $t4, 3
	vldx	$vr7, $a3, $t4
	fldx.d	$fa4, $a2, $t4
	fldx.d	$fa5, $a3, $t4
	fldx.d	$fa6, $s1, $t4
	fldx.d	$ft0, $a1, $t4
	vldx	$vr9, $s1, $t4
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa6
	fsub.d	$fa4, $fa4, $ft0
	fmul.d	$fa5, $fa4, $fa2
	vldx	$vr8, $a4, $t4
	fldx.d	$fa4, $a4, $t4
	vldx	$vr10, $t0, $t4
	vldx	$vr11, $s2, $t4
	fldx.d	$fa6, $s2, $t4
	vpackod.d	$vr12, $vr9, $vr8
	vpackev.d	$vr13, $vr10, $vr8
	vshuf4i.d	$vr8, $vr7, 12
	vldx	$vr14, $s4, $t4
	vfadd.d	$vr8, $vr12, $vr8
	vpackev.d	$vr7, $vr7, $vr11
	vfsub.d	$vr7, $vr8, $vr7
	vpackev.d	$vr8, $vr14, $vr11
	vshuf4i.d	$vr11, $vr9, 9
	vfsub.d	$vr7, $vr7, $vr11
	vfmul.d	$vr7, $vr7, $vr3
	vldx	$vr9, $a7, $t4
	fldx.d	$ft7, $a6, $t4
	fldx.d	$ft8, $a7, $t4
	fldx.d	$ft9, $s3, $t4
	fldx.d	$ft10, $a5, $t4
	vldx	$vr19, $s3, $t4
	fadd.d	$ft7, $ft7, $ft8
	fsub.d	$ft7, $ft7, $ft9
	fsub.d	$ft7, $ft7, $ft10
	fmul.d	$ft7, $ft7, $fa2
	fldx.d	$ft8, $t0, $t4
	fldx.d	$ft9, $s4, $t4
	vshuf4i.d	$vr11, $vr14, 12
	vshuf4i.d	$vr12, $vr10, 12
	vfadd.d	$vr12, $vr11, $vr12
	vfsub.d	$vr13, $vr12, $vr13
	vfsub.d	$vr13, $vr13, $vr8
	vpackod.d	$vr14, $vr10, $vr19
	vori.b	$vr18, $vr9, 0
	vshuf4i.d	$vr18, $vr10, 9
	vfadd.d	$vr10, $vr14, $vr18
	vshuf4i.d	$vr9, $vr8, 12
	vfsub.d	$vr8, $vr10, $vr9
	vshuf4i.d	$vr19, $vr11, 12
	vfsub.d	$vr8, $vr8, $vr19
	vfmul.d	$vr8, $vr8, $vr3
	vfmul.d	$vr9, $vr13, $vr0
	vreplvei.d	$vr10, $vr9, 0
	fmul.d	$ft2, $fa5, $ft2
	vreplvei.d	$vr11, $vr7, 0
	vreplvei.d	$vr13, $vr7, 1
	fmadd.d	$ft2, $ft5, $ft3, $ft2
	fadd.d	$ft2, $ft2, $fa1
	frecip.d	$ft2, $ft2
	fneg.d	$fa5, $fa5
	vextrins.d	$vr15, $vr5, 16
	vfmul.d	$vr5, $vr9, $vr15
	vfmadd.d	$vr5, $vr8, $vr7, $vr5
	vreplvei.d	$vr7, $vr10, 0
	vfmul.d	$vr5, $vr7, $vr5
	vreplvei.d	$vr7, $vr12, 1
	fadd.d	$fa7, $fa7, $ft8
	fadd.d	$fa7, $fa7, $ft9
	vreplvei.d	$vr8, $vr12, 0
	fadd.d	$fa4, $ft0, $fa4
	fadd.d	$fa4, $fa4, $fa6
	fdiv.d	$fa4, $fa7, $fa4
	vreplvei.d	$vr6, $vr5, 0
	vreplvei.d	$vr5, $vr5, 1
	fadd.d	$fa5, $fa6, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fstx.d	$fa4, $s0, $t4
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB3_6
# %bb.7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s5, $s5, -1
	bnez	$s5, .LBB3_5
.LBB3_8:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp7:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.9:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB3_11
# %bb.10:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_11:                               # %_ZN7ADomainD2Ev.exit
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
	ret
.LBB3_12:
.Ltmp9:                                 # EH_LABEL
	ld.d	$a1, $sp, 80
	move	$fp, $a0
	beqz	$a1, .LBB3_14
# %bb.13:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %_ZN7ADomainD2Ev.exit142
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE, .Lfunc_end3-_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp8             #   Call between .Ltmp8 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL13BM_COUPLE_RAWRN9benchmark5StateE
.LCPI4_0:
	.dword	0x406e56fd83ba6863              # double 242.71844660194174
.LCPI4_1:
	.dword	0x38e09d8792fb4c49              # double 9.9999999999999992E-35
.LCPI4_2:
	.dword	0x3fca9fbe76c8b439              # double 0.20799999999999999
	.text
	.p2align	5
	.type	_ZL13BM_COUPLE_RAWRN9benchmark5StateE,@function
_ZL13BM_COUPLE_RAWRN9benchmark5StateE:  # @_ZL13BM_COUPLE_RAWRN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -544
	.cfi_def_cfa_offset 544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 432                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 392                  # 8-byte Folded Spill
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
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 192
	ld.d	$s1, $s0, 200
	ld.d	$a0, $s7, 32
	ld.d	$s2, $s0, 208
	ld.d	$s3, $s0, 216
	ld.d	$s0, $s0, 224
	ld.w	$a1, $a0, 0
	addi.d	$a0, $sp, 304
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZN7ADomainC2Eii)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 316
	ld.w	$s5, $sp, 328
	ld.w	$a0, $sp, 320
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 332
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 324
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 336
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.w	$s6, $s7, 28
	ld.d	$s8, $s7, 16
.Ltmp10:                                # EH_LABEL
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s6, .LBB4_47
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s8, .LBB4_47
# %bb.3:                                # %.preheader350.lr.ph
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_47
# %bb.4:                                # %.preheader350.lr.ph
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_47
# %bb.5:                                # %.preheader350.lr.ph
	bge	$s4, $s5, .LBB4_47
# %bb.6:                                # %.preheader350.us.us.us.preheader
	addi.w	$a0, $s5, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a1, $a3, 2
	addi.w	$a2, $s5, 1
	addi.w	$a3, $a3, 1
	sub.d	$a4, $s5, $s4
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a4, $a6, $a1
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	slli.d	$a4, $a4, 4
	alsl.d	$a4, $s4, $a4, 4
	add.d	$a4, $a4, $s3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	mulw.d.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 4
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	mul.d	$a0, $a6, $a3
	add.d	$a0, $a0, $a5
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s4
	slli.d	$a0, $a0, 4
	addi.d	$a0, $a0, 8
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	mulw.d.w	$a1, $a3, $a2
	slli.d	$a1, $a1, 4
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $a2, 4
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	add.d	$a1, $s1, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %._crit_edge.split.us.split.us.us.us.us
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s8, $s8, -1
	beqz	$s8, .LBB4_47
.LBB4_8:                                # %.preheader350.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_13 Depth 4
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %._crit_edge354.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_10 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	add.d	$s6, $s6, $a0
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a0
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB4_7
.LBB4_10:                               # %.preheader.us.us.us.us.us
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_13 Depth 4
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=3
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$s6, $s6, $a0
	add.d	$s8, $s8, $a0
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB4_9
.LBB4_12:                               # %.lr.ph.us.us.us.us.us.us
                                        #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_13 Depth 4
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	move	$s3, $s8
	move	$s0, $s6
	move	$s7, $s1
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_13:                               #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $s7, -8
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	fld.d	$fa2, $s7, 0
	fld.d	$fa3, $s3, -8
	fld.d	$fa4, $s3, 0
	fmul.d	$fs1, $fa0, $fa1
	fmul.d	$fs2, $fa2, $fa1
	fmul.d	$fs3, $fa3, $fa1
	fmul.d	$fs6, $fa4, $fa1
	fmul.d	$fa0, $fs2, $fs2
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	fmadd.d	$fa0, $fs3, $fs3, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI4_2)
	fmadd.d	$fa0, $fs6, $fs6, $fa0
	fadd.d	$fs4, $fa0, $fa1
	fsqrt.d	$fa0, $fs4
	fmul.d	$fa0, $fa0, $fa2
	vldi	$vr1, -928
	fmul.d	$fs0, $fa0, $fa1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 296                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$ft2, $fp, -8
	fld.d	$ft3, $fp, 0
	fld.d	$ft6, $s4, -8
	fld.d	$ft7, $s4, 0
	fld.d	$fa7, $s0, -8
	fld.d	$ft0, $s0, 0
	frsqrt.d	$fs0, $fs4
	fmul.d	$fs1, $fs1, $fs0
	fmul.d	$fs7, $fs2, $fs0
	fmul.d	$fa1, $ft6, $fs1
	fmul.d	$fa2, $ft7, $fs7
	fmul.d	$fa3, $ft7, $fs1
	fmul.d	$fa4, $ft6, $fs7
	fsub.d	$ft4, $fa1, $fa2
	fadd.d	$ft5, $fa4, $fa3
	fcmp.cor.d	$fcc1, $ft4, $ft4
	fmov.d	$fs4, $ft4
	fmov.d	$fs2, $ft5
	bceqz	$fcc1, .LBB4_25
.LBB4_14:                               #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fs5, $fs3, $fs0
	fmul.d	$fs0, $fs6, $fs0
	fmul.d	$fa1, $fs5, $fa7
	fmul.d	$fa2, $fs0, $ft0
	fmul.d	$fa3, $fs5, $ft0
	fmul.d	$fa4, $fs0, $fa7
	fsub.d	$fs6, $fa1, $fa2
	fadd.d	$fs3, $fa4, $fa3
	fcmp.cor.d	$fcc2, $fs6, $fs6
	fmov.d	$fa2, $fs6
	fmov.d	$fa1, $fs3
	bceqz	$fcc2, .LBB4_27
.LBB4_15:                               #   in Loop: Header=BB4_13 Depth=4
	fadd.d	$fa2, $fs4, $fa2
	fadd.d	$fa1, $fs2, $fa1
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmul.d	$fa2, $ft1, $fa2
	fmul.d	$fa3, $ft1, $fa1
	movgr2fr.d	$fs2, $zero
	fmul.d	$fa1, $fa2, $fs2
	fmul.d	$fa5, $fa3, $fs2
	fsub.d	$fa4, $fa1, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa1, $fa2, $fa5
	bceqz	$fcc0, .LBB4_29
.LBB4_16:                               #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $fa0, $ft2
	fmul.d	$fa3, $fa0, $ft3
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa2, $fp, -8
	fst.d	$fa1, $fp, 0
	bceqz	$fcc2, .LBB4_31
.LBB4_17:                               #   in Loop: Header=BB4_13 Depth=4
	fneg.d	$fa4, $fs7
	fmul.d	$fa1, $fs1, $fs6
	fmul.d	$fa2, $fs1, $fs3
	fmul.d	$fa3, $fs7, $fs3
	fadd.d	$fs4, $fa1, $fa3
	fmul.d	$fa1, $fs7, $fs6
	fcmp.cor.d	$fcc0, $fs4, $fs4
	fsub.d	$fa6, $fa2, $fa1
	bceqz	$fcc0, .LBB4_33
.LBB4_18:                               #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa1, $ft2, $fs1
	fmul.d	$fa3, $ft3, $fs1
	fmul.d	$fa2, $ft3, $fs7
	fadd.d	$fa2, $fa1, $fa2
	fmul.d	$fa1, $ft2, $fs7
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fsub.d	$fa1, $fa3, $fa1
	bceqz	$fcc0, .LBB4_35
.LBB4_19:                               #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $ft1, $fa2
	fmul.d	$fa3, $ft1, $fa1
	fmul.d	$fa1, $fa2, $fs2
	fmul.d	$fa5, $fa3, $fs2
	fsub.d	$fa4, $fa1, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa1, $fa2, $fa5
	bceqz	$fcc0, .LBB4_37
.LBB4_20:                               #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $fs7, $fs7
	fmadd.d	$ft8, $fs1, $fs1, $fa2
	fmul.d	$fa2, $fs0, $fs0
	fmadd.d	$fs3, $fs5, $fs5, $fa2
	fmadd.d	$fa2, $ft8, $fa0, $fs3
	vldi	$vr3, -784
	fadd.d	$fs6, $fa0, $fa3
	fmul.d	$fa3, $fs6, $fs4
	fmul.d	$fa5, $fs6, $fa6
	fmul.d	$fa6, $ft6, $fa2
	fmul.d	$fa2, $ft7, $fa2
	fadd.d	$fa3, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa5
	fsub.d	$fa3, $fa3, $fa4
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa3, $s4, -8
	fst.d	$fa1, $s4, 0
	bceqz	$fcc1, .LBB4_39
.LBB4_21:                               #   in Loop: Header=BB4_13 Depth=4
	fneg.d	$fs4, $fs0
	fmul.d	$fa1, $fs5, $ft4
	fmul.d	$fa2, $fs5, $ft5
	fmul.d	$fa3, $fs0, $ft5
	fadd.d	$fs1, $fa1, $fa3
	fmul.d	$fa1, $fs0, $ft4
	fcmp.cor.d	$fcc0, $fs1, $fs1
	fsub.d	$fs7, $fa2, $fa1
	bceqz	$fcc0, .LBB4_41
.LBB4_22:                               #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa1, $ft2, $fs5
	fmul.d	$fa3, $ft3, $fs5
	fmul.d	$fa2, $ft3, $fs0
	fadd.d	$fa2, $fa1, $fa2
	fmul.d	$fa1, $ft2, $fs0
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fsub.d	$fa1, $fa3, $fa1
	bceqz	$fcc0, .LBB4_43
.LBB4_23:                               #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $ft1, $fa2
	fmul.d	$fa3, $ft1, $fa1
	fmul.d	$fa1, $fa2, $fs2
	fmul.d	$fa5, $fa3, $fs2
	fsub.d	$fa4, $fa1, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa1, $fa2, $fa5
	bceqz	$fcc0, .LBB4_45
.LBB4_24:                               #   in Loop: Header=BB4_13 Depth=4
	fmadd.d	$fa0, $fs3, $fa0, $ft8
	fmul.d	$fa2, $fs6, $fs1
	fmul.d	$fa3, $fs6, $fs7
	fmul.d	$fa5, $fa7, $fa0
	fmul.d	$fa0, $ft0, $fa0
	fadd.d	$fa2, $fa5, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa2, $s0, -8
	fst.d	$fa0, $s0, 0
	addi.w	$s5, $s5, -1
	addi.d	$s7, $s7, 16
	addi.d	$s0, $s0, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	addi.d	$fp, $fp, 16
	bnez	$s5, .LBB4_13
	b	.LBB4_11
.LBB4_25:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $ft5, $ft5
	fmov.d	$fs4, $ft4
	fmov.d	$fs2, $ft5
	bcnez	$fcc0, .LBB4_14
# %bb.26:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs7
	fmov.d	$fa2, $ft6
	fmov.d	$fa3, $ft7
	fst.d	$fa7, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fs5, $ft0
	fst.d	$ft2, $sp, 48                   # 8-byte Folded Spill
	fmov.d	$fs2, $ft3
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fs4, $ft5
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fmov.d	$ft5, $fs4
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fmov.d	$ft3, $fs2
	fld.d	$ft2, $sp, 48                   # 8-byte Folded Reload
	fmov.d	$ft0, $fs5
	fld.d	$fa7, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fs4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fs2, $fa1
	b	.LBB4_14
.LBB4_27:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fs3, $fs3
	fmov.d	$fa2, $fs6
	fmov.d	$fa1, $fs3
	bcnez	$fcc0, .LBB4_15
# %bb.28:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fa7
	fmov.d	$fa3, $ft0
	fst.d	$fa7, $sp, 32                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	movcf2gr	$a0, $fcc2
	st.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc2, $a0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft0, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_15
.LBB4_29:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_16
# %bb.30:                               #   in Loop: Header=BB4_13 Depth=4
	movgr2fr.d	$fa4, $zero
	vldi	$vr1, -912
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fa4
	fst.d	$fa7, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fs4, $ft0
	fst.d	$ft2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	movcf2gr	$a0, $fcc2
	st.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc2, $a0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs4
	fld.d	$fa7, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fa4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_16
.LBB4_31:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fs3, $fs3
	bcnez	$fcc0, .LBB4_17
# %bb.32:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fa7
	fmov.d	$fa3, $ft0
	fmov.d	$fs4, $fa7
	fmov.d	$fs6, $ft0
	fmov.d	$fs3, $ft2
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fmov.d	$ft2, $fs3
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs6
	fmov.d	$fa7, $fs4
	fmov.d	$fs6, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fs3, $fa1
	b	.LBB4_17
.LBB4_33:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa6, $fa6
	bcnez	$fcc0, .LBB4_18
# %bb.34:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fa4
	fmov.d	$fa2, $fs6
	fmov.d	$fa3, $fs3
	fmov.d	$fs3, $fa7
	fmov.d	$fs4, $ft0
	fmov.d	$fs6, $ft2
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	fst.d	$fa4, $sp, 48                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 48                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fmov.d	$ft2, $fs6
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs4
	fmov.d	$fa7, $fs3
	fmov.d	$fs4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fa6, $fa1
	b	.LBB4_18
.LBB4_35:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_19
# %bb.36:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fa4
	fmov.d	$fa2, $ft2
	fmov.d	$fa3, $ft3
	fmov.d	$fs6, $fa7
	fmov.d	$fs3, $ft0
	fst.d	$ft2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	fst.d	$fa6, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$fa6, $sp, 32                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs3
	fmov.d	$fa7, $fs6
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_19
.LBB4_37:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_20
# %bb.38:                               #   in Loop: Header=BB4_13 Depth=4
	movgr2fr.d	$fa4, $zero
	vldi	$vr1, -912
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fa4
	fmov.d	$fs6, $fa7
	fmov.d	$fs3, $ft0
	fst.d	$ft2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	fst.d	$fa6, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$fa6, $sp, 32                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs3
	fmov.d	$fa7, $fs6
	fmov.d	$fa4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_20
.LBB4_39:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $ft5, $ft5
	bcnez	$fcc0, .LBB4_21
# %bb.40:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs7
	fmov.d	$fa2, $ft6
	fmov.d	$fa3, $ft7
	fmov.d	$fs1, $fa7
	fmov.d	$fs7, $ft0
	fmov.d	$fs4, $ft2
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$ft8, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fmov.d	$ft2, $fs4
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs7
	fmov.d	$fa7, $fs1
	fmov.d	$ft4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$ft5, $fa1
	b	.LBB4_21
.LBB4_41:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fs7, $fs7
	bcnez	$fcc0, .LBB4_22
# %bb.42:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $ft4
	fmov.d	$fa3, $ft5
	fmov.d	$fs1, $fa7
	fmov.d	$fs7, $ft0
	fst.d	$ft2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$ft8, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs7
	fmov.d	$fa7, $fs1
	fmov.d	$fs1, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fs7, $fa1
	b	.LBB4_22
.LBB4_43:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_23
# %bb.44:                               #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $ft2
	fmov.d	$fa3, $ft3
	fmov.d	$fs4, $fa7
	fmov.d	$fs5, $ft0
	fmov.d	$fs0, $ft8
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$ft8, $fs0
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs5
	fmov.d	$fa7, $fs4
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_23
.LBB4_45:                               #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_24
# %bb.46:                               #   in Loop: Header=BB4_13 Depth=4
	movgr2fr.d	$fa4, $zero
	vldi	$vr1, -912
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa4
	fmov.d	$fs2, $fa7
	fmov.d	$fs4, $ft0
	fmov.d	$fs5, $ft8
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$ft8, $fs5
	fmov.d	$ft0, $fs4
	fmov.d	$fa7, $fs2
	fmov.d	$fa4, $fa0
	fmov.d	$fa0, $fs0
	b	.LBB4_24
.LBB4_47:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp12:                                # EH_LABEL
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.48:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 376
	beqz	$a0, .LBB4_50
# %bb.49:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_50:                               # %_ZN7ADomainD2Ev.exit
	fld.d	$fs7, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 424                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB4_51:
.Ltmp14:                                # EH_LABEL
	ld.d	$a1, $sp, 376
	move	$fp, $a0
	beqz	$a1, .LBB4_53
# %bb.52:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_53:                               # %_ZN7ADomainD2Ev.exit239
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZL13BM_COUPLE_RAWRN9benchmark5StateE, .Lfunc_end4-_ZL13BM_COUPLE_RAWRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL10BM_FIR_RAWRN9benchmark5StateE
	.type	_ZL10BM_FIR_RAWRN9benchmark5StateE,@function
_ZL10BM_FIR_RAWRN9benchmark5StateE:     # @_ZL10BM_FIR_RAWRN9benchmark5StateE
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
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.w	$s3, $a0, 0
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB5_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB5_12
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.w	$a0, $s3, -16
	blez	$a0, .LBB5_12
# %bb.3:                                # %.preheader34.us.preheader
	alsl.d	$a1, $a0, $s1, 3
	alsl.d	$a2, $a0, $s2, 3
	addi.d	$a2, $a2, 120
	sltu	$a2, $s1, $a2
	sltu	$a1, $s2, $a1
	and	$a3, $a2, $a1
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $s2, 64
	sltui	$a4, $a0, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 1
	vldi	$vr0, -1016
	movgr2fr.d	$fa1, $zero
	ori	$a4, $zero, 0
	lu32i.d	$a4, -524288
	lu52i.d	$a4, $a4, 1024
	xvreplgr2vr.d	$xr2, $a4
	xvrepli.b	$xr3, 0
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB5_12
.LBB5_5:                                # %.preheader34.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
	beqz	$a3, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	move	$a6, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a4, $s1
	move	$a5, $a1
	move	$a6, $a2
	.p2align	4, , 16
.LBB5_8:                                # %vector.body
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $a6, -64
	xvld	$xr5, $a6, -56
	xvld	$xr6, $a6, -48
	xvfmadd.d	$xr4, $xr4, $xr2, $xr3
	xvld	$xr7, $a6, -40
	xvfsub.d	$xr4, $xr4, $xr5
	xvfsub.d	$xr4, $xr4, $xr6
	xvld	$xr5, $a6, -32
	xvfsub.d	$xr4, $xr4, $xr7
	xvld	$xr6, $a6, -24
	xvld	$xr7, $a6, -16
	xvfsub.d	$xr4, $xr4, $xr5
	xvld	$xr5, $a6, -8
	xvfmadd.d	$xr4, $xr6, $xr2, $xr4
	xvfsub.d	$xr4, $xr4, $xr7
	xvld	$xr6, $a6, 0
	xvfsub.d	$xr4, $xr4, $xr5
	xvld	$xr5, $a6, 8
	xvld	$xr7, $a6, 16
	xvfsub.d	$xr4, $xr4, $xr6
	xvld	$xr6, $a6, 24
	xvfsub.d	$xr4, $xr4, $xr5
	xvfmadd.d	$xr4, $xr7, $xr2, $xr4
	xvld	$xr5, $a6, 32
	xvfsub.d	$xr4, $xr4, $xr6
	xvld	$xr6, $a6, 40
	xvld	$xr7, $a6, 48
	xvfsub.d	$xr4, $xr4, $xr5
	xvld	$xr5, $a6, 56
	xvfsub.d	$xr4, $xr4, $xr6
	xvfsub.d	$xr4, $xr4, $xr7
	addi.d	$a6, $a6, 32
	xvfmadd.d	$xr4, $xr5, $xr2, $xr4
	xvst	$xr4, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a6, $a1
	beq	$a1, $a0, .LBB5_4
.LBB5_10:                               # %.preheader.us.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	alsl.d	$a4, $a6, $s1, 3
	sub.d	$a5, $a0, $a6
	alsl.d	$a6, $a6, $a2, 3
	.p2align	4, , 16
.LBB5_11:                               # %.preheader.us
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa4, $a6, -64
	fld.d	$fa5, $a6, -56
	fld.d	$fa6, $a6, -48
	fmadd.d	$fa4, $fa4, $fa0, $fa1
	fld.d	$fa7, $a6, -40
	fsub.d	$fa4, $fa4, $fa5
	fsub.d	$fa4, $fa4, $fa6
	fld.d	$fa5, $a6, -32
	fsub.d	$fa4, $fa4, $fa7
	fld.d	$fa6, $a6, -24
	fld.d	$fa7, $a6, -16
	fsub.d	$fa4, $fa4, $fa5
	fld.d	$fa5, $a6, -8
	fmadd.d	$fa4, $fa6, $fa0, $fa4
	fsub.d	$fa4, $fa4, $fa7
	fld.d	$fa6, $a6, 0
	fsub.d	$fa4, $fa4, $fa5
	fld.d	$fa5, $a6, 8
	fld.d	$fa7, $a6, 16
	fsub.d	$fa4, $fa4, $fa6
	fld.d	$fa6, $a6, 24
	fsub.d	$fa4, $fa4, $fa5
	fmadd.d	$fa4, $fa7, $fa0, $fa4
	fld.d	$fa5, $a6, 32
	fsub.d	$fa4, $fa4, $fa6
	fld.d	$fa6, $a6, 40
	fld.d	$fa7, $a6, 48
	fsub.d	$fa4, $fa4, $fa5
	fld.d	$fa5, $a6, 56
	fsub.d	$fa4, $fa4, $fa6
	fsub.d	$fa4, $fa4, $fa7
	addi.d	$a6, $a6, 8
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fst.d	$fa4, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB5_11
	b	.LBB5_4
.LBB5_12:                               # %._crit_edge40
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
.Lfunc_end5:
	.size	_ZL10BM_FIR_RAWRN9benchmark5StateE, .Lfunc_end5-_ZL10BM_FIR_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7ADomainC2Eii
.LCPI6_0:
	.dword	0x4050000000000000              # double 64
.LCPI6_1:
	.dword	0x4063800000000000              # double 156
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI6_2:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.section	.text._ZN7ADomainC2Eii,"axG",@progbits,_ZN7ADomainC2Eii,comdat
	.weak	_ZN7ADomainC2Eii
	.p2align	5
	.type	_ZN7ADomainC2Eii,@function
_ZN7ADomainC2Eii:                       # @_ZN7ADomainC2Eii
	.cfi_startproc
# %bb.0:
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
	move	$s1, $a2
	move	$fp, $a0
	st.w	$a2, $a0, 0
	ori	$a0, $zero, 2
	ori	$a2, $zero, 2
	lu32i.d	$a2, 1
	st.d	$a2, $fp, 4
	beq	$a1, $a0, .LBB6_9
# %bb.1:
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB6_6
# %bb.2:
                                        # implicit-def: $r29
	bnez	$a1, .LBB6_17
# %bb.3:
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB6_14
# %bb.4:
	ori	$a0, $zero, 2
                                        # implicit-def: $r29
	bne	$s1, $a0, .LBB6_17
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI6_1)
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB6_16
.LBB6_6:
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB6_12
# %bb.7:
	ori	$a0, $zero, 2
                                        # implicit-def: $r29
	bne	$s1, $a0, .LBB6_17
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI6_0)
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB6_16
.LBB6_9:
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB6_13
# %bb.10:
	ori	$a0, $zero, 2
                                        # implicit-def: $r29
	bne	$s1, $a0, .LBB6_17
# %bb.11:
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -992
	b	.LBB6_15
.LBB6_12:
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -976
	b	.LBB6_15
.LBB6_13:
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -1008
	b	.LBB6_15
.LBB6_14:
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -964
.LBB6_15:
	fmul.d	$fa0, $fa0, $fa1
.LBB6_16:
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
.LBB6_17:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 2
	st.d	$a1, $fp, 12
	addi.d	$s3, $s6, 1
	st.w	$s3, $fp, 24
	st.w	$s3, $fp, 28
	addi.w	$s4, $s6, 3
	st.w	$s4, $fp, 36
	bne	$s1, $a0, .LBB6_19
# %bb.18:
	move	$s5, $zero
	st.w	$zero, $fp, 20
	st.w	$zero, $fp, 32
	st.w	$zero, $fp, 40
	mul.w	$s7, $s4, $s4
	b	.LBB6_21
.LBB6_19:
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB6_22
# %bb.20:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 20
	st.w	$s3, $fp, 32
	mul.d	$s5, $s4, $s4
	st.w	$s5, $fp, 40
	mul.w	$s7, $s5, $s4
.LBB6_21:
	st.w	$s7, $fp, 44
	b	.LBB6_23
.LBB6_22:                               # %._crit_edge89
	ld.w	$s7, $fp, 44
	ld.w	$s5, $fp, 40
.LBB6_23:
	st.w	$zero, $fp, 48
	addi.d	$a0, $s7, -1
	st.w	$a0, $fp, 52
	add.d	$a1, $s5, $s4
	slli.d	$a2, $a1, 1
	addi.d	$a2, $a2, 2
	st.w	$a2, $fp, 56
	nor	$a1, $a1, $zero
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, 60
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 64
	st.w	$a0, $fp, 68
	slti	$a0, $s7, 0
	slli.d	$s2, $s7, 2
	masknez	$a1, $s2, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 72
	blez	$s7, .LBB6_25
# %bb.24:                               # %.lr.ph.preheader
	ori	$a1, $zero, 255
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_25:                               # %._crit_edge
	ori	$a0, $zero, 2
	st.w	$zero, $fp, 80
	bne	$s1, $a0, .LBB6_36
# %bb.26:                               # %.preheader
	addi.w	$a1, $s6, 0
	blt	$a1, $a0, .LBB6_51
# %bb.27:                               # %.lr.ph72.us.preheader
	move	$a0, $zero
	addi.d	$a4, $s6, -1
	bstrpick.d	$a2, $a4, 31, 0
	bstrpick.d	$a3, $a4, 31, 4
	slli.d	$a3, $a3, 4
	srli.d	$a5, $a4, 4
	ori	$t1, $zero, 2
	ori	$a4, $zero, 2
	bstrins.d	$a4, $a5, 31, 4
	addi.d	$a5, $s0, 32
	pcalau12i	$a6, %pc_hi20(.LCPI6_2)
	xvld	$xr0, $a6, %pc_lo12(.LCPI6_2)
	ori	$a6, $zero, 6
	alsl.w	$a6, $s6, $a6, 1
	ori	$a7, $zero, 17
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %._crit_edge73.us
                                        #   in Loop: Header=BB6_29 Depth=1
	addi.w	$t1, $t0, 1
	add.d	$a6, $a6, $s4
	beq	$t0, $a1, .LBB6_50
.LBB6_29:                               # %.lr.ph72.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_32 Depth 2
                                        #     Child Loop BB6_35 Depth 2
	move	$t0, $t1
	addi.w	$t1, $a0, 0
	bgeu	$a1, $a7, .LBB6_31
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=1
	move	$a0, $t1
	ori	$t3, $zero, 2
	b	.LBB6_34
	.p2align	4, , 16
.LBB6_31:                               # %vector.ph106
                                        #   in Loop: Header=BB6_29 Depth=1
	mul.d	$t2, $s4, $t0
	add.d	$a0, $t1, $a3
	xvreplgr2vr.w	$xr1, $t2
	xvaddi.wu	$xr2, $xr1, 8
	alsl.d	$t1, $t1, $a5, 2
	move	$t2, $a3
	xvori.b	$xr3, $xr0, 0
	.p2align	4, , 16
.LBB6_32:                               # %vector.body112
                                        #   Parent Loop BB6_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.w	$xr4, $xr1, $xr3
	xvadd.w	$xr5, $xr3, $xr2
	xvst	$xr4, $t1, -32
	xvst	$xr5, $t1, 0
	xvaddi.wu	$xr3, $xr3, 16
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB6_32
# %bb.33:                               # %middle.block119
                                        #   in Loop: Header=BB6_29 Depth=1
	move	$t3, $a4
	beq	$a3, $a2, .LBB6_28
.LBB6_34:                               # %scalar.ph104.preheader
                                        #   in Loop: Header=BB6_29 Depth=1
	alsl.d	$t1, $a0, $s0, 2
	sub.d	$t2, $s3, $t3
	add.d	$t3, $t3, $a6
	.p2align	4, , 16
.LBB6_35:                               # %scalar.ph104
                                        #   Parent Loop BB6_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t3, $t1, 0
	addi.d	$a0, $a0, 1
	addi.d	$t1, $t1, 4
	addi.w	$t2, $t2, -1
	addi.d	$t3, $t3, 1
	bnez	$t2, .LBB6_35
	b	.LBB6_28
.LBB6_36:
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB6_51
# %bb.37:
	ld.w	$a1, $fp, 20
	ld.w	$a2, $fp, 32
	bge	$a1, $a2, .LBB6_51
# %bb.38:
	addi.w	$a3, $s6, 0
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB6_51
# %bb.39:                               # %.lr.ph57.us.us.preheader
	move	$a0, $zero
	addi.d	$a7, $s6, -1
	bstrpick.d	$a5, $a7, 31, 0
	bstrpick.d	$a6, $a7, 31, 4
	slli.d	$a6, $a6, 4
	srli.d	$a7, $a7, 4
	bstrins.d	$a4, $a7, 31, 4
	addi.d	$a7, $s0, 32
	mul.d	$t0, $s5, $a1
	alsl.d	$t0, $s6, $t0, 1
	addi.d	$t0, $t0, 6
	ori	$t1, $zero, 17
	b	.LBB6_41
	.p2align	4, , 16
.LBB6_40:                               # %._crit_edge58.split.us.us.us
                                        #   in Loop: Header=BB6_41 Depth=1
	addi.w	$a1, $a1, 1
	add.d	$t0, $t0, $s5
	beq	$a1, $a2, .LBB6_50
.LBB6_41:                               # %.lr.ph57.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
                                        #       Child Loop BB6_46 Depth 3
                                        #       Child Loop BB6_49 Depth 3
	mul.d	$t2, $s5, $a1
	ori	$t5, $zero, 2
	move	$t3, $t0
	b	.LBB6_43
	.p2align	4, , 16
.LBB6_42:                               # %._crit_edge50.us.us.us
                                        #   in Loop: Header=BB6_43 Depth=2
	addi.w	$t5, $t4, 1
	add.d	$t3, $t3, $s4
	beq	$t4, $a3, .LBB6_40
.LBB6_43:                               # %.lr.ph49.us.us.us
                                        #   Parent Loop BB6_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_46 Depth 3
                                        #       Child Loop BB6_49 Depth 3
	move	$t4, $t5
	addi.w	$t5, $a0, 0
	bgeu	$a3, $t1, .LBB6_45
# %bb.44:                               #   in Loop: Header=BB6_43 Depth=2
	move	$a0, $t5
	ori	$t7, $zero, 2
	b	.LBB6_48
	.p2align	4, , 16
.LBB6_45:                               # %vector.ph
                                        #   in Loop: Header=BB6_43 Depth=2
	mul.d	$a0, $s4, $t4
	add.d	$t6, $a0, $t2
	add.d	$a0, $t5, $a6
	pcalau12i	$t7, %pc_hi20(.LCPI6_2)
	xvld	$xr0, $t7, %pc_lo12(.LCPI6_2)
	xvreplgr2vr.w	$xr1, $t6
	xvaddi.wu	$xr2, $xr1, 8
	alsl.d	$t5, $t5, $a7, 2
	move	$t6, $a6
	.p2align	4, , 16
.LBB6_46:                               # %vector.body
                                        #   Parent Loop BB6_41 Depth=1
                                        #     Parent Loop BB6_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvadd.w	$xr3, $xr0, $xr1
	xvadd.w	$xr4, $xr0, $xr2
	xvst	$xr3, $t5, -32
	xvst	$xr4, $t5, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t6, $t6, -16
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB6_46
# %bb.47:                               # %middle.block
                                        #   in Loop: Header=BB6_43 Depth=2
	move	$t7, $a4
	beq	$a6, $a5, .LBB6_42
.LBB6_48:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB6_43 Depth=2
	alsl.d	$t5, $a0, $s0, 2
	sub.d	$t6, $s3, $t7
	add.d	$t7, $t7, $t3
	.p2align	4, , 16
.LBB6_49:                               # %scalar.ph
                                        #   Parent Loop BB6_41 Depth=1
                                        #     Parent Loop BB6_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$t7, $t5, 0
	addi.d	$a0, $a0, 1
	addi.d	$t5, $t5, 4
	addi.w	$t6, $t6, -1
	addi.d	$t7, $t7, 1
	bnez	$t6, .LBB6_49
	b	.LBB6_42
.LBB6_50:                               # %.loopexit.sink.split
	st.w	$a0, $fp, 80
.LBB6_51:                               # %.loopexit
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
	ret
.Lfunc_end6:
	.size	_ZN7ADomainC2Eii, .Lfunc_end6-_ZN7ADomainC2Eii
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_RawSubsetAbenchmarks.cxx
	.type	_GLOBAL__sub_I_RawSubsetAbenchmarks.cxx,@function
_GLOBAL__sub_I_RawSubsetAbenchmarks.cxx: # @_GLOBAL__sub_I_RawSubsetAbenchmarks.cxx
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 8
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp18:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s4, $a0, 16
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp20:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.3:
.Ltmp22:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.4:
.Ltmp24:                                # EH_LABEL
	lu12i.w	$a1, 1
	ori	$s0, $a1, 905
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.5:
.Ltmp26:                                # EH_LABEL
	lu12i.w	$a1, 10
	ori	$s1, $a1, 3257
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.6:
.Ltmp28:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.7:
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 8
.Ltmp31:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.10:                               # %.noexc.i4
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp34:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.11:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp36:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.12:
.Ltmp38:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.13:
.Ltmp40:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.14:
.Ltmp42:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.15:
.Ltmp44:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.16:
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_18:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 8
.Ltmp47:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.19:                               # %.noexc.i13
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp50:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.20:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp52:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.21:
.Ltmp54:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.22:
.Ltmp56:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.23:
.Ltmp58:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.24:
.Ltmp60:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.25:
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_27:                               # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 8
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.28:                               # %.noexc.i22
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp66:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.29:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp68:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.30:
.Ltmp70:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.31:
.Ltmp72:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.32:
.Ltmp74:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.33:
.Ltmp76:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.34:
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_36
# %bb.35:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_36:                               # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 37
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 45
	ori	$s5, $zero, 1
.Ltmp79:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.37:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_COUPLE_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL13BM_COUPLE_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp81:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.38:
.Ltmp83:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.39:
.Ltmp85:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.40:
.Ltmp87:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.41:
.Ltmp89:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.42:
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_44
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_44:                               # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	st.d	$a1, $sp, 32
	st.h	$a0, $sp, 40
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 42
	ori	$s2, $zero, 1
.Ltmp92:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.45:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL10BM_FIR_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL10BM_FIR_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp94:                                # EH_LABEL
	move	$s2, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.46:
.Ltmp96:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.47:
.Ltmp98:                                # EH_LABEL
	move	$s2, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.48:
.Ltmp100:                               # EH_LABEL
	move	$s2, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.49:
.Ltmp102:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.50:
	move	$s0, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_52:                               # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
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
.LBB7_53:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19
.Ltmp65:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_65
.LBB7_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10
.Ltmp49:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_65
.LBB7_55:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_65
.LBB7_56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp17:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_65
.LBB7_57:
.Ltmp104:                               # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_59
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i35
	bnez	$s2, .LBB7_65
	b	.LBB7_66
.LBB7_59:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB7_65
	b	.LBB7_66
.LBB7_60:
.Ltmp91:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_64
	b	.LBB7_68
.LBB7_61:
.Ltmp78:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_64
	b	.LBB7_68
.LBB7_62:
.Ltmp62:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_64
	b	.LBB7_68
.LBB7_63:
.Ltmp46:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	beq	$a1, $s3, .LBB7_68
.LBB7_64:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB7_66
.LBB7_65:                               # %common.resume.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_66:                               # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_67:
.Ltmp30:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_64
.LBB7_68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s5, .LBB7_66
	b	.LBB7_65
.Lfunc_end7:
	.size	_GLOBAL__sub_I_RawSubsetAbenchmarks.cxx, .Lfunc_end7-_GLOBAL__sub_I_RawSubsetAbenchmarks.cxx
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin3          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp18                #   Call between .Ltmp18 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin3          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp29                #   Call between .Ltmp29 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin3          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp45-.Ltmp34                #   Call between .Ltmp34 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin3          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin3          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp61-.Ltmp50                #   Call between .Ltmp50 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin3          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp63-.Ltmp61                #   Call between .Ltmp61 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin3          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp77-.Ltmp66                #   Call between .Ltmp66 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin3          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp90-.Ltmp79                #   Call between .Ltmp79 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin3          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp92-.Ltmp90                #   Call between .Ltmp90 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp103-.Ltmp92               #   Call between .Ltmp92 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin3         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Lfunc_end7-.Ltmp103           #   Call between .Ltmp103 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_PRESSURE_CALC_RAW"
	.size	.L.str, 21

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_ENERGY_CALC_RAW"
	.size	.L.str.3, 19

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_VOL3D_CALC_RAW"
	.size	.L.str.5, 18

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BM_DEL_DOT_VEC_2D_RAW"
	.size	.L.str.7, 22

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BM_COUPLE_RAW"
	.size	.L.str.9, 14

	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"BM_FIR_RAW"
	.size	.L.str.11, 11

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_RawSubsetAbenchmarks.cxx
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
	.addrsig_sym _ZL20BM_PRESSURE_CALC_RAWRN9benchmark5StateE
	.addrsig_sym _ZL18BM_ENERGY_CALC_RAWRN9benchmark5StateE
	.addrsig_sym _ZL17BM_VOL3D_CALC_RAWRN9benchmark5StateE
	.addrsig_sym _ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE
	.addrsig_sym _ZL13BM_COUPLE_RAWRN9benchmark5StateE
	.addrsig_sym _ZL10BM_FIR_RAWRN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_RawSubsetAbenchmarks.cxx
	.addrsig_sym _Unwind_Resume
