	.file	"correct.c"
	.text
	.globl	givehelp                        # -- Begin function givehelp
	.p2align	5
	.type	givehelp,@function
givehelp:                               # @givehelp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	beqz	$a0, .LBB0_2
# %bb.1:
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
.LBB0_3:
	ld.d	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 59
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 49
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 55
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 91
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 83
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 1
	ori	$s1, $zero, 32
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_6
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$fp, $a0, %got_pc_lo12(stdin)
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_5
.LBB0_6:                                # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	givehelp, .Lfunc_end0-givehelp
                                        # -- End function
	.globl	checkfile                       # -- Begin function checkfile
	.p2align	5
	.type	checkfile,@function
checkfile:                              # @checkfile
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
	pcalau12i	$a0, %got_pc_hi20(contextsize)
	ld.d	$a0, $a0, %got_pc_lo12(contextsize)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$s4, -2
	blez	$a1, .LBB1_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_3
# %bb.2:
	move	$a1, $zero
	b	.LBB1_6
.LBB1_3:                                # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	lu12i.w	$a2, 2
	add.d	$a2, $a1, $a2
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	lu12i.w	$a3, 4
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	stx.b	$zero, $a2, $s4
	st.b	$zero, $a2, 0
	addi.d	$a4, $a4, -2
	add.d	$a2, $a2, $a3
	bnez	$a4, .LBB1_4
# %bb.5:                                # %middle.block
	beq	$a1, $a0, .LBB1_8
.LBB1_6:                                # %.lr.ph.preheader49
	slli.d	$a2, $a1, 13
	pcalau12i	$a3, %got_pc_hi20(contextbufs)
	ld.d	$a3, $a3, %got_pc_lo12(contextbufs)
	add.d	$a2, $a3, $a2
	sub.d	$a1, $a0, $a1
	lu12i.w	$a3, 2
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	add.d	$a2, $a2, $a3
	bnez	$a1, .LBB1_7
.LBB1_8:                                # %.preheader27.preheader
	ori	$s7, $zero, 2
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$fp, $a1, %got_pc_lo12(contextbufs)
	pcalau12i	$a1, %got_pc_hi20(quit)
	ld.d	$a1, $a1, %got_pc_lo12(quit)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(infile)
	ld.d	$s5, $a1, %got_pc_lo12(infile)
	lu12i.w	$a1, 1
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s3, $a1, %got_pc_lo12(hashheader)
	addi.w	$s0, $zero, -1
	pcalau12i	$a1, %got_pc_hi20(outfile)
	ld.d	$s6, $a1, %got_pc_lo12(outfile)
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %.critedge
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(checkline)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
.LBB1_10:                               # %.preheader27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_17 Depth 2
	addi.w	$a1, $a0, 0
	blt	$a1, $s7, .LBB1_13
# %bb.11:                               # %.lr.ph31.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$s8, $a0, 1
	slli.d	$a0, $a0, 13
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, -4
	add.d	$s1, $a0, $a1
	add.d	$s2, $a0, $s4
	.p2align	4, , 16
.LBB1_12:                               # %.lr.ph31
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -1
	add.d	$s1, $s1, $s4
	add.d	$s2, $s2, $s4
	bltu	$s7, $s8, .LBB1_12
.LBB1_13:                               # %._crit_edge
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $s5, 0
	bnez	$a0, .LBB1_22
# %bb.14:                               #   in Loop: Header=BB1_10 Depth=1
	move	$a0, $fp
	lu12i.w	$a1, 1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_25
# %bb.15:                               #   in Loop: Header=BB1_10 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4095
	bne	$a0, $a1, .LBB1_9
# %bb.16:                               #   in Loop: Header=BB1_10 Depth=1
	ori	$a0, $zero, 4094
	ldx.bu	$a0, $fp, $a0
	lu12i.w	$s1, 1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_17:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a0, 255
	add.d	$a0, $s3, $a0
	ld.bu	$a1, $a0, 982
	bnez	$a1, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=2
	ld.bu	$a1, $a0, 1666
	bnez	$a1, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_17 Depth=2
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB1_9
	.p2align	4, , 16
.LBB1_20:                               # %.critedge2
                                        #   in Loop: Header=BB1_17 Depth=2
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB1_9
# %bb.21:                               #   in Loop: Header=BB1_17 Depth=2
	st.b	$a0, $s2, -1
	st.b	$zero, $s2, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 1
	bnez	$s1, .LBB1_17
	b	.LBB1_9
.LBB1_22:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$a0, $a0, %got_pc_lo12(contextbufs)
	lu12i.w	$a1, 2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_25
# %bb.23:                               # %.lr.ph35.preheader
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$fp, $a0, %got_pc_lo12(contextbufs)
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB1_24:                               # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_24
.LBB1_25:                               # %.loopexit
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
.Lfunc_end1:
	.size	checkfile, .Lfunc_end1-checkfile
                                        # -- End function
	.globl	correct                         # -- Begin function correct
	.p2align	5
	.type	correct,@function
correct:                                # @correct
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2576
	sub.d	$sp, $sp, $a5
	move	$s6, $a4
	ld.d	$fp, $a4, 0
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	move	$s5, $a2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$s4, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	bgeu	$a1, $a0, .LBB2_2
# %bb.1:                                # %.preheader
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
.LBB2_2:                                # %.loopexit172
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2576
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB2_3:                                # %.lr.ph187
	sub.d	$s2, $fp, $s1
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$a0, $a0, %got_pc_lo12(contextbufs)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a1, $s2, $a0
	addi.d	$a0, $sp, 320
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s4, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(currentfile)
	ld.d	$a0, $a0, %got_pc_lo12(currentfile)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(readonly)
	ld.d	$a0, $a0, %got_pc_lo12(readonly)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(li)
	ld.d	$a0, $a0, %got_pc_lo12(li)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(contextsize)
	ld.d	$a0, $a0, %got_pc_lo12(contextsize)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(minimenusize)
	ld.d	$a0, $a0, %got_pc_lo12(minimenusize)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(co)
	ld.d	$a0, $a0, %got_pc_lo12(co)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$a0, $a0, %got_pc_lo12(maxposslen)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$a0, $a0, %got_pc_lo12(pcount)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$a0, $a0, %got_pc_lo12(possibilities)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(easypossibilities)
	ld.d	$s7, $a0, %got_pc_lo12(easypossibilities)
	ori	$s1, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2606
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_28 Depth 2
                                        #       Child Loop BB2_40 Depth 3
                                        #     Child Loop BB2_46 Depth 2
                                        #       Child Loop BB2_50 Depth 3
                                        #         Child Loop BB2_62 Depth 4
                                        #     Child Loop BB2_74 Depth 2
                                        #     Child Loop BB2_95 Depth 2
                                        #     Child Loop BB2_120 Depth 2
                                        #     Child Loop BB2_125 Depth 2
                                        #     Child Loop BB2_127 Depth 2
                                        #     Child Loop BB2_83 Depth 2
                                        #     Child Loop BB2_84 Depth 2
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(makepossibilities)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	addi.w	$fp, $a0, -4
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a1, $a1, 8
	div.w	$a1, $a2, $a1
	mul.w	$a1, $a1, $fp
	bge	$a1, $a0, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	move	$a0, $a1
.LBB2_11:                               #   in Loop: Header=BB2_4 Depth=1
	blez	$a0, .LBB2_21
# %bb.12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s5, $zero
	move	$s0, $zero
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_13:                               #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_14:                               #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s0, $s0, 1
	addi.d	$s3, $s3, 120
	addi.w	$s5, $s5, 1
	bge	$s0, $a0, .LBB2_21
.LBB2_15:                               # %.lr.ph
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	div.w	$a1, $s5, $fp
	mul.d	$a2, $a1, $fp
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	sub.d	$a2, $s5, $a2
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 3
	addi.d	$a2, $a3, 8
	mul.w	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	bge	$s0, $a0, .LBB2_13
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	blt	$a0, $s1, .LBB2_19
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=2
	ori	$a0, $zero, 9
	bltu	$a0, $s0, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB2_20:                               #   in Loop: Header=BB2_15 Depth=2
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_21:                               # %._crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$s0, $zero, 2
	lu12i.w	$s1, -2
	blt	$a0, $s0, .LBB2_24
# %bb.22:                               # %.lr.ph179.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$fp, $a0, 1
	slli.d	$a0, $a0, 13
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.d	$s3, $a0, $s1
	.p2align	4, , 16
.LBB2_23:                               # %.lr.ph179
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(show_line)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	add.d	$s3, $s3, $s1
	bltu	$s0, $fp, .LBB2_23
.LBB2_24:                               # %._crit_edge180
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$fp, $s6, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB2_43
# %bb.25:                               # %.lr.ph.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s5, $a0, %got_pc_lo12(contextbufs)
	move	$s0, $zero
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_28 Depth=2
	addi.d	$s5, $s5, 1
	andi	$a0, $s0, 7
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
.LBB2_27:                               # %show_char.exit.i
                                        #   in Loop: Header=BB2_28 Depth=2
	add.w	$s0, $a1, $s0
	bgeu	$s5, $fp, .LBB2_44
.LBB2_28:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_40 Depth 3
	ld.bu	$s3, $s5, 0
	beqz	$s3, .LBB2_44
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s1, $a0, %got_pc_lo12(hashheader)
	add.d	$a0, $s1, $s3
	ld.bu	$a0, $a0, 1894
	ori	$s4, $zero, 1
	beqz	$a0, .LBB2_33
# %bb.30:                               #   in Loop: Header=BB2_28 Depth=2
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	blez	$a0, .LBB2_32
# %bb.31:                               #   in Loop: Header=BB2_28 Depth=2
	pcalau12i	$a1, %got_pc_hi20(laststringch)
	ld.d	$a1, $a1, %got_pc_lo12(laststringch)
	ld.bu	$a1, $a1, 0
	xori	$a1, $a1, 128
	move	$s4, $a0
.LBB2_32:                               # %.critedge.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_37
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               #   in Loop: Header=BB2_28 Depth=2
	move	$a1, $s3
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_37
.LBB2_34:                               #   in Loop: Header=BB2_28 Depth=2
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB2_37
# %bb.35:                               #   in Loop: Header=BB2_28 Depth=2
	add.d	$a0, $s1, $a1
	ld.bu	$a0, $a0, 982
	beqz	$a0, .LBB2_37
# %bb.36:                               #   in Loop: Header=BB2_28 Depth=2
	addi.d	$s5, $s5, 1
	ori	$a1, $zero, 1
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_37:                               #   in Loop: Header=BB2_28 Depth=2
	ori	$a0, $zero, 9
	beq	$s3, $a0, .LBB2_26
# %bb.38:                               #   in Loop: Header=BB2_28 Depth=2
	sub.w	$a0, $fp, $s5
	sltui	$a1, $a0, 1
	slt	$a2, $s4, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a0, $a1, $a0
	blez	$a0, .LBB2_42
# %bb.39:                               # %.lr.ph.split.us.i.i.preheader
                                        #   in Loop: Header=BB2_28 Depth=2
	move	$a1, $zero
	move	$a2, $a0
	move	$a3, $s5
	.p2align	4, , 16
.LBB2_40:                               # %.lr.ph.split.us.i.i
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	andi	$a5, $a4, 255
	slti	$a6, $a4, 0
	addi.d	$a7, $a1, 2
	andi	$a4, $a4, 127
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	masknez	$a1, $a1, $a6
	maskeqz	$a5, $a7, $a6
	or	$a1, $a5, $a1
	sltui	$a5, $a4, 32
	addi.d	$a4, $a4, -127
	sltui	$a4, $a4, 1
	or	$a4, $a5, $a4
	add.d	$a1, $a4, $a1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB2_40
# %bb.41:                               # %show_char.exit.loopexit.i
                                        #   in Loop: Header=BB2_28 Depth=2
	add.d	$s5, $s5, $a0
	b	.LBB2_27
.LBB2_42:                               #   in Loop: Header=BB2_28 Depth=2
	move	$a1, $zero
	b	.LBB2_27
.LBB2_43:                               #   in Loop: Header=BB2_4 Depth=1
	move	$s0, $zero
.LBB2_44:                               # %line_size.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(sg)
	ld.d	$a1, $a1, %got_pc_lo12(sg)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	slli.d	$a2, $a1, 1
	nor	$a2, $a2, $zero
	add.w	$a2, $a0, $a2
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	bge	$a2, $s0, .LBB2_69
# %bb.45:                               #   in Loop: Header=BB2_4 Depth=1
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	sub.d	$s3, $s2, $a2
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB2_68
	.p2align	4, , 16
.LBB2_46:                               # %.lr.ph183
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_50 Depth 3
                                        #         Child Loop BB2_62 Depth 4
	ld.d	$s0, $s6, 0
	ori	$a2, $zero, 1
	bgeu	$s3, $s0, .LBB2_66
# %bb.47:                               # %.lr.ph.i108
                                        #   in Loop: Header=BB2_46 Depth=2
	move	$s4, $s2
	move	$s2, $s6
	move	$fp, $zero
	move	$s5, $s3
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_48:                               #   in Loop: Header=BB2_50 Depth=3
	addi.d	$s5, $s5, 1
	andi	$a0, $fp, 7
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
.LBB2_49:                               # %show_char.exit.i119
                                        #   in Loop: Header=BB2_50 Depth=3
	add.d	$fp, $a1, $fp
	bgeu	$s5, $s0, .LBB2_65
.LBB2_50:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_62 Depth 4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB2_65
# %bb.51:                               #   in Loop: Header=BB2_50 Depth=3
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s8, $a0, %got_pc_lo12(hashheader)
	add.d	$a0, $s8, $s6
	ld.bu	$a0, $a0, 1894
	ori	$s1, $zero, 1
	beqz	$a0, .LBB2_55
# %bb.52:                               #   in Loop: Header=BB2_50 Depth=3
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	blez	$a0, .LBB2_54
# %bb.53:                               #   in Loop: Header=BB2_50 Depth=3
	pcalau12i	$a1, %got_pc_hi20(laststringch)
	ld.d	$a1, $a1, %got_pc_lo12(laststringch)
	ld.bu	$a1, $a1, 0
	xori	$a1, $a1, 128
	move	$s1, $a0
.LBB2_54:                               # %.critedge.i.i113
                                        #   in Loop: Header=BB2_50 Depth=3
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_59
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_55:                               #   in Loop: Header=BB2_50 Depth=3
	move	$a1, $s6
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_59
.LBB2_56:                               #   in Loop: Header=BB2_50 Depth=3
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB2_59
# %bb.57:                               #   in Loop: Header=BB2_50 Depth=3
	add.d	$a0, $s8, $a1
	ld.bu	$a0, $a0, 982
	beqz	$a0, .LBB2_59
# %bb.58:                               #   in Loop: Header=BB2_50 Depth=3
	addi.d	$s5, $s5, 1
	ori	$a1, $zero, 1
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_59:                               #   in Loop: Header=BB2_50 Depth=3
	ori	$a0, $zero, 9
	beq	$s6, $a0, .LBB2_48
# %bb.60:                               #   in Loop: Header=BB2_50 Depth=3
	sub.w	$a0, $s0, $s5
	sltui	$a1, $a0, 1
	slt	$a2, $s1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a0, $a1, $a0
	blez	$a0, .LBB2_64
# %bb.61:                               # %.lr.ph.split.us.i.i122.preheader
                                        #   in Loop: Header=BB2_50 Depth=3
	move	$a1, $zero
	move	$a2, $a0
	move	$a3, $s5
	.p2align	4, , 16
.LBB2_62:                               # %.lr.ph.split.us.i.i122
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_46 Depth=2
                                        #       Parent Loop BB2_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	andi	$a5, $a4, 255
	slti	$a6, $a4, 0
	addi.d	$a7, $a1, 2
	andi	$a4, $a4, 127
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	masknez	$a1, $a1, $a6
	maskeqz	$a5, $a7, $a6
	or	$a1, $a5, $a1
	sltui	$a5, $a4, 32
	addi.d	$a4, $a4, -127
	sltui	$a4, $a4, 1
	or	$a4, $a5, $a4
	add.d	$a1, $a4, $a1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB2_62
# %bb.63:                               # %show_char.exit.loopexit.i130
                                        #   in Loop: Header=BB2_50 Depth=3
	add.d	$s5, $s5, $a0
	b	.LBB2_49
.LBB2_64:                               #   in Loop: Header=BB2_50 Depth=3
	move	$a1, $zero
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_65:                               # %line_size.exit132.loopexit
                                        #   in Loop: Header=BB2_46 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$a2, $fp, 1
	move	$s6, $s2
	move	$s2, $s4
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
.LBB2_66:                               # %line_size.exit132
                                        #   in Loop: Header=BB2_46 Depth=2
	alsl.w	$a3, $a1, $a2, 1
	bge	$a0, $a3, .LBB2_68
# %bb.67:                               #   in Loop: Header=BB2_46 Depth=2
	sub.w	$a2, $a2, $a0
	add.d	$s3, $s3, $a2
	bltu	$s3, $s2, .LBB2_46
.LBB2_68:                               # %line_size.exit132._crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	sltu	$a0, $s2, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
.LBB2_69:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(show_line)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_74
# %bb.70:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, -2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB2_74
.LBB2_71:                               #   in Loop: Header=BB2_74 Depth=2
	slli.d	$a1, $fp, 3
	alsl.d	$a1, $fp, $a1, 1
	add.d	$a0, $a1, $a0
	addi.d	$fp, $a0, -48
.LBB2_72:                               #   in Loop: Header=BB2_74 Depth=2
	ld.w	$a0, $s7, 0
	blt	$fp, $a0, .LBB2_133
.LBB2_73:                               # %.sink.split
                                        #   in Loop: Header=BB2_74 Depth=2
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB2_74:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s0, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 127
	addi.d	$fp, $a0, -48
	ori	$a1, $zero, 10
	bgeu	$fp, $a1, .LBB2_79
# %bb.75:                               #   in Loop: Header=BB2_74 Depth=2
	ld.w	$a0, $s7, 0
	ori	$s1, $zero, 10
	blt	$a0, $a1, .LBB2_72
# %bb.76:                               #   in Loop: Header=BB2_74 Depth=2
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 127
	addi.d	$a1, $a0, -48
	ori	$a2, $zero, 9
	bgeu	$a2, $a1, .LBB2_71
# %bb.77:                               #   in Loop: Header=BB2_74 Depth=2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB2_72
# %bb.78:                               #   in Loop: Header=BB2_74 Depth=2
	beq	$a0, $s1, .LBB2_72
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_79:                               #   in Loop: Header=BB2_74 Depth=2
	ori	$s1, $zero, 10
	addi.d	$a0, $a0, -10
	ori	$a1, $zero, 110
	bltu	$a1, $a0, .LBB2_73
# %bb.80:                               #   in Loop: Header=BB2_74 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_81:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 220
	pcaddu18i	$ra, %call36(getline_ispell)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_110
# %bb.82:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $sp, 220
	lu12i.w	$a2, 2
	ori	$a2, $a2, 324
	add.d	$a2, $sp, $a2
	ori	$a4, $zero, 42
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$a3, $a1, 0
	bne	$a3, $a4, .LBB2_84
	.p2align	4, , 16
.LBB2_83:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $a0, 1
	st.h	$a5, $a2, 0
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a4, .LBB2_83
.LBB2_84:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a3, .LBB2_100
# %bb.85:                               #   in Loop: Header=BB2_84 Depth=2
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	ld.bu	$a3, $a1, 0
	bne	$a3, $a4, .LBB2_84
	b	.LBB2_83
.LBB2_86:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_88
# %bb.87:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_88:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(getline_ispell)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_109
# %bb.89:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s5, $a0, %got_pc_lo12(contextbufs)
	addi.d	$a0, $sp, 320
	addi.d	$fp, $sp, 320
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	beq	$s2, $s5, .LBB2_91
# %bb.90:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 320
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$s5, $s2
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
.LBB2_91:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $s6, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(skipoverword)
	jirl	$ra, $ra, 0
	bgeu	$s4, $a0, .LBB2_111
# %bb.92:                               # %.lr.ph8.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$a3, $a0, $s4
	ori	$a2, $zero, 32
	bltu	$a3, $a2, .LBB2_118
# %bb.93:                               # %.lr.ph8.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$a1, $s5, $s4
	bltu	$a1, $a2, .LBB2_118
# %bb.94:                               # %vector.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 4, 0
	add.d	$a1, $s4, $a4
	add.d	$a2, $s5, $a4
	addi.d	$a5, $s5, 16
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	move	$a7, $a4
.LBB2_95:                               # %vector.body
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB2_95
# %bb.96:                               # %middle.block
                                        #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $a4, .LBB2_119
	b	.LBB2_121
.LBB2_97:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_99
# %bb.98:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 95
	ori	$a1, $zero, 89
	bne	$a0, $a1, .LBB2_132
.LBB2_99:                               # %.critedge
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(done)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_100:                              #   in Loop: Header=BB2_4 Depth=1
	st.b	$zero, $a2, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 324
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB2_116
# %bb.101:                              #   in Loop: Header=BB2_4 Depth=1
	bnez	$a0, .LBB2_112
# %bb.102:                              #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$fp, %pc_hi20(lookharder.look)
	ld.b	$a1, $fp, %pc_lo12(lookharder.look)
	andi	$a1, $a1, 1
	bnez	$a1, .LBB2_112
# %bb.103:                              #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a2, $a0, %pc_lo12(.L.str.81)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a4, $a0, %pc_lo12(.L.str.82)
	addi.d	$a0, $sp, 320
	lu12i.w	$a3, 2
	ori	$a3, $a3, 324
	add.d	$a3, $sp, $a3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(shellescape)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_116
# %bb.104:                              # %.thread.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(lookharder.look)
	b	.LBB2_113
.LBB2_105:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 33
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(getline_ispell)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_117
# %bb.106:                              #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_115
.LBB2_107:                              #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(stop)
	jirl	$ra, $ra, 0
	b	.LBB2_116
.LBB2_108:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(givehelp)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_109:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s5
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ichartostr)
	jirl	$ra, $ra, 0
	b	.LBB2_131
.LBB2_110:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB2_116
.LBB2_111:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a2, $s4
	b	.LBB2_122
.LBB2_112:                              #   in Loop: Header=BB2_4 Depth=1
	bnez	$a0, .LBB2_114
.LBB2_113:                              #   in Loop: Header=BB2_4 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 324
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 324
	add.d	$a4, $sp, $a1
	add.d	$a1, $a4, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.83)
	addi.d	$a2, $a2, %pc_lo12(.L.str.83)
	ld.h	$a3, $a2, 0
	ld.b	$a2, $a2, 2
	stx.h	$a3, $a0, $a4
	st.b	$a2, $a1, 2
.LBB2_114:                              #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a2, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a4, $a0, %pc_lo12(.L.str.82)
	addi.d	$a0, $sp, 320
	lu12i.w	$a3, 2
	ori	$a3, $a3, 324
	add.d	$a3, $sp, $a3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB2_115:                              # %.backedge
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(shellescape)
	jirl	$ra, $ra, 0
.LBB2_116:                              # %.backedge
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_117:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_118:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a1, $s4
	move	$a2, $s5
.LBB2_119:                              # %.lr.ph8.i.preheader250
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a3, $a2
.LBB2_120:                              # %.lr.ph8.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a1, 0
	addi.d	$a5, $a1, 1
	addi.d	$a2, $a3, 1
	st.b	$a4, $a3, 0
	move	$a1, $a5
	move	$a3, $a2
	bne	$a5, $a0, .LBB2_120
.LBB2_121:                              # %._crit_edge9.i.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s5, $a2
	move	$a2, $a0
.LBB2_122:                              # %._crit_edge9.i
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$s5, $s6, 0
	ld.bu	$a1, $a2, 0
	beqz	$a1, .LBB2_126
# %bb.123:                              #   in Loop: Header=BB2_4 Depth=1
	st.b	$a1, $s5, 0
	ld.bu	$a1, $a2, 1
	st.b	$zero, $a2, 0
	addi.d	$s5, $s5, 1
	beqz	$a1, .LBB2_126
# %bb.124:                              # %.lr.ph18.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	sltu	$a2, $s4, $a0
	masknez	$a3, $s4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a3
	ori	$a2, $zero, 2
	add.d	$a0, $a2, $a0
.LBB2_125:                              # %.lr.ph18.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a1, $s5, 0
	ld.bu	$a1, $a0, 0
	addi.d	$s5, $s5, 1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB2_125
.LBB2_126:                              # %.loopexit.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$a0, $s0, $s2
	add.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB2_127:                              # %.loopexit.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s5, 1
	st.b	$a1, $s5, 0
	move	$s5, $a2
	bnez	$a1, .LBB2_127
# %bb.128:                              # %inserttoken.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s4
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_130
# %bb.129:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a3, $a1, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 494
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_130:                              #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB2_131:                              #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bgeu	$a1, $a0, .LBB2_2
.LBB2_132:                              # %.backedge
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_4
	b	.LBB2_2
.LBB2_133:
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	move	$s1, $s2
	ld.d	$s2, $a0, %got_pc_lo12(contextbufs)
	ori	$a0, $zero, 120
	mul.d	$a0, $fp, $a0
	pcalau12i	$a1, %got_pc_hi20(possibilities)
	ld.d	$a1, $a1, %got_pc_lo12(possibilities)
	add.d	$a1, $a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $sp, 320
	addi.d	$fp, $sp, 320
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	beq	$s1, $s2, .LBB2_135
# %bb.134:                              # %.lr.ph.preheader.i136
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$a0, $a0, %got_pc_lo12(contextbufs)
	addi.d	$a1, $sp, 320
	addi.d	$fp, $sp, 320
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $s0
	move	$s2, $s1
.LBB2_135:                              # %._crit_edge.i139
	ld.d	$s0, $s6, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(skipoverword)
	jirl	$ra, $ra, 0
	bgeu	$s4, $a0, .LBB2_141
# %bb.136:                              # %.lr.ph8.i162.preheader
	sub.d	$a3, $a0, $s4
	ori	$a1, $zero, 32
	bltu	$a3, $a1, .LBB2_142
# %bb.137:                              # %.lr.ph8.i162.preheader
	sub.d	$a2, $s2, $s4
	bltu	$a2, $a1, .LBB2_142
# %bb.138:                              # %vector.ph232
	move	$a4, $a3
	bstrins.d	$a4, $zero, 4, 0
	add.d	$a1, $s4, $a4
	add.d	$a2, $s2, $a4
	addi.d	$a5, $s2, 16
	addi.d	$a6, $s4, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_139:                              # %vector.body235
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB2_139
# %bb.140:                              # %middle.block242
	bne	$a3, $a4, .LBB2_143
	b	.LBB2_145
.LBB2_141:
	move	$a3, $s4
	b	.LBB2_146
.LBB2_142:
	move	$a1, $s4
	move	$a2, $s2
.LBB2_143:                              # %.lr.ph8.i162.preheader248
	move	$a3, $a2
	.p2align	4, , 16
.LBB2_144:                              # %.lr.ph8.i162
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	addi.d	$a5, $a1, 1
	addi.d	$a2, $a3, 1
	st.b	$a4, $a3, 0
	move	$a1, $a5
	move	$a3, $a2
	bne	$a5, $a0, .LBB2_144
.LBB2_145:                              # %._crit_edge9.i142.loopexit
	move	$s2, $a2
	move	$a3, $a0
.LBB2_146:                              # %._crit_edge9.i142
	st.d	$s2, $s6, 0
	ld.bu	$a2, $a3, 0
	sub.d	$a1, $s0, $s1
	beqz	$a2, .LBB2_150
# %bb.147:
	st.b	$a2, $s2, 0
	ld.bu	$a2, $a3, 1
	st.b	$zero, $a3, 0
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB2_150
# %bb.148:                              # %.lr.ph18.i149.preheader
	sltu	$a3, $s4, $a0
	masknez	$a4, $s4, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a4
	addi.d	$a0, $a0, 2
	.p2align	4, , 16
.LBB2_149:                              # %.lr.ph18.i149
                                        # =>This Inner Loop Header: Depth=1
	st.b	$a2, $s2, 0
	ld.bu	$a2, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB2_149
.LBB2_150:                              # %.loopexit.i155.preheader
	add.d	$a0, $fp, $a1
	.p2align	4, , 16
.LBB2_151:                              # %.loopexit.i155
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 1
	st.b	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB2_151
# %bb.152:                              # %inserttoken.exit166
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_2
# %bb.153:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_154:
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	move	$a2, $zero
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	b	.LBB2_156
.LBB2_155:
	pcalau12i	$a0, %got_pc_hi20(quit)
	ld.d	$a0, $a0, %got_pc_lo12(quit)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB2_156:
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_157:
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	st.w	$s0, $a0, 0
	b	.LBB2_2
.LBB2_158:
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	st.w	$fp, $a0, 0
	b	.LBB2_2
.Lfunc_end2:
	.size	correct, .Lfunc_end2-correct
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_74-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_132-.LJTI2_0
	.word	.LBB2_74-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_107-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_156-.LJTI2_0
	.word	.LBB2_105-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_108-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_158-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_81-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_86-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_157-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_155-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_158-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_81-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_86-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_157-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_155-.LJTI2_0
                                        # -- End function
	.text
	.globl	compoundgood                    # -- Begin function compoundgood
	.p2align	5
	.type	compoundgood,@function
compoundgood:                           # @compoundgood
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(compoundflag)
	ld.d	$a0, $a0, %got_pc_lo12(compoundflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_12
# %bb.1:
	move	$fp, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s2, $a1, %got_pc_lo12(hashheader)
	ld.h	$s1, $s2, 8
	slli.d	$a1, $s1, 1
	bltu	$a0, $a1, .LBB3_12
# %bb.2:
	addi.d	$a0, $sp, 16
	addi.d	$s3, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	add.d	$s0, $s3, $s1
	add.d	$a0, $s0, $s1
	ld.bu	$a0, $a0, -1
	beqz	$a0, .LBB3_12
# %bb.3:                                # %.lr.ph.preheader
	ori	$s3, $zero, 2
	ori	$s4, $zero, 1
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	ld.h	$a0, $s2, 8
	ldx.bu	$a0, $s0, $a0
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB3_12
.LBB3_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s1, $s0, 0
	st.b	$zero, $s0, 0
	addi.d	$a0, $sp, 16
	ori	$a4, $zero, 2
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	st.b	$s1, $s0, 0
	beqz	$a0, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	move	$a0, $s0
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	ori	$a1, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_4
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(whatcap)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(whatcap)
	jirl	$ra, $ra, 0
	rotri.d	$a0, $a0, 28
	addi.d	$a1, $a0, -2
	bltu	$a1, $s3, .LBB3_11
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	beq	$a0, $s4, .LBB3_14
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	bnez	$a0, .LBB3_4
.LBB3_11:
	sltui	$a0, $s1, 1
	b	.LBB3_13
.LBB3_12:
	move	$a0, $zero
.LBB3_13:                               # %.loopexit
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB3_14:
	lu12i.w	$a0, 65536
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	b	.LBB3_13
.Lfunc_end3:
	.size	compoundgood, .Lfunc_end3-compoundgood
                                        # -- End function
	.globl	makepossibilities               # -- Begin function makepossibilities
	.p2align	5
	.type	makepossibilities,@function
makepossibilities:                      # @makepossibilities
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -688
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$s5, $a0, %got_pc_lo12(possibilities)
	st.b	$zero, $s5, 0
	st.b	$zero, $s5, 120
	st.b	$zero, $s5, 240
	st.b	$zero, $s5, 360
	st.b	$zero, $s5, 480
	st.b	$zero, $s5, 600
	st.b	$zero, $s5, 720
	st.b	$zero, $s5, 840
	st.b	$zero, $s5, 960
	st.b	$zero, $s5, 1080
	st.b	$zero, $s5, 1200
	st.b	$zero, $s5, 1320
	st.b	$zero, $s5, 1440
	st.b	$zero, $s5, 1560
	st.b	$zero, $s5, 1680
	st.b	$zero, $s5, 1800
	st.b	$zero, $s5, 1920
	st.b	$zero, $s5, 2040
	ori	$a0, $zero, 2160
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 2280
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 2400
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 2520
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 2640
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 2760
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 2880
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3000
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3120
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3240
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3360
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3480
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3600
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3720
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3840
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 3960
	stx.b	$zero, $s5, $a0
	ori	$a0, $zero, 4080
	stx.b	$zero, $s5, $a0
	lu12i.w	$a0, 1
	ori	$a1, $a0, 104
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 224
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 344
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 464
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 584
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 704
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 824
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 944
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1064
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1184
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1304
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1424
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1544
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1664
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1784
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1904
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2024
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2144
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2264
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2384
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2504
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2624
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2744
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2864
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2984
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3104
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3224
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3344
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3464
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3584
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3704
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3824
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3944
	stx.b	$zero, $s5, $a1
	ori	$a0, $a0, 4064
	stx.b	$zero, $s5, $a0
	lu12i.w	$a0, 2
	ori	$a1, $a0, 88
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 208
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 328
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 448
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 568
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 688
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 808
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 928
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1048
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1168
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1288
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1408
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1528
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1648
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1768
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 1888
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2008
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2128
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2248
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2368
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2488
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2608
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2728
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2848
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 2968
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3088
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3208
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3328
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3448
	stx.b	$zero, $s5, $a1
	ori	$a1, $a0, 3568
	stx.b	$zero, $s5, $a1
	ori	$a0, $a0, 3688
	stx.b	$zero, $s5, $a0
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$s6, $a0, %got_pc_lo12(pcount)
	st.w	$zero, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$a0, $a0, %got_pc_lo12(maxposslen)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(easypossibilities)
	ld.d	$s3, $a0, %got_pc_lo12(easypossibilities)
	st.w	$zero, $s3, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_2
# %bb.1:
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1428
	pcaddu18i	$ra, %call36(upcase)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
.LBB4_2:                                # %wrongcapital.exit
	ld.w	$s4, $s6, 0
	ori	$a0, $zero, 99
	blt	$a0, $s4, .LBB4_109
# %bb.3:
	addi.d	$s0, $sp, 1429
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(Trynum)
	ld.d	$s1, $a0, %got_pc_lo12(Trynum)
	ld.w	$a0, $s1, 0
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	beqz	$a1, .LBB4_16
# %bb.4:                                # %.preheader24.lr.ph.i
	blez	$a0, .LBB4_23
# %bb.5:                                # %.preheader24.i.preheader
	pcalau12i	$a1, %got_pc_hi20(Try)
	ld.d	$s3, $a1, %got_pc_lo12(Try)
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s4, $a1, %got_pc_lo12(hashheader)
	addi.d	$s7, $sp, 1428
	move	$s8, $fp
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %._crit_edge.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.b	$a1, $s8, 0
	ld.bu	$a2, $s8, 1
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s7, 1
	st.b	$a1, $s7, 0
	move	$s7, $s2
	beqz	$a2, .LBB4_17
.LBB4_7:                                # %.preheader24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #     Child Loop BB4_13 Depth 2
	blez	$a0, .LBB4_6
# %bb.8:                                # %.lr.ph.i
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$s2, $zero
	addi.d	$a0, $sp, 1428
	bne	$s7, $a0, .LBB4_10
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_9:                                #   in Loop: Header=BB4_10 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB4_6
.LBB4_10:                               # %.lr.ph.split.us.i
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a0, $s3, $s2
	st.b	$a0, $s7, 0
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_9
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_9
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_12:                               #   in Loop: Header=BB4_13 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB4_6
.LBB4_13:                               # %.lr.ph.split.i
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s3, $s2
	add.d	$a1, $s4, $a0
	ld.bu	$a1, $a1, 1666
	bnez	$a1, .LBB4_12
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=2
	st.b	$a0, $sp, 1428
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_12
# %bb.15:                               #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_12
	b	.LBB4_25
.LBB4_16:
	addi.d	$s2, $sp, 1428
.LBB4_17:                               # %.preheader.i
	blez	$a0, .LBB4_25
# %bb.18:                               # %.lr.ph33.i.preheader
	pcalau12i	$a0, %got_pc_hi20(Try)
	ld.d	$s3, $a0, %got_pc_lo12(Try)
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s4, $a0, %got_pc_lo12(hashheader)
	move	$s7, $zero
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB4_25
.LBB4_20:                               # %.lr.ph33.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s3, $s7
	add.d	$a1, $s4, $a0
	ld.bu	$a1, $a1, 1666
	bnez	$a1, .LBB4_19
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=1
	st.b	$a0, $s2, 0
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_19
# %bb.22:                               #   in Loop: Header=BB4_20 Depth=1
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_19
	b	.LBB4_25
.LBB4_23:                               # %.preheader24.us.i.preheader
	addi.d	$a0, $fp, 1
	addi.d	$a2, $sp, 1428
	.p2align	4, , 16
.LBB4_24:                               # %.preheader24.us.i
                                        # =>This Inner Loop Header: Depth=1
	st.b	$a1, $a2, 0
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB4_24
.LBB4_25:                               # %.loopexit52
	ld.w	$s4, $s6, 0
	ori	$a0, $zero, 99
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB4_109
# %bb.26:
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 1429
	beqz	$a1, .LBB4_32
# %bb.27:                               # %.lr.ph.preheader.i
	ld.bu	$a0, $sp, 1428
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_28:                               #   in Loop: Header=BB4_29 Depth=1
	ld.b	$a2, $s0, 0
	ld.bu	$a0, $s0, -1
	ld.bu	$a1, $s0, 1
	st.b	$a2, $s0, -1
	addi.d	$a2, $s0, 1
	st.b	$a0, $s0, 0
	move	$s0, $a2
	beqz	$a1, .LBB4_31
.LBB4_29:                               # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	st.b	$a1, $s0, -1
	st.b	$a0, $s0, 0
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_28
# %bb.30:                               #   in Loop: Header=BB4_29 Depth=1
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_28
.LBB4_31:                               # %.loopexit
	ld.w	$s4, $s6, 0
	ori	$a0, $zero, 99
	blt	$a0, $s4, .LBB4_109
.LBB4_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB4_39
# %bb.33:
	addi.d	$a1, $fp, 1
	addi.d	$a0, $sp, 1428
	addi.d	$s0, $sp, 1428
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB4_39
# %bb.34:                               # %.lr.ph.i25.preheader
	move	$s2, $zero
	b	.LBB4_36
	.p2align	4, , 16
.LBB4_35:                               #   in Loop: Header=BB4_36 Depth=1
	add.d	$a0, $fp, $s2
	ldx.b	$a1, $fp, $s2
	ld.bu	$a0, $a0, 1
	stx.b	$a1, $s2, $s0
	addi.d	$s2, $s2, 1
	beqz	$a0, .LBB4_38
.LBB4_36:                               # %.lr.ph.i25
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_35
# %bb.37:                               #   in Loop: Header=BB4_36 Depth=1
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_35
.LBB4_38:                               # %.thread42
	ld.w	$s4, $s6, 0
	ori	$a0, $zero, 99
	blt	$a0, $s4, .LBB4_109
.LBB4_39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$s2, $a0, 0
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1428
	pcaddu18i	$ra, %call36(upcase)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB4_57
# %bb.40:                               # %.lr.ph26.i
	ld.w	$a0, $s1, 0
	blez	$a0, .LBB4_57
# %bb.41:                               # %.lr.ph26.split.preheader.i
	addi.d	$a1, $s0, -1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $s0, 30, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s3, $sp, 1428
	pcalau12i	$a1, %got_pc_hi20(Try)
	ld.d	$s4, $a1, %got_pc_lo12(Try)
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s7, $a1, %got_pc_lo12(hashheader)
	move	$s8, $zero
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               # %._crit_edge.i27
                                        #   in Loop: Header=BB4_43 Depth=1
	stx.b	$s2, $s8, $s3
	addi.d	$s8, $s8, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$s8, $a1, .LBB4_57
.LBB4_43:                               # %.lr.ph26.split.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_48 Depth 2
                                        #     Child Loop BB4_53 Depth 2
	ldx.bu	$s2, $s8, $s3
	blez	$a0, .LBB4_42
# %bb.44:                               # %.lr.ph.i28
                                        #   in Loop: Header=BB4_43 Depth=1
	beqz	$s8, .LBB4_51
# %bb.45:                               # %.lr.ph.i28
                                        #   in Loop: Header=BB4_43 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB4_51
# %bb.46:                               # %.lr.ph.split.i29.preheader
                                        #   in Loop: Header=BB4_43 Depth=1
	move	$s0, $zero
	b	.LBB4_48
	.p2align	4, , 16
.LBB4_47:                               #   in Loop: Header=BB4_48 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_42
.LBB4_48:                               # %.lr.ph.split.i29
                                        #   Parent Loop BB4_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s4, $s0
	beq	$a0, $s2, .LBB4_47
# %bb.49:                               #   in Loop: Header=BB4_48 Depth=2
	stx.b	$a0, $s8, $s3
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_47
# %bb.50:                               #   in Loop: Header=BB4_48 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_47
	b	.LBB4_57
.LBB4_51:                               # %.lr.ph.split.us.i32.preheader
                                        #   in Loop: Header=BB4_43 Depth=1
	move	$s0, $zero
	b	.LBB4_53
	.p2align	4, , 16
.LBB4_52:                               #   in Loop: Header=BB4_53 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_42
.LBB4_53:                               # %.lr.ph.split.us.i32
                                        #   Parent Loop BB4_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s4, $s0
	beq	$a0, $s2, .LBB4_52
# %bb.54:                               #   in Loop: Header=BB4_53 Depth=2
	add.d	$a1, $s7, $a0
	ld.bu	$a1, $a1, 1666
	bnez	$a1, .LBB4_52
# %bb.55:                               #   in Loop: Header=BB4_53 Depth=2
	stx.b	$a0, $s8, $s3
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_52
# %bb.56:                               #   in Loop: Header=BB4_53 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_52
.LBB4_57:                               # %.thread44
	ld.w	$s4, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(compoundflag)
	ld.d	$a0, $a0, %got_pc_lo12(compoundflag)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_108
# %bb.58:                               # %.thread44
	ori	$a0, $zero, 99
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB4_109
# %bb.59:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -119
	addi.w	$a1, $zero, -116
	bltu	$a0, $a1, .LBB4_109
# %bb.60:
	addi.d	$s7, $sp, 1308
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 1309
	beqz	$a0, .LBB4_109
# %bb.61:                               # %.lr.ph.i35
	addi.d	$a0, $sp, 1309
	addi.d	$s4, $sp, 1428
	ori	$a1, $zero, 2628
	add.d	$s3, $sp, $a1
	ori	$s1, $zero, 2
	b	.LBB4_63
.LBB4_62:                               # %.loopexit60.i
                                        #   in Loop: Header=BB4_63 Depth=1
	ld.bu	$a1, $s7, 1
	addi.d	$a0, $s7, 1
	beqz	$a1, .LBB4_107
.LBB4_63:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_67 Depth 2
                                        #     Child Loop BB4_79 Depth 2
                                        #     Child Loop BB4_90 Depth 2
                                        #       Child Loop BB4_93 Depth 3
                                        #         Child Loop BB4_95 Depth 4
                                        #         Child Loop BB4_102 Depth 4
	move	$a2, $s7
	ld.b	$a1, $s7, 0
	move	$s7, $a0
	st.b	$a1, $a2, -1
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.b	$zero, $a2, 0
	addi.d	$a0, $sp, 1307
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_62
# %bb.64:                               #   in Loop: Header=BB4_63 Depth=1
	ld.bu	$a0, $sp, 1307
	beqz	$a0, .LBB4_74
# %bb.65:                               #   in Loop: Header=BB4_63 Depth=1
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	ld.w	$s0, $a0, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	blez	$s0, .LBB4_74
# %bb.66:                               # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB4_63 Depth=1
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(hits)
	ld.d	$a1, $a1, %got_pc_lo12(hits)
	add.d	$a0, $a1, $a0
	addi.d	$s2, $a0, -8
	.p2align	4, , 16
.LBB4_67:                               # %.lr.ph.i.i
                                        #   Parent Loop BB4_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $s2, -8
	beqz	$a7, .LBB4_70
# %bb.68:                               #   in Loop: Header=BB4_67 Depth=2
	ld.h	$a2, $a7, 18
	ld.h	$a3, $a7, 20
	ld.d	$a1, $s2, 0
	beqz	$a1, .LBB4_71
.LBB4_69:                               #   in Loop: Header=BB4_67 Depth=2
	ld.h	$a4, $a1, 18
	ld.h	$a5, $a1, 20
	b	.LBB4_72
	.p2align	4, , 16
.LBB4_70:                               #   in Loop: Header=BB4_67 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	ld.d	$a1, $s2, 0
	bnez	$a1, .LBB4_69
.LBB4_71:                               #   in Loop: Header=BB4_67 Depth=2
	move	$a5, $zero
	move	$a4, $zero
.LBB4_72:                               #   in Loop: Header=BB4_67 Depth=2
	ld.d	$a6, $s2, -16
	st.d	$s3, $sp, 16
	st.d	$s4, $sp, 8
	addi.d	$a0, $sp, 1307
	st.d	$a1, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bstrpick.d	$s8, $a0, 31, 0
	bltu	$s0, $s1, .LBB4_75
# %bb.73:                               #   in Loop: Header=BB4_67 Depth=2
	addi.d	$s2, $s2, -24
	addi.d	$s0, $s0, -1
	ori	$a1, $zero, 10
	blt	$a0, $a1, .LBB4_67
	b	.LBB4_75
.LBB4_74:                               #   in Loop: Header=BB4_63 Depth=1
	move	$s8, $zero
.LBB4_75:                               # %save_cap.exit.i
                                        #   in Loop: Header=BB4_63 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s7
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_62
# %bb.76:                               #   in Loop: Header=BB4_63 Depth=1
	ld.bu	$a0, $s7, 0
	beqz	$a0, .LBB4_86
# %bb.77:                               #   in Loop: Header=BB4_63 Depth=1
	ori	$a0, $zero, 2628
	add.d	$s1, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	ld.w	$s0, $a0, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	blez	$s0, .LBB4_86
# %bb.78:                               # %.lr.ph.preheader.i32.i
                                        #   in Loop: Header=BB4_63 Depth=1
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(hits)
	ld.d	$a1, $a1, %got_pc_lo12(hits)
	add.d	$a0, $a1, $a0
	addi.d	$s3, $a0, -8
	.p2align	4, , 16
.LBB4_79:                               # %.lr.ph.i33.i
                                        #   Parent Loop BB4_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $s3, -8
	beqz	$a7, .LBB4_82
# %bb.80:                               #   in Loop: Header=BB4_79 Depth=2
	ld.h	$a2, $a7, 18
	ld.h	$a3, $a7, 20
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB4_83
.LBB4_81:                               #   in Loop: Header=BB4_79 Depth=2
	ld.h	$a4, $a0, 18
	ld.h	$a5, $a0, 20
	b	.LBB4_84
	.p2align	4, , 16
.LBB4_82:                               #   in Loop: Header=BB4_79 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	ld.d	$a0, $s3, 0
	bnez	$a0, .LBB4_81
.LBB4_83:                               #   in Loop: Header=BB4_79 Depth=2
	move	$a5, $zero
	move	$a4, $zero
.LBB4_84:                               #   in Loop: Header=BB4_79 Depth=2
	ld.d	$a6, $s3, -16
	st.d	$s1, $sp, 16
	addi.d	$a1, $sp, 107
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a1, $s7
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bstrpick.d	$s2, $a0, 31, 0
	ori	$a1, $zero, 2
	bltu	$s0, $a1, .LBB4_87
# %bb.85:                               #   in Loop: Header=BB4_79 Depth=2
	addi.d	$s3, $s3, -24
	addi.d	$s0, $s0, -1
	ori	$a1, $zero, 10
	blt	$a0, $a1, .LBB4_79
	b	.LBB4_87
.LBB4_86:                               #   in Loop: Header=BB4_63 Depth=1
	move	$s2, $zero
.LBB4_87:                               # %save_cap.exit42.i
                                        #   in Loop: Header=BB4_63 Depth=1
	addi.w	$a0, $s8, 0
	ori	$a1, $zero, 2628
	add.d	$s3, $sp, $a1
	ori	$s1, $zero, 2
	blez	$a0, .LBB4_62
# %bb.88:                               # %.lr.ph65.i
                                        #   in Loop: Header=BB4_63 Depth=1
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB4_62
# %bb.89:                               # %.lr.ph.us.preheader.i
                                        #   in Loop: Header=BB4_63 Depth=1
	move	$a2, $zero
	addi.d	$a0, $sp, 1307
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
.LBB4_90:                               # %.lr.ph.us.i
                                        #   Parent Loop BB4_63 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_93 Depth 3
                                        #         Child Loop BB4_95 Depth 4
                                        #         Child Loop BB4_102 Depth 4
	move	$s7, $zero
	ori	$a0, $zero, 120
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $a2, $a0
	add.d	$a0, $s4, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB4_93
	.p2align	4, , 16
.LBB4_91:                               # %insert.exit57.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	ori	$a0, $zero, 98
	blt	$a0, $s0, .LBB4_108
.LBB4_92:                               # %insert.exit57.thread.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	addi.d	$s7, $s7, 1
	beq	$s7, $s2, .LBB4_106
.LBB4_93:                               #   Parent Loop BB4_63 Depth=1
                                        #     Parent Loop BB4_90 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_95 Depth 4
                                        #         Child Loop BB4_102 Depth 4
	ori	$a0, $zero, 32
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a0, $a1, 0
	ori	$a0, $zero, 120
	mul.d	$a0, $s7, $a0
	addi.d	$a1, $sp, 107
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s6, 0
	move	$s3, $a0
	blez	$s1, .LBB4_97
# %bb.94:                               # %.lr.ph.preheader.i44.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	move	$s4, $s5
	move	$s0, $s1
	.p2align	4, , 16
.LBB4_95:                               # %.lr.ph.i45.us.i
                                        #   Parent Loop BB4_63 Depth=1
                                        #     Parent Loop BB4_90 Depth=2
                                        #       Parent Loop BB4_93 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_100
# %bb.96:                               #   in Loop: Header=BB4_95 Depth=4
	addi.d	$s0, $s0, -1
	addi.d	$s4, $s4, 120
	bnez	$s0, .LBB4_95
.LBB4_97:                               # %._crit_edge.i.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	addi.w	$s4, $s1, 1
	st.w	$s4, $s6, 0
	ori	$a0, $zero, 120
	mul.d	$a0, $s1, $a0
	add.d	$a0, $s5, $a0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB4_99
# %bb.98:                               #   in Loop: Header=BB4_93 Depth=3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB4_99:                               # %insert.exit.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	ori	$a0, $zero, 98
	blt	$a0, $s1, .LBB4_108
.LBB4_100:                              # %insert.exit.thread.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	ori	$a0, $zero, 45
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a0, $a1, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s6, 0
	move	$s3, $a0
	blez	$s0, .LBB4_104
# %bb.101:                              # %.lr.ph.preheader.i51.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	move	$s4, $s5
	move	$s1, $s0
	.p2align	4, , 16
.LBB4_102:                              # %.lr.ph.i53.us.i
                                        #   Parent Loop BB4_63 Depth=1
                                        #     Parent Loop BB4_90 Depth=2
                                        #       Parent Loop BB4_93 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_92
# %bb.103:                              #   in Loop: Header=BB4_102 Depth=4
	addi.d	$s1, $s1, -1
	addi.d	$s4, $s4, 120
	bnez	$s1, .LBB4_102
.LBB4_104:                              # %._crit_edge.i48.us.i
                                        #   in Loop: Header=BB4_93 Depth=3
	addi.w	$s4, $s0, 1
	st.w	$s4, $s6, 0
	ori	$a0, $zero, 120
	mul.d	$a0, $s0, $a0
	add.d	$a0, $s5, $a0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB4_91
# %bb.105:                              #   in Loop: Header=BB4_93 Depth=3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB4_91
.LBB4_106:                              # %._crit_edge.us.i
                                        #   in Loop: Header=BB4_90 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 1428
	ori	$a0, $zero, 2628
	add.d	$s3, $sp, $a0
	ori	$s1, $zero, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a2, $s8, .LBB4_90
	b	.LBB4_62
.LBB4_107:                              # %missingspace.exit.loopexit65
	ld.w	$s4, $s6, 0
.LBB4_108:                              # %missingspace.exit
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
.LBB4_109:                              # %.thread44.thread
	st.w	$s4, $s3, 0
	beqz	$s4, .LBB4_111
# %bb.110:                              # %.thread44.thread
	pcalau12i	$a0, %got_pc_hi20(tryhardflag)
	ld.d	$a0, $a0, %got_pc_lo12(tryhardflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_112
.LBB4_111:
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
.LBB4_112:
	pcalau12i	$a0, %got_pc_hi20(sortit)
	ld.d	$a0, $a0, %got_pc_lo12(sortit)
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s6, 0
	beqz	$a0, .LBB4_116
# %bb.113:
	beqz	$a2, .LBB4_120
# %bb.114:
	ld.w	$a1, $s3, 0
	blez	$a1, .LBB4_118
# %bb.115:
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$a0, $a0, %got_pc_lo12(possibilities)
	pcalau12i	$a2, %pc_hi20(posscmp)
	addi.d	$a3, $a2, %pc_lo12(posscmp)
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, 0
	ld.w	$a1, $s3, 0
	b	.LBB4_118
.LBB4_116:
	beqz	$a2, .LBB4_120
# %bb.117:
	ld.w	$a1, $s3, 0
	bge	$a1, $a2, .LBB4_120
.LBB4_118:                              # %.thread45
	bge	$a1, $a2, .LBB4_120
# %bb.119:
	ori	$a0, $zero, 120
	mul.d	$a0, $a1, $a0
	add.d	$a0, $s5, $a0
	sub.w	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(posscmp)
	addi.d	$a3, $a2, %pc_lo12(posscmp)
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
.LBB4_120:
	addi.d	$sp, $sp, 688
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end4:
	.size	makepossibilities, .Lfunc_end4-makepossibilities
                                        # -- End function
	.p2align	5                               # -- Begin function show_line
	.type	show_line,@function
show_line:                              # @show_line
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	sltui	$a0, $a2, 1
	pcalau12i	$a1, %got_pc_hi20(sg)
	ld.d	$a1, $a1, %got_pc_lo12(sg)
	ld.w	$a1, $a1, 0
	slli.w	$a1, $a1, 1
	masknez	$fp, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(co)
	ld.d	$s3, $a0, %got_pc_lo12(co)
	ld.w	$a1, $s3, 0
	bgeu	$s0, $s2, .LBB5_3
	.p2align	4, , 16
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a1, -1
	bge	$fp, $a0, .LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	sub.w	$a3, $s2, $s0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(show_char)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	ld.w	$a1, $s3, 0
	add.w	$fp, $a0, $fp
	bltu	$s0, $s2, .LBB5_1
.LBB5_3:                                # %._crit_edge
	beqz	$s1, .LBB5_8
# %bb.4:
	pcaddu18i	$ra, %call36(inverse)
	jirl	$ra, $ra, 0
	add.d	$s1, $s2, $s1
	bgeu	$s0, $s1, .LBB5_7
	.p2align	4, , 16
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	addi.w	$a0, $a0, -1
	bge	$fp, $a0, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	sub.w	$a3, $s1, $s0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(show_char)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	add.w	$fp, $a0, $fp
	bltu	$s0, $s1, .LBB5_5
.LBB5_7:                                # %._crit_edge25
	pcaddu18i	$ra, %call36(normal)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
.LBB5_8:
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB5_12
	.p2align	4, , 16
# %bb.9:
	addi.w	$a0, $a1, -1
	bge	$fp, $a0, .LBB5_12
.LBB5_10:                               # %.lr.ph29
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(show_char)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_12
# %bb.11:                               # %.lr.ph29
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.w	$a1, $s3, 0
	add.w	$fp, $a0, $fp
	addi.w	$a0, $a1, -1
	blt	$fp, $a0, .LBB5_10
.LBB5_12:                               # %._crit_edge30
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end5:
	.size	show_line, .Lfunc_end5-show_line
                                        # -- End function
	.p2align	5                               # -- Begin function getline_ispell
	.type	getline_ispell,@function
getline_ispell:                         # @getline_ispell
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s2, $a0, %got_pc_lo12(stdin)
	ori	$s3, $zero, 91
	pcalau12i	$a0, %got_pc_hi20(uerasechar)
	ld.d	$s7, $a0, %got_pc_lo12(uerasechar)
	pcalau12i	$a0, %got_pc_hi20(ukillchar)
	ld.d	$s8, $a0, %got_pc_lo12(ukillchar)
	ori	$s6, $zero, 92
.LBB6_1:                                # %.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_14 Depth 2
	move	$fp, $s4
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=2
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 92
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$s0, $a0, 127
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s5, 1
	st.b	$s0, $s5, 0
.LBB6_3:                                # %.loopexit
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	move	$s5, $fp
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 127
	bge	$s3, $a0, .LBB6_5
# %bb.4:                                # %.loopexit
                                        #   in Loop: Header=BB6_3 Depth=2
	beq	$a0, $s6, .LBB6_2
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_5:                                # %.loopexit
                                        #   in Loop: Header=BB6_3 Depth=2
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB6_16
# %bb.6:                                # %.loopexit
                                        #   in Loop: Header=BB6_3 Depth=2
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB6_15
# %bb.7:                                # %.loopexit
                                        #   in Loop: Header=BB6_3 Depth=2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB6_15
.LBB6_8:                                #   in Loop: Header=BB6_3 Depth=2
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB6_11
# %bb.9:                                #   in Loop: Header=BB6_3 Depth=2
	move	$fp, $s4
	beq	$s5, $s4, .LBB6_3
# %bb.10:                               #   in Loop: Header=BB6_3 Depth=2
	addi.d	$fp, $s5, -1
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_11:                               #   in Loop: Header=BB6_3 Depth=2
	ld.w	$a1, $s8, 0
	bne	$a0, $a1, .LBB6_13
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB6_3 Depth=2
	move	$fp, $s4
	bne	$s5, $s4, .LBB6_14
	b	.LBB6_3
.LBB6_13:                               #   in Loop: Header=BB6_3 Depth=2
	st.b	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	addi.d	$fp, $s5, 1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_14:                               # %.lr.ph
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s5, $s5, -1
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	bne	$s5, $s4, .LBB6_14
	b	.LBB6_1
.LBB6_15:
	st.b	$zero, $s5, 0
	b	.LBB6_17
.LBB6_16:                               # %.loopexit25.loopexit
	move	$s4, $zero
.LBB6_17:                               # %.loopexit25
	move	$a0, $s4
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end6:
	.size	getline_ispell, .Lfunc_end6-getline_ispell
                                        # -- End function
	.globl	casecmp                         # -- Begin function casecmp
	.p2align	5
	.type	casecmp,@function
casecmp:                                # @casecmp
# %bb.0:
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$a1, $a0
	addi.d	$a0, $sp, 200
	ori	$a2, $zero, 184
	move	$a3, $fp
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 184
	addi.d	$s1, $sp, 16
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 200
	beqz	$a1, .LBB7_12
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a2, $sp, 201
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$a0, $a0, %got_pc_lo12(hashheader)
	move	$a3, $a1
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a3, $a2, 0
	addi.d	$s1, $s1, 1
	addi.d	$a2, $a2, 1
	beqz	$a3, .LBB7_13
.LBB7_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $s1, 0
	beq	$a3, $a4, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	beqz	$a4, .LBB7_15
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	add.d	$a5, $a0, $a3
	ld.bu	$a7, $a5, 1438
	add.d	$a6, $a0, $a4
	beqz	$a7, .LBB7_8
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a6, $a6, 1438
	bnez	$a6, .LBB7_10
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a5, $a5, 754
	beq	$a5, $a4, .LBB7_2
	b	.LBB7_10
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a6, $a6, 1210
	bnez	$a6, .LBB7_10
# %bb.9:                                #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a5, $a5, 526
	beq	$a5, $a4, .LBB7_2
.LBB7_10:
	slli.d	$a1, $a3, 1
.LBB7_11:                               # %.loopexit
	addi.d	$a0, $a0, 70
	ldx.hu	$a1, $a0, $a1
	slli.d	$a2, $a4, 1
	ldx.hu	$a0, $a0, $a2
	sub.d	$a0, $a1, $a0
	b	.LBB7_20
.LBB7_12:                               # %._crit_edge.thread
	ld.bu	$a2, $sp, 16
	bnez	$a2, .LBB7_14
	b	.LBB7_19
.LBB7_13:                               # %._crit_edge
	ld.bu	$a2, $s1, 0
	beqz	$a2, .LBB7_16
.LBB7_14:
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$a0, $a0, %got_pc_lo12(hashheader)
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 70
	sub.d	$a0, $zero, $a0
	b	.LBB7_20
.LBB7_15:
	alsl.d	$a0, $a3, $a0, 1
	ld.hu	$a0, $a0, 70
	b	.LBB7_20
.LBB7_16:                               # %.lr.ph64.preheader
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 201
	.p2align	4, , 16
.LBB7_17:                               # %.lr.ph64
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	bne	$a1, $a4, .LBB7_21
# %bb.18:                               #   in Loop: Header=BB7_17 Depth=1
	ld.bu	$a1, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB7_17
.LBB7_19:
	move	$a0, $zero
.LBB7_20:                               # %.loopexit
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB7_21:
	slli.d	$a1, $a1, 1
	b	.LBB7_11
.Lfunc_end7:
	.size	casecmp, .Lfunc_end7-casecmp
                                        # -- End function
	.p2align	5                               # -- Begin function posscmp
	.type	posscmp,@function
posscmp:                                # @posscmp
# %bb.0:
	move	$a2, $zero
	pcaddu18i	$t8, %call36(casecmp)
	jr	$t8
.Lfunc_end8:
	.size	posscmp, .Lfunc_end8-posscmp
                                        # -- End function
	.globl	ins_root_cap                    # -- Begin function ins_root_cap
	.p2align	5
	.type	ins_root_cap,@function
ins_root_cap:                           # @ins_root_cap
# %bb.0:
	addi.d	$sp, $sp, -1344
	st.d	$ra, $sp, 1336                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 1344
	st.w	$zero, $sp, 52
	addi.d	$t1, $sp, 52
	st.d	$t1, $sp, 16
	addi.d	$t1, $sp, 56
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 52
	blez	$s3, .LBB9_10
# %bb.1:                                # %.lr.ph.preheader
	ori	$s4, $zero, 120
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$s5, $a0, %got_pc_lo12(pcount)
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$s6, $a0, %got_pc_lo12(possibilities)
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$s7, $a0, %got_pc_lo12(maxposslen)
	move	$s8, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                # %insert.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 98
	blt	$a0, $s2, .LBB9_11
.LBB9_3:                                # %insert.exit.thread
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s8, $s8, 1
	beq	$s8, $s3, .LBB9_10
.LBB9_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	mul.d	$a0, $s8, $s4
	addi.d	$a1, $sp, 56
	add.d	$a0, $a1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s5, 0
	move	$s0, $a0
	blez	$s2, .LBB9_8
# %bb.5:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$s1, $s6
	move	$fp, $s2
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph.i
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_3
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 120
	bnez	$fp, .LBB9_6
.LBB9_8:                                # %._crit_edge.i
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a0, $s2, 1
	st.w	$a0, $s5, 0
	mul.d	$a0, $s2, $s4
	add.d	$a0, $s6, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB9_2
# %bb.9:                                #   in Loop: Header=BB9_4 Depth=1
	st.w	$a0, $s7, 0
	b	.LBB9_2
.LBB9_10:
	move	$a0, $zero
	b	.LBB9_12
.LBB9_11:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
.LBB9_12:                               # %._crit_edge
	ld.d	$s8, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1336                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1344
	ret
.Lfunc_end9:
	.size	ins_root_cap, .Lfunc_end9-ins_root_cap
                                        # -- End function
	.p2align	5                               # -- Begin function save_root_cap
	.type	save_root_cap,@function
save_root_cap:                          # @save_root_cap
# %bb.0:
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 480
	ld.w	$t0, $s6, 0
	ori	$t1, $zero, 9
	blt	$t1, $t0, .LBB10_8
# %bb.1:
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a3
	move	$s2, $a2
	move	$a2, $a0
	move	$s3, $a1
	move	$s4, $a4
	move	$s5, $a5
	ld.d	$s7, $sp, 472
	addi.d	$a0, $sp, 192
	move	$a1, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	lu12i.w	$a0, 458752
	and	$a0, $a1, $a0
	lu12i.w	$a2, 65536
	beq	$a0, $a2, .LBB10_6
# %bb.2:                                # %.preheader155
	ld.bu	$a2, $s3, 0
	beqz	$a2, .LBB10_6
# %bb.3:                                # %.lr.ph.preheader
	move	$a0, $s3
	ld.d	$s3, $sp, 464
	pcalau12i	$a3, %got_pc_hi20(hashheader)
	ld.d	$s8, $a3, %got_pc_lo12(hashheader)
	add.d	$a3, $s8, $a2
	ld.bu	$a3, $a3, 1210
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a3, $a0, 1
	.p2align	4, , 16
.LBB10_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s8, $a2
	ld.bu	$a2, $a2, 1438
	bnez	$a2, .LBB10_9
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	ld.bu	$a2, $a3, 0
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB10_4
.LBB10_6:
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(upcase)
	jirl	$ra, $ra, 0
.LBB10_7:                               # %.loopexit151.sink.split
	ld.w	$a0, $s6, 0
	ori	$a1, $zero, 120
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s7, $a0
	addi.d	$a1, $sp, 192
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 0
.LBB10_8:                               # %.loopexit151
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.LBB10_9:                               # %.preheader153.preheader
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB10_10:                              # %.preheader153
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB10_81
# %bb.11:                               #   in Loop: Header=BB10_10 Depth=1
	add.d	$a2, $s8, $a2
	ld.bu	$a2, $a2, 1210
	addi.d	$a0, $a0, 1
	beqz	$a2, .LBB10_10
.LBB10_12:                              # %.loopexit152
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 19
	andi	$a1, $a1, 64
	beqz	$a1, .LBB10_14
# %bb.13:
	ld.d	$s0, $s0, 0
.LBB10_14:
	addi.d	$a1, $sp, 192
	add.d	$a1, $a1, $s1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	add.d	$a1, $s4, $s2
	sub.w	$a2, $a0, $a1
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	add.d	$a2, $s1, $a0
	sub.d	$a3, $s5, $a1
	add.w	$a3, $a3, $a2
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	sub.w	$a4, $a2, $a1
	nor	$a3, $s4, $zero
	addi.d	$s4, $sp, 192
	add.w	$a0, $a0, $a3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a3, $s4, $a4
	bstrpick.d	$a0, $s1, 31, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.w	$a0, $s5, -1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a5, $a0, 1
	andi	$a0, $s1, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s1, 30, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a6, $a0, 3
	andi	$a0, $a5, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 32, 4
	slli.d	$a7, $a0, 4
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	alsl.w	$a7, $a0, $a4, 4
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a3, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 32, 3
	slli.d	$a5, $a0, 3
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	alsl.w	$a4, $a0, $a4, 3
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a3, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $a6
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $a5
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a2, $s5
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$s5, 196608
	beqz	$fp, .LBB10_16
	.p2align	4, , 16
.LBB10_15:
	ld.d	$a0, $s0, 16
	ld.h	$a1, $fp, 16
	srl.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_79
.LBB10_16:
	ld.d	$a0, $s0, 16
	beqz	$s3, .LBB10_18
# %bb.17:
	ld.h	$a1, $s3, 16
	srl.d	$a1, $a0, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_79
.LBB10_18:                              # %._crit_edge194
	and	$a0, $a0, $s5
	bne	$a0, $s5, .LBB10_23
# %bb.19:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	add.d	$a1, $a0, $s2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $s5, $s2
	add.d	$a0, $s8, $a0
	ld.bu	$a0, $a0, 1210
	beqz	$a0, .LBB10_26
# %bb.20:                               # %.preheader149
	blez	$s1, .LBB10_51
# %bb.21:                               # %iter.check302
	ori	$a0, $zero, 8
	bgeu	$s1, $a0, .LBB10_29
# %bb.22:
	move	$a1, $zero
	b	.LBB10_43
	.p2align	4, , 16
.LBB10_23:
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_25
# %bb.24:
	ld.d	$a0, $s0, 16
	and	$a0, $a0, $s5
	lu12i.w	$a1, 131072
	bne	$a0, $a1, .LBB10_78
.LBB10_25:
	ld.bu	$a0, $sp, 192
	add.d	$a0, $s8, $a0
	ld.b	$a0, $a0, 754
	st.b	$a0, $sp, 192
	b	.LBB10_78
.LBB10_26:                              # %.preheader
	blez	$s1, .LBB10_51
# %bb.27:                               # %iter.check274
	ori	$a0, $zero, 8
	bgeu	$s1, $a0, .LBB10_34
# %bb.28:
	move	$a1, $zero
	b	.LBB10_49
.LBB10_29:                              # %vector.main.loop.iter.check304
	ori	$a0, $zero, 16
	bgeu	$s1, $a0, .LBB10_39
# %bb.30:
	move	$a2, $zero
.LBB10_31:                              # %vec.epilog.ph318
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.d	$a1, $s4, $a2
	.p2align	4, , 16
.LBB10_32:                              # %vec.epilog.vector.body321
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	srli.d	$a3, $a2, 56
	bstrpick.d	$a4, $a2, 55, 48
	bstrpick.d	$a5, $a2, 47, 40
	bstrpick.d	$a6, $a2, 39, 32
	bstrpick.d	$a7, $a2, 31, 24
	bstrpick.d	$t0, $a2, 23, 16
	bstrpick.d	$t1, $a2, 15, 8
	andi	$a2, $a2, 255
	addi.d	$t2, $s8, 754
	ldx.b	$a2, $t2, $a2
	ldx.b	$t1, $t2, $t1
	ldx.b	$t0, $t2, $t0
	ldx.b	$a7, $t2, $a7
	ldx.b	$a6, $t2, $a6
	ldx.b	$a5, $t2, $a5
	ldx.b	$a4, $t2, $a4
	ldx.b	$a3, $t2, $a3
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $t1, 1
	vinsgr2vr.b	$vr0, $t0, 2
	vinsgr2vr.b	$vr0, $a7, 3
	vinsgr2vr.b	$vr0, $a6, 4
	vinsgr2vr.b	$vr0, $a5, 5
	vinsgr2vr.b	$vr0, $a4, 6
	vinsgr2vr.b	$vr0, $a3, 7
	vstelm.d	$vr0, $a1, 0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB10_32
# %bb.33:                               # %vec.epilog.middle.block325
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $a2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB10_43
	b	.LBB10_51
.LBB10_34:                              # %vector.main.loop.iter.check276
	ori	$a0, $zero, 16
	bgeu	$s1, $a0, .LBB10_45
# %bb.35:
	move	$a2, $zero
.LBB10_36:                              # %vec.epilog.ph290
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.d	$a1, $s4, $a2
	.p2align	4, , 16
.LBB10_37:                              # %vec.epilog.vector.body293
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	srli.d	$a3, $a2, 56
	bstrpick.d	$a4, $a2, 55, 48
	bstrpick.d	$a5, $a2, 47, 40
	bstrpick.d	$a6, $a2, 39, 32
	bstrpick.d	$a7, $a2, 31, 24
	bstrpick.d	$t0, $a2, 23, 16
	bstrpick.d	$t1, $a2, 15, 8
	andi	$a2, $a2, 255
	addi.d	$t2, $s8, 526
	ldx.b	$a2, $t2, $a2
	ldx.b	$t1, $t2, $t1
	ldx.b	$t0, $t2, $t0
	ldx.b	$a7, $t2, $a7
	ldx.b	$a6, $t2, $a6
	ldx.b	$a5, $t2, $a5
	ldx.b	$a4, $t2, $a4
	ldx.b	$a3, $t2, $a3
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $t1, 1
	vinsgr2vr.b	$vr0, $t0, 2
	vinsgr2vr.b	$vr0, $a7, 3
	vinsgr2vr.b	$vr0, $a6, 4
	vinsgr2vr.b	$vr0, $a5, 5
	vinsgr2vr.b	$vr0, $a4, 6
	vinsgr2vr.b	$vr0, $a3, 7
	vstelm.d	$vr0, $a1, 0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB10_37
# %bb.38:                               # %vec.epilog.middle.block297
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $a2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB10_49
	b	.LBB10_51
.LBB10_39:                              # %vector.body308.preheader
	addi.d	$a0, $sp, 192
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_40:                              # %vector.body308
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vbsrl.v	$vr1, $vr0, 14
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vbsrl.v	$vr2, $vr0, 12
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vsllwil.du.wu	$vr2, $vr2, 0
	vbsrl.v	$vr3, $vr0, 10
	vsllwil.hu.bu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.du.wu	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr0, 8
	vsllwil.hu.bu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vsrli.d	$vr5, $vr0, 48
	vsllwil.hu.bu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vsrli.d	$vr6, $vr0, 32
	vsllwil.hu.bu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.b	$vr7, $vr0, 14
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	vpickve2gr.d	$a2, $vr0, 0
	addi.d	$a3, $s8, 754
	vpickve2gr.d	$a4, $vr0, 1
	vpickve2gr.d	$a5, $vr7, 0
	vpickve2gr.d	$a6, $vr7, 1
	vpickve2gr.d	$a7, $vr6, 0
	vpickve2gr.d	$t0, $vr6, 1
	vpickve2gr.d	$t1, $vr5, 0
	vpickve2gr.d	$t2, $vr5, 1
	vpickve2gr.d	$t3, $vr4, 0
	vpickve2gr.d	$t4, $vr4, 1
	vpickve2gr.d	$t5, $vr3, 0
	vpickve2gr.d	$t6, $vr3, 1
	vpickve2gr.d	$t7, $vr2, 0
	vpickve2gr.d	$t8, $vr2, 1
	vpickve2gr.d	$ra, $vr1, 0
	vpickve2gr.d	$s4, $vr1, 1
	ldx.b	$a2, $a3, $a2
	ldx.b	$a4, $a3, $a4
	ldx.b	$a5, $a3, $a5
	ldx.b	$a6, $a3, $a6
	ldx.b	$a7, $a3, $a7
	ldx.b	$t0, $a3, $t0
	ldx.b	$t1, $a3, $t1
	ldx.b	$t2, $a3, $t2
	ldx.b	$t3, $a3, $t3
	ldx.b	$t4, $a3, $t4
	ldx.b	$t5, $a3, $t5
	ldx.b	$t6, $a3, $t6
	ldx.b	$t7, $a3, $t7
	ldx.b	$t8, $a3, $t8
	ldx.b	$ra, $a3, $ra
	ldx.b	$a3, $a3, $s4
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $a4, 1
	vinsgr2vr.b	$vr0, $a5, 2
	vinsgr2vr.b	$vr0, $a6, 3
	vinsgr2vr.b	$vr0, $a7, 4
	vinsgr2vr.b	$vr0, $t0, 5
	vinsgr2vr.b	$vr0, $t1, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t3, 8
	vinsgr2vr.b	$vr0, $t4, 9
	vinsgr2vr.b	$vr0, $t5, 10
	vinsgr2vr.b	$vr0, $t6, 11
	vinsgr2vr.b	$vr0, $t7, 12
	vinsgr2vr.b	$vr0, $t8, 13
	vinsgr2vr.b	$vr0, $ra, 14
	vinsgr2vr.b	$vr0, $a3, 15
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB10_40
# %bb.41:                               # %middle.block312
	addi.d	$s4, $sp, 192
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_51
# %bb.42:                               # %vec.epilog.iter.check316
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $a1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_31
.LBB10_43:                              # %.lr.ph168.preheader
	add.d	$a0, $s4, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_44:                              # %.lr.ph168
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s8, $a2
	ld.b	$a2, $a2, 754
	st.b	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_44
	b	.LBB10_51
.LBB10_45:                              # %vector.body280.preheader
	addi.d	$a0, $sp, 192
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_46:                              # %vector.body280
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vbsrl.v	$vr1, $vr0, 14
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vbsrl.v	$vr2, $vr0, 12
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vsllwil.du.wu	$vr2, $vr2, 0
	vbsrl.v	$vr3, $vr0, 10
	vsllwil.hu.bu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.du.wu	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr0, 8
	vsllwil.hu.bu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vsrli.d	$vr5, $vr0, 48
	vsllwil.hu.bu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vsrli.d	$vr6, $vr0, 32
	vsllwil.hu.bu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.b	$vr7, $vr0, 14
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	vpickve2gr.d	$a2, $vr0, 0
	addi.d	$a3, $s8, 526
	vpickve2gr.d	$a4, $vr0, 1
	vpickve2gr.d	$a5, $vr7, 0
	vpickve2gr.d	$a6, $vr7, 1
	vpickve2gr.d	$a7, $vr6, 0
	vpickve2gr.d	$t0, $vr6, 1
	vpickve2gr.d	$t1, $vr5, 0
	vpickve2gr.d	$t2, $vr5, 1
	vpickve2gr.d	$t3, $vr4, 0
	vpickve2gr.d	$t4, $vr4, 1
	vpickve2gr.d	$t5, $vr3, 0
	vpickve2gr.d	$t6, $vr3, 1
	vpickve2gr.d	$t7, $vr2, 0
	vpickve2gr.d	$t8, $vr2, 1
	vpickve2gr.d	$s4, $vr1, 0
	vpickve2gr.d	$ra, $vr1, 1
	ldx.b	$a2, $a3, $a2
	ldx.b	$a4, $a3, $a4
	ldx.b	$a5, $a3, $a5
	ldx.b	$a6, $a3, $a6
	ldx.b	$a7, $a3, $a7
	ldx.b	$t0, $a3, $t0
	ldx.b	$t1, $a3, $t1
	ldx.b	$t2, $a3, $t2
	ldx.b	$t3, $a3, $t3
	ldx.b	$t4, $a3, $t4
	ldx.b	$t5, $a3, $t5
	ldx.b	$t6, $a3, $t6
	ldx.b	$t7, $a3, $t7
	ldx.b	$t8, $a3, $t8
	ldx.b	$s4, $a3, $s4
	ldx.b	$a3, $a3, $ra
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $a4, 1
	vinsgr2vr.b	$vr0, $a5, 2
	vinsgr2vr.b	$vr0, $a6, 3
	vinsgr2vr.b	$vr0, $a7, 4
	vinsgr2vr.b	$vr0, $t0, 5
	vinsgr2vr.b	$vr0, $t1, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t3, 8
	vinsgr2vr.b	$vr0, $t4, 9
	vinsgr2vr.b	$vr0, $t5, 10
	vinsgr2vr.b	$vr0, $t6, 11
	vinsgr2vr.b	$vr0, $t7, 12
	vinsgr2vr.b	$vr0, $t8, 13
	vinsgr2vr.b	$vr0, $s4, 14
	vinsgr2vr.b	$vr0, $a3, 15
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB10_46
# %bb.47:                               # %middle.block284
	addi.d	$s4, $sp, 192
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_51
# %bb.48:                               # %vec.epilog.iter.check288
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $a1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_36
.LBB10_49:                              # %.lr.ph170.preheader
	add.d	$a0, $s4, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_50:                              # %.lr.ph170
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s8, $a2
	ld.b	$a2, $a2, 526
	st.b	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_50
	.p2align	4, , 16
.LBB10_51:                              # %.loopexit148
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$a0, $s5, $a0
	add.d	$a0, $s8, $a0
	ld.bu	$a0, $a0, 1210
	beqz	$a0, .LBB10_59
# %bb.52:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	lu12i.w	$s5, 196608
	bge	$a1, $a0, .LBB10_78
# %bb.53:                               # %iter.check239
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ori	$a3, $zero, 7
	bltu	$a2, $a3, .LBB10_70
# %bb.54:                               # %vector.main.loop.iter.check241
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB10_66
# %bb.55:
	move	$a2, $zero
.LBB10_56:                              # %vec.epilog.ph256
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB10_57:                              # %vec.epilog.vector.body260
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	srli.d	$a3, $a2, 56
	bstrpick.d	$a4, $a2, 55, 48
	bstrpick.d	$a5, $a2, 47, 40
	bstrpick.d	$a6, $a2, 39, 32
	bstrpick.d	$a7, $a2, 31, 24
	bstrpick.d	$t0, $a2, 23, 16
	bstrpick.d	$t1, $a2, 15, 8
	andi	$a2, $a2, 255
	addi.d	$t2, $s8, 754
	ldx.b	$a2, $t2, $a2
	ldx.b	$t1, $t2, $t1
	ldx.b	$t0, $t2, $t0
	ldx.b	$a7, $t2, $a7
	ldx.b	$a6, $t2, $a6
	ldx.b	$a5, $t2, $a5
	ldx.b	$a4, $t2, $a4
	ldx.b	$a3, $t2, $a3
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $t1, 1
	vinsgr2vr.b	$vr0, $t0, 2
	vinsgr2vr.b	$vr0, $a7, 3
	vinsgr2vr.b	$vr0, $a6, 4
	vinsgr2vr.b	$vr0, $a5, 5
	vinsgr2vr.b	$vr0, $a4, 6
	vinsgr2vr.b	$vr0, $a3, 7
	vstelm.d	$vr0, $a1, 0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB10_57
# %bb.58:                               # %vec.epilog.middle.block265
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB10_70
	b	.LBB10_78
.LBB10_59:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	lu12i.w	$s5, 196608
	bge	$a1, $a0, .LBB10_78
# %bb.60:                               # %iter.check
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ori	$a3, $zero, 7
	bltu	$a2, $a3, .LBB10_76
# %bb.61:                               # %vector.main.loop.iter.check
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB10_72
# %bb.62:
	move	$a2, $zero
.LBB10_63:                              # %vec.epilog.ph
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB10_64:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	srli.d	$a3, $a2, 56
	bstrpick.d	$a4, $a2, 55, 48
	bstrpick.d	$a5, $a2, 47, 40
	bstrpick.d	$a6, $a2, 39, 32
	bstrpick.d	$a7, $a2, 31, 24
	bstrpick.d	$t0, $a2, 23, 16
	bstrpick.d	$t1, $a2, 15, 8
	andi	$a2, $a2, 255
	addi.d	$t2, $s8, 526
	ldx.b	$a2, $t2, $a2
	ldx.b	$t1, $t2, $t1
	ldx.b	$t0, $t2, $t0
	ldx.b	$a7, $t2, $a7
	ldx.b	$a6, $t2, $a6
	ldx.b	$a5, $t2, $a5
	ldx.b	$a4, $t2, $a4
	ldx.b	$a3, $t2, $a3
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $t1, 1
	vinsgr2vr.b	$vr0, $t0, 2
	vinsgr2vr.b	$vr0, $a7, 3
	vinsgr2vr.b	$vr0, $a6, 4
	vinsgr2vr.b	$vr0, $a5, 5
	vinsgr2vr.b	$vr0, $a4, 6
	vinsgr2vr.b	$vr0, $a3, 7
	vstelm.d	$vr0, $a1, 0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB10_64
# %bb.65:                               # %vec.epilog.middle.block
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB10_76
	b	.LBB10_78
.LBB10_66:                              # %vector.body245.preheader
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_67:                              # %vector.body245
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vbsrl.v	$vr1, $vr0, 14
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vbsrl.v	$vr2, $vr0, 12
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vsllwil.du.wu	$vr2, $vr2, 0
	vbsrl.v	$vr3, $vr0, 10
	vsllwil.hu.bu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.du.wu	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr0, 8
	vsllwil.hu.bu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vsrli.d	$vr5, $vr0, 48
	vsllwil.hu.bu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vsrli.d	$vr6, $vr0, 32
	vsllwil.hu.bu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.b	$vr7, $vr0, 14
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	vpickve2gr.d	$a2, $vr0, 0
	addi.d	$a3, $s8, 754
	vpickve2gr.d	$a4, $vr0, 1
	vpickve2gr.d	$a5, $vr7, 0
	vpickve2gr.d	$a6, $vr7, 1
	vpickve2gr.d	$a7, $vr6, 0
	vpickve2gr.d	$t0, $vr6, 1
	vpickve2gr.d	$t1, $vr5, 0
	vpickve2gr.d	$t2, $vr5, 1
	vpickve2gr.d	$t3, $vr4, 0
	vpickve2gr.d	$t4, $vr4, 1
	vpickve2gr.d	$t5, $vr3, 0
	vpickve2gr.d	$t6, $vr3, 1
	vpickve2gr.d	$t7, $vr2, 0
	vpickve2gr.d	$t8, $vr2, 1
	vpickve2gr.d	$s4, $vr1, 0
	vpickve2gr.d	$s5, $vr1, 1
	ldx.b	$a2, $a3, $a2
	ldx.b	$a4, $a3, $a4
	ldx.b	$a5, $a3, $a5
	ldx.b	$a6, $a3, $a6
	ldx.b	$a7, $a3, $a7
	ldx.b	$t0, $a3, $t0
	ldx.b	$t1, $a3, $t1
	ldx.b	$t2, $a3, $t2
	ldx.b	$t3, $a3, $t3
	ldx.b	$t4, $a3, $t4
	ldx.b	$t5, $a3, $t5
	ldx.b	$t6, $a3, $t6
	ldx.b	$t7, $a3, $t7
	ldx.b	$t8, $a3, $t8
	ldx.b	$s4, $a3, $s4
	ldx.b	$a3, $a3, $s5
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $a4, 1
	vinsgr2vr.b	$vr0, $a5, 2
	vinsgr2vr.b	$vr0, $a6, 3
	vinsgr2vr.b	$vr0, $a7, 4
	vinsgr2vr.b	$vr0, $t0, 5
	vinsgr2vr.b	$vr0, $t1, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t3, 8
	vinsgr2vr.b	$vr0, $t4, 9
	vinsgr2vr.b	$vr0, $t5, 10
	vinsgr2vr.b	$vr0, $t6, 11
	vinsgr2vr.b	$vr0, $t7, 12
	vinsgr2vr.b	$vr0, $t8, 13
	vinsgr2vr.b	$vr0, $s4, 14
	vinsgr2vr.b	$vr0, $a3, 15
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB10_67
# %bb.68:                               # %middle.block250
	addi.d	$s4, $sp, 192
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	lu12i.w	$s5, 196608
	beq	$a0, $a1, .LBB10_78
# %bb.69:                               # %vec.epilog.iter.check254
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	bnez	$a3, .LBB10_56
.LBB10_70:                              # %.lr.ph174.preheader
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_71:                              # %.lr.ph174
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s8, $a2
	ld.b	$a2, $a2, 754
	st.b	$a2, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_71
	b	.LBB10_78
.LBB10_72:                              # %vector.body.preheader
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_73:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vbsrl.v	$vr1, $vr0, 14
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vbsrl.v	$vr2, $vr0, 12
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vsllwil.du.wu	$vr2, $vr2, 0
	vbsrl.v	$vr3, $vr0, 10
	vsllwil.hu.bu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.du.wu	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr0, 8
	vsllwil.hu.bu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vsrli.d	$vr5, $vr0, 48
	vsllwil.hu.bu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vsrli.d	$vr6, $vr0, 32
	vsllwil.hu.bu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.b	$vr7, $vr0, 14
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	vpickve2gr.d	$a2, $vr0, 0
	addi.d	$a3, $s8, 526
	vpickve2gr.d	$a4, $vr0, 1
	vpickve2gr.d	$a5, $vr7, 0
	vpickve2gr.d	$a6, $vr7, 1
	vpickve2gr.d	$a7, $vr6, 0
	vpickve2gr.d	$t0, $vr6, 1
	vpickve2gr.d	$t1, $vr5, 0
	vpickve2gr.d	$t2, $vr5, 1
	vpickve2gr.d	$t3, $vr4, 0
	vpickve2gr.d	$t4, $vr4, 1
	vpickve2gr.d	$t5, $vr3, 0
	vpickve2gr.d	$t6, $vr3, 1
	vpickve2gr.d	$t7, $vr2, 0
	vpickve2gr.d	$t8, $vr2, 1
	vpickve2gr.d	$s4, $vr1, 0
	vpickve2gr.d	$s5, $vr1, 1
	ldx.b	$a2, $a3, $a2
	ldx.b	$a4, $a3, $a4
	ldx.b	$a5, $a3, $a5
	ldx.b	$a6, $a3, $a6
	ldx.b	$a7, $a3, $a7
	ldx.b	$t0, $a3, $t0
	ldx.b	$t1, $a3, $t1
	ldx.b	$t2, $a3, $t2
	ldx.b	$t3, $a3, $t3
	ldx.b	$t4, $a3, $t4
	ldx.b	$t5, $a3, $t5
	ldx.b	$t6, $a3, $t6
	ldx.b	$t7, $a3, $t7
	ldx.b	$t8, $a3, $t8
	ldx.b	$s4, $a3, $s4
	ldx.b	$a3, $a3, $s5
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $a4, 1
	vinsgr2vr.b	$vr0, $a5, 2
	vinsgr2vr.b	$vr0, $a6, 3
	vinsgr2vr.b	$vr0, $a7, 4
	vinsgr2vr.b	$vr0, $t0, 5
	vinsgr2vr.b	$vr0, $t1, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t3, 8
	vinsgr2vr.b	$vr0, $t4, 9
	vinsgr2vr.b	$vr0, $t5, 10
	vinsgr2vr.b	$vr0, $t6, 11
	vinsgr2vr.b	$vr0, $t7, 12
	vinsgr2vr.b	$vr0, $t8, 13
	vinsgr2vr.b	$vr0, $s4, 14
	vinsgr2vr.b	$vr0, $a3, 15
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB10_73
# %bb.74:                               # %middle.block
	addi.d	$s4, $sp, 192
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	lu12i.w	$s5, 196608
	beq	$a0, $a1, .LBB10_78
# %bb.75:                               # %vec.epilog.iter.check
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	bnez	$a3, .LBB10_63
.LBB10_76:                              # %.lr.ph178.preheader
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_77:                              # %.lr.ph178
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s8, $a2
	ld.b	$a2, $a2, 526
	st.b	$a2, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_77
	.p2align	4, , 16
.LBB10_78:                              # %.loopexit
	ld.w	$a0, $s6, 0
	ori	$a1, $zero, 120
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s7, $a0
	addi.d	$a1, $sp, 192
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 0
	ori	$a1, $zero, 8
	blt	$a1, $a0, .LBB10_8
.LBB10_79:
	ld.bu	$a0, $s0, 19
	andi	$a0, $a0, 64
	beqz	$a0, .LBB10_8
# %bb.80:
	ld.d	$s0, $s0, 0
	bnez	$fp, .LBB10_15
	b	.LBB10_16
.LBB10_81:
	lu12i.w	$a0, 196608
	and	$a2, $a1, $a0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	beqz	$a3, .LBB10_84
# %bb.82:
	slli.d	$a2, $a2, 35
	bnez	$a2, .LBB10_85
.LBB10_83:
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 192
	add.d	$a0, $s8, $a0
	ld.b	$a0, $a0, 754
	st.b	$a0, $sp, 192
	b	.LBB10_7
.LBB10_84:
	beqz	$a2, .LBB10_108
.LBB10_85:
	slli.d	$a1, $a1, 33
	bgez	$a1, .LBB10_12
# %bb.86:                               # %.lr.ph161
	lu12i.w	$a1, 131072
	move	$a2, $s0
	beqz	$fp, .LBB10_90
# %bb.87:                               # %.lr.ph161.split
	bnez	$s3, .LBB10_97
	b	.LBB10_104
.LBB10_88:                              #   in Loop: Header=BB10_90 Depth=1
	beqz	$a4, .LBB10_108
.LBB10_89:                              # %.backedge.us
                                        #   in Loop: Header=BB10_90 Depth=1
	slli.d	$a3, $a3, 33
	bgez	$a3, .LBB10_12
.LBB10_90:                              # %.lr.ph161.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a2, 16
	and	$a4, $a3, $a0
	beq	$a4, $a0, .LBB10_89
# %bb.91:                               #   in Loop: Header=BB10_90 Depth=1
	beqz	$s3, .LBB10_93
# %bb.92:                               #   in Loop: Header=BB10_90 Depth=1
	ld.h	$a5, $s3, 16
	srl.d	$a5, $a3, $a5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB10_89
.LBB10_93:                              #   in Loop: Header=BB10_90 Depth=1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	beqz	$a5, .LBB10_88
# %bb.94:                               #   in Loop: Header=BB10_90 Depth=1
	bne	$a4, $a1, .LBB10_89
	b	.LBB10_83
.LBB10_95:                              #   in Loop: Header=BB10_97 Depth=1
	beqz	$a4, .LBB10_108
.LBB10_96:                              # %.backedge
                                        #   in Loop: Header=BB10_97 Depth=1
	slli.d	$a3, $a3, 33
	bgez	$a3, .LBB10_12
.LBB10_97:                              # %.lr.ph161.split.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a2, 16
	and	$a4, $a3, $a0
	beq	$a4, $a0, .LBB10_96
# %bb.98:                               #   in Loop: Header=BB10_97 Depth=1
	ld.h	$a5, $fp, 16
	srl.d	$a5, $a3, $a5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB10_96
# %bb.99:                               #   in Loop: Header=BB10_97 Depth=1
	ld.h	$a5, $s3, 16
	srl.d	$a5, $a3, $a5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB10_96
# %bb.100:                              #   in Loop: Header=BB10_97 Depth=1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	beqz	$a5, .LBB10_95
# %bb.101:                              #   in Loop: Header=BB10_97 Depth=1
	bne	$a4, $a1, .LBB10_96
	b	.LBB10_83
.LBB10_102:                             #   in Loop: Header=BB10_104 Depth=1
	beqz	$a4, .LBB10_108
.LBB10_103:                             # %.backedge.us165
                                        #   in Loop: Header=BB10_104 Depth=1
	slli.d	$a3, $a3, 33
	bgez	$a3, .LBB10_12
.LBB10_104:                             # %.lr.ph161.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a2, 16
	and	$a4, $a3, $a0
	beq	$a4, $a0, .LBB10_103
# %bb.105:                              #   in Loop: Header=BB10_104 Depth=1
	ld.h	$a5, $fp, 16
	srl.d	$a5, $a3, $a5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB10_103
# %bb.106:                              #   in Loop: Header=BB10_104 Depth=1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	beqz	$a5, .LBB10_102
# %bb.107:                              #   in Loop: Header=BB10_104 Depth=1
	bne	$a4, $a1, .LBB10_103
	b	.LBB10_83
.LBB10_108:
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	b	.LBB10_7
.Lfunc_end10:
	.size	save_root_cap, .Lfunc_end10-save_root_cap
                                        # -- End function
	.globl	askmode                         # -- Begin function askmode
	.p2align	5
	.type	askmode,@function
askmode:                                # @askmode
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fflag)
	ld.d	$a0, $a0, %got_pc_lo12(fflag)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB11_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(askfilename)
	ld.d	$fp, $a0, %got_pc_lo12(askfilename)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(freopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_39
.LBB11_2:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(contextoffset)
	ld.d	$s6, $a0, %got_pc_lo12(contextoffset)
	st.w	$zero, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s7, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s8, $a0, %got_pc_lo12(stdin)
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s4, $a0, %got_pc_lo12(contextbufs)
	lu12i.w	$s2, 1
	ori	$s0, $zero, 0
	lu32i.d	$s0, -1
	ori	$fp, $zero, 10
	add.d	$a0, $s4, $s2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s1, $a0, %got_pc_lo12(hashheader)
	addi.w	$s5, $zero, -1
	ori	$a0, $s2, 4095
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI11_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI11_0)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$a0, $a0, %got_pc_lo12(math_mode)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_11 Depth 2
                                        #     Child Loop BB11_34 Depth 2
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.d	$a2, $s8, 0
	beqz	$a0, .LBB11_5
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_6
	b	.LBB11_38
	.p2align	4, , 16
.LBB11_5:                               #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(xgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_38
.LBB11_6:                               #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	slli.d	$a0, $a0, 32
	add.d	$a0, $a0, $s0
	srai.d	$a0, $a0, 32
	ldx.bu	$a0, $s4, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beq	$a0, $fp, .LBB11_9
# %bb.7:                                #   in Loop: Header=BB11_3 Depth=1
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 4095
	beq	$a0, $a1, .LBB11_10
.LBB11_8:                               # %.critedge
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB11_18
	b	.LBB11_22
	.p2align	4, , 16
.LBB11_9:                               #   in Loop: Header=BB11_3 Depth=1
	addi.w	$s3, $s3, -1
	stx.b	$zero, $s4, $s3
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 4095
	bne	$a0, $a1, .LBB11_8
.LBB11_10:                              #   in Loop: Header=BB11_3 Depth=1
	move	$fp, $s0
	move	$s0, $s6
	move	$s6, $s7
	ori	$a0, $zero, 4094
	ldx.bu	$a0, $s4, $a0
	ori	$s3, $zero, 4095
	move	$s7, $s2
	move	$s4, $s2
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_11:                              #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a0, 255
	add.d	$a0, $s1, $a0
	ld.bu	$a1, $a0, 982
	bnez	$a1, .LBB11_14
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=2
	ld.bu	$a1, $a0, 1666
	bnez	$a1, .LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_11 Depth=2
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB11_17
	.p2align	4, , 16
.LBB11_14:                              # %.critedge2
                                        #   in Loop: Header=BB11_11 Depth=2
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB11_17
# %bb.15:                               #   in Loop: Header=BB11_11 Depth=2
	st.b	$a0, $s2, -1
	st.b	$zero, $s2, 0
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 1
	bnez	$s4, .LBB11_11
# %bb.16:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
.LBB11_17:                              # %.critedge
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s2, $s7
	move	$s7, $s6
	move	$s6, $s0
	move	$s0, $fp
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ori	$fp, $zero, 10
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB11_22
.LBB11_18:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(checkline)
	jirl	$ra, $ra, 0
.LBB11_19:                              #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -10
	sltui	$a1, $a1, 1
	add.d	$a0, $a0, $s3
	masknez	$a0, $a0, $a1
	st.w	$a0, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(sflag)
	ld.d	$a0, $a0, %got_pc_lo12(sflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB11_3
# %bb.20:                               #   in Loop: Header=BB11_3 Depth=1
	pcaddu18i	$ra, %call36(stop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB11_3
# %bb.21:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(askfilename)
	ld.d	$a0, $a0, %got_pc_lo12(askfilename)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 438
	pcaddu18i	$ra, %call36(creat)
	jirl	$ra, $ra, 0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_22:                              #   in Loop: Header=BB11_3 Depth=1
	ld.bu	$a0, $s4, 0
	addi.d	$a0, $a0, -33
	ori	$a1, $zero, 93
	bltu	$a1, $a0, .LBB11_18
# %bb.23:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB11_24:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 0
	addi.d	$a1, $a1, -42
	sltui	$a2, $a1, 1
	ori	$a1, $zero, 184
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	b	.LBB11_19
.LBB11_25:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	b	.LBB11_19
.LBB11_26:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	b	.LBB11_19
.LBB11_27:                              #   in Loop: Header=BB11_3 Depth=1
	pcaddu18i	$ra, %call36(treeoutput)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	b	.LBB11_19
.LBB11_28:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	ori	$a2, $zero, 6
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_36
# %bb.29:                               #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a0, $s4, 1
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	b	.LBB11_37
.LBB11_30:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(tflag)
	ld.d	$a0, $a0, %got_pc_lo12(tflag)
	st.w	$zero, $a0, 0
	b	.LBB11_19
.LBB11_31:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s4
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	b	.LBB11_19
.LBB11_32:                              #   in Loop: Header=BB11_3 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(findfiletype)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(defdupchar)
	ld.d	$a1, $a1, %got_pc_lo12(defdupchar)
	st.w	$a0, $a1, 0
	b	.LBB11_19
.LBB11_33:                              # %.preheader.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_34:                              # %.preheader
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a0, 1
	st.b	$a1, $a0, -1
	move	$a0, $a2
	bnez	$a1, .LBB11_34
# %bb.35:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 0
	addi.d	$s3, $s3, -1
	b	.LBB11_18
.LBB11_36:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $zero
.LBB11_37:                              #   in Loop: Header=BB11_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(tflag)
	ld.d	$a1, $a1, %got_pc_lo12(tflag)
	st.w	$a0, $a1, 0
	b	.LBB11_19
.LBB11_38:
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB11_39:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	askmode, .Lfunc_end11-askmode
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_26-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_27-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_25-.LJTI11_0
	.word	.LBB11_31-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_24-.LJTI11_0
	.word	.LBB11_28-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_30-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_24-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_33-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_32-.LJTI11_0
                                        # -- End function
	.text
	.globl	copyout                         # -- Begin function copyout
	.p2align	5
	.type	copyout,@function
copyout:                                # @copyout
# %bb.0:
	blez	$a1, .LBB12_7
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	addi.d	$s0, $a1, 1
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$s1, $a0, %got_pc_lo12(aflag)
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$s2, $a0, %got_pc_lo12(lflag)
	ori	$s3, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(outfile)
	ld.d	$s4, $a0, %got_pc_lo12(outfile)
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$s0, $s0, -1
	st.d	$a2, $fp, 0
	bgeu	$s3, $s0, .LBB12_6
.LBB12_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $a2, 0
	beqz	$a0, .LBB12_6
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a1, $s1, 0
	ld.w	$a3, $s2, 0
	or	$a1, $a1, $a3
	bnez	$a1, .LBB12_2
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	b	.LBB12_2
.LBB12_6:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB12_7:                               # %._crit_edge
	ret
.Lfunc_end12:
	.size	copyout, .Lfunc_end12-copyout
                                        # -- End function
	.p2align	5                               # -- Begin function show_char
	.type	show_char,@function
show_char:                              # @show_char
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.bu	$s2, $a0, 0
	move	$s3, $a3
	move	$s1, $a2
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s5, $a1, %got_pc_lo12(hashheader)
	add.d	$a1, $s5, $s2
	ld.bu	$a1, $a1, 1894
	ori	$s4, $zero, 1
	beqz	$a1, .LBB13_4
# %bb.1:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	blez	$a0, .LBB13_3
# %bb.2:
	pcalau12i	$a1, %got_pc_hi20(laststringch)
	ld.d	$a1, $a1, %got_pc_lo12(laststringch)
	ld.bu	$a1, $a1, 0
	xori	$a1, $a1, 128
	move	$s4, $a0
.LBB13_3:                               # %.critedge
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB13_10
	b	.LBB13_5
.LBB13_4:
	move	$a1, $s2
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB13_10
.LBB13_5:
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB13_10
# %bb.6:
	add.d	$a0, $s5, $a1
	ld.bu	$a0, $a0, 982
	beqz	$a0, .LBB13_10
# %bb.7:
	beqz	$s1, .LBB13_9
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB13_9:
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 0
	ori	$s0, $zero, 1
	b	.LBB13_26
.LBB13_10:
	ori	$a0, $zero, 9
	bne	$s2, $a0, .LBB13_14
# %bb.11:
	beqz	$s1, .LBB13_13
# %bb.12:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB13_13:
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 0
	andi	$a0, $s0, 7
	ori	$a1, $zero, 8
	sub.d	$s0, $a1, $a0
	b	.LBB13_26
.LBB13_14:
	sltui	$a0, $s3, 1
	slt	$a1, $s4, $s3
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$s2, $a0, $a1
	blez	$s2, .LBB13_23
# %bb.15:                               # %.lr.ph
	beqz	$s1, .LBB13_24
# %bb.16:                               # %.lr.ph.split.split.split.preheader
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	move	$s0, $zero
	ori	$s4, $zero, 32
	ori	$s5, $zero, 63
	ori	$s6, $zero, 127
	b	.LBB13_18
	.p2align	4, , 16
.LBB13_17:                              #   in Loop: Header=BB13_18 Depth=1
	addi.d	$a0, $s1, -127
	sltui	$s7, $a0, 1
	ori	$a0, $zero, 94
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 64
	ld.d	$a1, $s3, 0
	masknez	$a0, $a0, $s7
	maskeqz	$a2, $s5, $s7
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	addi.w	$s2, $s2, -1
	add.w	$s0, $s0, $a0
	beqz	$s2, .LBB13_26
.LBB13_18:                              # %.lr.ph.split.split.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, 0
	ld.b	$a0, $a0, 0
	andi	$s1, $a0, 255
	bgez	$a0, .LBB13_20
# %bb.19:                               #   in Loop: Header=BB13_18 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 77
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 45
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 2
	andi	$s1, $s1, 127
.LBB13_20:                              #   in Loop: Header=BB13_18 Depth=1
	ld.d	$a1, $s3, 0
	bltu	$s1, $s4, .LBB13_17
# %bb.21:                               #   in Loop: Header=BB13_18 Depth=1
	beq	$s1, $s6, .LBB13_17
# %bb.22:                               #   in Loop: Header=BB13_18 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.w	$s2, $s2, -1
	add.w	$s0, $s0, $a0
	bnez	$s2, .LBB13_18
	b	.LBB13_26
.LBB13_23:
	move	$s0, $zero
	b	.LBB13_26
.LBB13_24:                              # %.lr.ph.split.us.preheader
	ld.d	$a0, $fp, 0
	move	$s0, $zero
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB13_25:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.b	$a1, $a0, -1
	andi	$a2, $a1, 255
	slti	$a3, $a1, 0
	addi.d	$a4, $s0, 2
	andi	$a1, $a1, 127
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	masknez	$a2, $s0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	sltui	$a3, $a1, 32
	addi.d	$a1, $a1, -127
	sltui	$a1, $a1, 1
	or	$a1, $a3, $a1
	add.d	$a1, $a1, $a2
	addi.w	$s0, $a1, 1
	addi.w	$s2, $s2, -1
	addi.d	$a0, $a0, 1
	bnez	$s2, .LBB13_25
.LBB13_26:                              # %.loopexit
	move	$a0, $s0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end13:
	.size	show_char, .Lfunc_end13-show_char
                                        # -- End function
	.p2align	5                               # -- Begin function ins_cap
	.type	ins_cap,@function
ins_cap:                                # @ins_cap
# %bb.0:
	addi.d	$sp, $sp, -1344
	st.d	$ra, $sp, 1336                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1256                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB14_20
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	ld.w	$s2, $a0, 0
	st.w	$zero, $sp, 1252
	blez	$s2, .LBB14_20
# %bb.2:                                # %.lr.ph.preheader.i
	move	$s0, $a1
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(hits)
	ld.d	$a1, $a1, %got_pc_lo12(hits)
	add.d	$a0, $a0, $a1
	addi.d	$s3, $a0, -8
	addi.d	$s4, $sp, 1252
	addi.d	$s5, $sp, 52
	ori	$s6, $zero, 2
	ori	$s7, $zero, 10
	.p2align	4, , 16
.LBB14_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $s3, -8
	beqz	$a7, .LBB14_6
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	ld.h	$a2, $a7, 18
	ld.h	$a3, $a7, 20
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB14_7
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	ld.h	$a4, $a0, 18
	ld.h	$a5, $a0, 20
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a3, $zero
	move	$a2, $zero
	ld.d	$a0, $s3, 0
	bnez	$a0, .LBB14_5
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a5, $zero
	move	$a4, $zero
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a6, $s3, -16
	st.d	$s4, $sp, 16
	st.d	$s5, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 1252
	bltu	$s2, $s6, .LBB14_10
# %bb.9:                                #   in Loop: Header=BB14_3 Depth=1
	addi.d	$s3, $s3, -24
	addi.d	$s2, $s2, -1
	blt	$s1, $s7, .LBB14_3
.LBB14_10:                              # %save_cap.exit
	blez	$s1, .LBB14_20
# %bb.11:                               # %.lr.ph.preheader
	ori	$s2, $zero, 120
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$s4, $a0, %got_pc_lo12(pcount)
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$s5, $a0, %got_pc_lo12(possibilities)
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$s6, $a0, %got_pc_lo12(maxposslen)
	move	$s8, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_12:                              # %insert.exit
                                        #   in Loop: Header=BB14_14 Depth=1
	ori	$a0, $zero, 98
	blt	$a0, $s3, .LBB14_22
.LBB14_13:                              # %insert.exit.thread
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$s8, $s8, 1
	beq	$s8, $s1, .LBB14_20
.LBB14_14:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_16 Depth 2
	mul.d	$a0, $s8, $s2
	addi.d	$a1, $sp, 52
	add.d	$a0, $a1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s4, 0
	move	$fp, $a0
	blez	$s3, .LBB14_18
# %bb.15:                               # %.lr.ph.preheader.i8
                                        #   in Loop: Header=BB14_14 Depth=1
	move	$s0, $s5
	move	$s7, $s3
	.p2align	4, , 16
.LBB14_16:                              # %.lr.ph.i9
                                        #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_13
# %bb.17:                               #   in Loop: Header=BB14_16 Depth=2
	addi.d	$s7, $s7, -1
	addi.d	$s0, $s0, 120
	bnez	$s7, .LBB14_16
.LBB14_18:                              # %._crit_edge.i
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$a0, $s3, 1
	st.w	$a0, $s4, 0
	mul.d	$a0, $s3, $s2
	add.d	$a0, $s5, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB14_12
# %bb.19:                               #   in Loop: Header=BB14_14 Depth=1
	st.w	$a0, $s6, 0
	b	.LBB14_12
.LBB14_20:
	move	$a0, $zero
.LBB14_21:                              # %._crit_edge
	ld.d	$s8, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1336                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1344
	ret
.LBB14_22:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB14_21
.Lfunc_end14:
	.size	ins_cap, .Lfunc_end14-ins_cap
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Whenever a word is found that is not in the dictionary,\r\n"
	.size	.L.str, 58

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"it is printed on the first line of the screen.  If the dictionary\r\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"contains any similar words, they are listed with a number\r\n"
	.size	.L.str.2, 60

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"next to each one.  You have the option of replacing the word\r\n"
	.size	.L.str.3, 63

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"completely, or choosing one of the suggested words.\r\n"
	.size	.L.str.4, 54

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\r\nCommands are:\r\n\r\n"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"R       Replace the misspelled word completely.\r\n"
	.size	.L.str.7, 50

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Space   Accept the word this time only.\r\n"
	.size	.L.str.8, 42

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"A       Accept the word for the rest of this session.\r\n"
	.size	.L.str.9, 56

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"I       Accept the word, and put it in your private dictionary.\r\n"
	.size	.L.str.10, 66

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"U       Accept and add lowercase version to private dictionary.\r\n"
	.size	.L.str.11, 66

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"0-n     Replace with one of the suggested words.\r\n"
	.size	.L.str.12, 51

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"L       Look up words in system dictionary.\r\n"
	.size	.L.str.13, 46

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"X       Write the rest of this file, ignoring misspellings,\r\n        and start next file.\r\n"
	.size	.L.str.14, 92

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Q       Quit immediately.  Asks for confirmation.\r\n        Leaves file unchanged.\r\n"
	.size	.L.str.15, 84

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"!       Shell escape.\r\n"
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"^L      Redraw screen.\r\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"^Z      Suspend program.\r\n"
	.size	.L.str.18, 27

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"?       Show this help screen.\r\n"
	.size	.L.str.19, 33

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\r\n\r\n"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"-- Type space to continue --"
	.size	.L.str.21, 29

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"    %s"
	.size	.L.str.22, 7

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"              File: %s"
	.size	.L.str.23, 23

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" %s"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"[READONLY]"
	.size	.L.str.25, 11

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"??: %s"
	.size	.L.str.26, 7

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"0%d: %s"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%2d: %s"
	.size	.L.str.28, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Are you sure you want to throw away your changes? "
	.size	.L.str.30, 51

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%s "
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Replace with: "
	.size	.L.str.33, 15

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.34, 51

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/correct.c"
	.size	.L.str.35, 138

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%s"
	.size	.L.str.36, 3

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Lookup string ('*' is wildcard): "
	.size	.L.str.37, 34

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"w"
	.size	.L.str.38, 2

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Can't create %s\r\n"
	.size	.L.str.39, 18

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"nroff"
	.size	.L.str.41, 6

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"troff"
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"@(#) International Ispell Version 3.1.20 10/10/95"
	.size	.L.str.43, 50

	.type	lookharder.look,@object         # @lookharder.look
	.local	lookharder.look
	.comm	lookharder.look,1,4
	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%s %s %s"
	.size	.L.str.80, 9

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"look -df"
	.size	.L.str.81, 9

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"/usr/dict/words"
	.size	.L.str.82, 16

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	".*"
	.size	.L.str.83, 3

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%s ^%s$ %s"
	.size	.L.str.84, 11

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"/usr/bin/egrep -i"
	.size	.L.str.85, 18

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\r\n\r"
	.size	.Lstr, 4

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\r"
	.size	.Lstr.1, 79

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"\r"
	.size	.Lstr.4, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym posscmp
	.addrsig_sym contextbufs
	.addrsig_sym possibilities
