	.file	"test_indvars.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI0_1:
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
.LCPI0_2:
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
.LCPI0_3:
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
.LCPI0_4:
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
.LCPI0_5:
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
.LCPI0_6:
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
.LCPI0_7:
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
.LCPI0_8:
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
.LCPI0_9:
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
.LCPI0_10:
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
.LCPI0_11:
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
.LCPI0_12:
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
.LCPI0_13:
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
.LCPI0_14:
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
.LCPI0_15:
	.word	67                              # 0x43
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	70                              # 0x46
.LCPI0_16:
	.word	71                              # 0x47
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	74                              # 0x4a
.LCPI0_17:
	.word	75                              # 0x4b
	.word	76                              # 0x4c
	.word	77                              # 0x4d
	.word	78                              # 0x4e
.LCPI0_18:
	.word	79                              # 0x4f
	.word	80                              # 0x50
	.word	81                              # 0x51
	.word	82                              # 0x52
.LCPI0_19:
	.word	83                              # 0x53
	.word	84                              # 0x54
	.word	85                              # 0x55
	.word	86                              # 0x56
.LCPI0_20:
	.word	87                              # 0x57
	.word	88                              # 0x58
	.word	89                              # 0x59
	.word	90                              # 0x5a
.LCPI0_21:
	.word	91                              # 0x5b
	.word	92                              # 0x5c
	.word	93                              # 0x5d
	.word	94                              # 0x5e
.LCPI0_22:
	.word	95                              # 0x5f
	.word	96                              # 0x60
	.word	97                              # 0x61
	.word	98                              # 0x62
.LCPI0_23:
	.word	99                              # 0x63
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	102                             # 0x66
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.preheader17
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	lu12i.w	$a0, 19
	ori	$a0, $a0, 192
	sub.d	$sp, $sp, $a0
	addi.d	$a0, $sp, 20
	ori	$a2, $zero, 788
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1608
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $sp, 8
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 1153
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 1
	ori	$a0, $s0, 704
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2304
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 3904
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 2
	ori	$a0, $s0, 1408
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 3008
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s1, 3
	ori	$a0, $s1, 512
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 3712
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 4
	ori	$a0, $s2, 1216
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2816
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 5
	ori	$a0, $s2, 320
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 1920
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3520
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 6
	ori	$a0, $s2, 1024
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2624
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 7
	ori	$a0, $s2, 128
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 1728
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3328
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 8
	ori	$a0, $s2, 832
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2432
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 4032
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 9
	ori	$a0, $s2, 1536
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3136
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 10
	ori	$a0, $s2, 640
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2240
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3840
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 11
	ori	$a0, $s2, 1344
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2944
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 12
	ori	$a0, $s2, 448
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2048
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3648
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 13
	ori	$a0, $s2, 1152
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2752
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 14
	ori	$a0, $s2, 256
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 1856
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3456
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 960
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addu16i.d	$s2, $fp, 1
	addi.d	$a0, $s2, -1536
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 64
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 1664
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	ori	$a0, $a0, 3264
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 17
	ori	$a0, $s2, 768
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2368
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3968
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 18
	ori	$a0, $s2, 1472
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 3072
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 19
	ori	$a0, $a0, 576
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 800
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 57
	ori	$a1, $zero, 2432
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 12345
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 24
	ori	$a0, $zero, 6
	st.w	$a0, $sp, 32
	vst	$vr0, $sp, 20
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_1)
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 40
	ori	$a0, $zero, 10
	st.w	$a0, $sp, 48
	vst	$vr0, $sp, 36
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	ori	$a0, $zero, 12
	st.w	$a0, $sp, 56
	ori	$a0, $zero, 14
	st.w	$a0, $sp, 64
	vst	$vr0, $sp, 52
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_3)
	ori	$a0, $zero, 16
	st.w	$a0, $sp, 72
	ori	$a0, $zero, 18
	st.w	$a0, $sp, 80
	vst	$vr0, $sp, 68
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	ori	$a0, $zero, 20
	st.w	$a0, $sp, 88
	ori	$a0, $zero, 22
	st.w	$a0, $sp, 96
	vst	$vr0, $sp, 84
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_5)
	ori	$a0, $zero, 24
	st.w	$a0, $sp, 104
	ori	$a0, $zero, 26
	st.w	$a0, $sp, 112
	vst	$vr0, $sp, 100
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_6)
	ori	$a0, $zero, 28
	st.w	$a0, $sp, 120
	ori	$a0, $zero, 30
	st.w	$a0, $sp, 128
	vst	$vr0, $sp, 116
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_7)
	ori	$a0, $zero, 32
	st.w	$a0, $sp, 136
	ori	$a0, $zero, 34
	st.w	$a0, $sp, 144
	vst	$vr0, $sp, 132
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_8)
	ori	$a0, $zero, 36
	st.w	$a0, $sp, 152
	ori	$a0, $zero, 38
	st.w	$a0, $sp, 160
	vst	$vr0, $sp, 148
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_9)
	ori	$a0, $zero, 40
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 42
	st.w	$a0, $sp, 176
	vst	$vr0, $sp, 164
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_10)
	ori	$a0, $zero, 44
	st.w	$a0, $sp, 184
	ori	$a0, $zero, 46
	st.w	$a0, $sp, 192
	vst	$vr0, $sp, 180
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_11)
	ori	$a0, $zero, 48
	st.w	$a0, $sp, 200
	ori	$a0, $zero, 50
	st.w	$a0, $sp, 208
	vst	$vr0, $sp, 196
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_12)
	ori	$a0, $zero, 52
	st.w	$a0, $sp, 216
	ori	$a0, $zero, 54
	st.w	$a0, $sp, 224
	vst	$vr0, $sp, 212
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_13)
	ori	$a0, $zero, 56
	st.w	$a0, $sp, 232
	ori	$a0, $zero, 58
	st.w	$a0, $sp, 240
	vst	$vr0, $sp, 228
	pcalau12i	$a0, %pc_hi20(.LCPI0_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_14)
	ori	$a0, $zero, 60
	st.w	$a0, $sp, 248
	ori	$a0, $zero, 62
	st.w	$a0, $sp, 256
	vst	$vr0, $sp, 244
	pcalau12i	$a0, %pc_hi20(.LCPI0_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_15)
	ori	$a0, $zero, 64
	st.w	$a0, $sp, 264
	ori	$a0, $zero, 66
	st.w	$a0, $sp, 272
	vst	$vr0, $sp, 260
	pcalau12i	$a0, %pc_hi20(.LCPI0_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_16)
	ori	$a0, $zero, 68
	st.w	$a0, $sp, 280
	ori	$a0, $zero, 70
	st.w	$a0, $sp, 288
	vst	$vr0, $sp, 276
	pcalau12i	$a0, %pc_hi20(.LCPI0_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_17)
	ori	$a0, $zero, 72
	st.w	$a0, $sp, 296
	ori	$a0, $zero, 74
	st.w	$a0, $sp, 304
	vst	$vr0, $sp, 292
	pcalau12i	$a0, %pc_hi20(.LCPI0_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_18)
	ori	$a0, $zero, 76
	st.w	$a0, $sp, 312
	ori	$a0, $zero, 78
	st.w	$a0, $sp, 320
	vst	$vr0, $sp, 308
	pcalau12i	$a0, %pc_hi20(.LCPI0_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_19)
	ori	$a0, $zero, 80
	st.w	$a0, $sp, 328
	ori	$a0, $zero, 82
	st.w	$a0, $sp, 336
	vst	$vr0, $sp, 324
	pcalau12i	$a0, %pc_hi20(.LCPI0_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_20)
	ori	$a0, $zero, 84
	st.w	$a0, $sp, 344
	ori	$a0, $zero, 86
	st.w	$a0, $sp, 352
	vst	$vr0, $sp, 340
	pcalau12i	$a0, %pc_hi20(.LCPI0_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_21)
	ori	$a0, $zero, 88
	st.w	$a0, $sp, 360
	ori	$a0, $zero, 90
	st.w	$a0, $sp, 368
	vst	$vr0, $sp, 356
	pcalau12i	$a0, %pc_hi20(.LCPI0_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_22)
	ori	$a0, $zero, 92
	st.w	$a0, $sp, 376
	ori	$a0, $zero, 94
	st.w	$a0, $sp, 384
	vst	$vr0, $sp, 372
	pcalau12i	$a0, %pc_hi20(.LCPI0_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_23)
	ori	$a0, $zero, 96
	st.w	$a0, $sp, 392
	ori	$a0, $zero, 98
	st.w	$a0, $sp, 400
	vst	$vr0, $sp, 388
	ori	$a0, $zero, 103
	lu32i.d	$a0, 104
	st.d	$a0, $sp, 404
	ori	$a0, $zero, 105
	lu32i.d	$a0, 106
	st.d	$a0, $sp, 412
	ori	$a0, $s0, 2260
	add.d	$a0, $fp, $a0
	ori	$a1, $s0, 2208
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 87
	.p2align	4, , 16
.LBB0_1:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	st.w	$a3, $a1, 0
	st.w	$a3, $a1, 4
	st.w	$a3, $a1, 8
	st.w	$a3, $a1, 12
	st.w	$a3, $a1, 16
	st.w	$a3, $a1, 20
	st.w	$a3, $a1, 24
	st.w	$a3, $a1, 28
	st.w	$a3, $a1, 32
	st.w	$a3, $a1, 36
	st.w	$a3, $a1, 40
	st.w	$a3, $a1, 44
	st.w	$a3, $a1, 48
	st.w	$a3, $a1, 52
	st.w	$a3, $a1, 56
	st.w	$a3, $a1, 60
	st.w	$a3, $a1, 64
	st.w	$a3, $a1, 68
	st.w	$a3, $a1, 72
	st.w	$a3, $a1, 76
	st.w	$a3, $a1, 80
	st.w	$a3, $a1, 84
	st.w	$a3, $a1, 88
	st.w	$a3, $a1, 92
	st.w	$a3, $a1, 96
	st.w	$a3, $a1, 100
	st.w	$a3, $a1, 104
	st.w	$a3, $a1, 108
	st.w	$a3, $a1, 112
	st.w	$a3, $a1, 116
	st.w	$a3, $a1, 120
	st.w	$a3, $a1, 124
	st.w	$a3, $a1, 128
	st.w	$a3, $a1, 132
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 804
	addi.d	$a1, $a1, 800
	bnez	$a2, .LBB0_1
# %bb.2:                                # %.preheader.preheader
	move	$a4, $zero
	movgr2fr.d	$fa0, $zero
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 800
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB0_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	move	$a5, $zero
	move	$a3, $a4
	.p2align	4, , 16
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a4, $a0, $a5
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	addi.d	$a5, $a5, 4
	fadd.d	$fa0, $fa0, $fa1
	bne	$a5, $a1, .LBB0_4
# %bb.5:                                # %test_indvars.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a4, $a3, 2
	addi.d	$a0, $a0, 1600
	bltu	$a3, $a2, .LBB0_3
# %bb.6:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 19
	ori	$a1, $a1, 192
	add.d	$sp, $sp, $a1
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Checksum = %.0lf\n"
	.size	.L.str, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
