	.file	"psymodel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function L3psycho_anal
.LCPI0_0:
	.dword	0x408f400000000000              # double 1000
.LCPI0_1:
	.dword	0x4090000000000000              # double 1024
.LCPI0_2:
	.dword	0x416153d9a3000000              # double 9084621.09375
.LCPI0_11:
	.dword	0x3fd0137987dd704c              # double 0.25118864315095801
.LCPI0_12:
	.dword	0x3fcd791c5f888823              # double 0.23025850929940458
.LCPI0_13:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
.LCPI0_14:
	.dword	0x3fb0270ac3f8a9f9              # double 0.063095734448019317
.LCPI0_15:
	.dword	0x3fa8f6869e6f084d              # double 0.048755843010000001
.LCPI0_16:
	.dword	0x3fdfedfbdeea22f7              # double 0.49890038269999998
.LCPI0_17:
	.dword	0x3fea6ff6e4078667              # double 0.82616753136626364
.LCPI0_18:
	.dword	0x3ff30298b36105e3              # double 1.1881339079849276
.LCPI0_19:
	.dword	0x40a7700000000000              # double 3000
.LCPI0_20:
	.dword	0x3ff947ae147ae148              # double 1.5800000000000001
.LCPI0_21:
	.dword	0x3fe6666666666666              # double 0.69999999999999996
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_3:
	.dword	0x3f69e7c6e43390b7              # double 0.0031622776601683794
	.dword	0x3f6c9323c534cddb              # double 0.0034881304397005159
	.dword	0x3f730c0cd2dc51a4              # double 0.0046501637387063345
	.dword	0x3f7e1800bd1fad13              # double 0.0073471096857063043
.LCPI0_4:
	.dword	0x3f8b4f7e2b2c2a91              # double 0.013335214321633234
	.dword	0x3f9b56adfe1a8d8a              # double 0.026697844156513585
	.dword	0x3faccab8602d2692              # double 0.056234132519034877
	.dword	0x3fbe5289b7ccc08b              # double 0.11844692933368799
.LCPI0_5:
	.dword	0x3fce5a84719edcce              # double 0.23713737056616541
	.dword	0x3fdb8bdb0dfb81ef              # double 0.43041111340974586
	.dword	0x3fe5c2da5de54871              # double 0.68003576601974036
	.dword	0x3fed02b917109c2c              # double 0.90658239846096
.LCPI0_6:
	.dword	0x3f69e7c6e43390b7              # double 0.0031622776601683794
	.dword	0x3f6ac06f83763a3b              # double 0.0032655885694972387
	.dword	0x3f6d706639d5c887              # double 0.0035936352348296427
	.dword	0x3f71397ea6f6b13a              # double 0.0042052218772535236
.LCPI0_7:
	.dword	0x3f755ba8c82a8ba8              # double 0.0052143662493645895
	.dword	0x3f7beda7a0c5893e              # double 0.0068184421510031883
	.dword	0x3f832421767ffbc6              # double 0.0093462576187429806
	.dword	0x3f8b4f7e2b2c2a91              # double 0.013335214321633234
.LCPI0_8:
	.dword	0x3f941eab43952c27              # double 0.019648242950364072
	.dword	0x3f9e596c3b309b4b              # double 0.029637995827353419
	.dword	0x3fa73840d9d607da              # double 0.045351053801837529
	.dword	0x3fb1d9c04928942a              # double 0.069728868351902534
.LCPI0_9:
	.dword	0x3fbb507a530a8d1b              # double 0.10669674422620228
	.dword	0x3fc499d4c1c1c1dc              # double 0.16094455204758062
	.dword	0x3fce5a84719edcce              # double 0.23713737056616541
	.dword	0x3fd5a779ebdbd985              # double 0.33834693940243482
.LCPI0_10:
	.dword	0x3fddae9ef4bedb09              # double 0.4637830152600349
	.dword	0x3fe36813fc23e21a              # double 0.60645484205366817
	.dword	0x3fe81049c5a7f437              # double 0.75198830227566915
	.dword	0x3fec28aef2028a7f              # double 0.87996623294414167
	.text
	.globl	L3psycho_anal
	.p2align	5
	.type	L3psycho_anal,@function
L3psycho_anal:                          # @L3psycho_anal
# %bb.0:
	addi.d	$sp, $sp, -1264
	st.d	$ra, $sp, 1256                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1176                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1168                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1160                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1152                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1144                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1136                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1128                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1120                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1112                 # 8-byte Folded Spill
	move	$s6, $a6
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cw_lower_index)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cw_upper_index)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cw)
	addi.d	$s1, $a0, %pc_lo12(L3psycho_anal.cw)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w2_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w2_s)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w1_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w1_s)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bo_s)
	addi.d	$s7, $a0, %pc_lo12(L3psycho_anal.bo_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bu_s)
	addi.d	$s5, $a0, %pc_lo12(L3psycho_anal.bu_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w2_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w2_l)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.w1_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.w1_l)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bo_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.bo_l)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bu_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.bu_l)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.numlines_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.numlines_s)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.npart_l_orig)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.npart_s_orig)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.npart_l)
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(L3psycho_anal.npart_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3ind_s)
	addi.d	$s0, $a0, %pc_lo12(L3psycho_anal.s3ind_s)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3ind)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.s3ind)
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	st.d	$s1, $sp, 440                   # 8-byte Folded Spill
	bnez	$a2, .LBB0_66
# %bb.1:
	ld.d	$a0, $s3, 168
	bnez	$a0, .LBB0_66
# %bb.2:
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.blocktype_old)
	ori	$a4, $zero, 3
	ld.w	$fp, $s3, 16
	lu32i.d	$a4, 3
	lu12i.w	$a0, 7
	ori	$a3, $a0, 3327
	st.d	$a4, $a1, %pc_lo12(L3psycho_anal.blocktype_old)
	st.d	$s6, $sp, 560                   # 8-byte Folded Spill
	st.d	$a7, $sp, 544                   # 8-byte Folded Spill
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	blt	$a3, $fp, .LBB0_6
# %bb.3:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3712
	beq	$fp, $a0, .LBB0_9
# %bb.4:
	lu12i.w	$a0, 5
	ori	$a1, $a0, 1570
	beq	$fp, $a1, .LBB0_9
# %bb.5:
	ori	$a0, $a0, 3520
	beq	$fp, $a0, .LBB0_9
	b	.LBB0_272
.LBB0_6:
	ori	$a0, $a0, 3328
	beq	$fp, $a0, .LBB0_9
# %bb.7:
	lu12i.w	$a0, 10
	ori	$a0, $a0, 3140
	beq	$fp, $a0, .LBB0_9
# %bb.8:
	lu12i.w	$a0, 11
	ori	$a0, $a0, 2944
	bne	$fp, $a0, .LBB0_272
.LBB0_9:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.rx_sav)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.rx_sav)
	lu12i.w	$a1, 4
	ori	$s6, $a1, 32
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.ax_sav)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.ax_sav)
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.bx_sav)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.bx_sav)
	move	$a1, $zero
	move	$a2, $s6
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
	movgr2fr.w	$fa1, $zero
	fcmp.clt.s	$fcc0, $fa1, $fa0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	fcvt.d.s	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fa0, $fa2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.b	$a0, $a1, %pc_lo12(L3psycho_anal.cw_lower_index)
	fsel	$fa0, $fa1, $fa0, $fcc0
	bstrpick.d	$a0, $fp, 31, 0
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
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(L3psycho_anal.cw_upper_index)
	lu12i.w	$a0, 257228
	ori	$a0, $a0, 3277
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $s1, 0
	xvst	$xr0, $s1, 32
	xvst	$xr0, $s1, 64
	xvst	$xr0, $s1, 96
	xvst	$xr0, $s1, 128
	xvst	$xr0, $s1, 160
	xvst	$xr0, $s1, 192
	xvst	$xr0, $s1, 224
	xvst	$xr0, $s1, 256
	xvst	$xr0, $s1, 288
	xvst	$xr0, $s1, 320
	xvst	$xr0, $s1, 352
	xvst	$xr0, $s1, 384
	xvst	$xr0, $s1, 416
	xvst	$xr0, $s1, 448
	xvst	$xr0, $s1, 480
	xvst	$xr0, $s1, 512
	xvst	$xr0, $s1, 544
	xvst	$xr0, $s1, 576
	xvst	$xr0, $s1, 608
	xvst	$xr0, $s1, 640
	xvst	$xr0, $s1, 672
	xvst	$xr0, $s1, 704
	xvst	$xr0, $s1, 736
	xvst	$xr0, $s1, 768
	xvst	$xr0, $s1, 800
	xvst	$xr0, $s1, 832
	xvst	$xr0, $s1, 864
	xvst	$xr0, $s1, 896
	xvst	$xr0, $s1, 928
	xvst	$xr0, $s1, 960
	xvst	$xr0, $s1, 992
	xvst	$xr0, $s1, 1024
	xvst	$xr0, $s1, 1056
	xvst	$xr0, $s1, 1088
	xvst	$xr0, $s1, 1120
	xvst	$xr0, $s1, 1152
	xvst	$xr0, $s1, 1184
	xvst	$xr0, $s1, 1216
	xvst	$xr0, $s1, 1248
	xvst	$xr0, $s1, 1280
	xvst	$xr0, $s1, 1312
	xvst	$xr0, $s1, 1344
	xvst	$xr0, $s1, 1376
	xvst	$xr0, $s1, 1408
	xvst	$xr0, $s1, 1440
	xvst	$xr0, $s1, 1472
	xvst	$xr0, $s1, 1504
	xvst	$xr0, $s1, 1536
	xvst	$xr0, $s1, 1568
	xvst	$xr0, $s1, 1600
	xvst	$xr0, $s1, 1632
	xvst	$xr0, $s1, 1664
	xvst	$xr0, $s1, 1696
	xvst	$xr0, $s1, 1728
	xvst	$xr0, $s1, 1760
	xvst	$xr0, $s1, 1792
	xvst	$xr0, $s1, 1824
	xvst	$xr0, $s1, 1856
	xvst	$xr0, $s1, 1888
	xvst	$xr0, $s1, 1920
	xvst	$xr0, $s1, 1952
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_3)
	xvst	$xr0, $s1, 1984
	xvst	$xr0, $s1, 2016
	stptr.w	$a0, $s1, 2048
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.mld_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.mld_s)
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_6)
	xvst	$xr1, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr2, $a0, 64
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.mld_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.mld_l)
	xvst	$xr3, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_7)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_7)
	pcalau12i	$a1, %pc_hi20(.LCPI0_8)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_8)
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_9)
	pcalau12i	$a1, %pc_hi20(.LCPI0_10)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_10)
	xvst	$xr0, $a0, 32
	xvst	$xr1, $a0, 64
	xvst	$xr2, $a0, 96
	xvst	$xr3, $a0, 128
	lu12i.w	$a1, 18980
	ori	$a1, $a1, 1920
	lu32i.d	$a1, -66346
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, 160
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.partition_l)
	addi.d	$s6, $a0, %pc_lo12(L3psycho_anal.partition_l)
	ori	$a1, $zero, 255
	ori	$a2, $zero, 2052
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s2, $s3
	ld.w	$a0, $s3, 16
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56
	st.d	$s7, $sp, 48
	st.d	$s5, $sp, 40
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.numlines_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.numlines_l)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.minval)
	addi.d	$a3, $a1, %pc_lo12(L3psycho_anal.minval)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.qthr_l)
	addi.d	$a4, $a1, %pc_lo12(L3psycho_anal.qthr_l)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.s3_l)
	addi.d	$fp, $a1, %pc_lo12(L3psycho_anal.s3_l)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.s3_s)
	addi.d	$s8, $a1, %pc_lo12(L3psycho_anal.s3_s)
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.qthr_s)
	addi.d	$a7, $a1, %pc_lo12(L3psycho_anal.qthr_s)
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a5, $fp
	move	$a6, $s8
	pcaddu18i	$ra, %call36(L3para_read)
	jirl	$ra, $ra, 0
	xvld	$xr0, $s6, 32
	xvld	$xr1, $s6, 96
	xvld	$xr2, $s6, 160
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvld	$xr1, $s6, 224
	xvld	$xr2, $s6, 288
	xvld	$xr3, $s6, 352
	xvld	$xr4, $s6, 416
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr3
	xvmax.w	$xr0, $xr0, $xr4
	xvld	$xr1, $s6, 480
	xvld	$xr2, $s6, 544
	xvld	$xr3, $s6, 608
	xvld	$xr4, $s6, 672
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr3
	xvmax.w	$xr0, $xr0, $xr4
	xvld	$xr1, $s6, 736
	xvld	$xr2, $s6, 800
	xvld	$xr3, $s6, 864
	xvld	$xr4, $s6, 928
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr3
	xvmax.w	$xr0, $xr0, $xr4
	xvld	$xr1, $s6, 992
	xvld	$xr2, $s6, 1056
	xvld	$xr3, $s6, 1120
	xvld	$xr4, $s6, 1184
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr3
	xvmax.w	$xr0, $xr0, $xr4
	xvld	$xr1, $s6, 1248
	xvld	$xr2, $s6, 1312
	xvld	$xr3, $s6, 1376
	xvld	$xr4, $s6, 1440
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr3
	xvmax.w	$xr0, $xr0, $xr4
	xvld	$xr1, $s6, 1504
	xvld	$xr2, $s6, 1568
	xvld	$xr3, $s6, 1632
	xvld	$xr4, $s6, 1696
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr3
	xvmax.w	$xr0, $xr0, $xr4
	xvld	$xr1, $s6, 1760
	xvld	$xr2, $s6, 1824
	xvld	$xr3, $s6, 1888
	xvld	$xr4, $s6, 1952
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr3
	xvmax.w	$xr0, $xr0, $xr4
	xvld	$xr1, $s6, 2016
	xvld	$xr2, $s6, 0
	xvld	$xr3, $s6, 64
	xvld	$xr4, $s6, 128
	xvld	$xr5, $s6, 192
	xvmax.w	$xr0, $xr0, $xr1
	xvmax.w	$xr1, $xr2, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvld	$xr2, $s6, 256
	xvld	$xr3, $s6, 320
	xvld	$xr4, $s6, 384
	xvld	$xr5, $s6, 448
	xvmax.w	$xr1, $xr1, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvld	$xr2, $s6, 512
	xvld	$xr3, $s6, 576
	xvld	$xr4, $s6, 640
	xvld	$xr5, $s6, 704
	xvmax.w	$xr1, $xr1, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvld	$xr2, $s6, 768
	xvld	$xr3, $s6, 832
	xvld	$xr4, $s6, 896
	xvld	$xr5, $s6, 960
	xvmax.w	$xr1, $xr1, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvld	$xr2, $s6, 1024
	xvld	$xr3, $s6, 1088
	xvld	$xr4, $s6, 1152
	xvld	$xr5, $s6, 1216
	xvmax.w	$xr1, $xr1, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvld	$xr2, $s6, 1280
	xvld	$xr3, $s6, 1344
	xvld	$xr4, $s6, 1408
	xvld	$xr5, $s6, 1472
	xvmax.w	$xr1, $xr1, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvld	$xr2, $s6, 1536
	xvld	$xr3, $s6, 1600
	xvld	$xr4, $s6, 1664
	xvld	$xr5, $s6, 1728
	xvmax.w	$xr1, $xr1, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvld	$xr2, $s6, 1792
	xvld	$xr3, $s6, 1856
	xvld	$xr4, $s6, 1920
	xvld	$xr5, $s6, 1984
	xvmax.w	$xr1, $xr1, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	xvmax.w	$xr1, $xr1, $xr4
	xvmax.w	$xr1, $xr1, $xr5
	xvmax.w	$xr0, $xr0, $xr1
	xvmaxi.w	$xr0, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	ldptr.w	$a0, $s6, 2048
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a1, $vr0, 0
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$t1, $a0, $a1
	addi.w	$a6, $t1, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.w	$a6, $a0, %pc_lo12(L3psycho_anal.npart_l_orig)
	addi.d	$a2, $s8, -16
	addi.d	$a3, $zero, -2
	addi.w	$a4, $zero, -1
	.p2align	4, , 16
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s1, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	addi.d	$s1, $s1, 4
	bgez	$a1, .LBB0_10
# %bb.11:
	ld.d	$t2, $sp, 368                   # 8-byte Folded Reload
	ld.w	$t0, $t2, 80
	addi.w	$a5, $a3, 1
	ld.w	$a7, $s7, 44
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	st.w	$a5, $a0, %pc_lo12(L3psycho_anal.npart_s_orig)
	addi.w	$a1, $t0, 1
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	st.w	$a1, $t3, %pc_lo12(L3psycho_anal.npart_l)
	addi.w	$a0, $a7, 1
	st.w	$a0, $s4, %pc_lo12(L3psycho_anal.npart_s)
	blt	$t1, $t0, .LBB0_14
# %bb.12:
	ld.d	$s6, $sp, 560                   # 8-byte Folded Reload
	bge	$a7, $a5, .LBB0_15
.LBB0_13:
	bgtz	$a1, .LBB0_16
	b	.LBB0_26
.LBB0_14:
	st.w	$a6, $t3, %pc_lo12(L3psycho_anal.npart_l)
	st.w	$t1, $t2, 80
	lu52i.d	$a1, $zero, 1023
	ld.d	$t0, $sp, 352                   # 8-byte Folded Reload
	st.d	$a1, $t0, 160
	move	$a1, $a6
	ld.d	$s6, $sp, 560                   # 8-byte Folded Reload
	blt	$a7, $a5, .LBB0_13
.LBB0_15:
	st.w	$a5, $s4, %pc_lo12(L3psycho_anal.npart_s)
	st.w	$a3, $s7, 44
	lu52i.d	$a0, $zero, 1023
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a7, 88
	move	$a0, $a5
	blez	$a1, .LBB0_26
.LBB0_16:                               # %.preheader969.lr.ph
	bstrpick.d	$a7, $a6, 31, 0
	slti	$t0, $a6, 1
	ori	$t2, $zero, 1
	masknez	$t2, $t2, $t0
	maskeqz	$t0, $a6, $t0
	or	$t0, $t0, $t2
	addi.d	$t0, $t0, -1
	slli.d	$t1, $t1, 3
	pcalau12i	$t2, %pc_hi20(L3psycho_anal.s3_l)
	addi.d	$t2, $t2, %pc_lo12(L3psycho_anal.s3_l)
	move	$t3, $zero
	movgr2fr.d	$fa0, $zero
	ori	$t4, $zero, 2
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=1
	move	$t5, $t0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	st.w	$t5, $t6, 4
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, 512
	beq	$t3, $a1, .LBB0_26
.LBB0_19:                               # %.lr.ph.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	move	$t5, $zero
	move	$t6, $a7
	move	$t7, $t2
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $t7, 0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 8
	bnez	$t6, .LBB0_20
# %bb.22:                               #   in Loop: Header=BB0_19 Depth=1
	move	$t5, $a6
.LBB0_23:                               # %._crit_edge
                                        #   in Loop: Header=BB0_19 Depth=1
	ld.d	$t8, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t6, $t3, $t8, 3
	slli.d	$t7, $t3, 3
	stx.w	$t5, $t8, $t7
	move	$t7, $t1
	move	$t5, $a6
	.p2align	4, , 16
.LBB0_24:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$t5, $t4, .LBB0_17
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	fldx.d	$fa1, $t2, $t7
	addi.w	$t5, $t5, -1
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	addi.d	$t7, $t7, -8
	bcnez	$fcc0, .LBB0_24
	b	.LBB0_18
.LBB0_26:                               # %.preheader968
	blez	$a0, .LBB0_37
# %bb.27:                               # %.preheader967.lr.ph
	pcalau12i	$a6, %pc_hi20(L3psycho_anal.s3_s)
	addi.d	$a6, $a6, %pc_lo12(L3psycho_anal.s3_s)
	move	$a7, $zero
	ori	$t0, $zero, 2
	movgr2fr.d	$fa0, $zero
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=1
	st.w	$t4, $t2, 4
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 512
	addi.d	$a2, $a2, 512
	beq	$a7, $a0, .LBB0_37
.LBB0_29:                               # %.preheader967
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_35 Depth 2
	move	$t1, $zero
	beqz	$a4, .LBB0_34
# %bb.30:                               # %.lr.ph990.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	move	$t2, $a4
	move	$t3, $a6
	.p2align	4, , 16
.LBB0_31:                               # %.lr.ph990
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $t3, 0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 8
	bnez	$t2, .LBB0_31
# %bb.33:                               #   in Loop: Header=BB0_29 Depth=1
	move	$t1, $a5
.LBB0_34:                               # %._crit_edge991
                                        #   in Loop: Header=BB0_29 Depth=1
	alsl.d	$t2, $a7, $s0, 3
	slli.d	$t3, $a7, 3
	stx.w	$t1, $s0, $t3
	move	$t1, $a2
	move	$t5, $a3
	move	$t3, $a4
	.p2align	4, , 16
.LBB0_35:                               #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t4, $t5
	blt	$t3, $t0, .LBB0_28
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	fld.d	$fa1, $t1, 0
	addi.d	$t5, $t4, -1
	addi.d	$t1, $t1, -8
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	addi.d	$t3, $t3, -1
	bcnez	$fcc0, .LBB0_35
	b	.LBB0_28
.LBB0_37:                               # %.preheader966
	blez	$a1, .LBB0_49
# %bb.38:                               # %.lr.ph1008.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI0_11)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_11)
	move	$a2, $zero
	movgr2fr.d	$fa1, $zero
	ori	$a3, $zero, 7
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_39:                               # %._crit_edge1006
                                        #   in Loop: Header=BB0_40 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$fp, $fp, 512
	beq	$a2, $a1, .LBB0_49
.LBB0_40:                               # %.lr.ph1008
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_48 Depth 2
	ld.d	$a6, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a6, 3
	slli.d	$a4, $a2, 3
	ldx.w	$a4, $a6, $a4
	ld.w	$a5, $a5, 4
	blt	$a5, $a4, .LBB0_39
# %bb.41:                               # %.lr.ph1000
                                        #   in Loop: Header=BB0_40 Depth=1
	slli.d	$a6, $a4, 3
	alsl.d	$t0, $a4, $fp, 3
	sub.w	$a7, $a5, $a4
	addi.d	$t1, $a7, 1
	fmov.d	$fa2, $fa1
	.p2align	4, , 16
.LBB0_42:                               #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t0, 0
	fadd.d	$fa2, $fa2, $fa3
	addi.w	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB0_42
# %bb.43:                               # %.lr.ph1005
                                        #   in Loop: Header=BB0_40 Depth=1
	fdiv.d	$fa2, $fa0, $fa2
	bltu	$a7, $a3, .LBB0_47
# %bb.44:                               # %vector.ph1480
                                        #   in Loop: Header=BB0_40 Depth=1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	bstrpick.d	$t1, $a7, 32, 3
	slli.d	$t0, $t1, 3
	alsl.d	$a4, $t1, $a4, 3
	xvreplve0.d	$xr3, $xr2
	move	$t1, $t0
	.p2align	4, , 16
.LBB0_45:                               # %vector.body1481
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $fp, $a6
	xvldx	$xr4, $fp, $a6
	xvld	$xr5, $t2, 32
	xvfmul.d	$xr4, $xr3, $xr4
	xvfmul.d	$xr5, $xr3, $xr5
	xvstx	$xr4, $fp, $a6
	xvst	$xr5, $t2, 32
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, 64
	bnez	$t1, .LBB0_45
# %bb.46:                               # %middle.block1486
                                        #   in Loop: Header=BB0_40 Depth=1
	beq	$a7, $t0, .LBB0_39
.LBB0_47:                               # %scalar.ph1479.preheader
                                        #   in Loop: Header=BB0_40 Depth=1
	slli.d	$a6, $a4, 3
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB0_48:                               # %scalar.ph1479
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa3, $fp, $a6
	fmul.d	$fa3, $fa2, $fa3
	fstx.d	$fa3, $fp, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	bnez	$a4, .LBB0_48
	b	.LBB0_39
.LBB0_49:                               # %._crit_edge1009
	ld.w	$a1, $s2, 192
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_53
# %bb.50:                               # %._crit_edge1009
	blez	$a0, .LBB0_53
# %bb.51:                               # %.lr.ph1011.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_12)
	move	$fp, $zero
	addi.d	$s1, $sp, 592
	.p2align	4, , 16
.LBB0_52:                               # %.lr.ph1011
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s1, 0
	fmul.d	$fa0, $fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(L3psycho_anal.npart_s)
	fst.d	$fa0, $s1, 0
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 8
	blt	$fp, $a0, .LBB0_52
.LBB0_53:                               # %.loopexit964
	blez	$a0, .LBB0_65
# %bb.54:                               # %.lr.ph1025.preheader
	move	$a1, $zero
	movgr2fr.d	$fa0, $zero
	addi.d	$a2, $sp, 592
	ori	$a3, $zero, 7
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_55:                               # %._crit_edge1022
                                        #   in Loop: Header=BB0_56 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$s8, $s8, 512
	beq	$a1, $a0, .LBB0_65
.LBB0_56:                               # %.lr.ph1025
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_64 Depth 2
	alsl.d	$a5, $a1, $s0, 3
	slli.d	$a7, $a1, 3
	ldx.w	$a4, $s0, $a7
	ld.w	$a5, $a5, 4
	blt	$a5, $a4, .LBB0_55
# %bb.57:                               # %.lr.ph1016
                                        #   in Loop: Header=BB0_56 Depth=1
	slli.d	$a6, $a4, 3
	alsl.d	$t1, $a4, $s8, 3
	sub.w	$t0, $a5, $a4
	addi.d	$t2, $t0, 1
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB0_58:                               #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t1, 0
	fadd.d	$fa1, $fa1, $fa2
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_58
# %bb.59:                               # %.lr.ph1021
                                        #   in Loop: Header=BB0_56 Depth=1
	fldx.d	$fa2, $a7, $a2
	fdiv.d	$fa1, $fa2, $fa1
	bltu	$t0, $a3, .LBB0_63
# %bb.60:                               # %vector.ph1490
                                        #   in Loop: Header=BB0_56 Depth=1
	bstrpick.d	$a7, $t0, 31, 0
	addi.d	$a7, $a7, 1
	bstrpick.d	$t1, $a7, 32, 3
	slli.d	$t0, $t1, 3
	alsl.d	$a4, $t1, $a4, 3
	xvreplve0.d	$xr2, $xr1
	move	$t1, $t0
	.p2align	4, , 16
.LBB0_61:                               # %vector.body1495
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $s8, $a6
	xvldx	$xr3, $s8, $a6
	xvld	$xr4, $t2, 32
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvstx	$xr3, $s8, $a6
	xvst	$xr4, $t2, 32
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, 64
	bnez	$t1, .LBB0_61
# %bb.62:                               # %middle.block1501
                                        #   in Loop: Header=BB0_56 Depth=1
	beq	$a7, $t0, .LBB0_55
.LBB0_63:                               # %scalar.ph1488.preheader
                                        #   in Loop: Header=BB0_56 Depth=1
	slli.d	$a6, $a4, 3
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB0_64:                               # %scalar.ph1488
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $s8, $a6
	fmul.d	$fa2, $fa2, $fa1
	fstx.d	$fa2, $s8, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	bnez	$a4, .LBB0_64
	b	.LBB0_55
.LBB0_65:                               # %._crit_edge1026
	pcaddu18i	$ra, %call36(init_fft)
	jirl	$ra, $ra, 0
	move	$s3, $s2
	ld.d	$a7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
.LBB0_66:
	ld.w	$a1, $s3, 36
	ld.w	$a0, $s3, 204
	addi.d	$a3, $a1, -1
	sltui	$a4, $a3, 1
	masknez	$a0, $a0, $a4
	ori	$a3, $zero, 4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.thm)
	addi.d	$s2, $a0, %pc_lo12(L3psycho_anal.thm)
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	blez	$a3, .LBB0_199
# %bb.67:                               # %.lr.ph1133
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s4, $sp, 272                   # 8-byte Folded Spill
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1272
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1264
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3_s)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.s3_s)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.s3_l)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.s3_l)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $a2, $a0
	add.d	$a1, $a7, $a0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	add.d	$a0, $s6, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.ax_sav)
	addi.d	$a1, $a0, %pc_lo12(L3psycho_anal.ax_sav)
	ori	$a0, $zero, 2056
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	add.d	$a2, $a1, $a0
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.bx_sav)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.bx_sav)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.rx_sav)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.rx_sav)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ori	$s2, $zero, 3072
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.wsamp_L)
	addi.d	$s3, $a0, %pc_lo12(L3psycho_anal.wsamp_L)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.wsamp_S)
	addi.d	$fp, $a0, %pc_lo12(L3psycho_anal.wsamp_S)
	move	$s4, $zero
	move	$a1, $zero
	ori	$s8, $zero, 1
	xvldi	$xr7, -3265
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, -1
	ori	$a0, $a0, 2044
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 8
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a0, 258896
	ori	$a0, $a0, 1267
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	xvst	$xr7, $sp, 224                  # 32-byte Folded Spill
	fst.s	$fa0, $sp, 132                  # 4-byte Folded Spill
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	xori	$s4, $s4, 1
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ori	$s2, $zero, 3072
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_193
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_81 Depth 2
                                        #     Child Loop BB0_83 Depth 2
                                        #     Child Loop BB0_85 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_98 Depth 2
                                        #     Child Loop BB0_110 Depth 2
                                        #     Child Loop BB0_126 Depth 2
                                        #       Child Loop BB0_128 Depth 3
                                        #     Child Loop BB0_134 Depth 2
                                        #       Child Loop BB0_136 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_160 Depth 2
                                        #     Child Loop BB0_167 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #     Child Loop BB0_172 Depth 2
                                        #       Child Loop BB0_175 Depth 3
                                        #         Child Loop BB0_177 Depth 4
                                        #       Child Loop BB0_183 Depth 3
                                        #         Child Loop BB0_185 Depth 4
                                        #       Child Loop BB0_188 Depth 3
                                        #         Child Loop BB0_190 Depth 4
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	andi	$a0, $a1, 1
	mul.d	$a2, $a0, $s2
	add.d	$s1, $fp, $a2
	slli.d	$a0, $a0, 12
	add.d	$a6, $s3, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.pe)
	addi.d	$a3, $a0, %pc_lo12(L3psycho_anal.pe)
	slli.d	$a5, $a1, 3
	ori	$a0, $zero, 488
	mul.d	$a4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.en)
	addi.d	$a2, $a0, %pc_lo12(L3psycho_anal.en)
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	st.d	$a3, $sp, 560                   # 8-byte Folded Spill
	st.d	$a5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$a6, $sp, 496                   # 8-byte Folded Spill
	bltu	$s8, $a1, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	move	$a0, $a6
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$s6, $a3
	move	$s2, $a5
	pcaddu18i	$ra, %call36(fft_long)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fft_short)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $s6, $s2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s2
	ori	$s2, $zero, 3072
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ori	$a1, $zero, 976
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a0, $s1
	ori	$a2, $zero, 488
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, 488
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s1
	ori	$a2, $zero, 488
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=1
	fldx.d	$fa0, $a3, $a5
	addi.d	$a0, $a1, -2
	slli.d	$a1, $a0, 3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	fstx.d	$fa0, $a3, $a1
	ori	$a1, $zero, 976
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	addi.d	$a0, $s6, 488
	add.d	$a1, $a2, $a4
	ori	$a2, $zero, 488
	move	$s1, $a4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	add.d	$a1, $a0, $s1
	ori	$a2, $zero, 488
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	ori	$a0, $zero, 2
	ori	$a5, $zero, 4064
	bne	$t1, $a0, .LBB0_80
# %bb.72:                               # %vector.body1574.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	lu12i.w	$a4, 1
	move	$a0, $a4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ori	$a6, $zero, 3040
	.p2align	4, , 16
.LBB0_73:                               # %vector.body1574
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s3, $a0
	xvld	$xr1, $a1, -32
	xvldx	$xr2, $a1, $a5
	xvfadd.s	$xr3, $xr1, $xr2
	xvreplgr2vr.w	$xr0, $a2
	xvfmul.s	$xr3, $xr3, $xr0
	xvst	$xr3, $a1, -32
	xvfsub.s	$xr1, $xr1, $xr2
	xvfmul.s	$xr1, $xr1, $xr0
	addi.d	$a0, $a0, -32
	xvstx	$xr1, $a1, $a5
	bnez	$a0, .LBB0_73
# %bb.74:                               # %vector.body1561.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_75:                               # %vector.body1561
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $fp, $a1
	xvldx	$xr1, $a2, $a6
	ori	$a3, $a4, 2016
	xvldx	$xr2, $a2, $a3
	xvfadd.s	$xr3, $xr1, $xr2
	xvfmul.s	$xr3, $xr3, $xr0
	xvstx	$xr3, $a2, $a6
	xvfsub.s	$xr1, $xr1, $xr2
	xvfmul.s	$xr1, $xr1, $xr0
	addi.d	$a1, $a1, -32
	addi.w	$a0, $zero, -1024
	xvstx	$xr1, $a2, $a3
	bne	$a1, $a0, .LBB0_75
# %bb.76:                               # %vector.body1548.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_77:                               # %vector.body1548
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $fp, $a1
	xvld	$xr1, $a2, 2016
	ori	$a3, $a4, 992
	xvldx	$xr2, $a2, $a3
	xvfadd.s	$xr3, $xr1, $xr2
	xvfmul.s	$xr3, $xr3, $xr0
	xvst	$xr3, $a2, 2016
	xvfsub.s	$xr1, $xr1, $xr2
	xvfmul.s	$xr1, $xr1, $xr0
	addi.d	$a1, $a1, -32
	xvstx	$xr1, $a2, $a3
	bne	$a1, $a0, .LBB0_77
# %bb.78:                               # %vector.body1535.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_79:                               # %vector.body1535
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $fp, $a1
	xvld	$xr1, $a2, 992
	xvldx	$xr2, $a2, $a5
	xvfadd.s	$xr3, $xr1, $xr2
	xvfmul.s	$xr3, $xr3, $xr0
	xvst	$xr3, $a2, 992
	xvfsub.s	$xr1, $xr1, $xr2
	xvfmul.s	$xr1, $xr1, $xr0
	addi.d	$a1, $a1, -32
	xvstx	$xr1, $a2, $a5
	bne	$a1, $a0, .LBB0_79
.LBB0_80:                               # %.loopexit960
                                        #   in Loop: Header=BB0_69 Depth=1
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	andi	$a0, $s4, 1
	mul.d	$t4, $a0, $s2
	slli.d	$a0, $a0, 12
	add.d	$s4, $s3, $a0
	add.d	$a4, $fp, $t4
	addi.d	$a0, $a4, 4
	addi.d	$a1, $a4, 992
	addi.d	$a2, $a4, 1028
	addi.d	$a3, $a4, 2016
	ld.d	$a5, $sp, 496                   # 8-byte Folded Reload
	fld.s	$fs0, $a5, 0
	addi.d	$a5, $a4, 2047
	addi.d	$a4, $a5, 5
	addi.d	$a5, $a5, 993
	fmul.s	$fa0, $fs0, $fs0
	pcalau12i	$a6, %pc_hi20(L3psycho_anal.energy)
	addi.d	$t3, $a6, %pc_lo12(L3psycho_anal.energy)
	fst.s	$fa0, $t3, 0
	addi.d	$a6, $sp, 592
	alsl.d	$a6, $t1, $a6, 2
	ori	$a7, $zero, 4092
	ori	$t0, $zero, 4
	ori	$t2, $zero, 2044
	xvld	$xr7, $sp, 224                  # 32-byte Folded Reload
	.p2align	4, , 16
.LBB0_81:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s4, $a7
	fldx.s	$fa2, $s4, $t0
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmul.s	$fa1, $fa1, $fa6
	fstx.s	$fa1, $t3, $t0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, 4
	bne	$a7, $t2, .LBB0_81
# %bb.82:                               # %.preheader958
                                        #   in Loop: Header=BB0_69 Depth=1
	ori	$a7, $zero, 2048
	ld.d	$t5, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa1, $t5, $a7
	fst.s	$fa0, $a6, 0
	fmul.s	$fa0, $fa1, $fa1
	pcalau12i	$a6, %pc_hi20(L3psycho_anal.energy_s)
	addi.d	$s6, $a6, %pc_lo12(L3psycho_anal.energy_s)
	move	$a6, $zero
	fst.s	$fa0, $s6, 1032
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ori	$t2, $zero, 512
	ori	$ra, $zero, 21
	.p2align	4, , 16
.LBB0_83:                               # %vector.body1525
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, 0
	xvldx	$xr1, $a4, $a6
	xvfmul.s	$xr0, $xr0, $xr0
	xvpermi.d	$xr0, $xr0, 78
	xvshuf4i.w	$xr0, $xr0, 27
	xvfmadd.s	$xr0, $xr1, $xr1, $xr0
	xvfmul.s	$xr0, $xr0, $xr7
	add.d	$a7, $s6, $a6
	xvst	$xr0, $a7, 1036
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, -32
	bne	$a6, $t2, .LBB0_83
# %bb.84:                               # %middle.block1532
                                        #   in Loop: Header=BB0_69 Depth=1
	fld.s	$fa0, $t5, 1024
	move	$a4, $zero
	fmul.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s6, 516
	.p2align	4, , 16
.LBB0_85:                               # %vector.body1515
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a3, 0
	xvldx	$xr1, $a2, $a4
	xvfmul.s	$xr0, $xr0, $xr0
	xvpermi.d	$xr0, $xr0, 78
	xvshuf4i.w	$xr0, $xr0, 27
	xvfmadd.s	$xr0, $xr1, $xr1, $xr0
	xvfmul.s	$xr0, $xr0, $xr7
	add.d	$a5, $s6, $a4
	xvst	$xr0, $a5, 520
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, -32
	bne	$a4, $t2, .LBB0_85
# %bb.86:                               # %middle.block1522
                                        #   in Loop: Header=BB0_69 Depth=1
	fld.s	$fa0, $t5, 0
	move	$a2, $zero
	fmul.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s6, 0
	.p2align	4, , 16
.LBB0_87:                               # %vector.body1506
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvldx	$xr1, $a0, $a2
	xvfmul.s	$xr0, $xr0, $xr0
	xvpermi.d	$xr0, $xr0, 78
	xvshuf4i.w	$xr0, $xr0, 27
	xvfmadd.s	$xr0, $xr1, $xr1, $xr0
	xvfmul.s	$xr0, $xr0, $xr7
	add.d	$a3, $s6, $a2
	xvst	$xr0, $a3, 4
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, -32
	bne	$a2, $t2, .LBB0_87
# %bb.88:                               # %.preheader957
                                        #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	ld.bu	$a0, $a3, %pc_lo12(L3psycho_anal.cw_lower_index)
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_106
# %bb.89:                               # %.lr.ph1036
                                        #   in Loop: Header=BB0_69 Depth=1
	slli.d	$a0, $t1, 12
	alsl.d	$a0, $t1, $a0, 3
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a0
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	add.d	$a2, $a6, $a0
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	add.d	$fp, $a7, $a0
	ori	$t2, $zero, 2052
	fldx.s	$fs5, $a1, $t2
	fldx.s	$fs4, $a2, $t2
	fldx.s	$fs2, $a4, $a0
	fldx.s	$fs1, $fp, $t2
	fldx.s	$fs6, $a6, $a0
	fldx.s	$fs3, $a7, $a0
	fstx.s	$fs2, $a1, $t2
	fld.s	$fa1, $t3, 0
	fstx.s	$fs6, $a2, $t2
	fstx.s	$fs3, $fp, $t2
	fstx.s	$fs0, $a4, $a0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fstx.s	$fs0, $a6, $a0
	bceqz	$fcc0, .LBB0_191
# %bb.90:                               # %.lr.ph1036.split
                                        #   in Loop: Header=BB0_69 Depth=1
	fld.s	$fa4, $sp, 132                  # 4-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs3, $fa4
	fst.s	$fa0, $fp, 0
	bcnez	$fcc0, .LBB0_192
.LBB0_91:                               #   in Loop: Header=BB0_69 Depth=1
	fmul.s	$fa3, $fs2, $fs6
	fneg.s	$fa1, $fs6
	fmul.s	$fa1, $fs6, $fa1
	fmadd.s	$fa1, $fs2, $fs2, $fa1
	fmul.s	$fa2, $fa1, $fa6
	fmul.s	$fa1, $fs3, $fs3
	fcmp.ceq.s	$fcc0, $fs1, $fa4
	bcnez	$fcc0, .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_69 Depth=1
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
.LBB0_93:                               #   in Loop: Header=BB0_69 Depth=1
	vldi	$vr4, -1280
	fmsub.s	$fa4, $fs3, $fa4, $fs1
	fabs.s	$fa5, $fa4
	fadd.s	$fa0, $fa5, $fa0
	movgr2fr.w	$ft0, $zero
	fcmp.ceq.s	$fcc0, $fa0, $ft0
	bcnez	$fcc0, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_69 Depth=1
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
.LBB0_95:                               #   in Loop: Header=BB0_69 Depth=1
	ld.bu	$a0, $a3, %pc_lo12(L3psycho_anal.cw_lower_index)
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 0
	beqz	$a0, .LBB0_106
# %bb.96:                               # %.peel.next.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$fp, $zero
	ori	$s1, $zero, 1
	ori	$s2, $zero, 4092
	b	.LBB0_98
	.p2align	4, , 16
.LBB0_97:                               #   in Loop: Header=BB0_98 Depth=2
	ld.bu	$a0, $a3, %pc_lo12(L3psycho_anal.cw_lower_index)
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	add.d	$a1, $a1, $fp
	fst.s	$fa0, $a1, 4
	addi.d	$s1, $s1, 1
	ori	$a1, $zero, 6
	maskeqz	$s3, $a1, $a0
	addi.d	$s2, $s2, -4
	addi.d	$fp, $fp, 4
	bgeu	$s1, $s3, .LBB0_107
.LBB0_98:                               # %.peel.next
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $a5, $fp
	fldx.s	$fs6, $a5, $fp
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	add.d	$a1, $a2, $fp
	fldx.s	$fs7, $a2, $fp
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fs2, $a0, $a6
	fldx.s	$fs1, $a1, $a6
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	add.d	$s3, $a4, $fp
	fldx.s	$fs3, $a4, $fp
	fstx.s	$fs2, $a5, $fp
	fstx.s	$fs1, $a2, $fp
	fldx.s	$fs5, $s3, $a6
	add.d	$a2, $s4, $fp
	fld.s	$fs0, $a2, 4
	add.d	$a2, $t3, $fp
	fld.s	$fa1, $a2, 4
	fstx.s	$fs5, $a4, $fp
	fldx.s	$fs4, $s4, $s2
	fstx.s	$fs0, $a0, $a6
	move	$a0, $a6
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fstx.s	$fs4, $a1, $a6
	bceqz	$fcc0, .LBB0_104
# %bb.99:                               # %.peel.next.split
                                        #   in Loop: Header=BB0_98 Depth=2
	fcmp.ceq.s	$fcc0, $fs5, $ft0
	fstx.s	$fa0, $s3, $a0
	bcnez	$fcc0, .LBB0_105
.LBB0_100:                              #   in Loop: Header=BB0_98 Depth=2
	fmul.s	$fa1, $fs2, $fs1
	fneg.s	$fa2, $fs1
	fmul.s	$fa2, $fs1, $fa2
	fmadd.s	$fa2, $fs2, $fs2, $fa2
	fmul.s	$fa3, $fa2, $fa6
	fmul.s	$fa2, $fs5, $fs5
	fcmp.ceq.s	$fcc0, $fs3, $ft0
	bcnez	$fcc0, .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_98 Depth=2
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
.LBB0_102:                              #   in Loop: Header=BB0_98 Depth=2
	vldi	$vr4, -1280
	fmsub.s	$fa4, $fs5, $fa4, $fs3
	fabs.s	$fa5, $fa4
	fadd.s	$fa0, $fa5, $fa0
	movgr2fr.w	$fa5, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa5
	bcnez	$fcc0, .LBB0_97
# %bb.103:                              #   in Loop: Header=BB0_98 Depth=2
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
	b	.LBB0_97
.LBB0_104:                              # %call.sqrt1984
                                        #   in Loop: Header=BB0_98 Depth=2
	fmov.s	$fa0, $fa1
	st.d	$t3, $sp, 512                   # 8-byte Folded Spill
	st.d	$t4, $sp, 496                   # 8-byte Folded Spill
	fst.s	$ft0, $sp, 480                  # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fld.s	$ft0, $sp, 480                  # 4-byte Folded Reload
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 512                   # 8-byte Folded Reload
	ori	$ra, $zero, 21
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs5, $ft0
	fstx.s	$fa0, $s3, $a0
	bceqz	$fcc0, .LBB0_100
	.p2align	4, , 16
.LBB0_105:                              #   in Loop: Header=BB0_98 Depth=2
	vldi	$vr2, -1168
	fmov.s	$fa3, $ft0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fs3, $ft0
	bceqz	$fcc0, .LBB0_101
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_106:                              #   in Loop: Header=BB0_69 Depth=1
	move	$s3, $zero
.LBB0_107:                              # %.preheader956
                                        #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(L3psycho_anal.cw_upper_index)
	bge	$s3, $a2, .LBB0_122
# %bb.108:                              # %.lr.ph1039
                                        #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 2
	addi.d	$s4, $a0, 8
	addi.d	$a0, $s3, 2
	andi	$a0, $a0, 12
	sub.d	$a1, $t4, $a0
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1
	add.d	$fp, $a2, $a1
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.energy_s)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.energy_s)
	add.d	$a1, $a1, $a0
	addi.d	$s2, $a1, 516
	add.d	$a0, $t4, $a0
	add.d	$s1, $a2, $a0
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_109:                              #   in Loop: Header=BB0_110 Depth=2
	fst.s	$fa0, $s4, -8
	fst.s	$fa0, $s4, 4
	fst.s	$fa0, $s4, 0
	fst.s	$fa0, $s4, -4
	addi.d	$s3, $s3, 4
	ld.w	$a2, $a3, %pc_lo12(L3psycho_anal.cw_upper_index)
	addi.d	$s4, $s4, 16
	addi.d	$fp, $fp, -4
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 4
	bge	$s3, $a2, .LBB0_122
.LBB0_110:                              #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa5, $s2, -516
	movgr2fr.w	$fs4, $zero
	fcmp.ceq.s	$fcc0, $fa5, $fs4
	bcnez	$fcc0, .LBB0_113
# %bb.111:                              #   in Loop: Header=BB0_110 Depth=2
	fld.s	$fa0, $s1, -2048
	fld.s	$fa1, $fp, -1024
	fmul.s	$ft0, $fa0, $fa1
	fneg.s	$fa2, $fa1
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fsqrt.s	$fs0, $fa5
	fcmp.cor.s	$fcc0, $fs0, $fs0
	fmul.s	$fs3, $fa0, $fa6
	bcnez	$fcc0, .LBB0_114
# %bb.112:                              # %call.sqrt1985
                                        #   in Loop: Header=BB0_110 Depth=2
	fmov.s	$fa0, $fa5
	st.d	$t3, $sp, 512                   # 8-byte Folded Spill
	vst	$vr5, $sp, 496                  # 16-byte Folded Spill
	vst	$vr8, $sp, 480                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 480                  # 16-byte Folded Reload
	vld	$vr5, $sp, 496                  # 16-byte Folded Reload
	ld.d	$t3, $sp, 512                   # 8-byte Folded Reload
	ori	$ra, $zero, 21
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	fmov.s	$fs0, $fa0
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_113:                              #   in Loop: Header=BB0_110 Depth=2
	vldi	$vr8, -1168
	fmov.s	$fs0, $fa5
	fmov.s	$fs3, $fs4
	vldi	$vr5, -1168
.LBB0_114:                              #   in Loop: Header=BB0_110 Depth=2
	fld.s	$fs1, $s2, 516
	fcmp.ceq.s	$fcc0, $fs1, $fs4
	bcnez	$fcc0, .LBB0_117
# %bb.115:                              #   in Loop: Header=BB0_110 Depth=2
	fld.s	$fs4, $s1, 0
	fld.s	$fs2, $fp, 1024
	fsqrt.s	$fa0, $fs1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_121
.LBB0_116:                              # %.split1986
                                        #   in Loop: Header=BB0_110 Depth=2
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
.LBB0_117:                              #   in Loop: Header=BB0_110 Depth=2
	fld.s	$fa1, $s2, 0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_120
.LBB0_118:                              # %.split1988
                                        #   in Loop: Header=BB0_110 Depth=2
	vldi	$vr1, -1280
	fmsub.s	$fa1, $fs0, $fa1, $fs1
	fabs.s	$fa2, $fa1
	fadd.s	$fa0, $fa2, $fa0
	movgr2fr.w	$fa2, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB0_109
# %bb.119:                              #   in Loop: Header=BB0_110 Depth=2
	fld.s	$fa2, $s1, -1024
	fld.s	$fa3, $fp, 0
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
	b	.LBB0_109
.LBB0_120:                              # %call.sqrt1989
                                        #   in Loop: Header=BB0_110 Depth=2
	fmov.s	$fa0, $fa1
	st.d	$t3, $sp, 512                   # 8-byte Folded Spill
	vst	$vr5, $sp, 496                  # 16-byte Folded Spill
	vst	$vr8, $sp, 480                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 480                  # 16-byte Folded Reload
	vld	$vr5, $sp, 496                  # 16-byte Folded Reload
	ld.d	$t3, $sp, 512                   # 8-byte Folded Reload
	ori	$ra, $zero, 21
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	b	.LBB0_118
.LBB0_121:                              # %call.sqrt1987
                                        #   in Loop: Header=BB0_110 Depth=2
	fmov.s	$fa0, $fs1
	st.d	$t3, $sp, 512                   # 8-byte Folded Spill
	vst	$vr5, $sp, 496                  # 16-byte Folded Spill
	vst	$vr8, $sp, 480                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 480                  # 16-byte Folded Reload
	vld	$vr5, $sp, 496                  # 16-byte Folded Reload
	ld.d	$t3, $sp, 512                   # 8-byte Folded Reload
	ori	$ra, $zero, 21
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_122:                              # %.preheader955
                                        #   in Loop: Header=BB0_69 Depth=1
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.numlines_l)
	addi.d	$t4, $a0, %pc_lo12(L3psycho_anal.numlines_l)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.eb)
	addi.d	$s3, $a0, %pc_lo12(L3psycho_anal.eb)
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.cb)
	addi.d	$t5, $a0, %pc_lo12(L3psycho_anal.cb)
	blez	$a2, .LBB0_130
# %bb.123:                              # %.lr.ph1054.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	ori	$t2, $zero, 2
	b	.LBB0_126
	.p2align	4, , 16
.LBB0_124:                              #   in Loop: Header=BB0_126 Depth=2
	move	$a1, $a5
.LBB0_125:                              # %._crit_edge1048
                                        #   in Loop: Header=BB0_126 Depth=2
	slli.d	$a3, $a0, 3
	fstx.d	$fa0, $s3, $a3
	fstx.d	$fa1, $t5, $a3
	addi.d	$a0, $a0, 1
	bge	$a1, $a2, .LBB0_131
.LBB0_126:                              # %.lr.ph1054
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_128 Depth 3
	slli.d	$a3, $a1, 2
	fldx.s	$fa1, $t3, $a3
	fldx.s	$fa2, $a7, $a3
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $t4, $a3
	fcvt.d.s	$fa0, $fa1
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	addi.w	$a5, $a1, 1
	blt	$a3, $t2, .LBB0_124
# %bb.127:                              # %.lr.ph1047.preheader
                                        #   in Loop: Header=BB0_126 Depth=2
	alsl.d	$a4, $a5, $t3, 2
	alsl.d	$a5, $a5, $a7, 2
	addi.d	$a6, $a3, 1
	.p2align	4, , 16
.LBB0_128:                              # %.lr.ph1047
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
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
	bltu	$t2, $a6, .LBB0_128
# %bb.129:                              # %._crit_edge1048.loopexit
                                        #   in Loop: Header=BB0_126 Depth=2
	add.w	$a1, $a1, $a3
	b	.LBB0_125
	.p2align	4, , 16
.LBB0_130:                              #   in Loop: Header=BB0_69 Depth=1
	move	$a1, $zero
	move	$a0, $zero
	ori	$t2, $zero, 2
.LBB0_131:                              # %.preheader954
                                        #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(L3psycho_anal.npart_l_orig)
	addi.w	$a3, $a0, 0
	bge	$a3, $a2, .LBB0_138
# %bb.132:                              #   in Loop: Header=BB0_69 Depth=1
	bstrpick.d	$a2, $a2, 31, 0
	move	$a3, $a0
	b	.LBB0_134
	.p2align	4, , 16
.LBB0_133:                              # %._crit_edge1063
                                        #   in Loop: Header=BB0_134 Depth=2
	pcalau12i	$a1, %pc_hi20(.LCPI0_13)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_13)
	slli.d	$a1, $a0, 3
	fstx.d	$fa0, $s3, $a1
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t5, $a1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	move	$a1, $a5
	beq	$a3, $a2, .LBB0_138
.LBB0_134:                              # %.lr.ph1068
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_136 Depth 3
	slli.d	$a4, $a1, 2
	fldx.s	$fa0, $t3, $a4
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $t4, $a4
	fcvt.d.s	$fa0, $fa0
	addi.w	$a5, $a1, 1
	blt	$a4, $t2, .LBB0_133
# %bb.135:                              # %.lr.ph1062.preheader
                                        #   in Loop: Header=BB0_134 Depth=2
	alsl.d	$a5, $a5, $t3, 2
	addi.d	$a6, $a4, 1
	.p2align	4, , 16
.LBB0_136:                              # %.lr.ph1062
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a5, 0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bltu	$t2, $a6, .LBB0_136
# %bb.137:                              # %._crit_edge1063.loopexit
                                        #   in Loop: Header=BB0_134 Depth=2
	add.w	$a5, $a1, $a4
	b	.LBB0_133
	.p2align	4, , 16
.LBB0_138:                              # %._crit_edge1069
                                        #   in Loop: Header=BB0_69 Depth=1
	ld.w	$a0, $t0, %pc_lo12(L3psycho_anal.npart_l)
	ld.d	$a2, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	stx.d	$zero, $a2, $a1
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.thr)
	addi.d	$s4, $a1, %pc_lo12(L3psycho_anal.thr)
	blez	$a0, .LBB0_153
# %bb.139:                              # %.lr.ph1081
                                        #   in Loop: Header=BB0_69 Depth=1
	st.d	$t5, $sp, 496                   # 8-byte Folded Spill
	st.d	$t4, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a2, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ori	$a0, $zero, 504
	mul.d	$a0, $t1, $a0
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.nb_1)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.nb_1)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 560                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.nb_2)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.nb_2)
	move	$fp, $zero
	movgr2fr.d	$fs1, $zero
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	fmov.d	$fs0, $fs1
	b	.LBB0_141
	.p2align	4, , 16
.LBB0_140:                              #   in Loop: Header=BB0_141 Depth=2
	ld.w	$a0, $t0, %pc_lo12(L3psycho_anal.npart_l)
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 512
	bge	$fp, $a0, .LBB0_154
.LBB0_141:                              #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a1, 3
	slli.d	$s2, $fp, 3
	ldx.w	$a3, $a1, $s2
	ld.w	$a4, $a0, 4
	fmov.d	$fs3, $fs1
	fmov.d	$fa0, $fs1
	blt	$a4, $a3, .LBB0_151
# %bb.142:                              # %.lr.ph1075
                                        #   in Loop: Header=BB0_141 Depth=2
	alsl.d	$a0, $a3, $s1, 3
	alsl.d	$a1, $a3, $s3, 3
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	sub.d	$a3, $a4, $a3
	movgr2fr.d	$fa0, $zero
	addi.d	$a3, $a3, 1
	fmov.d	$fs3, $fa0
	.p2align	4, , 16
.LBB0_143:                              #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
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
	bnez	$a3, .LBB0_143
# %bb.144:                              # %._crit_edge1076
                                        #   in Loop: Header=BB0_141 Depth=2
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fs3, $fa1
	bcnez	$fcc0, .LBB0_148
# %bb.145:                              #   in Loop: Header=BB0_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI0_15)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_15)
	fdiv.d	$fa0, $fa0, $fs3
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_149
# %bb.146:                              #   in Loop: Header=BB0_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI0_16)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_16)
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_150
# %bb.147:                              #   in Loop: Header=BB0_141 Depth=2
	vldi	$vr0, -912
	b	.LBB0_151
.LBB0_148:                              #   in Loop: Header=BB0_141 Depth=2
	fmov.d	$fa0, $fs3
	b	.LBB0_151
.LBB0_149:                              #   in Loop: Header=BB0_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI0_14)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_14)
	b	.LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_141 Depth=2
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_17)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_17)
	pcalau12i	$a0, %pc_hi20(.LCPI0_18)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_18)
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 21
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	.p2align	4, , 16
.LBB0_151:                              # %._crit_edge1076.thread
                                        #   in Loop: Header=BB0_141 Depth=2
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.minval)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.minval)
	fldx.d	$fa1, $a0, $s2
	fcmp.clt.d	$fcc0, $fa1, $fa0
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	fldx.d	$fa2, $a1, $s2
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	fldx.d	$fa3, $a2, $s2
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
	fldx.d	$fa3, $a0, $s2
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fldx.d	$fa0, $s3, $s2
	fsel	$fa1, $fa1, $fa3, $fcc0
	fstx.d	$fa1, $s4, $s2
	fstx.d	$fa2, $a2, $s2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fstx.d	$fa4, $a1, $s2
	bcnez	$fcc0, .LBB0_140
# %bb.152:                              #   in Loop: Header=BB0_141 Depth=2
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fs2, $fa2
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 21
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	fneg.d	$fa1, $fs2
	fmadd.d	$fs0, $fa1, $fa0, $fs0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	fst.d	$fs0, $a0, 0
	b	.LBB0_140
	.p2align	4, , 16
.LBB0_153:                              #   in Loop: Header=BB0_69 Depth=1
	movgr2fr.d	$fs0, $zero
.LBB0_154:                              # %._crit_edge1082
                                        #   in Loop: Header=BB0_69 Depth=1
	ld.d	$t4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	bltu	$s8, $a0, .LBB0_165
# %bb.155:                              #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 160
	beqz	$a0, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 1096
	stx.w	$s8, $a0, $a1
	b	.LBB0_165
.LBB0_157:                              #   in Loop: Header=BB0_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI0_19)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_19)
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 1096
	stx.w	$zero, $a0, $a1
	b	.LBB0_165
.LBB0_159:                              # %.preheader953.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	movgr2fr.w	$fa0, $zero
	move	$a0, $zero
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	ori	$a2, $zero, 260
	.p2align	4, , 16
.LBB0_160:                              # %.preheader953
                                        #   Parent Loop BB0_69 Depth=1
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
	bne	$a0, $a2, .LBB0_160
# %bb.161:                              #   in Loop: Header=BB0_69 Depth=1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa3, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$fa3, $fa0, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 1096
	alsl.d	$a0, $a1, $a2, 2
	slli.d	$a1, $a1, 2
	vldi	$vr1, -1218
	fmul.s	$fa1, $fa3, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	stx.w	$s8, $a1, $a2
	bceqz	$fcc0, .LBB0_164
# %bb.162:                              #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	fcmp.cule.d	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB0_165
# %bb.163:                              #   in Loop: Header=BB0_69 Depth=1
	vldi	$vr1, -1244
	fmul.s	$fa1, $fa3, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_69 Depth=1
	st.w	$zero, $a0, 0
	.p2align	4, , 16
.LBB0_165:                              #   in Loop: Header=BB0_69 Depth=1
	move	$a0, $zero
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	add.d	$a3, $t7, $a2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a2
	b	.LBB0_167
	.p2align	4, , 16
.LBB0_166:                              # %._crit_edge1093
                                        #   in Loop: Header=BB0_167 Depth=2
	fstx.d	$fa0, $a3, $a1
	addi.d	$a0, $a0, 1
	fstx.d	$fa1, $a4, $a1
	beq	$a0, $ra, .LBB0_170
.LBB0_167:                              #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
	slli.d	$a1, $a0, 3
	slli.d	$a2, $a0, 2
	ldx.w	$a6, $t2, $a2
	fldx.d	$fa1, $t1, $a1
	ldx.w	$a7, $t3, $a2
	fldx.d	$fa2, $t0, $a1
	slli.d	$a2, $a6, 3
	fldx.d	$fa0, $s3, $a2
	slli.d	$a5, $a7, 3
	fldx.d	$fa3, $s3, $a5
	fldx.d	$fa4, $s4, $a2
	fmul.d	$fa0, $fa2, $fa0
	fldx.d	$fa5, $s4, $a5
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa2, $fa2, $fa4
	addi.w	$a2, $a7, 1
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	bge	$a2, $a6, .LBB0_166
# %bb.168:                              # %.lr.ph1092.preheader
                                        #   in Loop: Header=BB0_167 Depth=2
	alsl.d	$a2, $a7, $s3, 3
	addi.d	$a2, $a2, 8
	alsl.d	$a5, $a7, $s4, 3
	addi.d	$a5, $a5, 8
	nor	$a7, $a7, $zero
	add.d	$a6, $a7, $a6
	.p2align	4, , 16
.LBB0_169:                              # %.lr.ph1092
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 0
	fld.d	$fa3, $a5, 0
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa3
	addi.d	$a2, $a2, 8
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB0_169
	b	.LBB0_166
	.p2align	4, , 16
.LBB0_170:                              # %.preheader952
                                        #   in Loop: Header=BB0_69 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(L3psycho_anal.npart_s_orig)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(L3psycho_anal.npart_s)
	move	$a2, $zero
	addi.d	$a3, $a3, 176
	addi.d	$a4, $a4, 176
	ori	$s2, $zero, 12
	ori	$ra, $zero, 3
	b	.LBB0_172
	.p2align	4, , 16
.LBB0_171:                              #   in Loop: Header=BB0_172 Depth=2
	addi.d	$a2, $a2, 1
	addi.d	$s6, $s6, 516
	beq	$a2, $ra, .LBB0_68
.LBB0_172:                              # %.preheader950
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_175 Depth 3
                                        #         Child Loop BB0_177 Depth 4
                                        #       Child Loop BB0_183 Depth 3
                                        #         Child Loop BB0_185 Depth 4
                                        #       Child Loop BB0_188 Depth 3
                                        #         Child Loop BB0_190 Depth 4
	blez	$a0, .LBB0_179
# %bb.173:                              # %.lr.ph1108
                                        #   in Loop: Header=BB0_172 Depth=2
	slli.d	$a5, $a2, 9
	alsl.d	$a6, $a2, $a5, 2
	pcalau12i	$a5, %pc_hi20(L3psycho_anal.energy_s)
	addi.d	$t0, $a5, %pc_lo12(L3psycho_anal.energy_s)
	move	$a5, $zero
	move	$a7, $zero
	add.d	$a6, $t0, $a6
	b	.LBB0_175
	.p2align	4, , 16
.LBB0_174:                              # %._crit_edge1103
                                        #   in Loop: Header=BB0_175 Depth=3
	fcvt.d.s	$fa0, $fa0
	slli.d	$a7, $a5, 3
	addi.d	$a5, $a5, 1
	fstx.d	$fa0, $s3, $a7
	move	$a7, $t1
	beq	$a5, $a0, .LBB0_179
.LBB0_175:                              #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_177 Depth 4
	slli.d	$t1, $a7, 2
	slli.d	$t0, $a5, 2
	ldx.w	$t0, $t6, $t0
	fldx.s	$fa0, $a6, $t1
	addi.w	$t1, $a7, 1
	blez	$t0, .LBB0_174
# %bb.176:                              # %.lr.ph1102.preheader
                                        #   in Loop: Header=BB0_175 Depth=3
	alsl.d	$t1, $t1, $s6, 2
	addi.d	$t2, $t0, 1
	.p2align	4, , 16
.LBB0_177:                              # %.lr.ph1102
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        #       Parent Loop BB0_175 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bltu	$s8, $t2, .LBB0_177
# %bb.178:                              # %._crit_edge1103.loopexit
                                        #   in Loop: Header=BB0_175 Depth=3
	add.d	$a7, $a7, $t0
	addi.w	$t1, $a7, 1
	b	.LBB0_174
	.p2align	4, , 16
.LBB0_179:                              # %.preheader949
                                        #   in Loop: Header=BB0_172 Depth=2
	blez	$a1, .LBB0_186
# %bb.180:                              # %.lr.ph1117.preheader
                                        #   in Loop: Header=BB0_172 Depth=2
	move	$a5, $zero
	move	$a6, $t8
	b	.LBB0_183
	.p2align	4, , 16
.LBB0_181:                              #   in Loop: Header=BB0_183 Depth=3
	movgr2fr.d	$fa0, $zero
.LBB0_182:                              # %._crit_edge1114
                                        #   in Loop: Header=BB0_183 Depth=3
	pcalau12i	$t0, %pc_hi20(L3psycho_anal.qthr_s)
	addi.d	$t0, $t0, %pc_lo12(L3psycho_anal.qthr_s)
	fldx.d	$fa1, $t0, $a7
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fstx.d	$fa0, $s4, $a7
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 512
	beq	$a5, $a1, .LBB0_186
.LBB0_183:                              # %.lr.ph1117
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_185 Depth 4
	alsl.d	$t0, $a5, $s0, 3
	slli.d	$a7, $a5, 3
	ldx.w	$t2, $s0, $a7
	ld.w	$t3, $t0, 4
	blt	$t3, $t2, .LBB0_181
# %bb.184:                              # %.lr.ph1113
                                        #   in Loop: Header=BB0_183 Depth=3
	alsl.d	$t0, $t2, $a6, 3
	alsl.d	$t1, $t2, $s3, 3
	sub.d	$t2, $t3, $t2
	addi.d	$t2, $t2, 1
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB0_185:                              #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        #       Parent Loop BB0_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $t0, 0
	fld.d	$fa2, $t1, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$t0, $t0, 8
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_185
	b	.LBB0_182
	.p2align	4, , 16
.LBB0_186:                              # %.preheader948
                                        #   in Loop: Header=BB0_172 Depth=2
	move	$a5, $zero
	alsl.d	$a6, $a2, $a3, 3
	alsl.d	$a7, $a2, $a4, 3
	b	.LBB0_188
	.p2align	4, , 16
.LBB0_187:                              # %._crit_edge1124
                                        #   in Loop: Header=BB0_188 Depth=3
	slli.d	$t0, $a5, 4
	alsl.d	$t0, $a5, $t0, 3
	fstx.d	$fa0, $a6, $t0
	addi.d	$a5, $a5, 1
	fstx.d	$fa1, $a7, $t0
	beq	$a5, $s2, .LBB0_171
.LBB0_188:                              #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_190 Depth 4
	slli.d	$t0, $a5, 3
	slli.d	$t1, $a5, 2
	ldx.w	$t2, $s7, $t1
	fldx.d	$fa1, $t5, $t0
	ldx.w	$t3, $s5, $t1
	fldx.d	$fa2, $t4, $t0
	slli.d	$t0, $t2, 3
	fldx.d	$fa0, $s3, $t0
	slli.d	$t1, $t3, 3
	fldx.d	$fa3, $s3, $t1
	fldx.d	$fa4, $s4, $t0
	fmul.d	$fa0, $fa2, $fa0
	fldx.d	$fa5, $s4, $t1
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa2, $fa2, $fa4
	addi.w	$t0, $t3, 1
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	bge	$t0, $t2, .LBB0_187
# %bb.189:                              # %.lr.ph1123.preheader
                                        #   in Loop: Header=BB0_188 Depth=3
	alsl.d	$t0, $t3, $s3, 3
	addi.d	$t0, $t0, 8
	alsl.d	$t1, $t3, $s4, 3
	addi.d	$t1, $t1, 8
	nor	$t3, $t3, $zero
	add.d	$t2, $t3, $t2
	.p2align	4, , 16
.LBB0_190:                              # %.lr.ph1123
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        #       Parent Loop BB0_188 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $t0, 0
	fld.d	$fa3, $t1, 0
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa3
	addi.d	$t0, $t0, 8
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_190
	b	.LBB0_187
.LBB0_191:                              # %call.sqrt
                                        #   in Loop: Header=BB0_69 Depth=1
	fmov.s	$fa0, $fa1
	move	$s1, $t3
	move	$s2, $t4
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$t4, $s2
	move	$t3, $s1
	ori	$ra, $zero, 21
	vldi	$vr6, -1184
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	fld.s	$fa4, $sp, 132                  # 4-byte Folded Reload
	fcmp.ceq.s	$fcc0, $fs3, $fa4
	fst.s	$fa0, $fp, 0
	bceqz	$fcc0, .LBB0_91
.LBB0_192:                              #   in Loop: Header=BB0_69 Depth=1
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa4
	vldi	$vr3, -1168
	fcmp.ceq.s	$fcc0, $fs1, $fa4
	bceqz	$fcc0, .LBB0_92
	b	.LBB0_93
.LBB0_193:                              # %._crit_edge1134
	ori	$a1, $zero, 4
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a0, $a2, -4
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB0_212
# %bb.194:                              # %.preheader947.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI0_20)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_20)
	ori	$a1, $zero, 168
	pcalau12i	$a2, %pc_hi20(L3psycho_anal.mld_l)
	addi.d	$a2, $a2, %pc_lo12(L3psycho_anal.mld_l)
	move	$a3, $zero
	b	.LBB0_196
	.p2align	4, , 16
.LBB0_195:                              #   in Loop: Header=BB0_196 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a3, $a1, .LBB0_201
.LBB0_196:                              # %.preheader947
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s2, $a3
	fldx.d	$fa1, $s2, $a3
	fld.d	$fa2, $a4, 488
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_195
# %bb.197:                              # %.preheader947
                                        #   in Loop: Header=BB0_196 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_195
# %bb.198:                              #   in Loop: Header=BB0_196 Depth=1
	fldx.d	$fa1, $a2, $a3
	add.d	$a5, $t7, $a3
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
	b	.LBB0_195
.LBB0_199:
	move	$fp, $zero
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB0_213
.LBB0_200:
	movgr2fr.d	$fs1, $zero
	fmov.d	$fs0, $fs1
	ld.w	$s2, $s3, 204
	ld.d	$s0, $sp, 1280
	bgtz	$s2, .LBB0_247
	b	.LBB0_266
.LBB0_201:                              # %.preheader945.preheader
	pcalau12i	$a1, %pc_hi20(L3psycho_anal.mld_s)
	addi.d	$a1, $a1, %pc_lo12(L3psycho_anal.mld_s)
	move	$a2, $zero
	ori	$a3, $zero, 288
	b	.LBB0_203
	.p2align	4, , 16
.LBB0_202:                              #   in Loop: Header=BB0_203 Depth=1
	addi.d	$a2, $a2, 24
	addi.d	$a1, $a1, 8
	beq	$a2, $a3, .LBB0_212
.LBB0_203:                              # %.preheader945
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s2, $a2
	fld.d	$fa1, $a4, 176
	fld.d	$fa2, $a4, 664
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	add.d	$a5, $t7, $a2
	bcnez	$fcc0, .LBB0_206
# %bb.204:                              # %.preheader945
                                        #   in Loop: Header=BB0_203 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_206
# %bb.205:                              #   in Loop: Header=BB0_203 Depth=1
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
.LBB0_206:                              #   in Loop: Header=BB0_203 Depth=1
	fld.d	$fa1, $a4, 184
	fld.d	$fa2, $a4, 672
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_209
# %bb.207:                              #   in Loop: Header=BB0_203 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_203 Depth=1
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
.LBB0_209:                              #   in Loop: Header=BB0_203 Depth=1
	fld.d	$fa1, $a4, 192
	fld.d	$fa2, $a4, 680
	fmul.d	$fa3, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_202
# %bb.210:                              #   in Loop: Header=BB0_203 Depth=1
	fmul.d	$fa2, $fa2, $fa0
	fcmp.cult.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_202
# %bb.211:                              #   in Loop: Header=BB0_203 Depth=1
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
	b	.LBB0_202
.LBB0_212:                              # %.loopexitthread-pre-split
	ld.w	$a1, $s3, 36
	sltui	$fp, $a0, 1
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_200
.LBB0_213:                              # %.preheader944.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_0)
	movgr2fr.d	$fs0, $zero
	vldi	$vr3, -912
	ori	$s1, $zero, 128
	fmov.d	$fs2, $fs0
	b	.LBB0_215
	.p2align	4, , 16
.LBB0_214:                              #   in Loop: Header=BB0_215 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	fadd.d	$fs2, $fs2, $fa0
	addi.d	$s0, $s0, 8
	fadd.d	$fs0, $fs0, $fa3
	beq	$s0, $s1, .LBB0_217
.LBB0_215:                              # %.preheader944
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s2, $s0
	fld.d	$fa1, $a0, 40
	fld.d	$fa2, $a0, 528
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB0_214
# %bb.216:                              #   in Loop: Header=BB0_215 Depth=1
	vldi	$vr0, -1016
	fadd.d	$fs2, $fs2, $fa0
	addi.d	$s0, $s0, 8
	fadd.d	$fs0, $fs0, $fa3
	bne	$s0, $s1, .LBB0_215
.LBB0_217:                              # %.preheader.preheader
	vrepli.b	$vr3, 0
	addi.w	$s0, $zero, -24
	b	.LBB0_220
	.p2align	4, , 16
.LBB0_218:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	vst	$vr4, $sp, 448                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 448                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
.LBB0_219:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr3, -912
	vld	$vr1, $sp, 560                  # 16-byte Folded Reload
	vpackev.d	$vr1, $vr1, $vr3
	vld	$vr2, $sp, 576                  # 16-byte Folded Reload
	vfadd.d	$vr1, $vr2, $vr1
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
	vld	$vr2, $sp, 480                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 464                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vpackev.d	$vr2, $vr4, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vpackev.d	$vr0, $vr0, $vr3
	addi.d	$s0, $s0, 8
	vfadd.d	$vr3, $vr1, $vr0
	beqz	$s0, .LBB0_246
.LBB0_220:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s1, $s2, $s0
	fld.d	$fa1, $s1, 272
	fld.d	$fa2, $s1, 760
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	vst	$vr3, $sp, 576                  # 16-byte Folded Spill
	bcnez	$fcc0, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_223
	.p2align	4, , 16
.LBB0_222:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
.LBB0_223:                              #   in Loop: Header=BB0_220 Depth=1
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 296
	fld.d	$fa2, $s1, 784
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_225
# %bb.224:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_226
	.p2align	4, , 16
.LBB0_225:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
.LBB0_226:                              #   in Loop: Header=BB0_220 Depth=1
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 320
	fld.d	$fa2, $s1, 808
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_229
	.p2align	4, , 16
.LBB0_228:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
.LBB0_229:                              #   in Loop: Header=BB0_220 Depth=1
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 344
	fld.d	$fa2, $s1, 832
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_232
	.p2align	4, , 16
.LBB0_231:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
.LBB0_232:                              #   in Loop: Header=BB0_220 Depth=1
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 368
	fld.d	$fa2, $s1, 856
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_235
	.p2align	4, , 16
.LBB0_234:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
.LBB0_235:                              #   in Loop: Header=BB0_220 Depth=1
	vst	$vr0, $sp, 496                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 392
	fld.d	$fa2, $s1, 880
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_238
	.p2align	4, , 16
.LBB0_237:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
.LBB0_238:                              #   in Loop: Header=BB0_220 Depth=1
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 416
	fld.d	$fa2, $s1, 904
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_241
	.p2align	4, , 16
.LBB0_240:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
.LBB0_241:                              #   in Loop: Header=BB0_220 Depth=1
	vst	$vr0, $sp, 464                  # 16-byte Folded Spill
	fld.d	$fa1, $s1, 440
	fld.d	$fa2, $s1, 928
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_220 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fmov.d	$fa4, $fa0
	b	.LBB0_244
	.p2align	4, , 16
.LBB0_243:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr4, -1016
.LBB0_244:                              #   in Loop: Header=BB0_220 Depth=1
	fld.d	$fa1, $s1, 464
	fld.d	$fa2, $s1, 952
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.d	$fa2, $fa0, $fs1
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB0_218
# %bb.245:                              #   in Loop: Header=BB0_220 Depth=1
	vldi	$vr0, -1016
	b	.LBB0_219
.LBB0_246:
	pcalau12i	$a0, %pc_hi20(.LCPI0_21)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_21)
	fdiv.d	$fa1, $fs2, $fs0
	fmul.d	$fa1, $fa1, $fa0
	vldi	$vr2, -928
	fmin.d	$fs0, $fa1, $fa2
	vreplvei.d	$vr1, $vr3, 0
	vreplvei.d	$vr3, $vr3, 1
	fdiv.d	$fa1, $fa3, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fmin.d	$fs1, $fa0, $fa2
	ld.w	$s2, $s3, 204
	ld.d	$s0, $sp, 1280
	blez	$s2, .LBB0_266
.LBB0_247:                              # %._crit_edge1154
	slli.d	$a2, $s2, 2
	addi.d	$a0, $sp, 1104
	addi.d	$s1, $sp, 1104
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bne	$s2, $a0, .LBB0_253
# %bb.248:
	ld.w	$a0, $s3, 156
	beqz	$a0, .LBB0_250
# %bb.249:
	ld.w	$a0, $s3, 36
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_253
.LBB0_250:
	ld.w	$a0, $sp, 1096
	beqz	$a0, .LBB0_252
# %bb.251:
	ld.w	$a0, $sp, 1100
	bnez	$a0, .LBB0_253
.LBB0_252:
	st.d	$zero, $sp, 1096
.LBB0_253:                              # %.lr.ph1158.preheader
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.blocktype_old)
	addi.d	$a0, $a0, %pc_lo12(L3psycho_anal.blocktype_old)
	addi.d	$a1, $sp, 1096
	ori	$a2, $zero, 3
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	move	$a4, $zero
	move	$a5, $s0
	b	.LBB0_256
	.p2align	4, , 16
.LBB0_254:                              #   in Loop: Header=BB0_256 Depth=1
	move	$a7, $zero
	st.w	$zero, $s1, 0
.LBB0_255:                              #   in Loop: Header=BB0_256 Depth=1
	st.w	$a6, $a5, 0
	st.w	$a7, $a0, 0
	addi.d	$a4, $a4, 1
	ld.w	$a6, $s3, 204
	addi.d	$s1, $s1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	bge	$a4, $a6, .LBB0_266
.LBB0_256:                              # %.lr.ph1158
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	beqz	$a6, .LBB0_260
# %bb.257:                              #   in Loop: Header=BB0_256 Depth=1
	ld.w	$a6, $a0, 0
	bltu	$a2, $a6, .LBB0_263
# %bb.258:                              #   in Loop: Header=BB0_256 Depth=1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a3, $a7
	add.d	$a7, $a3, $a7
	jr	$a7
.LBB0_259:                              #   in Loop: Header=BB0_256 Depth=1
	ori	$a7, $zero, 3
	st.w	$a7, $s1, 0
	b	.LBB0_265
	.p2align	4, , 16
.LBB0_260:                              #   in Loop: Header=BB0_256 Depth=1
	ld.w	$a6, $a0, 0
	ori	$a7, $zero, 2
	st.w	$a7, $s1, 0
	beq	$a6, $a2, .LBB0_264
# %bb.261:                              #   in Loop: Header=BB0_256 Depth=1
	bnez	$a6, .LBB0_255
# %bb.262:                              # %.thread
                                        #   in Loop: Header=BB0_256 Depth=1
	ori	$a6, $zero, 1
	b	.LBB0_255
.LBB0_263:                              # %._crit_edge1340
                                        #   in Loop: Header=BB0_256 Depth=1
	ld.w	$a7, $s1, 0
	b	.LBB0_255
.LBB0_264:                              #   in Loop: Header=BB0_256 Depth=1
	ori	$a7, $zero, 2
.LBB0_265:                              #   in Loop: Header=BB0_256 Depth=1
	ori	$a6, $zero, 2
	b	.LBB0_255
.LBB0_266:                              # %._crit_edge1159
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
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	fst.d	$fs1, $a1, 0
	fst.d	$fs0, $a2, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	fst.d	$fs0, $a0, 0
	beqz	$fp, .LBB0_269
# %bb.267:
	fld.s	$fa0, $sp, 604
	fld.s	$fa1, $sp, 600
	pcalau12i	$a0, %pc_hi20(L3psycho_anal.ms_ener_ratio_old)
	fld.d	$fa2, $a0, %pc_lo12(L3psycho_anal.ms_ener_ratio_old)
	fadd.s	$fa1, $fa0, $fa1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fst.d	$fa2, $a1, 0
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa1, $fa2
	st.d	$zero, $a0, %pc_lo12(L3psycho_anal.ms_ener_ratio_old)
	bcnez	$fcc0, .LBB0_270
# %bb.268:
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fst.d	$fa0, $a0, %pc_lo12(L3psycho_anal.ms_ener_ratio_old)
	b	.LBB0_270
.LBB0_269:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
.LBB0_270:
	fld.d	$fs7, $sp, 1112                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1128                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1136                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1144                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1152                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1160                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1168                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1256                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1264
	ret
.LBB0_271:
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
.LBB0_272:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
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
	.word	.LBB0_254-.LJTI0_0
	.word	.LBB0_271-.LJTI0_0
	.word	.LBB0_259-.LJTI0_0
	.word	.LBB0_254-.LJTI0_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function L3para_read
.LCPI1_0:
	.dword	0xbfcd791c5f888823              # double -0.23025850929940458
.LCPI1_1:
	.dword	0x3fde5604189374bc              # double 0.47399999999999998
.LCPI1_2:
	.dword	0x402f9f6e6106ab15              # double 15.811389
.LCPI1_3:
	.dword	0xc031800000000000              # double -17.5
.LCPI1_4:
	.dword	0xc04e000000000000              # double -60
.LCPI1_5:
	.dword	0x3fcd791c5f888823              # double 0.23025850929940458
.LCPI1_6:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	L3para_read
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
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
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
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_0)
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
	pcalau12i	$s3, %pc_hi20(.LCPI1_1)
	pcalau12i	$s6, %pc_hi20(.LCPI1_2)
	pcalau12i	$s5, %pc_hi20(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	blez	$s0, .LBB1_21
# %bb.15:                               # %.preheader272.us.preheader
	move	$fp, $zero
	vldi	$vr3, -904
	vldi	$vr4, -1016
	fld.d	$fs1, $s3, %pc_lo12(.LCPI1_1)
	fld.d	$fs2, $s6, %pc_lo12(.LCPI1_2)
	vldi	$vr5, -994
	vldi	$vr6, -912
	fld.d	$fs3, $s5, %pc_lo12(.LCPI1_3)
	movgr2fr.d	$fs4, $zero
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_4)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fs6, $a0, %pc_lo12(.LCPI1_5)
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_16:                               # %._crit_edge307.us
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s4, 512
	beq	$fp, $s0, .LBB1_21
.LBB1_17:                               # %.preheader272.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	slli.d	$a0, $fp, 3
	addi.d	$s1, $sp, 640
	fldx.d	$fs7, $a0, $s1
	move	$s2, $zero
	move	$s4, $s8
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=2
	fst.d	$fa0, $s8, 0
	addi.d	$s2, $s2, 1
	addi.d	$s8, $s8, 8
	addi.d	$s1, $s1, 8
	beq	$s0, $s2, .LBB1_16
.LBB1_19:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s1, 0
	sltu	$a0, $fp, $s2
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
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
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
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
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
	addi.w	$s7, $a1, 1
	bceqz	$fcc0, .LBB1_69
# %bb.63:                               # %.preheader270.5
	move	$a0, $zero
	bltz	$a1, .LBB1_68
# %bb.64:                               # %.lr.ph312.preheader.5
	bstrpick.d	$a1, $s7, 31, 0
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
	move	$a0, $s7
.LBB1_68:                               # %._crit_edge313.5
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	stx.w	$a1, $t2, $a0
	bgtz	$s7, .LBB1_70
	b	.LBB1_76
.LBB1_69:
	slli.d	$a1, $s7, 2
	alsl.w	$a1, $s7, $a1, 1
	alsl.d	$s2, $a1, $s2, 3
	move	$s7, $a0
	blez	$s7, .LBB1_76
.LBB1_70:                               # %.preheader268.us.preheader
	move	$fp, $zero
	fld.d	$fs1, $s3, %pc_lo12(.LCPI1_1)
	vldi	$vr3, -904
	vldi	$vr4, -1016
	fld.d	$fs2, $s6, %pc_lo12(.LCPI1_2)
	vldi	$vr5, -994
	vldi	$vr6, -912
	fld.d	$fs3, $s5, %pc_lo12(.LCPI1_3)
	movgr2fr.d	$fs4, $zero
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_4)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fs6, $a0, %pc_lo12(.LCPI1_5)
	b	.LBB1_72
	.p2align	4, , 16
.LBB1_71:                               # %._crit_edge321.us
                                        #   in Loop: Header=BB1_72 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 512
	beq	$fp, $s7, .LBB1_76
.LBB1_72:                               # %.preheader268.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_74 Depth 2
	slli.d	$a0, $fp, 3
	addi.d	$s0, $sp, 136
	fldx.d	$fs7, $a0, $s0
	move	$s1, $zero
	move	$s3, $s8
	b	.LBB1_74
	.p2align	4, , 16
.LBB1_73:                               #   in Loop: Header=BB1_74 Depth=2
	fst.d	$fa0, $s3, 0
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, 8
	beq	$s7, $s1, .LBB1_71
.LBB1_74:                               #   Parent Loop BB1_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s0, 0
	sltu	$a0, $fp, $s1
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
	pcalau12i	$a3, %pc_hi20(.LCPI1_6)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI1_6)
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a3, $s5, 4
	vldi	$vr1, -912
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
	.comm	L3psycho_anal.cw,2052,32
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
	.comm	L3psycho_anal.mld_l,168,32
	.type	L3psycho_anal.mld_s,@object     # @L3psycho_anal.mld_s
	.local	L3psycho_anal.mld_s
	.comm	L3psycho_anal.mld_s,96,32
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
	.comm	L3psycho_anal.partition_l,2052,32
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
