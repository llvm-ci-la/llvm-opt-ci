	.file	"util.c"
	.text
	.globl	init_random                     # -- Begin function init_random
	.p2align	5
	.type	init_random,@function
init_random:                            # @init_random
# %bb.0:
	pcaddu18i	$t8, %call36(srand48)
	jr	$t8
.Lfunc_end0:
	.size	init_random, .Lfunc_end0-init_random
                                        # -- End function
	.globl	gen_number                      # -- Begin function gen_number
	.p2align	5
	.type	gen_number,@function
gen_number:                             # @gen_number
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	mod.w	$a0, $a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	gen_number, .Lfunc_end1-gen_number
                                        # -- End function
	.globl	gen_signed_number               # -- Begin function gen_signed_number
	.p2align	5
	.type	gen_signed_number,@function
gen_signed_number:                      # @gen_signed_number
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lrand48)
	jirl	$ra, $ra, 0
	slli.w	$a1, $fp, 1
	mod.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $fp
	nor	$a1, $a0, $zero
	bstrpick.d	$a1, $a1, 31, 31
	add.w	$a0, $a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	gen_signed_number, .Lfunc_end2-gen_signed_number
                                        # -- End function
	.globl	gen_uniform_double              # -- Begin function gen_uniform_double
	.p2align	5
	.type	gen_uniform_double,@function
gen_uniform_double:                     # @gen_uniform_double
# %bb.0:
	pcaddu18i	$t8, %call36(drand48)
	jr	$t8
.Lfunc_end3:
	.size	gen_uniform_double, .Lfunc_end3-gen_uniform_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function check_percent
.LCPI4_0:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	check_percent
	.p2align	5
	.type	check_percent,@function
check_percent:                          # @check_percent
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(drand48)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(percentcheck)
	ld.w	$a1, $a0, %pc_lo12(percentcheck)
	movgr2fr.w	$fa2, $fp
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	addi.d	$a1, $a1, 1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	st.w	$a1, $a0, %pc_lo12(percentcheck)
	bcnez	$fcc0, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(numlocal)
	ld.w	$a1, $a0, %pc_lo12(numlocal)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(numlocal)
.LBB4_2:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	check_percent, .Lfunc_end4-check_percent
                                        # -- End function
	.globl	printstats                      # -- Begin function printstats
	.p2align	5
	.type	printstats,@function
printstats:                             # @printstats
# %bb.0:
	pcalau12i	$a0, %pc_hi20(percentcheck)
	ld.w	$a1, $a0, %pc_lo12(percentcheck)
	pcalau12i	$a0, %pc_hi20(numlocal)
	ld.w	$a2, $a0, %pc_lo12(numlocal)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end5:
	.size	printstats, .Lfunc_end5-printstats
                                        # -- End function
	.type	percentcheck,@object            # @percentcheck
	.local	percentcheck
	.comm	percentcheck,4,4
	.type	numlocal,@object                # @numlocal
	.local	numlocal
	.comm	numlocal,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"percentcheck=%d,numlocal=%d\n"
	.size	.L.str, 29

	.section	".note.GNU-stack","",@progbits
	.addrsig
