	.file	"poisson.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function my_rand
.LCPI0_0:
	.dword	0x3e00000000200000              # double 4.6566128752457969E-10
	.text
	.globl	my_rand
	.p2align	5
	.type	my_rand,@function
my_rand:                                # @my_rand
# %bb.0:
	lu12i.w	$a1, 30141
	ori	$a1, $a1, 2340
	xor	$a0, $a0, $a1
	lu12i.w	$a2, 130623
	ori	$a2, $a2, 2937
	lu32i.d	$a2, 460207
	lu52i.d	$a2, $a2, 1050
	mulh.d	$a2, $a0, $a2
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 15
	add.d	$a2, $a2, $a3
	lu12i.w	$a3, -32
	ori	$a3, $a3, 3299
	mul.d	$a3, $a2, $a3
	add.d	$a0, $a3, $a0
	lu12i.w	$a3, 4
	ori	$a3, $a3, 423
	mul.d	$a0, $a0, $a3
	lu12i.w	$a3, -1
	ori	$a3, $a3, 1260
	mul.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a2
	xor	$a1, $a0, $a1
	slti	$a0, $a0, 0
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	add.d	$a2, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	or	$a0, $a0, $a1
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	ret
.Lfunc_end0:
	.size	my_rand, .Lfunc_end0-my_rand
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
