	.file	"builtin-bitops-1.c"
	.text
	.globl	my_ffs                          # -- Begin function my_ffs
	.p2align	5
	.type	my_ffs,@function
my_ffs:                                 # @my_ffs
# %bb.0:
	beqz	$a0, .LBB0_33
# %bb.1:                                # %.preheader.preheader
	andi	$a2, $a0, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB0_32
# %bb.2:                                # %.preheader.1
	andi	$a2, $a0, 2
	ori	$a1, $zero, 2
	bnez	$a2, .LBB0_32
# %bb.3:                                # %.preheader.2
	andi	$a2, $a0, 4
	ori	$a1, $zero, 3
	bnez	$a2, .LBB0_32
# %bb.4:                                # %.preheader.3
	andi	$a2, $a0, 8
	ori	$a1, $zero, 4
	bnez	$a2, .LBB0_32
# %bb.5:                                # %.preheader.4
	andi	$a2, $a0, 16
	ori	$a1, $zero, 5
	bnez	$a2, .LBB0_32
# %bb.6:                                # %.preheader.5
	andi	$a2, $a0, 32
	ori	$a1, $zero, 6
	bnez	$a2, .LBB0_32
# %bb.7:                                # %.preheader.6
	andi	$a2, $a0, 64
	ori	$a1, $zero, 7
	bnez	$a2, .LBB0_32
# %bb.8:                                # %.preheader.7
	andi	$a2, $a0, 128
	ori	$a1, $zero, 8
	bnez	$a2, .LBB0_32
# %bb.9:                                # %.preheader.8
	andi	$a2, $a0, 256
	ori	$a1, $zero, 9
	bnez	$a2, .LBB0_32
# %bb.10:                               # %.preheader.9
	andi	$a2, $a0, 512
	ori	$a1, $zero, 10
	bnez	$a2, .LBB0_32
# %bb.11:                               # %.preheader.10
	andi	$a2, $a0, 1024
	ori	$a1, $zero, 11
	bnez	$a2, .LBB0_32
# %bb.12:                               # %.preheader.11
	slli.d	$a2, $a0, 52
	ori	$a1, $zero, 12
	bltz	$a2, .LBB0_32
# %bb.13:                               # %.preheader.12
	slli.d	$a2, $a0, 51
	ori	$a1, $zero, 13
	bltz	$a2, .LBB0_32
# %bb.14:                               # %.preheader.13
	slli.d	$a2, $a0, 50
	ori	$a1, $zero, 14
	bltz	$a2, .LBB0_32
# %bb.15:                               # %.preheader.14
	slli.d	$a2, $a0, 49
	ori	$a1, $zero, 15
	bltz	$a2, .LBB0_32
# %bb.16:                               # %.preheader.15
	slli.d	$a2, $a0, 48
	ori	$a1, $zero, 16
	bltz	$a2, .LBB0_32
# %bb.17:                               # %.preheader.16
	slli.d	$a2, $a0, 47
	ori	$a1, $zero, 17
	bltz	$a2, .LBB0_32
# %bb.18:                               # %.preheader.17
	slli.d	$a2, $a0, 46
	ori	$a1, $zero, 18
	bltz	$a2, .LBB0_32
# %bb.19:                               # %.preheader.18
	slli.d	$a2, $a0, 45
	ori	$a1, $zero, 19
	bltz	$a2, .LBB0_32
# %bb.20:                               # %.preheader.19
	slli.d	$a2, $a0, 44
	ori	$a1, $zero, 20
	bltz	$a2, .LBB0_32
# %bb.21:                               # %.preheader.20
	slli.d	$a2, $a0, 43
	ori	$a1, $zero, 21
	bltz	$a2, .LBB0_32
# %bb.22:                               # %.preheader.21
	slli.d	$a2, $a0, 42
	ori	$a1, $zero, 22
	bltz	$a2, .LBB0_32
# %bb.23:                               # %.preheader.22
	slli.d	$a2, $a0, 41
	ori	$a1, $zero, 23
	bltz	$a2, .LBB0_32
# %bb.24:                               # %.preheader.23
	slli.d	$a2, $a0, 40
	ori	$a1, $zero, 24
	bltz	$a2, .LBB0_32
# %bb.25:                               # %.preheader.24
	slli.d	$a2, $a0, 39
	ori	$a1, $zero, 25
	bltz	$a2, .LBB0_32
# %bb.26:                               # %.preheader.25
	slli.d	$a2, $a0, 38
	ori	$a1, $zero, 26
	bltz	$a2, .LBB0_32
# %bb.27:                               # %.preheader.26
	slli.d	$a2, $a0, 37
	ori	$a1, $zero, 27
	bltz	$a2, .LBB0_32
# %bb.28:                               # %.preheader.27
	slli.d	$a2, $a0, 36
	ori	$a1, $zero, 28
	bltz	$a2, .LBB0_32
# %bb.29:                               # %.preheader.28
	slli.d	$a2, $a0, 35
	ori	$a1, $zero, 29
	bltz	$a2, .LBB0_32
# %bb.30:                               # %.preheader.29
	slli.d	$a2, $a0, 34
	ori	$a1, $zero, 30
	bltz	$a2, .LBB0_32
# %bb.31:                               # %.preheader.30
	lu12i.w	$a1, 262144
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 31
.LBB0_32:                               # %.preheader.31
	move	$a0, $a1
	ret
.LBB0_33:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	my_ffs, .Lfunc_end0-my_ffs
                                        # -- End function
	.globl	my_ctz                          # -- Begin function my_ctz
	.p2align	5
	.type	my_ctz,@function
my_ctz:                                 # @my_ctz
# %bb.0:
	andi	$a1, $a0, 1
	bnez	$a1, .LBB1_33
# %bb.1:
	andi	$a2, $a0, 2
	ori	$a1, $zero, 1
	bnez	$a2, .LBB1_32
# %bb.2:
	andi	$a2, $a0, 4
	ori	$a1, $zero, 2
	bnez	$a2, .LBB1_32
# %bb.3:
	andi	$a2, $a0, 8
	ori	$a1, $zero, 3
	bnez	$a2, .LBB1_32
# %bb.4:
	andi	$a2, $a0, 16
	ori	$a1, $zero, 4
	bnez	$a2, .LBB1_32
# %bb.5:
	andi	$a2, $a0, 32
	ori	$a1, $zero, 5
	bnez	$a2, .LBB1_32
# %bb.6:
	andi	$a2, $a0, 64
	ori	$a1, $zero, 6
	bnez	$a2, .LBB1_32
# %bb.7:
	andi	$a2, $a0, 128
	ori	$a1, $zero, 7
	bnez	$a2, .LBB1_32
# %bb.8:
	andi	$a2, $a0, 256
	ori	$a1, $zero, 8
	bnez	$a2, .LBB1_32
# %bb.9:
	andi	$a2, $a0, 512
	ori	$a1, $zero, 9
	bnez	$a2, .LBB1_32
# %bb.10:
	andi	$a2, $a0, 1024
	ori	$a1, $zero, 10
	bnez	$a2, .LBB1_32
# %bb.11:
	slli.d	$a2, $a0, 52
	ori	$a1, $zero, 11
	bltz	$a2, .LBB1_32
# %bb.12:
	slli.d	$a2, $a0, 51
	ori	$a1, $zero, 12
	bltz	$a2, .LBB1_32
# %bb.13:
	slli.d	$a2, $a0, 50
	ori	$a1, $zero, 13
	bltz	$a2, .LBB1_32
# %bb.14:
	slli.d	$a2, $a0, 49
	ori	$a1, $zero, 14
	bltz	$a2, .LBB1_32
# %bb.15:
	slli.d	$a2, $a0, 48
	ori	$a1, $zero, 15
	bltz	$a2, .LBB1_32
# %bb.16:
	slli.d	$a2, $a0, 47
	ori	$a1, $zero, 16
	bltz	$a2, .LBB1_32
# %bb.17:
	slli.d	$a2, $a0, 46
	ori	$a1, $zero, 17
	bltz	$a2, .LBB1_32
# %bb.18:
	slli.d	$a2, $a0, 45
	ori	$a1, $zero, 18
	bltz	$a2, .LBB1_32
# %bb.19:
	slli.d	$a2, $a0, 44
	ori	$a1, $zero, 19
	bltz	$a2, .LBB1_32
# %bb.20:
	slli.d	$a2, $a0, 43
	ori	$a1, $zero, 20
	bltz	$a2, .LBB1_32
# %bb.21:
	slli.d	$a2, $a0, 42
	ori	$a1, $zero, 21
	bltz	$a2, .LBB1_32
# %bb.22:
	slli.d	$a2, $a0, 41
	ori	$a1, $zero, 22
	bltz	$a2, .LBB1_32
# %bb.23:
	slli.d	$a2, $a0, 40
	ori	$a1, $zero, 23
	bltz	$a2, .LBB1_32
# %bb.24:
	slli.d	$a2, $a0, 39
	ori	$a1, $zero, 24
	bltz	$a2, .LBB1_32
# %bb.25:
	slli.d	$a2, $a0, 38
	ori	$a1, $zero, 25
	bltz	$a2, .LBB1_32
# %bb.26:
	slli.d	$a2, $a0, 37
	ori	$a1, $zero, 26
	bltz	$a2, .LBB1_32
# %bb.27:
	slli.d	$a2, $a0, 36
	ori	$a1, $zero, 27
	bltz	$a2, .LBB1_32
# %bb.28:
	slli.d	$a2, $a0, 35
	ori	$a1, $zero, 28
	bltz	$a2, .LBB1_32
# %bb.29:
	slli.d	$a2, $a0, 34
	ori	$a1, $zero, 29
	bltz	$a2, .LBB1_32
# %bb.30:
	slli.d	$a2, $a0, 33
	ori	$a1, $zero, 30
	bltz	$a2, .LBB1_32
# %bb.31:
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 31
.LBB1_32:
	move	$a0, $a1
	ret
.LBB1_33:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	my_ctz, .Lfunc_end1-my_ctz
                                        # -- End function
	.globl	my_clz                          # -- Begin function my_clz
	.p2align	5
	.type	my_clz,@function
my_clz:                                 # @my_clz
# %bb.0:
	bltz	$a0, .LBB2_33
# %bb.1:
	bstrpick.d	$a2, $a0, 31, 30
	ori	$a1, $zero, 1
	bnez	$a2, .LBB2_32
# %bb.2:
	bstrpick.d	$a2, $a0, 31, 29
	ori	$a1, $zero, 2
	bnez	$a2, .LBB2_32
# %bb.3:
	bstrpick.d	$a2, $a0, 31, 28
	ori	$a1, $zero, 3
	bnez	$a2, .LBB2_32
# %bb.4:
	bstrpick.d	$a2, $a0, 31, 27
	ori	$a1, $zero, 4
	bnez	$a2, .LBB2_32
# %bb.5:
	bstrpick.d	$a2, $a0, 31, 26
	ori	$a1, $zero, 5
	bnez	$a2, .LBB2_32
# %bb.6:
	bstrpick.d	$a2, $a0, 31, 25
	ori	$a1, $zero, 6
	bnez	$a2, .LBB2_32
# %bb.7:
	bstrpick.d	$a2, $a0, 31, 24
	ori	$a1, $zero, 7
	bnez	$a2, .LBB2_32
# %bb.8:
	bstrpick.d	$a2, $a0, 31, 23
	ori	$a1, $zero, 8
	bnez	$a2, .LBB2_32
# %bb.9:
	bstrpick.d	$a2, $a0, 31, 22
	ori	$a1, $zero, 9
	bnez	$a2, .LBB2_32
# %bb.10:
	bstrpick.d	$a2, $a0, 31, 21
	ori	$a1, $zero, 10
	bnez	$a2, .LBB2_32
# %bb.11:
	bstrpick.d	$a2, $a0, 31, 20
	ori	$a1, $zero, 11
	bnez	$a2, .LBB2_32
# %bb.12:
	bstrpick.d	$a2, $a0, 31, 19
	ori	$a1, $zero, 12
	bnez	$a2, .LBB2_32
# %bb.13:
	bstrpick.d	$a2, $a0, 31, 18
	ori	$a1, $zero, 13
	bnez	$a2, .LBB2_32
# %bb.14:
	bstrpick.d	$a2, $a0, 31, 17
	ori	$a1, $zero, 14
	bnez	$a2, .LBB2_32
# %bb.15:
	bstrpick.d	$a2, $a0, 31, 16
	ori	$a1, $zero, 15
	bnez	$a2, .LBB2_32
# %bb.16:
	bstrpick.d	$a2, $a0, 31, 15
	ori	$a1, $zero, 16
	bnez	$a2, .LBB2_32
# %bb.17:
	bstrpick.d	$a2, $a0, 31, 14
	ori	$a1, $zero, 17
	bnez	$a2, .LBB2_32
# %bb.18:
	bstrpick.d	$a2, $a0, 31, 13
	ori	$a1, $zero, 18
	bnez	$a2, .LBB2_32
# %bb.19:
	bstrpick.d	$a2, $a0, 31, 12
	ori	$a1, $zero, 19
	bnez	$a2, .LBB2_32
# %bb.20:
	ori	$a2, $zero, 2047
	ori	$a1, $zero, 20
	bltu	$a2, $a0, .LBB2_32
# %bb.21:
	ori	$a2, $zero, 1023
	ori	$a1, $zero, 21
	bltu	$a2, $a0, .LBB2_32
# %bb.22:
	ori	$a2, $zero, 511
	ori	$a1, $zero, 22
	bltu	$a2, $a0, .LBB2_32
# %bb.23:
	ori	$a2, $zero, 255
	ori	$a1, $zero, 23
	bltu	$a2, $a0, .LBB2_32
# %bb.24:
	ori	$a2, $zero, 127
	ori	$a1, $zero, 24
	bltu	$a2, $a0, .LBB2_32
# %bb.25:
	ori	$a2, $zero, 63
	ori	$a1, $zero, 25
	bltu	$a2, $a0, .LBB2_32
# %bb.26:
	ori	$a2, $zero, 31
	ori	$a1, $zero, 26
	bltu	$a2, $a0, .LBB2_32
# %bb.27:
	ori	$a2, $zero, 15
	ori	$a1, $zero, 27
	bltu	$a2, $a0, .LBB2_32
# %bb.28:
	ori	$a2, $zero, 7
	ori	$a1, $zero, 28
	bltu	$a2, $a0, .LBB2_32
# %bb.29:
	ori	$a2, $zero, 3
	ori	$a1, $zero, 29
	bltu	$a2, $a0, .LBB2_32
# %bb.30:
	ori	$a2, $zero, 1
	ori	$a1, $zero, 30
	bltu	$a2, $a0, .LBB2_32
# %bb.31:
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 31
.LBB2_32:
	move	$a0, $a1
	ret
.LBB2_33:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	my_clz, .Lfunc_end2-my_clz
                                        # -- End function
	.globl	my_clrsb                        # -- Begin function my_clrsb
	.p2align	5
	.type	my_clrsb,@function
my_clrsb:                               # @my_clrsb
# %bb.0:
	bstrpick.d	$a1, $a0, 31, 31
	bstrpick.d	$a2, $a0, 30, 30
	bne	$a2, $a1, .LBB3_32
# %bb.1:
	bstrpick.d	$a3, $a0, 29, 29
	addi.w	$a2, $a1, 0
	ori	$a1, $zero, 1
	bne	$a3, $a2, .LBB3_31
# %bb.2:
	bstrpick.d	$a3, $a0, 28, 28
	ori	$a1, $zero, 2
	bne	$a3, $a2, .LBB3_31
# %bb.3:
	bstrpick.d	$a3, $a0, 27, 27
	ori	$a1, $zero, 3
	bne	$a3, $a2, .LBB3_31
# %bb.4:
	bstrpick.d	$a3, $a0, 26, 26
	ori	$a1, $zero, 4
	bne	$a3, $a2, .LBB3_31
# %bb.5:
	bstrpick.d	$a3, $a0, 25, 25
	ori	$a1, $zero, 5
	bne	$a3, $a2, .LBB3_31
# %bb.6:
	bstrpick.d	$a3, $a0, 24, 24
	ori	$a1, $zero, 6
	bne	$a3, $a2, .LBB3_31
# %bb.7:
	bstrpick.d	$a3, $a0, 23, 23
	ori	$a1, $zero, 7
	bne	$a3, $a2, .LBB3_31
# %bb.8:
	bstrpick.d	$a3, $a0, 22, 22
	ori	$a1, $zero, 8
	bne	$a3, $a2, .LBB3_31
# %bb.9:
	bstrpick.d	$a3, $a0, 21, 21
	ori	$a1, $zero, 9
	bne	$a3, $a2, .LBB3_31
# %bb.10:
	bstrpick.d	$a3, $a0, 20, 20
	ori	$a1, $zero, 10
	bne	$a3, $a2, .LBB3_31
# %bb.11:
	bstrpick.d	$a3, $a0, 19, 19
	ori	$a1, $zero, 11
	bne	$a3, $a2, .LBB3_31
# %bb.12:
	bstrpick.d	$a3, $a0, 18, 18
	ori	$a1, $zero, 12
	bne	$a3, $a2, .LBB3_31
# %bb.13:
	bstrpick.d	$a3, $a0, 17, 17
	ori	$a1, $zero, 13
	bne	$a3, $a2, .LBB3_31
# %bb.14:
	bstrpick.d	$a3, $a0, 16, 16
	ori	$a1, $zero, 14
	bne	$a3, $a2, .LBB3_31
# %bb.15:
	bstrpick.d	$a3, $a0, 15, 15
	ori	$a1, $zero, 15
	bne	$a3, $a2, .LBB3_31
# %bb.16:
	bstrpick.d	$a3, $a0, 14, 14
	ori	$a1, $zero, 16
	bne	$a3, $a2, .LBB3_31
# %bb.17:
	bstrpick.d	$a3, $a0, 13, 13
	ori	$a1, $zero, 17
	bne	$a3, $a2, .LBB3_31
# %bb.18:
	bstrpick.d	$a3, $a0, 12, 12
	ori	$a1, $zero, 18
	bne	$a3, $a2, .LBB3_31
# %bb.19:
	bstrpick.d	$a3, $a0, 11, 11
	ori	$a1, $zero, 19
	bne	$a3, $a2, .LBB3_31
# %bb.20:
	bstrpick.d	$a3, $a0, 10, 10
	ori	$a1, $zero, 20
	bne	$a3, $a2, .LBB3_31
# %bb.21:
	bstrpick.d	$a3, $a0, 9, 9
	ori	$a1, $zero, 21
	bne	$a3, $a2, .LBB3_31
# %bb.22:
	bstrpick.d	$a3, $a0, 8, 8
	ori	$a1, $zero, 22
	bne	$a3, $a2, .LBB3_31
# %bb.23:
	bstrpick.d	$a3, $a0, 7, 7
	ori	$a1, $zero, 23
	bne	$a3, $a2, .LBB3_31
# %bb.24:
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 24
	bne	$a3, $a2, .LBB3_31
# %bb.25:
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 25
	bne	$a3, $a2, .LBB3_31
# %bb.26:
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 26
	bne	$a3, $a2, .LBB3_31
# %bb.27:
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 27
	bne	$a3, $a2, .LBB3_31
# %bb.28:
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 28
	bne	$a3, $a2, .LBB3_31
# %bb.29:
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 29
	bne	$a3, $a2, .LBB3_31
# %bb.30:
	andi	$a0, $a0, 1
	xor	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 30
.LBB3_31:
	move	$a0, $a1
	ret
.LBB3_32:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	my_clrsb, .Lfunc_end3-my_clrsb
                                        # -- End function
	.globl	my_popcount                     # -- Begin function my_popcount
	.p2align	5
	.type	my_popcount,@function
my_popcount:                            # @my_popcount
# %bb.0:
	andi	$a1, $a0, 1
	bstrpick.d	$a2, $a0, 1, 1
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 2, 2
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 3, 3
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 4, 4
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 5, 5
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 6, 6
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 7, 7
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 8, 8
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 9, 9
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 10, 10
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 11, 11
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 12, 12
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 13, 13
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 14, 14
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 15, 15
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 16, 16
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 17, 17
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 18, 18
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 19, 19
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 20, 20
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 21, 21
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 22, 22
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 23, 23
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 24, 24
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 25, 25
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 26, 26
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 27, 27
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 28, 28
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 29, 29
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 30, 30
	add.d	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 31
	add.w	$a0, $a0, $a1
	ret
.Lfunc_end4:
	.size	my_popcount, .Lfunc_end4-my_popcount
                                        # -- End function
	.globl	my_parity                       # -- Begin function my_parity
	.p2align	5
	.type	my_parity,@function
my_parity:                              # @my_parity
# %bb.0:
	bstrpick.d	$a1, $a0, 31, 1
	add.d	$a1, $a1, $a0
	bstrpick.d	$a2, $a0, 31, 2
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 3
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 4
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 5
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 6
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 7
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 8
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 9
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 10
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 11
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 12
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 13
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 14
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 15
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 16
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 17
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 18
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 19
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 20
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 21
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 22
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 23
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 24
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 25
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 26
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 27
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 28
	add.d	$a1, $a2, $a1
	srli.d	$a2, $a0, 29
	add.d	$a1, $a2, $a1
	srli.d	$a2, $a0, 30
	add.d	$a1, $a2, $a1
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	ret
.Lfunc_end5:
	.size	my_parity, .Lfunc_end5-my_parity
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ffsl
.LCPI6_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI6_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI6_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI6_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI6_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI6_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI6_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI6_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ffsl
	.p2align	5
	.type	my_ffsl,@function
my_ffsl:                                # @my_ffsl
# %bb.0:
	beqz	$a0, .LBB6_6
# %bb.1:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_1)
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI6_2)
	pcalau12i	$a1, %pc_hi20(.LCPI6_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI6_3)
	pcalau12i	$a1, %pc_hi20(.LCPI6_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI6_4)
	pcalau12i	$a1, %pc_hi20(.LCPI6_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI6_5)
	pcalau12i	$a1, %pc_hi20(.LCPI6_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI6_6)
	pcalau12i	$a1, %pc_hi20(.LCPI6_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI6_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 15
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB6_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr11, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr15, $vr15, $vr8
	vand.v	$vr16, $vr16, $vr8
	vand.v	$vr17, $vr17, $vr8
	vand.v	$vr18, $vr18, $vr8
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr10
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr12
	vpickev.h	$vr11, $vr11, $vr13
	vpickev.b	$vr11, $vr11, $vr15
	vpickve2gr.b	$a2, $vr11, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr18, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB6_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB6_2 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB6_2
.LBB6_4:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB6_7
# %bb.5:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI6_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_8)
	vand.v	$vr0, $vr11, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB6_6:
	move	$a0, $zero
	ret
.LBB6_7:
	ori	$a0, $zero, 65
	ret
.Lfunc_end6:
	.size	my_ffsl, .Lfunc_end6-my_ffsl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ctzl
.LCPI7_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI7_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI7_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI7_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI7_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI7_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI7_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI7_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ctzl
	.p2align	5
	.type	my_ctzl,@function
my_ctzl:                                # @my_ctzl
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_0)
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_1)
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI7_2)
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI7_3)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI7_4)
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI7_5)
	pcalau12i	$a1, %pc_hi20(.LCPI7_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI7_6)
	pcalau12i	$a1, %pc_hi20(.LCPI7_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI7_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB7_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr11, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr15, $vr15, $vr8
	vand.v	$vr16, $vr16, $vr8
	vand.v	$vr17, $vr17, $vr8
	vand.v	$vr18, $vr18, $vr8
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr10
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr12
	vpickev.h	$vr11, $vr11, $vr13
	vpickev.b	$vr11, $vr11, $vr15
	vpickve2gr.b	$a2, $vr11, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr18, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB7_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB7_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB7_1
.LBB7_3:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB7_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI7_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_8)
	vand.v	$vr0, $vr11, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB7_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end7:
	.size	my_ctzl, .Lfunc_end7-my_ctzl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clzl
.LCPI8_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI8_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI8_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI8_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI8_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI8_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI8_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI8_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI8_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_clzl
	.p2align	5
	.type	my_clzl,@function
my_clzl:                                # @my_clzl
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_0)
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI8_1)
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI8_2)
	pcalau12i	$a1, %pc_hi20(.LCPI8_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI8_3)
	pcalau12i	$a1, %pc_hi20(.LCPI8_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI8_4)
	pcalau12i	$a1, %pc_hi20(.LCPI8_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI8_5)
	pcalau12i	$a1, %pc_hi20(.LCPI8_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI8_6)
	pcalau12i	$a1, %pc_hi20(.LCPI8_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI8_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	lu52i.d	$a1, $zero, -2048
	vreplgr2vr.d	$vr9, $a1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB8_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsrl.d	$vr11, $vr9, $vr0
	vsrl.d	$vr12, $vr9, $vr1
	vsrl.d	$vr13, $vr9, $vr2
	vsrl.d	$vr14, $vr9, $vr3
	vsrl.d	$vr15, $vr9, $vr4
	vsrl.d	$vr16, $vr9, $vr5
	vsrl.d	$vr17, $vr9, $vr6
	vsrl.d	$vr18, $vr9, $vr7
	vand.v	$vr11, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr15, $vr15, $vr8
	vand.v	$vr16, $vr16, $vr8
	vand.v	$vr17, $vr17, $vr8
	vand.v	$vr18, $vr18, $vr8
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr10
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr12
	vpickev.h	$vr11, $vr11, $vr13
	vpickev.b	$vr11, $vr11, $vr15
	vpickve2gr.b	$a2, $vr11, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr18, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB8_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB8_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB8_1
.LBB8_3:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB8_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI8_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_8)
	vand.v	$vr0, $vr11, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB8_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end8:
	.size	my_clzl, .Lfunc_end8-my_clzl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clrsbl
.LCPI9_0:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI9_1:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI9_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI9_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.text
	.globl	my_clrsbl
	.p2align	5
	.type	my_clrsbl,@function
my_clrsbl:                              # @my_clrsbl
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	srli.d	$a2, $a0, 63
	vreplgr2vr.d	$vr0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI9_0)
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI9_1)
	pcalau12i	$a1, %pc_hi20(.LCPI9_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI9_2)
	pcalau12i	$a1, %pc_hi20(.LCPI9_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI9_3)
	vreplgr2vr.d	$vr5, $a0
	addi.w	$a3, $zero, -7
	vrepli.d	$vr6, 63
	vrepli.d	$vr7, 1
	vrepli.b	$vr8, -1
	ori	$a1, $zero, 41
	.p2align	4, , 16
.LBB9_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a3
	vsub.d	$vr9, $vr6, $vr4
	vsub.d	$vr10, $vr6, $vr3
	vsub.d	$vr11, $vr6, $vr2
	vsub.d	$vr12, $vr6, $vr1
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr11, $vr5, $vr11
	vsrl.d	$vr10, $vr5, $vr10
	vsrl.d	$vr9, $vr5, $vr9
	vand.v	$vr13, $vr12, $vr7
	vand.v	$vr14, $vr11, $vr7
	vand.v	$vr10, $vr10, $vr7
	vand.v	$vr9, $vr9, $vr7
	vseq.d	$vr9, $vr9, $vr0
	vxor.v	$vr12, $vr9, $vr8
	vseq.d	$vr9, $vr10, $vr0
	vxor.v	$vr11, $vr9, $vr8
	vpickev.w	$vr15, $vr11, $vr12
	vseq.d	$vr9, $vr14, $vr0
	vxor.v	$vr10, $vr9, $vr8
	vseq.d	$vr9, $vr13, $vr0
	vxor.v	$vr9, $vr9, $vr8
	vpickev.w	$vr13, $vr9, $vr10
	vpickev.h	$vr13, $vr13, $vr15
	vpickve2gr.h	$a3, $vr13, 1
	andi	$a3, $a3, 1
	vpickve2gr.h	$a5, $vr12, 0
	bstrins.d	$a5, $a3, 63, 1
	vpickve2gr.h	$a3, $vr13, 2
	bstrins.d	$a5, $a3, 2, 2
	vpickve2gr.h	$a3, $vr13, 3
	bstrins.d	$a5, $a3, 3, 3
	vpickve2gr.h	$a3, $vr13, 4
	bstrins.d	$a5, $a3, 4, 4
	vpickve2gr.h	$a3, $vr13, 5
	bstrins.d	$a5, $a3, 5, 5
	vpickve2gr.h	$a3, $vr13, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 6
	or	$a3, $a5, $a3
	vpickve2gr.h	$a5, $vr13, 7
	slli.d	$a5, $a5, 7
	or	$a3, $a3, $a5
	andi	$a5, $a3, 255
	addi.d	$a3, $a4, 8
	bnez	$a5, .LBB9_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB9_1 Depth=1
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	bne	$a4, $a1, .LBB9_1
.LBB9_3:                                # %middle.split
	beqz	$a5, .LBB9_5
# %bb.4:                                # %vector.early.exit
	vpickve2gr.d	$a0, $vr12, 0
	vinsgr2vr.b	$vr0, $a0, 0
	vpickve2gr.d	$a0, $vr12, 1
	vinsgr2vr.b	$vr0, $a0, 1
	vpickve2gr.d	$a0, $vr11, 0
	vinsgr2vr.b	$vr0, $a0, 2
	vpickve2gr.d	$a0, $vr11, 1
	vinsgr2vr.b	$vr0, $a0, 3
	vpickve2gr.d	$a0, $vr10, 0
	vinsgr2vr.b	$vr0, $a0, 4
	vpickve2gr.d	$a0, $vr10, 1
	vinsgr2vr.b	$vr0, $a0, 5
	vpickve2gr.d	$a0, $vr9, 0
	vinsgr2vr.b	$vr0, $a0, 6
	vpickve2gr.d	$a0, $vr9, 1
	vinsgr2vr.b	$vr0, $a0, 7
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr1, $a0
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 0
	ori	$a1, $zero, 8
	sub.d	$a0, $a1, $a0
	andi	$a0, $a0, 255
	add.d	$a1, $a0, $a3
	b	.LBB9_12
.LBB9_5:                                # %scalar.ph
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 57
	bne	$a3, $a2, .LBB9_12
# %bb.6:                                # %scalar.ph.1
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 58
	bne	$a3, $a2, .LBB9_12
# %bb.7:                                # %scalar.ph.2
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 59
	bne	$a3, $a2, .LBB9_12
# %bb.8:                                # %scalar.ph.3
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 60
	bne	$a3, $a2, .LBB9_12
# %bb.9:                                # %scalar.ph.4
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 61
	bne	$a3, $a2, .LBB9_12
# %bb.10:                               # %scalar.ph.5
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 62
	bne	$a3, $a2, .LBB9_12
# %bb.11:                               # %scalar.ph.6
	andi	$a0, $a0, 1
	ori	$a1, $zero, 63
	beq	$a0, $a2, .LBB9_13
.LBB9_12:                               # %.split.loop.exit
	addi.w	$a1, $a1, -1
.LBB9_13:                               # %.split.loop.exit10
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	my_clrsbl, .Lfunc_end9-my_clrsbl
                                        # -- End function
	.globl	my_popcountl                    # -- Begin function my_popcountl
	.p2align	5
	.type	my_popcountl,@function
my_popcountl:                           # @my_popcountl
# %bb.0:
	andi	$a1, $a0, 1
	bstrpick.d	$a2, $a0, 1, 1
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 2, 2
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 3, 3
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 4, 4
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 5, 5
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 6, 6
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 7, 7
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 8, 8
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 9, 9
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 10, 10
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 11, 11
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 12, 12
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 13, 13
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 14, 14
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 15, 15
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 16, 16
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 17, 17
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 18, 18
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 19, 19
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 20, 20
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 21, 21
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 22, 22
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 23, 23
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 24, 24
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 25, 25
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 26, 26
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 27, 27
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 28, 28
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 29, 29
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 30, 30
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 31
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 32, 32
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 33, 33
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 34, 34
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 35, 35
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 36, 36
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 37, 37
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 38, 38
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 39, 39
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 40, 40
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 41, 41
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 42, 42
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 43, 43
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 44, 44
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 45, 45
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 46, 46
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 47, 47
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 48, 48
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 49, 49
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 50, 50
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 51, 51
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 52, 52
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 53, 53
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 54, 54
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 55, 55
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 56, 56
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 57, 57
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 58, 58
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 59, 59
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 60, 60
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 61, 61
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 62, 62
	add.d	$a1, $a2, $a1
	srli.d	$a0, $a0, 63
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end10:
	.size	my_popcountl, .Lfunc_end10-my_popcountl
                                        # -- End function
	.globl	my_parityl                      # -- Begin function my_parityl
	.p2align	5
	.type	my_parityl,@function
my_parityl:                             # @my_parityl
# %bb.0:
	srli.d	$a1, $a0, 1
	add.d	$a1, $a1, $a0
	srli.d	$a2, $a0, 2
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 3
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 4
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 5
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 6
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 7
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 8
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 9
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 10
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 11
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 12
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 13
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 14
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 15
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 16
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 17
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 18
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 19
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 20
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 21
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 22
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 23
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 24
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 25
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 26
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 27
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 28
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 29
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 30
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 31
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 32
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 33
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 34
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 35
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 36
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 37
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 38
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 39
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 40
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 41
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 42
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 43
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 44
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 45
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 46
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 47
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 48
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 49
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 50
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 51
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 52
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 53
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 54
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 55
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 56
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 57
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 58
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 59
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 60
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 61
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 62
	add.d	$a1, $a1, $a2
	srli.d	$a0, $a0, 63
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ret
.Lfunc_end11:
	.size	my_parityl, .Lfunc_end11-my_parityl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ffsll
.LCPI12_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI12_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI12_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI12_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI12_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI12_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI12_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI12_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI12_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ffsll
	.p2align	5
	.type	my_ffsll,@function
my_ffsll:                               # @my_ffsll
# %bb.0:
	beqz	$a0, .LBB12_6
# %bb.1:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_0)
	pcalau12i	$a1, %pc_hi20(.LCPI12_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI12_1)
	pcalau12i	$a1, %pc_hi20(.LCPI12_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI12_2)
	pcalau12i	$a1, %pc_hi20(.LCPI12_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI12_3)
	pcalau12i	$a1, %pc_hi20(.LCPI12_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI12_4)
	pcalau12i	$a1, %pc_hi20(.LCPI12_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI12_5)
	pcalau12i	$a1, %pc_hi20(.LCPI12_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI12_6)
	pcalau12i	$a1, %pc_hi20(.LCPI12_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI12_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 15
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB12_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr11, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr15, $vr15, $vr8
	vand.v	$vr16, $vr16, $vr8
	vand.v	$vr17, $vr17, $vr8
	vand.v	$vr18, $vr18, $vr8
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr10
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr12
	vpickev.h	$vr11, $vr11, $vr13
	vpickev.b	$vr11, $vr11, $vr15
	vpickve2gr.b	$a2, $vr11, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr18, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB12_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB12_2 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB12_2
.LBB12_4:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB12_7
# %bb.5:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI12_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_8)
	vand.v	$vr0, $vr11, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB12_6:
	move	$a0, $zero
	ret
.LBB12_7:
	ori	$a0, $zero, 65
	ret
.Lfunc_end12:
	.size	my_ffsll, .Lfunc_end12-my_ffsll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ctzll
.LCPI13_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI13_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI13_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI13_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI13_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI13_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI13_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI13_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI13_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ctzll
	.p2align	5
	.type	my_ctzll,@function
my_ctzll:                               # @my_ctzll
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI13_0)
	pcalau12i	$a1, %pc_hi20(.LCPI13_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI13_1)
	pcalau12i	$a1, %pc_hi20(.LCPI13_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI13_2)
	pcalau12i	$a1, %pc_hi20(.LCPI13_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI13_3)
	pcalau12i	$a1, %pc_hi20(.LCPI13_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI13_4)
	pcalau12i	$a1, %pc_hi20(.LCPI13_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI13_5)
	pcalau12i	$a1, %pc_hi20(.LCPI13_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI13_6)
	pcalau12i	$a1, %pc_hi20(.LCPI13_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI13_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr11, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr15, $vr15, $vr8
	vand.v	$vr16, $vr16, $vr8
	vand.v	$vr17, $vr17, $vr8
	vand.v	$vr18, $vr18, $vr8
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr10
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr12
	vpickev.h	$vr11, $vr11, $vr13
	vpickev.b	$vr11, $vr11, $vr15
	vpickve2gr.b	$a2, $vr11, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr18, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB13_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB13_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB13_1
.LBB13_3:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB13_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI13_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI13_8)
	vand.v	$vr0, $vr11, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB13_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end13:
	.size	my_ctzll, .Lfunc_end13-my_ctzll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clzll
.LCPI14_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI14_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI14_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI14_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI14_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI14_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI14_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI14_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI14_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_clzll
	.p2align	5
	.type	my_clzll,@function
my_clzll:                               # @my_clzll
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI14_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_0)
	pcalau12i	$a1, %pc_hi20(.LCPI14_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI14_1)
	pcalau12i	$a1, %pc_hi20(.LCPI14_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI14_2)
	pcalau12i	$a1, %pc_hi20(.LCPI14_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI14_3)
	pcalau12i	$a1, %pc_hi20(.LCPI14_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI14_4)
	pcalau12i	$a1, %pc_hi20(.LCPI14_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI14_5)
	pcalau12i	$a1, %pc_hi20(.LCPI14_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI14_6)
	pcalau12i	$a1, %pc_hi20(.LCPI14_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI14_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	lu52i.d	$a1, $zero, -2048
	vreplgr2vr.d	$vr9, $a1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB14_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsrl.d	$vr11, $vr9, $vr0
	vsrl.d	$vr12, $vr9, $vr1
	vsrl.d	$vr13, $vr9, $vr2
	vsrl.d	$vr14, $vr9, $vr3
	vsrl.d	$vr15, $vr9, $vr4
	vsrl.d	$vr16, $vr9, $vr5
	vsrl.d	$vr17, $vr9, $vr6
	vsrl.d	$vr18, $vr9, $vr7
	vand.v	$vr11, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr15, $vr15, $vr8
	vand.v	$vr16, $vr16, $vr8
	vand.v	$vr17, $vr17, $vr8
	vand.v	$vr18, $vr18, $vr8
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr10
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr12
	vpickev.h	$vr11, $vr11, $vr13
	vpickev.b	$vr11, $vr11, $vr15
	vpickve2gr.b	$a2, $vr11, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr18, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr11, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB14_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB14_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB14_1
.LBB14_3:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB14_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI14_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_8)
	vand.v	$vr0, $vr11, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB14_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end14:
	.size	my_clzll, .Lfunc_end14-my_clzll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clrsbll
.LCPI15_0:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI15_1:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI15_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI15_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.text
	.globl	my_clrsbll
	.p2align	5
	.type	my_clrsbll,@function
my_clrsbll:                             # @my_clrsbll
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	srli.d	$a2, $a0, 63
	vreplgr2vr.d	$vr0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI15_0)
	pcalau12i	$a1, %pc_hi20(.LCPI15_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI15_1)
	pcalau12i	$a1, %pc_hi20(.LCPI15_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI15_2)
	pcalau12i	$a1, %pc_hi20(.LCPI15_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI15_3)
	vreplgr2vr.d	$vr5, $a0
	addi.w	$a3, $zero, -7
	vrepli.d	$vr6, 63
	vrepli.d	$vr7, 1
	vrepli.b	$vr8, -1
	ori	$a1, $zero, 41
	.p2align	4, , 16
.LBB15_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a3
	vsub.d	$vr9, $vr6, $vr4
	vsub.d	$vr10, $vr6, $vr3
	vsub.d	$vr11, $vr6, $vr2
	vsub.d	$vr12, $vr6, $vr1
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr11, $vr5, $vr11
	vsrl.d	$vr10, $vr5, $vr10
	vsrl.d	$vr9, $vr5, $vr9
	vand.v	$vr13, $vr12, $vr7
	vand.v	$vr14, $vr11, $vr7
	vand.v	$vr10, $vr10, $vr7
	vand.v	$vr9, $vr9, $vr7
	vseq.d	$vr9, $vr9, $vr0
	vxor.v	$vr12, $vr9, $vr8
	vseq.d	$vr9, $vr10, $vr0
	vxor.v	$vr11, $vr9, $vr8
	vpickev.w	$vr15, $vr11, $vr12
	vseq.d	$vr9, $vr14, $vr0
	vxor.v	$vr10, $vr9, $vr8
	vseq.d	$vr9, $vr13, $vr0
	vxor.v	$vr9, $vr9, $vr8
	vpickev.w	$vr13, $vr9, $vr10
	vpickev.h	$vr13, $vr13, $vr15
	vpickve2gr.h	$a3, $vr13, 1
	andi	$a3, $a3, 1
	vpickve2gr.h	$a5, $vr12, 0
	bstrins.d	$a5, $a3, 63, 1
	vpickve2gr.h	$a3, $vr13, 2
	bstrins.d	$a5, $a3, 2, 2
	vpickve2gr.h	$a3, $vr13, 3
	bstrins.d	$a5, $a3, 3, 3
	vpickve2gr.h	$a3, $vr13, 4
	bstrins.d	$a5, $a3, 4, 4
	vpickve2gr.h	$a3, $vr13, 5
	bstrins.d	$a5, $a3, 5, 5
	vpickve2gr.h	$a3, $vr13, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 6
	or	$a3, $a5, $a3
	vpickve2gr.h	$a5, $vr13, 7
	slli.d	$a5, $a5, 7
	or	$a3, $a3, $a5
	andi	$a5, $a3, 255
	addi.d	$a3, $a4, 8
	bnez	$a5, .LBB15_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB15_1 Depth=1
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	bne	$a4, $a1, .LBB15_1
.LBB15_3:                               # %middle.split
	beqz	$a5, .LBB15_5
# %bb.4:                                # %vector.early.exit
	vpickve2gr.d	$a0, $vr12, 0
	vinsgr2vr.b	$vr0, $a0, 0
	vpickve2gr.d	$a0, $vr12, 1
	vinsgr2vr.b	$vr0, $a0, 1
	vpickve2gr.d	$a0, $vr11, 0
	vinsgr2vr.b	$vr0, $a0, 2
	vpickve2gr.d	$a0, $vr11, 1
	vinsgr2vr.b	$vr0, $a0, 3
	vpickve2gr.d	$a0, $vr10, 0
	vinsgr2vr.b	$vr0, $a0, 4
	vpickve2gr.d	$a0, $vr10, 1
	vinsgr2vr.b	$vr0, $a0, 5
	vpickve2gr.d	$a0, $vr9, 0
	vinsgr2vr.b	$vr0, $a0, 6
	vpickve2gr.d	$a0, $vr9, 1
	vinsgr2vr.b	$vr0, $a0, 7
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr1, $a0
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 0
	ori	$a1, $zero, 8
	sub.d	$a0, $a1, $a0
	andi	$a0, $a0, 255
	add.d	$a1, $a0, $a3
	b	.LBB15_12
.LBB15_5:                               # %scalar.ph
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 57
	bne	$a3, $a2, .LBB15_12
# %bb.6:                                # %scalar.ph.1
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 58
	bne	$a3, $a2, .LBB15_12
# %bb.7:                                # %scalar.ph.2
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 59
	bne	$a3, $a2, .LBB15_12
# %bb.8:                                # %scalar.ph.3
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 60
	bne	$a3, $a2, .LBB15_12
# %bb.9:                                # %scalar.ph.4
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 61
	bne	$a3, $a2, .LBB15_12
# %bb.10:                               # %scalar.ph.5
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 62
	bne	$a3, $a2, .LBB15_12
# %bb.11:                               # %scalar.ph.6
	andi	$a0, $a0, 1
	ori	$a1, $zero, 63
	beq	$a0, $a2, .LBB15_13
.LBB15_12:                              # %.split.loop.exit
	addi.w	$a1, $a1, -1
.LBB15_13:                              # %.split.loop.exit10
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	my_clrsbll, .Lfunc_end15-my_clrsbll
                                        # -- End function
	.globl	my_popcountll                   # -- Begin function my_popcountll
	.p2align	5
	.type	my_popcountll,@function
my_popcountll:                          # @my_popcountll
# %bb.0:
	andi	$a1, $a0, 1
	bstrpick.d	$a2, $a0, 1, 1
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 2, 2
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 3, 3
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 4, 4
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 5, 5
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 6, 6
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 7, 7
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 8, 8
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 9, 9
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 10, 10
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 11, 11
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 12, 12
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 13, 13
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 14, 14
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 15, 15
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 16, 16
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 17, 17
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 18, 18
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 19, 19
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 20, 20
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 21, 21
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 22, 22
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 23, 23
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 24, 24
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 25, 25
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 26, 26
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 27, 27
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 28, 28
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 29, 29
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 30, 30
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 31
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 32, 32
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 33, 33
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 34, 34
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 35, 35
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 36, 36
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 37, 37
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 38, 38
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 39, 39
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 40, 40
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 41, 41
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 42, 42
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 43, 43
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 44, 44
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 45, 45
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 46, 46
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 47, 47
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 48, 48
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 49, 49
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 50, 50
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 51, 51
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 52, 52
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 53, 53
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 54, 54
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 55, 55
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 56, 56
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 57, 57
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 58, 58
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 59, 59
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 60, 60
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 61, 61
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 62, 62
	add.d	$a1, $a2, $a1
	srli.d	$a0, $a0, 63
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end16:
	.size	my_popcountll, .Lfunc_end16-my_popcountll
                                        # -- End function
	.globl	my_parityll                     # -- Begin function my_parityll
	.p2align	5
	.type	my_parityll,@function
my_parityll:                            # @my_parityll
# %bb.0:
	srli.d	$a1, $a0, 1
	add.d	$a1, $a1, $a0
	srli.d	$a2, $a0, 2
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 3
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 4
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 5
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 6
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 7
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 8
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 9
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 10
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 11
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 12
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 13
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 14
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 15
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 16
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 17
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 18
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 19
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 20
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 21
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 22
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 23
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 24
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 25
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 26
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 27
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 28
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 29
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 30
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 31
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 32
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 33
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 34
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 35
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 36
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 37
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 38
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 39
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 40
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 41
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 42
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 43
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 44
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 45
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 46
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 47
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 48
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 49
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 50
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 51
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 52
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 53
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 54
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 55
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 56
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 57
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 58
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 59
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 60
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 61
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 62
	add.d	$a1, $a1, $a2
	srli.d	$a0, $a0, 63
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ret
.Lfunc_end17:
	.size	my_parityll, .Lfunc_end17-my_parityll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI18_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI18_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI18_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI18_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI18_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI18_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI18_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI18_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI18_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
.LCPI18_9:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI18_10:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI18_11:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI18_12:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
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
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(ints)
	addi.d	$s1, $a0, %pc_lo12(ints)
	ori	$s2, $zero, 52
	.p2align	4, , 16
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$fp, $s1, $s0
	ctz.d	$s3, $fp
	addi.d	$a0, $s3, 1
	sltui	$a1, $fp, 1
	masknez	$s4, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_ffs)
	jirl	$ra, $ra, 0
	bne	$s4, $a0, .LBB18_80
# %bb.2:                                #   in Loop: Header=BB18_1 Depth=1
	beqz	$fp, .LBB18_5
# %bb.3:                                #   in Loop: Header=BB18_1 Depth=1
	slli.d	$a0, $fp, 32
	clz.d	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_clz)
	jirl	$ra, $ra, 0
	bne	$s4, $a0, .LBB18_80
# %bb.4:                                #   in Loop: Header=BB18_1 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_ctz)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB18_80
.LBB18_5:                               # %.thread
                                        #   in Loop: Header=BB18_1 Depth=1
	srai.d	$a0, $fp, 31
	xor	$a0, $a0, $fp
	clz.w	$a0, $a0
	addi.w	$s3, $a0, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_clrsb)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB18_80
# %bb.6:                                #   in Loop: Header=BB18_1 Depth=1
	bstrpick.d	$a0, $fp, 31, 0
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $a0, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_popcount)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB18_80
# %bb.7:                                #   in Loop: Header=BB18_1 Depth=1
	bstrpick.d	$a0, $fp, 31, 1
	add.d	$a0, $a0, $fp
	bstrpick.d	$a1, $fp, 31, 2
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 3
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 4
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 5
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 6
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 7
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 8
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 9
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 10
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 11
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 12
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 13
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 14
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 15
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 16
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 17
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 18
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 19
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 20
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 21
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 22
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 23
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 24
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 25
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 26
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 27
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 28
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 29
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 30
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 31
	add.d	$a0, $a0, $a1
	xor	$a0, $a0, $s3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_80
# %bb.8:                                #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s0, $s0, 4
	bne	$s0, $s2, .LBB18_1
# %bb.9:                                # %.preheader956.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(longs)
	addi.d	$a0, $a0, %pc_lo12(longs)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_9)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_9)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_10)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_10)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_11)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_11)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_12)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_12)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	addi.w	$a0, $zero, -7
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vrepli.d	$vr18, 63
	vrepli.d	$vr19, 1
	vrepli.b	$vr20, -1
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ori	$s0, $zero, 41
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_3)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(.LCPI18_4)
	pcalau12i	$s5, %pc_hi20(.LCPI18_5)
	pcalau12i	$s6, %pc_hi20(.LCPI18_6)
	lu52i.d	$s7, $zero, -2048
	ori	$s1, $zero, 32
	vst	$vr18, $sp, 192                 # 16-byte Folded Spill
	vst	$vr19, $sp, 176                 # 16-byte Folded Spill
	vst	$vr20, $sp, 160                 # 16-byte Folded Spill
	.p2align	4, , 16
.LBB18_10:                              # %.preheader956
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_12 Depth 2
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_23 Depth 2
                                        #     Child Loop BB18_28 Depth 2
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$fp, $a1, $a0
	vreplgr2vr.d	$vr0, $fp
	beqz	$fp, .LBB18_27
# %bb.11:                               # %vector.ph1085
                                        #   in Loop: Header=BB18_10 Depth=1
	ctz.d	$a0, $fp
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	vld	$vr1, $a1, %pc_lo12(.LCPI18_0)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	vld	$vr2, $a1, %pc_lo12(.LCPI18_1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	vld	$vr3, $a1, %pc_lo12(.LCPI18_2)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	vld	$vr4, $a1, %pc_lo12(.LCPI18_3)
	vld	$vr5, $s4, %pc_lo12(.LCPI18_4)
	vld	$vr6, $s5, %pc_lo12(.LCPI18_5)
	vld	$vr7, $s6, %pc_lo12(.LCPI18_6)
	pcalau12i	$a1, %pc_hi20(.LCPI18_7)
	vld	$vr8, $a1, %pc_lo12(.LCPI18_7)
	addi.d	$a3, $a0, 1
	ori	$a4, $zero, 15
	ori	$a5, $zero, 48
	.p2align	4, , 16
.LBB18_12:                              # %vector.body1088
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a5
	vsll.d	$vr9, $vr19, $vr1
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vsll.d	$vr16, $vr19, $vr8
	vand.v	$vr9, $vr9, $vr0
	vand.v	$vr10, $vr10, $vr0
	vand.v	$vr11, $vr11, $vr0
	vand.v	$vr12, $vr12, $vr0
	vand.v	$vr13, $vr13, $vr0
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr15, $vr15, $vr0
	vand.v	$vr16, $vr16, $vr0
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr20
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vpickev.w	$vr15, $vr15, $vr16
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vpickev.w	$vr13, $vr13, $vr14
	vpickev.h	$vr13, $vr13, $vr15
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr11, $vr11, $vr12
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr10
	vpickev.h	$vr9, $vr9, $vr11
	vpickev.b	$vr9, $vr9, $vr13
	vpickve2gr.b	$a5, $vr9, 1
	andi	$a5, $a5, 1
	vpickve2gr.b	$a6, $vr16, 0
	bstrins.d	$a6, $a5, 63, 1
	vpickve2gr.b	$a5, $vr9, 2
	bstrins.d	$a6, $a5, 2, 2
	vpickve2gr.b	$a5, $vr9, 3
	bstrins.d	$a6, $a5, 3, 3
	vpickve2gr.b	$a5, $vr9, 4
	bstrins.d	$a6, $a5, 4, 4
	vpickve2gr.b	$a5, $vr9, 5
	bstrins.d	$a6, $a5, 5, 5
	vpickve2gr.b	$a5, $vr9, 6
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 6
	or	$a5, $a6, $a5
	vpickve2gr.b	$a6, $vr9, 7
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 7
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 8
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 8
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 9
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 9
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 10
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 10
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 11
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 11
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 12
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 12
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 13
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 13
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 14
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 14
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 15
	slli.d	$a6, $a6, 15
	or	$a5, $a5, $a6
	bstrpick.d	$a6, $a5, 15, 0
	addi.d	$a4, $a4, -16
	bnez	$a6, .LBB18_14
# %bb.13:                               # %vector.body1088
                                        #   in Loop: Header=BB18_12 Depth=2
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	addi.d	$a5, $a2, -16
	bnez	$a2, .LBB18_12
.LBB18_14:                              # %middle.split1093
                                        #   in Loop: Header=BB18_10 Depth=1
	slli.d	$a5, $a6, 48
	pcalau12i	$a2, %pc_hi20(.LCPI18_8)
	beqz	$a5, .LBB18_16
# %bb.15:                               # %vector.early.exit1095
                                        #   in Loop: Header=BB18_10 Depth=1
	vld	$vr1, $a2, %pc_lo12(.LCPI18_8)
	vand.v	$vr1, $vr9, $vr1
	vbsrl.v	$vr2, $vr1, 8
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 2
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 1
	vmax.bu	$vr1, $vr2, $vr1
	vpickve2gr.b	$a5, $vr1, 0
	ori	$a6, $zero, 16
	sub.d	$a5, $a6, $a5
	andi	$a5, $a5, 255
	sub.w	$a4, $a5, $a4
	beq	$a3, $a4, .LBB18_17
	b	.LBB18_80
	.p2align	4, , 16
.LBB18_16:                              #   in Loop: Header=BB18_10 Depth=1
	ori	$a4, $zero, 65
	bne	$a3, $a4, .LBB18_80
.LBB18_17:                              # %vector.ph1073
                                        #   in Loop: Header=BB18_10 Depth=1
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	vld	$vr1, $a3, %pc_lo12(.LCPI18_0)
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	vld	$vr2, $a3, %pc_lo12(.LCPI18_1)
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	vld	$vr3, $a3, %pc_lo12(.LCPI18_2)
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	vld	$vr4, $a3, %pc_lo12(.LCPI18_3)
	vld	$vr5, $s4, %pc_lo12(.LCPI18_4)
	vld	$vr6, $s5, %pc_lo12(.LCPI18_5)
	vld	$vr7, $s6, %pc_lo12(.LCPI18_6)
	vld	$vr8, $a1, %pc_lo12(.LCPI18_7)
	clz.d	$a3, $fp
	addi.w	$a5, $zero, -16
	.p2align	4, , 16
.LBB18_18:                              # %vector.body1076
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a5
	vreplgr2vr.d	$vr9, $s7
	vsrl.d	$vr10, $vr9, $vr1
	vsrl.d	$vr11, $vr9, $vr2
	vsrl.d	$vr12, $vr9, $vr3
	vsrl.d	$vr13, $vr9, $vr4
	vsrl.d	$vr14, $vr9, $vr5
	vsrl.d	$vr15, $vr9, $vr6
	vsrl.d	$vr16, $vr9, $vr7
	vsrl.d	$vr9, $vr9, $vr8
	vand.v	$vr10, $vr10, $vr0
	vand.v	$vr11, $vr11, $vr0
	vand.v	$vr12, $vr12, $vr0
	vand.v	$vr13, $vr13, $vr0
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr15, $vr15, $vr0
	vand.v	$vr16, $vr16, $vr0
	vand.v	$vr9, $vr9, $vr0
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr17, $vr9, $vr20
	vseqi.d	$vr9, $vr16, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vpickev.w	$vr14, $vr14, $vr15
	vpickev.h	$vr9, $vr14, $vr9
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickev.w	$vr12, $vr12, $vr13
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vpickev.w	$vr10, $vr10, $vr11
	vpickev.h	$vr10, $vr10, $vr12
	vpickev.b	$vr9, $vr10, $vr9
	vpickve2gr.b	$a5, $vr9, 1
	andi	$a5, $a5, 1
	vpickve2gr.b	$a6, $vr17, 0
	bstrins.d	$a6, $a5, 63, 1
	vpickve2gr.b	$a5, $vr9, 2
	bstrins.d	$a6, $a5, 2, 2
	vpickve2gr.b	$a5, $vr9, 3
	bstrins.d	$a6, $a5, 3, 3
	vpickve2gr.b	$a5, $vr9, 4
	bstrins.d	$a6, $a5, 4, 4
	vpickve2gr.b	$a5, $vr9, 5
	bstrins.d	$a6, $a5, 5, 5
	vpickve2gr.b	$a5, $vr9, 6
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 6
	or	$a5, $a6, $a5
	vpickve2gr.b	$a6, $vr9, 7
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 7
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 8
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 8
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 9
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 9
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 10
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 10
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 11
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 11
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 12
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 12
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 13
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 13
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 14
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 14
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 15
	slli.d	$a6, $a6, 15
	or	$a5, $a5, $a6
	bstrpick.d	$a6, $a5, 15, 0
	addi.d	$a5, $a4, 16
	bnez	$a6, .LBB18_20
# %bb.19:                               # %vector.body1076
                                        #   in Loop: Header=BB18_18 Depth=2
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	bne	$a4, $s1, .LBB18_18
.LBB18_20:                              # %middle.split1081
                                        #   in Loop: Header=BB18_10 Depth=1
	slli.d	$a4, $a6, 48
	beqz	$a4, .LBB18_80
# %bb.21:                               # %vector.early.exit1083
                                        #   in Loop: Header=BB18_10 Depth=1
	vld	$vr1, $a2, %pc_lo12(.LCPI18_8)
	vand.v	$vr2, $vr9, $vr1
	vbsrl.v	$vr3, $vr2, 8
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 4
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 2
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 1
	vmax.bu	$vr2, $vr3, $vr2
	vpickve2gr.b	$a2, $vr2, 0
	ori	$a4, $zero, 16
	sub.d	$a2, $a4, $a2
	andi	$a2, $a2, 255
	sub.d	$a2, $a3, $a2
	bne	$a2, $a5, .LBB18_80
# %bb.22:                               # %vector.ph1061
                                        #   in Loop: Header=BB18_10 Depth=1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr2, $a2, %pc_lo12(.LCPI18_0)
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	vld	$vr3, $a2, %pc_lo12(.LCPI18_1)
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr4, $a2, %pc_lo12(.LCPI18_2)
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr5, $a2, %pc_lo12(.LCPI18_3)
	vld	$vr6, $s4, %pc_lo12(.LCPI18_4)
	vld	$vr7, $s5, %pc_lo12(.LCPI18_5)
	vld	$vr8, $s6, %pc_lo12(.LCPI18_6)
	vld	$vr9, $a1, %pc_lo12(.LCPI18_7)
	addi.w	$a2, $zero, -16
	.p2align	4, , 16
.LBB18_23:                              # %vector.body1064
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vsll.d	$vr16, $vr19, $vr8
	vsll.d	$vr17, $vr19, $vr9
	vand.v	$vr10, $vr10, $vr0
	vand.v	$vr11, $vr11, $vr0
	vand.v	$vr12, $vr12, $vr0
	vand.v	$vr13, $vr13, $vr0
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr15, $vr15, $vr0
	vand.v	$vr16, $vr16, $vr0
	vand.v	$vr17, $vr17, $vr0
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr20
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr20
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vpickev.w	$vr14, $vr14, $vr15
	vpickev.h	$vr14, $vr14, $vr16
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickev.w	$vr12, $vr12, $vr13
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vpickev.w	$vr10, $vr10, $vr11
	vpickev.h	$vr10, $vr10, $vr12
	vpickev.b	$vr10, $vr10, $vr14
	vpickve2gr.b	$a2, $vr10, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr10, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr10, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr10, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr10, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr10, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr10, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a2, $a1, 16
	bnez	$a3, .LBB18_25
# %bb.24:                               # %vector.body1064
                                        #   in Loop: Header=BB18_23 Depth=2
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	bne	$a1, $s1, .LBB18_23
.LBB18_25:                              # %middle.split1069
                                        #   in Loop: Header=BB18_10 Depth=1
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB18_80
# %bb.26:                               # %vector.early.exit1071
                                        #   in Loop: Header=BB18_10 Depth=1
	vand.v	$vr1, $vr10, $vr1
	vbsrl.v	$vr2, $vr1, 8
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 2
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 1
	vmax.bu	$vr1, $vr2, $vr1
	vpickve2gr.b	$a1, $vr1, 0
	ori	$a3, $zero, 16
	sub.d	$a1, $a3, $a1
	andi	$a1, $a1, 255
	sub.d	$a0, $a0, $a1
	bne	$a0, $a2, .LBB18_80
.LBB18_27:                              # %.thread810
                                        #   in Loop: Header=BB18_10 Depth=1
	srai.d	$a0, $fp, 63
	xor	$a0, $a0, $fp
	clz.d	$a0, $a0
	addi.d	$a0, $a0, -1
	srli.d	$s2, $fp, 63
	vreplgr2vr.d	$vr1, $s2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_28:                              # %vector.body
                                        #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	vsub.d	$vr6, $vr18, $vr5
	vsub.d	$vr7, $vr18, $vr4
	vsub.d	$vr8, $vr18, $vr3
	vsub.d	$vr9, $vr18, $vr2
	vsrl.d	$vr9, $vr0, $vr9
	vsrl.d	$vr8, $vr0, $vr8
	vsrl.d	$vr7, $vr0, $vr7
	vsrl.d	$vr6, $vr0, $vr6
	vand.v	$vr6, $vr6, $vr19
	vand.v	$vr7, $vr7, $vr19
	vand.v	$vr8, $vr8, $vr19
	vand.v	$vr9, $vr9, $vr19
	vseq.d	$vr9, $vr9, $vr1
	vxor.v	$vr9, $vr9, $vr20
	vseq.d	$vr8, $vr8, $vr1
	vxor.v	$vr8, $vr8, $vr20
	vpickev.w	$vr10, $vr8, $vr9
	vseq.d	$vr7, $vr7, $vr1
	vxor.v	$vr7, $vr7, $vr20
	vseq.d	$vr6, $vr6, $vr1
	vxor.v	$vr6, $vr6, $vr20
	vpickev.w	$vr11, $vr6, $vr7
	vpickev.h	$vr10, $vr11, $vr10
	vpickve2gr.h	$a2, $vr10, 1
	andi	$a2, $a2, 1
	vpickve2gr.h	$a3, $vr9, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.h	$a2, $vr10, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.h	$a2, $vr10, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.h	$a2, $vr10, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.h	$a2, $vr10, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.h	$a2, $vr10, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.h	$a3, $vr10, 7
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	andi	$a3, $a2, 255
	addi.d	$a2, $a1, 8
	bnez	$a3, .LBB18_30
# %bb.29:                               # %vector.body
                                        #   in Loop: Header=BB18_28 Depth=2
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr5, $vr5, 8
	bne	$a1, $s0, .LBB18_28
.LBB18_30:                              # %middle.split
                                        #   in Loop: Header=BB18_10 Depth=1
	beqz	$a3, .LBB18_32
# %bb.31:                               # %vector.early.exit
                                        #   in Loop: Header=BB18_10 Depth=1
	vpickve2gr.d	$a1, $vr9, 0
	vinsgr2vr.b	$vr0, $a1, 0
	vpickve2gr.d	$a1, $vr9, 1
	vinsgr2vr.b	$vr0, $a1, 1
	vpickve2gr.d	$a1, $vr8, 0
	vinsgr2vr.b	$vr0, $a1, 2
	vpickve2gr.d	$a1, $vr8, 1
	vinsgr2vr.b	$vr0, $a1, 3
	vpickve2gr.d	$a1, $vr7, 0
	vinsgr2vr.b	$vr0, $a1, 4
	vpickve2gr.d	$a1, $vr7, 1
	vinsgr2vr.b	$vr0, $a1, 5
	vpickve2gr.d	$a1, $vr6, 0
	vinsgr2vr.b	$vr0, $a1, 6
	vpickve2gr.d	$a1, $vr6, 1
	vinsgr2vr.b	$vr0, $a1, 7
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a3, $zero, 8
	sub.d	$a1, $a3, $a1
	andi	$a1, $a1, 255
	add.d	$a1, $a1, $a2
	b	.LBB18_39
	.p2align	4, , 16
.LBB18_32:                              # %scalar.ph
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 6, 6
	ori	$a1, $zero, 57
	bne	$a2, $s2, .LBB18_39
# %bb.33:                               # %scalar.ph.1
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 5, 5
	ori	$a1, $zero, 58
	bne	$a2, $s2, .LBB18_39
# %bb.34:                               # %scalar.ph.2
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 4, 4
	ori	$a1, $zero, 59
	bne	$a2, $s2, .LBB18_39
# %bb.35:                               # %scalar.ph.3
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 3, 3
	ori	$a1, $zero, 60
	bne	$a2, $s2, .LBB18_39
# %bb.36:                               # %scalar.ph.4
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 2, 2
	ori	$a1, $zero, 61
	bne	$a2, $s2, .LBB18_39
# %bb.37:                               # %scalar.ph.5
                                        #   in Loop: Header=BB18_10 Depth=1
	bstrpick.d	$a2, $fp, 1, 1
	ori	$a1, $zero, 62
	bne	$a2, $s2, .LBB18_39
# %bb.38:                               # %scalar.ph.6
                                        #   in Loop: Header=BB18_10 Depth=1
	andi	$a2, $fp, 1
	ori	$a1, $zero, 63
	beq	$a2, $s2, .LBB18_40
	.p2align	4, , 16
.LBB18_39:                              # %.split.loop.exit.i242
                                        #   in Loop: Header=BB18_10 Depth=1
	addi.w	$a1, $a1, -1
.LBB18_40:                              # %my_clrsbl.exit
                                        #   in Loop: Header=BB18_10 Depth=1
	bne	$a0, $a1, .LBB18_80
# %bb.41:                               #   in Loop: Header=BB18_10 Depth=1
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $fp, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_popcountl)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB18_80
# %bb.42:                               #   in Loop: Header=BB18_10 Depth=1
	srli.d	$a0, $fp, 1
	add.d	$a0, $a0, $fp
	srli.d	$a1, $fp, 2
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 3
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 4
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 5
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 6
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 7
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 8
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 9
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 10
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 11
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 12
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 13
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 14
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 15
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 16
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 17
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 18
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 19
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 20
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 21
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 22
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 23
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 24
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 25
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 26
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 27
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 28
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 29
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 30
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 31
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 32
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 33
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 34
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 35
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 36
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 37
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 38
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 39
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 40
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 41
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 42
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 43
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 44
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 45
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 46
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 47
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 48
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 49
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 50
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 51
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 52
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 53
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 54
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 55
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 56
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 57
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 58
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 59
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 60
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 61
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 62
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s2
	xor	$a0, $a0, $s3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_80
# %bb.43:                               #   in Loop: Header=BB18_10 Depth=1
	addi.d	$s8, $s8, 1
	vld	$vr18, $sp, 192                 # 16-byte Folded Reload
	vld	$vr19, $sp, 176                 # 16-byte Folded Reload
	vld	$vr20, $sp, 160                 # 16-byte Folded Reload
	ori	$a0, $zero, 13
	bne	$s8, $a0, .LBB18_10
# %bb.44:                               # %.preheader952.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(longlongs)
	addi.d	$a0, $a0, %pc_lo12(longlongs)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_9)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_10)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_11)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI18_12)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	addi.w	$a0, $zero, -7
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s0, $zero, 41
	ori	$s1, $zero, 32
	.p2align	4, , 16
.LBB18_45:                              # %.preheader952
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_47 Depth 2
                                        #     Child Loop BB18_53 Depth 2
                                        #     Child Loop BB18_58 Depth 2
                                        #     Child Loop BB18_63 Depth 2
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$fp, $a1, $a0
	vreplgr2vr.d	$vr0, $fp
	beqz	$fp, .LBB18_62
# %bb.46:                               # %vector.ph1136
                                        #   in Loop: Header=BB18_45 Depth=1
	ctz.d	$a0, $fp
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	vld	$vr1, $a1, %pc_lo12(.LCPI18_0)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	vld	$vr2, $a1, %pc_lo12(.LCPI18_1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	vld	$vr3, $a1, %pc_lo12(.LCPI18_2)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	vld	$vr4, $a1, %pc_lo12(.LCPI18_3)
	vld	$vr5, $s4, %pc_lo12(.LCPI18_4)
	vld	$vr6, $s5, %pc_lo12(.LCPI18_5)
	vld	$vr7, $s6, %pc_lo12(.LCPI18_6)
	pcalau12i	$a1, %pc_hi20(.LCPI18_7)
	vld	$vr8, $a1, %pc_lo12(.LCPI18_7)
	addi.d	$a2, $a0, 1
	ori	$a3, $zero, 15
	ori	$a5, $zero, 48
	.p2align	4, , 16
.LBB18_47:                              # %vector.body1139
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a5
	vsll.d	$vr9, $vr19, $vr1
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vsll.d	$vr16, $vr19, $vr8
	vand.v	$vr9, $vr9, $vr0
	vand.v	$vr10, $vr10, $vr0
	vand.v	$vr11, $vr11, $vr0
	vand.v	$vr12, $vr12, $vr0
	vand.v	$vr13, $vr13, $vr0
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr15, $vr15, $vr0
	vand.v	$vr16, $vr16, $vr0
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr20
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vpickev.w	$vr15, $vr15, $vr16
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vpickev.w	$vr13, $vr13, $vr14
	vpickev.h	$vr13, $vr13, $vr15
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vpickev.w	$vr11, $vr11, $vr12
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr10
	vpickev.h	$vr9, $vr9, $vr11
	vpickev.b	$vr9, $vr9, $vr13
	vpickve2gr.b	$a5, $vr9, 1
	andi	$a5, $a5, 1
	vpickve2gr.b	$a6, $vr16, 0
	bstrins.d	$a6, $a5, 63, 1
	vpickve2gr.b	$a5, $vr9, 2
	bstrins.d	$a6, $a5, 2, 2
	vpickve2gr.b	$a5, $vr9, 3
	bstrins.d	$a6, $a5, 3, 3
	vpickve2gr.b	$a5, $vr9, 4
	bstrins.d	$a6, $a5, 4, 4
	vpickve2gr.b	$a5, $vr9, 5
	bstrins.d	$a6, $a5, 5, 5
	vpickve2gr.b	$a5, $vr9, 6
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 6
	or	$a5, $a6, $a5
	vpickve2gr.b	$a6, $vr9, 7
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 7
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 8
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 8
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 9
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 9
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 10
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 10
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 11
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 11
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 12
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 12
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 13
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 13
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 14
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 14
	or	$a5, $a5, $a6
	vpickve2gr.b	$a6, $vr9, 15
	slli.d	$a6, $a6, 15
	or	$a5, $a5, $a6
	bstrpick.d	$a6, $a5, 15, 0
	addi.d	$a3, $a3, -16
	bnez	$a6, .LBB18_49
# %bb.48:                               # %vector.body1139
                                        #   in Loop: Header=BB18_47 Depth=2
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	addi.d	$a5, $a4, -16
	bnez	$a4, .LBB18_47
.LBB18_49:                              # %middle.split1144
                                        #   in Loop: Header=BB18_45 Depth=1
	slli.d	$a4, $a6, 48
	beqz	$a4, .LBB18_51
# %bb.50:                               # %vector.early.exit1146
                                        #   in Loop: Header=BB18_45 Depth=1
	pcalau12i	$a4, %pc_hi20(.LCPI18_8)
	vld	$vr1, $a4, %pc_lo12(.LCPI18_8)
	vand.v	$vr1, $vr9, $vr1
	vbsrl.v	$vr2, $vr1, 8
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 2
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 1
	vmax.bu	$vr1, $vr2, $vr1
	vpickve2gr.b	$a4, $vr1, 0
	ori	$a5, $zero, 16
	sub.d	$a4, $a5, $a4
	andi	$a4, $a4, 255
	sub.w	$a3, $a4, $a3
	beq	$a2, $a3, .LBB18_52
	b	.LBB18_80
	.p2align	4, , 16
.LBB18_51:                              #   in Loop: Header=BB18_45 Depth=1
	ori	$a3, $zero, 65
	bne	$a2, $a3, .LBB18_80
.LBB18_52:                              # %vector.ph1124
                                        #   in Loop: Header=BB18_45 Depth=1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr1, $a2, %pc_lo12(.LCPI18_0)
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	vld	$vr2, $a2, %pc_lo12(.LCPI18_1)
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr3, $a2, %pc_lo12(.LCPI18_2)
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr4, $a2, %pc_lo12(.LCPI18_3)
	vld	$vr5, $s4, %pc_lo12(.LCPI18_4)
	vld	$vr6, $s5, %pc_lo12(.LCPI18_5)
	vld	$vr7, $s6, %pc_lo12(.LCPI18_6)
	vld	$vr8, $a1, %pc_lo12(.LCPI18_7)
	clz.d	$a2, $fp
	addi.w	$a4, $zero, -16
	.p2align	4, , 16
.LBB18_53:                              # %vector.body1127
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $a4
	vreplgr2vr.d	$vr9, $s7
	vsrl.d	$vr10, $vr9, $vr1
	vsrl.d	$vr11, $vr9, $vr2
	vsrl.d	$vr12, $vr9, $vr3
	vsrl.d	$vr13, $vr9, $vr4
	vsrl.d	$vr14, $vr9, $vr5
	vsrl.d	$vr15, $vr9, $vr6
	vsrl.d	$vr16, $vr9, $vr7
	vsrl.d	$vr9, $vr9, $vr8
	vand.v	$vr10, $vr10, $vr0
	vand.v	$vr11, $vr11, $vr0
	vand.v	$vr12, $vr12, $vr0
	vand.v	$vr13, $vr13, $vr0
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr15, $vr15, $vr0
	vand.v	$vr16, $vr16, $vr0
	vand.v	$vr9, $vr9, $vr0
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr17, $vr9, $vr20
	vseqi.d	$vr9, $vr16, 0
	vxor.v	$vr9, $vr9, $vr20
	vpickev.w	$vr9, $vr9, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vpickev.w	$vr14, $vr14, $vr15
	vpickev.h	$vr9, $vr14, $vr9
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickev.w	$vr12, $vr12, $vr13
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vpickev.w	$vr10, $vr10, $vr11
	vpickev.h	$vr10, $vr10, $vr12
	vpickev.b	$vr9, $vr10, $vr9
	vpickve2gr.b	$a4, $vr9, 1
	andi	$a4, $a4, 1
	vpickve2gr.b	$a5, $vr17, 0
	bstrins.d	$a5, $a4, 63, 1
	vpickve2gr.b	$a4, $vr9, 2
	bstrins.d	$a5, $a4, 2, 2
	vpickve2gr.b	$a4, $vr9, 3
	bstrins.d	$a5, $a4, 3, 3
	vpickve2gr.b	$a4, $vr9, 4
	bstrins.d	$a5, $a4, 4, 4
	vpickve2gr.b	$a4, $vr9, 5
	bstrins.d	$a5, $a4, 5, 5
	vpickve2gr.b	$a4, $vr9, 6
	andi	$a4, $a4, 1
	slli.d	$a4, $a4, 6
	or	$a4, $a5, $a4
	vpickve2gr.b	$a5, $vr9, 7
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 7
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 8
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 8
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 9
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 9
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 10
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 10
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 11
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 11
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 12
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 12
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 13
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 13
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 14
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 14
	or	$a4, $a4, $a5
	vpickve2gr.b	$a5, $vr9, 15
	slli.d	$a5, $a5, 15
	or	$a4, $a4, $a5
	bstrpick.d	$a5, $a4, 15, 0
	addi.d	$a4, $a3, 16
	bnez	$a5, .LBB18_55
# %bb.54:                               # %vector.body1127
                                        #   in Loop: Header=BB18_53 Depth=2
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	bne	$a3, $s1, .LBB18_53
.LBB18_55:                              # %middle.split1132
                                        #   in Loop: Header=BB18_45 Depth=1
	slli.d	$a3, $a5, 48
	beqz	$a3, .LBB18_80
# %bb.56:                               # %vector.early.exit1134
                                        #   in Loop: Header=BB18_45 Depth=1
	pcalau12i	$a3, %pc_hi20(.LCPI18_8)
	vld	$vr1, $a3, %pc_lo12(.LCPI18_8)
	vand.v	$vr2, $vr9, $vr1
	vbsrl.v	$vr3, $vr2, 8
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 4
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 2
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 1
	vmax.bu	$vr2, $vr3, $vr2
	vpickve2gr.b	$a3, $vr2, 0
	ori	$a5, $zero, 16
	sub.d	$a3, $a5, $a3
	andi	$a3, $a3, 255
	sub.d	$a2, $a2, $a3
	bne	$a2, $a4, .LBB18_80
# %bb.57:                               # %vector.ph1112
                                        #   in Loop: Header=BB18_45 Depth=1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr2, $a2, %pc_lo12(.LCPI18_0)
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	vld	$vr3, $a2, %pc_lo12(.LCPI18_1)
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr4, $a2, %pc_lo12(.LCPI18_2)
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr5, $a2, %pc_lo12(.LCPI18_3)
	vld	$vr6, $s4, %pc_lo12(.LCPI18_4)
	vld	$vr7, $s5, %pc_lo12(.LCPI18_5)
	vld	$vr8, $s6, %pc_lo12(.LCPI18_6)
	vld	$vr9, $a1, %pc_lo12(.LCPI18_7)
	addi.w	$a2, $zero, -16
	.p2align	4, , 16
.LBB18_58:                              # %vector.body1115
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	vsll.d	$vr10, $vr19, $vr2
	vsll.d	$vr11, $vr19, $vr3
	vsll.d	$vr12, $vr19, $vr4
	vsll.d	$vr13, $vr19, $vr5
	vsll.d	$vr14, $vr19, $vr6
	vsll.d	$vr15, $vr19, $vr7
	vsll.d	$vr16, $vr19, $vr8
	vsll.d	$vr17, $vr19, $vr9
	vand.v	$vr10, $vr10, $vr0
	vand.v	$vr11, $vr11, $vr0
	vand.v	$vr12, $vr12, $vr0
	vand.v	$vr13, $vr13, $vr0
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr15, $vr15, $vr0
	vand.v	$vr16, $vr16, $vr0
	vand.v	$vr17, $vr17, $vr0
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr20
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr20
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr20
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr20
	vpickev.w	$vr14, $vr14, $vr15
	vpickev.h	$vr14, $vr14, $vr16
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr20
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr20
	vpickev.w	$vr12, $vr12, $vr13
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr20
	vseqi.d	$vr10, $vr10, 0
	vxor.v	$vr10, $vr10, $vr20
	vpickev.w	$vr10, $vr10, $vr11
	vpickev.h	$vr10, $vr10, $vr12
	vpickev.b	$vr10, $vr10, $vr14
	vpickve2gr.b	$a2, $vr10, 1
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr10, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr10, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr10, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr10, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr10, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr10, 7
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 9
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 11
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 13
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr10, 15
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a2, $a1, 16
	bnez	$a3, .LBB18_60
# %bb.59:                               # %vector.body1115
                                        #   in Loop: Header=BB18_58 Depth=2
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	bne	$a1, $s1, .LBB18_58
.LBB18_60:                              # %middle.split1120
                                        #   in Loop: Header=BB18_45 Depth=1
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB18_80
# %bb.61:                               # %vector.early.exit1122
                                        #   in Loop: Header=BB18_45 Depth=1
	vand.v	$vr1, $vr10, $vr1
	vbsrl.v	$vr2, $vr1, 8
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 2
	vmax.bu	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 1
	vmax.bu	$vr1, $vr2, $vr1
	vpickve2gr.b	$a1, $vr1, 0
	ori	$a3, $zero, 16
	sub.d	$a1, $a3, $a1
	andi	$a1, $a1, 255
	sub.d	$a0, $a0, $a1
	bne	$a0, $a2, .LBB18_80
.LBB18_62:                              # %.thread819
                                        #   in Loop: Header=BB18_45 Depth=1
	srai.d	$a0, $fp, 63
	xor	$a0, $a0, $fp
	clz.d	$a0, $a0
	addi.d	$a0, $a0, -1
	srli.d	$s2, $fp, 63
	vreplgr2vr.d	$vr1, $s2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_63:                              # %vector.body1102
                                        #   Parent Loop BB18_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	vsub.d	$vr6, $vr18, $vr5
	vsub.d	$vr7, $vr18, $vr4
	vsub.d	$vr8, $vr18, $vr3
	vsub.d	$vr9, $vr18, $vr2
	vsrl.d	$vr9, $vr0, $vr9
	vsrl.d	$vr8, $vr0, $vr8
	vsrl.d	$vr7, $vr0, $vr7
	vsrl.d	$vr6, $vr0, $vr6
	vand.v	$vr6, $vr6, $vr19
	vand.v	$vr7, $vr7, $vr19
	vand.v	$vr8, $vr8, $vr19
	vand.v	$vr9, $vr9, $vr19
	vseq.d	$vr9, $vr9, $vr1
	vxor.v	$vr9, $vr9, $vr20
	vseq.d	$vr8, $vr8, $vr1
	vxor.v	$vr8, $vr8, $vr20
	vpickev.w	$vr10, $vr8, $vr9
	vseq.d	$vr7, $vr7, $vr1
	vxor.v	$vr7, $vr7, $vr20
	vseq.d	$vr6, $vr6, $vr1
	vxor.v	$vr6, $vr6, $vr20
	vpickev.w	$vr11, $vr6, $vr7
	vpickev.h	$vr10, $vr11, $vr10
	vpickve2gr.h	$a2, $vr10, 1
	andi	$a2, $a2, 1
	vpickve2gr.h	$a3, $vr9, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.h	$a2, $vr10, 2
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.h	$a2, $vr10, 3
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.h	$a2, $vr10, 4
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.h	$a2, $vr10, 5
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.h	$a2, $vr10, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.h	$a3, $vr10, 7
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	andi	$a3, $a2, 255
	addi.d	$a2, $a1, 8
	bnez	$a3, .LBB18_65
# %bb.64:                               # %vector.body1102
                                        #   in Loop: Header=BB18_63 Depth=2
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr5, $vr5, 8
	bne	$a1, $s0, .LBB18_63
.LBB18_65:                              # %middle.split1107
                                        #   in Loop: Header=BB18_45 Depth=1
	beqz	$a3, .LBB18_67
# %bb.66:                               # %vector.early.exit1109
                                        #   in Loop: Header=BB18_45 Depth=1
	vpickve2gr.d	$a1, $vr9, 0
	vinsgr2vr.b	$vr0, $a1, 0
	vpickve2gr.d	$a1, $vr9, 1
	vinsgr2vr.b	$vr0, $a1, 1
	vpickve2gr.d	$a1, $vr8, 0
	vinsgr2vr.b	$vr0, $a1, 2
	vpickve2gr.d	$a1, $vr8, 1
	vinsgr2vr.b	$vr0, $a1, 3
	vpickve2gr.d	$a1, $vr7, 0
	vinsgr2vr.b	$vr0, $a1, 4
	vpickve2gr.d	$a1, $vr7, 1
	vinsgr2vr.b	$vr0, $a1, 5
	vpickve2gr.d	$a1, $vr6, 0
	vinsgr2vr.b	$vr0, $a1, 6
	vpickve2gr.d	$a1, $vr6, 1
	vinsgr2vr.b	$vr0, $a1, 7
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a3, $zero, 8
	sub.d	$a1, $a3, $a1
	andi	$a1, $a1, 255
	add.d	$a1, $a1, $a2
	b	.LBB18_74
	.p2align	4, , 16
.LBB18_67:                              # %scalar.ph1096
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 6, 6
	ori	$a1, $zero, 57
	bne	$a2, $s2, .LBB18_74
# %bb.68:                               # %scalar.ph1096.1
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 5, 5
	ori	$a1, $zero, 58
	bne	$a2, $s2, .LBB18_74
# %bb.69:                               # %scalar.ph1096.2
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 4, 4
	ori	$a1, $zero, 59
	bne	$a2, $s2, .LBB18_74
# %bb.70:                               # %scalar.ph1096.3
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 3, 3
	ori	$a1, $zero, 60
	bne	$a2, $s2, .LBB18_74
# %bb.71:                               # %scalar.ph1096.4
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 2, 2
	ori	$a1, $zero, 61
	bne	$a2, $s2, .LBB18_74
# %bb.72:                               # %scalar.ph1096.5
                                        #   in Loop: Header=BB18_45 Depth=1
	bstrpick.d	$a2, $fp, 1, 1
	ori	$a1, $zero, 62
	bne	$a2, $s2, .LBB18_74
# %bb.73:                               # %scalar.ph1096.6
                                        #   in Loop: Header=BB18_45 Depth=1
	andi	$a2, $fp, 1
	ori	$a1, $zero, 63
	beq	$a2, $s2, .LBB18_75
	.p2align	4, , 16
.LBB18_74:                              # %.split.loop.exit.i301
                                        #   in Loop: Header=BB18_45 Depth=1
	addi.w	$a1, $a1, -1
.LBB18_75:                              # %my_clrsbll.exit
                                        #   in Loop: Header=BB18_45 Depth=1
	bne	$a0, $a1, .LBB18_80
# %bb.76:                               #   in Loop: Header=BB18_45 Depth=1
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $fp, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_popcountll)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB18_80
# %bb.77:                               #   in Loop: Header=BB18_45 Depth=1
	srli.d	$a0, $fp, 1
	add.d	$a0, $a0, $fp
	srli.d	$a1, $fp, 2
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 3
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 4
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 5
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 6
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 7
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 8
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 9
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 10
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 11
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 12
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 13
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 14
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 15
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 16
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 17
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 18
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 19
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 20
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 21
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 22
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 23
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 24
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 25
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 26
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 27
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 28
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 29
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 30
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 31
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 32
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 33
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 34
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 35
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 36
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 37
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 38
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 39
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 40
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 41
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 42
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 43
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 44
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 45
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 46
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 47
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 48
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 49
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 50
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 51
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 52
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 53
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 54
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 55
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 56
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 57
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 58
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 59
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 60
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 61
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 62
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s2
	xor	$a0, $a0, $s3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_80
# %bb.78:                               #   in Loop: Header=BB18_45 Depth=1
	addi.d	$s8, $s8, 1
	vld	$vr18, $sp, 192                 # 16-byte Folded Reload
	vld	$vr19, $sp, 176                 # 16-byte Folded Reload
	vld	$vr20, $sp, 160                 # 16-byte Folded Reload
	ori	$a0, $zero, 13
	bne	$s8, $a0, .LBB18_45
# %bb.79:                               # %.preheader.preheader
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_80:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
                                        # -- End function
	.type	ints,@object                    # @ints
	.data
	.globl	ints
	.p2align	2, 0x0
ints:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2147483648                      # 0x80000000
	.word	2                               # 0x2
	.word	1073741824                      # 0x40000000
	.word	65536                           # 0x10000
	.word	32768                           # 0x8000
	.word	2779096485                      # 0xa5a5a5a5
	.word	1515870810                      # 0x5a5a5a5a
	.word	3405643776                      # 0xcafe0000
	.word	13303296                        # 0xcafe00
	.word	51966                           # 0xcafe
	.word	4294967295                      # 0xffffffff
	.size	ints, 52

	.type	longs,@object                   # @longs
	.globl	longs
	.p2align	3, 0x0
longs:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	2                               # 0x2
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	4294967296                      # 0x100000000
	.dword	2147483648                      # 0x80000000
	.dword	-6510615555426900571            # 0xa5a5a5a5a5a5a5a5
	.dword	6510615555426900570             # 0x5a5a5a5a5a5a5a5a
	.dword	-3819392241693097984            # 0xcafecafe00000000
	.dword	223195676147712                 # 0xcafecafe0000
	.dword	3405695742                      # 0xcafecafe
	.dword	-1                              # 0xffffffffffffffff
	.size	longs, 104

	.type	longlongs,@object               # @longlongs
	.globl	longlongs
	.p2align	3, 0x0
longlongs:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	2                               # 0x2
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	4294967296                      # 0x100000000
	.dword	2147483648                      # 0x80000000
	.dword	-6510615555426900571            # 0xa5a5a5a5a5a5a5a5
	.dword	6510615555426900570             # 0x5a5a5a5a5a5a5a5a
	.dword	-3819392241693097984            # 0xcafecafe00000000
	.dword	223195676147712                 # 0xcafecafe0000
	.dword	3405695742                      # 0xcafecafe
	.dword	-1                              # 0xffffffffffffffff
	.size	longlongs, 104

	.section	".note.GNU-stack","",@progbits
	.addrsig
