	.file	"va-arg-16.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function vafunction
.LCPI0_0:
	.dword	0x408bc00000000000              # double 888
.LCPI0_1:
	.dword	0x408f380000000000              # double 999
	.text
	.globl	vafunction
	.p2align	5
	.type	vafunction,@function
vafunction:                             # @vafunction
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI0_0)
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 16
	fcmp.ceq.d	$fcc0, $fa0, $fa2
	st.d	$a0, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_12
# %bb.2:
	ld.d	$a0, $sp, 8
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 8
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_12
# %bb.3:
	fld.d	$fa0, $a0, 8
	addi.d	$a1, $a0, 16
	vldi	$vr1, -1024
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.4:
	fld.d	$fa0, $a0, 16
	addi.d	$a1, $a0, 24
	vldi	$vr1, -1016
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.5:
	fld.d	$fa0, $a0, 24
	addi.d	$a1, $a0, 32
	vldi	$vr1, -1008
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.6:
	fld.d	$fa0, $a0, 32
	addi.d	$a1, $a0, 40
	vldi	$vr1, -1004
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.7:
	fld.d	$fa0, $a0, 40
	addi.d	$a1, $a0, 48
	vldi	$vr1, -1000
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.8:
	fld.d	$fa0, $a0, 48
	addi.d	$a1, $a0, 56
	vldi	$vr1, -996
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.9:
	fld.d	$fa0, $a0, 56
	addi.d	$a1, $a0, 64
	vldi	$vr1, -992
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a1, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.10:
	fld.d	$fa0, $a0, 64
	addi.d	$a0, $a0, 72
	vldi	$vr1, -990
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	st.d	$a0, $sp, 8
	bceqz	$fcc0, .LBB0_12
# %bb.11:
	addi.d	$sp, $sp, 80
	ret
.LBB0_12:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	vafunction, .Lfunc_end0-vafunction
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0x408bc00000000000              # double 888
.LCPI1_1:
	.dword	0x408f380000000000              # double 999
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 131072
	lu52i.d	$t0, $a1, 1026
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_1)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -524288
	lu52i.d	$a2, $a1, 1024
	ori	$a3, $zero, 0
	lu32i.d	$a3, 262144
	lu52i.d	$a4, $a3, 1025
	lu52i.d	$a5, $a1, 1025
	lu32i.d	$a0, -262144
	lu52i.d	$a6, $a0, 1025
	lu52i.d	$a0, $zero, 1023
	lu52i.d	$a1, $zero, 1024
	lu52i.d	$a3, $zero, 1025
	lu52i.d	$a7, $zero, 1026
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(vafunction)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
