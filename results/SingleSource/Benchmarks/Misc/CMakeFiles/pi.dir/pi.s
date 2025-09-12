	.file	"pi.c"
	.text
	.globl	myadd                           # -- Begin function myadd
	.p2align	5
	.type	myadd,@function
myadd:                                  # @myadd
# %bb.0:
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
	ret
.Lfunc_end0:
	.size	myadd, .Lfunc_end0-myadd
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0x45b5a800                      # float 5813
.LCPI1_1:
	.word	0x47914780                      # float 74383
.LCPI1_2:
	.word	0x44a36000                      # float 1307
.LCPI1_3:
	.word	0x45aaf800                      # float 5471
.LCPI1_4:
	.word	0xc5aaf800                      # float -5471
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_5:
	.dword	0x418312d000000000              # double 4.0E+7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fs0, $zero
	ori	$s0, $zero, 1
	ori	$a1, $zero, 1907
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI1_0)
	lu12i.w	$fp, 9765
	ori	$a0, $fp, 2560
	lu12i.w	$a2, 6
	ori	$a2, $a2, 3035
	lu12i.w	$a3, -277387
	ori	$a3, $a3, 2603
	lu32i.d	$a3, 434130
	lu52i.d	$a3, $a3, 1804
	pcalau12i	$a4, %pc_hi20(.LCPI1_1)
	fld.s	$fa1, $a4, %pc_lo12(.LCPI1_1)
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	fld.s	$fa2, $a4, %pc_lo12(.LCPI1_2)
	pcalau12i	$a4, %pc_hi20(.LCPI1_3)
	fld.s	$fa3, $a4, %pc_lo12(.LCPI1_3)
	pcalau12i	$a4, %pc_hi20(.LCPI1_4)
	fld.s	$fa4, $a4, %pc_lo12(.LCPI1_4)
	lu12i.w	$a4, 18
	ori	$a4, $a4, 655
	vldi	$vr5, -1168
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $a2
	mulh.du	$a5, $a1, $a3
	srli.d	$a5, $a5, 15
	mul.d	$a5, $a5, $a4
	sub.d	$a1, $a1, $a5
	movgr2fr.d	$fa6, $a1
	ffint.s.l	$fa6, $fa6
	fdiv.s	$fa6, $fa6, $fa1
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa7, $fa0, $fa3
	ftintrz.l.s	$fa7, $fa7
	movfr2gr.d	$a5, $fa7
	movgr2fr.d	$fa7, $a5
	ffint.s.l	$fa7, $fa7
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fdiv.s	$fa7, $fa0, $fa3
	fmul.s	$ft0, $fa7, $fa7
	fmadd.s	$ft0, $fa6, $fa6, $ft0
	fcmp.cle.s	$fcc0, $ft0, $fa5
	fadd.s	$fs0, $fs0, $ft0
	movcf2gr	$a5, $fcc0
	addi.d	$a0, $a0, -1
	add.d	$s0, $s0, $a5
	bnez	$a0, .LBB1_1
# %bb.2:
	fcvt.d.s	$fa0, $fa6
	fcvt.d.s	$fa1, $fa7
	addi.w	$a3, $s0, 0
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a4, $fp, 2561
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $s0
	ffint.s.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_5)
	fcvt.d.s	$fa0, $fa0
	vldi	$vr2, -1008
	fmul.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fs0
	movgr2fr.d	$fa2, $zero
	fmul.d	$fa1, $fa1, $fa2
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a3, $fp, 2560
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	" x = %9.6f    y = %12.2f  low = %8d j = %7d\n"
	.size	.L.str.1, 45

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Pi = %9.6f ztot = %12.2f itot = %8d\n"
	.size	.L.str.2, 37

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Starting PI..."
	.size	.Lstr, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
