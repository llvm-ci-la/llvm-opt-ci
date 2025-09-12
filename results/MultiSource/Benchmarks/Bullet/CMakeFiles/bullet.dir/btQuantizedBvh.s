	.file	"btQuantizedBvh.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN14btQuantizedBvhC2Ev
.LCPI0_0:
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0x00000000                      # float 0
.LCPI0_1:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN14btQuantizedBvhC2Ev
	.p2align	5
	.type	_ZN14btQuantizedBvhC2Ev,@function
_ZN14btQuantizedBvhC2Ev:                # @_ZN14btQuantizedBvhC2Ev
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV14btQuantizedBvh+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV14btQuantizedBvh+16)
	st.d	$a1, $a0, 0
	ori	$a1, $zero, 275
	st.w	$a1, $a0, 56
	st.b	$zero, $a0, 64
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 96
	st.d	$zero, $a0, 88
	st.d	$zero, $a0, 76
	st.b	$a1, $a0, 128
	st.d	$zero, $a0, 120
	st.d	$zero, $a0, 108
	st.b	$a1, $a0, 160
	st.d	$zero, $a0, 152
	st.d	$zero, $a0, 140
	st.b	$a1, $a0, 192
	st.d	$zero, $a0, 184
	st.d	$zero, $a0, 172
	st.w	$zero, $a0, 200
	st.b	$a1, $a0, 232
	vst	$vr0, $a0, 8
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	st.d	$zero, $a0, 224
	st.d	$zero, $a0, 212
	st.w	$zero, $a0, 240
	vst	$vr0, $a0, 24
	ret
.Lfunc_end0:
	.size	_ZN14btQuantizedBvhC2Ev, .Lfunc_end0-_ZN14btQuantizedBvhC2Ev
	.cfi_endproc
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
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev # -- Begin function _ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev,@function
_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev: # @_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB2_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev, .Lfunc_end2-_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev # -- Begin function _ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev,@function
_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev: # @_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB3_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev, .Lfunc_end3-_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN14btQuantizedBvh13buildInternalEv # -- Begin function _ZN14btQuantizedBvh13buildInternalEv
	.p2align	5
	.type	_ZN14btQuantizedBvh13buildInternalEv,@function
_ZN14btQuantizedBvh13buildInternalEv:   # @_ZN14btQuantizedBvh13buildInternalEv
	.cfi_startproc
# %bb.0:
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
	ld.w	$a2, $a0, 140
	ld.w	$s2, $a0, 172
	ori	$a0, $zero, 1
	slli.w	$s1, $a2, 1
	st.b	$a0, $fp, 64
	bge	$s2, $s1, .LBB4_13
# %bb.1:
	ld.w	$a0, $fp, 176
	bge	$a0, $s1, .LBB4_11
# %bb.2:
	move	$s3, $a2
	beqz	$a2, .LBB4_4
# %bb.3:
	slli.d	$a0, $s1, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 172
	move	$s0, $a0
	bgtz	$a1, .LBB4_5
	b	.LBB4_7
.LBB4_4:
	move	$s0, $zero
	move	$a1, $s2
	blez	$a1, .LBB4_7
.LBB4_5:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 184
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s0, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB4_6
.LBB4_7:                                # %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB4_10
# %bb.8:                                # %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 192
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_10
# %bb.9:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_10:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 192
	st.d	$s0, $fp, 184
	st.w	$s1, $fp, 176
	move	$a2, $s3
.LBB4_11:                               # %.lr.ph.i
	sub.d	$a0, $s1, $s2
	slli.d	$a1, $s2, 4
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 184
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB4_12
.LBB4_13:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE6resizeEiRKS0_.exit
	st.w	$s1, $fp, 172
	st.w	$zero, $fp, 60
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh9buildTreeEii)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 64
	ld.w	$a1, $fp, 212
	beqz	$a0, .LBB4_25
# %bb.14:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE6resizeEiRKS0_.exit
	bnez	$a1, .LBB4_25
# %bb.15:
	ld.w	$a0, $fp, 216
	beqz	$a0, .LBB4_17
# %bb.16:                               # %._ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit_crit_edge
	ld.d	$s0, $fp, 224
	ori	$a1, $zero, 1
	b	.LBB4_24
.LBB4_17:                               # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i
	ori	$a0, $zero, 32
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 212
	move	$s0, $a0
	blez	$a1, .LBB4_20
# %bb.18:                               # %.lr.ph.i.i.i10
	move	$a0, $zero
	slli.d	$a1, $a1, 5
	.p2align	4, , 16
.LBB4_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 224
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s0, $a0
	vld	$vr0, $a2, 16
	add.d	$a2, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a1, $a0, .LBB4_19
.LBB4_20:                               # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 224
	beqz	$a0, .LBB4_23
# %bb.21:                               # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 232
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_23
# %bb.22:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	ld.w	$a1, $fp, 212
	st.b	$a0, $fp, 232
	st.d	$s0, $fp, 224
	st.w	$a0, $fp, 216
	addi.d	$a1, $a1, 1
.LBB4_24:                               # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit
	ld.d	$a0, $fp, 184
	ld.h	$a2, $a0, 0
	st.h	$a2, $s0, 0
	ld.h	$a2, $a0, 2
	st.h	$a2, $s0, 2
	ld.h	$a2, $a0, 4
	st.h	$a2, $s0, 4
	ld.h	$a2, $a0, 6
	st.h	$a2, $s0, 6
	ld.h	$a2, $a0, 8
	st.h	$a2, $s0, 8
	ld.h	$a2, $a0, 10
	st.w	$a1, $fp, 212
	ld.w	$a0, $a0, 12
	st.h	$a2, $s0, 10
	st.w	$zero, $s0, 12
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $a0
	sub.d	$a0, $zero, $a0
	masknez	$a0, $a0, $a2
	ori	$a3, $zero, 1
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.w	$a0, $s0, 16
.LBB4_25:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE6resizeEiRKS0_.exit._crit_edge
	ld.d	$a0, $fp, 152
	st.w	$a1, $fp, 240
	beqz	$a0, .LBB4_28
# %bb.26:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE6resizeEiRKS0_.exit._crit_edge
	ld.b	$a1, $fp, 160
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_28
# %bb.27:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
	ld.d	$a0, $fp, 88
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 160
	st.d	$zero, $fp, 152
	st.d	$zero, $fp, 140
	beqz	$a0, .LBB4_31
# %bb.29:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
	ld.b	$a1, $fp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_31
# %bb.30:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit
	st.b	$s0, $fp, 96
	st.d	$zero, $fp, 88
	st.d	$zero, $fp, 76
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	_ZN14btQuantizedBvh13buildInternalEv, .Lfunc_end4-_ZN14btQuantizedBvh13buildInternalEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btQuantizedBvh9buildTreeEii # -- Begin function _ZN14btQuantizedBvh9buildTreeEii
	.p2align	5
	.type	_ZN14btQuantizedBvh9buildTreeEii,@function
_ZN14btQuantizedBvh9buildTreeEii:       # @_ZN14btQuantizedBvh9buildTreeEii
	.cfi_startproc
# %bb.0:
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
	move	$s1, $a1
	move	$fp, $a0
	ld.w	$s4, $a0, 60
	sub.w	$s3, $a2, $a1
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB5_3
# %bb.1:
	ld.bu	$a0, $fp, 64
	beqz	$a0, .LBB5_5
# %bb.2:
	ld.d	$a0, $fp, 152
	slli.d	$a1, $s1, 4
	ld.d	$a2, $fp, 184
	vldx	$vr0, $a0, $a1
	slli.d	$a0, $s4, 4
	vstx	$vr0, $a2, $a0
	b	.LBB5_6
.LBB5_3:
	move	$s0, $a2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh17calcSplittingAxisEii)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, 60
	ld.bu	$a1, $fp, 64
	move	$s2, $a0
	slli.d	$s6, $s5, 6
	beqz	$a1, .LBB5_7
# %bb.4:                                # %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit.thread
	fld.s	$fa0, $fp, 24
	fld.s	$fa1, $fp, 8
	fld.s	$fa2, $fp, 28
	fld.s	$fa3, $fp, 12
	fld.s	$fa4, $fp, 32
	fld.s	$fa5, $fp, 16
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fld.s	$fa2, $fp, 40
	fsub.s	$fa3, $fa4, $fa5
	fld.s	$fa4, $fp, 44
	ld.d	$a0, $fp, 184
	fmul.s	$fa0, $fa0, $fa2
	fld.s	$fa2, $fp, 48
	fmul.s	$fa1, $fa1, $fa4
	alsl.d	$a1, $s5, $a0, 4
	slli.d	$a2, $s5, 4
	fmul.s	$fa2, $fa3, $fa2
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4094
	and	$a3, $a3, $a4
	ftintrz.l.s	$fa0, $fa1
	movfr2gr.d	$a5, $fa0
	and	$a5, $a5, $a4
	ftintrz.l.s	$fa0, $fa2
	movfr2gr.d	$a6, $fa0
	and	$a4, $a6, $a4
	stx.h	$a3, $a0, $a2
	st.h	$a5, $a1, 2
	st.h	$a4, $a1, 4
	move	$a0, $s5
	b	.LBB5_8
.LBB5_5:
	ld.d	$a0, $fp, 88
	slli.d	$a1, $s1, 6
	ld.d	$a2, $fp, 120
	vldx	$vr0, $a0, $a1
	add.d	$a0, $a0, $a1
	slli.d	$a1, $s4, 6
	vstx	$vr0, $a2, $a1
	vld	$vr0, $a0, 48
	add.d	$a1, $a2, $a1
	vst	$vr0, $a1, 48
	vld	$vr0, $a0, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $a0, 16
	vst	$vr0, $a1, 16
.LBB5_6:                                # %_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii.exit
	ld.w	$a0, $fp, 60
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 60
	b	.LBB5_21
.LBB5_7:                                # %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit
	addi.d	$a0, $fp, 24
	ld.d	$a1, $fp, 120
	vld	$vr0, $a0, 0
	vstx	$vr0, $a1, $s6
	ld.bu	$a1, $fp, 64
	ld.w	$a0, $fp, 60
	beqz	$a1, .LBB5_9
.LBB5_8:
	fld.s	$fa0, $fp, 8
	fld.s	$fa1, $fp, 12
	ld.d	$a1, $fp, 184
	fsub.s	$fa0, $fa0, $fa0
	fld.s	$fa2, $fp, 40
	fsub.s	$fa1, $fa1, $fa1
	fld.s	$fa3, $fp, 44
	fld.s	$fa4, $fp, 16
	fmul.s	$fa0, $fa0, $fa2
	fld.s	$fa2, $fp, 48
	fmul.s	$fa1, $fa1, $fa3
	alsl.d	$a0, $a0, $a1, 4
	fsub.s	$fa3, $fa4, $fa4
	fmul.s	$fa2, $fa3, $fa2
	vldi	$vr3, -1168
	fadd.s	$fa0, $fa0, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	ori	$a1, $a1, 1
	fadd.s	$fa0, $fa1, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	ori	$a2, $a2, 1
	fadd.s	$fa0, $fa2, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	ori	$a3, $a3, 1
	st.h	$a1, $a0, 6
	st.h	$a2, $a0, 8
	st.h	$a3, $a0, 10
	blt	$s1, $s0, .LBB5_10
	b	.LBB5_15
.LBB5_9:
	addi.d	$a1, $fp, 8
	ld.d	$a2, $fp, 120
	vld	$vr0, $a1, 0
	slli.d	$a0, $a0, 6
	add.d	$a0, $a2, $a0
	vst	$vr0, $a0, 16
	bge	$s1, $s0, .LBB5_15
.LBB5_10:                               # %.lr.ph
	slli.d	$s7, $s1, 6
	slli.d	$s8, $s1, 4
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_13 Depth=1
	ld.d	$a0, $fp, 88
	vldx	$vr0, $a0, $s7
	add.d	$a1, $a0, $s7
	vst	$vr0, $sp, 32
	ld.d	$a0, $a1, 16
	ld.d	$a2, $a1, 24
.LBB5_12:                               # %_ZNK14btQuantizedBvh10getAabbMaxEi.exit
                                        #   in Loop: Header=BB5_13 Depth=1
	ld.w	$a1, $fp, 60
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 24
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 64
	addi.w	$s3, $s3, -1
	addi.d	$s8, $s8, 16
	beqz	$s3, .LBB5_15
.LBB5_13:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 64
	beqz	$a0, .LBB5_11
# %bb.14:                               #   in Loop: Header=BB5_13 Depth=1
	ld.d	$a0, $fp, 152
	ldx.hu	$a1, $a0, $s8
	add.d	$a0, $a0, $s8
	fld.s	$fa0, $fp, 40
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	ld.hu	$a1, $a0, 2
	fdiv.s	$fa1, $fa1, $fa0
	fld.s	$fa2, $fp, 44
	ld.hu	$a2, $a0, 4
	movgr2fr.w	$fa3, $a1
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa3, $fa3, $fa2
	movgr2fr.w	$fa4, $a2
	ffint.s.w	$fa4, $fa4
	fld.s	$fa5, $fp, 48
	fld.s	$fa6, $fp, 8
	fld.s	$fa7, $fp, 12
	fld.s	$ft0, $fp, 16
	fdiv.s	$fa4, $fa4, $fa5
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa4, $fa4, $ft0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa3
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa4
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 40
	ld.hu	$a1, $a0, 6
	movgr2fr.w	$fa1, $a1
	ld.hu	$a1, $a0, 8
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	ld.hu	$a0, $a0, 10
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa0, $fa6
	fadd.s	$fa1, $fa1, $fa7
	fadd.s	$fa2, $fa2, $ft0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a2, $a1, 31, 0
	b	.LBB5_12
.LBB5_15:                               # %._crit_edge
	ld.w	$a0, $fp, 60
	addi.w	$s3, $a0, 1
	st.w	$s3, $fp, 60
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh9buildTreeEii)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 60
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh9buildTreeEii)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 60
	ld.bu	$a0, $fp, 64
	sub.w	$s0, $a1, $s4
	beqz	$a0, .LBB5_18
# %bb.16:                               # %._crit_edge
	ori	$a1, $zero, 129
	blt	$s0, $a1, .LBB5_18
# %bb.17:
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh20updateSubtreeHeadersEii)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 64
.LBB5_18:
	beqz	$a0, .LBB5_20
# %bb.19:
	ld.d	$a0, $fp, 184
	sub.d	$a1, $zero, $s0
	alsl.d	$a0, $s5, $a0, 4
	st.w	$a1, $a0, 12
	b	.LBB5_21
.LBB5_20:
	ld.d	$a0, $fp, 120
	add.d	$a0, $a0, $s6
	st.w	$s0, $a0, 32
.LBB5_21:                               # %_ZN14btQuantizedBvh26setInternalNodeEscapeIndexEii.exit
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
	ret
.Lfunc_end5:
	.size	_ZN14btQuantizedBvh9buildTreeEii, .Lfunc_end5-_ZN14btQuantizedBvh9buildTreeEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f # -- Begin function _ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f
	.p2align	5
	.type	_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f,@function
_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f: # @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f
# %bb.0:
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	fsub.s	$fa1, $fa1, $fa0
	fsub.s	$fa2, $fa2, $fa0
	fsub.s	$fa3, $fa3, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $fa3
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $a0, 8
	st.d	$a3, $a0, 16
	fld.s	$fa4, $a2, 0
	fld.s	$fa5, $a2, 4
	fld.s	$fa6, $a2, 8
	fadd.s	$fa4, $fa0, $fa4
	fadd.s	$fa5, $fa0, $fa5
	fadd.s	$fa0, $fa0, $fa6
	movfr2gr.s	$a1, $fa4
	movfr2gr.s	$a2, $fa5
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 24
	st.d	$a2, $a0, 32
	fsub.s	$fa1, $fa4, $fa1
	fsub.s	$fa2, $fa5, $fa2
	fsub.s	$fa0, $fa0, $fa3
	lu12i.w	$a1, 292863
	ori	$a1, $a1, 3328
	movgr2fr.w	$fa3, $a1
	fdiv.s	$fa1, $fa3, $fa1
	fdiv.s	$fa2, $fa3, $fa2
	fdiv.s	$fa0, $fa3, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 40
	st.d	$a2, $a0, 48
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 64
	ret
.Lfunc_end6:
	.size	_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f, .Lfunc_end6-_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f
                                        # -- End function
	.globl	_ZN14btQuantizedBvhD2Ev         # -- Begin function _ZN14btQuantizedBvhD2Ev
	.p2align	5
	.type	_ZN14btQuantizedBvhD2Ev,@function
_ZN14btQuantizedBvhD2Ev:                # @_ZN14btQuantizedBvhD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV14btQuantizedBvh+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV14btQuantizedBvh+16)
	ld.d	$a0, $fp, 224
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.b	$a1, $fp, 232
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_3
# %bb.2:
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB7_3:
	ld.d	$a0, $fp, 184
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 232
	st.d	$zero, $fp, 224
	st.d	$zero, $fp, 212
	beqz	$a0, .LBB7_6
# %bb.4:
	ld.b	$a1, $fp, 192
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_6
# %bb.5:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
.LBB7_6:
	ld.d	$a0, $fp, 152
	st.b	$s0, $fp, 192
	st.d	$zero, $fp, 184
	st.d	$zero, $fp, 172
	beqz	$a0, .LBB7_9
# %bb.7:
	ld.b	$a1, $fp, 160
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_9
# %bb.8:
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
.LBB7_9:
	ld.d	$a0, $fp, 120
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 160
	st.d	$zero, $fp, 152
	st.d	$zero, $fp, 140
	beqz	$a0, .LBB7_12
# %bb.10:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_12
# %bb.11:
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
.LBB7_12:
	ld.d	$a0, $fp, 88
	st.b	$s0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	beqz	$a0, .LBB7_15
# %bb.13:
	ld.b	$a1, $fp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_15
# %bb.14:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB7_15:                               # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit22
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 96
	st.d	$zero, $fp, 88
	st.d	$zero, $fp, 76
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_16:
.Ltmp17:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_22
.LBB7_17:
.Ltmp12:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_21
.LBB7_18:
.Ltmp7:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB7_20
.LBB7_19:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 168
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
.LBB7_20:
	addi.d	$a0, $fp, 136
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
.LBB7_21:
	addi.d	$a0, $fp, 104
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
.LBB7_22:
	addi.d	$a0, $fp, 72
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.23:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_24:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN14btQuantizedBvhD2Ev, .Lfunc_end7-_ZN14btQuantizedBvhD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp3-.Ltmp16                 #   Call between .Ltmp16 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp19-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end7-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end7
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
	.globl	_ZN14btQuantizedBvhD0Ev         # -- Begin function _ZN14btQuantizedBvhD0Ev
	.p2align	5
	.type	_ZN14btQuantizedBvhD0Ev,@function
_ZN14btQuantizedBvhD0Ev:                # @_ZN14btQuantizedBvhD0Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvhD2Ev)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB8_2:
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
.Ltmp24:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.3:                                # %_ZN14btQuantizedBvhdlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_4:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN14btQuantizedBvhD0Ev, .Lfunc_end8-_ZN14btQuantizedBvhD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end8-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii # -- Begin function _ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii
	.p2align	5
	.type	_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii,@function
_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii: # @_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii
# %bb.0:
	ld.bu	$a3, $a0, 64
	beqz	$a3, .LBB9_2
# %bb.1:
	ld.d	$a3, $a0, 152
	slli.d	$a2, $a2, 4
	ld.d	$a0, $a0, 184
	vldx	$vr0, $a3, $a2
	slli.d	$a1, $a1, 4
	vstx	$vr0, $a0, $a1
	ret
.LBB9_2:
	ld.d	$a3, $a0, 88
	slli.d	$a2, $a2, 6
	ld.d	$a0, $a0, 120
	vldx	$vr0, $a3, $a2
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 6
	vstx	$vr0, $a0, $a1
	vld	$vr0, $a2, 48
	add.d	$a0, $a0, $a1
	vst	$vr0, $a0, 48
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	ret
.Lfunc_end9:
	.size	_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii, .Lfunc_end9-_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii
                                        # -- End function
	.globl	_ZN14btQuantizedBvh17calcSplittingAxisEii # -- Begin function _ZN14btQuantizedBvh17calcSplittingAxisEii
	.p2align	5
	.type	_ZN14btQuantizedBvh17calcSplittingAxisEii,@function
_ZN14btQuantizedBvh17calcSplittingAxisEii: # @_ZN14btQuantizedBvh17calcSplittingAxisEii
# %bb.0:
	sub.d	$a5, $a2, $a1
	addi.w	$a4, $a5, 0
	bge	$a1, $a2, .LBB10_6
# %bb.1:                                # %.lr.ph
	ld.bu	$a6, $a0, 64
	ld.d	$a7, $a0, 88
	ld.d	$t0, $a0, 152
	fld.s	$fa0, $a0, 40
	fld.s	$fa1, $a0, 44
	fld.s	$fa2, $a0, 48
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 12
	fld.s	$fa6, $a0, 16
	slli.d	$a3, $a1, 6
	add.d	$a7, $a3, $a7
	addi.d	$a7, $a7, 16
	alsl.d	$t0, $a1, $t0, 4
	addi.d	$t0, $t0, 6
	movgr2fr.w	$fa5, $zero
	vldi	$vr7, -1184
	fmov.s	$ft0, $fa5
	fmov.s	$ft1, $fa5
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_4 Depth=1
	ld.d	$t2, $a7, 0
	fld.s	$ft2, $a7, 8
	ld.d	$t1, $a7, -16
	fld.s	$ft5, $a7, -8
	movgr2fr.w	$ft3, $t2
	srli.d	$t2, $t2, 32
	movgr2fr.w	$ft4, $t2
.LBB10_3:                               # %_ZNK14btQuantizedBvh10getAabbMinEi.exit
                                        #   in Loop: Header=BB10_4 Depth=1
	movgr2fr.w	$ft6, $t1
	srli.d	$t1, $t1, 32
	movgr2fr.w	$ft7, $t1
	fadd.s	$ft3, $ft3, $ft6
	fadd.s	$ft4, $ft4, $ft7
	fadd.s	$ft2, $ft2, $ft5
	fmul.s	$ft3, $ft3, $fa7
	fmul.s	$ft4, $ft4, $fa7
	fmul.s	$ft2, $ft2, $fa7
	fadd.s	$ft1, $ft1, $ft3
	fadd.s	$ft0, $ft0, $ft4
	fadd.s	$fa5, $fa5, $ft2
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 16
	beqz	$a5, .LBB10_8
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	beqz	$a6, .LBB10_2
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	ld.hu	$t1, $t0, 0
	movgr2fr.w	$ft2, $t1
	ld.hu	$t1, $t0, 2
	ffint.s.w	$ft2, $ft2
	fdiv.s	$ft2, $ft2, $fa0
	ld.hu	$t2, $t0, 4
	movgr2fr.w	$ft3, $t1
	ffint.s.w	$ft3, $ft3
	fdiv.s	$ft4, $ft3, $fa1
	movgr2fr.w	$ft3, $t2
	ffint.s.w	$ft3, $ft3
	fdiv.s	$ft5, $ft3, $fa2
	ld.hu	$t1, $t0, -6
	fadd.s	$ft3, $ft2, $fa3
	fadd.s	$ft4, $ft4, $fa4
	fadd.s	$ft2, $ft5, $fa6
	movgr2fr.w	$ft5, $t1
	ld.hu	$t1, $t0, -4
	ffint.s.w	$ft5, $ft5
	fdiv.s	$ft5, $ft5, $fa0
	ld.hu	$t2, $t0, -2
	movgr2fr.w	$ft6, $t1
	ffint.s.w	$ft6, $ft6
	fdiv.s	$ft6, $ft6, $fa1
	movgr2fr.w	$ft7, $t2
	ffint.s.w	$ft7, $ft7
	fdiv.s	$ft7, $ft7, $fa2
	fadd.s	$ft8, $ft5, $fa3
	fadd.s	$ft6, $ft6, $fa4
	fadd.s	$ft5, $ft7, $fa6
	movfr2gr.s	$t1, $ft8
	movfr2gr.s	$t2, $ft6
	bstrins.d	$t1, $t2, 63, 32
	b	.LBB10_3
.LBB10_6:                               # %._crit_edge.thread
	movgr2fr.w	$fa0, $a4
	movgr2fr.w	$fa5, $zero
	ffint.s.w	$fa0, $fa0
	fmov.s	$fa7, $fa5
	fmov.s	$fa1, $fa5
.LBB10_7:                               # %._crit_edge203
	vldi	$vr2, -1040
	fadd.s	$fa0, $fa0, $fa2
	frecip.s	$fa0, $fa0
	fmul.s	$fa2, $fa0, $fa5
	fmul.s	$fa3, $fa0, $fa7
	fmul.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa2, $fa3
	fsel	$fa1, $fa2, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.LBB10_8:                               # %._crit_edge
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa0, $fa0
	frecip.s	$fa1, $fa0
	fmul.s	$fa2, $fa1, $ft1
	fmul.s	$fa3, $fa1, $ft0
	fmul.s	$fa4, $fa1, $fa5
	ld.bu	$a4, $a0, 64
	ld.d	$a5, $a0, 88
	ld.d	$a6, $a0, 152
	fld.s	$fa6, $a0, 40
	fld.s	$ft0, $a0, 44
	fld.s	$ft1, $a0, 48
	fld.s	$ft2, $a0, 8
	fld.s	$ft3, $a0, 12
	fld.s	$ft4, $a0, 16
	sub.d	$a0, $a2, $a1
	add.d	$a2, $a3, $a5
	addi.d	$a2, $a2, 16
	alsl.d	$a1, $a1, $a6, 4
	addi.d	$a1, $a1, 6
	movgr2fr.w	$fa1, $zero
	vldi	$vr13, -1184
	fmov.s	$fa7, $fa1
	fmov.s	$fa5, $fa1
	b	.LBB10_11
	.p2align	4, , 16
.LBB10_9:                               #   in Loop: Header=BB10_11 Depth=1
	ld.d	$a5, $a2, 0
	fld.s	$ft6, $a2, 8
	ld.d	$a3, $a2, -16
	fld.s	$ft9, $a2, -8
	movgr2fr.w	$ft7, $a5
	srli.d	$a5, $a5, 32
	movgr2fr.w	$ft8, $a5
.LBB10_10:                              # %_ZNK14btQuantizedBvh10getAabbMinEi.exit90
                                        #   in Loop: Header=BB10_11 Depth=1
	movgr2fr.w	$ft10, $a3
	srli.d	$a3, $a3, 32
	movgr2fr.w	$ft11, $a3
	fadd.s	$ft7, $ft7, $ft10
	fadd.s	$ft8, $ft8, $ft11
	fadd.s	$ft6, $ft6, $ft9
	fmul.s	$ft7, $ft7, $ft5
	fmul.s	$ft8, $ft8, $ft5
	fmul.s	$ft6, $ft6, $ft5
	fsub.s	$ft7, $ft7, $fa2
	fsub.s	$ft8, $ft8, $fa3
	fsub.s	$ft6, $ft6, $fa4
	fmul.s	$ft7, $ft7, $ft7
	fmul.s	$ft8, $ft8, $ft8
	fmul.s	$ft6, $ft6, $ft6
	fadd.s	$fa5, $fa5, $ft7
	fadd.s	$fa7, $fa7, $ft8
	fadd.s	$fa1, $fa1, $ft6
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 16
	beqz	$a0, .LBB10_7
.LBB10_11:                              # =>This Inner Loop Header: Depth=1
	beqz	$a4, .LBB10_9
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=1
	ld.hu	$a3, $a1, 0
	movgr2fr.w	$ft6, $a3
	ld.hu	$a3, $a1, 2
	ffint.s.w	$ft6, $ft6
	fdiv.s	$ft6, $ft6, $fa6
	ld.hu	$a5, $a1, 4
	movgr2fr.w	$ft7, $a3
	ffint.s.w	$ft7, $ft7
	fdiv.s	$ft8, $ft7, $ft0
	movgr2fr.w	$ft7, $a5
	ffint.s.w	$ft7, $ft7
	fdiv.s	$ft9, $ft7, $ft1
	ld.hu	$a3, $a1, -6
	fadd.s	$ft7, $ft6, $ft2
	fadd.s	$ft8, $ft8, $ft3
	fadd.s	$ft6, $ft9, $ft4
	movgr2fr.w	$ft9, $a3
	ld.hu	$a3, $a1, -4
	ffint.s.w	$ft9, $ft9
	fdiv.s	$ft9, $ft9, $fa6
	ld.hu	$a5, $a1, -2
	movgr2fr.w	$ft10, $a3
	ffint.s.w	$ft10, $ft10
	fdiv.s	$ft10, $ft10, $ft0
	movgr2fr.w	$ft11, $a5
	ffint.s.w	$ft11, $ft11
	fdiv.s	$ft11, $ft11, $ft1
	fadd.s	$ft12, $ft9, $ft2
	fadd.s	$ft10, $ft10, $ft3
	fadd.s	$ft9, $ft11, $ft4
	movfr2gr.s	$a3, $ft12
	movfr2gr.s	$a5, $ft10
	bstrins.d	$a3, $a5, 63, 32
	b	.LBB10_10
.Lfunc_end10:
	.size	_ZN14btQuantizedBvh17calcSplittingAxisEii, .Lfunc_end10-_ZN14btQuantizedBvh17calcSplittingAxisEii
                                        # -- End function
	.globl	_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii # -- Begin function _ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii
	.p2align	5
	.type	_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii,@function
_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii: # @_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii
# %bb.0:
	addi.d	$sp, $sp, -128
	sub.d	$a5, $a2, $a1
	addi.w	$a4, $a5, 0
	st.w	$zero, $sp, 44
	bge	$a1, $a2, .LBB11_6
# %bb.1:                                # %.lr.ph
	ld.bu	$a6, $a0, 64
	ld.d	$t0, $a0, 88
	ld.d	$t1, $a0, 152
	fld.s	$fa0, $a0, 40
	fld.s	$fa2, $a0, 44
	fld.s	$fa3, $a0, 48
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $a0, 12
	fld.s	$fa6, $a0, 16
	sub.d	$a7, $a2, $a1
	slli.d	$t2, $a1, 6
	add.d	$t0, $t2, $t0
	addi.d	$t0, $t0, 16
	alsl.d	$t1, $a1, $t1, 4
	addi.d	$t1, $t1, 6
	movgr2fr.w	$fa1, $zero
	vldi	$vr9, -1184
	fmov.s	$ft0, $fa1
	fmov.s	$fa7, $fa1
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_2:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$t3, $t0, 0
	fld.s	$ft2, $t0, 8
	ld.d	$t2, $t0, -16
	fld.s	$ft5, $t0, -8
	movgr2fr.w	$ft3, $t3
	srli.d	$t3, $t3, 32
	movgr2fr.w	$ft4, $t3
.LBB11_3:                               # %_ZNK14btQuantizedBvh10getAabbMinEi.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	movgr2fr.w	$ft6, $t2
	srli.d	$t2, $t2, 32
	movgr2fr.w	$ft7, $t2
	fadd.s	$ft3, $ft3, $ft6
	fadd.s	$ft4, $ft4, $ft7
	fadd.s	$ft2, $ft2, $ft5
	fmul.s	$ft3, $ft3, $ft1
	fmul.s	$ft4, $ft4, $ft1
	fmul.s	$ft2, $ft2, $ft1
	fadd.s	$fa1, $fa1, $ft3
	fadd.s	$ft0, $ft0, $ft4
	fadd.s	$fa7, $fa7, $ft2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 64
	addi.d	$t1, $t1, 16
	beqz	$a7, .LBB11_7
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	beqz	$a6, .LBB11_2
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	ld.hu	$t2, $t1, 0
	movgr2fr.w	$ft2, $t2
	ld.hu	$t2, $t1, 2
	ffint.s.w	$ft2, $ft2
	fdiv.s	$ft2, $ft2, $fa0
	ld.hu	$t3, $t1, 4
	movgr2fr.w	$ft3, $t2
	ffint.s.w	$ft3, $ft3
	fdiv.s	$ft4, $ft3, $fa2
	movgr2fr.w	$ft3, $t3
	ffint.s.w	$ft3, $ft3
	fdiv.s	$ft5, $ft3, $fa3
	ld.hu	$t2, $t1, -6
	fadd.s	$ft3, $ft2, $fa4
	fadd.s	$ft4, $ft4, $fa5
	fadd.s	$ft2, $ft5, $fa6
	movgr2fr.w	$ft5, $t2
	ld.hu	$t2, $t1, -4
	ffint.s.w	$ft5, $ft5
	fdiv.s	$ft5, $ft5, $fa0
	ld.hu	$t3, $t1, -2
	movgr2fr.w	$ft6, $t2
	ffint.s.w	$ft6, $ft6
	fdiv.s	$ft6, $ft6, $fa2
	movgr2fr.w	$ft7, $t3
	ffint.s.w	$ft7, $ft7
	fdiv.s	$ft7, $ft7, $fa3
	fadd.s	$ft8, $ft5, $fa4
	fadd.s	$ft6, $ft6, $fa5
	fadd.s	$ft5, $ft7, $fa6
	movfr2gr.s	$t2, $ft8
	movfr2gr.s	$t3, $ft6
	bstrins.d	$t2, $t3, 63, 32
	b	.LBB11_3
.LBB11_6:
	movgr2fr.w	$fa1, $zero
	fmov.s	$fa7, $fa1
	fmov.s	$ft0, $fa1
.LBB11_7:                               # %._crit_edge
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa0, $fa0
	frecip.s	$fa0, $fa0
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $sp, 32
	fmul.s	$fa1, $fa0, $ft0
	fst.s	$fa1, $sp, 36
	fmul.s	$fa0, $fa0, $fa7
	fst.s	$fa0, $sp, 40
	bge	$a1, $a2, .LBB11_18
# %bb.8:                                # %.lr.ph172
	slli.d	$a6, $a1, 6
	slli.d	$a7, $a3, 2
	addi.d	$t0, $sp, 32
	fldx.s	$fa0, $a7, $t0
	addi.d	$a7, $sp, 16
	alsl.d	$a7, $a3, $a7, 2
	slli.d	$a3, $a1, 4
	addi.d	$t0, $a3, 10
	vldi	$vr1, -1184
	move	$a3, $a1
	b	.LBB11_12
	.p2align	4, , 16
.LBB11_9:                               #   in Loop: Header=BB11_12 Depth=1
	ld.d	$t1, $a0, 88
	slli.d	$t2, $a3, 6
	vldx	$vr2, $t1, $t2
	vldx	$vr3, $t1, $a6
	add.d	$t3, $t1, $t2
	vstx	$vr2, $t1, $a6
	vld	$vr2, $t3, 16
	add.d	$t1, $t1, $a6
	vld	$vr4, $t1, 16
	vst	$vr2, $t1, 16
	vld	$vr2, $t3, 32
	vld	$vr5, $t1, 32
	vst	$vr2, $t1, 32
	vld	$vr2, $t3, 48
	vst	$vr3, $sp, 48
	vld	$vr3, $t1, 48
	vst	$vr2, $t1, 48
	ld.d	$t1, $a0, 88
	vld	$vr2, $sp, 48
	vst	$vr4, $sp, 64
	vst	$vr5, $sp, 80
	vst	$vr3, $sp, 96
	vstx	$vr2, $t1, $t2
	vld	$vr2, $sp, 64
	vld	$vr3, $sp, 80
	vld	$vr4, $sp, 96
	add.d	$t1, $t1, $t2
	vst	$vr2, $t1, 16
	vst	$vr3, $t1, 32
	vst	$vr4, $t1, 48
.LBB11_10:                              # %_ZN14btQuantizedBvh13swapLeafNodesEii.exit
                                        #   in Loop: Header=BB11_12 Depth=1
	addi.w	$a3, $a3, 1
.LBB11_11:                              #   in Loop: Header=BB11_12 Depth=1
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, -1
	addi.d	$t0, $t0, 16
	beqz	$a5, .LBB11_19
.LBB11_12:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$t1, $a0, 64
	beqz	$t1, .LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=1
	ld.d	$t2, $a0, 152
	add.d	$t3, $t2, $t0
	ld.hu	$t4, $t3, -4
	fld.s	$fa5, $a0, 40
	ld.hu	$t5, $t3, -2
	movgr2fr.w	$fa2, $t4
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $fa5
	movgr2fr.w	$fa3, $t5
	fld.s	$fa6, $a0, 44
	ldx.hu	$t2, $t2, $t0
	ffint.s.w	$fa3, $fa3
	fld.s	$fa7, $a0, 48
	fdiv.s	$fa4, $fa3, $fa6
	movgr2fr.w	$fa3, $t2
	ffint.s.w	$fa3, $fa3
	fdiv.s	$ft0, $fa3, $fa7
	fld.s	$ft1, $a0, 8
	fld.s	$ft2, $a0, 12
	fld.s	$ft3, $a0, 16
	ld.hu	$t2, $t3, -10
	fadd.s	$fa3, $fa2, $ft1
	fadd.s	$fa4, $fa4, $ft2
	fadd.s	$fa2, $ft0, $ft3
	movgr2fr.w	$ft0, $t2
	ld.hu	$t2, $t3, -8
	ffint.s.w	$ft0, $ft0
	fdiv.s	$fa5, $ft0, $fa5
	ld.hu	$t3, $t3, -6
	movgr2fr.w	$ft0, $t2
	ffint.s.w	$ft0, $ft0
	fdiv.s	$fa6, $ft0, $fa6
	movgr2fr.w	$ft0, $t3
	ffint.s.w	$ft0, $ft0
	fdiv.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa5, $ft1
	fadd.s	$fa6, $fa6, $ft2
	fadd.s	$fa5, $fa7, $ft3
	movfr2gr.s	$t2, $ft0
	movfr2gr.s	$t3, $fa6
	bstrins.d	$t2, $t3, 63, 32
	b	.LBB11_15
	.p2align	4, , 16
.LBB11_14:                              #   in Loop: Header=BB11_12 Depth=1
	ld.d	$t2, $a0, 88
	add.d	$t3, $t2, $a6
	ld.d	$t4, $t3, 16
	fld.s	$fa2, $t3, 24
	ldx.d	$t2, $t2, $a6
	fld.s	$fa5, $t3, 8
	movgr2fr.w	$fa3, $t4
	srli.d	$t3, $t4, 32
	movgr2fr.w	$fa4, $t3
.LBB11_15:                              # %_ZNK14btQuantizedBvh10getAabbMinEi.exit107
                                        #   in Loop: Header=BB11_12 Depth=1
	movgr2fr.w	$fa6, $t2
	srli.d	$t2, $t2, 32
	movgr2fr.w	$fa7, $t2
	fadd.s	$fa3, $fa3, $fa6
	fadd.s	$fa4, $fa4, $fa7
	fadd.s	$fa2, $fa2, $fa5
	fmul.s	$fa3, $fa3, $fa1
	fmul.s	$fa4, $fa4, $fa1
	fmul.s	$fa2, $fa2, $fa1
	movfr2gr.s	$t2, $fa3
	movfr2gr.s	$t3, $fa4
	bstrins.d	$t2, $t3, 63, 32
	movfr2gr.s	$t3, $fa2
	bstrpick.d	$t3, $t3, 31, 0
	st.d	$t2, $sp, 16
	st.d	$t3, $sp, 24
	fld.s	$fa2, $a7, 0
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB11_11
# %bb.16:                               #   in Loop: Header=BB11_12 Depth=1
	beqz	$t1, .LBB11_9
# %bb.17:                               #   in Loop: Header=BB11_12 Depth=1
	ld.d	$t1, $a0, 152
	slli.d	$t2, $a3, 4
	vldx	$vr2, $t1, $t2
	add.d	$t1, $t1, $t0
	vld	$vr3, $t1, -10
	vst	$vr2, $t1, -10
	ld.d	$t1, $a0, 152
	vstx	$vr3, $t1, $t2
	b	.LBB11_10
.LBB11_18:
	move	$a3, $a1
.LBB11_19:                              # %._crit_edge173
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	mul.d	$a0, $a4, $a0
	srli.d	$a5, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a5
	add.w	$a5, $a0, $a1
	slt	$a5, $a5, $a3
	xori	$a5, $a5, 1
	nor	$a0, $a0, $zero
	add.w	$a0, $a2, $a0
	slt	$a0, $a3, $a0
	xori	$a0, $a0, 1
	srli.d	$a2, $a4, 1
	add.w	$a1, $a2, $a1
	masknez	$a2, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a5
	maskeqz	$a1, $a1, $a5
	or	$a0, $a1, $a0
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end11:
	.size	_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii, .Lfunc_end11-_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii
                                        # -- End function
	.section	.text._ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_,"axG",@progbits,_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_,comdat
	.weak	_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_ # -- Begin function _ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_
	.p2align	5
	.type	_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_,@function
_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_: # @_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a0, 64
	beqz	$a4, .LBB12_10
# %bb.1:
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a0, 12
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa4, $a2, 8
	fld.s	$fa5, $a0, 16
	fld.s	$fa6, $a0, 40
	fld.s	$fa7, $a0, 44
	fld.s	$ft0, $a0, 48
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$ft1, $fa0, $fa6
	fmul.s	$fa2, $fa2, $fa7
	fmul.s	$fa0, $fa4, $ft0
	ftintrz.l.s	$fa4, $ft1
	movfr2gr.d	$a5, $fa4
	fld.s	$fa4, $a3, 0
	lu12i.w	$a2, 15
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a4, $fa2
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa2, $a3, 4
	fld.s	$fa4, $a3, 8
	ori	$a2, $a2, 4094
	and	$a3, $a5, $a2
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa4, $fa5
	fmul.s	$fa4, $fa6, $fa1
	fmul.s	$fa5, $fa7, $fa2
	fmul.s	$fa1, $ft0, $fa3
	vldi	$vr2, -1168
	fadd.s	$fa3, $fa4, $fa2
	ld.d	$a0, $a0, 184
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a5, $fa3
	slli.d	$a6, $a1, 4
	ldx.hu	$a6, $a0, $a6
	ori	$a5, $a5, 1
	fadd.s	$fa3, $fa5, $fa2
	ftintrz.l.s	$fa3, $fa3
	alsl.d	$a0, $a1, $a0, 4
	bgeu	$a3, $a6, .LBB12_3
# %bb.2:
	st.h	$a3, $a0, 0
.LBB12_3:
	ld.hu	$a6, $a0, 6
	fadd.s	$fa1, $fa1, $fa2
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa3
	and	$a1, $a4, $a2
	bgeu	$a6, $a5, .LBB12_5
# %bb.4:
	st.h	$a5, $a0, 6
.LBB12_5:
	ld.hu	$a5, $a0, 2
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a4, $fa0
	ori	$a3, $a3, 1
	bltu	$a1, $a5, .LBB12_18
# %bb.6:
	ld.hu	$a6, $a0, 8
	movfr2gr.d	$a5, $fa1
	and	$a1, $a4, $a2
	bltu	$a6, $a3, .LBB12_19
.LBB12_7:
	ld.hu	$a3, $a0, 4
	ori	$a2, $a5, 1
	bltu	$a1, $a3, .LBB12_20
.LBB12_8:
	ld.hu	$a1, $a0, 10
	bltu	$a1, $a2, .LBB12_21
.LBB12_9:                               # %_ZN9btVector36setMaxERKS_.exit
	ret
.LBB12_10:
	ld.d	$a0, $a0, 120
	slli.d	$a1, $a1, 6
	fld.s	$fa0, $a2, 0
	fldx.s	$fa1, $a0, $a1
	fcmp.cule.s	$fcc0, $fa1, $fa0
	add.d	$a0, $a0, $a1
	bceqz	$fcc0, .LBB12_22
# %bb.11:                               # %_Z8btSetMinIfEvRT_RKS0_.exit.i
	fld.s	$fa0, $a2, 4
	fld.s	$fa1, $a0, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB12_23
.LBB12_12:                              # %_Z8btSetMinIfEvRT_RKS0_.exit5.i
	fld.s	$fa0, $a2, 8
	fld.s	$fa1, $a0, 8
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB12_24
.LBB12_13:                              # %_Z8btSetMinIfEvRT_RKS0_.exit6.i
	fld.s	$fa0, $a2, 12
	fld.s	$fa1, $a0, 12
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB12_25
.LBB12_14:                              # %_ZN9btVector36setMinERKS_.exit
	fld.s	$fa1, $a0, 16
	fld.s	$fa0, $a3, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB12_26
.LBB12_15:                              # %_Z8btSetMaxIfEvRT_RKS0_.exit.i
	fld.s	$fa1, $a0, 20
	fld.s	$fa0, $a3, 4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB12_27
.LBB12_16:                              # %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
	fld.s	$fa1, $a0, 24
	fld.s	$fa0, $a3, 8
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB12_28
.LBB12_17:                              # %_Z8btSetMaxIfEvRT_RKS0_.exit6.i
	fld.s	$fa1, $a0, 28
	fld.s	$fa0, $a3, 12
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_9
	b	.LBB12_29
.LBB12_18:
	st.h	$a1, $a0, 2
	ld.hu	$a6, $a0, 8
	movfr2gr.d	$a5, $fa1
	and	$a1, $a4, $a2
	bgeu	$a6, $a3, .LBB12_7
.LBB12_19:
	st.h	$a3, $a0, 8
	ld.hu	$a3, $a0, 4
	ori	$a2, $a5, 1
	bgeu	$a1, $a3, .LBB12_8
.LBB12_20:
	st.h	$a1, $a0, 4
	ld.hu	$a1, $a0, 10
	bgeu	$a1, $a2, .LBB12_9
.LBB12_21:
	st.h	$a2, $a0, 10
	ret
.LBB12_22:
	fst.s	$fa0, $a0, 0
	fld.s	$fa0, $a2, 4
	fld.s	$fa1, $a0, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_12
.LBB12_23:
	fst.s	$fa0, $a0, 4
	fld.s	$fa0, $a2, 8
	fld.s	$fa1, $a0, 8
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_13
.LBB12_24:
	fst.s	$fa0, $a0, 8
	fld.s	$fa0, $a2, 12
	fld.s	$fa1, $a0, 12
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_14
.LBB12_25:
	fst.s	$fa0, $a0, 12
	fld.s	$fa1, $a0, 16
	fld.s	$fa0, $a3, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_15
.LBB12_26:
	fst.s	$fa0, $a0, 16
	fld.s	$fa1, $a0, 20
	fld.s	$fa0, $a3, 4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_16
.LBB12_27:
	fst.s	$fa0, $a0, 20
	fld.s	$fa1, $a0, 24
	fld.s	$fa0, $a3, 8
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_17
.LBB12_28:
	fst.s	$fa0, $a0, 24
	fld.s	$fa1, $a0, 28
	fld.s	$fa0, $a3, 12
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_9
.LBB12_29:
	fst.s	$fa0, $a0, 28
	ret
.Lfunc_end12:
	.size	_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_, .Lfunc_end12-_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN14btQuantizedBvh20updateSubtreeHeadersEii # -- Begin function _ZN14btQuantizedBvh20updateSubtreeHeadersEii
	.p2align	5
	.type	_ZN14btQuantizedBvh20updateSubtreeHeadersEii,@function
_ZN14btQuantizedBvh20updateSubtreeHeadersEii: # @_ZN14btQuantizedBvh20updateSubtreeHeadersEii
	.cfi_startproc
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
	ld.d	$a0, $a0, 184
	alsl.d	$s3, $a1, $a0, 4
	ld.w	$a3, $s3, 12
	addi.w	$a4, $zero, -1
	slt	$a5, $a4, $a3
	sub.w	$a3, $zero, $a3
	masknez	$a3, $a3, $a5
	alsl.d	$s1, $a2, $a0, 4
	ld.w	$a0, $s1, 12
	ori	$a6, $zero, 1
	maskeqz	$a5, $a6, $a5
	or	$s4, $a5, $a3
	slt	$a3, $a4, $a0
	sub.w	$a0, $zero, $a0
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a6, $a3
	ori	$s5, $zero, 128
	or	$s2, $a3, $a0
	bltu	$s5, $s4, .LBB13_14
# %bb.1:
	ld.w	$s6, $fp, 212
	ld.w	$a0, $fp, 216
	bne	$s6, $a0, .LBB13_5
# %bb.2:
	sltui	$a0, $s6, 1
	slli.w	$a3, $s6, 1
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1
	maskeqz	$a0, $a4, $a0
	or	$s7, $a0, $a3
	bge	$s6, $s7, .LBB13_5
# %bb.3:
	beqz	$s7, .LBB13_6
# %bb.4:
	slli.d	$a0, $s7, 5
	move	$s0, $a1
	ori	$a1, $zero, 16
	move	$s8, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $s8
	ld.w	$a3, $fp, 212
	move	$s0, $a0
	bgtz	$a3, .LBB13_7
	b	.LBB13_9
.LBB13_5:
	move	$a0, $s6
	b	.LBB13_13
.LBB13_6:
	move	$s0, $zero
	move	$a3, $s6
	blez	$a3, .LBB13_9
.LBB13_7:                               # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a3, $a3, 5
	.p2align	4, , 16
.LBB13_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $fp, 224
	vldx	$vr0, $a4, $a0
	add.d	$a4, $a4, $a0
	vstx	$vr0, $s0, $a0
	vld	$vr0, $a4, 16
	add.d	$a4, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a4, 16
	bne	$a3, $a0, .LBB13_8
.LBB13_9:                               # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 224
	beqz	$a0, .LBB13_12
# %bb.10:                               # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
	ld.b	$a3, $fp, 232
	andi	$a3, $a3, 1
	beqz	$a3, .LBB13_12
# %bb.11:
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a1, $s8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB13_12:                              # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i
	ori	$a3, $zero, 1
	ld.w	$a0, $fp, 212
	st.b	$a3, $fp, 232
	st.d	$s0, $fp, 224
	st.w	$s7, $fp, 216
.LBB13_13:                              # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit
	ld.d	$a3, $fp, 224
	ld.h	$a4, $s3, 0
	slli.d	$a5, $s6, 5
	stx.h	$a4, $a3, $a5
	ld.h	$a4, $s3, 2
	add.d	$a3, $a3, $a5
	st.h	$a4, $a3, 2
	ld.h	$a4, $s3, 4
	st.h	$a4, $a3, 4
	ld.h	$a4, $s3, 6
	st.h	$a4, $a3, 6
	ld.h	$a4, $s3, 8
	st.h	$a4, $a3, 8
	ld.h	$a4, $s3, 10
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 212
	st.h	$a4, $a3, 10
	st.w	$a1, $a3, 12
	st.w	$s4, $a3, 16
.LBB13_14:
	ld.w	$s3, $fp, 212
	bltu	$s5, $s2, .LBB13_27
# %bb.15:
	ld.w	$a1, $fp, 216
	move	$a0, $s3
	bne	$s3, $a1, .LBB13_26
# %bb.16:
	sltui	$a0, $s3, 1
	slli.w	$a1, $s3, 1
	masknez	$a1, $a1, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s4, $a0, $a1
	move	$a0, $s3
	bge	$s3, $s4, .LBB13_26
# %bb.17:
	move	$s5, $a2
	beqz	$s4, .LBB13_19
# %bb.18:
	slli.d	$a0, $s4, 5
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 212
	move	$s0, $a0
	bgtz	$a1, .LBB13_20
	b	.LBB13_22
.LBB13_19:
	move	$s0, $zero
	move	$a1, $s3
	blez	$a1, .LBB13_22
.LBB13_20:                              # %.lr.ph.i.i.i32
	move	$a0, $zero
	slli.d	$a1, $a1, 5
	.p2align	4, , 16
.LBB13_21:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 224
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s0, $a0
	vld	$vr0, $a2, 16
	add.d	$a2, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a1, $a0, .LBB13_21
.LBB13_22:                              # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27
	ld.d	$a0, $fp, 224
	beqz	$a0, .LBB13_25
# %bb.23:                               # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27
	ld.b	$a1, $fp, 232
	andi	$a1, $a1, 1
	beqz	$a1, .LBB13_25
# %bb.24:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB13_25:                              # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i30
	ori	$a1, $zero, 1
	ld.w	$a0, $fp, 212
	st.b	$a1, $fp, 232
	st.d	$s0, $fp, 224
	st.w	$s4, $fp, 216
	move	$a2, $s5
.LBB13_26:                              # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit37
	ld.d	$a1, $fp, 224
	ld.h	$a3, $s1, 0
	slli.d	$a4, $s3, 5
	stx.h	$a3, $a1, $a4
	ld.h	$a3, $s1, 2
	add.d	$a1, $a1, $a4
	st.h	$a3, $a1, 2
	ld.h	$a3, $s1, 4
	st.h	$a3, $a1, 4
	ld.h	$a3, $s1, 6
	st.h	$a3, $a1, 6
	ld.h	$a3, $s1, 8
	st.h	$a3, $a1, 8
	ld.h	$a3, $s1, 10
	addi.d	$s3, $a0, 1
	st.w	$s3, $fp, 212
	st.h	$a3, $a1, 10
	st.w	$a2, $a1, 12
	st.w	$s2, $a1, 16
.LBB13_27:                              # %._crit_edge
	st.w	$s3, $fp, 240
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
.Lfunc_end13:
	.size	_ZN14btQuantizedBvh20updateSubtreeHeadersEii, .Lfunc_end13-_ZN14btQuantizedBvh20updateSubtreeHeadersEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btQuantizedBvh13swapLeafNodesEii # -- Begin function _ZN14btQuantizedBvh13swapLeafNodesEii
	.p2align	5
	.type	_ZN14btQuantizedBvh13swapLeafNodesEii,@function
_ZN14btQuantizedBvh13swapLeafNodesEii:  # @_ZN14btQuantizedBvh13swapLeafNodesEii
# %bb.0:
	ld.bu	$a3, $a0, 64
	beqz	$a3, .LBB14_2
# %bb.1:
	ld.d	$a3, $a0, 152
	slli.d	$a2, $a2, 4
	vldx	$vr0, $a3, $a2
	slli.d	$a1, $a1, 4
	vldx	$vr1, $a3, $a1
	vstx	$vr0, $a3, $a1
	ld.d	$a0, $a0, 152
	vstx	$vr1, $a0, $a2
	ret
.LBB14_2:
	addi.d	$sp, $sp, -96
	ld.d	$a3, $a0, 88
	slli.d	$a2, $a2, 6
	vldx	$vr0, $a3, $a2
	slli.d	$a1, $a1, 6
	vldx	$vr1, $a3, $a1
	add.d	$a4, $a3, $a2
	vstx	$vr0, $a3, $a1
	vld	$vr0, $a4, 16
	add.d	$a1, $a3, $a1
	vld	$vr2, $a1, 16
	vst	$vr0, $a1, 16
	vld	$vr0, $a4, 32
	vld	$vr3, $a1, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $a4, 48
	vst	$vr1, $sp, 16
	vld	$vr1, $a1, 48
	vst	$vr0, $a1, 48
	ld.d	$a0, $a0, 88
	vld	$vr0, $sp, 16
	vst	$vr2, $sp, 32
	vst	$vr3, $sp, 48
	vst	$vr1, $sp, 64
	vstx	$vr0, $a0, $a2
	vld	$vr0, $sp, 32
	vld	$vr1, $sp, 48
	vld	$vr2, $sp, 64
	add.d	$a0, $a0, $a2
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 32
	vst	$vr2, $a0, 48
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end14:
	.size	_ZN14btQuantizedBvh13swapLeafNodesEii, .Lfunc_end14-_ZN14btQuantizedBvh13swapLeafNodesEii
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_ # -- Begin function _ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_,@function
_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_: # @_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_
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
	ld.bu	$a0, $a0, 64
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	beqz	$a0, .LBB15_13
# %bb.1:
	fld.s	$fa2, $s2, 0
	fld.s	$fa0, $s0, 8
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 8
	fld.s	$fa1, $s0, 12
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa2, $fa0, $fcc0
	fld.s	$fa5, $s0, 16
	fcmp.clt.s	$fcc0, $fa3, $fa1
	fsel	$fa3, $fa3, $fa1, $fcc0
	fld.s	$fa6, $s0, 24
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fld.s	$fa7, $s0, 28
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fld.s	$ft0, $s0, 32
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa4
	fsel	$fa4, $fa4, $ft0, $fcc0
	fsub.s	$fa2, $fa2, $fa0
	fsub.s	$fa3, $fa3, $fa1
	fld.s	$ft1, $s0, 40
	fld.s	$ft2, $s0, 44
	fld.s	$ft3, $s0, 48
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa2, $fa2, $ft1
	fmul.s	$fa3, $fa3, $ft2
	fmul.s	$fa4, $fa4, $ft3
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a0, $fa2
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4094
	and	$s2, $a0, $a1
	ftintrz.l.s	$fa2, $fa3
	movfr2gr.d	$a0, $fa2
	and	$s3, $a0, $a1
	ftintrz.l.s	$fa2, $fa4
	movfr2gr.d	$a0, $fa2
	and	$s4, $a0, $a1
	st.h	$s2, $sp, 34
	st.h	$s3, $sp, 36
	fld.s	$fa2, $s1, 0
	st.h	$s4, $sp, 38
	fld.s	$fa3, $s1, 4
	fld.s	$fa4, $s1, 8
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa2, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa1
	fsel	$fa3, $fa3, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa4
	fsel	$fa4, $fa4, $ft0, $fcc0
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa1, $fa3, $fa1
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa0, $ft1, $fa0
	fmul.s	$fa1, $ft2, $fa1
	fmul.s	$fa2, $ft3, $fa2
	vldi	$vr3, -1168
	fadd.s	$fa0, $fa0, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$s1, $a0, 1
	fadd.s	$fa0, $fa1, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$s5, $a0, 1
	fadd.s	$fa0, $fa2, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$s6, $a0, 1
	ld.w	$a0, $s0, 200
	st.h	$s1, $sp, 28
	st.h	$s5, $sp, 30
	ori	$a1, $zero, 2
	st.h	$s6, $sp, 32
	beq	$a0, $a1, .LBB15_34
# %bb.2:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB15_33
# %bb.3:
	bnez	$a0, .LBB15_37
# %bb.4:
	ld.w	$s7, $s0, 60
	blez	$s7, .LBB15_35
# %bb.5:                                # %.lr.ph.i
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s8, $s0, 184
	move	$fp, $zero
	move	$s0, $zero
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_6:                               #   in Loop: Header=BB15_7 Depth=1
	sub.w	$a1, $zero, $a4
	alsl.d	$s8, $a1, $s8, 4
	sub.w	$fp, $fp, $a4
	addi.w	$s0, $s0, 1
	bge	$fp, $s7, .LBB15_12
.LBB15_7:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s8, 6
	ld.hu	$a1, $s8, 0
	sltu	$a0, $a0, $s2
	ld.hu	$a2, $s8, 10
	xori	$a0, $a0, 1
	sltu	$a1, $s1, $a1
	xori	$a1, $a1, 1
	sltu	$a2, $a2, $s4
	xori	$a2, $a2, 1
	ld.hu	$a3, $s8, 4
	and	$a0, $a0, $a2
	and	$a0, $a0, $a1
	ld.hu	$a1, $s8, 8
	sltu	$a2, $s6, $a3
	xori	$a2, $a2, 1
	and	$a2, $a0, $a2
	sltu	$a0, $a1, $s3
	ld.hu	$a1, $s8, 2
	xori	$a3, $a0, 1
	ld.w	$a4, $s8, 12
	and	$a2, $a2, $a3
	sltu	$a1, $s5, $a1
	xori	$a1, $a1, 1
	and	$a1, $a2, $a1
	bltz	$a4, .LBB15_10
# %bb.8:                                #   in Loop: Header=BB15_7 Depth=1
	beqz	$a1, .LBB15_10
# %bb.9:                                # %.thread.i
                                        #   in Loop: Header=BB15_7 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 16
	bstrpick.d	$a1, $a4, 31, 21
	bstrpick.d	$a2, $a4, 20, 0
	jirl	$ra, $a3, 0
	b	.LBB15_11
	.p2align	4, , 16
.LBB15_10:                              #   in Loop: Header=BB15_7 Depth=1
	slti	$a2, $a4, 0
	andn	$a1, $a2, $a1
	bnez	$a1, .LBB15_6
.LBB15_11:                              #   in Loop: Header=BB15_7 Depth=1
	addi.d	$s8, $s8, 16
	addi.w	$fp, $fp, 1
	addi.w	$s0, $s0, 1
	blt	$fp, $s7, .LBB15_7
.LBB15_12:                              # %._crit_edge.i
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	blt	$a1, $s0, .LBB15_36
	b	.LBB15_37
.LBB15_13:
	ld.w	$a0, $s0, 60
	blez	$a0, .LBB15_30
# %bb.14:                               # %.lr.ph.i22
	ld.d	$s4, $s0, 120
	move	$s5, $zero
	move	$s3, $zero
	b	.LBB15_17
.LBB15_15:                              # %.thread.i26
                                        #   in Loop: Header=BB15_17 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a1, $s4, 36
	ld.w	$a2, $s4, 40
	ld.d	$a3, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 60
.LBB15_16:                              #   in Loop: Header=BB15_17 Depth=1
	addi.d	$s4, $s4, 64
	addi.w	$s5, $s5, 1
	addi.w	$s3, $s3, 1
	bge	$s5, $a0, .LBB15_31
.LBB15_17:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s4, 16
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_19
# %bb.18:                               #   in Loop: Header=BB15_17 Depth=1
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s4, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB15_20
.LBB15_19:                              #   in Loop: Header=BB15_17 Depth=1
	move	$a1, $zero
	fld.s	$fa0, $s2, 8
	fld.s	$fa1, $s4, 24
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB15_21
	b	.LBB15_22
	.p2align	4, , 16
.LBB15_20:                              #   in Loop: Header=BB15_17 Depth=1
	ori	$a1, $zero, 1
	fld.s	$fa0, $s2, 8
	fld.s	$fa1, $s4, 24
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_22
.LBB15_21:                              #   in Loop: Header=BB15_17 Depth=1
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s4, 8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB15_23
.LBB15_22:                              #   in Loop: Header=BB15_17 Depth=1
	move	$a1, $zero
.LBB15_23:                              #   in Loop: Header=BB15_17 Depth=1
	fld.s	$fa0, $s2, 4
	fld.s	$fa1, $s4, 20
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_25
# %bb.24:                               #   in Loop: Header=BB15_17 Depth=1
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s4, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_29
.LBB15_25:                              # %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i
                                        #   in Loop: Header=BB15_17 Depth=1
	ld.w	$a2, $s4, 32
	move	$a1, $zero
	addi.d	$a3, $a2, 1
	sltui	$a3, $a3, 1
.LBB15_26:                              #   in Loop: Header=BB15_17 Depth=1
	bnez	$a3, .LBB15_16
# %bb.27:                               #   in Loop: Header=BB15_17 Depth=1
	bnez	$a1, .LBB15_16
# %bb.28:                               #   in Loop: Header=BB15_17 Depth=1
	slli.d	$a1, $a2, 6
	add.d	$s4, $s4, $a1
	add.w	$s5, $a2, $s5
	addi.w	$s3, $s3, 1
	blt	$s5, $a0, .LBB15_17
	b	.LBB15_31
	.p2align	4, , 16
.LBB15_29:                              # %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i
                                        #   in Loop: Header=BB15_17 Depth=1
	ld.w	$a2, $s4, 32
	addi.d	$a3, $a2, 1
	sltui	$a3, $a3, 1
	and	$a4, $a1, $a3
	beqz	$a4, .LBB15_26
	b	.LBB15_15
.LBB15_30:
	move	$s3, $zero
.LBB15_31:                              # %._crit_edge.i21
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	bge	$a1, $s3, .LBB15_37
# %bb.32:
	st.w	$s3, $a0, %pc_lo12(maxIterations)
	b	.LBB15_37
.LBB15_33:
	addi.d	$a2, $sp, 34
	addi.d	$a3, $sp, 28
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_)
	jirl	$ra, $ra, 0
	b	.LBB15_37
.LBB15_34:
	ld.d	$a1, $s0, 184
	addi.d	$a3, $sp, 34
	addi.d	$a4, $sp, 28
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_)
	jirl	$ra, $ra, 0
	b	.LBB15_37
.LBB15_35:
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	bge	$a1, $s0, .LBB15_37
.LBB15_36:
	st.w	$s0, $a0, %pc_lo12(maxIterations)
.LBB15_37:                              # %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit
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
.Lfunc_end15:
	.size	_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_, .Lfunc_end15-_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii # -- Begin function _ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii
	.p2align	5
	.type	_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii,@function
_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii: # @_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	bge	$a4, $a5, .LBB16_11
# %bb.1:                                # %.lr.ph
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	ld.d	$a0, $a0, 184
	move	$s4, $zero
	alsl.d	$s5, $a4, $a0, 4
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	sub.w	$a1, $zero, $a0
	alsl.d	$s5, $a1, $s5, 4
	sub.w	$s0, $s0, $a0
	addi.w	$s4, $s4, 1
	bge	$s0, $fp, .LBB16_8
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s2, 0
	ld.hu	$a1, $s5, 6
	sltu	$a0, $a1, $a0
	ld.hu	$a1, $s1, 0
	ld.hu	$a2, $s5, 0
	ld.hu	$a3, $s2, 4
	ld.hu	$a4, $s5, 10
	xori	$a0, $a0, 1
	sltu	$a1, $a1, $a2
	xori	$a1, $a1, 1
	sltu	$a2, $a4, $a3
	xori	$a2, $a2, 1
	and	$a0, $a0, $a2
	ld.hu	$a2, $s1, 4
	ld.hu	$a3, $s5, 4
	and	$a0, $a0, $a1
	ld.hu	$a1, $s2, 2
	ld.hu	$a4, $s5, 8
	sltu	$a2, $a2, $a3
	xori	$a2, $a2, 1
	and	$a2, $a0, $a2
	sltu	$a0, $a4, $a1
	ld.hu	$a1, $s1, 2
	ld.hu	$a3, $s5, 2
	xori	$a4, $a0, 1
	ld.w	$a0, $s5, 12
	and	$a2, $a2, $a4
	sltu	$a1, $a1, $a3
	xori	$a1, $a1, 1
	and	$a1, $a2, $a1
	bltz	$a0, .LBB16_6
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	beqz	$a1, .LBB16_6
# %bb.5:                                # %.thread
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a3, $a1, 16
	bstrpick.d	$a1, $a0, 31, 21
	bstrpick.d	$a2, $a0, 20, 0
	move	$a0, $s3
	jirl	$ra, $a3, 0
	b	.LBB16_7
	.p2align	4, , 16
.LBB16_6:                               #   in Loop: Header=BB16_3 Depth=1
	slti	$a2, $a0, 0
	andn	$a1, $a2, $a1
	bnez	$a1, .LBB16_2
.LBB16_7:                               #   in Loop: Header=BB16_3 Depth=1
	addi.d	$s5, $s5, 16
	addi.w	$s0, $s0, 1
	addi.w	$s4, $s4, 1
	blt	$s0, $fp, .LBB16_3
.LBB16_8:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	bge	$a1, $s4, .LBB16_10
.LBB16_9:
	st.w	$s4, $a0, %pc_lo12(maxIterations)
.LBB16_10:
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
.LBB16_11:
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	blt	$a1, $s4, .LBB16_9
	b	.LBB16_10
.Lfunc_end16:
	.size	_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii, .Lfunc_end16-_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_ # -- Begin function _ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_
	.p2align	5
	.type	_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_,@function
_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_: # @_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_
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
	move	$fp, $a0
	ld.w	$a0, $a0, 212
	blez	$a0, .LBB17_20
# %bb.1:                                # %.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $zero
	pcalau12i	$s4, %pc_hi20(maxIterations)
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a0, $fp, 212
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB17_20
.LBB17_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_12 Depth 2
	ld.d	$a1, $fp, 224
	slli.d	$a2, $s3, 5
	add.d	$a0, $a1, $a2
	ld.hu	$a3, $s1, 0
	ld.hu	$a4, $a0, 6
	bltu	$a4, $a3, .LBB17_2
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	ld.hu	$a3, $s0, 0
	ldx.hu	$a1, $a1, $a2
	bltu	$a3, $a1, .LBB17_2
# %bb.5:                                #   in Loop: Header=BB17_3 Depth=1
	ld.hu	$a1, $s1, 4
	ld.hu	$a2, $a0, 10
	bltu	$a2, $a1, .LBB17_2
# %bb.6:                                #   in Loop: Header=BB17_3 Depth=1
	ld.hu	$a1, $s0, 4
	ld.hu	$a2, $a0, 4
	bltu	$a1, $a2, .LBB17_2
# %bb.7:                                #   in Loop: Header=BB17_3 Depth=1
	ld.hu	$a1, $s1, 2
	ld.hu	$a2, $a0, 8
	bltu	$a2, $a1, .LBB17_2
# %bb.8:                                #   in Loop: Header=BB17_3 Depth=1
	ld.hu	$a1, $s0, 2
	ld.hu	$a2, $a0, 2
	bltu	$a1, $a2, .LBB17_2
# %bb.9:                                #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a1, $a0, 16
	blez	$a1, .LBB17_18
# %bb.10:                               # %.lr.ph.i
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.w	$s6, $a0, 12
	ld.d	$a0, $fp, 184
	move	$s5, $zero
	add.w	$s7, $a1, $s6
	alsl.d	$s8, $s6, $a0, 4
	b	.LBB17_12
	.p2align	4, , 16
.LBB17_11:                              #   in Loop: Header=BB17_12 Depth=2
	sub.w	$a1, $zero, $a0
	alsl.d	$s8, $a1, $s8, 4
	sub.w	$s6, $s6, $a0
	addi.w	$s5, $s5, 1
	bge	$s6, $s7, .LBB17_17
.LBB17_12:                              #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $s1, 0
	ld.hu	$a1, $s8, 6
	sltu	$a0, $a1, $a0
	ld.hu	$a1, $s0, 0
	ld.hu	$a2, $s8, 0
	ld.hu	$a3, $s1, 4
	ld.hu	$a4, $s8, 10
	xori	$a0, $a0, 1
	sltu	$a1, $a1, $a2
	xori	$a1, $a1, 1
	sltu	$a2, $a4, $a3
	xori	$a2, $a2, 1
	and	$a0, $a0, $a2
	ld.hu	$a2, $s0, 4
	ld.hu	$a3, $s8, 4
	and	$a0, $a0, $a1
	ld.hu	$a1, $s1, 2
	ld.hu	$a4, $s8, 8
	sltu	$a2, $a2, $a3
	xori	$a2, $a2, 1
	and	$a2, $a0, $a2
	sltu	$a0, $a4, $a1
	ld.hu	$a1, $s0, 2
	ld.hu	$a3, $s8, 2
	xori	$a4, $a0, 1
	ld.w	$a0, $s8, 12
	and	$a2, $a2, $a4
	sltu	$a1, $a1, $a3
	xori	$a1, $a1, 1
	and	$a1, $a2, $a1
	bltz	$a0, .LBB17_15
# %bb.13:                               #   in Loop: Header=BB17_12 Depth=2
	beqz	$a1, .LBB17_15
# %bb.14:                               # %.thread.i
                                        #   in Loop: Header=BB17_12 Depth=2
	ld.d	$a1, $s2, 0
	ld.d	$a3, $a1, 16
	bstrpick.d	$a1, $a0, 31, 21
	bstrpick.d	$a2, $a0, 20, 0
	move	$a0, $s2
	jirl	$ra, $a3, 0
	b	.LBB17_16
	.p2align	4, , 16
.LBB17_15:                              #   in Loop: Header=BB17_12 Depth=2
	slti	$a2, $a0, 0
	andn	$a1, $a2, $a1
	bnez	$a1, .LBB17_11
.LBB17_16:                              #   in Loop: Header=BB17_12 Depth=2
	addi.d	$s8, $s8, 16
	addi.w	$s6, $s6, 1
	addi.w	$s5, $s5, 1
	blt	$s6, $s7, .LBB17_12
.LBB17_17:                              # %._crit_edge.i
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a0, $s4, %pc_lo12(maxIterations)
	bge	$a0, $s5, .LBB17_2
	b	.LBB17_19
.LBB17_18:                              #   in Loop: Header=BB17_3 Depth=1
	move	$s5, $zero
	ld.w	$a0, $s4, %pc_lo12(maxIterations)
	bge	$a0, $s5, .LBB17_2
.LBB17_19:                              #   in Loop: Header=BB17_3 Depth=1
	st.w	$s5, $s4, %pc_lo12(maxIterations)
	b	.LBB17_2
.LBB17_20:                              # %._crit_edge
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
.Lfunc_end17:
	.size	_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_, .Lfunc_end17-_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_ # -- Begin function _ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_
	.p2align	5
	.type	_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_,@function
_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_: # @_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_
	.cfi_startproc
# %bb.0:
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
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s3, $a1
	move	$s2, $a0
	ld.hu	$a0, $s1, 0
	ld.hu	$a1, $s3, 6
	bltu	$a1, $a0, .LBB18_8
	.p2align	4, , 16
.LBB18_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 0
	ld.hu	$a1, $s3, 0
	bltu	$a0, $a1, .LBB18_8
# %bb.2:                                # %tailrecurse
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.hu	$a0, $s1, 4
	ld.hu	$a1, $s3, 10
	bltu	$a1, $a0, .LBB18_8
# %bb.3:                                # %tailrecurse
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.hu	$a0, $s0, 4
	ld.hu	$a1, $s3, 4
	bltu	$a0, $a1, .LBB18_8
# %bb.4:                                # %tailrecurse
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.hu	$a0, $s1, 2
	ld.hu	$a1, $s3, 8
	bltu	$a1, $a0, .LBB18_8
# %bb.5:                                # %tailrecurse
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.hu	$a0, $s0, 2
	ld.hu	$a1, $s3, 2
	bltu	$a0, $a1, .LBB18_8
# %bb.6:                                #   in Loop: Header=BB18_1 Depth=1
	ld.w	$a0, $s3, 12
	bgez	$a0, .LBB18_9
# %bb.7:                                #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s4, $s3, 16
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 28
	addi.d	$a1, $s3, 32
	sub.w	$a2, $zero, $a0
	alsl.d	$a2, $a2, $s4, 4
	slti	$a0, $a0, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s3, $a0, $a1
	ld.hu	$a0, $s1, 0
	ld.hu	$a1, $s3, 6
	bgeu	$a1, $a0, .LBB18_1
.LBB18_8:                               # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB18_9:
	ld.d	$a1, $fp, 0
	ld.d	$a3, $a1, 16
	bstrpick.d	$a1, $a0, 31, 21
	bstrpick.d	$a2, $a0, 20, 0
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	jr	$a3
.Lfunc_end18:
	.size	_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_, .Lfunc_end18-_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_ # -- Begin function _ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_,@function
_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_: # @_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	ld.w	$a0, $a0, 60
	blez	$a0, .LBB19_17
# %bb.1:                                # %.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	ld.d	$s4, $fp, 120
	move	$s5, $zero
	move	$s3, $zero
	b	.LBB19_4
.LBB19_2:                               # %.thread
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s4, 36
	ld.w	$a2, $s4, 40
	ld.d	$a3, $a0, 16
	move	$a0, $s2
	jirl	$ra, $a3, 0
.LBB19_3:                               #   in Loop: Header=BB19_4 Depth=1
	addi.d	$s4, $s4, 64
	addi.w	$s5, $s5, 1
	ld.w	$a0, $fp, 60
	addi.w	$s3, $s3, 1
	bge	$s5, $a0, .LBB19_18
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s4, 16
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_6
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=1
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s4, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB19_7
.LBB19_6:                               #   in Loop: Header=BB19_4 Depth=1
	move	$a0, $zero
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s4, 24
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB19_8
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_7:                               #   in Loop: Header=BB19_4 Depth=1
	ori	$a0, $zero, 1
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s4, 24
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_9
.LBB19_8:                               #   in Loop: Header=BB19_4 Depth=1
	fld.s	$fa0, $s0, 8
	fld.s	$fa1, $s4, 8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB19_10
.LBB19_9:                               #   in Loop: Header=BB19_4 Depth=1
	move	$a0, $zero
.LBB19_10:                              #   in Loop: Header=BB19_4 Depth=1
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s4, 20
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_12
# %bb.11:                               #   in Loop: Header=BB19_4 Depth=1
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s4, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_16
.LBB19_12:                              # %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.w	$a1, $s4, 32
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	sltui	$a1, $a1, 1
.LBB19_13:                              #   in Loop: Header=BB19_4 Depth=1
	bnez	$a1, .LBB19_3
# %bb.14:                               #   in Loop: Header=BB19_4 Depth=1
	bnez	$a0, .LBB19_3
# %bb.15:                               #   in Loop: Header=BB19_4 Depth=1
	ld.w	$a0, $s4, 32
	slli.d	$a1, $a0, 6
	add.d	$s4, $s4, $a1
	add.w	$s5, $a0, $s5
	ld.w	$a0, $fp, 60
	addi.w	$s3, $s3, 1
	blt	$s5, $a0, .LBB19_4
	b	.LBB19_18
	.p2align	4, , 16
.LBB19_16:                              # %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.w	$a1, $s4, 32
	addi.d	$a1, $a1, 1
	sltui	$a1, $a1, 1
	and	$a2, $a0, $a1
	beqz	$a2, .LBB19_13
	b	.LBB19_2
.LBB19_17:
	move	$s3, $zero
.LBB19_18:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	bge	$a1, $s3, .LBB19_20
# %bb.19:
	st.w	$s3, $a0, %pc_lo12(maxIterations)
.LBB19_20:
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
.Lfunc_end19:
	.size	_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_, .Lfunc_end19-_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii # -- Begin function _ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
	.p2align	5
	.type	_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii,@function
_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii: # @_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
	.cfi_startproc
# %bb.0:                                # %_Z8btSetMinIfEvRT_RKS0_.exit.i
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
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 57, -96
	.cfi_offset 58, -104
	.cfi_offset 59, -112
	.cfi_offset 60, -120
	.cfi_offset 61, -128
	.cfi_offset 62, -136
	.cfi_offset 63, -144
	move	$fp, $a0
	ld.w	$a0, $a0, 60
	blez	$a0, .LBB20_23
# %bb.1:                                # %.lr.ph
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $zero
	move	$s5, $zero
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	fld.s	$fa3, $a3, 0
	fld.s	$fa4, $a3, 4
	fld.s	$fa5, $a3, 8
	fld.s	$fa6, $a4, 0
	fld.s	$fa7, $a4, 4
	fld.s	$ft0, $a4, 8
	fld.s	$ft1, $a5, 0
	fld.s	$ft2, $a5, 4
	fld.s	$ft3, $a5, 8
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$ft4, $fa0, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$ft5, $fa1, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa2
	fsel	$ft6, $fa2, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa3
	fsel	$ft7, $fa0, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fsel	$ft8, $fa1, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fa5
	fsel	$ft9, $fa2, $fa5, $fcc0
	fadd.s	$fs5, $ft4, $fa6
	fadd.s	$fs0, $ft5, $fa7
	fadd.s	$fs3, $ft6, $ft0
	fadd.s	$ft4, $ft7, $ft1
	fadd.s	$fs2, $ft8, $ft2
	fadd.s	$ft3, $ft9, $ft3
	fsub.s	$fa0, $fa3, $fa0
	fsub.s	$fa1, $fa4, $fa1
	fsub.s	$fa2, $fa5, $fa2
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa4, $fa0, $fa3
	fmul.s	$fa5, $fa1, $fa3
	fmul.s	$fa3, $fa2, $fa3
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$ft6, $fa3, $fa2, $fa0
	frecip.s	$fa0, $fa4
	movgr2fr.w	$fs7, $zero
	fcmp.ceq.s	$fcc0, $fa4, $fs7
	lu12i.w	$a0, 382432
	ori	$a0, $a0, 2923
	movgr2fr.w	$fa1, $a0
	fsel	$fs6, $fa0, $fa1, $fcc0
	frecip.s	$fa0, $fa5
	fcmp.ceq.s	$fcc0, $fa5, $fs7
	fsel	$fs4, $fa0, $fa1, $fcc0
	frecip.s	$fa0, $fa3
	ld.d	$s6, $fp, 120
	fcmp.ceq.s	$fcc0, $fa3, $fs7
	fsel	$fs1, $fa0, $fa1, $fcc0
	addi.w	$s7, $zero, -1
	fst.s	$ft4, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 24                   # 4-byte Folded Spill
	fst.s	$ft3, $sp, 20                   # 4-byte Folded Spill
	b	.LBB20_4
.LBB20_2:                               # %.thread
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $s3, 0
	ld.w	$a1, $s6, 36
	ld.w	$a2, $s6, 40
	ld.d	$a3, $a0, 16
	move	$a0, $s3
	jirl	$ra, $a3, 0
	fld.s	$ft6, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft3, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 28                   # 4-byte Folded Reload
	.p2align	4, , 16
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=1
	addi.d	$s6, $s6, 64
	addi.w	$s5, $s5, 1
	ld.w	$a0, $fp, 60
	addi.w	$s4, $s4, 1
	bge	$s5, $a0, .LBB20_20
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $s6, 20
	fcmp.clt.s	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB20_16
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	fld.s	$fa0, $s6, 24
	fcmp.clt.s	$fcc0, $fa0, $fs3
	bcnez	$fcc0, .LBB20_16
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=1
	fld.s	$fa1, $s6, 8
	fcmp.clt.s	$fcc0, $ft3, $fa1
	bcnez	$fcc0, .LBB20_16
# %bb.7:                                #   in Loop: Header=BB20_4 Depth=1
	fld.s	$fa5, $s6, 16
	fcmp.clt.s	$fcc0, $fa5, $fs5
	bcnez	$fcc0, .LBB20_16
# %bb.8:                                #   in Loop: Header=BB20_4 Depth=1
	fld.s	$fa3, $s6, 0
	fcmp.clt.s	$fcc0, $ft4, $fa3
	bcnez	$fcc0, .LBB20_16
# %bb.9:                                #   in Loop: Header=BB20_4 Depth=1
	fld.s	$fa6, $s6, 4
	fcmp.clt.s	$fcc0, $fs2, $fa6
	bcnez	$fcc0, .LBB20_16
# %bb.10:                               #   in Loop: Header=BB20_4 Depth=1
	fld.s	$fa4, $s0, 4
	fld.s	$fa7, $s0, 0
	fld.s	$ft0, $s1, 4
	fadd.s	$fa4, $fa4, $fa2
	fld.s	$fa2, $s1, 0
	fadd.s	$fa5, $fa7, $fa5
	fadd.s	$fa6, $ft0, $fa6
	fld.s	$fa7, $s2, 0
	fadd.s	$ft0, $fa2, $fa3
	fcmp.cule.s	$fcc0, $fs7, $fs6
	fsel	$fa2, $fa5, $ft0, $fcc0
	fsub.s	$fa2, $fa2, $fa7
	fld.s	$ft1, $s2, 4
	fmul.s	$fa3, $fs6, $fa2
	fcmp.cule.s	$fcc1, $fs7, $fs4
	fsel	$fa2, $fa6, $fa4, $fcc1
	fsub.s	$fa2, $fa2, $ft1
	fmul.s	$fa2, $fs4, $fa2
	fcmp.clt.s	$fcc2, $fa2, $fa3
	bcnez	$fcc2, .LBB20_16
# %bb.11:                               #   in Loop: Header=BB20_4 Depth=1
	fsel	$fa5, $ft0, $fa5, $fcc0
	fsub.s	$fa5, $fa5, $fa7
	fmul.s	$fa5, $fs6, $fa5
	fsel	$fa4, $fa4, $fa6, $fcc1
	fsub.s	$fa4, $fa4, $ft1
	fmul.s	$fa6, $fs4, $fa4
	fcmp.clt.s	$fcc0, $fa5, $fa6
	bcnez	$fcc0, .LBB20_16
# %bb.12:                               #   in Loop: Header=BB20_4 Depth=1
	fld.s	$fa4, $s1, 8
	fld.s	$fa7, $s0, 8
	fadd.s	$fa1, $fa4, $fa1
	fadd.s	$fa4, $fa7, $fa0
	fcmp.clt.s	$fcc0, $fa3, $fa6
	fld.s	$fa7, $s2, 8
	fsel	$fa0, $fa3, $fa6, $fcc0
	fcmp.cule.s	$fcc0, $fs7, $fs1
	fsel	$fa3, $fa1, $fa4, $fcc0
	fsub.s	$fa3, $fa3, $fa7
	fmul.s	$fa3, $fs1, $fa3
	fcmp.clt.s	$fcc1, $fa3, $fa0
	bcnez	$fcc1, .LBB20_16
# %bb.13:                               #   in Loop: Header=BB20_4 Depth=1
	fcmp.clt.s	$fcc1, $fa2, $fa5
	fsel	$fa2, $fa5, $fa2, $fcc1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fsub.s	$fa1, $fa1, $fa7
	fmul.s	$fa1, $fs1, $fa1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB20_16
# %bb.14:                               # %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa2
	fsel	$fa1, $fa2, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $ft6
	ld.w	$a2, $s6, 32
	fcmp.clt.s	$fcc1, $fs7, $fa1
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	and	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	sltui	$a1, $a1, 1
	beqz	$a0, .LBB20_17
# %bb.15:                               # %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	beq	$a2, $s7, .LBB20_2
	b	.LBB20_17
	.p2align	4, , 16
.LBB20_16:                              # %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a1, $s6, 32
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	sltui	$a1, $a1, 1
.LBB20_17:                              #   in Loop: Header=BB20_4 Depth=1
	bnez	$a1, .LBB20_3
# %bb.18:                               #   in Loop: Header=BB20_4 Depth=1
	bnez	$a0, .LBB20_3
# %bb.19:                               #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a0, $s6, 32
	slli.d	$a1, $a0, 6
	add.d	$s6, $s6, $a1
	add.w	$s5, $a0, $s5
	ld.w	$a0, $fp, 60
	addi.w	$s4, $s4, 1
	blt	$s5, $a0, .LBB20_4
.LBB20_20:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	bge	$a1, $s4, .LBB20_22
.LBB20_21:
	st.w	$s4, $a0, %pc_lo12(maxIterations)
.LBB20_22:
	fld.d	$fs7, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
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
.LBB20_23:
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	blt	$a1, $s4, .LBB20_21
	b	.LBB20_22
.Lfunc_end20:
	.size	_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii, .Lfunc_end20-_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii # -- Begin function _ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
	.p2align	5
	.type	_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii,@function
_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii: # @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
	.cfi_startproc
# %bb.0:                                # %_Z8btSetMinIfEvRT_RKS0_.exit.i
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
	bge	$a6, $a7, .LBB21_19
# %bb.1:                                # %.lr.ph
	move	$s0, $a6
	move	$s8, $a5
	move	$s4, $a4
	move	$s7, $a2
	move	$s2, $a1
	move	$s5, $a0
	fld.s	$fa0, $a3, 0
	fld.s	$fa2, $a2, 0
	fld.s	$fa3, $a3, 4
	fld.s	$fa5, $a2, 4
	fld.s	$fa1, $a3, 8
	fld.s	$fa4, $a2, 8
	move	$s6, $zero
	fsub.s	$fa6, $fa0, $fa2
	fsub.s	$fa7, $fa3, $fa5
	fsub.s	$ft0, $fa1, $fa4
	fmul.s	$ft1, $fa7, $fa7
	fmadd.s	$ft1, $fa6, $fa6, $ft1
	fmadd.s	$ft1, $ft0, $ft0, $ft1
	frsqrt.s	$ft1, $ft1
	fmul.s	$ft2, $fa6, $ft1
	fmul.s	$ft3, $fa7, $ft1
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$fa7, $fa7, $ft3
	fmadd.s	$fa6, $ft2, $fa6, $fa7
	fmadd.s	$fs0, $ft1, $ft0, $fa6
	frecip.s	$fa6, $ft2
	movgr2fr.w	$fs1, $zero
	fcmp.ceq.s	$fcc0, $ft2, $fs1
	lu12i.w	$a0, 382432
	ori	$a0, $a0, 2923
	movgr2fr.w	$fa7, $a0
	fsel	$fs2, $fa6, $fa7, $fcc0
	frecip.s	$fa6, $ft3
	fcmp.ceq.s	$fcc0, $ft3, $fs1
	fsel	$fs3, $fa6, $fa7, $fcc0
	frecip.s	$fa6, $ft1
	fcmp.ceq.s	$fcc0, $ft1, $fs1
	fsel	$fs4, $fa6, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fsel	$fa6, $fa2, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa5
	fsel	$fa7, $fa5, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fsel	$ft0, $fa4, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa2, $fa5, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fld.s	$fa3, $a4, 0
	fld.s	$fa5, $a4, 4
	fsel	$fa1, $fa4, $fa1, $fcc0
	fld.s	$fa4, $a4, 8
	fadd.s	$fa3, $fa6, $fa3
	fadd.s	$fa5, $fa7, $fa5
	fld.s	$fa6, $a5, 0
	fadd.s	$fa4, $ft0, $fa4
	fld.s	$fa7, $a5, 4
	fld.s	$ft0, $a5, 8
	fadd.s	$fa0, $fa0, $fa6
	fld.s	$fa6, $s5, 8
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa1, $fa1, $ft0
	fld.s	$fa7, $s5, 12
	fcmp.clt.s	$fcc0, $fa3, $fa6
	fsel	$fa3, $fa3, $fa6, $fcc0
	fld.s	$ft0, $s5, 16
	fcmp.clt.s	$fcc0, $fa5, $fa7
	fsel	$fa5, $fa5, $fa7, $fcc0
	fld.s	$ft1, $s5, 24
	fcmp.clt.s	$fcc0, $fa4, $ft0
	fsel	$fa4, $fa4, $ft0, $fcc0
	fld.s	$ft2, $s5, 28
	fcmp.clt.s	$fcc0, $ft1, $fa3
	fld.s	$ft3, $s5, 32
	fsel	$fa3, $fa3, $ft1, $fcc0
	fcmp.clt.s	$fcc0, $ft2, $fa5
	fsel	$fa5, $fa5, $ft2, $fcc0
	fcmp.clt.s	$fcc0, $ft3, $fa4
	fsel	$fa4, $fa4, $ft3, $fcc0
	fsub.s	$fa3, $fa3, $fa6
	fsub.s	$fa5, $fa5, $fa7
	fld.s	$ft4, $s5, 40
	fld.s	$ft5, $s5, 44
	fld.s	$ft6, $s5, 48
	fsub.s	$fa4, $fa4, $ft0
	fmul.s	$fa3, $fa3, $ft4
	fmul.s	$fa5, $fa5, $ft5
	fmul.s	$fa4, $fa4, $ft6
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a0, $fa3
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4094
	and	$t5, $a0, $a1
	ftintrz.l.s	$fa3, $fa5
	movfr2gr.d	$a0, $fa3
	and	$t6, $a0, $a1
	ftintrz.l.s	$fa3, $fa4
	movfr2gr.d	$a0, $fa3
	and	$t7, $a0, $a1
	fcmp.clt.s	$fcc0, $fa0, $fa6
	fsel	$fa0, $fa0, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fa7
	fsel	$fa2, $fa2, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $ft0
	fsel	$fa1, $fa1, $ft0, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $fa0
	fsel	$fa0, $fa0, $ft1, $fcc0
	fcmp.clt.s	$fcc0, $ft2, $fa2
	fsel	$fa2, $fa2, $ft2, $fcc0
	fcmp.clt.s	$fcc0, $ft3, $fa1
	fsel	$fa1, $fa1, $ft3, $fcc0
	fsub.s	$fa0, $fa0, $fa6
	fsub.s	$fa2, $fa2, $fa7
	fsub.s	$fa1, $fa1, $ft0
	fmul.s	$fa0, $fa0, $ft4
	fmul.s	$fa2, $fa2, $ft5
	fmul.s	$fa1, $fa1, $ft6
	vldi	$vr3, -1168
	fadd.s	$fa0, $fa0, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$t8, $a0, 1
	fadd.s	$fa0, $fa2, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$fp, $a0, 1
	fadd.s	$fa0, $fa1, $fa3
	ld.d	$a0, $s5, 184
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	ori	$s1, $a1, 1
	alsl.d	$s3, $a6, $a0, 4
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	b	.LBB21_4
.LBB21_2:                               # %.thread139
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a3, $a1, 16
	bstrpick.d	$a1, $a0, 31, 21
	bstrpick.d	$a2, $a0, 20, 0
	move	$a0, $s2
	move	$fp, $t5
	move	$s1, $t7
	jirl	$ra, $a3, 0
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	move	$t7, $s1
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	move	$t5, $fp
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_3:                               #   in Loop: Header=BB21_4 Depth=1
	addi.d	$s3, $s3, 16
	addi.w	$s0, $s0, 1
	addi.w	$s6, $s6, 1
	bge	$s0, $a7, .LBB21_20
.LBB21_4:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$t2, $s3, 6
	ld.w	$a0, $s3, 12
	move	$a3, $zero
	bltu	$t2, $t5, .LBB21_16
# %bb.5:                                #   in Loop: Header=BB21_4 Depth=1
	ld.hu	$a6, $s3, 0
	bltu	$t8, $a6, .LBB21_16
# %bb.6:                                #   in Loop: Header=BB21_4 Depth=1
	ld.hu	$a2, $s3, 10
	bltu	$a2, $t7, .LBB21_16
# %bb.7:                                #   in Loop: Header=BB21_4 Depth=1
	ld.hu	$a1, $s3, 4
	bltu	$s1, $a1, .LBB21_16
# %bb.8:                                #   in Loop: Header=BB21_4 Depth=1
	ld.hu	$t1, $s3, 8
	bltu	$t1, $t6, .LBB21_16
# %bb.9:                                #   in Loop: Header=BB21_4 Depth=1
	ld.hu	$t0, $s3, 2
	bltu	$fp, $t0, .LBB21_16
# %bb.10:                               #   in Loop: Header=BB21_4 Depth=1
	fld.s	$fa0, $s5, 40
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	movgr2fr.w	$fa2, $t0
	fld.s	$fa3, $s5, 44
	fld.s	$fa4, $s5, 8
	fld.s	$fa5, $s5, 12
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa6, $fa2, $fa5
	movgr2fr.w	$fa2, $t2
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa0, $fa2, $fa0
	movgr2fr.w	$fa2, $t1
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $fa3
	fadd.s	$fa0, $fa4, $fa0
	fld.s	$fa3, $s4, 0
	fadd.s	$fa5, $fa5, $fa2
	fld.s	$fa4, $s4, 4
	fld.s	$fa7, $s8, 0
	fadd.s	$fa2, $fa3, $fa1
	fld.s	$fa1, $s8, 4
	fadd.s	$fa3, $fa4, $fa6
	fadd.s	$fa4, $fa7, $fa0
	fld.s	$fa6, $s7, 0
	fadd.s	$fa5, $fa1, $fa5
	fcmp.cule.s	$fcc0, $fs1, $fs2
	fsel	$fa0, $fa4, $fa2, $fcc0
	fsub.s	$fa0, $fa0, $fa6
	fld.s	$fa7, $s7, 4
	fmul.s	$fa1, $fs2, $fa0
	fcmp.cule.s	$fcc1, $fs1, $fs3
	fsel	$fa0, $fa3, $fa5, $fcc1
	fsub.s	$fa0, $fa0, $fa7
	fmul.s	$fa0, $fs3, $fa0
	fcmp.clt.s	$fcc2, $fa0, $fa1
	move	$a3, $zero
	bcnez	$fcc2, .LBB21_16
# %bb.11:                               #   in Loop: Header=BB21_4 Depth=1
	fsel	$fa2, $fa2, $fa4, $fcc0
	fsub.s	$fa2, $fa2, $fa6
	fmul.s	$fa2, $fs2, $fa2
	fsel	$fa3, $fa5, $fa3, $fcc1
	fsub.s	$fa3, $fa3, $fa7
	fmul.s	$fa3, $fs3, $fa3
	fcmp.clt.s	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB21_16
# %bb.12:                               #   in Loop: Header=BB21_4 Depth=1
	fld.s	$fa4, $s8, 8
	fld.s	$fa5, $s5, 48
	fld.s	$fa6, $s5, 16
	movgr2fr.w	$fa7, $a2
	ffint.s.w	$fa7, $fa7
	fdiv.s	$fa7, $fa7, $fa5
	fadd.s	$fa7, $fa6, $fa7
	fadd.s	$fa4, $fa4, $fa7
	fld.s	$fa7, $s4, 8
	movgr2fr.w	$ft0, $a1
	ffint.s.w	$ft0, $ft0
	fdiv.s	$fa5, $ft0, $fa5
	fadd.s	$fa5, $fa5, $fa6
	fadd.s	$fa5, $fa7, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fld.s	$fa6, $s7, 8
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.cule.s	$fcc0, $fs1, $fs4
	fsel	$fa3, $fa5, $fa4, $fcc0
	fsub.s	$fa3, $fa3, $fa6
	fmul.s	$fa3, $fs4, $fa3
	fcmp.clt.s	$fcc1, $fa3, $fa1
	move	$a3, $zero
	bcnez	$fcc1, .LBB21_16
# %bb.13:                               #   in Loop: Header=BB21_4 Depth=1
	fcmp.clt.s	$fcc1, $fa0, $fa2
	fsel	$fa0, $fa2, $fa0, $fcc1
	fsel	$fa2, $fa4, $fa5, $fcc0
	fsub.s	$fa2, $fa2, $fa6
	fmul.s	$fa2, $fs4, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB21_16
# %bb.14:                               #   in Loop: Header=BB21_4 Depth=1
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa0, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fs0
	fcmp.clt.s	$fcc1, $fs1, $fa0
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	and	$a3, $a1, $a2
	bltz	$a0, .LBB21_16
# %bb.15:                               #   in Loop: Header=BB21_4 Depth=1
	bnez	$a3, .LBB21_2
	.p2align	4, , 16
.LBB21_16:                              # %.thread
                                        #   in Loop: Header=BB21_4 Depth=1
	bgez	$a0, .LBB21_3
# %bb.17:                               # %.thread
                                        #   in Loop: Header=BB21_4 Depth=1
	bnez	$a3, .LBB21_3
# %bb.18:                               #   in Loop: Header=BB21_4 Depth=1
	sub.w	$a1, $zero, $a0
	alsl.d	$s3, $a1, $s3, 4
	sub.w	$s0, $s0, $a0
	addi.w	$s6, $s6, 1
	blt	$s0, $a7, .LBB21_4
	b	.LBB21_20
.LBB21_19:
	move	$s6, $zero
.LBB21_20:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(maxIterations)
	ld.w	$a1, $a0, %pc_lo12(maxIterations)
	bge	$a1, $s6, .LBB21_22
# %bb.21:
	st.w	$s6, $a0, %pc_lo12(maxIterations)
.LBB21_22:
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
	ret
.Lfunc_end21:
	.size	_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii, .Lfunc_end21-_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_ # -- Begin function _ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_,@function
_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_: # @_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.bu	$a4, $a0, 64
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 24
	vst	$vr0, $sp, 8
	beqz	$a4, .LBB22_2
# %bb.1:
	ld.w	$a7, $a0, 60
	addi.d	$a4, $sp, 24
	addi.d	$a5, $sp, 8
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB22_2:
	addi.d	$a4, $sp, 24
	addi.d	$a5, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end22:
	.size	_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_, .Lfunc_end22-_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ # -- Begin function _ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_
	.p2align	5
	.type	_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_,@function
_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_: # @_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_
	.cfi_startproc
# %bb.0:
	ld.bu	$a6, $a0, 64
	beqz	$a6, .LBB23_2
# %bb.1:
	ld.w	$a7, $a0, 60
	move	$a6, $zero
	pcaddu18i	$t8, %call36(_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii)
	jr	$t8
.LBB23_2:
	pcaddu18i	$t8, %call36(_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii)
	jr	$t8
.Lfunc_end23:
	.size	_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_, .Lfunc_end23-_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv # -- Begin function _ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv
	.p2align	5
	.type	_ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv,@function
_ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv: # @_ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv, .Lfunc_end24-_ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv
                                        # -- End function
	.globl	_ZN14btQuantizedBvh28calculateSerializeBufferSizeEv # -- Begin function _ZN14btQuantizedBvh28calculateSerializeBufferSizeEv
	.p2align	5
	.type	_ZN14btQuantizedBvh28calculateSerializeBufferSizeEv,@function
_ZN14btQuantizedBvh28calculateSerializeBufferSizeEv: # @_ZN14btQuantizedBvh28calculateSerializeBufferSizeEv
# %bb.0:
	ld.bu	$a1, $a0, 64
	ld.w	$a2, $a0, 240
	ld.w	$a0, $a0, 60
	ori	$a3, $zero, 6
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 4
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	sll.w	$a0, $a0, $a1
	slli.d	$a1, $a2, 5
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 248
	ret
.Lfunc_end25:
	.size	_ZN14btQuantizedBvh28calculateSerializeBufferSizeEv, .Lfunc_end25-_ZN14btQuantizedBvh28calculateSerializeBufferSizeEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN14btQuantizedBvh9serializeEPvjb
.LCPI26_0:
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0x00000000                      # float 0
.LCPI26_1:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN14btQuantizedBvh9serializeEPvjb
	.p2align	5
	.type	_ZN14btQuantizedBvh9serializeEPvjb,@function
_ZN14btQuantizedBvh9serializeEPvjb:     # @_ZN14btQuantizedBvh9serializeEPvjb
	.cfi_startproc
# %bb.0:
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
	move	$s0, $a0
	ld.w	$a0, $a0, 212
	move	$s1, $a3
	move	$fp, $a1
	st.w	$a0, $s0, 240
	pcalau12i	$a0, %pc_hi20(_ZTV14btQuantizedBvh+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV14btQuantizedBvh+16)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 275
	st.w	$a0, $a1, 56
	st.b	$zero, $a1, 64
	pcalau12i	$a0, %pc_hi20(.LCPI26_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_0)
	ori	$a0, $zero, 1
	st.b	$a0, $a1, 96
	st.d	$zero, $a1, 88
	st.d	$zero, $a1, 76
	st.b	$a0, $a1, 128
	st.d	$zero, $a1, 120
	st.d	$zero, $a1, 108
	st.b	$a0, $a1, 160
	st.d	$zero, $a1, 152
	st.d	$zero, $a1, 140
	st.b	$a0, $a1, 192
	st.d	$zero, $a1, 184
	st.d	$zero, $a1, 172
	st.w	$zero, $a1, 200
	st.b	$a0, $a1, 232
	st.d	$zero, $a1, 212
	vst	$vr0, $a1, 8
	pcalau12i	$a0, %pc_hi20(.LCPI26_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_1)
	ld.w	$a0, $s0, 60
	st.d	$zero, $a1, 224
	st.w	$zero, $a1, 240
	vst	$vr0, $a1, 24
	beqz	$a3, .LBB26_2
# %bb.1:
	revb.2w	$a0, $a0
	st.w	$a0, $fp, 60
	ld.b	$a0, $s0, 11
	st.b	$a0, $fp, 8
	ld.b	$a0, $s0, 10
	st.b	$a0, $fp, 9
	ld.b	$a0, $s0, 9
	st.b	$a0, $fp, 10
	ld.b	$a0, $s0, 8
	st.b	$a0, $fp, 11
	ld.b	$a0, $s0, 15
	st.b	$a0, $fp, 12
	ld.b	$a0, $s0, 14
	st.b	$a0, $fp, 13
	ld.b	$a0, $s0, 13
	st.b	$a0, $fp, 14
	ld.b	$a0, $s0, 12
	st.b	$a0, $fp, 15
	ld.b	$a0, $s0, 19
	st.b	$a0, $fp, 16
	ld.b	$a0, $s0, 18
	st.b	$a0, $fp, 17
	ld.b	$a0, $s0, 17
	st.b	$a0, $fp, 18
	ld.b	$a0, $s0, 16
	st.b	$a0, $fp, 19
	ld.b	$a0, $s0, 23
	st.b	$a0, $fp, 20
	ld.b	$a0, $s0, 22
	st.b	$a0, $fp, 21
	ld.b	$a0, $s0, 21
	st.b	$a0, $fp, 22
	ld.b	$a0, $s0, 20
	st.b	$a0, $fp, 23
	ld.b	$a0, $s0, 27
	st.b	$a0, $fp, 24
	ld.b	$a0, $s0, 26
	st.b	$a0, $fp, 25
	ld.b	$a0, $s0, 25
	st.b	$a0, $fp, 26
	ld.b	$a0, $s0, 24
	st.b	$a0, $fp, 27
	ld.b	$a0, $s0, 31
	st.b	$a0, $fp, 28
	ld.b	$a0, $s0, 30
	st.b	$a0, $fp, 29
	ld.b	$a0, $s0, 29
	st.b	$a0, $fp, 30
	ld.b	$a0, $s0, 28
	st.b	$a0, $fp, 31
	ld.b	$a0, $s0, 35
	st.b	$a0, $fp, 32
	ld.b	$a0, $s0, 34
	st.b	$a0, $fp, 33
	ld.b	$a0, $s0, 33
	st.b	$a0, $fp, 34
	ld.b	$a0, $s0, 32
	st.b	$a0, $fp, 35
	ld.b	$a0, $s0, 39
	st.b	$a0, $fp, 36
	ld.b	$a0, $s0, 38
	st.b	$a0, $fp, 37
	ld.b	$a0, $s0, 37
	st.b	$a0, $fp, 38
	ld.b	$a0, $s0, 36
	st.b	$a0, $fp, 39
	ld.b	$a0, $s0, 43
	st.b	$a0, $fp, 40
	ld.b	$a0, $s0, 42
	st.b	$a0, $fp, 41
	ld.b	$a0, $s0, 41
	st.b	$a0, $fp, 42
	ld.b	$a0, $s0, 40
	st.b	$a0, $fp, 43
	ld.b	$a0, $s0, 47
	st.b	$a0, $fp, 44
	ld.b	$a0, $s0, 46
	st.b	$a0, $fp, 45
	ld.b	$a0, $s0, 45
	st.b	$a0, $fp, 46
	ld.b	$a0, $s0, 44
	st.b	$a0, $fp, 47
	ld.b	$a0, $s0, 51
	st.b	$a0, $fp, 48
	ld.b	$a0, $s0, 50
	st.b	$a0, $fp, 49
	ld.b	$a0, $s0, 49
	st.b	$a0, $fp, 50
	ld.b	$a0, $s0, 48
	st.b	$a0, $fp, 51
	ld.b	$a0, $s0, 55
	st.b	$a0, $fp, 52
	ld.b	$a0, $s0, 54
	st.b	$a0, $fp, 53
	ld.b	$a0, $s0, 53
	st.b	$a0, $fp, 54
	ld.b	$a0, $s0, 52
	st.b	$a0, $fp, 55
	ld.w	$a0, $s0, 200
	ld.w	$a2, $s0, 240
	revb.2w	$a1, $a0
	revb.2w	$a0, $a2
	b	.LBB26_3
.LBB26_2:
	st.w	$a0, $fp, 60
	vld	$vr0, $s0, 8
	addi.d	$a0, $fp, 8
	vst	$vr0, $a0, 0
	vld	$vr0, $s0, 24
	addi.d	$a0, $fp, 24
	vst	$vr0, $a0, 0
	vld	$vr0, $s0, 40
	vst	$vr0, $fp, 40
	ld.w	$a1, $s0, 200
	ld.w	$a0, $s0, 240
.LBB26_3:
	ld.bu	$a2, $s0, 64
	st.w	$a1, $fp, 200
	ld.w	$s3, $s0, 60
	st.w	$a0, $fp, 240
	st.b	$a2, $fp, 64
	addi.d	$s2, $fp, 248
	beqz	$a2, .LBB26_11
# %bb.4:
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB26_7
# %bb.5:
	ld.b	$a1, $fp, 192
	andi	$a1, $a1, 1
	beqz	$a1, .LBB26_7
# %bb.6:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB26_7:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE20initializeFromBufferEPvii.exit
	st.d	$s2, $fp, 184
	beqz	$s1, .LBB26_18
# %bb.8:                                # %.preheader220
	blez	$s3, .LBB26_21
# %bb.9:                                # %.lr.ph234
	ld.d	$a1, $s0, 184
	addi.d	$a0, $fp, 260
	addi.d	$a1, $a1, 6
	move	$a2, $s3
	.p2align	4, , 16
.LBB26_10:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, -6
	revb.2h	$a3, $a3
	st.h	$a3, $a0, -12
	ld.h	$a3, $a1, -4
	revb.2h	$a3, $a3
	st.h	$a3, $a0, -10
	ld.h	$a3, $a1, -2
	revb.2h	$a3, $a3
	st.h	$a3, $a0, -8
	ld.h	$a3, $a1, 0
	revb.2h	$a3, $a3
	st.h	$a3, $a0, -6
	ld.h	$a3, $a1, 2
	revb.2h	$a3, $a3
	st.h	$a3, $a0, -4
	ld.h	$a3, $a1, 4
	ld.w	$a4, $a1, 6
	revb.2h	$a3, $a3
	st.h	$a3, $a0, -2
	revb.2w	$a3, $a4
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB26_10
	b	.LBB26_21
.LBB26_11:
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB26_14
# %bb.12:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB26_14
# %bb.13:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB26_14:                              # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE20initializeFromBufferEPvii.exit
	st.b	$zero, $fp, 128
	st.d	$s2, $fp, 120
	st.w	$s3, $fp, 108
	st.w	$s3, $fp, 112
	move	$a0, $s2
	beqz	$s1, .LBB26_22
# %bb.15:                               # %.preheader224
	blez	$s3, .LBB26_25
# %bb.16:                               # %.lr.ph230
	ld.d	$a3, $s0, 120
	move	$a1, $zero
	slli.d	$a2, $s3, 6
	move	$a0, $s2
	.p2align	4, , 16
.LBB26_17:                              # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a1
	ld.b	$a5, $a4, 3
	stx.b	$a5, $a0, $a1
	ld.b	$a5, $a4, 2
	add.d	$a0, $a0, $a1
	st.b	$a5, $a0, 1
	ld.b	$a5, $a4, 1
	st.b	$a5, $a0, 2
	ldx.b	$a3, $a3, $a1
	st.b	$a3, $a0, 3
	ld.b	$a3, $a4, 7
	st.b	$a3, $a0, 4
	ld.b	$a3, $a4, 6
	st.b	$a3, $a0, 5
	ld.b	$a3, $a4, 5
	st.b	$a3, $a0, 6
	ld.b	$a3, $a4, 4
	st.b	$a3, $a0, 7
	ld.b	$a3, $a4, 11
	st.b	$a3, $a0, 8
	ld.b	$a3, $a4, 10
	st.b	$a3, $a0, 9
	ld.b	$a3, $a4, 9
	st.b	$a3, $a0, 10
	ld.b	$a3, $a4, 8
	st.b	$a3, $a0, 11
	ld.b	$a3, $a4, 15
	st.b	$a3, $a0, 12
	ld.b	$a3, $a4, 14
	st.b	$a3, $a0, 13
	ld.b	$a3, $a4, 13
	st.b	$a3, $a0, 14
	ld.b	$a3, $a4, 12
	st.b	$a3, $a0, 15
	ld.d	$a0, $s0, 120
	add.d	$a0, $a0, $a1
	ld.d	$a3, $fp, 120
	ld.b	$a4, $a0, 19
	add.d	$a3, $a3, $a1
	st.b	$a4, $a3, 16
	ld.b	$a4, $a0, 18
	st.b	$a4, $a3, 17
	ld.b	$a4, $a0, 17
	st.b	$a4, $a3, 18
	ld.b	$a4, $a0, 16
	st.b	$a4, $a3, 19
	ld.b	$a4, $a0, 23
	st.b	$a4, $a3, 20
	ld.b	$a4, $a0, 22
	st.b	$a4, $a3, 21
	ld.b	$a4, $a0, 21
	st.b	$a4, $a3, 22
	ld.b	$a4, $a0, 20
	st.b	$a4, $a3, 23
	ld.b	$a4, $a0, 27
	st.b	$a4, $a3, 24
	ld.b	$a4, $a0, 26
	st.b	$a4, $a3, 25
	ld.b	$a4, $a0, 25
	st.b	$a4, $a3, 26
	ld.b	$a4, $a0, 24
	st.b	$a4, $a3, 27
	ld.b	$a4, $a0, 31
	st.b	$a4, $a3, 28
	ld.b	$a4, $a0, 30
	st.b	$a4, $a3, 29
	ld.b	$a4, $a0, 29
	st.b	$a4, $a3, 30
	ld.b	$a0, $a0, 28
	st.b	$a0, $a3, 31
	ld.d	$a3, $s0, 120
	add.d	$a4, $a3, $a1
	ld.w	$a5, $a4, 32
	ld.d	$a0, $fp, 120
	revb.2w	$a5, $a5
	ld.w	$a6, $a4, 36
	add.d	$a7, $a0, $a1
	ld.w	$a4, $a4, 40
	st.w	$a5, $a7, 32
	revb.2w	$a5, $a6
	st.w	$a5, $a7, 36
	revb.2w	$a4, $a4
	addi.d	$a1, $a1, 64
	st.w	$a4, $a7, 40
	bne	$a2, $a1, .LBB26_17
	b	.LBB26_25
.LBB26_18:                              # %.preheader222
	blez	$s3, .LBB26_21
# %bb.19:                               # %.lr.ph232
	ld.d	$a1, $s0, 184
	addi.d	$a0, $fp, 260
	addi.d	$a1, $a1, 6
	move	$a2, $s3
	.p2align	4, , 16
.LBB26_20:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, -6
	st.h	$a3, $a0, -12
	ld.h	$a3, $a1, -4
	st.h	$a3, $a0, -10
	ld.h	$a3, $a1, -2
	st.h	$a3, $a0, -8
	ld.h	$a3, $a1, 0
	st.h	$a3, $a0, -6
	ld.h	$a3, $a1, 2
	st.h	$a3, $a0, -4
	ld.h	$a3, $a1, 4
	ld.w	$a4, $a1, 6
	st.h	$a3, $a0, -2
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB26_20
.LBB26_21:                              # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE20initializeFromBufferEPvii.exit201
	slli.d	$s3, $s3, 4
	st.b	$zero, $fp, 192
	st.d	$zero, $fp, 184
	st.d	$zero, $fp, 172
	ld.d	$a0, $fp, 224
	add.d	$s2, $s2, $s3
	bnez	$a0, .LBB26_28
	b	.LBB26_30
.LBB26_22:                              # %.preheader226
	blez	$s3, .LBB26_25
# %bb.23:                               # %.lr.ph
	ld.d	$a3, $s0, 120
	move	$a1, $zero
	slli.d	$a2, $s3, 6
	move	$a0, $s2
	.p2align	4, , 16
.LBB26_24:                              # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a3, $a1
	vstx	$vr0, $a0, $a1
	ld.d	$a0, $s0, 120
	add.d	$a0, $a0, $a1
	ld.d	$a3, $fp, 120
	vld	$vr0, $a0, 16
	add.d	$a0, $a3, $a1
	vst	$vr0, $a0, 16
	ld.d	$a3, $s0, 120
	ld.d	$a0, $fp, 120
	add.d	$a4, $a3, $a1
	ld.w	$a5, $a4, 32
	ld.w	$a6, $a4, 36
	add.d	$a7, $a0, $a1
	ld.w	$a4, $a4, 40
	st.w	$a5, $a7, 32
	st.w	$a6, $a7, 36
	addi.d	$a1, $a1, 64
	st.w	$a4, $a7, 40
	bne	$a2, $a1, .LBB26_24
.LBB26_25:                              # %.loopexit225
	ld.bu	$a1, $fp, 128
	beqz	$a1, .LBB26_27
# %bb.26:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB26_27:                              # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE20initializeFromBufferEPvii.exit206
	slli.d	$s3, $s3, 6
	st.b	$zero, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	ld.d	$a0, $fp, 224
	add.d	$s2, $s2, $s3
	beqz	$a0, .LBB26_30
.LBB26_28:
	ld.b	$a1, $fp, 232
	andi	$a1, $a1, 1
	beqz	$a1, .LBB26_30
# %bb.29:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB26_30:                              # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit
	ld.w	$a0, $s0, 240
	st.d	$s2, $fp, 224
	beqz	$s1, .LBB26_34
# %bb.31:                               # %.preheader
	blez	$a0, .LBB26_37
# %bb.32:                               # %.lr.ph238
	ld.d	$a2, $s0, 224
	add.d	$a1, $s3, $fp
	addi.d	$a1, $a1, 264
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB26_33:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, -8
	revb.2h	$a3, $a3
	st.h	$a3, $a1, -16
	ld.h	$a3, $a2, -6
	revb.2h	$a3, $a3
	st.h	$a3, $a1, -14
	ld.h	$a3, $a2, -4
	revb.2h	$a3, $a3
	st.h	$a3, $a1, -12
	ld.h	$a3, $a2, -2
	revb.2h	$a3, $a3
	st.h	$a3, $a1, -10
	ld.h	$a3, $a2, 0
	revb.2h	$a3, $a3
	st.h	$a3, $a1, -8
	ld.h	$a3, $a2, 2
	ld.w	$a4, $a2, 4
	revb.2h	$a3, $a3
	ld.w	$a5, $a2, 8
	st.h	$a3, $a1, -6
	revb.2w	$a3, $a4
	st.w	$a3, $a1, -4
	revb.2w	$a3, $a5
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 32
	bnez	$a0, .LBB26_33
	b	.LBB26_37
.LBB26_34:                              # %.preheader218
	blez	$a0, .LBB26_37
# %bb.35:                               # %.lr.ph236
	ld.d	$a2, $s0, 224
	move	$a0, $zero
	add.d	$a1, $s3, $fp
	addi.d	$a1, $a1, 264
	addi.d	$a2, $a2, 8
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB26_36:                              # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, -8
	st.h	$a3, $a1, -16
	ld.h	$a3, $a2, -6
	st.h	$a3, $a1, -14
	ld.h	$a3, $a2, -4
	st.h	$a3, $a1, -12
	ld.h	$a3, $a2, -2
	st.h	$a3, $a1, -10
	ld.h	$a3, $a2, 0
	st.h	$a3, $a1, -8
	ld.h	$a3, $a2, 2
	ld.w	$a4, $a2, 8
	st.h	$a3, $a1, -6
	ld.w	$a3, $a2, 4
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a4, 0
	vst	$vr1, $a1, 0
	ld.w	$a4, $s0, 240
	st.w	$a3, $a1, -4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	blt	$a0, $a4, .LBB26_36
.LBB26_37:                              # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit217
	st.b	$zero, $fp, 232
	st.d	$zero, $fp, 224
	st.d	$zero, $fp, 212
	ori	$a0, $zero, 1
	st.d	$zero, $fp, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	_ZN14btQuantizedBvh9serializeEPvjb, .Lfunc_end26-_ZN14btQuantizedBvh9serializeEPvjb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb # -- Begin function _ZN14btQuantizedBvh18deSerializeInPlaceEPvjb
	.p2align	5
	.type	_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb,@function
_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb: # @_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb
	.cfi_startproc
# %bb.0:
	beqz	$a0, .LBB27_3
# %bb.1:
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
	beqz	$a2, .LBB27_4
# %bb.2:
	ld.w	$a3, $a0, 60
	revb.2w	$a3, $a3
	st.w	$a3, $a0, 60
	ld.b	$a3, $a0, 11
	ld.b	$a4, $a0, 10
	ld.b	$a5, $a0, 9
	ld.b	$a6, $a0, 8
	ld.b	$a7, $a0, 15
	ld.b	$t0, $a0, 14
	ld.b	$t1, $a0, 13
	ld.b	$t2, $a0, 12
	ld.b	$t3, $a0, 19
	ld.b	$t4, $a0, 18
	ld.b	$t5, $a0, 17
	ld.b	$t6, $a0, 16
	ld.b	$t7, $a0, 23
	ld.b	$t8, $a0, 22
	ld.b	$fp, $a0, 21
	ld.b	$s0, $a0, 20
	st.b	$a3, $a0, 8
	st.b	$a4, $a0, 9
	st.b	$a5, $a0, 10
	st.b	$a6, $a0, 11
	st.b	$a7, $a0, 12
	st.b	$t0, $a0, 13
	st.b	$t1, $a0, 14
	st.b	$t2, $a0, 15
	st.b	$t3, $a0, 16
	st.b	$t4, $a0, 17
	st.b	$t5, $a0, 18
	st.b	$t6, $a0, 19
	st.b	$t7, $a0, 20
	st.b	$t8, $a0, 21
	st.b	$fp, $a0, 22
	st.b	$s0, $a0, 23
	ld.b	$a3, $a0, 27
	ld.b	$a4, $a0, 26
	ld.b	$a5, $a0, 25
	ld.b	$a6, $a0, 24
	ld.b	$a7, $a0, 31
	ld.b	$t0, $a0, 30
	ld.b	$t1, $a0, 29
	ld.b	$t2, $a0, 28
	ld.b	$t3, $a0, 35
	ld.b	$t4, $a0, 34
	ld.b	$t5, $a0, 33
	ld.b	$t6, $a0, 32
	ld.b	$t7, $a0, 39
	ld.b	$t8, $a0, 38
	ld.b	$fp, $a0, 37
	ld.b	$s0, $a0, 36
	st.b	$a3, $a0, 24
	st.b	$a4, $a0, 25
	st.b	$a5, $a0, 26
	st.b	$a6, $a0, 27
	st.b	$a7, $a0, 28
	st.b	$t0, $a0, 29
	st.b	$t1, $a0, 30
	st.b	$t2, $a0, 31
	st.b	$t3, $a0, 32
	st.b	$t4, $a0, 33
	st.b	$t5, $a0, 34
	st.b	$t6, $a0, 35
	st.b	$t7, $a0, 36
	st.b	$t8, $a0, 37
	st.b	$fp, $a0, 38
	st.b	$s0, $a0, 39
	ld.b	$a3, $a0, 43
	ld.b	$a4, $a0, 42
	ld.b	$a5, $a0, 41
	ld.b	$a6, $a0, 40
	ld.b	$a7, $a0, 47
	ld.b	$t0, $a0, 46
	ld.b	$t1, $a0, 45
	ld.b	$t2, $a0, 44
	ld.b	$t3, $a0, 51
	ld.b	$t4, $a0, 50
	ld.b	$t5, $a0, 49
	ld.b	$t6, $a0, 48
	ld.b	$t7, $a0, 55
	ld.b	$t8, $a0, 54
	ld.b	$fp, $a0, 53
	ld.b	$s0, $a0, 52
	st.b	$a3, $a0, 40
	st.b	$a4, $a0, 41
	st.b	$a5, $a0, 42
	st.b	$a6, $a0, 43
	st.b	$a7, $a0, 44
	st.b	$t0, $a0, 45
	st.b	$t1, $a0, 46
	st.b	$t2, $a0, 47
	st.b	$t3, $a0, 48
	st.b	$t4, $a0, 49
	st.b	$t5, $a0, 50
	st.b	$t6, $a0, 51
	st.b	$t7, $a0, 52
	st.b	$t8, $a0, 53
	ld.w	$a3, $a0, 200
	st.b	$fp, $a0, 54
	ld.w	$a4, $a0, 240
	st.b	$s0, $a0, 55
	revb.2w	$a3, $a3
	st.w	$a3, $a0, 200
	revb.2w	$fp, $a4
	st.w	$fp, $a0, 240
	b	.LBB27_5
.LBB27_3:
	move	$a0, $zero
	ret
.LBB27_4:                               # %._crit_edge
	ld.w	$fp, $a0, 240
.LBB27_5:
	ld.bu	$a5, $a0, 64
	ld.w	$a4, $a0, 60
	ori	$a3, $zero, 6
	masknez	$a3, $a3, $a5
	ori	$a6, $zero, 4
	maskeqz	$a6, $a6, $a5
	or	$a3, $a6, $a3
	sll.w	$a3, $a4, $a3
	slli.d	$a6, $fp, 5
	add.d	$a3, $a6, $a3
	addi.w	$a3, $a3, 248
	bgeu	$a1, $a3, .LBB27_7
# %bb.6:
	move	$a0, $zero
	b	.LBB27_23
.LBB27_7:
	addi.d	$a3, $a0, 248
	pcalau12i	$a1, %pc_hi20(_ZTV14btQuantizedBvh+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV14btQuantizedBvh+16)
	st.d	$a1, $a0, 0
	ori	$a1, $zero, 275
	st.w	$a1, $a0, 56
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 96
	st.d	$zero, $a0, 88
	st.d	$zero, $a0, 76
	st.b	$a1, $a0, 128
	st.d	$zero, $a0, 120
	st.d	$zero, $a0, 108
	st.b	$a1, $a0, 160
	st.d	$zero, $a0, 152
	st.d	$zero, $a0, 140
	st.b	$a1, $a0, 192
	st.d	$zero, $a0, 184
	st.d	$zero, $a0, 172
	st.b	$a1, $a0, 232
	st.d	$zero, $a0, 224
	st.d	$zero, $a0, 212
	slt	$a1, $zero, $a4
	and	$a1, $a2, $a1
	beqz	$a5, .LBB27_12
# %bb.8:                                # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE20initializeFromBufferEPvii.exit
	st.b	$zero, $a0, 192
	st.d	$a3, $a0, 184
	st.w	$a4, $a0, 172
	st.w	$a4, $a0, 176
	beqz	$a1, .LBB27_11
# %bb.9:                                # %.lr.ph194.preheader
	addi.d	$a1, $a0, 260
	move	$a5, $a4
	.p2align	4, , 16
.LBB27_10:                              # %.lr.ph194
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a1, -12
	ld.h	$a7, $a1, -10
	revb.2h	$a6, $a6
	st.h	$a6, $a1, -12
	ld.h	$a6, $a1, -8
	revb.2h	$a7, $a7
	st.h	$a7, $a1, -10
	ld.h	$a7, $a1, -6
	revb.2h	$a6, $a6
	st.h	$a6, $a1, -8
	ld.h	$a6, $a1, -4
	revb.2h	$a7, $a7
	st.h	$a7, $a1, -6
	ld.h	$a7, $a1, -2
	revb.2h	$a6, $a6
	ld.w	$t0, $a1, 0
	st.h	$a6, $a1, -4
	revb.2h	$a6, $a7
	st.h	$a6, $a1, -2
	revb.2w	$a6, $t0
	st.w	$a6, $a1, 0
	addi.d	$a5, $a5, -1
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB27_10
.LBB27_11:                              # %.thread
	alsl.d	$s0, $a4, $a3, 4
	b	.LBB27_19
.LBB27_12:                              # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE20initializeFromBufferEPvii.exit
	st.b	$zero, $a0, 128
	st.d	$a3, $a0, 120
	st.w	$a4, $a0, 108
	st.w	$a4, $a0, 112
	beqz	$a1, .LBB27_18
# %bb.13:                               # %.lr.ph.preheader
	move	$a1, $zero
	slli.d	$a4, $a4, 6
	move	$a5, $a3
	.p2align	4, , 16
.LBB27_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a5, $a1
	ld.b	$a7, $a6, 3
	ld.b	$t0, $a6, 2
	ld.b	$t1, $a6, 1
	ldx.b	$t2, $a5, $a1
	ld.b	$t3, $a6, 7
	ld.b	$t4, $a6, 6
	ld.b	$t5, $a6, 5
	ld.b	$t6, $a6, 4
	ld.b	$t7, $a6, 11
	ld.b	$t8, $a6, 10
	ld.b	$fp, $a6, 9
	ld.b	$s0, $a6, 8
	ld.b	$s1, $a6, 15
	ld.b	$s2, $a6, 14
	ld.b	$s3, $a6, 13
	ld.b	$s4, $a6, 12
	stx.b	$a7, $a5, $a1
	st.b	$t0, $a6, 1
	st.b	$t1, $a6, 2
	st.b	$t2, $a6, 3
	st.b	$t3, $a6, 4
	st.b	$t4, $a6, 5
	st.b	$t5, $a6, 6
	st.b	$t6, $a6, 7
	st.b	$t7, $a6, 8
	st.b	$t8, $a6, 9
	st.b	$fp, $a6, 10
	st.b	$s0, $a6, 11
	st.b	$s1, $a6, 12
	st.b	$s2, $a6, 13
	st.b	$s3, $a6, 14
	st.b	$s4, $a6, 15
	ld.d	$a5, $a0, 120
	add.d	$a5, $a5, $a1
	ld.b	$a6, $a5, 19
	ld.b	$a7, $a5, 18
	ld.b	$t0, $a5, 17
	ld.b	$t1, $a5, 16
	ld.b	$t2, $a5, 23
	ld.b	$t3, $a5, 22
	ld.b	$t4, $a5, 21
	ld.b	$t5, $a5, 20
	ld.b	$t6, $a5, 27
	ld.b	$t7, $a5, 26
	ld.b	$t8, $a5, 25
	ld.b	$fp, $a5, 24
	ld.b	$s0, $a5, 31
	ld.b	$s1, $a5, 30
	ld.b	$s2, $a5, 29
	ld.b	$s3, $a5, 28
	st.b	$a6, $a5, 16
	st.b	$a7, $a5, 17
	st.b	$t0, $a5, 18
	st.b	$t1, $a5, 19
	st.b	$t2, $a5, 20
	st.b	$t3, $a5, 21
	st.b	$t4, $a5, 22
	st.b	$t5, $a5, 23
	st.b	$t6, $a5, 24
	st.b	$t7, $a5, 25
	st.b	$t8, $a5, 26
	st.b	$fp, $a5, 27
	st.b	$s0, $a5, 28
	st.b	$s1, $a5, 29
	st.b	$s2, $a5, 30
	st.b	$s3, $a5, 31
	ld.d	$a5, $a0, 120
	add.d	$a6, $a5, $a1
	ld.w	$a7, $a6, 32
	ld.w	$t0, $a6, 36
	revb.2w	$a7, $a7
	ld.w	$t1, $a6, 40
	st.w	$a7, $a6, 32
	revb.2w	$a7, $t0
	st.w	$a7, $a6, 36
	revb.2w	$a7, $t1
	addi.d	$a1, $a1, 64
	st.w	$a7, $a6, 40
	bne	$a4, $a1, .LBB27_14
# %bb.15:
	ld.d	$a1, $a0, 224
	ld.w	$fp, $a0, 240
	add.d	$s0, $a3, $a4
	beqz	$a1, .LBB27_19
# %bb.16:
	ld.b	$a3, $a0, 232
	andi	$a3, $a3, 1
	beqz	$a3, .LBB27_19
# %bb.17:
	move	$s1, $a0
	move	$a0, $a1
	move	$s2, $a2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$a0, $s1
	b	.LBB27_19
.LBB27_18:                              # %.thread223
	slli.d	$a1, $a4, 6
	add.d	$s0, $a3, $a1
.LBB27_19:                              # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit
	st.b	$zero, $a0, 232
	st.d	$s0, $a0, 224
	st.w	$fp, $a0, 212
	st.w	$fp, $a0, 216
	beqz	$a2, .LBB27_23
# %bb.20:                               # %.preheader
	ld.w	$a1, $a0, 240
	blez	$a1, .LBB27_23
# %bb.21:                               # %.lr.ph196.preheader
	addi.d	$a2, $s0, 8
	.p2align	4, , 16
.LBB27_22:                              # %.lr.ph196
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, -8
	ld.h	$a4, $a2, -6
	revb.2h	$a3, $a3
	st.h	$a3, $a2, -8
	ld.h	$a3, $a2, -4
	revb.2h	$a4, $a4
	st.h	$a4, $a2, -6
	ld.h	$a4, $a2, -2
	revb.2h	$a3, $a3
	st.h	$a3, $a2, -4
	ld.h	$a3, $a2, 0
	revb.2h	$a4, $a4
	st.h	$a4, $a2, -2
	ld.h	$a4, $a2, 2
	revb.2h	$a3, $a3
	st.h	$a3, $a2, 0
	ld.w	$a3, $a2, 4
	revb.2h	$a4, $a4
	ld.w	$a5, $a2, 8
	st.h	$a4, $a2, 2
	revb.2w	$a3, $a3
	st.w	$a3, $a2, 4
	revb.2w	$a3, $a5
	st.w	$a3, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB27_22
.LBB27_23:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end27:
	.size	_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb, .Lfunc_end27-_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btQuantizedBvhC2ERS_b      # -- Begin function _ZN14btQuantizedBvhC2ERS_b
	.p2align	5
	.type	_ZN14btQuantizedBvhC2ERS_b,@function
_ZN14btQuantizedBvhC2ERS_b:             # @_ZN14btQuantizedBvhC2ERS_b
	.cfi_startproc
# %bb.0:
	pcalau12i	$a2, %pc_hi20(_ZTV14btQuantizedBvh+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV14btQuantizedBvh+16)
	st.d	$a2, $a0, 0
	vld	$vr0, $a1, 8
	vst	$vr0, $a0, 8
	vld	$vr0, $a1, 24
	vst	$vr0, $a0, 24
	vld	$vr0, $a1, 40
	vst	$vr0, $a0, 40
	ori	$a1, $zero, 275
	st.w	$a1, $a0, 56
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 96
	st.d	$zero, $a0, 88
	st.d	$zero, $a0, 76
	st.b	$a1, $a0, 128
	st.d	$zero, $a0, 120
	st.d	$zero, $a0, 108
	st.b	$a1, $a0, 160
	st.d	$zero, $a0, 152
	st.d	$zero, $a0, 140
	st.b	$a1, $a0, 192
	st.d	$zero, $a0, 184
	st.d	$zero, $a0, 172
	st.b	$a1, $a0, 232
	st.d	$zero, $a0, 224
	st.d	$zero, $a0, 212
	ret
.Lfunc_end28:
	.size	_ZN14btQuantizedBvhC2ERS_b, .Lfunc_end28-_ZN14btQuantizedBvhC2ERS_b
	.cfi_endproc
                                        # -- End function
	.type	_ZTV14btQuantizedBvh,@object    # @_ZTV14btQuantizedBvh
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV14btQuantizedBvh
	.p2align	3, 0x0
_ZTV14btQuantizedBvh:
	.dword	0
	.dword	_ZTI14btQuantizedBvh
	.dword	_ZN14btQuantizedBvhD2Ev
	.dword	_ZN14btQuantizedBvhD0Ev
	.dword	_ZN14btQuantizedBvh9serializeEPvjb
	.size	_ZTV14btQuantizedBvh, 40

	.type	maxIterations,@object           # @maxIterations
	.bss
	.globl	maxIterations
	.p2align	2, 0x0
maxIterations:
	.word	0                               # 0x0
	.size	maxIterations, 4

	.type	_ZTI14btQuantizedBvh,@object    # @_ZTI14btQuantizedBvh
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI14btQuantizedBvh
	.p2align	3, 0x0
_ZTI14btQuantizedBvh:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS14btQuantizedBvh
	.size	_ZTI14btQuantizedBvh, 16

	.type	_ZTS14btQuantizedBvh,@object    # @_ZTS14btQuantizedBvh
	.section	.rodata,"a",@progbits
	.globl	_ZTS14btQuantizedBvh
_ZTS14btQuantizedBvh:
	.asciz	"14btQuantizedBvh"
	.size	_ZTS14btQuantizedBvh, 17

	.globl	_ZN14btQuantizedBvhC1Ev
	.type	_ZN14btQuantizedBvhC1Ev,@function
_ZN14btQuantizedBvhC1Ev = _ZN14btQuantizedBvhC2Ev
	.globl	_ZN14btQuantizedBvhD1Ev
	.type	_ZN14btQuantizedBvhD1Ev,@function
_ZN14btQuantizedBvhD1Ev = _ZN14btQuantizedBvhD2Ev
	.globl	_ZN14btQuantizedBvhC1ERS_b
	.type	_ZN14btQuantizedBvhC1ERS_b,@function
_ZN14btQuantizedBvhC1ERS_b = _ZN14btQuantizedBvhC2ERS_b
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
	.addrsig_sym _ZTI14btQuantizedBvh
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS14btQuantizedBvh
