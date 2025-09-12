	.file	"main.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0x30000000                      # float 4.65661287E-10
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(glibc_compat_srand)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 830
	ori	$s0, $a0, 388
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	lu12i.w	$a0, 48
	ori	$s1, $a0, 3396
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 68
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a0, $zero, 68
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_0)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # %.preheader81
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	add.d	$s0, $s3, $fp
	fstx.s	$fa0, $s3, $fp
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 4
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 8
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 12
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 16
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 20
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 24
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 28
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 32
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 36
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 40
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 44
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 48
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 52
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 56
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s0, 60
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	addi.d	$fp, $fp, 68
	fst.s	$fa0, $s0, 64
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	bne	$fp, $s0, .LBB0_1
# %bb.2:                                # %.preheader79.preheader
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 4
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 8
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 12
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 16
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 20
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 24
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 28
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 32
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 36
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 40
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 44
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 48
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 52
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 56
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 60
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 64
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 68
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 72
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 76
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 80
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 84
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 88
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 92
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 96
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 100
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 104
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 108
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 112
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 116
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 120
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 124
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 128
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $s5, 132
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 136
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 253132
	ori	$a0, $a0, 3277
	bstrins.d	$a0, $a0, 61, 32
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	st.w	$zero, $s6, 0
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fstx.s	$fa0, $s6, $fp
	addi.d	$fp, $fp, 4
	bne	$fp, $s1, .LBB0_3
# %bb.4:                                # %.preheader.preheader
	ori	$a2, $zero, 68
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 68
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 100
	st.d	$a0, $sp, 40
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 24
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16
	st.d	$s3, $sp, 8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	lu12i.w	$a0, 12
	ori	$a0, $a0, 848
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	move	$a3, $s6
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	move	$a4, $s8
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	move	$a6, $s7
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bpnn_train_kernel)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	move	$a1, $zero
	move	$s8, $zero
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s3, 32
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	lu12i.w	$a0, 67108
	ori	$s3, $a0, 3539
	ori	$s2, $zero, 1000
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s7, $zero, 3
	ori	$s1, $zero, 15
	ori	$s4, $zero, 2
	ori	$s0, $zero, 16
	ori	$s6, $zero, 1
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s8, $s8, 68
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 17
	addi.w	$s5, $s5, -17
	addi.w	$s6, $s6, 17
	addi.w	$s0, $s0, 17
	addi.w	$s4, $s4, 17
	addi.w	$s1, $s1, 17
	addi.w	$s7, $s7, 17
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 17
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB0_40
.LBB0_6:                                # %.preheader34.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	addi.d	$a1, $zero, -1000
	mul.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$fp, $a1, $s8
	bne	$a0, $s5, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -32
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 1
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -28
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 2
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -24
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a0, $s7, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 3
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -20
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 4
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -16
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_16:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 5
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -12
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 6
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 7
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, -4
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 8
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_24:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 9
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 4
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_26:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 10
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_28:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 11
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 12
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 12
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 16
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_32:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 13
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 20
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_34:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 14
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 24
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_36:                               #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 15
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 28
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a0, $s0, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s2
	ori	$a1, $zero, 16
	sub.w	$a0, $a1, $a0
	bne	$a0, $s5, .LBB0_5
# %bb.39:                               #   in Loop: Header=BB0_6 Depth=1
	fld.s	$fa0, $fp, 32
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_5
.LBB0_40:                               # %.preheader.i
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	bpnn_dump                       # -- Begin function bpnn_dump
	.p2align	5
	.type	bpnn_dump,@function
bpnn_dump:                              # @bpnn_dump
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fmov.s	$fs0, $fa0
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a3
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	bltz	$s3, .LBB1_8
# %bb.1:                                # %.preheader34.lr.ph
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bltz	$a1, .LBB1_15
# %bb.2:                                # %.preheader34.preheader
	addi.w	$a0, $a1, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $s3, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	nor	$a0, $a1, $zero
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 67108
	ori	$s0, $a0, 3539
	ori	$s1, $zero, 1000
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	move	$s8, $zero
	move	$fp, $zero
	move	$s7, $zero
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %._crit_edge
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s7, $s7, 1
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$s7, $a0, .LBB1_8
.LBB1_4:                                # %.preheader34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	move	$s4, $s8
	move	$s6, $fp
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=2
	addi.d	$s2, $s2, 4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, -1
	addi.w	$s4, $s4, 1
	beqz	$s5, .LBB1_3
.LBB1_6:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	mul.d	$a0, $a0, $s0
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s1
	add.w	$a0, $s6, $a0
	bnez	$a0, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	fld.s	$fa0, $s2, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB1_5
.LBB1_8:                                # %.preheader33
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	bltz	$a0, .LBB1_15
# %bb.9:                                # %.preheader.preheader
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a1, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a2, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a3, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	nor	$a0, $a1, $zero
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 67108
	ori	$s6, $a0, 3539
	ori	$s7, $zero, 1000
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	move	$s8, $zero
	move	$s4, $zero
	move	$s1, $zero
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %._crit_edge41
                                        #   in Loop: Header=BB1_11 Depth=1
	addi.d	$s1, $s1, 1
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s5, $s5, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB1_15
.LBB1_11:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	move	$fp, $s8
	move	$s2, $s4
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=2
	addi.d	$s5, $s5, 4
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -1
	addi.w	$fp, $fp, 1
	beqz	$s3, .LBB1_10
.LBB1_13:                               #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $fp, 31, 0
	mul.d	$a0, $a0, $s6
	srli.d	$a0, $a0, 38
	mul.d	$a0, $a0, $s7
	add.w	$a0, $s2, $a0
	bnez	$a0, .LBB1_12
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=2
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB1_12
.LBB1_15:                               # %._crit_edge44
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end1:
	.size	bpnn_dump, .Lfunc_end1-bpnn_dump
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.6f\n"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%f\n"
	.size	.L.str.1, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
