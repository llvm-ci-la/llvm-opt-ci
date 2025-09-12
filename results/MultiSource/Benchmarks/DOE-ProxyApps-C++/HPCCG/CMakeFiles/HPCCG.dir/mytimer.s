	.file	"mytimer.cpp"
	.text
	.globl	_Z7mytimerv                     # -- Begin function _Z7mytimerv
	.p2align	5
	.type	_Z7mytimerv,@function
_Z7mytimerv:                            # @_Z7mytimerv
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 8
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$a0, $a0, 1042
	movgr2fr.d	$fa2, $a0
	fdiv.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end0:
	.size	_Z7mytimerv, .Lfunc_end0-_Z7mytimerv
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
