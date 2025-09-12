	.file	"fill.c"
	.text
	.globl	fill                            # -- Begin function fill
	.p2align	5
	.type	fill,@function
fill:                                   # @fill
# %bb.0:
	pcalau12i	$a1, %pc_hi20(fill_level)
	beqz	$a0, .LBB0_4
# %bb.1:
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -1004
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -64
	lu52i.d	$a0, $a0, 1038
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ori	$a0, $zero, 5
	st.w	$a2, $a1, %pc_lo12(fill_level)
	blt	$a0, $a2, .LBB0_5
# %bb.2:
	blez	$a2, .LBB0_6
# %bb.3:
	move	$a0, $zero
	ret
.LBB0_4:
	move	$a0, $zero
.LBB0_5:                                # %.sink.split
	st.w	$a0, $a1, %pc_lo12(fill_level)
	move	$a0, $zero
	ret
.LBB0_6:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, %pc_lo12(fill_level)
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	fill, .Lfunc_end0-fill
                                        # -- End function
	.type	fill_level,@object              # @fill_level
	.bss
	.globl	fill_level
	.p2align	2, 0x0
fill_level:
	.word	0                               # 0x0
	.size	fill_level, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
