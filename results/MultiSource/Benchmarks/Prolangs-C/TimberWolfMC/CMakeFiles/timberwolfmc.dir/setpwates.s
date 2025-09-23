	.file	"setpwates.c"
	.text
	.globl	setpwates                       # -- Begin function setpwates
	.p2align	5
	.type	setpwates,@function
setpwates:                              # @setpwates
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_5
# %bb.1:                                # %.lr.ph35
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(pinsPerLen)
	ld.d	$a2, $a2, %got_pc_lo12(pinsPerLen)
	addi.d	$a1, $a1, 1
	xvldrepl.d	$xr0, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 1
	xvldi	$xr1, -912
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB0_5
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	ld.d	$a3, $a3, 152
	beqz	$a3, .LBB0_2
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a3, 8
	xvfcmp.clt.d	$xr3, $xr0, $xr2
	xvfdiv.d	$xr2, $xr2, $xr0
	xvbitsel.v	$xr2, $xr1, $xr2, $xr3
	xvst	$xr2, $a3, 8
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB0_4
	b	.LBB0_2
.LBB0_5:                                # %._crit_edge36
	ret
.Lfunc_end0:
	.size	setpwates, .Lfunc_end0-setpwates
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
