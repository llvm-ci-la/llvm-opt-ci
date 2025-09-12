	.file	"init.c"
	.text
	.globl	generate_n_poles                # -- Begin function generate_n_poles
	.p2align	5
	.type	generate_n_poles,@function
generate_n_poles:                       # @generate_n_poles
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$a0, $a0, 16
	ld.w	$s0, $s1, 4
	mul.w	$s2, $s0, $a0
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s2, .LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s1, 4
	mod.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $fp, $a0
	addi.d	$a1, $a1, 1
	addi.w	$s2, $s2, -1
	stx.w	$a1, $fp, $a0
	bnez	$s2, .LBB0_1
.LBB0_2:                                # %.preheader
	blez	$s0, .LBB0_10
# %bb.3:                                # %.lr.ph13.preheader
	ori	$a0, $zero, 8
	bgeu	$s0, $a0, .LBB0_5
# %bb.4:
	move	$a0, $zero
	b	.LBB0_8
.LBB0_5:                                # %vector.ph
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $fp, 16
	move	$a2, $a0
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vmaxi.wu	$vr0, $vr0, 1
	vmaxi.wu	$vr1, $vr1, 1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB0_6
# %bb.7:                                # %middle.block
	beq	$a0, $s0, .LBB0_10
.LBB0_8:                                # %.lr.ph13.preheader17
	alsl.d	$a1, $a0, $fp, 2
	sub.d	$a0, $s0, $a0
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_9:                                # %.lr.ph13
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	sltu	$a4, $a2, $a3
	masknez	$a5, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_9
.LBB0_10:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	generate_n_poles, .Lfunc_end0-generate_n_poles
                                        # -- End function
	.globl	generate_n_windows              # -- Begin function generate_n_windows
	.p2align	5
	.type	generate_n_windows,@function
generate_n_windows:                     # @generate_n_windows
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$a0, $a0, 20
	ld.w	$s0, $s1, 4
	mul.w	$s2, $s0, $a0
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s2, .LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s1, 4
	mod.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $fp, $a0
	addi.d	$a1, $a1, 1
	addi.w	$s2, $s2, -1
	stx.w	$a1, $fp, $a0
	bnez	$s2, .LBB1_1
.LBB1_2:                                # %.preheader
	blez	$s0, .LBB1_10
# %bb.3:                                # %.lr.ph13.preheader
	ori	$a0, $zero, 8
	bgeu	$s0, $a0, .LBB1_5
# %bb.4:
	move	$a0, $zero
	b	.LBB1_8
.LBB1_5:                                # %vector.ph
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $fp, 16
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vmaxi.wu	$vr0, $vr0, 1
	vmaxi.wu	$vr1, $vr1, 1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB1_6
# %bb.7:                                # %middle.block
	beq	$a0, $s0, .LBB1_10
.LBB1_8:                                # %.lr.ph13.preheader17
	alsl.d	$a1, $a0, $fp, 2
	sub.d	$a0, $s0, $a0
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB1_9:                                # %.lr.ph13
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	sltu	$a4, $a2, $a3
	masknez	$a5, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB1_9
.LBB1_10:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	generate_n_windows, .Lfunc_end1-generate_n_windows
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function generate_poles
.LCPI2_0:
	.dword	0x41dfffffffc00000              # double 2147483647
.LCPI2_1:
	.dword	0x4063100000000000              # double 152.5
	.text
	.globl	generate_poles
	.p2align	5
	.type	generate_poles,@function
generate_poles:                         # @generate_poles
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
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s3, $a0, 4
	move	$s0, $a1
	slli.d	$a0, $s3, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$s1, $a0
	mul.w	$a0, $a1, $s3
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB2_9
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $s0
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 6
	ld.w	$a6, $a4, 0
	alsl.d	$a5, $a1, $a5, 3
	add.d	$a5, $a0, $a5
	st.d	$a5, $a3, 0
	add.w	$a1, $a6, $a1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB2_2
# %bb.3:                                # %.preheader.lr.ph
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_0)
	movgr2fr.d	$fs1, $zero
	ori	$a0, $zero, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	fld.d	$fs2, $a1, %pc_lo12(.LCPI2_1)
	lu32i.d	$a0, 200704
	lu52i.d	$a0, $a0, 1030
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s2, $s2, 1
	bge	$s2, $s3, .LBB2_9
.LBB2_5:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	slli.d	$a0, $s2, 2
	ldx.w	$a0, $s0, $a0
	blez	$a0, .LBB2_4
# %bb.6:                                # %.lr.ph41
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	alsl.d	$s5, $s2, $s0, 2
	alsl.d	$s6, $s2, $s1, 3
	.p2align	4, , 16
.LBB2_7:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs3, $fa0, $fs0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $s6, 0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fs3, $fa1
	add.d	$s7, $a0, $s3
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vfmul.d	$vr0, $vr1, $vr0
	vstx	$vr0, $a0, $s3
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs2
	fdiv.d	$fs3, $fa0, $fs0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fs3, $fa1
	fst.d	$fa1, $s7, 16
	fst.d	$fa0, $s7, 24
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs2
	fdiv.d	$fs3, $fa0, $fs0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fs3, $fa1
	fst.d	$fa1, $s7, 32
	fst.d	$fa0, $s7, 40
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs2
	fdiv.d	$fs3, $fa0, $fs0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fs3, $fa1
	fst.d	$fa1, $s7, 48
	fst.d	$fa0, $s7, 56
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.w	$a2, $s5, 0
	mod.w	$a0, $a0, $a1
	st.h	$a0, $s7, 64
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 72
	blt	$s4, $a2, .LBB2_7
# %bb.8:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$s3, $fp, 4
	b	.LBB2_4
.LBB2_9:                                # %._crit_edge43
	move	$a0, $s1
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	generate_poles, .Lfunc_end2-generate_poles
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function generate_window_params
.LCPI3_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	generate_window_params
	.p2align	5
	.type	generate_window_params,@function
generate_window_params:                 # @generate_window_params
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s4, $a0, 4
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a1
	slli.d	$a0, $s4, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 20
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	mul.w	$a0, $a1, $s4
	slli.d	$a0, $a0, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB3_9
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	move	$a2, $s4
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	move	$a4, $s1
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	slli.d	$a6, $a1, 5
	add.d	$a6, $a0, $a6
	st.d	$a6, $a3, 0
	add.w	$a1, $a5, $a1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB3_2
# %bb.3:                                # %.lr.ph61.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI3_0)
	move	$s3, $zero
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %._crit_edge
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s3, $s3, 1
	bge	$s3, $s4, .LBB3_9
.LBB3_5:                                # %.lr.ph61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	slli.d	$a1, $s3, 2
	ldx.w	$a0, $s1, $a1
	blez	$a0, .LBB3_4
# %bb.6:                                # %.lr.ph59
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	move	$s4, $zero
	move	$s5, $zero
	move	$fp, $zero
	alsl.d	$s6, $s3, $s1, 2
	div.w	$s7, $a1, $a0
	mul.d	$a0, $s7, $a0
	sub.w	$s8, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s0, $s3, $a0, 3
	.p2align	4, , 16
.LBB3_7:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	add.d	$s2, $a1, $s4
	fstx.d	$fa0, $a1, $s4
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s2, 8
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	st.w	$fp, $s2, 24
	add.d	$a0, $fp, $s7
	slt	$a1, $s5, $s8
	xori	$a2, $a1, 1
	sub.d	$a2, $a0, $a2
	st.w	$a2, $s2, 28
	ld.w	$a2, $s6, 0
	fst.d	$fa0, $s2, 16
	add.d	$fp, $a0, $a1
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 32
	blt	$s5, $a2, .LBB3_7
# %bb.8:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s4, $a0, 4
	b	.LBB3_4
.LBB3_9:                                # %._crit_edge62
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	generate_window_params, .Lfunc_end3-generate_window_params
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function generate_pseudo_K0RS
.LCPI4_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_1:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	generate_pseudo_K0RS
	.p2align	5
	.type	generate_pseudo_K0RS,@function
generate_pseudo_K0RS:                   # @generate_pseudo_K0RS
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s2, $a0, 4
	slli.d	$a0, $s2, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 24
	move	$s0, $a0
	mul.w	$a0, $s1, $s2
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB4_15
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 4
	bgeu	$s2, $a1, .LBB4_3
# %bb.2:
	move	$a1, $zero
	b	.LBB4_6
.LBB4_3:                                # %vector.ph
	bstrpick.d	$a1, $s2, 30, 2
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	vreplgr2vr.d	$vr1, $s1
	addi.d	$a2, $s0, 16
	vreplgr2vr.d	$vr2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr3, $vr0, 2
	vmul.d	$vr4, $vr0, $vr1
	vmul.d	$vr3, $vr3, $vr1
	vslli.d	$vr4, $vr4, 3
	vadd.d	$vr4, $vr2, $vr4
	vslli.d	$vr3, $vr3, 3
	vadd.d	$vr3, $vr2, $vr3
	vst	$vr4, $a2, -16
	vst	$vr3, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB4_4
# %bb.5:                                # %middle.block
	beq	$a1, $s2, .LBB4_8
.LBB4_6:                                # %.lr.ph.preheader28
	mul.d	$a2, $a1, $s1
	alsl.d	$a0, $a2, $a0, 3
	slli.d	$a2, $s1, 3
	alsl.d	$a3, $a1, $s0, 3
	sub.d	$a1, $s2, $a1
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $a3, 0
	add.d	$a0, $a0, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB4_7
.LBB4_8:                                # %.preheader.lr.ph
	blez	$s1, .LBB4_15
# %bb.9:                                # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI4_1)
	move	$s3, $zero
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_10:                               # %._crit_edge
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.d	$s3, $s3, 1
	bge	$s3, $s2, .LBB4_15
.LBB4_11:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	blez	$s1, .LBB4_10
# %bb.12:                               # %.lr.ph18
                                        #   in Loop: Header=BB4_11 Depth=1
	move	$s2, $zero
	move	$s4, $zero
	alsl.d	$s5, $s3, $s0, 3
	.p2align	4, , 16
.LBB4_13:                               #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $s5, 0
	ffint.d.w	$fa0, $fa0
	ld.w	$s1, $fp, 24
	fdiv.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $a0, $s2
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 8
	blt	$s4, $s1, .LBB4_13
# %bb.14:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.w	$s2, $fp, 4
	b	.LBB4_10
.LBB4_15:                               # %._crit_edge20
	move	$a0, $s0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	generate_pseudo_K0RS, .Lfunc_end4-generate_pseudo_K0RS
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
