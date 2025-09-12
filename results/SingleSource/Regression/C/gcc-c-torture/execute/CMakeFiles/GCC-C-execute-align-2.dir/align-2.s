	.file	"align-2.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(s_c_s)
	addi.d	$a0, $a0, %pc_lo12(s_c_s)
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 97
	bne	$a1, $a2, .LBB0_29
# %bb.1:
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_29
# %bb.2:
	pcalau12i	$a0, %pc_hi20(s_c_i)
	addi.d	$a0, $a0, %pc_lo12(s_c_i)
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 98
	bne	$a1, $a2, .LBB0_29
# %bb.3:
	ld.w	$a0, $a0, 4
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB0_29
# %bb.4:
	pcalau12i	$a0, %pc_hi20(s_s_i)
	addi.d	$a0, $a0, %pc_lo12(s_s_i)
	ld.hu	$a1, $a0, 0
	ori	$a2, $zero, 15
	bne	$a1, $a2, .LBB0_29
# %bb.5:
	ld.w	$a0, $a0, 4
	ori	$a1, $zero, 16
	bne	$a0, $a1, .LBB0_29
# %bb.6:
	pcalau12i	$a0, %pc_hi20(s_c_f)
	addi.d	$a0, $a0, %pc_lo12(s_c_f)
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 99
	bne	$a1, $a2, .LBB0_29
# %bb.7:
	fld.s	$fa0, $a0, 4
	vldi	$vr1, -1231
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.8:
	pcalau12i	$a0, %pc_hi20(s_s_f)
	addi.d	$a0, $a0, %pc_lo12(s_s_f)
	ld.hu	$a1, $a0, 0
	ori	$a2, $zero, 18
	bne	$a1, $a2, .LBB0_29
# %bb.9:
	fld.s	$fa0, $a0, 4
	vldi	$vr1, -1229
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.10:
	pcalau12i	$a0, %pc_hi20(s_c_d)
	addi.d	$a0, $a0, %pc_lo12(s_c_d)
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 100
	bne	$a1, $a2, .LBB0_29
# %bb.11:
	fld.d	$fa0, $a0, 8
	vldi	$vr1, -972
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.12:
	pcalau12i	$a0, %pc_hi20(s_s_d)
	addi.d	$a0, $a0, %pc_lo12(s_s_d)
	ld.hu	$a1, $a0, 0
	ori	$a2, $zero, 21
	bne	$a1, $a2, .LBB0_29
# %bb.13:
	fld.d	$fa0, $a0, 8
	vldi	$vr1, -970
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.14:
	pcalau12i	$a0, %pc_hi20(s_i_d)
	addi.d	$a0, $a0, %pc_lo12(s_i_d)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 23
	bne	$a1, $a2, .LBB0_29
# %bb.15:
	fld.d	$fa0, $a0, 8
	vldi	$vr1, -968
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.16:
	pcalau12i	$a0, %pc_hi20(s_f_d)
	addi.d	$a0, $a0, %pc_lo12(s_f_d)
	fld.s	$fa0, $a0, 0
	vldi	$vr1, -1223
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.17:
	fld.d	$fa0, $a0, 8
	vldi	$vr1, -966
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.18:
	pcalau12i	$a0, %pc_hi20(s_c_ld)
	addi.d	$a1, $a0, %pc_lo12(s_c_ld)
	ld.bu	$a0, $a1, 0
	ori	$a2, $zero, 101
	bne	$a0, $a2, .LBB0_29
# %bb.19:
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 0
	lu32i.d	$a2, 241664
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_29
# %bb.20:
	pcalau12i	$a0, %pc_hi20(s_s_ld)
	addi.d	$a1, $a0, %pc_lo12(s_s_ld)
	ld.hu	$a0, $a1, 0
	ori	$a2, $zero, 28
	bne	$a0, $a2, .LBB0_29
# %bb.21:
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 0
	lu32i.d	$a2, 249856
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_29
# %bb.22:
	pcalau12i	$a0, %pc_hi20(s_i_ld)
	addi.d	$a1, $a0, %pc_lo12(s_i_ld)
	ld.w	$a0, $a1, 0
	ori	$a2, $zero, 30
	bne	$a0, $a2, .LBB0_29
# %bb.23:
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 0
	lu32i.d	$a2, 258048
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_29
# %bb.24:
	pcalau12i	$a0, %pc_hi20(s_f_ld)
	addi.d	$a1, $a0, %pc_lo12(s_f_ld)
	fld.s	$fa0, $a1, 0
	lu12i.w	$a0, 270336
	movgr2fr.w	$fa1, $a0
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.25:
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 0
	lu32i.d	$a2, 264192
	lu52i.d	$a3, $a2, 1024
	ori	$fp, $zero, 0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_29
# %bb.26:
	pcalau12i	$a0, %pc_hi20(s_d_ld)
	addi.d	$a1, $a0, %pc_lo12(s_d_ld)
	fld.d	$fa0, $a1, 0
	lu32i.d	$fp, 65536
	lu52i.d	$a0, $fp, 1028
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_29
# %bb.27:
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 0
	lu32i.d	$a2, 268288
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_29
# %bb.28:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_29:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	s_c_s,@object                   # @s_c_s
	.data
	.globl	s_c_s
	.p2align	1, 0x0
s_c_s:
	.byte	97                              # 0x61
	.byte	0                               # 0x0
	.half	13                              # 0xd
	.size	s_c_s, 4

	.type	s_c_i,@object                   # @s_c_i
	.globl	s_c_i
	.p2align	2, 0x0
s_c_i:
	.byte	98                              # 0x62
	.space	3
	.word	14                              # 0xe
	.size	s_c_i, 8

	.type	s_s_i,@object                   # @s_s_i
	.globl	s_s_i
	.p2align	2, 0x0
s_s_i:
	.half	15                              # 0xf
	.space	2
	.word	16                              # 0x10
	.size	s_s_i, 8

	.type	s_c_f,@object                   # @s_c_f
	.globl	s_c_f
	.p2align	2, 0x0
s_c_f:
	.byte	99                              # 0x63
	.space	3
	.word	0x41880000                      # float 17
	.size	s_c_f, 8

	.type	s_s_f,@object                   # @s_s_f
	.globl	s_s_f
	.p2align	2, 0x0
s_s_f:
	.half	18                              # 0x12
	.space	2
	.word	0x41980000                      # float 19
	.size	s_s_f, 8

	.type	s_c_d,@object                   # @s_c_d
	.globl	s_c_d
	.p2align	3, 0x0
s_c_d:
	.byte	100                             # 0x64
	.space	7
	.dword	0x4034000000000000              # double 20
	.size	s_c_d, 16

	.type	s_s_d,@object                   # @s_s_d
	.globl	s_s_d
	.p2align	3, 0x0
s_s_d:
	.half	21                              # 0x15
	.space	6
	.dword	0x4036000000000000              # double 22
	.size	s_s_d, 16

	.type	s_i_d,@object                   # @s_i_d
	.globl	s_i_d
	.p2align	3, 0x0
s_i_d:
	.word	23                              # 0x17
	.space	4
	.dword	0x4038000000000000              # double 24
	.size	s_i_d, 16

	.type	s_f_d,@object                   # @s_f_d
	.globl	s_f_d
	.p2align	3, 0x0
s_f_d:
	.word	0x41c80000                      # float 25
	.space	4
	.dword	0x403a000000000000              # double 26
	.size	s_f_d, 16

	.type	s_c_ld,@object                  # @s_c_ld
	.globl	s_c_ld
	.p2align	4, 0x0
s_c_ld:
	.byte	101                             # 0x65
	.space	15
	.dword	0x0000000000000000              # fp128 27
	.dword	0x4003b00000000000
	.size	s_c_ld, 32

	.type	s_s_ld,@object                  # @s_s_ld
	.globl	s_s_ld
	.p2align	4, 0x0
s_s_ld:
	.half	28                              # 0x1c
	.space	14
	.dword	0x0000000000000000              # fp128 29
	.dword	0x4003d00000000000
	.size	s_s_ld, 32

	.type	s_i_ld,@object                  # @s_i_ld
	.globl	s_i_ld
	.p2align	4, 0x0
s_i_ld:
	.word	30                              # 0x1e
	.space	12
	.dword	0x0000000000000000              # fp128 31
	.dword	0x4003f00000000000
	.size	s_i_ld, 32

	.type	s_f_ld,@object                  # @s_f_ld
	.globl	s_f_ld
	.p2align	4, 0x0
s_f_ld:
	.word	0x42000000                      # float 32
	.space	12
	.dword	0x0000000000000000              # fp128 33
	.dword	0x4004080000000000
	.size	s_f_ld, 32

	.type	s_d_ld,@object                  # @s_d_ld
	.globl	s_d_ld
	.p2align	4, 0x0
s_d_ld:
	.dword	0x4041000000000000              # double 34
	.space	8
	.dword	0x0000000000000000              # fp128 35
	.dword	0x4004180000000000
	.size	s_d_ld, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
