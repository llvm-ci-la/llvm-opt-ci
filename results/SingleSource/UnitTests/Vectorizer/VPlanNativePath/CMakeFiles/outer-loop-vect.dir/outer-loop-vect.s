	.file	"outer-loop-vect.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI0_2:
	.word	333                             # 0x14d
	.word	345                             # 0x159
	.word	357                             # 0x165
	.word	369                             # 0x171
.LCPI0_3:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
.LCPI0_4:
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
.LCPI0_5:
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
.LCPI0_6:
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
.LCPI0_7:
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
.LCPI0_8:
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
.LCPI0_9:
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
.LCPI0_10:
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
.LCPI0_11:
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
.LCPI0_12:
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
.LCPI0_13:
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
.LCPI0_14:
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
.LCPI0_15:
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
.LCPI0_16:
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
.LCPI0_17:
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
.LCPI0_18:
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	65                              # 0x41
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
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
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1536
	.cfi_def_cfa_offset 5616
	ori	$a2, $zero, 15
	st.d	$a2, $sp, 464
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 464
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB0_1
# %bb.2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1360
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 904
	addi.d	$a1, $sp, 464
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 9
	ori	$s3, $a0, 3136
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
.Ltmp3:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:
.Ltmp6:                                 # EH_LABEL
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.5:
	move	$s2, $a0
	lu12i.w	$a0, -524288
	lu52i.d	$s7, $a0, 2047
	st.d	$s7, $sp, 464
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s4, $a0, %pc_lo12(_ZL3rng)
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a2, $sp, 464
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB0_6 Depth=1
	stx.w	$a0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s3, .LBB0_6
# %bb.8:
	st.d	$s7, $sp, 464
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s4, $a0, %pc_lo12(_ZL3rng)
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a2, $sp, 464
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.10:                               # %.noexc87
                                        #   in Loop: Header=BB0_9 Depth=1
	stx.w	$a0, $s2, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s3, .LBB0_9
# %bb.11:
	move	$a0, $zero
	ori	$a1, $zero, 400
	ori	$a2, $zero, 100
	move	$a3, $s1
	.p2align	4, , 16
.LBB0_12:                               # %.preheader1.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	move	$a4, $zero
	mul.d	$a5, $a0, $a1
	add.d	$a5, $fp, $a5
	move	$a6, $s2
	.p2align	4, , 16
.LBB0_13:                               # %.preheader.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	move	$t0, $zero
	move	$a7, $zero
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_14:                               #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$t2, $a3, $t0
	ld.w	$t3, $t1, 0
	mul.d	$t2, $t3, $t2
	add.d	$a7, $t2, $a7
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 400
	bne	$t0, $a1, .LBB0_14
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	slli.d	$t0, $a4, 2
	stx.w	$a7, $a5, $t0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 4
	bne	$a4, $a2, .LBB0_13
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 400
	bne	$a0, $a2, .LBB0_12
# %bb.17:                               # %"_ZZ4mainENK3$_0clEmmmPiPKiS2_.exit"
	move	$a0, $zero
	ori	$a1, $zero, 400
	pcalau12i	$s4, %pc_hi20(.LCPI0_0)
	vld	$vr0, $s4, %pc_lo12(.LCPI0_0)
	pcalau12i	$s6, %pc_hi20(.LCPI0_1)
	vld	$vr1, $s6, %pc_lo12(.LCPI0_1)
	vreplgr2vr.d	$vr2, $s2
	vrepli.b	$vr3, 0
	vrepli.d	$vr4, 400
	ori	$a2, $zero, 100
	.p2align	4, , 16
.LBB0_18:                               # %.preheader1.i90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	move	$a3, $zero
	mul.d	$a4, $a0, $a1
	add.d	$a5, $s1, $a4
	add.d	$a4, $s0, $a4
	vreplgr2vr.d	$vr5, $a5
	vreplgr2vr.d	$vr6, $a4
	vori.b	$vr7, $vr1, 0
	vori.b	$vr8, $vr0, 0
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	vslli.d	$vr10, $vr7, 2
	vadd.d	$vr12, $vr2, $vr10
	vslli.d	$vr11, $vr8, 2
	vadd.d	$vr13, $vr2, $vr11
	vori.b	$vr14, $vr3, 0
	vori.b	$vr15, $vr3, 0
	vori.b	$vr9, $vr3, 0
	.p2align	4, , 16
.LBB0_20:                               #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vslli.d	$vr16, $vr15, 2
	vadd.d	$vr16, $vr5, $vr16
	vslli.d	$vr17, $vr14, 2
	vadd.d	$vr17, $vr5, $vr17
	vpickve2gr.d	$a4, $vr17, 0
	ld.w	$a4, $a4, 0
	vpickve2gr.d	$a5, $vr17, 1
	ld.w	$a5, $a5, 0
	vpickve2gr.d	$a6, $vr16, 0
	ld.w	$a6, $a6, 0
	vpickve2gr.d	$a7, $vr16, 1
	ld.w	$a7, $a7, 0
	vinsgr2vr.w	$vr16, $a4, 0
	vinsgr2vr.w	$vr16, $a5, 1
	vinsgr2vr.w	$vr16, $a6, 2
	vinsgr2vr.w	$vr16, $a7, 3
	vori.b	$vr17, $vr13, 0
	vmadd.d	$vr17, $vr15, $vr4
	vori.b	$vr18, $vr12, 0
	vmadd.d	$vr18, $vr14, $vr4
	vpickve2gr.d	$a4, $vr18, 0
	ld.w	$a4, $a4, 0
	vpickve2gr.d	$a5, $vr18, 1
	ld.w	$a5, $a5, 0
	vpickve2gr.d	$a6, $vr17, 0
	ld.w	$a6, $a6, 0
	vpickve2gr.d	$a7, $vr17, 1
	ld.w	$a7, $a7, 0
	vinsgr2vr.w	$vr17, $a4, 0
	vinsgr2vr.w	$vr17, $a5, 1
	vinsgr2vr.w	$vr17, $a6, 2
	vinsgr2vr.w	$vr17, $a7, 3
	vmadd.w	$vr9, $vr17, $vr16
	vaddi.du	$vr14, $vr14, 1
	vpickve2gr.d	$a4, $vr14, 0
	vaddi.du	$vr15, $vr15, 1
	bne	$a4, $a2, .LBB0_20
# %bb.21:                               # %vector.latch
                                        #   in Loop: Header=BB0_19 Depth=2
	vadd.d	$vr11, $vr6, $vr11
	vadd.d	$vr10, $vr6, $vr10
	vpickve2gr.d	$a4, $vr10, 0
	vstelm.w	$vr9, $a4, 0, 0
	vpickve2gr.d	$a4, $vr10, 1
	vstelm.w	$vr9, $a4, 0, 1
	vpickve2gr.d	$a4, $vr11, 0
	vstelm.w	$vr9, $a4, 0, 2
	vpickve2gr.d	$a4, $vr11, 1
	vstelm.w	$vr9, $a4, 0, 3
	addi.d	$a3, $a3, 4
	vaddi.du	$vr7, $vr7, 4
	vaddi.du	$vr8, $vr8, 4
	bne	$a3, $a2, .LBB0_19
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a2, .LBB0_18
# %bb.23:                               # %"_ZZ4mainENK3$_1clEmmmPiPKiS2_.exit"
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_85
# %bb.24:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit112
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 492
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp18:                                # EH_LABEL
	ori	$a0, $zero, 492
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.25:
.Ltmp21:                                # EH_LABEL
	move	$s0, $a0
	ori	$a0, $zero, 492
	ori	$s3, $zero, 492
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.26:
	move	$s1, $a0
	st.d	$s7, $sp, 464
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s2, $a0, %pc_lo12(_ZL3rng)
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a2, $sp, 464
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.28:                               # %.noexc116
                                        #   in Loop: Header=BB0_27 Depth=1
	stx.w	$a0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s3, .LBB0_27
# %bb.29:
	move	$a0, $zero
	ori	$a1, $zero, 333
	ori	$a2, $zero, 492
	ori	$a3, $zero, 123
	.p2align	4, , 16
.LBB0_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	slli.d	$a4, $a0, 2
	ldx.w	$a5, $s1, $a4
	move	$a6, $zero
	.p2align	4, , 16
.LBB0_31:                               #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a7, $s1, $a6
	mul.d	$a7, $a7, $a1
	addi.d	$a6, $a6, 4
	add.d	$a5, $a7, $a5
	bne	$a6, $a2, .LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=1
	add.d	$a5, $a5, $a1
	stx.w	$a5, $fp, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 12
	bne	$a0, $a3, .LBB0_30
# %bb.33:                               # %"_ZZ4mainENK3$_2clEmPiPKi.exit"
	move	$a0, $zero
	vld	$vr0, $s4, %pc_lo12(.LCPI0_0)
	vld	$vr1, $s6, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_2)
	vreplgr2vr.d	$vr3, $s1
	vrepli.b	$vr4, 0
	ori	$a1, $zero, 123
	vreplgr2vr.d	$vr5, $s0
	vrepli.w	$vr13, 48
	ori	$a2, $zero, 120
	.p2align	4, , 16
.LBB0_34:                               # %vector.body342
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
	vslli.d	$vr6, $vr0, 2
	vadd.d	$vr8, $vr3, $vr6
	vslli.d	$vr7, $vr1, 2
	vadd.d	$vr9, $vr3, $vr7
	vpickve2gr.d	$a3, $vr9, 0
	ld.w	$a3, $a3, 0
	vpickve2gr.d	$a4, $vr9, 1
	ld.w	$a4, $a4, 0
	vpickve2gr.d	$a5, $vr8, 0
	ld.w	$a5, $a5, 0
	vpickve2gr.d	$a6, $vr8, 1
	ld.w	$a6, $a6, 0
	vinsgr2vr.w	$vr8, $a3, 0
	vinsgr2vr.w	$vr8, $a4, 1
	vinsgr2vr.w	$vr8, $a5, 2
	vinsgr2vr.w	$vr8, $a6, 3
	vori.b	$vr9, $vr4, 0
	vori.b	$vr10, $vr4, 0
	.p2align	4, , 16
.LBB0_35:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vslli.d	$vr11, $vr10, 2
	vadd.d	$vr11, $vr3, $vr11
	vslli.d	$vr12, $vr9, 2
	vadd.d	$vr12, $vr3, $vr12
	vpickve2gr.d	$a3, $vr12, 0
	ld.w	$a3, $a3, 0
	vpickve2gr.d	$a4, $vr12, 1
	ld.w	$a4, $a4, 0
	vpickve2gr.d	$a5, $vr11, 0
	ld.w	$a5, $a5, 0
	vpickve2gr.d	$a6, $vr11, 1
	ld.w	$a6, $a6, 0
	vinsgr2vr.w	$vr11, $a3, 0
	vinsgr2vr.w	$vr11, $a4, 1
	vinsgr2vr.w	$vr11, $a5, 2
	vinsgr2vr.w	$vr11, $a6, 3
	vmadd.w	$vr8, $vr11, $vr2
	vaddi.du	$vr9, $vr9, 1
	vpickve2gr.d	$a3, $vr9, 0
	vaddi.du	$vr10, $vr10, 1
	bne	$a3, $a1, .LBB0_35
# %bb.36:                               # %vector.latch348
                                        #   in Loop: Header=BB0_34 Depth=1
	vadd.w	$vr8, $vr8, $vr2
	vadd.d	$vr6, $vr5, $vr6
	vadd.d	$vr7, $vr5, $vr7
	vpickve2gr.d	$a3, $vr7, 0
	vstelm.w	$vr8, $a3, 0, 0
	vpickve2gr.d	$a3, $vr7, 1
	vstelm.w	$vr8, $a3, 0, 1
	vpickve2gr.d	$a3, $vr6, 0
	vstelm.w	$vr8, $a3, 0, 2
	vpickve2gr.d	$a3, $vr6, 1
	vstelm.w	$vr8, $a3, 0, 3
	addi.d	$a0, $a0, 4
	vadd.w	$vr2, $vr2, $vr13
	vaddi.du	$vr1, $vr1, 4
	vaddi.du	$vr0, $vr0, 4
	bne	$a0, $a2, .LBB0_34
# %bb.37:                               # %scalar.ph340
	ld.w	$a0, $s1, 480
	move	$a1, $zero
	ori	$a2, $zero, 1773
	ori	$a3, $zero, 492
	.p2align	4, , 16
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $s1, $a1
	mul.d	$a4, $a4, $a2
	addi.d	$a1, $a1, 4
	add.d	$a0, $a4, $a0
	bne	$a1, $a3, .LBB0_38
# %bb.39:                               # %scalar.ph340.1
	move	$a1, $zero
	addi.d	$a2, $a0, 1773
	ld.w	$a0, $s1, 484
	st.w	$a2, $s0, 480
	ori	$a2, $zero, 1785
	ori	$a3, $zero, 492
	.p2align	4, , 16
.LBB0_40:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $s1, $a1
	mul.d	$a4, $a4, $a2
	addi.d	$a1, $a1, 4
	add.d	$a0, $a4, $a0
	bne	$a1, $a3, .LBB0_40
# %bb.41:                               # %scalar.ph340.2
	vst	$vr13, $sp, 448                 # 16-byte Folded Spill
	move	$a1, $zero
	addi.d	$a2, $a0, 1785
	ld.w	$a0, $s1, 488
	st.w	$a2, $s0, 484
	ori	$a2, $zero, 1797
	ori	$a3, $zero, 492
	.p2align	4, , 16
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $s1, $a1
	mul.d	$a4, $a4, $a2
	addi.d	$a1, $a1, 4
	add.d	$a0, $a4, $a0
	bne	$a1, $a3, .LBB0_42
# %bb.43:                               # %"_ZZ4mainENK3$_3clEmPiPKi.exit"
	addi.d	$a0, $a0, 1797
	st.w	$a0, $s0, 488
	ori	$a2, $zero, 492
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_86
# %bb.44:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit137
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 44
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 492
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp30:                                # EH_LABEL
	ori	$a0, $zero, 492
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.45:
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	ori	$a0, $zero, 492
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.46:
.Ltmp36:                                # EH_LABEL
	move	$s1, $a0
	ori	$a0, $zero, 1824
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.47:
	move	$s2, $a0
	st.d	$s7, $sp, 464
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s5, $zero
	ori	$s8, $zero, 492
	.p2align	4, , 16
.LBB0_48:                               # =>This Inner Loop Header: Depth=1
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a2, $sp, 464
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.49:                               # %.noexc141
                                        #   in Loop: Header=BB0_48 Depth=1
	stx.w	$a0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s8, .LBB0_48
# %bb.50:
	st.d	$s7, $sp, 464
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s5, $zero
	ori	$s7, $zero, 1824
	.p2align	4, , 16
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a2, $sp, 464
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.52:                               # %.noexc146
                                        #   in Loop: Header=BB0_51 Depth=1
	stx.w	$a0, $s2, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s7, .LBB0_51
# %bb.53:
	move	$a1, $zero
	lu12i.w	$a0, -520026
	ori	$a0, $a0, 2065
	lu32i.d	$a0, -520026
	lu52i.d	$a0, $a0, 166
	ori	$a2, $zero, 123
	ori	$a3, $zero, 1824
	.p2align	4, , 16
.LBB0_54:                               # %.preheader.i148
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
	move	$a5, $zero
	move	$a4, $zero
	.p2align	4, , 16
.LBB0_55:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a6, $s2, $a5
	mulh.du	$a7, $a6, $a0
	sub.d	$t0, $a6, $a7
	srli.d	$t0, $t0, 1
	add.d	$a7, $t0, $a7
	srli.d	$a7, $a7, 6
	mul.d	$a7, $a7, $a2
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s1, $a6
	addi.d	$a5, $a5, 8
	add.d	$a4, $a6, $a4
	bne	$a5, $a3, .LBB0_55
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=1
	slli.d	$a5, $a1, 2
	addi.d	$a1, $a1, 1
	stx.w	$a4, $fp, $a5
	bne	$a1, $a2, .LBB0_54
# %bb.57:                               # %"_ZZ4mainENK3$_4clEmmPiPKiS2_.exit"
	move	$a1, $zero
	vld	$vr0, $s4, %pc_lo12(.LCPI0_0)
	vld	$vr1, $s6, %pc_lo12(.LCPI0_1)
	vrepli.b	$vr2, 0
	vreplgr2vr.d	$vr3, $s2
	vreplgr2vr.d	$vr4, $a0
	vrepli.d	$vr5, 123
	vreplgr2vr.d	$vr6, $s1
	ori	$a2, $zero, 228
	vreplgr2vr.d	$vr7, $s0
	ori	$a3, $zero, 120
	.p2align	4, , 16
.LBB0_58:                               # %vector.body355
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
	vori.b	$vr9, $vr2, 0
	vori.b	$vr10, $vr2, 0
	vori.b	$vr8, $vr2, 0
	.p2align	4, , 16
.LBB0_59:                               #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vslli.d	$vr11, $vr9, 3
	vslli.d	$vr12, $vr10, 3
	vadd.d	$vr12, $vr3, $vr12
	vadd.d	$vr11, $vr3, $vr11
	vpickve2gr.d	$a4, $vr11, 0
	ld.w	$a4, $a4, 0
	vpickve2gr.d	$a5, $vr11, 1
	ld.w	$a5, $a5, 0
	vpickve2gr.d	$a6, $vr12, 0
	ld.w	$a6, $a6, 0
	vpickve2gr.d	$a7, $vr12, 1
	ld.w	$a7, $a7, 0
	vinsgr2vr.w	$vr11, $a4, 0
	vinsgr2vr.w	$vr11, $a5, 1
	vinsgr2vr.w	$vr12, $a6, 0
	vinsgr2vr.w	$vr12, $a7, 1
	vsllwil.d.w	$vr12, $vr12, 0
	vsllwil.d.w	$vr11, $vr11, 0
	vmuh.du	$vr13, $vr11, $vr4
	vsub.d	$vr14, $vr11, $vr13
	vsrli.d	$vr14, $vr14, 1
	vadd.d	$vr13, $vr14, $vr13
	vsrli.d	$vr13, $vr13, 6
	vmsub.d	$vr11, $vr13, $vr5
	vmuh.du	$vr13, $vr12, $vr4
	vsub.d	$vr14, $vr12, $vr13
	vsrli.d	$vr14, $vr14, 1
	vadd.d	$vr13, $vr14, $vr13
	vsrli.d	$vr13, $vr13, 6
	vmsub.d	$vr12, $vr13, $vr5
	vslli.d	$vr12, $vr12, 2
	vadd.d	$vr12, $vr6, $vr12
	vslli.d	$vr11, $vr11, 2
	vadd.d	$vr11, $vr6, $vr11
	vpickve2gr.d	$a4, $vr11, 0
	ld.w	$a4, $a4, 0
	vpickve2gr.d	$a5, $vr11, 1
	ld.w	$a5, $a5, 0
	vpickve2gr.d	$a6, $vr12, 0
	ld.w	$a6, $a6, 0
	vpickve2gr.d	$a7, $vr12, 1
	ld.w	$a7, $a7, 0
	vinsgr2vr.w	$vr11, $a4, 0
	vinsgr2vr.w	$vr11, $a5, 1
	vinsgr2vr.w	$vr11, $a6, 2
	vinsgr2vr.w	$vr11, $a7, 3
	vadd.w	$vr8, $vr11, $vr8
	vaddi.du	$vr9, $vr9, 1
	vpickve2gr.d	$a4, $vr9, 0
	vaddi.du	$vr10, $vr10, 1
	bne	$a4, $a2, .LBB0_59
# %bb.60:                               # %vector.latch360
                                        #   in Loop: Header=BB0_58 Depth=1
	vslli.d	$vr9, $vr0, 2
	vadd.d	$vr9, $vr7, $vr9
	vslli.d	$vr10, $vr1, 2
	vadd.d	$vr10, $vr7, $vr10
	vpickve2gr.d	$a4, $vr10, 0
	vstelm.w	$vr8, $a4, 0, 0
	vpickve2gr.d	$a4, $vr10, 1
	vstelm.w	$vr8, $a4, 0, 1
	vpickve2gr.d	$a4, $vr9, 0
	vstelm.w	$vr8, $a4, 0, 2
	vpickve2gr.d	$a4, $vr9, 1
	vstelm.w	$vr8, $a4, 0, 3
	addi.d	$a1, $a1, 4
	vaddi.du	$vr1, $vr1, 4
	vaddi.du	$vr0, $vr0, 4
	bne	$a1, $a3, .LBB0_58
# %bb.61:                               # %.preheader.i151.preheader
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 123
	ori	$a4, $zero, 1824
	.p2align	4, , 16
.LBB0_62:                               # %.preheader.i151
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $s2, $a1
	mulh.du	$a6, $a5, $a0
	sub.d	$a7, $a5, $a6
	srli.d	$a7, $a7, 1
	add.d	$a6, $a7, $a6
	srli.d	$a6, $a6, 6
	mul.d	$a6, $a6, $a3
	sub.d	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s1, $a5
	addi.d	$a1, $a1, 8
	add.d	$a2, $a5, $a2
	bne	$a1, $a4, .LBB0_62
# %bb.63:                               # %.preheader.i151.1
	move	$a3, $zero
	move	$a1, $zero
	st.w	$a2, $s0, 480
	ori	$a2, $zero, 123
	ori	$a4, $zero, 1824
	.p2align	4, , 16
.LBB0_64:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $s2, $a3
	mulh.du	$a6, $a5, $a0
	sub.d	$a7, $a5, $a6
	srli.d	$a7, $a7, 1
	add.d	$a6, $a7, $a6
	srli.d	$a6, $a6, 6
	mul.d	$a6, $a6, $a2
	sub.d	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s1, $a5
	addi.d	$a3, $a3, 8
	add.d	$a1, $a5, $a1
	bne	$a3, $a4, .LBB0_64
# %bb.65:                               # %.preheader.i151.2
	move	$a3, $zero
	move	$a2, $zero
	st.w	$a1, $s0, 484
	ori	$a1, $zero, 123
	ori	$a4, $zero, 1824
	.p2align	4, , 16
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $s2, $a3
	mulh.du	$a6, $a5, $a0
	sub.d	$a7, $a5, $a6
	srli.d	$a7, $a7, 1
	add.d	$a6, $a7, $a6
	srli.d	$a6, $a6, 6
	mul.d	$a6, $a6, $a1
	sub.d	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s1, $a5
	addi.d	$a3, $a3, 8
	add.d	$a2, $a5, $a2
	bne	$a3, $a4, .LBB0_66
# %bb.67:                               # %"_ZZ4mainENK3$_5clEmmPiPKiS2_.exit"
	st.w	$a2, $s0, 488
	ori	$a2, $zero, 492
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_87
# %bb.68:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit173
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 26
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 362
	ori	$s0, $a0, 628
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp48:                                # EH_LABEL
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
.Ltmp49:                                # EH_LABEL
# %bb.69:                               # %.preheader1.i174.preheader
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	lu12i.w	$a0, -3
	move	$s0, $a0
	ori	$s5, $a0, 228
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_3)
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI0_4)
	lu12i.w	$a2, 2
	ori	$a7, $a2, 3892
	ori	$t0, $a2, 3876
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI0_6)
	ori	$t1, $a2, 3924
	ori	$t2, $a2, 3908
	pcalau12i	$a1, %pc_hi20(.LCPI0_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI0_7)
	pcalau12i	$a1, %pc_hi20(.LCPI0_8)
	vld	$vr8, $a1, %pc_lo12(.LCPI0_8)
	ori	$t3, $a2, 3956
	ori	$t4, $a2, 3940
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	vld	$vr9, $a1, %pc_lo12(.LCPI0_9)
	pcalau12i	$a1, %pc_hi20(.LCPI0_10)
	vld	$vr10, $a1, %pc_lo12(.LCPI0_10)
	ori	$t5, $a2, 3988
	ori	$t6, $a2, 3972
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	vld	$vr11, $a1, %pc_lo12(.LCPI0_11)
	pcalau12i	$a1, %pc_hi20(.LCPI0_12)
	vld	$vr16, $a1, %pc_lo12(.LCPI0_12)
	ori	$t7, $a2, 4020
	ori	$t8, $a2, 4004
	pcalau12i	$a1, %pc_hi20(.LCPI0_13)
	vld	$vr17, $a1, %pc_lo12(.LCPI0_13)
	pcalau12i	$a1, %pc_hi20(.LCPI0_14)
	vld	$vr18, $a1, %pc_lo12(.LCPI0_14)
	ori	$s2, $a2, 4052
	lu12i.w	$s3, 3
	ori	$s7, $zero, 123
	move	$s8, $fp
	.p2align	4, , 16
.LBB0_70:                               # %.preheader1.i174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
	move	$a1, $zero
	move	$ra, $zero
	move	$a6, $s5
	.p2align	4, , 16
.LBB0_71:                               # %.preheader.i176
                                        #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s8, $a6
	stptr.w	$zero, $a0, 12060
	stptr.w	$a1, $a0, 12064
	vreplgr2vr.w	$vr0, $a1
	vmul.w	$vr1, $vr0, $vr3
	vmul.w	$vr2, $vr0, $vr4
	vstx	$vr2, $a0, $a7
	vstx	$vr1, $a0, $t0
	vmul.w	$vr1, $vr0, $vr5
	vmul.w	$vr2, $vr0, $vr6
	vstx	$vr2, $a0, $t1
	vstx	$vr1, $a0, $t2
	vmul.w	$vr1, $vr0, $vr7
	vmul.w	$vr2, $vr0, $vr8
	vstx	$vr2, $a0, $t3
	vstx	$vr1, $a0, $t4
	vmul.w	$vr1, $vr0, $vr9
	vmul.w	$vr2, $vr0, $vr10
	vstx	$vr2, $a0, $t5
	vstx	$vr1, $a0, $t6
	vmul.w	$vr1, $vr0, $vr11
	vmul.w	$vr2, $vr0, $vr16
	vstx	$vr2, $a0, $t7
	vstx	$vr1, $a0, $t8
	vmul.w	$vr1, $vr0, $vr17
	vmul.w	$vr2, $vr0, $vr18
	vstx	$vr2, $a0, $s2
	pcalau12i	$s1, %pc_hi20(.LCPI0_15)
	vld	$vr12, $s1, %pc_lo12(.LCPI0_15)
	pcalau12i	$s1, %pc_hi20(.LCPI0_16)
	vld	$vr13, $s1, %pc_lo12(.LCPI0_16)
	ori	$s1, $a2, 4036
	vstx	$vr1, $a0, $s1
	vmul.w	$vr1, $vr0, $vr12
	vmul.w	$vr2, $vr0, $vr13
	ori	$s1, $a2, 4084
	vstx	$vr2, $a0, $s1
	pcalau12i	$s1, %pc_hi20(.LCPI0_17)
	vld	$vr14, $s1, %pc_lo12(.LCPI0_17)
	pcalau12i	$s1, %pc_hi20(.LCPI0_18)
	vld	$vr15, $s1, %pc_lo12(.LCPI0_18)
	ori	$s1, $a2, 4068
	vstx	$vr1, $a0, $s1
	vmul.w	$vr1, $vr0, $vr14
	vmul.w	$vr0, $vr0, $vr15
	ori	$s1, $s3, 20
	vstx	$vr0, $a0, $s1
	ori	$s1, $s3, 4
	vstx	$vr1, $a0, $s1
	stptr.w	$ra, $a0, 12324
	addi.d	$a6, $a6, 268
	add.d	$ra, $ra, $a4
	add.d	$a1, $a1, $a3
	bnez	$a6, .LBB0_71
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 66
	addi.d	$a3, $a3, 1
	ori	$ra, $a2, 3868
	add.d	$s8, $s8, $ra
	bne	$a5, $s7, .LBB0_70
# %bb.73:                               # %vector.body366.preheader
	vst	$vr18, $sp, 16                  # 16-byte Folded Spill
	vst	$vr17, $sp, 32                  # 16-byte Folded Spill
	vst	$vr16, $sp, 48                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	vst	$vr10, $sp, 80                  # 16-byte Folded Spill
	vst	$vr9, $sp, 96                   # 16-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	vst	$vr7, $sp, 128                  # 16-byte Folded Spill
	vst	$vr6, $sp, 144                  # 16-byte Folded Spill
	vst	$vr5, $sp, 160                  # 16-byte Folded Spill
	vst	$vr4, $sp, 176                  # 16-byte Folded Spill
	vst	$vr3, $sp, 192                  # 16-byte Folded Spill
	move	$a3, $zero
	vld	$vr16, $s4, %pc_lo12(.LCPI0_0)
	vld	$vr17, $s6, %pc_lo12(.LCPI0_1)
	vreplgr2vr.d	$vr0, $ra
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	vrepli.d	$vr21, 268
	vrepli.w	$vr0, 3
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	vrepli.w	$vr0, 5
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	vrepli.w	$vr0, 6
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vrepli.w	$vr0, 7
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	vrepli.d	$vr26, 32
	vrepli.w	$vr0, 9
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	vrepli.d	$vr28, 36
	vrepli.w	$vr0, 10
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	vrepli.d	$vr30, 40
	vrepli.w	$vr0, 11
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	vrepli.d	$vr18, 44
	vrepli.w	$vr0, 12
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	vrepli.d	$vr20, 48
	vrepli.w	$vr0, 13
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	vrepli.d	$vr1, 52
	vrepli.w	$vr0, 14
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	vrepli.d	$vr3, 56
	vrepli.w	$vr0, 15
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	vrepli.d	$vr5, 60
	vrepli.d	$vr6, 64
	ori	$a4, $zero, 45
	ori	$a5, $zero, 120
	lu12i.w	$s1, 1
	.p2align	4, , 16
.LBB0_74:                               # %vector.body366
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_75 Depth 2
	vld	$vr22, $sp, 352                 # 16-byte Folded Reload
	vori.b	$vr11, $vr22, 0
	vld	$vr7, $sp, 368                  # 16-byte Folded Reload
	vmadd.d	$vr11, $vr16, $vr7
	vmadd.d	$vr22, $vr17, $vr7
	vld	$vr10, $sp, 336                 # 16-byte Folded Reload
	vori.b	$vr9, $vr10, 0
	vld	$vr2, $sp, 320                  # 16-byte Folded Reload
	vld	$vr4, $sp, 304                  # 16-byte Folded Reload
	vld	$vr27, $sp, 288                 # 16-byte Folded Reload
	vld	$vr29, $sp, 272                 # 16-byte Folded Reload
	vld	$vr31, $sp, 256                 # 16-byte Folded Reload
	vld	$vr19, $sp, 240                 # 16-byte Folded Reload
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_75:                               # %.preheader.i183369
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr24, $vr9, $vr17
	vmul.d	$vr25, $vr10, $vr16
	vori.b	$vr7, $vr11, 0
	vmadd.d	$vr7, $vr10, $vr21
	vori.b	$vr8, $vr22, 0
	vmadd.d	$vr8, $vr9, $vr21
	vpickve2gr.d	$a0, $vr8, 0
	st.w	$zero, $a0, 0
	vpickve2gr.d	$a0, $vr8, 1
	st.w	$zero, $a0, 0
	vpickve2gr.d	$a0, $vr7, 0
	st.w	$zero, $a0, 0
	vpickve2gr.d	$a0, $vr7, 1
	st.w	$zero, $a0, 0
	vaddi.du	$vr23, $vr8, 4
	vpickve2gr.d	$a0, $vr23, 0
	vpickve2gr.d	$a6, $vr23, 1
	vpickev.w	$vr23, $vr25, $vr24
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 2
	vaddi.du	$vr24, $vr7, 4
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 0
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 2
	vslli.w	$vr24, $vr23, 1
	vaddi.du	$vr25, $vr8, 8
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vaddi.du	$vr25, $vr7, 8
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vld	$vr24, $sp, 432                 # 16-byte Folded Reload
	vmul.w	$vr24, $vr23, $vr24
	vaddi.du	$vr25, $vr8, 12
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vaddi.du	$vr25, $vr7, 12
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vslli.w	$vr24, $vr23, 2
	vaddi.du	$vr25, $vr8, 16
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vaddi.du	$vr25, $vr7, 16
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vld	$vr24, $sp, 416                 # 16-byte Folded Reload
	vmul.w	$vr24, $vr23, $vr24
	vaddi.du	$vr25, $vr8, 20
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vaddi.du	$vr25, $vr7, 20
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vld	$vr24, $sp, 400                 # 16-byte Folded Reload
	vmul.w	$vr24, $vr23, $vr24
	vaddi.du	$vr25, $vr8, 24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vaddi.du	$vr25, $vr7, 24
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vld	$vr24, $sp, 384                 # 16-byte Folded Reload
	vmul.w	$vr24, $vr23, $vr24
	vaddi.du	$vr25, $vr8, 28
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vaddi.du	$vr25, $vr7, 28
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vslli.w	$vr24, $vr23, 3
	vadd.d	$vr25, $vr8, $vr26
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr26
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vmul.w	$vr24, $vr23, $vr2
	vadd.d	$vr25, $vr8, $vr28
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr28
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vmul.w	$vr24, $vr23, $vr4
	vadd.d	$vr25, $vr8, $vr30
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr30
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vmul.w	$vr24, $vr23, $vr27
	vadd.d	$vr25, $vr8, $vr18
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr18
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vmul.w	$vr24, $vr23, $vr29
	vadd.d	$vr25, $vr8, $vr20
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr20
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vmul.w	$vr24, $vr23, $vr31
	vadd.d	$vr25, $vr8, $vr1
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr1
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vmul.w	$vr24, $vr23, $vr19
	vadd.d	$vr25, $vr8, $vr3
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr3
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vmul.w	$vr24, $vr23, $vr0
	vadd.d	$vr25, $vr8, $vr5
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr5
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vslli.w	$vr24, $vr23, 4
	vadd.d	$vr25, $vr8, $vr6
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr25, $vr7, $vr6
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vpickve2gr.d	$a0, $vr25, 0
	vstelm.w	$vr24, $a0, 0, 2
	vpickve2gr.d	$a0, $vr25, 1
	vstelm.w	$vr24, $a0, 0, 3
	vrepli.d	$vr24, 68
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 17
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 72
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 18
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 76
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 19
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 80
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 20
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 84
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 21
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 88
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 22
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 92
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 23
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 96
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 24
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 100
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 25
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 104
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 26
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 108
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 27
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 112
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 28
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 116
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 29
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 120
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 30
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 124
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 31
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 128
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vslli.w	$vr25, $vr23, 5
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 132
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 33
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 136
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 34
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 140
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 35
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 144
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 36
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 148
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 37
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 152
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 38
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 156
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 39
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 160
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 40
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 164
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 41
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 168
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 42
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 172
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 43
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 176
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 44
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 180
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 45
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 184
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 46
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 188
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 47
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 192
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vld	$vr25, $sp, 448                 # 16-byte Folded Reload
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 196
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 49
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 200
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 50
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 204
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 51
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 208
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 52
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 212
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 53
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 216
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 54
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 220
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 55
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 224
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 56
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 228
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 57
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 232
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 58
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 236
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 59
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 240
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 60
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 244
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 61
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 248
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 62
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 252
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vrepli.w	$vr25, 63
	vmul.w	$vr25, $vr23, $vr25
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 256
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vslli.w	$vr25, $vr23, 6
	vadd.d	$vr24, $vr7, $vr24
	vstelm.w	$vr25, $a0, 0, 0
	vstelm.w	$vr25, $a6, 0, 1
	vpickve2gr.d	$a0, $vr24, 0
	vstelm.w	$vr25, $a0, 0, 2
	vpickve2gr.d	$a0, $vr24, 1
	vstelm.w	$vr25, $a0, 0, 3
	vrepli.d	$vr24, 260
	vadd.d	$vr25, $vr8, $vr24
	vpickve2gr.d	$a0, $vr25, 0
	vpickve2gr.d	$a6, $vr25, 1
	vadd.d	$vr24, $vr7, $vr24
	vpickve2gr.d	$a7, $vr24, 0
	vpickve2gr.d	$t0, $vr24, 1
	vrepli.w	$vr24, 65
	vmul.w	$vr24, $vr23, $vr24
	vstelm.w	$vr24, $a0, 0, 0
	vstelm.w	$vr24, $a6, 0, 1
	vstelm.w	$vr24, $a7, 0, 2
	vstelm.w	$vr24, $t0, 0, 3
	vrepli.w	$vr24, 66
	vmul.w	$vr23, $vr23, $vr24
	vrepli.d	$vr24, 264
	vadd.d	$vr7, $vr7, $vr24
	vadd.d	$vr8, $vr8, $vr24
	vpickve2gr.d	$a0, $vr8, 0
	vpickve2gr.d	$a6, $vr8, 1
	vpickve2gr.d	$a7, $vr7, 0
	vpickve2gr.d	$t0, $vr7, 1
	vstelm.w	$vr23, $a0, 0, 0
	vstelm.w	$vr23, $a6, 0, 1
	vstelm.w	$vr23, $a7, 0, 2
	vstelm.w	$vr23, $t0, 0, 3
	vaddi.du	$vr9, $vr9, 1
	vpickve2gr.d	$a0, $vr9, 0
	vaddi.du	$vr10, $vr10, 1
	bne	$a0, $a4, .LBB0_75
# %bb.76:                               # %vector.latch370
                                        #   in Loop: Header=BB0_74 Depth=1
	addi.d	$a3, $a3, 4
	vaddi.du	$vr17, $vr17, 4
	vaddi.du	$vr16, $vr16, 4
	bne	$a3, $a5, .LBB0_74
# %bb.77:                               # %.preheader1.i180
	move	$s3, $zero
	move	$s4, $zero
	lu12i.w	$a0, 353
	ori	$a0, $a0, 1448
	add.d	$s5, $a1, $a0
	ori	$s6, $s0, 228
	ori	$a3, $a2, 3756
	ori	$a4, $a2, 3740
	ori	$a5, $a2, 3788
	ori	$a6, $a2, 3772
	ori	$a7, $a2, 3820
	ori	$t0, $a2, 3804
	ori	$t1, $a2, 3852
	ori	$t2, $a2, 3836
	ori	$t3, $a2, 3884
	ori	$t4, $a2, 3916
	ori	$t5, $a2, 3900
	ori	$t6, $a2, 3948
	ori	$t7, $a2, 3932
	ori	$t8, $a2, 3980
	ori	$s7, $s1, 3824
	vld	$vr3, $sp, 192                  # 16-byte Folded Reload
	vld	$vr4, $sp, 176                  # 16-byte Folded Reload
	vld	$vr5, $sp, 160                  # 16-byte Folded Reload
	vld	$vr6, $sp, 144                  # 16-byte Folded Reload
	vld	$vr7, $sp, 128                  # 16-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vld	$vr10, $sp, 80                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vld	$vr16, $sp, 48                  # 16-byte Folded Reload
	vld	$vr17, $sp, 32                  # 16-byte Folded Reload
	vld	$vr18, $sp, 16                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_78:                               # %.preheader.i183
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s5, $s6
	stptr.w	$zero, $a0, 11924
	stptr.w	$s3, $a0, 11928
	vreplgr2vr.w	$vr0, $s3
	vmul.w	$vr1, $vr0, $vr3
	vmul.w	$vr2, $vr0, $vr4
	vstx	$vr2, $a0, $a3
	vstx	$vr1, $a0, $a4
	vmul.w	$vr1, $vr0, $vr5
	vmul.w	$vr2, $vr0, $vr6
	vstx	$vr2, $a0, $a5
	vstx	$vr1, $a0, $a6
	vmul.w	$vr1, $vr0, $vr7
	vmul.w	$vr2, $vr0, $vr8
	vstx	$vr2, $a0, $a7
	vstx	$vr1, $a0, $t0
	vmul.w	$vr1, $vr0, $vr9
	vmul.w	$vr2, $vr0, $vr10
	vstx	$vr2, $a0, $t1
	vstx	$vr1, $a0, $t2
	vmul.w	$vr1, $vr0, $vr11
	vmul.w	$vr2, $vr0, $vr16
	vstx	$vr2, $a0, $t3
	vstx	$vr1, $a0, $ra
	vmul.w	$vr1, $vr0, $vr17
	vmul.w	$vr2, $vr0, $vr18
	vstx	$vr2, $a0, $t4
	vstx	$vr1, $a0, $t5
	vmul.w	$vr1, $vr0, $vr12
	vmul.w	$vr2, $vr0, $vr13
	vstx	$vr2, $a0, $t6
	vstx	$vr1, $a0, $t7
	vmul.w	$vr1, $vr0, $vr14
	vmul.w	$vr0, $vr0, $vr15
	vstx	$vr0, $a0, $t8
	ori	$s2, $a2, 3964
	vstx	$vr1, $a0, $s2
	stptr.w	$s4, $a0, 12188
	add.d	$s4, $s4, $s7
	addi.d	$s6, $s6, 268
	addi.d	$s3, $s3, 120
	bnez	$s6, .LBB0_78
# %bb.79:                               # %.preheader1.i180.1
	move	$a2, $zero
	move	$s3, $zero
	lu12i.w	$a0, 356
	ori	$a0, $a0, 1220
	add.d	$s4, $a1, $a0
	ori	$s5, $s0, 228
	ori	$s6, $s1, 3890
	.p2align	4, , 16
.LBB0_80:                               # %.preheader.i183.1
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s4, $s5
	stptr.w	$zero, $a0, 11924
	stptr.w	$a2, $a0, 11928
	vreplgr2vr.w	$vr0, $a2
	vmul.w	$vr1, $vr0, $vr3
	vmul.w	$vr2, $vr0, $vr4
	vstx	$vr2, $a0, $a3
	vstx	$vr1, $a0, $a4
	vmul.w	$vr1, $vr0, $vr5
	vmul.w	$vr2, $vr0, $vr6
	vstx	$vr2, $a0, $a5
	vstx	$vr1, $a0, $a6
	vmul.w	$vr1, $vr0, $vr7
	vmul.w	$vr2, $vr0, $vr8
	vstx	$vr2, $a0, $a7
	vstx	$vr1, $a0, $t0
	vmul.w	$vr1, $vr0, $vr9
	vmul.w	$vr2, $vr0, $vr10
	vstx	$vr2, $a0, $t1
	vstx	$vr1, $a0, $t2
	vmul.w	$vr1, $vr0, $vr11
	vmul.w	$vr2, $vr0, $vr16
	vstx	$vr2, $a0, $t3
	vstx	$vr1, $a0, $ra
	vmul.w	$vr1, $vr0, $vr17
	vmul.w	$vr2, $vr0, $vr18
	vstx	$vr2, $a0, $t4
	vstx	$vr1, $a0, $t5
	vmul.w	$vr1, $vr0, $vr12
	vmul.w	$vr2, $vr0, $vr13
	vstx	$vr2, $a0, $t6
	vstx	$vr1, $a0, $t7
	vmul.w	$vr1, $vr0, $vr14
	vmul.w	$vr0, $vr0, $vr15
	vstx	$vr0, $a0, $t8
	vstx	$vr1, $a0, $s2
	stptr.w	$s3, $a0, 12188
	add.d	$s3, $s3, $s6
	addi.d	$s5, $s5, 268
	addi.d	$a2, $a2, 121
	bnez	$s5, .LBB0_80
# %bb.81:                               # %.preheader1.i180.2
	move	$a2, $zero
	move	$s3, $zero
	lu12i.w	$a0, 359
	ori	$a0, $a0, 992
	add.d	$s4, $a1, $a0
	ori	$a0, $s0, 228
	ori	$s5, $s1, 3956
	.p2align	4, , 16
.LBB0_82:                               # %.preheader.i183.2
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s1, $s4, $a0
	stptr.w	$zero, $s1, 11924
	stptr.w	$a2, $s1, 11928
	vreplgr2vr.w	$vr0, $a2
	vmul.w	$vr1, $vr0, $vr3
	vmul.w	$vr2, $vr0, $vr4
	vstx	$vr2, $s1, $a3
	vstx	$vr1, $s1, $a4
	vmul.w	$vr1, $vr0, $vr5
	vmul.w	$vr2, $vr0, $vr6
	vstx	$vr2, $s1, $a5
	vstx	$vr1, $s1, $a6
	vmul.w	$vr1, $vr0, $vr7
	vmul.w	$vr2, $vr0, $vr8
	vstx	$vr2, $s1, $a7
	vstx	$vr1, $s1, $t0
	vmul.w	$vr1, $vr0, $vr9
	vmul.w	$vr2, $vr0, $vr10
	vstx	$vr2, $s1, $t1
	vstx	$vr1, $s1, $t2
	vmul.w	$vr1, $vr0, $vr11
	vmul.w	$vr2, $vr0, $vr16
	vstx	$vr2, $s1, $t3
	vstx	$vr1, $s1, $ra
	vmul.w	$vr1, $vr0, $vr17
	vmul.w	$vr2, $vr0, $vr18
	vstx	$vr2, $s1, $t4
	vstx	$vr1, $s1, $t5
	vmul.w	$vr1, $vr0, $vr12
	vmul.w	$vr2, $vr0, $vr13
	vstx	$vr2, $s1, $t6
	vstx	$vr1, $s1, $t7
	vmul.w	$vr1, $vr0, $vr14
	vmul.w	$vr0, $vr0, $vr15
	vstx	$vr0, $s1, $t8
	vstx	$vr1, $s1, $s2
	stptr.w	$s3, $s1, 12188
	add.d	$s3, $s3, $s5
	addi.d	$a0, $a0, 268
	addi.d	$a2, $a2, 122
	bnez	$a0, .LBB0_82
# %bb.83:                               # %"_ZZ4mainENK3$_7clEmmmPi.exit"
	move	$a0, $fp
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	move	$s0, $a1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_88
# %bb.84:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit203
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1552
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
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
.LBB0_85:
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
	b	.LBB0_89
.LBB0_86:
.Ltmp27:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
	b	.LBB0_89
.LBB0_87:
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
	b	.LBB0_89
.LBB0_88:
.Ltmp51:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
.LBB0_89:                               # %.noexc103
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_90:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit239
.Ltmp53:                                # EH_LABEL
	move	$s3, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_112
.LBB0_91:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit227.loopexit.split-lp.loopexit.split-lp
.Ltmp47:                                # EH_LABEL
	b	.LBB0_109
.LBB0_92:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit218.loopexit.split-lp
.Ltmp29:                                # EH_LABEL
	move	$s3, $a0
	b	.LBB0_110
.LBB0_93:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit206.loopexit.split-lp.loopexit.split-lp
.Ltmp17:                                # EH_LABEL
	b	.LBB0_109
.LBB0_94:
.Ltmp50:                                # EH_LABEL
	b	.LBB0_103
.LBB0_95:
.Ltmp38:                                # EH_LABEL
	move	$s3, $a0
	b	.LBB0_110
.LBB0_96:
.Ltmp35:                                # EH_LABEL
	move	$s3, $a0
	b	.LBB0_111
.LBB0_97:
.Ltmp32:                                # EH_LABEL
	b	.LBB0_103
.LBB0_98:
.Ltmp23:                                # EH_LABEL
	move	$s3, $a0
	b	.LBB0_111
.LBB0_99:
.Ltmp20:                                # EH_LABEL
	b	.LBB0_103
.LBB0_100:
.Ltmp8:                                 # EH_LABEL
	move	$s3, $a0
	b	.LBB0_110
.LBB0_101:
.Ltmp5:                                 # EH_LABEL
	move	$s3, $a0
	b	.LBB0_111
.LBB0_102:
.Ltmp2:                                 # EH_LABEL
.LBB0_103:
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_104:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit227.loopexit
.Ltmp44:                                # EH_LABEL
	b	.LBB0_109
.LBB0_105:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit227.loopexit.split-lp.loopexit
.Ltmp41:                                # EH_LABEL
	b	.LBB0_109
.LBB0_106:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit218.loopexit
.Ltmp26:                                # EH_LABEL
	move	$s3, $a0
	b	.LBB0_110
.LBB0_107:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit206.loopexit
.Ltmp14:                                # EH_LABEL
	b	.LBB0_109
.LBB0_108:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit206.loopexit.split-lp.loopexit
.Ltmp11:                                # EH_LABEL
.LBB0_109:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit206
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_110:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit209
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_111:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit215
	move	$a0, $s0
.LBB0_112:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit215
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp18-.Ltmp13                #   Call between .Ltmp13 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp30-.Ltmp25                #   Call between .Ltmp25 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp48-.Ltmp43                #   Call between .Ltmp43 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp15-.Ltmp49                #   Call between .Ltmp49 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Lfunc_end0-.Ltmp52            #   Call between .Ltmp52 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	ld.w	$a2, $a2, 4
	ld.w	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB1_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB1_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB1_3
.LBB1_4:                                # %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB1_10
.LBB1_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB1_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB1_10
.LBB1_7:                                # %.preheader
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB1_8
.LBB1_10:                               # %.loopexit
	ld.w	$a1, $fp, 0
	add.w	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .Lfunc_end1-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	5
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_startproc
# %bb.0:
	ldptr.d	$a2, $a0, 4992
	ori	$a1, $zero, 624
	bltu	$a2, $a1, .LBB2_6
# %bb.1:
	move	$a2, $zero
	ld.d	$a4, $a0, 0
	lu12i.w	$a1, -421749
	ori	$a1, $a1, 223
	lu32i.d	$a1, 0
	ori	$a3, $zero, 1816
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a0, $a2
	ld.d	$a6, $a5, 8
	bstrpick.d	$a7, $a6, 30, 1
	ldptr.d	$a5, $a5, 3176
	slli.d	$a7, $a7, 1
	bstrins.d	$a4, $a7, 30, 0
	srli.d	$a4, $a4, 1
	xor	$a4, $a4, $a5
	andi	$a5, $a6, 1
	sub.d	$a5, $zero, $a5
	and	$a5, $a5, $a1
	xor	$a4, $a4, $a5
	stx.d	$a4, $a0, $a2
	addi.d	$a2, $a2, 8
	move	$a4, $a6
	bne	$a2, $a3, .LBB2_2
# %bb.3:                                # %.preheader.preheader.i
	ld.d	$a3, $a0, 1816
	lu12i.w	$a2, -1
	ori	$a2, $a2, 928
	.p2align	4, , 16
.LBB2_4:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a2
	ldptr.d	$a5, $a4, 4992
	bstrpick.d	$a6, $a5, 30, 1
	ldptr.d	$a7, $a4, 3168
	slli.d	$a6, $a6, 1
	bstrins.d	$a3, $a6, 30, 0
	srli.d	$a3, $a3, 1
	xor	$a3, $a3, $a7
	andi	$a6, $a5, 1
	sub.d	$a6, $zero, $a6
	and	$a6, $a6, $a1
	xor	$a3, $a3, $a6
	addi.d	$a2, $a2, 8
	stptr.d	$a3, $a4, 4984
	move	$a3, $a5
	bnez	$a2, .LBB2_4
# %bb.5:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit
	ld.d	$a3, $a0, 0
	move	$a2, $zero
	ldptr.d	$a4, $a0, 4984
	bstrpick.d	$a5, $a3, 30, 1
	ldptr.d	$a6, $a0, 3168
	slli.d	$a5, $a5, 1
	bstrins.d	$a4, $a5, 30, 0
	srli.d	$a4, $a4, 1
	xor	$a4, $a4, $a6
	andi	$a3, $a3, 1
	sub.d	$a3, $zero, $a3
	and	$a1, $a3, $a1
	xor	$a1, $a4, $a1
	stptr.d	$a1, $a0, 4984
.LBB2_6:
	addi.d	$a1, $a2, 1
	stptr.d	$a1, $a0, 4992
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 42, 11
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 7
	lu12i.w	$a2, -404795
	ori	$a2, $a2, 1664
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 15
	lu12i.w	$a2, -66464
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	srli.d	$a1, $a0, 18
	xor	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end2-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_outer_loop_vect.cpp
	.type	_GLOBAL__sub_I_outer_loop_vect.cpp,@function
_GLOBAL__sub_I_outer_loop_vect.cpp:     # @_GLOBAL__sub_I_outer_loop_vect.cpp
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1393
	st.d	$a2, $a0, 0
	addi.d	$a1, $a0, 8
	ori	$a3, $zero, 1
	lu12i.w	$a4, 442488
	ori	$a4, $a4, 2405
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB3_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end3:
	.size	_GLOBAL__sub_I_outer_loop_vect.cpp, .Lfunc_end3-_GLOBAL__sub_I_outer_loop_vect.cpp
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Checking matrix-multiplication\n"
	.size	.L.str, 32

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Checking loop with auxiliary IV\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Checking loop with indirect memory accesses\n"
	.size	.L.str.2, 45

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Checking triple-loop-nest\n"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Miscompare\n"
	.size	.L.str.4, 12

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_outer_loop_vect.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_outer_loop_vect.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL3rng
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
