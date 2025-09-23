	.file	"jcdctmgr.c"
	.text
	.globl	jinit_forward_dct               # -- Begin function jinit_forward_dct
	.p2align	5
	.type	jinit_forward_dct,@function
jinit_forward_dct:                      # @jinit_forward_dct
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 96
	ori	$s0, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 480
	pcalau12i	$a1, %pc_hi20(start_pass_fdctmgr)
	addi.d	$a2, $a1, %pc_lo12(start_pass_fdctmgr)
	ld.w	$a1, $fp, 268
	ori	$a3, $zero, 2
	st.d	$a2, $a0, 0
	beq	$a1, $a3, .LBB0_5
# %bb.1:
	beq	$a1, $s0, .LBB0_4
# %bb.2:
	bnez	$a1, .LBB0_6
# %bb.3:
	pcalau12i	$a1, %pc_hi20(forward_DCT)
	addi.d	$a1, $a1, %pc_lo12(forward_DCT)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(jpeg_fdct_islow)
	ld.d	$a1, $a1, %got_pc_lo12(jpeg_fdct_islow)
	st.d	$a1, $a0, 16
	b	.LBB0_7
.LBB0_4:
	pcalau12i	$a1, %pc_hi20(forward_DCT)
	addi.d	$a1, $a1, %pc_lo12(forward_DCT)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(jpeg_fdct_ifast)
	ld.d	$a1, $a1, %got_pc_lo12(jpeg_fdct_ifast)
	st.d	$a1, $a0, 16
	b	.LBB0_7
.LBB0_5:
	pcalau12i	$a1, %pc_hi20(forward_DCT_float)
	addi.d	$a1, $a1, %pc_lo12(forward_DCT_float)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(jpeg_fdct_float)
	ld.d	$a1, $a1, %got_pc_lo12(jpeg_fdct_float)
	st.d	$a1, $a0, 56
	b	.LBB0_7
.LBB0_6:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 47
	st.w	$a3, $a1, 40
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a0, $s0
.LBB0_7:
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 24
	xvst	$xr0, $a0, 64
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	jinit_forward_dct, .Lfunc_end0-jinit_forward_dct
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function start_pass_fdctmgr
.LCPI1_0:
	.dword	0x3ff2d062ef6c11aa              # double 1.1758756020000001
.LCPI1_1:
	.dword	0x3ff4e7ae914d6fca              # double 1.3065629649999999
.LCPI1_2:
	.dword	0x3ff63150b14861ef              # double 1.3870398450000001
.LCPI1_3:
	.dword	0x3fd1a855de72ab5d              # double 0.275899379
.LCPI1_4:
	.dword	0x3fe1517a7bc720bb              # double 0.54119609999999996
.LCPI1_5:
	.dword	0x3fe92469c0a7bf3b              # double 0.785694958
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_6:
	.word	16384                           # 0x4000
	.word	22725                           # 0x58c5
	.word	21407                           # 0x539f
	.word	19266                           # 0x4b42
	.word	16384                           # 0x4000
	.word	12873                           # 0x3249
	.word	8867                            # 0x22a3
	.word	4520                            # 0x11a8
.LCPI1_7:
	.word	22725                           # 0x58c5
	.word	31521                           # 0x7b21
	.word	29692                           # 0x73fc
	.word	26722                           # 0x6862
	.word	22725                           # 0x58c5
	.word	17855                           # 0x45bf
	.word	12299                           # 0x300b
	.word	6270                            # 0x187e
.LCPI1_8:
	.word	21407                           # 0x539f
	.word	29692                           # 0x73fc
	.word	27969                           # 0x6d41
	.word	25172                           # 0x6254
	.word	21407                           # 0x539f
	.word	16819                           # 0x41b3
	.word	11585                           # 0x2d41
	.word	5906                            # 0x1712
.LCPI1_9:
	.word	19266                           # 0x4b42
	.word	26722                           # 0x6862
	.word	25172                           # 0x6254
	.word	22654                           # 0x587e
	.word	19266                           # 0x4b42
	.word	15137                           # 0x3b21
	.word	10426                           # 0x28ba
	.word	5315                            # 0x14c3
.LCPI1_10:
	.word	12873                           # 0x3249
	.word	17855                           # 0x45bf
	.word	16819                           # 0x41b3
	.word	15137                           # 0x3b21
	.word	12873                           # 0x3249
	.word	10114                           # 0x2782
	.word	6967                            # 0x1b37
	.word	3552                            # 0xde0
.LCPI1_11:
	.word	8867                            # 0x22a3
	.word	12299                           # 0x300b
	.word	11585                           # 0x2d41
	.word	10426                           # 0x28ba
	.word	8867                            # 0x22a3
	.word	6967                            # 0x1b37
	.word	4799                            # 0x12bf
	.word	2446                            # 0x98e
.LCPI1_12:
	.word	4520                            # 0x11a8
	.word	6270                            # 0x187e
	.word	5906                            # 0x1712
	.word	5315                            # 0x14c3
	.word	4520                            # 0x11a8
	.word	3552                            # 0xde0
	.word	2446                            # 0x98e
	.word	1247                            # 0x4df
	.text
	.p2align	5
	.type	start_pass_fdctmgr,@function
start_pass_fdctmgr:                     # @start_pass_fdctmgr
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 216                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 352
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 68
	blez	$a0, .LBB1_20
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s0, 480
	ld.d	$s1, $s0, 80
	addi.d	$s2, $s0, 88
	addi.d	$a1, $a0, 64
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$s4, $a0, 24
	pcalau12i	$a0, %pc_hi20(start_pass_fdctmgr.aanscalefactor)
	addi.d	$s6, $a0, %pc_lo12(start_pass_fdctmgr.aanscalefactor)
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_2)
	lu52i.d	$a0, $zero, 1026
	xvreplgr2vr.d	$xr6, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_5)
	ori	$s8, $zero, 64
	ori	$a0, $zero, 1024
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr6, $sp, 96                   # 32-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 47
	st.w	$a2, $a0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	xvld	$xr6, $sp, 96                   # 32-byte Folded Reload
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a0, $s0, 68
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 96
	bge	$s3, $a0, .LBB1_20
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	ld.w	$s7, $s1, 16
	ori	$a0, $zero, 3
	bltu	$a0, $s7, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s7, 3
	ldx.d	$s5, $s2, $a0
	bnez	$s5, .LBB1_7
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s0, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $s0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 51
	st.w	$a2, $a0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	xvld	$xr6, $sp, 96                   # 32-byte Folded Reload
	slli.d	$a0, $s7, 3
	ldx.d	$s5, $s2, $a0
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a0, $s0, 268
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_16
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	bnez	$a0, .LBB1_2
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s4, $a0
	bnez	$a0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a3, $a0, 0
	alsl.d	$s7, $s7, $s4, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $s0
	jirl	$ra, $a3, 0
	xvld	$xr6, $sp, 96                   # 32-byte Folded Reload
	st.d	$a0, $s7, 0
.LBB1_12:                               # %vector.body
                                        #   in Loop: Header=BB1_4 Depth=1
	vld	$vr0, $s5, 0
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr0, $s5, 16
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr1, $xr1, 3
	xvst	$xr1, $a0, 0
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr0, $s5, 32
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr1, $xr1, 3
	xvst	$xr1, $a0, 32
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr0, $s5, 48
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr1, $xr1, 3
	xvst	$xr1, $a0, 64
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr0, $s5, 64
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr1, $xr1, 3
	xvst	$xr1, $a0, 96
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr0, $s5, 80
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr1, $xr1, 3
	xvst	$xr1, $a0, 128
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr0, $s5, 96
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr1, $xr1, 3
	xvst	$xr1, $a0, 160
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr0, $s5, 112
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr1, $xr1, 3
	xvst	$xr1, $a0, 192
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 7
	xvslli.w	$xr0, $xr1, 3
	xvst	$xr0, $a0, 224
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s4, $a0
	bnez	$a0, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a3, $a0, 0
	alsl.d	$s7, $s7, $s4, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $s0
	jirl	$ra, $a3, 0
	xvld	$xr6, $sp, 96                   # 32-byte Folded Reload
	st.d	$a0, $s7, 0
.LBB1_15:                               # %vector.body111
                                        #   in Loop: Header=BB1_4 Depth=1
	vld	$vr1, $s5, 16
	vld	$vr0, $s5, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 4
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 5
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 6
	pcalau12i	$a1, %pc_hi20(.LCPI1_7)
	xvld	$xr3, $a1, %pc_lo12(.LCPI1_7)
	vpickve2gr.h	$a1, $vr1, 7
	vld	$vr4, $s5, 32
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 7
	xvld	$xr7, $sp, 32                   # 32-byte Folded Reload
	xvori.b	$xr1, $xr7, 0
	xvmadd.w	$xr1, $xr2, $xr3
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 6
	pcalau12i	$a1, %pc_hi20(.LCPI1_8)
	xvld	$xr5, $a1, %pc_lo12(.LCPI1_8)
	vpickve2gr.h	$a1, $vr4, 7
	vld	$vr4, $s5, 48
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr2, $xr7, 0
	xvmadd.w	$xr2, $xr3, $xr5
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 6
	pcalau12i	$a1, %pc_hi20(.LCPI1_9)
	xvld	$xr5, $a1, %pc_lo12(.LCPI1_9)
	vpickve2gr.h	$a1, $vr4, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 7
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvori.b	$xr4, $xr7, 0
	xvmadd.w	$xr4, $xr3, $xr5
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 6
	pcalau12i	$a1, %pc_hi20(.LCPI1_6)
	xvld	$xr5, $a1, %pc_lo12(.LCPI1_6)
	vpickve2gr.h	$a1, $vr0, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr0, $xr7, 0
	xvmadd.w	$xr0, $xr3, $xr5
	xvsrli.w	$xr0, $xr0, 11
	xvst	$xr0, $a0, 0
	xvsrli.w	$xr0, $xr1, 11
	xvst	$xr0, $a0, 32
	xvsrli.w	$xr0, $xr2, 11
	vld	$vr1, $s5, 64
	xvst	$xr0, $a0, 64
	xvsrli.w	$xr0, $xr4, 11
	xvst	$xr0, $a0, 96
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 2
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 3
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 4
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 5
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 6
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 7
	xvori.b	$xr1, $xr7, 0
	vld	$vr2, $s5, 80
	xvmadd.w	$xr1, $xr0, $xr5
	xvsrli.w	$xr0, $xr1, 11
	xvst	$xr0, $a0, 128
	vpickve2gr.h	$a1, $vr2, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 3
	vpickve2gr.h	$a1, $vr2, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 4
	vpickve2gr.h	$a1, $vr2, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 5
	vpickve2gr.h	$a1, $vr2, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 6
	pcalau12i	$a1, %pc_hi20(.LCPI1_10)
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_10)
	vpickve2gr.h	$a1, $vr2, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 7
	xvori.b	$xr2, $xr7, 0
	vld	$vr3, $s5, 96
	xvmadd.w	$xr2, $xr0, $xr1
	xvsrli.w	$xr0, $xr2, 11
	xvst	$xr0, $a0, 160
	vpickve2gr.h	$a1, $vr3, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 0
	vpickve2gr.h	$a1, $vr3, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	vpickve2gr.h	$a1, $vr3, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 2
	vpickve2gr.h	$a1, $vr3, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 3
	vpickve2gr.h	$a1, $vr3, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 4
	vpickve2gr.h	$a1, $vr3, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 5
	vpickve2gr.h	$a1, $vr3, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 6
	pcalau12i	$a1, %pc_hi20(.LCPI1_11)
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_11)
	vpickve2gr.h	$a1, $vr3, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 7
	xvori.b	$xr2, $xr7, 0
	vld	$vr3, $s5, 112
	xvmadd.w	$xr2, $xr0, $xr1
	xvsrli.w	$xr0, $xr2, 11
	xvst	$xr0, $a0, 192
	vpickve2gr.h	$a1, $vr3, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 0
	vpickve2gr.h	$a1, $vr3, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	vpickve2gr.h	$a1, $vr3, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 2
	vpickve2gr.h	$a1, $vr3, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 3
	vpickve2gr.h	$a1, $vr3, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 4
	vpickve2gr.h	$a1, $vr3, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 5
	vpickve2gr.h	$a1, $vr3, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 6
	pcalau12i	$a1, %pc_hi20(.LCPI1_12)
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_12)
	vpickve2gr.h	$a1, $vr3, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 7
	xvori.b	$xr2, $xr7, 0
	xvmadd.w	$xr2, $xr0, $xr1
	xvsrli.w	$xr0, $xr2, 11
	xvst	$xr0, $a0, 224
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	bnez	$a0, .LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a3, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$s7, $s7, $a0, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $s0
	jirl	$ra, $a3, 0
	xvld	$xr6, $sp, 96                   # 32-byte Folded Reload
	st.d	$a0, $s7, 0
.LBB1_18:                               #   in Loop: Header=BB1_4 Depth=1
	move	$a1, $zero
	addi.d	$a2, $s5, 8
	addi.d	$a0, $a0, 16
	.p2align	4, , 16
.LBB1_19:                               # %.preheader
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a3, $a2, -8
	ld.hu	$a4, $a2, -6
	movgr2fr.w	$fa1, $a3
	fldx.d	$fa0, $s6, $a1
	movgr2fr.w	$fa2, $a4
	ld.w	$a3, $a2, -4
	ffint.d.w	$fa3, $fa1
	ffint.d.w	$fa1, $fa2
	fmul.d	$fa2, $fa0, $fa1
	vinsgr2vr.w	$vr1, $a3, 0
	vpickve2gr.h	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 15, 0
	movgr2fr.w	$fa4, $a3
	ffint.d.w	$fa4, $fa4
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa5, $fa1
	vextrins.d	$vr5, $vr4, 16
	vreplvei.d	$vr1, $vr0, 0
	fst.d	$fs0, $sp, 184
	fst.d	$fs1, $sp, 176
	fst.d	$fs2, $sp, 168
	fst.d	$fa3, $sp, 160
	xvld	$xr3, $sp, 160
	vfmul.d	$vr4, $vr1, $vr5
	xvori.b	$xr5, $xr0, 0
	xvinsve0.d	$xr5, $xr2, 1
	xvpermi.q	$xr5, $xr4, 2
	xvfmul.d	$xr2, $xr5, $xr3
	xvfmul.d	$xr2, $xr2, $xr6
	xvfrecip.d	$xr2, $xr2
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvpickve.d	$xr4, $xr2, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr4, $vr3, 16
	xvpickve.d	$xr3, $xr2, 2
	ld.hu	$a3, $a2, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr4, $vr3, 32
	xvpickve.d	$xr2, $xr2, 3
	movgr2fr.w	$fa3, $a3
	ld.hu	$a3, $a2, 2
	fcvt.s.d	$fa2, $fa2
	vextrins.w	$vr4, $vr2, 48
	vst	$vr4, $a0, -16
	movgr2fr.w	$fa2, $a3
	ld.w	$a3, $a2, 4
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	vinsgr2vr.w	$vr4, $a3, 0
	vpickve2gr.h	$a3, $vr4, 1
	bstrpick.d	$a3, $a3, 15, 0
	movgr2fr.w	$fa5, $a3
	ffint.d.w	$fa5, $fa5
	vpickve2gr.h	$a3, $vr4, 0
	bstrpick.d	$a3, $a3, 15, 0
	movgr2fr.w	$fa4, $a3
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	fst.d	$fs3, $sp, 152
	fst.d	$fs4, $sp, 144
	fst.d	$fs5, $sp, 136
	fst.d	$fa3, $sp, 128
	xvld	$xr3, $sp, 128
	vfmul.d	$vr1, $vr1, $vr4
	xvinsve0.d	$xr0, $xr2, 1
	xvpermi.q	$xr0, $xr1, 2
	xvfmul.d	$xr0, $xr0, $xr3
	xvfmul.d	$xr0, $xr0, $xr6
	xvfrecip.d	$xr0, $xr0
	xvpickve.d	$xr1, $xr0, 1
	fcvt.s.d	$fa1, $fa1
	xvpickve.d	$xr2, $xr0, 0
	fcvt.s.d	$fa2, $fa2
	vextrins.w	$vr2, $vr1, 16
	xvpickve.d	$xr1, $xr0, 2
	fcvt.s.d	$fa1, $fa1
	vextrins.w	$vr2, $vr1, 32
	xvpickve.d	$xr0, $xr0, 3
	fcvt.s.d	$fa0, $fa0
	vextrins.w	$vr2, $vr0, 48
	vst	$vr2, $a0, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 16
	addi.d	$a0, $a0, 32
	bne	$a1, $s8, .LBB1_19
	b	.LBB1_3
.LBB1_20:                               # %._crit_edge
	addi.d	$sp, $fp, -352
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end1:
	.size	start_pass_fdctmgr, .Lfunc_end1-start_pass_fdctmgr
                                        # -- End function
	.p2align	5                               # -- Begin function forward_DCT
	.type	forward_DCT,@function
forward_DCT:                            # @forward_DCT
# %bb.0:
	beqz	$a6, .LBB2_4
# %bb.1:                                # %.preheader.preheader
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	move	$fp, $a5
	ld.d	$a0, $a0, 480
	ld.w	$a1, $a1, 16
	ld.d	$s0, $a0, 16
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s1, $a0, 24
	bstrpick.d	$a0, $a4, 31, 0
	alsl.d	$s2, $a0, $a2, 3
	bstrpick.d	$s3, $a6, 31, 0
	addi.d	$s4, $a3, 64
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	xvrepli.w	$xr0, 1
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	.p2align	4, , 16
.LBB2_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	bstrpick.d	$a0, $fp, 31, 0
	ldx.bu	$a2, $a1, $a0
	add.d	$a1, $a1, $a0
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 88
	ld.bu	$a2, $a1, 1
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 92
	ld.bu	$a2, $a1, 2
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 96
	ld.bu	$a2, $a1, 3
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 100
	ld.bu	$a2, $a1, 4
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 104
	ld.bu	$a2, $a1, 5
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 108
	ld.bu	$a2, $a1, 6
	addi.d	$a2, $a2, -128
	st.w	$a2, $sp, 112
	ld.bu	$a1, $a1, 7
	ld.d	$a2, $s2, 8
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 116
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 120
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 124
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 128
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 132
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 136
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 140
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 144
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s2, 16
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 148
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 152
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 156
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 160
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 164
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 168
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 172
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 176
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s2, 24
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 180
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 184
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 188
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 192
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 196
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 200
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 204
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 208
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s2, 32
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 212
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 216
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 220
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 224
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 228
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 232
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 236
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 240
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s2, 40
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 244
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 248
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 252
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 256
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 260
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 264
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 268
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 272
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s2, 48
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 276
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 280
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 284
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 288
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 292
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 296
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 300
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 304
	ld.bu	$a1, $a2, 7
	ld.d	$a2, $s2, 56
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 308
	ldx.bu	$a1, $a2, $a0
	add.d	$a0, $a2, $a0
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 312
	ld.bu	$a1, $a0, 1
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 316
	ld.bu	$a1, $a0, 2
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 320
	ld.bu	$a1, $a0, 3
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 324
	ld.bu	$a1, $a0, 4
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 328
	ld.bu	$a1, $a0, 5
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 332
	ld.bu	$a1, $a0, 6
	addi.d	$a1, $a1, -128
	st.w	$a1, $sp, 336
	ld.bu	$a0, $a0, 7
	addi.d	$a0, $a0, -128
	st.w	$a0, $sp, 340
	addi.d	$a0, $sp, 88
	jirl	$ra, $s0, 0
	xvld	$xr0, $sp, 88
	xvld	$xr1, $s1, 0
	xvslti.w	$xr2, $xr0, 0
	xvsrai.w	$xr3, $xr1, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr1
	xvor.v	$xr5, $xr2, $xr5
	xvld	$xr8, $sp, 16                   # 32-byte Folded Reload
	xvbitsel.v	$xr6, $xr1, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr1, $xr0
	xvand.v	$xr6, $xr2, $xr3
	xvbitsel.v	$xr1, $xr8, $xr1, $xr6
	xvdiv.w	$xr0, $xr0, $xr1
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvld	$xr7, $sp, 48                   # 32-byte Folded Reload
	xvbitsel.v	$xr1, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr1, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 120
	xvld	$xr2, $s1, 32
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, -64
	xvslti.w	$xr1, $xr0, 0
	xvsrai.w	$xr3, $xr2, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr2
	xvor.v	$xr5, $xr1, $xr5
	xvbitsel.v	$xr6, $xr2, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr2, $xr0
	xvand.v	$xr6, $xr1, $xr3
	xvbitsel.v	$xr2, $xr8, $xr2, $xr6
	xvdiv.w	$xr0, $xr0, $xr2
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvbitsel.v	$xr2, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 152
	xvld	$xr2, $s1, 64
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, -48
	xvslti.w	$xr1, $xr0, 0
	xvsrai.w	$xr3, $xr2, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr2
	xvor.v	$xr5, $xr1, $xr5
	xvbitsel.v	$xr6, $xr2, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr2, $xr0
	xvand.v	$xr6, $xr1, $xr3
	xvbitsel.v	$xr2, $xr8, $xr2, $xr6
	xvdiv.w	$xr0, $xr0, $xr2
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvbitsel.v	$xr2, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 184
	xvld	$xr2, $s1, 96
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, -32
	xvslti.w	$xr1, $xr0, 0
	xvsrai.w	$xr3, $xr2, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr2
	xvor.v	$xr5, $xr1, $xr5
	xvbitsel.v	$xr6, $xr2, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr2, $xr0
	xvand.v	$xr6, $xr1, $xr3
	xvbitsel.v	$xr2, $xr8, $xr2, $xr6
	xvdiv.w	$xr0, $xr0, $xr2
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvbitsel.v	$xr2, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 216
	xvld	$xr2, $s1, 128
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, -16
	xvslti.w	$xr1, $xr0, 0
	xvsrai.w	$xr3, $xr2, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr2
	xvor.v	$xr5, $xr1, $xr5
	xvbitsel.v	$xr6, $xr2, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr2, $xr0
	xvand.v	$xr6, $xr1, $xr3
	xvbitsel.v	$xr2, $xr8, $xr2, $xr6
	xvdiv.w	$xr0, $xr0, $xr2
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvbitsel.v	$xr2, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 248
	xvld	$xr2, $s1, 160
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, 0
	xvslti.w	$xr1, $xr0, 0
	xvsrai.w	$xr3, $xr2, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr2
	xvor.v	$xr5, $xr1, $xr5
	xvbitsel.v	$xr6, $xr2, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr2, $xr0
	xvand.v	$xr6, $xr1, $xr3
	xvbitsel.v	$xr2, $xr8, $xr2, $xr6
	xvdiv.w	$xr0, $xr0, $xr2
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvbitsel.v	$xr2, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 280
	xvld	$xr2, $s1, 192
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, 16
	xvslti.w	$xr1, $xr0, 0
	xvsrai.w	$xr3, $xr2, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr2
	xvor.v	$xr5, $xr1, $xr5
	xvbitsel.v	$xr6, $xr2, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr2, $xr0
	xvand.v	$xr6, $xr1, $xr3
	xvbitsel.v	$xr2, $xr8, $xr2, $xr6
	xvdiv.w	$xr0, $xr0, $xr2
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvbitsel.v	$xr2, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 312
	xvld	$xr2, $s1, 224
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, 32
	xvslti.w	$xr1, $xr0, 0
	xvsrai.w	$xr3, $xr2, 1
	xvadd.w	$xr4, $xr0, $xr3
	xvslt.w	$xr5, $xr4, $xr2
	xvor.v	$xr5, $xr1, $xr5
	xvbitsel.v	$xr6, $xr2, $xr8, $xr5
	xvdiv.w	$xr4, $xr4, $xr6
	xvsub.w	$xr0, $xr3, $xr0
	xvsle.w	$xr3, $xr2, $xr0
	xvand.v	$xr6, $xr1, $xr3
	xvbitsel.v	$xr2, $xr8, $xr2, $xr6
	xvdiv.w	$xr0, $xr0, $xr2
	xvand.v	$xr0, $xr3, $xr0
	xvneg.w	$xr0, $xr0
	xvbitsel.v	$xr2, $xr4, $xr7, $xr5
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $s4, 48
	addi.w	$fp, $fp, 8
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 128
	bnez	$s3, .LBB2_2
# %bb.3:
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
.LBB2_4:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	forward_DCT, .Lfunc_end2-forward_DCT
                                        # -- End function
	.p2align	5                               # -- Begin function forward_DCT_float
	.type	forward_DCT_float,@function
forward_DCT_float:                      # @forward_DCT_float
# %bb.0:
	beqz	$a6, .LBB3_4
# %bb.1:                                # %.preheader.preheader
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	move	$fp, $a5
	ld.d	$a0, $a0, 480
	ld.w	$a1, $a1, 16
	ld.d	$s0, $a0, 56
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s1, $a0, 64
	bstrpick.d	$a0, $a4, 31, 0
	alsl.d	$s2, $a0, $a2, 3
	bstrpick.d	$s3, $a6, 31, 0
	addi.d	$s4, $a3, 64
	lu12i.w	$a0, 288768
	ori	$a0, $a0, 256
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	lu12i.w	$a0, 12
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB3_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	bstrpick.d	$a0, $fp, 31, 0
	ldx.bu	$a2, $a1, $a0
	add.d	$a1, $a1, $a0
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 72
	ld.bu	$a2, $a1, 1
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 76
	ld.bu	$a2, $a1, 2
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 80
	ld.bu	$a2, $a1, 3
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 84
	ld.bu	$a2, $a1, 4
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 88
	ld.bu	$a2, $a1, 5
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 92
	ld.bu	$a2, $a1, 6
	addi.d	$a2, $a2, -128
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 96
	ld.bu	$a1, $a1, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 8
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 100
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 104
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 108
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 112
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 116
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 120
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 124
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 128
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 16
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 132
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 136
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 140
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 144
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 148
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 152
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 156
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 160
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 24
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 164
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 168
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 172
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 176
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 180
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 184
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 188
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 192
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 32
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 196
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 200
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 204
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 208
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 212
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 216
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 220
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 224
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 40
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 228
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 232
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 236
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 240
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 244
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 248
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 252
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 256
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 48
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 260
	ldx.bu	$a1, $a2, $a0
	add.d	$a2, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 264
	ld.bu	$a1, $a2, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 268
	ld.bu	$a1, $a2, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 272
	ld.bu	$a1, $a2, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 276
	ld.bu	$a1, $a2, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 280
	ld.bu	$a1, $a2, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 284
	ld.bu	$a1, $a2, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 288
	ld.bu	$a1, $a2, 7
	addi.d	$a1, $a1, -128
	ld.d	$a2, $s2, 56
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 292
	ldx.bu	$a1, $a2, $a0
	add.d	$a0, $a2, $a0
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 296
	ld.bu	$a1, $a0, 1
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 300
	ld.bu	$a1, $a0, 2
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 304
	ld.bu	$a1, $a0, 3
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 308
	ld.bu	$a1, $a0, 4
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 312
	ld.bu	$a1, $a0, 5
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 316
	ld.bu	$a1, $a0, 6
	addi.d	$a1, $a1, -128
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 320
	ld.bu	$a0, $a0, 7
	addi.d	$a0, $a0, -128
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $sp, 324
	addi.d	$a0, $sp, 72
	jirl	$ra, $s0, 0
	xvld	$xr0, $sp, 72
	xvld	$xr1, $s1, 0
	xvfmul.s	$xr0, $xr0, $xr1
	xvld	$xr3, $sp, 32                   # 32-byte Folded Reload
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 104
	xvld	$xr2, $s1, 32
	vinsgr2vr.h	$vr1, $a0, 7
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vadd.h	$vr1, $vr1, $vr4
	vst	$vr1, $s4, -64
	xvfmul.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 136
	xvld	$xr2, $s1, 64
	vinsgr2vr.h	$vr1, $a0, 7
	vadd.h	$vr1, $vr1, $vr4
	vst	$vr1, $s4, -48
	xvfmul.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 168
	xvld	$xr2, $s1, 96
	vinsgr2vr.h	$vr1, $a0, 7
	vadd.h	$vr1, $vr1, $vr4
	vst	$vr1, $s4, -32
	xvfmul.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 200
	xvld	$xr2, $s1, 128
	vinsgr2vr.h	$vr1, $a0, 7
	vadd.h	$vr1, $vr1, $vr4
	vst	$vr1, $s4, -16
	xvfmul.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 232
	xvld	$xr2, $s1, 160
	vinsgr2vr.h	$vr1, $a0, 7
	vadd.h	$vr1, $vr1, $vr4
	vst	$vr1, $s4, 0
	xvfmul.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 264
	xvld	$xr2, $s1, 192
	vinsgr2vr.h	$vr1, $a0, 7
	vadd.h	$vr1, $vr1, $vr4
	vst	$vr1, $s4, 16
	xvfmul.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	xvld	$xr0, $sp, 296
	xvld	$xr2, $s1, 224
	vinsgr2vr.h	$vr1, $a0, 7
	vadd.h	$vr1, $vr1, $vr4
	vst	$vr1, $s4, 32
	xvfmul.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvftintrz.w.s	$xr0, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.h	$vr1, $a0, 7
	vadd.h	$vr0, $vr1, $vr4
	vst	$vr0, $s4, 48
	addi.w	$fp, $fp, 8
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 128
	bnez	$s3, .LBB3_2
# %bb.3:
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
.LBB3_4:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	forward_DCT_float, .Lfunc_end3-forward_DCT_float
                                        # -- End function
	.type	start_pass_fdctmgr.aanscalefactor,@object # @start_pass_fdctmgr.aanscalefactor
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
start_pass_fdctmgr.aanscalefactor:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff63150b14861ef              # double 1.3870398450000001
	.dword	0x3ff4e7ae914d6fca              # double 1.3065629649999999
	.dword	0x3ff2d062ef6c11aa              # double 1.1758756020000001
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3fe92469c0a7bf3b              # double 0.785694958
	.dword	0x3fe1517a7bc720bb              # double 0.54119609999999996
	.dword	0x3fd1a855de72ab5d              # double 0.275899379
	.size	start_pass_fdctmgr.aanscalefactor, 64

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_fdctmgr
	.addrsig_sym forward_DCT
	.addrsig_sym jpeg_fdct_islow
	.addrsig_sym jpeg_fdct_ifast
	.addrsig_sym forward_DCT_float
	.addrsig_sym jpeg_fdct_float
