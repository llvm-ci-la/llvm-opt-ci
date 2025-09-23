	.file	"libclamav_rebuildpe.c"
	.text
	.globl	cli_rebuildpe                   # -- Begin function cli_rebuildpe
	.p2align	5
	.type	cli_rebuildpe,@function
cli_rebuildpe:                          # @cli_rebuildpe
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
	move	$fp, $a2
	move	$s7, $a0
	slli.d	$a0, $a2, 5
	alsl.d	$a2, $a2, $a0, 3
	addi.w	$a2, $a2, 456
	bstrpick.d	$t0, $a2, 62, 54
	add.w	$t0, $a2, $t0
	srli.d	$t0, $t0, 9
	andi	$a2, $a2, 504
	sltu	$a2, $zero, $a2
	add.w	$a2, $t0, $a2
	slli.d	$s6, $a2, 9
	ld.w	$s4, $a1, 0
	andi	$a2, $a2, 7
	sltu	$a2, $zero, $a2
	slli.d	$a2, $a2, 12
	add.w	$s5, $a2, $s6
	bstrins.d	$s5, $zero, 11, 0
	sltu	$a2, $s5, $s4
	bgeu	$s5, $s4, .LBB0_2
# %bb.1:
	alsl.w	$a0, $fp, $a0, 3
	addi.w	$a0, $a0, 496
	bstrpick.d	$t0, $a0, 62, 54
	add.w	$t0, $a0, $t0
	srli.d	$t0, $t0, 9
	andi	$a0, $a0, 504
	sltu	$a0, $zero, $a0
	add.w	$a0, $t0, $a0
	slli.d	$s6, $a0, 9
.LBB0_2:
	add.w	$s3, $fp, $a2
	ori	$a0, $zero, 96
	blt	$a0, $s3, .LBB0_23
# %bb.3:                                # %.preheader
	blez	$fp, .LBB0_6
# %bb.4:                                # %iter.check
	ori	$a0, $zero, 4
	bgeu	$fp, $a0, .LBB0_7
# %bb.5:
	move	$a0, $zero
	move	$a2, $zero
	b	.LBB0_16
.LBB0_6:
	move	$a2, $zero
	b	.LBB0_19
.LBB0_7:                                # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$fp, $a0, .LBB0_9
# %bb.8:
	move	$a0, $zero
	move	$a2, $zero
	b	.LBB0_13
.LBB0_9:                                # %vector.ph
	bstrpick.d	$a0, $fp, 30, 4
	slli.d	$a0, $a0, 4
	addi.d	$a2, $a1, 300
	xvrepli.b	$xr0, 0
	xvrepli.w	$xr1, 511
	xvldi	$xr2, -3838
	xvrepli.w	$xr3, -512
	move	$t0, $a0
	xvori.b	$xr4, $xr0, 0
	.p2align	4, , 16
.LBB0_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a2, -288
	ld.w	$t2, $a2, -252
	ld.w	$t3, $a2, -216
	ld.w	$t4, $a2, -180
	ld.w	$t5, $a2, -144
	ld.w	$t6, $a2, -108
	ld.w	$t7, $a2, -72
	ld.w	$t8, $a2, -36
	xvinsgr2vr.w	$xr5, $t1, 0
	xvinsgr2vr.w	$xr5, $t2, 1
	xvinsgr2vr.w	$xr5, $t3, 2
	xvinsgr2vr.w	$xr5, $t4, 3
	xvinsgr2vr.w	$xr5, $t5, 4
	xvinsgr2vr.w	$xr5, $t6, 5
	xvinsgr2vr.w	$xr5, $t7, 6
	xvinsgr2vr.w	$xr5, $t8, 7
	ld.w	$t1, $a2, 0
	ld.w	$t2, $a2, 36
	ld.w	$t3, $a2, 72
	ld.w	$t4, $a2, 108
	ld.w	$t5, $a2, 144
	ld.w	$t6, $a2, 180
	ld.w	$t7, $a2, 216
	ld.w	$t8, $a2, 252
	xvinsgr2vr.w	$xr6, $t1, 0
	xvinsgr2vr.w	$xr6, $t2, 1
	xvinsgr2vr.w	$xr6, $t3, 2
	xvinsgr2vr.w	$xr6, $t4, 3
	xvinsgr2vr.w	$xr6, $t5, 4
	xvinsgr2vr.w	$xr6, $t6, 5
	xvinsgr2vr.w	$xr6, $t7, 6
	xvinsgr2vr.w	$xr6, $t8, 7
	xvand.v	$xr7, $xr5, $xr1
	xvand.v	$xr8, $xr6, $xr1
	xvseqi.w	$xr7, $xr7, 0
	xvandn.v	$xr7, $xr7, $xr2
	xvseqi.w	$xr8, $xr8, 0
	xvandn.v	$xr8, $xr8, $xr2
	xvadd.w	$xr5, $xr7, $xr5
	xvadd.w	$xr6, $xr8, $xr6
	xvand.v	$xr5, $xr5, $xr3
	xvand.v	$xr6, $xr6, $xr3
	xvadd.w	$xr0, $xr5, $xr0
	xvadd.w	$xr4, $xr6, $xr4
	addi.d	$t0, $t0, -16
	addi.d	$a2, $a2, 576
	bnez	$t0, .LBB0_10
# %bb.11:                               # %middle.block
	xvadd.w	$xr0, $xr4, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a2, $xr0, 0
	beq	$a0, $fp, .LBB0_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$t0, $fp, 12
	beqz	$t0, .LBB0_16
.LBB0_13:                               # %vec.epilog.ph
	move	$t0, $a0
	bstrpick.d	$a0, $fp, 30, 2
	slli.d	$a0, $a0, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a2, 0
	sub.d	$a2, $t0, $a0
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 2
	add.d	$t0, $t0, $a1
	addi.d	$t0, $t0, 84
	vrepli.w	$vr1, 511
	vldi	$vr2, -3838
	vrepli.w	$vr3, -512
	.p2align	4, , 16
.LBB0_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $t0, -72
	ld.w	$t2, $t0, -36
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t0, 36
	vinsgr2vr.w	$vr4, $t1, 0
	vinsgr2vr.w	$vr4, $t2, 1
	vinsgr2vr.w	$vr4, $t3, 2
	vinsgr2vr.w	$vr4, $t4, 3
	vand.v	$vr5, $vr4, $vr1
	vseqi.w	$vr5, $vr5, 0
	vandn.v	$vr5, $vr5, $vr2
	vadd.w	$vr4, $vr5, $vr4
	vand.v	$vr4, $vr4, $vr3
	vadd.w	$vr0, $vr4, $vr0
	addi.d	$a2, $a2, 4
	addi.d	$t0, $t0, 144
	bnez	$a2, .LBB0_14
# %bb.15:                               # %vec.epilog.middle.block
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $fp, .LBB0_18
.LBB0_16:                               # %.lr.ph.preheader
	slli.d	$t0, $a0, 5
	alsl.d	$t0, $a0, $t0, 2
	add.d	$t0, $t0, $a1
	addi.d	$t0, $t0, 12
	sub.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t1, $t0, 0
	andi	$t2, $t1, 511
	sltu	$t2, $zero, $t2
	slli.d	$t2, $t2, 9
	add.d	$t1, $t2, $t1
	bstrpick.d	$t1, $t1, 31, 9
	slli.d	$t1, $t1, 9
	add.w	$a2, $t1, $a2
	addi.d	$a0, $a0, -1
	addi.d	$t0, $t0, 36
	bnez	$a0, .LBB0_17
.LBB0_18:                               # %._crit_edge
	addi.w	$a0, $a2, 0
	lu12i.w	$t0, 45056
	bltu	$t0, $a0, .LBB0_23
.LBB0_19:                               # %._crit_edge.thread
	move	$s1, $a4
	move	$s0, $a3
	move	$s8, $a5
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $a2, $s6
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_23
# %bb.20:
	move	$s2, $a0
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 328
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	andi	$a0, $s6, 3584
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 12
	add.w	$s7, $a0, $s6
	bstrins.d	$s7, $zero, 11, 0
	st.h	$s3, $s2, 214
	st.w	$s1, $s2, 248
	st.w	$s0, $s2, 260
	st.w	$s6, $s2, 292
	addi.d	$a0, $s2, 328
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s8, $s2, 344
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s2, 348
	addi.d	$s3, $s2, 456
	lu12i.w	$a3, -1
	bgeu	$s5, $s4, .LBB0_24
# %bb.21:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.h	$a1, $a0, 4
	ld.w	$a0, $a0, 0
	st.h	$a1, $s3, 4
	st.w	$a0, $s3, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	sub.d	$a1, $a1, $s7
	st.w	$a1, $s2, 464
	st.w	$s7, $s2, 468
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s2, 492
	ld.wu	$a1, $a0, 0
	addi.d	$s3, $s2, 496
	sub.d	$a2, $a1, $s7
	andi	$a1, $a1, 4095
	sltu	$a1, $zero, $a1
	slli.d	$a1, $a1, 12
	add.d	$a1, $a2, $a1
	move	$a2, $a3
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	add.d	$s7, $a1, $s7
	bgtz	$fp, .LBB0_25
.LBB0_22:
	move	$s5, $s2
	b	.LBB0_27
.LBB0_23:
	move	$a0, $zero
	b	.LBB0_28
.LBB0_24:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blez	$fp, .LBB0_22
.LBB0_25:                               # %.lr.ph119.preheader
	addi.d	$s1, $a0, 12
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -1
	lu32i.d	$s0, 0
	lu32i.d	$a3, 0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	move	$s5, $s2
	.p2align	4, , 16
.LBB0_26:                               # %.lr.ph119
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$s2, $a3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, -8
	st.w	$a0, $s3, 8
	ld.w	$a0, $s1, -12
	st.w	$a0, $s3, 12
	ld.w	$a0, $s1, 0
	st.w	$a0, $s3, 16
	st.w	$s6, $s3, 20
	st.w	$s0, $s3, 36
	ld.wu	$a1, $s1, -4
	ld.wu	$a2, $s1, 0
	bstrpick.d	$a0, $s6, 31, 0
	add.d	$a0, $s5, $a0
	add.d	$a1, $s8, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	ld.wu	$a0, $s1, 0
	andi	$a1, $a0, 511
	sltu	$a1, $zero, $a1
	slli.d	$a1, $a1, 9
	add.d	$a0, $a1, $a0
	ld.wu	$a1, $s1, -8
	bstrpick.d	$a0, $a0, 31, 9
	slli.d	$a0, $a0, 9
	add.w	$s6, $a0, $s6
	andi	$a0, $a1, 4095
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 12
	add.d	$a0, $a0, $a1
	and	$a0, $a0, $s2
	add.d	$s7, $a0, $s7
	addi.d	$s1, $s1, 36
	addi.d	$fp, $fp, -1
	addi.w	$s4, $s4, 1
	addi.d	$s3, $s3, 40
	bnez	$fp, .LBB0_26
.LBB0_27:                               # %._crit_edge120
	st.w	$s7, $s5, 288
	addi.w	$a2, $s6, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	sltu	$fp, $zero, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB0_28:
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
.Lfunc_end0:
	.size	cli_rebuildpe, .Lfunc_end0-cli_rebuildpe
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L.str:
	.asciz	"MZ\220\000\002\000\000\000\004\000\017\000\377\377\000\000\260\000\000\000\000\000\000\000@\000\032\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\320\000\000\000\016\037\264\t\272\r\000\315!\264L\315!This file was created by ClamAV for internal use and should not be run.\r\nClamAV - A GPL virus scanner - http://www.clamav.net\r\n$\000\000\000PE\000\000L\001\377\377CLAM\000\000\000\000\000\000\000\000\340\000\203\217\013\001\000\000\000\020\000\000\000\020\000\000\000\000\000\000\377\377\377\377\000\020\000\000\000\020\000\000\377\377\377\377\000\020\000\000\000\002\000\000\001\000\000\000\000\000\000\000\003\000\n\000\000\000\000\000\000\020\000\000\000\004\000\000\000\000\000\000\002\000\000\000\000\000\020\000\000\020\000\000\000\000\020\000\000\020\000\000\000\000\000\000\020\000\000\000"
	.size	.L.str, 329

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"empty"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".clam%.2d"
	.size	.L.str.2, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
