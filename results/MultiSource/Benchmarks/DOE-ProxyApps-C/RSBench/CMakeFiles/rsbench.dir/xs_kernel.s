	.file	"xs_kernel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fast_nuclear_W
.LCPI0_0:
	.dword	0xbfd19dc7afdb7b46              # double -0.27525512860841095
.LCPI0_1:
	.dword	0x3fe065c77cdfff0d              # double 0.51242422475476845
.LCPI0_2:
	.dword	0xc005cc470a049097              # double -2.7247448713915889
.LCPI0_3:
	.dword	0x3faa80fd3629c600              # double 0.051765358792987826
.LCPI0_4:
	.dword	0x4062000000000000              # double 144
.LCPI0_5:
	.dword	0x4023bd3cbc48f10b              # double 9.8696040000000007
.LCPI0_6:
	.dword	0x4043bd3cddd6e04c              # double 39.47842
.LCPI0_7:
	.dword	0x405634e4649906cd              # double 88.826440000000005
.LCPI0_8:
	.dword	0x4063bd3d07c84b5e              # double 157.91370000000001
.LCPI0_9:
	.dword	0x406ed7aee631f8a1              # double 246.74010000000001
.LCPI0_10:
	.dword	0x407634e48e8a71de              # double 355.30579999999998
.LCPI0_11:
	.dword	0x407e39c504816f00              # double 483.61059999999998
.LCPI0_12:
	.dword	0x4083bd3cd35a8588              # double 631.65470000000005
.LCPI0_13:
	.dword	0x4088fb810624dd2f              # double 799.43799999999999
.LCPI0_14:
	.dword	0x408ed7aee631f8a1              # double 986.96040000000005
.LCPI0_15:
	.dword	0x40544f923a29c77a              # double 81.243300000000005
	.text
	.globl	fast_nuclear_W
	.p2align	5
	.type	fast_nuclear_W,@function
fast_nuclear_W:                         # @fast_nuclear_W
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 248                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(cabs)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs6, $zero
	vldi	$vr1, -1000
	fcmp.cule.d	$fcc0, $fa1, $fa0
	fmul.d	$fa1, $fs1, $fs6
	bcnez	$fcc0, .LBB0_10
# %bb.1:
	vldi	$vr0, -984
	fmul.d	$fs4, $fs0, $fa0
	fmul.d	$fa2, $fs0, $fs6
	fmul.d	$fs5, $fs1, $fa0
	fst.d	$fa1, $sp, 224                  # 8-byte Folded Spill
	fsub.d	$fs3, $fa1, $fs4
	fst.d	$fa2, $sp, 208                  # 8-byte Folded Spill
	fadd.d	$fs2, $fs5, $fa2
	fcmp.cor.d	$fcc0, $fs3, $fs3
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 160
	bceqz	$fcc0, .LBB0_15
.LBB0_2:
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fmov.d	$fa3, $fa1
	vldi	$vr1, -912
	fsub.d	$fa2, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fs6
	fmul.d	$fa1, $fa3, $fs6
	fadd.d	$fa0, $fa3, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fsub.d	$fa1, $fa2, $fa1
	bceqz	$fcc0, .LBB0_17
.LBB0_3:
	fmov.d	$fa2, $fs5
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_4)
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 176                  # 16-byte Folded Spill
	fmul.d	$fs4, $fs1, $fa2
	fmul.d	$fs5, $fs0, $fa2
	fmul.d	$fa0, $fs1, $fs4
	fmul.d	$fa1, $fs0, $fs5
	fmul.d	$fa2, $fs4, $fs0
	fmul.d	$fa3, $fs1, $fs5
	fsub.d	$fs6, $fa0, $fa1
	fadd.d	$fs7, $fa2, $fa3
	ld.d	$a0, $sp, 160
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB0_19
# %bb.4:                                # %.split
	fcmp.cor.d	$fcc0, $fs6, $fs6
	bceqz	$fcc0, .LBB0_36
.LBB0_5:                                # %.split.split
	fneg.d	$fs4, $fs7
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_5)
	fneg.d	$fa1, $fa1
	vldi	$vr3, -784
	fsub.d	$fa0, $fa3, $fa0
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 144                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_6)
	vldi	$vr3, -784
	fadd.d	$fa0, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_7)
	fneg.d	$fa1, $fa1
	vldi	$vr3, -784
	fsub.d	$fa0, $fa3, $fa0
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_8)
	vldi	$vr3, -784
	fadd.d	$fa0, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vld	$vr3, $sp, 144                  # 16-byte Folded Reload
	vld	$vr2, $sp, 160                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr2, 16
	lu12i.w	$a0, -362576
	ori	$a0, $a0, 940
	lu32i.d	$a0, 108381
	lu52i.d	$a0, $a0, 1021
	vreplgr2vr.d	$vr2, $a0
	vfmul.d	$vr2, $vr3, $vr2
	vrepli.b	$vr3, 0
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	vld	$vr3, $sp, 128                  # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, 265281
	ori	$a0, $a0, 1390
	lu32i.d	$a0, -213289
	lu52i.d	$a0, $a0, 1020
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, 110581
	ori	$a0, $a0, 4039
	lu32i.d	$a0, 288693
	lu52i.d	$a0, $a0, 1020
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vextrins.d	$vr1, $vr0, 16
	lu12i.w	$a0, -68057
	ori	$a0, $a0, 2289
	lu32i.d	$a0, -441816
	lu52i.d	$a0, $a0, 1019
	vreplgr2vr.d	$vr0, $a0
	vfmul.d	$vr0, $vr1, $vr0
	vfadd.d	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_9)
	fneg.d	$fa1, $fa1
	vldi	$vr3, -784
	fsub.d	$fa0, $fa3, $fa0
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vextrins.d	$vr1, $vr0, 16
	lu12i.w	$a0, -131043
	ori	$a0, $a0, 3537
	lu32i.d	$a0, -310576
	lu52i.d	$a0, $a0, 1018
	vreplgr2vr.d	$vr0, $a0
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_10)
	vldi	$vr3, -784
	fadd.d	$fa0, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_11)
	fneg.d	$fa1, $fa1
	vldi	$vr3, -784
	fsub.d	$fa0, $fa3, $fa0
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_12)
	vldi	$vr3, -784
	fadd.d	$fa0, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_13)
	fneg.d	$fa1, $fa1
	vldi	$vr3, -784
	fsub.d	$fa0, $fa3, $fa0
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_14)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_14)
	vldi	$vr3, -784
	fadd.d	$fa0, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fs6
	fmov.d	$fa3, $fs4
.LBB0_6:                                # %.split56.us
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vld	$vr2, $sp, 160                  # 16-byte Folded Reload
	vld	$vr3, $sp, 144                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	vld	$vr3, $sp, 128                  # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, 343154
	ori	$a0, $a0, 1905
	lu32i.d	$a0, -415931
	lu52i.d	$a0, $a0, 1017
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, -342897
	ori	$a0, $a0, 954
	lu32i.d	$a0, 330842
	lu52i.d	$a0, $a0, 1016
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 48                   # 16-byte Folded Reload
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, -504007
	ori	$a0, $a0, 426
	lu32i.d	$a0, -123527
	lu52i.d	$a0, $a0, 1014
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, -462669
	ori	$a0, $a0, 2570
	lu32i.d	$a0, 182462
	lu52i.d	$a0, $a0, 1013
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vextrins.d	$vr1, $vr0, 16
	lu12i.w	$a0, 125094
	ori	$a0, $a0, 589
	lu32i.d	$a0, 290410
	lu52i.d	$a0, $a0, 1011
	vreplgr2vr.d	$vr0, $a0
	vfmul.d	$vr0, $vr1, $vr0
	vfadd.d	$vr6, $vr2, $vr0
.LBB0_7:                                # %.split56.us
	pcalau12i	$a0, %pc_hi20(.LCPI0_15)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_15)
	fmul.d	$fa0, $fs0, $fa2
	fmul.d	$fa1, $fs1, $fa2
	fld.d	$fa3, $sp, 224                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa3, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fld.d	$fa3, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa3
	bceqz	$fcc0, .LBB0_26
.LBB0_8:
	vreplvei.d	$vr2, $vr0, 0
	vfmul.d	$vr2, $vr6, $vr2
	vori.b	$vr3, $vr6, 0
	vshuf4i.d	$vr3, $vr0, 1
	vreplvei.d	$vr4, $vr1, 0
	vfmul.d	$vr4, $vr3, $vr4
	vfadd.d	$vr3, $vr2, $vr4
	vfsub.d	$vr4, $vr2, $vr4
	vori.b	$vr2, $vr3, 0
	vreplvei.d	$vr5, $vr4, 1
	fcmp.cor.d	$fcc0, $fa5, $fa5
	vshuf4i.d	$vr2, $vr4, 12
	bceqz	$fcc0, .LBB0_28
.LBB0_9:
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vfadd.d	$vr1, $vr1, $vr2
	b	.LBB0_14
.LBB0_10:
	fmul.d	$fa2, $fs0, $fs6
	fsub.d	$fa0, $fa1, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fadd.d	$fa1, $fs1, $fa2
	bceqz	$fcc0, .LBB0_30
.LBB0_11:
	vst	$vr1, $sp, 208                  # 16-byte Folded Spill
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	fmul.d	$fa0, $fs1, $fs1
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs1, $fs0
	fsub.d	$fs3, $fa0, $fa1
	fcmp.cor.d	$fcc0, $fs3, $fs3
	fadd.d	$fs2, $fa2, $fa2
	bceqz	$fcc0, .LBB0_32
.LBB0_12:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	fadd.d	$fa2, $fs3, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
	movgr2fr.d	$fa1, $zero
	fmov.d	$fa3, $fs2
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
.LBB0_13:
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_2)
	fadd.d	$fa2, $fs3, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_3)
	movgr2fr.d	$fa1, $zero
	fmov.d	$fa3, $fs2
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vld	$vr3, $sp, 176                  # 16-byte Folded Reload
	vextrins.d	$vr2, $vr3, 16
	vextrins.d	$vr1, $vr0, 16
	vfadd.d	$vr0, $vr2, $vr1
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr1, 0
	vfmul.d	$vr1, $vr1, $vr0
	vld	$vr2, $sp, 208                  # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vori.b	$vr3, $vr0, 0
	vshuf4i.d	$vr3, $vr0, 1
	vfmul.d	$vr3, $vr2, $vr3
	vfadd.d	$vr2, $vr1, $vr3
	vfsub.d	$vr3, $vr1, $vr3
	vreplvei.d	$vr1, $vr3, 1
	fcmp.cor.d	$fcc0, $fa1, $fa1
	vori.b	$vr1, $vr2, 0
	vshuf4i.d	$vr1, $vr3, 12
	bceqz	$fcc0, .LBB0_34
.LBB0_14:
	vreplvei.d	$vr0, $vr1, 1
	vreplvei.d	$vr1, $vr1, 0
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	fld.d	$fs7, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB0_15:
	fcmp.cor.d	$fcc0, $fs2, $fs2
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	bcnez	$fcc0, .LBB0_2
# %bb.16:
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -984
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_17:
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB0_3
# %bb.18:
	fneg.d	$fa3, $fa3
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_19:                               # %.split.us.preheader
	vrepli.b	$vr6, 0
	pcalau12i	$a0, %pc_hi20(.L__const.fast_nuclear_W.neg_1n)
	addi.d	$fp, $a0, %pc_lo12(.L__const.fast_nuclear_W.neg_1n)
	fcmp.cor.d	$fcc0, $fs2, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 80
	movgr2fr.d	$fa0, $zero
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L__const.fast_nuclear_W.denominator_left)
	addi.d	$s0, $a0, %pc_lo12(.L__const.fast_nuclear_W.denominator_left)
	fcmp.cor.d	$fcc0, $fs6, $fs6
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 64
	fcmp.cor.d	$fcc0, $fs7, $fs7
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 32
	pcalau12i	$a0, %pc_hi20(.L__const.fast_nuclear_W.an)
	addi.d	$s1, $a0, %pc_lo12(.L__const.fast_nuclear_W.an)
	move	$s2, $zero
	ori	$s3, $zero, 80
.LBB0_20:                               # %.split.us
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr6, $sp, 160                  # 16-byte Folded Spill
	fldx.d	$fa0, $fp, $s2
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	ld.d	$a0, $sp, 80
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_20 Depth=1
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fldx.d	$fa2, $s0, $s2
	fst.d	$fa2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fa1, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs6
	fmov.d	$fa1, $fs7
	ld.d	$a0, $sp, 64
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=1
	fld.d	$fa3, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa3, $fa2
	fld.d	$fa4, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa4, $fa3, $fa4
	vldi	$vr3, -784
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	add.d	$s4, $s1, $s2
	fmov.d	$fa0, $fa5
	fmov.d	$fa1, $fa4
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
	vldrepl.d	$vr2, $s4, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vextrins.d	$vr1, $vr0, 16
	vfmul.d	$vr0, $vr2, $vr1
	addi.d	$s2, $s2, 8
	vld	$vr6, $sp, 160                  # 16-byte Folded Reload
	vfadd.d	$vr6, $vr6, $vr0
	bne	$s2, $s3, .LBB0_20
	b	.LBB0_7
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=1
	vldi	$vr1, -984
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_24:                               #   in Loop: Header=BB0_20 Depth=1
	fmov.d	$fa0, $fs6
	fmov.d	$fa1, $fs7
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB0_22
# %bb.25:                               #   in Loop: Header=BB0_20 Depth=1
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB0_22
.LBB0_26:
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB0_8
# %bb.27:
	movgr2fr.d	$fa0, $zero
	fmov.d	$fa1, $fa2
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	vst	$vr6, $sp, 160                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	vld	$vr6, $sp, 160                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	b	.LBB0_8
.LBB0_28:
	vreplvei.d	$vr3, $vr3, 0
	fcmp.cor.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB0_9
# %bb.29:
	vreplvei.d	$vr3, $vr6, 0
	vreplvei.d	$vr2, $vr6, 1
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
                                        # kill: def $f3_64 killed $f3_64 killed $vr3
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	fmov.d	$fa2, $fa1
	vextrins.d	$vr2, $vr0, 16
	b	.LBB0_9
.LBB0_30:
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB0_11
# %bb.31:
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	b	.LBB0_11
.LBB0_32:
	fcmp.cun.d	$fcc0, $fs2, $fs2
	bceqz	$fcc0, .LBB0_12
# %bb.33:
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_0)
	fmov.d	$fa3, $fa1
	fadd.d	$fa2, $fa0, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
	movgr2fr.d	$fa1, $zero
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fs2, $fa1
	b	.LBB0_13
.LBB0_34:
	vreplvei.d	$vr2, $vr2, 0
	fcmp.cor.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB0_14
# %bb.35:
	vreplvei.d	$vr3, $vr0, 0
	vreplvei.d	$vr2, $vr0, 1
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
                                        # kill: def $f3_64 killed $f3_64 killed $vr3
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vextrins.d	$vr1, $vr0, 16
	b	.LBB0_14
.LBB0_36:                               # %.split.split.us
	fcmp.cor.d	$fcc0, $fs7, $fs7
	bcnez	$fcc0, .LBB0_5
# %bb.37:                               # %.split.split.us.split.us.preheader
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fneg.d	$fs6, $fa1
	vldi	$vr1, -784
	fsub.d	$fs7, $fa1, $fa0
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_5)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 144                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs6, $fa1
	vldi	$vr1, -784
	fadd.d	$fs7, $fa0, $fa1
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_6)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fneg.d	$fs6, $fa1
	vldi	$vr1, -784
	fsub.d	$fs7, $fa1, $fa0
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_7)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs6, $fa1
	vldi	$vr1, -784
	fadd.d	$fs7, $fa0, $fa1
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_8)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vld	$vr3, $sp, 144                  # 16-byte Folded Reload
	vld	$vr2, $sp, 160                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr2, 16
	lu12i.w	$a0, -362576
	ori	$a0, $a0, 940
	lu32i.d	$a0, 108381
	lu52i.d	$a0, $a0, 1021
	vreplgr2vr.d	$vr2, $a0
	vfmul.d	$vr2, $vr3, $vr2
	vrepli.b	$vr3, 0
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	vld	$vr3, $sp, 128                  # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, 265281
	ori	$a0, $a0, 1390
	lu32i.d	$a0, -213289
	lu52i.d	$a0, $a0, 1020
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr4, $vr3, 16
	lu12i.w	$a0, 110581
	ori	$a0, $a0, 4039
	lu32i.d	$a0, 288693
	lu52i.d	$a0, $a0, 1020
	vreplgr2vr.d	$vr3, $a0
	vfmul.d	$vr3, $vr4, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	vextrins.d	$vr1, $vr0, 16
	lu12i.w	$a0, -68057
	ori	$a0, $a0, 2289
	lu32i.d	$a0, -441816
	lu52i.d	$a0, $a0, 1019
	vreplgr2vr.d	$vr0, $a0
	vfmul.d	$vr0, $vr1, $vr0
	vfadd.d	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fneg.d	$fs6, $fa1
	vldi	$vr1, -784
	fsub.d	$fs7, $fa1, $fa0
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_9)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vextrins.d	$vr1, $vr0, 16
	lu12i.w	$a0, -131043
	ori	$a0, $a0, 3537
	lu32i.d	$a0, -310576
	lu52i.d	$a0, $a0, 1018
	vreplgr2vr.d	$vr0, $a0
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs6, $fa1
	vldi	$vr1, -784
	fadd.d	$fs7, $fa0, $fa1
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_10)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fneg.d	$fs6, $fa1
	vldi	$vr1, -784
	fsub.d	$fs7, $fa1, $fa0
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_11)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs6, $fa1
	vldi	$vr1, -784
	fadd.d	$fs7, $fa0, $fa1
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_12)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fneg.d	$fs6, $fa1
	vldi	$vr1, -784
	fsub.d	$fs7, $fa1, $fa0
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_13)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs6
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa1
	vldi	$vr1, -784
	fadd.d	$fs3, $fa0, $fa1
	fmov.d	$fa0, $fs4
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs1
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_14)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_14)
	fsub.d	$fa2, $fa2, $fa0
	fneg.d	$fa3, $fa1
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	b	.LBB0_6
.Lfunc_end0:
	.size	fast_nuclear_W, .Lfunc_end0-fast_nuclear_W
                                        # -- End function
	.globl	calculate_macro_xs              # -- Begin function calculate_macro_xs
	.p2align	5
	.type	calculate_macro_xs,@function
calculate_macro_xs:                     # @calculate_macro_xs
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	move	$s0, $a0
	vrepli.b	$vr1, 0
	vst	$vr1, $a0, 16
	vst	$vr1, $a0, 0
	ld.d	$a0, $a3, 16
	slli.d	$s5, $a1, 2
	ldx.w	$a0, $a0, $s5
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB1_6
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s3, $a4
	move	$s4, $a2
	fmov.d	$fs0, $fa0
	move	$s6, $zero
	move	$s7, $zero
	move	$s8, $zero
	slli.d	$s1, $a1, 3
	ori	$s2, $zero, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	vld	$vr0, $s4, 16
	vld	$vr1, $s4, 0
	vst	$vr0, $sp, 112
	vst	$vr1, $sp, 96
	vld	$vr0, $fp, 48
	vld	$vr1, $fp, 32
	vld	$vr2, $fp, 16
	vld	$vr3, $fp, 0
	vst	$vr0, $sp, 80
	vst	$vr1, $sp, 64
	vst	$vr2, $sp, 48
	vst	$vr3, $sp, 32
	addi.d	$a0, $sp, 128
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 32
	fmov.d	$fa0, $fs0
	move	$a4, $s3
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calculate_micro_xs_doppler)
	jirl	$ra, $ra, 0
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s1
	fld.d	$fa0, $sp, 128
	fldx.d	$fa1, $a0, $s7
	fld.d	$fa2, $s0, 0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $s0, 0
	fld.d	$fa0, $sp, 136
	fldx.d	$fa1, $a0, $s7
	fld.d	$fa2, $s0, 8
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $s0, 8
	fld.d	$fa0, $sp, 144
	fldx.d	$fa1, $a0, $s7
	fld.d	$fa2, $s0, 16
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $s0, 16
	fld.d	$fa0, $sp, 152
	fldx.d	$fa1, $a0, $s7
	fld.d	$fa2, $s0, 24
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $s0, 24
	ld.d	$a0, $fp, 16
	ldx.w	$a0, $a0, $s5
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 4
	bge	$s8, $a0, .LBB1_6
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s1
	ld.w	$a2, $s4, 28
	ldx.w	$a1, $a0, $s6
	beq	$a2, $s2, .LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	vld	$vr0, $s4, 16
	vld	$vr1, $s4, 0
	vst	$vr0, $sp, 112
	vst	$vr1, $sp, 96
	vld	$vr0, $fp, 48
	vld	$vr1, $fp, 32
	vld	$vr2, $fp, 16
	vld	$vr3, $fp, 0
	vst	$vr0, $sp, 80
	vst	$vr1, $sp, 64
	vst	$vr2, $sp, 48
	vst	$vr3, $sp, 32
	addi.d	$a0, $sp, 128
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 32
	fmov.d	$fa0, $fs0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(calculate_micro_xs)
	jirl	$ra, $ra, 0
	b	.LBB1_3
.LBB1_6:                                # %._crit_edge
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end1:
	.size	calculate_macro_xs, .Lfunc_end1-calculate_macro_xs
                                        # -- End function
	.globl	calculate_micro_xs_doppler      # -- Begin function calculate_micro_xs_doppler
	.p2align	5
	.type	calculate_micro_xs_doppler,@function
calculate_micro_xs_doppler:             # @calculate_micro_xs_doppler
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
	move	$fp, $a3
	ld.d	$a3, $a3, 8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	move	$s1, $a6
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $a4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	frecip.d	$fa1, $fa1
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	ld.w	$a0, $a2, 24
	movfr2gr.s	$a2, $fa0
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	sub.w	$a1, $a2, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	blez	$a0, .LBB2_12
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$a1, $fp, 56
	move	$s6, $zero
	move	$s7, $zero
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s8, $a2, $a1, 3
	slli.d	$s5, $a0, 3
	addi.d	$s0, $s3, 8
	fld.d	$fa0, $sp, 40                   # 8-byte Folded Reload
	fsqrt.d	$fs2, $fa0
	fcmp.cor.d	$fcc0, $fs2, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 64
	ori	$s4, $zero, 3
	movgr2fr.d	$fa0, $zero
	fneg.d	$fs3, $fa0
	ori	$s2, $zero, 2
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	vldi	$vr2, -1016
	fmul.d	$fa0, $fs1, $fa2
	fneg.d	$fa1, $fs1
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	fmadd.d	$fa1, $fa1, $fs1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fsub.d	$fs1, $fs1, $fa0
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	fadd.d	$fs0, $fs1, $fs1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fa0, $fs3
	fadd.d	$fa1, $fs1, $fa1
	fneg.d	$fa0, $fa0
	fst.d	$fa1, $s0, -8
	fst.d	$fa0, $s0, 0
	addi.d	$s7, $s7, 8
	addi.d	$s0, $s0, 16
	addi.w	$s6, $s6, 1
	beq	$s5, $s7, .LBB2_12
.LBB2_5:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	fldx.d	$fs0, $a0, $s7
	fmov.d	$fa0, $fs2
	ld.d	$a0, $sp, 64
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB2_10
# %bb.6:                                # %.lr.ph.i.split
                                        #   in Loop: Header=BB2_5 Depth=1
	fmul.d	$fs1, $fs0, $fa0
	beq	$s6, $s4, .LBB2_11
.LBB2_7:                                # %.lr.ph.i.split
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$s6, $s2, .LBB2_2
# %bb.8:                                # %.lr.ph.i.split
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 1
	bne	$s6, $a0, .LBB2_4
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fadd.d	$fs1, $fs1, $fa0
	b	.LBB2_4
.LBB2_10:                               # %call.sqrt
                                        #   in Loop: Header=BB2_5 Depth=1
	fld.d	$fa0, $sp, 40                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs0, $fa0
	bne	$s6, $s4, .LBB2_7
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	fneg.d	$fa0, $fs1
	vldi	$vr2, -978
	fmadd.d	$fa0, $fa0, $fs1, $fa2
	fmul.d	$fa0, $fs1, $fa0
	vldi	$vr1, -872
	fmul.d	$fa1, $fs1, $fa1
	b	.LBB2_3
.LBB2_12:                               # %calculate_sig_T.exit
	ld.d	$a0, $fp, 48
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s4, $a1, 3
	ldx.d	$a0, $a0, $s4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$a2, $a0, $a1
	fldx.d	$fa0, $a0, $a1
	fld.d	$fa1, $a2, 8
	fld.d	$fa2, $a2, 16
	ld.w	$a0, $a2, 24
	ld.w	$a1, $a2, 28
	fld.d	$fa3, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fs1, $fa3, $fa0
	fmul.d	$fs2, $fa3, $fa1
	fmul.d	$fs3, $fa3, $fa2
	bge	$a0, $a1, .LBB2_29
# %bb.13:                               # %.lr.ph
	slli.d	$a2, $a0, 6
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$s5, $a2, 64
	sub.d	$s6, $a1, $a0
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	ldx.d	$a0, $a0, $s4
	add.d	$a1, $a0, $s5
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	fld.d	$fs5, $a1, -48
	fld.d	$fs6, $a1, -40
	fld.d	$fa2, $a1, -32
	fst.d	$fa2, $sp, 48                   # 8-byte Folded Spill
	fld.d	$fs4, $a1, -24
	fld.d	$fa2, $a1, -16
	fst.d	$fa2, $sp, 64                   # 8-byte Folded Spill
	fld.d	$fa2, $a1, -8
	fst.d	$fa2, $sp, 56                   # 8-byte Folded Spill
	ldx.h	$s0, $a0, $s5
	fld.d	$fa2, $sp, 40                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	vldi	$vr2, -928
	fmul.d	$fs7, $fa0, $fa2
	vldi	$vr0, -800
	fmul.d	$fs0, $fa1, $fa0
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(cabs)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1000
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	ld.d	$a0, $s7, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $s7, 0
.LBB2_16:                               #   in Loop: Header=BB2_14 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 0
	fmov.d	$fa0, $fs7
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(fast_nuclear_W)
	jirl	$ra, $ra, 0
	fmul.d	$fa2, $fs5, $fa0
	fmul.d	$fa3, $fs6, $fa1
	fmul.d	$fa5, $fs5, $fa1
	fmul.d	$fa6, $fs6, $fa0
	fsub.d	$fa4, $fa2, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa5, $fa5, $fa6
	bceqz	$fcc0, .LBB2_21
.LBB2_17:                               #   in Loop: Header=BB2_14 Depth=1
	alsl.d	$a0, $s0, $s3, 4
	slli.d	$a1, $s0, 4
	fldx.d	$fa2, $s3, $a1
	fld.d	$fa3, $a0, 8
	fmul.d	$fa6, $fa4, $fa2
	fmul.d	$fa7, $fa5, $fa3
	fsub.d	$fs5, $fa6, $fa7
	fcmp.cor.d	$fcc0, $fs5, $fs5
	bceqz	$fcc0, .LBB2_23
.LBB2_18:                               #   in Loop: Header=BB2_14 Depth=1
	fld.d	$fa4, $sp, 48                   # 8-byte Folded Reload
	fmul.d	$fa2, $fa4, $fa0
	fmul.d	$fa3, $fs4, $fa1
	fsub.d	$fs6, $fa2, $fa3
	fcmp.cor.d	$fcc0, $fs6, $fs6
	bceqz	$fcc0, .LBB2_25
.LBB2_19:                               #   in Loop: Header=BB2_14 Depth=1
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fmul.d	$fa2, $fa5, $fa0
	fld.d	$fa6, $sp, 56                   # 8-byte Folded Reload
	fmul.d	$fa3, $fa6, $fa1
	fsub.d	$fa4, $fa2, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	bceqz	$fcc0, .LBB2_27
.LBB2_20:                               #   in Loop: Header=BB2_14 Depth=1
	fadd.d	$fs1, $fs1, $fs5
	fadd.d	$fs2, $fs2, $fs6
	fadd.d	$fs3, $fs3, $fa4
	addi.w	$s6, $s6, -1
	addi.d	$s5, $s5, 72
	bnez	$s6, .LBB2_14
	b	.LBB2_30
.LBB2_21:                               #   in Loop: Header=BB2_14 Depth=1
	fcmp.cor.d	$fcc0, $fa5, $fa5
	bcnez	$fcc0, .LBB2_17
# %bb.22:                               #   in Loop: Header=BB2_14 Depth=1
	fmov.d	$fs7, $fa0
	fmov.d	$fa0, $fs5
	fmov.d	$fs0, $fa1
	fmov.d	$fa1, $fs6
	fmov.d	$fa2, $fs7
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fa4, $fa0
	fmov.d	$fa0, $fs7
	fmov.d	$fa5, $fa1
	fmov.d	$fa1, $fs0
	b	.LBB2_17
.LBB2_23:                               #   in Loop: Header=BB2_14 Depth=1
	fmul.d	$fa6, $fa4, $fa3
	fmul.d	$fa7, $fa5, $fa2
	fadd.d	$fa6, $fa7, $fa6
	fcmp.cor.d	$fcc0, $fa6, $fa6
	bcnez	$fcc0, .LBB2_18
# %bb.24:                               #   in Loop: Header=BB2_14 Depth=1
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa4
	fmov.d	$fs5, $fa1
	fmov.d	$fa1, $fa5
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fs5
	fmov.d	$fs5, $fa0
	fmov.d	$fa0, $fs0
	b	.LBB2_18
.LBB2_25:                               #   in Loop: Header=BB2_14 Depth=1
	fmul.d	$fa2, $fa4, $fa1
	fmul.d	$fa3, $fs4, $fa0
	fadd.d	$fa2, $fa2, $fa3
	fcmp.cor.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB2_19
# %bb.26:                               #   in Loop: Header=BB2_14 Depth=1
	fmov.d	$fs0, $fa0
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	fmov.d	$fs6, $fa1
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $fs0
	fmov.d	$fa3, $fs6
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fs6
	fmov.d	$fs6, $fa0
	fmov.d	$fa0, $fs0
	b	.LBB2_19
.LBB2_27:                               #   in Loop: Header=BB2_14 Depth=1
	fmov.d	$fa3, $fa1
	fmul.d	$fa1, $fa5, $fa1
	fmov.d	$fa2, $fa0
	fmul.d	$fa0, $fa6, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB2_20
# %bb.28:                               #   in Loop: Header=BB2_14 Depth=1
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fa1, $sp, 56                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fa4, $fa0
	b	.LBB2_20
.LBB2_29:
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB2_30:                               # %._crit_edge
	fsub.d	$fa0, $fs1, $fs2
	fst.d	$fs1, $s2, 0
	fst.d	$fs2, $s2, 8
	fst.d	$fs3, $s2, 16
	fst.d	$fa0, $s2, 24
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end2:
	.size	calculate_micro_xs_doppler, .Lfunc_end2-calculate_micro_xs_doppler
                                        # -- End function
	.globl	calculate_micro_xs              # -- Begin function calculate_micro_xs
	.p2align	5
	.type	calculate_micro_xs,@function
calculate_micro_xs:                     # @calculate_micro_xs
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
	move	$s0, $a3
	ld.d	$a3, $a3, 8
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	move	$s1, $a4
	fmov.d	$fs5, $fa0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fdiv.d	$fa0, $fs5, $fa0
	ftintrz.w.d	$fa0, $fa0
	ld.w	$a0, $a2, 24
	movfr2gr.s	$a2, $fa0
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	sub.w	$a1, $a2, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a0, .LBB3_12
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$a1, $s0, 56
	move	$s4, $zero
	move	$s5, $zero
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s6, $a2, $a1, 3
	slli.d	$s7, $a0, 3
	addi.d	$s8, $s1, 8
	fsqrt.d	$fs2, $fs5
	fcmp.cor.d	$fcc0, $fs2, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 80
	ori	$s3, $zero, 3
	movgr2fr.d	$fa0, $zero
	fneg.d	$fs3, $fa0
	ori	$fp, $zero, 2
	ori	$s2, $zero, 1
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_5 Depth=1
	vldi	$vr2, -1016
	fmul.d	$fa0, $fs0, $fa2
	fneg.d	$fa1, $fs0
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	fmadd.d	$fa1, $fa1, $fs0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fsub.d	$fs0, $fs0, $fa0
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	fadd.d	$fs0, $fs0, $fs0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fa0, $fs3
	fadd.d	$fa1, $fs1, $fa1
	fneg.d	$fa0, $fa0
	fst.d	$fa1, $s8, -8
	fst.d	$fa0, $s8, 0
	addi.d	$s5, $s5, 8
	addi.d	$s8, $s8, 16
	addi.w	$s4, $s4, 1
	beq	$s7, $s5, .LBB3_12
.LBB3_5:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	fldx.d	$fs0, $a0, $s5
	fmov.d	$fa0, $fs2
	ld.d	$a0, $sp, 80
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB3_10
# %bb.6:                                # %.lr.ph.i.split
                                        #   in Loop: Header=BB3_5 Depth=1
	fmul.d	$fs0, $fs0, $fa0
	beq	$s4, $s3, .LBB3_11
.LBB3_7:                                # %.lr.ph.i.split
                                        #   in Loop: Header=BB3_5 Depth=1
	beq	$s4, $fp, .LBB3_2
# %bb.8:                                # %.lr.ph.i.split
                                        #   in Loop: Header=BB3_5 Depth=1
	bne	$s4, $s2, .LBB3_4
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fadd.d	$fs0, $fs0, $fa0
	b	.LBB3_4
.LBB3_10:                               # %call.sqrt
                                        #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs0, $fa0
	bne	$s4, $s3, .LBB3_7
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	fneg.d	$fa0, $fs0
	vldi	$vr2, -978
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	fmul.d	$fa0, $fs0, $fa0
	vldi	$vr1, -872
	fmul.d	$fa1, $fs0, $fa1
	b	.LBB3_3
.LBB3_12:                               # %calculate_sig_T.exit
	ld.d	$a0, $s0, 48
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	slli.d	$s2, $a1, 3
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$a2, $a0, $a1
	fldx.d	$fa0, $a0, $a1
	fld.d	$fa1, $a2, 8
	fld.d	$fa2, $a2, 16
	ld.w	$a0, $a2, 24
	ld.w	$a1, $a2, 28
	fmul.d	$fs2, $fs5, $fa0
	fmul.d	$fs3, $fs5, $fa1
	fmul.d	$fs6, $fs5, $fa2
	bge	$a0, $a1, .LBB3_29
# %bb.13:                               # %.lr.ph
	fsqrt.d	$fa0, $fs5
	slli.d	$a2, $a0, 6
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$s3, $a2, 64
	sub.d	$s4, $a1, $a0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fcmp.cor.d	$fcc0, $fa0, $fa0
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 40
	movgr2fr.d	$fa0, $zero
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	ldx.d	$a0, $a0, $s2
	add.d	$a1, $a0, $s3
	fld.d	$fs4, $a1, -64
	fld.d	$fa3, $a1, -56
	fld.d	$fs1, $a1, -48
	fld.d	$fs0, $a1, -40
	fld.d	$fa0, $a1, -32
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fld.d	$fs7, $a1, -24
	fld.d	$fa0, $a1, -16
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fld.d	$fa0, $a1, -8
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	ldx.h	$fp, $a0, $s3
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 40
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB3_20
.LBB3_15:                               # %.split
                                        #   in Loop: Header=BB3_14 Depth=1
	fsub.d	$fa2, $fs4, $fa0
	vldi	$vr1, -912
	fld.d	$fa0, $sp, 32                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
	fdiv.d	$fs4, $fa0, $fs5
	fdiv.d	$fs5, $fa1, $fs5
	fmul.d	$fa0, $fs1, $fs4
	fmul.d	$fa1, $fs0, $fs5
	fmul.d	$fa2, $fs1, $fs5
	fmul.d	$fa3, $fs0, $fs4
	fsub.d	$fa0, $fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fadd.d	$fa1, $fa2, $fa3
	bceqz	$fcc0, .LBB3_21
.LBB3_16:                               #   in Loop: Header=BB3_14 Depth=1
	alsl.d	$a0, $fp, $s1, 4
	slli.d	$a1, $fp, 4
	fldx.d	$fa2, $s1, $a1
	fld.d	$fa3, $a0, 8
	fmul.d	$fa4, $fa0, $fa2
	fmul.d	$fa5, $fa1, $fa3
	fsub.d	$fs1, $fa4, $fa5
	fcmp.cor.d	$fcc0, $fs1, $fs1
	bceqz	$fcc0, .LBB3_23
.LBB3_17:                               #   in Loop: Header=BB3_14 Depth=1
	fld.d	$fa2, $sp, 64                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fs4
	fmul.d	$fa1, $fs7, $fs5
	fsub.d	$fs0, $fa0, $fa1
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB3_25
.LBB3_18:                               #   in Loop: Header=BB3_14 Depth=1
	fld.d	$fa2, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fs4
	fld.d	$fa3, $sp, 72                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa3, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_27
.LBB3_19:                               #   in Loop: Header=BB3_14 Depth=1
	fadd.d	$fs2, $fs2, $fs1
	fadd.d	$fs3, $fs3, $fs0
	fadd.d	$fs6, $fs6, $fa0
	addi.w	$s4, $s4, -1
	addi.d	$s3, $s3, 72
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	bnez	$s4, .LBB3_14
	b	.LBB3_30
.LBB3_20:                               # %call.sqrt105
                                        #   in Loop: Header=BB3_14 Depth=1
	fmov.d	$fa0, $fs5
	fmov.d	$fs5, $fa3
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa3, $fs5
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	b	.LBB3_15
.LBB3_21:                               #   in Loop: Header=BB3_14 Depth=1
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB3_16
# %bb.22:                               #   in Loop: Header=BB3_14 Depth=1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fs4
	fmov.d	$fa3, $fs5
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB3_16
.LBB3_23:                               #   in Loop: Header=BB3_14 Depth=1
	fmul.d	$fa4, $fa0, $fa3
	fmul.d	$fa5, $fa1, $fa2
	fadd.d	$fa4, $fa5, $fa4
	fcmp.cor.d	$fcc0, $fa4, $fa4
	bcnez	$fcc0, .LBB3_17
# %bb.24:                               #   in Loop: Header=BB3_14 Depth=1
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	b	.LBB3_17
.LBB3_25:                               #   in Loop: Header=BB3_14 Depth=1
	fmul.d	$fa0, $fa2, $fs5
	fmul.d	$fa1, $fs7, $fs4
	fadd.d	$fa0, $fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB3_18
# %bb.26:                               #   in Loop: Header=BB3_14 Depth=1
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs7
	fmov.d	$fa2, $fs4
	fmov.d	$fa3, $fs5
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	b	.LBB3_18
.LBB3_27:                               #   in Loop: Header=BB3_14 Depth=1
	fmul.d	$fa1, $fa2, $fs5
	fmul.d	$fa2, $fa3, $fs4
	fadd.d	$fa1, $fa1, $fa2
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB3_19
# %bb.28:                               #   in Loop: Header=BB3_14 Depth=1
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fa1, $sp, 72                   # 8-byte Folded Reload
	fmov.d	$fa2, $fs4
	fmov.d	$fa3, $fs5
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB3_19
.LBB3_29:
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
.LBB3_30:                               # %._crit_edge
	fsub.d	$fa0, $fs2, $fs3
	fst.d	$fs2, $s5, 0
	fst.d	$fs3, $s5, 8
	fst.d	$fs6, $s5, 16
	fst.d	$fa0, $s5, 24
	fld.d	$fs7, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end3:
	.size	calculate_micro_xs, .Lfunc_end3-calculate_micro_xs
                                        # -- End function
	.globl	calculate_sig_T                 # -- Begin function calculate_sig_T
	.p2align	5
	.type	calculate_sig_T,@function
calculate_sig_T:                        # @calculate_sig_T
# %bb.0:
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
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a1, 24
	blez	$a1, .LBB4_12
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	fmov.d	$fs0, $fa0
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$s4, $a3, 8
	slli.d	$s5, $a0, 3
	fsqrt.d	$fs3, $fa0
	fcmp.cor.d	$fcc0, $fs3, $fs3
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	ori	$s6, $zero, 3
	movgr2fr.d	$fa0, $zero
	fneg.d	$fs4, $fa0
	ori	$s7, $zero, 2
	ori	$s8, $zero, 1
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_5 Depth=1
	vldi	$vr2, -1016
	fmul.d	$fa0, $fs1, $fa2
	fneg.d	$fa1, $fs1
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	fmadd.d	$fa1, $fa1, $fs1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fsub.d	$fs1, $fs1, $fa0
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	fadd.d	$fs1, $fs1, $fs1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fa0, $fs4
	fadd.d	$fa1, $fs2, $fa1
	fneg.d	$fa0, $fa0
	fst.d	$fa1, $s4, -8
	fst.d	$fa0, $s4, 0
	ld.w	$a0, $fp, 24
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 16
	addi.d	$s2, $s2, 8
	addi.w	$s1, $s1, 1
	bge	$s3, $a0, .LBB4_12
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s5
	fldx.d	$fs1, $a0, $s2
	fmov.d	$fa0, $fs3
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB4_10
# %bb.6:                                # %.split
                                        #   in Loop: Header=BB4_5 Depth=1
	fmul.d	$fs1, $fs1, $fa0
	beq	$s1, $s6, .LBB4_11
.LBB4_7:                                # %.split
                                        #   in Loop: Header=BB4_5 Depth=1
	beq	$s1, $s7, .LBB4_2
# %bb.8:                                # %.split
                                        #   in Loop: Header=BB4_5 Depth=1
	bne	$s1, $s8, .LBB4_4
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fadd.d	$fs1, $fs1, $fa0
	b	.LBB4_4
.LBB4_10:                               # %call.sqrt
                                        #   in Loop: Header=BB4_5 Depth=1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs1, $fa0
	bne	$s1, $s6, .LBB4_7
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	fneg.d	$fa0, $fs1
	vldi	$vr2, -978
	fmadd.d	$fa0, $fa0, $fs1, $fa2
	fmul.d	$fa0, $fs1, $fa0
	vldi	$vr1, -872
	fmul.d	$fa1, $fs1, $fa1
	b	.LBB4_3
.LBB4_12:                               # %._crit_edge
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	calculate_sig_T, .Lfunc_end4-calculate_sig_T
                                        # -- End function
	.type	.L__const.fast_nuclear_W.an,@object # @__const.fast_nuclear_W.an
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.fast_nuclear_W.an:
	.dword	0x3fd1a75da77b03ac              # double 0.27584019999999998
	.dword	0x3fccbed740c4156e              # double 0.224574
	.dword	0x3fc467b51aff5fc7              # double 0.1594149
	.dword	0x3fb94228ef6278f1              # double 0.09866577
	.dword	0x3fab42d0e001ddd1              # double 0.053244140000000002
	.dword	0x3f99a74553c72771              # double 0.025052149999999999
	.dword	0x3f850c5aac48f3ba              # double 0.01027747
	.dword	0x3f6e1d7984f391aa              # double 0.003676164
	.dword	0x3f52c8be8f0b3a0a              # double 0.0011464940000000001
	.dword	0x3f346e6a1e8a624d              # double 3.1175700000000002E-4
	.size	.L__const.fast_nuclear_W.an, 80

	.type	.L__const.fast_nuclear_W.neg_1n,@object # @__const.fast_nuclear_W.neg_1n
	.p2align	3, 0x0
.L__const.fast_nuclear_W.neg_1n:
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.dword	0xbff0000000000000              # double -1
	.dword	0x3ff0000000000000              # double 1
	.size	.L__const.fast_nuclear_W.neg_1n, 80

	.type	.L__const.fast_nuclear_W.denominator_left,@object # @__const.fast_nuclear_W.denominator_left
	.p2align	3, 0x0
.L__const.fast_nuclear_W.denominator_left:
	.dword	0x4023bd3cbc48f10b              # double 9.8696040000000007
	.dword	0x4043bd3cddd6e04c              # double 39.47842
	.dword	0x405634e4649906cd              # double 88.826440000000005
	.dword	0x4063bd3d07c84b5e              # double 157.91370000000001
	.dword	0x406ed7aee631f8a1              # double 246.74010000000001
	.dword	0x407634e48e8a71de              # double 355.30579999999998
	.dword	0x407e39c504816f00              # double 483.61059999999998
	.dword	0x4083bd3cd35a8588              # double 631.65470000000005
	.dword	0x4088fb810624dd2f              # double 799.43799999999999
	.dword	0x408ed7aee631f8a1              # double 986.96040000000005
	.size	.L__const.fast_nuclear_W.denominator_left, 80

	.section	".note.GNU-stack","",@progbits
	.addrsig
