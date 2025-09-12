	.file	"casts.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$fp, $a1
	move	$s0, $a0
	lu12i.w	$a0, 15
	ori	$s2, $a0, 3327
	lu12i.w	$a0, -378310
	ori	$s1, $a0, 931
	ori	$s4, $zero, 2
	lu32i.d	$s1, 41891
	blt	$s0, $s4, .LBB0_4
# %bb.1:
	ld.d	$a0, $fp, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s0, $s4, .LBB0_5
# %bb.2:
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$s2, $a0
	bltu	$s0, $a1, .LBB0_5
# %bb.3:
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, 0
	ori	$s5, $zero, 1
	b	.LBB0_6
.LBB0_4:
	move	$s5, $zero
	ori	$s3, $zero, 100
	b	.LBB0_6
.LBB0_5:
	move	$s5, $zero
.LBB0_6:                                # %.thread124
	ext.w.b	$s4, $s3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s4
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	andi	$a1, $s3, 255
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s4, 15, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ext.w.h	$s3, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s3
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ext.w.b	$a1, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s3
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s3
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	andi	$a1, $s2, 255
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s2, 15, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $s3
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a1, $s3
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ext.w.b	$a1, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ext.w.h	$a1, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $s2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	andi	$a1, $s1, 255
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s1, 15, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	move	$a1, $s2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB0_9
# %bb.7:
	ld.d	$a0, $fp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa1, $fa0
	ori	$a0, $zero, 5
	bge	$s0, $a0, .LBB0_10
.LBB0_8:
	vldi	$vr0, -1024
	b	.LBB0_11
.LBB0_9:
	vldi	$vr1, -1168
	ori	$a0, $zero, 5
	blt	$s0, $a0, .LBB0_8
.LBB0_10:
	ld.d	$a0, $fp, 32
	move	$a1, $zero
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
.LBB0_11:
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ftintrz.l.s	$fa0, $fa1
	movfr2gr.d	$s0, $fa0
	lu12i.w	$a0, 389120
	movgr2fr.w	$fa0, $a0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsub.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	lu52i.d	$fp, $zero, -2048
	xor	$a0, $a0, $fp
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s1, $a1, $a0
	ftintrz.w.s	$fa0, $fa1
	movfr2gr.s	$s2, $fa0
	fcvt.d.s	$fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $s0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu52i.d	$s0, $zero, 1086
	movgr2fr.d	$fa0, $s0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsub.d	$fa0, $fa1, $fa0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	xor	$a0, $a0, $fp
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ftintrz.l.d	$fa0, $fa1
	movfr2gr.d	$s2, $fa0
	maskeqz	$a1, $s2, $a1
	or	$s1, $a1, $a0
	ftintrz.w.d	$fa0, $fa1
	movfr2gr.s	$s3, $fa0
	movfr2gr.d	$a1, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a1, $s2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $s3
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $s2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a1, $s2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$s1, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -81920
	lu52i.d	$s3, $a0, 1029
	ori	$a1, $zero, 123
	ori	$s5, $zero, 0
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$s2, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 123
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	lu52i.d	$a2, $zero, -1025
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu52i.d	$s4, $zero, 1087
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu32i.d	$s5, -262144
	lu52i.d	$a2, $s5, -1022
	addi.w	$s3, $zero, -14
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu52i.d	$s3, $s5, 1026
	ori	$a1, $zero, 14
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 14
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu52i.d	$a2, $zero, -962
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nCHAR             C = '%c' (%d)\t\t(0x%x)\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"char to short   s1 = %d\t\t(0x%x)\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"char to int     i1 = %d\t\t(0x%x)\n"
	.size	.L.str.2, 33

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"char to int64_t l1 = %ld\t\t(0x%lx)\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\nchar to ubyte  uc1 = %u\t\t(0x%x)\n"
	.size	.L.str.4, 34

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"char to ushort us1 = %u\t\t(0x%x)\n"
	.size	.L.str.5, 33

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"char to uint   ui1 = %u\t\t(0x%x)\n"
	.size	.L.str.6, 33

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"char to uint64_t ul1 = %lu\t\t(0x%lx)\n"
	.size	.L.str.7, 37

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\n\nSHORT            S = %d\t\t(0x%x)\n"
	.size	.L.str.8, 35

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"short to byte    c1 = %d\t\t(0x%x)\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"short to int     i1 = %d\t\t(0x%x)\n"
	.size	.L.str.10, 34

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"short to int64_t l1 = %ld\t\t(0x%lx)\n"
	.size	.L.str.11, 36

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nshort to ubyte  uc1 = %u\t\t(0x%x)\n"
	.size	.L.str.12, 35

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"short to ushort us1 = %u\t\t(0x%x)\n"
	.size	.L.str.13, 34

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"short to uint   ui1 = %u\t\t(0x%x)\n"
	.size	.L.str.14, 34

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"short to uint64_t ul1 = %lu\t\t(0x%lx)\n"
	.size	.L.str.15, 38

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\n\nLONG            L = %ld\t\t(0x%lx)\n"
	.size	.L.str.16, 36

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"long to byte    c1 = %d\t\t(0x%x)\n"
	.size	.L.str.17, 33

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"long to short   s1 = %d\t\t(0x%x)\n"
	.size	.L.str.18, 33

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"long to int     i1 = %d\t\t(0x%x)\n"
	.size	.L.str.19, 33

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\nlong to ubyte  uc1 = %u\t\t(0x%x)\n"
	.size	.L.str.20, 34

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"long to ushort us1 = %u\t\t(0x%x)\n"
	.size	.L.str.21, 33

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"long to uint   ui1 = %u\t\t(0x%x)\n"
	.size	.L.str.22, 33

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"long to uint64_t ul1 = %lu\t\t(0x%lx)\n"
	.size	.L.str.23, 37

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\n\nFLOAT            F = %f\n"
	.size	.L.str.24, 27

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"float to short   s1 = %d\t\t(0x%x)\n"
	.size	.L.str.25, 34

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"float to int     i1 = %d\t\t(0x%x)\n"
	.size	.L.str.26, 34

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"float to ushort us1 = %u\t\t(0x%x)\n"
	.size	.L.str.27, 34

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"float to uint   ui1 = %u\t\t(0x%x)\n"
	.size	.L.str.28, 34

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"float to uint64_t ul1 = %lu\t\t(0x%lx)\n"
	.size	.L.str.29, 38

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\n\nDOUBLE            D = %f\n"
	.size	.L.str.30, 28

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"double to short   s1 = %d\t\t(0x%x)\n"
	.size	.L.str.31, 35

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"double to int     i1 = %d\t\t(0x%x)\n"
	.size	.L.str.32, 35

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"double to int64_t l1 = %ld\t\t(0x%lx)\n"
	.size	.L.str.33, 37

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"double to ushort us1 = %u\t\t(0x%x)\n"
	.size	.L.str.34, 35

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"double to uint   ui1 = %u\t\t(0x%x)\n"
	.size	.L.str.35, 35

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"double to uint64_t ul1 = %lu\t\t(0x%lx)\n"
	.size	.L.str.36, 39

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"double <- int64_t %ld = %f\n"
	.size	.L.str.37, 28

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"double <- uint64_t %lu = %f\n"
	.size	.L.str.38, 29

	.section	".note.GNU-stack","",@progbits
	.addrsig
