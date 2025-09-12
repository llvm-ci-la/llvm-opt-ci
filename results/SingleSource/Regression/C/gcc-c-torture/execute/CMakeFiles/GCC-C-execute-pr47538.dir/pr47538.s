	.file	"pr47538.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function foo
.LCPI0_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ld.d	$a2, $a1, 24
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 8
	fst.d	$fa0, $a0, 0
	fst.d	$fa1, $a0, 8
	beqz	$a2, .LBB0_3
# %bb.1:
	addi.d	$a3, $a2, 1
	fsub.d	$fa0, $fa1, $fa0
	ld.d	$a1, $a1, 16
	vldi	$vr1, -944
	ori	$a4, $zero, 2
	fmul.d	$fa0, $fa0, $fa1
	bne	$a3, $a4, .LBB0_4
# %bb.2:
	fld.d	$fa1, $a1, 0
	ld.d	$a0, $a0, 16
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, 8
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 0
	ret
.LBB0_3:
	ld.d	$a0, $a0, 16
	st.d	$zero, $a0, 0
	ret
.LBB0_4:                                # %.lr.ph
	move	$a6, $zero
	ld.d	$a0, $a0, 16
	movgr2fr.d	$fa1, $zero
	ori	$a7, $zero, 1
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa3, $a4, %pc_lo12(.LCPI0_0)
	vldi	$vr2, -912
	lu52i.d	$a5, $zero, 1107
	lu12i.w	$a4, 275200
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a1, $a6
	fldx.d	$fa4, $a1, $a6
	fld.d	$fa5, $t0, 16
	addi.d	$t0, $a7, 1
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa0, $fa4
	srli.d	$t1, $a7, 32
	or	$t1, $t1, $a5
	movgr2fr.d	$fa5, $t1
	fsub.d	$fa5, $fa5, $fa3
	bstrins.d	$a7, $a4, 63, 32
	movgr2fr.d	$fa6, $a7
	fadd.d	$fa5, $fa6, $fa5
	fdiv.d	$fa4, $fa4, $fa5
	add.d	$a7, $a0, $a6
	fst.d	$fa4, $a7, 8
	fmadd.d	$fa1, $fa2, $fa4, $fa1
	fneg.d	$fa2, $fa2
	addi.d	$a6, $a6, 8
	move	$a7, $t0
	bne	$a2, $t0, .LBB0_5
# %bb.6:                                # %._crit_edge
	alsl.d	$a1, $a2, $a1, 3
	fld.d	$fa4, $a1, -8
	slli.d	$a1, $a2, 3
	fmul.d	$fa0, $fa0, $fa4
	srli.d	$a2, $a3, 32
	or	$a2, $a2, $a5
	movgr2fr.d	$fa4, $a2
	fsub.d	$fa3, $fa4, $fa3
	bstrins.d	$a3, $a4, 63, 32
	movgr2fr.d	$fa4, $a3
	fadd.d	$fa3, $fa4, $fa3
	vldi	$vr4, -784
	fadd.d	$fa3, $fa3, $fa4
	fdiv.d	$fa0, $fa0, $fa3
	fstx.d	$fa0, $a0, $a1
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $a0, 0
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0x4024000000000000              # double 10
	.dword	0x4018000000000000              # double 6
.LCPI1_1:
	.dword	0x4024000000000000              # double 10
	.dword	0xc024000000000000              # double -10
.LCPI1_2:
	.dword	0x0000000000000000              # double 0
	.dword	0x4034000000000000              # double 20
.LCPI1_3:
	.dword	0xc024000000000000              # double -10
	.dword	0x405d800000000000              # double 118
.LCPI1_4:
	.dword	0x404e000000000000              # double 60
	.dword	0x4034000000000000              # double 20
.LCPI1_5:
	.dword	0xc034000000000000              # double -20
	.dword	0xc024000000000000              # double -10
.LCPI1_6:
	.dword	0x0000000000000000              # double 0
	.dword	0x405d800000000000              # double 118
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L__const.main.c)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.c)
	vld	$vr0, $a0, 16
	vld	$vr1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_0)
	vst	$vr0, $sp, 80
	vst	$vr1, $sp, 64
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 144
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L__const.main.e)
	addi.d	$fp, $a0, %pc_lo12(.L__const.main.e)
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $sp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_2)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_1)
	vfcmp.cune.d	$vr0, $vr0, $vr2
	vfcmp.cune.d	$vr1, $vr1, $vr3
	vpickev.w	$vr0, $vr1, $vr0
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	bnez	$a0, .LBB1_5
# %bb.1:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 120
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $sp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	pcalau12i	$a1, %pc_hi20(.LCPI1_4)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_3)
	vfcmp.cune.d	$vr0, $vr0, $vr2
	vfcmp.cune.d	$vr1, $vr1, $vr3
	vpickev.w	$vr0, $vr1, $vr0
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	bnez	$a0, .LBB1_5
# %bb.2:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $sp, 48
	ori	$a0, $zero, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_5)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_5)
	lu32i.d	$a0, -163840
	lu52i.d	$a0, $a0, 1029
	vreplgr2vr.d	$vr3, $a0
	vfcmp.cune.d	$vr0, $vr0, $vr2
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	vfcmp.cune.d	$vr1, $vr1, $vr3
	vpickev.w	$vr0, $vr1, $vr0
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	bnez	$a0, .LBB1_5
# %bb.3:
	vld	$vr0, $fp, 0
	vld	$vr1, $fp, 16
	st.d	$zero, $sp, 120
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_6)
	vld	$vr2, $sp, 48
	vfcmp.cune.d	$vr0, $vr0, $vr1
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vfcmp.cune.d	$vr1, $vr2, $vr1
	vpickev.w	$vr0, $vr1, $vr0
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	bnez	$a0, .LBB1_5
# %bb.4:
	move	$a0, $zero
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB1_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L__const.main.c,@object        # @__const.main.c
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.L__const.main.c:
	.dword	0x4024000000000000              # double 10
	.dword	0x4034000000000000              # double 20
	.dword	0x403e000000000000              # double 30
	.dword	0x4044000000000000              # double 40
	.size	.L__const.main.c, 32

	.type	.L__const.main.e,@object        # @__const.main.e
	.p2align	3, 0x0
.L__const.main.e:
	.dword	0x405d800000000000              # double 118
	.dword	0x405d800000000000              # double 118
	.dword	0x405d800000000000              # double 118
	.dword	0x405d800000000000              # double 118
	.size	.L__const.main.e, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
