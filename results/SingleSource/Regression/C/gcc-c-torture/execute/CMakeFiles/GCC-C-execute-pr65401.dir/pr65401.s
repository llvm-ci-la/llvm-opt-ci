	.file	"pr65401.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	move	$a0, $zero
	ori	$a1, $zero, 128
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, 2
	bne	$a0, $a1, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	move	$a1, $zero
	ori	$a2, $zero, 128
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ldx.h	$a3, $a0, $a1
	revb.2h	$a3, $a3
	stx.h	$a3, $a0, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a2, .LBB1_1
# %bb.2:
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.half	16384                           # 0x4000
	.half	16129                           # 0x3f01
	.half	15874                           # 0x3e02
	.half	15619                           # 0x3d03
	.half	15364                           # 0x3c04
	.half	15109                           # 0x3b05
	.half	14854                           # 0x3a06
	.half	14599                           # 0x3907
.LCPI2_1:
	.half	14344                           # 0x3808
	.half	14089                           # 0x3709
	.half	13834                           # 0x360a
	.half	13579                           # 0x350b
	.half	13324                           # 0x340c
	.half	13069                           # 0x330d
	.half	12814                           # 0x320e
	.half	12559                           # 0x310f
.LCPI2_2:
	.half	12304                           # 0x3010
	.half	12049                           # 0x2f11
	.half	11794                           # 0x2e12
	.half	11539                           # 0x2d13
	.half	11284                           # 0x2c14
	.half	11029                           # 0x2b15
	.half	10774                           # 0x2a16
	.half	10519                           # 0x2917
.LCPI2_3:
	.half	10264                           # 0x2818
	.half	10009                           # 0x2719
	.half	9754                            # 0x261a
	.half	9499                            # 0x251b
	.half	9244                            # 0x241c
	.half	8989                            # 0x231d
	.half	8734                            # 0x221e
	.half	8479                            # 0x211f
.LCPI2_4:
	.half	8224                            # 0x2020
	.half	7969                            # 0x1f21
	.half	7714                            # 0x1e22
	.half	7459                            # 0x1d23
	.half	7204                            # 0x1c24
	.half	6949                            # 0x1b25
	.half	6694                            # 0x1a26
	.half	6439                            # 0x1927
.LCPI2_5:
	.half	6184                            # 0x1828
	.half	5929                            # 0x1729
	.half	5674                            # 0x162a
	.half	5419                            # 0x152b
	.half	5164                            # 0x142c
	.half	4909                            # 0x132d
	.half	4654                            # 0x122e
	.half	4399                            # 0x112f
.LCPI2_6:
	.half	4144                            # 0x1030
	.half	3889                            # 0xf31
	.half	3634                            # 0xe32
	.half	3379                            # 0xd33
	.half	3124                            # 0xc34
	.half	2869                            # 0xb35
	.half	2614                            # 0xa36
	.half	2359                            # 0x937
.LCPI2_7:
	.half	2104                            # 0x838
	.half	1849                            # 0x739
	.half	1594                            # 0x63a
	.half	1339                            # 0x53b
	.half	1084                            # 0x43c
	.half	829                             # 0x33d
	.half	574                             # 0x23e
	.half	319                             # 0x13f
.LCPI2_8:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI2_9:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI2_10:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI2_11:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vst	$vr0, $sp, 176
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	vst	$vr1, $sp, 192
	vst	$vr2, $sp, 96                   # 16-byte Folded Spill
	vst	$vr2, $sp, 208
	vst	$vr3, $sp, 80                   # 16-byte Folded Spill
	vst	$vr3, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 240
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vst	$vr1, $sp, 256
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	vst	$vr2, $sp, 272
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	vst	$vr3, $sp, 288
	addi.d	$a0, $sp, 176
	addi.d	$s3, $sp, 176
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	pcalau12i	$fp, %pc_hi20(.LCPI2_8)
	vld	$vr0, $fp, %pc_lo12(.LCPI2_8)
	pcalau12i	$s0, %pc_hi20(.LCPI2_9)
	vld	$vr1, $s0, %pc_lo12(.LCPI2_9)
	pcalau12i	$s1, %pc_hi20(.LCPI2_10)
	vld	$vr2, $s1, %pc_lo12(.LCPI2_10)
	pcalau12i	$s2, %pc_hi20(.LCPI2_11)
	vld	$vr3, $s2, %pc_lo12(.LCPI2_11)
	vrepli.d	$vr4, -255
	lu12i.w	$a0, 4
	vreplgr2vr.d	$vr5, $a0
	vrepli.b	$vr14, -1
	ori	$a0, $zero, 112
	.p2align	4, , 16
.LBB2_1:                                # %vector.body41
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vldx	$vr6, $a2, $s3
	vori.b	$vr7, $vr5, 0
	vmadd.d	$vr7, $vr0, $vr4
	vori.b	$vr8, $vr5, 0
	vmadd.d	$vr8, $vr1, $vr4
	vori.b	$vr9, $vr5, 0
	vmadd.d	$vr9, $vr2, $vr4
	vori.b	$vr10, $vr5, 0
	vmadd.d	$vr10, $vr3, $vr4
	vbsrl.v	$vr11, $vr6, 12
	vsllwil.wu.hu	$vr11, $vr11, 0
	vsllwil.du.wu	$vr11, $vr11, 0
	vbsrl.v	$vr12, $vr6, 8
	vsllwil.wu.hu	$vr12, $vr12, 0
	vsllwil.du.wu	$vr12, $vr12, 0
	vshuf4i.h	$vr13, $vr6, 14
	vsllwil.wu.hu	$vr13, $vr13, 0
	vsllwil.du.wu	$vr13, $vr13, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vseq.d	$vr6, $vr10, $vr6
	vxor.v	$vr6, $vr6, $vr14
	vseq.d	$vr9, $vr9, $vr13
	vxor.v	$vr9, $vr9, $vr14
	vpickev.w	$vr9, $vr9, $vr6
	vpickve2gr.h	$a2, $vr9, 2
	andi	$a2, $a2, 1
	vpickve2gr.h	$a3, $vr6, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.h	$a2, $vr9, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.h	$a2, $vr9, 6
	bstrins.d	$a3, $a2, 3, 3
	vseq.d	$vr6, $vr8, $vr12
	vxor.v	$vr6, $vr6, $vr14
	vseq.d	$vr7, $vr7, $vr11
	vxor.v	$vr7, $vr7, $vr14
	vpickev.w	$vr6, $vr7, $vr6
	vpickve2gr.h	$a2, $vr6, 0
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.h	$a2, $vr6, 2
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.h	$a2, $vr6, 4
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.h	$a3, $vr6, 6
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	andi	$a3, $a2, 255
	bnez	$a3, .LBB2_3
# %bb.2:                                # %vector.body41
                                        #   in Loop: Header=BB2_1 Depth=1
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a2, $a1, 16
	bne	$a1, $a0, .LBB2_1
.LBB2_3:                                # %middle.split
	vst	$vr14, $sp, 144                 # 16-byte Folded Spill
	bnez	$a3, .LBB2_9
# %bb.4:                                # %vector.body49
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 240
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 256
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 272
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 288
	addi.d	$a0, $sp, 176
	addi.d	$s3, $sp, 176
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	vld	$vr0, $fp, %pc_lo12(.LCPI2_8)
	vld	$vr1, $s0, %pc_lo12(.LCPI2_9)
	vld	$vr2, $s1, %pc_lo12(.LCPI2_10)
	vld	$vr3, $s2, %pc_lo12(.LCPI2_11)
	vrepli.d	$vr4, 255
	vrepli.d	$vr5, 64
	ori	$a0, $zero, 112
	vld	$vr14, $sp, 144                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB2_5:                                # %vector.body58
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vldx	$vr6, $a2, $s3
	vori.b	$vr7, $vr5, 0
	vmadd.d	$vr7, $vr0, $vr4
	vori.b	$vr8, $vr5, 0
	vmadd.d	$vr8, $vr1, $vr4
	vori.b	$vr9, $vr5, 0
	vmadd.d	$vr9, $vr2, $vr4
	vori.b	$vr10, $vr5, 0
	vmadd.d	$vr10, $vr3, $vr4
	vbsrl.v	$vr11, $vr6, 12
	vsllwil.wu.hu	$vr11, $vr11, 0
	vsllwil.du.wu	$vr11, $vr11, 0
	vbsrl.v	$vr12, $vr6, 8
	vsllwil.wu.hu	$vr12, $vr12, 0
	vsllwil.du.wu	$vr12, $vr12, 0
	vshuf4i.h	$vr13, $vr6, 14
	vsllwil.wu.hu	$vr13, $vr13, 0
	vsllwil.du.wu	$vr13, $vr13, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vseq.d	$vr6, $vr10, $vr6
	vxor.v	$vr6, $vr6, $vr14
	vseq.d	$vr9, $vr9, $vr13
	vxor.v	$vr9, $vr9, $vr14
	vpickev.w	$vr9, $vr9, $vr6
	vpickve2gr.h	$a2, $vr9, 2
	andi	$a2, $a2, 1
	vpickve2gr.h	$a3, $vr6, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.h	$a2, $vr9, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.h	$a2, $vr9, 6
	bstrins.d	$a3, $a2, 3, 3
	vseq.d	$vr6, $vr8, $vr12
	vxor.v	$vr6, $vr6, $vr14
	vseq.d	$vr7, $vr7, $vr11
	vxor.v	$vr7, $vr7, $vr14
	vpickev.w	$vr6, $vr7, $vr6
	vpickve2gr.h	$a2, $vr6, 0
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.h	$a2, $vr6, 2
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.h	$a2, $vr6, 4
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.h	$a3, $vr6, 6
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	andi	$a3, $a2, 255
	bnez	$a3, .LBB2_7
# %bb.6:                                # %vector.body58
                                        #   in Loop: Header=BB2_5 Depth=1
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a2, $a1, 16
	bne	$a1, $a0, .LBB2_5
.LBB2_7:                                # %middle.split64
	bnez	$a3, .LBB2_9
# %bb.8:                                # %middle.block65
	move	$a0, $zero
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB2_9:                                # %vector.early.exit
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
