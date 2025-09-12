	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z19initCheckboardImageiiPA2052_f
.LCPI0_0:
	.word	0x437f0000                      # float 255
	.text
	.globl	_Z19initCheckboardImageiiPA2052_f
	.p2align	5
	.type	_Z19initCheckboardImageiiPA2052_f,@function
_Z19initCheckboardImageiiPA2052_f:      # @_Z19initCheckboardImageiiPA2052_f
# %bb.0:
	blez	$a0, .LBB0_6
# %bb.1:
	blez	$a1, .LBB0_6
# %bb.2:                                # %.lr.ph.us.preheader
	move	$a3, $zero
	move	$a4, $zero
	lu12i.w	$a5, -209716
	ori	$a5, $a5, 3277
	lu12i.w	$a6, 104857
	ori	$a6, $a6, 2458
	move	$a7, $a5
	lu32i.d	$a7, 0
	pcalau12i	$t0, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $t0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$t0, 2
	ori	$t0, $t0, 16
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	mul.d	$t1, $a3, $a5
	rotri.w	$t1, $t1, 1
	sltu	$t1, $t1, $a6
	xor	$a4, $a4, $t1
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $a1
	move	$t4, $a2
	move	$t5, $a4
	.p2align	4, , 16
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t1, 31, 0
	mul.d	$t6, $t6, $a7
	srli.d	$t6, $t6, 35
	slli.d	$t7, $t6, 3
	alsl.d	$t6, $t6, $t7, 1
	add.w	$t6, $t2, $t6
	sltui	$t6, $t6, 1
	xor	$t7, $t5, $t6
	sltui	$t7, $t7, 1
	xor	$t5, $t5, $t6
	movgr2cf	$fcc0, $t7
	fsel	$fa2, $fa1, $fa0, $fcc0
	fst.s	$fa2, $t4, 0
	addi.d	$t4, $t4, 4
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, -1
	addi.w	$t1, $t1, 1
	bnez	$t3, .LBB0_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a2, $a2, $t0
	bne	$a3, $a0, .LBB0_3
.LBB0_6:                                # %._crit_edge27
	ret
.Lfunc_end0:
	.size	_Z19initCheckboardImageiiPA2052_f, .Lfunc_end0-_Z19initCheckboardImageiiPA2052_f
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z10printImageiiPA2048_fi
.LCPI1_0:
	.word	0x437f0000                      # float 255
	.text
	.globl	_Z10printImageiiPA2048_fi
	.p2align	5
	.type	_Z10printImageiiPA2048_fi,@function
_Z10printImageiiPA2048_fi:              # @_Z10printImageiiPA2048_fi
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -624
	.cfi_def_cfa_offset 624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 520                  # 8-byte Folded Spill
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
	move	$s0, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s1, $a0
	addi.d	$a0, $sp, 8
	addi.d	$s4, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev)
	jirl	$ra, $ra, 0
	addi.d	$fp, $sp, 16
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %.noexc
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	beqz	$a1, .LBB1_3
# %bb.2:
	move	$a1, $zero
	b	.LBB1_4
.LBB1_3:
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.LBB1_4:
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.5:                                # %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.preheader
	blez	$s1, .LBB1_20
# %bb.6:                                # %.preheader.lr.ph
	blez	$s3, .LBB1_17
# %bb.7:                                # %.preheader.us.preheader
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI1_0)
	move	$s5, $zero
	lu12i.w	$s6, 2
	.p2align	4, , 16
.LBB1_8:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	move	$s7, $s3
	move	$s8, $s2
	.p2align	4, , 16
.LBB1_9:                                #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s8, 0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	move	$a1, $zero
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=2
	fcmp.clt.s	$fcc0, $fs1, $fa0
	ori	$a1, $zero, 3
	bcnez	$fcc0, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_9 Depth=2
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
.LBB1_13:                               # %.invoke
                                        #   in Loop: Header=BB1_9 Depth=2
.Ltmp7:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB1_9 Depth=2
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 4
	bnez	$s7, .LBB1_9
# %bb.15:                               # %._crit_edge.us
                                        #   in Loop: Header=BB1_8 Depth=1
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s5, $s5, 1
	add.d	$s2, $s2, $s6
	bne	$s5, $s1, .LBB1_8
	b	.LBB1_20
.LBB1_17:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB1_18:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
.Ltmp4:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB1_18
.LBB1_20:                               # %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit._crit_edge
	blez	$s0, .LBB1_22
# %bb.21:
	pcalau12i	$a0, %pc_hi20(sum)
	ld.w	$a1, $a0, %pc_lo12(sum)
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
.LBB1_22:
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 8
	stx.d	$a0, $a1, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 528                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.LBB1_23:
.Ltmp15:                                # EH_LABEL
	b	.LBB1_27
.LBB1_24:                               # %.split
.Ltmp6:                                 # EH_LABEL
	b	.LBB1_27
.LBB1_25:                               # %.split.us
.Ltmp12:                                # EH_LABEL
	b	.LBB1_27
.LBB1_26:                               # %.split29.us
.Ltmp9:                                 # EH_LABEL
.LBB1_27:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z10printImageiiPA2048_fi, .Lfunc_end1-_Z10printImageiiPA2048_fi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
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
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end1-.Ltmp14            #   Call between .Ltmp14 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z16BENCHMARK_HARRISRN9benchmark5StateE
.LCPI2_0:
	.word	0x437f0000                      # float 255
	.text
	.globl	_Z16BENCHMARK_HARRISRN9benchmark5StateE
	.p2align	5
	.type	_Z16BENCHMARK_HARRISRN9benchmark5StateE,@function
_Z16BENCHMARK_HARRISRN9benchmark5StateE: # @_Z16BENCHMARK_HARRISRN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
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
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 4112
	ori	$a0, $a0, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t0, $a0
	move	$a0, $zero
	move	$a1, $zero
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	lu12i.w	$a3, 104857
	ori	$a3, $a3, 2458
	lu12i.w	$a4, -3
	ori	$a4, $a4, 4080
	move	$a5, $a2
	lu32i.d	$a5, 0
	pcalau12i	$a6, %pc_hi20(.LCPI2_0)
	fld.s	$fa0, $a6, %pc_lo12(.LCPI2_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a6, 2
	ori	$a6, $a6, 16
	ori	$a7, $zero, 2052
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_1:                                # %.lr.ph.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	mul.d	$t1, $a0, $a2
	rotri.w	$t1, $t1, 1
	sltu	$t1, $t1, $a3
	xor	$a1, $a1, $t1
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $a4
	move	$t4, $a1
	.p2align	4, , 16
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t1, 31, 0
	mul.d	$t5, $t5, $a5
	srli.d	$t5, $t5, 35
	slli.d	$t6, $t5, 3
	alsl.d	$t5, $t5, $t6, 1
	add.w	$t5, $t2, $t5
	sltui	$t5, $t5, 1
	xor	$t6, $t4, $t5
	xor	$t4, $t4, $t5
	sltui	$t5, $t6, 1
	add.d	$t6, $t0, $t3
	movgr2cf	$fcc0, $t5
	fsel	$fa2, $fa1, $fa0, $fcc0
	fstx.s	$fa2, $t6, $a6
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	bnez	$t3, .LBB2_2
# %bb.3:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$t0, $t0, $a6
	bne	$a0, $a7, .LBB2_1
# %bb.4:                                # %_Z19initCheckboardImageiiPA2052_f.exit
	lu12i.w	$s2, 4096
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	lu12i.w	$a0, 4104
	ori	$fp, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 40
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 32
	move	$s2, $s6
	st.d	$s6, $sp, 24
	move	$s6, $s3
	st.d	$s3, $sp, 16
	move	$s3, $s0
	st.d	$s0, $sp, 8
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	move	$s7, $fp
	st.d	$fp, $sp, 0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $a2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	move	$a3, $s1
	move	$s1, $a2
	move	$a4, $s8
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	move	$s0, $a5
	move	$fp, $s5
	move	$a6, $s5
	move	$s5, $s4
	move	$a7, $s4
	pcaddu18i	$ra, %call36(_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s4, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_7
# %bb.5:                                # %_Z19initCheckboardImageiiPA2052_f.exit
	beqz	$s4, .LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 40
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32
	st.d	$s2, $sp, 24
	st.d	$s6, $sp, 16
	st.d	$s3, $sp, 8
	st.d	$s7, $sp, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $fp
	move	$a7, $s5
	pcaddu18i	$ra, %call36(_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	bnez	$s4, .LBB2_6
.LBB2_7:                                # %._crit_edge
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blez	$a0, .LBB2_14
# %bb.8:                                # %._crit_edge
	blez	$s6, .LBB2_14
# %bb.9:                                # %.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(sum)
	ld.w	$a1, $a0, %pc_lo12(sum)
	move	$a2, $zero
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 30, 0
	move	$a5, $s2
	lu12i.w	$t1, 2
	.p2align	4, , 16
.LBB2_10:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
	move	$a6, $a4
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_11:                               #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a7, 0
	addi.d	$a1, $a1, 1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$t0, $fa0
	and	$a1, $a1, $t0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB2_11
# %bb.12:                               # %._crit_edge85.us
                                        #   in Loop: Header=BB2_10 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a5, $a5, $t1
	bne	$a2, $a3, .LBB2_10
# %bb.13:                               # %._crit_edge91.split.us
	st.w	$a1, $a0, %pc_lo12(sum)
.LBB2_14:                               # %._crit_edge91
	ld.bu	$a0, $s4, 24
	beqz	$a0, .LBB2_20
# %bb.15:
	ld.d	$a0, $s4, 16
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s4, 8
	sub.d	$a0, $a0, $a1
	add.d	$fp, $a0, $a2
.LBB2_16:                               # %_ZNK9benchmark5State10iterationsEv.exit
	addi.d	$s0, $sp, 160
	st.d	$s0, $sp, 144
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 176
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 176
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	vld	$vr0, $a2, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $s4, 64
.Ltmp16:                                # EH_LABEL
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.17:                               # %_ZN9benchmark5State17SetBytesProcessedEl.exit
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 32
	srai.d	$a1, $a1, 30
	mul.d	$a1, $s6, $a1
	mul.d	$a1, $a1, $fp
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 144
	fst.d	$fa0, $a0, 0
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1024
	st.d	$a2, $a0, 8
	beq	$a1, $s0, .LBB2_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
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
	ret
.LBB2_20:
	move	$fp, $zero
	b	.LBB2_16
.LBB2_21:
.Ltmp18:                                # EH_LABEL
	ld.d	$a1, $sp, 144
	move	$fp, $a0
	beq	$a1, $s0, .LBB2_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z16BENCHMARK_HARRISRN9benchmark5StateE, .Lfunc_end2-_Z16BENCHMARK_HARRISRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI3_0:
	.word	0x437f0000                      # float 255
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	move	$s0, $a1
	st.w	$a0, $sp, 100
	pcalau12i	$s1, %pc_hi20(sum)
	ori	$fp, $zero, 1
	st.w	$fp, $s1, %pc_lo12(sum)
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark16PrintDefaultHelpEv)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN9benchmark16PrintDefaultHelpEv)
	addi.d	$a0, $sp, 100
	pcaddu18i	$ra, %call36(_ZN9benchmark10InitializeEPiPPcPFvvE)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 100
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_6
# %bb.1:
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEv)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4112
	ori	$a0, $a0, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t0, $a0
	move	$a0, $zero
	move	$a1, $zero
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	lu12i.w	$a3, 104857
	ori	$a3, $a3, 2458
	lu12i.w	$a4, -3
	ori	$a4, $a4, 4080
	move	$a5, $a2
	lu32i.d	$a5, 0
	pcalau12i	$a6, %pc_hi20(.LCPI3_0)
	fld.s	$fa0, $a6, %pc_lo12(.LCPI3_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a6, 2
	ori	$a6, $a6, 16
	ori	$a7, $zero, 2052
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	mul.d	$t1, $a0, $a2
	rotri.w	$t1, $t1, 1
	sltu	$t1, $t1, $a3
	xor	$a1, $a1, $t1
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $a4
	move	$t4, $a1
	.p2align	4, , 16
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t1, 31, 0
	mul.d	$t5, $t5, $a5
	srli.d	$t5, $t5, 35
	slli.d	$t6, $t5, 3
	alsl.d	$t5, $t5, $t6, 1
	add.w	$t5, $t2, $t5
	sltui	$t5, $t5, 1
	xor	$t6, $t4, $t5
	xor	$t4, $t4, $t5
	sltui	$t5, $t6, 1
	add.d	$t6, $t0, $t3
	movgr2cf	$fcc0, $t5
	fsel	$fa2, $fa1, $fa0, $fcc0
	fstx.s	$fa2, $t6, $a6
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	bnez	$t3, .LBB3_3
# %bb.4:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$t0, $t0, $a6
	bne	$a0, $a7, .LBB3_2
# %bb.5:                                # %_Z19initCheckboardImageiiPA2052_f.exit
	lu12i.w	$s0, 4096
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	lu12i.w	$a0, 4104
	ori	$fp, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 40
	st.d	$fp, $sp, 32
	st.d	$s8, $sp, 24
	st.d	$s7, $sp, 16
	st.d	$s6, $sp, 8
	ori	$a0, $zero, 2048
	ori	$a1, $zero, 2048
	st.d	$s1, $sp, 0
	move	$s6, $s1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s4
	move	$a7, $s5
	pcaddu18i	$ra, %call36(_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 100
	addi.d	$a0, $a0, -2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(sum)
	sltui	$a0, $a0, 1
	addi.w	$a2, $zero, -1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a3, $a0, $a2
	ori	$a0, $zero, 2048
	ori	$a1, $zero, 2048
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_Z10printImageiiPA2048_fi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB3_6:
	move	$a0, $fp
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.cfi_startproc
# %bb.0:
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
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$s7, $a0, 16
	move	$s8, $a1
	addi.d	$s2, $a0, 8
	beqz	$s7, .LBB4_11
# %bb.1:                                # %.lr.ph.i.i.i
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s6, $s8, 8
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s3, $s8, 0
	lu12i.w	$s5, -524288
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s0, $zero, 24
	move	$s1, $s2
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.d	$a0, $fp, $s6
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB4_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s7, .LBB4_6
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, 40
	sltu	$a0, $s6, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_3
	b	.LBB4_2
.LBB4_6:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	beq	$s1, $s2, .LBB4_11
# %bb.7:
	ld.d	$fp, $s1, 40
	sltu	$a0, $fp, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $s1, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_10
.LBB4_9:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s6, $fp
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB4_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	move	$s2, $s1
	bgez	$a0, .LBB4_12
.LBB4_11:                               # %.critedge
	st.d	$s8, $sp, 32
	pcalau12i	$a0, %pc_hi20(_ZStL19piecewise_construct)
	addi.d	$a2, $a0, %pc_lo12(_ZStL19piecewise_construct)
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 31
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB4_12:
	addi.d	$a0, $s1, 64
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end4:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_, .Lfunc_end4-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a3
	move	$s2, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 0
	move	$fp, $a0
	addi.d	$s3, $a0, 48
	st.d	$s3, $a0, 32
	ld.d	$a0, $s5, 0
	addi.d	$s4, $s5, 16
	addi.d	$s1, $fp, 32
	beq	$a0, $s4, .LBB5_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 16
	st.d	$a0, $s3, 0
	ld.d	$s6, $s5, 8
	b	.LBB5_3
.LBB5_2:
	ld.d	$s6, $s5, 8
	addi.d	$a2, $s6, 1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_3:
	st.d	$s6, $fp, 40
	st.d	$s4, $s5, 0
	st.d	$zero, $s5, 8
	st.b	$zero, $s5, 16
	st.d	$zero, $fp, 64
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1000
	st.d	$a0, $fp, 72
	st.d	$fp, $sp, 16
.Ltmp19:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.4:
	move	$a2, $a0
	move	$s2, $a1
	beqz	$a1, .LBB5_12
# %bb.5:
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB5_11
# %bb.6:
	beq	$a3, $s2, .LBB5_11
# %bb.7:
	ld.d	$s3, $fp, 40
	ld.d	$s4, $s2, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB5_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s1, 0
	move	$s1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	bnez	$a0, .LBB5_10
.LBB5_9:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s3, $s4
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB5_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB5_11:                               # %.thread
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB5_15
.LBB5_12:
	move	$s0, $a2
	ld.d	$a0, $s1, 0
	beq	$a0, $s3, .LBB5_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB5_14:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB5_15:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit
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
.LBB5_16:
.Ltmp21:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, .Lfunc_end5-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s1, $a0
	addi.d	$a0, $a0, 8
	move	$s0, $a2
	beq	$a0, $a1, .LBB6_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB6_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB6_12
	b	.LBB6_15
.LBB6_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB6_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB6_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB6_8
.LBB6_7:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $fp, $s2
	lu12i.w	$a2, -524288
	slt	$a3, $a2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
.LBB6_8:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB6_27
# %bb.9:
	move	$fp, $zero
	b	.LBB6_28
.LBB6_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB6_21
	b	.LBB6_15
.LBB6_11:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB6_15
.LBB6_12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB6_22
.LBB6_14:
	move	$a1, $zero
	b	.LBB6_28
.LBB6_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB6_29
# %bb.16:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s5, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB6_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_19
.LBB6_18:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
	sub.d	$a0, $s3, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB6_19:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB6_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB6_28
.LBB6_21:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
	sub.d	$a0, $s6, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB6_14
.LBB6_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB6_30
# %bb.23:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB6_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_26
.LBB6_25:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
	sub.d	$a0, $s5, $s3
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB6_26:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB6_31
.LBB6_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB6_28:
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB6_29:
	move	$a1, $fp
	b	.LBB6_28
.LBB6_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB6_28
.LBB6_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB6_28
.Lfunc_end6:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end6-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB7_4
# %bb.1:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB7_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_3:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB7_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, .Lfunc_end7-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
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
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	move	$s0, $a1
	lu12i.w	$s4, -524288
	lu12i.w	$s3, 524287
	beqz	$a0, .LBB8_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB8_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB8_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB8_6
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_3
	b	.LBB8_2
.LBB8_6:                                # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB8_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB8_14
.LBB8_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB8_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_12
.LBB8_11:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
	sub.d	$a0, $s1, $s5
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	ori	$a1, $s3, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB8_12:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB8_15
.LBB8_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB8_8
.LBB8_14:
	move	$a0, $zero
.LBB8_15:
	move	$a1, $fp
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
	ret
.Lfunc_end8:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end8-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_main.cpp
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s1, $sp, 120
	st.d	$s1, $sp, 104
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	vld	$vr0, $a2, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 104
	st.d	$a1, $sp, 120
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 104
	st.d	$a1, $sp, 112
	stx.b	$zero, $a0, $a1
	ori	$s2, $zero, 1
.Ltmp25:                                # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z16BENCHMARK_HARRISRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z16BENCHMARK_HARRISRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp27:                                # EH_LABEL
	move	$s2, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.3:
.Ltmp30:                                # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.4:
	st.d	$a0, $sp, 80
	addi.d	$a1, $a0, 16
	st.d	$a1, $sp, 96
	vrepli.d	$vr0, 256
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 88
.Ltmp33:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.5:
.Ltmp36:                                # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.6:
	st.d	$a0, $sp, 56
	addi.d	$a1, $a0, 16
	st.d	$a1, $sp, 72
	ori	$a2, $zero, 512
	vreplgr2vr.d	$vr0, $a2
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 64
.Ltmp39:                                # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.7:
.Ltmp42:                                # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.8:
	st.d	$a0, $sp, 32
	addi.d	$a1, $a0, 16
	st.d	$a1, $sp, 48
	ori	$a2, $zero, 1024
	vreplgr2vr.d	$vr0, $a2
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 40
.Ltmp45:                                # EH_LABEL
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.9:
.Ltmp48:                                # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.10:
	st.d	$a0, $sp, 8
	addi.d	$a1, $a0, 16
	st.d	$a1, $sp, 24
	ori	$a2, $zero, 2048
	vreplgr2vr.d	$vr0, $a2
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 16
.Ltmp51:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.11:
.Ltmp53:                                # EH_LABEL
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.12:
	move	$fp, $a0
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB9_14
# %bb.13:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit.i
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB9_16
# %bb.15:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_16:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit58.i
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB9_18
# %bb.17:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_18:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit61.i
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB9_20
# %bb.19:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_20:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit64.i
	ld.d	$a0, $sp, 104
	beq	$a0, $s1, .LBB9_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_22:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB9_23:
.Ltmp50:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB9_33
	b	.LBB9_37
.LBB9_24:
.Ltmp47:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB9_33
	b	.LBB9_37
.LBB9_25:
.Ltmp44:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB9_34
	b	.LBB9_38
.LBB9_26:
.Ltmp41:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB9_34
	b	.LBB9_38
.LBB9_27:
.Ltmp38:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB9_35
	b	.LBB9_39
.LBB9_28:
.Ltmp35:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB9_35
	b	.LBB9_39
.LBB9_29:
.Ltmp32:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 104
	bne	$a0, $s1, .LBB9_44
	b	.LBB9_45
.LBB9_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.thread.i
.Ltmp24:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB9_43
.LBB9_31:
.Ltmp55:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB9_36
# %bb.32:
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB9_37
.LBB9_33:
	ld.d	$a0, $sp, 56
	bnez	$a0, .LBB9_38
.LBB9_34:
	ld.d	$a0, $sp, 80
	bnez	$a0, .LBB9_39
.LBB9_35:                               # %.thread.i
	ld.d	$a0, $sp, 104
	bne	$a0, $s1, .LBB9_44
	b	.LBB9_45
.LBB9_36:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB9_33
.LBB9_37:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB9_34
.LBB9_38:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB9_35
.LBB9_39:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	bne	$a0, $s1, .LBB9_44
	b	.LBB9_45
.LBB9_40:
.Ltmp29:                                # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$fp, $a0
	bne	$a1, $s1, .LBB9_42
# %bb.41:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78.i
	bnez	$s2, .LBB9_43
	b	.LBB9_45
.LBB9_42:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB9_45
.LBB9_43:
	move	$a0, $s0
.LBB9_44:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_45:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end9-_GLOBAL__sub_I_main.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp28-.Ltmp25                #   Call between .Ltmp25 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin3          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin3          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin3          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin3          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin3          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin3          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin3          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp54-.Ltmp51                #   Call between .Ltmp51 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin3          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Lfunc_end9-.Ltmp54            #   Call between .Ltmp54 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.type	sum,@object                     # @sum
	.bss
	.globl	sum
	.p2align	2, 0x0
sum:
	.word	0                               # 0x0
	.size	sum, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output.txt"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BENCHMARK_HARRIS"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
	.p2align	3, 0x0
.L.str.4:
	.asciz	"bytes_per_second"
	.size	.L.str.4, 17

	.type	_ZStL19piecewise_construct,@object # @_ZStL19piecewise_construct
	.section	.rodata,"a",@progbits
_ZStL19piecewise_construct:
	.space	1
	.size	_ZStL19piecewise_construct, 1

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_main.cpp
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
	.addrsig_sym _Z16BENCHMARK_HARRISRN9benchmark5StateE
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _GLOBAL__sub_I_main.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL19piecewise_construct
