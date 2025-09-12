	.file	"mytimer.cpp"
	.text
	.globl	_ZN6miniFE7mytimerEv            # -- Begin function _ZN6miniFE7mytimerEv
	.p2align	5
	.type	_ZN6miniFE7mytimerEv,@function
_ZN6miniFE7mytimerEv:                   # @_ZN6miniFE7mytimerEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(gettimeofday)
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
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN6miniFE7mytimerEv, .Lfunc_end0-_ZN6miniFE7mytimerEv
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
