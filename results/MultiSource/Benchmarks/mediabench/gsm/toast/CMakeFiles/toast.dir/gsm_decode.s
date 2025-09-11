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
.LCPI0_2:
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
.LCPI0_3:
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
.LCPI0_4:
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
	ld.h	$a2, $a1, 7
	st.h	$a3, $sp, 128
	bstrpick.d	$a3, $a4, 6, 5
	st.h	$a3, $sp, 136
	vinsgr2vr.h	$vr1, $a2, 0
	vshuf4i.b	$vr2, $vr1, 80
	vpickve2gr.b	$a2, $vr1, 0
	bstrpick.d	$a3, $a2, 7, 7
	bstrins.d	$a3, $a4, 5, 1
	st.h	$a3, $sp, 120
	slli.d	$a2, $a2, 2
	andi	$a3, $a2, 4
	lu12i.w	$a2, 12384
	ori	$a2, $a2, 260
	vreplgr2vr.w	$vr3, $a2
	vrepli.b	$vr0, 7
	vsrl.b	$vr2, $vr2, $vr3
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.b	$vr3, $a3, 2
	vandi.b	$vr4, $vr2, 7
	vor.v	$vr3, $vr2, $vr3
	vpickve2gr.b	$a3, $vr1, 1
	ld.bu	$a4, $a1, 9
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	vld	$vr2, $a5, %pc_lo12(.LCPI0_0)
	andi	$a3, $a3, 7
	srli.d	$a5, $a4, 5
	bstrpick.d	$a6, $a4, 4, 2
	vshuf.b	$vr3, $vr3, $vr4, $vr2
	vinsgr2vr.b	$vr3, $a3, 4
	ld.bu	$a3, $a1, 12
	vinsgr2vr.b	$vr3, $a5, 5
	ld.bu	$a5, $a1, 13
	vinsgr2vr.b	$vr3, $a6, 6
	srli.d	$a6, $a3, 1
	st.h	$a6, $sp, 146
	srli.d	$a6, $a5, 7
	bstrins.d	$a6, $a3, 1, 1
	st.h	$a6, $sp, 130
	ld.h	$a3, $a1, 10
	ld.bu	$a6, $a1, 10
	bstrpick.d	$t0, $a5, 6, 5
	st.h	$t0, $sp, 138
	vinsgr2vr.h	$vr4, $a3, 0
	srli.d	$a3, $a6, 7
	bstrins.d	$a3, $a4, 2, 1
	vinsgr2vr.b	$vr3, $a3, 7
	vrepli.b	$vr1, 0
	vilvl.b	$vr3, $vr1, $vr3
	vst	$vr3, $sp, 16
	ld.h	$a3, $a1, 14
	ld.bu	$a4, $a1, 14
	slli.d	$a6, $a6, 2
	andi	$a6, $a6, 4
	vinsgr2vr.h	$vr3, $a3, 0
	srli.d	$a3, $a4, 7
	bstrins.d	$a3, $a5, 5, 1
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	vld	$vr5, $a5, %pc_lo12(.LCPI0_1)
	st.h	$a3, $sp, 122
	slli.d	$a3, $a4, 2
	andi	$a3, $a3, 4
	vshuf.b	$vr3, $vr3, $vr4, $vr5
	bstrins.d	$a2, $a2, 58, 40
	vreplgr2vr.d	$vr4, $a2
	vsrl.b	$vr3, $vr3, $vr4
	vori.b	$vr4, $vr0, 0
	vinsgr2vr.b	$vr4, $a6, 2
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr5, $a2, %pc_lo12(.LCPI0_2)
	vinsgr2vr.b	$vr4, $a3, 7
	vor.v	$vr4, $vr3, $vr4
	vandi.b	$vr3, $vr3, 7
	vshuf.b	$vr3, $vr4, $vr3, $vr5
	ld.h	$a2, $a1, 15
	vilvl.b	$vr3, $vr1, $vr3
	vst	$vr3, $sp, 32
	ld.b	$a3, $a1, 16
	vinsgr2vr.h	$vr3, $a2, 0
	vshuf4i.b	$vr3, $vr3, 80
	lu12i.w	$a2, 8192
	ori	$a2, $a2, 3
	vreplgr2vr.w	$vr4, $a2
	ld.bu	$a2, $a1, 17
	vsrl.b	$vr3, $vr3, $vr4
	vandi.b	$vr4, $vr3, 7
	vsrli.b	$vr3, $vr3, 5
	srli.d	$a4, $a2, 7
	bstrins.d	$a4, $a3, 2, 1
	bstrpick.d	$a3, $a2, 6, 4
	bstrpick.d	$a5, $a2, 3, 1
	vshuf.b	$vr2, $vr3, $vr4, $vr2
	vinsgr2vr.b	$vr2, $a4, 4
	ld.bu	$a4, $a1, 19
	vinsgr2vr.b	$vr2, $a3, 5
	ld.bu	$a3, $a1, 20
	vinsgr2vr.b	$vr2, $a5, 6
	srli.d	$a5, $a4, 1
	st.h	$a5, $sp, 148
	srli.d	$a5, $a3, 7
	bstrins.d	$a5, $a4, 1, 1
	st.h	$a5, $sp, 132
	ld.bu	$a4, $a1, 21
	bstrpick.d	$a5, $a3, 6, 5
	st.h	$a5, $sp, 140
	ld.bu	$a5, $a1, 18
	srli.d	$a6, $a4, 7
	bstrins.d	$a6, $a3, 5, 1
	st.h	$a6, $sp, 124
	srli.d	$a3, $a5, 6
	bstrins.d	$a3, $a2, 2, 2
	vinsgr2vr.b	$vr2, $a3, 7
	vilvl.b	$vr2, $vr1, $vr2
	vst	$vr2, $sp, 48
	vinsgr2vr.b	$vr2, $a5, 0
	vinsgr2vr.b	$vr2, $a4, 1
	vshuf4i.b	$vr2, $vr2, 80
	lu12i.w	$a2, 4160
	ori	$a3, $a2, 3
	ld.bu	$a5, $a1, 22
	vreplgr2vr.w	$vr3, $a3
	vsrl.b	$vr2, $vr2, $vr3
	vandi.b	$vr2, $vr2, 7
	srli.d	$a3, $a5, 6
	bstrins.d	$a3, $a4, 2, 2
	bstrpick.d	$a4, $a5, 5, 3
	andi	$a5, $a5, 7
	vinsgr2vr.b	$vr2, $a3, 4
	ld.bu	$a3, $a1, 26
	vinsgr2vr.b	$vr2, $a4, 5
	ld.bu	$a4, $a1, 27
	vinsgr2vr.b	$vr2, $a5, 6
	srli.d	$a5, $a3, 1
	st.h	$a5, $sp, 150
	srli.d	$a5, $a4, 7
	bstrins.d	$a5, $a3, 1, 1
	ld.bu	$a3, $a1, 28
	st.h	$a5, $sp, 134
	bstrpick.d	$a5, $a4, 6, 5
	st.h	$a5, $sp, 142
	srli.d	$a5, $a3, 7
	ld.h	$a6, $a1, 23
	bstrins.d	$a5, $a4, 5, 1
	ld.bu	$a4, $a1, 23
	st.h	$a5, $sp, 126
	vinsgr2vr.h	$vr3, $a6, 0
	ld.b	$a5, $a1, 24
	srli.d	$a6, $a4, 5
	vinsgr2vr.b	$vr2, $a6, 7
	vilvl.b	$vr2, $vr1, $vr2
	vst	$vr2, $sp, 64
	slli.d	$a4, $a4, 1
	andi	$a4, $a4, 6
	slli.d	$a5, $a5, 2
	ld.b	$a6, $a1, 25
	pcalau12i	$t0, %pc_hi20(.LCPI0_3)
	vld	$vr2, $t0, %pc_lo12(.LCPI0_3)
	andi	$a5, $a5, 4
	vinsgr2vr.b	$vr3, $a6, 2
	vinsgr2vr.b	$vr3, $a3, 3
	vshuf.b	$vr2, $vr0, $vr3, $vr2
	ori	$a2, $a2, 1794
	lu32i.d	$a2, 774
	lu52i.d	$a2, $a2, 64
	vreplgr2vr.d	$vr3, $a2
	vsrl.b	$vr2, $vr2, $vr3
	vinsgr2vr.b	$vr0, $a4, 1
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	vld	$vr3, $a2, %pc_lo12(.LCPI0_4)
	vinsgr2vr.b	$vr0, $a5, 4
	vandi.b	$vr4, $vr2, 7
	vor.v	$vr0, $vr2, $vr0
	vshuf.b	$vr0, $vr0, $vr4, $vr3
	ld.bu	$a2, $a1, 29
	vilvl.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	bstrpick.d	$a4, $a3, 3, 1
	srli.d	$a5, $a2, 6
	bstrins.d	$a5, $a3, 2, 2
	ld.bu	$a3, $a1, 30
	bstrpick.d	$a6, $a2, 5, 3
	ld.bu	$t0, $a1, 31
	andi	$a2, $a2, 7
	srli.d	$t1, $a3, 5
	bstrpick.d	$t2, $a3, 4, 2
	srli.d	$t3, $t0, 7
	bstrins.d	$t3, $a3, 2, 1
	bstrpick.d	$a3, $t0, 6, 4
	vinsgr2vr.b	$vr0, $a4, 0
	vinsgr2vr.b	$vr0, $a5, 1
	vinsgr2vr.b	$vr0, $a6, 2
	vinsgr2vr.b	$vr0, $a2, 3
	vinsgr2vr.b	$vr0, $t1, 4
	vinsgr2vr.b	$vr0, $t2, 5
	vinsgr2vr.b	$vr0, $t3, 6
	vinsgr2vr.b	$vr0, $a3, 7
	vilvl.b	$vr0, $vr1, $vr0
	ld.bu	$a1, $a1, 32
	vst	$vr0, $sp, 96
	bstrpick.d	$a2, $t0, 3, 1
	st.h	$a2, $sp, 112
	srli.d	$a2, $a1, 6
	bstrins.d	$a2, $t0, 2, 2
	st.h	$a2, $sp, 114
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
