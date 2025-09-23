	.file	"gsm_decode.c"
	.text
	.globl	gsm_decode                      # -- Begin function gsm_decode
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
	ld.bu	$a3, $a1, 8
	vrepli.h	$vr1, 260
	vsrl.b	$vr0, $vr0, $vr1
	vandi.b	$vr1, $vr0, 7
	srli.d	$a4, $a3, 6
	bstrins.d	$a4, $a2, 2, 2
	ld.bu	$a2, $a1, 9
	bstrpick.d	$a5, $a3, 5, 3
	ld.bu	$a6, $a1, 10
	andi	$a3, $a3, 7
	srli.d	$t0, $a2, 5
	bstrpick.d	$t1, $a2, 4, 2
	srli.d	$t2, $a6, 7
	bstrins.d	$t2, $a2, 2, 1
	vinsgr2vr.b	$vr1, $a4, 2
	vinsgr2vr.b	$vr1, $a5, 3
	vinsgr2vr.b	$vr1, $a3, 4
	vinsgr2vr.b	$vr1, $t0, 5
	vinsgr2vr.b	$vr1, $t1, 6
	vinsgr2vr.b	$vr1, $t2, 7
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 16
	bstrpick.d	$a2, $a6, 6, 4
	st.h	$a2, $sp, 32
	ld.bu	$a2, $a1, 12
	bstrpick.d	$a3, $a6, 3, 1
	ld.bu	$a4, $a1, 13
	st.h	$a3, $sp, 34
	srli.d	$a3, $a2, 1
	st.h	$a3, $sp, 146
	srli.d	$a3, $a4, 7
	bstrins.d	$a3, $a2, 1, 1
	st.h	$a3, $sp, 130
	ld.bu	$a2, $a1, 14
	bstrpick.d	$a3, $a4, 6, 5
	st.h	$a3, $sp, 138
	ld.bu	$a3, $a1, 11
	srli.d	$a5, $a2, 7
	bstrins.d	$a5, $a4, 5, 1
	st.h	$a5, $sp, 122
	srli.d	$a4, $a3, 6
	bstrins.d	$a4, $a6, 2, 2
	st.h	$a4, $sp, 36
	vinsgr2vr.b	$vr1, $a3, 0
	vinsgr2vr.b	$vr1, $a2, 1
	vshuf4i.b	$vr2, $vr1, 80
	lu12i.w	$a3, 4160
	ori	$a3, $a3, 3
	ld.bu	$a4, $a1, 15
	vreplgr2vr.w	$vr1, $a3
	vsrl.b	$vr2, $vr2, $vr1
	vandi.b	$vr2, $vr2, 7
	srli.d	$a3, $a4, 6
	ld.bu	$a5, $a1, 16
	bstrins.d	$a3, $a2, 2, 2
	bstrpick.d	$a2, $a4, 5, 3
	andi	$a4, $a4, 7
	srli.d	$a6, $a5, 5
	vinsgr2vr.b	$vr2, $a3, 4
	vinsgr2vr.b	$vr2, $a2, 5
	vinsgr2vr.b	$vr2, $a4, 6
	vinsgr2vr.b	$vr2, $a6, 7
	vilvl.b	$vr2, $vr0, $vr2
	ld.bu	$a2, $a1, 17
	vst	$vr2, $sp, 38
	bstrpick.d	$a3, $a5, 4, 2
	st.h	$a3, $sp, 54
	srli.d	$a3, $a2, 7
	bstrins.d	$a3, $a5, 2, 1
	st.h	$a3, $sp, 56
	bstrpick.d	$a3, $a2, 6, 4
	st.h	$a3, $sp, 58
	ld.bu	$a3, $a1, 19
	bstrpick.d	$a4, $a2, 3, 1
	ld.bu	$a5, $a1, 20
	st.h	$a4, $sp, 60
	srli.d	$a4, $a3, 1
	st.h	$a4, $sp, 148
	srli.d	$a4, $a5, 7
	bstrins.d	$a4, $a3, 1, 1
	st.h	$a4, $sp, 132
	ld.bu	$a3, $a1, 21
	bstrpick.d	$a4, $a5, 6, 5
	st.h	$a4, $sp, 140
	ld.bu	$a4, $a1, 18
	srli.d	$a6, $a3, 7
	bstrins.d	$a6, $a5, 5, 1
	st.h	$a6, $sp, 124
	srli.d	$a5, $a4, 6
	bstrins.d	$a5, $a2, 2, 2
	st.h	$a5, $sp, 62
	vinsgr2vr.b	$vr2, $a4, 0
	vinsgr2vr.b	$vr2, $a3, 1
	ld.bu	$a2, $a1, 22
	vshuf4i.b	$vr2, $vr2, 80
	vsrl.b	$vr2, $vr2, $vr1
	vandi.b	$vr2, $vr2, 7
	srli.d	$a4, $a2, 6
	ld.bu	$a5, $a1, 23
	bstrins.d	$a4, $a3, 2, 2
	bstrpick.d	$a3, $a2, 5, 3
	andi	$a2, $a2, 7
	srli.d	$a6, $a5, 5
	vinsgr2vr.b	$vr2, $a4, 4
	vinsgr2vr.b	$vr2, $a3, 5
	vinsgr2vr.b	$vr2, $a2, 6
	vinsgr2vr.b	$vr2, $a6, 7
	vilvl.b	$vr2, $vr0, $vr2
	ld.bu	$a2, $a1, 24
	vst	$vr2, $sp, 64
	bstrpick.d	$a3, $a5, 4, 2
	st.h	$a3, $sp, 80
	srli.d	$a3, $a2, 7
	bstrins.d	$a3, $a5, 2, 1
	st.h	$a3, $sp, 82
	bstrpick.d	$a3, $a2, 6, 4
	st.h	$a3, $sp, 84
	ld.bu	$a3, $a1, 26
	bstrpick.d	$a4, $a2, 3, 1
	ld.bu	$a5, $a1, 27
	st.h	$a4, $sp, 86
	srli.d	$a4, $a3, 1
	st.h	$a4, $sp, 150
	srli.d	$a4, $a5, 7
	bstrins.d	$a4, $a3, 1, 1
	st.h	$a4, $sp, 134
	ld.bu	$a3, $a1, 28
	bstrpick.d	$a4, $a5, 6, 5
	st.h	$a4, $sp, 142
	ld.bu	$a4, $a1, 25
	srli.d	$a6, $a3, 7
	bstrins.d	$a6, $a5, 5, 1
	st.h	$a6, $sp, 126
	srli.d	$a5, $a4, 6
	bstrins.d	$a5, $a2, 2, 2
	st.h	$a5, $sp, 88
	vinsgr2vr.b	$vr2, $a4, 0
	vinsgr2vr.b	$vr2, $a3, 1
	ld.bu	$a2, $a1, 29
	vshuf4i.b	$vr2, $vr2, 80
	vsrl.b	$vr1, $vr2, $vr1
	vandi.b	$vr1, $vr1, 7
	srli.d	$a4, $a2, 6
	ld.bu	$a5, $a1, 30
	bstrins.d	$a4, $a3, 2, 2
	bstrpick.d	$a3, $a2, 5, 3
	andi	$a2, $a2, 7
	srli.d	$a6, $a5, 5
	vinsgr2vr.b	$vr1, $a4, 4
	vinsgr2vr.b	$vr1, $a3, 5
	vinsgr2vr.b	$vr1, $a2, 6
	vinsgr2vr.b	$vr1, $a6, 7
	vilvl.b	$vr0, $vr0, $vr1
	ld.bu	$a2, $a1, 31
	vst	$vr0, $sp, 90
	bstrpick.d	$a3, $a5, 4, 2
	st.h	$a3, $sp, 106
	srli.d	$a3, $a2, 7
	bstrins.d	$a3, $a5, 2, 1
	st.h	$a3, $sp, 108
	bstrpick.d	$a3, $a2, 6, 4
	ld.bu	$a1, $a1, 32
	st.h	$a3, $sp, 110
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
