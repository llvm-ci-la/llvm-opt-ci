	.file	"KS-1.c"
	.text
	.globl	ReadNetList                     # -- Begin function ReadNetList
	.p2align	5
	.type	ReadNetList,@function
ReadNetList:                            # @ReadNetList
# %bb.0:
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1032                  # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.1:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1024
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(numNets)
	addi.d	$s0, $a0, %pc_lo12(numNets)
	pcalau12i	$a0, %pc_hi20(numModules)
	addi.d	$a3, $a0, %pc_lo12(numModules)
	addi.d	$a0, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_16
# %bb.2:                                # %.preheader
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_10
# %bb.3:                                # %.lr.ph33.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s1, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(nets)
	addi.d	$s6, $a0, %pc_lo12(nets)
	move	$s7, $zero
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s0, 0
	alsl.d	$a1, $s2, $s6, 3
	addi.d	$s7, $s7, 1
	st.d	$s3, $a1, -8
	bgeu	$s7, $a0, .LBB0_10
.LBB0_5:                                # %.lr.ph33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1024
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$s3, $a0
	move	$a0, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s3, 8
	st.d	$zero, $s3, 0
	move	$a0, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
# %bb.7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s4, $a0
	move	$s8, $s3
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	move	$s5, $a0
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s5, 8
	st.d	$zero, $s5, 0
	st.d	$s5, $s8, 0
	move	$a0, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s8, $s5
	bnez	$a0, .LBB0_8
	b	.LBB0_4
.LBB0_10:                               # %._crit_edge34
	ld.d	$s8, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	ret
.LBB0_11:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcalau12i	$a3, %pc_hi20(.L.str.3)
	addi.d	$a3, $a3, %pc_lo12(.L.str.3)
	ori	$a4, $zero, 70
.LBB0_12:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
.LBB0_13:
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_14:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcalau12i	$a3, %pc_hi20(.L.str.3)
	addi.d	$a3, $a3, %pc_lo12(.L.str.3)
	ori	$a4, $zero, 63
	b	.LBB0_12
.LBB0_15:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcalau12i	$a3, %pc_hi20(.L.str.3)
	addi.d	$a3, $a3, %pc_lo12(.L.str.3)
	ori	$a4, $zero, 46
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	b	.LBB0_13
.LBB0_16:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcalau12i	$a3, %pc_hi20(.L.str.3)
	addi.d	$a3, $a3, %pc_lo12(.L.str.3)
	ori	$a4, $zero, 51
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	ReadNetList, .Lfunc_end0-ReadNetList
                                        # -- End function
	.globl	NetsToModules                   # -- Begin function NetsToModules
	.p2align	5
	.type	NetsToModules,@function
NetsToModules:                          # @NetsToModules
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(numModules)
	ld.d	$a0, $a0, %pc_lo12(numModules)
	beqz	$a0, .LBB1_2
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a2, $a0, 3
	pcalau12i	$a0, %pc_hi20(modules)
	addi.d	$a0, $a0, %pc_lo12(modules)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(numNets)
	ld.d	$fp, $a0, %pc_lo12(numNets)
	beqz	$fp, .LBB1_8
# %bb.3:                                # %.lr.ph24.preheader
	pcalau12i	$a0, %pc_hi20(modules)
	addi.d	$s0, $a0, %pc_lo12(modules)
	pcalau12i	$a0, %pc_hi20(nets)
	addi.d	$s1, $a0, %pc_lo12(nets)
	move	$s2, $zero
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %._crit_edge
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $fp, .LBB1_8
.LBB1_5:                                # %.lr.ph24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$a0, $s2, 3
	ldx.d	$s3, $s1, $a0
	beqz	$s3, .LBB1_4
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph22
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a1, $s3, 8
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $s0, $a1
	ld.d	$s3, $s3, 0
	st.d	$s2, $a0, 8
	st.d	$a2, $a0, 0
	stx.d	$a0, $s0, $a1
	bnez	$s3, .LBB1_6
	b	.LBB1_4
.LBB1_8:                                # %._crit_edge25
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_9:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcalau12i	$a3, %pc_hi20(.L.str.10)
	addi.d	$a3, $a3, %pc_lo12(.L.str.10)
	ori	$a4, $zero, 96
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	NetsToModules, .Lfunc_end1-NetsToModules
                                        # -- End function
	.globl	ComputeNetCosts                 # -- Begin function ComputeNetCosts
	.p2align	5
	.type	ComputeNetCosts,@function
ComputeNetCosts:                        # @ComputeNetCosts
# %bb.0:
	pcalau12i	$a0, %pc_hi20(numNets)
	ld.d	$a1, $a0, %pc_lo12(numNets)
	beqz	$a1, .LBB2_14
# %bb.1:                                # %iter.check
	ori	$a3, $zero, 4
	pcalau12i	$a0, %pc_hi20(cost)
	addi.d	$a2, $a0, %pc_lo12(cost)
	lu12i.w	$a0, 260096
	bgeu	$a1, $a3, .LBB2_3
# %bb.2:
	move	$a3, $zero
	b	.LBB2_12
.LBB2_3:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB2_5
# %bb.4:
	move	$a3, $zero
	b	.LBB2_9
.LBB2_5:                                # %vector.ph
	addi.d	$a4, $a2, 32
	move	$a3, $a1
	bstrins.d	$a3, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a0
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB2_6
# %bb.7:                                # %middle.block
	beq	$a1, $a3, .LBB2_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB2_12
.LBB2_9:                                # %vec.epilog.ph
	move	$a5, $a3
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 2
	vreplgr2vr.w	$vr0, $a0
	.p2align	4, , 16
.LBB2_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB2_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a1, $a3, .LBB2_14
.LBB2_12:                               # %.lr.ph.preheader
	sub.d	$a1, $a1, $a3
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB2_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_13
.LBB2_14:                               # %._crit_edge
	ret
.Lfunc_end2:
	.size	ComputeNetCosts, .Lfunc_end2-ComputeNetCosts
                                        # -- End function
	.globl	InitLists                       # -- Begin function InitLists
	.p2align	5
	.type	InitLists,@function
InitLists:                              # @InitLists
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
	pcalau12i	$a0, %pc_hi20(groupA)
	addi.d	$s0, $a0, %pc_lo12(groupA)
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	pcalau12i	$a0, %pc_hi20(groupB)
	addi.d	$s1, $a0, %pc_lo12(groupB)
	pcalau12i	$a0, %pc_hi20(numModules)
	ld.d	$a0, $a0, %pc_lo12(numModules)
	ori	$a1, $zero, 2
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s1, 0
	bgeu	$a0, $a1, .LBB3_2
.LBB3_1:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(swapToA)
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, %pc_lo12(swapToA)
	pcalau12i	$a0, %pc_hi20(swapToB)
	vst	$vr0, $a0, %pc_lo12(swapToB)
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
.LBB3_2:                                # %.lr.ph
	srli.d	$s2, $a0, 1
	slli.d	$a0, $s2, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(moduleToGroup)
	addi.d	$s4, $a0, %pc_lo12(moduleToGroup)
	move	$s5, $zero
	move	$s6, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s7, $zero
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	st.d	$zero, $a0, 0
	st.d	$a0, $s7, 0
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	st.d	$a0, $s1, 8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	stx.w	$a2, $s4, $a1
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 4
	move	$s3, $fp
	move	$s7, $a0
	beq	$s2, $s5, .LBB3_1
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_12
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	move	$fp, $a0
	st.d	$s5, $a0, 8
	beqz	$s6, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	st.d	$zero, $fp, 0
	st.d	$fp, $s3, 0
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	st.d	$fp, $s0, 0
	st.d	$zero, $fp, 0
	move	$s6, $fp
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	st.d	$fp, $s0, 8
	st.w	$zero, $s4, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_13
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	add.d	$a1, $s2, $s5
	st.d	$a1, $a0, 8
	bnez	$s8, .LBB3_3
# %bb.11:                               #   in Loop: Header=BB3_5 Depth=1
	st.d	$a0, $s1, 0
	st.d	$zero, $a0, 0
	move	$s8, $a0
	b	.LBB3_4
.LBB3_12:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcalau12i	$a3, %pc_hi20(.L.str.12)
	addi.d	$a3, $a3, %pc_lo12(.L.str.12)
	ori	$a4, $zero, 145
	b	.LBB3_14
.LBB3_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcalau12i	$a3, %pc_hi20(.L.str.12)
	addi.d	$a3, $a3, %pc_lo12(.L.str.12)
	ori	$a4, $zero, 164
.LBB3_14:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	InitLists, .Lfunc_end3-InitLists
                                        # -- End function
	.globl	ComputeDs                       # -- Begin function ComputeDs
	.p2align	5
	.type	ComputeDs,@function
ComputeDs:                              # @ComputeDs
# %bb.0:
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB4_15
# %bb.1:                                # %.lr.ph49.preheader
	pcalau12i	$a2, %pc_hi20(modules)
	addi.d	$a2, $a2, %pc_lo12(modules)
	movgr2fr.w	$fa0, $zero
	pcalau12i	$a3, %pc_hi20(D)
	addi.d	$a3, $a3, %pc_lo12(D)
	pcalau12i	$a4, %pc_hi20(nets)
	addi.d	$a4, $a4, %pc_lo12(nets)
	pcalau12i	$a5, %pc_hi20(cost)
	addi.d	$a5, $a5, %pc_lo12(cost)
	pcalau12i	$a6, %pc_hi20(moduleToGroup)
	addi.d	$a6, $a6, %pc_lo12(moduleToGroup)
	ori	$a7, $zero, 1
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB4_4 Depth=1
	fsub.s	$fa1, $fa1, $fa2
.LBB4_3:                                # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $a0, 0
	slli.d	$t0, $t0, 2
	fstx.s	$fa1, $a3, $t0
	beqz	$a0, .LBB4_15
.LBB4_4:                                # %.lr.ph49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_11 Depth 3
	ld.d	$t0, $a0, 8
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a2, $t1
	fmov.s	$fa1, $fa0
	beqz	$t1, .LBB4_3
# %bb.5:                                # %.lr.ph42.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %.loopexit
                                        #   in Loop: Header=BB4_7 Depth=2
	ld.d	$t1, $t1, 0
	beqz	$t1, .LBB4_2
.LBB4_7:                                # %.lr.ph42
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
	ld.d	$t3, $t1, 8
	slli.d	$t2, $t3, 3
	ldx.d	$t2, $a4, $t2
	beqz	$t2, .LBB4_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB4_7 Depth=2
	alsl.d	$t3, $t3, $a5, 2
	b	.LBB4_11
.LBB4_9:                                #   in Loop: Header=BB4_11 Depth=3
	fadd.s	$fa1, $fa1, $fa3
	.p2align	4, , 16
.LBB4_10:                               #   in Loop: Header=BB4_11 Depth=3
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB4_6
.LBB4_11:                               #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t4, $t2, 8
	beq	$t4, $t0, .LBB4_10
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=3
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a6, $t4
	bltu	$a7, $t4, .LBB4_10
# %bb.13:                               #   in Loop: Header=BB4_11 Depth=3
	fld.s	$fa3, $t3, 0
	bne	$t4, $a1, .LBB4_9
# %bb.14:                               #   in Loop: Header=BB4_11 Depth=3
	fadd.s	$fa2, $fa2, $fa3
	b	.LBB4_10
.LBB4_15:                               # %._crit_edge50
	ret
.Lfunc_end4:
	.size	ComputeDs, .Lfunc_end4-ComputeDs
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"(%s:%s():%d): "
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c"
	.size	.L.str.2, 124

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ReadData"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"unable to open input file [%s]"
	.size	.L.str.4, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%lu %lu"
	.size	.L.str.6, 8

	.type	numNets,@object                 # @numNets
	.bss
	.globl	numNets
	.p2align	3, 0x0
numNets:
	.dword	0                               # 0x0
	.size	numNets, 8

	.type	numModules,@object              # @numModules
	.globl	numModules
	.p2align	3, 0x0
numModules:
	.dword	0                               # 0x0
	.size	numModules, 8

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"unable to parse header in file [%s]"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" \t\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"unable to allocate a module list node"
	.size	.L.str.9, 38

	.type	nets,@object                    # @nets
	.bss
	.globl	nets
	.p2align	3, 0x0
nets:
	.space	8192
	.size	nets, 8192

	.type	modules,@object                 # @modules
	.globl	modules
	.p2align	3, 0x0
modules:
	.space	8192
	.size	modules, 8192

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"NetsToModules"
	.size	.L.str.10, 14

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"unable to allocate net list node"
	.size	.L.str.11, 33

	.type	cost,@object                    # @cost
	.bss
	.globl	cost
	.p2align	2, 0x0
cost:
	.space	4096
	.size	cost, 4096

	.type	groupA,@object                  # @groupA
	.globl	groupA
	.p2align	3, 0x0
groupA:
	.space	16
	.size	groupA, 16

	.type	groupB,@object                  # @groupB
	.globl	groupB
	.p2align	3, 0x0
groupB:
	.space	16
	.size	groupB, 16

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"main"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"unable to allocate ModuleRec"
	.size	.L.str.13, 29

	.type	moduleToGroup,@object           # @moduleToGroup
	.bss
	.globl	moduleToGroup
	.p2align	2, 0x0
moduleToGroup:
	.space	4096
	.size	moduleToGroup, 4096

	.type	swapToA,@object                 # @swapToA
	.globl	swapToA
	.p2align	3, 0x0
swapToA:
	.space	16
	.size	swapToA, 16

	.type	swapToB,@object                 # @swapToB
	.globl	swapToB
	.p2align	3, 0x0
swapToB:
	.space	16
	.size	swapToB, 16

	.type	D,@object                       # @D
	.globl	D
	.p2align	2, 0x0
D:
	.space	4096
	.size	D, 4096

	.type	GP,@object                      # @GP
	.globl	GP
	.p2align	2, 0x0
GP:
	.space	4096
	.size	GP, 4096

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym numNets
	.addrsig_sym numModules
