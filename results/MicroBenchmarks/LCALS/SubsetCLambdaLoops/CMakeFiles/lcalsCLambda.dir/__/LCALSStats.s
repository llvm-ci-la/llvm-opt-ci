	.file	"LCALSStats.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZNK8LoopStat5printERSo         # -- Begin function _ZNK8LoopStat5printERSo
	.p2align	5
	.type	_ZNK8LoopStat5printERSo,@function
_ZNK8LoopStat5printERSo:                # @_ZNK8LoopStat5printERSo
	.cfi_startproc
# %bb.0:
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB0_79
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB0_3
# %bb.2:
	ld.bu	$a0, $s1, 67
	b	.LBB0_4
.LBB0_3:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB0_4:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 15
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIbEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB0_79
# %bb.5:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB0_7
# %bb.6:
	ld.bu	$a1, $s1, 67
	b	.LBB0_8
.LBB0_7:
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_8:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB0_79
# %bb.9:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB0_11
# %bb.10:
	ld.bu	$a1, $s1, 67
	b	.LBB0_12
.LBB0_11:
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_12:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit54
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	beq	$a0, $a1, .LBB0_74
# %bb.13:                               # %.lr.ph130
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s5, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s1, $zero
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %.loopexit
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	addi.w	$s1, $s1, 1
	bstrpick.d	$s6, $s1, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	bgeu	$s6, $a0, .LBB0_74
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_71 Depth 2
	ori	$a2, $zero, 13
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s7, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB0_79
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s8, 67
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.LBB0_19:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 18
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 208
	slli.d	$s2, $s6, 2
	ldx.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_23:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit69
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 23
	move	$a0, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 232
	ldx.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_27:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 21
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	slli.d	$s2, $s6, 3
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.28:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_31:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ldx.d	$a0, $a0, $s2
	beqz	$a0, .LBB0_14
# %bb.32:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s0, 16
	slli.d	$s2, $s6, 4
	alsl.d	$s8, $s6, $s2, 3
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	beq	$a1, $a0, .LBB0_39
# %bb.33:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s7, $zero
	ori	$s3, $zero, 1
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_36 Depth=2
	move	$s4, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB0_35:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119
                                        #   in Loop: Header=BB0_36 Depth=2
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	bstrpick.d	$s7, $s3, 31, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 4
	addi.w	$s3, $s3, 1
	bgeu	$s7, $a0, .LBB0_39
.LBB0_36:                               # %.lr.ph
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s8
	alsl.d	$a2, $s7, $a0, 4
	slli.d	$a1, $s7, 4
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.37:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_34
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=2
	ld.bu	$a1, $s7, 67
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_39:                               # %._crit_edge
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a2, $zero, 12
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_43:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 15
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.44:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_47:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 11
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 112
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.48:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_51:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 136
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.52:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_55:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 160
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.56:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_59:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 184
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.60:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i106
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_63:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit109
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB0_79
# %bb.64:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB0_67
	.p2align	4, , 16
.LBB0_66:                               #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB0_67:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	beq	$a1, $a0, .LBB0_14
# %bb.68:                               # %.lr.ph128.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $zero
	ori	$s2, $zero, 1
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_69:                               #   in Loop: Header=BB0_71 Depth=2
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_70:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124
                                        #   in Loop: Header=BB0_71 Depth=2
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	bstrpick.d	$s3, $s2, 31, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 4
	addi.w	$s2, $s2, 1
	bgeu	$s3, $a0, .LBB0_14
.LBB0_71:                               # %.lr.ph128
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s8
	alsl.d	$a2, $s3, $a0, 4
	slli.d	$a1, $s3, 4
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.72:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_69
# %bb.73:                               #   in Loop: Header=BB0_71 Depth=2
	ld.bu	$a1, $s6, 67
	b	.LBB0_70
.LBB0_74:                               # %._crit_edge131
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB0_79
# %bb.75:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB0_77
# %bb.76:
	ld.bu	$a0, $s0, 67
	b	.LBB0_78
.LBB0_77:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB0_78:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
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
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB0_79:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZNK8LoopStat5printERSo, .Lfunc_end0-_ZNK8LoopStat5printERSo
	.cfi_endproc
                                        # -- End function
	.globl	_Z19getLoopSuiteRunInfov        # -- Begin function _Z19getLoopSuiteRunInfov
	.p2align	5
	.type	_Z19getLoopSuiteRunInfov,@function
_Z19getLoopSuiteRunInfov:               # @_Z19getLoopSuiteRunInfov
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$a0, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ret
.Lfunc_end1:
	.size	_Z19getLoopSuiteRunInfov, .Lfunc_end1-_Z19getLoopSuiteRunInfov
                                        # -- End function
	.globl	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm # -- Begin function _Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
	.p2align	5
	.type	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm,@function
_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm: # @_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	pcalau12i	$s6, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s5, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	move	$fp, $a5
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	bnez	$s5, .LBB2_2
# %bb.1:
	ori	$a0, $zero, 640
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $s5, 0
	st.d	$zero, $s5, 8
	st.b	$zero, $s5, 16
	st.w	$zero, $s5, 32
	st.d	$zero, $s5, 72
	st.w	$zero, $s5, 80
	st.d	$zero, $s5, 88
	st.w	$zero, $s5, 96
	st.d	$zero, $s5, 144
	st.b	$zero, $s5, 152
	addi.d	$a0, $s5, 160
	vrepli.b	$vr0, 0
	vst	$vr0, $s5, 576
	addi.d	$s7, $s5, 600
	st.w	$zero, $s5, 600
	st.d	$zero, $s5, 608
	st.d	$zero, $s5, 40
	vst	$vr0, $s5, 48
	st.w	$zero, $s5, 64
	vst	$vr0, $s5, 104
	vst	$vr0, $s5, 120
	st.w	$zero, $s5, 136
	ori	$a2, $zero, 408
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s7, $s5, 616
	st.d	$s7, $s5, 624
	st.d	$zero, $s5, 632
	st.d	$s5, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB2_2:
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	st.w	$s3, $s4, 32
	st.w	$s1, $s4, 64
	st.w	$s2, $s4, 136
	beqz	$s1, .LBB2_12
# %bb.3:                                # %.lr.ph.preheader
	bstrpick.d	$s1, $s1, 31, 0
	ori	$s2, $zero, 63
	ori	$s3, $zero, 1
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=1
	ld.wu	$a2, $s4, 96
	addi.d	$a0, $s4, 72
	pcaddu18i	$ra, %call36(_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB2_5:                                # %_ZNSt6vectorIbSaIbEE9push_backEb.exit
                                        #   in Loop: Header=BB2_6 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 1
	beqz	$s1, .LBB2_12
.LBB2_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 88
	ld.d	$a0, $s4, 104
	ld.bu	$a3, $s0, 0
	beq	$a1, $a0, .LBB2_4
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $s4, 96
	addi.w	$a2, $a0, 0
	addi.d	$a4, $a0, 1
	st.w	$a4, $s4, 96
	bne	$a2, $s2, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	st.w	$zero, $s4, 96
	addi.d	$a2, $a1, 8
	st.d	$a2, $s4, 88
.LBB2_9:                                # %_ZNSt13_Bit_iteratorppEi.exit.i
                                        #   in Loop: Header=BB2_6 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	sll.d	$a0, $s3, $a0
	beqz	$a3, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $a1, 0
	or	$a0, $a2, $a0
	st.d	$a0, $a1, 0
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $a1, 0
	andn	$a0, $a2, $a0
	st.d	$a0, $a1, 0
	b	.LBB2_5
.LBB2_12:                               # %._crit_edge
	bstrpick.d	$a0, $fp, 62, 2
	st.d	$a0, $s4, 552
	slli.d	$a0, $fp, 1
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 552
	st.d	$a0, $s4, 560
	beqz	$a1, .LBB2_15
# %bb.13:                               # %.lr.ph18.preheader
	move	$fp, $zero
	move	$s0, $zero
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a0, $a0, 1019
	movgr2fr.d	$fs0, $a0
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph18
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(drand48)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$a1, $a0, 560
	ld.d	$a0, $a0, 552
	fadd.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $a1, $fp
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bltu	$s0, $a0, .LBB2_14
.LBB2_15:                               # %._crit_edge19
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm, .Lfunc_end2-_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
	.cfi_endproc
                                        # -- End function
	.globl	_Z20freeLoopSuiteRunInfov       # -- Begin function _Z20freeLoopSuiteRunInfov
	.p2align	5
	.type	_Z20freeLoopSuiteRunInfov,@function
_Z20freeLoopSuiteRunInfov:              # @_Z20freeLoopSuiteRunInfov
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$fp, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
	beqz	$fp, .LBB3_5
# %bb.1:
	ld.d	$a0, $fp, 560
	beqz	$a0, .LBB3_3
# %bb.2:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
	beqz	$fp, .LBB3_4
.LBB3_3:                                # %.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16LoopSuiteRunInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_4:
	st.d	$zero, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB3_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_Z20freeLoopSuiteRunInfov, .Lfunc_end3-_Z20freeLoopSuiteRunInfov
                                        # -- End function
	.section	.text._ZN16LoopSuiteRunInfoD2Ev,"axG",@progbits,_ZN16LoopSuiteRunInfoD2Ev,comdat
	.weak	_ZN16LoopSuiteRunInfoD2Ev       # -- Begin function _ZN16LoopSuiteRunInfoD2Ev
	.p2align	5
	.type	_ZN16LoopSuiteRunInfoD2Ev,@function
_ZN16LoopSuiteRunInfoD2Ev:              # @_ZN16LoopSuiteRunInfoD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	ld.d	$a0, $a0, 616
	addi.d	$s3, $fp, 600
	addi.d	$s0, $fp, 592
	bne	$a0, $s3, .LBB4_46
.LBB4_1:                                # %._crit_edge
	ld.d	$a1, $fp, 608
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI8LoopStatSaIS7_EESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit
	ld.d	$s0, $fp, 528
	ld.d	$s1, $fp, 536
	bne	$s0, $s1, .LBB4_27
# %bb.3:                                # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$s0, .LBB4_5
.LBB4_4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit
	ld.d	$s0, $fp, 504
	ld.d	$s1, $fp, 512
	bne	$s0, $s1, .LBB4_30
# %bb.6:                                # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i15
	beqz	$s0, .LBB4_8
.LBB4_7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_8:                                # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit17
	ld.d	$s0, $fp, 480
	ld.d	$s1, $fp, 488
	bne	$s0, $s1, .LBB4_33
# %bb.9:                                # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i26
	beqz	$s0, .LBB4_11
.LBB4_10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit28
	ld.d	$s0, $fp, 456
	ld.d	$s1, $fp, 464
	bne	$s0, $s1, .LBB4_36
# %bb.12:                               # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$s0, .LBB4_14
.LBB4_13:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_14:                               # %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
	ld.d	$a0, $fp, 432
	beqz	$a0, .LBB4_16
# %bb.15:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_16:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	addi.d	$a0, $fp, 152
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	ld.d	$s0, $fp, 120
	bne	$a0, $s0, .LBB4_39
# %bb.17:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	beqz	$a0, .LBB4_19
.LBB4_18:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB4_21
# %bb.20:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
	st.w	$zero, $fp, 80
	st.d	$zero, $fp, 88
	st.w	$zero, $fp, 96
	st.d	$zero, $fp, 104
.LBB4_21:                               # %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
	ld.d	$a0, $fp, 40
	ld.d	$s0, $fp, 48
	bne	$a0, $s0, .LBB4_42
# %bb.22:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i51
	beqz	$a0, .LBB4_24
.LBB4_23:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB4_58
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
	.p2align	4, , 16
.LBB4_26:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_52
.LBB4_27:                               # %.lr.ph.i.i.i2
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_26
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_29:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i11
                                        #   in Loop: Header=BB4_30 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_53
.LBB4_30:                               # %.lr.ph.i.i.i8
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_29
# %bb.31:                               #   in Loop: Header=BB4_30 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_32:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i22
                                        #   in Loop: Header=BB4_33 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_54
.LBB4_33:                               # %.lr.ph.i.i.i19
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_32
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_35:                               # %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB4_36 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_55
.LBB4_36:                               # %.lr.ph.i.i.i30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_35
# %bb.37:                               #   in Loop: Header=BB4_36 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_38:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB4_39 Depth=1
	addi.d	$a0, $s1, 16
	beq	$a0, $s0, .LBB4_56
.LBB4_39:                               # %.lr.ph.i.i.i38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB4_38
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_39 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_41:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i47
                                        #   in Loop: Header=BB4_42 Depth=1
	addi.d	$a0, $s1, 16
	beq	$a0, $s0, .LBB4_57
.LBB4_42:                               # %.lr.ph.i.i.i44
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB4_41
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46
                                        #   in Loop: Header=BB4_42 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_41
	.p2align	4, , 16
.LBB4_44:                               # %_ZNSt6vectorI8LoopStatSaIS0_EED2Ev.exit
                                        #   in Loop: Header=BB4_46 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB4_45:                               #   in Loop: Header=BB4_46 Depth=1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB4_1
.LBB4_46:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_48 Depth 2
	ld.d	$s1, $a0, 64
	beqz	$s1, .LBB4_45
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	move	$s4, $a0
	ld.d	$s2, $s1, 0
	ld.d	$s5, $s1, 8
	beq	$s2, $s5, .LBB4_50
	.p2align	4, , 16
.LBB4_48:                               # %.lr.ph.i.i.i
                                        #   Parent Loop BB4_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 280
	bne	$s2, $s5, .LBB4_48
# %bb.49:                               # %_ZSt8_DestroyIP8LoopStatS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i
                                        #   in Loop: Header=BB4_46 Depth=1
	ld.d	$s2, $s1, 0
.LBB4_50:                               # %_ZSt8_DestroyIP8LoopStatS0_EvT_S2_RSaIT0_E.exit.i
                                        #   in Loop: Header=BB4_46 Depth=1
	beqz	$s2, .LBB4_44
# %bb.51:                               #   in Loop: Header=BB4_46 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_44
.LBB4_52:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $fp, 528
	bnez	$s0, .LBB4_4
	b	.LBB4_5
.LBB4_53:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i13
	ld.d	$s0, $fp, 504
	bnez	$s0, .LBB4_7
	b	.LBB4_8
.LBB4_54:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24
	ld.d	$s0, $fp, 480
	bnez	$s0, .LBB4_10
	b	.LBB4_11
.LBB4_55:                               # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $fp, 456
	bnez	$s0, .LBB4_13
	b	.LBB4_14
.LBB4_56:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
	ld.d	$a0, $fp, 112
	bnez	$a0, .LBB4_18
	b	.LBB4_19
.LBB4_57:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i49
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB4_23
	b	.LBB4_24
.LBB4_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
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
.LBB4_59:
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN16LoopSuiteRunInfoD2Ev, .Lfunc_end4-_ZN16LoopSuiteRunInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16LoopSuiteRunInfoD2Ev,"aG",@progbits,_ZN16LoopSuiteRunInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z10flushCachev                 # -- Begin function _Z10flushCachev
	.p2align	5
	.type	_Z10flushCachev,@function
_Z10flushCachev:                        # @_Z10flushCachev
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s2, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$fp, $s2, 552
	beqz	$fp, .LBB5_3
# %bb.1:                                # %.lr.ph
	ld.d	$s3, $s2, 560
	ld.d	$s0, $s2, 584
	ld.d	$s1, $s2, 576
	move	$s4, $fp
	.p2align	4, , 16
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s3, 0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s0, $a1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB5_2
	b	.LBB5_4
.LBB5_3:                                # %._crit_edge8
	ld.d	$s0, $s2, 584
	ld.d	$s1, $s2, 576
.LBB5_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__floatunditf)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	st.d	$a1, $s2, 584
	st.d	$a0, $s2, 576
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	_Z10flushCachev, .Lfunc_end5-_Z10flushCachev
                                        # -- End function
	.globl	_Z9copyTimerR8LoopStatiRK9LoopTimer # -- Begin function _Z9copyTimerR8LoopStatiRK9LoopTimer
	.p2align	5
	.type	_Z9copyTimerR8LoopStatiRK9LoopTimer,@function
_Z9copyTimerR8LoopStatiRK9LoopTimer:    # @_Z9copyTimerR8LoopStatiRK9LoopTimer
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
	ld.bu	$a3, $a2, 16
	beqz	$a3, .LBB6_9
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 0
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(__floatditf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 190536
	lu52i.d	$a3, $a2, 1025
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	slli.d	$a3, $fp, 4
	alsl.d	$a3, $fp, $a3, 3
	add.d	$s2, $a2, $a3
	ld.d	$a2, $s2, 8
	ld.d	$a3, $s2, 16
	beq	$a2, $a3, .LBB6_3
# %bb.2:
	st.d	$a0, $a2, 0
	st.d	$a1, $a2, 8
	addi.d	$a0, $a2, 16
	st.d	$a0, $s2, 8
	b	.LBB6_9
.LBB6_3:
	move	$s5, $a0
	ld.d	$fp, $s2, 0
	sub.d	$s0, $a2, $fp
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_10
# %bb.4:                                # %_ZNSt12_Vector_baseIeSaIeEE11_M_allocateEm.exit.i.i
	move	$s3, $a1
	srai.d	$a0, $s0, 4
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	add.d	$s6, $a0, $s0
	stx.d	$s5, $a0, $s0
	st.d	$s3, $s6, 8
	blez	$s0, .LBB6_6
# %bb.5:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit.i.i
	beqz	$fp, .LBB6_8
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %_ZNSt6vectorIeSaIeEE17_M_realloc_appendIJRKeEEEvDpOT_.exit.i
	addi.d	$a0, $s6, 16
	st.d	$s1, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s4, $s1, 4
	st.d	$a0, $s2, 16
.LBB6_9:                                # %_ZNSt6vectorIeSaIeEE9push_backERKe.exit
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
.LBB6_10:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z9copyTimerR8LoopStatiRK9LoopTimer, .Lfunc_end6-_Z9copyTimerR8LoopStatiRK9LoopTimer
	.cfi_endproc
                                        # -- End function
	.globl	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb # -- Begin function _Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
	.p2align	5
	.type	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb,@function
_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb: # @_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
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
	ld.d	$a4, $a1, 8
	ld.d	$a3, $a1, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	sub.d	$a0, $a4, $a3
	srai.d	$a0, $a0, 3
	lu12i.w	$a1, -479350
	ori	$a1, $a1, 3979
	lu32i.d	$a1, -329553
	lu52i.d	$a1, $a1, -1288
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	beq	$a4, $a3, .LBB7_18
# %bb.1:                                # %.lr.ph270.preheader
	move	$a2, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu32i.d	$a0, -65537
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %.loopexit250
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a0, $a2, 31, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_18
.LBB7_3:                                # %.lr.ph270
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_13 Depth 3
                                        #       Child Loop BB7_16 Depth 3
	ori	$a0, $zero, 280
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB7_2
# %bb.4:                                # %.preheader249
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
	beq	$a0, $a1, .LBB7_2
# %bb.5:                                # %.lr.ph267
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a3, $s2, 40
	move	$a5, $zero
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                # %._crit_edge.thread
                                        #   in Loop: Header=BB7_9 Depth=2
	pcaddu18i	$ra, %call36(__floatunsitf)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s0, $a1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a3, $s0
	move	$a2, $fp
	move	$s7, $a0
	move	$s6, $a1
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	move	$s8, $zero
	move	$fp, $zero
	move	$s1, $zero
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$s3, $s0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
.LBB7_7:                                # %._crit_edge264
                                        #   in Loop: Header=BB7_9 Depth=2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 64
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	stx.d	$s7, $a2, $a6
	ld.d	$a3, $s2, 88
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 4
	st.d	$s6, $a2, 8
	ld.d	$a2, $s2, 112
	alsl.d	$a4, $a5, $a3, 4
	stx.d	$a0, $a3, $a6
	st.d	$a1, $a4, 8
	alsl.d	$a0, $a5, $a2, 4
	ld.d	$a1, $s2, 136
	stx.d	$s0, $a2, $a6
	st.d	$s5, $a0, 8
	ld.d	$a0, $s2, 160
	alsl.d	$a2, $a5, $a1, 4
	stx.d	$s3, $a1, $a6
	st.d	$s4, $a2, 8
	alsl.d	$a1, $a5, $a0, 4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	stx.d	$a2, $a0, $a6
	st.d	$s8, $a1, 8
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=2
	addi.d	$a5, $a5, 1
	bstrpick.d	$a0, $a5, 31, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_2
.LBB7_9:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_13 Depth 3
                                        #       Child Loop BB7_16 Depth 3
	slli.d	$a0, $a5, 3
	ldx.d	$a0, $a3, $a0
	beqz	$a0, .LBB7_8
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=2
	ld.d	$a0, $s2, 16
	slli.d	$a1, $a5, 4
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a1, $a5, $a1, 3
	add.d	$a2, $a0, $a1
	ld.d	$a2, $a2, 8
	ldx.d	$s3, $a0, $a1
	sub.d	$a0, $a2, $s3
	srli.d	$a2, $a0, 4
	addi.w	$a0, $a2, 0
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_6
# %bb.11:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_9 Depth=2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	addi.w	$s6, $zero, -1
	bstrpick.d	$s2, $a2, 31, 0
	move	$s5, $s6
	lu32i.d	$s5, -65537
	lu52i.d	$s7, $s5, 2047
	move	$s8, $s2
	move	$s0, $s3
	move	$s4, $s6
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_12:                               #   in Loop: Header=BB7_13 Depth=3
	slti	$a0, $s6, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $fp, $a0
	or	$s5, $a2, $a1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s6, $a0, $a1
	slti	$a0, $s7, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a2, $fp, $a0
	or	$s7, $a2, $a1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s4, $a0, $a1
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 16
	beqz	$s8, .LBB7_15
.LBB7_13:                               # %.lr.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $s0, 8
	ld.d	$s1, $s0, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s6
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s1
	move	$a1, $fp
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	move	$a2, $s4
	move	$s4, $s7
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB7_12
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=3
	move	$a0, $zero
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_15:                               # %._crit_edge
                                        #   in Loop: Header=BB7_9 Depth=2
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__floatunsitf)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$s6, $a1
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	slt	$s0, $zero, $a0
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s8
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	move	$s1, $zero
	maskeqz	$a1, $a1, $s0
	masknez	$a2, $s8, $s0
	or	$s8, $a1, $a2
	maskeqz	$a0, $a0, $s0
	masknez	$a1, $s4, $s0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_16:                               # %.lr.ph263
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 8
	move	$a2, $s7
	move	$a3, $s6
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 16
	bnez	$s2, .LBB7_16
# %bb.17:                               #   in Loop: Header=BB7_9 Depth=2
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	move	$s4, $s5
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB7_7
.LBB7_18:                               # %._crit_edge271
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_57
# %bb.19:
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s0, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.wu	$a0, $s0, 64
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB7_29
# %bb.20:                               # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
	slli.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 64
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_30
# %bb.21:
	slli.d	$fp, $a0, 4
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.22:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit
	move	$s8, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 64
	beqz	$a0, .LBB7_31
# %bb.23:
	slli.d	$fp, $a0, 4
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.24:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159
	move	$s1, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 64
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_58
# %bb.25:
	slli.d	$fp, $a0, 4
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.26:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167
	move	$s2, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$s0, $a0, 64
	addi.w	$a0, $s0, 0
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_59
# %bb.27:
	slli.d	$fp, $s0, 4
.Ltmp12:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.28:                               # %.noexc174
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB7_33
	b	.LBB7_42
.LBB7_29:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$s8, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	b	.LBB7_32
.LBB7_30:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$s8, $zero
	b	.LBB7_32
.LBB7_31:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s0, $zero
.LBB7_32:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB7_42
.LBB7_33:                               # %.lr.ph277.preheader
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$a2, $zero
	b	.LBB7_35
	.p2align	4, , 16
.LBB7_34:                               # %.loopexit
                                        #   in Loop: Header=BB7_35 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a0, $a2, 31, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_41
.LBB7_35:                               # %.lr.ph277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 280
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB7_34
# %bb.36:                               # %.preheader248
                                        #   in Loop: Header=BB7_35 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $a1, 216
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 208
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB7_34
# %bb.37:                               # %.lr.ph275
                                        #   in Loop: Header=BB7_35 Depth=1
	move	$s8, $zero
	move	$s1, $zero
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $a1, 40
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_38:                               #   in Loop: Header=BB7_39 Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 4
	addi.d	$s8, $s8, 16
	addi.w	$s4, $s4, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_34
.LBB7_39:                               #   Parent Loop BB7_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB7_38
# %bb.40:                               #   in Loop: Header=BB7_39 Depth=2
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a0, $s7, $s1
	addi.d	$a0, $a0, 1
	stx.w	$a0, $s7, $s1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	fld.d	$fa0, $s0, 8
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	add.d	$s6, $fp, $s8
	ldx.d	$a2, $fp, $s8
	ld.d	$a3, $s6, 8
	move	$a4, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$a5, $a1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $a2
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 64
	stx.d	$a0, $fp, $s8
	st.d	$a1, $s6, 8
	add.d	$s0, $s3, $s8
	ldx.d	$a0, $s3, $s8
	ld.d	$a1, $s0, 8
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	add.d	$s6, $fp, $s8
	ldx.d	$a2, $fp, $s8
	ld.d	$a3, $s6, 8
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $fp, $s8
	st.d	$a1, $s6, 8
	ldx.d	$a2, $s3, $s8
	ld.d	$a3, $s0, 8
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	add.d	$fp, $s5, $s8
	ldx.d	$a0, $s5, $s8
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s5, $s8
	st.d	$a1, $fp, 8
	ldx.d	$a0, $s3, $s8
	ld.d	$a1, $s0, 8
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 232
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $s1
	ldx.w	$a2, $a2, $s1
	move	$fp, $a0
	move	$s5, $a1
	mul.w	$a0, $a2, $a3
	pcaddu18i	$ra, %call36(__floatsitf)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	add.d	$fp, $s0, $s8
	ldx.d	$a2, $s0, $s8
	ld.d	$a3, $fp, 8
	move	$a4, $a0
	move	$a5, $a1
	move	$a0, $a2
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s0, $s8
	st.d	$a1, $fp, 8
	b	.LBB7_38
.LBB7_41:                               # %.preheader.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 64
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
.LBB7_42:                               # %.preheader
	addi.w	$a0, $s0, 0
	beqz	$a0, .LBB7_47
# %bb.43:                               # %.lr.ph279
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 456
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 480
	slli.d	$a3, $a0, 4
	alsl.d	$s3, $a0, $a3, 3
	ldx.d	$s4, $a1, $s3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$s5, $a2, $s3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$fp, $a0, 1023
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_44:                               #   in Loop: Header=BB7_45 Depth=1
	addi.d	$s2, $s2, 1
	ld.wu	$a0, $a1, 64
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 24
	bgeu	$s2, $a0, .LBB7_47
.LBB7_45:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, 0
	st.w	$a0, $s4, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	vldx	$vr0, $a2, $s1
	vstx	$vr0, $s5, $s1
	blez	$a0, .LBB7_44
# %bb.46:                               #   in Loop: Header=BB7_45 Depth=1
	ld.d	$a0, $a1, 168
	ldx.d	$a1, $a0, $s0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	add.d	$a3, $s8, $s1
	ldx.d	$a2, $s8, $s1
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a2, $s1
	ldx.d	$a2, $a2, $s1
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 504
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a2, $s1
	stx.d	$a0, $a2, $s1
	st.d	$a1, $a3, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $s1
	ldx.d	$a2, $a1, $s1
	ld.d	$a3, $a0, 8
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 528
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a2, $s1
	stx.d	$a0, $a2, $s1
	st.d	$a1, $a3, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB7_44
.LBB7_47:                               # %._crit_edge280
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_49
# %bb.48:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_49:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit177
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_51
# %bb.50:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_51:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit179
	beqz	$fp, .LBB7_53
# %bb.52:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_53:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit181
	beqz	$s8, .LBB7_55
# %bb.54:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_55:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit183
	beqz	$s0, .LBB7_57
# %bb.56:
	move	$a0, $s0
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB7_57:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
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
.LBB7_58:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB7_59:
	move	$s0, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB7_33
	b	.LBB7_42
.LBB7_60:
.Ltmp14:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_62
.LBB7_61:
.Ltmp11:                                # EH_LABEL
	move	$fp, $a0
.LBB7_62:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_64
.LBB7_63:
.Ltmp8:                                 # EH_LABEL
	move	$fp, $a0
.LBB7_64:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit186
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_65:
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb, .Lfunc_end7-_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Lfunc_end7-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -1408
	.cfi_def_cfa_offset 1408
	st.d	$ra, $sp, 1400                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1392                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1384                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1368                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1360                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1352                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1320                  # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB8_150
# %bb.1:
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	srli.d	$a0, $a0, 5
	addi.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(_ZL21s_loop_suite_run_info)
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	beqz	$a1, .LBB8_16
# %bb.2:                                # %.lr.ph
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	move	$s3, $zero
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$s1, $a1, 600
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s7, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s0, $zero, 24
	.p2align	4, , 16
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 608
	move	$a0, $s1
	beqz	$s2, .LBB8_14
# %bb.4:                                # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 5
	add.d	$a2, $a0, $a1
	ld.d	$s4, $a2, 8
	ldx.d	$fp, $a0, $a1
	move	$s5, $s1
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	sub.d	$a0, $s6, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_6:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s2, $s2, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s2, .LBB8_9
.LBB8_7:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s2, 40
	sltu	$a0, $s4, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_5
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	ld.d	$a0, $s2, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_6
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_9:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$a0, $s1
	beq	$s5, $s1, .LBB8_14
# %bb.10:                               #   in Loop: Header=BB8_3 Depth=1
	ld.d	$s2, $s5, 40
	sltu	$a0, $s2, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_12
# %bb.11:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $s5, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_13
.LBB8_12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	sub.d	$a0, $s4, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
.LBB8_14:                               #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $a0, 64
.Ltmp15:                                # EH_LABEL
	addi.w	$a0, $s3, 0
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s3, $a0, .LBB8_3
.LBB8_16:                               # %._crit_edge
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $s4, 8
	beqz	$fp, .LBB8_26
# %bb.17:
	ld.d	$s3, $s4, 0
	addi.d	$s5, $sp, 792
	st.d	$s5, $sp, 776
	st.d	$zero, $sp, 784
	st.b	$zero, $sp, 792
	addi.d	$a1, $fp, 1
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
# %bb.18:
	ld.d	$a0, $sp, 784
	addi.w	$a1, $zero, -1
	lu52i.d	$s6, $a1, 1023
	sub.d	$a0, $s6, $a0
	bltu	$a0, $fp, .LBB8_268
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 784
	beq	$a0, $s6, .LBB8_268
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp22:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.22:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 784
	ori	$a1, $zero, 10
	lu52i.d	$a1, $a1, -1024
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 9
	bgeu	$a1, $a0, .LBB8_272
# %bb.23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp24:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.24:                               # %.noexc46
	addi.d	$a3, $sp, 696
	st.d	$a3, $sp, 680
	ld.d	$a1, $a0, 0
	addi.d	$fp, $a0, 16
	beq	$a1, $fp, .LBB8_27
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 696
	ld.d	$s0, $a0, 8
	st.d	$a1, $sp, 680
	b	.LBB8_28
.LBB8_26:
.Ltmp276:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
	b	.LBB8_148
.LBB8_27:
	ld.d	$s0, $a0, 8
	addi.d	$a2, $s0, 1
	move	$s1, $a0
	move	$a0, $a3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB8_28:
	st.d	$s0, $sp, 688
	st.d	$fp, $a0, 0
	ld.d	$a1, $sp, 776
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s5, .LBB8_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 680
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 48
	addi.d	$fp, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.31:
	ld.d	$a0, $sp, 168
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_41
# %bb.32:
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 680
	ld.d	$a2, $sp, 688
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_270
# %bb.35:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_37
# %bb.36:
	ld.bu	$a0, $s3, 67
	b	.LBB8_39
.LBB8_37:
.Ltmp33:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.38:                               # %.noexc234
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp35:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp36:                                # EH_LABEL
.LBB8_39:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp37:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.40:                               # %.noexc236
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
.LBB8_41:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp41:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.42:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
	ld.d	$a1, $sp, 680
	ld.d	$a2, $sp, 688
.Ltmp43:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.43:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_270
# %bb.44:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i239
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_46
# %bb.45:
	ld.bu	$a0, $s3, 67
	b	.LBB8_48
.LBB8_46:
.Ltmp45:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.47:                               # %.noexc244
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp47:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp48:                                # EH_LABEL
.LBB8_48:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i241
.Ltmp49:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.49:                               # %.noexc246
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.50:                               # %_ZNSolsEPFRSoS_E.exit59
.Ltmp53:                                # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.51:                               # %.preheader269
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 36, 5
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	beqz	$a2, .LBB8_146
# %bb.52:                               # %.lr.ph436
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 13
	lu52i.d	$a0, $a0, -1024
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s7, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s0, $a0, 4095
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	b	.LBB8_54
	.p2align	4, , 16
.LBB8_53:                               #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB8_145
.LBB8_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_89 Depth 2
                                        #     Child Loop BB8_100 Depth 2
                                        #     Child Loop BB8_113 Depth 2
                                        #       Child Loop BB8_117 Depth 3
                                        #       Child Loop BB8_129 Depth 3
	ld.d	$s1, $s2, 0
	ld.d	$fp, $s4, 0
	ld.d	$s3, $s4, 8
	addi.d	$a0, $sp, 1304
	st.d	$a0, $sp, 1288
	st.d	$zero, $sp, 1296
	st.b	$zero, $sp, 1304
	addi.d	$a1, $s3, 1
.Ltmp55:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.55:                               #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 1296
	sub.d	$a0, $s6, $a0
	bltu	$a0, $s3, .LBB8_248
# %bb.56:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 1296
	beq	$a0, $s6, .LBB8_248
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp59:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.59:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 5
	add.d	$s2, $s1, $a0
	ld.d	$a0, $sp, 1296
	ld.d	$a2, $s2, 8
	sub.d	$a0, $s6, $a0
	bltu	$a0, $a2, .LBB8_254
# %bb.60:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $s2, 0
.Ltmp62:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.61:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$s5, $sp, 776
	ld.d	$a2, $sp, 1296
	st.d	$a0, $s5, 0
	st.d	$a1, $s5, 5
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 784
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	st.b	$zero, $sp, 805
	ori	$a1, $zero, 12
	bgeu	$a1, $a0, .LBB8_256
# %bb.62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp65:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 13
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.63:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	beq	$a0, $s5, .LBB8_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_65:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
.Ltmp68:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 48
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.66:                               #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_76
# %bb.67:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp71:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.68:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp73:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.69:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_252
# %bb.70:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_72
# %bb.71:                               #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_74
	.p2align	4, , 16
.LBB8_72:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp75:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.73:                               # %.noexc110.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp77:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp78:                                # EH_LABEL
.LBB8_74:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp79:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.75:                               # %.noexc112.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
.LBB8_76:                               # %_ZNSolsEPFRSoS_E.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp83:                                # EH_LABEL
	ori	$a2, $zero, 27
	move	$a0, $s7
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp85:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.78:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_252
# %bb.79:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_81
# %bb.80:                               #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_83
	.p2align	4, , 16
.LBB8_81:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp87:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.82:                               # %.noexc120.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp89:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp90:                                # EH_LABEL
.LBB8_83:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp91:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.84:                               # %.noexc122.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp93:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.85:                               # %_ZNSolsEPFRSoS_E.exit71.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.b	$a1, $a0, 2
	ld.h	$a2, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 744
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.b	$a1, $a0, 2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.h	$a2, $a0, 0
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 752
	st.b	$zero, $sp, 763
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
.Ltmp96:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.86:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp98:                                # EH_LABEL
	ori	$a2, $zero, 16
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.87:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_91
# %bb.88:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB8_54 Depth=1
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_89:                               # %.lr.ph.i
                                        #   Parent Loop BB8_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp100:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.90:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i
                                        #   in Loop: Header=BB8_89 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$a2, $a0, .LBB8_89
.LBB8_91:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_250
# %bb.92:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_94
# %bb.93:                               #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_96
	.p2align	4, , 16
.LBB8_94:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp103:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.95:                               # %.noexc131.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp105:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp106:                               # EH_LABEL
.LBB8_96:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp107:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.97:                               # %.noexc133.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.98:                               # %_ZNSolsEPFRSoS_E.exit81.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_103
# %bb.99:                               # %.lr.ph5.i.preheader
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$s1, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_100:                              # %.lr.ph5.i
                                        #   Parent Loop BB8_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.101:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i
                                        #   in Loop: Header=BB8_100 Depth=2
	ld.d	$a1, $s3, 112
	slli.d	$a2, $s1, 5
	add.d	$a3, $a1, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $a3, 8
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.102:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i
                                        #   in Loop: Header=BB8_100 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$s1, $a0, .LBB8_100
.LBB8_103:                              # %_ZNSolsEPFRSoS_E.exit81._crit_edge.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_250
# %bb.104:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_106
# %bb.105:                              #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_108
	.p2align	4, , 16
.LBB8_106:                              #   in Loop: Header=BB8_54 Depth=1
.Ltmp116:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.107:                              # %.noexc142.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp118:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp119:                               # EH_LABEL
.LBB8_108:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp120:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.109:                              # %.noexc144.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.110:                              # %_ZNSolsEPFRSoS_E.exit85.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s7, $s3, 48
	ld.d	$a4, $s3, 40
	beq	$s7, $a4, .LBB8_140
# %bb.111:                              # %.lr.ph9.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$s2, $zero
	move	$s1, $zero
	addi.d	$s6, $s3, 600
	b	.LBB8_113
	.p2align	4, , 16
.LBB8_112:                              # %_ZNSolsEPFRSoS_E.exit93.i
                                        #   in Loop: Header=BB8_113 Depth=2
	addi.w	$s1, $s1, 1
	bstrpick.d	$s2, $s1, 31, 0
	sub.d	$a0, $s7, $a4
	srai.d	$a0, $a0, 5
	bgeu	$s2, $a0, .LBB8_140
.LBB8_113:                              #   Parent Loop BB8_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_117 Depth 3
                                        #       Child Loop BB8_129 Depth 3
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s5, $s3, 608
	move	$a0, $s6
	beqz	$s5, .LBB8_124
# %bb.114:                              # %.lr.ph.i.i.i.i.i
                                        #   in Loop: Header=BB8_113 Depth=2
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	move	$s7, $s3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	ld.d	$fp, $a0, 0
	move	$s3, $s6
	move	$s8, $s6
	b	.LBB8_117
	.p2align	4, , 16
.LBB8_115:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	sub.d	$a0, $s6, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_116:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $s8, $a0
	or	$s8, $a0, $a1
	beqz	$s5, .LBB8_119
.LBB8_117:                              #   Parent Loop BB8_54 Depth=1
                                        #     Parent Loop BB8_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s5, 40
	sltu	$a0, $s4, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_115
# %bb.118:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	ld.d	$a0, $s5, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_116
	b	.LBB8_115
	.p2align	4, , 16
.LBB8_119:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i
                                        #   in Loop: Header=BB8_113 Depth=2
	move	$s6, $s3
	move	$a0, $s3
	move	$s3, $s7
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beq	$s8, $s6, .LBB8_124
# %bb.120:                              #   in Loop: Header=BB8_113 Depth=2
	ld.d	$s5, $s8, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_122
# %bb.121:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i62
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a1, $s8, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_123
.LBB8_122:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i67
                                        #   in Loop: Header=BB8_113 Depth=2
	sub.d	$a0, $s4, $s5
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_123:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i64
                                        #   in Loop: Header=BB8_113 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
.LBB8_124:                              #   in Loop: Header=BB8_113 Depth=2
	slli.d	$a1, $s2, 5
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB8_112
# %bb.125:                              #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 280
	mul.d	$a3, $s2, $a3
	add.d	$fp, $a0, $a3
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB8_112
# %bb.126:                              #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a1, $a1, 0
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
	ori	$s5, $zero, 8
# %bb.127:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB8_132
# %bb.128:                              # %.lr.ph7.i
                                        #   in Loop: Header=BB8_113 Depth=2
	move	$s4, $zero
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB8_129:                              #   Parent Loop BB8_54 Depth=1
                                        #     Parent Loop BB8_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.130:                              #   in Loop: Header=BB8_129 Depth=3
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	st.d	$s5, $a1, 8
	ld.d	$a1, $fp, 64
	alsl.d	$a2, $s4, $a1, 4
	slli.d	$a3, $s4, 4
	ldx.d	$a1, $a1, $a3
	ld.d	$a2, $a2, 8
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.131:                              # %_ZNSolsEe.exit.i
                                        #   in Loop: Header=BB8_129 Depth=3
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	bstrpick.d	$s4, $s2, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$s2, $s2, 1
	bltu	$s4, $a0, .LBB8_129
.LBB8_132:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_244
# %bb.133:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_135
# %bb.134:                              #   in Loop: Header=BB8_113 Depth=2
	ld.bu	$a0, $fp, 67
	b	.LBB8_137
.LBB8_135:                              #   in Loop: Header=BB8_113 Depth=2
.Ltmp131:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.136:                              # %.noexc153.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp133:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp134:                               # EH_LABEL
.LBB8_137:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i
                                        #   in Loop: Header=BB8_113 Depth=2
.Ltmp135:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.138:                              # %.noexc155.i
                                        #   in Loop: Header=BB8_113 Depth=2
.Ltmp137:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.139:                              # %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$s7, $s3, 48
	ld.d	$a4, $s3, 40
	b	.LBB8_112
	.p2align	4, , 16
.LBB8_140:                              # %_ZNSolsEPFRSoS_E.exit85._crit_edge.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp143:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s5, $sp, 792
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
# %bb.141:                              #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_143
# %bb.142:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_143:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 776
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_53
# %bb.144:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_53
.LBB8_145:                              # %.preheader
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB8_151
.LBB8_146:                              # %._crit_edge439
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 168
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 416
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB8_148
# %bb.147:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_148:
	ld.d	$a0, $sp, 712
	addi.d	$a1, $sp, 728
	beq	$a0, $a1, .LBB8_150
# %bb.149:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_150:
	ld.d	$s8, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1352                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1360                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1384                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1392                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1400                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1408
	ret
.LBB8_151:                              # %.lr.ph438
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 12
	lu52i.d	$a0, $a0, -1024
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_153
	.p2align	4, , 16
.LBB8_152:                              #   in Loop: Header=BB8_153 Depth=1
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s7, $a0, .LBB8_146
.LBB8_153:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_188 Depth 2
                                        #     Child Loop BB8_199 Depth 2
                                        #     Child Loop BB8_213 Depth 2
                                        #       Child Loop BB8_217 Depth 3
                                        #       Child Loop BB8_229 Depth 3
	ld.d	$s1, $s2, 0
	ld.d	$fp, $s4, 0
	ld.d	$s3, $s4, 8
	addi.d	$a0, $sp, 1304
	st.d	$a0, $sp, 1288
	st.d	$zero, $sp, 1296
	st.b	$zero, $sp, 1304
	addi.d	$a1, $s3, 1
.Ltmp146:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.154:                              #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 1296
	sub.d	$a0, $s6, $a0
	bltu	$a0, $s3, .LBB8_258
# %bb.155:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp148:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.156:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 1296
	beq	$a0, $s6, .LBB8_258
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp150:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.158:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83
                                        #   in Loop: Header=BB8_153 Depth=1
	slli.d	$a0, $s7, 5
	add.d	$s2, $s1, $a0
	ld.d	$a0, $sp, 1296
	ld.d	$a2, $s2, 8
	sub.d	$a0, $s6, $a0
	bltu	$a0, $a2, .LBB8_266
# %bb.159:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $s2, 0
.Ltmp153:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.160:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$s5, $sp, 776
	ld.d	$a2, $sp, 1296
	st.d	$a0, $s5, 0
	st.w	$a1, $s5, 8
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 784
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	st.b	$zero, $sp, 804
	ori	$a1, $zero, 11
	bgeu	$a1, $a0, .LBB8_264
# %bb.161:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i90
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp156:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 12
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.162:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i94
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	beq	$a0, $s5, .LBB8_164
# %bb.163:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_164:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 48
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.165:                              #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_175
# %bb.166:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp162:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.167:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i100
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp164:                               # EH_LABEL
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.168:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_262
# %bb.169:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i103
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_171
# %bb.170:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_173
	.p2align	4, , 16
.LBB8_171:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp166:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.172:                              # %.noexc110.i216
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp168:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp169:                               # EH_LABEL
.LBB8_173:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i105
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp170:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.174:                              # %.noexc112.i107
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp172:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
.LBB8_175:                              # %_ZNSolsEPFRSoS_E.exit.i108
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp174:                               # EH_LABEL
	ori	$a2, $zero, 31
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.176:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67.i109
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp176:                               # EH_LABEL
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.177:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.i110
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_262
# %bb.178:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115.i112
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_180
# %bb.179:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_182
	.p2align	4, , 16
.LBB8_180:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp178:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.181:                              # %.noexc120.i213
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp180:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp181:                               # EH_LABEL
.LBB8_182:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117.i114
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp182:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.183:                              # %.noexc122.i116
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp184:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.184:                              # %_ZNSolsEPFRSoS_E.exit71.i117
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 744
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a1, $a0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.h	$a1, $a0, 0
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 752
	st.b	$zero, $sp, 763
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
.Ltmp187:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
# %bb.185:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i122
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp189:                               # EH_LABEL
	ori	$a2, $zero, 20
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.186:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i123
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_190
# %bb.187:                              # %.lr.ph.i125.preheader
                                        #   in Loop: Header=BB8_153 Depth=1
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_188:                              # %.lr.ph.i125
                                        #   Parent Loop BB8_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp191:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.189:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i127
                                        #   in Loop: Header=BB8_188 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$a2, $a0, .LBB8_188
.LBB8_190:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i128
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_260
# %bb.191:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i130
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_193
# %bb.192:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_195
	.p2align	4, , 16
.LBB8_193:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp194:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.194:                              # %.noexc131.i212
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp196:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp197:                               # EH_LABEL
.LBB8_195:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i132
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp198:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.196:                              # %.noexc133.i134
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.197:                              # %_ZNSolsEPFRSoS_E.exit81.preheader.i135
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_202
# %bb.198:                              # %.lr.ph5.i137.preheader
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$s1, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_199:                              # %.lr.ph5.i137
                                        #   Parent Loop BB8_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp202:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.200:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i139
                                        #   in Loop: Header=BB8_199 Depth=2
	ld.d	$a1, $s3, 112
	slli.d	$a2, $s1, 5
	add.d	$a3, $a1, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $a3, 8
.Ltmp204:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.201:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140
                                        #   in Loop: Header=BB8_199 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$s1, $a0, .LBB8_199
.LBB8_202:                              # %_ZNSolsEPFRSoS_E.exit81._crit_edge.i141
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_260
# %bb.203:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i143
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_205
# %bb.204:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_207
	.p2align	4, , 16
.LBB8_205:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp207:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.206:                              # %.noexc142.i209
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp209:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp210:                               # EH_LABEL
.LBB8_207:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i145
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp211:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.208:                              # %.noexc144.i147
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.209:                              # %_ZNSolsEPFRSoS_E.exit85.preheader.i148
                                        #   in Loop: Header=BB8_153 Depth=1
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s1, $s3, 48
	ld.d	$a4, $s3, 40
	beq	$s1, $a4, .LBB8_239
# %bb.210:                              # %.lr.ph9.i150
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$s5, $zero
	move	$s7, $zero
	addi.d	$s6, $s3, 600
	b	.LBB8_213
	.p2align	4, , 16
.LBB8_211:                              # %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i194
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$s1, $s3, 48
	ld.d	$a4, $s3, 40
.LBB8_212:                              # %_ZNSolsEPFRSoS_E.exit93.i173
                                        #   in Loop: Header=BB8_213 Depth=2
	addi.w	$s7, $s7, 1
	bstrpick.d	$s5, $s7, 31, 0
	sub.d	$a0, $s1, $a4
	srai.d	$a0, $a0, 5
	bgeu	$s5, $a0, .LBB8_239
.LBB8_213:                              #   Parent Loop BB8_153 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_217 Depth 3
                                        #       Child Loop BB8_229 Depth 3
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s2, $s3, 608
	move	$a0, $s6
	beqz	$s2, .LBB8_224
# %bb.214:                              # %.lr.ph.i.i.i.i.i153
                                        #   in Loop: Header=BB8_213 Depth=2
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	move	$s1, $s3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $a0, 8
	ld.d	$fp, $a0, 0
	move	$s3, $s6
	move	$s4, $s6
	b	.LBB8_217
	.p2align	4, , 16
.LBB8_215:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i205
                                        #   in Loop: Header=BB8_217 Depth=3
	sub.d	$a0, $s6, $s8
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_216:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159
                                        #   in Loop: Header=BB8_217 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s2, $s2, $a2
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	beqz	$s2, .LBB8_219
.LBB8_217:                              #   Parent Loop BB8_153 Depth=1
                                        #     Parent Loop BB8_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s2, 40
	sltu	$a0, $s8, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s8, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_215
# %bb.218:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i157
                                        #   in Loop: Header=BB8_217 Depth=3
	ld.d	$a0, $s2, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_216
	b	.LBB8_215
	.p2align	4, , 16
.LBB8_219:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i166
                                        #   in Loop: Header=BB8_213 Depth=2
	move	$s6, $s3
	move	$a0, $s3
	move	$s3, $s1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	beq	$s4, $s6, .LBB8_224
# %bb.220:                              #   in Loop: Header=BB8_213 Depth=2
	ld.d	$s2, $s4, 40
	sltu	$a0, $s2, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_222
# %bb.221:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i168
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a1, $s4, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_223
.LBB8_222:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i201
                                        #   in Loop: Header=BB8_213 Depth=2
	sub.d	$a0, $s8, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_223:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i170
                                        #   in Loop: Header=BB8_213 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
.LBB8_224:                              #   in Loop: Header=BB8_213 Depth=2
	slli.d	$a1, $s5, 5
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB8_212
# %bb.225:                              #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 280
	mul.d	$a3, $s5, $a3
	add.d	$fp, $a0, $a3
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB8_212
# %bb.226:                              #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a1, $a1, 0
.Ltmp215:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
	ori	$s4, $zero, 6
# %bb.227:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i182
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB8_232
# %bb.228:                              # %.lr.ph7.i184
                                        #   in Loop: Header=BB8_213 Depth=2
	move	$s2, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB8_229:                              #   Parent Loop BB8_153 Depth=1
                                        #     Parent Loop BB8_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp217:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.230:                              #   in Loop: Header=BB8_229 Depth=3
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	st.d	$s4, $a1, 8
	ld.d	$a1, $fp, 184
	alsl.d	$a2, $s2, $a1, 4
	slli.d	$a3, $s2, 4
	ldx.d	$a1, $a1, $a3
	ld.d	$a2, $a2, 8
.Ltmp219:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.231:                              # %_ZNSolsEe.exit.i186
                                        #   in Loop: Header=BB8_229 Depth=3
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	bstrpick.d	$s2, $s1, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$s1, $s1, 1
	bltu	$s2, $a0, .LBB8_229
.LBB8_232:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i187
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_246
# %bb.233:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i189
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_235
# %bb.234:                              #   in Loop: Header=BB8_213 Depth=2
	ld.bu	$a0, $fp, 67
	b	.LBB8_237
.LBB8_235:                              #   in Loop: Header=BB8_213 Depth=2
.Ltmp222:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.236:                              # %.noexc153.i197
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp224:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp225:                               # EH_LABEL
.LBB8_237:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i191
                                        #   in Loop: Header=BB8_213 Depth=2
.Ltmp226:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.238:                              # %.noexc155.i193
                                        #   in Loop: Header=BB8_213 Depth=2
.Ltmp228:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
	b	.LBB8_211
	.p2align	4, , 16
.LBB8_239:                              # %_ZNSolsEPFRSoS_E.exit85._crit_edge.i174
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp234:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s5, $sp, 792
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
# %bb.240:                              #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_242
# %bb.241:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i175
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_242:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i176
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 776
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_152
# %bb.243:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i177
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_152
.LBB8_244:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.245:                              # %.noexc152.i
.LBB8_246:
.Ltmp231:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.247:                              # %.noexc152.i200
.LBB8_248:                              # %.invoke.i.i.i
.Ltmp264:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.249:                              # %.cont.i.i.i
.LBB8_250:                              # %.invoke37.i
.Ltmp252:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.251:                              # %.cont38.i
.LBB8_252:                              # %.invoke.i
.Ltmp255:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.253:                              # %.cont.i
.LBB8_254:
.Ltmp261:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.255:                              # %.noexc.i
.LBB8_256:
.Ltmp258:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.257:                              # %.noexc57.i
.LBB8_258:                              # %.invoke.i.i.i220
.Ltmp249:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.259:                              # %.cont.i.i.i221
.LBB8_260:                              # %.invoke37.i210
.Ltmp237:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.261:                              # %.cont38.i211
.LBB8_262:                              # %.invoke.i214
.Ltmp240:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.263:                              # %.cont.i215
.LBB8_264:
.Ltmp243:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.265:                              # %.noexc57.i218
.LBB8_266:
.Ltmp246:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.267:                              # %.noexc.i219
.LBB8_268:                              # %.invoke.i.i
.Ltmp273:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.269:                              # %.cont.i.i
.LBB8_270:                              # %.invoke
.Ltmp267:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.271:                              # %.cont
.LBB8_272:
.Ltmp270:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.273:                              # %.noexc
.LBB8_274:
.Ltmp278:                               # EH_LABEL
	b	.LBB8_298
.LBB8_275:
.Ltmp28:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_324
.LBB8_276:
.Ltmp272:                               # EH_LABEL
	b	.LBB8_278
.LBB8_277:
.Ltmp275:                               # EH_LABEL
.LBB8_278:
	ld.d	$a1, $sp, 776
	move	$s0, $a0
	beq	$a1, $s5, .LBB8_326
# %bb.279:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
	move	$a0, $a1
	b	.LBB8_325
.LBB8_280:                              # %.loopexit.split-lp250
.Ltmp248:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_281:                              # %.loopexit.split-lp255
.Ltmp245:                               # EH_LABEL
	b	.LBB8_293
.LBB8_282:                              # %.loopexit249
.Ltmp155:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_283:                              # %.loopexit254
.Ltmp158:                               # EH_LABEL
	b	.LBB8_293
.LBB8_284:
.Ltmp161:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_285:
.Ltmp269:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_323
.LBB8_286:                              # %.loopexit.split-lp260
.Ltmp242:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_287:                              # %.loopexit.split-lp265
.Ltmp239:                               # EH_LABEL
	b	.LBB8_318
.LBB8_288:                              # %.loopexit.split-lp
.Ltmp251:                               # EH_LABEL
	b	.LBB8_303
.LBB8_289:                              # %.loopexit.split-lp281
.Ltmp260:                               # EH_LABEL
	b	.LBB8_293
.LBB8_290:                              # %.loopexit.split-lp276
.Ltmp263:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_291:                              # %.loopexit275
.Ltmp64:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_292:                              # %.loopexit280
.Ltmp67:                                # EH_LABEL
.LBB8_293:
	move	$s0, $a0
	ld.d	$a0, $sp, 776
	addi.d	$a1, $sp, 792
	beq	$a0, $a1, .LBB8_321
# %bb.294:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i91
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_321
.LBB8_295:
.Ltmp70:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_296:                              # %.loopexit
.Ltmp152:                               # EH_LABEL
	b	.LBB8_303
.LBB8_297:
.Ltmp17:                                # EH_LABEL
.LBB8_298:
	move	$s0, $a0
	b	.LBB8_326
.LBB8_299:                              # %.loopexit.split-lp286
.Ltmp257:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_300:                              # %.loopexit.split-lp291
.Ltmp254:                               # EH_LABEL
	b	.LBB8_318
.LBB8_301:                              # %.loopexit.split-lp271
.Ltmp266:                               # EH_LABEL
	b	.LBB8_303
.LBB8_302:                              # %.loopexit270
.Ltmp61:                                # EH_LABEL
.LBB8_303:
	move	$s0, $a0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	bne	$a0, $a1, .LBB8_322
	b	.LBB8_323
.LBB8_304:                              # %.loopexit.split-lp.i198
.Ltmp233:                               # EH_LABEL
	b	.LBB8_318
.LBB8_305:                              # %.loopexit259
.Ltmp186:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_306:                              # %.loopexit264
.Ltmp236:                               # EH_LABEL
	b	.LBB8_318
.LBB8_307:                              # %.loopexit.split-lp.i
.Ltmp142:                               # EH_LABEL
	b	.LBB8_318
.LBB8_308:                              # %.loopexit285
.Ltmp95:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_309:                              # %.loopexit290
.Ltmp145:                               # EH_LABEL
	b	.LBB8_318
.LBB8_310:
.Ltmp193:                               # EH_LABEL
	b	.LBB8_318
.LBB8_311:                              # %.loopexit.i180
.Ltmp230:                               # EH_LABEL
	b	.LBB8_318
.LBB8_312:
.Ltmp206:                               # EH_LABEL
	b	.LBB8_318
.LBB8_313:
.Ltmp102:                               # EH_LABEL
	b	.LBB8_318
.LBB8_314:                              # %.loopexit.i
.Ltmp139:                               # EH_LABEL
	b	.LBB8_318
.LBB8_315:
.Ltmp115:                               # EH_LABEL
	b	.LBB8_318
.LBB8_316:
.Ltmp221:                               # EH_LABEL
	b	.LBB8_318
.LBB8_317:
.Ltmp130:                               # EH_LABEL
.LBB8_318:
	move	$s0, $a0
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_320
# %bb.319:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_320:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB8_321:
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_323
.LBB8_322:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_323:                              # %.body71
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB8_324:
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB8_326
.LBB8_325:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_326:
	ld.d	$a0, $sp, 712
	addi.d	$a1, $sp, 728
	beq	$a0, $a1, .LBB8_328
# %bb.327:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_328:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end8-_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp23-.Ltmp18                #   Call between .Ltmp18 and .Ltmp23
	.uleb128 .Ltmp275-.Lfunc_begin2         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp272-.Lfunc_begin2         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin2         #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp277               #   Call between .Ltmp277 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin2          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp54-.Ltmp29                #   Call between .Ltmp29 and .Ltmp54
	.uleb128 .Ltmp269-.Lfunc_begin2         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp60-.Ltmp55                #   Call between .Ltmp55 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin2          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin2          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp68-.Ltmp66                #   Call between .Ltmp66 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin2          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp94-.Ltmp71                #   Call between .Ltmp71 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin2          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp99-.Ltmp96                #   Call between .Ltmp96 and .Ltmp99
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp110-.Ltmp103              #   Call between .Ltmp103 and .Ltmp110
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp114-.Ltmp111              #   Call between .Ltmp111 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin2         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp123-.Ltmp116              #   Call between .Ltmp116 and .Ltmp123
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp139-.Lfunc_begin2         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp129-.Ltmp126              #   Call between .Ltmp126 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin2         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp138-.Ltmp131              #   Call between .Ltmp131 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin2         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp151-.Ltmp146              #   Call between .Ltmp146 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin2         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin2         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin2         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp159-.Ltmp157              #   Call between .Ltmp157 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin2         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp185-.Ltmp162              #   Call between .Ltmp162 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin2         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp190-.Ltmp187              #   Call between .Ltmp187 and .Ltmp190
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin2         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Ltmp201-.Ltmp194              #   Call between .Ltmp194 and .Ltmp201
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin2         # >> Call Site 35 <<
	.uleb128 .Ltmp205-.Ltmp202              #   Call between .Ltmp202 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin2         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin2         # >> Call Site 36 <<
	.uleb128 .Ltmp214-.Ltmp207              #   Call between .Ltmp207 and .Ltmp214
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin2         # >> Call Site 37 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin2         # >> Call Site 38 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin2         # >> Call Site 39 <<
	.uleb128 .Ltmp220-.Ltmp217              #   Call between .Ltmp217 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin2         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin2         # >> Call Site 40 <<
	.uleb128 .Ltmp229-.Ltmp222              #   Call between .Ltmp222 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin2         # >> Call Site 41 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin2         # >> Call Site 42 <<
	.uleb128 .Ltmp140-.Ltmp235              #   Call between .Ltmp235 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin2         # >> Call Site 43 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin2         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin2         # >> Call Site 44 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin2         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin2         # >> Call Site 45 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin2         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin2         # >> Call Site 46 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin2         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin2         # >> Call Site 47 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin2         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin2         # >> Call Site 48 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin2         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin2         # >> Call Site 49 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin2         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin2         # >> Call Site 50 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin2         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin2         # >> Call Site 51 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin2         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin2         # >> Call Site 52 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin2         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin2         # >> Call Site 53 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin2         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin2         # >> Call Site 54 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin2         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin2         # >> Call Site 55 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin2         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin2         # >> Call Site 56 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin2         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin2         # >> Call Site 57 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin2         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin2         # >> Call Site 58 <<
	.uleb128 .Lfunc_end8-.Ltmp271           #   Call between .Ltmp271 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
	.type	_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev,@function
_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev: # @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 16
	st.d	$s1, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
.Ltmp279:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSi5seekgElSt12_Ios_Seekdir)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.1:
.Ltmp281:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSi5tellgEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp282:                               # EH_LABEL
# %bb.2:
.Ltmp283:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp284:                               # EH_LABEL
# %bb.3:
.Ltmp286:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$s0, $sp, 8
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSi5seekgElSt12_Ios_Seekdir)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.4:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$a1, $a0, 232
.Ltmp288:                               # EH_LABEL
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $a2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.5:
	addi.d	$s0, $sp, 24
.Ltmp290:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.6:                                # %.noexc
	bnez	$a0, .LBB9_8
# %bb.7:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 8
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
.LBB9_8:                                # %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 8
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	addi.d	$s1, $sp, 8
	stx.d	$a1, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 8
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s1
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB9_9:
.Ltmp285:                               # EH_LABEL
	b	.LBB9_11
.LBB9_10:
.Ltmp294:                               # EH_LABEL
.LBB9_11:
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beq	$a0, $s1, .LBB9_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev, .Lfunc_end9-_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
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
	.uleb128 .Ltmp279-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp294-.Lfunc_begin3         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp284-.Ltmp281              #   Call between .Ltmp281 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin3         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp293-.Ltmp286              #   Call between .Ltmp286 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin3         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp293           #   Call between .Ltmp293 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -528
	.cfi_def_cfa_offset 528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
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
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s6, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s5, $a0, 8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s4, $a0, 0
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 376
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 376
	move	$fp, $a0
	st.d	$a0, $sp, 408
	st.d	$s1, $sp, 424
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 416
	stx.b	$zero, $fp, $s1
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 109
	st.d	$a0, $sp, 344
.Ltmp295:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.1:                                # %.noexc214
	move	$fp, $a0
	ld.d	$s1, $sp, 344
	st.d	$a0, $sp, 376
	st.d	$s1, $sp, 392
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 109
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 384
	stx.b	$zero, $fp, $s1
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 312
.Ltmp298:                               # EH_LABEL
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 312
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.2:                                # %.noexc218
	ld.d	$a1, $sp, 312
	st.d	$a0, $sp, 344
	st.d	$a1, $sp, 360
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 352
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 312
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 280
.Ltmp301:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	addi.d	$a1, $sp, 280
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.3:                                # %.noexc222
	ld.d	$a1, $sp, 280
	st.d	$a0, $sp, 312
	st.d	$a1, $sp, 328
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 320
	stx.b	$zero, $a0, $a1
	ld.d	$s1, $s6, 120
	ld.d	$a2, $s6, 112
	sub.d	$a0, $s1, $a2
	srai.d	$fp, $a0, 5
	srli.d	$a1, $fp, 58
	bnez	$a1, .LBB10_282
# %bb.4:                                # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	beq	$s1, $a2, .LBB10_11
# %bb.5:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
.Ltmp304:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.6:                                # %.lr.ph.i.i.i.i.i.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB10_7:                               # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a0, $a3
	addi.d	$a2, $a1, 16
	stx.d	$a2, $a0, $a3
	st.d	$zero, $a1, 8
	st.b	$zero, $a1, 16
	addi.d	$fp, $fp, -1
	addi.d	$a3, $a3, 32
	bnez	$fp, .LBB10_7
# %bb.8:                                # %.lr.ph.preheader
	move	$a1, $zero
	srai.d	$fp, $a3, 5
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	add.d	$s1, $a0, $a3
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB10_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 112
	slli.d	$a1, $a1, 5
	ldx.d	$a0, $a0, $a1
	ld.b	$a4, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 8
.Ltmp306:                               # EH_LABEL
	ori	$a3, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit
                                        #   in Loop: Header=BB10_9 Depth=1
	bstrpick.d	$a1, $s2, 31, 0
	addi.w	$s2, $s2, 1
	bltu	$a1, $fp, .LBB10_9
	b	.LBB10_12
.LBB10_11:
	move	$s1, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
.LBB10_12:                              # %._crit_edge
.Ltmp309:                               # EH_LABEL
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.13:
.Ltmp312:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp314:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp316:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.16:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit230
.Ltmp318:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.17:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_276
# %bb.18:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_20
# %bb.19:
	ld.bu	$a0, $s2, 67
	b	.LBB10_22
.LBB10_20:
.Ltmp320:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.21:                               # %.noexc501
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp322:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp323:                               # EH_LABEL
.LBB10_22:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp324:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.23:                               # %.noexc503
.Ltmp326:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.24:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 288
.Ltmp328:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.25:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_276
# %bb.26:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i506
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_28
# %bb.27:
	ld.bu	$a0, $s3, 67
	b	.LBB10_30
.LBB10_28:
.Ltmp330:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.29:                               # %.noexc511
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp332:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp333:                               # EH_LABEL
.LBB10_30:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i508
.Ltmp334:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.31:                               # %.noexc513
.Ltmp336:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.32:                               # %_ZNSolsEPFRSoS_E.exit237
.Ltmp338:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp339:                               # EH_LABEL
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp340:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit241
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp342:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.35:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit243
.Ltmp344:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 19
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
# %bb.36:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_276
# %bb.37:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i517
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_39
# %bb.38:
	ld.bu	$a0, $s2, 67
	b	.LBB10_41
.LBB10_39:
.Ltmp346:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp347:                               # EH_LABEL
# %bb.40:                               # %.noexc522
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp348:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp349:                               # EH_LABEL
.LBB10_41:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i519
.Ltmp350:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp351:                               # EH_LABEL
# %bb.42:                               # %.noexc524
.Ltmp352:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp353:                               # EH_LABEL
# %bb.43:                               # %_ZNSolsEPFRSoS_E.exit247
.Ltmp354:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.44:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249
.Ltmp356:                               # EH_LABEL
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.45:                               # %_ZNSolsEm.exit
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_276
# %bb.46:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i528
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_48
# %bb.47:
	ld.bu	$a0, $s3, 67
	b	.LBB10_50
.LBB10_48:
.Ltmp358:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp359:                               # EH_LABEL
# %bb.49:                               # %.noexc533
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp360:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp361:                               # EH_LABEL
.LBB10_50:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i530
.Ltmp362:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.51:                               # %.noexc535
.Ltmp364:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.52:                               # %_ZNSolsEPFRSoS_E.exit252
.Ltmp366:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp367:                               # EH_LABEL
# %bb.53:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254
	ld.wu	$a1, $s6, 136
.Ltmp368:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp369:                               # EH_LABEL
# %bb.54:                               # %_ZNSolsEj.exit
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_276
# %bb.55:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i539
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_57
# %bb.56:
	ld.bu	$a0, $s3, 67
	b	.LBB10_59
.LBB10_57:
.Ltmp370:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp371:                               # EH_LABEL
# %bb.58:                               # %.noexc544
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp372:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp373:                               # EH_LABEL
.LBB10_59:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i541
.Ltmp374:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp375:                               # EH_LABEL
# %bb.60:                               # %.noexc546
.Ltmp376:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.61:                               # %_ZNSolsEPFRSoS_E.exit257
.Ltmp378:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp379:                               # EH_LABEL
# %bb.62:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit259
	fld.d	$fa0, $s6, 144
.Ltmp380:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp381:                               # EH_LABEL
# %bb.63:                               # %_ZNSolsEd.exit
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_276
# %bb.64:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i550
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_66
# %bb.65:
	ld.bu	$a0, $s3, 67
	b	.LBB10_68
.LBB10_66:
.Ltmp382:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp383:                               # EH_LABEL
# %bb.67:                               # %.noexc555
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp384:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp385:                               # EH_LABEL
.LBB10_68:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i552
.Ltmp386:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp387:                               # EH_LABEL
# %bb.69:                               # %.noexc557
.Ltmp388:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.70:                               # %_ZNSolsEPFRSoS_E.exit262
.Ltmp390:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.71:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264.preheader
	sub.d	$a0, $s5, $s4
	srai.d	$a1, $a0, 5
	bstrpick.d	$a0, $a0, 36, 5
	slli.d	$a0, $a0, 5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB10_80
# %bb.72:                               # %.lr.ph766
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$fp, $a0, %pc_lo12(.L.str.36)
	move	$s2, $zero
	move	$s3, $zero
	ori	$s5, $zero, 3
	b	.LBB10_74
	.p2align	4, , 16
.LBB10_73:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
                                        #   in Loop: Header=BB10_74 Depth=1
	addi.d	$s2, $s2, 32
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB10_80
.LBB10_74:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 264
	st.d	$a2, $sp, 248
	st.d	$zero, $sp, 256
	addi.d	$s3, $s3, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 5
	st.b	$zero, $sp, 264
	bgeu	$s3, $a1, .LBB10_76
# %bb.75:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB10_74 Depth=1
	ld.b	$a1, $fp, 2
	ld.h	$a2, $fp, 0
	addi.d	$a3, $sp, 264
	st.b	$a1, $a3, 2
	st.h	$a2, $a3, 0
	st.d	$s5, $sp, 256
	st.b	$zero, $sp, 267
.LBB10_76:                              #   in Loop: Header=BB10_74 Depth=1
	add.d	$a2, $a0, $s2
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
.Ltmp392:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp393:                               # EH_LABEL
# %bb.77:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit272
                                        #   in Loop: Header=BB10_74 Depth=1
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp394:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.78:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit274
                                        #   in Loop: Header=BB10_74 Depth=1
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_73
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
                                        #   in Loop: Header=BB10_74 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_73
.LBB10_80:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264._crit_edge
.Ltmp397:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.81:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit266
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s4, 8
.Ltmp399:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp400:                               # EH_LABEL
# %bb.82:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit282
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_276
# %bb.83:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i561
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_85
# %bb.84:
	ld.bu	$a0, $s3, 67
	b	.LBB10_87
.LBB10_85:
.Ltmp401:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp402:                               # EH_LABEL
# %bb.86:                               # %.noexc566
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp403:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp404:                               # EH_LABEL
.LBB10_87:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i563
.Ltmp405:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.88:                               # %.noexc568
.Ltmp407:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.89:                               # %_ZNSolsEPFRSoS_E.exit284
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp409:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.90:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp411:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.91:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288.preheader
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 248
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 216
.Ltmp413:                               # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 216
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp414:                               # EH_LABEL
# %bb.92:                               # %.noexc291
	ld.d	$a1, $sp, 216
	st.d	$a0, $sp, 248
	st.d	$a1, $sp, 264
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	addi.d	$a2, $a2, %pc_lo12(.L.str.38)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 248
	st.d	$a1, $sp, 256
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $sp, 256
.Ltmp416:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 65
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp417:                               # EH_LABEL
# %bb.93:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_280
# %bb.94:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i572
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_96
# %bb.95:
	ld.bu	$a0, $s2, 67
	b	.LBB10_98
.LBB10_96:
.Ltmp418:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
# %bb.97:                               # %.noexc577
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp420:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp421:                               # EH_LABEL
.LBB10_98:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i574
.Ltmp422:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp423:                               # EH_LABEL
# %bb.99:                               # %.noexc579
.Ltmp424:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
# %bb.100:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$s8, $zero, -177
	lu32i.d	$s8, 0
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	slli.d	$a1, $fp, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$a3, $a1, $a2
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
	add.d	$a0, $s0, $a0
	srai.d	$a3, $a3, 32
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $a0, 16
.Ltmp426:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.101:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 18
	st.d	$fp, $a0, 16
.Ltmp428:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp429:                               # EH_LABEL
# %bb.102:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp430:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.103:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 18
	st.d	$fp, $a0, 16
.Ltmp432:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.104:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp434:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp435:                               # EH_LABEL
# %bb.105:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
.Ltmp436:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
# %bb.106:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_280
# %bb.107:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i583
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_109
# %bb.108:
	ld.bu	$a0, $s2, 67
	b	.LBB10_111
.LBB10_109:
.Ltmp438:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.110:                              # %.noexc588
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp440:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp441:                               # EH_LABEL
.LBB10_111:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i585
.Ltmp442:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
# %bb.112:                              # %.noexc590
.Ltmp444:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.113:                              # %_ZNSolsEPFRSoS_E.exit325
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 384
.Ltmp446:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.114:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit327.preheader
	ld.d	$a0, $s6, 48
	ld.d	$s3, $s6, 40
	beq	$a0, $s3, .LBB10_239
# %bb.115:                              # %.lr.ph781
	move	$a1, $s6
	move	$s6, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	addi.d	$a0, $a1, 600
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB10_117
	.p2align	4, , 16
.LBB10_116:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 48
	ld.d	$s3, $a1, 40
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$s6, $a2, 31, 0
	sub.d	$a0, $a0, $s3
	srai.d	$a0, $a0, 5
	bgeu	$s6, $a0, .LBB10_239
.LBB10_117:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_121 Depth 2
                                        #     Child Loop BB10_155 Depth 2
                                        #       Child Loop BB10_159 Depth 3
                                        #       Child Loop BB10_171 Depth 3
                                        #       Child Loop BB10_190 Depth 3
	ld.d	$s5, $a1, 608
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$s5, .LBB10_128
# %bb.118:                              # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a0, 8
	ld.d	$s2, $a0, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_121
	.p2align	4, , 16
.LBB10_119:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_121 Depth=2
	sub.d	$a0, $s7, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_120:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB10_121 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s5, .LBB10_123
.LBB10_121:                             #   Parent Loop BB10_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s5, 40
	sltu	$a0, $s4, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_119
# %bb.122:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_121 Depth=2
	ld.d	$a0, $s5, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_120
	b	.LBB10_119
	.p2align	4, , 16
.LBB10_123:                             # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $a1
	beq	$fp, $a1, .LBB10_128
# %bb.124:                              #   in Loop: Header=BB10_117 Depth=1
	ld.d	$s5, $fp, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_126
# %bb.125:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_127
.LBB10_126:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_117 Depth=1
	sub.d	$a0, $s4, $s5
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_127:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB10_117 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB10_128:                             #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 280
	mul.d	$a1, $s6, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	add.d	$s2, $a0, $a1
	ld.d	$a0, $s2, 72
	ld.d	$a1, $s2, 64
	beq	$a0, $a1, .LBB10_139
# %bb.129:                              #   in Loop: Header=BB10_117 Depth=1
	sub.d	$a0, $a0, $a1
	addi.w	$a1, $zero, -15
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB10_262
# %bb.130:                              # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB10_117 Depth=1
.Ltmp448:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
.Ltmp449:                               # EH_LABEL
# %bb.131:                              # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc333_crit_edge
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a1, $s2, 64
	ld.d	$a0, $s2, 72
	sub.d	$a2, $a0, $a1
	ori	$a0, $zero, 17
	blt	$a2, $a0, .LBB10_140
.LBB10_132:                             #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB10_133:                             #   in Loop: Header=BB10_117 Depth=1
	slli.d	$fp, $s6, 5
	add.d	$a0, $s3, $fp
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB10_237
# %bb.134:                              #   in Loop: Header=BB10_117 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB10_237
# %bb.135:                              #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB10_148
# %bb.136:                              #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB10_278
# %bb.137:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i594
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB10_142
# %bb.138:                              #   in Loop: Header=BB10_117 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB10_144
	.p2align	4, , 16
.LBB10_139:                             #   in Loop: Header=BB10_117 Depth=1
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	sub.d	$a2, $a0, $a1
	ori	$a0, $zero, 17
	bge	$a2, $a0, .LBB10_132
.LBB10_140:                             #   in Loop: Header=BB10_117 Depth=1
	ori	$a0, $zero, 16
	bne	$a2, $a0, .LBB10_133
# %bb.141:                              #   in Loop: Header=BB10_117 Depth=1
	vld	$vr0, $a1, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	vst	$vr0, $a0, 0
	b	.LBB10_133
.LBB10_142:                             #   in Loop: Header=BB10_117 Depth=1
.Ltmp454:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp455:                               # EH_LABEL
# %bb.143:                              # %.noexc599
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp456:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp457:                               # EH_LABEL
.LBB10_144:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i596
                                        #   in Loop: Header=BB10_117 Depth=1
.Ltmp458:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.145:                              # %.noexc601
                                        #   in Loop: Header=BB10_117 Depth=1
.Ltmp460:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp461:                               # EH_LABEL
# %bb.146:                              # %_ZNSolsEPFRSoS_E.exit335
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 352
.Ltmp462:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.147:                              # %_ZNSolsEPFRSoS_E.exit335._crit_edge
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $a0, 40
.LBB10_148:                             #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 24
	and	$a1, $a1, $s8
	addi.d	$a1, $a1, 32
	st.w	$a1, $a0, 24
	add.d	$a0, $s3, $fp
	ldx.d	$a1, $s3, $fp
	ld.d	$a2, $a0, 8
.Ltmp464:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp465:                               # EH_LABEL
# %bb.149:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341
                                        #   in Loop: Header=BB10_117 Depth=1
.Ltmp466:                               # EH_LABEL
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
# %bb.150:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit343
                                        #   in Loop: Header=BB10_117 Depth=1
.Ltmp468:                               # EH_LABEL
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.151:                              # %_ZNSolsEj.exit345
                                        #   in Loop: Header=BB10_117 Depth=1
.Ltmp470:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.152:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347.preheader
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_237
# %bb.153:                              # %.lr.ph779.preheader
                                        #   in Loop: Header=BB10_117 Depth=1
	move	$a1, $zero
	b	.LBB10_155
	.p2align	4, , 16
.LBB10_154:                             # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_237
.LBB10_155:                             # %.lr.ph779
                                        #   Parent Loop BB10_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_159 Depth 3
                                        #       Child Loop BB10_171 Depth 3
                                        #       Child Loop BB10_190 Depth 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $a0, 608
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB10_166
# %bb.156:                              # %.lr.ph.i.i.i.i349
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ld.d	$s2, $a1, 8
	ldx.d	$s6, $a0, $a2
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_159
	.p2align	4, , 16
.LBB10_157:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i373
                                        #   in Loop: Header=BB10_159 Depth=3
	sub.d	$a0, $s4, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_158:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i355
                                        #   in Loop: Header=BB10_159 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s3, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s3, $s3, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s3, .LBB10_161
.LBB10_159:                             #   Parent Loop BB10_117 Depth=1
                                        #     Parent Loop BB10_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s3, 40
	sltu	$a0, $s2, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_157
# %bb.160:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i353
                                        #   in Loop: Header=BB10_159 Depth=3
	ld.d	$a0, $s3, 32
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_158
	b	.LBB10_157
	.p2align	4, , 16
.LBB10_161:                             # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i362
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $a1
	beq	$fp, $a1, .LBB10_166
# %bb.162:                              #   in Loop: Header=BB10_155 Depth=2
	ld.d	$s3, $fp, 40
	sltu	$a0, $s3, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_164
# %bb.163:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i364
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a1, $fp, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_165
.LBB10_164:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i369
                                        #   in Loop: Header=BB10_155 Depth=2
	sub.d	$a0, $s2, $s3
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_165:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i366
                                        #   in Loop: Header=BB10_155 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB10_166:                             #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $a1
	beqz	$a1, .LBB10_154
# %bb.167:                              #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_169
# %bb.168:                              #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a1, $sp, 312
	ld.d	$a2, $sp, 320
.Ltmp473:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
	b	.LBB10_186
.LBB10_169:                             # %.preheader
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
	beq	$a0, $a1, .LBB10_179
# %bb.170:                              # %.lr.ph774
                                        #   in Loop: Header=BB10_155 Depth=2
	move	$s3, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB10_171:                             #   Parent Loop BB10_117 Depth=1
                                        #     Parent Loop BB10_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp475:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.172:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381
                                        #   in Loop: Header=BB10_171 Depth=3
	slli.d	$a0, $s3, 5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ldx.d	$a1, $a1, $a0
	ld.d	$a2, $a2, 8
.Ltmp477:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.173:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit383
                                        #   in Loop: Header=BB10_171 Depth=3
.Ltmp479:                               # EH_LABEL
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp480:                               # EH_LABEL
# %bb.174:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385
                                        #   in Loop: Header=BB10_171 Depth=3
	ld.d	$a0, $s2, 208
	slli.d	$s3, $s3, 2
	ldx.w	$a1, $a0, $s3
.Ltmp481:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp482:                               # EH_LABEL
# %bb.175:                              #   in Loop: Header=BB10_171 Depth=3
.Ltmp483:                               # EH_LABEL
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.176:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit387
                                        #   in Loop: Header=BB10_171 Depth=3
	ld.d	$a0, $s2, 232
	ldx.w	$a1, $a0, $s3
.Ltmp485:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
# %bb.177:                              #   in Loop: Header=BB10_171 Depth=3
.Ltmp487:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp488:                               # EH_LABEL
# %bb.178:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit389
                                        #   in Loop: Header=BB10_171 Depth=3
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
	bstrpick.d	$s3, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$fp, $fp, 1
	bltu	$s3, $a0, .LBB10_171
.LBB10_179:                             # %._crit_edge775
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB10_274
# %bb.180:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i605
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB10_182
# %bb.181:                              #   in Loop: Header=BB10_155 Depth=2
	ld.bu	$a0, $s6, 67
	b	.LBB10_184
.LBB10_182:                             #   in Loop: Header=BB10_155 Depth=2
.Ltmp490:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp491:                               # EH_LABEL
# %bb.183:                              # %.noexc610
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp492:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp493:                               # EH_LABEL
.LBB10_184:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i607
                                        #   in Loop: Header=BB10_155 Depth=2
.Ltmp494:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp495:                               # EH_LABEL
# %bb.185:                              # %.noexc612
                                        #   in Loop: Header=BB10_155 Depth=2
.Ltmp496:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp497:                               # EH_LABEL
.LBB10_186:                             # %_ZNSolsEPFRSoS_E.exit379
                                        #   in Loop: Header=BB10_155 Depth=2
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
	beq	$a0, $a1, .LBB10_154
# %bb.187:                              # %.lr.ph777
                                        #   in Loop: Header=BB10_155 Depth=2
	move	$s3, $zero
	ori	$s4, $zero, 1
	b	.LBB10_190
	.p2align	4, , 16
.LBB10_188:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
.LBB10_189:                             #   in Loop: Header=BB10_190 Depth=3
	bstrpick.d	$s3, $s4, 31, 0
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.w	$s4, $s4, 1
	bgeu	$s3, $a2, .LBB10_154
.LBB10_190:                             #   Parent Loop BB10_117 Depth=1
                                        #     Parent Loop BB10_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s2, 40
	slli.d	$a3, $s3, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB10_189
# %bb.191:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ldx.d	$s6, $a0, $a2
	ld.d	$s7, $a1, 8
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	st.d	$zero, $sp, 160
	st.b	$zero, $sp, 168
	addi.d	$a1, $s7, 1
.Ltmp499:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp500:                               # EH_LABEL
# %bb.192:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $sp, 160
	addi.w	$a1, $zero, -1
	lu52i.d	$fp, $a1, 1023
	sub.d	$a0, $fp, $a0
	bltu	$a0, $s7, .LBB10_264
# %bb.193:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB10_190 Depth=3
.Ltmp501:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.194:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $sp, 160
	beq	$a0, $fp, .LBB10_264
# %bb.195:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB10_190 Depth=3
.Ltmp503:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp504:                               # EH_LABEL
# %bb.196:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
                                        #   in Loop: Header=BB10_190 Depth=3
	slli.d	$a0, $s3, 5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 160
	ld.d	$a2, $a0, 8
	sub.d	$a1, $fp, $a1
	bltu	$a1, $a2, .LBB10_266
# %bb.197:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a1, $a0, 0
.Ltmp506:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp507:                               # EH_LABEL
# %bb.198:                              # %.noexc395
                                        #   in Loop: Header=BB10_190 Depth=3
	addi.d	$a3, $sp, 200
	st.d	$a3, $sp, 184
	ld.d	$a1, $a0, 0
	addi.d	$s6, $a0, 16
	beq	$a1, $s6, .LBB10_200
# %bb.199:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 200
	ld.d	$s5, $a0, 8
	st.d	$a1, $sp, 184
	b	.LBB10_201
	.p2align	4, , 16
.LBB10_200:                             #   in Loop: Header=BB10_190 Depth=3
	ld.d	$s5, $a0, 8
	addi.d	$a2, $s5, 1
	move	$s7, $a0
	move	$a0, $a3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
.LBB10_201:                             #   in Loop: Header=BB10_190 Depth=3
	st.d	$s5, $sp, 192
	st.d	$s6, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 192
	st.b	$zero, $a0, 16
	beq	$a1, $fp, .LBB10_268
# %bb.202:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
                                        #   in Loop: Header=BB10_190 Depth=3
.Ltmp509:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp510:                               # EH_LABEL
# %bb.203:                              # %.noexc400
                                        #   in Loop: Header=BB10_190 Depth=3
	addi.d	$a3, $sp, 232
	st.d	$a3, $sp, 216
	ld.d	$a1, $a0, 0
	addi.d	$s6, $a0, 16
	beq	$a1, $s6, .LBB10_205
# %bb.204:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 232
	ld.d	$fp, $a0, 8
	st.d	$a1, $sp, 216
	b	.LBB10_206
	.p2align	4, , 16
.LBB10_205:                             #   in Loop: Header=BB10_190 Depth=3
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	move	$s5, $a0
	move	$a0, $a3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB10_206:                             #   in Loop: Header=BB10_190 Depth=3
	st.d	$fp, $sp, 224
	st.d	$s6, $a0, 0
	ld.d	$a1, $sp, 184
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$a0, $sp, 200
	beq	$a1, $a0, .LBB10_208
# %bb.207:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401
                                        #   in Loop: Header=BB10_190 Depth=3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_208:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB10_210
# %bb.209:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404
                                        #   in Loop: Header=BB10_190 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_210:                             #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.w	$a2, $a1, 24
	ori	$a2, $a2, 1024
	st.w	$a2, $a1, 24
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 10
	st.d	$a2, $a1, 8
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 216
	ld.d	$a2, $sp, 224
	add.d	$a0, $s0, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $a0, 16
.Ltmp512:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp513:                               # EH_LABEL
# %bb.211:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 64
	alsl.d	$a2, $s3, $a0, 4
	slli.d	$fp, $s3, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp514:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp515:                               # EH_LABEL
# %bb.212:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 112
	alsl.d	$a2, $s3, $a0, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp516:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.213:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 136
	alsl.d	$a2, $s3, $a0, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp518:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp519:                               # EH_LABEL
# %bb.214:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 88
	alsl.d	$a2, $s3, $a0, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp520:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp521:                               # EH_LABEL
# %bb.215:                              # %_ZNSolsEe.exit425
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_218
# %bb.216:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a1, 4
	ldx.d	$s6, $a1, $fp
	ld.d	$s7, $a0, 8
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_221
# %bb.217:                              #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s2, 64
	alsl.d	$a1, $s3, $a0, 4
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a1, 8
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$s7, $a1
	b	.LBB10_222
	.p2align	4, , 16
.LBB10_218:                             #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB10_272
# %bb.219:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i627
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB10_231
# %bb.220:                              #   in Loop: Header=BB10_190 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB10_233
.LBB10_221:                             #   in Loop: Header=BB10_190 Depth=3
	move	$s6, $zero
	move	$s7, $zero
.LBB10_222:                             #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	move	$s1, $s8
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 6
	st.d	$a2, $a1, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
.Ltmp522:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.223:                              # %_ZNSolsEe.exit435
                                        #   in Loop: Header=BB10_190 Depth=3
	move	$s8, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB10_270
# %bb.224:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i616
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB10_226
# %bb.225:                              #   in Loop: Header=BB10_190 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB10_228
.LBB10_226:                             #   in Loop: Header=BB10_190 Depth=3
.Ltmp524:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp525:                               # EH_LABEL
# %bb.227:                              # %.noexc621
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp526:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp527:                               # EH_LABEL
.LBB10_228:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i618
                                        #   in Loop: Header=BB10_190 Depth=3
.Ltmp528:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.229:                              # %.noexc623
                                        #   in Loop: Header=BB10_190 Depth=3
.Ltmp530:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp531:                               # EH_LABEL
# %bb.230:                              # %_ZNSolsEPFRSoS_E.exit437
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s2, 184
	alsl.d	$a1, $s3, $a0, 4
	stx.d	$s6, $a0, $fp
	st.d	$s7, $a1, 8
	move	$s8, $s1
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_235
.LBB10_231:                             #   in Loop: Header=BB10_190 Depth=3
.Ltmp536:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp537:                               # EH_LABEL
# %bb.232:                              # %.noexc632
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp538:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp539:                               # EH_LABEL
.LBB10_233:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i629
                                        #   in Loop: Header=BB10_190 Depth=3
.Ltmp540:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.234:                              # %.noexc634
                                        #   in Loop: Header=BB10_190 Depth=3
.Ltmp542:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp543:                               # EH_LABEL
.LBB10_235:                             # %_ZNSolsEPFRSoS_E.exit439
                                        #   in Loop: Header=BB10_190 Depth=3
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB10_188
# %bb.236:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
                                        #   in Loop: Header=BB10_190 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_188
	.p2align	4, , 16
.LBB10_237:                             # %.loopexit689
                                        #   in Loop: Header=BB10_117 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_116
# %bb.238:                              #   in Loop: Header=BB10_117 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_116
.LBB10_239:                             # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit327._crit_edge
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 384
.Ltmp563:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp564:                               # EH_LABEL
# %bb.240:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329
.Ltmp565:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
# %bb.241:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449
.Ltmp567:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp568:                               # EH_LABEL
# %bb.242:
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_244
# %bb.243:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_244:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_246
# %bb.245:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_246:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_251
# %bb.247:                              # %.lr.ph.i.i.i.preheader
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB10_249
	.p2align	4, , 16
.LBB10_248:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB10_249 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s1, .LBB10_251
.LBB10_249:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB10_248
# %bb.250:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_249 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_248
.LBB10_251:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_253
# %bb.252:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_253:                             # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB10_255
# %bb.254:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_255:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB10_257
# %bb.256:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_257:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB10_259
# %bb.258:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_259:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB10_261
# %bb.260:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_261:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.LBB10_262:                             # %.noexc.i.i
.Ltmp451:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.Ltmp452:                               # EH_LABEL
# %bb.263:                              # %.noexc332
.LBB10_264:                             # %.invoke.i.i
.Ltmp554:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp555:                               # EH_LABEL
# %bb.265:                              # %.cont.i.i
.LBB10_266:
.Ltmp551:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp552:                               # EH_LABEL
# %bb.267:                              # %.noexc394
.LBB10_268:
.Ltmp548:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp549:                               # EH_LABEL
# %bb.269:                              # %.noexc399
.LBB10_270:
.Ltmp533:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp534:                               # EH_LABEL
# %bb.271:                              # %.noexc620
.LBB10_272:
.Ltmp545:                               # EH_LABEL
	addi.d	$fp, $sp, 232
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp546:                               # EH_LABEL
# %bb.273:                              # %.noexc631
.LBB10_274:
.Ltmp557:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp558:                               # EH_LABEL
# %bb.275:                              # %.noexc609
.LBB10_276:                             # %.invoke
.Ltmp572:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp573:                               # EH_LABEL
# %bb.277:                              # %.cont
.LBB10_278:
.Ltmp560:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp561:                               # EH_LABEL
# %bb.279:                              # %.noexc598
.LBB10_280:                             # %.invoke956
.Ltmp569:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp570:                               # EH_LABEL
# %bb.281:                              # %.cont957
.LBB10_282:
.Ltmp575:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp576:                               # EH_LABEL
# %bb.283:                              # %.noexc224
.LBB10_284:
.Ltmp415:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_325
	b	.LBB10_328
.LBB10_285:
.Ltmp311:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_329
	b	.LBB10_335
.LBB10_286:
.Ltmp303:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB10_332
	b	.LBB10_341
.LBB10_287:
.Ltmp300:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB10_333
	b	.LBB10_342
.LBB10_288:
.Ltmp297:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB10_334
	b	.LBB10_343
.LBB10_289:
.Ltmp577:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB10_331
	b	.LBB10_340
.LBB10_290:                             # %.loopexit.split-lp701
.Ltmp562:                               # EH_LABEL
	b	.LBB10_295
.LBB10_291:                             # %.loopexit695
.Ltmp450:                               # EH_LABEL
	b	.LBB10_345
.LBB10_292:
.Ltmp571:                               # EH_LABEL
	b	.LBB10_345
.LBB10_293:                             # %.thread
.Ltmp308:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB10_335
.LBB10_294:                             # %.loopexit.split-lp691
.Ltmp559:                               # EH_LABEL
.LBB10_295:
	move	$s0, $a0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_322
.LBB10_296:                             # %.loopexit700
.Ltmp472:                               # EH_LABEL
	b	.LBB10_317
.LBB10_297:
.Ltmp396:                               # EH_LABEL
	ld.d	$a1, $sp, 248
	move	$s0, $a0
	addi.d	$a0, $sp, 264
	beq	$a1, $a0, .LBB10_299
# %bb.298:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_299:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_325
	b	.LBB10_328
.LBB10_300:
.Ltmp574:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_325
	b	.LBB10_328
.LBB10_301:                             # %.loopexit690
.Ltmp498:                               # EH_LABEL
	b	.LBB10_317
.LBB10_302:                             # %.loopexit.split-lp680
.Ltmp547:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB10_320
.LBB10_303:                             # %.loopexit.split-lp685
.Ltmp535:                               # EH_LABEL
	b	.LBB10_312
.LBB10_304:                             # %.loopexit669
.Ltmp508:                               # EH_LABEL
	b	.LBB10_314
.LBB10_305:                             # %.loopexit.split-lp675
.Ltmp550:                               # EH_LABEL
	b	.LBB10_308
.LBB10_306:                             # %.loopexit.split-lp670
.Ltmp553:                               # EH_LABEL
	b	.LBB10_314
.LBB10_307:                             # %.loopexit674
.Ltmp511:                               # EH_LABEL
.LBB10_308:
	move	$s0, $a0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB10_315
# %bb.309:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_315
.LBB10_310:                             # %.loopexit.split-lp
.Ltmp556:                               # EH_LABEL
	b	.LBB10_314
.LBB10_311:                             # %.loopexit684
.Ltmp532:                               # EH_LABEL
.LBB10_312:
	move	$s0, $a0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_319
.LBB10_313:                             # %.loopexit668
.Ltmp505:                               # EH_LABEL
.LBB10_314:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
	move	$s0, $a0
.LBB10_315:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	bne	$a0, $a1, .LBB10_321
	b	.LBB10_322
.LBB10_316:
.Ltmp489:                               # EH_LABEL
.LBB10_317:
	move	$s0, $a0
	b	.LBB10_322
.LBB10_318:                             # %.loopexit679
.Ltmp544:                               # EH_LABEL
	move	$s0, $a0
.LBB10_319:
	addi.d	$fp, $sp, 232
.LBB10_320:
	ld.d	$a0, $sp, 216
	beq	$a0, $fp, .LBB10_322
.LBB10_321:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_322:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_326
# %bb.323:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit447
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	bne	$a0, $a1, .LBB10_327
.LBB10_324:
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	bne	$a0, $a1, .LBB10_328
.LBB10_325:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_329
	b	.LBB10_335
.LBB10_326:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_324
.LBB10_327:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_325
.LBB10_328:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB10_335
.LBB10_329:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_339
# %bb.330:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	bne	$a0, $a1, .LBB10_340
.LBB10_331:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	bne	$a0, $a1, .LBB10_341
.LBB10_332:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	bne	$a0, $a1, .LBB10_342
.LBB10_333:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	bne	$a0, $a1, .LBB10_343
.LBB10_334:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_335:                             # %.lr.ph.i.i.i476.preheader
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB10_337
	.p2align	4, , 16
.LBB10_336:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479
                                        #   in Loop: Header=BB10_337 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s1, .LBB10_329
.LBB10_337:                             # %.lr.ph.i.i.i476
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB10_336
# %bb.338:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i478
                                        #   in Loop: Header=BB10_337 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_336
.LBB10_339:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB10_331
.LBB10_340:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB10_332
.LBB10_341:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB10_333
.LBB10_342:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB10_334
.LBB10_343:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_344:                             # %.loopexit.split-lp696
.Ltmp453:                               # EH_LABEL
.LBB10_345:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit447
	move	$s0, $a0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_324
	b	.LBB10_327
.Lfunc_end10:
	.size	_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end10-_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp295-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp295
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin4         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp298-.Ltmp296              #   Call between .Ltmp296 and .Ltmp298
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin4         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin4         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp577-.Lfunc_begin4         #     jumps to .Ltmp577
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin4         #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin4         #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp391-.Ltmp312              #   Call between .Ltmp312 and .Ltmp391
	.uleb128 .Ltmp574-.Lfunc_begin4         #     jumps to .Ltmp574
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp395-.Ltmp392              #   Call between .Ltmp392 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin4         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp397-.Ltmp395              #   Call between .Ltmp395 and .Ltmp397
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp412-.Ltmp397              #   Call between .Ltmp397 and .Ltmp412
	.uleb128 .Ltmp574-.Lfunc_begin4         #     jumps to .Ltmp574
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp414-.Ltmp413              #   Call between .Ltmp413 and .Ltmp414
	.uleb128 .Ltmp415-.Lfunc_begin4         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp447-.Ltmp416              #   Call between .Ltmp416 and .Ltmp447
	.uleb128 .Ltmp571-.Lfunc_begin4         #     jumps to .Ltmp571
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.uleb128 .Ltmp450-.Lfunc_begin4         #     jumps to .Ltmp450
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp454-.Ltmp449              #   Call between .Ltmp449 and .Ltmp454
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp454-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp471-.Ltmp454              #   Call between .Ltmp454 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin4         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp473-.Ltmp471              #   Call between .Ltmp471 and .Ltmp473
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp474-.Ltmp473              #   Call between .Ltmp473 and .Ltmp474
	.uleb128 .Ltmp498-.Lfunc_begin4         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp488-.Ltmp475              #   Call between .Ltmp475 and .Ltmp488
	.uleb128 .Ltmp489-.Lfunc_begin4         #     jumps to .Ltmp489
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp490-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp497-.Ltmp490              #   Call between .Ltmp490 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin4         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp504-.Ltmp499              #   Call between .Ltmp499 and .Ltmp504
	.uleb128 .Ltmp505-.Lfunc_begin4         #     jumps to .Ltmp505
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp506-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp507-.Ltmp506              #   Call between .Ltmp506 and .Ltmp507
	.uleb128 .Ltmp508-.Lfunc_begin4         #     jumps to .Ltmp508
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp509-.Ltmp507              #   Call between .Ltmp507 and .Ltmp509
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp511-.Lfunc_begin4         #     jumps to .Ltmp511
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp512-.Ltmp510              #   Call between .Ltmp510 and .Ltmp512
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp512-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp521-.Ltmp512              #   Call between .Ltmp512 and .Ltmp521
	.uleb128 .Ltmp544-.Lfunc_begin4         #     jumps to .Ltmp544
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp531-.Ltmp522              #   Call between .Ltmp522 and .Ltmp531
	.uleb128 .Ltmp532-.Lfunc_begin4         #     jumps to .Ltmp532
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp536-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp543-.Ltmp536              #   Call between .Ltmp536 and .Ltmp543
	.uleb128 .Ltmp544-.Lfunc_begin4         #     jumps to .Ltmp544
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp563-.Ltmp543              #   Call between .Ltmp543 and .Ltmp563
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp563-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp568-.Ltmp563              #   Call between .Ltmp563 and .Ltmp568
	.uleb128 .Ltmp571-.Lfunc_begin4         #     jumps to .Ltmp571
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp451-.Ltmp568              #   Call between .Ltmp568 and .Ltmp451
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp451-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp452-.Ltmp451              #   Call between .Ltmp451 and .Ltmp452
	.uleb128 .Ltmp453-.Lfunc_begin4         #     jumps to .Ltmp453
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp554-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp555-.Ltmp554              #   Call between .Ltmp554 and .Ltmp555
	.uleb128 .Ltmp556-.Lfunc_begin4         #     jumps to .Ltmp556
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp551-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp552-.Ltmp551              #   Call between .Ltmp551 and .Ltmp552
	.uleb128 .Ltmp553-.Lfunc_begin4         #     jumps to .Ltmp553
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp549-.Ltmp548              #   Call between .Ltmp548 and .Ltmp549
	.uleb128 .Ltmp550-.Lfunc_begin4         #     jumps to .Ltmp550
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp535-.Lfunc_begin4         #     jumps to .Ltmp535
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp545-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp546-.Ltmp545              #   Call between .Ltmp545 and .Ltmp546
	.uleb128 .Ltmp547-.Lfunc_begin4         #     jumps to .Ltmp547
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp557-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp558-.Ltmp557              #   Call between .Ltmp557 and .Ltmp558
	.uleb128 .Ltmp559-.Lfunc_begin4         #     jumps to .Ltmp559
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp572-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp573-.Ltmp572              #   Call between .Ltmp572 and .Ltmp573
	.uleb128 .Ltmp574-.Lfunc_begin4         #     jumps to .Ltmp574
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp560-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp561-.Ltmp560              #   Call between .Ltmp560 and .Ltmp561
	.uleb128 .Ltmp562-.Lfunc_begin4         #     jumps to .Ltmp562
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp569-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp570-.Ltmp569              #   Call between .Ltmp569 and .Ltmp570
	.uleb128 .Ltmp571-.Lfunc_begin4         #     jumps to .Ltmp571
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp575-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp576-.Ltmp575              #   Call between .Ltmp575 and .Ltmp576
	.uleb128 .Ltmp577-.Lfunc_begin4         #     jumps to .Ltmp577
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Lfunc_end10-.Ltmp576          #   Call between .Ltmp576 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -608
	.cfi_def_cfa_offset 608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB11_38
# %bb.1:
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB11_11
# %bb.2:
	ld.d	$s1, $a1, 0
	addi.d	$s2, $sp, 24
	st.d	$s2, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
	addi.d	$a1, $s0, 1
.Ltmp578:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp579:                               # EH_LABEL
# %bb.3:
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -1
	lu52i.d	$s3, $a1, 1023
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s0, .LBB11_39
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp580:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp581:                               # EH_LABEL
# %bb.5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB11_39
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp582:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.7:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 16
	ori	$a1, $zero, 12
	lu52i.d	$a1, $a1, -1024
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 11
	bgeu	$a1, $a0, .LBB11_43
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp584:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp585:                               # EH_LABEL
# %bb.9:                                # %.noexc10
	addi.d	$s0, $sp, 536
	st.d	$s0, $sp, 520
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB11_12
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 536
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 520
	b	.LBB11_13
.LBB11_11:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jr	$t8
.LBB11_12:
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s4, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB11_13:
	st.d	$s3, $sp, 528
	st.d	$s1, $a0, 0
	ld.d	$a1, $sp, 8
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB11_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 520
.Ltmp586:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 48
	addi.d	$s1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp587:                               # EH_LABEL
# %bb.16:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB11_26
# %bb.17:
.Ltmp589:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp590:                               # EH_LABEL
# %bb.18:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp591:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.19:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB11_41
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB11_22
# %bb.21:
	ld.bu	$a0, $s2, 67
	b	.LBB11_24
.LBB11_22:
.Ltmp593:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp594:                               # EH_LABEL
# %bb.23:                               # %.noexc31
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp595:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp596:                               # EH_LABEL
.LBB11_24:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp597:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.25:                               # %.noexc33
.Ltmp599:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp600:                               # EH_LABEL
.LBB11_26:                              # %_ZNSolsEPFRSoS_E.exit
.Ltmp601:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp602:                               # EH_LABEL
# %bb.27:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp603:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.28:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB11_41
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB11_31
# %bb.30:
	ld.bu	$a0, $s2, 67
	b	.LBB11_33
.LBB11_31:
.Ltmp605:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp606:                               # EH_LABEL
# %bb.32:                               # %.noexc41
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp607:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp608:                               # EH_LABEL
.LBB11_33:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38
.Ltmp609:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.34:                               # %.noexc43
.Ltmp611:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp612:                               # EH_LABEL
# %bb.35:                               # %_ZNSolsEPFRSoS_E.exit23
.Ltmp613:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp614:                               # EH_LABEL
# %bb.36:
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	stx.d	$a0, $a1, $s1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB11_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_38:
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB11_39:                              # %.invoke.i.i
.Ltmp621:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
# %bb.40:                               # %.cont.i.i
.LBB11_41:                              # %.invoke
.Ltmp615:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.42:                               # %.cont
.LBB11_43:
.Ltmp618:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.44:                               # %.noexc
.LBB11_45:
.Ltmp588:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_51
.LBB11_46:
.Ltmp620:                               # EH_LABEL
	b	.LBB11_48
.LBB11_47:
.Ltmp623:                               # EH_LABEL
.LBB11_48:
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beq	$a1, $s2, .LBB11_53
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	move	$a0, $a1
	b	.LBB11_52
.LBB11_50:
.Ltmp617:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB11_51:
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB11_53
.LBB11_52:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_53:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end11-_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp578-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp583-.Ltmp578              #   Call between .Ltmp578 and .Ltmp583
	.uleb128 .Ltmp623-.Lfunc_begin5         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp584-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp585-.Ltmp584              #   Call between .Ltmp584 and .Ltmp585
	.uleb128 .Ltmp620-.Lfunc_begin5         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp588-.Lfunc_begin5         #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp589-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp614-.Ltmp589              #   Call between .Ltmp589 and .Ltmp614
	.uleb128 .Ltmp617-.Lfunc_begin5         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp614-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp621-.Ltmp614              #   Call between .Ltmp614 and .Ltmp621
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin5         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin5         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin5         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp619-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Lfunc_end11-.Ltmp619          #   Call between .Ltmp619 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
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
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s8, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s1, $a0, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s4, $a0, 0
	addi.d	$a0, $sp, 408
	st.d	$a0, $sp, 392
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 360
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 360
	move	$fp, $a0
	st.d	$a0, $sp, 392
	st.d	$s2, $sp, 408
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 400
	stx.b	$zero, $fp, $s2
	addi.d	$a0, $sp, 376
	st.d	$a0, $sp, 360
	ori	$a0, $zero, 109
	st.d	$a0, $sp, 328
.Ltmp624:                               # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 328
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.1:                                # %.noexc146
	move	$fp, $a0
	ld.d	$s2, $sp, 328
	st.d	$a0, $sp, 360
	st.d	$s2, $sp, 376
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 109
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 368
	stx.b	$zero, $fp, $s2
	addi.d	$a0, $sp, 344
	st.d	$a0, $sp, 328
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 296
.Ltmp627:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp628:                               # EH_LABEL
# %bb.2:                                # %.noexc150
	ld.d	$a1, $sp, 296
	st.d	$a0, $sp, 328
	st.d	$a1, $sp, 344
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 336
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 312
	st.d	$a0, $sp, 296
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 264
.Ltmp630:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 264
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.3:                                # %.noexc154
	ld.d	$a1, $sp, 264
	st.d	$a0, $sp, 296
	st.d	$a1, $sp, 312
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 304
	stx.b	$zero, $a0, $a1
	ld.d	$s2, $s8, 120
	ld.d	$s3, $s8, 112
	sub.d	$a0, $s2, $s3
	srai.d	$fp, $a0, 5
	srli.d	$a1, $fp, 58
	bnez	$a1, .LBB12_206
# %bb.4:                                # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	beq	$s2, $s3, .LBB12_11
# %bb.5:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
.Ltmp633:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp634:                               # EH_LABEL
# %bb.6:                                # %.lr.ph.i.i.i.i.i.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB12_7:                               # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a0, $a3
	addi.d	$a2, $a1, 16
	stx.d	$a2, $a0, $a3
	st.d	$zero, $a1, 8
	st.b	$zero, $a1, 16
	addi.d	$fp, $fp, -1
	addi.d	$a3, $a3, 32
	bnez	$fp, .LBB12_7
# %bb.8:                                # %.lr.ph.preheader
	move	$a1, $zero
	srai.d	$fp, $a3, 5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.d	$s7, $a0, $a3
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB12_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 112
	slli.d	$a1, $a1, 5
	ldx.d	$a0, $a0, $a1
	ld.b	$a4, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 8
.Ltmp635:                               # EH_LABEL
	ori	$a3, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc)
	jirl	$ra, $ra, 0
.Ltmp636:                               # EH_LABEL
# %bb.10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit
                                        #   in Loop: Header=BB12_9 Depth=1
	bstrpick.d	$a1, $s2, 31, 0
	addi.w	$s2, $s2, 1
	bltu	$a1, $fp, .LBB12_9
	b	.LBB12_12
.LBB12_11:
	move	$s7, $zero
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
.LBB12_12:                              # %._crit_edge
.Ltmp638:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp639:                               # EH_LABEL
# %bb.13:
.Ltmp641:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp642:                               # EH_LABEL
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp643:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp644:                               # EH_LABEL
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp645:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.16:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit162
.Ltmp647:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp648:                               # EH_LABEL
# %bb.17:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_202
# %bb.18:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_20
# %bb.19:
	ld.bu	$a0, $s2, 67
	b	.LBB12_22
.LBB12_20:
.Ltmp649:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp650:                               # EH_LABEL
# %bb.21:                               # %.noexc348
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp651:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp652:                               # EH_LABEL
.LBB12_22:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp653:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp654:                               # EH_LABEL
# %bb.23:                               # %.noexc350
.Ltmp655:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp656:                               # EH_LABEL
# %bb.24:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a1, $sp, 264
	ld.d	$a2, $sp, 272
.Ltmp657:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp658:                               # EH_LABEL
# %bb.25:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB12_202
# %bb.26:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i353
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB12_28
# %bb.27:
	ld.bu	$a0, $s3, 67
	b	.LBB12_30
.LBB12_28:
.Ltmp659:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp660:                               # EH_LABEL
# %bb.29:                               # %.noexc358
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp661:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp662:                               # EH_LABEL
.LBB12_30:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i355
.Ltmp663:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp664:                               # EH_LABEL
# %bb.31:                               # %.noexc360
.Ltmp665:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp666:                               # EH_LABEL
# %bb.32:                               # %_ZNSolsEPFRSoS_E.exit169
.Ltmp667:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp668:                               # EH_LABEL
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp669:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp671:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp672:                               # EH_LABEL
# %bb.35:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit175.preheader
	addi.d	$a0, $sp, 248
	st.d	$a0, $sp, 232
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 200
.Ltmp673:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp674:                               # EH_LABEL
# %bb.36:                               # %.noexc178
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 232
	st.d	$a1, $sp, 248
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 232
	st.d	$a1, $sp, 240
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $sp, 240
.Ltmp676:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp677:                               # EH_LABEL
# %bb.37:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_204
# %bb.38:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i364
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_40
# %bb.39:
	ld.bu	$a0, $s2, 67
	b	.LBB12_42
.LBB12_40:
.Ltmp678:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp679:                               # EH_LABEL
# %bb.41:                               # %.noexc369
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp680:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp681:                               # EH_LABEL
.LBB12_42:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i366
.Ltmp682:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp683:                               # EH_LABEL
# %bb.43:                               # %.noexc371
.Ltmp684:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp685:                               # EH_LABEL
# %bb.44:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a3, $zero, -177
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	slli.d	$a1, $fp, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$a3, $a1, $a2
	ld.d	$a1, $sp, 232
	ld.d	$a2, $sp, 240
	add.d	$a0, $s0, $a0
	srai.d	$a3, $a3, 32
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
.Ltmp686:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp687:                               # EH_LABEL
# %bb.45:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 40
	st.d	$fp, $a0, 16
.Ltmp688:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp689:                               # EH_LABEL
# %bb.46:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp690:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp691:                               # EH_LABEL
# %bb.47:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_204
# %bb.48:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i375
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_50
# %bb.49:
	ld.bu	$a0, $s2, 67
	b	.LBB12_52
.LBB12_50:
.Ltmp692:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp693:                               # EH_LABEL
# %bb.51:                               # %.noexc380
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp694:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp695:                               # EH_LABEL
.LBB12_52:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i377
.Ltmp696:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.53:                               # %.noexc382
.Ltmp698:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp699:                               # EH_LABEL
# %bb.54:                               # %_ZNSolsEPFRSoS_E.exit197
	ld.d	$a1, $sp, 360
	ld.d	$a2, $sp, 368
.Ltmp700:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp701:                               # EH_LABEL
# %bb.55:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199.preheader
	ld.d	$a0, $s8, 48
	ld.d	$s2, $s8, 40
	beq	$a0, $s2, .LBB12_163
# %bb.56:                               # %.lr.ph560
	move	$s5, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	sub.d	$a0, $s1, $s4
	srli.d	$a1, $a0, 5
	addi.d	$a2, $s8, 600
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 36, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s1, $a0, 4095
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	b	.LBB12_58
	.p2align	4, , 16
.LBB12_57:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $s8, 48
	ld.d	$s2, $s8, 40
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$s5, $a1, 31, 0
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 5
	bgeu	$s5, $a0, .LBB12_163
.LBB12_58:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_62 Depth 2
                                        #     Child Loop BB12_96 Depth 2
                                        #       Child Loop BB12_100 Depth 3
                                        #       Child Loop BB12_121 Depth 3
	ld.d	$s6, $s8, 608
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$s6, .LBB12_69
# %bb.59:                               # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a0, 8
	ld.d	$s3, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	b	.LBB12_62
	.p2align	4, , 16
.LBB12_60:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_62 Depth=2
	sub.d	$a0, $s8, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB12_61:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB12_62 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s6, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s6, $s6, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s6, .LBB12_64
.LBB12_62:                              #   Parent Loop BB12_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s6, 40
	sltu	$a0, $s4, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_60
# %bb.63:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_62 Depth=2
	ld.d	$a0, $s6, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_61
	b	.LBB12_60
	.p2align	4, , 16
.LBB12_64:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $a1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	beq	$fp, $a1, .LBB12_69
# %bb.65:                               #   in Loop: Header=BB12_58 Depth=1
	ld.d	$s6, $fp, 40
	sltu	$a0, $s6, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_67
# %bb.66:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_68
.LBB12_67:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_58 Depth=1
	sub.d	$a0, $s4, $s6
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB12_68:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB12_58 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB12_69:                              #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 280
	mul.d	$a1, $s5, $a1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	add.d	$s3, $a0, $a1
	ld.d	$a0, $s3, 264
	ld.d	$a1, $s3, 256
	beq	$a0, $a1, .LBB12_80
# %bb.70:                               #   in Loop: Header=BB12_58 Depth=1
	sub.d	$a0, $a0, $a1
	addi.w	$a1, $zero, -15
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB12_186
# %bb.71:                               # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB12_58 Depth=1
.Ltmp702:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
.Ltmp703:                               # EH_LABEL
# %bb.72:                               # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a1, $s3, 256
	ld.d	$a0, $s3, 264
	sub.d	$a2, $a0, $a1
	ori	$a0, $zero, 17
	blt	$a2, $a0, .LBB12_81
.LBB12_73:                              #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB12_74:                              #   in Loop: Header=BB12_58 Depth=1
	slli.d	$fp, $s5, 5
	add.d	$a0, $s2, $fp
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB12_161
# %bb.75:                               #   in Loop: Header=BB12_58 Depth=1
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB12_161
# %bb.76:                               #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB12_89
# %bb.77:                               #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB12_200
# %bb.78:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i386
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB12_83
# %bb.79:                               #   in Loop: Header=BB12_58 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB12_85
	.p2align	4, , 16
.LBB12_80:                              #   in Loop: Header=BB12_58 Depth=1
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	sub.d	$a2, $a0, $a1
	ori	$a0, $zero, 17
	bge	$a2, $a0, .LBB12_73
.LBB12_81:                              #   in Loop: Header=BB12_58 Depth=1
	ori	$a0, $zero, 16
	bne	$a2, $a0, .LBB12_74
# %bb.82:                               #   in Loop: Header=BB12_58 Depth=1
	vld	$vr0, $a1, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	vst	$vr0, $a0, 0
	b	.LBB12_74
.LBB12_83:                              #   in Loop: Header=BB12_58 Depth=1
.Ltmp708:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp709:                               # EH_LABEL
# %bb.84:                               # %.noexc391
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp710:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp711:                               # EH_LABEL
.LBB12_85:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i388
                                        #   in Loop: Header=BB12_58 Depth=1
.Ltmp712:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp713:                               # EH_LABEL
# %bb.86:                               # %.noexc393
                                        #   in Loop: Header=BB12_58 Depth=1
.Ltmp714:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp715:                               # EH_LABEL
# %bb.87:                               # %_ZNSolsEPFRSoS_E.exit207
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a1, $sp, 328
	ld.d	$a2, $sp, 336
.Ltmp716:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp717:                               # EH_LABEL
# %bb.88:                               # %_ZNSolsEPFRSoS_E.exit207._crit_edge
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$s2, $s8, 40
.LBB12_89:                              #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 24
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	st.w	$a1, $a0, 24
	add.d	$a0, $s2, $fp
	ldx.d	$a1, $s2, $fp
	ld.d	$a2, $a0, 8
.Ltmp718:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp719:                               # EH_LABEL
# %bb.90:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213
                                        #   in Loop: Header=BB12_58 Depth=1
.Ltmp720:                               # EH_LABEL
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
# %bb.91:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
                                        #   in Loop: Header=BB12_58 Depth=1
.Ltmp722:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp723:                               # EH_LABEL
# %bb.92:                               # %_ZNSolsEj.exit
                                        #   in Loop: Header=BB12_58 Depth=1
.Ltmp724:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp725:                               # EH_LABEL
# %bb.93:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.preheader
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_161
# %bb.94:                               # %.lr.ph558.preheader
                                        #   in Loop: Header=BB12_58 Depth=1
	move	$a1, $zero
	b	.LBB12_96
	.p2align	4, , 16
.LBB12_95:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
                                        #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB12_161
.LBB12_96:                              # %.lr.ph558
                                        #   Parent Loop BB12_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_100 Depth 3
                                        #       Child Loop BB12_121 Depth 3
	ld.d	$s4, $s8, 608
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	beqz	$s4, .LBB12_107
# %bb.97:                               # %.lr.ph.i.i.i.i220
                                        #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a0, $s2, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ld.d	$s3, $a1, 8
	ldx.d	$s5, $a0, $a2
	move	$fp, $s8
	b	.LBB12_100
	.p2align	4, , 16
.LBB12_98:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i244
                                        #   in Loop: Header=BB12_100 Depth=3
	sub.d	$a0, $s6, $s3
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB12_99:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226
                                        #   in Loop: Header=BB12_100 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s4, $s4, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s4, .LBB12_102
.LBB12_100:                             #   Parent Loop BB12_58 Depth=1
                                        #     Parent Loop BB12_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s4, 40
	sltu	$a0, $s3, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_98
# %bb.101:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i224
                                        #   in Loop: Header=BB12_100 Depth=3
	ld.d	$a0, $s4, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_99
	b	.LBB12_98
	.p2align	4, , 16
.LBB12_102:                             # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i233
                                        #   in Loop: Header=BB12_96 Depth=2
	move	$a0, $s8
	beq	$fp, $s8, .LBB12_107
# %bb.103:                              #   in Loop: Header=BB12_96 Depth=2
	ld.d	$s4, $fp, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_105
# %bb.104:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i235
                                        #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a1, $fp, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_106
.LBB12_105:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i240
                                        #   in Loop: Header=BB12_96 Depth=2
	sub.d	$a0, $s3, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB12_106:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i237
                                        #   in Loop: Header=BB12_96 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.LBB12_107:                             #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$fp, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a0, $fp, $a0
	beqz	$a0, .LBB12_95
# %bb.108:                              #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_110
# %bb.109:                              #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a1, $sp, 296
	ld.d	$a2, $sp, 304
.Ltmp727:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp728:                               # EH_LABEL
	b	.LBB12_117
.LBB12_110:                             #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB12_198
# %bb.111:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i397
                                        #   in Loop: Header=BB12_96 Depth=2
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB12_113
# %bb.112:                              #   in Loop: Header=BB12_96 Depth=2
	ld.bu	$a0, $s5, 67
	b	.LBB12_115
.LBB12_113:                             #   in Loop: Header=BB12_96 Depth=2
.Ltmp729:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp730:                               # EH_LABEL
# %bb.114:                              # %.noexc402
                                        #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp731:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp732:                               # EH_LABEL
.LBB12_115:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i399
                                        #   in Loop: Header=BB12_96 Depth=2
.Ltmp733:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp734:                               # EH_LABEL
# %bb.116:                              # %.noexc404
                                        #   in Loop: Header=BB12_96 Depth=2
.Ltmp735:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp736:                               # EH_LABEL
.LBB12_117:                             # %_ZNSolsEPFRSoS_E.exit250
                                        #   in Loop: Header=BB12_96 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s4, $fp, $a0
	ld.d	$a0, $s4, 216
	ld.d	$a1, $s4, 208
	beq	$a0, $a1, .LBB12_95
# %bb.118:                              # %.lr.ph556
                                        #   in Loop: Header=BB12_96 Depth=2
	move	$fp, $zero
	ori	$s8, $zero, 1
	b	.LBB12_121
	.p2align	4, , 16
.LBB12_119:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s4, 216
	ld.d	$a1, $s4, 208
.LBB12_120:                             #   in Loop: Header=BB12_121 Depth=3
	bstrpick.d	$fp, $s8, 31, 0
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.w	$s8, $s8, 1
	bgeu	$fp, $a2, .LBB12_95
.LBB12_121:                             #   Parent Loop BB12_58 Depth=1
                                        #     Parent Loop BB12_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s4, 40
	slli.d	$a3, $fp, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB12_120
# %bb.122:                              #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s2, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ldx.d	$s5, $a0, $a2
	ld.d	$s6, $a1, 8
	addi.d	$a0, $sp, 152
	st.d	$a0, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	addi.d	$a1, $s6, 1
.Ltmp738:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp739:                               # EH_LABEL
# %bb.123:                              #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $sp, 144
	addi.w	$a1, $zero, -1
	lu52i.d	$s3, $a1, 1023
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s6, .LBB12_188
# %bb.124:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB12_121 Depth=3
.Ltmp740:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp741:                               # EH_LABEL
# %bb.125:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $sp, 144
	beq	$a0, $s3, .LBB12_188
# %bb.126:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB12_121 Depth=3
.Ltmp742:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp743:                               # EH_LABEL
# %bb.127:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
                                        #   in Loop: Header=BB12_121 Depth=3
	slli.d	$a0, $fp, 5
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 144
	ld.d	$a2, $a0, 8
	sub.d	$a1, $s3, $a1
	bltu	$a1, $a2, .LBB12_190
# %bb.128:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a1, $a0, 0
.Ltmp745:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp746:                               # EH_LABEL
# %bb.129:                              # %.noexc254
                                        #   in Loop: Header=BB12_121 Depth=3
	addi.d	$a3, $sp, 184
	st.d	$a3, $sp, 168
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB12_131
# %bb.130:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 184
	ld.d	$s6, $a0, 8
	st.d	$a1, $sp, 168
	b	.LBB12_132
	.p2align	4, , 16
.LBB12_131:                             #   in Loop: Header=BB12_121 Depth=3
	ld.d	$s6, $a0, 8
	addi.d	$a2, $s6, 1
	move	$s2, $a0
	move	$a0, $a3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
.LBB12_132:                             #   in Loop: Header=BB12_121 Depth=3
	st.d	$s6, $sp, 176
	st.d	$s5, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 176
	st.b	$zero, $a0, 16
	beq	$a1, $s3, .LBB12_192
# %bb.133:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
                                        #   in Loop: Header=BB12_121 Depth=3
.Ltmp748:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp749:                               # EH_LABEL
# %bb.134:                              # %.noexc259
                                        #   in Loop: Header=BB12_121 Depth=3
	addi.d	$a3, $sp, 216
	st.d	$a3, $sp, 200
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB12_136
# %bb.135:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 216
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 200
	b	.LBB12_137
	.p2align	4, , 16
.LBB12_136:                             #   in Loop: Header=BB12_121 Depth=3
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s6, $a0
	move	$a0, $a3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB12_137:                             #   in Loop: Header=BB12_121 Depth=3
	st.d	$s3, $sp, 208
	st.d	$s5, $a0, 0
	ld.d	$a1, $sp, 168
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$a0, $sp, 184
	beq	$a1, $a0, .LBB12_139
# %bb.138:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
                                        #   in Loop: Header=BB12_121 Depth=3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_139:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $sp, 136
	addi.d	$a1, $sp, 152
	beq	$a0, $a1, .LBB12_141
# %bb.140:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
                                        #   in Loop: Header=BB12_121 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_141:                             #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.w	$a2, $a1, 24
	ori	$a2, $a2, 1024
	st.w	$a2, $a1, 24
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 32
	st.d	$a2, $a1, 8
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 200
	ld.d	$a2, $sp, 208
	add.d	$a0, $s0, $a0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.d	$a3, $a0, 16
.Ltmp751:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp752:                               # EH_LABEL
# %bb.142:                              #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 40
	st.d	$a1, $a0, 16
	ld.d	$a0, $s4, 256
	alsl.d	$a2, $fp, $a0, 4
	slli.d	$s3, $fp, 4
	ldx.d	$a1, $a0, $s3
	ld.d	$a2, $a2, 8
.Ltmp753:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp754:                               # EH_LABEL
# %bb.143:                              # %_ZNSolsEe.exit
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_148
# %bb.144:                              #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s4, 256
	alsl.d	$a1, $fp, $a0, 4
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 8
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a3, $fp, $a2, 4
	ldx.d	$a2, $a2, $s3
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 0
	ld.d	$a3, $a2, -24
	add.d	$a3, $s0, $a3
	ld.wu	$a4, $a3, 24
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	and	$a4, $a4, $a5
	addi.d	$a4, $a4, 128
	st.w	$a4, $a3, 24
	ld.d	$a2, $a2, -24
	move	$a3, $a0
	add.d	$a0, $s0, $a2
	ori	$a2, $zero, 40
	st.d	$a2, $a0, 16
	bstrpick.d	$a2, $a1, 62, 0
.Ltmp755:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp756:                               # EH_LABEL
# %bb.145:                              # %_ZNSolsEe.exit276
                                        #   in Loop: Header=BB12_121 Depth=3
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB12_194
# %bb.146:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i408
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB12_151
# %bb.147:                              #   in Loop: Header=BB12_121 Depth=3
	ld.bu	$a0, $s6, 67
	b	.LBB12_153
	.p2align	4, , 16
.LBB12_148:                             #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB12_196
# %bb.149:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i419
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB12_155
# %bb.150:                              #   in Loop: Header=BB12_121 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB12_157
.LBB12_151:                             #   in Loop: Header=BB12_121 Depth=3
.Ltmp757:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp758:                               # EH_LABEL
# %bb.152:                              # %.noexc413
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp759:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp760:                               # EH_LABEL
.LBB12_153:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i410
                                        #   in Loop: Header=BB12_121 Depth=3
.Ltmp761:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp762:                               # EH_LABEL
# %bb.154:                              # %.noexc415
                                        #   in Loop: Header=BB12_121 Depth=3
.Ltmp763:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp764:                               # EH_LABEL
	b	.LBB12_159
.LBB12_155:                             #   in Loop: Header=BB12_121 Depth=3
.Ltmp769:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp770:                               # EH_LABEL
# %bb.156:                              # %.noexc424
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp771:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp772:                               # EH_LABEL
.LBB12_157:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i421
                                        #   in Loop: Header=BB12_121 Depth=3
.Ltmp773:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp774:                               # EH_LABEL
# %bb.158:                              # %.noexc426
                                        #   in Loop: Header=BB12_121 Depth=3
.Ltmp775:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp776:                               # EH_LABEL
.LBB12_159:                             # %_ZNSolsEPFRSoS_E.exit278
                                        #   in Loop: Header=BB12_121 Depth=3
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB12_119
# %bb.160:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
                                        #   in Loop: Header=BB12_121 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_119
	.p2align	4, , 16
.LBB12_161:                             # %.loopexit477
                                        #   in Loop: Header=BB12_58 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_57
# %bb.162:                              #   in Loop: Header=BB12_58 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_57
.LBB12_163:                             # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199._crit_edge
	ld.d	$a1, $sp, 360
	ld.d	$a2, $sp, 368
.Ltmp796:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp797:                               # EH_LABEL
# %bb.164:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201
.Ltmp798:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp799:                               # EH_LABEL
# %bb.165:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
.Ltmp800:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp801:                               # EH_LABEL
# %bb.166:
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	beq	$a0, $a1, .LBB12_168
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_168:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_170
# %bb.169:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_170:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_175
# %bb.171:                              # %.lr.ph.i.i.i.preheader
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	b	.LBB12_173
	.p2align	4, , 16
.LBB12_172:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB12_173 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s7, .LBB12_175
.LBB12_173:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB12_172
# %bb.174:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_173 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_172
.LBB12_175:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_177
# %bb.176:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_177:                             # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB12_179
# %bb.178:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_179:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB12_181
# %bb.180:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_181:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB12_183
# %bb.182:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_183:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB12_185
# %bb.184:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_185:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB12_186:                             # %.noexc.i.i
.Ltmp705:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.187:                              # %.noexc204
.LBB12_188:                             # %.invoke.i.i
.Ltmp787:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp788:                               # EH_LABEL
# %bb.189:                              # %.cont.i.i
.LBB12_190:
.Ltmp784:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp785:                               # EH_LABEL
# %bb.191:                              # %.noexc253
.LBB12_192:
.Ltmp781:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp782:                               # EH_LABEL
# %bb.193:                              # %.noexc258
.LBB12_194:
.Ltmp766:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp767:                               # EH_LABEL
# %bb.195:                              # %.noexc412
.LBB12_196:
.Ltmp778:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp779:                               # EH_LABEL
# %bb.197:                              # %.noexc423
.LBB12_198:
.Ltmp790:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp791:                               # EH_LABEL
# %bb.199:                              # %.noexc401
.LBB12_200:
.Ltmp793:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp794:                               # EH_LABEL
# %bb.201:                              # %.noexc390
.LBB12_202:                             # %.invoke
.Ltmp805:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp806:                               # EH_LABEL
# %bb.203:                              # %.cont
.LBB12_204:                             # %.invoke714
.Ltmp802:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp803:                               # EH_LABEL
# %bb.205:                              # %.cont715
.LBB12_206:
.Ltmp808:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp809:                               # EH_LABEL
# %bb.207:                              # %.noexc156
.LBB12_208:
.Ltmp675:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_240
	b	.LBB12_247
.LBB12_209:
.Ltmp640:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_248
	b	.LBB12_254
.LBB12_210:
.Ltmp632:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB12_251
	b	.LBB12_260
.LBB12_211:
.Ltmp629:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB12_252
	b	.LBB12_261
.LBB12_212:
.Ltmp626:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB12_253
	b	.LBB12_262
.LBB12_213:
.Ltmp810:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB12_250
	b	.LBB12_259
.LBB12_214:                             # %.loopexit.split-lp489
.Ltmp795:                               # EH_LABEL
	b	.LBB12_222
.LBB12_215:                             # %.loopexit483
.Ltmp704:                               # EH_LABEL
	b	.LBB12_245
.LBB12_216:
.Ltmp804:                               # EH_LABEL
	b	.LBB12_245
.LBB12_217:
.Ltmp807:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_240
	b	.LBB12_247
.LBB12_218:                             # %.thread
.Ltmp637:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB12_254
.LBB12_219:                             # %.loopexit.split-lp479
.Ltmp792:                               # EH_LABEL
	b	.LBB12_222
.LBB12_220:                             # %.loopexit488
.Ltmp726:                               # EH_LABEL
	b	.LBB12_222
.LBB12_221:                             # %.loopexit478
.Ltmp737:                               # EH_LABEL
.LBB12_222:
	move	$s0, $a0
	b	.LBB12_237
.LBB12_223:                             # %.loopexit.split-lp468
.Ltmp780:                               # EH_LABEL
	b	.LBB12_243
.LBB12_224:                             # %.loopexit.split-lp473
.Ltmp768:                               # EH_LABEL
	b	.LBB12_243
.LBB12_225:                             # %.loopexit462
.Ltmp750:                               # EH_LABEL
	b	.LBB12_227
.LBB12_226:                             # %.loopexit.split-lp463
.Ltmp783:                               # EH_LABEL
.LBB12_227:
	move	$s0, $a0
	addi.d	$a1, $sp, 184
	ld.d	$a0, $sp, 168
	beq	$a0, $a1, .LBB12_235
# %bb.228:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_235
.LBB12_229:                             # %.loopexit.split-lp458
.Ltmp786:                               # EH_LABEL
	b	.LBB12_234
.LBB12_230:                             # %.loopexit457
.Ltmp747:                               # EH_LABEL
	b	.LBB12_234
.LBB12_231:                             # %.loopexit.split-lp
.Ltmp789:                               # EH_LABEL
	b	.LBB12_234
.LBB12_232:                             # %.loopexit472
.Ltmp765:                               # EH_LABEL
	b	.LBB12_243
.LBB12_233:                             # %.loopexit456
.Ltmp744:                               # EH_LABEL
.LBB12_234:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
	move	$s0, $a0
.LBB12_235:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
	ld.d	$a0, $sp, 136
	addi.d	$a1, $sp, 152
	beq	$a0, $a1, .LBB12_237
.LBB12_236:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_237:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB12_241
# %bb.238:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit294
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	bne	$a0, $a1, .LBB12_246
.LBB12_239:
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	bne	$a0, $a1, .LBB12_247
.LBB12_240:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_248
	b	.LBB12_254
.LBB12_241:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	beq	$a0, $a1, .LBB12_239
	b	.LBB12_246
.LBB12_242:                             # %.loopexit467
.Ltmp777:                               # EH_LABEL
.LBB12_243:
	move	$s0, $a0
	addi.d	$a1, $sp, 216
	ld.d	$a0, $sp, 200
	beq	$a0, $a1, .LBB12_237
	b	.LBB12_236
.LBB12_244:                             # %.loopexit.split-lp484
.Ltmp707:                               # EH_LABEL
.LBB12_245:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit294
	move	$s0, $a0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	beq	$a0, $a1, .LBB12_239
.LBB12_246:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_240
.LBB12_247:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB12_254
.LBB12_248:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i330
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB12_258
# %bb.249:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit333
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	bne	$a0, $a1, .LBB12_259
.LBB12_250:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	bne	$a0, $a1, .LBB12_260
.LBB12_251:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	bne	$a0, $a1, .LBB12_261
.LBB12_252:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	bne	$a0, $a1, .LBB12_262
.LBB12_253:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_254:                             # %.lr.ph.i.i.i323.preheader
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	b	.LBB12_256
	.p2align	4, , 16
.LBB12_255:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i326
                                        #   in Loop: Header=BB12_256 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s7, .LBB12_248
.LBB12_256:                             # %.lr.ph.i.i.i323
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB12_255
# %bb.257:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i325
                                        #   in Loop: Header=BB12_256 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_255
.LBB12_258:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB12_250
.LBB12_259:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB12_251
.LBB12_260:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB12_252
.LBB12_261:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB12_253
.LBB12_262:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end12-_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp624-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp624
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp626-.Lfunc_begin6         #     jumps to .Ltmp626
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp625-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp627-.Ltmp625              #   Call between .Ltmp625 and .Ltmp627
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin6         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin6         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp810-.Lfunc_begin6         #     jumps to .Ltmp810
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp635-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp636-.Ltmp635              #   Call between .Ltmp635 and .Ltmp636
	.uleb128 .Ltmp637-.Lfunc_begin6         #     jumps to .Ltmp637
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp639-.Ltmp638              #   Call between .Ltmp638 and .Ltmp639
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp672-.Ltmp641              #   Call between .Ltmp641 and .Ltmp672
	.uleb128 .Ltmp807-.Lfunc_begin6         #     jumps to .Ltmp807
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp673-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp674-.Ltmp673              #   Call between .Ltmp673 and .Ltmp674
	.uleb128 .Ltmp675-.Lfunc_begin6         #     jumps to .Ltmp675
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp676-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp701-.Ltmp676              #   Call between .Ltmp676 and .Ltmp701
	.uleb128 .Ltmp804-.Lfunc_begin6         #     jumps to .Ltmp804
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp701-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp702-.Ltmp701              #   Call between .Ltmp701 and .Ltmp702
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin6         #     jumps to .Ltmp704
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp703-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp708-.Ltmp703              #   Call between .Ltmp703 and .Ltmp708
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp708-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp725-.Ltmp708              #   Call between .Ltmp708 and .Ltmp725
	.uleb128 .Ltmp726-.Lfunc_begin6         #     jumps to .Ltmp726
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp725-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp727-.Ltmp725              #   Call between .Ltmp725 and .Ltmp727
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp727-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp736-.Ltmp727              #   Call between .Ltmp727 and .Ltmp736
	.uleb128 .Ltmp737-.Lfunc_begin6         #     jumps to .Ltmp737
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp743-.Ltmp738              #   Call between .Ltmp738 and .Ltmp743
	.uleb128 .Ltmp744-.Lfunc_begin6         #     jumps to .Ltmp744
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp745-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp746-.Ltmp745              #   Call between .Ltmp745 and .Ltmp746
	.uleb128 .Ltmp747-.Lfunc_begin6         #     jumps to .Ltmp747
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp746-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp748-.Ltmp746              #   Call between .Ltmp746 and .Ltmp748
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp748-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp749-.Ltmp748              #   Call between .Ltmp748 and .Ltmp749
	.uleb128 .Ltmp750-.Lfunc_begin6         #     jumps to .Ltmp750
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp749-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp751-.Ltmp749              #   Call between .Ltmp749 and .Ltmp751
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp751-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp754-.Ltmp751              #   Call between .Ltmp751 and .Ltmp754
	.uleb128 .Ltmp777-.Lfunc_begin6         #     jumps to .Ltmp777
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp754-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp755-.Ltmp754              #   Call between .Ltmp754 and .Ltmp755
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp755-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp764-.Ltmp755              #   Call between .Ltmp755 and .Ltmp764
	.uleb128 .Ltmp765-.Lfunc_begin6         #     jumps to .Ltmp765
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp769-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp776-.Ltmp769              #   Call between .Ltmp769 and .Ltmp776
	.uleb128 .Ltmp777-.Lfunc_begin6         #     jumps to .Ltmp777
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp776-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp796-.Ltmp776              #   Call between .Ltmp776 and .Ltmp796
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp796-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp801-.Ltmp796              #   Call between .Ltmp796 and .Ltmp801
	.uleb128 .Ltmp804-.Lfunc_begin6         #     jumps to .Ltmp804
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp801-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp705-.Ltmp801              #   Call between .Ltmp801 and .Ltmp705
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin6         #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp787-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp788-.Ltmp787              #   Call between .Ltmp787 and .Ltmp788
	.uleb128 .Ltmp789-.Lfunc_begin6         #     jumps to .Ltmp789
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp784-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp785-.Ltmp784              #   Call between .Ltmp784 and .Ltmp785
	.uleb128 .Ltmp786-.Lfunc_begin6         #     jumps to .Ltmp786
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp781-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp782-.Ltmp781              #   Call between .Ltmp781 and .Ltmp782
	.uleb128 .Ltmp783-.Lfunc_begin6         #     jumps to .Ltmp783
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp766-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp767-.Ltmp766              #   Call between .Ltmp766 and .Ltmp767
	.uleb128 .Ltmp768-.Lfunc_begin6         #     jumps to .Ltmp768
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp778-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp779-.Ltmp778              #   Call between .Ltmp778 and .Ltmp779
	.uleb128 .Ltmp780-.Lfunc_begin6         #     jumps to .Ltmp780
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp790-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp791-.Ltmp790              #   Call between .Ltmp790 and .Ltmp791
	.uleb128 .Ltmp792-.Lfunc_begin6         #     jumps to .Ltmp792
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp793-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp794-.Ltmp793              #   Call between .Ltmp793 and .Ltmp794
	.uleb128 .Ltmp795-.Lfunc_begin6         #     jumps to .Ltmp795
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp805-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp806-.Ltmp805              #   Call between .Ltmp805 and .Ltmp806
	.uleb128 .Ltmp807-.Lfunc_begin6         #     jumps to .Ltmp807
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp802-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp803-.Ltmp802              #   Call between .Ltmp802 and .Ltmp803
	.uleb128 .Ltmp804-.Lfunc_begin6         #     jumps to .Ltmp804
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp809-.Ltmp808              #   Call between .Ltmp808 and .Ltmp809
	.uleb128 .Ltmp810-.Lfunc_begin6         #     jumps to .Ltmp810
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp809-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Lfunc_end12-.Ltmp809          #   Call between .Ltmp809 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -608
	.cfi_def_cfa_offset 608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB13_38
# %bb.1:
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB13_11
# %bb.2:
	ld.d	$s1, $a1, 0
	addi.d	$s2, $sp, 24
	st.d	$s2, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
	addi.d	$a1, $s0, 1
.Ltmp811:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp812:                               # EH_LABEL
# %bb.3:
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -1
	lu52i.d	$s3, $a1, 1023
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s0, .LBB13_39
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp813:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp814:                               # EH_LABEL
# %bb.5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_39
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp815:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp816:                               # EH_LABEL
# %bb.7:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 16
	ori	$a1, $zero, 7
	lu52i.d	$a1, $a1, -1024
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 6
	bgeu	$a1, $a0, .LBB13_43
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp817:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp818:                               # EH_LABEL
# %bb.9:                                # %.noexc10
	addi.d	$s0, $sp, 536
	st.d	$s0, $sp, 520
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB13_12
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 536
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 520
	b	.LBB13_13
.LBB13_11:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jr	$t8
.LBB13_12:
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s4, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB13_13:
	st.d	$s3, $sp, 528
	st.d	$s1, $a0, 0
	ld.d	$a1, $sp, 8
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB13_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 520
.Ltmp819:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 48
	addi.d	$s1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp820:                               # EH_LABEL
# %bb.16:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB13_26
# %bb.17:
.Ltmp822:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp823:                               # EH_LABEL
# %bb.18:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp824:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp825:                               # EH_LABEL
# %bb.19:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB13_41
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB13_22
# %bb.21:
	ld.bu	$a0, $s2, 67
	b	.LBB13_24
.LBB13_22:
.Ltmp826:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp827:                               # EH_LABEL
# %bb.23:                               # %.noexc31
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp828:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp829:                               # EH_LABEL
.LBB13_24:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp830:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp831:                               # EH_LABEL
# %bb.25:                               # %.noexc33
.Ltmp832:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp833:                               # EH_LABEL
.LBB13_26:                              # %_ZNSolsEPFRSoS_E.exit
.Ltmp834:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 20
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp835:                               # EH_LABEL
# %bb.27:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp836:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp837:                               # EH_LABEL
# %bb.28:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB13_41
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB13_31
# %bb.30:
	ld.bu	$a0, $s2, 67
	b	.LBB13_33
.LBB13_31:
.Ltmp838:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp839:                               # EH_LABEL
# %bb.32:                               # %.noexc41
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp840:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp841:                               # EH_LABEL
.LBB13_33:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38
.Ltmp842:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp843:                               # EH_LABEL
# %bb.34:                               # %.noexc43
.Ltmp844:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp845:                               # EH_LABEL
# %bb.35:                               # %_ZNSolsEPFRSoS_E.exit23
.Ltmp846:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp847:                               # EH_LABEL
# %bb.36:
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	stx.d	$a0, $a1, $s1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB13_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_38:
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB13_39:                              # %.invoke.i.i
.Ltmp854:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp855:                               # EH_LABEL
# %bb.40:                               # %.cont.i.i
.LBB13_41:                              # %.invoke
.Ltmp848:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp849:                               # EH_LABEL
# %bb.42:                               # %.cont
.LBB13_43:
.Ltmp851:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp852:                               # EH_LABEL
# %bb.44:                               # %.noexc
.LBB13_45:
.Ltmp821:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB13_51
.LBB13_46:
.Ltmp853:                               # EH_LABEL
	b	.LBB13_48
.LBB13_47:
.Ltmp856:                               # EH_LABEL
.LBB13_48:
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beq	$a1, $s2, .LBB13_53
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	move	$a0, $a1
	b	.LBB13_52
.LBB13_50:
.Ltmp850:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB13_51:
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB13_53
.LBB13_52:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_53:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end13-_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp811-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp816-.Ltmp811              #   Call between .Ltmp811 and .Ltmp816
	.uleb128 .Ltmp856-.Lfunc_begin7         #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp817-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp818-.Ltmp817              #   Call between .Ltmp817 and .Ltmp818
	.uleb128 .Ltmp853-.Lfunc_begin7         #     jumps to .Ltmp853
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp818-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp819-.Ltmp818              #   Call between .Ltmp818 and .Ltmp819
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp819-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp820-.Ltmp819              #   Call between .Ltmp819 and .Ltmp820
	.uleb128 .Ltmp821-.Lfunc_begin7         #     jumps to .Ltmp821
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp822-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp847-.Ltmp822              #   Call between .Ltmp822 and .Ltmp847
	.uleb128 .Ltmp850-.Lfunc_begin7         #     jumps to .Ltmp850
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp847-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp854-.Ltmp847              #   Call between .Ltmp847 and .Ltmp854
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp854-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp855-.Ltmp854              #   Call between .Ltmp854 and .Ltmp855
	.uleb128 .Ltmp856-.Lfunc_begin7         #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp848-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp849-.Ltmp848              #   Call between .Ltmp848 and .Ltmp849
	.uleb128 .Ltmp850-.Lfunc_begin7         #     jumps to .Ltmp850
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp851-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp852-.Ltmp851              #   Call between .Ltmp851 and .Ltmp852
	.uleb128 .Ltmp853-.Lfunc_begin7         #     jumps to .Ltmp853
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp852-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Lfunc_end13-.Ltmp852          #   Call between .Ltmp852 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %.noexc.i
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
	move	$fp, $a1
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s8, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s0, $a0, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 184
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 152
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 152
	move	$s1, $a0
	st.d	$a0, $sp, 184
	st.d	$s2, $sp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 192
	stx.b	$zero, $s1, $s2
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 120
.Ltmp857:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp858:                               # EH_LABEL
# %bb.1:                                # %.noexc71
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 152
	st.d	$a1, $sp, 168
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 160
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 120
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 88
.Ltmp860:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp861:                               # EH_LABEL
# %bb.2:                                # %.noexc75
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp863:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp864:                               # EH_LABEL
# %bb.3:
.Ltmp866:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp867:                               # EH_LABEL
# %bb.4:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp868:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp869:                               # EH_LABEL
# %bb.5:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp870:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.6:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
.Ltmp872:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp873:                               # EH_LABEL
# %bb.7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB14_99
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB14_10
# %bb.9:
	ld.bu	$a0, $s1, 67
	b	.LBB14_12
.LBB14_10:
.Ltmp874:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp875:                               # EH_LABEL
# %bb.11:                               # %.noexc158
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp876:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp877:                               # EH_LABEL
.LBB14_12:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp878:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp879:                               # EH_LABEL
# %bb.13:                               # %.noexc160
.Ltmp880:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp881:                               # EH_LABEL
# %bb.14:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp882:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB14_99
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB14_18
# %bb.17:
	ld.bu	$a0, $s2, 67
	b	.LBB14_20
.LBB14_18:
.Ltmp884:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp885:                               # EH_LABEL
# %bb.19:                               # %.noexc168
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp886:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp887:                               # EH_LABEL
.LBB14_20:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165
.Ltmp888:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp889:                               # EH_LABEL
# %bb.21:                               # %.noexc170
.Ltmp890:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp891:                               # EH_LABEL
# %bb.22:                               # %_ZNSolsEPFRSoS_E.exit87
.Ltmp892:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp893:                               # EH_LABEL
# %bb.23:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp894:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.24:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp896:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp897:                               # EH_LABEL
# %bb.25:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93
.Ltmp898:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp899:                               # EH_LABEL
# %bb.26:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB14_99
# %bb.27:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB14_29
# %bb.28:
	ld.bu	$a0, $s1, 67
	b	.LBB14_31
.LBB14_29:
.Ltmp900:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.30:                               # %.noexc179
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp902:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp903:                               # EH_LABEL
.LBB14_31:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176
.Ltmp904:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp905:                               # EH_LABEL
# %bb.32:                               # %.noexc181
.Ltmp906:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp907:                               # EH_LABEL
# %bb.33:                               # %_ZNSolsEPFRSoS_E.exit97
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp908:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp909:                               # EH_LABEL
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit99
	sub.d	$a0, $s0, $s3
	bstrpick.d	$a1, $a0, 36, 5
	slli.d	$a1, $a1, 5
	beqz	$a1, .LBB14_83
# %bb.35:                               # %.lr.ph237
	srli.d	$a0, $a0, 5
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $zero, -177
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB14_37
	.p2align	4, , 16
.LBB14_36:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit133
                                        #   in Loop: Header=BB14_37 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$s3, $a0, .LBB14_83
.LBB14_37:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_50 Depth 2
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.wu	$a1, $a0, 24
	ld.d	$s0, $s8, 456
	ld.d	$s1, $s8, 480
	ld.d	$s2, $s8, 504
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	st.w	$a1, $a0, 24
.Ltmp910:                               # EH_LABEL
	ori	$a2, $zero, 16
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp911:                               # EH_LABEL
# %bb.38:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp912:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp913:                               # EH_LABEL
# %bb.39:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit106
                                        #   in Loop: Header=BB14_37 Depth=1
	move	$s6, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB14_97
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB14_42
# %bb.41:                               #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB14_44
	.p2align	4, , 16
.LBB14_42:                              #   in Loop: Header=BB14_37 Depth=1
.Ltmp914:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp915:                               # EH_LABEL
# %bb.43:                               # %.noexc190
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp916:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp917:                               # EH_LABEL
.LBB14_44:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp918:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp919:                               # EH_LABEL
# %bb.45:                               # %.noexc192
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp920:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp921:                               # EH_LABEL
# %bb.46:                               # %_ZNSolsEPFRSoS_E.exit108.preheader
                                        #   in Loop: Header=BB14_37 Depth=1
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 120
	ld.d	$a1, $s8, 112
	beq	$a0, $a1, .LBB14_74
# %bb.47:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB14_37 Depth=1
	move	$s4, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	add.d	$s0, $s0, $a0
	add.d	$s1, $s1, $a0
	add.d	$s2, $s2, $a0
	ori	$s3, $zero, 1
	b	.LBB14_50
	.p2align	4, , 16
.LBB14_48:                              # %._ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129_crit_edge
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s8, 120
	ld.d	$a1, $s8, 112
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
.LBB14_49:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129
                                        #   in Loop: Header=BB14_50 Depth=2
	bstrpick.d	$s4, $s3, 31, 0
	addi.w	$s3, $s3, 1
	bgeu	$s4, $a0, .LBB14_74
.LBB14_50:                              # %.lr.ph
                                        #   Parent Loop BB14_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp922:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp923:                               # EH_LABEL
# %bb.51:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s8, 112
	slli.d	$a1, $s4, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp924:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp925:                               # EH_LABEL
# %bb.52:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit112
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp926:                               # EH_LABEL
	move	$s6, $a0
	ori	$a2, $zero, 19
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp927:                               # EH_LABEL
# %bb.53:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $a0, $a1
.Ltmp928:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp929:                               # EH_LABEL
# %bb.54:                               #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $fp, $a1
	ld.w	$a2, $a1, 24
	ori	$a2, $a2, 1024
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 32
	st.d	$a1, $a0, 8
.Ltmp930:                               # EH_LABEL
	ori	$a2, $zero, 23
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp931:                               # EH_LABEL
# %bb.55:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s1, 0
	alsl.d	$a2, $s4, $a0, 4
	slli.d	$s5, $s4, 4
	ldx.d	$a1, $a0, $s5
	ld.d	$a2, $a2, 8
.Ltmp932:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp933:                               # EH_LABEL
# %bb.56:                               # %_ZNSolsEe.exit
                                        #   in Loop: Header=BB14_50 Depth=2
	move	$s6, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB14_95
# %bb.57:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i196
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB14_59
# %bb.58:                               #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 67
	b	.LBB14_61
	.p2align	4, , 16
.LBB14_59:                              #   in Loop: Header=BB14_50 Depth=2
.Ltmp934:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp935:                               # EH_LABEL
# %bb.60:                               # %.noexc201
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp936:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp937:                               # EH_LABEL
.LBB14_61:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i198
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp938:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp939:                               # EH_LABEL
# %bb.62:                               # %.noexc203
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp940:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp941:                               # EH_LABEL
# %bb.63:                               # %_ZNSolsEPFRSoS_E.exit121
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp942:                               # EH_LABEL
	ori	$a2, $zero, 17
	move	$a0, $fp
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp943:                               # EH_LABEL
# %bb.64:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s2, 0
	alsl.d	$a2, $s4, $a0, 4
	ldx.d	$a1, $a0, $s5
	ld.d	$a2, $a2, 8
.Ltmp944:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp945:                               # EH_LABEL
# %bb.65:                               # %_ZNSolsEe.exit125
                                        #   in Loop: Header=BB14_50 Depth=2
	move	$s6, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB14_95
# %bb.66:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i207
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB14_68
# %bb.67:                               #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 67
	b	.LBB14_70
	.p2align	4, , 16
.LBB14_68:                              #   in Loop: Header=BB14_50 Depth=2
.Ltmp946:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp947:                               # EH_LABEL
# %bb.69:                               # %.noexc212
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp948:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp949:                               # EH_LABEL
.LBB14_70:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i209
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp950:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp951:                               # EH_LABEL
# %bb.71:                               # %.noexc214
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp952:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp953:                               # EH_LABEL
# %bb.72:                               # %_ZNSolsEPFRSoS_E.exit127
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s8, 120
	ld.d	$a1, $s8, 112
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.d	$a1, $a0, -1
	bgeu	$s4, $a1, .LBB14_49
# %bb.73:                               #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp954:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp955:                               # EH_LABEL
	b	.LBB14_48
	.p2align	4, , 16
.LBB14_74:                              # %_ZNSolsEPFRSoS_E.exit108._crit_edge
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	bgeu	$s3, $a0, .LBB14_36
# %bb.75:                               #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB14_97
# %bb.76:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i218
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB14_78
# %bb.77:                               #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB14_80
.LBB14_78:                              #   in Loop: Header=BB14_37 Depth=1
.Ltmp960:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp961:                               # EH_LABEL
# %bb.79:                               # %.noexc223
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp962:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp963:                               # EH_LABEL
.LBB14_80:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i220
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp964:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp965:                               # EH_LABEL
# %bb.81:                               # %.noexc225
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp966:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp967:                               # EH_LABEL
# %bb.82:                               # %_ZNSolsEPFRSoS_E.exit131
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a1, $sp, 152
	ld.d	$a2, $sp, 160
.Ltmp968:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp969:                               # EH_LABEL
	b	.LBB14_36
.LBB14_83:                              # %._crit_edge
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp974:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp975:                               # EH_LABEL
# %bb.84:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101
.Ltmp976:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp977:                               # EH_LABEL
# %bb.85:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135
.Ltmp978:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp979:                               # EH_LABEL
# %bb.86:
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB14_88
# %bb.87:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_88:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_90:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_92
# %bb.91:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_92:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_94
# %bb.93:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_94:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
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
	ret
.LBB14_95:                              # %.invoke265
.Ltmp957:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp958:                               # EH_LABEL
# %bb.96:                               # %.cont266
.LBB14_97:                              # %.invoke263
.Ltmp971:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp972:                               # EH_LABEL
# %bb.98:                               # %.cont264
.LBB14_99:                              # %.invoke
.Ltmp981:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp982:                               # EH_LABEL
# %bb.100:                              # %.cont
.LBB14_101:
.Ltmp865:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_112
	b	.LBB14_116
.LBB14_102:
.Ltmp862:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_113
	b	.LBB14_117
.LBB14_103:
.Ltmp859:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_114
	b	.LBB14_118
.LBB14_104:
.Ltmp980:                               # EH_LABEL
	b	.LBB14_110
.LBB14_105:
.Ltmp983:                               # EH_LABEL
	b	.LBB14_110
.LBB14_106:                             # %.loopexit.split-lp231
.Ltmp973:                               # EH_LABEL
	b	.LBB14_110
.LBB14_107:                             # %.loopexit230
.Ltmp970:                               # EH_LABEL
	b	.LBB14_110
.LBB14_108:                             # %.loopexit.split-lp
.Ltmp959:                               # EH_LABEL
	b	.LBB14_110
.LBB14_109:                             # %.loopexit
.Ltmp956:                               # EH_LABEL
.LBB14_110:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	bne	$a0, $a1, .LBB14_115
# %bb.111:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	bne	$a0, $a1, .LBB14_116
.LBB14_112:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	bne	$a0, $a1, .LBB14_117
.LBB14_113:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	bne	$a0, $a1, .LBB14_118
.LBB14_114:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_115:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_112
.LBB14_116:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_113
.LBB14_117:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_114
.LBB14_118:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end14-_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp857-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp857
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp857-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp858-.Ltmp857              #   Call between .Ltmp857 and .Ltmp858
	.uleb128 .Ltmp859-.Lfunc_begin8         #     jumps to .Ltmp859
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp860-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp861-.Ltmp860              #   Call between .Ltmp860 and .Ltmp861
	.uleb128 .Ltmp862-.Lfunc_begin8         #     jumps to .Ltmp862
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp863-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp864-.Ltmp863              #   Call between .Ltmp863 and .Ltmp864
	.uleb128 .Ltmp865-.Lfunc_begin8         #     jumps to .Ltmp865
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp866-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp909-.Ltmp866              #   Call between .Ltmp866 and .Ltmp909
	.uleb128 .Ltmp983-.Lfunc_begin8         #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp910-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp921-.Ltmp910              #   Call between .Ltmp910 and .Ltmp921
	.uleb128 .Ltmp970-.Lfunc_begin8         #     jumps to .Ltmp970
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp922-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp955-.Ltmp922              #   Call between .Ltmp922 and .Ltmp955
	.uleb128 .Ltmp956-.Lfunc_begin8         #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp960-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp969-.Ltmp960              #   Call between .Ltmp960 and .Ltmp969
	.uleb128 .Ltmp970-.Lfunc_begin8         #     jumps to .Ltmp970
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp974-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp979-.Ltmp974              #   Call between .Ltmp974 and .Ltmp979
	.uleb128 .Ltmp980-.Lfunc_begin8         #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp979-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp957-.Ltmp979              #   Call between .Ltmp979 and .Ltmp957
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp957-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp958-.Ltmp957              #   Call between .Ltmp957 and .Ltmp958
	.uleb128 .Ltmp959-.Lfunc_begin8         #     jumps to .Ltmp959
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp971-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp972-.Ltmp971              #   Call between .Ltmp971 and .Ltmp972
	.uleb128 .Ltmp973-.Lfunc_begin8         #     jumps to .Ltmp973
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp981-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp982-.Ltmp981              #   Call between .Ltmp981 and .Ltmp982
	.uleb128 .Ltmp983-.Lfunc_begin8         #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp982-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Lfunc_end14-.Ltmp982          #   Call between .Ltmp982 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	__clang_call_terminate, .Lfunc_end15-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN8LoopStatD2Ev,"axG",@progbits,_ZN8LoopStatD2Ev,comdat
	.weak	_ZN8LoopStatD2Ev                # -- Begin function _ZN8LoopStatD2Ev
	.p2align	5
	.type	_ZN8LoopStatD2Ev,@function
_ZN8LoopStatD2Ev:                       # @_ZN8LoopStatD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 256
	beqz	$a0, .LBB16_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit
	ld.d	$a0, $fp, 232
	beqz	$a0, .LBB16_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB16_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit3
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB16_8
# %bb.7:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit5
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB16_10
# %bb.9:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_10:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit7
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB16_12
# %bb.11:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_12:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit9
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB16_14
# %bb.13:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_14:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit11
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB16_16
# %bb.15:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_16:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit13
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB16_18
# %bb.17:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_18:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit15
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB16_20
# %bb.19:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_20:                              # %_ZNSt6vectorImSaImEED2Ev.exit
	ld.d	$s0, $fp, 16
	ld.d	$s1, $fp, 24
	bne	$s0, $s1, .LBB16_24
# %bb.21:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$s0, .LBB16_27
.LBB16_22:
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
	.p2align	4, , 16
.LBB16_23:                              # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB16_24 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB16_26
.LBB16_24:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB16_23
# %bb.25:                               #   in Loop: Header=BB16_24 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB16_23
.LBB16_26:                              # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $fp, 16
	bnez	$s0, .LBB16_22
.LBB16_27:                              # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	_ZN8LoopStatD2Ev, .Lfunc_end16-_ZN8LoopStatD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB17_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a1
	move	$fp, $a0
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB17_5
.LBB17_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB17_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB17_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB17_2
.LBB17_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB17_6:                               # %._crit_edge
	ret
.Lfunc_end17:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E, .Lfunc_end17-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.p2align	5
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.cfi_startproc
# %bb.0:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 8
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB18_4
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $sp, 8
	beq	$a1, $s0, .LBB18_7
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	vld	$vr0, $sp, 16
	ld.d	$a2, $fp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB18_6
# %bb.3:
	st.d	$a0, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.LBB18_4:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $sp, 8
	beq	$a1, $s0, .LBB18_7
# %bb.5:                                # %.thread.i
	vld	$vr0, $sp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
.LBB18_6:
	st.d	$s0, $sp, 8
	move	$a0, $s0
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.LBB18_7:
	addi.d	$a2, $sp, 8
	beq	$a2, $fp, .LBB18_15
# %bb.8:
	ld.d	$a2, $sp, 16
	beqz	$a2, .LBB18_12
# %bb.9:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB18_11
# %bb.10:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB18_12
.LBB18_11:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB18_14
.LBB18_13:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB18_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB18_15:
	move	$a0, $a1
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.Lfunc_end18:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_, .Lfunc_end18-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.p2align	5
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %.peel.begin
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
	move	$s0, $a4
	move	$s2, $a3
	move	$s4, $a2
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a2
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 16
	beqz	$s1, .LBB19_4
# %bb.1:                                # %.peel.begin
	addi.w	$a1, $s4, 0
	addi.w	$a2, $zero, -1
	bne	$a1, $a2, .LBB19_4
# %bb.2:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_42
# %bb.3:                                # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel
	ld.bu	$a0, $a0, 0
.LBB19_4:                               # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
	addi.d	$s5, $fp, 16
	addi.w	$s7, $zero, -1
	addi.w	$s3, $a0, 0
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	beqz	$s2, .LBB19_9
# %bb.5:                                # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
	addi.w	$a2, $s0, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s0
	bne	$a2, $a1, .LBB19_10
# %bb.6:
	ld.d	$a0, $s2, 16
	ld.d	$a2, $s2, 24
	bgeu	$a0, $a2, .LBB19_43
# %bb.7:                                # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel
	beq	$s3, $a1, .LBB19_11
.LBB19_8:
	move	$s3, $zero
	addi.w	$s8, $s4, 0
	bnez	$s1, .LBB19_35
	b	.LBB19_38
.LBB19_9:
	move	$a0, $s0
.LBB19_10:                              # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
	addi.d	$a1, $s3, 1
	sltui	$a1, $a1, 1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	beq	$a1, $a0, .LBB19_8
.LBB19_11:
	beqz	$s1, .LBB19_15
# %bb.12:
	addi.w	$a0, $s4, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB19_15
# %bb.13:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_97
# %bb.14:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel
	ld.bu	$s4, $a0, 0
.LBB19_15:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
	st.b	$s4, $s5, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_98
.LBB19_16:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
.LBB19_17:                              # %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
	ori	$s4, $zero, 17
	addi.w	$s5, $s0, 0
	ori	$s8, $zero, 15
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_20
	b	.LBB19_25
	.p2align	4, , 16
.LBB19_18:
	move	$s1, $zero
	ori	$a0, $zero, 255
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_32
.LBB19_19:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	addi.d	$s4, $s4, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_25
.LBB19_20:
	move	$s6, $zero
	beqz	$s2, .LBB19_26
.LBB19_21:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
	bne	$s5, $s7, .LBB19_26
# %bb.22:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_24
# %bb.23:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i
	ld.bu	$a0, $a0, 0
	b	.LBB19_27
.LBB19_24:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s2
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s2, $s2, $a1
	b	.LBB19_27
.LBB19_25:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a0, $a0, 1
	sltui	$s6, $a0, 1
	masknez	$s1, $s1, $s6
	bnez	$s2, .LBB19_21
	.p2align	4, , 16
.LBB19_26:
	move	$a0, $s0
.LBB19_27:                              # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.d	$s3, $s4, -16
	beq	$s6, $a0, .LBB19_34
# %bb.28:                               # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
	bgeu	$s3, $s8, .LBB19_34
# %bb.29:
	beqz	$s1, .LBB19_18
# %bb.30:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_33
# %bb.31:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
	ld.bu	$a0, $a0, 0
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_19
.LBB19_32:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$s4, $s4, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_20
	b	.LBB19_25
.LBB19_33:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_19
	b	.LBB19_32
.LBB19_34:                              # %.preheader.loopexit
	move	$s4, $s7
	addi.w	$s8, $s4, 0
	beqz	$s1, .LBB19_38
.LBB19_35:                              # %.preheader
	bne	$s8, $s7, .LBB19_38
# %bb.36:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_44
# %bb.37:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i29.peel
	ld.bu	$s5, $a0, 0
	bnez	$s2, .LBB19_39
	b	.LBB19_46
.LBB19_38:
	move	$s5, $s4
	beqz	$s2, .LBB19_46
.LBB19_39:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i21.peel
	addi.w	$a0, $s0, 0
	bne	$a0, $s7, .LBB19_46
# %bb.40:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_56
.LBB19_41:                              # %.thr_comm.peel
	addi.w	$a0, $s5, 0
	bne	$a0, $s7, .LBB19_96
	b	.LBB19_47
.LBB19_42:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	b	.LBB19_4
.LBB19_43:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s2
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s2, $s2, $a1
	b	.LBB19_10
.LBB19_44:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i28.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp984:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp985:                               # EH_LABEL
# %bb.45:                               # %.noexc.peel
	move	$s5, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	bnez	$s2, .LBB19_39
.LBB19_46:
	addi.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.w	$a1, $s5, 0
	addi.d	$a1, $a1, 1
	sltui	$a1, $a1, 1
	xor	$a0, $a0, $a1
	beqz	$a0, .LBB19_96
.LBB19_47:
	ld.d	$a0, $sp, 16
	bne	$s3, $a0, .LBB19_60
.LBB19_48:
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 16
.Ltmp988:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp989:                               # EH_LABEL
# %bb.49:
	move	$s5, $a0
	beqz	$s3, .LBB19_52
# %bb.50:
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB19_55
# %bb.51:
	ld.b	$a0, $a1, 0
	st.b	$a0, $s5, 0
.LBB19_52:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB19_54
.LBB19_53:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_54:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
	ld.d	$a0, $sp, 16
	st.d	$s5, $fp, 0
	st.d	$a0, $fp, 16
	bnez	$s1, .LBB19_61
	b	.LBB19_64
.LBB19_55:
	move	$a0, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB19_53
	b	.LBB19_54
.LBB19_56:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i26.peel
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
.Ltmp986:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp987:                               # EH_LABEL
# %bb.57:                               # %.noexc30.peel
	bne	$a0, $s7, .LBB19_41
# %bb.58:
	addi.w	$a0, $s5, 0
	beq	$a0, $s7, .LBB19_96
# %bb.59:
	move	$s2, $zero
	ld.d	$a0, $sp, 16
	beq	$s3, $a0, .LBB19_48
.LBB19_60:                              # %._crit_edge
	ld.d	$s5, $fp, 0
	beqz	$s1, .LBB19_64
.LBB19_61:
	bne	$s8, $s7, .LBB19_64
# %bb.62:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_99
# %bb.63:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i36.peel
	ld.bu	$s4, $a0, 0
.LBB19_64:
	stx.b	$s4, $s5, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_101
.LBB19_65:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
.LBB19_66:                              # %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit40.peel.preheader
	addi.d	$s3, $s3, 1
	addi.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	sltui	$s5, $a0, 1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_69
	b	.LBB19_90
	.p2align	4, , 16
.LBB19_67:
	move	$s1, $zero
	ori	$a0, $zero, 255
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_88
.LBB19_68:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	addi.d	$s3, $s3, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_90
.LBB19_69:
	move	$s4, $zero
	beqz	$s2, .LBB19_92
.LBB19_70:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i21
	addi.w	$a0, $s0, 0
	bne	$a0, $s7, .LBB19_92
# %bb.71:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_73
.LBB19_72:                              # %.thr_comm
	bnez	$s4, .LBB19_78
	b	.LBB19_96
.LBB19_73:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i26
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
.Ltmp999:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp1000:                              # EH_LABEL
# %bb.74:                               # %.noexc30
	bne	$a0, $s7, .LBB19_72
# %bb.75:
	bnez	$s4, .LBB19_96
# %bb.76:
	move	$s2, $zero
	ld.d	$a0, $sp, 16
	beq	$s3, $a0, .LBB19_79
	.p2align	4, , 16
.LBB19_77:                              # %._crit_edge88
	ld.d	$s4, $fp, 0
	bnez	$s1, .LBB19_86
	b	.LBB19_67
	.p2align	4, , 16
.LBB19_78:
	ld.d	$a0, $sp, 16
	bne	$s3, $a0, .LBB19_77
.LBB19_79:
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 16
.Ltmp1001:                              # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1002:                              # EH_LABEL
# %bb.80:
	move	$s4, $a0
	addi.d	$a0, $s3, -1
	beq	$a0, $s7, .LBB19_83
# %bb.81:
	ld.d	$a1, $fp, 0
	bnez	$a0, .LBB19_93
# %bb.82:
	ld.b	$a0, $a1, 0
	st.b	$a0, $s4, 0
.LBB19_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
	ld.d	$a0, $fp, 0
	beq	$a0, $s6, .LBB19_85
.LBB19_84:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_85:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
	ld.d	$a0, $sp, 16
	st.d	$s4, $fp, 0
	st.d	$a0, $fp, 16
	beqz	$s1, .LBB19_67
.LBB19_86:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_94
# %bb.87:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i36
	ld.bu	$a0, $a0, 0
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_68
.LBB19_88:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
.Ltmp1007:                              # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp1008:                              # EH_LABEL
# %bb.89:                               # %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit40.peel.backedge
	addi.d	$s3, $s3, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_69
.LBB19_90:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i28
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp997:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp998:                               # EH_LABEL
# %bb.91:                               # %.noexc
	addi.d	$a0, $a0, 1
	sltui	$s4, $a0, 1
	masknez	$s1, $s1, $s4
	bnez	$s2, .LBB19_70
	.p2align	4, , 16
.LBB19_92:
	bne	$s5, $s4, .LBB19_78
	b	.LBB19_96
	.p2align	4, , 16
.LBB19_93:
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bne	$a0, $s6, .LBB19_84
	b	.LBB19_85
.LBB19_94:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i35
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp1004:                              # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp1005:                              # EH_LABEL
# %bb.95:                               # %.noexc37
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_68
	b	.LBB19_88
.LBB19_96:                              # %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit
	ld.d	$a0, $fp, 0
	st.d	$s3, $fp, 8
	stx.b	$zero, $a0, $s3
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
	ret
.LBB19_97:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	st.b	$s4, $s5, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_16
.LBB19_98:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
	move	$a0, $s1
	jirl	$ra, $a1, 0
	b	.LBB19_17
.LBB19_99:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i35.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp991:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp992:                               # EH_LABEL
# %bb.100:                              # %.noexc37.peel
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	stx.b	$s4, $s5, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_65
.LBB19_101:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
.Ltmp994:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp995:                               # EH_LABEL
	b	.LBB19_66
.LBB19_102:                             # %.loopexit.split-lp84
.Ltmp993:                               # EH_LABEL
	b	.LBB19_108
.LBB19_103:                             # %.loopexit.split-lp
.Ltmp996:                               # EH_LABEL
	b	.LBB19_108
.LBB19_104:                             # %.loopexit83
.Ltmp1006:                              # EH_LABEL
	b	.LBB19_108
.LBB19_105:                             # %.loopexit
.Ltmp1009:                              # EH_LABEL
	b	.LBB19_108
.LBB19_106:                             # %.loopexit.split-lp79
.Ltmp990:                               # EH_LABEL
	b	.LBB19_108
.LBB19_107:                             # %.loopexit78
.Ltmp1003:                              # EH_LABEL
.LBB19_108:
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB19_110
# %bb.109:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_110:                             # %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag, .Lfunc_end19-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.cfi_endproc
	.section	.gcc_except_table._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"aG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp984-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp984
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp984-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp985-.Ltmp984              #   Call between .Ltmp984 and .Ltmp985
	.uleb128 .Ltmp996-.Lfunc_begin9         #     jumps to .Ltmp996
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp988-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp989-.Ltmp988              #   Call between .Ltmp988 and .Ltmp989
	.uleb128 .Ltmp990-.Lfunc_begin9         #     jumps to .Ltmp990
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp989-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp986-.Ltmp989              #   Call between .Ltmp989 and .Ltmp986
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp986-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp987-.Ltmp986              #   Call between .Ltmp986 and .Ltmp987
	.uleb128 .Ltmp996-.Lfunc_begin9         #     jumps to .Ltmp996
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp999-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp1000-.Ltmp999             #   Call between .Ltmp999 and .Ltmp1000
	.uleb128 .Ltmp1009-.Lfunc_begin9        #     jumps to .Ltmp1009
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1001-.Lfunc_begin9        # >> Call Site 7 <<
	.uleb128 .Ltmp1002-.Ltmp1001            #   Call between .Ltmp1001 and .Ltmp1002
	.uleb128 .Ltmp1003-.Lfunc_begin9        #     jumps to .Ltmp1003
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1002-.Lfunc_begin9        # >> Call Site 8 <<
	.uleb128 .Ltmp1007-.Ltmp1002            #   Call between .Ltmp1002 and .Ltmp1007
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1007-.Lfunc_begin9        # >> Call Site 9 <<
	.uleb128 .Ltmp998-.Ltmp1007             #   Call between .Ltmp1007 and .Ltmp998
	.uleb128 .Ltmp1009-.Lfunc_begin9        #     jumps to .Ltmp1009
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp998-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp1004-.Ltmp998             #   Call between .Ltmp998 and .Ltmp1004
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1004-.Lfunc_begin9        # >> Call Site 11 <<
	.uleb128 .Ltmp1005-.Ltmp1004            #   Call between .Ltmp1004 and .Ltmp1005
	.uleb128 .Ltmp1006-.Lfunc_begin9        #     jumps to .Ltmp1006
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1005-.Lfunc_begin9        # >> Call Site 12 <<
	.uleb128 .Ltmp991-.Ltmp1005             #   Call between .Ltmp1005 and .Ltmp991
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp991-.Lfunc_begin9         # >> Call Site 13 <<
	.uleb128 .Ltmp992-.Ltmp991              #   Call between .Ltmp991 and .Ltmp992
	.uleb128 .Ltmp993-.Lfunc_begin9         #     jumps to .Ltmp993
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp994-.Lfunc_begin9         # >> Call Site 14 <<
	.uleb128 .Ltmp995-.Ltmp994              #   Call between .Ltmp994 and .Ltmp995
	.uleb128 .Ltmp996-.Lfunc_begin9         #     jumps to .Ltmp996
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp995-.Lfunc_begin9         # >> Call Site 15 <<
	.uleb128 .Lfunc_end19-.Ltmp995          #   Call between .Ltmp995 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,"axG",@progbits,_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,comdat
	.weak	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb # -- Begin function _ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.p2align	5
	.type	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,@function
_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb: # @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
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
	move	$fp, $a0
	ld.d	$s5, $a0, 16
	ld.d	$s6, $a0, 32
	move	$s2, $a2
	move	$s0, $a1
	beq	$s5, $s6, .LBB20_8
# %bb.1:
	ld.wu	$a0, $fp, 24
	bstrpick.d	$a2, $s2, 31, 0
	sub.d	$a1, $s5, $s0
	sub.d	$a4, $a0, $a2
	alsl.d	$a4, $a1, $a4, 3
	addi.d	$a1, $a0, 1
	blez	$a4, .LBB20_6
# %bb.2:                                # %_ZNSt13_Bit_iteratormmEv.exit.preheader.i.i.i.i.i
	srli.d	$a4, $a1, 3
	lu12i.w	$a5, 262143
	ori	$a5, $a5, 4088
	and	$a4, $a4, $a5
	add.d	$a4, $s5, $a4
	andi	$t1, $a1, 63
	alsl.d	$a5, $s5, $a0, 3
	sub.d	$a5, $a5, $a2
	slli.d	$a6, $s0, 3
	sub.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	addi.w	$a6, $zero, -8
	ori	$a7, $zero, 63
	ori	$t0, $zero, 1
	move	$t3, $a0
	move	$t2, $s5
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=1
	ld.d	$t6, $a4, 0
	andn	$t5, $t6, $t5
	add.d	$t2, $t2, $t4
	addi.d	$a5, $a5, -1
	st.d	$t5, $a4, 0
	bge	$t0, $a5, .LBB20_6
.LBB20_4:                               # %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t5, $t3, -1
	addi.w	$t3, $t3, 0
	sltui	$t3, $t3, 1
	maskeqz	$t4, $a6, $t3
	masknez	$t5, $t5, $t3
	maskeqz	$t3, $a7, $t3
	or	$t3, $t3, $t5
	addi.w	$t5, $t1, -1
	sltui	$t1, $t1, 1
	maskeqz	$t6, $a6, $t1
	add.d	$a4, $a4, $t6
	ldx.d	$t6, $t2, $t4
	masknez	$t5, $t5, $t1
	maskeqz	$t1, $a7, $t1
	or	$t1, $t1, $t5
	srl.d	$t5, $t6, $t3
	andi	$t6, $t5, 1
	sll.d	$t5, $t0, $t1
	beqz	$t6, .LBB20_3
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	ld.d	$t6, $a4, 0
	or	$t5, $t6, $t5
	add.d	$t2, $t2, $t4
	addi.d	$a5, $a5, -1
	st.d	$t5, $a4, 0
	blt	$t0, $a5, .LBB20_4
.LBB20_6:                               # %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
	ori	$a4, $zero, 1
	sll.d	$a2, $a4, $a2
	beqz	$a3, .LBB20_17
# %bb.7:
	ld.d	$a3, $s0, 0
	or	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ori	$a2, $zero, 63
	st.w	$a1, $fp, 24
	beq	$a0, $a2, .LBB20_18
	b	.LBB20_32
.LBB20_8:
	ld.d	$s1, $fp, 0
	ld.wu	$a0, $fp, 24
	sub.d	$a1, $s5, $s1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a1, $a1, $a0, 3
	addi.w	$a0, $zero, -64
	lu52i.d	$a0, $a0, 2047
	beq	$a1, $a0, .LBB20_35
# %bb.9:                                # %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
	move	$s7, $a3
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	sltu	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	addi.d	$a0, $a0, 63
	masknez	$a0, $a0, $a2
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 2047
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	srli.d	$a1, $a0, 3
	addi.w	$a0, $zero, -8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu52i.d	$a0, $a0, 255
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	and	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	sub.d	$s4, $s0, $s1
	ori	$a0, $zero, 9
	bstrpick.d	$s8, $s2, 31, 0
	blt	$s4, $a0, .LBB20_33
# %bb.10:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB20_11:                              # %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
	add.d	$a0, $s3, $s4
	move	$a1, $s7
	beqz	$s8, .LBB20_19
# %bb.12:                               # %.lr.ph.i.i.i.i.i.i.preheader
	move	$a3, $zero
	move	$a2, $zero
	addi.d	$a4, $s8, 1
	ori	$a5, $zero, 1
	move	$a6, $s0
	b	.LBB20_15
	.p2align	4, , 16
.LBB20_13:                              #   in Loop: Header=BB20_15 Depth=1
	ld.d	$t0, $a0, 0
	andn	$a7, $t0, $a7
.LBB20_14:                              # %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB20_15 Depth=1
	st.d	$a7, $a0, 0
	addi.w	$a7, $a3, 1
	addi.d	$a3, $a3, -63
	sltui	$a3, $a3, 1
	alsl.d	$a6, $a3, $a6, 3
	masknez	$a3, $a7, $a3
	addi.w	$a7, $a2, 1
	addi.d	$a2, $a2, -63
	sltui	$t0, $a2, 1
	masknez	$a2, $a7, $t0
	addi.d	$a4, $a4, -1
	alsl.d	$a0, $t0, $a0, 3
	bge	$a5, $a4, .LBB20_20
.LBB20_15:                              # %.lr.ph.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	srl.d	$a7, $a7, $a3
	andi	$t0, $a7, 1
	sll.d	$a7, $a5, $a2
	beqz	$t0, .LBB20_13
# %bb.16:                               #   in Loop: Header=BB20_15 Depth=1
	ld.d	$t0, $a0, 0
	or	$a7, $t0, $a7
	b	.LBB20_14
.LBB20_17:
	ld.d	$a3, $s0, 0
	andn	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ori	$a2, $zero, 63
	st.w	$a1, $fp, 24
	bne	$a0, $a2, .LBB20_32
.LBB20_18:
	st.w	$zero, $fp, 24
	addi.d	$a0, $s5, 8
	st.d	$a0, $fp, 16
	b	.LBB20_32
.LBB20_19:
	move	$a2, $zero
.LBB20_20:                              # %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
	addi.w	$a3, $a2, 1
	addi.d	$a4, $a2, -63
	sltui	$a4, $a4, 1
	ori	$a5, $zero, 1
	sll.d	$a2, $a5, $a2
	beqz	$a1, .LBB20_22
# %bb.21:
	ld.d	$a1, $a0, 0
	or	$a1, $a1, $a2
	b	.LBB20_23
.LBB20_22:
	ld.d	$a1, $a0, 0
	andn	$a1, $a1, $a2
.LBB20_23:                              # %_ZNSt14_Bit_referenceaSEb.exit110
	ld.wu	$a2, $fp, 24
	alsl.d	$s4, $a4, $a0, 3
	masknez	$s7, $a3, $a4
	sub.d	$a3, $s5, $s0
	sub.d	$a4, $a2, $s8
	alsl.d	$a3, $a3, $a4, 3
	st.d	$a1, $a0, 0
	blez	$a3, .LBB20_29
# %bb.24:                               # %.lr.ph.preheader.i.i.i.i.i
	alsl.d	$a0, $s5, $a2, 3
	sub.d	$a0, $a0, $s8
	slli.d	$a1, $s0, 3
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	b	.LBB20_27
	.p2align	4, , 16
.LBB20_25:                              #   in Loop: Header=BB20_27 Depth=1
	ld.d	$a4, $s4, 0
	andn	$a3, $a4, $a3
.LBB20_26:                              # %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i125
                                        #   in Loop: Header=BB20_27 Depth=1
	st.d	$a3, $s4, 0
	addi.d	$a3, $s2, 1
	addi.d	$a2, $a2, -63
	sltui	$a2, $a2, 1
	alsl.d	$s0, $a2, $s0, 3
	masknez	$s2, $a3, $a2
	addi.w	$a2, $s7, 1
	addi.d	$a3, $s7, -63
	sltui	$a3, $a3, 1
	alsl.d	$s4, $a3, $s4, 3
	addi.d	$a0, $a0, -1
	masknez	$s7, $a2, $a3
	bge	$a1, $a0, .LBB20_29
.LBB20_27:                              # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s0, 0
	addi.w	$a2, $s2, 0
	srl.d	$a3, $a3, $a2
	andi	$a4, $a3, 1
	sll.d	$a3, $a1, $s7
	beqz	$a4, .LBB20_25
# %bb.28:                               #   in Loop: Header=BB20_27 Depth=1
	ld.d	$a4, $s4, 0
	or	$a3, $a4, $a3
	b	.LBB20_26
.LBB20_29:                              # %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
	beqz	$s1, .LBB20_31
# %bb.30:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $s6, $a0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_31:                              # %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 511
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	add.d	$a0, $s3, $a0
	st.d	$a0, $fp, 32
	st.d	$s3, $fp, 0
	st.w	$zero, $fp, 8
	st.d	$s4, $fp, 16
	st.w	$s7, $fp, 24
.LBB20_32:                              # %_ZNSt13_Bit_iteratorppEv.exit
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
.LBB20_33:
	ori	$a0, $zero, 8
	bne	$s4, $a0, .LBB20_11
# %bb.34:
	ld.d	$a0, $s1, 0
	st.d	$a0, $s3, 0
	b	.LBB20_11
.LBB20_35:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb, .Lfunc_end20-_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nLoopStat::print..."
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\tloop_is_run = "
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\tnum loop lengths = "
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\t\t ilength = "
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" --> "
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\t\t\t loop_length = "
	.size	.L.str.5, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\t\t\t samples_per_pass = "
	.size	.L.str.6, 24

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\t\t\t loop_run_count = "
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\t\t\t\t sample time = "
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\t\t\t\t mean = "
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\t\t\t\t std_dev = "
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\t\t\t\t min = "
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\t\t\t\t max = "
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\t\t\t\t harm_mean = "
	.size	.L.str.13, 18

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\t\t\t\t meanrel2ref = "
	.size	.L.str.14, 20

	.type	_ZL21s_loop_suite_run_info,@object # @_ZL21s_loop_suite_run_info
	.local	_ZL21s_loop_suite_run_info
	.comm	_ZL21s_loop_suite_run_info,8,8
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"/"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"timing.txt"
	.size	.L.str.16, 11

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" ERROR: Can't open output file "
	.size	.L.str.17, 32

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n writeTimingSummaryReport...   "
	.size	.L.str.18, 33

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"checksum.txt"
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n writeChecksumReport...    "
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"fom.txt"
	.size	.L.str.21, 8

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\n writeFOMReport... "
	.size	.L.str.22, 21

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.23, 49

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.24:
	.asciz	"===========================================================================================================\n"
	.size	.L.str.24, 109

	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"------------------------------------------------------------------------------------------------------------\n"
	.size	.L.str.25, 110

	.type	.L.str.26,@object               # @.str.26
	.p2align	3, 0x0
.L.str.26:
	.asciz	"-------------------------------------------------------\n"
	.size	.L.str.26, 57

	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"............................................\n"
	.size	.L.str.27, 46

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"\n\n\n"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"LCALS compilation summary: "
	.size	.L.str.29, 28

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\n\n"
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"LCALS run summary: "
	.size	.L.str.31, 20

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"sizeof(Real_type) = "
	.size	.L.str.32, 21

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"     num suite passes = "
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"     loop sample fraction = "
	.size	.L.str.34, 29

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"     loop variants run : "
	.size	.L.str.35, 26

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" , "
	.size	.L.str.36, 4

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\n     reference variant : "
	.size	.L.str.37, 27

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.38:
	.asciz	"Variant(length id)"
	.size	.L.str.38, 19

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"Loop name(Loop ID) -->   <length id>:(length, samples/pass), etc."
	.size	.L.str.39, 66

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"   Mean Time "
	.size	.L.str.40, 14

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"        Min Time"
	.size	.L.str.41, 17

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"      Max Time"
	.size	.L.str.42, 15

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"    Std. Dev."
	.size	.L.str.43, 14

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Mean time rel to ref variant"
	.size	.L.str.44, 29

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	" ("
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	") --> "
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"   "
	.size	.L.str.47, 4

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	":("
	.size	.L.str.48, 3

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	", "
	.size	.L.str.49, 3

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	")"
	.size	.L.str.50, 2

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"("
	.size	.L.str.51, 2

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"basic_string::append"
	.size	.L.str.53, 21

	.type	.L.str.54,@object               # @.str.54
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.54:
	.asciz	"Variant(length #)"
	.size	.L.str.54, 18

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"Loop name -->"
	.size	.L.str.55, 14

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Check Sum    "
	.size	.L.str.56, 14

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"        Delta from reference"
	.size	.L.str.57, 29

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"LCALS FOM results: "
	.size	.L.str.58, 20

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Loop variant -- "
	.size	.L.str.59, 17

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"\t"
	.size	.L.str.60, 2

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	" :   # loops run = "
	.size	.L.str.61, 20

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" ,   total exec time = "
	.size	.L.str.62, 24

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"\t\tFOM_relative = "
	.size	.L.str.63, 18

	.type	.L.str.64,@object               # @.str.64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.64:
	.asciz	"-meantime.txt"
	.size	.L.str.64, 14

	.type	.L.str.65,@object               # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"\n writeMeanTimeReport...   "
	.size	.L.str.65, 28

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" Mean Run Times "
	.size	.L.str.66, 17

	.type	.L.str.67,@object               # @.str.67
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.67:
	.asciz	"-reltime.txt"
	.size	.L.str.67, 13

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"\n writeRelativeTimeReport...   "
	.size	.L.str.68, 32

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	" Relative Run Times "
	.size	.L.str.69, 21

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"lcalsversioninfo.txt"
	.size	.L.str.70, 21

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"vector<bool>::_M_insert_aux"
	.size	.L.str.71, 28

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.72, 26

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
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cout
