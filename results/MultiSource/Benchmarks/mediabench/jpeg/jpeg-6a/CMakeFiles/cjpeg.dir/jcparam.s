	.file	"jcparam.c"
	.text
	.globl	jpeg_add_quant_table            # -- Begin function jpeg_add_quant_table
	.p2align	5
	.type	jpeg_add_quant_table,@function
jpeg_add_quant_table:                   # @jpeg_add_quant_table
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a0
	ld.w	$a0, $a0, 28
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a2
	alsl.d	$a1, $a1, $s2, 3
	ori	$a2, $zero, 100
	addi.d	$s3, $a1, 88
	beq	$a0, $a2, .LBB0_2
# %bb.1:
	ld.d	$a1, $s2, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB0_2:
	ld.d	$a0, $s3, 0
	bnez	$a0, .LBB0_4
# %bb.3:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(jpeg_alloc_quant_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
.LBB0_4:
	vreplgr2vr.d	$vr0, $s1
	move	$a1, $zero
	vrepli.b	$vr1, 0
	vrepli.d	$vr2, 50
	lu12i.w	$a2, 461373
	ori	$a2, $a2, 1803
	lu32i.d	$a2, 461373
	lu52i.d	$a2, $a2, -1475
	vreplgr2vr.d	$vr3, $a2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 4095
	vreplgr2vr.d	$vr4, $a2
	beqz	$s0, .LBB0_7
# %bb.5:                                # %vector.body.preheader
	lu12i.w	$a2, 6
	ori	$a2, $a2, 973
	vreplgr2vr.d	$vr5, $a2
	vrepli.h	$vr6, 255
	ori	$a2, $zero, 128
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr7, $fp, 0
	vilvl.w	$vr8, $vr1, $vr7
	vilvh.w	$vr7, $vr1, $vr7
	vmul.d	$vr9, $vr0, $vr7
	vmul.d	$vr10, $vr0, $vr8
	vori.b	$vr11, $vr2, 0
	vmadd.d	$vr11, $vr0, $vr8
	vori.b	$vr8, $vr2, 0
	vmadd.d	$vr8, $vr0, $vr7
	vmuh.d	$vr7, $vr8, $vr3
	vadd.d	$vr7, $vr7, $vr8
	vsrli.d	$vr8, $vr7, 63
	vsrai.d	$vr7, $vr7, 6
	vadd.d	$vr7, $vr7, $vr8
	vmuh.d	$vr8, $vr11, $vr3
	vadd.d	$vr8, $vr8, $vr11
	vsrli.d	$vr11, $vr8, 63
	vsrai.d	$vr8, $vr8, 6
	vadd.d	$vr8, $vr8, $vr11
	vmaxi.d	$vr8, $vr8, 1
	vmaxi.d	$vr7, $vr7, 1
	vmin.d	$vr7, $vr7, $vr4
	vmin.d	$vr8, $vr8, $vr4
	vslt.d	$vr10, $vr5, $vr10
	vpickve2gr.d	$a3, $vr10, 0
	vinsgr2vr.h	$vr11, $a3, 0
	vpickve2gr.d	$a3, $vr10, 1
	vinsgr2vr.h	$vr11, $a3, 1
	vslt.d	$vr9, $vr5, $vr9
	vpickve2gr.d	$a3, $vr9, 0
	vinsgr2vr.h	$vr11, $a3, 2
	vpickve2gr.d	$a3, $vr9, 1
	vinsgr2vr.h	$vr11, $a3, 3
	vpickve2gr.d	$a3, $vr8, 0
	vinsgr2vr.h	$vr9, $a3, 0
	vpickve2gr.d	$a3, $vr8, 1
	vinsgr2vr.h	$vr9, $a3, 1
	vpickve2gr.d	$a3, $vr7, 0
	vinsgr2vr.h	$vr9, $a3, 2
	vpickve2gr.d	$a3, $vr7, 1
	vinsgr2vr.h	$vr9, $a3, 3
	vbitsel.v	$vr7, $vr9, $vr6, $vr11
	add.d	$a3, $a0, $a1
	vstelm.d	$vr7, $a3, 0, 0
	addi.d	$a1, $a1, 8
	addi.d	$fp, $fp, 16
	bne	$a1, $a2, .LBB0_6
	b	.LBB0_9
.LBB0_7:                                # %vector.body41.preheader
	ori	$a2, $zero, 128
	.p2align	4, , 16
.LBB0_8:                                # %vector.body41
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $fp, 0
	vilvh.w	$vr6, $vr1, $vr5
	vilvl.w	$vr5, $vr1, $vr5
	vori.b	$vr7, $vr2, 0
	vmadd.d	$vr7, $vr0, $vr5
	vori.b	$vr5, $vr2, 0
	vmadd.d	$vr5, $vr0, $vr6
	vmuh.d	$vr6, $vr5, $vr3
	vadd.d	$vr5, $vr6, $vr5
	vsrli.d	$vr6, $vr5, 63
	vsrai.d	$vr5, $vr5, 6
	vadd.d	$vr5, $vr5, $vr6
	vmuh.d	$vr6, $vr7, $vr3
	vadd.d	$vr6, $vr6, $vr7
	vsrli.d	$vr7, $vr6, 63
	vsrai.d	$vr6, $vr6, 6
	vadd.d	$vr6, $vr6, $vr7
	vmaxi.d	$vr6, $vr6, 1
	vmaxi.d	$vr5, $vr5, 1
	vmin.d	$vr5, $vr5, $vr4
	vmin.d	$vr6, $vr6, $vr4
	vpickve2gr.d	$a3, $vr6, 0
	vinsgr2vr.h	$vr7, $a3, 0
	vpickve2gr.d	$a3, $vr6, 1
	vinsgr2vr.h	$vr7, $a3, 1
	vpickve2gr.d	$a3, $vr5, 0
	vinsgr2vr.h	$vr7, $a3, 2
	vpickve2gr.d	$a3, $vr5, 1
	vinsgr2vr.h	$vr7, $a3, 3
	add.d	$a3, $a0, $a1
	vstelm.d	$vr7, $a3, 0, 0
	addi.d	$a1, $a1, 8
	addi.d	$fp, $fp, 16
	bne	$a1, $a2, .LBB0_8
.LBB0_9:                                # %.split28.us
	st.w	$zero, $a0, 128
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	jpeg_add_quant_table, .Lfunc_end0-jpeg_add_quant_table
                                        # -- End function
	.globl	jpeg_set_linear_quality         # -- Begin function jpeg_set_linear_quality
	.p2align	5
	.type	jpeg_set_linear_quality,@function
jpeg_set_linear_quality:                # @jpeg_set_linear_quality
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 28
	ori	$a3, $zero, 100
	move	$fp, $a2
	move	$s1, $a1
	beq	$a0, $a3, .LBB1_2
# %bb.1:
	ld.d	$a1, $s0, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB1_2:
	ld.d	$a0, $s0, 88
	bnez	$a0, .LBB1_4
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(jpeg_alloc_quant_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 88
.LBB1_4:
	vreplgr2vr.d	$vr0, $s1
	vrepli.b	$vr9, 0
	vrepli.d	$vr10, 50
	lu12i.w	$s3, 461373
	lu12i.w	$s2, 7
	lu12i.w	$s4, 6
	vrepli.h	$vr11, 255
	pcalau12i	$a1, %pc_hi20(jpeg_set_linear_quality.std_luminance_quant_tbl)
	addi.d	$a1, $a1, %pc_lo12(jpeg_set_linear_quality.std_luminance_quant_tbl)
	move	$a2, $zero
	ori	$a3, $s3, 1803
	lu32i.d	$a3, 461373
	lu52i.d	$a3, $a3, -1475
	vreplgr2vr.d	$vr1, $a3
	ori	$a3, $s2, 4095
	vreplgr2vr.d	$vr2, $a3
	beqz	$fp, .LBB1_7
# %bb.5:                                # %vector.body.preheader
	ori	$a3, $s4, 973
	vreplgr2vr.d	$vr3, $a3
	ori	$a3, $zero, 128
	.p2align	4, , 16
.LBB1_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a1, 0
	vilvl.w	$vr5, $vr9, $vr4
	vilvh.w	$vr4, $vr9, $vr4
	vmul.d	$vr6, $vr0, $vr4
	vmul.d	$vr7, $vr0, $vr5
	vori.b	$vr8, $vr10, 0
	vmadd.d	$vr8, $vr0, $vr5
	vori.b	$vr5, $vr10, 0
	vmadd.d	$vr5, $vr0, $vr4
	vmuh.d	$vr4, $vr5, $vr1
	vadd.d	$vr4, $vr4, $vr5
	vsrli.d	$vr5, $vr4, 63
	vsrai.d	$vr4, $vr4, 6
	vadd.d	$vr4, $vr4, $vr5
	vmuh.d	$vr5, $vr8, $vr1
	vadd.d	$vr5, $vr5, $vr8
	vsrli.d	$vr8, $vr5, 63
	vsrai.d	$vr5, $vr5, 6
	vadd.d	$vr5, $vr5, $vr8
	vmaxi.d	$vr5, $vr5, 1
	vmaxi.d	$vr4, $vr4, 1
	vmin.d	$vr4, $vr4, $vr2
	vmin.d	$vr5, $vr5, $vr2
	vslt.d	$vr7, $vr3, $vr7
	vpickve2gr.d	$a4, $vr7, 0
	vinsgr2vr.h	$vr8, $a4, 0
	vpickve2gr.d	$a4, $vr7, 1
	vinsgr2vr.h	$vr8, $a4, 1
	vslt.d	$vr6, $vr3, $vr6
	vpickve2gr.d	$a4, $vr6, 0
	vinsgr2vr.h	$vr8, $a4, 2
	vpickve2gr.d	$a4, $vr6, 1
	vinsgr2vr.h	$vr8, $a4, 3
	vpickve2gr.d	$a4, $vr5, 0
	vinsgr2vr.h	$vr6, $a4, 0
	vpickve2gr.d	$a4, $vr5, 1
	vinsgr2vr.h	$vr6, $a4, 1
	vpickve2gr.d	$a4, $vr4, 0
	vinsgr2vr.h	$vr6, $a4, 2
	vpickve2gr.d	$a4, $vr4, 1
	vinsgr2vr.h	$vr6, $a4, 3
	vbitsel.v	$vr4, $vr6, $vr11, $vr8
	add.d	$a4, $a0, $a2
	vstelm.d	$vr4, $a4, 0, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bne	$a2, $a3, .LBB1_6
	b	.LBB1_9
.LBB1_7:                                # %vector.body36.preheader
	ori	$a3, $zero, 128
	.p2align	4, , 16
.LBB1_8:                                # %vector.body36
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a1, 0
	vilvh.w	$vr4, $vr9, $vr3
	vilvl.w	$vr3, $vr9, $vr3
	vori.b	$vr5, $vr10, 0
	vmadd.d	$vr5, $vr0, $vr3
	vori.b	$vr3, $vr10, 0
	vmadd.d	$vr3, $vr0, $vr4
	vmuh.d	$vr4, $vr3, $vr1
	vadd.d	$vr3, $vr4, $vr3
	vsrli.d	$vr4, $vr3, 63
	vsrai.d	$vr3, $vr3, 6
	vadd.d	$vr3, $vr3, $vr4
	vmuh.d	$vr4, $vr5, $vr1
	vadd.d	$vr4, $vr4, $vr5
	vsrli.d	$vr5, $vr4, 63
	vsrai.d	$vr4, $vr4, 6
	vadd.d	$vr4, $vr4, $vr5
	vmaxi.d	$vr4, $vr4, 1
	vmaxi.d	$vr3, $vr3, 1
	vmin.d	$vr3, $vr3, $vr2
	vmin.d	$vr4, $vr4, $vr2
	vpickve2gr.d	$a4, $vr4, 0
	vinsgr2vr.h	$vr5, $a4, 0
	vpickve2gr.d	$a4, $vr4, 1
	vinsgr2vr.h	$vr5, $a4, 1
	vpickve2gr.d	$a4, $vr3, 0
	vinsgr2vr.h	$vr5, $a4, 2
	vpickve2gr.d	$a4, $vr3, 1
	vinsgr2vr.h	$vr5, $a4, 3
	add.d	$a4, $a0, $a2
	vstelm.d	$vr5, $a4, 0, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bne	$a2, $a3, .LBB1_8
.LBB1_9:                                # %jpeg_add_quant_table.exit
	ld.w	$a1, $s0, 28
	ori	$a2, $zero, 100
	st.w	$zero, $a0, 128
	beq	$a1, $a2, .LBB1_11
# %bb.10:
	ld.d	$a0, $s0, 0
	st.w	$a1, $a0, 44
	ld.d	$a1, $s0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 18
	st.w	$a2, $a0, 40
	move	$a0, $s0
	vst	$vr9, $sp, 48                   # 16-byte Folded Spill
	vst	$vr10, $sp, 32                  # 16-byte Folded Spill
	vst	$vr11, $sp, 16                  # 16-byte Folded Spill
	jirl	$ra, $a1, 0
	vld	$vr11, $sp, 16                  # 16-byte Folded Reload
	vld	$vr10, $sp, 32                  # 16-byte Folded Reload
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
.LBB1_11:
	ld.d	$a0, $s0, 96
	bnez	$a0, .LBB1_13
# %bb.12:
	move	$a0, $s0
	vst	$vr9, $sp, 48                   # 16-byte Folded Spill
	vst	$vr10, $sp, 32                  # 16-byte Folded Spill
	vst	$vr11, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(jpeg_alloc_quant_table)
	jirl	$ra, $ra, 0
	vld	$vr11, $sp, 16                  # 16-byte Folded Reload
	vld	$vr10, $sp, 32                  # 16-byte Folded Reload
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
	st.d	$a0, $s0, 96
.LBB1_13:
	vreplgr2vr.d	$vr0, $s1
	pcalau12i	$a1, %pc_hi20(jpeg_set_linear_quality.std_chrominance_quant_tbl)
	addi.d	$a1, $a1, %pc_lo12(jpeg_set_linear_quality.std_chrominance_quant_tbl)
	move	$a2, $zero
	ori	$a3, $s3, 1803
	lu32i.d	$a3, 461373
	lu52i.d	$a3, $a3, -1475
	vreplgr2vr.d	$vr1, $a3
	ori	$a3, $s2, 4095
	vreplgr2vr.d	$vr2, $a3
	beqz	$fp, .LBB1_16
# %bb.14:                               # %vector.body45.preheader
	ori	$a3, $s4, 973
	vreplgr2vr.d	$vr3, $a3
	ori	$a3, $zero, 128
	.p2align	4, , 16
.LBB1_15:                               # %vector.body45
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a1, 0
	vilvl.w	$vr5, $vr9, $vr4
	vilvh.w	$vr4, $vr9, $vr4
	vmul.d	$vr6, $vr0, $vr4
	vmul.d	$vr7, $vr0, $vr5
	vori.b	$vr8, $vr10, 0
	vmadd.d	$vr8, $vr0, $vr5
	vori.b	$vr5, $vr10, 0
	vmadd.d	$vr5, $vr0, $vr4
	vmuh.d	$vr4, $vr5, $vr1
	vadd.d	$vr4, $vr4, $vr5
	vsrli.d	$vr5, $vr4, 63
	vsrai.d	$vr4, $vr4, 6
	vadd.d	$vr4, $vr4, $vr5
	vmuh.d	$vr5, $vr8, $vr1
	vadd.d	$vr5, $vr5, $vr8
	vsrli.d	$vr8, $vr5, 63
	vsrai.d	$vr5, $vr5, 6
	vadd.d	$vr5, $vr5, $vr8
	vmaxi.d	$vr5, $vr5, 1
	vmaxi.d	$vr4, $vr4, 1
	vmin.d	$vr4, $vr4, $vr2
	vmin.d	$vr5, $vr5, $vr2
	vslt.d	$vr7, $vr3, $vr7
	vpickve2gr.d	$a4, $vr7, 0
	vinsgr2vr.h	$vr8, $a4, 0
	vpickve2gr.d	$a4, $vr7, 1
	vinsgr2vr.h	$vr8, $a4, 1
	vslt.d	$vr6, $vr3, $vr6
	vpickve2gr.d	$a4, $vr6, 0
	vinsgr2vr.h	$vr8, $a4, 2
	vpickve2gr.d	$a4, $vr6, 1
	vinsgr2vr.h	$vr8, $a4, 3
	vpickve2gr.d	$a4, $vr5, 0
	vinsgr2vr.h	$vr6, $a4, 0
	vpickve2gr.d	$a4, $vr5, 1
	vinsgr2vr.h	$vr6, $a4, 1
	vpickve2gr.d	$a4, $vr4, 0
	vinsgr2vr.h	$vr6, $a4, 2
	vpickve2gr.d	$a4, $vr4, 1
	vinsgr2vr.h	$vr6, $a4, 3
	vbitsel.v	$vr4, $vr6, $vr11, $vr8
	add.d	$a4, $a0, $a2
	vstelm.d	$vr4, $a4, 0, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bne	$a2, $a3, .LBB1_15
	b	.LBB1_18
.LBB1_16:                               # %vector.body54.preheader
	ori	$a3, $zero, 128
	.p2align	4, , 16
.LBB1_17:                               # %vector.body54
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a1, 0
	vilvh.w	$vr4, $vr9, $vr3
	vilvl.w	$vr3, $vr9, $vr3
	vori.b	$vr5, $vr10, 0
	vmadd.d	$vr5, $vr0, $vr3
	vori.b	$vr3, $vr10, 0
	vmadd.d	$vr3, $vr0, $vr4
	vmuh.d	$vr4, $vr3, $vr1
	vadd.d	$vr3, $vr4, $vr3
	vsrli.d	$vr4, $vr3, 63
	vsrai.d	$vr3, $vr3, 6
	vadd.d	$vr3, $vr3, $vr4
	vmuh.d	$vr4, $vr5, $vr1
	vadd.d	$vr4, $vr4, $vr5
	vsrli.d	$vr5, $vr4, 63
	vsrai.d	$vr4, $vr4, 6
	vadd.d	$vr4, $vr4, $vr5
	vmaxi.d	$vr4, $vr4, 1
	vmaxi.d	$vr3, $vr3, 1
	vmin.d	$vr3, $vr3, $vr2
	vmin.d	$vr4, $vr4, $vr2
	vpickve2gr.d	$a4, $vr4, 0
	vinsgr2vr.h	$vr5, $a4, 0
	vpickve2gr.d	$a4, $vr4, 1
	vinsgr2vr.h	$vr5, $a4, 1
	vpickve2gr.d	$a4, $vr3, 0
	vinsgr2vr.h	$vr5, $a4, 2
	vpickve2gr.d	$a4, $vr3, 1
	vinsgr2vr.h	$vr5, $a4, 3
	add.d	$a4, $a0, $a2
	vstelm.d	$vr5, $a4, 0, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bne	$a2, $a3, .LBB1_17
.LBB1_18:                               # %jpeg_add_quant_table.exit20
	st.w	$zero, $a0, 128
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	jpeg_set_linear_quality, .Lfunc_end1-jpeg_set_linear_quality
                                        # -- End function
	.globl	jpeg_quality_scaling            # -- Begin function jpeg_quality_scaling
	.p2align	5
	.type	jpeg_quality_scaling,@function
jpeg_quality_scaling:                   # @jpeg_quality_scaling
# %bb.0:
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	slti	$a2, $a1, 100
	maskeqz	$a1, $a1, $a2
	ori	$a3, $zero, 100
	masknez	$a2, $a3, $a2
	ori	$a3, $zero, 49
	or	$a1, $a1, $a2
	blt	$a3, $a0, .LBB2_2
# %bb.1:
	bstrpick.d	$a0, $a1, 15, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 904
	div.du	$a0, $a1, $a0
	ret
.LBB2_2:
	slli.d	$a0, $a1, 1
	ori	$a1, $zero, 200
	sub.w	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	jpeg_quality_scaling, .Lfunc_end2-jpeg_quality_scaling
                                        # -- End function
	.globl	jpeg_set_quality                # -- Begin function jpeg_set_quality
	.p2align	5
	.type	jpeg_set_quality,@function
jpeg_set_quality:                       # @jpeg_set_quality
# %bb.0:
	ori	$a3, $zero, 1
	slt	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a1, $a4
	or	$a3, $a4, $a3
	slti	$a4, $a3, 100
	maskeqz	$a3, $a3, $a4
	ori	$a5, $zero, 100
	masknez	$a4, $a5, $a4
	ori	$a5, $zero, 49
	or	$a3, $a3, $a4
	blt	$a5, $a1, .LBB3_2
# %bb.1:
	bstrpick.d	$a1, $a3, 15, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 904
	div.du	$a1, $a3, $a1
	pcaddu18i	$t8, %call36(jpeg_set_linear_quality)
	jr	$t8
.LBB3_2:
	slli.d	$a1, $a3, 1
	ori	$a3, $zero, 200
	sub.w	$a1, $a3, $a1
	pcaddu18i	$t8, %call36(jpeg_set_linear_quality)
	jr	$t8
.Lfunc_end3:
	.size	jpeg_set_quality, .Lfunc_end3-jpeg_set_quality
                                        # -- End function
	.globl	jpeg_set_defaults               # -- Begin function jpeg_set_defaults
	.p2align	5
	.type	jpeg_set_defaults,@function
jpeg_set_defaults:                      # @jpeg_set_defaults
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 28
	ori	$a1, $zero, 100
	beq	$a0, $a1, .LBB4_2
# %bb.1:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB4_2:
	ld.d	$a0, $fp, 80
	bnez	$a0, .LBB4_4
# %bb.3:
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	ori	$a2, $zero, 960
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 80
.LBB4_4:
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 64
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_set_linear_quality)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	bnez	$a0, .LBB4_6
# %bb.5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_huff_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 120
.LBB4_6:                                # %add_huff_table.exit.i
	pcalau12i	$a1, %pc_hi20(std_huff_tables.bits_dc_luminance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.bits_dc_luminance)
	ld.b	$a2, $a1, 16
	st.b	$a2, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $fp, 120
	addi.d	$a0, $a0, 17
	pcalau12i	$a1, %pc_hi20(std_huff_tables.val_dc_chrominance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.val_dc_chrominance)
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 120
	ld.d	$a0, $fp, 152
	st.w	$zero, $a1, 276
	bnez	$a0, .LBB4_8
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_huff_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 152
.LBB4_8:                                # %add_huff_table.exit8.i
	pcalau12i	$a1, %pc_hi20(std_huff_tables.bits_ac_luminance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.bits_ac_luminance)
	ld.b	$a2, $a1, 16
	st.b	$a2, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $fp, 152
	addi.d	$a0, $a0, 17
	pcalau12i	$a1, %pc_hi20(std_huff_tables.val_ac_luminance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.val_ac_luminance)
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 152
	ld.d	$a0, $fp, 128
	st.w	$zero, $a1, 276
	bnez	$a0, .LBB4_10
# %bb.9:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_huff_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 128
.LBB4_10:                               # %add_huff_table.exit9.i
	pcalau12i	$a1, %pc_hi20(std_huff_tables.bits_dc_chrominance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.bits_dc_chrominance)
	ld.b	$a2, $a1, 16
	st.b	$a2, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $fp, 128
	addi.d	$a0, $a0, 17
	pcalau12i	$a1, %pc_hi20(std_huff_tables.val_dc_chrominance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.val_dc_chrominance)
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 128
	ld.d	$a0, $fp, 160
	st.w	$zero, $a1, 276
	bnez	$a0, .LBB4_12
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_huff_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 160
.LBB4_12:                               # %std_huff_tables.exit
	pcalau12i	$a1, %pc_hi20(std_huff_tables.bits_ac_chrominance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.bits_ac_chrominance)
	ld.b	$a2, $a1, 16
	st.b	$a2, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $fp, 160
	addi.d	$a0, $a0, 17
	pcalau12i	$a1, %pc_hi20(std_huff_tables.val_ac_chrominance)
	addi.d	$a1, $a1, %pc_lo12(std_huff_tables.val_ac_chrominance)
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	st.w	$zero, $a0, 276
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 184
	lu12i.w	$a0, 4112
	ori	$a0, $a0, 257
	bstrins.d	$a0, $a0, 56, 32
	st.d	$a0, $fp, 200
	st.d	$a0, $fp, 208
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	bstrins.d	$a0, $a0, 58, 32
	st.d	$a0, $fp, 216
	st.d	$a0, $fp, 224
	ld.w	$a0, $fp, 64
	st.w	$zero, $fp, 232
	vst	$vr0, $fp, 240
	ori	$a1, $zero, 8
	slt	$a0, $a1, $a0
	st.w	$a0, $fp, 256
	st.b	$zero, $fp, 284
	vst	$vr0, $fp, 260
	st.w	$zero, $fp, 276
	lu12i.w	$a0, 16
	ori	$a0, $a0, 1
	st.w	$a0, $fp, 286
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(jpeg_default_colorspace)
	jr	$t8
.Lfunc_end4:
	.size	jpeg_set_defaults, .Lfunc_end4-jpeg_set_defaults
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function jpeg_default_colorspace
.LCPI5_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI5_1:
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	jpeg_default_colorspace
	.p2align	5
	.type	jpeg_default_colorspace,@function
jpeg_default_colorspace:                # @jpeg_default_colorspace
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 52
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB5_21
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI5_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI5_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB5_2:
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 100
	beq	$a0, $a1, .LBB5_4
# %bb.3:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB5_4:                                # %jpeg_set_colorspace.exit11
	st.w	$zero, $fp, 292
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 280
	ori	$a1, $zero, 3
	pcalau12i	$a2, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_1)
	ld.d	$a2, $fp, 80
	lu32i.d	$a1, 3
	st.d	$a1, $fp, 68
	ori	$a1, $zero, 3
	st.w	$a0, $a2, 0
	vst	$vr0, $a2, 8
	st.w	$zero, $a2, 24
	ori	$a3, $zero, 2
	st.w	$a3, $a2, 96
	vrepli.w	$vr0, 1
	vst	$vr0, $a2, 104
	st.w	$a0, $a2, 120
	st.w	$a1, $a2, 192
	vst	$vr0, $a2, 200
	st.w	$a0, $a2, 216
.LBB5_5:                                # %jpeg_set_colorspace.exit19
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_6:
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 100
	beq	$a0, $a1, .LBB5_8
# %bb.7:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB5_8:                                # %jpeg_set_colorspace.exit15
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 292
	ori	$a0, $zero, 4
	lu32i.d	$a0, 4
	st.d	$a0, $fp, 68
	ld.d	$a0, $fp, 80
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	st.w	$zero, $fp, 280
	ori	$a1, $zero, 67
	st.w	$a1, $a0, 0
	vst	$vr0, $a0, 8
	st.w	$zero, $a0, 24
	ori	$a1, $zero, 77
	st.w	$a1, $a0, 96
	vst	$vr0, $a0, 104
	st.w	$zero, $a0, 120
	ori	$a1, $zero, 89
	st.w	$a1, $a0, 192
	vst	$vr0, $a0, 200
	st.w	$zero, $a0, 216
	ori	$a1, $zero, 75
	st.w	$a1, $a0, 288
	vst	$vr0, $a0, 296
	st.w	$zero, $a0, 312
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_9:
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 100
	beq	$a0, $a1, .LBB5_11
# %bb.10:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB5_11:
	ld.w	$a0, $fp, 48
	st.w	$zero, $fp, 72
	st.w	$zero, $fp, 280
	st.w	$zero, $fp, 292
	addi.w	$a1, $a0, -11
	addi.w	$a2, $zero, -11
	st.w	$a0, $fp, 68
	bltu	$a2, $a1, .LBB5_13
# %bb.12:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 10
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
	blez	$a0, .LBB5_5
.LBB5_13:                               # %.lr.ph.i
	ld.d	$a1, $fp, 80
	ori	$a3, $zero, 2
	bstrpick.d	$a2, $a0, 31, 0
	bgeu	$a0, $a3, .LBB5_22
# %bb.14:
	move	$a0, $zero
	b	.LBB5_25
.LBB5_15:
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 100
	beq	$a0, $a1, .LBB5_17
# %bb.16:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB5_17:                               # %jpeg_set_colorspace.exit
	st.w	$zero, $fp, 292
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 280
	ori	$a1, $zero, 1
	ld.d	$a2, $fp, 80
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	lu32i.d	$a1, 1
	st.d	$a1, $fp, 68
	st.w	$a0, $a2, 0
	vst	$vr0, $a2, 8
	st.w	$zero, $a2, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_18:
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 100
	beq	$a0, $a1, .LBB5_20
# %bb.19:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB5_20:                               # %jpeg_set_colorspace.exit17
	st.w	$zero, $fp, 280
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 292
	ori	$a1, $zero, 4
	pcalau12i	$a2, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_1)
	ld.d	$a2, $fp, 80
	lu32i.d	$a1, 5
	st.d	$a1, $fp, 68
	ori	$a1, $zero, 4
	st.w	$a0, $a2, 0
	vst	$vr0, $a2, 8
	st.w	$zero, $a2, 24
	ori	$a3, $zero, 2
	st.w	$a3, $a2, 96
	vrepli.w	$vr1, 1
	vst	$vr1, $a2, 104
	st.w	$a0, $a2, 120
	ori	$a3, $zero, 3
	st.w	$a3, $a2, 192
	vst	$vr1, $a2, 200
	st.w	$a0, $a2, 216
	st.w	$a1, $a2, 288
	vst	$vr0, $a2, 296
	st.w	$zero, $a2, 312
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_21:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 7
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB5_22:                               # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	bstrpick.d	$a0, $a2, 30, 1
	slli.d	$a0, $a0, 1
	move	$a3, $zero
	move	$a4, $a0
	move	$a5, $a1
	.p2align	4, , 16
.LBB5_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a6, $a3, 1
	st.w	$a3, $a5, 0
	st.w	$a6, $a5, 96
	vst	$vr0, $a5, 8
	vst	$vr0, $a5, 104
	st.w	$zero, $a5, 24
	st.w	$zero, $a5, 120
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a5, 192
	bnez	$a4, .LBB5_23
# %bb.24:                               # %middle.block
	beq	$a0, $a2, .LBB5_5
.LBB5_25:                               # %scalar.ph.preheader
	sub.d	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	alsl.d	$a3, $a0, $a0, 1
	slli.d	$a3, $a3, 5
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB5_26:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 0
	vst	$vr0, $a1, 8
	st.w	$zero, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 96
	bnez	$a2, .LBB5_26
	b	.LBB5_5
.Lfunc_end5:
	.size	jpeg_default_colorspace, .Lfunc_end5-jpeg_default_colorspace
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_6-.LJTI5_0
	.word	.LBB5_18-.LJTI5_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function jpeg_set_colorspace
.LCPI6_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI6_1:
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	jpeg_set_colorspace
	.p2align	5
	.type	jpeg_set_colorspace,@function
jpeg_set_colorspace:                    # @jpeg_set_colorspace
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 28
	ori	$a2, $zero, 100
	move	$s0, $a1
	beq	$a0, $a2, .LBB6_2
# %bb.1:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB6_2:
	st.w	$s0, $fp, 72
	st.w	$zero, $fp, 280
	ori	$a0, $zero, 5
	st.w	$zero, $fp, 292
	bltu	$a0, $s0, .LBB6_13
# %bb.3:
	slli.d	$a0, $s0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI6_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB6_4:
	ld.w	$a0, $fp, 48
	addi.w	$a1, $a0, -11
	addi.w	$a2, $zero, -11
	st.w	$a0, $fp, 68
	bltu	$a2, $a1, .LBB6_6
# %bb.5:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 10
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
	blez	$a0, .LBB6_19
.LBB6_6:                                # %.lr.ph
	ld.d	$a1, $fp, 80
	ori	$a3, $zero, 2
	bstrpick.d	$a2, $a0, 31, 0
	bgeu	$a0, $a3, .LBB6_14
# %bb.7:
	move	$a0, $zero
	b	.LBB6_17
.LBB6_8:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 292
	ld.d	$a0, $fp, 80
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 68
	ori	$a1, $zero, 67
	st.w	$a1, $a0, 0
	vst	$vr0, $a0, 8
	st.w	$zero, $a0, 24
	ori	$a1, $zero, 77
	st.w	$a1, $a0, 96
	vst	$vr0, $a0, 104
	st.w	$zero, $a0, 120
	ori	$a1, $zero, 89
	st.w	$a1, $a0, 192
	vst	$vr0, $a0, 200
	st.w	$zero, $a0, 216
	ori	$a1, $zero, 75
	st.w	$a1, $a0, 288
	vst	$vr0, $a0, 296
	st.w	$zero, $a0, 312
	b	.LBB6_19
.LBB6_9:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 292
	ld.d	$a0, $fp, 80
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 68
	ori	$a1, $zero, 82
	st.w	$a1, $a0, 0
	vst	$vr0, $a0, 8
	st.w	$zero, $a0, 24
	ori	$a1, $zero, 71
	st.w	$a1, $a0, 96
	vst	$vr0, $a0, 104
	st.w	$zero, $a0, 120
	ori	$a1, $zero, 66
	st.w	$a1, $a0, 192
	vst	$vr0, $a0, 200
	st.w	$zero, $a0, 216
	b	.LBB6_19
.LBB6_10:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 280
	ld.d	$a1, $fp, 80
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI6_1)
	ori	$a2, $zero, 3
	st.w	$a2, $fp, 68
	st.w	$a0, $a1, 0
	vst	$vr0, $a1, 8
	st.w	$zero, $a1, 24
	ori	$a3, $zero, 2
	st.w	$a3, $a1, 96
	vrepli.w	$vr0, 1
	vst	$vr0, $a1, 104
	st.w	$a0, $a1, 120
	st.w	$a2, $a1, 192
	vst	$vr0, $a1, 200
	st.w	$a0, $a1, 216
	b	.LBB6_19
.LBB6_11:
	ori	$a0, $zero, 1
	ld.d	$a1, $fp, 80
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI6_0)
	st.w	$a0, $fp, 280
	st.w	$a0, $fp, 68
	st.w	$a0, $a1, 0
	vst	$vr0, $a1, 8
	st.w	$zero, $a1, 24
	b	.LBB6_19
.LBB6_12:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 292
	ld.d	$a1, $fp, 80
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI6_1)
	ori	$a2, $zero, 4
	st.w	$a2, $fp, 68
	st.w	$a0, $a1, 0
	vst	$vr0, $a1, 8
	st.w	$zero, $a1, 24
	ori	$a3, $zero, 2
	st.w	$a3, $a1, 96
	vrepli.w	$vr1, 1
	vst	$vr1, $a1, 104
	st.w	$a0, $a1, 120
	ori	$a3, $zero, 3
	st.w	$a3, $a1, 192
	vst	$vr1, $a1, 200
	st.w	$a0, $a1, 216
	st.w	$a2, $a1, 288
	vst	$vr0, $a1, 296
	st.w	$zero, $a1, 312
	b	.LBB6_19
.LBB6_13:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 8
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a1
.LBB6_14:                               # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI6_0)
	bstrpick.d	$a0, $a2, 30, 1
	slli.d	$a0, $a0, 1
	move	$a3, $zero
	move	$a4, $a0
	move	$a5, $a1
	.p2align	4, , 16
.LBB6_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a6, $a3, 1
	st.w	$a3, $a5, 0
	st.w	$a6, $a5, 96
	vst	$vr0, $a5, 8
	vst	$vr0, $a5, 104
	st.w	$zero, $a5, 24
	st.w	$zero, $a5, 120
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a5, 192
	bnez	$a4, .LBB6_15
# %bb.16:                               # %middle.block
	beq	$a0, $a2, .LBB6_19
.LBB6_17:                               # %scalar.ph.preheader
	alsl.d	$a3, $a0, $a0, 1
	pcalau12i	$a4, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_0)
	slli.d	$a3, $a3, 5
	add.d	$a1, $a1, $a3
	sub.d	$a2, $a2, $a0
	.p2align	4, , 16
.LBB6_18:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 0
	vst	$vr0, $a1, 8
	st.w	$zero, $a1, 24
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 96
	bnez	$a2, .LBB6_18
.LBB6_19:                               # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	jpeg_set_colorspace, .Lfunc_end6-jpeg_set_colorspace
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_11-.LJTI6_0
	.word	.LBB6_9-.LJTI6_0
	.word	.LBB6_10-.LJTI6_0
	.word	.LBB6_8-.LJTI6_0
	.word	.LBB6_12-.LJTI6_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function jpeg_simple_progression
.LCPI7_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI7_2:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_3:
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	2                               # 0x2
.LCPI7_4:
	.word	6                               # 0x6
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	2                               # 0x2
.LCPI7_5:
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	2                               # 0x2
	.word	1                               # 0x1
.LCPI7_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI7_7:
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI7_8:
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
.LCPI7_9:
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	1                               # 0x1
	.text
	.globl	jpeg_simple_progression
	.p2align	5
	.type	jpeg_simple_progression,@function
jpeg_simple_progression:                # @jpeg_simple_progression
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$s1, $a0, 68
	ld.w	$a0, $a0, 28
	ori	$a1, $zero, 100
	addi.w	$s0, $s1, 0
	beq	$a0, $a1, .LBB7_2
# %bb.1:
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 18
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB7_2:
	ori	$a0, $zero, 3
	bne	$s0, $a0, .LBB7_4
# %bb.3:
	ld.w	$a1, $fp, 72
	ori	$s2, $zero, 10
	bne	$a1, $a0, .LBB7_6
	b	.LBB7_7
.LBB7_4:
	ori	$a0, $zero, 5
	blt	$s0, $a0, .LBB7_6
# %bb.5:
	slli.d	$a0, $s0, 2
	alsl.w	$s2, $s0, $a0, 1
	b	.LBB7_7
.LBB7_6:                                # %.thread
	slli.d	$a0, $s0, 2
	addi.w	$s2, $a0, 2
.LBB7_7:
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	slli.d	$a0, $s2, 5
	alsl.d	$a2, $s2, $a0, 2
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 240
	ori	$a2, $zero, 3
	st.w	$s2, $fp, 232
	bne	$s0, $a2, .LBB7_10
# %bb.8:
	pcalau12i	$a1, %pc_hi20(.LCPI7_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_8)
	ld.w	$a3, $fp, 72
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_0)
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_3)
	vst	$vr1, $a0, 20
	ori	$a1, $zero, 1
	st.d	$a1, $a0, 36
	vst	$vr0, $a0, 56
	st.w	$a1, $a0, 72
	bne	$a3, $a2, .LBB7_21
# %bb.9:                                # %fill_dc_scans.exit132
	pcalau12i	$a2, %pc_hi20(.LCPI7_9)
	vld	$vr0, $a2, %pc_lo12(.LCPI7_9)
	move	$s0, $zero
	ori	$a7, $zero, 2
	st.w	$a7, $a0, 76
	vst	$vr0, $a0, 92
	ori	$a2, $zero, 1
	vst	$vr0, $a0, 128
	pcalau12i	$a3, %pc_hi20(.LCPI7_4)
	vld	$vr0, $a3, %pc_lo12(.LCPI7_4)
	lu32i.d	$a2, 1
	st.d	$a2, $a0, 108
	st.d	$a1, $a0, 144
	vst	$vr0, $a0, 164
	st.d	$a1, $a0, 180
	lu32i.d	$a1, 63
	st.d	$a1, $a0, 200
	ori	$a1, $zero, 356
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 352
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $zero, 348
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a5, $zero, 344
	ori	$a1, $zero, 328
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a6, $zero, 324
	ori	$t0, $zero, 320
	ori	$t1, $zero, 316
	ori	$t2, $zero, 312
	ori	$t3, $zero, 308
	ori	$t4, $zero, 292
	ori	$t5, $zero, 288
	ori	$t6, $zero, 284
	ori	$t7, $zero, 280
	ori	$t8, $zero, 276
	ori	$fp, $zero, 272
	ori	$s1, $zero, 256
	ori	$s2, $zero, 252
	ori	$s3, $zero, 248
	ori	$s4, $zero, 244
	ori	$s5, $zero, 236
	ori	$s6, $zero, 240
	ori	$s7, $zero, 228
	ori	$ra, $zero, 224
	ori	$a1, $zero, 220
	ori	$a2, $zero, 216
	ori	$a3, $zero, 212
	ori	$s8, $zero, 208
	b	.LBB7_22
.LBB7_10:                               # %.split
	ori	$a1, $zero, 5
	bge	$s0, $a1, .LBB7_24
# %bb.11:
	st.w	$s0, $a0, 0
	blez	$s0, .LBB7_72
# %bb.12:                               # %.lr.ph.i
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_1)
	addi.d	$a1, $s0, -1
	vreplgr2vr.d	$vr0, $a1
	vsle.du	$vr1, $vr1, $vr0
	vpickve2gr.w	$a1, $vr1, 0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_14
# %bb.13:                               # %pred.store.if
	st.w	$zero, $a0, 4
.LBB7_14:                               # %pred.store.continue
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_16
# %bb.15:                               # %pred.store.if187
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 8
.LBB7_16:                               # %pred.store.continue188
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_2)
	vsle.du	$vr0, $vr1, $vr0
	vpickve2gr.w	$a1, $vr0, 0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_18
# %bb.17:                               # %pred.store.if189
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 12
.LBB7_18:                               # %pred.store.continue190
	vpickve2gr.w	$a1, $vr0, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_20
# %bb.19:                               # %pred.store.if191
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 16
.LBB7_20:                               # %pred.store.continue192
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_0)
	vst	$vr0, $a0, 20
	addi.d	$a3, $a0, 36
	b	.LBB7_29
.LBB7_21:                               # %.split44
	move	$a7, $zero
	st.w	$a1, $a0, 76
	vst	$vr0, $a0, 92
	ori	$a2, $zero, 1
	vst	$vr0, $a0, 128
	pcalau12i	$a3, %pc_hi20(.LCPI7_4)
	vld	$vr0, $a3, %pc_lo12(.LCPI7_4)
	lu32i.d	$a2, 2
	st.d	$a2, $a0, 108
	st.d	$a1, $a0, 144
	vst	$vr0, $a0, 164
	ori	$a3, $zero, 1
	lu32i.d	$a3, 1
	vst	$vr0, $a0, 200
	vst	$vr0, $a0, 236
	pcalau12i	$a4, %pc_hi20(.LCPI7_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI7_5)
	st.d	$a3, $a0, 180
	st.d	$a2, $a0, 216
	st.d	$a1, $a0, 252
	vst	$vr0, $a0, 272
	st.d	$a3, $a0, 288
	vst	$vr0, $a0, 308
	st.d	$a2, $a0, 324
	lu32i.d	$a1, 63
	st.d	$a1, $a0, 344
	ori	$a1, $zero, 500
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 496
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $zero, 492
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a5, $zero, 488
	ori	$s0, $zero, 2
	ori	$a1, $zero, 472
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a6, $zero, 468
	ori	$t0, $zero, 464
	ori	$t1, $zero, 460
	ori	$t2, $zero, 456
	ori	$t3, $zero, 452
	ori	$t4, $zero, 436
	ori	$t5, $zero, 432
	ori	$t6, $zero, 428
	ori	$t7, $zero, 424
	ori	$t8, $zero, 420
	ori	$fp, $zero, 416
	ori	$s1, $zero, 400
	ori	$s2, $zero, 396
	ori	$s3, $zero, 392
	ori	$s4, $zero, 388
	ori	$s5, $zero, 380
	ori	$s6, $zero, 384
	ori	$s7, $zero, 372
	ori	$ra, $zero, 368
	ori	$a1, $zero, 364
	ori	$a2, $zero, 360
	ori	$a3, $zero, 356
	ori	$s8, $zero, 352
.LBB7_22:                               # %fill_scans.exit83.sink.split.sink.split
	ori	$a4, $zero, 2
	stx.w	$a4, $a0, $s8
	ori	$s8, $zero, 1
	stx.w	$s8, $a0, $a3
	ori	$a3, $zero, 3
	stx.w	$a3, $a0, $a2
	stx.w	$zero, $a0, $a1
	stx.w	$s8, $a0, $ra
	stx.w	$a4, $a0, $s7
	stx.w	$zero, $a0, $s6
	stx.w	$zero, $a0, $s5
	stx.w	$s8, $a0, $s4
	stx.w	$zero, $a0, $s3
	stx.w	$s8, $a0, $s2
	stx.w	$a7, $a0, $s1
	stx.w	$s8, $a0, $fp
	ori	$a1, $zero, 63
	stx.w	$a1, $a0, $t8
	stx.w	$s8, $a0, $t7
	stx.w	$zero, $a0, $t6
	stx.w	$s8, $a0, $t5
	stx.w	$s8, $a0, $t4
	stx.w	$s8, $a0, $t3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
.LBB7_23:                               # %fill_scans.exit83.sink.split
	stx.w	$a1, $a0, $t2
	stx.w	$s8, $a0, $t1
	stx.w	$zero, $a0, $t0
	ori	$a2, $zero, 1
	stx.w	$a2, $a0, $a6
	stx.w	$s0, $a0, $t3
	stx.w	$s8, $a0, $a5
	stx.w	$a1, $a0, $a7
	stx.w	$a2, $a0, $a4
	stx.w	$zero, $a0, $a3
	b	.LBB7_71
.LBB7_24:                               # %.lr.ph.i.i.preheader
	move	$a2, $zero
	bstrpick.d	$a3, $s0, 30, 1
	slli.d	$a1, $a3, 1
	slli.d	$a4, $a3, 6
	alsl.d	$a3, $a3, $a4, 3
	pcalau12i	$a4, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI7_0)
	add.d	$a3, $a0, $a3
	addi.d	$a0, $a0, 36
	ori	$a4, $zero, 1
	move	$a5, $a1
	.p2align	4, , 16
.LBB7_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a6, $a2, 1
	st.w	$a4, $a0, -36
	st.w	$a4, $a0, 0
	st.w	$a2, $a0, -32
	st.w	$a6, $a0, 4
	vst	$vr0, $a0, -16
	vst	$vr0, $a0, 20
	addi.d	$a5, $a5, -2
	addi.d	$a0, $a0, 72
	addi.d	$a2, $a2, 2
	bnez	$a5, .LBB7_25
# %bb.26:                               # %middle.block
	beq	$a1, $s0, .LBB7_29
# %bb.27:                               # %.lr.ph.i.i.preheader351
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB7_28:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a3, 0
	st.w	$a1, $a3, 4
	vst	$vr0, $a3, 20
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 36
	bne	$s0, $a1, .LBB7_28
.LBB7_29:                               # %.lr.ph.i49.preheader
	addi.w	$a2, $s0, -1
	bstrpick.d	$a0, $a2, 31, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 32, 1
	pcalau12i	$a6, %pc_hi20(.LCPI7_3)
	beqz	$a2, .LBB7_33
# %bb.30:                               # %vector.ph196
	move	$a7, $zero
	slli.d	$a5, $a1, 1
	slli.d	$a4, $a1, 6
	alsl.d	$a4, $a1, $a4, 3
	vld	$vr0, $a6, %pc_lo12(.LCPI7_3)
	add.d	$a4, $a3, $a4
	addi.d	$a3, $a3, 36
	ori	$t0, $zero, 1
	move	$t1, $a5
	.p2align	4, , 16
.LBB7_31:                               # %vector.body199
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t2, $a7, 1
	st.w	$t0, $a3, -36
	st.w	$t0, $a3, 0
	st.w	$a7, $a3, -32
	st.w	$t2, $a3, 4
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 20
	addi.d	$t1, $t1, -2
	addi.d	$a3, $a3, 72
	addi.d	$a7, $a7, 2
	bnez	$t1, .LBB7_31
# %bb.32:                               # %middle.block206
	bne	$a0, $a5, .LBB7_34
	b	.LBB7_36
.LBB7_33:
	move	$a5, $zero
	move	$a4, $a3
.LBB7_34:                               # %.lr.ph.i49.preheader341
	vld	$vr0, $a6, %pc_lo12(.LCPI7_3)
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB7_35:                               # %.lr.ph.i49
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a4, 0
	st.w	$a5, $a4, 4
	vst	$vr0, $a4, 20
	addi.w	$a5, $a5, 1
	addi.d	$a4, $a4, 36
	bne	$s0, $a5, .LBB7_35
.LBB7_36:                               # %.lr.ph.i53.preheader
	pcalau12i	$a6, %pc_hi20(.LCPI7_4)
	beqz	$a2, .LBB7_40
# %bb.37:                               # %vector.ph211
	move	$a7, $zero
	slli.d	$a3, $a1, 1
	slli.d	$a5, $a1, 6
	alsl.d	$a5, $a1, $a5, 3
	vld	$vr0, $a6, %pc_lo12(.LCPI7_4)
	add.d	$a5, $a4, $a5
	addi.d	$a4, $a4, 36
	ori	$t0, $zero, 1
	move	$t1, $a3
	.p2align	4, , 16
.LBB7_38:                               # %vector.body214
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t2, $a7, 1
	st.w	$t0, $a4, -36
	st.w	$t0, $a4, 0
	st.w	$a7, $a4, -32
	st.w	$t2, $a4, 4
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 20
	addi.d	$t1, $t1, -2
	addi.d	$a4, $a4, 72
	addi.d	$a7, $a7, 2
	bnez	$t1, .LBB7_38
# %bb.39:                               # %middle.block221
	bne	$a0, $a3, .LBB7_41
	b	.LBB7_43
.LBB7_40:
	move	$a3, $zero
	move	$a5, $a4
.LBB7_41:                               # %.lr.ph.i53.preheader339
	vld	$vr0, $a6, %pc_lo12(.LCPI7_4)
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB7_42:                               # %.lr.ph.i53
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a5, 0
	st.w	$a3, $a5, 4
	vst	$vr0, $a5, 20
	addi.w	$a3, $a3, 1
	addi.d	$a5, $a5, 36
	bne	$s0, $a3, .LBB7_42
.LBB7_43:                               # %.lr.ph.i60.preheader
	pcalau12i	$a6, %pc_hi20(.LCPI7_5)
	beqz	$a2, .LBB7_47
# %bb.44:                               # %vector.ph227
	move	$a7, $zero
	slli.d	$a4, $a1, 1
	slli.d	$a3, $a1, 6
	alsl.d	$a3, $a1, $a3, 3
	vld	$vr0, $a6, %pc_lo12(.LCPI7_5)
	add.d	$a3, $a5, $a3
	addi.d	$a5, $a5, 36
	ori	$t0, $zero, 1
	move	$t1, $a4
	.p2align	4, , 16
.LBB7_45:                               # %vector.body230
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t2, $a7, 1
	st.w	$t0, $a5, -36
	st.w	$t0, $a5, 0
	st.w	$a7, $a5, -32
	st.w	$t2, $a5, 4
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 20
	addi.d	$t1, $t1, -2
	addi.d	$a5, $a5, 72
	addi.d	$a7, $a7, 2
	bnez	$t1, .LBB7_45
# %bb.46:                               # %middle.block237
	bne	$a0, $a4, .LBB7_48
	b	.LBB7_50
.LBB7_47:
	move	$a4, $zero
	move	$a3, $a5
.LBB7_48:                               # %.lr.ph.i60.preheader336
	vld	$vr0, $a6, %pc_lo12(.LCPI7_5)
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB7_49:                               # %.lr.ph.i60
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a3, 0
	st.w	$a4, $a3, 4
	vst	$vr0, $a3, 20
	addi.w	$a4, $a4, 1
	addi.d	$a3, $a3, 36
	bne	$s0, $a4, .LBB7_49
.LBB7_50:                               # %fill_scans.exit64.loopexit
	addi.d	$a4, $a3, -36
	ori	$a5, $zero, 5
	bge	$s0, $a5, .LBB7_53
# %bb.51:                               # %.lr.ph.i71
	ori	$a5, $zero, 8
	st.w	$s0, $a3, 0
	bgeu	$s0, $a5, .LBB7_62
# %bb.52:
	move	$a3, $zero
	b	.LBB7_65
.LBB7_53:                               # %.lr.ph.i.i65.preheader
	move	$a6, $zero
	bstrpick.d	$a4, $s0, 30, 1
	slli.d	$a5, $a4, 1
	slli.d	$a7, $a4, 6
	alsl.d	$a4, $a4, $a7, 3
	pcalau12i	$a7, %pc_hi20(.LCPI7_1)
	vld	$vr0, $a7, %pc_lo12(.LCPI7_1)
	add.d	$a4, $a3, $a4
	addi.d	$a3, $a3, 36
	ori	$a7, $zero, 1
	move	$t0, $a5
	.p2align	4, , 16
.LBB7_54:                               # %vector.body245
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t1, $a6, 1
	st.w	$a7, $a3, -36
	st.w	$a7, $a3, 0
	st.w	$a6, $a3, -32
	st.w	$t1, $a3, 4
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 20
	addi.d	$t0, $t0, -2
	addi.d	$a3, $a3, 72
	addi.d	$a6, $a6, 2
	bnez	$t0, .LBB7_54
# %bb.55:                               # %middle.block252
	beq	$a5, $s0, .LBB7_58
# %bb.56:                               # %.lr.ph.i.i65.preheader350
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB7_57:                               # %.lr.ph.i.i65
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a4, 0
	st.w	$a5, $a4, 4
	vst	$vr0, $a4, 20
	addi.w	$a5, $a5, 1
	addi.d	$a4, $a4, 36
	bne	$s0, $a5, .LBB7_57
.LBB7_58:                               # %.lr.ph.i79.preheader
	pcalau12i	$a3, %pc_hi20(.LCPI7_7)
	beqz	$a2, .LBB7_68
.LBB7_59:                               # %vector.ph269
	move	$a5, $zero
	slli.d	$a2, $a1, 1
	slli.d	$a6, $a1, 6
	alsl.d	$a1, $a1, $a6, 3
	vld	$vr0, $a3, %pc_lo12(.LCPI7_7)
	add.d	$a1, $a4, $a1
	addi.d	$a4, $a4, 36
	ori	$a6, $zero, 1
	move	$a7, $a2
	.p2align	4, , 16
.LBB7_60:                               # %vector.body272
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t0, $a5, 1
	st.w	$a6, $a4, -36
	st.w	$a6, $a4, 0
	st.w	$a5, $a4, -32
	st.w	$t0, $a4, 4
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 20
	addi.d	$a7, $a7, -2
	addi.d	$a4, $a4, 72
	addi.d	$a5, $a5, 2
	bnez	$a7, .LBB7_60
# %bb.61:                               # %middle.block279
	bne	$a0, $a2, .LBB7_69
	b	.LBB7_71
.LBB7_62:                               # %vector.ph256
	pcalau12i	$a3, %pc_hi20(.LCPI7_6)
	vld	$vr0, $a3, %pc_lo12(.LCPI7_6)
	bstrpick.d	$a3, $s1, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a5, $a4, 56
	move	$a6, $a3
	.p2align	4, , 16
.LBB7_63:                               # %vector.body259
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_63
# %bb.64:                               # %middle.block264
	beq	$a3, $s1, .LBB7_67
.LBB7_65:                               # %scalar.ph254.preheader
	sub.d	$a5, $s1, $a3
	alsl.d	$a6, $a3, $a4, 2
	addi.d	$a6, $a6, 40
	.p2align	4, , 16
.LBB7_66:                               # %scalar.ph254
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB7_66
.LBB7_67:                               # %._crit_edge.i70
	pcalau12i	$a3, %pc_hi20(.LCPI7_1)
	vld	$vr0, $a3, %pc_lo12(.LCPI7_1)
	vst	$vr0, $a4, 56
	addi.d	$a4, $a4, 72
	pcalau12i	$a3, %pc_hi20(.LCPI7_7)
	bnez	$a2, .LBB7_59
.LBB7_68:
	move	$a2, $zero
	move	$a1, $a4
.LBB7_69:                               # %.lr.ph.i79.preheader334
	vld	$vr0, $a3, %pc_lo12(.LCPI7_7)
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB7_70:                               # %.lr.ph.i79
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 0
	st.w	$a2, $a1, 4
	vst	$vr0, $a1, 20
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 36
	bne	$s0, $a2, .LBB7_70
.LBB7_71:                               # %fill_scans.exit83
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB7_72:
	move	$a1, $zero
	move	$s8, $zero
	ori	$a3, $zero, 68
	ori	$a4, $zero, 64
	ori	$a7, $zero, 56
	ori	$a5, $zero, 60
	ori	$t3, $zero, 36
	ori	$a6, $zero, 32
	ori	$t0, $zero, 28
	ori	$t1, $zero, 20
	ori	$t2, $zero, 24
	b	.LBB7_23
.Lfunc_end7:
	.size	jpeg_simple_progression, .Lfunc_end7-jpeg_simple_progression
                                        # -- End function
	.type	jpeg_set_linear_quality.std_luminance_quant_tbl,@object # @jpeg_set_linear_quality.std_luminance_quant_tbl
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
jpeg_set_linear_quality.std_luminance_quant_tbl:
	.word	16                              # 0x10
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	40                              # 0x28
	.word	51                              # 0x33
	.word	61                              # 0x3d
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	58                              # 0x3a
	.word	60                              # 0x3c
	.word	55                              # 0x37
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	40                              # 0x28
	.word	57                              # 0x39
	.word	69                              # 0x45
	.word	56                              # 0x38
	.word	14                              # 0xe
	.word	17                              # 0x11
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	51                              # 0x33
	.word	87                              # 0x57
	.word	80                              # 0x50
	.word	62                              # 0x3e
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	37                              # 0x25
	.word	56                              # 0x38
	.word	68                              # 0x44
	.word	109                             # 0x6d
	.word	103                             # 0x67
	.word	77                              # 0x4d
	.word	24                              # 0x18
	.word	35                              # 0x23
	.word	55                              # 0x37
	.word	64                              # 0x40
	.word	81                              # 0x51
	.word	104                             # 0x68
	.word	113                             # 0x71
	.word	92                              # 0x5c
	.word	49                              # 0x31
	.word	64                              # 0x40
	.word	78                              # 0x4e
	.word	87                              # 0x57
	.word	103                             # 0x67
	.word	121                             # 0x79
	.word	120                             # 0x78
	.word	101                             # 0x65
	.word	72                              # 0x48
	.word	92                              # 0x5c
	.word	95                              # 0x5f
	.word	98                              # 0x62
	.word	112                             # 0x70
	.word	100                             # 0x64
	.word	103                             # 0x67
	.word	99                              # 0x63
	.size	jpeg_set_linear_quality.std_luminance_quant_tbl, 256

	.type	jpeg_set_linear_quality.std_chrominance_quant_tbl,@object # @jpeg_set_linear_quality.std_chrominance_quant_tbl
	.p2align	2, 0x0
jpeg_set_linear_quality.std_chrominance_quant_tbl:
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	47                              # 0x2f
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	18                              # 0x12
	.word	21                              # 0x15
	.word	26                              # 0x1a
	.word	66                              # 0x42
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	56                              # 0x38
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	47                              # 0x2f
	.word	66                              # 0x42
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.size	jpeg_set_linear_quality.std_chrominance_quant_tbl, 256

	.type	std_huff_tables.bits_dc_luminance,@object # @std_huff_tables.bits_dc_luminance
	.p2align	3, 0x0
std_huff_tables.bits_dc_luminance:
	.asciz	"\000\000\001\005\001\001\001\001\001\001\000\000\000\000\000\000"
	.size	std_huff_tables.bits_dc_luminance, 17

	.type	std_huff_tables.bits_dc_chrominance,@object # @std_huff_tables.bits_dc_chrominance
	.p2align	3, 0x0
std_huff_tables.bits_dc_chrominance:
	.asciz	"\000\000\003\001\001\001\001\001\001\001\001\001\000\000\000\000"
	.size	std_huff_tables.bits_dc_chrominance, 17

	.type	std_huff_tables.val_dc_chrominance,@object # @std_huff_tables.val_dc_chrominance
	.p2align	3, 0x0
std_huff_tables.val_dc_chrominance:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013"
	.size	std_huff_tables.val_dc_chrominance, 12

	.type	std_huff_tables.bits_ac_luminance,@object # @std_huff_tables.bits_ac_luminance
	.p2align	3, 0x0
std_huff_tables.bits_ac_luminance:
	.ascii	"\000\000\002\001\003\003\002\004\003\005\005\004\004\000\000\001}"
	.size	std_huff_tables.bits_ac_luminance, 17

	.type	std_huff_tables.val_ac_luminance,@object # @std_huff_tables.val_ac_luminance
	.p2align	3, 0x0
std_huff_tables.val_ac_luminance:
	.ascii	"\001\002\003\000\004\021\005\022!1A\006\023Qa\007\"q\0242\201\221\241\b#B\261\301\025R\321\360$3br\202\t\n\026\027\030\031\032%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\341\342\343\344\345\346\347\350\351\352\361\362\363\364\365\366\367\370\371\372"
	.size	std_huff_tables.val_ac_luminance, 162

	.type	std_huff_tables.bits_ac_chrominance,@object # @std_huff_tables.bits_ac_chrominance
	.p2align	3, 0x0
std_huff_tables.bits_ac_chrominance:
	.ascii	"\000\000\002\001\002\004\004\003\004\007\005\004\004\000\001\002w"
	.size	std_huff_tables.bits_ac_chrominance, 17

	.type	std_huff_tables.val_ac_chrominance,@object # @std_huff_tables.val_ac_chrominance
	.p2align	3, 0x0
std_huff_tables.val_ac_chrominance:
	.ascii	"\000\001\002\003\021\004\005!1\006\022AQ\007aq\023\"2\201\b\024B\221\241\261\301\t#3R\360\025br\321\n\026$4\341%\361\027\030\031\032&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\202\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\342\343\344\345\346\347\350\351\352\362\363\364\365\366\367\370\371\372"
	.size	std_huff_tables.val_ac_chrominance, 162

	.section	".note.GNU-stack","",@progbits
	.addrsig
