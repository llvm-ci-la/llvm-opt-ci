	.file	"gsm_encode.c"
	.text
	.globl	gsm_encode                      # -- Begin function gsm_encode
	.p2align	5
	.type	gsm_encode,@function
gsm_encode:                             # @gsm_encode
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a2
	addi.d	$a2, $sp, 144
	addi.d	$a3, $sp, 136
	addi.d	$a4, $sp, 120
	addi.d	$a5, $sp, 128
	addi.d	$a6, $sp, 112
	addi.d	$a7, $sp, 8
	pcaddu18i	$ra, %call36(Gsm_Coder)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 144
	srli.d	$a1, $a0, 2
	ori	$a2, $zero, 13
	bstrins.d	$a1, $a2, 63, 4
	ld.hu	$a2, $sp, 146
	st.b	$a1, $fp, 0
	ld.h	$a1, $sp, 150
	ld.h	$a3, $sp, 148
	bstrins.d	$a2, $a0, 63, 6
	st.b	$a2, $fp, 1
	srli.d	$a0, $a1, 2
	bstrins.d	$a0, $a3, 63, 3
	ld.h	$a2, $sp, 152
	ld.h	$a3, $sp, 154
	st.b	$a0, $fp, 2
	slli.d	$a0, $a1, 6
	bstrins.d	$a0, $a2, 5, 2
	srli.d	$a1, $a3, 2
	bstrins.d	$a0, $a1, 1, 0
	ld.h	$a1, $sp, 156
	st.b	$a0, $fp, 3
	slli.d	$a0, $a3, 6
	ld.hu	$a2, $sp, 158
	bstrins.d	$a0, $a1, 5, 3
	ld.h	$a1, $sp, 120
	ld.h	$a3, $sp, 136
	bstrins.d	$a0, $a2, 2, 0
	st.b	$a0, $fp, 4
	srli.d	$a0, $a1, 1
	bstrins.d	$a0, $a3, 63, 1
	ld.h	$a2, $sp, 128
	ld.h	$a3, $sp, 112
	st.b	$a0, $fp, 5
	slli.d	$a0, $a1, 7
	bstrins.d	$a0, $a2, 6, 5
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 4, 0
	st.b	$a0, $fp, 6
	ld.h	$a0, $sp, 8
	ld.h	$a1, $sp, 10
	ld.h	$a2, $sp, 12
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 14
	ld.hu	$a1, $sp, 16
	st.b	$a3, $fp, 7
	slli.d	$a2, $a2, 6
	bstrins.d	$a2, $a0, 5, 3
	bstrins.d	$a2, $a1, 2, 0
	ld.h	$a0, $sp, 18
	ld.h	$a1, $sp, 20
	ld.h	$a3, $sp, 22
	st.b	$a2, $fp, 8
	slli.d	$a0, $a0, 5
	bstrins.d	$a0, $a1, 4, 2
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 1, 0
	st.b	$a0, $fp, 9
	ld.h	$a0, $sp, 24
	ld.h	$a1, $sp, 26
	ld.h	$a2, $sp, 28
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 30
	st.b	$a3, $fp, 10
	slli.d	$a1, $a2, 6
	ld.hu	$a2, $sp, 32
	bstrins.d	$a1, $a0, 5, 3
	ld.h	$a0, $sp, 122
	ld.h	$a3, $sp, 138
	bstrins.d	$a1, $a2, 2, 0
	st.b	$a1, $fp, 11
	srli.d	$a1, $a0, 1
	bstrins.d	$a1, $a3, 63, 1
	ld.h	$a2, $sp, 130
	ld.h	$a3, $sp, 114
	st.b	$a1, $fp, 12
	slli.d	$a0, $a0, 7
	bstrins.d	$a0, $a2, 6, 5
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 4, 0
	st.b	$a0, $fp, 13
	ld.h	$a0, $sp, 34
	ld.h	$a1, $sp, 36
	ld.h	$a2, $sp, 38
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 40
	ld.hu	$a1, $sp, 42
	st.b	$a3, $fp, 14
	slli.d	$a2, $a2, 6
	bstrins.d	$a2, $a0, 5, 3
	bstrins.d	$a2, $a1, 2, 0
	ld.h	$a0, $sp, 44
	ld.h	$a1, $sp, 46
	ld.h	$a3, $sp, 48
	st.b	$a2, $fp, 15
	slli.d	$a0, $a0, 5
	bstrins.d	$a0, $a1, 4, 2
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 1, 0
	st.b	$a0, $fp, 16
	ld.h	$a0, $sp, 50
	ld.h	$a1, $sp, 52
	ld.h	$a2, $sp, 54
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 56
	st.b	$a3, $fp, 17
	slli.d	$a1, $a2, 6
	ld.hu	$a2, $sp, 58
	bstrins.d	$a1, $a0, 5, 3
	ld.h	$a0, $sp, 124
	ld.h	$a3, $sp, 140
	bstrins.d	$a1, $a2, 2, 0
	st.b	$a1, $fp, 18
	srli.d	$a1, $a0, 1
	bstrins.d	$a1, $a3, 63, 1
	ld.h	$a2, $sp, 132
	ld.h	$a3, $sp, 116
	st.b	$a1, $fp, 19
	slli.d	$a0, $a0, 7
	bstrins.d	$a0, $a2, 6, 5
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 4, 0
	st.b	$a0, $fp, 20
	ld.h	$a0, $sp, 60
	ld.h	$a1, $sp, 62
	ld.h	$a2, $sp, 64
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 66
	ld.hu	$a1, $sp, 68
	st.b	$a3, $fp, 21
	slli.d	$a2, $a2, 6
	bstrins.d	$a2, $a0, 5, 3
	bstrins.d	$a2, $a1, 2, 0
	ld.h	$a0, $sp, 70
	ld.h	$a1, $sp, 72
	ld.h	$a3, $sp, 74
	st.b	$a2, $fp, 22
	slli.d	$a0, $a0, 5
	bstrins.d	$a0, $a1, 4, 2
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 1, 0
	st.b	$a0, $fp, 23
	ld.h	$a0, $sp, 76
	ld.h	$a1, $sp, 78
	ld.h	$a2, $sp, 80
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 82
	st.b	$a3, $fp, 24
	slli.d	$a1, $a2, 6
	ld.hu	$a2, $sp, 84
	bstrins.d	$a1, $a0, 5, 3
	ld.h	$a0, $sp, 126
	ld.h	$a3, $sp, 142
	bstrins.d	$a1, $a2, 2, 0
	st.b	$a1, $fp, 25
	srli.d	$a1, $a0, 1
	bstrins.d	$a1, $a3, 63, 1
	ld.h	$a2, $sp, 134
	ld.h	$a3, $sp, 118
	st.b	$a1, $fp, 26
	slli.d	$a0, $a0, 7
	bstrins.d	$a0, $a2, 6, 5
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 4, 0
	st.b	$a0, $fp, 27
	ld.h	$a0, $sp, 86
	ld.h	$a1, $sp, 88
	ld.h	$a2, $sp, 90
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 92
	ld.hu	$a1, $sp, 94
	st.b	$a3, $fp, 28
	slli.d	$a2, $a2, 6
	bstrins.d	$a2, $a0, 5, 3
	bstrins.d	$a2, $a1, 2, 0
	ld.h	$a0, $sp, 96
	ld.h	$a1, $sp, 98
	ld.h	$a3, $sp, 100
	st.b	$a2, $fp, 29
	slli.d	$a0, $a0, 5
	bstrins.d	$a0, $a1, 4, 2
	srli.d	$a1, $a3, 1
	bstrins.d	$a0, $a1, 1, 0
	st.b	$a0, $fp, 30
	ld.h	$a0, $sp, 102
	ld.h	$a1, $sp, 104
	ld.h	$a2, $sp, 106
	slli.d	$a3, $a3, 7
	bstrins.d	$a3, $a0, 6, 4
	bstrins.d	$a3, $a1, 3, 1
	srli.d	$a0, $a2, 2
	bstrins.d	$a3, $a0, 0, 0
	ld.h	$a0, $sp, 108
	ld.hu	$a1, $sp, 110
	st.b	$a3, $fp, 31
	slli.d	$a2, $a2, 6
	bstrins.d	$a2, $a0, 5, 3
	bstrins.d	$a2, $a1, 2, 0
	st.b	$a2, $fp, 32
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	gsm_encode, .Lfunc_end0-gsm_encode
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
