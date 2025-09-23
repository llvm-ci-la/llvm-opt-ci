	.file	"pr36034-2.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:
	pcalau12i	$a0, %pc_hi20(x)
	addi.d	$a0, $a0, %pc_lo12(x)
	xvld	$xr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(tmp)
	addi.d	$a1, $a1, %pc_lo12(tmp)
	vld	$vr1, $a0, 32
	xvst	$xr0, $a1, 0
	vst	$vr1, $a1, 32
	xvld	$xr0, $a0, 80
	vld	$vr1, $a0, 112
	xvld	$xr2, $a0, 160
	vld	$vr3, $a0, 192
	xvst	$xr0, $a1, 48
	vst	$vr1, $a1, 80
	xvst	$xr2, $a1, 96
	vst	$vr3, $a1, 128
	xvld	$xr0, $a0, 240
	vld	$vr1, $a0, 272
	xvld	$xr2, $a0, 320
	vld	$vr3, $a0, 352
	xvst	$xr0, $a1, 144
	vst	$vr1, $a1, 176
	xvst	$xr2, $a1, 192
	vst	$vr3, $a1, 224
	ret
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(test)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(tmp)
	addi.d	$a0, $a0, %pc_lo12(tmp)
	xvld	$xr0, $a0, 0
	xvld	$xr2, $a0, 32
	xvld	$xr3, $a0, 64
	xvld	$xr4, $a0, 96
	lu52i.d	$a1, $zero, -1025
	xvreplgr2vr.d	$xr1, $a1
	xvfcmp.ceq.d	$xr5, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr5, 0
	vinsgr2vr.b	$vr0, $a1, 0
	xvpickve2gr.d	$a1, $xr5, 1
	vinsgr2vr.b	$vr0, $a1, 1
	xvpickve2gr.d	$a1, $xr5, 2
	vinsgr2vr.b	$vr0, $a1, 2
	xvpickve2gr.d	$a1, $xr5, 3
	vinsgr2vr.b	$vr0, $a1, 3
	xvfcmp.ceq.d	$xr2, $xr2, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	vinsgr2vr.b	$vr0, $a1, 4
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.b	$vr0, $a1, 5
	xvpickve2gr.d	$a2, $xr2, 2
	vinsgr2vr.b	$vr0, $a2, 6
	xvpickve2gr.d	$a3, $xr2, 3
	vinsgr2vr.b	$vr0, $a3, 7
	xvfcmp.ceq.d	$xr2, $xr3, $xr1
	xvpickve2gr.d	$a4, $xr2, 0
	vinsgr2vr.b	$vr0, $a4, 8
	xvpickve2gr.d	$a4, $xr2, 1
	vinsgr2vr.b	$vr0, $a4, 9
	xvpickve2gr.d	$a4, $xr2, 2
	vinsgr2vr.b	$vr0, $a4, 10
	xvpickve2gr.d	$a4, $xr2, 3
	vinsgr2vr.b	$vr0, $a4, 11
	xvfcmp.ceq.d	$xr2, $xr4, $xr1
	xvpickve2gr.d	$a4, $xr2, 0
	vinsgr2vr.b	$vr0, $a4, 12
	xvpickve2gr.d	$a4, $xr2, 1
	vinsgr2vr.b	$vr0, $a4, 13
	xvpickve2gr.d	$a4, $xr2, 2
	vinsgr2vr.b	$vr0, $a4, 14
	xvld	$xr3, $a0, 128
	xvpickve2gr.d	$a4, $xr2, 3
	vinsgr2vr.b	$vr0, $a4, 15
	xvld	$xr2, $a0, 160
	xvfcmp.ceq.d	$xr3, $xr3, $xr1
	xvpickve2gr.d	$a4, $xr3, 0
	vinsgr2vr.h	$vr4, $a4, 0
	xvpickve2gr.d	$a4, $xr3, 1
	vinsgr2vr.h	$vr4, $a4, 1
	xvpickve2gr.d	$a4, $xr3, 2
	vinsgr2vr.h	$vr4, $a4, 2
	xvpickve2gr.d	$a4, $xr3, 3
	vinsgr2vr.h	$vr4, $a4, 3
	xvfcmp.ceq.d	$xr2, $xr2, $xr1
	xvpickve2gr.d	$a4, $xr2, 0
	vinsgr2vr.h	$vr4, $a4, 4
	xvpickve2gr.d	$a4, $xr2, 1
	vinsgr2vr.h	$vr4, $a4, 5
	xvpickve2gr.d	$a4, $xr2, 2
	xvld	$xr3, $a0, 192
	vinsgr2vr.h	$vr4, $a4, 6
	xvpickve2gr.d	$a4, $xr2, 3
	vinsgr2vr.h	$vr4, $a4, 7
	xvfcmp.ceq.d	$xr1, $xr3, $xr1
	xvpickve2gr.d	$a4, $xr1, 0
	vinsgr2vr.w	$vr2, $a4, 0
	xvpickve2gr.d	$a4, $xr1, 1
	vinsgr2vr.w	$vr2, $a4, 1
	xvpickve2gr.d	$a4, $xr1, 2
	vinsgr2vr.w	$vr2, $a4, 2
	xvpickve2gr.d	$a4, $xr1, 3
	vinsgr2vr.w	$vr2, $a4, 3
	vpickve2gr.b	$a4, $vr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	vpickve2gr.b	$a4, $vr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	vpickve2gr.b	$a4, $vr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	vpickve2gr.b	$a4, $vr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	vpickve2gr.b	$a4, $vr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	vinsgr2vr.h	$vr1, $a1, 5
	vinsgr2vr.h	$vr1, $a2, 6
	vinsgr2vr.h	$vr1, $a3, 7
	vor.v	$vr1, $vr1, $vr4
	vpickve2gr.h	$a1, $vr1, 4
	vinsgr2vr.b	$vr3, $a1, 4
	vpickve2gr.h	$a1, $vr1, 5
	vinsgr2vr.b	$vr3, $a1, 5
	vpickve2gr.h	$a1, $vr1, 6
	vinsgr2vr.b	$vr3, $a1, 6
	vpickve2gr.h	$a1, $vr1, 7
	vinsgr2vr.b	$vr3, $a1, 7
	vpickve2gr.h	$a1, $vr1, 3
	vpickve2gr.h	$a2, $vr1, 2
	vpickve2gr.h	$a3, $vr1, 1
	vpickve2gr.h	$a4, $vr1, 0
	vshuf4i.d	$vr3, $vr0, 12
	vinsgr2vr.w	$vr0, $a4, 0
	vinsgr2vr.w	$vr0, $a3, 1
	vinsgr2vr.w	$vr0, $a2, 2
	vinsgr2vr.w	$vr0, $a1, 3
	vor.v	$vr0, $vr0, $vr2
	vpickve2gr.w	$a1, $vr0, 0
	vinsgr2vr.b	$vr1, $a1, 0
	vpickve2gr.w	$a1, $vr0, 1
	vinsgr2vr.b	$vr1, $a1, 1
	vpickve2gr.w	$a1, $vr0, 2
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	vld	$vr2, $a2, %pc_lo12(.LCPI1_0)
	vinsgr2vr.b	$vr1, $a1, 2
	vpickve2gr.w	$a1, $vr0, 3
	vinsgr2vr.b	$vr1, $a1, 3
	vshuf.w	$vr2, $vr3, $vr1
	vslli.b	$vr0, $vr2, 7
	vmskltz.b	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	bnez	$a1, .LBB1_4
# %bb.1:                                # %.preheader
	fld.d	$fa0, $a0, 224
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_4
# %bb.2:                                # %.preheader
	fld.d	$fa0, $a0, 232
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_4
# %bb.3:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	x,@object                       # @x
	.data
	.globl	x
	.p2align	5, 0x0
x:
	.dword	0x4024000000000000              # double 10
	.dword	0x4026000000000000              # double 11
	.dword	0x4028000000000000              # double 12
	.dword	0x402a000000000000              # double 13
	.dword	0x402c000000000000              # double 14
	.dword	0x402e000000000000              # double 15
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x4035000000000000              # double 21
	.dword	0x4036000000000000              # double 22
	.dword	0x4037000000000000              # double 23
	.dword	0x4038000000000000              # double 24
	.dword	0x4039000000000000              # double 25
	.dword	0x403a000000000000              # double 26
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x4040000000000000              # double 32
	.dword	0x4040800000000000              # double 33
	.dword	0x4041000000000000              # double 34
	.dword	0x4041800000000000              # double 35
	.dword	0x4042000000000000              # double 36
	.dword	0x4042800000000000              # double 37
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x4045800000000000              # double 43
	.dword	0x4046000000000000              # double 44
	.dword	0x4046800000000000              # double 45
	.dword	0x4047000000000000              # double 46
	.dword	0x4047800000000000              # double 47
	.dword	0x4048000000000000              # double 48
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x404b000000000000              # double 54
	.dword	0x404b800000000000              # double 55
	.dword	0x404c000000000000              # double 56
	.dword	0x404c800000000000              # double 57
	.dword	0x404d000000000000              # double 58
	.dword	0x404d800000000000              # double 59
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.size	x, 400

	.type	tmp,@object                     # @tmp
	.bss
	.globl	tmp
	.p2align	7, 0x0
tmp:
	.space	240
	.size	tmp, 240

	.section	".note.GNU-stack","",@progbits
	.addrsig
