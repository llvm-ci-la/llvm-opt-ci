	.file	"tabinit.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function make_decode_tables
.LCPI0_0:
	.dword	0x3fe004f09436640e              # double 0.50060299823519627
	.dword	0x3fe02cd16f3ace41              # double 0.50547095989754365
.LCPI0_1:
	.dword	0x3fe07e8b5b5db921              # double 0.51544730992262455
	.dword	0x3fe0fe4d0830706d              # double 0.53104259108978413
.LCPI0_2:
	.dword	0x3fe1b306f118428c              # double 0.55310389603444454
	.dword	0x3fe2a7673c047c11              # double 0.58293496820613389
.LCPI0_3:
	.dword	0x3fe3eb8dc44206e3              # double 0.62250412303566482
	.dword	0x3fe59807a9b3c084              # double 0.67480834145500568
.LCPI0_4:
	.dword	0x3fe7d33dbad48055              # double 0.74453627100229858
	.dword	0x3feadbf3c99f0119              # double 0.83934964541552681
.LCPI0_5:
	.dword	0x3fef1f476cd7dae5              # double 0.97256823786196078
	.dword	0x3ff2b606a5cbb0c5              # double 1.1694399334328847
.LCPI0_6:
	.dword	0x3ff7bf23658f321a              # double 1.4841646163141662
	.dword	0x40007655e3e0a354              # double 2.0577810099534108
.LCPI0_7:
	.dword	0x400b42c833d72df0              # double 3.407608418468719
	.dword	0x40246148bea939ec              # double 10.190008123548033
.LCPI0_8:
	.dword	0x3fe013d19c61d971              # double 0.50241928618815568
	.dword	0x3fe0b84f03ebe15e              # double 0.52249861493968885
.LCPI0_9:
	.dword	0x3fe22467d1065a74              # double 0.56694403481635769
	.dword	0x3fe4b2c398bbe3c6              # double 0.64682178335999008
.LCPI0_10:
	.dword	0x3fe938900b7d4210              # double 0.7881546234512502
	.dword	0x3ff0f8892a4eced7              # double 1.0606776859903471
.LCPI0_11:
	.dword	0x3ffb8f24b0406142              # double 1.7224470982383342
	.dword	0x4014679380e538d4              # double 5.1011486186891553
.LCPI0_12:
	.dword	0x3fe0503ed17cba53              # double 0.50979557910415918
	.dword	0x3fe33e37a1e0173e              # double 0.60134488693504529
.LCPI0_13:
	.dword	0x3feccc9aefb18d57              # double 0.89997622313641557
	.dword	0x400480d9d073b426              # double 2.5629154477415055
.LCPI0_14:
	.dword	0x3fe1517a7bdb3895              # double 0.54119610014619701
	.dword	0x3ff4e7ae9144f0fb              # double 1.3065629648763764
	.text
	.globl	make_decode_tables
	.p2align	5
	.type	make_decode_tables,@function
make_decode_tables:                     # @make_decode_tables
# %bb.0:                                # %._crit_edge.4
	pcalau12i	$a1, %pc_hi20(pnts)
	addi.d	$a1, $a1, %pc_lo12(pnts)
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_1)
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI0_2)
	vst	$vr0, $a2, 0
	vst	$vr1, $a2, 16
	vst	$vr2, $a2, 32
	pcalau12i	$a3, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_3)
	pcalau12i	$a3, %pc_hi20(.LCPI0_4)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_4)
	pcalau12i	$a3, %pc_hi20(.LCPI0_5)
	vld	$vr2, $a3, %pc_lo12(.LCPI0_5)
	pcalau12i	$a3, %pc_hi20(.LCPI0_6)
	vld	$vr3, $a3, %pc_lo12(.LCPI0_6)
	vst	$vr0, $a2, 48
	vst	$vr1, $a2, 64
	vst	$vr2, $a2, 80
	vst	$vr3, $a2, 96
	pcalau12i	$a3, %pc_hi20(.LCPI0_7)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_7)
	ld.d	$a3, $a1, 8
	pcalau12i	$a4, %pc_hi20(.LCPI0_8)
	vld	$vr1, $a4, %pc_lo12(.LCPI0_8)
	pcalau12i	$a4, %pc_hi20(.LCPI0_9)
	vld	$vr2, $a4, %pc_lo12(.LCPI0_9)
	pcalau12i	$a4, %pc_hi20(.LCPI0_10)
	vld	$vr3, $a4, %pc_lo12(.LCPI0_10)
	vst	$vr0, $a2, 112
	vst	$vr1, $a3, 0
	vst	$vr2, $a3, 16
	vst	$vr3, $a3, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_11)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_11)
	ld.d	$a2, $a1, 16
	pcalau12i	$a4, %pc_hi20(.LCPI0_12)
	vld	$vr1, $a4, %pc_lo12(.LCPI0_12)
	pcalau12i	$a4, %pc_hi20(.LCPI0_13)
	vld	$vr2, $a4, %pc_lo12(.LCPI0_13)
	pcalau12i	$a4, %pc_hi20(.LCPI0_14)
	vld	$vr3, $a4, %pc_lo12(.LCPI0_14)
	ld.d	$a4, $a1, 24
	vst	$vr0, $a3, 48
	vst	$vr1, $a2, 0
	vst	$vr2, $a2, 16
	vst	$vr3, $a4, 0
	ld.d	$a1, $a1, 32
	lu12i.w	$a2, 419827
	ori	$a2, $a2, 3020
	lu32i.d	$a2, 434334
	lu52i.d	$a2, $a2, 1022
	st.d	$a2, $a1, 0
	sub.d	$a0, $zero, $a0
	pcalau12i	$a1, %pc_hi20(decwin)
	addi.d	$a4, $a1, %pc_lo12(decwin)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 127
	pcalau12i	$a2, %pc_hi20(intwinbase)
	addi.d	$a5, $a2, %pc_lo12(intwinbase)
	move	$a6, $zero
	move	$a3, $zero
	move	$a7, $zero
	lu52i.d	$a2, $zero, 1007
	movgr2fr.d	$fa0, $a2
	lu12i.w	$a2, -2
	ori	$a2, $a2, 8
	ori	$t0, $zero, 2048
	move	$t1, $a4
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	andi	$t1, $a7, 31
	addi.d	$t1, $t1, -31
	sltui	$t1, $t1, 1
	add.d	$t2, $a3, $a2
	masknez	$a3, $a3, $t1
	maskeqz	$t1, $t2, $t1
	or	$a3, $t1, $a3
	andi	$t1, $a7, 63
	addi.d	$t1, $t1, -63
	sltui	$t1, $t1, 1
	sub.d	$t2, $zero, $a0
	masknez	$a0, $a0, $t1
	maskeqz	$t1, $t2, $t1
	or	$a0, $t1, $a0
	addi.d	$a7, $a7, 1
	addi.d	$a3, $a3, 256
	addi.d	$a6, $a6, 8
	add.d	$t1, $a4, $a3
	beq	$a6, $t0, .LBB0_4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	blt	$a1, $a3, .LBB0_1
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	ldx.d	$t2, $a5, $a6
	movgr2fr.d	$fa1, $t2
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a4, $a3
	fst.d	$fa1, $t1, 128
	b	.LBB0_1
.LBB0_4:                                # %.lr.ph65.preheader
	addi.d	$a4, $a5, 2047
	addi.d	$a4, $a4, 1
	ori	$a5, $zero, 256
	pcalau12i	$a6, %pc_hi20(decwin)
	addi.d	$a6, $a6, %pc_lo12(decwin)
	ori	$a7, $zero, 512
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	andi	$t0, $a5, 31
	addi.d	$t0, $t0, -31
	sltui	$t0, $t0, 1
	add.d	$t1, $a3, $a2
	masknez	$a3, $a3, $t0
	maskeqz	$t0, $t1, $t0
	or	$a3, $t0, $a3
	andi	$t0, $a5, 63
	addi.d	$t0, $t0, -63
	sltui	$t0, $t0, 1
	sub.d	$t1, $zero, $a0
	masknez	$a0, $a0, $t0
	maskeqz	$t0, $t1, $t0
	or	$a0, $t0, $a0
	addi.w	$a5, $a5, 1
	addi.d	$a3, $a3, 256
	addi.d	$a4, $a4, -8
	beq	$a5, $a7, .LBB0_8
.LBB0_6:                                # %.lr.ph65
                                        # =>This Inner Loop Header: Depth=1
	blt	$a1, $a3, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t0, $a4, 0
	add.d	$t1, $a6, $a3
	movgr2fr.d	$fa1, $t0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a6, $a3
	fst.d	$fa1, $t1, 128
	b	.LBB0_5
.LBB0_8:                                # %._crit_edge66
	ret
.Lfunc_end0:
	.size	make_decode_tables, .Lfunc_end0-make_decode_tables
                                        # -- End function
	.type	cos64,@object                   # @cos64
	.local	cos64
	.comm	cos64,128,8
	.type	cos32,@object                   # @cos32
	.local	cos32
	.comm	cos32,64,8
	.type	cos16,@object                   # @cos16
	.local	cos16
	.comm	cos16,32,8
	.type	cos8,@object                    # @cos8
	.local	cos8
	.comm	cos8,16,8
	.type	cos4,@object                    # @cos4
	.local	cos4
	.comm	cos4,8,8
	.type	pnts,@object                    # @pnts
	.data
	.globl	pnts
	.p2align	3, 0x0
pnts:
	.dword	cos64
	.dword	cos32
	.dword	cos16
	.dword	cos8
	.dword	cos4
	.size	pnts, 40

	.type	decwin,@object                  # @decwin
	.bss
	.globl	decwin
	.p2align	3, 0x0
decwin:
	.space	4352
	.size	decwin, 4352

	.type	intwinbase,@object              # @intwinbase
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
intwinbase:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-2                              # 0xfffffffffffffffe
	.dword	-2                              # 0xfffffffffffffffe
	.dword	-2                              # 0xfffffffffffffffe
	.dword	-2                              # 0xfffffffffffffffe
	.dword	-3                              # 0xfffffffffffffffd
	.dword	-3                              # 0xfffffffffffffffd
	.dword	-4                              # 0xfffffffffffffffc
	.dword	-4                              # 0xfffffffffffffffc
	.dword	-5                              # 0xfffffffffffffffb
	.dword	-5                              # 0xfffffffffffffffb
	.dword	-6                              # 0xfffffffffffffffa
	.dword	-7                              # 0xfffffffffffffff9
	.dword	-7                              # 0xfffffffffffffff9
	.dword	-8                              # 0xfffffffffffffff8
	.dword	-9                              # 0xfffffffffffffff7
	.dword	-10                             # 0xfffffffffffffff6
	.dword	-11                             # 0xfffffffffffffff5
	.dword	-13                             # 0xfffffffffffffff3
	.dword	-14                             # 0xfffffffffffffff2
	.dword	-16                             # 0xfffffffffffffff0
	.dword	-17                             # 0xffffffffffffffef
	.dword	-19                             # 0xffffffffffffffed
	.dword	-21                             # 0xffffffffffffffeb
	.dword	-24                             # 0xffffffffffffffe8
	.dword	-26                             # 0xffffffffffffffe6
	.dword	-29                             # 0xffffffffffffffe3
	.dword	-31                             # 0xffffffffffffffe1
	.dword	-35                             # 0xffffffffffffffdd
	.dword	-38                             # 0xffffffffffffffda
	.dword	-41                             # 0xffffffffffffffd7
	.dword	-45                             # 0xffffffffffffffd3
	.dword	-49                             # 0xffffffffffffffcf
	.dword	-53                             # 0xffffffffffffffcb
	.dword	-58                             # 0xffffffffffffffc6
	.dword	-63                             # 0xffffffffffffffc1
	.dword	-68                             # 0xffffffffffffffbc
	.dword	-73                             # 0xffffffffffffffb7
	.dword	-79                             # 0xffffffffffffffb1
	.dword	-85                             # 0xffffffffffffffab
	.dword	-91                             # 0xffffffffffffffa5
	.dword	-97                             # 0xffffffffffffff9f
	.dword	-104                            # 0xffffffffffffff98
	.dword	-111                            # 0xffffffffffffff91
	.dword	-117                            # 0xffffffffffffff8b
	.dword	-125                            # 0xffffffffffffff83
	.dword	-132                            # 0xffffffffffffff7c
	.dword	-139                            # 0xffffffffffffff75
	.dword	-147                            # 0xffffffffffffff6d
	.dword	-154                            # 0xffffffffffffff66
	.dword	-161                            # 0xffffffffffffff5f
	.dword	-169                            # 0xffffffffffffff57
	.dword	-176                            # 0xffffffffffffff50
	.dword	-183                            # 0xffffffffffffff49
	.dword	-190                            # 0xffffffffffffff42
	.dword	-196                            # 0xffffffffffffff3c
	.dword	-202                            # 0xffffffffffffff36
	.dword	-208                            # 0xffffffffffffff30
	.dword	-213                            # 0xffffffffffffff2b
	.dword	-218                            # 0xffffffffffffff26
	.dword	-222                            # 0xffffffffffffff22
	.dword	-225                            # 0xffffffffffffff1f
	.dword	-227                            # 0xffffffffffffff1d
	.dword	-228                            # 0xffffffffffffff1c
	.dword	-228                            # 0xffffffffffffff1c
	.dword	-227                            # 0xffffffffffffff1d
	.dword	-224                            # 0xffffffffffffff20
	.dword	-221                            # 0xffffffffffffff23
	.dword	-215                            # 0xffffffffffffff29
	.dword	-208                            # 0xffffffffffffff30
	.dword	-200                            # 0xffffffffffffff38
	.dword	-189                            # 0xffffffffffffff43
	.dword	-177                            # 0xffffffffffffff4f
	.dword	-163                            # 0xffffffffffffff5d
	.dword	-146                            # 0xffffffffffffff6e
	.dword	-127                            # 0xffffffffffffff81
	.dword	-106                            # 0xffffffffffffff96
	.dword	-83                             # 0xffffffffffffffad
	.dword	-57                             # 0xffffffffffffffc7
	.dword	-29                             # 0xffffffffffffffe3
	.dword	2                               # 0x2
	.dword	36                              # 0x24
	.dword	72                              # 0x48
	.dword	111                             # 0x6f
	.dword	153                             # 0x99
	.dword	197                             # 0xc5
	.dword	244                             # 0xf4
	.dword	294                             # 0x126
	.dword	347                             # 0x15b
	.dword	401                             # 0x191
	.dword	459                             # 0x1cb
	.dword	519                             # 0x207
	.dword	581                             # 0x245
	.dword	645                             # 0x285
	.dword	711                             # 0x2c7
	.dword	779                             # 0x30b
	.dword	848                             # 0x350
	.dword	919                             # 0x397
	.dword	991                             # 0x3df
	.dword	1064                            # 0x428
	.dword	1137                            # 0x471
	.dword	1210                            # 0x4ba
	.dword	1283                            # 0x503
	.dword	1356                            # 0x54c
	.dword	1428                            # 0x594
	.dword	1498                            # 0x5da
	.dword	1567                            # 0x61f
	.dword	1634                            # 0x662
	.dword	1698                            # 0x6a2
	.dword	1759                            # 0x6df
	.dword	1817                            # 0x719
	.dword	1870                            # 0x74e
	.dword	1919                            # 0x77f
	.dword	1962                            # 0x7aa
	.dword	2001                            # 0x7d1
	.dword	2032                            # 0x7f0
	.dword	2057                            # 0x809
	.dword	2075                            # 0x81b
	.dword	2085                            # 0x825
	.dword	2087                            # 0x827
	.dword	2080                            # 0x820
	.dword	2063                            # 0x80f
	.dword	2037                            # 0x7f5
	.dword	2000                            # 0x7d0
	.dword	1952                            # 0x7a0
	.dword	1893                            # 0x765
	.dword	1822                            # 0x71e
	.dword	1739                            # 0x6cb
	.dword	1644                            # 0x66c
	.dword	1535                            # 0x5ff
	.dword	1414                            # 0x586
	.dword	1280                            # 0x500
	.dword	1131                            # 0x46b
	.dword	970                             # 0x3ca
	.dword	794                             # 0x31a
	.dword	605                             # 0x25d
	.dword	402                             # 0x192
	.dword	185                             # 0xb9
	.dword	-45                             # 0xffffffffffffffd3
	.dword	-288                            # 0xfffffffffffffee0
	.dword	-545                            # 0xfffffffffffffddf
	.dword	-814                            # 0xfffffffffffffcd2
	.dword	-1095                           # 0xfffffffffffffbb9
	.dword	-1388                           # 0xfffffffffffffa94
	.dword	-1692                           # 0xfffffffffffff964
	.dword	-2006                           # 0xfffffffffffff82a
	.dword	-2330                           # 0xfffffffffffff6e6
	.dword	-2663                           # 0xfffffffffffff599
	.dword	-3004                           # 0xfffffffffffff444
	.dword	-3351                           # 0xfffffffffffff2e9
	.dword	-3705                           # 0xfffffffffffff187
	.dword	-4063                           # 0xfffffffffffff021
	.dword	-4425                           # 0xffffffffffffeeb7
	.dword	-4788                           # 0xffffffffffffed4c
	.dword	-5153                           # 0xffffffffffffebdf
	.dword	-5517                           # 0xffffffffffffea73
	.dword	-5879                           # 0xffffffffffffe909
	.dword	-6237                           # 0xffffffffffffe7a3
	.dword	-6589                           # 0xffffffffffffe643
	.dword	-6935                           # 0xffffffffffffe4e9
	.dword	-7271                           # 0xffffffffffffe399
	.dword	-7597                           # 0xffffffffffffe253
	.dword	-7910                           # 0xffffffffffffe11a
	.dword	-8209                           # 0xffffffffffffdfef
	.dword	-8491                           # 0xffffffffffffded5
	.dword	-8755                           # 0xffffffffffffddcd
	.dword	-8998                           # 0xffffffffffffdcda
	.dword	-9219                           # 0xffffffffffffdbfd
	.dword	-9416                           # 0xffffffffffffdb38
	.dword	-9585                           # 0xffffffffffffda8f
	.dword	-9727                           # 0xffffffffffffda01
	.dword	-9838                           # 0xffffffffffffd992
	.dword	-9916                           # 0xffffffffffffd944
	.dword	-9959                           # 0xffffffffffffd919
	.dword	-9966                           # 0xffffffffffffd912
	.dword	-9935                           # 0xffffffffffffd931
	.dword	-9863                           # 0xffffffffffffd979
	.dword	-9750                           # 0xffffffffffffd9ea
	.dword	-9592                           # 0xffffffffffffda88
	.dword	-9389                           # 0xffffffffffffdb53
	.dword	-9139                           # 0xffffffffffffdc4d
	.dword	-8840                           # 0xffffffffffffdd78
	.dword	-8492                           # 0xffffffffffffded4
	.dword	-8092                           # 0xffffffffffffe064
	.dword	-7640                           # 0xffffffffffffe228
	.dword	-7134                           # 0xffffffffffffe422
	.dword	-6574                           # 0xffffffffffffe652
	.dword	-5959                           # 0xffffffffffffe8b9
	.dword	-5288                           # 0xffffffffffffeb58
	.dword	-4561                           # 0xffffffffffffee2f
	.dword	-3776                           # 0xfffffffffffff140
	.dword	-2935                           # 0xfffffffffffff489
	.dword	-2037                           # 0xfffffffffffff80b
	.dword	-1082                           # 0xfffffffffffffbc6
	.dword	-70                             # 0xffffffffffffffba
	.dword	998                             # 0x3e6
	.dword	2122                            # 0x84a
	.dword	3300                            # 0xce4
	.dword	4533                            # 0x11b5
	.dword	5818                            # 0x16ba
	.dword	7154                            # 0x1bf2
	.dword	8540                            # 0x215c
	.dword	9975                            # 0x26f7
	.dword	11455                           # 0x2cbf
	.dword	12980                           # 0x32b4
	.dword	14548                           # 0x38d4
	.dword	16155                           # 0x3f1b
	.dword	17799                           # 0x4587
	.dword	19478                           # 0x4c16
	.dword	21189                           # 0x52c5
	.dword	22929                           # 0x5991
	.dword	24694                           # 0x6076
	.dword	26482                           # 0x6772
	.dword	28289                           # 0x6e81
	.dword	30112                           # 0x75a0
	.dword	31947                           # 0x7ccb
	.dword	33791                           # 0x83ff
	.dword	35640                           # 0x8b38
	.dword	37489                           # 0x9271
	.dword	39336                           # 0x99a8
	.dword	41176                           # 0xa0d8
	.dword	43006                           # 0xa7fe
	.dword	44821                           # 0xaf15
	.dword	46617                           # 0xb619
	.dword	48390                           # 0xbd06
	.dword	50137                           # 0xc3d9
	.dword	51853                           # 0xca8d
	.dword	53534                           # 0xd11e
	.dword	55178                           # 0xd78a
	.dword	56778                           # 0xddca
	.dword	58333                           # 0xe3dd
	.dword	59838                           # 0xe9be
	.dword	61289                           # 0xef69
	.dword	62684                           # 0xf4dc
	.dword	64019                           # 0xfa13
	.dword	65290                           # 0xff0a
	.dword	66494                           # 0x103be
	.dword	67629                           # 0x1082d
	.dword	68692                           # 0x10c54
	.dword	69679                           # 0x1102f
	.dword	70590                           # 0x113be
	.dword	71420                           # 0x116fc
	.dword	72169                           # 0x119e9
	.dword	72835                           # 0x11c83
	.dword	73415                           # 0x11ec7
	.dword	73908                           # 0x120b4
	.dword	74313                           # 0x12249
	.dword	74630                           # 0x12386
	.dword	74856                           # 0x12468
	.dword	74992                           # 0x124f0
	.dword	75038                           # 0x1251e
	.size	intwinbase, 2056

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cos64
	.addrsig_sym cos32
	.addrsig_sym cos16
	.addrsig_sym cos8
	.addrsig_sym cos4
