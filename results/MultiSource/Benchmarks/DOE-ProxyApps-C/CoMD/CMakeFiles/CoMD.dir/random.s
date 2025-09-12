	.file	"random.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gasdev
.LCPI0_0:
	.dword	0x3c20000000000000              # double 4.3368086899420177E-19
	.text
	.globl	gasdev
	.p2align	5
	.type	gasdev,@function
gasdev:                                 # @gasdev
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	ld.d	$a3, $a0, 0
	lu12i.w	$a1, -26794
	ori	$a1, $a1, 1813
	lu32i.d	$a1, 221293
	lu52i.d	$a1, $a1, 97
	ori	$a2, $zero, 9
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI0_0)
	vldi	$vr1, -784
	vldi	$vr2, -1024
	vldi	$vr3, -912
	movgr2fr.d	$fa4, $zero
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $a1
	mulh.du	$a4, $a3, $a2
	sub.d	$a5, $a3, $a4
	srli.d	$a5, $a5, 1
	add.d	$a4, $a5, $a4
	srli.d	$a4, $a4, 60
	slli.d	$a5, $a4, 61
	sub.d	$a4, $a4, $a5
	add.d	$a3, $a3, $a4
	movgr2fr.d	$fa5, $a3
	ffint.d.l	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa0
	fmadd.d	$fa5, $fa5, $fa2, $fa1
	mul.d	$a3, $a3, $a1
	mulh.du	$a4, $a3, $a2
	sub.d	$a5, $a3, $a4
	srli.d	$a5, $a5, 1
	add.d	$a4, $a5, $a4
	srli.d	$a4, $a4, 60
	slli.d	$a5, $a4, 61
	sub.d	$a4, $a4, $a5
	add.d	$a3, $a3, $a4
	movgr2fr.d	$fa6, $a3
	ffint.d.l	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa0
	fmadd.d	$fs1, $fa6, $fa2, $fa1
	fmul.d	$fa6, $fs1, $fs1
	fmadd.d	$fs0, $fa5, $fa5, $fa6
	fcmp.cle.d	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB0_1
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	fcmp.ceq.d	$fcc0, $fs0, $fa4
	bcnez	$fcc0, .LBB0_1
# %bb.3:
	st.d	$a3, $a0, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -896
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $fa0, $fs0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_5
.LBB0_4:                                # %.split
	fmul.d	$fa0, $fs1, $fa0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_5:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.Lfunc_end0:
	.size	gasdev, .Lfunc_end0-gasdev
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lcg61
.LCPI1_0:
	.dword	0x3c20000000000000              # double 4.3368086899420177E-19
	.text
	.globl	lcg61
	.p2align	5
	.type	lcg61,@function
lcg61:                                  # @lcg61
# %bb.0:
	ld.d	$a1, $a0, 0
	lu12i.w	$a2, -26794
	ori	$a2, $a2, 1813
	lu32i.d	$a2, 221293
	lu52i.d	$a2, $a2, 97
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 9
	mulh.du	$a2, $a1, $a2
	sub.d	$a3, $a1, $a2
	srli.d	$a3, $a3, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 60
	slli.d	$a3, $a2, 61
	sub.d	$a2, $a2, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI1_0)
	add.d	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	st.d	$a1, $a0, 0
	ret
.Lfunc_end1:
	.size	lcg61, .Lfunc_end1-lcg61
                                        # -- End function
	.globl	mkSeed                          # -- Begin function mkSeed
	.p2align	5
	.type	mkSeed,@function
mkSeed:                                 # @mkSeed
# %bb.0:
	add.d	$a1, $a1, $a0
	lu12i.w	$a2, -400521
	ori	$a2, $a2, 2481
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 0
	lu32i.d	$a2, 489905
	lu52i.d	$a2, $a2, -1565
	mul.d	$a2, $a0, $a2
	bstrins.d	$a2, $a1, 31, 0
	lu12i.w	$a0, -26794
	ori	$a0, $a0, 1813
	lu32i.d	$a0, 221293
	lu52i.d	$a0, $a0, 97
	mul.d	$a2, $a2, $a0
	ori	$a1, $zero, 9
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a0
	mulh.du	$a3, $a2, $a1
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 60
	slli.d	$a4, $a3, 61
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	mul.d	$a0, $a2, $a0
	mulh.du	$a1, $a0, $a1
	sub.d	$a2, $a0, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 60
	slli.d	$a2, $a1, 61
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end2:
	.size	mkSeed, .Lfunc_end2-mkSeed
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
