	.file	"pr68532.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a1, 16
	ld.h	$a5, $a1, 32
	ld.h	$a6, $a1, 48
	ld.h	$a7, $a1, 64
	ld.h	$t0, $a1, 80
	ld.h	$t1, $a1, 96
	ld.h	$t2, $a1, 112
	ld.h	$t3, $a1, 128
	ld.h	$t4, $a1, 144
	ld.h	$t5, $a1, 160
	ld.h	$t6, $a1, 176
	ld.h	$t7, $a1, 192
	ld.h	$t8, $a1, 208
	ld.h	$fp, $a1, 224
	ld.h	$a1, $a1, 240
	vinsgr2vr.h	$vr0, $t3, 0
	vinsgr2vr.h	$vr0, $t4, 1
	vinsgr2vr.h	$vr0, $t5, 2
	vinsgr2vr.h	$vr0, $t6, 3
	vinsgr2vr.h	$vr0, $t7, 4
	vinsgr2vr.h	$vr0, $t8, 5
	vinsgr2vr.h	$vr0, $fp, 6
	vinsgr2vr.h	$vr0, $a1, 7
	vinsgr2vr.h	$vr1, $a3, 0
	vinsgr2vr.h	$vr1, $a4, 1
	vinsgr2vr.h	$vr1, $a5, 2
	vinsgr2vr.h	$vr1, $a6, 3
	vinsgr2vr.h	$vr1, $a7, 4
	vinsgr2vr.h	$vr1, $t0, 5
	vinsgr2vr.h	$vr1, $t1, 6
	vinsgr2vr.h	$vr1, $t2, 7
	vreplgr2vr.h	$vr2, $a2
	vmul.h	$vr1, $vr1, $vr2
	vmadd.h	$vr1, $vr0, $vr2
	vhaddw.w.h	$vr0, $vr1, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	add.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 15, 0
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
.LCPI1_1:
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
.LCPI1_2:
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
	.half	19                              # 0x13
	.half	20                              # 0x14
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	23                              # 0x17
.LCPI1_3:
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	26                              # 0x1a
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	29                              # 0x1d
	.half	30                              # 0x1e
	.half	31                              # 0x1f
.LCPI1_4:
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	34                              # 0x22
	.half	35                              # 0x23
	.half	36                              # 0x24
	.half	37                              # 0x25
	.half	38                              # 0x26
	.half	39                              # 0x27
.LCPI1_5:
	.half	40                              # 0x28
	.half	41                              # 0x29
	.half	42                              # 0x2a
	.half	43                              # 0x2b
	.half	44                              # 0x2c
	.half	45                              # 0x2d
	.half	46                              # 0x2e
	.half	47                              # 0x2f
.LCPI1_6:
	.half	48                              # 0x30
	.half	49                              # 0x31
	.half	50                              # 0x32
	.half	51                              # 0x33
	.half	52                              # 0x34
	.half	53                              # 0x35
	.half	54                              # 0x36
	.half	55                              # 0x37
.LCPI1_7:
	.half	56                              # 0x38
	.half	57                              # 0x39
	.half	58                              # 0x3a
	.half	59                              # 0x3b
	.half	60                              # 0x3c
	.half	61                              # 0x3d
	.half	62                              # 0x3e
	.half	63                              # 0x3f
.LCPI1_8:
	.half	64                              # 0x40
	.half	65                              # 0x41
	.half	66                              # 0x42
	.half	67                              # 0x43
	.half	68                              # 0x44
	.half	69                              # 0x45
	.half	70                              # 0x46
	.half	71                              # 0x47
.LCPI1_9:
	.half	72                              # 0x48
	.half	73                              # 0x49
	.half	74                              # 0x4a
	.half	75                              # 0x4b
	.half	76                              # 0x4c
	.half	77                              # 0x4d
	.half	78                              # 0x4e
	.half	79                              # 0x4f
.LCPI1_10:
	.half	80                              # 0x50
	.half	81                              # 0x51
	.half	82                              # 0x52
	.half	83                              # 0x53
	.half	84                              # 0x54
	.half	85                              # 0x55
	.half	86                              # 0x56
	.half	87                              # 0x57
.LCPI1_11:
	.half	88                              # 0x58
	.half	89                              # 0x59
	.half	90                              # 0x5a
	.half	91                              # 0x5b
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	94                              # 0x5e
	.half	95                              # 0x5f
.LCPI1_12:
	.half	96                              # 0x60
	.half	97                              # 0x61
	.half	98                              # 0x62
	.half	99                              # 0x63
	.half	100                             # 0x64
	.half	101                             # 0x65
	.half	102                             # 0x66
	.half	103                             # 0x67
.LCPI1_13:
	.half	104                             # 0x68
	.half	105                             # 0x69
	.half	106                             # 0x6a
	.half	107                             # 0x6b
	.half	108                             # 0x6c
	.half	109                             # 0x6d
	.half	110                             # 0x6e
	.half	111                             # 0x6f
.LCPI1_14:
	.half	112                             # 0x70
	.half	113                             # 0x71
	.half	114                             # 0x72
	.half	115                             # 0x73
	.half	116                             # 0x74
	.half	117                             # 0x75
	.half	118                             # 0x76
	.half	119                             # 0x77
.LCPI1_15:
	.half	120                             # 0x78
	.half	121                             # 0x79
	.half	122                             # 0x7a
	.half	123                             # 0x7b
	.half	124                             # 0x7c
	.half	125                             # 0x7d
	.half	126                             # 0x7e
	.half	127                             # 0x7f
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(in)
	addi.d	$a1, $a0, %pc_lo12(in)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_3)
	vst	$vr0, $a1, 0
	vst	$vr1, $a1, 16
	vst	$vr2, $a1, 32
	vst	$vr3, $a1, 48
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_7)
	vst	$vr0, $a1, 64
	vst	$vr1, $a1, 80
	vst	$vr2, $a1, 96
	vst	$vr3, $a1, 112
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_8)
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_9)
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_10)
	pcalau12i	$a0, %pc_hi20(.LCPI1_11)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_11)
	vst	$vr0, $a1, 128
	vst	$vr1, $a1, 144
	vst	$vr2, $a1, 160
	vst	$vr3, $a1, 176
	pcalau12i	$a0, %pc_hi20(.LCPI1_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_12)
	pcalau12i	$a0, %pc_hi20(.LCPI1_13)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_13)
	pcalau12i	$a0, %pc_hi20(.LCPI1_14)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_14)
	pcalau12i	$a0, %pc_hi20(.LCPI1_15)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_15)
	vst	$vr0, $a1, 192
	vst	$vr1, $a1, 208
	vst	$vr2, $a1, 224
	vst	$vr3, $a1, 240
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(test)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 960
	bne	$a0, $a1, .LBB1_2
# %bb.1:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	in,@object                      # @in
	.bss
	.globl	in
	.p2align	4, 0x0
in:
	.space	256
	.size	in, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym in
