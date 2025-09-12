	.file	"oourafft.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	lu12i.w	$a1, 5
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	move	$s0, $a0
	move	$s1, $zero
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 419827
	ori	$a0, $a0, 3021
	lu32i.d	$a0, 434334
	lu52i.d	$a0, $a0, 1022
	vreplgr2vr.d	$vr0, $a0
	ori	$a0, $zero, 2048
	vstx	$vr0, $s0, $a0
	addi.d	$a0, $s0, 2047
	addi.d	$s2, $a0, 2041
	addi.d	$s3, $s0, 24
	ori	$s4, $zero, 2
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1014
	movgr2fr.d	$fs2, $a0
	ori	$s5, $zero, 254
	.p2align	4, , 16
.LBB0_1:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fa0, $fs2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fs1, $s3, -8
	fst.d	$fa0, $s3, 0
	fst.d	$fa0, $s2, -8
	fst.d	$fs1, $s2, 0
	addi.d	$s1, $s1, 2
	addi.d	$s2, $s2, -16
	addi.d	$s3, $s3, 16
	addi.w	$s4, $s4, 2
	bltu	$s1, $s5, .LBB0_1
# %bb.2:                                # %makewt.exit
	ori	$a0, $zero, 512
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 4
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a0, $zero, 1
	lu12i.w	$a2, 1
	ori	$s5, $a2, 3045
	lu12i.w	$a2, 13
	ori	$s6, $a2, 1525
	lu12i.w	$a2, 8285
	ori	$s7, $a2, 185
	lu12i.w	$a2, 63
	ori	$s8, $a2, 1152
	lu12i.w	$a2, -259944
	ori	$a2, $a2, 2929
	lu32i.d	$a2, 11909
	lu52i.d	$a2, $a2, 1005
	movgr2fr.d	$fs0, $a2
	ori	$a2, $zero, 2048
	move	$a3, $s3
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph.i79
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $s5
	add.d	$a1, $a1, $s6
	bstrpick.d	$a4, $a1, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a1, $a1, $a4
	bstrpick.d	$a4, $a1, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $a3, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a2, .LBB0_3
# %bb.4:                                # %putdata.exit
	ori	$a0, $zero, 2048
	ori	$s4, $zero, 2048
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	ori	$a0, $zero, 2048
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cdft)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 1
	lu52i.d	$a1, $zero, -1035
	movgr2fr.d	$fa1, $a1
	move	$a1, $s3
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a2, $s6
	bstrpick.d	$a3, $a2, 31, 7
	mul.d	$a3, $a3, $s7
	srli.d	$a3, $a3, 36
	mul.d	$a3, $a3, $s8
	sub.w	$a2, $a2, $a3
	fld.d	$fa2, $a1, 0
	bstrpick.d	$a3, $a2, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa1
	fmadd.d	$fa2, $fa3, $fs0, $fa2
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $s4, .LBB0_5
# %bb.6:                                # %errorcheck.exit
	lu12i.w	$a0, -156293
	ori	$a0, $a0, 3515
	lu32i.d	$a0, -295713
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa1, $a0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_20
# %bb.7:
	lu12i.w	$s4, 4
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1024
	move	$a2, $s3
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph.i87
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a3, $s6
	bstrpick.d	$a4, $a3, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $a2, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a4, $a1, .LBB0_8
# %bb.9:                                # %putdata.exit93
	ori	$a0, $zero, 2048
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	ori	$a1, $s4, 8
	ori	$a2, $s4, 24
	.p2align	4, , 16
.LBB0_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s3, $a0
	fldx.d	$fa0, $a3, $a1
	fldx.d	$fa1, $a3, $a2
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa0, $a3, $a1
	addi.d	$a0, $a0, 32
	fstx.d	$fa1, $a3, $a2
	bnez	$a0, .LBB0_10
# %bb.11:                               # %middle.block
	lu12i.w	$s4, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph.i94
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a3, $s6
	bstrpick.d	$a4, $a3, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s2, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	bne	$a4, $a1, .LBB0_12
# %bb.13:                               # %putdata.exit100
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	lu12i.w	$s8, -4
	ori	$s6, $s4, 8
	addi.w	$s5, $zero, -1
	lu12i.w	$a0, 36
	ori	$s2, $a0, 2544
	.p2align	4, , 16
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	move	$a0, $s1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB0_15:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s1, $a0
	fldx.d	$fa0, $a1, $s4
	add.d	$a2, $s3, $a0
	fldx.d	$fa1, $a2, $s6
	fldx.d	$fa2, $a1, $s6
	fldx.d	$fa3, $a2, $s4
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fstx.d	$fa4, $a1, $s4
	fmul.d	$fa2, $fa3, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	addi.d	$a0, $a0, 16
	fstx.d	$fa0, $a1, $s6
	bnez	$a0, .LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 2048
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cdft)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 1
	bne	$s7, $s2, .LBB0_14
# %bb.17:
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, -4
	lu12i.w	$a0, -97683
	ori	$a0, $a0, 1685
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fs0, $a0
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s1, $s2
	fldx.d	$fa0, $a0, $s4
	fldx.d	$fa1, $a0, $s6
	fabs.d	$fa2, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa2
	fsel	$fa0, $fs1, $fa0, $fcc0
	fabs.d	$fa2, $fa1
	fcmp.clt.d	$fcc0, $fs0, $fa2
	fsel	$fa1, $fs1, $fa1, $fcc0
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 16
	bnez	$s2, .LBB0_18
# %bb.19:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB0_20:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	get_time                        # -- Begin function get_time
	.p2align	5
	.type	get_time,@function
get_time:                               # @get_time
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	get_time, .Lfunc_end1-get_time
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function makewt
.LCPI2_0:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.text
	.globl	makewt
	.p2align	5
	.type	makewt,@function
makewt:                                 # @makewt
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	ori	$a3, $zero, 3
	blt	$a0, $a3, .LBB2_5
# %bb.1:
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	bstrpick.d	$s2, $a0, 31, 1
	movgr2fr.d	$fa0, $s2
	ffint.d.l	$fa0, $fa0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_0)
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fdiv.d	$fs2, $fa2, $fa0
	vst	$vr1, $a2, 0
	fmul.d	$fa0, $fs2, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s2, $fp, 3
	slli.d	$a1, $s2, 3
	fstx.d	$fa0, $fp, $a1
	ori	$a1, $zero, 6
	fst.d	$fa0, $a0, 8
	bltu	$s1, $a1, .LBB2_5
# %bb.2:                                # %.lr.ph.preheader
	addi.w	$s2, $s2, 0
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s3, $a0, -8
	addi.d	$s4, $fp, 24
	ori	$s5, $zero, 2
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fs1, $s4, -8
	fst.d	$fa0, $s4, 0
	fst.d	$fa0, $s3, -8
	fst.d	$fs1, $s3, 0
	addi.d	$s6, $s6, 2
	addi.d	$s3, $s3, -16
	addi.w	$s5, $s5, 2
	addi.d	$s4, $s4, 16
	bltu	$s6, $s2, .LBB2_3
# %bb.4:                                # %._crit_edge
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(bitrv2)
	jr	$t8
.LBB2_5:
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	makewt, .Lfunc_end2-makewt
                                        # -- End function
	.globl	putdata                         # -- Begin function putdata
	.p2align	5
	.type	putdata,@function
putdata:                                # @putdata
# %bb.0:
	blt	$a1, $a0, .LBB3_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a3, $zero
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3045
	lu12i.w	$a4, 13
	ori	$a4, $a4, 1525
	lu12i.w	$a5, 8285
	ori	$a5, $a5, 185
	lu12i.w	$a6, -259944
	ori	$a6, $a6, 2929
	lu32i.d	$a6, 11909
	lu52i.d	$a6, $a6, 1005
	movgr2fr.d	$fa0, $a6
	lu12i.w	$a6, 63
	ori	$a6, $a6, 1152
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a3, $a4
	bstrpick.d	$a7, $a3, 31, 7
	mul.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 36
	mul.d	$a7, $a7, $a6
	sub.w	$a3, $a3, $a7
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB3_2
.LBB3_3:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	putdata, .Lfunc_end3-putdata
                                        # -- End function
	.globl	cdft                            # -- Begin function cdft
	.p2align	5
	.type	cdft,@function
cdft:                                   # @cdft
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$a5, $zero, 5
	move	$s0, $a4
	move	$fp, $a2
	move	$s1, $a0
	blt	$a0, $a5, .LBB4_3
# %bb.1:
	bltz	$a1, .LBB4_5
# %bb.2:
	move	$a0, $s1
	move	$a1, $a3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB4_4
.LBB4_3:
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB4_42
.LBB4_4:                                # %cftbsub.exit.sink.split
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(cftfsub)
	jr	$t8
.LBB4_5:
	ori	$a0, $zero, 9
	st.w	$zero, $a3, 0
	bltu	$s1, $a0, .LBB4_16
# %bb.6:                                # %.lr.ph245.i.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	move	$a2, $s1
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.w	$a5, $a4, 4
	addi.w	$a6, $a2, 0
	slli.w	$a0, $a4, 1
	bge	$a5, $a6, .LBB4_17
.LBB4_8:                                # %.lr.ph245.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	move	$a4, $a0
	bstrpick.d	$a2, $a2, 31, 1
	blez	$a0, .LBB4_7
# %bb.9:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.d	$a0, $a4, 2
	bgeu	$a4, $a1, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	move	$a5, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_11:                               # %vector.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	bstrpick.d	$a5, $a4, 30, 3
	slli.d	$a5, $a5, 3
	vreplgr2vr.w	$vr0, $a2
	move	$a6, $a3
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a6, 0
	vld	$vr2, $a6, 16
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	add.d	$t0, $a6, $a0
	vstx	$vr1, $a6, $a0
	vst	$vr2, $t0, 16
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB4_8 Depth=1
	beq	$a5, $a4, .LBB4_7
.LBB4_14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	sub.d	$a6, $a4, $a5
	alsl.d	$a5, $a5, $a3, 2
	.p2align	4, , 16
.LBB4_15:                               # %.lr.ph.i
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	add.d	$a7, $a7, $a2
	stx.w	$a7, $a5, $a0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB4_15
	b	.LBB4_7
.LBB4_16:                               # %._crit_edge246.thread.i
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	beq	$s1, $a2, .LBB4_19
	b	.LBB4_26
.LBB4_17:                               # %._crit_edge246.i
	slli.d	$a1, $a4, 2
	bne	$a5, $a6, .LBB4_26
# %bb.18:                               # %.preheader238.i
	blez	$a0, .LBB4_31
.LBB4_19:                               # %.preheader.lr.ph.i
	move	$a2, $zero
	slli.d	$a4, $a0, 2
	bstrpick.d	$a5, $a1, 31, 0
	slli.d	$a5, $a5, 3
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_20:                               #   in Loop: Header=BB4_22 Depth=1
	move	$a6, $zero
.LBB4_21:                               # %._crit_edge253.i
                                        #   in Loop: Header=BB4_22 Depth=1
	alsl.d	$a7, $a6, $fp, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a7, 8
	add.w	$a6, $a6, $a1
	add.w	$a7, $a6, $a1
	alsl.d	$t0, $a6, $fp, 3
	slli.d	$a6, $a6, 3
	fld.d	$fa0, $t0, 8
	alsl.d	$t1, $a7, $fp, 3
	slli.d	$t2, $a7, 3
	fld.d	$fa1, $t1, 8
	fldx.d	$fa2, $fp, $t2
	fldx.d	$fa3, $fp, $a6
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $fp, $a6
	fst.d	$fa1, $t0, 8
	fstx.d	$fa3, $fp, $t2
	fst.d	$fa0, $t1, 8
	add.w	$a6, $a7, $a1
	alsl.d	$a6, $a6, $fp, 3
	fld.d	$fa0, $a6, 8
	fneg.d	$fa0, $fa0
	addi.d	$a2, $a2, 1
	fst.d	$fa0, $a6, 8
	beq	$a2, $a0, .LBB4_31
.LBB4_22:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
	beqz	$a2, .LBB4_20
# %bb.23:                               # %.lr.ph252.i
                                        #   in Loop: Header=BB4_22 Depth=1
	slli.d	$a6, $a2, 2
	ldx.w	$a6, $a3, $a6
	slli.d	$a7, $a2, 1
	alsl.d	$t0, $a6, $fp, 3
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB4_24:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$t3, $t3, $a7
	fld.d	$fa0, $t0, 8
	alsl.d	$t4, $t3, $fp, 3
	slli.d	$t5, $t3, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $fp, $t5
	fld.d	$fa3, $t0, 0
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t0, 0
	fst.d	$fa1, $t0, 8
	fstx.d	$fa3, $fp, $t5
	fst.d	$fa0, $t4, 8
	add.w	$t3, $t3, $a4
	add.d	$t4, $t0, $a5
	fld.d	$fa0, $t4, 8
	alsl.d	$t5, $t3, $fp, 3
	slli.d	$t6, $t3, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $fp, $t6
	fldx.d	$fa3, $t0, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t0, $a5
	fst.d	$fa1, $t4, 8
	fstx.d	$fa3, $fp, $t6
	fst.d	$fa0, $t5, 8
	sub.w	$t3, $t3, $a1
	add.d	$t5, $t4, $a5
	fld.d	$fa0, $t5, 8
	alsl.d	$t6, $t3, $fp, 3
	slli.d	$t7, $t3, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $fp, $t7
	fldx.d	$fa3, $t4, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t4, $a5
	fst.d	$fa1, $t5, 8
	fstx.d	$fa3, $fp, $t7
	fst.d	$fa0, $t6, 8
	add.w	$t3, $t3, $a4
	add.d	$t4, $t5, $a5
	fld.d	$fa0, $t4, 8
	alsl.d	$t6, $t3, $fp, 3
	slli.d	$t3, $t3, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $fp, $t3
	fldx.d	$fa3, $t5, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t5, $a5
	fst.d	$fa1, $t4, 8
	fstx.d	$fa3, $fp, $t3
	fst.d	$fa0, $t6, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_24
# %bb.25:                               # %._crit_edge253.loopexit.i
                                        #   in Loop: Header=BB4_22 Depth=1
	add.w	$a6, $a6, $a7
	b	.LBB4_21
.LBB4_26:
	fld.d	$fa0, $fp, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $fp, 8
	addi.w	$a4, $a1, 0
	alsl.d	$a2, $a4, $fp, 3
	fld.d	$fa0, $a2, 8
	fneg.d	$fa0, $fa0
	ori	$a5, $zero, 2
	fst.d	$fa0, $a2, 8
	blt	$a0, $a5, .LBB4_31
# %bb.27:                               # %.preheader239.preheader.i
	addi.d	$a2, $fp, 8
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB4_28:                               # %.preheader239.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_29 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a3, $a6
	slli.d	$a7, $a5, 1
	alsl.d	$t0, $a6, $a2, 3
	move	$t1, $a3
	move	$t2, $a5
	.p2align	4, , 16
.LBB4_29:                               #   Parent Loop BB4_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$t3, $t3, $a7
	fld.d	$fa0, $t0, 0
	alsl.d	$t4, $t3, $fp, 3
	slli.d	$t5, $t3, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $fp, $t5
	fld.d	$fa3, $t0, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t0, -8
	fst.d	$fa1, $t0, 0
	fstx.d	$fa3, $fp, $t5
	fst.d	$fa0, $t4, 8
	add.w	$t3, $t3, $a1
	add.d	$t4, $t0, $a4
	fldx.d	$fa0, $t0, $a4
	alsl.d	$t5, $t3, $fp, 3
	slli.d	$t3, $t3, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $fp, $t3
	fld.d	$fa3, $t4, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t4, -8
	fstx.d	$fa1, $t0, $a4
	fstx.d	$fa3, $fp, $t3
	fst.d	$fa0, $t5, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_29
# %bb.30:                               #   in Loop: Header=BB4_28 Depth=1
	add.w	$a6, $a7, $a6
	alsl.d	$a7, $a6, $fp, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a7, 8
	add.w	$a6, $a6, $a1
	alsl.d	$a6, $a6, $fp, 3
	fld.d	$fa0, $a6, 8
	fneg.d	$fa0, $fa0
	addi.d	$a5, $a5, 1
	fst.d	$fa0, $a6, 8
	bne	$a5, $a0, .LBB4_28
.LBB4_31:                               # %bitrv2conj.exit
	ori	$a0, $zero, 9
	ori	$s2, $zero, 2
	bltu	$s1, $a0, .LBB4_35
# %bb.32:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cft1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 33
	ori	$s2, $zero, 8
	bltu	$s1, $a0, .LBB4_35
# %bb.33:                               # %.lr.ph.i22.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB4_34:                               # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cftmdl)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s2, 2
	move	$a1, $s2
	blt	$a0, $s1, .LBB4_34
.LBB4_35:                               # %.loopexit120.i
	slli.w	$a0, $s2, 2
	bne	$a0, $s1, .LBB4_39
# %bb.36:                               # %.preheader.i21
	blez	$s2, .LBB4_42
# %bb.37:                               # %.lr.ph125.preheader.i
	move	$a0, $zero
	slli.d	$a1, $s2, 4
	addi.d	$a2, $fp, 8
	alsl.d	$a3, $s2, $a1, 3
	slli.d	$a4, $s2, 3
	.p2align	4, , 16
.LBB4_38:                               # %.lr.ph125.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, -8
	add.d	$a5, $a2, $a4
	fld.d	$fa1, $a5, -8
	fld.d	$fa2, $a2, 0
	fldx.d	$fa3, $a2, $a4
	fadd.d	$fa4, $fa0, $fa1
	fneg.d	$fa5, $fa2
	fsub.d	$fa5, $fa5, $fa3
	add.d	$a6, $a2, $a1
	fld.d	$fa6, $a6, -8
	add.d	$a7, $a2, $a3
	fld.d	$fa7, $a7, -8
	fldx.d	$ft0, $a2, $a1
	fldx.d	$ft1, $a2, $a3
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa3, $fa2
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a2, -8
	fsub.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a2, 0
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a6, -8
	fadd.d	$fa2, $fa5, $fa3
	fstx.d	$fa2, $a2, $a1
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa2, $fa1, $fa6
	fstx.d	$fa2, $a2, $a4
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a7, -8
	fadd.d	$fa0, $fa1, $fa6
	fstx.d	$fa0, $a2, $a3
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, 16
	bltu	$a0, $s2, .LBB4_38
	b	.LBB4_42
.LBB4_39:                               # %.preheader118.i
	blez	$s2, .LBB4_42
# %bb.40:                               # %.lr.ph123.preheader.i
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	.p2align	4, , 16
.LBB4_41:                               # %.lr.ph123.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 0
	add.d	$a2, $fp, $a1
	fldx.d	$fa1, $fp, $a1
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $a2, 8
	fsub.d	$fa4, $fa0, $fa1
	fsub.d	$fa5, $fa3, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fneg.d	$fa0, $fa2
	fsub.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $fp, 8
	fstx.d	$fa4, $fp, $a1
	fst.d	$fa5, $a2, 8
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB4_41
.LBB4_42:                               # %cftbsub.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	cdft, .Lfunc_end4-cdft
                                        # -- End function
	.globl	errorcheck                      # -- Begin function errorcheck
	.p2align	5
	.type	errorcheck,@function
errorcheck:                             # @errorcheck
# %bb.0:
	bge	$a1, $a0, .LBB5_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	ret
.LBB5_2:                                # %.lr.ph
	move	$a3, $zero
	fneg.d	$fa1, $fa0
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3045
	lu12i.w	$a4, 13
	ori	$a4, $a4, 1525
	lu12i.w	$a5, 8285
	ori	$a5, $a5, 185
	lu12i.w	$a6, -259944
	ori	$a6, $a6, 2929
	lu32i.d	$a6, 11909
	lu52i.d	$a6, $a6, 1005
	movgr2fr.d	$fa2, $a6
	lu12i.w	$a6, 63
	ori	$a6, $a6, 1152
	.p2align	4, , 16
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a3, $a4
	bstrpick.d	$a7, $a3, 31, 7
	mul.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 36
	mul.d	$a7, $a7, $a6
	sub.w	$a3, $a3, $a7
	fld.d	$fa3, $a2, 0
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa1
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	fabs.d	$fa3, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB5_3
# %bb.4:                                # %._crit_edge
	ret
.Lfunc_end5:
	.size	errorcheck, .Lfunc_end5-errorcheck
                                        # -- End function
	.p2align	5                               # -- Begin function bitrv2
	.type	bitrv2,@function
bitrv2:                                 # @bitrv2
# %bb.0:
	ori	$a3, $zero, 9
	st.w	$zero, $a1, 0
	bltu	$a0, $a3, .LBB6_11
# %bb.1:                                # %.lr.ph216.preheader
	ori	$a3, $zero, 1
	ori	$a4, $zero, 8
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.w	$a6, $a5, 4
	addi.w	$a7, $a0, 0
	slli.w	$a3, $a5, 1
	bge	$a6, $a7, .LBB6_13
.LBB6_3:                                # %.lr.ph216
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_10 Depth 2
	move	$a5, $a3
	bstrpick.d	$a0, $a0, 31, 1
	blez	$a3, .LBB6_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a3, $a5, 2
	bgeu	$a5, $a4, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	move	$a6, $zero
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_6:                                # %vector.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	bstrpick.d	$a6, $a5, 30, 3
	slli.d	$a6, $a6, 3
	vreplgr2vr.w	$vr0, $a0
	move	$a7, $a1
	move	$t0, $a6
	.p2align	4, , 16
.LBB6_7:                                # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a7, 0
	vld	$vr2, $a7, 16
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	add.d	$t1, $a7, $a3
	vstx	$vr1, $a7, $a3
	vst	$vr2, $t1, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$a6, $a5, .LBB6_2
.LBB6_9:                                # %.lr.ph.preheader269
                                        #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$a7, $a6, $a1, 2
	sub.d	$a6, $a5, $a6
	.p2align	4, , 16
.LBB6_10:                               # %.lr.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	add.d	$t0, $t0, $a0
	stx.w	$t0, $a7, $a3
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB6_10
	b	.LBB6_2
.LBB6_11:                               # %._crit_edge217.thread
	ori	$a3, $zero, 8
	bne	$a0, $a3, .LBB6_26
# %bb.12:
	ori	$a0, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB6_15
.LBB6_13:                               # %._crit_edge217
	slli.d	$a0, $a5, 2
	bne	$a6, $a7, .LBB6_21
# %bb.14:                               # %.preheader208
	blez	$a3, .LBB6_26
.LBB6_15:                               # %.preheader.lr.ph
	move	$a4, $zero
	slli.d	$a5, $a3, 2
	bstrpick.d	$a6, $a0, 31, 0
	slli.d	$a7, $a6, 4
	alsl.d	$t0, $a6, $a7, 3
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_16:                               #   in Loop: Header=BB6_18 Depth=1
	move	$t1, $zero
.LBB6_17:                               # %._crit_edge224
                                        #   in Loop: Header=BB6_18 Depth=1
	add.d	$t2, $a3, $a4
	alsl.w	$t3, $t2, $t1, 1
	alsl.d	$t1, $t2, $t1, 1
	add.w	$t1, $t1, $a0
	slli.d	$t1, $t1, 3
	vldx	$vr0, $a2, $t1
	slli.d	$t2, $t3, 3
	vldx	$vr1, $a2, $t2
	vstx	$vr0, $a2, $t2
	addi.d	$a4, $a4, 1
	vstx	$vr1, $a2, $t1
	beq	$a4, $a3, .LBB6_26
.LBB6_18:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_20 Depth 2
	beqz	$a4, .LBB6_16
# %bb.19:                               # %.lr.ph223
                                        #   in Loop: Header=BB6_18 Depth=1
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $a1, $t1
	slli.d	$t2, $a4, 1
	alsl.d	$t3, $t1, $a2, 3
	add.d	$t4, $a6, $t1
	alsl.d	$t4, $t4, $a2, 3
	move	$t5, $a4
	move	$t6, $a1
	.p2align	4, , 16
.LBB6_20:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	add.w	$t7, $t7, $t2
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t3, 0
	vst	$vr0, $t3, 0
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t4, 0
	vst	$vr0, $t4, 0
	vstx	$vr1, $a2, $t8
	sub.w	$t7, $t7, $a0
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vldx	$vr1, $t3, $a7
	vstx	$vr0, $t3, $a7
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t7, $t7, 3
	vldx	$vr0, $a2, $t7
	vldx	$vr1, $t3, $t0
	vstx	$vr0, $t3, $t0
	vstx	$vr1, $a2, $t7
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 4
	bnez	$t5, .LBB6_20
	b	.LBB6_17
.LBB6_21:                               # %.preheader210
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB6_26
# %bb.22:                               # %.preheader209.preheader
	addi.w	$a4, $a0, 0
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB6_23:                               # %.preheader209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_24 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a7, $a1, $a6
	slli.d	$a6, $a5, 1
	alsl.d	$a7, $a7, $a2, 3
	move	$t0, $a5
	move	$t1, $a1
	.p2align	4, , 16
.LBB6_24:                               #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	add.w	$t2, $t2, $a6
	slli.d	$t3, $t2, 3
	vldx	$vr0, $a2, $t3
	vld	$vr1, $a7, 0
	vst	$vr0, $a7, 0
	vstx	$vr1, $a2, $t3
	add.w	$t2, $t2, $a0
	slli.d	$t2, $t2, 3
	vldx	$vr0, $a2, $t2
	vldx	$vr1, $a7, $a4
	vstx	$vr0, $a7, $a4
	vstx	$vr1, $a2, $t2
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB6_24
# %bb.25:                               #   in Loop: Header=BB6_23 Depth=1
	addi.d	$a5, $a5, 1
	bne	$a5, $a3, .LBB6_23
.LBB6_26:                               # %.loopexit
	ret
.Lfunc_end6:
	.size	bitrv2, .Lfunc_end6-bitrv2
                                        # -- End function
	.p2align	5                               # -- Begin function cftfsub
	.type	cftfsub,@function
cftfsub:                                # @cftfsub
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 9
	ori	$s2, $zero, 2
	bltu	$s0, $a0, .LBB7_4
# %bb.1:
	move	$s1, $a2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cft1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 33
	ori	$s2, $zero, 8
	bltu	$s0, $a0, .LBB7_4
# %bb.2:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $s0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftmdl)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s2, 2
	move	$a1, $s2
	blt	$a0, $s0, .LBB7_3
.LBB7_4:                                # %.loopexit118
	slli.w	$a0, $s2, 2
	bne	$a0, $s0, .LBB7_8
# %bb.5:                                # %.preheader
	blez	$s2, .LBB7_11
# %bb.6:                                # %.lr.ph123.preheader
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	slli.d	$a2, $s2, 4
	alsl.d	$a3, $s2, $a2, 3
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph123
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 0
	add.d	$a4, $fp, $a1
	fldx.d	$fa1, $fp, $a1
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $a4, 8
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	add.d	$a5, $fp, $a2
	fldx.d	$fa6, $fp, $a2
	add.d	$a6, $fp, $a3
	fldx.d	$fa7, $fp, $a3
	fld.d	$ft0, $a5, 8
	fld.d	$ft1, $a6, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $fp, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $fp, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $fp, $a2
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a5, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $fp, $a1
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a4, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $fp, $a3
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $a6, 8
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB7_7
	b	.LBB7_11
.LBB7_8:                                # %.preheader116
	blez	$s2, .LBB7_11
# %bb.9:                                # %.lr.ph121.preheader
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	.p2align	4, , 16
.LBB7_10:                               # %.lr.ph121
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 0
	vldx	$vr1, $fp, $a1
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a1
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB7_10
.LBB7_11:                               # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	cftfsub, .Lfunc_end7-cftfsub
                                        # -- End function
	.p2align	5                               # -- Begin function cft1st
	.type	cft1st,@function
cft1st:                                 # @cft1st
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a1, 24
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa6, $a1, 32
	fld.d	$fa7, $a1, 48
	fld.d	$ft0, $a1, 40
	fld.d	$ft1, $a1, 56
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a1, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a1, 8
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a1, 32
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a1, 40
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a1, 16
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a1, 24
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a1, 48
	fsub.d	$fa0, $fa1, $fa6
	fld.d	$fa1, $a1, 64
	fld.d	$fa2, $a1, 80
	fld.d	$fa3, $a1, 72
	fld.d	$fa4, $a1, 88
	fst.d	$fa0, $a1, 56
	fld.d	$fa0, $a2, 16
	fadd.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $a1, 96
	fld.d	$ft0, $a1, 112
	fld.d	$ft1, $a1, 104
	fld.d	$ft2, $a1, 120
	fsub.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $fa5, $fa3
	fst.d	$ft1, $a1, 64
	fadd.d	$ft1, $fa6, $fa4
	fst.d	$ft1, $a1, 72
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $a1, 96
	fsub.d	$fa3, $fa5, $fa3
	fst.d	$fa3, $a1, 104
	fsub.d	$fa3, $fa1, $ft0
	fadd.d	$fa4, $fa2, $fa7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $a1, 80
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a1, 88
	fadd.d	$fa1, $fa1, $ft0
	fsub.d	$fa2, $fa7, $fa2
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a1, 112
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ori	$a3, $zero, 17
	fst.d	$fa0, $a1, 120
	bltu	$a0, $a3, .LBB8_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a4, $zero
	addi.d	$a1, $a1, 248
	addi.d	$a3, $a2, 16
	addi.d	$a2, $a2, 56
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a3, $a4
	fld.d	$fa1, $a5, 8
	fldx.d	$fa0, $a3, $a4
	fld.d	$fa2, $a2, -24
	fld.d	$fa3, $a2, -16
	fadd.d	$fa4, $fa1, $fa1
	fneg.d	$fa5, $fa4
	fld.d	$fa6, $a1, -120
	fld.d	$fa7, $a1, -104
	fld.d	$ft0, $a1, -112
	fld.d	$ft1, $a1, -96
	fmadd.d	$fa5, $fa5, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	fld.d	$ft4, $a1, -88
	fld.d	$ft5, $a1, -72
	fld.d	$ft6, $a1, -80
	fld.d	$ft7, $a1, -64
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $a1, -120
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $a1, -112
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa0, $ft0, $ft2
	fst.d	$ft2, $a1, -88
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa0, $ft1, $ft0
	fst.d	$ft0, $a1, -80
	fsub.d	$ft0, $fa6, $ft5
	fadd.d	$ft1, $fa7, $ft4
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa3, $ft2
	fmadd.d	$ft2, $fa2, $ft0, $ft2
	fst.d	$ft2, $a1, -104
	fmul.d	$fa3, $fa3, $ft0
	fmadd.d	$fa2, $fa2, $ft1, $fa3
	fst.d	$fa2, $a1, -96
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa3, $fa7, $ft4
	fneg.d	$fa6, $fa3
	fmul.d	$fa6, $fa4, $fa6
	fmadd.d	$fa6, $fa5, $fa2, $fa6
	fst.d	$fa6, $a1, -72
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa3, $fa2
	fst.d	$fa2, $a1, -64
	fld.d	$fa2, $a2, -8
	fld.d	$fa3, $a2, 0
	fadd.d	$fa4, $fa0, $fa0
	fneg.d	$fa5, $fa4
	fld.d	$fa6, $a1, -56
	fld.d	$fa7, $a1, -40
	fld.d	$ft0, $a1, -48
	fld.d	$ft1, $a1, -32
	fmadd.d	$fa5, $fa5, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	fld.d	$ft4, $a1, -24
	fld.d	$ft5, $a1, -8
	fld.d	$ft6, $a1, -16
	fld.d	$ft7, $a1, 0
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $a1, -56
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $a1, -48
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$fa1, $fa1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa0, $ft2
	fmadd.d	$ft2, $fa1, $ft0, $ft2
	fst.d	$ft2, $a1, -24
	fmul.d	$fa0, $fa0, $ft0
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	fst.d	$fa0, $a1, -16
	fsub.d	$fa0, $fa6, $ft5
	fadd.d	$fa1, $fa7, $ft4
	fneg.d	$ft0, $fa1
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa2, $fa0, $ft0
	fst.d	$ft0, $a1, -40
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa0, $a1, -32
	fadd.d	$fa0, $fa6, $ft5
	fsub.d	$fa1, $fa7, $ft4
	fneg.d	$fa2, $fa1
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa0, $fa2
	fst.d	$fa2, $a1, -8
	fmul.d	$fa0, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a5, $a4, 32
	addi.d	$a4, $a4, 16
	addi.d	$a1, $a1, 128
	addi.d	$a2, $a2, 32
	bltu	$a5, $a0, .LBB8_2
.LBB8_3:                                # %._crit_edge
	ret
.Lfunc_end8:
	.size	cft1st, .Lfunc_end8-cft1st
                                        # -- End function
	.p2align	5                               # -- Begin function cftmdl
	.type	cftmdl,@function
cftmdl:                                 # @cftmdl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	slli.w	$a7, $a1, 2
	slli.d	$a6, $a1, 3
	slli.d	$a4, $a1, 4
	blez	$a1, .LBB9_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a5, $zero
	alsl.d	$t0, $a1, $a4, 3
	move	$t1, $a2
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $t1, 0
	add.d	$t2, $t1, $a6
	fldx.d	$fa1, $t1, $a6
	fld.d	$fa2, $t1, 8
	fld.d	$fa3, $t2, 8
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	add.d	$t3, $t1, $a4
	fldx.d	$fa6, $t1, $a4
	add.d	$t4, $t1, $t0
	fldx.d	$fa7, $t1, $t0
	fld.d	$ft0, $t3, 8
	fld.d	$ft1, $t4, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $t1, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $t1, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $t1, $a4
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $t3, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $t1, $a6
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $t2, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $t1, $t0
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t4, 8
	addi.d	$a5, $a5, 2
	addi.d	$t1, $t1, 16
	bltu	$a5, $a1, .LBB9_2
.LBB9_3:                                # %._crit_edge
	alsl.w	$a5, $a1, $a1, 2
	bge	$a7, $a5, .LBB9_6
# %bb.4:                                # %.lr.ph400.preheader
	fld.d	$fa0, $a3, 16
	alsl.d	$t0, $a7, $a2, 3
	addi.d	$t0, $t0, 8
	add.d	$t1, $a1, $a7
	alsl.d	$t1, $t1, $a2, 3
	addi.d	$t1, $t1, 8
	alsl.d	$t2, $a1, $a4, 3
	move	$t3, $a7
	.p2align	4, , 16
.LBB9_5:                                # %.lr.ph400
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $t0, -8
	fld.d	$fa2, $t1, -8
	fld.d	$fa3, $t0, 0
	fld.d	$fa4, $t1, 0
	fadd.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	add.d	$t4, $t0, $a4
	fld.d	$fa7, $t4, -8
	add.d	$t5, $t0, $t2
	fld.d	$ft0, $t5, -8
	fldx.d	$ft1, $t0, $a4
	fldx.d	$ft2, $t0, $t2
	fsub.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $fa5, $fa3
	fst.d	$ft1, $t0, -8
	fadd.d	$ft1, $fa6, $fa4
	fst.d	$ft1, $t0, 0
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $t4, -8
	fsub.d	$fa3, $fa5, $fa3
	fstx.d	$fa3, $t0, $a4
	fsub.d	$fa3, $fa1, $ft0
	fadd.d	$fa4, $fa2, $fa7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $t1, -8
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t1, 0
	fadd.d	$fa1, $fa1, $ft0
	fsub.d	$fa2, $fa7, $fa2
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t5, -8
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $t0, $t2
	addi.d	$t3, $t3, 2
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	blt	$t3, $a5, .LBB9_5
.LBB9_6:                                # %._crit_edge401
	addi.w	$a5, $a6, 0
	bge	$a5, $a0, .LBB9_14
# %bb.7:                                # %.lr.ph413.preheader
	move	$t8, $zero
	alsl.w	$a6, $a1, $a6, 2
	add.d	$a7, $a7, $a1
	slli.d	$t0, $a5, 3
	addi.d	$a2, $a2, 8
	alsl.d	$t1, $a5, $a2, 3
	add.d	$t2, $a1, $a5
	alsl.d	$t2, $t2, $a2, 3
	alsl.d	$t3, $a1, $a4, 3
	move	$t4, $a5
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_8:                                # %._crit_edge409
                                        #   in Loop: Header=BB9_9 Depth=1
	add.d	$t4, $t4, $a5
	add.w	$a6, $a6, $a5
	add.d	$t1, $t1, $t0
	add.d	$t2, $t2, $t0
	move	$t8, $t5
	bge	$t4, $a0, .LBB9_14
.LBB9_9:                                # %.lr.ph413
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
                                        #     Child Loop BB9_13 Depth 2
	addi.d	$t5, $t8, 2
	blez	$a1, .LBB9_8
# %bb.10:                               # %.lr.ph404.preheader
                                        #   in Loop: Header=BB9_9 Depth=1
	alsl.d	$t6, $a6, $a2, 3
	add.d	$t7, $a1, $a6
	alsl.d	$t7, $t7, $a2, 3
	slli.d	$fp, $t5, 3
	alsl.d	$t8, $t8, $a3, 3
	fld.d	$fa1, $t8, 24
	slli.d	$s0, $t5, 4
	alsl.d	$t8, $t5, $a3, 4
	fldx.d	$fa2, $a3, $s0
	fld.d	$fa3, $t8, 8
	fldx.d	$fa0, $a3, $fp
	fadd.d	$fa5, $fa1, $fa1
	fneg.d	$fa4, $fa5
	fmadd.d	$fa4, $fa4, $fa3, $fa2
	fmsub.d	$fa5, $fa5, $fa2, $fa3
	add.d	$fp, $t4, $a1
	move	$s0, $t2
	move	$s1, $t1
	move	$s2, $t4
	.p2align	4, , 16
.LBB9_11:                               # %.lr.ph404
                                        #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $s1, -8
	fld.d	$fa7, $s0, -8
	fld.d	$ft0, $s1, 0
	fld.d	$ft1, $s0, 0
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	add.d	$s3, $s1, $a4
	fld.d	$ft4, $s3, -8
	add.d	$s4, $s1, $t3
	fld.d	$ft5, $s4, -8
	fldx.d	$ft6, $s1, $a4
	fldx.d	$ft7, $s1, $t3
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $s1, -8
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $s1, 0
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa0, $ft0, $ft2
	fst.d	$ft2, $s3, -8
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa0, $ft1, $ft0
	fstx.d	$ft0, $s1, $a4
	fsub.d	$ft0, $fa6, $ft5
	fadd.d	$ft1, $fa7, $ft4
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa3, $ft2
	fmadd.d	$ft2, $fa2, $ft0, $ft2
	fst.d	$ft2, $s0, -8
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa2, $ft1, $ft0
	fst.d	$ft0, $s0, 0
	fadd.d	$fa6, $fa6, $ft5
	fsub.d	$fa7, $fa7, $ft4
	fneg.d	$ft0, $fa7
	fmul.d	$ft0, $fa5, $ft0
	fmadd.d	$ft0, $fa4, $fa6, $ft0
	fst.d	$ft0, $s4, -8
	fmul.d	$fa6, $fa5, $fa6
	fmadd.d	$fa6, $fa4, $fa7, $fa6
	fstx.d	$fa6, $s1, $t3
	addi.d	$s2, $s2, 2
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	blt	$s2, $fp, .LBB9_11
# %bb.12:                               # %._crit_edge405
                                        #   in Loop: Header=BB9_9 Depth=1
	fld.d	$fa2, $t8, 16
	fld.d	$fa3, $t8, 24
	fadd.d	$fa5, $fa0, $fa0
	fneg.d	$fa4, $fa5
	fmadd.d	$fa4, $fa4, $fa3, $fa2
	fmsub.d	$fa5, $fa5, $fa2, $fa3
	add.d	$t8, $t4, $a7
	fneg.d	$fa1, $fa1
	move	$fp, $a6
	.p2align	4, , 16
.LBB9_13:                               #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $t6, -8
	fld.d	$fa7, $t7, -8
	fld.d	$ft0, $t6, 0
	fld.d	$ft1, $t7, 0
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	add.d	$s0, $t6, $a4
	fld.d	$ft4, $s0, -8
	add.d	$s1, $t6, $t3
	fld.d	$ft5, $s1, -8
	fldx.d	$ft6, $t6, $a4
	fldx.d	$ft7, $t6, $t3
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $t6, -8
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $t6, 0
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa0, $ft2
	fmadd.d	$ft2, $fa1, $ft0, $ft2
	fst.d	$ft2, $s0, -8
	fmul.d	$ft0, $fa0, $ft0
	fmadd.d	$ft0, $fa1, $ft1, $ft0
	fstx.d	$ft0, $t6, $a4
	fsub.d	$ft0, $fa6, $ft5
	fadd.d	$ft1, $fa7, $ft4
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa3, $ft2
	fmadd.d	$ft2, $fa2, $ft0, $ft2
	fst.d	$ft2, $t7, -8
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa2, $ft1, $ft0
	fst.d	$ft0, $t7, 0
	fadd.d	$fa6, $fa6, $ft5
	fsub.d	$fa7, $fa7, $ft4
	fneg.d	$ft0, $fa7
	fmul.d	$ft0, $fa5, $ft0
	fmadd.d	$ft0, $fa4, $fa6, $ft0
	fst.d	$ft0, $s1, -8
	fmul.d	$fa6, $fa5, $fa6
	fmadd.d	$fa6, $fa4, $fa7, $fa6
	fstx.d	$fa6, $t6, $t3
	addi.d	$fp, $fp, 2
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	blt	$fp, $t8, .LBB9_13
	b	.LBB9_8
.LBB9_14:                               # %._crit_edge414
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	cftmdl, .Lfunc_end9-cftmdl
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FFT sanity check failed! Difference is: %le\n"
	.size	.L.str, 45

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%e %e\n"
	.size	.L.str.1, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
