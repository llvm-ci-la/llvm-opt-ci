	.file	"lasx-xvmaddwev-3.c"
	.text
	.globl	check_lasx_out                  # -- Begin function check_lasx_out
	.p2align	5
	.type	check_lasx_out,@function
check_lasx_out:                         # @check_lasx_out
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	slti	$a0, $a2, 32
	ori	$a1, $zero, 32
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB0_7
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$s3, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB0_3
# %bb.4:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 1
	bnez	$s1, .LBB0_5
	b	.LBB0_8
.LBB0_6:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_7:                                # %._crit_edge21.critedge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %._crit_edge21
	ori	$a0, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end0:
	.size	check_lasx_out, .Lfunc_end0-check_lasx_out
                                        # -- End function
	.globl	check_lasx_fp_out               # -- Begin function check_lasx_fp_out
	.p2align	5
	.type	check_lasx_fp_out,@function
check_lasx_fp_out:                      # @check_lasx_fp_out
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
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 8
	maskeqz	$a2, $a2, $a0
	or	$s4, $a2, $a1
	move	$s7, $zero
	ori	$s8, $zero, 32
	bnez	$a0, .LBB1_2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_2:                                # %.split.us
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s6, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s5, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_1
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_6:                                # %.split
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_5
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s6, 0
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s5, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_5
.LBB1_9:                                # %.split27.us
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
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
	pcaddu18i	$t8, %call36(check_lasx_out)
	jr	$t8
.LBB1_10:                               # %.loopexit
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
.Lfunc_end1:
	.size	check_lasx_fp_out, .Lfunc_end1-check_lasx_fp_out
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	1105593301670712                # 0x3ed8800031b38
	.dword	32460297679468876               # 0x735278007cf94c
	.dword	868253408745048                 # 0x315ac0000d658
	.dword	13033275828207616               # 0x2e4db200000000
.LCPI2_1:
	.byte	60                              # 0x3c
	.byte	30                              # 0x1e
	.byte	178                             # 0xb2
	.byte	14                              # 0xe
	.byte	220                             # 0xdc
	.byte	242                             # 0xf2
	.byte	88                              # 0x58
	.byte	6                               # 0x6
	.byte	245                             # 0xf5
	.byte	153                             # 0x99
	.byte	124                             # 0x7c
	.byte	235                             # 0xeb
	.byte	91                              # 0x5b
	.byte	11                              # 0xb
	.byte	115                             # 0x73
	.byte	49                              # 0x31
	.byte	186                             # 0xba
	.byte	191                             # 0xbf
	.byte	250                             # 0xfa
	.byte	44                              # 0x2c
	.byte	55                              # 0x37
	.byte	133                             # 0x85
	.byte	192                             # 0xc0
	.byte	197                             # 0xc5
	.byte	0                               # 0x0
	.byte	177                             # 0xb1
	.byte	170                             # 0xaa
	.byte	232                             # 0xe8
	.byte	117                             # 0x75
	.byte	157                             # 0x9d
	.byte	46                              # 0x2e
	.byte	55                              # 0x37
.LCPI2_2:
	.byte	128                             # 0x80
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	130                             # 0x82
	.byte	34                              # 0x22
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	156                             # 0x9c
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	232                             # 0xe8
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	182                             # 0xb6
	.byte	123                             # 0x7b
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	104                             # 0x68
	.byte	113                             # 0x71
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	14                              # 0xe
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	170                             # 0xaa
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
.LCPI2_3:
	.half	64824                           # 0xfd38
	.half	3                               # 0x3
	.half	65488                           # 0xffd0
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2076                            # 0x81c
	.half	0                               # 0x0
	.half	65364                           # 0xff54
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_4:
	.dword	-67272545219117801              # 0xff10fff9ff13fd17
	.dword	-67553994410557440              # 0xff10000000000000
	.dword	-63332861853237596              # 0xff1eff1902a0fea4
	.dword	-34360000774                    # 0xfffffff7fffbfefa
.LCPI2_5:
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	252                             # 0xfc
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_6:
	.byte	243                             # 0xf3
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	95                              # 0x5f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	127                             # 0x7f
	.byte	22                              # 0x16
	.byte	201                             # 0xc9
	.byte	0                               # 0x0
	.byte	184                             # 0xb8
	.byte	115                             # 0x73
	.byte	192                             # 0xc0
	.byte	225                             # 0xe1
	.byte	94                              # 0x5e
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	97                              # 0x61
.LCPI2_7:
	.half	65277                           # 0xfefd
	.half	12                              # 0xc
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65276                           # 0xfefc
	.half	672                             # 0x2a0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65284                           # 0xff04
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_8:
	.dword	-71495735006200321              # 0xff01ff01fffffdff
	.dword	-144117387132666369             # 0xfdfffdfffdfffdff
	.dword	-71495735022846207              # 0xff01ff01ff01ff01
	.dword	-433478078484973061             # 0xf9fbf9fbf9fbf9fb
.LCPI2_9:
	.half	65278                           # 0xfefe
	.half	254                             # 0xfe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65278                           # 0xfefe
	.half	65278                           # 0xfefe
	.half	65278                           # 0xfefe
	.half	65278                           # 0xfefe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64250                           # 0xfafa
	.half	64250                           # 0xfafa
	.half	64250                           # 0xfafa
	.half	64250                           # 0xfafa
.LCPI2_10:
	.dword	1073692671                      # 0x3fff3fff
	.dword	4611474908973580287             # 0x3fff3fff3fff3fff
	.dword	1073692671                      # 0x3fff3fff
	.dword	4611474908973580287             # 0x3fff3fff3fff3fff
.LCPI2_11:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	64                              # 0x40
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	64                              # 0x40
	.byte	5                               # 0x5
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
.LCPI2_12:
	.byte	39                              # 0x27
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	39                              # 0x27
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_13:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_14:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
.LCPI2_15:
	.dword	1157442761114259412             # 0x1010100f10100fd4
	.dword	281470681743361                 # 0xffff00000001
	.dword	1157442761114259412             # 0x1010100f10100fd4
	.dword	281470681743361                 # 0xffff00000001
.LCPI2_16:
	.byte	196                             # 0xc4
	.byte	125                             # 0x7d
	.byte	217                             # 0xd9
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	196                             # 0xc4
	.byte	125                             # 0x7d
	.byte	217                             # 0xd9
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_17:
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.dword	0                               # 0x0
	.dword	4294901760                      # 0xffff0000
	.dword	0                               # 0x0
	.dword	4294901760                      # 0xffff0000
.LCPI2_19:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
.LCPI2_20:
	.dword	973450558797947888              # 0xd8264202b8ea3f0
	.dword	3563204219600935413             # 0x31730b5beb7c99f5
	.dword	6081262457704914801             # 0x5464fbfc416b9f71
	.dword	3976288650754961664             # 0x372e9d75e8aab100
.LCPI2_21:
	.half	52544                           # 0xcd40
	.half	47572                           # 0xb9d4
	.half	56107                           # 0xdb2b
	.half	57458                           # 0xe072
	.half	4898                            # 0x1322
	.half	29916                           # 0x74dc
	.half	26802                           # 0x68b2
	.half	9898                            # 0x26aa
	.half	44256                           # 0xace0
	.half	26324                           # 0x66d4
	.half	2169                            # 0x879
	.half	33981                           # 0x84bd
	.half	15296                           # 0x3bc0
	.half	16635                           # 0x40fb
	.half	12237                           # 0x2fcd
	.half	32967                           # 0x80c7
.LCPI2_22:
	.half	65107                           # 0xfe53
	.half	41990                           # 0xa406
	.half	966                             # 0x3c6
	.half	23072                           # 0x5a20
	.half	52246                           # 0xcc16
	.half	56034                           # 0xdae2
	.half	44314                           # 0xad1a
	.half	60960                           # 0xee20
	.half	60417                           # 0xec01
	.half	27948                           # 0x6d2c
	.half	41209                           # 0xa0f9
	.half	47821                           # 0xbacd
	.half	30023                           # 0x7547
	.half	58545                           # 0xe4b1
	.half	3097                            # 0xc19
	.half	26425                           # 0x6739
.LCPI2_23:
	.word	1576638512                      # 0x5df99830
	.word	235757534                       # 0xe0d5fde
	.word	3694910729                      # 0xdc3bdd09
	.word	3936886599                      # 0xeaa81f47
	.word	2383245969                      # 0x8e0d7291
	.word	1326521931                      # 0x4f111e4b
	.word	3444268736                      # 0xcd4b5ec0
	.word	887903856                       # 0x34ec5670
.LCPI2_24:
	.dword	-14054992708740921              # 0xffce110f004658c7
	.dword	45792151034924747               # 0xa2afb7fff00ecb
	.dword	-49706476862474680              # 0xff4f6838ff937648
	.dword	119102625688781055              # 0x1a72334ffff00ff
.LCPI2_25:
	.half	671                             # 0x29f
	.half	138                             # 0x8a
	.half	706                             # 0x2c2
	.half	129                             # 0x81
	.half	609                             # 0x261
	.half	405                             # 0x195
	.half	505                             # 0x1f9
	.half	588                             # 0x24c
	.half	667                             # 0x29b
	.half	121                             # 0x79
	.half	938                             # 0x3aa
	.half	781                             # 0x30d
	.half	485                             # 0x1e5
	.half	420                             # 0x1a4
	.half	554                             # 0x22a
	.half	506                             # 0x1fa
.LCPI2_26:
	.word	4294902015                      # 0xffff00ff
	.word	65535                           # 0xffff
	.word	255                             # 0xff
	.word	255                             # 0xff
	.word	4294967040                      # 0xffffff00
	.word	4278190080                      # 0xff000000
	.word	4294902015                      # 0xffff00ff
	.word	16711680                        # 0xff0000
.LCPI2_27:
	.dword	-2291550214130209857            # 0xe032c738adcc6bbf
	.dword	2885340450249991157             # 0x280ac9da313763f5
	.dword	973706514                       # 0x3a099512
	.dword	-65535                          # 0xffffffffffff0001
.LCPI2_28:
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
.LCPI2_29:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_30:
	.dword	9223090561878065152             # 0x7fff000000000000
	.dword	0                               # 0x0
	.dword	9223090561878065152             # 0x7fff000000000000
	.dword	9151314442816847872             # 0x7f00000000000000
.LCPI2_31:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_32:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_33:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_34:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	62459                           # 0xf3fb
	.half	69                              # 0x45
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	62459                           # 0xf3fb
	.half	69                              # 0x45
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_35:
	.dword	281470681808899                 # 0xffff00010003
	.dword	36028805608898562               # 0x80000200000002
	.dword	281470681808899                 # 0xffff00010003
	.dword	8589934594                      # 0x200000002
.LCPI2_36:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_37:
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_38:
	.half	6656                            # 0x1a00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	6656                            # 0x1a00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_39:
	.dword	5504940                         # 0x53ffac
	.dword	-133143986176                   # 0xffffffe100000000
	.dword	-4289003612                     # 0xffffffff005affa4
	.dword	-4294443017                     # 0xffffffff0007fff7
.LCPI2_40:
	.half	83                              # 0x53
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	91                              # 0x5b
	.half	12                              # 0xc
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	6                               # 0x6
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_41:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	31                              # 0x1f
	.half	0                               # 0x0
	.half	31                              # 0x1f
	.half	0                               # 0x0
	.half	31                              # 0x1f
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
.LCPI2_42:
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_43:
	.dword	6917353103104606208             # 0x5fff5fff607f0000
	.dword	72569914916864                  # 0x420080000000
	.dword	6917353103104606208             # 0x5fff5fff607f0000
	.dword	72569914916864                  # 0x420080000000
.LCPI2_44:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	4096                            # 0x1000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	4096                            # 0x1000
.LCPI2_45:
	.dword	144114376343813888              # 0x1ffff4300ffff00
	.dword	72058693566333184               # 0x100010001000100
	.dword	144114376343813888              # 0x1ffff4300ffff00
	.dword	72058693566333184               # 0x100010001000100
.LCPI2_46:
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	65280                           # 0xff00
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	65280                           # 0xff00
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
.LCPI2_47:
	.word	0                               # 0x0
	.word	16777283                        # 0x1000043
	.word	16777472                        # 0x1000100
	.word	16777472                        # 0x1000100
	.word	0                               # 0x0
	.word	16777283                        # 0x1000043
	.word	16777472                        # 0x1000100
	.word	16777472                        # 0x1000100
.LCPI2_48:
	.dword	4290271135                      # 0xffb8579f
	.dword	4292590543                      # 0xffdbbbcf
	.dword	4290271135                      # 0xffb8579f
	.dword	4292590543                      # 0xffdbbbcf
.LCPI2_49:
	.half	62450                           # 0xf3f2
	.half	64243                           # 0xfaf3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63993                           # 0xf9f9
	.half	63993                           # 0xf9f9
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	62450                           # 0xf3f2
	.half	64243                           # 0xfaf3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63993                           # 0xf9f9
	.half	63993                           # 0xf9f9
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_50:
	.word	65537                           # 0x10001
	.word	0                               # 0x0
	.word	4096                            # 0x1000
	.word	0                               # 0x0
	.word	65537                           # 0x10001
	.word	0                               # 0x0
	.word	4096                            # 0x1000
	.word	0                               # 0x0
.LCPI2_51:
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967297                      # 0x100000001
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967297                      # 0x100000001
.LCPI2_52:
	.dword	50103314662031488               # 0xb200b300800080
	.dword	50103314662031488               # 0xb200b300800080
	.dword	41096385990492288               # 0x9200f200840080
	.dword	41096385990492288               # 0x9200f200840080
.LCPI2_53:
	.dword	4210752                         # 0x404040
	.dword	2105376                         # 0x202020
	.dword	4210752                         # 0x404040
	.dword	2105376                         # 0x202020
.LCPI2_54:
	.dword	2278821411449995264             # 0x1fa0000000080000
	.dword	0                               # 0x0
	.dword	2278821411449995264             # 0x1fa0000000080000
	.dword	0                               # 0x0
.LCPI2_55:
	.word	514                             # 0x202
	.word	0                               # 0x0
	.word	8388736                         # 0x800080
	.word	0                               # 0x0
	.word	514                             # 0x202
	.word	0                               # 0x0
	.word	8388736                         # 0x800080
	.word	0                               # 0x0
.LCPI2_56:
	.dword	-8589934591                     # 0xfffffffe00000001
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_57:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_58:
	.dword	4774943712549601280             # 0x4244020201010000
	.dword	-401806755378740                # 0xfffe928f1313c9cc
	.dword	4008792040                      # 0xeef14fe8
	.dword	0                               # 0x0
.LCPI2_59:
	.dword	-51230361316753408              # 0xff49fe4200000000
	.dword	-143272949302559198             # 0xfe02fe02fee5fe22
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_60:
	.dword	144680345659310080              # 0x202020201010000
	.dword	0                               # 0x0
	.dword	4008792040                      # 0xeef14fe8
	.dword	0                               # 0x0
.LCPI2_61:
	.dword	-8680820729958105088            # 0x8787878a00000000
	.dword	1061109564                      # 0x3f3f3f3c
	.dword	-4123389852831479926            # 0xc6c6c6c68787878a
	.dword	1061109564                      # 0x3f3f3f3c
.LCPI2_62:
	.dword	4557430887737720832             # 0x3f3f3f3f00000000
	.dword	1061109567                      # 0x3f3f3f3f
	.dword	4557430888798830399             # 0x3f3f3f3f3f3f3f3f
	.dword	4557430888798830399             # 0x3f3f3f3f3f3f3f3f
.LCPI2_63:
	.dword	4294967286                      # 0xfffffff6
	.dword	0                               # 0x0
	.dword	4294967286                      # 0xfffffff6
	.dword	0                               # 0x0
.LCPI2_64:
	.dword	-4340409007769387018            # 0xc3c3c500fffffff6
	.dword	-61                             # 0xffffffffffffffc3
	.dword	7161676979442533622             # 0x63636344c3c3c4f6
	.dword	-29                             # 0xffffffffffffffe3
.LCPI2_65:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_66:
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
.LCPI2_67:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.dword	0                               # 0x0
.LCPI2_68:
	.dword	-1125912792793104               # 0xfffbfffcffeffff0
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1125912792793104               # 0xfffbfffcffeffff0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_69:
	.dword	1125912792793103                # 0x400030010000f
	.dword	1125964332400643                # 0x4000f00100003
	.dword	1125912792793103                # 0x400030010000f
	.dword	1125964332400643                # 0x4000f00100003
.LCPI2_70:
	.dword	-6062728447708385303            # 0xabdcdc9938afafe9
	.dword	6885274253221247                # 0x18761ed60b5d7f
	.dword	-6062728447708385303            # 0xabdcdc9938afafe9
	.dword	6885274253221247                # 0x18761ed60b5d7f
.LCPI2_71:
	.dword	356071278755775725              # 0x4f104f104f504ed
	.dword	281470681939965                 # 0xffff0002fffd
	.dword	356071278755775725              # 0x4f104f104f504ed
	.dword	281470681939965                 # 0xffff0002fffd
.LCPI2_72:
	.dword	4393328002296960                # 0xf9bb562f56c80
	.dword	12150462477555                  # 0xb0cfffff4f3
	.dword	4393328002296960                # 0xf9bb562f56c80
	.dword	12150462477555                  # 0xb0cfffff4f3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr3, $sp, 96                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr3, $sp, 192
	xvmaddwev.h.bu.b	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 28
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, -255
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	xvmaddwev.h.bu.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 39
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.h.bu.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 50
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 192
	xvmaddwev.h.bu.b	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 61
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvmaddwev.h.bu.b	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 72
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 192
	xvmaddwev.h.bu.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 83
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.h.bu.b	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.h.bu.b	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 105
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4082
	ori	$a0, $a0, 3890
	lu32i.d	$a0, 65280
	lu52i.d	$a0, $a0, -16
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 192
	xvrepli.d	$xr0, -18
	xvmaddwev.h.bu.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 192
	xvrepli.w	$xr0, 1
	xvmaddwev.h.bu.b	$xr2, $xr0, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 127
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, -21
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.h.bu.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 138
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.h.bu.b	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 149
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 192
	xvmaddwev.w.hu.h	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 160
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 192
	xvmaddwev.w.hu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 182
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 193
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 204
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	xvrepli.b	$xr1, -9
	xvst	$xr1, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 226
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 237
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.w.hu.h	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.w.hu.h	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 259
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 192
	xvmaddwev.w.hu.h	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 270
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr1, 255
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 281
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 192
	xvmaddwev.w.hu.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 292
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvmaddwev.w.hu.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 303
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_47)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvmaddwev.w.hu.h	$xr2, $xr0, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_50)
	lu12i.w	$a0, -16
	ori	$a0, $a0, 1543
	xvreplgr2vr.w	$xr2, $a0
	xvmaddwev.w.hu.h	$xr1, $xr2, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 325
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.wu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 336
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_52)
	xvst	$xr0, $sp, 192
	xvrepli.w	$xr1, 64
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.wu.w	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 347
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.wu.w	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 358
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvmaddwev.d.wu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 369
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_55)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.wu.w	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 380
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_57)
	xvst	$xr0, $sp, 192
	xvldi	$xr0, -1552
	xvld	$xr2, $sp, 128                  # 32-byte Folded Reload
	xvmaddwev.d.wu.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 391
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_60)
	xvst	$xr0, $sp, 192
	xvmaddwev.q.du.d	$xr2, $xr2, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 402
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, 5
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_61)
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_63)
	xvst	$xr2, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr1, $xr2, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 424
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	xvst	$xr0, $sp, 192
	xvrepli.d	$xr0, 128
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 435
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_65)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 446
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_66)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.q.du.d	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 457
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 468
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_67)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.q.du.d	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 479
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 490
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 9
	xvst	$xr0, $sp, 192
	xvrepli.w	$xr1, 9
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 501
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_69)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvmaddwev.q.du.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 512
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_70)
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_71)
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_72)
	xvst	$xr0, $sp, 192
	xvmaddwev.q.du.d	$xr2, $xr1, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 523
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -288
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: \n"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"0x"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %02x"
	.size	.L.str.2, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvmaddwev-3.c"
	.size	.L.str.5, 137

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
