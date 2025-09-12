	.file	"fldry.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Proc0)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	Proc0                           # -- Begin function Proc0
	.p2align	5
	.type	Proc0,@function
Proc0:                                  # @Proc0
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(PtrGlbNext)
	st.d	$fp, $a0, %pc_lo12(PtrGlbNext)
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(PtrGlb)
	st.d	$a0, $s0, %pc_lo12(PtrGlb)
	st.d	$fp, $a0, 0
	ori	$s1, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 10001
	st.d	$a1, $a0, 8
	ori	$s2, $zero, 0
	lu32i.d	$s2, 262144
	lu52i.d	$a1, $s2, 1028
	st.d	$a1, $a0, 16
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ld.d	$a2, $a1, 0
	vld	$vr0, $a1, 8
	ld.d	$a1, $a1, 23
	st.d	$a2, $a0, 24
	vst	$vr0, $a0, 32
	st.d	$a1, $a0, 47
	pcalau12i	$a0, %pc_hi20(Array2Glob)
	addi.d	$fp, $a0, %pc_lo12(Array2Glob)
	lu52i.d	$a0, $s2, 1026
	stptr.d	$a0, $fp, 3320
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 24414
	ori	$a0, $a0, 256
	lu32i.d	$s1, -262144
	lu52i.d	$a1, $s1, 1025
	vreplgr2vr.d	$vr0, $a1
	pcalau12i	$a2, %pc_hi20(Array1Glob)
	addi.d	$a2, $a2, %pc_lo12(Array1Glob)
	lu52i.d	$a3, $zero, 1026
	ori	$a4, $zero, 3320
	vldi	$vr1, -912
	lu52i.d	$a5, $s2, 1025
	.p2align	4, , 16
.LBB1_1:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, 64
	st.d	$a3, $a2, 304
	fldx.d	$fa2, $fp, $a4
	ld.d	$a6, $s0, %pc_lo12(PtrGlb)
	stptr.d	$a3, $fp, 3328
	stptr.d	$a3, $fp, 3336
	fadd.d	$fa2, $fa2, $fa1
	ld.d	$a7, $a6, 0
	fstx.d	$fa2, $fp, $a4
	stptr.d	$a1, $fp, 11488
	st.d	$a5, $a6, 16
	st.d	$a5, $a7, 16
	addi.w	$a0, $a0, -1
	st.d	$a7, $a7, 0
	bnez	$a0, .LBB1_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(Char1Glob)
	ori	$a1, $zero, 65
	st.b	$a1, $a0, %pc_lo12(Char1Glob)
	pcalau12i	$a0, %pc_hi20(BoolGlob)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(BoolGlob)
	pcalau12i	$a0, %pc_hi20(Char2Glob)
	ori	$a1, $zero, 66
	st.b	$a1, $a0, %pc_lo12(Char2Glob)
	pcalau12i	$a0, %pc_hi20(IntGlob)
	ori	$a1, $zero, 0
	lu32i.d	$a1, 262144
	lu52i.d	$a1, $a1, 1025
	st.d	$a1, $a0, %pc_lo12(IntGlob)
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	Proc0, .Lfunc_end1-Proc0
                                        # -- End function
	.globl	Proc1                           # -- Begin function Proc1
	.p2align	5
	.type	Proc1,@function
Proc1:                                  # @Proc1
# %bb.0:
	ori	$a1, $zero, 0
	ld.d	$a2, $a0, 0
	lu32i.d	$a1, 262144
	lu52i.d	$a1, $a1, 1025
	st.d	$a1, $a0, 16
	st.d	$a1, $a2, 16
	st.d	$a2, $a2, 0
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	Proc1, .Lfunc_end2-Proc1
                                        # -- End function
	.globl	Proc2                           # -- Begin function Proc2
	.p2align	5
	.type	Proc2,@function
Proc2:                                  # @Proc2
# %bb.0:
	pcalau12i	$a1, %pc_hi20(Char1Glob)
	ld.bu	$a1, $a1, %pc_lo12(Char1Glob)
	ori	$a2, $zero, 65
	bne	$a1, $a2, .LBB3_2
# %bb.1:
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -988
	pcalau12i	$a1, %pc_hi20(IntGlob)
	fld.d	$fa2, $a1, %pc_lo12(IntGlob)
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a0, 0
.LBB3_2:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	Proc2, .Lfunc_end3-Proc2
                                        # -- End function
	.globl	Proc3                           # -- Begin function Proc3
	.p2align	5
	.type	Proc3,@function
Proc3:                                  # @Proc3
# %bb.0:
	pcalau12i	$a1, %pc_hi20(PtrGlb)
	ld.d	$a2, $a1, %pc_lo12(PtrGlb)
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a0, $a1, %pc_lo12(PtrGlb)
	pcalau12i	$a1, %pc_hi20(IntGlob)
	fld.d	$fa0, $a1, %pc_lo12(IntGlob)
	addi.d	$a1, $a0, 16
	ori	$a0, $zero, 10
	pcaddu18i	$t8, %call36(Proc7)
	jr	$t8
.Lfunc_end4:
	.size	Proc3, .Lfunc_end4-Proc3
                                        # -- End function
	.globl	Proc4                           # -- Begin function Proc4
	.p2align	5
	.type	Proc4,@function
Proc4:                                  # @Proc4
# %bb.0:
	pcalau12i	$a0, %pc_hi20(Char2Glob)
	ori	$a1, $zero, 66
	st.b	$a1, $a0, %pc_lo12(Char2Glob)
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	Proc4, .Lfunc_end5-Proc4
                                        # -- End function
	.globl	Proc5                           # -- Begin function Proc5
	.p2align	5
	.type	Proc5,@function
Proc5:                                  # @Proc5
# %bb.0:
	pcalau12i	$a0, %pc_hi20(Char1Glob)
	ori	$a1, $zero, 65
	st.b	$a1, $a0, %pc_lo12(Char1Glob)
	pcalau12i	$a0, %pc_hi20(BoolGlob)
	st.w	$zero, $a0, %pc_lo12(BoolGlob)
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	Proc5, .Lfunc_end6-Proc5
                                        # -- End function
	.globl	Proc6                           # -- Begin function Proc6
	.p2align	5
	.type	Proc6,@function
Proc6:                                  # @Proc6
# %bb.0:
	lu12i.w	$a3, 2
	ori	$a4, $a3, 1809
	xor	$a2, $a0, $a4
	sltui	$a5, $a2, 1
	ori	$a2, $a3, 1810
	sub.d	$a6, $a2, $a5
	ori	$a5, $a3, 1808
	st.w	$a6, $a1, 0
	blt	$a5, $a0, .LBB7_4
# %bb.1:
	beqz	$a0, .LBB7_7
# %bb.2:
	ori	$a3, $a3, 1808
	bne	$a0, $a3, .LBB7_9
# %bb.3:
	pcalau12i	$a0, %pc_hi20(IntGlob)
	fld.d	$fa0, $a0, %pc_lo12(IntGlob)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa1, $a0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	masknez	$a5, $a2, $a0
	b	.LBB7_8
.LBB7_4:
	beq	$a0, $a4, .LBB7_8
# %bb.5:
	ori	$a2, $a3, 1811
	bne	$a0, $a2, .LBB7_9
# %bb.6:
	move	$a5, $a4
	b	.LBB7_8
.LBB7_7:
	move	$a5, $a0
.LBB7_8:                                # %.sink.split
	st.w	$a5, $a1, 0
.LBB7_9:
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	Proc6, .Lfunc_end7-Proc6
                                        # -- End function
	.globl	Proc7                           # -- Begin function Proc7
	.p2align	5
	.type	Proc7,@function
Proc7:                                  # @Proc7
# %bb.0:
	vldi	$vr2, -1024
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	Proc7, .Lfunc_end8-Proc7
                                        # -- End function
	.globl	Proc8                           # -- Begin function Proc8
	.p2align	5
	.type	Proc8,@function
Proc8:                                  # @Proc8
# %bb.0:
	vldi	$vr2, -1004
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$a3, $fa2
	alsl.d	$a2, $a3, $a0, 3
	slli.d	$a4, $a3, 3
	fstx.d	$fa1, $a0, $a4
	fst.d	$fa1, $a2, 8
	vldi	$vr1, -912
	fadd.d	$fa1, $fa0, $fa1
	fcmp.cult.d	$fcc0, $fa1, $fa0
	fst.d	$fa0, $a2, 240
	bcnez	$fcc0, .LBB9_3
# %bb.1:                                # %.lr.ph
	ori	$a0, $zero, 408
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a1, $a0
	vldi	$vr2, -912
	fmov.d	$fa3, $fa0
	.p2align	4, , 16
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a4, $fa4
	slli.d	$a4, $a4, 3
	fadd.d	$fa3, $fa3, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	fstx.d	$fa0, $a0, $a4
	bcnez	$fcc0, .LBB9_2
.LBB9_3:                                # %._crit_edge
	ori	$a0, $zero, 408
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a1, $a0
	alsl.d	$a0, $a3, $a0, 3
	fld.d	$fa0, $a0, -8
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, -8
	fld.d	$fa0, $a2, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4064
	fstx.d	$fa0, $a0, $a1
	pcalau12i	$a0, %pc_hi20(IntGlob)
	ori	$a1, $zero, 0
	lu32i.d	$a1, 262144
	lu52i.d	$a1, $a1, 1025
	st.d	$a1, $a0, %pc_lo12(IntGlob)
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	Proc8, .Lfunc_end9-Proc8
                                        # -- End function
	.globl	Func1                           # -- Begin function Func1
	.p2align	5
	.type	Func1,@function
Func1:                                  # @Func1
# %bb.0:
	xor	$a0, $a1, $a0
	andi	$a0, $a0, 255
	sltui	$a0, $a0, 1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1808
	maskeqz	$a0, $a1, $a0
	ret
.Lfunc_end10:
	.size	Func1, .Lfunc_end10-Func1
                                        # -- End function
	.globl	Func2                           # -- Begin function Func2
	.p2align	5
	.type	Func2,@function
Func2:                                  # @Func2
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	slt	$a0, $zero, $a0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	Func2, .Lfunc_end11-Func2
                                        # -- End function
	.globl	Func3                           # -- Begin function Func3
	.p2align	5
	.type	Func3,@function
Func3:                                  # @Func3
# %bb.0:
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1809
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end12:
	.size	Func3, .Lfunc_end12-Func3
                                        # -- End function
	.type	Version,@object                 # @Version
	.data
	.globl	Version
Version:
	.asciz	"1.1"
	.size	Version, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"calculate floating dhrystones using doubles size %d\n"
	.size	.L.str, 53

	.type	PtrGlbNext,@object              # @PtrGlbNext
	.bss
	.globl	PtrGlbNext
	.p2align	3, 0x0
PtrGlbNext:
	.dword	0
	.size	PtrGlbNext, 8

	.type	PtrGlb,@object                  # @PtrGlb
	.globl	PtrGlb
	.p2align	3, 0x0
PtrGlb:
	.dword	0
	.size	PtrGlb, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"DHRYSTONE PROGRAM, SOME STRING"
	.size	.L.str.1, 31

	.type	Array2Glob,@object              # @Array2Glob
	.bss
	.globl	Array2Glob
	.p2align	3, 0x0
Array2Glob:
	.space	20808
	.size	Array2Glob, 20808

	.type	BoolGlob,@object                # @BoolGlob
	.globl	BoolGlob
	.p2align	2, 0x0
BoolGlob:
	.word	0                               # 0x0
	.size	BoolGlob, 4

	.type	Array1Glob,@object              # @Array1Glob
	.globl	Array1Glob
	.p2align	3, 0x0
Array1Glob:
	.space	408
	.size	Array1Glob, 408

	.type	Char2Glob,@object               # @Char2Glob
	.globl	Char2Glob
Char2Glob:
	.byte	0                               # 0x0
	.size	Char2Glob, 1

	.type	Char1Glob,@object               # @Char1Glob
	.globl	Char1Glob
Char1Glob:
	.byte	0                               # 0x0
	.size	Char1Glob, 1

	.type	IntGlob,@object                 # @IntGlob
	.globl	IntGlob
	.p2align	3, 0x0
IntGlob:
	.dword	0x0000000000000000              # double 0
	.size	IntGlob, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
