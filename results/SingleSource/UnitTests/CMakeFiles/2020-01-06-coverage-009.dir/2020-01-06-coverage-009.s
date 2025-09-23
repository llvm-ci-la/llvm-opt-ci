	.file	"2020-01-06-coverage-009.c"
	.text
	.globl	i                               # -- Begin function i
	.p2align	5
	.type	i,@function
i:                                      # @i
# %bb.0:
	pcalau12i	$a0, %pc_hi20(c)
	ld.hu	$a2, $a0, %pc_lo12(c)
	beqz	$a2, .LBB0_4
# %bb.1:                                # %.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(d)
	ld.bu	$a3, $a1, %pc_lo12(d)
	pcalau12i	$a4, %pc_hi20(f)
	ld.d	$a4, $a4, %pc_lo12(f)
	pcalau12i	$a5, %pc_hi20(b)
	pcalau12i	$a6, %pc_hi20(a)
	pcalau12i	$a7, %pc_hi20(h)
	.p2align	4, , 16
.LBB0_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a5, %pc_lo12(b)
	ld.w	$t1, $a6, %pc_lo12(a)
	st.w	$zero, $a4, 0
	ld.w	$t2, $a5, %pc_lo12(b)
	ld.w	$t3, $a6, %pc_lo12(a)
	xor	$t1, $t1, $t0
	sltu	$t0, $t1, $t0
	xor	$a3, $a3, $t0
	xor	$t0, $t3, $t2
	sltu	$t0, $t0, $t2
	st.w	$t0, $a7, %pc_lo12(h)
	addi.d	$a2, $a2, -1
	slli.d	$t0, $a2, 48
	st.w	$zero, $a4, 0
	bnez	$t0, .LBB0_2
# %bb.3:                                # %._crit_edge
	pcalau12i	$a2, %pc_hi20(g)
	ori	$a4, $zero, 9
	st.h	$a4, $a2, %pc_lo12(g)
	st.b	$a3, $a1, %pc_lo12(d)
	st.h	$zero, $a0, %pc_lo12(c)
.LBB0_4:
	ret
.Lfunc_end0:
	.size	i, .Lfunc_end0-i
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -520192
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 12
	pcalau12i	$a0, %pc_hi20(f)
	addi.d	$a1, $sp, 12
	st.d	$a1, $a0, %pc_lo12(f)
	pcalau12i	$fp, %pc_hi20(g)
	lu12i.w	$a0, 8
	ori	$a0, $a0, 1
	st.h	$a0, $fp, %pc_lo12(g)
	pcalau12i	$s0, %pc_hi20(c)
	st.h	$a0, $s0, %pc_lo12(c)
	pcalau12i	$s1, %pc_hi20(h)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s1, %pc_lo12(h)
	pcalau12i	$s2, %pc_hi20(b)
	ori	$a0, $zero, 1
	st.w	$a0, $s2, %pc_lo12(b)
	pcalau12i	$s3, %pc_hi20(a)
	st.w	$zero, $s3, %pc_lo12(a)
	pcaddu18i	$ra, %call36(i)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(b)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s0, %pc_lo12(c)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(d)
	ld.bu	$a1, $a0, %pc_lo12(d)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.h	$a1, $fp, %pc_lo12(g)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(h)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	d,@object                       # @d
	.data
	.globl	d
d:
	.byte	8                               # 0x8
	.size	d, 1

	.type	e,@object                       # @e
	.section	.data.rel.ro,"aw",@progbits
	.globl	e
	.p2align	3, 0x0
e:
	.dword	d
	.size	e, 8

	.type	c,@object                       # @c
	.bss
	.globl	c
	.p2align	1, 0x0
c:
	.half	0                               # 0x0
	.size	c, 2

	.type	g,@object                       # @g
	.globl	g
	.p2align	1, 0x0
g:
	.half	0                               # 0x0
	.size	g, 2

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.word	0                               # 0x0
	.size	b, 4

	.type	a,@object                       # @a
	.globl	a
	.p2align	2, 0x0
a:
	.word	0                               # 0x0
	.size	a, 4

	.type	h,@object                       # @h
	.globl	h
	.p2align	2, 0x0
h:
	.word	0                               # 0x0
	.size	h, 4

	.type	f,@object                       # @f
	.globl	f
	.p2align	3, 0x0
f:
	.dword	0
	.size	f, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"a = %u\n"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"b = %u\n"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"c = %i\n"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"d = %u\n"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"g = %i\n"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"h = %u\n"
	.size	.L.str.5, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym d
