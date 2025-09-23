	.file	"gsm_decode.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function gsm_decode
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	18                              # 0x12
	.byte	3                               # 0x3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_2:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_3:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	18                              # 0x12
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	23                              # 0x17
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_4:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	3                               # 0x3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_5:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_6:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_7:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_8:
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.text
	.globl	gsm_decode
	.p2align	5
	.type	gsm_decode,@function
gsm_decode:                             # @gsm_decode
# %bb.0:
	ld.bu	$a3, $a1, 0
	andi	$a4, $a3, 240
	ori	$a5, $zero, 208
	bne	$a4, $a5, .LBB0_2
# %bb.1:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	move	$a7, $a2
	ld.bu	$a2, $a1, 1
	srli.d	$a4, $a2, 6
	bstrins.d	$a4, $a3, 5, 2
	st.h	$a4, $sp, 152
	ld.bu	$a3, $a1, 2
	andi	$a2, $a2, 63
	ld.bu	$a4, $a1, 3
	st.h	$a2, $sp, 154
	srli.d	$a2, $a3, 3
	st.h	$a2, $sp, 156
	srli.d	$a2, $a4, 6
	bstrins.d	$a2, $a3, 4, 2
	ld.bu	$a3, $a1, 4
	st.h	$a2, $sp, 158
	bstrpick.d	$a2, $a4, 5, 2
	st.h	$a2, $sp, 160
	srli.d	$a2, $a3, 6
	bstrins.d	$a2, $a4, 3, 2
	st.h	$a2, $sp, 162
	bstrpick.d	$a2, $a3, 5, 3
	st.h	$a2, $sp, 164
	ld.bu	$a2, $a1, 5
	andi	$a3, $a3, 7
	ld.bu	$a4, $a1, 6
	st.h	$a3, $sp, 166
	srli.d	$a3, $a2, 1
	st.h	$a3, $sp, 144
	srli.d	$a3, $a4, 7
	bstrins.d	$a3, $a2, 1, 1
	ld.bu	$a2, $a1, 7
	st.h	$a3, $sp, 128
	bstrpick.d	$a3, $a4, 6, 5
	st.h	$a3, $sp, 136
	srli.d	$a3, $a2, 7
	bstrins.d	$a3, $a4, 5, 1
	st.h	$a3, $sp, 120
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $a2, 1
	vrepli.h	$vr1, 260
	ld.h	$a3, $a1, 8
	vsrl.b	$vr0, $vr0, $vr1
	vandi.b	$vr4, $vr0, 7
	vrepli.b	$vr3, 7
	vinsgr2vr.h	$vr0, $a3, 0
	vshuf4i.b	$vr1, $vr0, 80
	vpickve2gr.b	$a3, $vr0, 0
	bstrpick.d	$a3, $a3, 7, 6
	bstrins.d	$a3, $a2, 2, 2
	lu12i.w	$a2, 8192
	ori	$a2, $a2, 3
	vreplgr2vr.w	$vr2, $a2
	vsrl.b	$vr5, $vr1, $vr2
	vandi.b	$vr6, $vr5, 7
	lu12i.w	$a2, 28752
	ori	$a2, $a2, 1799
	vreplgr2vr.w	$vr1, $a2
	vsrl.b	$vr7, $vr5, $vr1
	vpickve2gr.b	$a2, $vr0, 1
	vinsgr2vr.b	$vr4, $a3, 2
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr5, $a3, %pc_lo12(.LCPI0_1)
	ld.bu	$a3, $a1, 12
	vshuf.b	$vr6, $vr7, $vr6, $vr0
	ld.bu	$a4, $a1, 13
	vshuf.b	$vr6, $vr6, $vr4, $vr5
	srli.d	$a5, $a3, 1
	st.h	$a5, $sp, 146
	srli.d	$a5, $a4, 7
	bstrins.d	$a5, $a3, 1, 1
	st.h	$a5, $sp, 130
	ld.h	$a3, $a1, 10
	ld.bu	$a5, $a1, 10
	bstrpick.d	$a6, $a4, 6, 5
	st.h	$a6, $sp, 138
	vinsgr2vr.h	$vr7, $a3, 0
	srli.d	$a3, $a5, 7
	bstrins.d	$a3, $a2, 2, 1
	vinsgr2vr.b	$vr6, $a3, 7
	vrepli.b	$vr4, 0
	vilvl.b	$vr6, $vr4, $vr6
	vst	$vr6, $sp, 16
	ld.h	$a2, $a1, 14
	ld.bu	$a3, $a1, 14
	slli.d	$a5, $a5, 2
	andi	$a5, $a5, 4
	vinsgr2vr.h	$vr6, $a2, 0
	srli.d	$a2, $a3, 7
	bstrins.d	$a2, $a4, 5, 1
	pcalau12i	$a4, %pc_hi20(.LCPI0_2)
	vld	$vr8, $a4, %pc_lo12(.LCPI0_2)
	st.h	$a2, $sp, 122
	slli.d	$a2, $a3, 2
	andi	$a2, $a2, 4
	vshuf.b	$vr6, $vr6, $vr7, $vr8
	lu12i.w	$a3, 12384
	ori	$a3, $a3, 260
	bstrins.d	$a3, $a3, 58, 40
	vreplgr2vr.d	$vr7, $a3
	vsrl.b	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr3, 0
	vinsgr2vr.b	$vr7, $a5, 2
	vinsgr2vr.b	$vr7, $a2, 7
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	vld	$vr8, $a2, %pc_lo12(.LCPI0_3)
	vandi.b	$vr9, $vr6, 7
	vor.v	$vr6, $vr6, $vr7
	ld.h	$a2, $a1, 15
	vshuf.b	$vr6, $vr6, $vr9, $vr8
	vilvl.b	$vr6, $vr4, $vr6
	vst	$vr6, $sp, 32
	vinsgr2vr.h	$vr6, $a2, 0
	vshuf4i.b	$vr6, $vr6, 80
	vsrl.b	$vr6, $vr6, $vr2
	ld.h	$a2, $a1, 17
	vandi.b	$vr7, $vr6, 7
	ld.h	$a3, $a1, 16
	vsrl.b	$vr6, $vr6, $vr1
	vinsgr2vr.h	$vr8, $a2, 0
	vshuf4i.b	$vr9, $vr8, 64
	vinsgr2vr.h	$vr10, $a3, 0
	ori	$a2, $zero, 513
	vreplgr2vr.h	$vr11, $a2
	vsll.b	$vr10, $vr10, $vr11
	ori	$a2, $zero, 1030
	vreplgr2vr.h	$vr11, $a2
	vand.v	$vr10, $vr10, $vr11
	lu12i.w	$a2, 24592
	ori	$a2, $a2, 1031
	vreplgr2vr.w	$vr11, $a2
	vsrl.b	$vr9, $vr9, $vr11
	vshuf4i.b	$vr10, $vr10, 64
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	vld	$vr11, $a2, %pc_lo12(.LCPI0_4)
	vor.v	$vr10, $vr9, $vr10
	vandi.b	$vr9, $vr9, 7
	vshuf.b	$vr6, $vr6, $vr7, $vr0
	vshuf.b	$vr7, $vr9, $vr10, $vr11
	vpackev.w	$vr6, $vr7, $vr6
	vilvl.b	$vr6, $vr4, $vr6
	vst	$vr6, $sp, 48
	vreplvei.b	$vr6, $vr8, 1
	vrepli.h	$vr7, 3
	ld.bu	$a2, $a1, 19
	vsrl.b	$vr6, $vr6, $vr7
	ld.bu	$a3, $a1, 20
	vandi.b	$vr6, $vr6, 7
	srli.d	$a4, $a2, 1
	st.h	$a4, $sp, 148
	srli.d	$a4, $a3, 7
	bstrins.d	$a4, $a2, 1, 1
	st.h	$a4, $sp, 132
	ld.h	$a2, $a1, 21
	bstrpick.d	$a4, $a3, 6, 5
	ld.bu	$a5, $a1, 21
	st.h	$a4, $sp, 140
	vinsgr2vr.h	$vr7, $a2, 0
	vshuf4i.b	$vr7, $vr7, 84
	srli.d	$a2, $a5, 7
	bstrins.d	$a2, $a3, 5, 1
	st.h	$a2, $sp, 124
	bstrpick.d	$a2, $a5, 6, 4
	slli.d	$a3, $a5, 2
	andi	$a3, $a3, 4
	lu12i.w	$a4, 48
	ori	$a4, $a4, 1537
	vreplgr2vr.w	$vr8, $a4
	vsrl.b	$vr7, $vr7, $vr8
	vori.b	$vr8, $vr3, 0
	vinsgr2vr.b	$vr8, $a3, 1
	vandi.b	$vr9, $vr7, 7
	pcalau12i	$a3, %pc_hi20(.LCPI0_5)
	vld	$vr10, $a3, %pc_lo12(.LCPI0_5)
	vor.v	$vr7, $vr7, $vr8
	vinsgr2vr.b	$vr6, $a2, 2
	ld.bu	$a2, $a1, 26
	vshuf.b	$vr7, $vr7, $vr9, $vr10
	ld.bu	$a3, $a1, 27
	vshuf.b	$vr5, $vr7, $vr6, $vr5
	srli.d	$a4, $a2, 1
	st.h	$a4, $sp, 150
	srli.d	$a4, $a3, 7
	bstrins.d	$a4, $a2, 1, 1
	ld.bu	$a2, $a1, 28
	st.h	$a4, $sp, 134
	bstrpick.d	$a4, $a3, 6, 5
	st.h	$a4, $sp, 142
	srli.d	$a4, $a2, 7
	ld.h	$a5, $a1, 23
	bstrins.d	$a4, $a3, 5, 1
	ld.bu	$a3, $a1, 23
	st.h	$a4, $sp, 126
	vinsgr2vr.h	$vr6, $a5, 0
	ld.b	$a4, $a1, 24
	srli.d	$a5, $a3, 5
	vinsgr2vr.b	$vr5, $a5, 7
	vilvl.b	$vr5, $vr4, $vr5
	vst	$vr5, $sp, 64
	slli.d	$a3, $a3, 1
	andi	$a3, $a3, 6
	slli.d	$a4, $a4, 2
	ld.b	$a5, $a1, 25
	pcalau12i	$a6, %pc_hi20(.LCPI0_6)
	vld	$vr5, $a6, %pc_lo12(.LCPI0_6)
	andi	$a4, $a4, 4
	vinsgr2vr.b	$vr6, $a5, 2
	vinsgr2vr.b	$vr6, $a2, 3
	vshuf.b	$vr5, $vr0, $vr6, $vr5
	lu12i.w	$a5, 4160
	ori	$a5, $a5, 1794
	lu32i.d	$a5, 774
	lu52i.d	$a5, $a5, 64
	vreplgr2vr.d	$vr6, $a5
	vsrl.b	$vr5, $vr5, $vr6
	vinsgr2vr.b	$vr3, $a3, 1
	pcalau12i	$a3, %pc_hi20(.LCPI0_7)
	vld	$vr6, $a3, %pc_lo12(.LCPI0_7)
	vinsgr2vr.b	$vr3, $a4, 4
	vandi.b	$vr7, $vr5, 7
	vor.v	$vr3, $vr5, $vr3
	vshuf.b	$vr3, $vr3, $vr7, $vr6
	ld.h	$a3, $a1, 29
	vilvl.b	$vr3, $vr4, $vr3
	vst	$vr3, $sp, 80
	bstrpick.d	$a4, $a2, 3, 1
	vinsgr2vr.h	$vr3, $a3, 0
	vshuf4i.b	$vr5, $vr3, 80
	vpickve2gr.b	$a3, $vr3, 0
	bstrpick.d	$a3, $a3, 7, 6
	bstrins.d	$a3, $a2, 2, 2
	vsrl.b	$vr2, $vr5, $vr2
	ld.bu	$a2, $a1, 31
	vandi.b	$vr5, $vr2, 7
	vsrl.b	$vr1, $vr2, $vr1
	vpickve2gr.b	$a5, $vr3, 1
	srli.d	$a6, $a2, 7
	bstrins.d	$a6, $a5, 2, 1
	pcalau12i	$a5, %pc_hi20(.LCPI0_8)
	vld	$vr2, $a5, %pc_lo12(.LCPI0_8)
	bstrpick.d	$a5, $a2, 6, 4
	vinsgr2vr.b	$vr3, $a4, 0
	vinsgr2vr.b	$vr3, $a3, 1
	vshuf.b	$vr0, $vr1, $vr5, $vr0
	vshuf.h	$vr2, $vr0, $vr3
	vinsgr2vr.b	$vr2, $a6, 6
	vinsgr2vr.b	$vr2, $a5, 7
	vilvl.b	$vr0, $vr4, $vr2
	ld.bu	$a1, $a1, 32
	vst	$vr0, $sp, 96
	bstrpick.d	$a3, $a2, 3, 1
	st.h	$a3, $sp, 112
	srli.d	$a3, $a1, 6
	bstrins.d	$a3, $a2, 2, 2
	st.h	$a3, $sp, 114
	bstrpick.d	$a2, $a1, 5, 3
	st.h	$a2, $sp, 116
	andi	$a1, $a1, 7
	st.h	$a1, $sp, 118
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 144
	addi.d	$a3, $sp, 128
	addi.d	$a4, $sp, 136
	addi.d	$a5, $sp, 120
	addi.d	$a6, $sp, 16
	pcaddu18i	$ra, %call36(Gsm_Decoder)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB0_2:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end0:
	.size	gsm_decode, .Lfunc_end0-gsm_decode
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
