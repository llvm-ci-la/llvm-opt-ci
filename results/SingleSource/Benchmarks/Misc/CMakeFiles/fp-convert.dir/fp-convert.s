	.file	"fp-convert.c"
	.text
	.globl	loop                            # -- Begin function loop
	.p2align	5
	.type	loop,@function
loop:                                   # @loop
# %bb.0:
	movgr2fr.d	$fa0, $zero
	blez	$a2, .LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_1
.LBB0_2:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	loop, .Lfunc_end0-loop
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2080
	sub.d	$sp, $sp, $a0
	move	$a0, $zero
	lu12i.w	$a1, 260096
	vreplgr2vr.d	$vr0, $a1
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a1, -209716
	ori	$a1, $a1, 3277
	lu12i.w	$a2, 104857
	ori	$a2, $a2, 2458
	lu12i.w	$a3, 255180
	ori	$a3, $a3, 3277
	lu32i.d	$a3, -209715
	lu52i.d	$a3, $a3, 988
	vreplgr2vr.d	$vr2, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr3, $a3, %pc_lo12(.LCPI1_0)
	lu12i.w	$a3, -2
	lu12i.w	$a4, 2
	ori	$a4, $a4, 8
	add.d	$a4, $sp, $a4
	lu12i.w	$a5, 2
	addi.d	$a6, $sp, 8
	lu12i.w	$a7, 122
	ori	$a7, $a7, 288
	fmov.d	$fa4, $fa1
	vori.b	$vr5, $vr0, 0
	.p2align	4, , 16
.LBB1_1:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_4 Depth 2
	mul.d	$t0, $a0, $a1
	rotri.w	$t0, $t0, 1
	sltu	$t0, $t0, $a2
	vfadd.s	$vr5, $vr5, $vr2
	vinsgr2vr.w	$vr6, $t0, 0
	vinsgr2vr.w	$vr6, $t0, 1
	vslli.w	$vr6, $vr6, 31
	vsrai.w	$vr6, $vr6, 31
	vbitsel.v	$vr5, $vr0, $vr5, $vr6
	vreplvei.w	$vr6, $vr5, 1
	vreplvei.w	$vr7, $vr5, 0
	move	$t0, $a3
	vori.b	$vr8, $vr3, 0
	.p2align	4, , 16
.LBB1_2:                                # %vector.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vffint.s.wu	$vr9, $vr8
	vfadd.s	$vr10, $vr6, $vr9
	add.d	$t1, $a4, $t0
	vstx	$vr10, $t1, $a5
	vfadd.s	$vr9, $vr7, $vr9
	add.d	$t1, $a6, $t0
	vstx	$vr9, $t1, $a5
	addi.d	$t0, $t0, 16
	vaddi.wu	$vr8, $vr8, 4
	bnez	$t0, .LBB1_2
# %bb.3:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$t0, $a3
	fmov.d	$fa6, $fa1
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a4, $t0
	fldx.s	$fa7, $t1, $a5
	add.d	$t1, $a6, $t0
	fldx.s	$ft0, $t1, $a5
	fcvt.d.s	$fa7, $fa7
	fcvt.d.s	$ft0, $ft0
	addi.d	$t0, $t0, 4
	fmadd.d	$fa6, $fa7, $ft0, $fa6
	bnez	$t0, .LBB1_4
# %bb.5:                                # %loop.exit
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.w	$a0, $a0, 1
	fadd.d	$fa4, $fa4, $fa6
	bne	$a0, $a7, .LBB1_1
# %bb.6:
	movfr2gr.d	$a1, $fa4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2080
	add.d	$sp, $sp, $a1
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Total is %g\n"
	.size	.L.str, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
