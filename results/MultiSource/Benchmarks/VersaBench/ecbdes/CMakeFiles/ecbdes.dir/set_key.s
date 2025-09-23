	.file	"set_key.c"
	.text
	.globl	des_set_odd_parity              # -- Begin function des_set_odd_parity
	.p2align	5
	.type	des_set_odd_parity,@function
des_set_odd_parity:                     # @des_set_odd_parity
# %bb.0:
	ld.bu	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(odd_parity)
	addi.d	$a2, $a2, %pc_lo12(odd_parity)
	ldx.b	$a1, $a2, $a1
	ld.bu	$a3, $a0, 1
	st.b	$a1, $a0, 0
	ldx.b	$a1, $a2, $a3
	ld.bu	$a3, $a0, 2
	st.b	$a1, $a0, 1
	ldx.b	$a1, $a2, $a3
	ld.bu	$a3, $a0, 3
	st.b	$a1, $a0, 2
	ldx.b	$a1, $a2, $a3
	ld.bu	$a3, $a0, 4
	st.b	$a1, $a0, 3
	ldx.b	$a1, $a2, $a3
	ld.bu	$a3, $a0, 5
	st.b	$a1, $a0, 4
	ldx.b	$a1, $a2, $a3
	ld.bu	$a3, $a0, 6
	st.b	$a1, $a0, 5
	ldx.b	$a1, $a2, $a3
	ld.bu	$a3, $a0, 7
	st.b	$a1, $a0, 6
	ldx.b	$a1, $a2, $a3
	st.b	$a1, $a0, 7
	ret
.Lfunc_end0:
	.size	des_set_odd_parity, .Lfunc_end0-des_set_odd_parity
                                        # -- End function
	.globl	des_is_weak_key                 # -- Begin function des_is_weak_key
	.p2align	5
	.type	des_is_weak_key,@function
des_is_weak_key:                        # @des_is_weak_key
# %bb.0:
	move	$a1, $a0
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(weak_keys)
	addi.d	$a2, $a0, %pc_lo12(weak_keys)
	ld.d	$a4, $a2, 0
	ori	$a0, $zero, 1
	beq	$a4, $a3, .LBB1_16
# %bb.1:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 8
	beq	$a4, $a3, .LBB1_16
# %bb.2:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 16
	beq	$a4, $a3, .LBB1_16
# %bb.3:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 24
	beq	$a4, $a3, .LBB1_16
# %bb.4:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 32
	beq	$a4, $a3, .LBB1_16
# %bb.5:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 40
	beq	$a4, $a3, .LBB1_16
# %bb.6:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 48
	beq	$a4, $a3, .LBB1_16
# %bb.7:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 56
	beq	$a4, $a3, .LBB1_16
# %bb.8:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 64
	beq	$a4, $a3, .LBB1_16
# %bb.9:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 72
	beq	$a4, $a3, .LBB1_16
# %bb.10:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 80
	beq	$a4, $a3, .LBB1_16
# %bb.11:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 88
	beq	$a4, $a3, .LBB1_16
# %bb.12:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 96
	beq	$a4, $a3, .LBB1_16
# %bb.13:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 104
	beq	$a4, $a3, .LBB1_16
# %bb.14:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 112
	beq	$a4, $a3, .LBB1_16
# %bb.15:
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 120
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
.LBB1_16:
	ret
.Lfunc_end1:
	.size	des_is_weak_key, .Lfunc_end1-des_is_weak_key
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function des_set_key
.LCPI2_0:
	.dword	2                               # 0x2
	.dword	6                               # 0x6
.LCPI2_1:
	.dword	30                              # 0x1e
	.dword	26                              # 0x1a
.LCPI2_2:
	.dword	4294967292                      # 0xfffffffc
	.dword	4294967232                      # 0xffffffc0
	.text
	.globl	des_set_key
	.p2align	5
	.type	des_set_key,@function
des_set_key:                            # @des_set_key
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
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(des_check_key)
	ld.w	$a0, $a0, %pc_lo12(des_check_key)
	ld.bu	$fp, $a2, 0
	beqz	$a0, .LBB2_11
# %bb.1:
	pcalau12i	$a0, %pc_hi20(odd_parity)
	addi.d	$a3, $a0, %pc_lo12(odd_parity)
	ldx.bu	$a4, $a3, $fp
	addi.w	$a0, $zero, -1
	bne	$fp, $a4, .LBB2_15
# %bb.2:
	ld.bu	$s0, $a2, 1
	ldx.bu	$a4, $a3, $s0
	bne	$s0, $a4, .LBB2_15
# %bb.3:
	ld.bu	$s1, $a2, 2
	ldx.bu	$a4, $a3, $s1
	bne	$s1, $a4, .LBB2_15
# %bb.4:
	ld.bu	$s2, $a2, 3
	ldx.bu	$a4, $a3, $s2
	bne	$s2, $a4, .LBB2_15
# %bb.5:
	ld.bu	$s3, $a2, 4
	ldx.bu	$a4, $a3, $s3
	bne	$s3, $a4, .LBB2_15
# %bb.6:
	ld.bu	$s4, $a2, 5
	ldx.bu	$a4, $a3, $s4
	bne	$s4, $a4, .LBB2_15
# %bb.7:
	ld.bu	$s5, $a2, 6
	ldx.bu	$a4, $a3, $s5
	bne	$s5, $a4, .LBB2_15
# %bb.8:                                # %check_parity.exit
	ld.bu	$s6, $a2, 7
	ldx.bu	$a3, $a3, $s6
	bne	$s6, $a3, .LBB2_15
# %bb.9:
	move	$a0, $a2
	move	$s7, $a1
	pcaddu18i	$ra, %call36(des_is_weak_key)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	beqz	$a0, .LBB2_12
# %bb.10:
	addi.w	$a0, $zero, -2
	b	.LBB2_15
.LBB2_11:                               # %._crit_edge
	ld.bu	$s0, $a2, 1
	ld.bu	$s1, $a2, 2
	ld.bu	$s2, $a2, 3
	ld.bu	$s3, $a2, 4
	ld.bu	$s4, $a2, 5
	ld.bu	$s5, $a2, 6
	ld.bu	$s6, $a2, 7
.LBB2_12:
	slli.d	$a0, $s0, 8
	or	$a0, $a0, $fp
	slli.d	$a2, $s1, 16
	or	$a0, $a0, $a2
	slli.d	$a2, $s2, 24
	slli.d	$a3, $s4, 8
	or	$a3, $a3, $s3
	slli.d	$a4, $s5, 16
	or	$a3, $a3, $a4
	slli.d	$a4, $s6, 24
	or	$a0, $a0, $a2
	or	$a2, $a3, $a4
	srli.d	$a3, $a2, 4
	xor	$a3, $a3, $a0
	lu12i.w	$a4, 61680
	ori	$a4, $a4, 3855
	and	$a3, $a3, $a4
	slli.d	$a4, $a3, 4
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr0, $a3, 1
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr1, $a0, 1
	vxor.v	$vr0, $vr0, $vr1
	vslli.d	$vr1, $vr0, 18
	vxor.v	$vr1, $vr1, $vr0
	lu12i.w	$a0, -209728
	lu32i.d	$a0, 0
	vreplgr2vr.d	$vr2, $a0
	vand.v	$vr1, $vr1, $vr2
	vsrli.d	$vr2, $vr1, 18
	vor.v	$vr1, $vr2, $vr1
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	srli.d	$a2, $a0, 1
	vpickve2gr.d	$a3, $vr0, 1
	xor	$a2, $a2, $a3
	lu12i.w	$a4, 349525
	ori	$a4, $a4, 1365
	and	$a2, $a2, $a4
	xor	$a3, $a2, $a3
	slli.d	$a2, $a2, 1
	xor	$a0, $a2, $a0
	srli.d	$a2, $a3, 8
	xor	$a2, $a2, $a0
	lu12i.w	$a5, 4080
	ori	$a5, $a5, 255
	and	$a2, $a2, $a5
	xor	$a5, $a2, $a0
	slli.d	$a0, $a2, 8
	xor	$a0, $a0, $a3
	srli.d	$a2, $a5, 1
	xor	$a2, $a2, $a0
	and	$a2, $a2, $a4
	xor	$a0, $a2, $a0
	slli.d	$a2, $a2, 1
	xor	$a2, $a2, $a5
	bstrpick.d	$a3, $a2, 15, 8
	slli.d	$a7, $a3, 8
	srli.d	$a3, $a2, 16
	srli.d	$a4, $a0, 28
	bstrins.d	$a7, $a4, 27, 24
	bstrins.d	$a7, $a2, 23, 16
	bstrins.d	$a7, $a3, 7, 0
	ori	$a2, $zero, 1
	lu12i.w	$a3, 8
	ori	$a3, $a3, 259
	pcalau12i	$a4, %pc_hi20(des_skb)
	addi.d	$a4, $a4, %pc_lo12(des_skb)
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_0)
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI2_1)
	pcalau12i	$a5, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a5, %pc_lo12(.LCPI2_2)
	move	$a5, $zero
	vldi	$vr3, -1780
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $a0, 27, 0
	sll.d	$t0, $a2, $a5
	and	$t0, $t0, $a3
	sltui	$t0, $t0, 1
	addi.d	$t1, $t0, 1
	xori	$t2, $t0, 27
	srl.d	$t3, $a0, $t1
	sll.d	$a0, $a0, $t2
	or	$a0, $t3, $a0
	srl.d	$t0, $a7, $t1
	srli.d	$t1, $t3, 3
	andi	$t1, $t1, 24
	add.d	$t1, $a4, $t1
	srli.d	$t4, $t3, 4
	andi	$t4, $t4, 480
	add.d	$t1, $t1, $t4
	srli.d	$t4, $t3, 10
	andi	$t4, $t4, 120
	add.d	$t4, $a4, $t4
	srli.d	$t5, $t3, 11
	andi	$t5, $t5, 384
	add.d	$t4, $t4, $t5
	andi	$t5, $t3, 63
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a4, $t5
	ld.d	$t1, $t1, 512
	ld.d	$t4, $t4, 1024
	sll.d	$a7, $a7, $t2
	or	$a7, $t0, $a7
	or	$t1, $t1, $t5
	or	$t1, $t1, $t4
	srli.d	$t2, $t3, 17
	andi	$t2, $t2, 8
	add.d	$t2, $a4, $t2
	srli.d	$t3, $t3, 18
	andi	$t3, $t3, 48
	add.d	$t2, $t2, $t3
	srli.d	$t3, $a0, 19
	andi	$t3, $t3, 448
	add.d	$t2, $t2, $t3
	ld.d	$t2, $t2, 1536
	srli.d	$t3, $t0, 4
	andi	$t3, $t3, 24
	add.d	$t3, $a4, $t3
	srli.d	$t4, $t0, 5
	andi	$t4, $t4, 480
	add.d	$t3, $t3, $t4
	srli.d	$t4, $t0, 18
	andi	$t4, $t4, 120
	add.d	$t4, $a4, $t4
	srli.d	$t5, $a7, 19
	andi	$t5, $t5, 384
	add.d	$t4, $t4, $t5
	andi	$t5, $t0, 63
	alsl.d	$t5, $t5, $a4, 3
	ldptr.d	$t5, $t5, 2048
	ldptr.d	$t3, $t3, 2560
	srli.d	$t0, $t0, 12
	andi	$t0, $t0, 504
	add.d	$t0, $a4, $t0
	ldptr.d	$t0, $t0, 3072
	ldptr.d	$t4, $t4, 3584
	or	$t1, $t1, $t2
	or	$t2, $t3, $t5
	or	$t0, $t2, $t0
	or	$t0, $t0, $t4
	slli.d	$t2, $t0, 16
	bstrpick.d	$t3, $t1, 15, 0
	srli.d	$t1, $t1, 16
	vinsgr2vr.d	$vr4, $t2, 0
	vinsgr2vr.d	$vr4, $t0, 1
	vand.v	$vr4, $vr4, $vr3
	vinsgr2vr.d	$vr5, $t3, 0
	vinsgr2vr.d	$vr5, $t1, 1
	vor.v	$vr5, $vr4, $vr5
	vsll.d	$vr6, $vr5, $vr0
	vshuf4i.d	$vr4, $vr5, 12
	vsrl.d	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr6, $vr2
	vor.v	$vr4, $vr5, $vr4
	vst	$vr4, $a1, 0
	addi.d	$a1, $a1, 16
	addi.d	$a5, $a5, 1
	bstrpick.d	$a7, $a7, 27, 0
	bne	$a5, $a6, .LBB2_13
# %bb.14:
	move	$a0, $zero
.LBB2_15:                               # %check_parity.exit.thread
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
.Lfunc_end2:
	.size	des_set_key, .Lfunc_end2-des_set_key
                                        # -- End function
	.globl	des_key_sched                   # -- Begin function des_key_sched
	.p2align	5
	.type	des_key_sched,@function
des_key_sched:                          # @des_key_sched
# %bb.0:
	pcaddu18i	$t8, %call36(des_set_key)
	jr	$t8
.Lfunc_end3:
	.size	des_key_sched, .Lfunc_end3-des_key_sched
                                        # -- End function
	.type	des_check_key,@object           # @des_check_key
	.bss
	.globl	des_check_key
	.p2align	2, 0x0
des_check_key:
	.word	0                               # 0x0
	.size	des_check_key, 4

	.type	odd_parity,@object              # @odd_parity
	.section	.rodata,"a",@progbits
odd_parity:
	.ascii	"\001\001\002\002\004\004\007\007\b\b\013\013\r\r\016\016\020\020\023\023\025\025\026\026\031\031\032\032\034\034\037\037  ##%%&&))**,,//1122447788;;==>>@@CCEEFFIIJJLLOOQQRRTTWWXX[[]]^^aabbddgghhkkmmnnppssuuvvyyzz||\177\177\200\200\203\203\205\205\206\206\211\211\212\212\214\214\217\217\221\221\222\222\224\224\227\227\230\230\233\233\235\235\236\236\241\241\242\242\244\244\247\247\250\250\253\253\255\255\256\256\260\260\263\263\265\265\266\266\271\271\272\272\274\274\277\277\301\301\302\302\304\304\307\307\310\310\313\313\315\315\316\316\320\320\323\323\325\325\326\326\331\331\332\332\334\334\337\337\340\340\343\343\345\345\346\346\351\351\352\352\354\354\357\357\361\361\362\362\364\364\367\367\370\370\373\373\375\375\376\376"
	.size	odd_parity, 256

	.type	weak_keys,@object               # @weak_keys
	.data
weak_keys:
	.space	8,1
	.space	8,254
	.space	8,31
	.space	8,224
	.ascii	"\001\376\001\376\001\376\001\376"
	.ascii	"\376\001\376\001\376\001\376\001"
	.ascii	"\037\340\037\340\016\361\016\361"
	.ascii	"\340\037\340\037\361\016\361\016"
	.ascii	"\001\340\001\340\001\361\001\361"
	.ascii	"\340\001\340\001\361\001\361\001"
	.ascii	"\037\376\037\376\016\376\016\376"
	.ascii	"\376\037\376\037\376\016\376\016"
	.ascii	"\001\037\001\037\001\016\001\016"
	.ascii	"\037\001\037\001\016\001\016\001"
	.ascii	"\340\376\340\376\361\376\361\376"
	.ascii	"\376\340\376\340\376\361\376\361"
	.size	weak_keys, 128

	.type	des_skb,@object                 # @des_skb
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
des_skb:
	.dword	0                               # 0x0
	.dword	16                              # 0x10
	.dword	536870912                       # 0x20000000
	.dword	536870928                       # 0x20000010
	.dword	65536                           # 0x10000
	.dword	65552                           # 0x10010
	.dword	536936448                       # 0x20010000
	.dword	536936464                       # 0x20010010
	.dword	2048                            # 0x800
	.dword	2064                            # 0x810
	.dword	536872960                       # 0x20000800
	.dword	536872976                       # 0x20000810
	.dword	67584                           # 0x10800
	.dword	67600                           # 0x10810
	.dword	536938496                       # 0x20010800
	.dword	536938512                       # 0x20010810
	.dword	32                              # 0x20
	.dword	48                              # 0x30
	.dword	536870944                       # 0x20000020
	.dword	536870960                       # 0x20000030
	.dword	65568                           # 0x10020
	.dword	65584                           # 0x10030
	.dword	536936480                       # 0x20010020
	.dword	536936496                       # 0x20010030
	.dword	2080                            # 0x820
	.dword	2096                            # 0x830
	.dword	536872992                       # 0x20000820
	.dword	536873008                       # 0x20000830
	.dword	67616                           # 0x10820
	.dword	67632                           # 0x10830
	.dword	536938528                       # 0x20010820
	.dword	536938544                       # 0x20010830
	.dword	524288                          # 0x80000
	.dword	524304                          # 0x80010
	.dword	537395200                       # 0x20080000
	.dword	537395216                       # 0x20080010
	.dword	589824                          # 0x90000
	.dword	589840                          # 0x90010
	.dword	537460736                       # 0x20090000
	.dword	537460752                       # 0x20090010
	.dword	526336                          # 0x80800
	.dword	526352                          # 0x80810
	.dword	537397248                       # 0x20080800
	.dword	537397264                       # 0x20080810
	.dword	591872                          # 0x90800
	.dword	591888                          # 0x90810
	.dword	537462784                       # 0x20090800
	.dword	537462800                       # 0x20090810
	.dword	524320                          # 0x80020
	.dword	524336                          # 0x80030
	.dword	537395232                       # 0x20080020
	.dword	537395248                       # 0x20080030
	.dword	589856                          # 0x90020
	.dword	589872                          # 0x90030
	.dword	537460768                       # 0x20090020
	.dword	537460784                       # 0x20090030
	.dword	526368                          # 0x80820
	.dword	526384                          # 0x80830
	.dword	537397280                       # 0x20080820
	.dword	537397296                       # 0x20080830
	.dword	591904                          # 0x90820
	.dword	591920                          # 0x90830
	.dword	537462816                       # 0x20090820
	.dword	537462832                       # 0x20090830
	.dword	0                               # 0x0
	.dword	33554432                        # 0x2000000
	.dword	8192                            # 0x2000
	.dword	33562624                        # 0x2002000
	.dword	2097152                         # 0x200000
	.dword	35651584                        # 0x2200000
	.dword	2105344                         # 0x202000
	.dword	35659776                        # 0x2202000
	.dword	4                               # 0x4
	.dword	33554436                        # 0x2000004
	.dword	8196                            # 0x2004
	.dword	33562628                        # 0x2002004
	.dword	2097156                         # 0x200004
	.dword	35651588                        # 0x2200004
	.dword	2105348                         # 0x202004
	.dword	35659780                        # 0x2202004
	.dword	1024                            # 0x400
	.dword	33555456                        # 0x2000400
	.dword	9216                            # 0x2400
	.dword	33563648                        # 0x2002400
	.dword	2098176                         # 0x200400
	.dword	35652608                        # 0x2200400
	.dword	2106368                         # 0x202400
	.dword	35660800                        # 0x2202400
	.dword	1028                            # 0x404
	.dword	33555460                        # 0x2000404
	.dword	9220                            # 0x2404
	.dword	33563652                        # 0x2002404
	.dword	2098180                         # 0x200404
	.dword	35652612                        # 0x2200404
	.dword	2106372                         # 0x202404
	.dword	35660804                        # 0x2202404
	.dword	268435456                       # 0x10000000
	.dword	301989888                       # 0x12000000
	.dword	268443648                       # 0x10002000
	.dword	301998080                       # 0x12002000
	.dword	270532608                       # 0x10200000
	.dword	304087040                       # 0x12200000
	.dword	270540800                       # 0x10202000
	.dword	304095232                       # 0x12202000
	.dword	268435460                       # 0x10000004
	.dword	301989892                       # 0x12000004
	.dword	268443652                       # 0x10002004
	.dword	301998084                       # 0x12002004
	.dword	270532612                       # 0x10200004
	.dword	304087044                       # 0x12200004
	.dword	270540804                       # 0x10202004
	.dword	304095236                       # 0x12202004
	.dword	268436480                       # 0x10000400
	.dword	301990912                       # 0x12000400
	.dword	268444672                       # 0x10002400
	.dword	301999104                       # 0x12002400
	.dword	270533632                       # 0x10200400
	.dword	304088064                       # 0x12200400
	.dword	270541824                       # 0x10202400
	.dword	304096256                       # 0x12202400
	.dword	268436484                       # 0x10000404
	.dword	301990916                       # 0x12000404
	.dword	268444676                       # 0x10002404
	.dword	301999108                       # 0x12002404
	.dword	270533636                       # 0x10200404
	.dword	304088068                       # 0x12200404
	.dword	270541828                       # 0x10202404
	.dword	304096260                       # 0x12202404
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	262144                          # 0x40000
	.dword	262145                          # 0x40001
	.dword	16777216                        # 0x1000000
	.dword	16777217                        # 0x1000001
	.dword	17039360                        # 0x1040000
	.dword	17039361                        # 0x1040001
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	262146                          # 0x40002
	.dword	262147                          # 0x40003
	.dword	16777218                        # 0x1000002
	.dword	16777219                        # 0x1000003
	.dword	17039362                        # 0x1040002
	.dword	17039363                        # 0x1040003
	.dword	512                             # 0x200
	.dword	513                             # 0x201
	.dword	262656                          # 0x40200
	.dword	262657                          # 0x40201
	.dword	16777728                        # 0x1000200
	.dword	16777729                        # 0x1000201
	.dword	17039872                        # 0x1040200
	.dword	17039873                        # 0x1040201
	.dword	514                             # 0x202
	.dword	515                             # 0x203
	.dword	262658                          # 0x40202
	.dword	262659                          # 0x40203
	.dword	16777730                        # 0x1000202
	.dword	16777731                        # 0x1000203
	.dword	17039874                        # 0x1040202
	.dword	17039875                        # 0x1040203
	.dword	134217728                       # 0x8000000
	.dword	134217729                       # 0x8000001
	.dword	134479872                       # 0x8040000
	.dword	134479873                       # 0x8040001
	.dword	150994944                       # 0x9000000
	.dword	150994945                       # 0x9000001
	.dword	151257088                       # 0x9040000
	.dword	151257089                       # 0x9040001
	.dword	134217730                       # 0x8000002
	.dword	134217731                       # 0x8000003
	.dword	134479874                       # 0x8040002
	.dword	134479875                       # 0x8040003
	.dword	150994946                       # 0x9000002
	.dword	150994947                       # 0x9000003
	.dword	151257090                       # 0x9040002
	.dword	151257091                       # 0x9040003
	.dword	134218240                       # 0x8000200
	.dword	134218241                       # 0x8000201
	.dword	134480384                       # 0x8040200
	.dword	134480385                       # 0x8040201
	.dword	150995456                       # 0x9000200
	.dword	150995457                       # 0x9000201
	.dword	151257600                       # 0x9040200
	.dword	151257601                       # 0x9040201
	.dword	134218242                       # 0x8000202
	.dword	134218243                       # 0x8000203
	.dword	134480386                       # 0x8040202
	.dword	134480387                       # 0x8040203
	.dword	150995458                       # 0x9000202
	.dword	150995459                       # 0x9000203
	.dword	151257602                       # 0x9040202
	.dword	151257603                       # 0x9040203
	.dword	0                               # 0x0
	.dword	1048576                         # 0x100000
	.dword	256                             # 0x100
	.dword	1048832                         # 0x100100
	.dword	8                               # 0x8
	.dword	1048584                         # 0x100008
	.dword	264                             # 0x108
	.dword	1048840                         # 0x100108
	.dword	4096                            # 0x1000
	.dword	1052672                         # 0x101000
	.dword	4352                            # 0x1100
	.dword	1052928                         # 0x101100
	.dword	4104                            # 0x1008
	.dword	1052680                         # 0x101008
	.dword	4360                            # 0x1108
	.dword	1052936                         # 0x101108
	.dword	67108864                        # 0x4000000
	.dword	68157440                        # 0x4100000
	.dword	67109120                        # 0x4000100
	.dword	68157696                        # 0x4100100
	.dword	67108872                        # 0x4000008
	.dword	68157448                        # 0x4100008
	.dword	67109128                        # 0x4000108
	.dword	68157704                        # 0x4100108
	.dword	67112960                        # 0x4001000
	.dword	68161536                        # 0x4101000
	.dword	67113216                        # 0x4001100
	.dword	68161792                        # 0x4101100
	.dword	67112968                        # 0x4001008
	.dword	68161544                        # 0x4101008
	.dword	67113224                        # 0x4001108
	.dword	68161800                        # 0x4101108
	.dword	131072                          # 0x20000
	.dword	1179648                         # 0x120000
	.dword	131328                          # 0x20100
	.dword	1179904                         # 0x120100
	.dword	131080                          # 0x20008
	.dword	1179656                         # 0x120008
	.dword	131336                          # 0x20108
	.dword	1179912                         # 0x120108
	.dword	135168                          # 0x21000
	.dword	1183744                         # 0x121000
	.dword	135424                          # 0x21100
	.dword	1184000                         # 0x121100
	.dword	135176                          # 0x21008
	.dword	1183752                         # 0x121008
	.dword	135432                          # 0x21108
	.dword	1184008                         # 0x121108
	.dword	67239936                        # 0x4020000
	.dword	68288512                        # 0x4120000
	.dword	67240192                        # 0x4020100
	.dword	68288768                        # 0x4120100
	.dword	67239944                        # 0x4020008
	.dword	68288520                        # 0x4120008
	.dword	67240200                        # 0x4020108
	.dword	68288776                        # 0x4120108
	.dword	67244032                        # 0x4021000
	.dword	68292608                        # 0x4121000
	.dword	67244288                        # 0x4021100
	.dword	68292864                        # 0x4121100
	.dword	67244040                        # 0x4021008
	.dword	68292616                        # 0x4121008
	.dword	67244296                        # 0x4021108
	.dword	68292872                        # 0x4121108
	.dword	0                               # 0x0
	.dword	268435456                       # 0x10000000
	.dword	65536                           # 0x10000
	.dword	268500992                       # 0x10010000
	.dword	4                               # 0x4
	.dword	268435460                       # 0x10000004
	.dword	65540                           # 0x10004
	.dword	268500996                       # 0x10010004
	.dword	536870912                       # 0x20000000
	.dword	805306368                       # 0x30000000
	.dword	536936448                       # 0x20010000
	.dword	805371904                       # 0x30010000
	.dword	536870916                       # 0x20000004
	.dword	805306372                       # 0x30000004
	.dword	536936452                       # 0x20010004
	.dword	805371908                       # 0x30010004
	.dword	1048576                         # 0x100000
	.dword	269484032                       # 0x10100000
	.dword	1114112                         # 0x110000
	.dword	269549568                       # 0x10110000
	.dword	1048580                         # 0x100004
	.dword	269484036                       # 0x10100004
	.dword	1114116                         # 0x110004
	.dword	269549572                       # 0x10110004
	.dword	537919488                       # 0x20100000
	.dword	806354944                       # 0x30100000
	.dword	537985024                       # 0x20110000
	.dword	806420480                       # 0x30110000
	.dword	537919492                       # 0x20100004
	.dword	806354948                       # 0x30100004
	.dword	537985028                       # 0x20110004
	.dword	806420484                       # 0x30110004
	.dword	4096                            # 0x1000
	.dword	268439552                       # 0x10001000
	.dword	69632                           # 0x11000
	.dword	268505088                       # 0x10011000
	.dword	4100                            # 0x1004
	.dword	268439556                       # 0x10001004
	.dword	69636                           # 0x11004
	.dword	268505092                       # 0x10011004
	.dword	536875008                       # 0x20001000
	.dword	805310464                       # 0x30001000
	.dword	536940544                       # 0x20011000
	.dword	805376000                       # 0x30011000
	.dword	536875012                       # 0x20001004
	.dword	805310468                       # 0x30001004
	.dword	536940548                       # 0x20011004
	.dword	805376004                       # 0x30011004
	.dword	1052672                         # 0x101000
	.dword	269488128                       # 0x10101000
	.dword	1118208                         # 0x111000
	.dword	269553664                       # 0x10111000
	.dword	1052676                         # 0x101004
	.dword	269488132                       # 0x10101004
	.dword	1118212                         # 0x111004
	.dword	269553668                       # 0x10111004
	.dword	537923584                       # 0x20101000
	.dword	806359040                       # 0x30101000
	.dword	537989120                       # 0x20111000
	.dword	806424576                       # 0x30111000
	.dword	537923588                       # 0x20101004
	.dword	806359044                       # 0x30101004
	.dword	537989124                       # 0x20111004
	.dword	806424580                       # 0x30111004
	.dword	0                               # 0x0
	.dword	134217728                       # 0x8000000
	.dword	8                               # 0x8
	.dword	134217736                       # 0x8000008
	.dword	1024                            # 0x400
	.dword	134218752                       # 0x8000400
	.dword	1032                            # 0x408
	.dword	134218760                       # 0x8000408
	.dword	131072                          # 0x20000
	.dword	134348800                       # 0x8020000
	.dword	131080                          # 0x20008
	.dword	134348808                       # 0x8020008
	.dword	132096                          # 0x20400
	.dword	134349824                       # 0x8020400
	.dword	132104                          # 0x20408
	.dword	134349832                       # 0x8020408
	.dword	1                               # 0x1
	.dword	134217729                       # 0x8000001
	.dword	9                               # 0x9
	.dword	134217737                       # 0x8000009
	.dword	1025                            # 0x401
	.dword	134218753                       # 0x8000401
	.dword	1033                            # 0x409
	.dword	134218761                       # 0x8000409
	.dword	131073                          # 0x20001
	.dword	134348801                       # 0x8020001
	.dword	131081                          # 0x20009
	.dword	134348809                       # 0x8020009
	.dword	132097                          # 0x20401
	.dword	134349825                       # 0x8020401
	.dword	132105                          # 0x20409
	.dword	134349833                       # 0x8020409
	.dword	33554432                        # 0x2000000
	.dword	167772160                       # 0xa000000
	.dword	33554440                        # 0x2000008
	.dword	167772168                       # 0xa000008
	.dword	33555456                        # 0x2000400
	.dword	167773184                       # 0xa000400
	.dword	33555464                        # 0x2000408
	.dword	167773192                       # 0xa000408
	.dword	33685504                        # 0x2020000
	.dword	167903232                       # 0xa020000
	.dword	33685512                        # 0x2020008
	.dword	167903240                       # 0xa020008
	.dword	33686528                        # 0x2020400
	.dword	167904256                       # 0xa020400
	.dword	33686536                        # 0x2020408
	.dword	167904264                       # 0xa020408
	.dword	33554433                        # 0x2000001
	.dword	167772161                       # 0xa000001
	.dword	33554441                        # 0x2000009
	.dword	167772169                       # 0xa000009
	.dword	33555457                        # 0x2000401
	.dword	167773185                       # 0xa000401
	.dword	33555465                        # 0x2000409
	.dword	167773193                       # 0xa000409
	.dword	33685505                        # 0x2020001
	.dword	167903233                       # 0xa020001
	.dword	33685513                        # 0x2020009
	.dword	167903241                       # 0xa020009
	.dword	33686529                        # 0x2020401
	.dword	167904257                       # 0xa020401
	.dword	33686537                        # 0x2020409
	.dword	167904265                       # 0xa020409
	.dword	0                               # 0x0
	.dword	256                             # 0x100
	.dword	524288                          # 0x80000
	.dword	524544                          # 0x80100
	.dword	16777216                        # 0x1000000
	.dword	16777472                        # 0x1000100
	.dword	17301504                        # 0x1080000
	.dword	17301760                        # 0x1080100
	.dword	16                              # 0x10
	.dword	272                             # 0x110
	.dword	524304                          # 0x80010
	.dword	524560                          # 0x80110
	.dword	16777232                        # 0x1000010
	.dword	16777488                        # 0x1000110
	.dword	17301520                        # 0x1080010
	.dword	17301776                        # 0x1080110
	.dword	2097152                         # 0x200000
	.dword	2097408                         # 0x200100
	.dword	2621440                         # 0x280000
	.dword	2621696                         # 0x280100
	.dword	18874368                        # 0x1200000
	.dword	18874624                        # 0x1200100
	.dword	19398656                        # 0x1280000
	.dword	19398912                        # 0x1280100
	.dword	2097168                         # 0x200010
	.dword	2097424                         # 0x200110
	.dword	2621456                         # 0x280010
	.dword	2621712                         # 0x280110
	.dword	18874384                        # 0x1200010
	.dword	18874640                        # 0x1200110
	.dword	19398672                        # 0x1280010
	.dword	19398928                        # 0x1280110
	.dword	512                             # 0x200
	.dword	768                             # 0x300
	.dword	524800                          # 0x80200
	.dword	525056                          # 0x80300
	.dword	16777728                        # 0x1000200
	.dword	16777984                        # 0x1000300
	.dword	17302016                        # 0x1080200
	.dword	17302272                        # 0x1080300
	.dword	528                             # 0x210
	.dword	784                             # 0x310
	.dword	524816                          # 0x80210
	.dword	525072                          # 0x80310
	.dword	16777744                        # 0x1000210
	.dword	16778000                        # 0x1000310
	.dword	17302032                        # 0x1080210
	.dword	17302288                        # 0x1080310
	.dword	2097664                         # 0x200200
	.dword	2097920                         # 0x200300
	.dword	2621952                         # 0x280200
	.dword	2622208                         # 0x280300
	.dword	18874880                        # 0x1200200
	.dword	18875136                        # 0x1200300
	.dword	19399168                        # 0x1280200
	.dword	19399424                        # 0x1280300
	.dword	2097680                         # 0x200210
	.dword	2097936                         # 0x200310
	.dword	2621968                         # 0x280210
	.dword	2622224                         # 0x280310
	.dword	18874896                        # 0x1200210
	.dword	18875152                        # 0x1200310
	.dword	19399184                        # 0x1280210
	.dword	19399440                        # 0x1280310
	.dword	0                               # 0x0
	.dword	67108864                        # 0x4000000
	.dword	262144                          # 0x40000
	.dword	67371008                        # 0x4040000
	.dword	2                               # 0x2
	.dword	67108866                        # 0x4000002
	.dword	262146                          # 0x40002
	.dword	67371010                        # 0x4040002
	.dword	8192                            # 0x2000
	.dword	67117056                        # 0x4002000
	.dword	270336                          # 0x42000
	.dword	67379200                        # 0x4042000
	.dword	8194                            # 0x2002
	.dword	67117058                        # 0x4002002
	.dword	270338                          # 0x42002
	.dword	67379202                        # 0x4042002
	.dword	32                              # 0x20
	.dword	67108896                        # 0x4000020
	.dword	262176                          # 0x40020
	.dword	67371040                        # 0x4040020
	.dword	34                              # 0x22
	.dword	67108898                        # 0x4000022
	.dword	262178                          # 0x40022
	.dword	67371042                        # 0x4040022
	.dword	8224                            # 0x2020
	.dword	67117088                        # 0x4002020
	.dword	270368                          # 0x42020
	.dword	67379232                        # 0x4042020
	.dword	8226                            # 0x2022
	.dword	67117090                        # 0x4002022
	.dword	270370                          # 0x42022
	.dword	67379234                        # 0x4042022
	.dword	2048                            # 0x800
	.dword	67110912                        # 0x4000800
	.dword	264192                          # 0x40800
	.dword	67373056                        # 0x4040800
	.dword	2050                            # 0x802
	.dword	67110914                        # 0x4000802
	.dword	264194                          # 0x40802
	.dword	67373058                        # 0x4040802
	.dword	10240                           # 0x2800
	.dword	67119104                        # 0x4002800
	.dword	272384                          # 0x42800
	.dword	67381248                        # 0x4042800
	.dword	10242                           # 0x2802
	.dword	67119106                        # 0x4002802
	.dword	272386                          # 0x42802
	.dword	67381250                        # 0x4042802
	.dword	2080                            # 0x820
	.dword	67110944                        # 0x4000820
	.dword	264224                          # 0x40820
	.dword	67373088                        # 0x4040820
	.dword	2082                            # 0x822
	.dword	67110946                        # 0x4000822
	.dword	264226                          # 0x40822
	.dword	67373090                        # 0x4040822
	.dword	10272                           # 0x2820
	.dword	67119136                        # 0x4002820
	.dword	272416                          # 0x42820
	.dword	67381280                        # 0x4042820
	.dword	10274                           # 0x2822
	.dword	67119138                        # 0x4002822
	.dword	272418                          # 0x42822
	.dword	67381282                        # 0x4042822
	.size	des_skb, 4096

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym weak_keys
