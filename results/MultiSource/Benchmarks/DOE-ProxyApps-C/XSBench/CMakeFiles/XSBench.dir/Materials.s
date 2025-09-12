	.file	"Materials.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function load_num_nucs
.LCPI0_0:
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	27                              # 0x1b
	.text
	.globl	load_num_nucs
	.p2align	5
	.type	load_num_nucs,@function
load_num_nucs:                          # @load_num_nucs
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, -68
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 321
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	ori	$a3, $zero, 34
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	vst	$vr0, $a0, 4
	vrepli.w	$vr0, 21
	vst	$vr0, $a0, 20
	ori	$a1, $zero, 21
	lu32i.d	$a1, 9
	st.d	$a1, $a0, 36
	ori	$a1, $zero, 9
	st.w	$a1, $a0, 44
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	load_num_nucs, .Lfunc_end0-load_num_nucs
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function load_mats
.LCPI1_0:
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	70                              # 0x46
	.word	71                              # 0x47
.LCPI1_1:
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	74                              # 0x4a
	.word	75                              # 0x4b
.LCPI1_2:
	.word	76                              # 0x4c
	.word	77                              # 0x4d
	.word	78                              # 0x4e
	.word	79                              # 0x4f
.LCPI1_3:
	.word	80                              # 0x50
	.word	81                              # 0x51
	.word	82                              # 0x52
	.word	83                              # 0x53
.LCPI1_4:
	.word	84                              # 0x54
	.word	85                              # 0x55
	.word	86                              # 0x56
	.word	87                              # 0x57
.LCPI1_5:
	.word	88                              # 0x58
	.word	89                              # 0x59
	.word	90                              # 0x5a
	.word	91                              # 0x5b
.LCPI1_6:
	.word	92                              # 0x5c
	.word	93                              # 0x5d
	.word	94                              # 0x5e
	.word	95                              # 0x5f
.LCPI1_7:
	.word	96                              # 0x60
	.word	97                              # 0x61
	.word	98                              # 0x62
	.word	99                              # 0x63
.LCPI1_8:
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	102                             # 0x66
	.word	103                             # 0x67
.LCPI1_9:
	.word	104                             # 0x68
	.word	105                             # 0x69
	.word	106                             # 0x6a
	.word	107                             # 0x6b
.LCPI1_10:
	.word	108                             # 0x6c
	.word	109                             # 0x6d
	.word	110                             # 0x6e
	.word	111                             # 0x6f
.LCPI1_11:
	.word	112                             # 0x70
	.word	113                             # 0x71
	.word	114                             # 0x72
	.word	115                             # 0x73
.LCPI1_12:
	.word	116                             # 0x74
	.word	117                             # 0x75
	.word	118                             # 0x76
	.word	119                             # 0x77
.LCPI1_13:
	.word	120                             # 0x78
	.word	121                             # 0x79
	.word	122                             # 0x7a
	.word	123                             # 0x7b
.LCPI1_14:
	.word	124                             # 0x7c
	.word	125                             # 0x7d
	.word	126                             # 0x7e
	.word	127                             # 0x7f
.LCPI1_15:
	.word	128                             # 0x80
	.word	129                             # 0x81
	.word	130                             # 0x82
	.word	131                             # 0x83
.LCPI1_16:
	.word	132                             # 0x84
	.word	133                             # 0x85
	.word	134                             # 0x86
	.word	135                             # 0x87
.LCPI1_17:
	.word	136                             # 0x88
	.word	137                             # 0x89
	.word	138                             # 0x8a
	.word	139                             # 0x8b
.LCPI1_18:
	.word	140                             # 0x8c
	.word	141                             # 0x8d
	.word	142                             # 0x8e
	.word	143                             # 0x8f
.LCPI1_19:
	.word	144                             # 0x90
	.word	145                             # 0x91
	.word	146                             # 0x92
	.word	147                             # 0x93
.LCPI1_20:
	.word	148                             # 0x94
	.word	149                             # 0x95
	.word	150                             # 0x96
	.word	151                             # 0x97
.LCPI1_21:
	.word	152                             # 0x98
	.word	153                             # 0x99
	.word	154                             # 0x9a
	.word	155                             # 0x9b
.LCPI1_22:
	.word	156                             # 0x9c
	.word	157                             # 0x9d
	.word	158                             # 0x9e
	.word	159                             # 0x9f
.LCPI1_23:
	.word	160                             # 0xa0
	.word	161                             # 0xa1
	.word	162                             # 0xa2
	.word	163                             # 0xa3
.LCPI1_24:
	.word	164                             # 0xa4
	.word	165                             # 0xa5
	.word	166                             # 0xa6
	.word	167                             # 0xa7
.LCPI1_25:
	.word	168                             # 0xa8
	.word	169                             # 0xa9
	.word	170                             # 0xaa
	.word	171                             # 0xab
.LCPI1_26:
	.word	172                             # 0xac
	.word	173                             # 0xad
	.word	174                             # 0xae
	.word	175                             # 0xaf
.LCPI1_27:
	.word	176                             # 0xb0
	.word	177                             # 0xb1
	.word	178                             # 0xb2
	.word	179                             # 0xb3
.LCPI1_28:
	.word	180                             # 0xb4
	.word	181                             # 0xb5
	.word	182                             # 0xb6
	.word	183                             # 0xb7
.LCPI1_29:
	.word	184                             # 0xb8
	.word	185                             # 0xb9
	.word	186                             # 0xba
	.word	187                             # 0xbb
.LCPI1_30:
	.word	188                             # 0xbc
	.word	189                             # 0xbd
	.word	190                             # 0xbe
	.word	191                             # 0xbf
.LCPI1_31:
	.word	192                             # 0xc0
	.word	193                             # 0xc1
	.word	194                             # 0xc2
	.word	195                             # 0xc3
.LCPI1_32:
	.word	196                             # 0xc4
	.word	197                             # 0xc5
	.word	198                             # 0xc6
	.word	199                             # 0xc7
.LCPI1_33:
	.word	200                             # 0xc8
	.word	201                             # 0xc9
	.word	202                             # 0xca
	.word	203                             # 0xcb
.LCPI1_34:
	.word	204                             # 0xcc
	.word	205                             # 0xcd
	.word	206                             # 0xce
	.word	207                             # 0xcf
.LCPI1_35:
	.word	208                             # 0xd0
	.word	209                             # 0xd1
	.word	210                             # 0xd2
	.word	211                             # 0xd3
.LCPI1_36:
	.word	212                             # 0xd4
	.word	213                             # 0xd5
	.word	214                             # 0xd6
	.word	215                             # 0xd7
.LCPI1_37:
	.word	216                             # 0xd8
	.word	217                             # 0xd9
	.word	218                             # 0xda
	.word	219                             # 0xdb
.LCPI1_38:
	.word	220                             # 0xdc
	.word	221                             # 0xdd
	.word	222                             # 0xde
	.word	223                             # 0xdf
.LCPI1_39:
	.word	224                             # 0xe0
	.word	225                             # 0xe1
	.word	226                             # 0xe2
	.word	227                             # 0xe3
.LCPI1_40:
	.word	228                             # 0xe4
	.word	229                             # 0xe5
	.word	230                             # 0xe6
	.word	231                             # 0xe7
.LCPI1_41:
	.word	232                             # 0xe8
	.word	233                             # 0xe9
	.word	234                             # 0xea
	.word	235                             # 0xeb
.LCPI1_42:
	.word	236                             # 0xec
	.word	237                             # 0xed
	.word	238                             # 0xee
	.word	239                             # 0xef
.LCPI1_43:
	.word	240                             # 0xf0
	.word	241                             # 0xf1
	.word	242                             # 0xf2
	.word	243                             # 0xf3
.LCPI1_44:
	.word	244                             # 0xf4
	.word	245                             # 0xf5
	.word	246                             # 0xf6
	.word	247                             # 0xf7
.LCPI1_45:
	.word	248                             # 0xf8
	.word	249                             # 0xf9
	.word	250                             # 0xfa
	.word	251                             # 0xfb
.LCPI1_46:
	.word	252                             # 0xfc
	.word	253                             # 0xfd
	.word	254                             # 0xfe
	.word	255                             # 0xff
.LCPI1_47:
	.word	256                             # 0x100
	.word	257                             # 0x101
	.word	258                             # 0x102
	.word	259                             # 0x103
.LCPI1_48:
	.word	260                             # 0x104
	.word	261                             # 0x105
	.word	262                             # 0x106
	.word	263                             # 0x107
.LCPI1_49:
	.word	264                             # 0x108
	.word	265                             # 0x109
	.word	266                             # 0x10a
	.word	267                             # 0x10b
.LCPI1_50:
	.word	268                             # 0x10c
	.word	269                             # 0x10d
	.word	270                             # 0x10e
	.word	271                             # 0x10f
.LCPI1_51:
	.word	272                             # 0x110
	.word	273                             # 0x111
	.word	274                             # 0x112
	.word	275                             # 0x113
.LCPI1_52:
	.word	276                             # 0x114
	.word	277                             # 0x115
	.word	278                             # 0x116
	.word	279                             # 0x117
.LCPI1_53:
	.word	280                             # 0x118
	.word	281                             # 0x119
	.word	282                             # 0x11a
	.word	283                             # 0x11b
.LCPI1_54:
	.word	284                             # 0x11c
	.word	285                             # 0x11d
	.word	286                             # 0x11e
	.word	287                             # 0x11f
.LCPI1_55:
	.word	288                             # 0x120
	.word	289                             # 0x121
	.word	290                             # 0x122
	.word	291                             # 0x123
.LCPI1_56:
	.word	292                             # 0x124
	.word	293                             # 0x125
	.word	294                             # 0x126
	.word	295                             # 0x127
.LCPI1_57:
	.word	296                             # 0x128
	.word	297                             # 0x129
	.word	298                             # 0x12a
	.word	299                             # 0x12b
.LCPI1_58:
	.word	300                             # 0x12c
	.word	301                             # 0x12d
	.word	302                             # 0x12e
	.word	303                             # 0x12f
.LCPI1_59:
	.word	304                             # 0x130
	.word	305                             # 0x131
	.word	306                             # 0x132
	.word	307                             # 0x133
.LCPI1_60:
	.word	308                             # 0x134
	.word	309                             # 0x135
	.word	310                             # 0x136
	.word	311                             # 0x137
.LCPI1_61:
	.word	312                             # 0x138
	.word	313                             # 0x139
	.word	314                             # 0x13a
	.word	315                             # 0x13b
.LCPI1_62:
	.word	316                             # 0x13c
	.word	317                             # 0x13d
	.word	318                             # 0x13e
	.word	319                             # 0x13f
.LCPI1_63:
	.word	320                             # 0x140
	.word	321                             # 0x141
	.word	322                             # 0x142
	.word	323                             # 0x143
.LCPI1_64:
	.word	324                             # 0x144
	.word	325                             # 0x145
	.word	326                             # 0x146
	.word	327                             # 0x147
.LCPI1_65:
	.word	328                             # 0x148
	.word	329                             # 0x149
	.word	330                             # 0x14a
	.word	331                             # 0x14b
.LCPI1_66:
	.word	332                             # 0x14c
	.word	333                             # 0x14d
	.word	334                             # 0x14e
	.word	335                             # 0x14f
.LCPI1_67:
	.word	336                             # 0x150
	.word	337                             # 0x151
	.word	338                             # 0x152
	.word	339                             # 0x153
.LCPI1_68:
	.word	340                             # 0x154
	.word	341                             # 0x155
	.word	342                             # 0x156
	.word	343                             # 0x157
.LCPI1_69:
	.word	344                             # 0x158
	.word	345                             # 0x159
	.word	346                             # 0x15a
	.word	347                             # 0x15b
	.text
	.globl	load_mats
	.p2align	5
	.type	load_mats,@function
load_mats:                              # @load_mats
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -1520
	st.d	$ra, $sp, 1512                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1504                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1496                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1488                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1480                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1472                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1464                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1456                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1448                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1440                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1432                  # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$s2, $a0
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	move	$fp, $a0
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 4
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	slli.d	$s7, $a1, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $fp, 8
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $fp, 16
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $fp, 24
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 20
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $fp, 32
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 24
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $fp, 40
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $fp, 48
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 32
	move	$s8, $a0
	st.d	$a0, $fp, 56
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 36
	move	$s1, $a0
	st.d	$a0, $fp, 64
	slli.d	$s3, $a1, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 40
	move	$s4, $a0
	st.d	$a0, $fp, 72
	slli.d	$s0, $a1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 44
	move	$s5, $a0
	st.d	$a0, $fp, 80
	slli.d	$s2, $a1, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $fp, 88
	pcalau12i	$a0, %pc_hi20(.L__const.load_mats.mats0_Lrg)
	addi.d	$a1, $a0, %pc_lo12(.L__const.load_mats.mats0_Lrg)
	addi.d	$a0, $sp, 144
	ori	$a2, $zero, 1284
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	vst	$vr0, $sp, 280
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 296
	vst	$vr1, $sp, 312
	vst	$vr2, $sp, 328
	vst	$vr3, $sp, 344
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_8)
	vst	$vr0, $sp, 360
	vst	$vr1, $sp, 376
	vst	$vr2, $sp, 392
	vst	$vr3, $sp, 408
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_9)
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_10)
	pcalau12i	$a0, %pc_hi20(.LCPI1_11)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_11)
	pcalau12i	$a0, %pc_hi20(.LCPI1_12)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_12)
	vst	$vr0, $sp, 424
	vst	$vr1, $sp, 440
	vst	$vr2, $sp, 456
	vst	$vr3, $sp, 472
	pcalau12i	$a0, %pc_hi20(.LCPI1_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_13)
	pcalau12i	$a0, %pc_hi20(.LCPI1_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_14)
	pcalau12i	$a0, %pc_hi20(.LCPI1_15)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_15)
	pcalau12i	$a0, %pc_hi20(.LCPI1_16)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_16)
	vst	$vr0, $sp, 488
	vst	$vr1, $sp, 504
	vst	$vr2, $sp, 520
	vst	$vr3, $sp, 536
	pcalau12i	$a0, %pc_hi20(.LCPI1_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_17)
	pcalau12i	$a0, %pc_hi20(.LCPI1_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_18)
	pcalau12i	$a0, %pc_hi20(.LCPI1_19)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_19)
	pcalau12i	$a0, %pc_hi20(.LCPI1_20)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_20)
	vst	$vr0, $sp, 552
	vst	$vr1, $sp, 568
	vst	$vr2, $sp, 584
	vst	$vr3, $sp, 600
	pcalau12i	$a0, %pc_hi20(.LCPI1_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_21)
	pcalau12i	$a0, %pc_hi20(.LCPI1_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_22)
	pcalau12i	$a0, %pc_hi20(.LCPI1_23)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_23)
	pcalau12i	$a0, %pc_hi20(.LCPI1_24)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_24)
	vst	$vr0, $sp, 616
	vst	$vr1, $sp, 632
	vst	$vr2, $sp, 648
	vst	$vr3, $sp, 664
	pcalau12i	$a0, %pc_hi20(.LCPI1_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_25)
	pcalau12i	$a0, %pc_hi20(.LCPI1_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_26)
	pcalau12i	$a0, %pc_hi20(.LCPI1_27)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_27)
	pcalau12i	$a0, %pc_hi20(.LCPI1_28)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_28)
	vst	$vr0, $sp, 680
	vst	$vr1, $sp, 696
	vst	$vr2, $sp, 712
	vst	$vr3, $sp, 728
	pcalau12i	$a0, %pc_hi20(.LCPI1_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_29)
	pcalau12i	$a0, %pc_hi20(.LCPI1_30)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_30)
	pcalau12i	$a0, %pc_hi20(.LCPI1_31)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_31)
	pcalau12i	$a0, %pc_hi20(.LCPI1_32)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_32)
	vst	$vr0, $sp, 744
	vst	$vr1, $sp, 760
	vst	$vr2, $sp, 776
	vst	$vr3, $sp, 792
	pcalau12i	$a0, %pc_hi20(.LCPI1_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_33)
	pcalau12i	$a0, %pc_hi20(.LCPI1_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_34)
	pcalau12i	$a0, %pc_hi20(.LCPI1_35)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_35)
	pcalau12i	$a0, %pc_hi20(.LCPI1_36)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_36)
	vst	$vr0, $sp, 808
	vst	$vr1, $sp, 824
	vst	$vr2, $sp, 840
	vst	$vr3, $sp, 856
	pcalau12i	$a0, %pc_hi20(.LCPI1_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_37)
	pcalau12i	$a0, %pc_hi20(.LCPI1_38)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_38)
	pcalau12i	$a0, %pc_hi20(.LCPI1_39)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_39)
	pcalau12i	$a0, %pc_hi20(.LCPI1_40)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_40)
	vst	$vr0, $sp, 872
	vst	$vr1, $sp, 888
	vst	$vr2, $sp, 904
	vst	$vr3, $sp, 920
	pcalau12i	$a0, %pc_hi20(.LCPI1_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_41)
	pcalau12i	$a0, %pc_hi20(.LCPI1_42)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_42)
	pcalau12i	$a0, %pc_hi20(.LCPI1_43)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_43)
	pcalau12i	$a0, %pc_hi20(.LCPI1_44)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_44)
	vst	$vr0, $sp, 936
	vst	$vr1, $sp, 952
	vst	$vr2, $sp, 968
	vst	$vr3, $sp, 984
	pcalau12i	$a0, %pc_hi20(.LCPI1_45)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_45)
	pcalau12i	$a0, %pc_hi20(.LCPI1_46)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_46)
	pcalau12i	$a0, %pc_hi20(.LCPI1_47)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_47)
	pcalau12i	$a0, %pc_hi20(.LCPI1_48)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_48)
	vst	$vr0, $sp, 1000
	vst	$vr1, $sp, 1016
	vst	$vr2, $sp, 1032
	vst	$vr3, $sp, 1048
	pcalau12i	$a0, %pc_hi20(.LCPI1_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_49)
	pcalau12i	$a0, %pc_hi20(.LCPI1_50)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_50)
	pcalau12i	$a0, %pc_hi20(.LCPI1_51)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_51)
	pcalau12i	$a0, %pc_hi20(.LCPI1_52)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_52)
	vst	$vr0, $sp, 1064
	vst	$vr1, $sp, 1080
	vst	$vr2, $sp, 1096
	vst	$vr3, $sp, 1112
	pcalau12i	$a0, %pc_hi20(.LCPI1_53)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_53)
	pcalau12i	$a0, %pc_hi20(.LCPI1_54)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_54)
	pcalau12i	$a0, %pc_hi20(.LCPI1_55)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_55)
	pcalau12i	$a0, %pc_hi20(.LCPI1_56)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_56)
	vst	$vr0, $sp, 1128
	vst	$vr1, $sp, 1144
	vst	$vr2, $sp, 1160
	vst	$vr3, $sp, 1176
	pcalau12i	$a0, %pc_hi20(.LCPI1_57)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_57)
	pcalau12i	$a0, %pc_hi20(.LCPI1_58)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_58)
	pcalau12i	$a0, %pc_hi20(.LCPI1_59)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_59)
	pcalau12i	$a0, %pc_hi20(.LCPI1_60)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_60)
	vst	$vr0, $sp, 1192
	vst	$vr1, $sp, 1208
	vst	$vr2, $sp, 1224
	vst	$vr3, $sp, 1240
	pcalau12i	$a0, %pc_hi20(.LCPI1_61)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_61)
	pcalau12i	$a0, %pc_hi20(.LCPI1_62)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_62)
	pcalau12i	$a0, %pc_hi20(.LCPI1_63)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_63)
	pcalau12i	$a0, %pc_hi20(.LCPI1_64)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_64)
	vst	$vr0, $sp, 1256
	vst	$vr1, $sp, 1272
	vst	$vr2, $sp, 1288
	vst	$vr3, $sp, 1304
	pcalau12i	$a0, %pc_hi20(.LCPI1_65)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_65)
	pcalau12i	$a0, %pc_hi20(.LCPI1_66)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_66)
	pcalau12i	$a0, %pc_hi20(.LCPI1_67)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_67)
	pcalau12i	$a0, %pc_hi20(.LCPI1_68)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_68)
	vst	$vr0, $sp, 1320
	vst	$vr1, $sp, 1336
	vst	$vr2, $sp, 1352
	vst	$vr3, $sp, 1368
	pcalau12i	$a0, %pc_hi20(.LCPI1_69)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_69)
	ori	$a0, $zero, 348
	lu32i.d	$a0, 349
	st.d	$a0, $sp, 1400
	ori	$a0, $zero, 350
	lu32i.d	$a0, 351
	st.d	$a0, $sp, 1408
	ori	$a0, $zero, 352
	lu32i.d	$a0, 353
	st.d	$a0, $sp, 1416
	ori	$a0, $zero, 354
	st.w	$a0, $sp, 1424
	ori	$a0, $zero, 68
	vst	$vr0, $sp, 1384
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L__const.load_mats.mats0_Sml)
	addi.d	$a1, $a0, %pc_lo12(.L__const.load_mats.mats0_Sml)
	b	.LBB1_3
.LBB1_2:
	addi.d	$a1, $sp, 144
.LBB1_3:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L__const.load_mats.mats1)
	addi.d	$a1, $a0, %pc_lo12(.L__const.load_mats.mats1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L__const.load_mats.mats3)
	addi.d	$s7, $a0, %pc_lo12(.L__const.load_mats.mats3)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L__const.load_mats.mats4)
	addi.d	$a1, $a0, %pc_lo12(.L__const.load_mats.mats4)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L__const.load_mats.mats9)
	addi.d	$s7, $a0, %pc_lo12(.L__const.load_mats.mats9)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s7
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s7
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L__const.load_mats.mats11)
	addi.d	$s1, $a0, %pc_lo12(.L__const.load_mats.mats11)
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s8, $sp, 1432                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1440                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1448                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1472                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1480                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1488                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1496                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1504                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1512                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1520
	ret
.Lfunc_end1:
	.size	load_mats, .Lfunc_end1-load_mats
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function load_concs
.LCPI2_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	load_concs
	.p2align	5
	.type	load_concs,@function
load_concs:                             # @load_concs
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $a0
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	st.d	$a0, $s4, 0
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$s2, $a0
	st.d	$a0, $s4, 8
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s1, $a0
	st.d	$a0, $s4, 16
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$s0, $a0
	st.d	$a0, $s4, 24
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	move	$s8, $a0
	st.d	$a0, $s4, 32
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	move	$s7, $a0
	st.d	$a0, $s4, 40
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	move	$s6, $a0
	st.d	$a0, $s4, 48
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	move	$s5, $a0
	st.d	$a0, $s4, 56
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $s4, 64
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $s4, 72
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 44
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $s4, 80
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $s4, 88
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	blez	$a1, .LBB2_4
# %bb.1:                                # %.lr.ph.preheader
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_0)
	move	$s4, $zero
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 0
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s3, 0
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a0, .LBB2_2
# %bb.3:                                # %._crit_edge.loopexit
	ld.w	$a0, $fp, 4
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB2_4:                                # %._crit_edge
	blez	$a0, .LBB2_7
# %bb.5:                                # %.lr.ph.1.preheader
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_0)
	move	$s3, $zero
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph.1
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 4
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s2, 0
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB2_6
.LBB2_7:                                # %._crit_edge.1
	ld.w	$a0, $fp, 8
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB2_10
# %bb.8:                                # %.lr.ph.2.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_9:                                # %.lr.ph.2
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 8
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s1, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB2_9
.LBB2_10:                               # %._crit_edge.2
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB2_13
# %bb.11:                               # %.lr.ph.3.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s1, $zero
	.p2align	4, , 16
.LBB2_12:                               # %.lr.ph.3
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 12
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s0, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB2_12
.LBB2_13:                               # %._crit_edge.3
	ld.w	$a0, $fp, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB2_16
# %bb.14:                               # %.lr.ph.4.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph.4
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 16
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s8, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 8
	blt	$s0, $a0, .LBB2_15
.LBB2_16:                               # %._crit_edge.4
	ld.w	$a0, $fp, 20
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	blez	$a0, .LBB2_19
# %bb.17:                               # %.lr.ph.5.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_18:                               # %.lr.ph.5
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 20
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s7, 0
	addi.d	$s0, $s0, 1
	addi.d	$s7, $s7, 8
	blt	$s0, $a0, .LBB2_18
.LBB2_19:                               # %._crit_edge.5
	ld.w	$a0, $fp, 24
	blez	$a0, .LBB2_22
# %bb.20:                               # %.lr.ph.6.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_21:                               # %.lr.ph.6
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 24
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s6, 0
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 8
	blt	$s0, $a0, .LBB2_21
.LBB2_22:                               # %._crit_edge.6
	ld.w	$a0, $fp, 28
	blez	$a0, .LBB2_25
# %bb.23:                               # %.lr.ph.7.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_24:                               # %.lr.ph.7
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 28
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s5, 0
	addi.d	$s0, $s0, 1
	addi.d	$s5, $s5, 8
	blt	$s0, $a0, .LBB2_24
.LBB2_25:                               # %._crit_edge.7
	ld.w	$a0, $fp, 32
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	blez	$a0, .LBB2_28
# %bb.26:                               # %.lr.ph.8.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_27:                               # %.lr.ph.8
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 32
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s5, 0
	addi.d	$s0, $s0, 1
	addi.d	$s5, $s5, 8
	blt	$s0, $a0, .LBB2_27
.LBB2_28:                               # %._crit_edge.8
	ld.w	$a0, $fp, 36
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	blez	$a0, .LBB2_31
# %bb.29:                               # %.lr.ph.9.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_30:                               # %.lr.ph.9
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 36
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s5, 0
	addi.d	$s0, $s0, 1
	addi.d	$s5, $s5, 8
	blt	$s0, $a0, .LBB2_30
.LBB2_31:                               # %._crit_edge.9
	ld.w	$a0, $fp, 40
	blez	$a0, .LBB2_34
# %bb.32:                               # %.lr.ph.10.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_33:                               # %.lr.ph.10
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 40
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 8
	blt	$s0, $a0, .LBB2_33
.LBB2_34:                               # %._crit_edge.10
	ld.w	$a0, $fp, 44
	blez	$a0, .LBB2_37
# %bb.35:                               # %.lr.ph.11.preheader
	fld.d	$fs0, $s3, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_36:                               # %.lr.ph.11
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $fp, 44
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s1, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	blt	$s0, $a0, .LBB2_36
.LBB2_37:                               # %._crit_edge.11
	move	$a0, $s4
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end2:
	.size	load_concs, .Lfunc_end2-load_concs
                                        # -- End function
	.globl	load_concs_v                    # -- Begin function load_concs_v
	.p2align	5
	.type	load_concs_v,@function
load_concs_v:                           # @load_concs_v
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $a0
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	st.d	$a0, $s4, 0
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$s2, $a0
	st.d	$a0, $s4, 8
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s1, $a0
	st.d	$a0, $s4, 16
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$s0, $a0
	st.d	$a0, $s4, 24
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	move	$s8, $a0
	st.d	$a0, $s4, 32
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	move	$s7, $a0
	st.d	$a0, $s4, 40
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	move	$s6, $a0
	st.d	$a0, $s4, 48
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	move	$s5, $a0
	st.d	$a0, $s4, 56
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $s4, 64
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $s4, 72
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 44
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $s4, 80
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $s4, 88
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	blez	$a1, .LBB3_4
# %bb.1:                                # %.lr.ph.preheader
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $zero
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	fst.d	$fa0, $s3, 0
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a0, .LBB3_2
# %bb.3:                                # %._crit_edge.loopexit
	ld.w	$a0, $fp, 4
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB3_4:                                # %._crit_edge
	blez	$a0, .LBB3_7
# %bb.5:                                # %.lr.ph.1.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph.1
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	fst.d	$fa0, $s2, 0
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB3_6
.LBB3_7:                                # %._crit_edge.1
	ld.w	$a0, $fp, 8
	blez	$a0, .LBB3_10
# %bb.8:                                # %.lr.ph.2.preheader
	move	$s2, $zero
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.2
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	fst.d	$fa0, $s1, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB3_9
.LBB3_10:                               # %._crit_edge.2
	ld.w	$a0, $fp, 12
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	blez	$a0, .LBB3_13
# %bb.11:                               # %.lr.ph.3.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB3_12:                               # %.lr.ph.3
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	fst.d	$fa0, $s0, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB3_12
.LBB3_13:                               # %._crit_edge.3
	ld.w	$a0, $fp, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB3_16
# %bb.14:                               # %.lr.ph.4.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph.4
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	fst.d	$fa0, $s8, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 8
	blt	$s0, $a0, .LBB3_15
.LBB3_16:                               # %._crit_edge.4
	ld.w	$a0, $fp, 20
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	blez	$a0, .LBB3_19
# %bb.17:                               # %.lr.ph.5.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_18:                               # %.lr.ph.5
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 20
	fst.d	$fa0, $s7, 0
	addi.d	$s0, $s0, 1
	addi.d	$s7, $s7, 8
	blt	$s0, $a0, .LBB3_18
.LBB3_19:                               # %._crit_edge.5
	ld.w	$a0, $fp, 24
	blez	$a0, .LBB3_22
# %bb.20:                               # %.lr.ph.6.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_21:                               # %.lr.ph.6
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	fst.d	$fa0, $s6, 0
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 8
	blt	$s0, $a0, .LBB3_21
.LBB3_22:                               # %._crit_edge.6
	ld.w	$a0, $fp, 28
	blez	$a0, .LBB3_25
# %bb.23:                               # %.lr.ph.7.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_24:                               # %.lr.ph.7
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	fst.d	$fa0, $s5, 0
	addi.d	$s0, $s0, 1
	addi.d	$s5, $s5, 8
	blt	$s0, $a0, .LBB3_24
.LBB3_25:                               # %._crit_edge.7
	ld.w	$a0, $fp, 32
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	blez	$a0, .LBB3_28
# %bb.26:                               # %.lr.ph.8.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_27:                               # %.lr.ph.8
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	fst.d	$fa0, $s5, 0
	addi.d	$s0, $s0, 1
	addi.d	$s5, $s5, 8
	blt	$s0, $a0, .LBB3_27
.LBB3_28:                               # %._crit_edge.8
	ld.w	$a0, $fp, 36
	blez	$a0, .LBB3_31
# %bb.29:                               # %.lr.ph.9.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_30:                               # %.lr.ph.9
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	fst.d	$fa0, $s3, 0
	addi.d	$s0, $s0, 1
	addi.d	$s3, $s3, 8
	blt	$s0, $a0, .LBB3_30
.LBB3_31:                               # %._crit_edge.9
	ld.w	$a0, $fp, 40
	blez	$a0, .LBB3_34
# %bb.32:                               # %.lr.ph.10.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_33:                               # %.lr.ph.10
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	fst.d	$fa0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 8
	blt	$s0, $a0, .LBB3_33
.LBB3_34:                               # %._crit_edge.10
	ld.w	$a0, $fp, 44
	blez	$a0, .LBB3_37
# %bb.35:                               # %.lr.ph.11.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_36:                               # %.lr.ph.11
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	fst.d	$fa0, $s1, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	blt	$s0, $a0, .LBB3_36
.LBB3_37:                               # %._crit_edge.11
	move	$a0, $s4
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end3:
	.size	load_concs_v, .Lfunc_end3-load_concs_v
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function pick_mat
.LCPI4_0:
	.dword	0x3faa9fbe76c8b439              # double 0.051999999999999998
.LCPI4_1:
	.dword	0x3fd4ed916872b021              # double 0.32700000000000001
.LCPI4_2:
	.dword	0x3fdd810624dd2f1b              # double 0.46100000000000002
.LCPI4_3:
	.dword	0x3fe3ae147ae147af              # double 0.6150000000000001
.LCPI4_4:
	.dword	0x3fe5ba5e353f7cee              # double 0.67900000000000005
.LCPI4_5:
	.dword	0x3fe7d70a3d70a3d8              # double 0.74500000000000011
.LCPI4_6:
	.dword	0x3fe999999999999a              # double 0.80000000000000004
.LCPI4_7:
	.dword	0x3fe9db22d0e56042              # double 0.80800000000000005
.LCPI4_8:
	.dword	0x3fea5604189374bd              # double 0.82300000000000006
.LCPI4_9:
	.dword	0x3feb22d0e560418a              # double 0.84800000000000009
.LCPI4_10:
	.dword	0x3feb8d4fdf3b645b              # double 0.8610000000000001
	.text
	.globl	pick_mat
	.p2align	5
	.type	pick_mat,@function
pick_mat:                               # @pick_mat
# %bb.0:                                # %._crit_edge
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(rn_v)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_12
# %bb.1:                                # %._crit_edge.1
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB4_13
# %bb.2:                                # %._crit_edge.2
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 2
	bcnez	$fcc0, .LBB4_13
# %bb.3:                                # %._crit_edge.3
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_2)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 3
	bcnez	$fcc0, .LBB4_13
# %bb.4:                                # %._crit_edge.4
	pcalau12i	$a0, %pc_hi20(.LCPI4_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_3)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 4
	bcnez	$fcc0, .LBB4_13
# %bb.5:                                # %._crit_edge.5
	pcalau12i	$a0, %pc_hi20(.LCPI4_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_4)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 5
	bcnez	$fcc0, .LBB4_13
# %bb.6:                                # %._crit_edge.6
	pcalau12i	$a0, %pc_hi20(.LCPI4_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_5)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 6
	bcnez	$fcc0, .LBB4_13
# %bb.7:                                # %._crit_edge.7
	pcalau12i	$a0, %pc_hi20(.LCPI4_6)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_6)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 7
	bcnez	$fcc0, .LBB4_13
# %bb.8:                                # %._crit_edge.8
	pcalau12i	$a0, %pc_hi20(.LCPI4_7)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_7)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 8
	bcnez	$fcc0, .LBB4_13
# %bb.9:                                # %._crit_edge.9
	pcalau12i	$a0, %pc_hi20(.LCPI4_8)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_8)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 9
	bcnez	$fcc0, .LBB4_13
# %bb.10:                               # %._crit_edge.10
	pcalau12i	$a0, %pc_hi20(.LCPI4_9)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_9)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 10
	bcnez	$fcc0, .LBB4_13
# %bb.11:                               # %._crit_edge.11
	pcalau12i	$a0, %pc_hi20(.LCPI4_10)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_10)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 11
	bcnez	$fcc0, .LBB4_13
.LBB4_12:
	move	$a0, $zero
.LBB4_13:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	pick_mat, .Lfunc_end4-pick_mat
                                        # -- End function
	.type	.L__const.load_mats.mats0_Sml,@object # @__const.load_mats.mats0_Sml
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.load_mats.mats0_Sml:
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	40                              # 0x28
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	29                              # 0x1d
	.word	57                              # 0x39
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	15                              # 0xf
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	41                              # 0x29
	.size	.L__const.load_mats.mats0_Sml, 136

	.type	.L__const.load_mats.mats0_Lrg,@object # @__const.load_mats.mats0_Lrg
	.p2align	3, 0x0
.L__const.load_mats.mats0_Lrg:
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	40                              # 0x28
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	29                              # 0x1d
	.word	57                              # 0x39
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	15                              # 0xf
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	41                              # 0x29
	.space	1148
	.size	.L__const.load_mats.mats0_Lrg, 1284

	.type	.L__const.load_mats.mats1,@object # @__const.load_mats.mats1
	.p2align	3, 0x0
.L__const.load_mats.mats1:
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.size	.L__const.load_mats.mats1, 20

	.type	.L__const.load_mats.mats3,@object # @__const.load_mats.mats3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__const.load_mats.mats3:
	.word	24                              # 0x18
	.word	41                              # 0x29
	.word	4                               # 0x4
	.word	5                               # 0x5
	.size	.L__const.load_mats.mats3, 16

	.type	.L__const.load_mats.mats4,@object # @__const.load_mats.mats4
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.load_mats.mats4:
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	26                              # 0x1a
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	6                               # 0x6
	.word	16                              # 0x10
	.word	17                              # 0x11
	.size	.L__const.load_mats.mats4, 108

	.type	.L__const.load_mats.mats9,@object # @__const.load_mats.mats9
	.p2align	3, 0x0
.L__const.load_mats.mats9:
	.word	24                              # 0x18
	.word	41                              # 0x29
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	25                              # 0x19
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.size	.L__const.load_mats.mats9, 84

	.type	.L__const.load_mats.mats11,@object # @__const.load_mats.mats11
	.p2align	3, 0x0
.L__const.load_mats.mats11:
	.word	24                              # 0x18
	.word	41                              # 0x29
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.size	.L__const.load_mats.mats11, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
