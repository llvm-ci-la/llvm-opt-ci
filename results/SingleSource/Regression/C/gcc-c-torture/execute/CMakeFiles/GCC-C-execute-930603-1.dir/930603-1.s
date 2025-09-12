	.file	"930603-1.c"
	.text
	.globl	fx                              # -- Begin function fx
	.p2align	5
	.type	fx,@function
fx:                                     # @fx
# %bb.0:
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	lu12i.w	$a0, -279720
	ori	$a0, $a0, 2421
	lu32i.d	$a0, 158641
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa1, $fa0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	ret
.Lfunc_end0:
	.size	fx, .Lfunc_end0-fx
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.globl	inita                           # -- Begin function inita
	.p2align	5
	.type	inita,@function
inita:                                  # @inita
# %bb.0:
	vldi	$vr0, -1272
	ret
.Lfunc_end2:
	.size	inita, .Lfunc_end2-inita
                                        # -- End function
	.globl	initc                           # -- Begin function initc
	.p2align	5
	.type	initc,@function
initc:                                  # @initc
# %bb.0:
	vldi	$vr0, -1264
	ret
.Lfunc_end3:
	.size	initc, .Lfunc_end3-initc
                                        # -- End function
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	f, .Lfunc_end4-f
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
