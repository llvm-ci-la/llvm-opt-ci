	.file	"uuencode.c"
	.text
	.globl	encode_char                     # -- Begin function encode_char
	.p2align	5
	.type	encode_char,@function
encode_char:                            # @encode_char
# %bb.0:
	andi	$a0, $a0, 63
	addi.d	$a0, $a0, 32
	ret
.Lfunc_end0:
	.size	encode_char, .Lfunc_end0-encode_char
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function encode_line
.LCPI1_0:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_2:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_3:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	17                              # 0x11
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_4:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	9                               # 0x9
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI1_5:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_6:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	255                             # 0xff
.LCPI1_7:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	19                              # 0x13
.LCPI1_8:
	.byte	4                               # 0x4
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	23                              # 0x17
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_9:
	.half	0                               # 0x0
	.half	10                              # 0xa
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI1_10:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	20                              # 0x14
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_11:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_12:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_13:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	11                              # 0xb
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI1_14:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	22                              # 0x16
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_15:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	23                              # 0x17
	.byte	255                             # 0xff
.LCPI1_16:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	23                              # 0x17
.LCPI1_17:
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_18:
	.half	0                               # 0x0
	.half	12                              # 0xc
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI1_19:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	24                              # 0x18
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_20:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_21:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	25                              # 0x19
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_22:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	13                              # 0xd
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI1_23:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_24:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	27                              # 0x1b
	.byte	255                             # 0xff
.LCPI1_25:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	27                              # 0x1b
.LCPI1_26:
	.byte	12                              # 0xc
	.byte	28                              # 0x1c
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_27:
	.half	0                               # 0x0
	.half	14                              # 0xe
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI1_28:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	28                              # 0x1c
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_29:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_30:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	29                              # 0x1d
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_31:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	15                              # 0xf
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI1_32:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	30                              # 0x1e
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_33:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
.LCPI1_34:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	31                              # 0x1f
	.text
	.globl	encode_line
	.p2align	5
	.type	encode_line,@function
encode_line:                            # @encode_line
# %bb.0:
	andi	$a4, $a2, 63
	addi.d	$a4, $a4, 32
	st.b	$a4, $a3, 0
	blez	$a2, .LBB1_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -304
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	st.d	$s0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	st.d	$s2, $sp, 272                   # 8-byte Folded Spill
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	st.d	$s5, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
	bstrpick.d	$a4, $a2, 31, 0
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	mul.d	$a6, $a2, $a5
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 33
	addi.w	$a5, $a6, -1
	sltu	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a5, $a4, $a5
	ori	$a6, $zero, 16
	ori	$a4, $zero, 1
	bltu	$a5, $a6, .LBB1_7
# %bb.2:                                # %vector.memcheck
	addi.d	$a7, $a3, 1
	add.d	$a6, $a0, $a1
	alsl.d	$t0, $a5, $a5, 1
	add.d	$t0, $a6, $t0
	addi.d	$t0, $t0, 3
	bgeu	$a7, $t0, .LBB1_4
# %bb.3:                                # %vector.memcheck
	alsl.d	$a7, $a5, $a3, 2
	addi.d	$a7, $a7, 5
	bltu	$a6, $a7, .LBB1_7
.LBB1_4:                                # %vector.ph
	addi.d	$a4, $a5, 1
	andi	$a5, $a4, 15
	sltui	$a6, $a5, 1
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 16
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	sub.d	$a5, $a4, $a5
	alsl.d	$a7, $a5, $a5, 1
	add.d	$a6, $a7, $a1
	slli.d	$a4, $a5, 2
	addi.d	$a4, $a4, 1
	sub.w	$a2, $a2, $a7
	add.d	$a1, $a1, $a0
	pcalau12i	$a7, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_0)
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_1)
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_2)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_2)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_3)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_5)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_5)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_6)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_6)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_7)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_7)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_8)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_8)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_9)
	vld	$vr9, $a7, %pc_lo12(.LCPI1_9)
	pcalau12i	$a7, %pc_hi20(.LCPI1_10)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_10)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI1_11)
	vld	$vr11, $a7, %pc_lo12(.LCPI1_11)
	pcalau12i	$a7, %pc_hi20(.LCPI1_12)
	vld	$vr12, $a7, %pc_lo12(.LCPI1_12)
	pcalau12i	$a7, %pc_hi20(.LCPI1_13)
	vld	$vr13, $a7, %pc_lo12(.LCPI1_13)
	pcalau12i	$a7, %pc_hi20(.LCPI1_14)
	vld	$vr14, $a7, %pc_lo12(.LCPI1_14)
	pcalau12i	$a7, %pc_hi20(.LCPI1_15)
	vld	$vr15, $a7, %pc_lo12(.LCPI1_15)
	pcalau12i	$a7, %pc_hi20(.LCPI1_16)
	vld	$vr16, $a7, %pc_lo12(.LCPI1_16)
	pcalau12i	$a7, %pc_hi20(.LCPI1_17)
	vld	$vr17, $a7, %pc_lo12(.LCPI1_17)
	pcalau12i	$a7, %pc_hi20(.LCPI1_18)
	vld	$vr18, $a7, %pc_lo12(.LCPI1_18)
	pcalau12i	$a7, %pc_hi20(.LCPI1_19)
	vld	$vr19, $a7, %pc_lo12(.LCPI1_19)
	pcalau12i	$a7, %pc_hi20(.LCPI1_20)
	vld	$vr20, $a7, %pc_lo12(.LCPI1_20)
	pcalau12i	$a7, %pc_hi20(.LCPI1_21)
	vld	$vr21, $a7, %pc_lo12(.LCPI1_21)
	pcalau12i	$a7, %pc_hi20(.LCPI1_22)
	vld	$vr22, $a7, %pc_lo12(.LCPI1_22)
	pcalau12i	$a7, %pc_hi20(.LCPI1_23)
	vld	$vr23, $a7, %pc_lo12(.LCPI1_23)
	pcalau12i	$a7, %pc_hi20(.LCPI1_24)
	vld	$vr24, $a7, %pc_lo12(.LCPI1_24)
	pcalau12i	$a7, %pc_hi20(.LCPI1_25)
	vld	$vr25, $a7, %pc_lo12(.LCPI1_25)
	pcalau12i	$a7, %pc_hi20(.LCPI1_26)
	vld	$vr26, $a7, %pc_lo12(.LCPI1_26)
	pcalau12i	$a7, %pc_hi20(.LCPI1_27)
	vld	$vr27, $a7, %pc_lo12(.LCPI1_27)
	pcalau12i	$a7, %pc_hi20(.LCPI1_28)
	vld	$vr28, $a7, %pc_lo12(.LCPI1_28)
	pcalau12i	$a7, %pc_hi20(.LCPI1_29)
	vld	$vr29, $a7, %pc_lo12(.LCPI1_29)
	pcalau12i	$a7, %pc_hi20(.LCPI1_30)
	vld	$vr30, $a7, %pc_lo12(.LCPI1_30)
	pcalau12i	$a7, %pc_hi20(.LCPI1_31)
	vld	$vr31, $a7, %pc_lo12(.LCPI1_31)
	pcalau12i	$a7, %pc_hi20(.LCPI1_32)
	pcalau12i	$t0, %pc_hi20(.LCPI1_33)
	pcalau12i	$t1, %pc_hi20(.LCPI1_34)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_32)
	vld	$vr1, $t0, %pc_lo12(.LCPI1_33)
	vld	$vr2, $t1, %pc_lo12(.LCPI1_34)
	addi.d	$a1, $a1, 23
	addi.d	$a7, $a3, 33
	vrepli.b	$vr3, 32
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $a1, -23
	ld.b	$t1, $a1, -20
	ld.b	$t2, $a1, -17
	ld.b	$t3, $a1, -14
	ld.b	$t4, $a1, -11
	ld.b	$t5, $a1, -8
	ld.b	$t6, $a1, -5
	ld.b	$t7, $a1, -2
	ld.b	$t8, $a1, 1
	ld.b	$fp, $a1, 4
	ld.b	$s0, $a1, 7
	ld.b	$s1, $a1, 10
	ld.b	$s2, $a1, 13
	ld.b	$s3, $a1, 16
	ld.b	$s4, $a1, 19
	ld.b	$s5, $a1, 22
	vinsgr2vr.b	$vr4, $t0, 0
	vinsgr2vr.b	$vr4, $t1, 1
	vinsgr2vr.b	$vr4, $t2, 2
	vinsgr2vr.b	$vr4, $t3, 3
	vinsgr2vr.b	$vr4, $t4, 4
	vinsgr2vr.b	$vr4, $t5, 5
	vinsgr2vr.b	$vr4, $t6, 6
	vinsgr2vr.b	$vr4, $t7, 7
	vinsgr2vr.b	$vr4, $t8, 8
	vinsgr2vr.b	$vr4, $fp, 9
	vinsgr2vr.b	$vr4, $s0, 10
	vinsgr2vr.b	$vr4, $s1, 11
	vinsgr2vr.b	$vr4, $s2, 12
	vinsgr2vr.b	$vr4, $s3, 13
	vinsgr2vr.b	$vr4, $s4, 14
	vinsgr2vr.b	$vr4, $s5, 15
	vsrli.b	$vr5, $vr4, 2
	vadd.b	$vr5, $vr5, $vr3
	vslli.b	$vr4, $vr4, 4
	ld.b	$t0, $a1, -22
	ld.b	$t1, $a1, -19
	ld.b	$t2, $a1, -16
	ld.b	$t3, $a1, -13
	ld.b	$t4, $a1, -10
	ld.b	$t5, $a1, -7
	ld.b	$t6, $a1, -4
	ld.b	$t7, $a1, -1
	ld.b	$t8, $a1, 2
	ld.b	$fp, $a1, 5
	ld.b	$s0, $a1, 8
	ld.b	$s1, $a1, 11
	ld.b	$s2, $a1, 14
	ld.b	$s3, $a1, 17
	ld.b	$s4, $a1, 20
	ld.b	$s5, $a1, 23
	vinsgr2vr.b	$vr6, $t0, 0
	vinsgr2vr.b	$vr6, $t1, 1
	vinsgr2vr.b	$vr6, $t2, 2
	vinsgr2vr.b	$vr6, $t3, 3
	vinsgr2vr.b	$vr6, $t4, 4
	vinsgr2vr.b	$vr6, $t5, 5
	vinsgr2vr.b	$vr6, $t6, 6
	vinsgr2vr.b	$vr6, $t7, 7
	vinsgr2vr.b	$vr6, $t8, 8
	vinsgr2vr.b	$vr6, $fp, 9
	vinsgr2vr.b	$vr6, $s0, 10
	vinsgr2vr.b	$vr6, $s1, 11
	vinsgr2vr.b	$vr6, $s2, 12
	vinsgr2vr.b	$vr6, $s3, 13
	vinsgr2vr.b	$vr6, $s4, 14
	vinsgr2vr.b	$vr6, $s5, 15
	vsrai.b	$vr7, $vr6, 4
	vor.v	$vr4, $vr7, $vr4
	vandi.b	$vr4, $vr4, 63
	vadd.b	$vr4, $vr4, $vr3
	vslli.b	$vr6, $vr6, 2
	ld.b	$t0, $a1, -21
	ld.b	$t1, $a1, -18
	ld.b	$t2, $a1, -15
	ld.b	$t3, $a1, -12
	ld.b	$t4, $a1, -9
	ld.b	$t5, $a1, -6
	ld.b	$t6, $a1, -3
	ld.b	$t7, $a1, 0
	ld.b	$t8, $a1, 3
	ld.b	$fp, $a1, 6
	ld.b	$s0, $a1, 9
	ld.b	$s1, $a1, 12
	ld.b	$s2, $a1, 15
	ld.b	$s3, $a1, 18
	ld.b	$s4, $a1, 21
	ld.b	$s5, $a1, 24
	vinsgr2vr.b	$vr7, $t0, 0
	vinsgr2vr.b	$vr7, $t1, 1
	vinsgr2vr.b	$vr7, $t2, 2
	vinsgr2vr.b	$vr7, $t3, 3
	vinsgr2vr.b	$vr7, $t4, 4
	vinsgr2vr.b	$vr7, $t5, 5
	vinsgr2vr.b	$vr7, $t6, 6
	vinsgr2vr.b	$vr7, $t7, 7
	vinsgr2vr.b	$vr7, $t8, 8
	vinsgr2vr.b	$vr7, $fp, 9
	vinsgr2vr.b	$vr7, $s0, 10
	vinsgr2vr.b	$vr7, $s1, 11
	vinsgr2vr.b	$vr7, $s2, 12
	vinsgr2vr.b	$vr7, $s3, 13
	vinsgr2vr.b	$vr7, $s4, 14
	vinsgr2vr.b	$vr7, $s5, 15
	vsrai.b	$vr8, $vr7, 6
	vor.v	$vr6, $vr8, $vr6
	vandi.b	$vr6, $vr6, 63
	vadd.b	$vr6, $vr6, $vr3
	vandi.b	$vr7, $vr7, 63
	vadd.b	$vr7, $vr7, $vr3
	vld	$vr8, $sp, 160                  # 16-byte Folded Reload
	vshuf.b	$vr8, $vr4, $vr5, $vr8
	vpackev.h	$vr8, $vr6, $vr8
	vld	$vr10, $sp, 144                 # 16-byte Folded Reload
	vshuf.b	$vr8, $vr7, $vr8, $vr10
	vld	$vr10, $sp, 128                 # 16-byte Folded Reload
	vshuf.b	$vr8, $vr6, $vr8, $vr10
	vld	$vr10, $sp, 112                 # 16-byte Folded Reload
	vshuf.b	$vr8, $vr7, $vr8, $vr10
	vld	$vr10, $sp, 96                  # 16-byte Folded Reload
	vshuf.h	$vr10, $vr6, $vr8
	vld	$vr8, $sp, 80                   # 16-byte Folded Reload
	vshuf.b	$vr8, $vr7, $vr10, $vr8
	vld	$vr10, $sp, 64                  # 16-byte Folded Reload
	vshuf.b	$vr8, $vr6, $vr8, $vr10
	vld	$vr10, $sp, 48                  # 16-byte Folded Reload
	vshuf.b	$vr8, $vr7, $vr8, $vr10
	vst	$vr8, $a7, -32
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	vshuf.b	$vr8, $vr4, $vr5, $vr8
	vori.b	$vr10, $vr9, 0
	vshuf.h	$vr10, $vr6, $vr8
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vshuf.b	$vr8, $vr7, $vr10, $vr8
	vshuf.b	$vr8, $vr6, $vr8, $vr11
	vshuf.b	$vr8, $vr7, $vr8, $vr12
	vori.b	$vr10, $vr13, 0
	vshuf.h	$vr10, $vr6, $vr8
	vshuf.b	$vr8, $vr7, $vr10, $vr14
	vshuf.b	$vr8, $vr6, $vr8, $vr15
	vshuf.b	$vr8, $vr7, $vr8, $vr16
	vst	$vr8, $a7, -16
	vshuf.b	$vr8, $vr4, $vr5, $vr17
	vori.b	$vr10, $vr18, 0
	vshuf.h	$vr10, $vr6, $vr8
	vshuf.b	$vr8, $vr7, $vr10, $vr19
	vshuf.b	$vr8, $vr6, $vr8, $vr20
	vshuf.b	$vr8, $vr7, $vr8, $vr21
	vori.b	$vr10, $vr22, 0
	vshuf.h	$vr10, $vr6, $vr8
	vshuf.b	$vr8, $vr7, $vr10, $vr23
	vshuf.b	$vr8, $vr6, $vr8, $vr24
	vshuf.b	$vr8, $vr7, $vr8, $vr25
	vst	$vr8, $a7, 0
	vshuf.b	$vr4, $vr4, $vr5, $vr26
	vori.b	$vr5, $vr27, 0
	vshuf.h	$vr5, $vr6, $vr4
	vshuf.b	$vr4, $vr7, $vr5, $vr28
	vshuf.b	$vr4, $vr6, $vr4, $vr29
	vshuf.b	$vr4, $vr7, $vr4, $vr30
	vori.b	$vr5, $vr31, 0
	vshuf.h	$vr5, $vr6, $vr4
	vshuf.b	$vr4, $vr7, $vr5, $vr0
	vshuf.b	$vr4, $vr6, $vr4, $vr1
	vshuf.b	$vr4, $vr7, $vr4, $vr2
	vst	$vr4, $a7, 16
	addi.d	$a1, $a1, 48
	addi.d	$a5, $a5, -16
	addi.d	$a7, $a7, 64
	bnez	$a5, .LBB1_5
# %bb.6:
	move	$a1, $a6
.LBB1_7:                                # %.lr.ph.preheader104
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 1
	addi.d	$a0, $a4, 4
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$a4, $a2, .LBB1_12
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a5, $a1, -1
	srli.d	$a5, $a5, 2
	addi.d	$a5, $a5, 32
	add.d	$a6, $a3, $a0
	st.b	$a5, $a6, -4
	ld.b	$a5, $a1, -1
	ld.b	$a7, $a1, 0
	slli.d	$a5, $a5, 4
	srli.d	$a7, $a7, 4
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -3
	ld.b	$a5, $a1, 0
	ld.b	$a7, $a1, 1
	slli.d	$a5, $a5, 2
	srli.d	$a7, $a7, 6
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -2
	ld.bu	$a5, $a1, 1
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -1
	addi.w	$a2, $a2, -3
	addi.d	$a1, $a1, 3
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB1_8
# %bb.10:                               # %._crit_edge.loopexit.loopexit
	addi.d	$a0, $a0, -4
	b	.LBB1_16
.LBB1_11:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 10
	stx.h	$a1, $a3, $a0
	ret
.LBB1_12:
	ld.bu	$a4, $a1, -1
	srli.d	$a4, $a4, 2
	addi.d	$a5, $a4, 32
	add.d	$a4, $a3, $a0
	st.b	$a5, $a4, -4
	ld.b	$a5, $a1, -1
	ori	$a6, $zero, 1
	slli.d	$a5, $a5, 4
	bne	$a2, $a6, .LBB1_14
# %bb.13:
	andi	$a1, $a5, 48
	addi.d	$a1, $a1, 32
	st.b	$a1, $a4, -3
	ori	$a1, $zero, 61
	b	.LBB1_15
.LBB1_14:
	ld.b	$a2, $a1, 0
	srli.d	$a2, $a2, 4
	or	$a2, $a2, $a5
	andi	$a2, $a2, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a4, -3
	ld.b	$a1, $a1, 0
	slli.d	$a1, $a1, 2
	andi	$a1, $a1, 60
	addi.d	$a1, $a1, 32
.LBB1_15:                               # %.thread
	st.b	$a1, $a4, -2
	ori	$a1, $zero, 61
	st.b	$a1, $a4, -1
.LBB1_16:                               # %._crit_edge.loopexit
	bstrpick.d	$a0, $a0, 31, 0
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ori	$a1, $zero, 10
	stx.h	$a1, $a3, $a0
	ret
.Lfunc_end1:
	.size	encode_line, .Lfunc_end1-encode_line
                                        # -- End function
	.globl	encode                          # -- Begin function encode
	.p2align	5
	.type	encode,@function
encode:                                 # @encode
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	move	$fp, $a2
	blez	$a1, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	ori	$s3, $zero, 45
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 17
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 45
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $a0
	bge	$s2, $s0, .LBB2_6
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s2
	bge	$a2, $s3, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a3, $sp, 17
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s2, $s0
	b	.LBB2_3
.LBB2_6:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.w	$a3, $a2, 0
	ld.h	$a2, $a2, 4
	stx.w	$a3, $fp, $a0
	st.h	$a2, $a1, 4
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end2:
	.size	encode, .Lfunc_end2-encode
                                        # -- End function
	.globl	do_encode                       # -- Begin function do_encode
	.p2align	5
	.type	do_encode,@function
do_encode:                              # @do_encode
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $fp, 7
	st.d	$a0, $fp, 0
	move	$a0, $fp
	move	$a1, $a3
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ld.h	$a3, $a2, 0
	ld.b	$a2, $a2, 2
	stx.h	$a3, $fp, $a0
	st.b	$a2, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s2, $fp, $a0
	blez	$s0, .LBB3_6
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s3, $zero
	ori	$s4, $zero, 45
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 45
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 9
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $a0
	bge	$s3, $s0, .LBB3_6
.LBB3_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s3
	bge	$a2, $s4, .LBB3_2
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s3, $s0
	b	.LBB3_3
.LBB3_6:                                # %encode.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $a0
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.w	$a3, $a2, 0
	ld.h	$a2, $a2, 4
	stx.w	$a3, $s2, $a0
	st.h	$a2, $a1, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end3:
	.size	do_encode, .Lfunc_end3-do_encode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI4_0:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_2:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_3:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	17                              # 0x11
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_4:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	9                               # 0x9
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI4_5:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_6:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	255                             # 0xff
.LCPI4_7:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	19                              # 0x13
.LCPI4_8:
	.byte	4                               # 0x4
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	23                              # 0x17
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_9:
	.half	0                               # 0x0
	.half	10                              # 0xa
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI4_10:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	20                              # 0x14
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_11:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_12:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_13:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	11                              # 0xb
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI4_14:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	22                              # 0x16
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_15:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	23                              # 0x17
	.byte	255                             # 0xff
.LCPI4_16:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	23                              # 0x17
.LCPI4_17:
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_18:
	.half	0                               # 0x0
	.half	12                              # 0xc
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI4_19:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	24                              # 0x18
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_20:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_21:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	25                              # 0x19
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_22:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	13                              # 0xd
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI4_23:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_24:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	27                              # 0x1b
	.byte	255                             # 0xff
.LCPI4_25:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	27                              # 0x1b
.LCPI4_26:
	.byte	12                              # 0xc
	.byte	28                              # 0x1c
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_27:
	.half	0                               # 0x0
	.half	14                              # 0xe
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI4_28:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	28                              # 0x1c
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_29:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_30:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	29                              # 0x1d
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_31:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	15                              # 0xf
	.half	6                               # 0x6
	.half	65535                           # 0xffff
.LCPI4_32:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	30                              # 0x1e
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_33:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
.LCPI4_34:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	31                              # 0x1f
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$s3, $a1
	move	$s2, $a0
	lu12i.w	$a0, 244
	ori	$s0, $a0, 576
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	lu12i.w	$a0, 488
	ori	$a0, $a0, 1152
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$fp, $a0
	blt	$s2, $a1, .LBB4_3
# %bb.1:
	ld.d	$a0, $s3, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_29
# %bb.2:
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_3:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB4_30
.LBB4_4:
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a0, $sp, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s6, 0
	blez	$s3, .LBB4_31
# %bb.5:                                # %.lr.ph.i.i.preheader.us.preheader
	addi.d	$a0, $s1, 23
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$fp, $s1, 1
	addi.d	$s2, $sp, 156
	addi.d	$s8, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 7
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a3, $zero
	ld.h	$a1, $a0, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.b	$a0, $a0, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s7, $sp, 152
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s4, $zero, 2
	vrepli.b	$vr0, 32
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %do_encode.exit.loopexit.us
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.w	$a3, $a2, 0
	ld.h	$a2, $a2, 4
	stx.w	$a3, $s1, $a0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	st.h	$a2, $a1, 4
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ori	$a0, $zero, 1000
	beq	$a3, $a0, .LBB4_33
.LBB4_7:                                # %.lr.ph.i.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #       Child Loop BB4_18 Depth 3
                                        #       Child Loop BB4_21 Depth 3
                                        #       Child Loop BB4_13 Depth 3
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $s5, 7
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $s5, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s5, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	stx.d	$a2, $s5, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 7
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s5, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.h	$a2, $s5, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.b	$a0, $a1, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	add.d	$s1, $s5, $a0
	ori	$s5, $zero, 44
	b	.LBB4_11
.LBB4_8:                                #   in Loop: Header=BB4_11 Depth=2
	ori	$a0, $zero, 1
.LBB4_9:                                # %encode_line.exit.us
                                        #   in Loop: Header=BB4_11 Depth=2
	ori	$a1, $zero, 10
	stx.h	$a1, $a0, $s7
	move	$s0, $s6
.LBB4_10:                               #   in Loop: Header=BB4_11 Depth=2
	addi.d	$a1, $sp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 0
	add.d	$s1, $s1, $a0
	bge	$a1, $s3, .LBB4_6
.LBB4_11:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_18 Depth 3
                                        #       Child Loop BB4_21 Depth 3
                                        #       Child Loop BB4_13 Depth 3
	sub.w	$a0, $s6, $s0
	bge	$s5, $a0, .LBB4_15
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=2
	ori	$a0, $zero, 77
	st.b	$a0, $sp, 152
	bstrpick.d	$a0, $s0, 31, 0
	add.d	$a0, $s8, $a0
	move	$a1, $s2
	addi.d	$a2, $zero, -45
	.p2align	4, , 16
.LBB4_13:                               #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, -2
	srli.d	$a4, $a3, 2
	ld.b	$a5, $a0, -1
	addi.d	$a4, $a4, 32
	st.b	$a4, $a1, -3
	slli.d	$a3, $a3, 4
	srli.d	$a4, $a5, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 63
	ld.b	$a4, $a0, 0
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -2
	slli.d	$a3, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a3, $a5, $a3
	andi	$a3, $a3, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -1
	andi	$a3, $a4, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, 0
	addi.w	$a2, $a2, 3
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 3
	bnez	$a2, .LBB4_13
# %bb.14:                               # %encode_line.exit40.us
                                        #   in Loop: Header=BB4_11 Depth=2
	ori	$a0, $zero, 10
	st.h	$a0, $sp, 213
	addi.w	$s0, $s0, 45
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_15:                               #   in Loop: Header=BB4_11 Depth=2
	andi	$a1, $a0, 63
	addi.d	$a1, $a1, 32
	st.b	$a1, $sp, 152
	vld	$vr9, $sp, 112                  # 16-byte Folded Reload
	blez	$a0, .LBB4_8
# %bb.16:                               # %.lr.ph.preheader.i.us
                                        #   in Loop: Header=BB4_11 Depth=2
	bstrpick.d	$a3, $s0, 31, 0
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a1, $a4, $a1
	srli.d	$a1, $a1, 33
	sub.d	$a2, $s0, $s6
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a2, $a2, $a5
	addi.w	$a5, $a2, -1
	sltu	$a2, $a1, $a5
	masknez	$a6, $a5, $a2
	maskeqz	$a1, $a1, $a2
	or	$a2, $a1, $a6
	ori	$a1, $zero, 1
	ori	$a7, $zero, 16
	bltu	$a2, $a7, .LBB4_20
# %bb.17:                               # %vector.ph
                                        #   in Loop: Header=BB4_11 Depth=2
	addi.w	$a1, $a2, 1
	andi	$a2, $a1, 15
	sltui	$a6, $a2, 1
	masknez	$a2, $a2, $a6
	maskeqz	$a6, $a7, $a6
	or	$a6, $a6, $a2
	sub.d	$a1, $a1, $a6
	alsl.d	$a7, $a1, $a1, 1
	add.d	$a2, $a7, $a3
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 1
	sub.w	$a0, $a0, $a7
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	add.d	$a3, $a7, $a3
	lu12i.w	$a7, 349525
	ori	$a7, $a7, 1366
	lu32i.d	$a7, 349525
	lu52i.d	$a7, $a7, 1365
	mulh.du	$a4, $a4, $a7
	bstrpick.d	$a5, $a5, 31, 0
	sltu	$a7, $a4, $a5
	maskeqz	$a4, $a4, $a7
	masknez	$a5, $a5, $a7
	or	$a4, $a4, $a5
	nor	$a4, $a4, $zero
	add.d	$a4, $a4, $a6
	addi.d	$a5, $sp, 185
	.p2align	4, , 16
.LBB4_18:                               # %vector.body
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a6, $a3, -23
	ld.b	$a7, $a3, -20
	ld.b	$t0, $a3, -17
	ld.b	$t1, $a3, -14
	ld.b	$t2, $a3, -11
	ld.b	$t3, $a3, -8
	ld.b	$t4, $a3, -5
	ld.b	$t5, $a3, -2
	ld.b	$t6, $a3, 1
	ld.b	$t7, $a3, 4
	ld.b	$t8, $a3, 7
	ld.b	$s0, $a3, 10
	ld.b	$ra, $a3, 13
	ld.b	$s8, $a3, 16
	ld.b	$s5, $a3, 19
	ld.b	$s2, $a3, 22
	vinsgr2vr.b	$vr1, $a6, 0
	vinsgr2vr.b	$vr1, $a7, 1
	vinsgr2vr.b	$vr1, $t0, 2
	vinsgr2vr.b	$vr1, $t1, 3
	vinsgr2vr.b	$vr1, $t2, 4
	vinsgr2vr.b	$vr1, $t3, 5
	vinsgr2vr.b	$vr1, $t4, 6
	vinsgr2vr.b	$vr1, $t5, 7
	vinsgr2vr.b	$vr1, $t6, 8
	vinsgr2vr.b	$vr1, $t7, 9
	vinsgr2vr.b	$vr1, $t8, 10
	vinsgr2vr.b	$vr1, $s0, 11
	vinsgr2vr.b	$vr1, $ra, 12
	vinsgr2vr.b	$vr1, $s8, 13
	vinsgr2vr.b	$vr1, $s5, 14
	vinsgr2vr.b	$vr1, $s2, 15
	vsrli.b	$vr0, $vr1, 2
	vadd.b	$vr0, $vr0, $vr9
	vslli.b	$vr1, $vr1, 4
	ld.b	$a6, $a3, -22
	ld.b	$a7, $a3, -19
	ld.b	$t0, $a3, -16
	ld.b	$t1, $a3, -13
	ld.b	$t2, $a3, -10
	ld.b	$t3, $a3, -7
	ld.b	$t4, $a3, -4
	ld.b	$t5, $a3, -1
	ld.b	$t6, $a3, 2
	ld.b	$t7, $a3, 5
	ld.b	$t8, $a3, 8
	ld.b	$s0, $a3, 11
	ld.b	$s2, $a3, 14
	ld.b	$s5, $a3, 17
	ld.b	$s8, $a3, 20
	ld.b	$ra, $a3, 23
	vinsgr2vr.b	$vr2, $a6, 0
	vinsgr2vr.b	$vr2, $a7, 1
	vinsgr2vr.b	$vr2, $t0, 2
	vinsgr2vr.b	$vr2, $t1, 3
	vinsgr2vr.b	$vr2, $t2, 4
	vinsgr2vr.b	$vr2, $t3, 5
	vinsgr2vr.b	$vr2, $t4, 6
	vinsgr2vr.b	$vr2, $t5, 7
	vinsgr2vr.b	$vr2, $t6, 8
	vinsgr2vr.b	$vr2, $t7, 9
	vinsgr2vr.b	$vr2, $t8, 10
	vinsgr2vr.b	$vr2, $s0, 11
	vinsgr2vr.b	$vr2, $s2, 12
	vinsgr2vr.b	$vr2, $s5, 13
	vinsgr2vr.b	$vr2, $s8, 14
	vinsgr2vr.b	$vr2, $ra, 15
	vsrai.b	$vr3, $vr2, 4
	vor.v	$vr1, $vr3, $vr1
	vandi.b	$vr1, $vr1, 63
	vadd.b	$vr1, $vr1, $vr9
	vslli.b	$vr2, $vr2, 2
	ld.b	$a6, $a3, -21
	ld.b	$a7, $a3, -18
	ld.b	$t0, $a3, -15
	ld.b	$t1, $a3, -12
	ld.b	$t2, $a3, -9
	ld.b	$t3, $a3, -6
	ld.b	$t4, $a3, -3
	ld.b	$t5, $a3, 0
	ld.b	$t6, $a3, 3
	ld.b	$t7, $a3, 6
	ld.b	$t8, $a3, 9
	ld.b	$s0, $a3, 12
	ld.b	$s2, $a3, 15
	ld.b	$s5, $a3, 18
	ld.b	$s8, $a3, 21
	ld.b	$ra, $a3, 24
	vinsgr2vr.b	$vr3, $a6, 0
	vinsgr2vr.b	$vr3, $a7, 1
	vinsgr2vr.b	$vr3, $t0, 2
	vinsgr2vr.b	$vr3, $t1, 3
	vinsgr2vr.b	$vr3, $t2, 4
	vinsgr2vr.b	$vr3, $t3, 5
	vinsgr2vr.b	$vr3, $t4, 6
	vinsgr2vr.b	$vr3, $t5, 7
	vinsgr2vr.b	$vr3, $t6, 8
	vinsgr2vr.b	$vr3, $t7, 9
	vinsgr2vr.b	$vr3, $t8, 10
	vinsgr2vr.b	$vr3, $s0, 11
	vinsgr2vr.b	$vr3, $s2, 12
	vinsgr2vr.b	$vr3, $s5, 13
	vinsgr2vr.b	$vr3, $s8, 14
	vinsgr2vr.b	$vr3, $ra, 15
	vsrai.b	$vr4, $vr3, 6
	vor.v	$vr2, $vr4, $vr2
	vandi.b	$vr2, $vr2, 63
	vadd.b	$vr2, $vr2, $vr9
	vandi.b	$vr3, $vr3, 63
	pcalau12i	$a6, %pc_hi20(.LCPI4_0)
	vld	$vr4, $a6, %pc_lo12(.LCPI4_0)
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_1)
	vadd.b	$vr3, $vr3, $vr9
	vshuf.b	$vr4, $vr1, $vr0, $vr4
	vpackev.h	$vr4, $vr2, $vr4
	vshuf.b	$vr4, $vr3, $vr4, $vr5
	pcalau12i	$a6, %pc_hi20(.LCPI4_2)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_2)
	pcalau12i	$a6, %pc_hi20(.LCPI4_3)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_3)
	pcalau12i	$a6, %pc_hi20(.LCPI4_4)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_4)
	pcalau12i	$a6, %pc_hi20(.LCPI4_5)
	vld	$vr8, $a6, %pc_lo12(.LCPI4_5)
	vshuf.b	$vr4, $vr2, $vr4, $vr5
	vshuf.b	$vr4, $vr3, $vr4, $vr6
	vshuf.h	$vr7, $vr2, $vr4
	vshuf.b	$vr4, $vr3, $vr7, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI4_6)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_6)
	pcalau12i	$a6, %pc_hi20(.LCPI4_7)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_7)
	pcalau12i	$a6, %pc_hi20(.LCPI4_8)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_8)
	vshuf.b	$vr4, $vr2, $vr4, $vr5
	vshuf.b	$vr4, $vr3, $vr4, $vr6
	vst	$vr4, $a5, -32
	vshuf.b	$vr4, $vr1, $vr0, $vr7
	pcalau12i	$a6, %pc_hi20(.LCPI4_9)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_9)
	pcalau12i	$a6, %pc_hi20(.LCPI4_10)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_10)
	pcalau12i	$a6, %pc_hi20(.LCPI4_11)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_11)
	pcalau12i	$a6, %pc_hi20(.LCPI4_12)
	vld	$vr8, $a6, %pc_lo12(.LCPI4_12)
	vshuf.h	$vr5, $vr2, $vr4
	vshuf.b	$vr4, $vr3, $vr5, $vr6
	vshuf.b	$vr4, $vr2, $vr4, $vr7
	vshuf.b	$vr4, $vr3, $vr4, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI4_13)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_13)
	pcalau12i	$a6, %pc_hi20(.LCPI4_14)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_14)
	pcalau12i	$a6, %pc_hi20(.LCPI4_15)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_15)
	pcalau12i	$a6, %pc_hi20(.LCPI4_16)
	vld	$vr8, $a6, %pc_lo12(.LCPI4_16)
	vshuf.h	$vr5, $vr2, $vr4
	vshuf.b	$vr4, $vr3, $vr5, $vr6
	vshuf.b	$vr4, $vr2, $vr4, $vr7
	vshuf.b	$vr4, $vr3, $vr4, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI4_17)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_17)
	pcalau12i	$a6, %pc_hi20(.LCPI4_18)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_18)
	pcalau12i	$a6, %pc_hi20(.LCPI4_19)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_19)
	vst	$vr4, $a5, -16
	vshuf.b	$vr4, $vr1, $vr0, $vr5
	vshuf.h	$vr6, $vr2, $vr4
	vshuf.b	$vr4, $vr3, $vr6, $vr7
	pcalau12i	$a6, %pc_hi20(.LCPI4_20)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_20)
	pcalau12i	$a6, %pc_hi20(.LCPI4_21)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_21)
	pcalau12i	$a6, %pc_hi20(.LCPI4_22)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_22)
	pcalau12i	$a6, %pc_hi20(.LCPI4_23)
	vld	$vr8, $a6, %pc_lo12(.LCPI4_23)
	vshuf.b	$vr4, $vr2, $vr4, $vr5
	vshuf.b	$vr4, $vr3, $vr4, $vr6
	vshuf.h	$vr7, $vr2, $vr4
	vshuf.b	$vr4, $vr3, $vr7, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI4_24)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_24)
	pcalau12i	$a6, %pc_hi20(.LCPI4_25)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_25)
	pcalau12i	$a6, %pc_hi20(.LCPI4_26)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_26)
	vshuf.b	$vr4, $vr2, $vr4, $vr5
	vshuf.b	$vr4, $vr3, $vr4, $vr6
	vst	$vr4, $a5, 0
	vshuf.b	$vr0, $vr1, $vr0, $vr7
	pcalau12i	$a6, %pc_hi20(.LCPI4_27)
	vld	$vr1, $a6, %pc_lo12(.LCPI4_27)
	pcalau12i	$a6, %pc_hi20(.LCPI4_28)
	vld	$vr4, $a6, %pc_lo12(.LCPI4_28)
	pcalau12i	$a6, %pc_hi20(.LCPI4_29)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_29)
	pcalau12i	$a6, %pc_hi20(.LCPI4_30)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_30)
	vshuf.h	$vr1, $vr2, $vr0
	vshuf.b	$vr0, $vr3, $vr1, $vr4
	vshuf.b	$vr0, $vr2, $vr0, $vr5
	vshuf.b	$vr0, $vr3, $vr0, $vr6
	pcalau12i	$a6, %pc_hi20(.LCPI4_31)
	vld	$vr1, $a6, %pc_lo12(.LCPI4_31)
	pcalau12i	$a6, %pc_hi20(.LCPI4_32)
	vld	$vr4, $a6, %pc_lo12(.LCPI4_32)
	pcalau12i	$a6, %pc_hi20(.LCPI4_33)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_33)
	pcalau12i	$a6, %pc_hi20(.LCPI4_34)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_34)
	vshuf.h	$vr1, $vr2, $vr0
	vshuf.b	$vr0, $vr3, $vr1, $vr4
	vshuf.b	$vr0, $vr2, $vr0, $vr5
	vshuf.b	$vr0, $vr3, $vr0, $vr6
	vst	$vr0, $a5, 16
	addi.d	$a3, $a3, 48
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 64
	bnez	$a4, .LBB4_18
# %bb.19:                               #   in Loop: Header=BB4_11 Depth=2
	move	$a3, $a2
	addi.d	$s2, $sp, 156
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ori	$s5, $zero, 44
.LBB4_20:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB4_11 Depth=2
	add.d	$a2, $fp, $a3
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB4_21:                               # %.lr.ph.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$s4, $a0, .LBB4_24
# %bb.22:                               #   in Loop: Header=BB4_21 Depth=3
	ld.bu	$a3, $a2, -1
	srli.d	$a4, $a3, 2
	addi.d	$a4, $a4, 32
	ld.b	$a5, $a2, 0
	add.d	$a6, $s7, $a1
	st.b	$a4, $a6, -4
	slli.d	$a3, $a3, 4
	srli.d	$a4, $a5, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 63
	ld.b	$a4, $a2, 1
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -3
	slli.d	$a3, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a3, $a5, $a3
	andi	$a3, $a3, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -2
	andi	$a3, $a4, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -1
	addi.w	$a0, $a0, -3
	addi.d	$a2, $a2, 3
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB4_21
# %bb.23:                               # %._crit_edge.loopexit.i.us.loopexit
                                        #   in Loop: Header=BB4_11 Depth=2
	addi.d	$a1, $a1, -4
	b	.LBB4_28
.LBB4_24:                               #   in Loop: Header=BB4_11 Depth=2
	ld.bu	$a4, $a2, -1
	srli.d	$a3, $a4, 2
	addi.d	$a5, $a3, 32
	add.d	$a3, $s7, $a1
	st.b	$a5, $a3, -4
	slli.d	$a4, $a4, 4
	ori	$a5, $zero, 1
	bne	$a0, $a5, .LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_11 Depth=2
	andi	$a0, $a4, 48
	ori	$a2, $zero, 61
	b	.LBB4_27
.LBB4_26:                               #   in Loop: Header=BB4_11 Depth=2
	ld.b	$a2, $a2, 0
	srli.d	$a0, $a2, 4
	or	$a0, $a0, $a4
	andi	$a0, $a0, 63
	slli.d	$a2, $a2, 2
	andi	$a2, $a2, 60
	addi.d	$a2, $a2, 32
.LBB4_27:                               # %.thread.i.us
                                        #   in Loop: Header=BB4_11 Depth=2
	addi.d	$a0, $a0, 32
	st.b	$a0, $a3, -3
	st.b	$a2, $a3, -2
	ori	$a0, $zero, 61
	st.b	$a0, $a3, -1
.LBB4_28:                               # %._crit_edge.loopexit.i.us
                                        #   in Loop: Header=BB4_11 Depth=2
	bstrpick.d	$a0, $a1, 31, 0
	b	.LBB4_9
.LBB4_29:
	move	$a3, $a0
	addi.w	$s2, $s2, -1
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB4_4
.LBB4_30:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %do_encode.exit.preheader
	ori	$s1, $zero, 1000
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$s4, $a0, 0
	ld.w	$fp, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$s6, $a0, 0
	ld.b	$s7, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$s8, $a0, 0
	ld.h	$s2, $a0, 4
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_32:                               # %do_encode.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $s5, 7
	st.d	$s3, $s5, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s5, $a0
	stx.d	$s4, $s5, $a0
	st.w	$fp, $a1, 7
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s5, $a0
	stx.h	$s6, $s5, $a0
	st.b	$s7, $a1, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $s5, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	stx.w	$s8, $s0, $a0
	addi.w	$s1, $s1, -1
	st.h	$s2, $a1, 4
	bnez	$s1, .LBB4_32
.LBB4_33:                               # %.split50.us
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" \nend"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"begin 640 "
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	" \n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.5:
	.asciz	"uuencode.c"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%d\n"
	.size	.L.str.6, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Usage: uuencode [infile]"
	.size	.Lstr, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
