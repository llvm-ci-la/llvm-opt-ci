	.file	"rmatmult3.c"
	.text
	.globl	rmatmult3                       # -- Begin function rmatmult3
	.p2align	5
	.type	rmatmult3,@function
rmatmult3:                              # @rmatmult3
# %bb.0:
	addi.d	$sp, $sp, -1104
	st.d	$ra, $sp, 1096                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1016                  # 8-byte Folded Spill
	ld.w	$t0, $a0, 16
	ld.w	$a4, $a0, 28
	st.d	$a3, $sp, 1008                  # 8-byte Folded Spill
	st.d	$a2, $sp, 640                   # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	bge	$t0, $a4, .LBB0_53
# %bb.1:
	move	$a3, $a1
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 24
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 632                   # 8-byte Folded Spill
	bge	$a1, $a2, .LBB0_53
# %bb.2:
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 20
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	st.d	$a2, $sp, 656                   # 8-byte Folded Spill
	bge	$a1, $a2, .LBB0_53
# %bb.3:                                # %.preheader226.us.us.preheader
	ld.w	$t4, $a0, 68
	ld.w	$t5, $a0, 72
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $a3, 8
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 24
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 32
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 40
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 48
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 56
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 64
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 72
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 80
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 88
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 96
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$s4, $a3, 104
	ld.d	$s5, $a3, 112
	ld.d	$s6, $a3, 120
	ld.d	$s7, $a3, 128
	ld.d	$s8, $a3, 136
	ld.d	$ra, $a3, 144
	ld.d	$a0, $a3, 152
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 160
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 168
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $t5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $t4
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$fp, $a3, 176
	ld.d	$s0, $a3, 184
	ld.d	$t7, $a3, 192
	ld.d	$s1, $a3, 200
	ld.d	$s3, $a3, 208
	ld.d	$t8, $sp, 744                   # 8-byte Folded Reload
	nor	$a0, $t8, $zero
	ld.d	$s2, $sp, 656                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s2
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	slli.d	$a0, $t8, 3
	ld.d	$a5, $sp, 640                   # 8-byte Folded Reload
	sub.d	$a1, $a5, $a0
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 624                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	slli.d	$a2, $t4, 3
	addi.d	$t1, $a5, -8
	sub.d	$a3, $a1, $a2
	add.d	$a3, $t1, $a3
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	add.d	$a3, $t4, $t8
	slli.d	$a3, $a3, 3
	sub.d	$a3, $a5, $a3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	move	$a3, $zero
	sub.d	$a6, $a5, $a1
	sub.d	$a1, $a2, $a1
	add.d	$a1, $t1, $a1
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	add.d	$a1, $t5, $t8
	slli.d	$a4, $a1, 3
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 440                   # 8-byte Folded Spill
	sub.d	$a7, $a6, $a2
	sub.d	$t2, $a5, $a2
	alsl.d	$a4, $t5, $a5, 3
	sub.d	$t3, $a4, $a2
	alsl.d	$a2, $t5, $a2, 3
	sub.d	$t6, $a5, $a2
	add.d	$a1, $a1, $t4
	slli.d	$a1, $a1, 3
	sub.d	$a2, $a5, $a1
	ld.d	$a1, $sp, 1008                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1000                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 992                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 976                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 960                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 912                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$s4, $sp, 888                   # 8-byte Folded Spill
	sub.d	$a1, $s4, $a0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s5, $sp, 880                   # 8-byte Folded Spill
	sub.d	$a1, $s5, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$s6, $sp, 872                   # 8-byte Folded Spill
	sub.d	$a1, $s6, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 864                   # 8-byte Folded Spill
	sub.d	$a1, $s7, $a0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s8, $sp, 856                   # 8-byte Folded Spill
	sub.d	$a1, $s8, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$ra, $sp, 848                   # 8-byte Folded Spill
	sub.d	$a1, $ra, $a0
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 904                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 896                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$fp, $sp, 832                   # 8-byte Folded Spill
	sub.d	$a1, $fp, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 824                   # 8-byte Folded Spill
	sub.d	$a1, $s0, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$t7, $sp, 816                   # 8-byte Folded Spill
	sub.d	$a1, $t7, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 664                   # 8-byte Folded Spill
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a1, $s2, $t8
	st.d	$s3, $sp, 808                   # 8-byte Folded Spill
	sub.d	$a0, $s3, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a1, $sp, 648                   # 8-byte Folded Spill
	bstrins.d	$a1, $zero, 0, 0
	addi.d	$t7, $a7, -8
	st.d	$t7, $sp, 760                   # 8-byte Folded Spill
	st.d	$a7, $sp, 792                   # 8-byte Folded Spill
	addi.d	$a7, $a7, 8
	st.d	$a7, $sp, 752                   # 8-byte Folded Spill
	addi.d	$a7, $a6, -8
	st.d	$a7, $sp, 608                   # 8-byte Folded Spill
	addi.d	$a7, $a6, 8
	st.d	$a7, $sp, 600                   # 8-byte Folded Spill
	st.d	$a6, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$a6, $t4, $a6, 3
	addi.d	$a7, $a6, -8
	st.d	$a7, $sp, 584                   # 8-byte Folded Spill
	st.d	$a6, $sp, 592                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 8
	st.d	$a6, $sp, 576                   # 8-byte Folded Spill
	addi.d	$a6, $t2, -8
	st.d	$a6, $sp, 568                   # 8-byte Folded Spill
	st.d	$t2, $sp, 784                   # 8-byte Folded Spill
	addi.d	$a6, $t2, 8
	st.d	$a6, $sp, 560                   # 8-byte Folded Spill
	addi.d	$a6, $a5, 8
	st.d	$a6, $sp, 552                   # 8-byte Folded Spill
	alsl.d	$a5, $t4, $a5, 3
	addi.d	$a6, $a5, -8
	st.d	$a6, $sp, 536                   # 8-byte Folded Spill
	st.d	$a5, $sp, 544                   # 8-byte Folded Spill
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 528                   # 8-byte Folded Spill
	addi.d	$a5, $t3, -8
	st.d	$a5, $sp, 520                   # 8-byte Folded Spill
	st.d	$t3, $sp, 768                   # 8-byte Folded Spill
	addi.d	$a5, $t3, 8
	st.d	$a5, $sp, 512                   # 8-byte Folded Spill
	addi.d	$a5, $a4, -8
	st.d	$a5, $sp, 504                   # 8-byte Folded Spill
	addi.d	$a5, $a4, 8
	st.d	$a5, $sp, 496                   # 8-byte Folded Spill
	st.d	$a4, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$a4, $t4, $a4, 3
	addi.d	$a5, $a4, -8
	st.d	$a5, $sp, 472                   # 8-byte Folded Spill
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 480                   # 8-byte Folded Spill
	add.w	$a4, $a0, $t8
	alsl.d	$a5, $t4, $t1, 3
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a5, $t5, $a5, 3
	st.d	$a5, $sp, 328                   # 8-byte Folded Spill
	add.d	$a5, $s2, $t5
	st.d	$a5, $sp, 320                   # 8-byte Folded Spill
	add.d	$a5, $a5, $t4
	st.d	$a5, $sp, 312                   # 8-byte Folded Spill
	st.d	$t1, $sp, 616                   # 8-byte Folded Spill
	alsl.d	$a5, $t5, $t1, 3
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	st.d	$t4, $sp, 680                   # 8-byte Folded Spill
	add.d	$a5, $s2, $t4
	st.d	$a5, $sp, 296                   # 8-byte Folded Spill
	addi.d	$a5, $t6, 8
	st.d	$a5, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a5, $a2, 8
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	st.d	$t6, $sp, 408                   # 8-byte Folded Spill
	addi.d	$a5, $t6, -8
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	addi.d	$a2, $a2, -8
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	add.d	$a1, $a1, $t8
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge229.split.us.us.us
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.w	$a4, $a4, $t5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	beq	$t0, $a2, .LBB0_53
.LBB0_5:                                # %.preheader226.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	st.d	$zero, $sp, 704                 # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a2, $t5, $a3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # %.preheader.us.us.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	st.d	$a1, $sp, 688                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 672                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 584                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 472                   # 8-byte Folded Reload
	ori	$t4, $zero, 10
	move	$s5, $t5
	bgeu	$a2, $t4, .LBB0_10
.LBB0_7:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 712                   # 8-byte Folded Reload
	add.w	$t4, $a2, $t0
	ld.d	$a2, $sp, 656                   # 8-byte Folded Reload
	sub.d	$t0, $a2, $t0
	.p2align	4, , 16
.LBB0_8:                                # %scalar.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a2, $t4, 3
	ld.d	$s1, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa0, $s1, $a2
	ld.d	$t6, $sp, 760                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $a2
	fldx.d	$fa2, $t7, $a2
	ld.d	$s1, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa3, $s1, $a2
	ld.d	$s1, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa4, $s1, $a2
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	fldx.d	$fa5, $s1, $a2
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	ld.d	$s1, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa1, $s1, $a2
	fldx.d	$fa2, $s7, $a2
	ld.d	$s1, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa3, $s1, $a2
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa4, $s1, $a2
	ld.d	$s1, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa5, $s1, $a2
	fldx.d	$fa6, $s8, $a2
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa7, $s1, $a2
	fldx.d	$ft0, $a5, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$s1, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa1, $s1, $a2
	fldx.d	$fa2, $ra, $a2
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa3, $s1, $a2
	fldx.d	$fa4, $a6, $a2
	ld.d	$s1, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa5, $s1, $a2
	fldx.d	$fa6, $s6, $a2
	ld.d	$s1, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa7, $s1, $a2
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$ft0, $s1, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$s1, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $s1, $a2
	fldx.d	$fa2, $a0, $a2
	ld.d	$s1, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$fa3, $s1, $a2
	fldx.d	$fa4, $t8, $a2
	ld.d	$s1, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa5, $s1, $a2
	fldx.d	$fa6, $t5, $a2
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	fldx.d	$ft0, $fp, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $a2
	fldx.d	$fa2, $s0, $a2
	ld.d	$t5, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $a2
	fldx.d	$fa4, $a4, $a2
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $a2
	fldx.d	$fa6, $t2, $a2
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	fldx.d	$ft0, $s2, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $a2
	ld.d	$t5, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $a2
	ld.d	$t5, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $a2
	fldx.d	$fa4, $a1, $a2
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $a2
	fldx.d	$fa6, $s3, $a2
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	ld.d	$t5, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $a2
	fldx.d	$fa2, $a7, $a2
	ld.d	$t5, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $a2
	fldx.d	$fa4, $t3, $a2
	fldx.d	$fa5, $a3, $a2
	fldx.d	$fa6, $s4, $a2
	ld.d	$t5, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	fldx.d	$ft0, $t1, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 1008                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a2
	move	$t5, $s5
	addi.d	$t0, $t0, -1
	addi.w	$t4, $t4, 1
	bnez	$t0, .LBB0_8
.LBB0_9:                                # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 632                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_6
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_10:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 704                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $t0
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	add.w	$t6, $t0, $a2
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	add.w	$a2, $t6, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	blt	$a2, $t6, .LBB0_7
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	srli.d	$a2, $a2, 32
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 1008                  # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 656                   # 8-byte Folded Reload
	add.d	$s1, $a2, $t6
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$t4, $s1, $a2, 3
	ld.d	$a2, $sp, 1000                  # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	st.d	$s1, $sp, 720                   # 8-byte Folded Spill
	alsl.d	$t0, $s1, $t0, 3
	ld.d	$s1, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $s1, $t0
	st.d	$t4, $sp, 728                   # 8-byte Folded Spill
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	add.d	$t0, $t0, $t6
	ld.d	$t4, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t0, $t0, $t4, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.14:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$s1, $t6, $a2, 3
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t6
	ld.d	$t4, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$t0, $sp, 736                   # 8-byte Folded Reload
	sltu	$t4, $t0, $t4
	ld.d	$t0, $sp, 728                   # 8-byte Folded Reload
	sltu	$t0, $s1, $t0
	and	$t4, $t4, $t0
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.15:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t0, $t6, $t0, 3
	ld.d	$t4, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $t4, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$a2, $t4, $a2
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$t0, $t0, $t4
	and	$a2, $a2, $t0
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t0, $t6, $a2, 3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t6
	ld.d	$t4, $sp, 624                   # 8-byte Folded Reload
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	sltu	$t4, $a2, $t4
	ld.d	$a2, $sp, 728                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a2
	and	$t4, $t4, $t0
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	alsl.d	$t0, $t6, $t8, 3
	ld.d	$t4, $sp, 624                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	sltu	$t4, $a2, $t4
	ld.d	$a2, $sp, 728                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a2
	and	$t4, $t4, $t0
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	alsl.d	$t0, $t6, $s6, 3
	ld.d	$t4, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	sltu	$t4, $a2, $t4
	ld.d	$a2, $sp, 728                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a2
	and	$t4, $t4, $t0
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t0, $t6, $t0, 3
	ld.d	$t4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $t4, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$a2, $t4, $a2
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$t0, $t0, $t4
	and	$a2, $a2, $t0
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	alsl.d	$a2, $t6, $s7, 3
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 952                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t0, $t4, $t0, 3
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	sltu	$t0, $t4, $t0
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t0, $a2
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.50:                               # %vector.ph
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 696                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_51:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a2, $t4, 3
	ld.d	$s1, $sp, 1000                  # 8-byte Folded Reload
	vldx	$vr0, $s1, $a2
	ld.d	$t6, $sp, 760                   # 8-byte Folded Reload
	vldx	$vr1, $t6, $a2
	vldx	$vr2, $t7, $a2
	ld.d	$s1, $sp, 792                   # 8-byte Folded Reload
	vldx	$vr3, $s1, $a2
	ld.d	$s1, $sp, 992                   # 8-byte Folded Reload
	vldx	$vr4, $s1, $a2
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	vldx	$vr5, $s1, $a2
	vfmul.d	$vr2, $vr2, $vr3
	vfmadd.d	$vr0, $vr0, $vr1, $vr2
	vfmadd.d	$vr0, $vr4, $vr5, $vr0
	ld.d	$s1, $sp, 984                   # 8-byte Folded Reload
	vldx	$vr1, $s1, $a2
	vldx	$vr2, $s7, $a2
	ld.d	$s1, $sp, 976                   # 8-byte Folded Reload
	vldx	$vr3, $s1, $a2
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	vldx	$vr4, $s1, $a2
	ld.d	$s1, $sp, 968                   # 8-byte Folded Reload
	vldx	$vr5, $s1, $a2
	vldx	$vr6, $s8, $a2
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	vldx	$vr7, $s1, $a2
	vldx	$vr8, $a5, $a2
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfmadd.d	$vr0, $vr7, $vr8, $vr0
	ld.d	$s1, $sp, 952                   # 8-byte Folded Reload
	vldx	$vr1, $s1, $a2
	vldx	$vr2, $ra, $a2
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	vldx	$vr3, $s1, $a2
	vldx	$vr4, $a6, $a2
	ld.d	$s1, $sp, 936                   # 8-byte Folded Reload
	vldx	$vr5, $s1, $a2
	vldx	$vr6, $s6, $a2
	ld.d	$s1, $sp, 928                   # 8-byte Folded Reload
	vldx	$vr7, $s1, $a2
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	vldx	$vr8, $s1, $a2
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfmadd.d	$vr0, $vr7, $vr8, $vr0
	ld.d	$s1, $sp, 920                   # 8-byte Folded Reload
	vldx	$vr1, $s1, $a2
	vldx	$vr2, $a0, $a2
	ld.d	$s1, $sp, 912                   # 8-byte Folded Reload
	vldx	$vr3, $s1, $a2
	vldx	$vr4, $t8, $a2
	ld.d	$s1, $sp, 888                   # 8-byte Folded Reload
	vldx	$vr5, $s1, $a2
	vldx	$vr6, $t5, $a2
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	vldx	$vr7, $t5, $a2
	vldx	$vr8, $fp, $a2
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfmadd.d	$vr0, $vr7, $vr8, $vr0
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	vldx	$vr1, $t5, $a2
	vldx	$vr2, $s0, $a2
	ld.d	$t5, $sp, 864                   # 8-byte Folded Reload
	vldx	$vr3, $t5, $a2
	vldx	$vr4, $a4, $a2
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	vldx	$vr5, $t5, $a2
	vldx	$vr6, $t2, $a2
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	vldx	$vr7, $t5, $a2
	vldx	$vr8, $s2, $a2
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfmadd.d	$vr0, $vr7, $vr8, $vr0
	ld.d	$t5, $sp, 904                   # 8-byte Folded Reload
	vldx	$vr1, $t5, $a2
	ld.d	$t5, $sp, 768                   # 8-byte Folded Reload
	vldx	$vr2, $t5, $a2
	ld.d	$t5, $sp, 896                   # 8-byte Folded Reload
	vldx	$vr3, $t5, $a2
	vldx	$vr4, $a1, $a2
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	vldx	$vr5, $t5, $a2
	vldx	$vr6, $s3, $a2
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	vldx	$vr7, $t5, $a2
	ld.d	$t5, $sp, 776                   # 8-byte Folded Reload
	vldx	$vr8, $t5, $a2
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfmadd.d	$vr0, $vr7, $vr8, $vr0
	ld.d	$t5, $sp, 824                   # 8-byte Folded Reload
	vldx	$vr1, $t5, $a2
	vldx	$vr2, $a7, $a2
	ld.d	$t5, $sp, 816                   # 8-byte Folded Reload
	vldx	$vr3, $t5, $a2
	vldx	$vr4, $t3, $a2
	vldx	$vr5, $a3, $a2
	vldx	$vr6, $s4, $a2
	ld.d	$t5, $sp, 808                   # 8-byte Folded Reload
	vldx	$vr7, $t5, $a2
	vldx	$vr8, $t1, $a2
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfmadd.d	$vr0, $vr7, $vr8, $vr0
	ld.d	$t5, $sp, 1008                  # 8-byte Folded Reload
	vstx	$vr0, $t5, $a2
	move	$t5, $s5
	addi.d	$t0, $t0, -2
	addi.w	$t4, $t4, 2
	bnez	$t0, .LBB0_51
# %bb.52:                               # %middle.block
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	bne	$a2, $t4, .LBB0_7
	b	.LBB0_9
.LBB0_53:                               # %._crit_edge
	ld.d	$s8, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1096                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1104
	ret
.Lfunc_end0:
	.size	rmatmult3, .Lfunc_end0-rmatmult3
                                        # -- End function
	.type	kmin,@object                    # @kmin
	.comm	kmin,4,4
	.type	kmax,@object                    # @kmax
	.comm	kmax,4,4
	.type	jmin,@object                    # @jmin
	.comm	jmin,4,4
	.type	jmax,@object                    # @jmax
	.comm	jmax,4,4
	.type	imin,@object                    # @imin
	.comm	imin,4,4
	.type	imax,@object                    # @imax
	.comm	imax,4,4
	.type	kp,@object                      # @kp
	.comm	kp,4,4
	.type	jp,@object                      # @jp
	.comm	jp,4,4
	.type	i_lb,@object                    # @i_lb
	.comm	i_lb,4,4
	.type	i_ub,@object                    # @i_ub
	.comm	i_ub,4,4
	.type	x_size,@object                  # @x_size
	.comm	x_size,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
