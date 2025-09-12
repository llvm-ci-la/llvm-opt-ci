	.file	"psymodel.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function L3psycho_anal
.LCPI0_0:
	.dword	0x3f69e7c6e43390b7              # double 0.0031622776601683794
	.dword	0x3f6c9323c534cddb              # double 0.0034881304397005159
.LCPI0_1:
	.dword	0x3f730c0cd2dc51a4              # double 0.0046501637387063345
	.dword	0x3f7e1800bd1fad13              # double 0.0073471096857063043
.LCPI0_2:
	.dword	0x3f8b4f7e2b2c2a91              # double 0.013335214321633234
	.dword	0x3f9b56adfe1a8d8a              # double 0.026697844156513585
.LCPI0_3:
	.dword	0x3faccab8602d2692              # double 0.056234132519034877
	.dword	0x3fbe5289b7ccc08b              # double 0.11844692933368799
.LCPI0_4:
	.dword	0x3fce5a84719edcce              # double 0.23713737056616541
	.dword	0x3fdb8bdb0dfb81ef              # double 0.43041111340974586
.LCPI0_5:
	.dword	0x3fe5c2da5de54871              # double 0.68003576601974036
	.dword	0x3fed02b917109c2c              # double 0.90658239846096
.LCPI0_6:
	.dword	0x3f69e7c6e43390b7              # double 0.0031622776601683794
	.dword	0x3f6ac06f83763a3b              # double 0.0032655885694972387
.LCPI0_7:
	.dword	0x3f6d706639d5c887              # double 0.0035936352348296427
	.dword	0x3f71397ea6f6b13a              # double 0.0042052218772535236
.LCPI0_8:
	.dword	0x3f755ba8c82a8ba8              # double 0.0052143662493645895
	.dword	0x3f7beda7a0c5893e              # double 0.0068184421510031883
.LCPI0_9:
	.dword	0x3f832421767ffbc6              # double 0.0093462576187429806
	.dword	0x3f8b4f7e2b2c2a91              # double 0.013335214321633234
.LCPI0_10:
	.dword	0x3f941eab43952c27              # double 0.019648242950364072
	.dword	0x3f9e596c3b309b4b              # double 0.029637995827353419
.LCPI0_11:
	.dword	0x3fa73840d9d607da              # double 0.045351053801837529
	.dword	0x3fb1d9c04928942a              # double 0.069728868351902534
.LCPI0_12:
	.dword	0x3fbb507a530a8d1b              # double 0.10669674422620228
	.dword	0x3fc499d4c1c1c1dc              # double 0.16094455204758062
.LCPI0_13:
	.dword	0x3fce5a84719edcce              # double 0.23713737056616541
	.dword	0x3fd5a779ebdbd985              # double 0.33834693940243482
.LCPI0_14:
	.dword	0x3fddae9ef4bedb09              # double 0.4637830152600349
	.dword	0x3fe36813fc23e21a              # double 0.60645484205366817
.LCPI0_15:
	.dword	0x3fe81049c5a7f437              # double 0.75198830227566915
	.dword	0x3fec28aef2028a7f              # double 0.87996623294414167
	.text
	.globl	L3psycho_anal
	.p2align	5
	.type	L3psycho_anal,@function
L3psycho_anal:                          # @L3psycho_anal
# %bb.0:
	addi.d	$sp, $sp, -1296
	st.d	$ra, $sp, 1288                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1208                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1200                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1192                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1184                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1176                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1168                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1160                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1152                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1144                 # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$s5, $a2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cw_lower_index)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cw_upper_index)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cw)
	addi.d	$s0, $a0, %pc_lo12(L3psycho_anal.cw)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w2_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w2_s)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w1_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w1_s)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bo_s)
	addi.d	$s4, $a0, %pc_lo12(L3psycho_anal.bo_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bu_s)
	addi.d	$s6, $a0, %pc_lo12(L3psycho_anal.bu_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w2_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w2_l)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w1_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w1_l)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bo_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.bo_l)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bu_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.bu_l)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.npart_l_orig)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.npart_s_orig)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.npart_l)
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(L3psycho_anal.npart_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3ind_s)
	addi.d	$s2, $a0, %pc_lo12(L3psycho_anal.s3ind_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3ind)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.s3ind)
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	bnez	$a2, .LBB0_68
# %bb.1:
	ld.d	$a0, $s3, 168
	bnez	$a0, .LBB0_68
# %bb.2:
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.blocktype_old)
	ori	$a2, $zero, 3
	ld.w	$s7, $s3, 16
	lu32i.d	$a2, 3
	lu12i.w	$a0, 7
	ori	$a3, $a0, 3327
	st.d	$a2, $a1, %pc_lo12(L3psycho_anal.blocktype_old)
	st.d	$a6, $sp, 592                   # 8-byte Folded Spill
	st.d	$a7, $sp, 576                   # 8-byte Folded Spill
	blt	$a3, $s7, .LBB0_6
# %bb.3:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3712
	beq	$s7, $a0, .LBB0_9
# %bb.4:
	lu12i.w	$a0, 5
	ori	$a1, $a0, 1570
	beq	$s7, $a1, .LBB0_9
# %bb.5:
	ori	$a0, $a0, 3520
	beq	$s7, $a0, .LBB0_9
	b	.LBB0_274
.LBB0_6:
	ori	$a0, $a0, 3328
	beq	$s7, $a0, .LBB0_9
# %bb.7:
	lu12i.w	$a0, 10
	ori	$a0, $a0, 3140
	beq	$s7, $a0, .LBB0_9
# %bb.8:
	lu12i.w	$a0, 11
	ori	$a0, $a0, 2944
	bne	$s7, $a0, .LBB0_274
.LBB0_9:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.rx_sav)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.rx_sav)
	lu12i.w	$a1, 4
	ori	$fp, $a1, 32
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.ax_sav)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.ax_sav)
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bx_sav)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.bx_sav)
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.en)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.en)
	ori	$a2, $zero, 1952
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.thm)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.thm)
	ori	$a2, $zero, 1952
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s3, 152
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.b	$a0, $a1, %pc_lo12(L3psycho_anal.cw_lower_index)
	movgr2fr.w	$fa1, $zero
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fcvt.d.s	$fa0, $fa0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	lu52i.d	$a0, $zero, 1033
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	lu12i.w	$a0, -380928
	lu32i.d	$a0, 87001
	lu52i.d	$a0, $a0, 1046
	movgr2fr.d	$fa1, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	bstrpick.d	$a0, $s7, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ori	$a1, $zero, 6
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 509
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 509
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(L3psycho_anal.cw_upper_index)
	lu12i.w	$a0, 257228
	ori	$a0, $a0, 3277
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $s0, 0
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 32
	vst	$vr0, $s0, 48
	vst	$vr0, $s0, 64
	vst	$vr0, $s0, 80
	vst	$vr0, $s0, 96
	vst	$vr0, $s0, 112
	vst	$vr0, $s0, 128
	vst	$vr0, $s0, 144
	vst	$vr0, $s0, 160
	vst	$vr0, $s0, 176
	vst	$vr0, $s0, 192
	vst	$vr0, $s0, 208
	vst	$vr0, $s0, 224
	vst	$vr0, $s0, 240
	vst	$vr0, $s0, 256
	vst	$vr0, $s0, 272
	vst	$vr0, $s0, 288
	vst	$vr0, $s0, 304
	vst	$vr0, $s0, 320
	vst	$vr0, $s0, 336
	vst	$vr0, $s0, 352
	vst	$vr0, $s0, 368
	vst	$vr0, $s0, 384
	vst	$vr0, $s0, 400
	vst	$vr0, $s0, 416
	vst	$vr0, $s0, 432
	vst	$vr0, $s0, 448
	vst	$vr0, $s0, 464
	vst	$vr0, $s0, 480
	vst	$vr0, $s0, 496
	vst	$vr0, $s0, 512
	vst	$vr0, $s0, 528
	vst	$vr0, $s0, 544
	vst	$vr0, $s0, 560
	vst	$vr0, $s0, 576
	vst	$vr0, $s0, 592
	vst	$vr0, $s0, 608
	vst	$vr0, $s0, 624
	vst	$vr0, $s0, 640
	vst	$vr0, $s0, 656
	vst	$vr0, $s0, 672
	vst	$vr0, $s0, 688
	vst	$vr0, $s0, 704
	vst	$vr0, $s0, 720
	vst	$vr0, $s0, 736
	vst	$vr0, $s0, 752
	vst	$vr0, $s0, 768
	vst	$vr0, $s0, 784
	vst	$vr0, $s0, 800
	vst	$vr0, $s0, 816
	vst	$vr0, $s0, 832
	vst	$vr0, $s0, 848
	vst	$vr0, $s0, 864
	vst	$vr0, $s0, 880
	vst	$vr0, $s0, 896
	vst	$vr0, $s0, 912
	vst	$vr0, $s0, 928
	vst	$vr0, $s0, 944
	vst	$vr0, $s0, 960
	vst	$vr0, $s0, 976
	vst	$vr0, $s0, 992
	vst	$vr0, $s0, 1008
	vst	$vr0, $s0, 1024
	vst	$vr0, $s0, 1040
	vst	$vr0, $s0, 1056
	vst	$vr0, $s0, 1072
	vst	$vr0, $s0, 1088
	vst	$vr0, $s0, 1104
	vst	$vr0, $s0, 1120
	vst	$vr0, $s0, 1136
	vst	$vr0, $s0, 1152
	vst	$vr0, $s0, 1168
	vst	$vr0, $s0, 1184
	vst	$vr0, $s0, 1200
	vst	$vr0, $s0, 1216
	vst	$vr0, $s0, 1232
	vst	$vr0, $s0, 1248
	vst	$vr0, $s0, 1264
	vst	$vr0, $s0, 1280
	vst	$vr0, $s0, 1296
	vst	$vr0, $s0, 1312
	vst	$vr0, $s0, 1328
	vst	$vr0, $s0, 1344
	vst	$vr0, $s0, 1360
	vst	$vr0, $s0, 1376
	vst	$vr0, $s0, 1392
	vst	$vr0, $s0, 1408
	vst	$vr0, $s0, 1424
	vst	$vr0, $s0, 1440
	vst	$vr0, $s0, 1456
	vst	$vr0, $s0, 1472
	vst	$vr0, $s0, 1488
	vst	$vr0, $s0, 1504
	vst	$vr0, $s0, 1520
	vst	$vr0, $s0, 1536
	vst	$vr0, $s0, 1552
	vst	$vr0, $s0, 1568
	vst	$vr0, $s0, 1584
	vst	$vr0, $s0, 1600
	vst	$vr0, $s0, 1616
	vst	$vr0, $s0, 1632
	vst	$vr0, $s0, 1648
	vst	$vr0, $s0, 1664
	vst	$vr0, $s0, 1680
	vst	$vr0, $s0, 1696
	vst	$vr0, $s0, 1712
	vst	$vr0, $s0, 1728
	vst	$vr0, $s0, 1744
	vst	$vr0, $s0, 1760
	vst	$vr0, $s0, 1776
	vst	$vr0, $s0, 1792
	vst	$vr0, $s0, 1808
	vst	$vr0, $s0, 1824
	vst	$vr0, $s0, 1840
	vst	$vr0, $s0, 1856
	vst	$vr0, $s0, 1872
	vst	$vr0, $s0, 1888
	vst	$vr0, $s0, 1904
	vst	$vr0, $s0, 1920
	vst	$vr0, $s0, 1936
	vst	$vr0, $s0, 1952
	vst	$vr0, $s0, 1968
	vst	$vr0, $s0, 1984
	vst	$vr0, $s0, 2000
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_0)
	vst	$vr0, $s0, 2016
	vst	$vr0, $s0, 2032
	stptr.w	$a0, $s0, 2048
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.mld_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.mld_s)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_2)
	vst	$vr1, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr2, $a0, 32
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_3)
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_6)
	vst	$vr0, $a0, 48
	vst	$vr1, $a0, 64
	vst	$vr2, $a0, 80
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.mld_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.mld_l)
	pcalau12i	$a1, %pc_hi20(.LCPI0_7)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_7)
	vst	$vr3, $a0, 0
	vst	$vr0, $a0, 16
	pcalau12i	$a1, %pc_hi20(.LCPI0_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_8)
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_9)
	pcalau12i	$a1, %pc_hi20(.LCPI0_10)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_10)
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_11)
	vst	$vr0, $a0, 32
	vst	$vr1, $a0, 48
	vst	$vr2, $a0, 64
	vst	$vr3, $a0, 80
	pcalau12i	$a1, %pc_hi20(.LCPI0_12)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_12)
	pcalau12i	$a1, %pc_hi20(.LCPI0_13)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_13)
	pcalau12i	$a1, %pc_hi20(.LCPI0_14)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_14)
	pcalau12i	$a1, %pc_hi20(.LCPI0_15)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_15)
	vst	$vr0, $a0, 96
	vst	$vr1, $a0, 112
	vst	$vr2, $a0, 128
	vst	$vr3, $a0, 144
	lu12i.w	$a1, 18980
	ori	$a1, $a1, 1920
	lu32i.d	$a1, -66346
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, 160
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.partition_l)
	addi.d	$s0, $a0, %pc_lo12(L3psycho_anal.partition_l)
	ori	$a1, $zero, 255
	ori	$a2, $zero, 2052
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s1, $s3
	ld.w	$a0, $s3, 16
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56
	st.d	$s4, $sp, 48
	st.d	$s6, $sp, 40
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.numlines_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.numlines_l)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.numlines_s)
	addi.d	$fp, $a1, %pc_lo12(L3psycho_anal.numlines_s)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.minval)
	addi.d	$a3, $a1, %pc_lo12(L3psycho_anal.minval)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.qthr_l)
	addi.d	$a4, $a1, %pc_lo12(L3psycho_anal.qthr_l)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.s3_l)
	addi.d	$s8, $a1, %pc_lo12(L3psycho_anal.s3_l)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.s3_s)
	addi.d	$s7, $a1, %pc_lo12(L3psycho_anal.s3_s)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.qthr_s)
	addi.d	$a7, $a1, %pc_lo12(L3psycho_anal.qthr_s)
	move	$a1, $fp
	move	$a2, $s0
	move	$a5, $s8
	move	$a6, $s7
	pcaddu18i	$ra, %call36(L3para_read)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	vrepli.b	$vr0, 0
	ori	$a1, $zero, 2048
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_10:                               # %vector.body1472
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr2, $s0, $a0
	add.d	$a2, $s0, $a0
	vld	$vr3, $a2, 16
	vmax.w	$vr0, $vr2, $vr0
	addi.d	$a0, $a0, 32
	vmax.w	$vr1, $vr3, $vr1
	bne	$a0, $a1, .LBB0_10
# %bb.11:                               # %middle.block1477
	vmax.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	ldptr.w	$a0, $s0, 2048
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a1, $vr0, 0
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$t1, $a0, $a1
	addi.w	$a6, $t1, 1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	st.w	$a6, $a0, %pc_lo12(L3psycho_anal.npart_l_orig)
	addi.d	$a2, $s7, -16
	addi.d	$a3, $zero, -2
	addi.w	$a4, $zero, -1
	ld.d	$t5, $sp, 560                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	addi.d	$fp, $fp, 4
	bgez	$a0, .LBB0_12
# %bb.13:
	ld.d	$t4, $sp, 336                   # 8-byte Folded Reload
	ld.w	$t0, $t4, 80
	addi.w	$a5, $a3, 1
	ld.w	$a7, $s4, 44
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.w	$a5, $a0, %pc_lo12(L3psycho_anal.npart_s_orig)
	addi.w	$a1, $t0, 1
	st.w	$a1, $t5, %pc_lo12(L3psycho_anal.npart_l)
	addi.w	$a0, $a7, 1
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	st.w	$a0, $t2, %pc_lo12(L3psycho_anal.npart_s)
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 344                   # 8-byte Folded Reload
	blt	$t1, $t0, .LBB0_16
# %bb.14:
	bge	$a7, $a5, .LBB0_17
.LBB0_15:
	bgtz	$a1, .LBB0_18
	b	.LBB0_28
.LBB0_16:
	st.w	$a6, $t5, %pc_lo12(L3psycho_anal.npart_l)
	st.w	$t1, $t4, 80
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $t3, 160
	move	$a1, $a6
	blt	$a7, $a5, .LBB0_15
.LBB0_17:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	st.w	$a5, $a0, %pc_lo12(L3psycho_anal.npart_s)
	st.w	$a3, $s4, 44
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $t2, 88
	move	$a0, $a5
	blez	$a1, .LBB0_28
.LBB0_18:                               # %.preheader969.lr.ph
	bstrpick.d	$a7, $a6, 31, 0
	slti	$t0, $a6, 1
	ori	$t2, $zero, 1
	masknez	$t2, $t2, $t0
	maskeqz	$t0, $a6, $t0
	or	$t0, $t0, $t2
	addi.d	$t0, $t0, -1
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t1, $t1, 3
	pcalau12i	$t2, %pc_hi20(L3psycho_anal.s3_l)
	addi.d	$t2, $t2, %pc_lo12(L3psycho_anal.s3_l)
	move	$t3, $zero
	movgr2fr.d	$fa0, $zero
	ori	$t4, $zero, 2
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_21 Depth=1
	move	$t5, $t0
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=1
	st.w	$t5, $t6, 4
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, 512
	beq	$t3, $a1, .LBB0_28
.LBB0_21:                               # %.lr.ph.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_26 Depth 2
	move	$t5, $zero
	move	$t6, $a7
	move	$t7, $t2
	.p2align	4, , 16
.LBB0_22:                               # %.lr.ph
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $t7, 0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 8
	bnez	$t6, .LBB0_22
# %bb.24:                               #   in Loop: Header=BB0_21 Depth=1
	move	$t5, $a6
.LBB0_25:                               # %._crit_edge
                                        #   in Loop: Header=BB0_21 Depth=1
	ld.d	$t8, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t6, $t3, $t8, 3
	slli.d	$t7, $t3, 3
	stx.w	$t5, $t8, $t7
	move	$t7, $t1
	move	$t5, $a6
	.p2align	4, , 16
.LBB0_26:                               #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$t5, $t4, .LBB0_19
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=2
	fldx.d	$fa1, $t2, $t7
	addi.w	$t5, $t5, -1
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	addi.d	$t7, $t7, -8
	bcnez	$fcc0, .LBB0_26
	b	.LBB0_20
.LBB0_28:                               # %.preheader968
	blez	$a0, .LBB0_39
# %bb.29:                               # %.preheader967.lr.ph
	pcalau12i	$a6, %pc_hi20(L3psycho_anal.s3_s)
	addi.d	$a6, $a6, %pc_lo12(L3psycho_anal.s3_s)
	move	$a7, $zero
	ori	$t0, $zero, 2
	movgr2fr.d	$fa0, $zero
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_31 Depth=1
	st.w	$t4, $t2, 4
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 512
	addi.d	$a2, $a2, 512
	beq	$a7, $a0, .LBB0_39
.LBB0_31:                               # %.preheader967
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_37 Depth 2
	move	$t1, $zero
	beqz	$a4, .LBB0_36
# %bb.32:                               # %.lr.ph990.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$t2, $a4
	move	$t3, $a6
	.p2align	4, , 16
.LBB0_33:                               # %.lr.ph990
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $t3, 0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_36
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 8
	bnez	$t2, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_31 Depth=1
	move	$t1, $a5
.LBB0_36:                               # %._crit_edge991
                                        #   in Loop: Header=BB0_31 Depth=1
	alsl.d	$t2, $a7, $s2, 3
	slli.d	$t3, $a7, 3
	stx.w	$t1, $s2, $t3
	move	$t1, $a2
	move	$t5, $a3
	move	$t3, $a4
	.p2align	4, , 16
.LBB0_37:                               #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t4, $t5
	blt	$t3, $t0, .LBB0_30
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=2
	fld.d	$fa1, $t1, 0
	addi.d	$t5, $t4, -1
	addi.d	$t1, $t1, -8
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	addi.d	$t3, $t3, -1
	bcnez	$fcc0, .LBB0_37
	b	.LBB0_30
.LBB0_39:                               # %.preheader966
	blez	$a1, .LBB0_51
# %bb.40:                               # %.lr.ph1008.preheader
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a3, -492073
	ori	$a3, $a3, 76
	lu32i.d	$a3, 4985
	lu52i.d	$a3, $a3, 1021
	movgr2fr.d	$fa1, $a3
	ori	$a3, $zero, 3
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_41:                               # %._crit_edge1006
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$s8, $s8, 512
	beq	$a2, $a1, .LBB0_51
.LBB0_42:                               # %.lr.ph1008
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_50 Depth 2
	ld.d	$a6, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a6, 3
	slli.d	$a4, $a2, 3
	ldx.w	$a4, $a6, $a4
	ld.w	$a5, $a5, 4
	blt	$a5, $a4, .LBB0_41
# %bb.43:                               # %.lr.ph1000
                                        #   in Loop: Header=BB0_42 Depth=1
	slli.d	$a6, $a4, 3
	alsl.d	$t0, $a4, $s8, 3
	sub.w	$a7, $a5, $a4
	addi.d	$t1, $a7, 1
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB0_44:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t0, 0
	fadd.d	$fa2, $fa2, $fa3
	addi.w	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB0_44
# %bb.45:                               # %.lr.ph1005
                                        #   in Loop: Header=BB0_42 Depth=1
	fdiv.d	$fa2, $fa1, $fa2
	bltu	$a7, $a3, .LBB0_49
# %bb.46:                               # %vector.ph1480
                                        #   in Loop: Header=BB0_42 Depth=1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	bstrpick.d	$t1, $a7, 32, 2
	slli.d	$t0, $t1, 2
	alsl.d	$a4, $t1, $a4, 2
	vreplvei.d	$vr3, $vr2, 0
	move	$t1, $t0
	.p2align	4, , 16
.LBB0_47:                               # %vector.body1481
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $s8, $a6
	vldx	$vr4, $s8, $a6
	vld	$vr5, $t2, 16
	vfmul.d	$vr4, $vr3, $vr4
	vfmul.d	$vr5, $vr3, $vr5
	vstx	$vr4, $s8, $a6
	vst	$vr5, $t2, 16
	addi.d	$t1, $t1, -4
	addi.d	$a6, $a6, 32
	bnez	$t1, .LBB0_47
# %bb.48:                               # %middle.block1486
                                        #   in Loop: Header=BB0_42 Depth=1
	beq	$a7, $t0, .LBB0_41
.LBB0_49:                               # %scalar.ph1479.preheader
                                        #   in Loop: Header=BB0_42 Depth=1
	slli.d	$a6, $a4, 3
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB0_50:                               # %scalar.ph1479
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa3, $s8, $a6
	fmul.d	$fa3, $fa2, $fa3
	fstx.d	$fa3, $s8, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	bnez	$a4, .LBB0_50
	b	.LBB0_41
.LBB0_51:                               # %._crit_edge1009
	move	$s3, $s1
	ld.w	$a1, $s1, 192
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_55
# %bb.52:                               # %._crit_edge1009
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	blez	$a0, .LBB0_55
# %bb.53:                               # %.lr.ph1011.preheader
	move	$fp, $zero
	addi.d	$s0, $sp, 624
	lu12i.w	$a0, 391304
	ori	$a0, $a0, 2083
	lu32i.d	$a0, -165604
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fs0, $a0
	.p2align	4, , 16
.LBB0_54:                               # %.lr.ph1011
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fmul.d	$fa0, $fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(L3psycho_anal.npart_s)
	fst.d	$fa0, $s0, 0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	blt	$fp, $a0, .LBB0_54
.LBB0_55:                               # %.loopexit964
	blez	$a0, .LBB0_67
# %bb.56:                               # %.lr.ph1025.preheader
	move	$a1, $zero
	movgr2fr.d	$fa0, $zero
	addi.d	$a2, $sp, 624
	ori	$a3, $zero, 3
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_57:                               # %._crit_edge1022
                                        #   in Loop: Header=BB0_58 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$s7, $s7, 512
	beq	$a1, $a0, .LBB0_67
.LBB0_58:                               # %.lr.ph1025
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_66 Depth 2
	alsl.d	$a5, $a1, $s2, 3
	slli.d	$a7, $a1, 3
	ldx.w	$a4, $s2, $a7
	ld.w	$a5, $a5, 4
	blt	$a5, $a4, .LBB0_57
# %bb.59:                               # %.lr.ph1016
                                        #   in Loop: Header=BB0_58 Depth=1
	slli.d	$a6, $a4, 3
	alsl.d	$t1, $a4, $s7, 3
	sub.w	$t0, $a5, $a4
	addi.d	$t2, $t0, 1
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB0_60:                               #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t1, 0
	fadd.d	$fa1, $fa1, $fa2
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_60
# %bb.61:                               # %.lr.ph1021
                                        #   in Loop: Header=BB0_58 Depth=1
	fldx.d	$fa2, $a7, $a2
	fdiv.d	$fa1, $fa2, $fa1
	bltu	$t0, $a3, .LBB0_65
# %bb.62:                               # %vector.ph1490
                                        #   in Loop: Header=BB0_58 Depth=1
	bstrpick.d	$a7, $t0, 31, 0
	addi.d	$a7, $a7, 1
	bstrpick.d	$t1, $a7, 32, 2
	slli.d	$t0, $t1, 2
	alsl.d	$a4, $t1, $a4, 2
	vreplvei.d	$vr2, $vr1, 0
	move	$t1, $t0
	.p2align	4, , 16
.LBB0_63:                               # %vector.body1495
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $s7, $a6
	vldx	$vr3, $s7, $a6
	vld	$vr4, $t2, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr4, $vr2
	vstx	$vr3, $s7, $a6
	vst	$vr4, $t2, 16
	addi.d	$t1, $t1, -4
	addi.d	$a6, $a6, 32
	bnez	$t1, .LBB0_63
# %bb.64:                               # %middle.block1501
                                        #   in Loop: Header=BB0_58 Depth=1
	beq	$a7, $t0, .LBB0_57
.LBB0_65:                               # %scalar.ph1488.preheader
                                        #   in Loop: Header=BB0_58 Depth=1
	slli.d	$a6, $a4, 3
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB0_66:                               # %scalar.ph1488
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $s7, $a6
	fmul.d	$fa2, $fa2, $fa1
	fstx.d	$fa2, $s7, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	bnez	$a4, .LBB0_66
	b	.LBB0_57
.LBB0_67:                               # %._crit_edge1026
	pcaddu18i	$ra, %call36(init_fft)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 576                   # 8-byte Folded Reload
.LBB0_68:
	ld.w	$a1, $s3, 36
	ld.w	$a0, $s3, 204
	addi.d	$a2, $a1, -1
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	ori	$a3, $zero, 4
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.thm)
	addi.d	$s7, $a0, %pc_lo12(L3psycho_anal.thm)
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	blez	$a2, .LBB0_201
# %bb.69:                               # %.lr.ph1133
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1304
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1296
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3_s)
	addi.d	$t7, $a0, %pc_lo12(L3psycho_anal.s3_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.numlines_s)
	addi.d	$t8, $a0, %pc_lo12(L3psycho_anal.numlines_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.s3_l)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $s5, $a0
	add.d	$a1, $a7, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.ax_sav)
	addi.d	$a1, $a0, %pc_lo12(L3psycho_anal.ax_sav)
	ori	$a0, $zero, 2056
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a2, $a1, $a0
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.bx_sav)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.bx_sav)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.rx_sav)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.rx_sav)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ori	$s0, $zero, 3072
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.wsamp_L)
	addi.d	$s5, $a0, %pc_lo12(L3psycho_anal.wsamp_L)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.wsamp_S)
	addi.d	$a3, $a0, %pc_lo12(L3psycho_anal.wsamp_S)
	st.d	$zero, $sp, 424                 # 8-byte Folded Spill
	move	$a1, $zero
	ori	$s8, $zero, 1
	lu12i.w	$a0, 258048
	vreplgr2vr.w	$vr7, $a0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, -1
	ori	$a0, $a0, 2044
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a0, $a0, 1021
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a0, -245878
	ori	$a0, $a0, 2553
	lu32i.d	$a0, 9994
	lu52i.d	$a0, $a0, 1019
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	lu12i.w	$a0, -399632
	ori	$a0, $a0, 2125
	lu32i.d	$a0, -461178
	lu52i.d	$a0, $a0, 1018
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	lu12i.w	$a0, -135518
	ori	$a0, $a0, 759
	lu32i.d	$a0, -4613
	lu52i.d	$a0, $a0, 1021
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$a0, -114568
	ori	$a0, $a0, 1639
	lu32i.d	$a0, -364554
	lu52i.d	$a0, $a0, 1022
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	lu12i.w	$a0, -313840
	ori	$a0, $a0, 1507
	lu32i.d	$a0, 197272
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 487424
	lu52i.d	$a0, $a0, 1034
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a4, 1
	lu12i.w	$a0, 258896
	ori	$a0, $a0, 1267
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $a4, 8
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s5, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$t7, $sp, 264                   # 8-byte Folded Spill
	st.d	$t8, $sp, 256                   # 8-byte Folded Spill
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	vst	$vr7, $sp, 224                  # 16-byte Folded Spill
	fst.s	$fa0, $sp, 124                  # 4-byte Folded Spill
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_70:                               #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ori	$s0, $zero, 3072
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_195
.LBB0_71:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_81 Depth 2
                                        #     Child Loop BB0_83 Depth 2
                                        #     Child Loop BB0_85 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_128 Depth 2
                                        #       Child Loop BB0_130 Depth 3
                                        #     Child Loop BB0_136 Depth 2
                                        #       Child Loop BB0_138 Depth 3
                                        #     Child Loop BB0_143 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #     Child Loop BB0_162 Depth 2
                                        #     Child Loop BB0_169 Depth 2
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_174 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #         Child Loop BB0_179 Depth 4
                                        #       Child Loop BB0_185 Depth 3
                                        #         Child Loop BB0_187 Depth 4
                                        #       Child Loop BB0_190 Depth 3
                                        #         Child Loop BB0_192 Depth 4
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	andi	$a0, $a1, 1
	mul.d	$a2, $a0, $s0
	add.d	$s3, $a3, $a2
	slli.d	$a0, $a0, 12
	add.d	$a5, $s5, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.pe)
	addi.d	$a2, $a0, %pc_lo12(L3psycho_anal.pe)
	slli.d	$a4, $a1, 3
	ori	$a0, $zero, 488
	mul.d	$s1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.en)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.en)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$a2, $sp, 592                   # 8-byte Folded Spill
	st.d	$a4, $sp, 576                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$a5, $sp, 528                   # 8-byte Folded Spill
	bltu	$s8, $a1, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=1
	move	$a0, $a5
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$s7, $a2
	move	$a2, $fp
	move	$s0, $a4
	pcaddu18i	$ra, %call36(fft_long)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fft_short)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $s7, $s0
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s0
	ori	$s0, $zero, 3072
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ori	$a1, $zero, 976
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	add.d	$a1, $s7, $s1
	ori	$a2, $zero, 488
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 488
	add.d	$a1, $s3, $s1
	ori	$a2, $zero, 488
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	ori	$t2, $zero, 2044
	b	.LBB0_82
	.p2align	4, , 16
.LBB0_73:                               #   in Loop: Header=BB0_71 Depth=1
	fldx.d	$fa0, $a2, $a4
	addi.d	$a0, $a1, -2
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	fstx.d	$fa0, $a2, $a1
	ori	$a1, $zero, 976
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	addi.d	$a0, $fp, 488
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s1
	ori	$a2, $zero, 488
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a1, $s7, $s1
	ori	$a2, $zero, 488
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	ori	$t2, $zero, 2044
	ori	$a0, $zero, 2
	ori	$a6, $zero, 4080
	bne	$t1, $a0, .LBB0_82
# %bb.74:                               # %vector.body1574.preheader
                                        #   in Loop: Header=BB0_71 Depth=1
	lu12i.w	$a5, 1
	move	$a0, $a5
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ori	$a7, $zero, 3056
	.p2align	4, , 16
.LBB0_75:                               # %vector.body1574
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s5, $a0
	vld	$vr1, $a1, -16
	vldx	$vr2, $a1, $a6
	vfadd.s	$vr3, $vr1, $vr2
	vreplgr2vr.w	$vr0, $a2
	vfmul.s	$vr3, $vr3, $vr0
	vst	$vr3, $a1, -16
	vfsub.s	$vr1, $vr1, $vr2
	vfmul.s	$vr1, $vr1, $vr0
	addi.d	$a0, $a0, -16
	vstx	$vr1, $a1, $a6
	bnez	$a0, .LBB0_75
# %bb.76:                               # %vector.body1561.preheader
                                        #   in Loop: Header=BB0_71 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_77:                               # %vector.body1561
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $a4, $a1
	vldx	$vr1, $a2, $a7
	ori	$a3, $a5, 2032
	vldx	$vr2, $a2, $a3
	vfadd.s	$vr3, $vr1, $vr2
	vfmul.s	$vr3, $vr3, $vr0
	vstx	$vr3, $a2, $a7
	vfsub.s	$vr1, $vr1, $vr2
	vfmul.s	$vr1, $vr1, $vr0
	addi.d	$a1, $a1, -16
	addi.w	$a0, $zero, -1024
	vstx	$vr1, $a2, $a3
	bne	$a1, $a0, .LBB0_77
# %bb.78:                               # %vector.body1548.preheader
                                        #   in Loop: Header=BB0_71 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_79:                               # %vector.body1548
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $a4, $a1
	vld	$vr1, $a2, 2032
	ori	$a3, $a5, 1008
	vldx	$vr2, $a2, $a3
	vfadd.s	$vr3, $vr1, $vr2
	vfmul.s	$vr3, $vr3, $vr0
	vst	$vr3, $a2, 2032
	vfsub.s	$vr1, $vr1, $vr2
	vfmul.s	$vr1, $vr1, $vr0
	addi.d	$a1, $a1, -16
	vstx	$vr1, $a2, $a3
	bne	$a1, $a0, .LBB0_79
# %bb.80:                               # %vector.body1535.preheader
                                        #   in Loop: Header=BB0_71 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_81:                               # %vector.body1535
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $a4, $a1
	vld	$vr1, $a2, 1008
	vldx	$vr2, $a2, $a6
	vfadd.s	$vr3, $vr1, $vr2
	vfmul.s	$vr3, $vr3, $vr0
	vst	$vr3, $a2, 1008
	vfsub.s	$vr1, $vr1, $vr2
	vfmul.s	$vr1, $vr1, $vr0
	addi.d	$a1, $a1, -16
	vstx	$vr1, $a2, $a6
	bne	$a1, $a0, .LBB0_81
.LBB0_82:                               # %.loopexit960
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	mul.d	$t3, $a0, $s0
	slli.d	$a0, $a0, 12
	add.d	$s7, $s5, $a0
	add.d	$a4, $a4, $t3
	addi.d	$a0, $a4, 4
	addi.d	$a1, $a4, 1008
	addi.d	$a2, $a4, 1028
	addi.d	$a3, $a4, 2032
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	fld.s	$fs0, $a5, 0
	addi.d	$a5, $a4, 2047
	addi.d	$a4, $a5, 5
	addi.d	$a5, $a5, 1009
	fmul.s	$fa0, $fs0, $fs0
	pcalau12i	$a6, %pc_hi20(L3psycho_anal.energy)
	addi.d	$t4, $a6, %pc_lo12(L3psycho_anal.energy)
	fst.s	$fa0, $t4, 0
	addi.d	$a6, $sp, 624
	alsl.d	$a6, $t1, $a6, 2
	ori	$a7, $zero, 4092
	ori	$t0, $zero, 4
	vld	$vr7, $sp, 224                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_83:                               #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s7, $a7
	fldx.s	$fa2, $s7, $t0
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmul.s	$fa1, $fa1, $fa6
	fstx.s	$fa1, $t4, $t0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, 4
	bne	$a7, $t2, .LBB0_83
# %bb.84:                               # %.preheader958
                                        #   in Loop: Header=BB0_71 Depth=1
	ori	$a7, $zero, 2048
	ld.d	$t5, $sp, 544                   # 8-byte Folded Reload
	fldx.s	$fa1, $t5, $a7
	fst.s	$fa0, $a6, 0
	fmul.s	$fa0, $fa1, $fa1
	pcalau12i	$a6, %pc_hi20(L3psycho_anal.energy_s)
	addi.d	$fp, $a6, %pc_lo12(L3psycho_anal.energy_s)
	move	$a6, $zero
	fst.s	$fa0, $fp, 1032
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	ori	$t2, $zero, 512
	ori	$ra, $zero, 3
	.p2align	4, , 16
.LBB0_85:                               # %vector.body1525
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vldx	$vr1, $a4, $a6
	vfmul.s	$vr0, $vr0, $vr0
	vshuf4i.w	$vr0, $vr0, 27
	vfmadd.s	$vr0, $vr1, $vr1, $vr0
	vfmul.s	$vr0, $vr0, $vr7
	add.d	$a7, $fp, $a6
	vst	$vr0, $a7, 1036
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, -16
	bne	$a6, $t2, .LBB0_85
# %bb.86:                               # %middle.block1532
                                        #   in Loop: Header=BB0_71 Depth=1
	fld.s	$fa0, $t5, 1024
	move	$a4, $zero
	fmul.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $fp, 516
	.p2align	4, , 16
.LBB0_87:                               # %vector.body1515
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vldx	$vr1, $a2, $a4
	vfmul.s	$vr0, $vr0, $vr0
	vshuf4i.w	$vr0, $vr0, 27
	vfmadd.s	$vr0, $vr1, $vr1, $vr0
	vfmul.s	$vr0, $vr0, $vr7
	add.d	$a5, $fp, $a4
	vst	$vr0, $a5, 520
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, -16
	bne	$a4, $t2, .LBB0_87
# %bb.88:                               # %middle.block1522
                                        #   in Loop: Header=BB0_71 Depth=1
	fld.s	$fa0, $t5, 0
	move	$a2, $zero
	fmul.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $fp, 0
	.p2align	4, , 16
.LBB0_89:                               # %vector.body1506
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, 0
	vldx	$vr1, $a0, $a2
	vfmul.s	$vr0, $vr0, $vr0
	vshuf4i.w	$vr0, $vr0, 27
	vfmadd.s	$vr0, $vr1, $vr1, $vr0
	vfmul.s	$vr0, $vr0, $vr7
	add.d	$a3, $fp, $a2
	vst	$vr0, $a3, 4
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, -16
	bne	$a2, $t2, .LBB0_89
# %bb.90:                               # %.preheader957
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.bu	$a0, $a3, %pc_lo12(L3psycho_anal.cw_lower_index)
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_108
# %bb.91:                               # %.lr.ph1036
                                        #   in Loop: Header=BB0_71 Depth=1
	slli.d	$a0, $t1, 12
	alsl.d	$a0, $t1, $a0, 3
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a6, $a0
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	add.d	$s0, $a7, $a0
	ori	$t2, $zero, 2052
	fldx.s	$fs5, $a1, $t2
	fldx.s	$fs4, $a2, $t2
	fldx.s	$fs2, $a4, $a0
	fldx.s	$fs1, $s0, $t2
	fldx.s	$fs6, $a6, $a0
	fldx.s	$fs3, $a7, $a0
	fstx.s	$fs2, $a1, $t2
	fld.s	$fa1, $t4, 0
	fstx.s	$fs6, $a2, $t2
	fstx.s	$fs3, $s0, $t2
	fstx.s	$fs0, $a4, $a0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fstx.s	$fs0, $a6, $a0
	bceqz	$fcc0, .LBB0_193
# %bb.92:                               # %.lr.ph1036.split
                                        #   in Loop: Header=BB0_71 Depth=1
	fld.s	$fa4, $sp, 124                  # 4-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs3, $fa4
	fst.s	$fa0, $s0, 0
	bcnez	$fcc0, .LBB0_194
.LBB0_93:                               #   in Loop: Header=BB0_71 Depth=1
	fmul.s	$fa3, $fs2, $fs6
	fneg.s	$fa1, $fs6
	fmul.s	$fa1, $fs6, $fa1
	fmadd.s	$fa1, $fs2, $fs2, $fa1
	fmul.s	$fa2, $fa1, $fa6
	fmul.s	$fa1, $fs3, $fs3
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs1, $fa4
	bcnez	$fcc0, .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_71 Depth=1
	fadd.s	$fa4, $fa2, $fa3
	fadd.s	$fa5, $fs5, $fs4
	fmul.s	$fa4, $fa5, $fa4
	fmul.s	$fa4, $fa4, $fa6
	fneg.s	$fa5, $fs5
	fmadd.s	$fa5, $fa5, $fa3, $fa4
	fneg.s	$fa3, $fs4
	fmadd.s	$fa3, $fa3, $fa2, $fa4
	fmul.s	$fa1, $fs1, $fa1
	fmov.s	$fa2, $fa5
.LBB0_95:                               #   in Loop: Header=BB0_71 Depth=1
	vldi	$vr4, -1280
	fmsub.s	$fa4, $fs3, $fa4, $fs1
	fabs.s	$fa5, $fa4
	fadd.s	$fa0, $fa5, $fa0
	movgr2fr.w	$ft0, $zero
	fcmp.ceq.s	$fcc0, $fa0, $ft0
	bcnez	$fcc0, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_71 Depth=1
	fadd.s	$fa5, $fs0, $fs0
	fneg.s	$fa4, $fa4
	fdiv.s	$fa1, $fa4, $fa1
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa6, $fa3
	fsub.s	$fa4, $fs0, $fs0
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa1, $fa4, $fa6, $fa1
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fcvt.d.s	$fa1, $fa1
	fsqrt.d	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
.LBB0_97:                               #   in Loop: Header=BB0_71 Depth=1
	ld.bu	$a0, $a3, %pc_lo12(L3psycho_anal.cw_lower_index)
	fst.s	$fa0, $a1, 0
	beqz	$a0, .LBB0_108
# %bb.98:                               # %.peel.next.preheader
                                        #   in Loop: Header=BB0_71 Depth=1
	move	$s0, $zero
	ori	$s1, $zero, 1
	ori	$s3, $zero, 4092
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_99:                               #   in Loop: Header=BB0_100 Depth=2
	ld.bu	$a0, $a3, %pc_lo12(L3psycho_anal.cw_lower_index)
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s0
	fst.s	$fa0, $a1, 4
	addi.d	$s1, $s1, 1
	ori	$a1, $zero, 6
	maskeqz	$s5, $a1, $a0
	addi.d	$s3, $s3, -4
	addi.d	$s0, $s0, 4
	bgeu	$s1, $s5, .LBB0_109
.LBB0_100:                              # %.peel.next
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $a5, $s0
	fldx.s	$fs6, $a5, $s0
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	add.d	$a1, $a2, $s0
	fldx.s	$fs7, $a2, $s0
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	fldx.s	$fs2, $a0, $a6
	fldx.s	$fs1, $a1, $a6
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	add.d	$s5, $a4, $s0
	fldx.s	$fs3, $a4, $s0
	fstx.s	$fs2, $a5, $s0
	fstx.s	$fs1, $a2, $s0
	fldx.s	$fs5, $s5, $a6
	add.d	$a2, $s7, $s0
	fld.s	$fs0, $a2, 4
	add.d	$a2, $t4, $s0
	fld.s	$fa1, $a2, 4
	fstx.s	$fs5, $a4, $s0
	fldx.s	$fs4, $s7, $s3
	fstx.s	$fs0, $a0, $a6
	move	$a0, $a6
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fstx.s	$fs4, $a1, $a6
	bceqz	$fcc0, .LBB0_106
# %bb.101:                              # %.peel.next.split
                                        #   in Loop: Header=BB0_100 Depth=2
	fcmp.ceq.s	$fcc0, $fs5, $ft0
	fstx.s	$fa0, $s5, $a0
	bcnez	$fcc0, .LBB0_107
.LBB0_102:                              #   in Loop: Header=BB0_100 Depth=2
	fmul.s	$fa1, $fs2, $fs1
	fneg.s	$fa2, $fs1
	fmul.s	$fa2, $fs1, $fa2
	fmadd.s	$fa2, $fs2, $fs2, $fa2
	fmul.s	$fa3, $fa2, $fa6
	fmul.s	$fa2, $fs5, $fs5
	fcmp.ceq.s	$fcc0, $fs3, $ft0
	bcnez	$fcc0, .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_100 Depth=2
	fadd.s	$fa4, $fa3, $fa1
	fadd.s	$fa5, $fs6, $fs7
	fmul.s	$fa4, $fa5, $fa4
	fmul.s	$fa4, $fa4, $fa6
	fneg.s	$fa5, $fs6
	fmadd.s	$fa5, $fa5, $fa1, $fa4
	fneg.s	$fa1, $fs7
	fmadd.s	$fa1, $fa1, $fa3, $fa4
	fmul.s	$fa2, $fs3, $fa2
	fmov.s	$fa3, $fa5
.LBB0_104:                              #   in Loop: Header=BB0_100 Depth=2
	vldi	$vr4, -1280
	fmsub.s	$fa4, $fs5, $fa4, $fs3
	fabs.s	$fa5, $fa4
	fadd.s	$fa0, $fa5, $fa0
	movgr2fr.w	$fa5, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa5
	bcnez	$fcc0, .LBB0_99
# %bb.105:                              #   in Loop: Header=BB0_100 Depth=2
	fadd.s	$fa5, $fs0, $fs4
	fneg.s	$fa4, $fa4
	fdiv.s	$fa2, $fa4, $fa2
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fsub.s	$fa4, $fs0, $fs4
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa2, $fa4, $fa6, $fa2
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fsqrt.d	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	b	.LBB0_99
.LBB0_106:                              # %call.sqrt1991
                                        #   in Loop: Header=BB0_100 Depth=2
	fmov.s	$fa0, $fa1
	st.d	$t4, $sp, 544                   # 8-byte Folded Spill
	st.d	$t3, $sp, 528                   # 8-byte Folded Spill
	fst.s	$ft0, $sp, 512                  # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fld.s	$ft0, $sp, 512                  # 4-byte Folded Reload
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	ori	$ra, $zero, 3
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs5, $ft0
	fstx.s	$fa0, $s5, $a0
	bceqz	$fcc0, .LBB0_102
	.p2align	4, , 16
.LBB0_107:                              #   in Loop: Header=BB0_100 Depth=2
	vldi	$vr2, -1168
	fmov.s	$fa3, $ft0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fs3, $ft0
	bceqz	$fcc0, .LBB0_103
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_108:                              #   in Loop: Header=BB0_71 Depth=1
	move	$s5, $zero
.LBB0_109:                              # %.preheader956
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(L3psycho_anal.cw_upper_index)
	bge	$s5, $a2, .LBB0_124
# %bb.110:                              # %.lr.ph1039
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	addi.d	$s7, $a0, 8
	addi.d	$a0, $s5, 2
	andi	$a0, $a0, 12
	sub.d	$a1, $t3, $a0
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1
	add.d	$s0, $a2, $a1
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.energy_s)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.energy_s)
	add.d	$a1, $a1, $a0
	addi.d	$s1, $a1, 516
	add.d	$a0, $t3, $a0
	add.d	$s3, $a2, $a0
	b	.LBB0_112
	.p2align	4, , 16
.LBB0_111:                              #   in Loop: Header=BB0_112 Depth=2
	fst.s	$fa0, $s7, -8
	fst.s	$fa0, $s7, 4
	fst.s	$fa0, $s7, 0
	fst.s	$fa0, $s7, -4
	addi.d	$s5, $s5, 4
	ld.w	$a2, $a3, %pc_lo12(L3psycho_anal.cw_upper_index)
	addi.d	$s7, $s7, 16
	addi.d	$s0, $s0, -4
	addi.d	$s1, $s1, 4
	addi.d	$s3, $s3, 4
	bge	$s5, $a2, .LBB0_124
.LBB0_112:                              #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa5, $s1, -516
	movgr2fr.w	$fs4, $zero
	fcmp.ceq.s	$fcc0, $fa5, $fs4
	bcnez	$fcc0, .LBB0_115
# %bb.113:                              #   in Loop: Header=BB0_112 Depth=2
	fld.s	$fa0, $s3, -2048
	fld.s	$fa1, $s0, -1024
	fmul.s	$ft0, $fa0, $fa1
	fneg.s	$fa2, $fa1
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fsqrt.s	$fs0, $fa5
	fcmp.cor.s	$fcc0, $fs0, $fs0
	fmul.s	$fs3, $fa0, $fa6
	bcnez	$fcc0, .LBB0_116
# %bb.114:                              # %call.sqrt1992
                                        #   in Loop: Header=BB0_112 Depth=2
	fmov.s	$fa0, $fa5
	st.d	$t4, $sp, 544                   # 8-byte Folded Spill
	vst	$vr5, $sp, 528                  # 16-byte Folded Spill
	vst	$vr8, $sp, 512                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 512                  # 16-byte Folded Reload
	vld	$vr5, $sp, 528                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	ori	$ra, $zero, 3
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	fmov.s	$fs0, $fa0
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_115:                              #   in Loop: Header=BB0_112 Depth=2
	vldi	$vr8, -1168
	fmov.s	$fs0, $fa5
	fmov.s	$fs3, $fs4
	vldi	$vr5, -1168
.LBB0_116:                              #   in Loop: Header=BB0_112 Depth=2
	fld.s	$fs1, $s1, 516
	fcmp.ceq.s	$fcc0, $fs1, $fs4
	bcnez	$fcc0, .LBB0_119
# %bb.117:                              #   in Loop: Header=BB0_112 Depth=2
	fld.s	$fs4, $s3, 0
	fld.s	$fs2, $s0, 1024
	fsqrt.s	$fa0, $fs1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_123
.LBB0_118:                              # %.split1993
                                        #   in Loop: Header=BB0_112 Depth=2
	fadd.s	$fa1, $ft0, $fs3
	fadd.s	$fa2, $fs4, $fs2
	fmul.s	$fa1, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fneg.s	$fa2, $fs4
	fmadd.s	$fa2, $fa2, $ft0, $fa1
	fneg.s	$fa3, $fs2
	fmadd.s	$ft0, $fa3, $fs3, $fa1
	fmul.s	$fa5, $fa5, $fa0
	fmov.s	$fs1, $fa0
	fmov.s	$fs3, $fa2
.LBB0_119:                              #   in Loop: Header=BB0_112 Depth=2
	fld.s	$fa1, $s1, 0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_122
.LBB0_120:                              # %.split1995
                                        #   in Loop: Header=BB0_112 Depth=2
	vldi	$vr1, -1280
	fmsub.s	$fa1, $fs0, $fa1, $fs1
	fabs.s	$fa2, $fa1
	fadd.s	$fa0, $fa2, $fa0
	movgr2fr.w	$fa2, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB0_111
# %bb.121:                              #   in Loop: Header=BB0_112 Depth=2
	fld.s	$fa2, $s3, -1024
	fld.s	$fa3, $s0, 0
	fadd.s	$fa4, $fa2, $fa3
	fneg.s	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa5
	fmul.s	$fa5, $ft0, $fa1
	fmadd.s	$fa4, $fa4, $fa6, $fa5
	fsub.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fs3, $fa1
	fmadd.s	$fa1, $fa2, $fa6, $fa1
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fcvt.d.s	$fa1, $fa1
	fsqrt.d	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	b	.LBB0_111
.LBB0_122:                              # %call.sqrt1996
                                        #   in Loop: Header=BB0_112 Depth=2
	fmov.s	$fa0, $fa1
	st.d	$t4, $sp, 544                   # 8-byte Folded Spill
	vst	$vr5, $sp, 528                  # 16-byte Folded Spill
	vst	$vr8, $sp, 512                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 512                  # 16-byte Folded Reload
	vld	$vr5, $sp, 528                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	ori	$ra, $zero, 3
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	b	.LBB0_120
.LBB0_123:                              # %call.sqrt1994
                                        #   in Loop: Header=BB0_112 Depth=2
	fmov.s	$fa0, $fs1
	st.d	$t4, $sp, 544                   # 8-byte Folded Spill
	vst	$vr5, $sp, 528                  # 16-byte Folded Spill
	vst	$vr8, $sp, 512                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 512                  # 16-byte Folded Reload
	vld	$vr5, $sp, 528                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	ori	$ra, $zero, 3
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_124:                              # %.preheader955
                                        #   in Loop: Header=BB0_71 Depth=1
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.numlines_l)
	addi.d	$t5, $a0, %pc_lo12(L3psycho_anal.numlines_l)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.eb)
	addi.d	$s7, $a0, %pc_lo12(L3psycho_anal.eb)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cb)
	addi.d	$t6, $a0, %pc_lo12(L3psycho_anal.cb)
	blez	$a2, .LBB0_132
# %bb.125:                              # %.lr.ph1054.preheader
                                        #   in Loop: Header=BB0_71 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	ori	$t2, $zero, 2
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_128
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_128 Depth=2
	move	$a1, $a5
.LBB0_127:                              # %._crit_edge1048
                                        #   in Loop: Header=BB0_128 Depth=2
	slli.d	$a3, $a0, 3
	fstx.d	$fa0, $s7, $a3
	fstx.d	$fa1, $t6, $a3
	addi.d	$a0, $a0, 1
	bge	$a1, $a2, .LBB0_133
.LBB0_128:                              # %.lr.ph1054
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_130 Depth 3
	slli.d	$a3, $a1, 2
	fldx.s	$fa1, $t4, $a3
	fldx.s	$fa2, $a7, $a3
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $t5, $a3
	fcvt.d.s	$fa0, $fa1
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	addi.w	$a5, $a1, 1
	blt	$a3, $t2, .LBB0_126
# %bb.129:                              # %.lr.ph1047.preheader
                                        #   in Loop: Header=BB0_128 Depth=2
	alsl.d	$a4, $a5, $t4, 2
	alsl.d	$a5, $a5, $a7, 2
	addi.d	$a6, $a3, 1
	.p2align	4, , 16
.LBB0_130:                              # %.lr.ph1047
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa2, $a4, 0
	fld.s	$fa3, $a5, 0
	fcvt.d.s	$fa4, $fa2
	fadd.d	$fa0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $fa3
	fcvt.d.s	$fa2, $fa2
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a4, $a4, 4
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bltu	$t2, $a6, .LBB0_130
# %bb.131:                              # %._crit_edge1048.loopexit
                                        #   in Loop: Header=BB0_128 Depth=2
	add.w	$a1, $a1, $a3
	b	.LBB0_127
	.p2align	4, , 16
.LBB0_132:                              #   in Loop: Header=BB0_71 Depth=1
	move	$a1, $zero
	move	$a0, $zero
	ori	$t2, $zero, 2
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
.LBB0_133:                              # %.preheader954
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(L3psycho_anal.npart_l_orig)
	addi.w	$a3, $a0, 0
	bge	$a3, $a2, .LBB0_140
# %bb.134:                              #   in Loop: Header=BB0_71 Depth=1
	bstrpick.d	$a2, $a2, 31, 0
	move	$a3, $a0
	b	.LBB0_136
	.p2align	4, , 16
.LBB0_135:                              # %._crit_edge1063
                                        #   in Loop: Header=BB0_136 Depth=2
	slli.d	$a1, $a0, 3
	fstx.d	$fa0, $s7, $a1
	movgr2fr.d	$fa1, $t3
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t6, $a1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	move	$a1, $a5
	beq	$a3, $a2, .LBB0_140
.LBB0_136:                              # %.lr.ph1068
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_138 Depth 3
	slli.d	$a4, $a1, 2
	fldx.s	$fa0, $t4, $a4
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $t5, $a4
	fcvt.d.s	$fa0, $fa0
	addi.w	$a5, $a1, 1
	blt	$a4, $t2, .LBB0_135
# %bb.137:                              # %.lr.ph1062.preheader
                                        #   in Loop: Header=BB0_136 Depth=2
	alsl.d	$a5, $a5, $t4, 2
	addi.d	$a6, $a4, 1
	.p2align	4, , 16
.LBB0_138:                              # %.lr.ph1062
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a5, 0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bltu	$t2, $a6, .LBB0_138
# %bb.139:                              # %._crit_edge1063.loopexit
                                        #   in Loop: Header=BB0_136 Depth=2
	add.w	$a5, $a1, $a4
	b	.LBB0_135
	.p2align	4, , 16
.LBB0_140:                              # %._crit_edge1069
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.w	$a0, $t0, %pc_lo12(L3psycho_anal.npart_l)
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	stx.d	$zero, $a2, $a1
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.thr)
	addi.d	$s5, $a1, %pc_lo12(L3psycho_anal.thr)
	blez	$a0, .LBB0_155
# %bb.141:                              # %.lr.ph1081
                                        #   in Loop: Header=BB0_71 Depth=1
	st.d	$t6, $sp, 528                   # 8-byte Folded Spill
	st.d	$t5, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a2, 3
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	ori	$a0, $zero, 504
	mul.d	$a0, $t1, $a0
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.nb_1)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.nb_1)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 592                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.nb_2)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.nb_2)
	move	$s1, $zero
	movgr2fr.d	$fs1, $zero
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	fmov.d	$fs0, $fs1
	b	.LBB0_143
	.p2align	4, , 16
.LBB0_142:                              #   in Loop: Header=BB0_143 Depth=2
	ld.w	$a0, $t0, %pc_lo12(L3psycho_anal.npart_l)
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 512
	bge	$s1, $a0, .LBB0_156
.LBB0_143:                              #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a1, 3
	slli.d	$s3, $s1, 3
	ldx.w	$a3, $a1, $s3
	ld.w	$a4, $a0, 4
	fmov.d	$fs3, $fs1
	fmov.d	$fa0, $fs1
	blt	$a4, $a3, .LBB0_153
# %bb.144:                              # %.lr.ph1075
                                        #   in Loop: Header=BB0_143 Depth=2
	alsl.d	$a0, $a3, $s0, 3
	alsl.d	$a1, $a3, $s7, 3
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	sub.d	$a3, $a4, $a3
	movgr2fr.d	$fa0, $zero
	addi.d	$a3, $a3, 1
	fmov.d	$fs3, $fa0
	.p2align	4, , 16
.LBB0_145:                              #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a2, 0
	fmadd.d	$fs3, $fa1, $fa2, $fs3
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_145
# %bb.146:                              # %._crit_edge1076
                                        #   in Loop: Header=BB0_143 Depth=2
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fs3, $fa1
	bcnez	$fcc0, .LBB0_150
# %bb.147:                              #   in Loop: Header=BB0_143 Depth=2
	fdiv.d	$fa0, $fa0, $fs3
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a0
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_151
# %bb.148:                              #   in Loop: Header=BB0_143 Depth=2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_152
# %bb.149:                              #   in Loop: Header=BB0_143 Depth=2
	vldi	$vr0, -912
	b	.LBB0_153
.LBB0_150:                              #   in Loop: Header=BB0_143 Depth=2
	fmov.d	$fa0, $fs3
	b	.LBB0_153
.LBB0_151:                              #   in Loop: Header=BB0_143 Depth=2
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	movgr2fr.d	$fa0, $a0
	b	.LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_143 Depth=2
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 3
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	.p2align	4, , 16
.LBB0_153:                              # %._crit_edge1076.thread
                                        #   in Loop: Header=BB0_143 Depth=2
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.minval)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.minval)
	fldx.d	$fa1, $a0, $s3
	fcmp.clt.d	$fcc0, $fa1, $fa0
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	fldx.d	$fa2, $a1, $s3
	ld.d	$a2, $sp, 576                   # 8-byte Folded Reload
	fldx.d	$fa3, $a2, $s3
	fsel	$fa0, $fa0, $fa1, $fcc0
	fmul.d	$fa4, $fs3, $fa0
	fadd.d	$fa0, $fa2, $fa2
	vldi	$vr1, -976
	fmul.d	$fa1, $fa3, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa4, $fa0
	fsel	$fa1, $fa0, $fa4, $fcc0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.qthr_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.qthr_l)
	fldx.d	$fa3, $a0, $s3
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fldx.d	$fa0, $s7, $s3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fstx.d	$fa1, $s5, $s3
	fstx.d	$fa2, $a2, $s3
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fstx.d	$fa4, $a1, $s3
	bcnez	$fcc0, .LBB0_142
# %bb.154:                              #   in Loop: Header=BB0_143 Depth=2
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fs2, $fa2
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 3
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	fneg.d	$fa1, $fs2
	fmadd.d	$fs0, $fa1, $fa0, $fs0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	fst.d	$fs0, $a0, 0
	b	.LBB0_142
	.p2align	4, , 16
.LBB0_155:                              #   in Loop: Header=BB0_71 Depth=1
	movgr2fr.d	$fs0, $zero
.LBB0_156:                              # %._crit_edge1082
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ori	$a2, $zero, 260
	ori	$s0, $zero, 21
	bltu	$s8, $a0, .LBB0_167
# %bb.157:                              #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 160
	beqz	$a0, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 1128
	stx.w	$s8, $a0, $a1
	b	.LBB0_167
.LBB0_159:                              #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	movgr2fr.d	$fa0, $a0
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 1128
	stx.w	$zero, $a0, $a1
	b	.LBB0_167
.LBB0_161:                              # %.preheader953.preheader
                                        #   in Loop: Header=BB0_71 Depth=1
	movgr2fr.w	$fa0, $zero
	move	$a0, $zero
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB0_162:                              # %.preheader953
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.energy_s)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.energy_s)
	add.d	$a1, $a1, $a0
	fld.s	$fa3, $a1, 256
	fld.s	$fa4, $a1, 772
	fld.s	$fa5, $a1, 1288
	fadd.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa4
	addi.d	$a0, $a0, 4
	fadd.s	$fa0, $fa0, $fa5
	bne	$a0, $a2, .LBB0_162
# %bb.163:                              #   in Loop: Header=BB0_71 Depth=1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa3, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$fa3, $fa0, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 1128
	alsl.d	$a0, $a1, $a2, 2
	slli.d	$a1, $a1, 2
	vldi	$vr1, -1218
	fmul.s	$fa1, $fa3, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	stx.w	$s8, $a1, $a2
	bceqz	$fcc0, .LBB0_166
# %bb.164:                              #   in Loop: Header=BB0_71 Depth=1
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	movgr2fr.d	$fa1, $a1
	fcmp.cule.d	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB0_167
# %bb.165:                              #   in Loop: Header=BB0_71 Depth=1
	vldi	$vr1, -1244
	fmul.s	$fa1, $fa3, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_71 Depth=1
	st.w	$zero, $a0, 0
	.p2align	4, , 16
.LBB0_167:                              #   in Loop: Header=BB0_71 Depth=1
	move	$a0, $zero
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.d	$a3, $t6, $a2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a2
	b	.LBB0_169
	.p2align	4, , 16
.LBB0_168:                              # %._crit_edge1093
                                        #   in Loop: Header=BB0_169 Depth=2
	fstx.d	$fa0, $a3, $a1
	addi.d	$a0, $a0, 1
	fstx.d	$fa1, $a4, $a1
	beq	$a0, $s0, .LBB0_172
.LBB0_169:                              #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_171 Depth 3
	slli.d	$a1, $a0, 3
	slli.d	$a2, $a0, 2
	ldx.w	$a6, $t2, $a2
	fldx.d	$fa1, $t1, $a1
	ldx.w	$a7, $t3, $a2
	fldx.d	$fa2, $t0, $a1
	slli.d	$a2, $a6, 3
	fldx.d	$fa0, $s7, $a2
	slli.d	$a5, $a7, 3
	fldx.d	$fa3, $s7, $a5
	fldx.d	$fa4, $s5, $a2
	fmul.d	$fa0, $fa2, $fa0
	fldx.d	$fa5, $s5, $a5
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa2, $fa2, $fa4
	addi.w	$a2, $a7, 1
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	bge	$a2, $a6, .LBB0_168
# %bb.170:                              # %.lr.ph1092.preheader
                                        #   in Loop: Header=BB0_169 Depth=2
	alsl.d	$a2, $a7, $s7, 3
	addi.d	$a2, $a2, 8
	alsl.d	$a5, $a7, $s5, 3
	addi.d	$a5, $a5, 8
	nor	$a7, $a7, $zero
	add.d	$a6, $a7, $a6
	.p2align	4, , 16
.LBB0_171:                              # %.lr.ph1092
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 0
	fld.d	$fa3, $a5, 0
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa3
	addi.d	$a2, $a2, 8
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB0_171
	b	.LBB0_168
	.p2align	4, , 16
.LBB0_172:                              # %.preheader952
                                        #   in Loop: Header=BB0_71 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(L3psycho_anal.npart_s_orig)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(L3psycho_anal.npart_s)
	move	$a2, $zero
	addi.d	$a3, $a3, 176
	addi.d	$a4, $a4, 176
	ori	$s0, $zero, 12
	b	.LBB0_174
	.p2align	4, , 16
.LBB0_173:                              #   in Loop: Header=BB0_174 Depth=2
	addi.d	$a2, $a2, 1
	addi.d	$fp, $fp, 516
	beq	$a2, $ra, .LBB0_70
.LBB0_174:                              # %.preheader950
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #         Child Loop BB0_179 Depth 4
                                        #       Child Loop BB0_185 Depth 3
                                        #         Child Loop BB0_187 Depth 4
                                        #       Child Loop BB0_190 Depth 3
                                        #         Child Loop BB0_192 Depth 4
	blez	$a0, .LBB0_181
# %bb.175:                              # %.lr.ph1108
                                        #   in Loop: Header=BB0_174 Depth=2
	slli.d	$a5, $a2, 9
	alsl.d	$a6, $a2, $a5, 2
	pcalau12i	$a5, %pc_hi20(L3psycho_anal.energy_s)
	addi.d	$t0, $a5, %pc_lo12(L3psycho_anal.energy_s)
	move	$a5, $zero
	move	$a7, $zero
	add.d	$a6, $t0, $a6
	b	.LBB0_177
	.p2align	4, , 16
.LBB0_176:                              # %._crit_edge1103
                                        #   in Loop: Header=BB0_177 Depth=3
	fcvt.d.s	$fa0, $fa0
	slli.d	$a7, $a5, 3
	addi.d	$a5, $a5, 1
	fstx.d	$fa0, $s7, $a7
	move	$a7, $t1
	beq	$a5, $a0, .LBB0_181
.LBB0_177:                              #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_174 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_179 Depth 4
	slli.d	$t1, $a7, 2
	slli.d	$t0, $a5, 2
	ldx.w	$t0, $t8, $t0
	fldx.s	$fa0, $a6, $t1
	addi.w	$t1, $a7, 1
	blez	$t0, .LBB0_176
# %bb.178:                              # %.lr.ph1102.preheader
                                        #   in Loop: Header=BB0_177 Depth=3
	alsl.d	$t1, $t1, $fp, 2
	addi.d	$t2, $t0, 1
	.p2align	4, , 16
.LBB0_179:                              # %.lr.ph1102
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_174 Depth=2
                                        #       Parent Loop BB0_177 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bltu	$s8, $t2, .LBB0_179
# %bb.180:                              # %._crit_edge1103.loopexit
                                        #   in Loop: Header=BB0_177 Depth=3
	add.d	$a7, $a7, $t0
	addi.w	$t1, $a7, 1
	b	.LBB0_176
	.p2align	4, , 16
.LBB0_181:                              # %.preheader949
                                        #   in Loop: Header=BB0_174 Depth=2
	blez	$a1, .LBB0_188
# %bb.182:                              # %.lr.ph1117.preheader
                                        #   in Loop: Header=BB0_174 Depth=2
	move	$a5, $zero
	move	$a6, $t7
	b	.LBB0_185
	.p2align	4, , 16
.LBB0_183:                              #   in Loop: Header=BB0_185 Depth=3
	movgr2fr.d	$fa0, $zero
.LBB0_184:                              # %._crit_edge1114
                                        #   in Loop: Header=BB0_185 Depth=3
	pcalau12i	$t0, %pc_hi20(L3psycho_anal.qthr_s)
	addi.d	$t0, $t0, %pc_lo12(L3psycho_anal.qthr_s)
	fldx.d	$fa1, $t0, $a7
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fstx.d	$fa0, $s5, $a7
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 512
	beq	$a5, $a1, .LBB0_188
.LBB0_185:                              # %.lr.ph1117
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_174 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_187 Depth 4
	alsl.d	$t0, $a5, $s2, 3
	slli.d	$a7, $a5, 3
	ldx.w	$t2, $s2, $a7
	ld.w	$t3, $t0, 4
	blt	$t3, $t2, .LBB0_183
# %bb.186:                              # %.lr.ph1113
                                        #   in Loop: Header=BB0_185 Depth=3
	alsl.d	$t0, $t2, $a6, 3
	alsl.d	$t1, $t2, $s7, 3
	sub.d	$t2, $t3, $t2
	addi.d	$t2, $t2, 1
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB0_187:                              #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_174 Depth=2
                                        #       Parent Loop BB0_185 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $t0, 0
	fld.d	$fa2, $t1, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$t0, $t0, 8
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_187
	b	.LBB0_184
	.p2align	4, , 16
.LBB0_188:                              # %.preheader948
                                        #   in Loop: Header=BB0_174 Depth=2
	move	$a5, $zero
	alsl.d	$a6, $a2, $a3, 3
	alsl.d	$a7, $a2, $a4, 3
	b	.LBB0_190
	.p2align	4, , 16
.LBB0_189:                              # %._crit_edge1124
                                        #   in Loop: Header=BB0_190 Depth=3
	slli.d	$t0, $a5, 4
	alsl.d	$t0, $a5, $t0, 3
	fstx.d	$fa0, $a6, $t0
	addi.d	$a5, $a5, 1
	fstx.d	$fa1, $a7, $t0
	beq	$a5, $s0, .LBB0_173
.LBB0_190:                              #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_174 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_192 Depth 4
	slli.d	$t0, $a5, 3
	slli.d	$t1, $a5, 2
	ldx.w	$t2, $s4, $t1
	fldx.d	$fa1, $t5, $t0
	ldx.w	$t3, $s6, $t1
	fldx.d	$fa2, $t4, $t0
	slli.d	$t0, $t2, 3
	fldx.d	$fa0, $s7, $t0
	slli.d	$t1, $t3, 3
	fldx.d	$fa3, $s7, $t1
	fldx.d	$fa4, $s5, $t0
	fmul.d	$fa0, $fa2, $fa0
	fldx.d	$fa5, $s5, $t1
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa2, $fa2, $fa4
	addi.w	$t0, $t3, 1
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	bge	$t0, $t2, .LBB0_189
# %bb.191:                              # %.lr.ph1123.preheader
                                        #   in Loop: Header=BB0_190 Depth=3
	alsl.d	$t0, $t3, $s7, 3
	addi.d	$t0, $t0, 8
	alsl.d	$t1, $t3, $s5, 3
	addi.d	$t1, $t1, 8
	nor	$t3, $t3, $zero
	add.d	$t2, $t3, $t2
	.p2align	4, , 16
.LBB0_192:                              # %.lr.ph1123
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_174 Depth=2
                                        #       Parent Loop BB0_190 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $t0, 0
	fld.d	$fa3, $t1, 0
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa3
	addi.d	$t0, $t0, 8
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_192
	b	.LBB0_189
.LBB0_193:                              # %call.sqrt
                                        #   in Loop: Header=BB0_71 Depth=1
	fmov.s	$fa0, $fa1
	move	$s1, $t4
	move	$s3, $t3
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$t3, $s3
	move	$t4, $s1
	ori	$ra, $zero, 3
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	fld.s	$fa4, $sp, 124                  # 4-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs3, $fa4
	fst.s	$fa0, $s0, 0
	bceqz	$fcc0, .LBB0_93
.LBB0_194:                              #   in Loop: Header=BB0_71 Depth=1
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa4
	vldi	$vr3, -1168
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs1, $fa4
	bceqz	$fcc0, .LBB0_94
	b	.LBB0_95
.LBB0_195:                              # %._crit_edge1134
	ori	$a1, $zero, 4
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a0, $a2, -4
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB0_214
# %bb.196:                              # %.preheader947.preheader
	lu12i.w	$a1, 83886
	ori	$a1, $a1, 328
	lu32i.d	$a1, -440402
	lu52i.d	$a1, $a1, 1023
	movgr2fr.d	$fa0, $a1
	ori	$a1, $zero, 168
	pcalau12i	$a2, %pc_hi20(L3psycho_anal.mld_l)
	addi.d	$a2, $a2, %pc_lo12(L3psycho_anal.mld_l)
	move	$a3, $zero
	b	.LBB0_198
	.p2align	4, , 16
.LBB0_197:                              #   in Loop: Header=BB0_198 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a3, $a1, .LBB0_203
.LBB0_198:                              # %.preheader947
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s7, $a3
	fldx.d	$fa1, $s7, $a3
	fld.d	$fa2, $a4, 488
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_197
# %bb.199:                              # %.preheader947
                                        #   in Loop: Header=BB0_198 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_197
# %bb.200:                              #   in Loop: Header=BB0_198 Depth=1
	fldx.d	$fa1, $a2, $a3
	add.d	$a5, $t6, $a3
	fld.d	$fa2, $a5, 1464
	fld.d	$fa3, $a4, 1464
	fmul.d	$fa2, $fa1, $fa2
	fld.d	$fa4, $a4, 976
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fld.d	$fa5, $a5, 976
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa2, $fa4, $fcc0
	fmul.d	$fa1, $fa1, $fa5
	fcmp.clt.d	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa1, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fst.d	$fa2, $a4, 976
	fst.d	$fa1, $a4, 1464
	b	.LBB0_197
.LBB0_201:
	move	$fp, $zero
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB0_215
.LBB0_202:
	movgr2fr.d	$fs1, $zero
	fmov.d	$fs0, $fs1
	ld.w	$s2, $s3, 204
	ld.d	$s0, $sp, 1312
	bgtz	$s2, .LBB0_249
	b	.LBB0_268
.LBB0_203:                              # %.preheader945.preheader
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.mld_s)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.mld_s)
	move	$a2, $zero
	ori	$a3, $zero, 288
	b	.LBB0_205
	.p2align	4, , 16
.LBB0_204:                              #   in Loop: Header=BB0_205 Depth=1
	addi.d	$a2, $a2, 24
	addi.d	$a1, $a1, 8
	beq	$a2, $a3, .LBB0_214
.LBB0_205:                              # %.preheader945
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s7, $a2
	fld.d	$fa1, $a4, 176
	fld.d	$fa2, $a4, 664
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	add.d	$a5, $t6, $a2
	bcnez	$fcc0, .LBB0_208
# %bb.206:                              # %.preheader945
                                        #   in Loop: Header=BB0_205 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_208
# %bb.207:                              #   in Loop: Header=BB0_205 Depth=1
	addi.d	$a6, $a5, 1656
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a6, -16
	addi.d	$a7, $a4, 1152
	fld.d	$fa3, $a7, 488
	fmul.d	$fa2, $fa1, $fa2
	fld.d	$fa4, $a7, 0
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fld.d	$fa5, $a6, -504
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa2, $fa4, $fcc0
	fmul.d	$fa1, $fa1, $fa5
	fcmp.clt.d	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa1, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fst.d	$fa2, $a7, 0
	fst.d	$fa1, $a7, 488
.LBB0_208:                              #   in Loop: Header=BB0_205 Depth=1
	fld.d	$fa1, $a4, 184
	fld.d	$fa2, $a4, 672
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_211
# %bb.209:                              #   in Loop: Header=BB0_205 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_211
# %bb.210:                              #   in Loop: Header=BB0_205 Depth=1
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a5, 1648
	fld.d	$fa3, $a4, 1648
	fmul.d	$fa2, $fa1, $fa2
	fld.d	$fa4, $a4, 1160
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fld.d	$fa5, $a5, 1160
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa2, $fa4, $fcc0
	fmul.d	$fa1, $fa1, $fa5
	fcmp.clt.d	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa1, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fst.d	$fa2, $a4, 1160
	fst.d	$fa1, $a4, 1648
.LBB0_211:                              #   in Loop: Header=BB0_205 Depth=1
	fld.d	$fa1, $a4, 192
	fld.d	$fa2, $a4, 680
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_204
# %bb.212:                              #   in Loop: Header=BB0_205 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_204
# %bb.213:                              #   in Loop: Header=BB0_205 Depth=1
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a5, 1656
	fld.d	$fa3, $a4, 1656
	fmul.d	$fa2, $fa1, $fa2
	fld.d	$fa4, $a4, 1168
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fld.d	$fa5, $a5, 1168
	fsel	$fa2, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa2, $fa4, $fcc0
	fmul.d	$fa1, $fa1, $fa5
	fcmp.clt.d	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa1, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fst.d	$fa2, $a4, 1168
	fst.d	$fa1, $a4, 1656
	b	.LBB0_204
.LBB0_214:                              # %.loopexitthread-pre-split
	ld.w	$a1, $s3, 36
	sltui	$fp, $a0, 1
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_202
.LBB0_215:                              # %.preheader944.preheader
	move	$s0, $zero
	movgr2fr.d	$fs0, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs2, $a0
	vldi	$vr3, -912
	ori	$s1, $zero, 128
	fmov.d	$fs1, $fs0
	b	.LBB0_217
	.p2align	4, , 16
.LBB0_216:                              #   in Loop: Header=BB0_217 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$s0, $s0, 8
	fadd.d	$fs0, $fs0, $fa3
	beq	$s0, $s1, .LBB0_219
.LBB0_217:                              # %.preheader944
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s7, $s0
	fld.d	$fa1, $a0, 40
	fld.d	$fa2, $a0, 528
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB0_216
# %bb.218:                              #   in Loop: Header=BB0_217 Depth=1
	vldi	$vr0, -1016
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$s0, $s0, 8
	fadd.d	$fs0, $fs0, $fa3
	bne	$s0, $s1, .LBB0_217
.LBB0_219:                              # %.preheader.preheader
	vrepli.b	$vr3, 0
	addi.w	$s0, $zero, -24
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs2, $a0
	b	.LBB0_222
	.p2align	4, , 16
.LBB0_220:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	vst	$vr4, $sp, 480                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 480                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
.LBB0_221:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr3, -912
	vld	$vr1, $sp, 592                  # 16-byte Folded Reload
	vpackev.d	$vr1, $vr1, $vr3
	vld	$vr2, $sp, 608                  # 16-byte Folded Reload
	vfadd.d	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 576                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 560                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 544                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 528                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 512                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 496                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vpackev.d	$vr2, $vr4, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vpackev.d	$vr0, $vr0, $vr3
	addi.d	$s0, $s0, 8
	vfadd.d	$vr3, $vr1, $vr0
	beqz	$s0, .LBB0_248
.LBB0_222:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s1, $s7, $s0
	fld.d	$fa1, $s1, 272
	fld.d	$fa2, $s1, 760
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	vst	$vr3, $sp, 608                  # 16-byte Folded Spill
	bcnez	$fcc0, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_225
	.p2align	4, , 16
.LBB0_224:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
.LBB0_225:                              #   in Loop: Header=BB0_222 Depth=1
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 296
	fld.d	$fa2, $s1, 784
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_227
# %bb.226:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_228
	.p2align	4, , 16
.LBB0_227:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
.LBB0_228:                              #   in Loop: Header=BB0_222 Depth=1
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 320
	fld.d	$fa2, $s1, 808
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_231
	.p2align	4, , 16
.LBB0_230:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
.LBB0_231:                              #   in Loop: Header=BB0_222 Depth=1
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 344
	fld.d	$fa2, $s1, 832
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_234
	.p2align	4, , 16
.LBB0_233:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
.LBB0_234:                              #   in Loop: Header=BB0_222 Depth=1
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 368
	fld.d	$fa2, $s1, 856
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_237
	.p2align	4, , 16
.LBB0_236:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
.LBB0_237:                              #   in Loop: Header=BB0_222 Depth=1
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 392
	fld.d	$fa2, $s1, 880
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_240
	.p2align	4, , 16
.LBB0_239:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
.LBB0_240:                              #   in Loop: Header=BB0_222 Depth=1
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 416
	fld.d	$fa2, $s1, 904
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_243
	.p2align	4, , 16
.LBB0_242:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
.LBB0_243:                              #   in Loop: Header=BB0_222 Depth=1
	vst	$vr0, $sp, 496                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 440
	fld.d	$fa2, $s1, 928
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_222 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fmov.d	$fa4, $fa0
	b	.LBB0_246
	.p2align	4, , 16
.LBB0_245:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr4, -1016
.LBB0_246:                              #   in Loop: Header=BB0_222 Depth=1
	fld.d	$fa1, $s1, 464
	fld.d	$fa2, $s1, 952
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs2
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB0_220
# %bb.247:                              #   in Loop: Header=BB0_222 Depth=1
	vldi	$vr0, -1016
	b	.LBB0_221
.LBB0_248:
	fdiv.d	$fa0, $fs1, $fs0
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1638
	lu32i.d	$a0, 419430
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr2, -928
	fmin.d	$fs0, $fa0, $fa2
	vreplvei.d	$vr0, $vr3, 0
	vreplvei.d	$vr3, $vr3, 1
	fdiv.d	$fa0, $fa3, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmin.d	$fs1, $fa0, $fa2
	ld.w	$s2, $s3, 204
	ld.d	$s0, $sp, 1312
	blez	$s2, .LBB0_268
.LBB0_249:                              # %._crit_edge1154
	slli.d	$a2, $s2, 2
	addi.d	$a0, $sp, 1136
	addi.d	$s1, $sp, 1136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bne	$s2, $a0, .LBB0_255
# %bb.250:
	ld.w	$a0, $s3, 156
	beqz	$a0, .LBB0_252
# %bb.251:
	ld.w	$a0, $s3, 36
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_255
.LBB0_252:
	ld.w	$a0, $sp, 1128
	beqz	$a0, .LBB0_254
# %bb.253:
	ld.w	$a0, $sp, 1132
	bnez	$a0, .LBB0_255
.LBB0_254:
	st.d	$zero, $sp, 1128
.LBB0_255:                              # %.lr.ph1158.preheader
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.blocktype_old)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.blocktype_old)
	addi.d	$a1, $sp, 1128
	ori	$a2, $zero, 3
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	move	$a4, $zero
	move	$a5, $s0
	b	.LBB0_258
	.p2align	4, , 16
.LBB0_256:                              #   in Loop: Header=BB0_258 Depth=1
	move	$a7, $zero
	st.w	$zero, $s1, 0
.LBB0_257:                              #   in Loop: Header=BB0_258 Depth=1
	st.w	$a6, $a5, 0
	st.w	$a7, $a0, 0
	addi.d	$a4, $a4, 1
	ld.w	$a6, $s3, 204
	addi.d	$s1, $s1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	bge	$a4, $a6, .LBB0_268
.LBB0_258:                              # %.lr.ph1158
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	beqz	$a6, .LBB0_262
# %bb.259:                              #   in Loop: Header=BB0_258 Depth=1
	ld.w	$a6, $a0, 0
	bltu	$a2, $a6, .LBB0_265
# %bb.260:                              #   in Loop: Header=BB0_258 Depth=1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a3, $a7
	add.d	$a7, $a3, $a7
	jr	$a7
.LBB0_261:                              #   in Loop: Header=BB0_258 Depth=1
	ori	$a7, $zero, 3
	st.w	$a7, $s1, 0
	b	.LBB0_267
	.p2align	4, , 16
.LBB0_262:                              #   in Loop: Header=BB0_258 Depth=1
	ld.w	$a6, $a0, 0
	ori	$a7, $zero, 2
	st.w	$a7, $s1, 0
	beq	$a6, $a2, .LBB0_266
# %bb.263:                              #   in Loop: Header=BB0_258 Depth=1
	bnez	$a6, .LBB0_257
# %bb.264:                              # %.thread
                                        #   in Loop: Header=BB0_258 Depth=1
	ori	$a6, $zero, 1
	b	.LBB0_257
.LBB0_265:                              # %._crit_edge1340
                                        #   in Loop: Header=BB0_258 Depth=1
	ld.w	$a7, $s1, 0
	b	.LBB0_257
.LBB0_266:                              #   in Loop: Header=BB0_258 Depth=1
	ori	$a7, $zero, 2
.LBB0_267:                              #   in Loop: Header=BB0_258 Depth=1
	ori	$a6, $zero, 2
	b	.LBB0_257
.LBB0_268:                              # %._crit_edge1159
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.ms_ratio_s_old)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.ms_ratio_s_old)
	pcalau12i	$a2, %pc_hi20(L3psycho_anal.ms_ratio_l_old)
	addi.d	$a2, $a2, %pc_lo12(L3psycho_anal.ms_ratio_l_old)
	masknez	$a3, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	fld.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	fst.d	$fs1, $a1, 0
	fst.d	$fs0, $a2, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fst.d	$fs0, $a0, 0
	beqz	$fp, .LBB0_271
# %bb.269:
	fld.s	$fa0, $sp, 636
	fld.s	$fa1, $sp, 632
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.ms_ener_ratio_old)
	fld.d	$fa2, $a0, %pc_lo12(L3psycho_anal.ms_ener_ratio_old)
	fadd.s	$fa1, $fa0, $fa1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	fst.d	$fa2, $a1, 0
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa1, $fa2
	st.d	$zero, $a0, %pc_lo12(L3psycho_anal.ms_ener_ratio_old)
	bcnez	$fcc0, .LBB0_272
# %bb.270:
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fst.d	$fa0, $a0, %pc_lo12(L3psycho_anal.ms_ener_ratio_old)
	b	.LBB0_272
.LBB0_271:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
.LBB0_272:
	fld.d	$fs7, $sp, 1144                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1152                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1160                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1168                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1176                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1184                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1192                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1200                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1288                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1296
	ret
.LBB0_273:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_274:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	L3psycho_anal, .Lfunc_end0-L3psycho_anal
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_256-.LJTI0_0
	.word	.LBB0_273-.LJTI0_0
	.word	.LBB0_261-.LJTI0_0
	.word	.LBB0_256-.LJTI0_0
                                        # -- End function
	.text
	.globl	L3para_read                     # -- Begin function L3para_read
	.p2align	5
	.type	L3para_read,@function
L3para_read:                            # @L3para_read
# %bb.0:
	addi.d	$sp, $sp, -1296
	st.d	$ra, $sp, 1288                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1208                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1200                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1192                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1184                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1176                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1168                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1160                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1152                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1144                 # 8-byte Folded Spill
	ld.d	$t0, $sp, 1360
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1352
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1344
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1336
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1328
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1320
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1312
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1304
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 1296
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	move	$s3, $a4
	move	$s4, $a3
	move	$s5, $a2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s6, $a0
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(psy_data)
	ld.d	$s7, $a0, %got_pc_lo12(psy_data)
	move	$s0, $zero
	move	$s8, $zero
	lu12i.w	$a0, 391304
	ori	$a0, $a0, 2083
	lu32i.d	$a0, -165604
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu52i.d	$a0, $a0, -1028
	movgr2fr.d	$fs1, $a0
	ori	$a1, $zero, 6
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 6
.LBB1_2:                                # %.loopexit276
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.w	$s8, $s8, 1
	beq	$s8, $a1, .LBB1_14
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_10 Depth 3
	fld.d	$fa0, $s7, 8
	fld.d	$fa1, $s7, 0
	addi.d	$s7, $s7, 16
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa1
	addi.w	$a2, $a0, 1
	bcnez	$fcc0, .LBB1_12
# %bb.4:                                # %.preheader275
                                        #   in Loop: Header=BB1_3 Depth=1
	bltz	$a0, .LBB1_13
# %bb.5:                                # %.lr.ph300.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $zero
	move	$s2, $zero
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$fp, $a2, 31, 0
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %._crit_edge
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s0, $s0, 1
	addi.d	$s7, $s7, 48
	beq	$s0, $fp, .LBB1_1
.LBB1_7:                                # %.lr.ph300
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
	fld.d	$fa0, $s7, 0
	fld.d	$fa1, $s7, 8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s1, $fa0
	ftintrz.w.d	$fa0, $fa1
	fld.d	$fa1, $s7, 16
	movfr2gr.s	$a0, $fa0
	slli.d	$a1, $s0, 2
	stx.w	$a0, $s6, $a1
	vldi	$vr0, -872
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 3
	fstx.d	$fa0, $s4, $a0
	fld.d	$fa0, $s7, 24
	fstx.d	$fa0, $s3, $a0
	fld.d	$fa0, $s7, 40
	bstrpick.d	$a1, $s1, 31, 0
	addi.d	$a2, $sp, 640
	fstx.d	$fa0, $a0, $a2
	bne	$s0, $a1, .LBB1_102
# %bb.8:                                # %.preheader274
                                        #   in Loop: Header=BB1_7 Depth=2
	alsl.d	$a0, $s0, $s6, 2
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB1_6
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$a1, $zero
	alsl.d	$a2, $s2, $s5, 2
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s0, $a2, 0
	ld.w	$a3, $a0, 0
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	blt	$a1, $a3, .LBB1_10
# %bb.11:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB1_7 Depth=2
	add.w	$s2, $s2, $a1
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a0, $a2, 2
	alsl.w	$a0, $a2, $a0, 1
	alsl.d	$s7, $a0, $s7, 3
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $a2
	b	.LBB1_2
.LBB1_14:                               # %.preheader273
	lu12i.w	$s4, 100663
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	blez	$s0, .LBB1_21
# %bb.15:                               # %.preheader272.us.preheader
	move	$s1, $zero
	vldi	$vr3, -904
	vldi	$vr4, -1016
	ori	$a0, $s4, 1212
	lu32i.d	$a0, -109052
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fs1, $a0
	vldi	$vr5, -994
	lu12i.w	$a0, 397418
	ori	$a0, $a0, 2837
	lu32i.d	$a0, -24722
	lu52i.d	$a0, $a0, 1026
	movgr2fr.d	$fs2, $a0
	vldi	$vr6, -912
	ori	$a0, $zero, 0
	lu32i.d	$a0, 98304
	lu52i.d	$a0, $a0, -1021
	movgr2fr.d	$fs3, $a0
	ori	$a0, $zero, 0
	movgr2fr.d	$fs4, $zero
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fs5, $a0
	lu52i.d	$a0, $s8, 1020
	movgr2fr.d	$fs6, $a0
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_16:                               # %._crit_edge307.us
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s5, $s3, 512
	beq	$s1, $s0, .LBB1_21
.LBB1_17:                               # %.preheader272.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	slli.d	$a0, $s1, 3
	addi.d	$fp, $sp, 640
	fldx.d	$fs7, $a0, $fp
	move	$s2, $zero
	move	$s3, $s5
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=2
	fst.d	$fa0, $s5, 0
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$fp, $fp, 8
	beq	$s0, $s2, .LBB1_16
.LBB1_19:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $fp, 0
	sltu	$a0, $s1, $s2
	fsub.d	$fa0, $fs7, $fa0
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa4, $fa3, $fcc0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa0, $fa1, $fs1
	fmadd.d	$fa2, $fa0, $fa5, $fs2
	fmadd.d	$fa0, $fa0, $fa0, $fa6
	fsqrt.d	$fa0, $fa0
	fmadd.d	$fa2, $fa0, $fs3, $fa2
	fcmp.cle.d	$fcc0, $fa2, $fs5
	fmov.d	$fa0, $fs4
	bcnez	$fcc0, .LBB1_18
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=2
	vldi	$vr0, -800
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr3, -896
	fmul.d	$fa3, $fa0, $fa3
	fmadd.d	$fa0, $fa0, $fa0, $fa3
	vldi	$vr3, -992
	fmul.d	$fa0, $fa0, $fa3
	vldi	$vr3, -1020
	fcmp.cle.d	$fcc0, $fa1, $fa3
	fsel	$fa0, $fs4, $fa0, $fcc0
	vldi	$vr3, -928
	fcmp.cle.d	$fcc0, $fa3, $fa1
	fsel	$fa0, $fs4, $fa0, $fcc0
	fadd.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fs6
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr6, -912
	vldi	$vr5, -994
	vldi	$vr4, -1016
	vldi	$vr3, -904
	b	.LBB1_18
.LBB1_21:                               # %.preheader271
	fld.d	$fa0, $s7, 8
	fld.d	$fa1, $s7, 0
	addi.d	$a1, $s7, 16
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	fcmp.ceq.d	$fcc0, $fs0, $fa1
	addi.w	$a0, $a2, 1
	bceqz	$fcc0, .LBB1_27
# %bb.22:                               # %.preheader270
	bltz	$a2, .LBB1_28
# %bb.23:                               # %.lr.ph312.preheader
	move	$a2, $zero
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a4, $sp, 136
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $t2
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	move	$a6, $t4
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	move	$a7, $t3
	.p2align	4, , 16
.LBB1_24:                               # %.lr.ph312
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a1, 8
	fst.d	$fa0, $a6, 0
	fld.d	$fa0, $a1, 32
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t1, $fa1
	ftintrz.w.d	$fa1, $fa2
	fst.d	$fa0, $a7, 0
	fld.d	$fa0, $a1, 40
	movfr2gr.s	$t0, $fa1
	st.w	$t0, $a5, 0
	bstrpick.d	$t1, $t1, 31, 0
	fst.d	$fa0, $a4, 0
	bne	$a2, $t1, .LBB1_107
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	addi.d	$a1, $a1, 48
	addi.d	$t0, $t0, -1
	st.w	$t0, $a5, 0
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 8
	bne	$a3, $a2, .LBB1_24
# %bb.26:                               # %._crit_edge313.loopexit
	move	$a2, $a0
	b	.LBB1_29
.LBB1_27:
	slli.d	$a2, $a0, 2
	alsl.w	$a0, $a0, $a2, 1
	alsl.d	$a1, $a0, $a1, 3
	move	$a0, $s0
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_30
.LBB1_28:
	move	$a2, $zero
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
.LBB1_29:                               # %._crit_edge313
	slli.d	$a2, $a2, 2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	stx.w	$a3, $t2, $a2
.LBB1_30:
	fld.d	$fa0, $a1, 8
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 16
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	fcmp.ceq.d	$fcc0, $fs0, $fa1
	addi.w	$a1, $a3, 1
	bceqz	$fcc0, .LBB1_37
# %bb.31:                               # %.preheader270.1
	move	$a0, $zero
	bltz	$a3, .LBB1_36
# %bb.32:                               # %.lr.ph312.preheader.1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $sp, 136
	move	$a5, $t2
	move	$a6, $t4
	move	$a7, $t3
	.p2align	4, , 16
.LBB1_33:                               # %.lr.ph312.1
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 16
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a2, 8
	fst.d	$fa0, $a6, 0
	fld.d	$fa0, $a2, 32
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t1, $fa1
	ftintrz.w.d	$fa1, $fa2
	fst.d	$fa0, $a7, 0
	fld.d	$fa0, $a2, 40
	movfr2gr.s	$t0, $fa1
	st.w	$t0, $a5, 0
	bstrpick.d	$t1, $t1, 31, 0
	fst.d	$fa0, $a4, 0
	bne	$a0, $t1, .LBB1_107
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=1
	addi.d	$a2, $a2, 48
	addi.d	$t0, $t0, -1
	st.w	$t0, $a5, 0
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 4
	bne	$a3, $a0, .LBB1_33
# %bb.35:                               # %._crit_edge313.loopexit.1
	move	$a0, $a1
.LBB1_36:                               # %._crit_edge313.1
	slli.d	$a0, $a0, 2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	stx.w	$a3, $t2, $a0
	b	.LBB1_38
.LBB1_37:
	slli.d	$a3, $a1, 2
	alsl.w	$a1, $a1, $a3, 1
	alsl.d	$a2, $a1, $a2, 3
	move	$a1, $a0
.LBB1_38:
	fld.d	$fa0, $a2, 8
	fld.d	$fa1, $a2, 0
	addi.d	$a2, $a2, 16
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	fcmp.ceq.d	$fcc0, $fs0, $fa1
	addi.w	$a0, $a3, 1
	bceqz	$fcc0, .LBB1_45
# %bb.39:                               # %.preheader270.2
	move	$a1, $zero
	bltz	$a3, .LBB1_44
# %bb.40:                               # %.lr.ph312.preheader.2
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a4, $sp, 136
	move	$a5, $t2
	move	$a6, $t4
	move	$a7, $t3
	.p2align	4, , 16
.LBB1_41:                               # %.lr.ph312.2
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 16
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a2, 8
	fst.d	$fa0, $a6, 0
	fld.d	$fa0, $a2, 32
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t1, $fa1
	ftintrz.w.d	$fa1, $fa2
	fst.d	$fa0, $a7, 0
	fld.d	$fa0, $a2, 40
	movfr2gr.s	$t0, $fa1
	st.w	$t0, $a5, 0
	bstrpick.d	$t1, $t1, 31, 0
	fst.d	$fa0, $a4, 0
	bne	$a1, $t1, .LBB1_107
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=1
	addi.d	$a2, $a2, 48
	addi.d	$t0, $t0, -1
	st.w	$t0, $a5, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 4
	bne	$a3, $a1, .LBB1_41
# %bb.43:                               # %._crit_edge313.loopexit.2
	move	$a1, $a0
.LBB1_44:                               # %._crit_edge313.2
	slli.d	$a1, $a1, 2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	stx.w	$a3, $t2, $a1
	b	.LBB1_46
.LBB1_45:
	slli.d	$a3, $a0, 2
	alsl.w	$a0, $a0, $a3, 1
	alsl.d	$a2, $a0, $a2, 3
	move	$a0, $a1
.LBB1_46:
	fld.d	$fa0, $a2, 8
	fld.d	$fa1, $a2, 0
	addi.d	$a2, $a2, 16
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	fcmp.ceq.d	$fcc0, $fs0, $fa1
	addi.w	$a1, $a3, 1
	bceqz	$fcc0, .LBB1_53
# %bb.47:                               # %.preheader270.3
	move	$a0, $zero
	bltz	$a3, .LBB1_52
# %bb.48:                               # %.lr.ph312.preheader.3
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $sp, 136
	move	$a5, $t2
	move	$a6, $t4
	move	$a7, $t3
	.p2align	4, , 16
.LBB1_49:                               # %.lr.ph312.3
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 16
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a2, 8
	fst.d	$fa0, $a6, 0
	fld.d	$fa0, $a2, 32
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t1, $fa1
	ftintrz.w.d	$fa1, $fa2
	fst.d	$fa0, $a7, 0
	fld.d	$fa0, $a2, 40
	movfr2gr.s	$t0, $fa1
	st.w	$t0, $a5, 0
	bstrpick.d	$t1, $t1, 31, 0
	fst.d	$fa0, $a4, 0
	bne	$a0, $t1, .LBB1_107
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=1
	addi.d	$a2, $a2, 48
	addi.d	$t0, $t0, -1
	st.w	$t0, $a5, 0
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 4
	bne	$a3, $a0, .LBB1_49
# %bb.51:                               # %._crit_edge313.loopexit.3
	move	$a0, $a1
.LBB1_52:                               # %._crit_edge313.3
	slli.d	$a0, $a0, 2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	stx.w	$a3, $t2, $a0
	b	.LBB1_54
.LBB1_53:
	slli.d	$a3, $a1, 2
	alsl.w	$a1, $a1, $a3, 1
	alsl.d	$a2, $a1, $a2, 3
	move	$a1, $a0
.LBB1_54:
	fld.d	$fa0, $a2, 8
	fld.d	$fa1, $a2, 0
	addi.d	$a2, $a2, 16
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	fcmp.ceq.d	$fcc0, $fs0, $fa1
	addi.w	$a0, $a3, 1
	bceqz	$fcc0, .LBB1_61
# %bb.55:                               # %.preheader270.4
	move	$a1, $zero
	bltz	$a3, .LBB1_60
# %bb.56:                               # %.lr.ph312.preheader.4
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a4, $sp, 136
	move	$a5, $t2
	move	$a6, $t4
	move	$a7, $t3
	.p2align	4, , 16
.LBB1_57:                               # %.lr.ph312.4
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 16
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a2, 8
	fst.d	$fa0, $a6, 0
	fld.d	$fa0, $a2, 32
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t1, $fa1
	ftintrz.w.d	$fa1, $fa2
	fst.d	$fa0, $a7, 0
	fld.d	$fa0, $a2, 40
	movfr2gr.s	$t0, $fa1
	st.w	$t0, $a5, 0
	bstrpick.d	$t1, $t1, 31, 0
	fst.d	$fa0, $a4, 0
	bne	$a1, $t1, .LBB1_107
# %bb.58:                               #   in Loop: Header=BB1_57 Depth=1
	addi.d	$a2, $a2, 48
	addi.d	$t0, $t0, -1
	st.w	$t0, $a5, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 4
	bne	$a3, $a1, .LBB1_57
# %bb.59:                               # %._crit_edge313.loopexit.4
	move	$a1, $a0
.LBB1_60:                               # %._crit_edge313.4
	slli.d	$a1, $a1, 2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	stx.w	$a3, $t2, $a1
	b	.LBB1_62
.LBB1_61:
	slli.d	$a3, $a0, 2
	alsl.w	$a0, $a0, $a3, 1
	alsl.d	$a2, $a0, $a2, 3
	move	$a0, $a1
.LBB1_62:
	fld.d	$fa0, $a2, 8
	fld.d	$fa1, $a2, 0
	addi.d	$s2, $a2, 16
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	fcmp.ceq.d	$fcc0, $fs0, $fa1
	addi.w	$s5, $a1, 1
	bceqz	$fcc0, .LBB1_69
# %bb.63:                               # %.preheader270.5
	move	$a0, $zero
	bltz	$a1, .LBB1_68
# %bb.64:                               # %.lr.ph312.preheader.5
	bstrpick.d	$a1, $s5, 31, 0
	addi.d	$a2, $sp, 136
	move	$a3, $t2
	.p2align	4, , 16
.LBB1_65:                               # %.lr.ph312.5
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s2, 16
	fld.d	$fa1, $s2, 0
	fld.d	$fa2, $s2, 8
	fst.d	$fa0, $t4, 0
	fld.d	$fa0, $s2, 32
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a5, $fa1
	ftintrz.w.d	$fa1, $fa2
	fst.d	$fa0, $t3, 0
	fld.d	$fa0, $s2, 40
	movfr2gr.s	$a4, $fa1
	st.w	$a4, $a3, 0
	bstrpick.d	$a5, $a5, 31, 0
	fst.d	$fa0, $a2, 0
	bne	$a0, $a5, .LBB1_107
# %bb.66:                               #   in Loop: Header=BB1_65 Depth=1
	addi.d	$s2, $s2, 48
	addi.d	$a4, $a4, -1
	st.w	$a4, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 8
	addi.d	$a3, $a3, 4
	bne	$a1, $a0, .LBB1_65
# %bb.67:                               # %._crit_edge313.loopexit.5
	move	$a0, $s5
.LBB1_68:                               # %._crit_edge313.5
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	stx.w	$a1, $t2, $a0
	bgtz	$s5, .LBB1_70
	b	.LBB1_76
.LBB1_69:
	slli.d	$a1, $s5, 2
	alsl.w	$a1, $s5, $a1, 1
	alsl.d	$s2, $a1, $s2, 3
	move	$s5, $a0
	blez	$s5, .LBB1_76
.LBB1_70:                               # %.preheader268.us.preheader
	move	$s0, $zero
	ori	$a0, $s4, 1212
	lu32i.d	$a0, -109052
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fs1, $a0
	vldi	$vr3, -904
	vldi	$vr4, -1016
	vldi	$vr5, -994
	lu12i.w	$a0, 397418
	ori	$a0, $a0, 2837
	lu32i.d	$a0, -24722
	lu52i.d	$a0, $a0, 1026
	movgr2fr.d	$fs2, $a0
	vldi	$vr6, -912
	ori	$a0, $zero, 0
	lu32i.d	$a0, 98304
	lu52i.d	$a0, $a0, -1021
	movgr2fr.d	$fs3, $a0
	ori	$a0, $zero, 0
	movgr2fr.d	$fs4, $zero
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fs5, $a0
	lu52i.d	$a0, $s8, 1020
	movgr2fr.d	$fs6, $a0
	b	.LBB1_72
	.p2align	4, , 16
.LBB1_71:                               # %._crit_edge321.us
                                        #   in Loop: Header=BB1_72 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 512
	beq	$s0, $s5, .LBB1_76
.LBB1_72:                               # %.preheader268.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_74 Depth 2
	slli.d	$a0, $s0, 3
	addi.d	$fp, $sp, 136
	fldx.d	$fs7, $a0, $fp
	move	$s1, $zero
	move	$s3, $s6
	b	.LBB1_74
	.p2align	4, , 16
.LBB1_73:                               #   in Loop: Header=BB1_74 Depth=2
	fst.d	$fa0, $s3, 0
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, 8
	beq	$s5, $s1, .LBB1_71
.LBB1_74:                               #   Parent Loop BB1_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $fp, 0
	sltu	$a0, $s0, $s1
	fsub.d	$fa0, $fs7, $fa0
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa4, $fa3, $fcc0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa0, $fa1, $fs1
	fmadd.d	$fa2, $fa0, $fa5, $fs2
	fmadd.d	$fa0, $fa0, $fa0, $fa6
	fsqrt.d	$fa0, $fa0
	fmadd.d	$fa2, $fa0, $fs3, $fa2
	fcmp.cle.d	$fcc0, $fa2, $fs5
	fmov.d	$fa0, $fs4
	bcnez	$fcc0, .LBB1_73
# %bb.75:                               #   in Loop: Header=BB1_74 Depth=2
	vldi	$vr0, -800
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr3, -896
	fmul.d	$fa3, $fa0, $fa3
	fmadd.d	$fa0, $fa0, $fa0, $fa3
	vldi	$vr3, -992
	fmul.d	$fa0, $fa0, $fa3
	vldi	$vr3, -1020
	fcmp.cle.d	$fcc0, $fa1, $fa3
	fsel	$fa0, $fs4, $fa0, $fcc0
	vldi	$vr3, -928
	fcmp.cle.d	$fcc0, $fa3, $fa1
	fsel	$fa0, $fs4, $fa0, $fcc0
	fadd.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fs6
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr6, -912
	vldi	$vr5, -994
	vldi	$vr4, -1016
	vldi	$vr3, -904
	b	.LBB1_73
.LBB1_76:                               # %.preheader267.preheader
	move	$a0, $zero
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $s3, 8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $s4, 4
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a3, $s5, 4
	vldi	$vr1, -912
	lu12i.w	$a4, 293601
	ori	$a4, $a4, 1147
	lu32i.d	$a4, 293601
	lu52i.d	$a4, $a4, 1016
	movgr2fr.d	$fa0, $a4
	ori	$a4, $zero, 6
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB1_79
	.p2align	4, , 16
.LBB1_77:                               #   in Loop: Header=BB1_79 Depth=1
	alsl.d	$a5, $a6, $a6, 1
	slli.d	$a5, $a5, 1
	addi.w	$a5, $a5, 6
	alsl.d	$s2, $a5, $s2, 3
.LBB1_78:                               # %.loopexit266
                                        #   in Loop: Header=BB1_79 Depth=1
	addi.w	$a0, $a0, 1
	beq	$a0, $a4, .LBB1_88
.LBB1_79:                               # %.preheader267
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_84 Depth 2
	move	$a5, $s2
	fld.d	$fa2, $s2, 8
	fld.d	$fa3, $s2, 0
	addi.d	$s2, $s2, 16
	ftintrz.w.d	$fa2, $fa2
	fcmp.cune.d	$fcc0, $fs0, $fa3
	movfr2gr.s	$a6, $fa2
	bcnez	$fcc0, .LBB1_77
# %bb.80:                               # %.preheader265
                                        #   in Loop: Header=BB1_79 Depth=1
	bltz	$a6, .LBB1_78
# %bb.81:                               # %.lr.ph326.preheader
                                        #   in Loop: Header=BB1_79 Depth=1
	fld.d	$fa2, $a5, 16
	ftintrz.w.d	$fa2, $fa2
	fld.d	$fa3, $a5, 32
	movfr2gr.s	$a7, $fa2
	fld.d	$fa2, $a5, 40
	fld.d	$fa4, $a5, 48
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
	ftintrz.w.d	$fa2, $fa2
	fst.d	$fa4, $s3, 0
	fld.d	$fa3, $a5, 56
	movfr2gr.s	$t1, $fa2
	st.w	$t0, $s5, 0
	st.w	$t1, $s4, 0
	fst.d	$fa3, $s1, 0
	bnez	$a7, .LBB1_101
# %bb.82:                               #   in Loop: Header=BB1_79 Depth=1
	addi.d	$s2, $a5, 64
	beqz	$a6, .LBB1_78
# %bb.83:                               # %.lr.ph326.preheader549
                                        #   in Loop: Header=BB1_79 Depth=1
	addi.d	$a5, $a6, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	move	$a7, $a3
	move	$t0, $a2
	move	$fp, $a1
	move	$s0, $s1
	.p2align	4, , 16
.LBB1_84:                               # %.lr.ph326
                                        #   Parent Loop BB1_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $s2, 0
	fld.d	$fa3, $s2, 16
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t2, $fa2
	fld.d	$fa2, $s2, 24
	ftintrz.w.d	$fa3, $fa3
	fld.d	$fa4, $s2, 32
	movfr2gr.s	$t3, $fa3
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t4, $fa2
	fst.d	$fa4, $fp, 0
	fld.d	$fa2, $s2, 40
	st.w	$t3, $a7, 0
	st.w	$t4, $t0, 0
	bstrpick.d	$t2, $t2, 31, 0
	fst.d	$fa2, $s0, 8
	bne	$a6, $t2, .LBB1_101
# %bb.85:                               #   in Loop: Header=BB1_84 Depth=2
	fld.d	$fa2, $fp, 0
	fld.d	$fa3, $s0, 0
	fsub.d	$fa2, $fa1, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB1_104
# %bb.86:                               #   in Loop: Header=BB1_84 Depth=2
	move	$t1, $s2
	addi.d	$a6, $a6, 1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$s2, $s2, 48
	bne	$a5, $a6, .LBB1_84
# %bb.87:                               #   in Loop: Header=BB1_79 Depth=1
	addi.d	$s2, $t1, 48
	b	.LBB1_78
.LBB1_88:                               # %.preheader264.preheader
	move	$a0, $zero
	addi.d	$a1, $t6, 8
	addi.d	$a2, $t7, 4
	addi.d	$a3, $t8, 4
	vldi	$vr1, -912
	ori	$a4, $zero, 6
	b	.LBB1_91
	.p2align	4, , 16
.LBB1_89:                               #   in Loop: Header=BB1_91 Depth=1
	alsl.d	$a5, $a5, $a5, 1
	slli.d	$a5, $a5, 1
	addi.w	$a5, $a5, 6
	alsl.d	$t2, $a5, $t2, 3
.LBB1_90:                               # %.loopexit
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.w	$a0, $a0, 1
	move	$s2, $t2
	beq	$a0, $a4, .LBB1_100
.LBB1_91:                               # %.preheader264
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_96 Depth 2
	fld.d	$fa2, $s2, 8
	fld.d	$fa3, $s2, 0
	addi.d	$t2, $s2, 16
	ftintrz.w.d	$fa2, $fa2
	fcmp.cune.d	$fcc0, $fs0, $fa3
	movfr2gr.s	$a5, $fa2
	bcnez	$fcc0, .LBB1_89
# %bb.92:                               # %.preheader
                                        #   in Loop: Header=BB1_91 Depth=1
	bltz	$a5, .LBB1_90
# %bb.93:                               # %.lr.ph334.preheader
                                        #   in Loop: Header=BB1_91 Depth=1
	fld.d	$fa2, $s2, 16
	ftintrz.w.d	$fa2, $fa2
	fld.d	$fa3, $s2, 32
	movfr2gr.s	$a6, $fa2
	fld.d	$fa2, $s2, 40
	fld.d	$fa4, $s2, 48
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
	ftintrz.w.d	$fa2, $fa2
	fst.d	$fa4, $t6, 0
	fld.d	$fa3, $s2, 56
	movfr2gr.s	$t0, $fa2
	st.w	$a7, $t8, 0
	st.w	$t0, $t7, 0
	fst.d	$fa3, $t5, 0
	bnez	$a6, .LBB1_101
# %bb.94:                               #   in Loop: Header=BB1_91 Depth=1
	addi.d	$t2, $s2, 64
	beqz	$a5, .LBB1_90
# %bb.95:                               # %.lr.ph334.preheader547
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	move	$a7, $a3
	move	$t0, $a2
	move	$fp, $a1
	move	$s0, $t5
	.p2align	4, , 16
.LBB1_96:                               # %.lr.ph334
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t1, $t2
	fld.d	$fa2, $t2, 0
	fld.d	$fa3, $t2, 16
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t2, $fa2
	fld.d	$fa2, $t1, 24
	ftintrz.w.d	$fa3, $fa3
	fld.d	$fa4, $t1, 32
	movfr2gr.s	$t3, $fa3
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t4, $fa2
	fst.d	$fa4, $fp, 0
	fld.d	$fa2, $t1, 40
	st.w	$t3, $a7, 0
	st.w	$t4, $t0, 0
	bstrpick.d	$t2, $t2, 31, 0
	fst.d	$fa2, $s0, 8
	bne	$a6, $t2, .LBB1_101
# %bb.97:                               #   in Loop: Header=BB1_96 Depth=2
	fld.d	$fa2, $fp, 0
	fld.d	$fa3, $s0, 0
	fsub.d	$fa2, $fa1, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB1_105
# %bb.98:                               #   in Loop: Header=BB1_96 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$t2, $t1, 48
	bne	$a5, $a6, .LBB1_96
# %bb.99:                               #   in Loop: Header=BB1_91 Depth=1
	addi.d	$t2, $t1, 48
	b	.LBB1_90
.LBB1_100:
	fld.d	$fs7, $sp, 1144                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1152                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1160                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1168                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1176                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1184                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1192                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1200                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1288                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1296
	ret
.LBB1_101:                              # %.loopexit395
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_102:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB1_103:
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_104:                              # %.loopexit396
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB1_106
.LBB1_105:                              # %.loopexit408
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
.LBB1_106:                              # %.loopexit396
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $s0, 0
	ld.d	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_107:                              # %.loopexit376
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB1_103
.Lfunc_end1:
	.size	L3para_read, .Lfunc_end1-L3para_read
                                        # -- End function
	.type	L3psycho_anal.minval,@object    # @L3psycho_anal.minval
	.local	L3psycho_anal.minval
	.comm	L3psycho_anal.minval,504,8
	.type	L3psycho_anal.qthr_l,@object    # @L3psycho_anal.qthr_l
	.local	L3psycho_anal.qthr_l
	.comm	L3psycho_anal.qthr_l,504,8
	.type	L3psycho_anal.qthr_s,@object    # @L3psycho_anal.qthr_s
	.local	L3psycho_anal.qthr_s
	.comm	L3psycho_anal.qthr_s,504,8
	.type	L3psycho_anal.nb_1,@object      # @L3psycho_anal.nb_1
	.local	L3psycho_anal.nb_1
	.comm	L3psycho_anal.nb_1,2016,8
	.type	L3psycho_anal.nb_2,@object      # @L3psycho_anal.nb_2
	.local	L3psycho_anal.nb_2
	.comm	L3psycho_anal.nb_2,2016,8
	.type	L3psycho_anal.s3_s,@object      # @L3psycho_anal.s3_s
	.local	L3psycho_anal.s3_s
	.comm	L3psycho_anal.s3_s,32768,8
	.type	L3psycho_anal.s3_l,@object      # @L3psycho_anal.s3_l
	.local	L3psycho_anal.s3_l
	.comm	L3psycho_anal.s3_l,32768,8
	.type	L3psycho_anal.thm,@object       # @L3psycho_anal.thm
	.local	L3psycho_anal.thm
	.comm	L3psycho_anal.thm,1952,8
	.type	L3psycho_anal.en,@object        # @L3psycho_anal.en
	.local	L3psycho_anal.en
	.comm	L3psycho_anal.en,1952,8
	.type	L3psycho_anal.cw_upper_index,@object # @L3psycho_anal.cw_upper_index
	.local	L3psycho_anal.cw_upper_index
	.comm	L3psycho_anal.cw_upper_index,4,4
	.type	L3psycho_anal.cw_lower_index,@object # @L3psycho_anal.cw_lower_index
	.local	L3psycho_anal.cw_lower_index
	.comm	L3psycho_anal.cw_lower_index,1,4
	.type	L3psycho_anal.ax_sav,@object    # @L3psycho_anal.ax_sav
	.local	L3psycho_anal.ax_sav
	.comm	L3psycho_anal.ax_sav,16416,8
	.type	L3psycho_anal.bx_sav,@object    # @L3psycho_anal.bx_sav
	.local	L3psycho_anal.bx_sav
	.comm	L3psycho_anal.bx_sav,16416,8
	.type	L3psycho_anal.rx_sav,@object    # @L3psycho_anal.rx_sav
	.local	L3psycho_anal.rx_sav
	.comm	L3psycho_anal.rx_sav,16416,8
	.type	L3psycho_anal.cw,@object        # @L3psycho_anal.cw
	.local	L3psycho_anal.cw
	.comm	L3psycho_anal.cw,2052,16
	.type	L3psycho_anal.wsamp_L,@object   # @L3psycho_anal.wsamp_L
	.local	L3psycho_anal.wsamp_L
	.comm	L3psycho_anal.wsamp_L,8192,4
	.type	L3psycho_anal.energy,@object    # @L3psycho_anal.energy
	.local	L3psycho_anal.energy
	.comm	L3psycho_anal.energy,2052,4
	.type	L3psycho_anal.wsamp_S,@object   # @L3psycho_anal.wsamp_S
	.local	L3psycho_anal.wsamp_S
	.comm	L3psycho_anal.wsamp_S,6144,4
	.type	L3psycho_anal.energy_s,@object  # @L3psycho_anal.energy_s
	.local	L3psycho_anal.energy_s
	.comm	L3psycho_anal.energy_s,1548,4
	.type	L3psycho_anal.eb,@object        # @L3psycho_anal.eb
	.local	L3psycho_anal.eb
	.comm	L3psycho_anal.eb,504,8
	.type	L3psycho_anal.cb,@object        # @L3psycho_anal.cb
	.local	L3psycho_anal.cb
	.comm	L3psycho_anal.cb,504,8
	.type	L3psycho_anal.thr,@object       # @L3psycho_anal.thr
	.local	L3psycho_anal.thr
	.comm	L3psycho_anal.thr,504,8
	.type	L3psycho_anal.w1_l,@object      # @L3psycho_anal.w1_l
	.local	L3psycho_anal.w1_l
	.comm	L3psycho_anal.w1_l,168,8
	.type	L3psycho_anal.w2_l,@object      # @L3psycho_anal.w2_l
	.local	L3psycho_anal.w2_l
	.comm	L3psycho_anal.w2_l,168,8
	.type	L3psycho_anal.w1_s,@object      # @L3psycho_anal.w1_s
	.local	L3psycho_anal.w1_s
	.comm	L3psycho_anal.w1_s,96,8
	.type	L3psycho_anal.w2_s,@object      # @L3psycho_anal.w2_s
	.local	L3psycho_anal.w2_s
	.comm	L3psycho_anal.w2_s,96,8
	.type	L3psycho_anal.mld_l,@object     # @L3psycho_anal.mld_l
	.local	L3psycho_anal.mld_l
	.comm	L3psycho_anal.mld_l,168,16
	.type	L3psycho_anal.mld_s,@object     # @L3psycho_anal.mld_s
	.local	L3psycho_anal.mld_s
	.comm	L3psycho_anal.mld_s,96,16
	.type	L3psycho_anal.bu_l,@object      # @L3psycho_anal.bu_l
	.local	L3psycho_anal.bu_l
	.comm	L3psycho_anal.bu_l,84,4
	.type	L3psycho_anal.bo_l,@object      # @L3psycho_anal.bo_l
	.local	L3psycho_anal.bo_l
	.comm	L3psycho_anal.bo_l,84,4
	.type	L3psycho_anal.bu_s,@object      # @L3psycho_anal.bu_s
	.local	L3psycho_anal.bu_s
	.comm	L3psycho_anal.bu_s,48,4
	.type	L3psycho_anal.bo_s,@object      # @L3psycho_anal.bo_s
	.local	L3psycho_anal.bo_s
	.comm	L3psycho_anal.bo_s,48,4
	.type	L3psycho_anal.npart_l,@object   # @L3psycho_anal.npart_l
	.local	L3psycho_anal.npart_l
	.comm	L3psycho_anal.npart_l,4,4
	.type	L3psycho_anal.npart_s,@object   # @L3psycho_anal.npart_s
	.local	L3psycho_anal.npart_s
	.comm	L3psycho_anal.npart_s,4,4
	.type	L3psycho_anal.npart_l_orig,@object # @L3psycho_anal.npart_l_orig
	.local	L3psycho_anal.npart_l_orig
	.comm	L3psycho_anal.npart_l_orig,4,4
	.type	L3psycho_anal.npart_s_orig,@object # @L3psycho_anal.npart_s_orig
	.local	L3psycho_anal.npart_s_orig
	.comm	L3psycho_anal.npart_s_orig,4,4
	.type	L3psycho_anal.s3ind,@object     # @L3psycho_anal.s3ind
	.local	L3psycho_anal.s3ind
	.comm	L3psycho_anal.s3ind,504,4
	.type	L3psycho_anal.s3ind_s,@object   # @L3psycho_anal.s3ind_s
	.local	L3psycho_anal.s3ind_s
	.comm	L3psycho_anal.s3ind_s,504,4
	.type	L3psycho_anal.numlines_s,@object # @L3psycho_anal.numlines_s
	.local	L3psycho_anal.numlines_s
	.comm	L3psycho_anal.numlines_s,252,4
	.type	L3psycho_anal.numlines_l,@object # @L3psycho_anal.numlines_l
	.local	L3psycho_anal.numlines_l
	.comm	L3psycho_anal.numlines_l,252,4
	.type	L3psycho_anal.partition_l,@object # @L3psycho_anal.partition_l
	.local	L3psycho_anal.partition_l
	.comm	L3psycho_anal.partition_l,2052,8
	.type	L3psycho_anal.pe,@object        # @L3psycho_anal.pe
	.local	L3psycho_anal.pe
	.comm	L3psycho_anal.pe,32,8
	.type	L3psycho_anal.ms_ratio_s_old,@object # @L3psycho_anal.ms_ratio_s_old
	.local	L3psycho_anal.ms_ratio_s_old
	.comm	L3psycho_anal.ms_ratio_s_old,8,8
	.type	L3psycho_anal.ms_ratio_l_old,@object # @L3psycho_anal.ms_ratio_l_old
	.local	L3psycho_anal.ms_ratio_l_old
	.comm	L3psycho_anal.ms_ratio_l_old,8,8
	.type	L3psycho_anal.ms_ener_ratio_old,@object # @L3psycho_anal.ms_ener_ratio_old
	.data
	.p2align	3, 0x0
L3psycho_anal.ms_ener_ratio_old:
	.dword	0x3fd0000000000000              # double 0.25
	.size	L3psycho_anal.ms_ener_ratio_old, 8

	.type	L3psycho_anal.blocktype_old,@object # @L3psycho_anal.blocktype_old
	.local	L3psycho_anal.blocktype_old
	.comm	L3psycho_anal.blocktype_old,8,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error, invalid sampling frequency: %d Hz\n"
	.size	.L.str, 42

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error in block selecting\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"1. please check \"psy_data\""
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"3. please check \"psy_data\""
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"30:please check \"psy_data\"\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"31l: please check \"psy_data.\"\n"
	.size	.L.str.5, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"w1,w2: %f %f \n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"31s: please check \"psy_data.\"\n"
	.size	.L.str.7, 31

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym L3psycho_anal.minval
	.addrsig_sym L3psycho_anal.qthr_l
	.addrsig_sym L3psycho_anal.qthr_s
	.addrsig_sym L3psycho_anal.s3_s
	.addrsig_sym L3psycho_anal.s3_l
	.addrsig_sym L3psycho_anal.wsamp_L
	.addrsig_sym L3psycho_anal.wsamp_S
	.addrsig_sym L3psycho_anal.w1_l
	.addrsig_sym L3psycho_anal.w2_l
	.addrsig_sym L3psycho_anal.w1_s
	.addrsig_sym L3psycho_anal.w2_s
	.addrsig_sym L3psycho_anal.bu_l
	.addrsig_sym L3psycho_anal.bo_l
	.addrsig_sym L3psycho_anal.bu_s
	.addrsig_sym L3psycho_anal.bo_s
	.addrsig_sym L3psycho_anal.numlines_s
	.addrsig_sym L3psycho_anal.numlines_l
	.addrsig_sym L3psycho_anal.partition_l
