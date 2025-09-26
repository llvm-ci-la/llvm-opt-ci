	.file	"memset-4.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	st.d	$zero, $a0, 7
	st.d	$zero, $a0, 0
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	vinsgr2vr.d	$vr0, $a0, 0
	vseqi.b	$vr0, $vr0, 0
	vsllwil.h.b	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vseqi.b	$vr1, $vr1, 0
	vsllwil.h.b	$vr1, $vr1, 0
	vsllwil.w.h	$vr1, $vr1, 0
	vpickve2gr.h	$a0, $vr0, 0
	vinsgr2vr.w	$vr2, $a0, 0
	vpickve2gr.h	$a0, $vr0, 1
	vinsgr2vr.w	$vr2, $a0, 1
	vpickve2gr.h	$a0, $vr0, 2
	vinsgr2vr.w	$vr2, $a0, 2
	vpickve2gr.h	$a0, $vr0, 3
	vinsgr2vr.w	$vr2, $a0, 3
	vand.v	$vr1, $vr2, $vr1
	vpickve2gr.w	$a0, $vr1, 0
	vinsgr2vr.h	$vr2, $a0, 0
	vpickve2gr.w	$a0, $vr1, 1
	vinsgr2vr.h	$vr2, $a0, 1
	vpickve2gr.w	$a0, $vr1, 2
	vinsgr2vr.h	$vr2, $a0, 2
	vpickve2gr.w	$a0, $vr1, 3
	vinsgr2vr.h	$vr2, $a0, 3
	vshuf4i.d	$vr2, $vr0, 12
	vslli.h	$vr0, $vr2, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB1_4
# %bb.1:
	ld.b	$a0, $sp, 20
	ld.b	$a1, $sp, 21
	or	$a0, $a1, $a0
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_4
# %bb.2:
	ld.bu	$a0, $sp, 22
	bnez	$a0, .LBB1_4
# %bb.3:
	move	$a0, $zero
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
