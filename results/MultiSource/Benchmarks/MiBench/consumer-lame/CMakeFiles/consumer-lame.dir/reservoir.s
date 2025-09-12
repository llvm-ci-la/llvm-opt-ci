	.file	"reservoir.c"
	.text
	.globl	ResvFrameBegin                  # -- Begin function ResvFrameBegin
	.p2align	5
	.type	ResvFrameBegin,@function
ResvFrameBegin:                         # @ResvFrameBegin
# %bb.0:
	ld.d	$a1, $a0, 168
	beqz	$a1, .LBB0_2
# %bb.1:                                # %._crit_edge
	pcalau12i	$a1, %pc_hi20(ResvSize)
	ld.w	$a1, $a1, %pc_lo12(ResvSize)
	b	.LBB0_3
.LBB0_2:
	move	$a1, $zero
	pcalau12i	$a4, %pc_hi20(ResvSize)
	st.w	$zero, $a4, %pc_lo12(ResvSize)
.LBB0_3:
	ld.w	$a4, $a0, 192
	addi.d	$a4, $a4, -1
	sltui	$a4, $a4, 1
	ori	$a5, $zero, 2040
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 4088
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	ld.w	$a5, $a0, 200
	lu12i.w	$a6, 1
	ld.w	$a0, $a0, 72
	ori	$a6, $a6, 3584
	slt	$a7, $a6, $a3
	sub.w	$a3, $a6, $a3
	sltui	$a0, $a0, 1
	slt	$a6, $a3, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a7
	maskeqz	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(ResvMax)
	mul.d	$a0, $a5, $a2
	add.w	$a0, $a0, $a1
	st.w	$a3, $a4, %pc_lo12(ResvMax)
	ret
.Lfunc_end0:
	.size	ResvFrameBegin, .Lfunc_end0-ResvFrameBegin
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ResvMaxBits
.LCPI1_0:
	.dword	0x402e666666666666              # double 15.199999999999999
	.text
	.globl	ResvMaxBits
	.p2align	5
	.type	ResvMaxBits,@function
ResvMaxBits:                            # @ResvMaxBits
# %bb.0:
	pcalau12i	$a3, %pc_hi20(ResvMax)
	ld.w	$a4, $a3, %pc_lo12(ResvMax)
	pcalau12i	$a3, %pc_hi20(ResvSize)
	ld.w	$a3, $a3, %pc_lo12(ResvSize)
	alsl.wu	$a5, $a4, $a4, 3
	lu12i.w	$a6, -209716
	ori	$a6, $a6, 3277
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	srli.d	$a5, $a5, 35
	bge	$a5, $a3, .LBB1_2
# %bb.1:
	sub.d	$a5, $a3, $a5
	add.d	$a0, $a5, $a0
	b	.LBB1_3
.LBB1_2:
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a5, %pc_lo12(.LCPI1_0)
	move	$a5, $zero
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	sub.d	$a0, $a0, $a6
.LBB1_3:
	st.w	$a0, $a1, 0
	slli.d	$a0, $a4, 2
	alsl.d	$a0, $a4, $a0, 1
	bstrpick.d	$a0, $a0, 31, 1
	lu12i.w	$a1, -419431
	ori	$a1, $a1, 2458
	lu32i.d	$a1, 1
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 35
	slt	$a1, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	sub.d	$a0, $a0, $a5
	slli.d	$a1, $a0, 32
	srai.d	$a1, $a1, 63
	andn	$a0, $a0, $a1
	st.w	$a0, $a2, 0
	ret
.Lfunc_end1:
	.size	ResvMaxBits, .Lfunc_end1-ResvMaxBits
                                        # -- End function
	.globl	ResvAdjust                      # -- Begin function ResvAdjust
	.p2align	5
	.type	ResvAdjust,@function
ResvAdjust:                             # @ResvAdjust
# %bb.0:
	ld.w	$a0, $a0, 204
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(ResvSize)
	ld.w	$a4, $a2, %pc_lo12(ResvSize)
	div.w	$a0, $a3, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a4
	st.w	$a0, $a2, %pc_lo12(ResvSize)
	ret
.Lfunc_end2:
	.size	ResvAdjust, .Lfunc_end2-ResvAdjust
                                        # -- End function
	.globl	ResvFrameEnd                    # -- Begin function ResvFrameEnd
	.p2align	5
	.type	ResvFrameEnd,@function
ResvFrameEnd:                           # @ResvFrameEnd
# %bb.0:
	ld.w	$a0, $a0, 204
	addi.d	$a0, $a0, -2
	pcalau12i	$a3, %pc_hi20(ResvSize)
	ld.w	$a4, $a3, %pc_lo12(ResvSize)
	pcalau12i	$a5, %pc_hi20(ResvMax)
	ld.w	$a5, $a5, %pc_lo12(ResvMax)
	sltui	$a0, $a0, 1
	and	$a0, $a2, $a0
	add.w	$a0, $a4, $a0
	sub.d	$a2, $a0, $a5
	slli.d	$a4, $a2, 32
	srai.d	$a4, $a4, 63
	andn	$a2, $a2, $a4
	slt	$a4, $a0, $a5
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $a5, $a4
	or	$a0, $a0, $a4
	bstrpick.d	$a4, $a0, 62, 60
	add.w	$a4, $a0, $a4
	bstrins.d	$a4, $zero, 2, 0
	sub.d	$a0, $a0, $a4
	add.d	$a0, $a2, $a0
	st.w	$a4, $a3, %pc_lo12(ResvSize)
	st.w	$a0, $a1, 8
	ret
.Lfunc_end3:
	.size	ResvFrameEnd, .Lfunc_end3-ResvFrameEnd
                                        # -- End function
	.type	ResvSize,@object                # @ResvSize
	.local	ResvSize
	.comm	ResvSize,4,4
	.type	ResvMax,@object                 # @ResvMax
	.local	ResvMax
	.comm	ResvMax,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
