	.file	"flops-4.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(TLimit)
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, %pc_lo12(TLimit)
	pcalau12i	$s1, %pc_hi20(piref)
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	st.d	$a0, $s1, %pc_lo12(piref)
	pcalau12i	$s0, %pc_hi20(one)
	st.d	$a1, $s0, %pc_lo12(one)
	pcalau12i	$fp, %pc_hi20(two)
	lu52i.d	$a0, $zero, 1024
	st.d	$a0, $fp, %pc_lo12(two)
	pcalau12i	$s2, %pc_hi20(three)
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, -524288
	lu52i.d	$a2, $a2, 1024
	st.d	$a2, $s2, %pc_lo12(three)
	pcalau12i	$a2, %pc_hi20(four)
	lu52i.d	$a3, $zero, 1025
	st.d	$a3, $a2, %pc_lo12(four)
	pcalau12i	$a2, %pc_hi20(five)
	lu32i.d	$a0, 262144
	lu52i.d	$a0, $a0, 1025
	st.d	$a0, $a2, %pc_lo12(five)
	pcalau12i	$a0, %pc_hi20(scale)
	st.d	$a1, $a0, %pc_lo12(scale)
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(A3)
	fld.d	$fa0, $a1, %pc_lo12(A3)
	pcalau12i	$a2, %pc_hi20(A5)
	fld.d	$fa1, $a2, %pc_lo12(A5)
	move	$a0, $zero
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a1, %pc_lo12(A3)
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $a2, %pc_lo12(A5)
	fld.d	$fa3, $s1, %pc_lo12(piref)
	fld.d	$fa4, $s2, %pc_lo12(three)
	lu12i.w	$a1, 131072
	lu32i.d	$a1, 172127
	lu52i.d	$a1, $a1, 1050
	movgr2fr.d	$fa2, $a1
	fmul.d	$fa2, $fa4, $fa2
	fdiv.d	$fa2, $fa3, $fa2
	pcalau12i	$a1, %pc_hi20(B6)
	fld.d	$fa5, $a1, %pc_lo12(B6)
	pcalau12i	$a1, %pc_hi20(B5)
	fld.d	$fa7, $a1, %pc_lo12(B5)
	pcalau12i	$a1, %pc_hi20(B4)
	fld.d	$ft2, $a1, %pc_lo12(B4)
	pcalau12i	$a1, %pc_hi20(B3)
	fld.d	$ft3, $a1, %pc_lo12(B3)
	pcalau12i	$a1, %pc_hi20(B2)
	fld.d	$ft4, $a1, %pc_lo12(B2)
	pcalau12i	$a1, %pc_hi20(B1)
	fld.d	$ft0, $a1, %pc_lo12(B1)
	fld.d	$fa6, $s0, %pc_lo12(one)
	movgr2fr.d	$ft1, $zero
	lu12i.w	$a1, 38146
	ori	$a1, $a1, 3983
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, 1
	movgr2fr.d	$ft5, $a0
	ffint.d.l	$ft5, $ft5
	fmul.d	$ft5, $fa2, $ft5
	fmul.d	$ft5, $ft5, $ft5
	fmadd.d	$ft6, $fa5, $ft5, $fa7
	fmadd.d	$ft6, $ft5, $ft6, $ft2
	fmadd.d	$ft6, $ft5, $ft6, $ft3
	fmadd.d	$ft6, $ft5, $ft6, $ft4
	fmadd.d	$ft6, $ft5, $ft6, $ft0
	fmadd.d	$ft1, $ft5, $ft6, $ft1
	fadd.d	$ft1, $fa6, $ft1
	bne	$a0, $a1, .LBB0_1
# %bb.2:
	fdiv.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa3, $fa3
	fmadd.d	$fa5, $fa5, $fa4, $fa7
	fmadd.d	$fa5, $fa4, $fa5, $ft2
	fmadd.d	$fa5, $fa4, $fa5, $ft3
	fmadd.d	$fa5, $fa4, $fa5, $ft4
	fld.d	$fa7, $fp, %pc_lo12(two)
	fmadd.d	$fa5, $fa4, $fa5, $ft0
	fmadd.d	$fa5, $fa4, $fa5, $fa6
	fadd.d	$fa5, $fa6, $fa5
	fmadd.d	$fa5, $fa7, $ft1, $fa5
	fmul.d	$fa2, $fa2, $fa5
	fdiv.d	$fa2, $fa2, $fa7
	pcalau12i	$a0, %pc_hi20(A6)
	fld.d	$fa5, $a0, %pc_lo12(A6)
	pcalau12i	$a0, %pc_hi20(A4)
	fld.d	$fa6, $a0, %pc_lo12(A4)
	pcalau12i	$a0, %pc_hi20(sa)
	fst.d	$fa2, $a0, %pc_lo12(sa)
	fmadd.d	$fa1, $fa5, $fa4, $fa1
	fmadd.d	$fa1, $fa1, $fa4, $fa6
	pcalau12i	$a0, %pc_hi20(A2)
	fld.d	$fa5, $a0, %pc_lo12(A2)
	pcalau12i	$a0, %pc_hi20(A1)
	fld.d	$fa6, $a0, %pc_lo12(A1)
	pcalau12i	$a0, %pc_hi20(A0)
	fld.d	$fa7, $a0, %pc_lo12(A0)
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fmadd.d	$fa0, $fa0, $fa4, $fa5
	fmadd.d	$fa0, $fa0, $fa4, $fa6
	fmadd.d	$fa0, $fa0, $fa4, $fa7
	fmul.d	$fa0, $fa3, $fa0
	pcalau12i	$a0, %pc_hi20(sb)
	fst.d	$fa0, $a0, %pc_lo12(sb)
	fsub.d	$fa0, $fa2, $fa0
	pcalau12i	$a0, %pc_hi20(sc)
	fst.d	$fa0, $a0, %pc_lo12(sc)
	lu12i.w	$a0, -4420
	ori	$a0, $a0, 672
	lu32i.d	$a0, 280651
	lu52i.d	$a0, $a0, 923
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	A0,@object                      # @A0
	.data
	.globl	A0
	.p2align	3, 0x0
A0:
	.dword	0x3ff0000000000000              # double 1
	.size	A0, 8

	.type	A1,@object                      # @A1
	.globl	A1
	.p2align	3, 0x0
A1:
	.dword	0xbfc5555555559705              # double -0.1666666666671334
	.size	A1, 8

	.type	A2,@object                      # @A2
	.globl	A2
	.p2align	3, 0x0
A2:
	.dword	0x3f811111113ae9a3              # double 0.0083333333380906701
	.size	A2, 8

	.type	A3,@object                      # @A3
	.globl	A3
	.p2align	3, 0x0
A3:
	.dword	0x3f2a01a03fb1ca71              # double 1.9841271555128299E-4
	.size	A3, 8

	.type	A4,@object                      # @A4
	.globl	A4
	.p2align	3, 0x0
A4:
	.dword	0x3ec71df284aa3566              # double 2.7557589750761998E-6
	.size	A4, 8

	.type	A5,@object                      # @A5
	.globl	A5
	.p2align	3, 0x0
A5:
	.dword	0x3e5aeb5a8cf8a426              # double 2.5070598762070001E-8
	.size	A5, 8

	.type	A6,@object                      # @A6
	.globl	A6
	.p2align	3, 0x0
A6:
	.dword	0x3de68df75229c1a6              # double 1.6410598668299999E-10
	.size	A6, 8

	.type	B0,@object                      # @B0
	.globl	B0
	.p2align	3, 0x0
B0:
	.dword	0x3ff0000000000000              # double 1
	.size	B0, 8

	.type	B1,@object                      # @B1
	.globl	B1
	.p2align	3, 0x0
B1:
	.dword	0xbfdfffffffff8156              # double -0.4999999999982
	.size	B1, 8

	.type	B2,@object                      # @B2
	.globl	B2
	.p2align	3, 0x0
B2:
	.dword	0x3fa5555555290224              # double 0.041666666646510003
	.size	B2, 8

	.type	B3,@object                      # @B3
	.globl	B3
	.p2align	3, 0x0
B3:
	.dword	0xbf56c16bffe76516              # double -0.0013888888057550001
	.size	B3, 8

	.type	B4,@object                      # @B4
	.globl	B4
	.p2align	3, 0x0
B4:
	.dword	0x3efa019528242db7              # double 2.4801428034E-5
	.size	B4, 8

	.type	B5,@object                      # @B5
	.globl	B5
	.p2align	3, 0x0
B5:
	.dword	0xbe927bb3d47ddb8e              # double -2.7542133240000001E-7
	.size	B5, 8

	.type	B6,@object                      # @B6
	.globl	B6
	.p2align	3, 0x0
B6:
	.dword	0x3e2157b275df182a              # double 2.0189404999999998E-9
	.size	B6, 8

	.type	C0,@object                      # @C0
	.globl	C0
	.p2align	3, 0x0
C0:
	.dword	0x3ff0000000000000              # double 1
	.size	C0, 8

	.type	C1,@object                      # @C1
	.globl	C1
	.p2align	3, 0x0
C1:
	.dword	0x3feffffffe37b3e2              # double 0.99999999667999995
	.size	C1, 8

	.type	C2,@object                      # @C2
	.globl	C2
	.p2align	3, 0x0
C2:
	.dword	0x3fdfffffcc2ba4b8              # double 0.49999995173
	.size	C2, 8

	.type	C3,@object                      # @C3
	.globl	C3
	.p2align	3, 0x0
C3:
	.dword	0x3fc555587c476915              # double 0.16666704243
	.size	C3, 8

	.type	C4,@object                      # @C4
	.globl	C4
	.p2align	3, 0x0
C4:
	.dword	0x3fa5555b7e795548              # double 0.04166685027
	.size	C4, 8

	.type	C5,@object                      # @C5
	.globl	C5
	.p2align	3, 0x0
C5:
	.dword	0x3f810d9a4ad9120c              # double 0.0083267263500000008
	.size	C5, 8

	.type	C6,@object                      # @C6
	.globl	C6
	.p2align	3, 0x0
C6:
	.dword	0x3f5713187edb8c05              # double 0.00140836136
	.size	C6, 8

	.type	C7,@object                      # @C7
	.globl	C7
	.p2align	3, 0x0
C7:
	.dword	0x3f26c077c8173f3a              # double 1.7358267000000001E-4
	.size	C7, 8

	.type	C8,@object                      # @C8
	.globl	C8
	.p2align	3, 0x0
C8:
	.dword	0x3f049d03fe04b1cf              # double 3.9316829999999998E-5
	.size	C8, 8

	.type	D1,@object                      # @D1
	.globl	D1
	.p2align	3, 0x0
D1:
	.dword	0x3fa47ae143138374              # double 0.039999999464050001
	.size	D1, 8

	.type	D2,@object                      # @D2
	.globl	D2
	.p2align	3, 0x0
D2:
	.dword	0x3f4f75104d551d69              # double 9.6000000000000002E-4
	.size	D2, 8

	.type	D3,@object                      # @D3
	.globl	D3
	.p2align	3, 0x0
D3:
	.dword	0x3eb4b05a0ff4a728              # double 1.2331530000000001E-6
	.size	D3, 8

	.type	E2,@object                      # @E2
	.globl	E2
	.p2align	3, 0x0
E2:
	.dword	0x3f3f75104d551d69              # double 4.8000000000000001E-4
	.size	E2, 8

	.type	E3,@object                      # @E3
	.globl	E3
	.p2align	3, 0x0
E3:
	.dword	0x3e9b95cd6a9b898a              # double 4.1105099999999999E-7
	.size	E3, 8

	.type	TLimit,@object                  # @TLimit
	.bss
	.globl	TLimit
	.p2align	3, 0x0
TLimit:
	.dword	0x0000000000000000              # double 0
	.size	TLimit, 8

	.type	piref,@object                   # @piref
	.globl	piref
	.p2align	3, 0x0
piref:
	.dword	0x0000000000000000              # double 0
	.size	piref, 8

	.type	one,@object                     # @one
	.globl	one
	.p2align	3, 0x0
one:
	.dword	0x0000000000000000              # double 0
	.size	one, 8

	.type	two,@object                     # @two
	.globl	two
	.p2align	3, 0x0
two:
	.dword	0x0000000000000000              # double 0
	.size	two, 8

	.type	three,@object                   # @three
	.globl	three
	.p2align	3, 0x0
three:
	.dword	0x0000000000000000              # double 0
	.size	three, 8

	.type	four,@object                    # @four
	.globl	four
	.p2align	3, 0x0
four:
	.dword	0x0000000000000000              # double 0
	.size	four, 8

	.type	five,@object                    # @five
	.globl	five
	.p2align	3, 0x0
five:
	.dword	0x0000000000000000              # double 0
	.size	five, 8

	.type	scale,@object                   # @scale
	.globl	scale
	.p2align	3, 0x0
scale:
	.dword	0x0000000000000000              # double 0
	.size	scale, 8

	.type	sa,@object                      # @sa
	.globl	sa
	.p2align	3, 0x0
sa:
	.dword	0x0000000000000000              # double 0
	.size	sa, 8

	.type	sb,@object                      # @sb
	.globl	sb
	.p2align	3, 0x0
sb:
	.dword	0x0000000000000000              # double 0
	.size	sb, 8

	.type	sc,@object                      # @sc
	.globl	sc
	.p2align	3, 0x0
sc:
	.dword	0x0000000000000000              # double 0
	.size	sc, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"     4   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str.4, 36

	.type	nulltime,@object                # @nulltime
	.bss
	.globl	nulltime
	.p2align	3, 0x0
nulltime:
	.dword	0x0000000000000000              # double 0
	.size	nulltime, 8

	.type	TimeArray,@object               # @TimeArray
	.globl	TimeArray
	.p2align	3, 0x0
TimeArray:
	.space	24
	.size	TimeArray, 24

	.type	T,@object                       # @T
	.globl	T
	.p2align	3, 0x0
T:
	.space	288
	.size	T, 288

	.type	sd,@object                      # @sd
	.globl	sd
	.p2align	3, 0x0
sd:
	.dword	0x0000000000000000              # double 0
	.size	sd, 8

	.type	piprg,@object                   # @piprg
	.globl	piprg
	.p2align	3, 0x0
piprg:
	.dword	0x0000000000000000              # double 0
	.size	piprg, 8

	.type	pierr,@object                   # @pierr
	.globl	pierr
	.p2align	3, 0x0
pierr:
	.dword	0x0000000000000000              # double 0
	.size	pierr, 8

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\n"
	.size	.Lstr, 57

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"   Module     Error        RunTime      MFLOPS"
	.size	.Lstr.1, 47

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"                            (usec)"
	.size	.Lstr.2, 35

	.section	".note.GNU-stack","",@progbits
	.addrsig
