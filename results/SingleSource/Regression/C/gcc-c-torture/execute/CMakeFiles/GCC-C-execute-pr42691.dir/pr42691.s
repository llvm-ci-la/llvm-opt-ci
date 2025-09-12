	.file	"pr42691.c"
	.text
	.globl	add                             # -- Begin function add
	.p2align	5
	.type	add,@function
add:                                    # @add
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_4
# %bb.1:                                # %.lr.ph.preheader
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fclass.d	$fa1, $fa1
	movfr2gr.d	$a2, $fa1
	andi	$a2, $a2, 64
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a2, $a2, 3
	fldx.d	$fa1, $a1, $a2
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	addi.w	$a0, $a0, 1
	bceqz	$fcc0, .LBB0_2
.LBB0_4:                                # %._crit_edge
	move	$a0, $zero
	ret
.LBB0_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	add, .Lfunc_end0-add
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0x7ff0000000000000              # double +Inf
	.dword	0x4037000000000000              # double 23
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	vst	$vr0, $sp, 0
	ori	$a0, $zero, 1
	lu52i.d	$a1, $zero, 2047
	movgr2fr.d	$fa1, $a1
	addi.d	$a1, $sp, 0
	vldi	$vr0, -969
	.p2align	4, , 16
.LBB1_1:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fclass.d	$fa1, $fa1
	movfr2gr.d	$a2, $fa1
	andi	$a2, $a2, 64
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a2, $a2, 3
	fldx.d	$fa1, $a2, $a1
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	addi.w	$a0, $a0, 1
	bceqz	$fcc0, .LBB1_1
# %bb.3:                                # %add.exit
	move	$a0, $zero
	addi.d	$sp, $sp, 16
	ret
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
