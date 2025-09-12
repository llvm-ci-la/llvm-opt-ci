	.file	"almabench.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function anpm
.LCPI0_0:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI0_2:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
	.dword	0xc01921fb54442d18              # double -6.2831853071795862
	.text
	.globl	anpm
	.p2align	5
	.type	anpm,@function
anpm:                                   # @anpm
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	fabs.d	$fa1, $fa0
	ld.d	$a0, $sp, 16
	movgr2cf	$fcc0, $a0
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_1)
	fldx.d	$fa2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_2)
	fsub.d	$fa2, $fa0, $fa2
	fcmp.cult.d	$fcc0, $fa1, $fa3
	fsel	$fa0, $fa2, $fa0, $fcc0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	anpm, .Lfunc_end0-anpm
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function planetpv
.LCPI1_0:
	.dword	0xc142b42c80000000              # double -2451545
.LCPI1_1:
	.dword	0x41164b0800000000              # double 365250
.LCPI1_2:
	.dword	0x40ac200000000000              # double 3600
.LCPI1_3:
	.dword	0x3ed455a5b2ff8f9d              # double 4.8481368110953598E-6
.LCPI1_4:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI1_5:
	.dword	0x3fd702a41f2e9970              # double 0.35953619999999997
.LCPI1_6:
	.dword	0x3e7ad7f29abcaf48              # double 9.9999999999999995E-8
.LCPI1_8:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI1_9:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
.LCPI1_10:
	.dword	0x3f919d6d51a6b69a              # double 0.017202098950000001
.LCPI1_11:
	.dword	0xbfd9752e50f4b399              # double -0.39777715593191371
.LCPI1_12:
	.dword	0x3fed5c0357681ef3              # double 0.91748206206918181
.LCPI1_13:
	.dword	0x3fd9752e50f4b399              # double 0.39777715593191371
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI1_7:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
	.dword	0xc01921fb54442d18              # double -6.2831853071795862
	.text
	.globl	planetpv
	.p2align	5
	.type	planetpv,@function
planetpv:                               # @planetpv
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 512                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 504                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 488                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 480                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 472                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 456                  # 8-byte Folded Spill
	fld.d	$fa0, $a0, 0
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI1_0)
	fld.d	$fa2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI1_1)
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	move	$fp, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fs0, $fa0, $fa3
	alsl.d	$a0, $a1, $a1, 1
	slli.d	$s1, $a0, 3
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	add.d	$a1, $a0, $s1
	fldx.d	$fa0, $a0, $s1
	fst.d	$fa0, $sp, 400                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 8
	fst.d	$fa0, $sp, 392                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 16
	fst.d	$fa0, $sp, 384                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dlm)
	addi.d	$a0, $a0, %pc_lo12(dlm)
	add.d	$a1, $a0, $s1
	fldx.d	$fa0, $a0, $s1
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a1, 16
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_3)
	fmadd.d	$fa1, $fa2, $fs0, $fa1
	fmul.d	$fa1, $fs0, $fa1
	fmadd.d	$fa0, $fa0, $fs2, $fa1
	fmul.d	$fs4, $fa0, $fs1
	pcalau12i	$a0, %pc_hi20(e)
	addi.d	$a0, $a0, %pc_lo12(e)
	add.d	$a1, $a0, $s1
	fldx.d	$fa0, $a0, $s1
	fst.d	$fa0, $sp, 136                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 8
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 16
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(pi)
	addi.d	$a0, $a0, %pc_lo12(pi)
	add.d	$a1, $a0, $s1
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 16
	fldx.d	$fa2, $a0, $s1
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fa2, $fs2, $fa0
	fmul.d	$fa0, $fa0, $fs1
	movgr2fr.d	$fa1, $zero
	fst.d	$fa1, $sp, 352                  # 8-byte Folded Spill
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_4)
	fmov.d	$fa1, $fs3
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dinc)
	addi.d	$a0, $a0, %pc_lo12(dinc)
	add.d	$a1, $a0, $s1
	fldx.d	$fa0, $a0, $s1
	fst.d	$fa0, $sp, 376                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 8
	fst.d	$fa0, $sp, 368                  # 8-byte Folded Spill
	fld.d	$fa0, $a1, 16
	fst.d	$fa0, $sp, 360                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(omega)
	addi.d	$a0, $a0, %pc_lo12(omega)
	add.d	$a1, $a0, $s1
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 16
	fldx.d	$fa2, $a0, $s1
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fs2, $sp, 408                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs2, $fa0
	fst.d	$fs1, $sp, 416                  # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fs1
	fst.d	$fa0, $sp, 344                  # 8-byte Folded Spill
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_5)
	fst.d	$fa0, $sp, 440                  # 8-byte Folded Spill
	fmul.d	$fs3, $fs0, $fa1
	alsl.d	$a0, $fp, $fp, 3
	slli.d	$s7, $a0, 3
	pcalau12i	$a0, %pc_hi20(kp)
	addi.d	$a0, $a0, %pc_lo12(kp)
	add.d	$a1, $a0, $s7
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a1, $fp, 6
	st.d	$fp, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$s8, $fp, $a1, 4
	pcalau12i	$a1, %pc_hi20(kq)
	addi.d	$a1, $a1, %pc_lo12(kq)
	add.d	$s1, $a1, $s8
	pcalau12i	$a2, %pc_hi20(ca)
	addi.d	$a2, $a2, %pc_lo12(ca)
	add.d	$s6, $a2, $s7
	pcalau12i	$a3, %pc_hi20(sa)
	addi.d	$fp, $a3, %pc_lo12(sa)
	add.d	$s5, $fp, $s7
	pcalau12i	$a3, %pc_hi20(cl)
	addi.d	$s0, $a3, %pc_lo12(cl)
	add.d	$s2, $s0, $s8
	pcalau12i	$a3, %pc_hi20(sl)
	addi.d	$s4, $a3, %pc_lo12(sl)
	fldx.d	$fa0, $a0, $s7
	fldx.d	$fa1, $a1, $s8
	fldx.d	$fa2, $a2, $s7
	fst.d	$fa2, $sp, 336                  # 8-byte Folded Spill
	add.d	$s3, $s4, $s8
	fmul.d	$fs1, $fs3, $fa0
	fmul.d	$fs2, $fs3, $fa1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $fp, $s7
	fst.d	$fa1, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 320                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fldx.d	$fs5, $s0, $s8
	fst.d	$fa0, $sp, 312                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fldx.d	$fs7, $s4, $s8
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs7, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.d	$fs7, $a0, %pc_lo12(.LCPI1_6)
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa1, $fp, 8
	fld.d	$fa2, $s1, 8
	fld.d	$fa3, $s6, 8
	fst.d	$fa3, $sp, 304                  # 8-byte Folded Spill
	fmadd.d	$fs4, $fa0, $fs7, $fs4
	fmul.d	$fs1, $fs3, $fa1
	fmul.d	$fs2, $fs3, $fa2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 8
	fst.d	$fa1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 288                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $s2, 8
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 8
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fld.d	$fa1, $fp, 16
	fld.d	$fa2, $s1, 16
	fld.d	$fa3, $s6, 16
	fst.d	$fa3, $sp, 272                  # 8-byte Folded Spill
	fmadd.d	$fs4, $fa0, $fs7, $fs4
	fmul.d	$fs1, $fs3, $fa1
	fmul.d	$fs2, $fs3, $fa2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 16
	fst.d	$fa1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 256                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $s2, 16
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 16
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fld.d	$fa1, $fp, 24
	fld.d	$fa2, $s1, 24
	fld.d	$fa3, $s6, 24
	fst.d	$fa3, $sp, 240                  # 8-byte Folded Spill
	fmadd.d	$fs4, $fa0, $fs7, $fs4
	fmul.d	$fs1, $fs3, $fa1
	fmul.d	$fs2, $fs3, $fa2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 24
	fst.d	$fa1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 224                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $s2, 24
	fst.d	$fa0, $sp, 216                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 24
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fld.d	$fa1, $fp, 32
	fld.d	$fa2, $s1, 32
	fld.d	$fa3, $s6, 32
	fst.d	$fa3, $sp, 208                  # 8-byte Folded Spill
	fmadd.d	$fs4, $fa0, $fs7, $fs4
	fmul.d	$fs1, $fs3, $fa1
	fmul.d	$fs2, $fs3, $fa2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 32
	fst.d	$fa1, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $s2, 32
	fst.d	$fa0, $sp, 184                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 32
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fld.d	$fa1, $fp, 40
	fld.d	$fa2, $s1, 40
	fld.d	$fa3, $s6, 40
	fst.d	$fa3, $sp, 168                  # 8-byte Folded Spill
	fmadd.d	$fs4, $fa0, $fs7, $fs4
	fmul.d	$fs1, $fs3, $fa1
	fmul.d	$fs2, $fs3, $fa2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 40
	fst.d	$fa1, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $s2, 40
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 40
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fld.d	$fa1, $fp, 48
	fld.d	$fa2, $s1, 48
	fld.d	$fa3, $s6, 48
	fst.d	$fa3, $sp, 120                  # 8-byte Folded Spill
	fmadd.d	$fs4, $fa0, $fs7, $fs4
	fmul.d	$fs1, $fs3, $fa1
	fmul.d	$fs2, $fs3, $fa2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 48
	fst.d	$fa1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $s2, 48
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 48
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fld.d	$fa1, $fp, 56
	fld.d	$fa2, $s1, 56
	fld.d	$fa3, $s6, 56
	fst.d	$fa3, $sp, 72                   # 8-byte Folded Spill
	fmadd.d	$fs1, $fa0, $fs7, $fs4
	fmul.d	$fs2, $fs3, $fa1
	fmul.d	$fs4, $fs3, $fa2
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 56
	fst.d	$fa1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $s2, 56
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 56
	fmov.d	$fs5, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $fp, 64
	fld.d	$fa2, $s6, 64
	fst.d	$fa2, $sp, 64                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fs2, $fs5, $fa0
	fmadd.d	$fs2, $fa0, $fs7, $fs1
	fmul.d	$fs4, $fs3, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s5, 64
	fst.d	$fa1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s1, 64
	fld.d	$fs4, $s2, 64
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fmul.d	$fs5, $fs3, $fa1
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs6, $s3, 64
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs4, $fs1, $fa0
	fld.d	$fa1, $s1, 72
	fld.d	$fs4, $s2, 72
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs2, $fa0, $fs7, $fs2
	fmul.d	$fs1, $fs3, $fa1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs3, $s3, 72
	fmov.d	$fs5, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs3, $fa0
	fmadd.d	$fa0, $fs4, $fs5, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fa0, $fs7, $fs2
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fa2, $fs0, $fa1
	fld.d	$fs3, $sp, 136                  # 8-byte Folded Reload
	fmadd.d	$fs5, $fs2, $fs0, $fs3
	fmov.d	$fs6, $fs0
	fld.d	$fa3, $sp, 112                  # 8-byte Folded Reload
	fabs.d	$fa1, $fa3
	ld.d	$a0, $sp, 128
	movgr2cf	$fcc0, $a0
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.LCPI1_7)
	addi.d	$s1, $a1, %pc_lo12(.LCPI1_7)
	fldx.d	$fa2, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI1_8)
	fsub.d	$fa2, $fa3, $fa2
	fst.d	$fa4, $sp, 128                  # 8-byte Folded Spill
	fcmp.cult.d	$fcc0, $fa1, $fa4
	fsel	$fs4, $fa2, $fa3, $fcc0
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	fsub.d	$fs0, $fa0, $fs4
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs1, $fs5, $fa0, $fs0
	fst.d	$fs6, $sp, 112                  # 8-byte Folded Spill
	fnmadd.d	$fs6, $fs2, $fs6, $fs3
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fsub.d	$fs2, $fs0, $fs1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs3, $fs5, $fa0, $fs2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_9)
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs3, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs1, $fa0
	fst.d	$fs5, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 136                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB1_10
# %bb.1:
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.2:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.3:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.4:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.5:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.6:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.7:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.8:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs2
	fadd.d	$fs3, $fs3, $fa0
	bcnez	$fcc0, .LBB1_10
# %bb.9:
	fsub.d	$fs1, $fs0, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fmadd.d	$fa0, $fs6, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	fadd.d	$fs3, $fs3, $fa0
.LBB1_10:
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa1, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 88                   # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 144                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 152                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fld.d	$fa3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 184                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $fa4
	fld.d	$fa4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 192                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa4, $fa5, $fa3
	fld.d	$fa4, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 216                  # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fa5
	fld.d	$fa5, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 224                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fld.d	$fa5, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 248                  # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fa6
	fld.d	$fa6, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 256                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fld.d	$fa6, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 280                  # 8-byte Folded Reload
	fmul.d	$fa6, $fa6, $fa7
	fld.d	$fa7, $sp, 304                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 288                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft0, $fa6
	fld.d	$fa7, $sp, 328                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 312                  # 8-byte Folded Reload
	fmul.d	$fa7, $fa7, $ft0
	fld.d	$ft0, $sp, 336                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 320                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft1, $fa7
	fld.d	$ft0, $sp, 352                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 344                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $ft1, $ft0
	fld.d	$ft3, $sp, 440                  # 8-byte Folded Reload
	fabs.d	$ft0, $ft3
	fld.d	$ft1, $sp, 128                  # 8-byte Folded Reload
	fcmp.cult.d	$fcc1, $ft0, $ft1
	fld.d	$ft0, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$ft0, $ft0, $ft1
	fld.d	$ft1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 32                   # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft2, $ft0
	fld.d	$ft1, $sp, 392                  # 8-byte Folded Reload
	fld.d	$ft2, $sp, 384                  # 8-byte Folded Reload
	fld.d	$ft4, $sp, 112                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft4, $ft1
	fld.d	$ft2, $sp, 400                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $ft4, $ft2
	fmadd.d	$fa7, $fa7, $fs7, $ft1
	fmadd.d	$fa6, $fa6, $fs7, $fa7
	fmadd.d	$fa5, $fa5, $fs7, $fa6
	fmadd.d	$fa4, $fa4, $fs7, $fa5
	fmadd.d	$fa3, $fa3, $fs7, $fa4
	fmadd.d	$fa2, $fa2, $fs7, $fa3
	fmadd.d	$fa1, $fa1, $fs7, $fa2
	fmadd.d	$fa0, $fa0, $fs7, $fa1
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $s1, $a0
	fmul.d	$fa2, $ft4, $ft0
	fmadd.d	$fs7, $fa2, $fs7, $fa0
	fld.d	$fa0, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 360                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft4, $fa0
	fsub.d	$fs4, $ft3, $fa1
	fmul.d	$fa0, $ft4, $fa0
	fld.d	$fa1, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 376                  # 8-byte Folded Reload
	fmadd.d	$fs6, $fa2, $fa1, $fa0
	vldi	$vr1, -928
	vldi	$vr0, -912
	fld.d	$fa3, $sp, 448                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa3, $fa0
	fsub.d	$fa0, $fa0, $fa3
	fdiv.d	$fa0, $fa2, $fa0
	fsqrt.d	$fs2, $fa0
	fcmp.cor.d	$fcc0, $fs2, $fs2
	fmul.d	$fs1, $fs3, $fa1
	bceqz	$fcc0, .LBB1_14
.LBB1_11:                               # %.split
	fsel	$fs0, $fs4, $ft3, $fcc1
	fld.d	$fa0, $sp, 416                  # 8-byte Folded Reload
	fmul.d	$fs6, $fs6, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fadd.d	$fs4, $fa0, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fld.d	$fs5, $sp, 136                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fs5, $fa0, $fa1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(amas)
	addi.d	$a1, $a1, %pc_lo12(amas)
	fldx.d	$fa0, $a1, $a0
	frecip.d	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fs7, $fs7
	fmul.d	$fa1, $fs7, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_15
.LBB1_12:                               # %.split.split
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_10)
	fmul.d	$fa2, $fs7, $fs1
	fst.d	$fa2, $sp, 424                  # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 440                  # 8-byte Folded Spill
	vldi	$vr0, -928
	fmul.d	$fs1, $fs6, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fs7, $sp, 416                  # 8-byte Folded Spill
	fmul.d	$fs7, $fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs6, $fs2, $fa0
	fld.d	$fs3, $sp, 176                  # 8-byte Folded Reload
	fadd.d	$fs2, $fs3, $fs4
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fneg.d	$fa0, $fs0
	fmul.d	$fa0, $fs7, $fa0
	fmadd.d	$fa2, $fs6, $fs2, $fa0
	vldi	$vr0, -912
	fld.d	$fs4, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fs5, $fs4, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fadd.d	$fa2, $fa2, $fa2
	fst.d	$fa2, $sp, 408                  # 8-byte Folded Spill
	bceqz	$fcc0, .LBB1_16
.LBB1_13:                               # %.split.split.split
	fld.d	$fa1, $sp, 416                  # 8-byte Folded Reload
	fdiv.d	$fs5, $fa1, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 416                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fa0, $fs4, $fa0, $fs0
	fmul.d	$fs1, $fs5, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmadd.d	$fa0, $fs4, $fa0, $fs2
	fmul.d	$fa0, $fs5, $fa0
	fadd.d	$fa1, $fs6, $fs6
	fld.d	$fa4, $sp, 408                  # 8-byte Folded Reload
	fneg.d	$fa2, $fa4
	fmadd.d	$fa3, $fa2, $fs6, $fs2
	fld.d	$fa7, $sp, 424                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa7, $fa3
	fmadd.d	$fa4, $fa4, $fs7, $fs0
	fmul.d	$fa4, $fa7, $fa4
	fld.d	$ft1, $sp, 416                  # 8-byte Folded Reload
	fmul.d	$fa2, $ft1, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI1_11)
	fld.d	$fa5, $a0, %pc_lo12(.LCPI1_11)
	pcalau12i	$a0, %pc_hi20(.LCPI1_12)
	fld.d	$fa6, $a0, %pc_lo12(.LCPI1_12)
	fmul.d	$fa2, $fa7, $fa2
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	fst.d	$fa3, $a1, 0
	fmul.d	$fa3, $fa2, $fa5
	fmadd.d	$fa3, $fa4, $fa6, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI1_13)
	fld.d	$fa7, $a0, %pc_lo12(.LCPI1_13)
	fst.d	$fa3, $a1, 8
	fmul.d	$fa3, $fs7, $fa1
	fmul.d	$fa2, $fa2, $fa6
	fmadd.d	$fa2, $fa4, $fa7, $fa2
	fst.d	$fa2, $a1, 16
	vldi	$vr2, -784
	fmadd.d	$fa1, $fa1, $fs6, $fa2
	fmul.d	$fa2, $fa3, $fa0
	fmadd.d	$fa1, $fa1, $fs1, $fa2
	fld.d	$ft0, $sp, 440                  # 8-byte Folded Reload
	fmul.d	$fa1, $ft0, $fa1
	vldi	$vr2, -896
	fmul.d	$fa2, $fs7, $fa2
	vldi	$vr4, -912
	fmadd.d	$fa2, $fa2, $fs7, $fa4
	fneg.d	$fa4, $fs1
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa2, $fa2, $fa0, $fa3
	fmul.d	$fa2, $ft0, $fa2
	fadd.d	$fa3, $ft1, $ft1
	fmul.d	$fa0, $fs7, $fa0
	fmadd.d	$fa0, $fs6, $fs1, $fa0
	fmul.d	$fa0, $fa3, $fa0
	fmul.d	$fa0, $ft0, $fa0
	fst.d	$fa1, $a1, 24
	fmul.d	$fa1, $fa0, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fst.d	$fa1, $a1, 32
	fmul.d	$fa0, $fa0, $fa6
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fst.d	$fa0, $a1, 40
	fld.d	$fs7, $sp, 456                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 464                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 472                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 480                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 496                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 504                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 512                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB1_14:                               # %call.sqrt
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408
	movgr2cf	$fcc1, $a0
	fld.d	$ft3, $sp, 440                  # 8-byte Folded Reload
	fmov.d	$fs2, $fa0
	b	.LBB1_11
.LBB1_15:                               # %call.sqrt191
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB1_12
.LBB1_16:                               # %call.sqrt192
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB1_13
.Lfunc_end1:
	.size	planetpv, .Lfunc_end1-planetpv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function radecdist
.LCPI2_0:
	.dword	0x400e8ec8a4aeacc4              # double 3.8197186342054881
.LCPI2_1:
	.dword	0x404ca5dc1a63c1f8              # double 57.295779513082323
	.text
	.globl	radecdist
	.p2align	5
	.type	radecdist,@function
radecdist:                              # @radecdist
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a0, 16
	move	$s0, $a1
	fmul.d	$fa0, $fa0, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fsqrt.d	$fs0, $fa0
	fst.d	$fs0, $a1, 16
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $a0, 0
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -968
	fadd.d	$fa1, $fa0, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s0, 0
	fld.d	$fa0, $fp, 16
	fdiv.d	$fa0, $fa0, $fs0
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_1)
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 8
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	radecdist, .Lfunc_end2-radecdist
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI3_0:
	.dword	0x4142b42c80000000              # double 2451545
.LCPI3_1:
	.dword	0x404ca5dc1a63c1f8              # double 57.295779513082323
.LCPI3_2:
	.dword	0x400e8ec8a4aeacc4              # double 3.8197186342054881
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.loopexit.split
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 312                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 264                  # 8-byte Folded Spill
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	lu12i.w	$a0, 8
	ori	$s0, $a0, 3757
	vldi	$vr1, -912
	ori	$s1, $zero, 20
	.p2align	4, , 16
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	st.d	$zero, $sp, 256
	move	$s2, $s0
	fld.d	$fa2, $sp, 56                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fa2, $sp, 248
	addi.d	$a0, $sp, 248
	addi.d	$a2, $sp, 200
	move	$a1, $zero
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs0, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs0, $fs0, $fa2
	fsqrt.d	$fs1, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fs0, $fs1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs0, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs0, $fs0, $fa2
	fsqrt.d	$fs1, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 160                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fs0, $fs1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs0, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs0, $fs0, $fa2
	fsqrt.d	$fs1, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fs0, $fs1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 120                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs0, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs0, $fs0, $fa2
	fsqrt.d	$fs1, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fdiv.d	$fa0, $fs0, $fs1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 4
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs0, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs0, $fs0, $fa2
	fsqrt.d	$fs1, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fdiv.d	$fa0, $fs0, $fs1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 5
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs0, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs0, $fs0, $fa2
	fsqrt.d	$fs2, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fdiv.d	$fa0, $fs0, $fs2
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 6
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs1, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs1, $fs1, $fa2
	fsqrt.d	$fs7, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fdiv.d	$fa0, $fs1, $fs7
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 7
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(planetpv)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 208
	fld.d	$fa1, $sp, 200
	fld.d	$fs0, $sp, 216
	fmul.d	$fa2, $fa0, $fa0
	fmadd.d	$fa2, $fa1, $fa1, $fa2
	fmadd.d	$fa2, $fs0, $fs0, $fa2
	fsqrt.d	$fs1, $fa2
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fmov.d	$fs6, $fa0
	fdiv.d	$fa0, $fs0, $fs1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	vldi	$vr1, -912
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB3_2
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	fmov.d	$ft10, $fs3
	fld.d	$ft9, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft8, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft7, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 112                  # 8-byte Folded Reload
	fst.d	$fs7, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 192                  # 8-byte Folded Spill
	fld.d	$ft4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs7, $sp, 136                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 184                  # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	bne	$fp, $s1, .LBB3_1
# %bb.4:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_1)
	pcalau12i	$a0, %pc_hi20(.LCPI3_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_2)
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs6, $fa2
	vldi	$vr3, -968
	fadd.d	$fa4, $fa0, $fa3
	movgr2fr.d	$fa5, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fsel	$fa0, $fa0, $fa4, $fcc0
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs5, $fa1
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs4, $fa2
	fadd.d	$fa4, $fa0, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fsel	$fa0, $fa0, $fa4, $fcc0
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fmul.d	$fa0, $ft10, $fa1
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fmul.d	$fa0, $ft9, $fa2
	fadd.d	$fa4, $fa0, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fsel	$fa0, $fa0, $fa4, $fcc0
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fmul.d	$fa0, $ft8, $fa1
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fmul.d	$fa0, $ft7, $fa2
	fadd.d	$fa4, $fa0, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fsel	$fa0, $fa0, $fa4, $fcc0
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmul.d	$fa0, $ft6, $fa1
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft5, $fa2
	fadd.d	$fa4, $fa0, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fsel	$fa0, $fa0, $fa4, $fcc0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fmul.d	$fs4, $ft4, $fa1
	fmul.d	$fa0, $ft3, $fa2
	fadd.d	$fa4, $fa0, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fsel	$fs2, $fa0, $fa4, $fcc0
	fmul.d	$fs5, $ft2, $fa1
	fmul.d	$fa0, $ft1, $fa2
	fadd.d	$fa4, $fa0, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa5
	fsel	$fs6, $fa0, $fa4, $fcc0
	fmul.d	$fa0, $ft0, $fa1
	fmul.d	$fa1, $fa7, $fa2
	fadd.d	$fa2, $fa1, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa5
	fsel	$fa1, $fa1, $fa2, $fcc0
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa6
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fs6
	movfr2gr.d	$a2, $fs5
	movfr2gr.d	$a3, $fs0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fs2
	movfr2gr.d	$a2, $fs4
	movfr2gr.d	$a3, $fs7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 112                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa0
	fld.d	$fa0, $sp, 104                  # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa0
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fs3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 72                   # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa0
	fld.d	$fa0, $sp, 16                   # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 24                   # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa0
	fld.d	$fa0, $sp, 32                   # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 40                   # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa0
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fs1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs7, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 304                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 320                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.type	a,@object                       # @a
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
a:
	.dword	0x3fd8c637fd3b6253              # double 0.38709830979999998
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x3fe725849423e3e0              # double 0.72332982000000001
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff000011136aef5              # double 1.0000010178000001
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff860fd96f0d223              # double 1.5236793419000001
	.dword	0x3df49da7e361ce4c              # double 3.0E-10
	.dword	0x0000000000000000              # double 0
	.dword	0x4014cf7737365089              # double 5.2026032092000003
	.dword	0x3ec00c90d2b8ae8f              # double 1.9132000000000002E-6
	.dword	0xbe30c01868bf779e              # double -3.9000000000000002E-9
	.dword	0x40231c1d0ebb7c0f              # double 9.5549091915000001
	.dword	0xbef66dba1e9d9a9d              # double -2.1389599999999999E-5
	.dword	0x3e67d64a1ee91688              # double 4.4400000000000001E-8
	.dword	0x403337ec14c35efa              # double 19.218446061800002
	.dword	0xbe98f00a1561f9e1              # double -3.7160000000000002E-7
	.dword	0x3e7a47a3038502a4              # double 9.7899999999999997E-8
	.dword	0x403e1c425059fb17              # double 30.110386869399999
	.dword	0xbebbe8ad97c217d7              # double -1.6635E-6
	.dword	0x3e726a27f670079b              # double 6.8600000000000005E-8
	.size	a, 192

	.type	dlm,@object                     # @dlm
	.p2align	3, 0x0
dlm:
	.dword	0x406f88076b035926              # double 252.25090552
	.dword	0x41f40bbcadee3cb4              # double 5381016286.8898201
	.dword	0xbffed8a32f44912a              # double -1.9278900000000001
	.dword	0x4066bf5a874feafa              # double 181.97980085
	.dword	0x41df6432f5157881              # double 2106641364.33548
	.dword	0x3fe3007dd4413554              # double 0.59380999999999995
	.dword	0x40591dda6dbf7622              # double 100.46645683
	.dword	0x41d34fc2f3b56502              # double 1295977422.83429
	.dword	0xc0005a5657fb6998              # double -2.0441099999999999
	.dword	0x407636ed90f7b482              # double 355.43299958
	.dword	0x41c4890a4b784dfd              # double 689050774.93988001
	.dword	0x3fee2a1b5c7cd899              # double 0.94264000000000003
	.dword	0x40412cfe90ea1d96              # double 34.351518740000003
	.dword	0x419a0c7e6f1ea0ba              # double 109256603.77991
	.dword	0xc03e9a915379fa98              # double -30.60378
	.dword	0x404909e9b1dfe17d              # double 50.077444300000003
	.dword	0x4184fa9e14756430              # double 43996098.557319999
	.dword	0x4052e76ed677707a              # double 75.616140000000001
	.dword	0x4073a0e14d09c902              # double 314.05500511000002
	.dword	0x416d6ba57e0efdca              # double 15424811.93933
	.dword	0xbffc0366516db0de              # double -1.7508300000000001
	.dword	0x4073059422411d82              # double 304.34866548000002
	.dword	0x415e0127cd46b26c              # double 7865503.20744
	.dword	0x3fcb0307f23cc8de              # double 0.21103
	.size	dlm, 192

	.type	e,@object                       # @e
	.p2align	3, 0x0
e:
	.dword	0x3fca52242a37d430              # double 0.2056317526
	.dword	0x3f2abf4b9459e7f4              # double 2.0406530000000001E-4
	.dword	0xbec7c7e6c1bd0f9b              # double -2.8349000000000002E-6
	.dword	0x3f7bbcde77820827              # double 0.0067719164000000004
	.dword	0xbf3f4dac25fb4bc2              # double -4.7765209999999999E-4
	.dword	0x3ee4942737feff37              # double 9.8127000000000001E-6
	.dword	0x3f911c1175cc9f7b              # double 0.016708634199999999
	.dword	0xbf3b8c8fa536f731              # double -4.2036539999999999E-4
	.dword	0xbeea93fad53b08d4              # double -1.26734E-5
	.dword	0x3fb7e91ad74bf5b0              # double 0.093400647700000005
	.dword	0x3f4da66143b5e407              # double 9.0484379999999995E-4
	.dword	0xbee0e96176f62826              # double -8.0640999999999996E-6
	.dword	0x3fa8d4b857e48742              # double 0.048497925499999997
	.dword	0x3f5abe2b9a18b7b5              # double 0.0016322541999999999
	.dword	0xbf08b6913e59c18d              # double -4.7136599999999999E-5
	.dword	0x3fac70ce5fa41e66              # double 0.055548142600000003
	.dword	0xbf6c6594a86fd58e              # double -0.0034664062000000001
	.dword	0xbf10df6361d60729              # double -6.4363900000000002E-5
	.dword	0x3fa7bf479022d287              # double 0.046381222100000001
	.dword	0xbf31e2fe6ae927d8              # double -2.7292929999999998E-4
	.dword	0x3ee08c9c0376f006              # double 7.8913000000000002E-6
	.dword	0x3f835d88e0fe76d8              # double 0.0094557470000000004
	.dword	0x3f0fa0dbe27c5204              # double 6.0326299999999999E-5
	.dword	0x0000000000000000              # double 0
	.size	e, 192

	.type	pi,@object                      # @pi
	.p2align	3, 0x0
pi:
	.dword	0x40535d310de9f882              # double 77.456119040000004
	.dword	0x40b6571dab9f559b              # double 5719.1158999999998
	.dword	0xc01352157689ca19              # double -4.8301600000000002
	.dword	0x40607209dadfb507              # double 131.563703
	.dword	0x4065ef9096bb98c8              # double 175.4864
	.dword	0xc07f27b59ddc1e79              # double -498.48183999999998
	.dword	0x4059bbfd82cd2461              # double 102.93734808000001
	.dword	0x40c6ae2d2bd3c361              # double 11612.3529
	.dword	0x404aa34c6e6d9be5              # double 53.275770000000001
	.dword	0x407500f6b7dfd5be              # double 336.06023395
	.dword	0x40cf363ac3222920              # double 15980.459080000001
	.dword	0xc04f29fbe76c8b44              # double -62.328000000000003
	.dword	0x402ca993f265b897              # double 14.331206870000001
	.dword	0x40be4ec06ad2dcb1              # double 7758.7516299999997
	.dword	0x40703f599ed7c6fc              # double 259.95938000000001
	.dword	0x405743a9c7642d26              # double 93.057237479999997
	.dword	0x40d3eadfa415f45e              # double 20395.49439
	.dword	0x4067c84dfce3150e              # double 190.25952000000001
	.dword	0x4065a02b58283528              # double 173.00529105999999
	.dword	0x40a91f1ff04577d9              # double 3215.5623799999998
	.dword	0xc0410be37de939eb              # double -34.092880000000001
	.dword	0x40480f65305b6785              # double 48.120275540000002
	.dword	0x40906ae060fe4799              # double 1050.71912
	.dword	0x403b65aceee0f3cb              # double 27.397169999999999
	.size	pi, 192

	.type	dinc,@object                    # @dinc
	.p2align	3, 0x0
dinc:
	.dword	0x401c051b1d92b7fe              # double 7.00498625
	.dword	0xc06ac83387160957              # double -214.25629000000001
	.dword	0x3fd28b97785729b3              # double 0.28977000000000003
	.dword	0x400b28447e34386c              # double 3.3946618900000001
	.dword	0xc03ed828a1dfb939              # double -30.844370000000001
	.dword	0xc0275b52007dd441              # double -11.67836
	.dword	0x0000000000000000              # double 0
	.dword	0x407d5f90f51ac9b0              # double 469.97289000000001
	.dword	0xc00acde2ac322292              # double -3.35053
	.dword	0x3ffd987acb2252bb              # double 1.84972648
	.dword	0xc072551355475a32              # double -293.31722000000002
	.dword	0xc0203c91d14e3bcd              # double -8.1182999999999996
	.dword	0x3ff4da2e7a10e830              # double 1.3032669800000001
	.dword	0xc051e3c504816f00              # double -71.558899999999994
	.dword	0x4027e7ebaf102364              # double 11.952970000000001
	.dword	0x4003e939471e778f              # double 2.4888787799999998
	.dword	0x4056f686594af4f1              # double 91.851950000000002
	.dword	0xc031a989374bc6a8              # double -17.66225
	.dword	0x3fe8be07677d67b5              # double 0.77319689000000003
	.dword	0xc04e5d15df6555c5              # double -60.727229999999999
	.dword	0x3ff41f16b11c6d1e              # double 1.25759
	.dword	0x3ffc51b9ce9853f4              # double 1.7699525899999999
	.dword	0x40203f251c193b3a              # double 8.1233299999999993
	.dword	0x3fb4d35a858793de              # double 0.081350000000000005
	.size	dinc, 192

	.type	omega,@object                   # @omega
	.p2align	3, 0x0
omega:
	.dword	0x40482a5ab400a313              # double 48.330893039999999
	.dword	0xc0b1a3379f01b867              # double -4515.2172700000001
	.dword	0xc03fcc8605681ecd              # double -31.798919999999999
	.dword	0x40532b83cff8fc2b              # double 76.679920190000004
	.dword	0xc0c38c3da31a4bdc              # double -10008.481540000001
	.dword	0xc049a9bef49cf56f              # double -51.326140000000002
	.dword	0x4065dbf10e4ff9e8              # double 174.87317576999999
	.dword	0xc0c0f3a29a804966              # double -8679.2703399999991
	.dword	0x402eaf0ed3d859c9              # double 15.34191
	.dword	0x4048c76f992a88eb              # double 49.558093210000003
	.dword	0xc0c4be7350092ccf              # double -10620.900879999999
	.dword	0xc06cd25f84cad57c              # double -230.57416000000001
	.dword	0x40591db8d838bbb3              # double 100.46440702
	.dword	0x40b8da091dbca969              # double 6362.0356099999999
	.dword	0x4074685935fc3b4f              # double 326.52177999999998
	.dword	0x405c6a9797e1b38f              # double 113.66550252
	.dword	0xc0c20c1986983516              # double -9240.1994200000008
	.dword	0xc0508f320d9945b7              # double -66.237430000000003
	.dword	0x405280619982c872              # double 74.005957010000003
	.dword	0x40a4da4cf80dc337              # double 2669.1503299999999
	.dword	0x40623e1187e7c06e              # double 145.93964
	.dword	0x40607916febf632d              # double 131.78405702000001
	.dword	0xc06bbe2edbb59ddc              # double -221.94322
	.dword	0xbfe93165d3996fa8              # double -0.78727999999999998
	.size	omega, 192

	.type	kp,@object                      # @kp
	.p2align	3, 0x0
kp:
	.dword	0x40f0fed000000000              # double 69613
	.dword	0x40f277d000000000              # double 75645
	.dword	0x40f58f2000000000              # double 88306
	.dword	0x40ed3f6000000000              # double 59899
	.dword	0x40cec10000000000              # double 15746
	.dword	0x40f15af000000000              # double 71087
	.dword	0x41015ae800000000              # double 142173
	.dword	0x40a81c0000000000              # double 3086
	.dword	0x0000000000000000              # double 0
	.dword	0x40d559c000000000              # double 21863
	.dword	0x40e0034000000000              # double 32794
	.dword	0x40da4d8000000000              # double 26934
	.dword	0x40c5598000000000              # double 10931
	.dword	0x40d9a28000000000              # double 26250
	.dword	0x40e559a000000000              # double 43725
	.dword	0x40ea4d6000000000              # double 53867
	.dword	0x40dc42c000000000              # double 28939
	.dword	0x0000000000000000              # double 0
	.dword	0x40cf410000000000              # double 16002
	.dword	0x40d559c000000000              # double 21863
	.dword	0x40df410000000000              # double 32004
	.dword	0x40c5598000000000              # double 10931
	.dword	0x40cc608000000000              # double 14529
	.dword	0x40cff80000000000              # double 16368
	.dword	0x40cdeb0000000000              # double 15318
	.dword	0x40e0034000000000              # double 32794
	.dword	0x0000000000000000              # double 0
	.dword	0x40b8c90000000000              # double 6345
	.dword	0x40be8a0000000000              # double 7818
	.dword	0x40ce8a0000000000              # double 15636
	.dword	0x40bba50000000000              # double 7077
	.dword	0x40bff80000000000              # double 8184
	.dword	0x40cba98000000000              # double 14163
	.dword	0x40914c0000000000              # double 1107
	.dword	0x40b3080000000000              # double 4872
	.dword	0x0000000000000000              # double 0
	.dword	0x409b800000000000              # double 1760
	.dword	0x4096b80000000000              # double 1454
	.dword	0x40923c0000000000              # double 1167
	.dword	0x408b800000000000              # double 880
	.dword	0x4071f00000000000              # double 287
	.dword	0x40a4a00000000000              # double 2640
	.dword	0x4033000000000000              # double 19
	.dword	0x409ffc0000000000              # double 2047
	.dword	0x4096b80000000000              # double 1454
	.dword	0x4081f00000000000              # double 574
	.dword	0x0000000000000000              # double 0
	.dword	0x408b800000000000              # double 880
	.dword	0x4071f00000000000              # double 287
	.dword	0x4033000000000000              # double 19
	.dword	0x409b800000000000              # double 1760
	.dword	0x40923c0000000000              # double 1167
	.dword	0x4073200000000000              # double 306
	.dword	0x4081f00000000000              # double 574
	.dword	0x4069800000000000              # double 204
	.dword	0x0000000000000000              # double 0
	.dword	0x4066200000000000              # double 177
	.dword	0x4093c40000000000              # double 1265
	.dword	0x4010000000000000              # double 4
	.dword	0x4078100000000000              # double 385
	.dword	0x4069000000000000              # double 200
	.dword	0x406a000000000000              # double 208
	.dword	0x4069800000000000              # double 204
	.dword	0x0000000000000000              # double 0
	.dword	0x4059800000000000              # double 102
	.dword	0x405a800000000000              # double 106
	.dword	0x4010000000000000              # double 4
	.dword	0x4058800000000000              # double 98
	.dword	0x40955c0000000000              # double 1367
	.dword	0x407e700000000000              # double 487
	.dword	0x4069800000000000              # double 204
	.dword	0x0000000000000000              # double 0
	.size	kp, 576

	.type	kq,@object                      # @kq
	.p2align	3, 0x0
kq:
	.dword	0x40a81c0000000000              # double 3086
	.dword	0x40cec10000000000              # double 15746
	.dword	0x40f0fed000000000              # double 69613
	.dword	0x40ed3f6000000000              # double 59899
	.dword	0x40f277d000000000              # double 75645
	.dword	0x40f58f2000000000              # double 88306
	.dword	0x40c8ba8000000000              # double 12661
	.dword	0x40a4c40000000000              # double 2658
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x40d559c000000000              # double 21863
	.dword	0x40e0034000000000              # double 32794
	.dword	0x40c5598000000000              # double 10931
	.dword	0x4052400000000000              # double 73
	.dword	0x40b1230000000000              # double 4387
	.dword	0x40da4d8000000000              # double 26934
	.dword	0x4097040000000000              # double 1473
	.dword	0x40a0da0000000000              # double 2157
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x4024000000000000              # double 10
	.dword	0x40cf410000000000              # double 16002
	.dword	0x40d559c000000000              # double 21863
	.dword	0x40c5598000000000              # double 10931
	.dword	0x4097040000000000              # double 1473
	.dword	0x40df410000000000              # double 32004
	.dword	0x40b1230000000000              # double 4387
	.dword	0x4052400000000000              # double 73
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x4024000000000000              # double 10
	.dword	0x40b8c90000000000              # double 6345
	.dword	0x40be8a0000000000              # double 7818
	.dword	0x40914c0000000000              # double 1107
	.dword	0x40ce8a0000000000              # double 15636
	.dword	0x40bba50000000000              # double 7077
	.dword	0x40bff80000000000              # double 8184
	.dword	0x4080a00000000000              # double 532
	.dword	0x4024000000000000              # double 10
	.dword	0x0000000000000000              # double 0
	.dword	0x4033000000000000              # double 19
	.dword	0x409b800000000000              # double 1760
	.dword	0x4096b80000000000              # double 1454
	.dword	0x4071f00000000000              # double 287
	.dword	0x40923c0000000000              # double 1167
	.dword	0x408b800000000000              # double 880
	.dword	0x4081f00000000000              # double 574
	.dword	0x40a4a00000000000              # double 2640
	.dword	0x4033000000000000              # double 19
	.dword	0x4096b80000000000              # double 1454
	.dword	0x4033000000000000              # double 19
	.dword	0x4081f00000000000              # double 574
	.dword	0x4071f00000000000              # double 287
	.dword	0x4073200000000000              # double 306
	.dword	0x409b800000000000              # double 1760
	.dword	0x4028000000000000              # double 12
	.dword	0x403f000000000000              # double 31
	.dword	0x4043000000000000              # double 38
	.dword	0x4033000000000000              # double 19
	.dword	0x4081f00000000000              # double 574
	.dword	0x4010000000000000              # double 4
	.dword	0x4069800000000000              # double 204
	.dword	0x4066200000000000              # double 177
	.dword	0x4020000000000000              # double 8
	.dword	0x403f000000000000              # double 31
	.dword	0x4069000000000000              # double 200
	.dword	0x4093c40000000000              # double 1265
	.dword	0x4059800000000000              # double 102
	.dword	0x4010000000000000              # double 4
	.dword	0x4069800000000000              # double 204
	.dword	0x4010000000000000              # double 4
	.dword	0x4059800000000000              # double 102
	.dword	0x405a800000000000              # double 106
	.dword	0x4020000000000000              # double 8
	.dword	0x4058800000000000              # double 98
	.dword	0x40955c0000000000              # double 1367
	.dword	0x407e700000000000              # double 487
	.dword	0x4069800000000000              # double 204
	.dword	0x4010000000000000              # double 4
	.dword	0x4059800000000000              # double 102
	.size	kq, 640

	.type	ca,@object                      # @ca
	.p2align	3, 0x0
ca:
	.dword	0x4010000000000000              # double 4
	.dword	0xc02a000000000000              # double -13
	.dword	0x4026000000000000              # double 11
	.dword	0xc022000000000000              # double -9
	.dword	0xc022000000000000              # double -9
	.dword	0xc008000000000000              # double -3
	.dword	0xbff0000000000000              # double -1
	.dword	0x4010000000000000              # double 4
	.dword	0x0000000000000000              # double 0
	.dword	0xc063800000000000              # double -156
	.dword	0x404d800000000000              # double 59
	.dword	0xc045000000000000              # double -42
	.dword	0x4018000000000000              # double 6
	.dword	0x4033000000000000              # double 19
	.dword	0xc034000000000000              # double -20
	.dword	0xc024000000000000              # double -10
	.dword	0xc028000000000000              # double -12
	.dword	0x0000000000000000              # double 0
	.dword	0x4050000000000000              # double 64
	.dword	0xc063000000000000              # double -152
	.dword	0x404f000000000000              # double 62
	.dword	0xc020000000000000              # double -8
	.dword	0x4040000000000000              # double 32
	.dword	0xc044800000000000              # double -41
	.dword	0x4033000000000000              # double 19
	.dword	0xc026000000000000              # double -11
	.dword	0x0000000000000000              # double 0
	.dword	0x405f000000000000              # double 124
	.dword	0x4083680000000000              # double 621
	.dword	0xc062200000000000              # double -145
	.dword	0x406a000000000000              # double 208
	.dword	0x404b000000000000              # double 54
	.dword	0xc04c800000000000              # double -57
	.dword	0x403e000000000000              # double 30
	.dword	0x402e000000000000              # double 15
	.dword	0x0000000000000000              # double 0
	.dword	0xc0d6e34000000000              # double -23437
	.dword	0xc0a4940000000000              # double -2634
	.dword	0x40b9c90000000000              # double 6601
	.dword	0x40b8730000000000              # double 6259
	.dword	0xc0978c0000000000              # double -1507
	.dword	0xc09c740000000000              # double -1821
	.dword	0x40a4780000000000              # double 2620
	.dword	0xc0a0860000000000              # double -2115
	.dword	0xc097440000000000              # double -1489
	.dword	0x40eeb7e000000000              # double 62911
	.dword	0xc0fd46f000000000              # double -119919
	.dword	0x40f35e8000000000              # double 79336
	.dword	0x40d1658000000000              # double 17814
	.dword	0xc0d7ac4000000000              # double -24241
	.dword	0x40c7920000000000              # double 12068
	.dword	0x40c0390000000000              # double 8306
	.dword	0xc0b31d0000000000              # double -4893
	.dword	0x40c1630000000000              # double 8902
	.dword	0x4117bf1400000000              # double 389061
	.dword	0xc10fff6800000000              # double -262125
	.dword	0xc0e5870000000000              # double -44088
	.dword	0x40c0618000000000              # double 8387
	.dword	0xc0d6700000000000              # double -22976
	.dword	0xc0a05a0000000000              # double -2093
	.dword	0xc083380000000000              # double -615
	.dword	0xc0c2fc0000000000              # double -9720
	.dword	0x40b9e90000000000              # double 6633
	.dword	0xc119292c00000000              # double -412235
	.dword	0xc1032bb000000000              # double -157046
	.dword	0xc0deb18000000000              # double -31430
	.dword	0x40e2772000000000              # double 37817
	.dword	0xc0c3060000000000              # double -9740
	.dword	0xc02a000000000000              # double -13
	.dword	0xc0bd190000000000              # double -7449
	.dword	0x40c2d60000000000              # double 9644
	.dword	0x0000000000000000              # double 0
	.size	ca, 576

	.type	sa,@object                      # @sa
	.p2align	3, 0x0
sa:
	.dword	0xc03d000000000000              # double -29
	.dword	0xbff0000000000000              # double -1
	.dword	0x4022000000000000              # double 9
	.dword	0x4018000000000000              # double 6
	.dword	0xc018000000000000              # double -6
	.dword	0x4014000000000000              # double 5
	.dword	0x4010000000000000              # double 4
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0xc048000000000000              # double -48
	.dword	0xc05f400000000000              # double -125
	.dword	0xc03a000000000000              # double -26
	.dword	0xc042800000000000              # double -37
	.dword	0x4032000000000000              # double 18
	.dword	0xc02a000000000000              # double -13
	.dword	0xc034000000000000              # double -20
	.dword	0xc000000000000000              # double -2
	.dword	0x0000000000000000              # double 0
	.dword	0xc062c00000000000              # double -150
	.dword	0xc047000000000000              # double -46
	.dword	0x4051000000000000              # double 68
	.dword	0x404b000000000000              # double 54
	.dword	0x402c000000000000              # double 14
	.dword	0x4038000000000000              # double 24
	.dword	0xc03c000000000000              # double -28
	.dword	0x4036000000000000              # double 22
	.dword	0x0000000000000000              # double 0
	.dword	0xc083680000000000              # double -621
	.dword	0x4080a00000000000              # double 532
	.dword	0xc085b00000000000              # double -694
	.dword	0xc034000000000000              # double -20
	.dword	0x4068000000000000              # double 192
	.dword	0xc057800000000000              # double -94
	.dword	0x4051c00000000000              # double 71
	.dword	0xc052400000000000              # double -73
	.dword	0x0000000000000000              # double 0
	.dword	0xc0cc8b0000000000              # double -14614
	.dword	0xc0d35d0000000000              # double -19828
	.dword	0xc0b6ed0000000000              # double -5869
	.dword	0x409d640000000000              # double 1881
	.dword	0xc0b1140000000000              # double -4372
	.dword	0xc0a19e0000000000              # double -2255
	.dword	0x4088700000000000              # double 782
	.dword	0x408d100000000000              # double 930
	.dword	0x408c880000000000              # double 913
	.dword	0x41010ec800000000              # double 139737
	.dword	0x0000000000000000              # double 0
	.dword	0x40d816c000000000              # double 24667
	.dword	0x40e8f66000000000              # double 51123
	.dword	0xc0b3ee0000000000              # double -5102
	.dword	0x40bd050000000000              # double 7429
	.dword	0xc0affe0000000000              # double -4095
	.dword	0xc09ee00000000000              # double -1976
	.dword	0xc0c2af0000000000              # double -9566
	.dword	0xc100db0800000000              # double -138081
	.dword	0x0000000000000000              # double 0
	.dword	0x40e22aa000000000              # double 37205
	.dword	0xc0e7f1e000000000              # double -49039
	.dword	0xc0e475a000000000              # double -41901
	.dword	0xc0e08a0000000000              # double -33872
	.dword	0xc0da674000000000              # double -27037
	.dword	0xc0c85d0000000000              # double -12474
	.dword	0x40d25b4000000000              # double 18797
	.dword	0x0000000000000000              # double 0
	.dword	0x40dbd30000000000              # double 28492
	.dword	0x410043a000000000              # double 133236
	.dword	0x40f1016000000000              # double 69654
	.dword	0x40e98c4000000000              # double 52322
	.dword	0xc0e8352000000000              # double -49577
	.dword	0xc0d9cf8000000000              # double -26430
	.dword	0xc0ac120000000000              # double -3593
	.dword	0x0000000000000000              # double 0
	.size	sa, 576

	.type	cl,@object                      # @cl
	.p2align	3, 0x0
cl:
	.dword	0x4035000000000000              # double 21
	.dword	0xc057c00000000000              # double -95
	.dword	0xc063a00000000000              # double -157
	.dword	0x4044800000000000              # double 41
	.dword	0xc014000000000000              # double -5
	.dword	0x4045000000000000              # double 42
	.dword	0x4037000000000000              # double 23
	.dword	0x403e000000000000              # double 30
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0xc064000000000000              # double -160
	.dword	0xc073900000000000              # double -313
	.dword	0xc06d600000000000              # double -235
	.dword	0x404e000000000000              # double 60
	.dword	0xc052800000000000              # double -74
	.dword	0xc053000000000000              # double -76
	.dword	0xc03b000000000000              # double -27
	.dword	0x4041000000000000              # double 34
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0xc074500000000000              # double -325
	.dword	0xc074200000000000              # double -322
	.dword	0xc053c00000000000              # double -79
	.dword	0x406d000000000000              # double 232
	.dword	0xc04a000000000000              # double -52
	.dword	0x4058400000000000              # double 97
	.dword	0x404b800000000000              # double 55
	.dword	0xc044800000000000              # double -41
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x40a1b80000000000              # double 2268
	.dword	0xc08e980000000000              # double -979
	.dword	0x4089100000000000              # double 802
	.dword	0x4082d00000000000              # double 602
	.dword	0xc084e00000000000              # double -668
	.dword	0xc040800000000000              # double -33
	.dword	0x4075900000000000              # double 345
	.dword	0x4069200000000000              # double 201
	.dword	0xc04b800000000000              # double -55
	.dword	0x0000000000000000              # double 0
	.dword	0x40bdba0000000000              # double 7610
	.dword	0xc0b3850000000000              # double -4997
	.dword	0xc0be090000000000              # double -7689
	.dword	0xc0b6d10000000000              # double -5841
	.dword	0xc0a4720000000000              # double -2617
	.dword	0x40916c0000000000              # double 1115
	.dword	0xc087600000000000              # double -748
	.dword	0xc082f80000000000              # double -607
	.dword	0x40b7ba0000000000              # double 6074
	.dword	0x4076200000000000              # double 354
	.dword	0xc0d21d4000000000              # double -18549
	.dword	0x40dd6b4000000000              # double 30125
	.dword	0x40d38b0000000000              # double 20012
	.dword	0xc086d00000000000              # double -730
	.dword	0x4089c00000000000              # double 824
	.dword	0x4037000000000000              # double 23
	.dword	0x4094240000000000              # double 1289
	.dword	0xc076000000000000              # double -352
	.dword	0xc0ccd78000000000              # double -14767
	.dword	0xc0a01c0000000000              # double -2062
	.dword	0xc100826800000000              # double -135245
	.dword	0xc0cc810000000000              # double -14594
	.dword	0x40b0650000000000              # double 4197
	.dword	0xc0af7c0000000000              # double -4030
	.dword	0xc0b5fe0000000000              # double -5630
	.dword	0xc0a6a40000000000              # double -2898
	.dword	0x40a3d80000000000              # double 2540
	.dword	0xc073200000000000              # double -306
	.dword	0x40a6f60000000000              # double 2939
	.dword	0x409f080000000000              # double 1986
	.dword	0x40f5f5c000000000              # double 89948
	.dword	0x40a06e0000000000              # double 2103
	.dword	0x40c1818000000000              # double 8963
	.dword	0x40a50e0000000000              # double 2695
	.dword	0x40acc40000000000              # double 3682
	.dword	0x4099c00000000000              # double 1648
	.dword	0x408b100000000000              # double 866
	.dword	0xc063400000000000              # double -154
	.dword	0xc09eac0000000000              # double -1963
	.dword	0xc071b00000000000              # double -283
	.size	cl, 640

	.type	sl,@object                      # @sl
	.p2align	3, 0x0
sl:
	.dword	0xc075600000000000              # double -342
	.dword	0x4061000000000000              # double 136
	.dword	0xc037000000000000              # double -23
	.dword	0x404f000000000000              # double 62
	.dword	0x4050800000000000              # double 66
	.dword	0xc04a000000000000              # double -52
	.dword	0xc040800000000000              # double -33
	.dword	0x4031000000000000              # double 17
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x4080600000000000              # double 524
	.dword	0xc062a00000000000              # double -149
	.dword	0xc041800000000000              # double -35
	.dword	0x405d400000000000              # double 117
	.dword	0x4062e00000000000              # double 151
	.dword	0x405e800000000000              # double 122
	.dword	0xc051c00000000000              # double -71
	.dword	0xc04f000000000000              # double -62
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0xc05a400000000000              # double -105
	.dword	0xc061200000000000              # double -137
	.dword	0x4070200000000000              # double 258
	.dword	0x4041800000000000              # double 35
	.dword	0xc05d000000000000              # double -116
	.dword	0xc056000000000000              # double -88
	.dword	0xc05c000000000000              # double -112
	.dword	0xc054000000000000              # double -80
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x408ab00000000000              # double 854
	.dword	0xc069a00000000000              # double -205
	.dword	0xc08d400000000000              # double -936
	.dword	0xc06e000000000000              # double -240
	.dword	0x4061800000000000              # double 140
	.dword	0xc075500000000000              # double -341
	.dword	0xc058400000000000              # double -97
	.dword	0xc06d000000000000              # double -232
	.dword	0x4080c00000000000              # double 536
	.dword	0x0000000000000000              # double 0
	.dword	0xc0ebd28000000000              # double -56980
	.dword	0x40bf500000000000              # double 8016
	.dword	0x408fa00000000000              # double 1012
	.dword	0x4096a00000000000              # double 1448
	.dword	0xc0a7a00000000000              # double -3024
	.dword	0xc0acfc0000000000              # double -3710
	.dword	0x4073e00000000000              # double 318
	.dword	0x407f700000000000              # double 503
	.dword	0x40ad6e0000000000              # double 3767
	.dword	0x4082080000000000              # double 577
	.dword	0x4100eb7000000000              # double 138606
	.dword	0xc0ca530000000000              # double -13478
	.dword	0xc0b3640000000000              # double -4964
	.dword	0x4096840000000000              # double 1441
	.dword	0xc0949c0000000000              # double -1319
	.dword	0xc097280000000000              # double -1482
	.dword	0x407ab00000000000              # double 427
	.dword	0x4093500000000000              # double 1236
	.dword	0xc0c1e78000000000              # double -9167
	.dword	0xc09df80000000000              # double -1918
	.dword	0x40f1642000000000              # double 71234
	.dword	0xc0e4138000000000              # double -41116
	.dword	0x40b4d60000000000              # double 5334
	.dword	0xc0b3470000000000              # double -4935
	.dword	0xc09ce00000000000              # double -1848
	.dword	0x4050800000000000              # double 66
	.dword	0x407b200000000000              # double 434
	.dword	0xc09b500000000000              # double -1748
	.dword	0x40ad880000000000              # double 3780
	.dword	0xc085e80000000000              # double -701
	.dword	0xc0e743a000000000              # double -47645
	.dword	0x40c6bf8000000000              # double 11647
	.dword	0x40a0ec0000000000              # double 2166
	.dword	0x40a8f40000000000              # double 3194
	.dword	0x4085380000000000              # double 679
	.dword	0x0000000000000000              # double 0
	.dword	0xc06e800000000000              # double -244
	.dword	0xc07a300000000000              # double -419
	.dword	0xc0a3c60000000000              # double -2531
	.dword	0x4048000000000000              # double 48
	.size	sl, 640

	.type	amas,@object                    # @amas
	.p2align	3, 0x0
amas:
	.dword	0x4156fa6c00000000              # double 6023600
	.dword	0x4118ef2e00000000              # double 408523.5
	.dword	0x4114131200000000              # double 328900.5
	.dword	0x4147a42b00000000              # double 3098710
	.dword	0x40905d6b851eb852              # double 1047.355
	.dword	0x40ab550000000000              # double 3498.5
	.dword	0x40d6554000000000              # double 22869
	.dword	0x40d2dc8000000000              # double 19314
	.size	amas, 64

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%f %f %f\n"
	.size	.L.str.1, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
