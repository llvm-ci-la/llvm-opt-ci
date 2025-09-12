	.file	"pr58574.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	ori	$a1, $zero, 93
	bltu	$a1, $a0, .LBB0_66
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_2:
	vldi	$vr1, -784
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 406739
	ori	$a0, $a0, 1736
	lu32i.d	$a0, -396132
	lu52i.d	$a0, $a0, 981
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -332718
	ori	$a0, $a0, 2211
	lu32i.d	$a0, -218005
	lu52i.d	$a0, $a0, 973
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -521971
	ori	$a0, $a0, 470
	lu32i.d	$a0, 423380
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 267307
	ori	$a0, $a0, 284
	lu32i.d	$a0, 176051
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 342370
	ori	$a0, $a0, 1716
	lu32i.d	$a0, -130181
	lu52i.d	$a0, $a0, 1004
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -522384
	ori	$a0, $a0, 2251
	lu32i.d	$a0, 481162
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 482375
	ori	$a0, $a0, 3400
	lu32i.d	$a0, 473517
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_3:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 155648
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -203028
	ori	$a0, $a0, 2627
	lu32i.d	$a0, -375841
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -404903
	ori	$a0, $a0, 566
	lu32i.d	$a0, -171497
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 310736
	ori	$a0, $a0, 3172
	lu32i.d	$a0, 143808
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -362534
	ori	$a0, $a0, 1928
	lu32i.d	$a0, 273762
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -79402
	ori	$a0, $a0, 3849
	lu32i.d	$a0, 138071
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -142956
	ori	$a0, $a0, 2859
	lu32i.d	$a0, -380186
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -88920
	ori	$a0, $a0, 3093
	lu32i.d	$a0, 340996
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_4:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 270336
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 391757
	ori	$a0, $a0, 2937
	lu32i.d	$a0, 179249
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -328866
	ori	$a0, $a0, 588
	lu32i.d	$a0, 235040
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -362296
	ori	$a0, $a0, 2443
	lu32i.d	$a0, -338497
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 182158
	ori	$a0, $a0, 2298
	lu32i.d	$a0, -136591
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -507738
	ori	$a0, $a0, 1589
	lu32i.d	$a0, -378822
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -317063
	ori	$a0, $a0, 1889
	lu32i.d	$a0, 123842
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 364736
	ori	$a0, $a0, 2768
	lu32i.d	$a0, -267555
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_5:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 368640
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 227529
	ori	$a0, $a0, 1351
	lu32i.d	$a0, -465408
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -122344
	ori	$a0, $a0, 1775
	lu32i.d	$a0, -504461
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -143227
	ori	$a0, $a0, 4025
	lu32i.d	$a0, 164144
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -331814
	ori	$a0, $a0, 1182
	lu32i.d	$a0, 320975
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 486418
	ori	$a0, $a0, 1917
	lu32i.d	$a0, 138123
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -338162
	ori	$a0, $a0, 1779
	lu32i.d	$a0, 504054
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 337893
	ori	$a0, $a0, 533
	lu32i.d	$a0, 119789
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_6:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 319488
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 118486
	ori	$a0, $a0, 3448
	lu32i.d	$a0, 370346
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 477326
	ori	$a0, $a0, 2954
	lu32i.d	$a0, 386488
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -294797
	ori	$a0, $a0, 3917
	lu32i.d	$a0, -28762
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 63257
	ori	$a0, $a0, 1882
	lu32i.d	$a0, 110749
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -388896
	ori	$a0, $a0, 545
	lu32i.d	$a0, -78518
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 352254
	ori	$a0, $a0, 1750
	lu32i.d	$a0, 298567
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 124486
	ori	$a0, $a0, 3861
	lu32i.d	$a0, -31751
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_7:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 253952
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 214006
	ori	$a0, $a0, 792
	lu32i.d	$a0, 120234
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -194434
	ori	$a0, $a0, 1979
	lu32i.d	$a0, 186156
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 80985
	ori	$a0, $a0, 3865
	lu32i.d	$a0, -432115
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -322608
	ori	$a0, $a0, 1289
	lu32i.d	$a0, -243574
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 477218
	ori	$a0, $a0, 2655
	lu32i.d	$a0, -468037
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 493666
	ori	$a0, $a0, 923
	lu32i.d	$a0, 71551
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -441912
	ori	$a0, $a0, 535
	lu32i.d	$a0, -339152
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_8:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 90112
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -516594
	ori	$a0, $a0, 1722
	lu32i.d	$a0, 342063
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -176330
	ori	$a0, $a0, 1584
	lu32i.d	$a0, -489722
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -332622
	ori	$a0, $a0, 2881
	lu32i.d	$a0, -197084
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 139840
	ori	$a0, $a0, 3480
	lu32i.d	$a0, 7021
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 324390
	ori	$a0, $a0, 3387
	lu32i.d	$a0, -167853
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 128057
	ori	$a0, $a0, 550
	lu32i.d	$a0, 400519
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -152002
	ori	$a0, $a0, 1733
	lu32i.d	$a0, 143696
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_9:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 73728
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -370954
	ori	$a0, $a0, 2196
	lu32i.d	$a0, 268420
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 93600
	ori	$a0, $a0, 2538
	lu32i.d	$a0, 485160
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -333935
	ori	$a0, $a0, 1386
	lu32i.d	$a0, -302806
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -496738
	ori	$a0, $a0, 673
	lu32i.d	$a0, -101363
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 43969
	ori	$a0, $a0, 2981
	lu32i.d	$a0, -264060
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -254531
	ori	$a0, $a0, 2051
	lu32i.d	$a0, 341731
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 64760
	ori	$a0, $a0, 220
	lu32i.d	$a0, 99363
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_10:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 40960
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 46952
	ori	$a0, $a0, 496
	lu32i.d	$a0, 131295
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 518072
	ori	$a0, $a0, 570
	lu32i.d	$a0, 344909
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 118138
	ori	$a0, $a0, 486
	lu32i.d	$a0, -497755
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -371858
	ori	$a0, $a0, 1363
	lu32i.d	$a0, -313261
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 31037
	ori	$a0, $a0, 181
	lu32i.d	$a0, -441047
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -367824
	ori	$a0, $a0, 1296
	lu32i.d	$a0, 232800
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 432181
	ori	$a0, $a0, 345
	lu32i.d	$a0, 15896
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_11:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 172032
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -496243
	ori	$a0, $a0, 3325
	lu32i.d	$a0, -283607
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -449341
	ori	$a0, $a0, 211
	lu32i.d	$a0, -86273
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -41282
	ori	$a0, $a0, 3079
	lu32i.d	$a0, 212825
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -414241
	ori	$a0, $a0, 2703
	lu32i.d	$a0, 350420
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 439163
	ori	$a0, $a0, 2569
	lu32i.d	$a0, 201826
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 166711
	ori	$a0, $a0, 3440
	lu32i.d	$a0, -304057
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 431509
	ori	$a0, $a0, 4078
	lu32i.d	$a0, 395858
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_12:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 163840
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 57094
	ori	$a0, $a0, 1407
	lu32i.d	$a0, 82463
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 523252
	ori	$a0, $a0, 1559
	lu32i.d	$a0, 320349
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 284971
	ori	$a0, $a0, 2150
	lu32i.d	$a0, -353989
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 401519
	ori	$a0, $a0, 3620
	lu32i.d	$a0, 215387
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 492979
	ori	$a0, $a0, 2764
	lu32i.d	$a0, -361271
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -407647
	ori	$a0, $a0, 3754
	lu32i.d	$a0, 85939
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 439227
	ori	$a0, $a0, 2109
	lu32i.d	$a0, 23991
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_13:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 360448
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 226139
	ori	$a0, $a0, 1439
	lu32i.d	$a0, 293655
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -374919
	ori	$a0, $a0, 2117
	lu32i.d	$a0, -452559
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 385715
	ori	$a0, $a0, 3097
	lu32i.d	$a0, -64858
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -265885
	ori	$a0, $a0, 3196
	lu32i.d	$a0, 391977
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -376997
	ori	$a0, $a0, 2712
	lu32i.d	$a0, -171413
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 218935
	ori	$a0, $a0, 3924
	lu32i.d	$a0, 171624
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -199985
	ori	$a0, $a0, 2397
	lu32i.d	$a0, 244611
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_14:
	vldi	$vr1, -837
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -162406
	ori	$a0, $a0, 235
	lu32i.d	$a0, -388454
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 188806
	ori	$a0, $a0, 729
	lu32i.d	$a0, -75330
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -520482
	ori	$a0, $a0, 697
	lu32i.d	$a0, 309529
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 359869
	ori	$a0, $a0, 1251
	lu32i.d	$a0, -50970
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -2013
	ori	$a0, $a0, 2429
	lu32i.d	$a0, 420453
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -395755
	ori	$a0, $a0, 2487
	lu32i.d	$a0, -77659
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -448221
	ori	$a0, $a0, 3676
	lu32i.d	$a0, 427550
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_15:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -425984
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 16630
	ori	$a0, $a0, 2076
	lu32i.d	$a0, -405355
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -361962
	ori	$a0, $a0, 208
	lu32i.d	$a0, 2873
	lu52i.d	$a0, $a0, 976
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -280594
	ori	$a0, $a0, 2417
	lu32i.d	$a0, 203469
	lu52i.d	$a0, $a0, 991
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -506654
	ori	$a0, $a0, 3957
	lu32i.d	$a0, -374209
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 166292
	ori	$a0, $a0, 908
	lu32i.d	$a0, 62123
	lu52i.d	$a0, $a0, 1006
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 103374
	ori	$a0, $a0, 2024
	lu32i.d	$a0, 301010
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -165155
	ori	$a0, $a0, 351
	lu32i.d	$a0, -483084
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_16:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 491520
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -56866
	ori	$a0, $a0, 2101
	lu32i.d	$a0, 457715
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -206958
	ori	$a0, $a0, 1941
	lu32i.d	$a0, -237721
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -13914
	ori	$a0, $a0, 1115
	lu32i.d	$a0, 78674
	lu52i.d	$a0, $a0, 991
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 102612
	ori	$a0, $a0, 2304
	lu32i.d	$a0, -522757
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 441728
	ori	$a0, $a0, 3262
	lu32i.d	$a0, -30208
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -410237
	ori	$a0, $a0, 2107
	lu32i.d	$a0, 234008
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 17649
	ori	$a0, $a0, 2586
	lu32i.d	$a0, 401009
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_17:
	vldi	$vr1, -843
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -442093
	ori	$a0, $a0, 3359
	lu32i.d	$a0, 399954
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 390697
	ori	$a0, $a0, 2724
	lu32i.d	$a0, -408198
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 65947
	ori	$a0, $a0, 3398
	lu32i.d	$a0, 125062
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -229060
	ori	$a0, $a0, 2397
	lu32i.d	$a0, -287902
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -414720
	ori	$a0, $a0, 432
	lu32i.d	$a0, 285131
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 442513
	ori	$a0, $a0, 675
	lu32i.d	$a0, -208913
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -408358
	ori	$a0, $a0, 2304
	lu32i.d	$a0, 61404
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_18:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -16384
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -111046
	ori	$a0, $a0, 80
	lu32i.d	$a0, -101734
	lu52i.d	$a0, $a0, 986
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 41102
	ori	$a0, $a0, 2448
	lu32i.d	$a0, 152307
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -158616
	ori	$a0, $a0, 3588
	lu32i.d	$a0, 296198
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -48960
	ori	$a0, $a0, 2433
	lu32i.d	$a0, 459953
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -138109
	ori	$a0, $a0, 2329
	lu32i.d	$a0, 376562
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -363972
	ori	$a0, $a0, 1496
	lu32i.d	$a0, 88677
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 308700
	ori	$a0, $a0, 3172
	lu32i.d	$a0, -194616
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_19:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -475136
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -379344
	ori	$a0, $a0, 3374
	lu32i.d	$a0, -331511
	lu52i.d	$a0, $a0, 985
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -250045
	ori	$a0, $a0, 3454
	lu32i.d	$a0, 73428
	lu52i.d	$a0, $a0, 978
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 53889
	ori	$a0, $a0, 1556
	lu32i.d	$a0, 143189
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 41767
	ori	$a0, $a0, 1188
	lu32i.d	$a0, 358447
	lu52i.d	$a0, $a0, 1000
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 10485
	ori	$a0, $a0, 364
	lu32i.d	$a0, 420990
	lu52i.d	$a0, $a0, 1007
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -40655
	ori	$a0, $a0, 1844
	lu32i.d	$a0, 319048
	lu52i.d	$a0, $a0, 1014
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -447281
	ori	$a0, $a0, 1726
	lu32i.d	$a0, 79104
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_20:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 106496
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 139417
	ori	$a0, $a0, 610
	lu32i.d	$a0, 419165
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -254118
	ori	$a0, $a0, 2968
	lu32i.d	$a0, -413666
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -358036
	ori	$a0, $a0, 3419
	lu32i.d	$a0, -85451
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -10870
	ori	$a0, $a0, 3678
	lu32i.d	$a0, 68131
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 224550
	ori	$a0, $a0, 70
	lu32i.d	$a0, -66045
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 518764
	ori	$a0, $a0, 3852
	lu32i.d	$a0, 462393
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 29527
	ori	$a0, $a0, 3687
	lu32i.d	$a0, 189960
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_21:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 425984
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -210260
	ori	$a0, $a0, 3116
	lu32i.d	$a0, 373206
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 292579
	ori	$a0, $a0, 2216
	lu32i.d	$a0, -348519
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 322394
	ori	$a0, $a0, 2689
	lu32i.d	$a0, 21524
	lu52i.d	$a0, $a0, 991
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 406756
	ori	$a0, $a0, 3883
	lu32i.d	$a0, 457174
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 506359
	ori	$a0, $a0, 1462
	lu32i.d	$a0, -102391
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 235887
	ori	$a0, $a0, 2691
	lu32i.d	$a0, 202333
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 117172
	ori	$a0, $a0, 314
	lu32i.d	$a0, 321854
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_22:
	vldi	$vr1, -839
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -243815
	ori	$a0, $a0, 828
	lu32i.d	$a0, -480434
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 49879
	ori	$a0, $a0, 2475
	lu32i.d	$a0, -193330
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -422573
	ori	$a0, $a0, 778
	lu32i.d	$a0, 244587
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -39263
	ori	$a0, $a0, 4038
	lu32i.d	$a0, -133865
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 381455
	ori	$a0, $a0, 1088
	lu32i.d	$a0, 373477
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -454427
	ori	$a0, $a0, 2743
	lu32i.d	$a0, -122842
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 89657
	ori	$a0, $a0, 1812
	lu32i.d	$a0, 302728
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_23:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 229376
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -324657
	ori	$a0, $a0, 3404
	lu32i.d	$a0, 148617
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 180915
	ori	$a0, $a0, 947
	lu32i.d	$a0, 406503
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -92013
	ori	$a0, $a0, 3417
	lu32i.d	$a0, -263107
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 173849
	ori	$a0, $a0, 4036
	lu32i.d	$a0, 271260
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 76589
	ori	$a0, $a0, 3674
	lu32i.d	$a0, -300715
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -234761
	ori	$a0, $a0, 3162
	lu32i.d	$a0, 113534
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 365877
	ori	$a0, $a0, 2157
	lu32i.d	$a0, 95764
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_24:
	vldi	$vr1, -876
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -344308
	ori	$a0, $a0, 4071
	lu32i.d	$a0, -209359
	lu52i.d	$a0, $a0, 981
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -343647
	ori	$a0, $a0, 1703
	lu32i.d	$a0, 6400
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 457412
	ori	$a0, $a0, 1759
	lu32i.d	$a0, -485152
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -317762
	ori	$a0, $a0, 1671
	lu32i.d	$a0, 272315
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 380153
	ori	$a0, $a0, 129
	lu32i.d	$a0, -10939
	lu52i.d	$a0, $a0, 1004
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 335291
	ori	$a0, $a0, 4058
	lu32i.d	$a0, -504106
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -363596
	ori	$a0, $a0, 716
	lu32i.d	$a0, -155559
	lu52i.d	$a0, $a0, 1014
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_25:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -147456
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 511478
	ori	$a0, $a0, 2472
	lu32i.d	$a0, -508859
	lu52i.d	$a0, $a0, 986
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 231872
	ori	$a0, $a0, 2875
	lu32i.d	$a0, -144343
	lu52i.d	$a0, $a0, 978
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 463269
	ori	$a0, $a0, 710
	lu32i.d	$a0, 17313
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 210539
	ori	$a0, $a0, 2711
	lu32i.d	$a0, 159963
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -378122
	ori	$a0, $a0, 2439
	lu32i.d	$a0, 122953
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 281427
	ori	$a0, $a0, 2999
	lu32i.d	$a0, -146056
	lu52i.d	$a0, $a0, 1014
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 3355
	ori	$a0, $a0, 1815
	lu32i.d	$a0, -458018
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_26:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -81920
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -167976
	ori	$a0, $a0, 221
	lu32i.d	$a0, -315745
	lu52i.d	$a0, $a0, 986
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 156460
	ori	$a0, $a0, 115
	lu32i.d	$a0, 35539
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -470888
	ori	$a0, $a0, 3961
	lu32i.d	$a0, 148818
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 476811
	ori	$a0, $a0, 2251
	lu32i.d	$a0, 301228
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -327842
	ori	$a0, $a0, 2883
	lu32i.d	$a0, 242731
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 51163
	ori	$a0, $a0, 3268
	lu32i.d	$a0, 3852
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -16778
	ori	$a0, $a0, 3211
	lu32i.d	$a0, -331351
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_27:
	vldi	$vr1, -858
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -420092
	ori	$a0, $a0, 1285
	lu32i.d	$a0, 57421
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -385511
	ori	$a0, $a0, 1909
	lu32i.d	$a0, 207868
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -127083
	ori	$a0, $a0, 1510
	lu32i.d	$a0, -245633
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -89339
	ori	$a0, $a0, 1722
	lu32i.d	$a0, 434374
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 482080
	ori	$a0, $a0, 1817
	lu32i.d	$a0, 92964
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 462159
	ori	$a0, $a0, 3915
	lu32i.d	$a0, -401800
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -47218
	ori	$a0, $a0, 833
	lu32i.d	$a0, 53109
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_28:
	vldi	$vr1, -841
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 318823
	ori	$a0, $a0, 3077
	lu32i.d	$a0, 481535
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -499160
	ori	$a0, $a0, 2750
	lu32i.d	$a0, -304129
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 522280
	ori	$a0, $a0, 3473
	lu32i.d	$a0, 183158
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -419081
	ori	$a0, $a0, 1935
	lu32i.d	$a0, -212748
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 405846
	ori	$a0, $a0, 1576
	lu32i.d	$a0, 328397
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -210185
	ori	$a0, $a0, 155
	lu32i.d	$a0, -166565
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 179046
	ori	$a0, $a0, 1840
	lu32i.d	$a0, 180724
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_29:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -491520
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -185464
	ori	$a0, $a0, 1860
	lu32i.d	$a0, -500933
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -99049
	ori	$a0, $a0, 342
	lu32i.d	$a0, -119780
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 421232
	ori	$a0, $a0, 3559
	lu32i.d	$a0, 139248
	lu52i.d	$a0, $a0, 991
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 174979
	ori	$a0, $a0, 2688
	lu32i.d	$a0, -450418
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -55306
	ori	$a0, $a0, 116
	lu32i.d	$a0, 22636
	lu52i.d	$a0, $a0, 1006
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 113856
	ori	$a0, $a0, 3681
	lu32i.d	$a0, 266865
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -270248
	ori	$a0, $a0, 2477
	lu32i.d	$a0, 482210
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_30:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 122880
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -318899
	ori	$a0, $a0, 3682
	lu32i.d	$a0, 499941
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -139763
	ori	$a0, $a0, 2594
	lu32i.d	$a0, -335249
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 413561
	ori	$a0, $a0, 3842
	lu32i.d	$a0, 16159
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 266141
	ori	$a0, $a0, 3952
	lu32i.d	$a0, 132827
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 521106
	ori	$a0, $a0, 961
	lu32i.d	$a0, 20836
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -66734
	ori	$a0, $a0, 3873
	lu32i.d	$a0, -521061
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -498955
	ori	$a0, $a0, 2442
	lu32i.d	$a0, 238194
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_31:
	vldi	$vr1, -888
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 264114
	ori	$a0, $a0, 2879
	lu32i.d	$a0, -305420
	lu52i.d	$a0, $a0, 981
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -56806
	ori	$a0, $a0, 2373
	lu32i.d	$a0, -105731
	lu52i.d	$a0, $a0, 973
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 15693
	ori	$a0, $a0, 2837
	lu32i.d	$a0, 491583
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -444560
	ori	$a0, $a0, 87
	lu32i.d	$a0, 223057
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 361871
	ori	$a0, $a0, 2061
	lu32i.d	$a0, -71687
	lu52i.d	$a0, $a0, 1004
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -37345
	ori	$a0, $a0, 1062
	lu32i.d	$a0, 512343
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 33433
	ori	$a0, $a0, 2605
	lu32i.d	$a0, 104569
	lu52i.d	$a0, $a0, 1014
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_32:
	vldi	$vr1, -854
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 283652
	ori	$a0, $a0, 177
	lu32i.d	$a0, 118065
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -280261
	ori	$a0, $a0, 1820
	lu32i.d	$a0, 283898
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -143177
	ori	$a0, $a0, 2285
	lu32i.d	$a0, -156822
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 416701
	ori	$a0, $a0, 2761
	lu32i.d	$a0, 493625
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -304356
	ori	$a0, $a0, 59
	lu32i.d	$a0, 128423
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 513688
	ori	$a0, $a0, 3383
	lu32i.d	$a0, -365572
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 192454
	ori	$a0, $a0, 3278
	lu32i.d	$a0, 267281
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_33:
	vldi	$vr1, -850
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 365846
	ori	$a0, $a0, 3817
	lu32i.d	$a0, 182421
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 302328
	ori	$a0, $a0, 1873
	lu32i.d	$a0, 364828
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -277133
	ori	$a0, $a0, 1010
	lu32i.d	$a0, -63147
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -388223
	ori	$a0, $a0, 2955
	lu32i.d	$a0, -492886
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -170851
	ori	$a0, $a0, 3928
	lu32i.d	$a0, 165284
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 241728
	ori	$a0, $a0, 3328
	lu32i.d	$a0, -328227
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 298030
	ori	$a0, $a0, 1905
	lu32i.d	$a0, 485935
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_34:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 188416
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -492857
	ori	$a0, $a0, 1471
	lu32i.d	$a0, -187266
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -206662
	ori	$a0, $a0, 3612
	lu32i.d	$a0, 674
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -55454
	ori	$a0, $a0, 2370
	lu32i.d	$a0, 285530
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -427419
	ori	$a0, $a0, 1511
	lu32i.d	$a0, 431498
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -246306
	ori	$a0, $a0, 1487
	lu32i.d	$a0, 269291
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -506686
	ori	$a0, $a0, 2683
	lu32i.d	$a0, -223822
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -355342
	ori	$a0, $a0, 2315
	lu32i.d	$a0, 453110
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_35:
	vldi	$vr1, -835
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 433500
	ori	$a0, $a0, 823
	lu32i.d	$a0, -290755
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -425897
	ori	$a0, $a0, 145
	lu32i.d	$a0, 25201
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 379533
	ori	$a0, $a0, 424
	lu32i.d	$a0, 378164
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 58196
	ori	$a0, $a0, 3534
	lu32i.d	$a0, 18003
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 252809
	ori	$a0, $a0, 3392
	lu32i.d	$a0, 469437
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 463732
	ori	$a0, $a0, 4045
	lu32i.d	$a0, -30994
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -386011
	ori	$a0, $a0, 3335
	lu32i.d	$a0, -493385
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_36:
	vldi	$vr1, -833
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 365777
	ori	$a0, $a0, 2120
	lu32i.d	$a0, -186992
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 145466
	ori	$a0, $a0, 2116
	lu32i.d	$a0, 92141
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 406788
	ori	$a0, $a0, 3942
	lu32i.d	$a0, 450762
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -466780
	ori	$a0, $a0, 1475
	lu32i.d	$a0, 63707
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 71741
	ori	$a0, $a0, 823
	lu32i.d	$a0, 520482
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 484958
	ori	$a0, $a0, 734
	lu32i.d	$a0, 8619
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -429833
	ori	$a0, $a0, 2974
	lu32i.d	$a0, -362724
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_37:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 237568
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -158558
	ori	$a0, $a0, 146
	lu32i.d	$a0, 63488
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -509920
	ori	$a0, $a0, 343
	lu32i.d	$a0, 138287
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 259108
	ori	$a0, $a0, 2779
	lu32i.d	$a0, -521202
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -354784
	ori	$a0, $a0, 476
	lu32i.d	$a0, -344817
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -148411
	ori	$a0, $a0, 64
	lu32i.d	$a0, 496048
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 463547
	ori	$a0, $a0, 3142
	lu32i.d	$a0, 21971
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -485198
	ori	$a0, $a0, 3741
	lu32i.d	$a0, -407603
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_38:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -114688
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -429487
	ori	$a0, $a0, 802
	lu32i.d	$a0, -414896
	lu52i.d	$a0, $a0, 986
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -310647
	ori	$a0, $a0, 2479
	lu32i.d	$a0, -38865
	lu52i.d	$a0, $a0, 978
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -35101
	ori	$a0, $a0, 3484
	lu32i.d	$a0, 81151
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -266450
	ori	$a0, $a0, 3870
	lu32i.d	$a0, 228528
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 415161
	ori	$a0, $a0, 3028
	lu32i.d	$a0, 181193
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 141344
	ori	$a0, $a0, 2824
	lu32i.d	$a0, -71055
	lu52i.d	$a0, $a0, 1014
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -431510
	ori	$a0, $a0, 18
	lu32i.d	$a0, -395859
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_39:
	vldi	$vr1, -868
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -315695
	ori	$a0, $a0, 1466
	lu32i.d	$a0, -107533
	lu52i.d	$a0, $a0, 981
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 246665
	ori	$a0, $a0, 1191
	lu32i.d	$a0, 69385
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -49118
	ori	$a0, $a0, 1777
	lu32i.d	$a0, -409438
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -14218
	ori	$a0, $a0, 2148
	lu32i.d	$a0, 323895
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -351286
	ori	$a0, $a0, 2999
	lu32i.d	$a0, 26086
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -453050
	ori	$a0, $a0, 3045
	lu32i.d	$a0, -471035
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -281415
	ori	$a0, $a0, 2825
	lu32i.d	$a0, 324578
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_40:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 204800
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -192871
	ori	$a0, $a0, 1162
	lu32i.d	$a0, -86818
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 410005
	ori	$a0, $a0, 2042
	lu32i.d	$a0, 45500
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 147619
	ori	$a0, $a0, 1485
	lu32i.d	$a0, 362092
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 523604
	ori	$a0, $a0, 2879
	lu32i.d	$a0, 517260
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -61138
	ori	$a0, $a0, 3077
	lu32i.d	$a0, 340656
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -493908
	ori	$a0, $a0, 748
	lu32i.d	$a0, -139238
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 397620
	ori	$a0, $a0, 79
	lu32i.d	$a0, 512963
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_41:
	vldi	$vr1, -862
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -383453
	ori	$a0, $a0, 147
	lu32i.d	$a0, 213
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -137494
	ori	$a0, $a0, 2723
	lu32i.d	$a0, 136501
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -274146
	ori	$a0, $a0, 3621
	lu32i.d	$a0, -329634
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -195848
	ori	$a0, $a0, 2725
	lu32i.d	$a0, 377868
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -420179
	ori	$a0, $a0, 2586
	lu32i.d	$a0, 58879
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -410760
	ori	$a0, $a0, 267
	lu32i.d	$a0, -436933
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -513866
	ori	$a0, $a0, 27
	lu32i.d	$a0, -313211
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_42:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 57344
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -472239
	ori	$a0, $a0, 2030
	lu32i.d	$a0, 198236
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -24458
	ori	$a0, $a0, 2200
	lu32i.d	$a0, 413844
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -120774
	ori	$a0, $a0, 2149
	lu32i.d	$a0, -402955
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -69491
	ori	$a0, $a0, 2186
	lu32i.d	$a0, -210347
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 476823
	ori	$a0, $a0, 2093
	lu32i.d	$a0, -355045
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 191273
	ori	$a0, $a0, 2802
	lu32i.d	$a0, 285897
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -129856
	ori	$a0, $a0, 1426
	lu32i.d	$a0, 56790
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_43:
	vldi	$vr1, -845
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, -238593
	ori	$a0, $a0, 3754
	lu32i.d	$a0, 323077
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 436190
	ori	$a0, $a0, 3276
	lu32i.d	$a0, -505892
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 3621
	ori	$a0, $a0, 2069
	lu32i.d	$a0, 69938
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -242512
	ori	$a0, $a0, 3009
	lu32i.d	$a0, -359467
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 68117
	ori	$a0, $a0, 3959
	lu32i.d	$a0, 243570
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 507863
	ori	$a0, $a0, 3181
	lu32i.d	$a0, -249930
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 392586
	ori	$a0, $a0, 3500
	lu32i.d	$a0, -110730
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_44:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 335872
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -181054
	ori	$a0, $a0, 1886
	lu32i.d	$a0, 438800
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 41714
	ori	$a0, $a0, 672
	lu32i.d	$a0, 438416
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -221791
	ori	$a0, $a0, 1616
	lu32i.d	$a0, 42378
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -407391
	ori	$a0, $a0, 1034
	lu32i.d	$a0, 177049
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -115965
	ori	$a0, $a0, 3617
	lu32i.d	$a0, 16575
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 522778
	ori	$a0, $a0, 207
	lu32i.d	$a0, 363394
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 34561
	ori	$a0, $a0, 266
	lu32i.d	$a0, 27221
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_45:
	vldi	$vr1, -847
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	lu12i.w	$a0, 316640
	ori	$a0, $a0, 483
	lu32i.d	$a0, 250674
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 468770
	ori	$a0, $a0, 1334
	lu32i.d	$a0, 450952
	lu52i.d	$a0, $a0, 974
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 335301
	ori	$a0, $a0, 3582
	lu32i.d	$a0, 17786
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -295566
	ori	$a0, $a0, 1830
	lu32i.d	$a0, -427795
	lu52i.d	$a0, $a0, 997
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 319903
	ori	$a0, $a0, 503
	lu32i.d	$a0, 203630
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -459264
	ori	$a0, $a0, 1895
	lu32i.d	$a0, -289680
	lu52i.d	$a0, $a0, 1012
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 19998
	ori	$a0, $a0, 1808
	lu32i.d	$a0, -339034
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_46:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 98304
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -186211
	ori	$a0, $a0, 1432
	lu32i.d	$a0, 20216
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -59337
	ori	$a0, $a0, 1506
	lu32i.d	$a0, 239419
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -428994
	ori	$a0, $a0, 1524
	lu32i.d	$a0, -439918
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -19855
	ori	$a0, $a0, 1151
	lu32i.d	$a0, 162258
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 243035
	ori	$a0, $a0, 2718
	lu32i.d	$a0, -419270
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -195032
	ori	$a0, $a0, 899
	lu32i.d	$a0, 59310
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -493116
	ori	$a0, $a0, 276
	lu32i.d	$a0, -92141
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_47:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8192
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -440535
	ori	$a0, $a0, 1913
	lu32i.d	$a0, 6851
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -29279
	ori	$a0, $a0, 1161
	lu32i.d	$a0, 214158
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -81685
	ori	$a0, $a0, 3915
	lu32i.d	$a0, 376362
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -515221
	ori	$a0, $a0, 1004
	lu32i.d	$a0, -502069
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 455516
	ori	$a0, $a0, 2930
	lu32i.d	$a0, 449302
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -499170
	ori	$a0, $a0, 3473
	lu32i.d	$a0, 134338
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -258370
	ori	$a0, $a0, 3578
	lu32i.d	$a0, -122055
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_48:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 32768
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -250051
	ori	$a0, $a0, 1887
	lu32i.d	$a0, -76727
	lu52i.d	$a0, $a0, 982
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 406228
	ori	$a0, $a0, 1375
	lu32i.d	$a0, 163478
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -287735
	ori	$a0, $a0, 250
	lu32i.d	$a0, -521073
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 426893
	ori	$a0, $a0, 3009
	lu32i.d	$a0, 111769
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 426543
	ori	$a0, $a0, 1650
	lu32i.d	$a0, -474823
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 10723
	ori	$a0, $a0, 4082
	lu32i.d	$a0, 33541
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 468889
	ori	$a0, $a0, 2592
	lu32i.d	$a0, -229043
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_49:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 352256
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -494232
	ori	$a0, $a0, 2552
	lu32i.d	$a0, 509741
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 273040
	ori	$a0, $a0, 2422
	lu32i.d	$a0, 490989
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 472973
	ori	$a0, $a0, 3244
	lu32i.d	$a0, 101854
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -522012
	ori	$a0, $a0, 2902
	lu32i.d	$a0, 247088
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -378116
	ori	$a0, $a0, 2052
	lu32i.d	$a0, 75674
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -482513
	ori	$a0, $a0, 1097
	lu32i.d	$a0, 431845
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -358026
	ori	$a0, $a0, 862
	lu32i.d	$a0, 72414
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_50:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 139264
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 205612
	ori	$a0, $a0, 2746
	lu32i.d	$a0, -464183
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -301711
	ori	$a0, $a0, 4091
	lu32i.d	$a0, -254489
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 72625
	ori	$a0, $a0, 2208
	lu32i.d	$a0, 78309
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -159638
	ori	$a0, $a0, 3225
	lu32i.d	$a0, 201282
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -59581
	ori	$a0, $a0, 2772
	lu32i.d	$a0, 77804
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 40802
	ori	$a0, $a0, 775
	lu32i.d	$a0, -452448
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 240249
	ori	$a0, $a0, 3003
	lu32i.d	$a0, 288484
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_51:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 294912
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -102588
	ori	$a0, $a0, 1324
	lu32i.d	$a0, 218945
	lu52i.d	$a0, $a0, 983
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -360444
	ori	$a0, $a0, 2815
	lu32i.d	$a0, 498264
	lu52i.d	$a0, $a0, 975
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -133921
	ori	$a0, $a0, 2406
	lu32i.d	$a0, -166820
	lu52i.d	$a0, $a0, 990
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 457104
	ori	$a0, $a0, 1926
	lu32i.d	$a0, 330088
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -8768
	ori	$a0, $a0, 3238
	lu32i.d	$a0, -237494
	lu52i.d	$a0, $a0, 1005
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 323625
	ori	$a0, $a0, 3218
	lu32i.d	$a0, 142096
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 114756
	ori	$a0, $a0, 645
	lu32i.d	$a0, 169282
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_52:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 401408
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -436818
	ori	$a0, $a0, 976
	lu32i.d	$a0, -311061
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -382737
	ori	$a0, $a0, 2683
	lu32i.d	$a0, -396824
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 157147
	ori	$a0, $a0, 2105
	lu32i.d	$a0, 297592
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -290379
	ori	$a0, $a0, 2718
	lu32i.d	$a0, 480734
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 345803
	ori	$a0, $a0, 3781
	lu32i.d	$a0, 273930
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -245283
	ori	$a0, $a0, 418
	lu32i.d	$a0, -387890
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -5369
	ori	$a0, $a0, 1191
	lu32i.d	$a0, 221647
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_53:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 466944
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 401051
	ori	$a0, $a0, 3494
	lu32i.d	$a0, 14111
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 88947
	ori	$a0, $a0, 1845
	lu32i.d	$a0, -178414
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 223750
	ori	$a0, $a0, 343
	lu32i.d	$a0, -446020
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -236777
	ori	$a0, $a0, 287
	lu32i.d	$a0, -194228
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -326362
	ori	$a0, $a0, 3510
	lu32i.d	$a0, -454070
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -277026
	ori	$a0, $a0, 2496
	lu32i.d	$a0, -18657
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -394936
	ori	$a0, $a0, 1374
	lu32i.d	$a0, 457556
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_54:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 483328
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -168298
	ori	$a0, $a0, 1461
	lu32i.d	$a0, 59723
	lu52i.d	$a0, $a0, 989
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 469012
	ori	$a0, $a0, 1636
	lu32i.d	$a0, -123812
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -85079
	ori	$a0, $a0, 2697
	lu32i.d	$a0, -361156
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -217282
	ori	$a0, $a0, 1019
	lu32i.d	$a0, -88455
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 304982
	ori	$a0, $a0, 3864
	lu32i.d	$a0, -362415
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 456138
	ori	$a0, $a0, 3885
	lu32i.d	$a0, 43419
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 209044
	ori	$a0, $a0, 456
	lu32i.d	$a0, 524141
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_55:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 385024
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -112924
	ori	$a0, $a0, 2378
	lu32i.d	$a0, -389496
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -95863
	ori	$a0, $a0, 2828
	lu32i.d	$a0, -450781
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -403164
	ori	$a0, $a0, 159
	lu32i.d	$a0, 229362
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 111992
	ori	$a0, $a0, 1857
	lu32i.d	$a0, 398821
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 63855
	ori	$a0, $a0, 1746
	lu32i.d	$a0, 204180
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 135559
	ori	$a0, $a0, 3708
	lu32i.d	$a0, -468420
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -183879
	ori	$a0, $a0, 2919
	lu32i.d	$a0, 169491
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_56:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 245760
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 322911
	ori	$a0, $a0, 2040
	lu32i.d	$a0, -157016
	lu52i.d	$a0, $a0, 984
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 6708
	ori	$a0, $a0, 1963
	lu32i.d	$a0, 192152
	lu52i.d	$a0, $a0, 977
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 445302
	ori	$a0, $a0, 554
	lu32i.d	$a0, 296919
	lu52i.d	$a0, $a0, 992
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -226118
	ori	$a0, $a0, 3580
	lu32i.d	$a0, -416237
	lu52i.d	$a0, $a0, 999
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -241046
	ori	$a0, $a0, 2557
	lu32i.d	$a0, -186339
	lu52i.d	$a0, $a0, 1006
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -169424
	ori	$a0, $a0, 3940
	lu32i.d	$a0, -106006
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 159517
	ori	$a0, $a0, 3153
	lu32i.d	$a0, 476607
	lu52i.d	$a0, $a0, 1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_57:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -163840
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -12926
	ori	$a0, $a0, 2171
	lu32i.d	$a0, 20873
	lu52i.d	$a0, $a0, 984
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 159181
	ori	$a0, $a0, 2830
	lu32i.d	$a0, 296708
	lu52i.d	$a0, $a0, 976
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -235130
	ori	$a0, $a0, 3112
	lu32i.d	$a0, 501292
	lu52i.d	$a0, $a0, 991
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 206920
	ori	$a0, $a0, 1358
	lu32i.d	$a0, -25426
	lu52i.d	$a0, $a0, 998
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 428414
	ori	$a0, $a0, 310
	lu32i.d	$a0, 239419
	lu52i.d	$a0, $a0, 1006
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 350925
	ori	$a0, $a0, 2751
	lu32i.d	$a0, 450582
	lu52i.d	$a0, $a0, 1013
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 280246
	ori	$a0, $a0, 2523
	lu32i.d	$a0, -127440
	lu52i.d	$a0, $a0, 1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_58:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 303104
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 313802
	ori	$a0, $a0, 731
	lu32i.d	$a0, 304269
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -517274
	ori	$a0, $a0, 1075
	lu32i.d	$a0, 335206
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 464327
	ori	$a0, $a0, 4003
	lu32i.d	$a0, -137017
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 15469
	ori	$a0, $a0, 3127
	lu32i.d	$a0, 47813
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 454702
	ori	$a0, $a0, 3354
	lu32i.d	$a0, -184174
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 432503
	ori	$a0, $a0, 847
	lu32i.d	$a0, 237216
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -191596
	ori	$a0, $a0, 792
	lu32i.d	$a0, -114002
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_59:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 24576
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 77650
	ori	$a0, $a0, 2814
	lu32i.d	$a0, 67524
	lu52i.d	$a0, $a0, 987
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -375963
	ori	$a0, $a0, 1745
	lu32i.d	$a0, 278353
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 503401
	ori	$a0, $a0, 52
	lu32i.d	$a0, 461199
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -211877
	ori	$a0, $a0, 1113
	lu32i.d	$a0, -410414
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -494003
	ori	$a0, $a0, 641
	lu32i.d	$a0, -522377
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -227030
	ori	$a0, $a0, 2921
	lu32i.d	$a0, 182334
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 356012
	ori	$a0, $a0, 2144
	lu32i.d	$a0, -46641
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_60:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, -1019
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 126651
	ori	$a0, $a0, 2974
	lu32i.d	$a0, -211549
	lu52i.d	$a0, $a0, 986
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 415312
	ori	$a0, $a0, 1045
	lu32i.d	$a0, 92779
	lu52i.d	$a0, $a0, 979
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -225442
	ori	$a0, $a0, 2434
	lu32i.d	$a0, 220425
	lu52i.d	$a0, $a0, 994
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 240750
	ori	$a0, $a0, 1628
	lu32i.d	$a0, 378282
	lu52i.d	$a0, $a0, 1001
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 33360
	ori	$a0, $a0, 2546
	lu32i.d	$a0, 307809
	lu52i.d	$a0, $a0, 1008
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -49742
	ori	$a0, $a0, 3727
	lu32i.d	$a0, 45217
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -39930
	ori	$a0, $a0, 925
	lu32i.d	$a0, -264326
	lu52i.d	$a0, $a0, 1020
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_61:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 221184
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 262249
	ori	$a0, $a0, 2124
	lu32i.d	$a0, 8941
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -226750
	ori	$a0, $a0, 3872
	lu32i.d	$a0, 91432
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 292673
	ori	$a0, $a0, 2840
	lu32i.d	$a0, 442650
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 239258
	ori	$a0, $a0, 2390
	lu32i.d	$a0, -440650
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 489431
	ori	$a0, $a0, 3787
	lu32i.d	$a0, 416162
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -222869
	ori	$a0, $a0, 1895
	lu32i.d	$a0, -50064
	lu52i.d	$a0, $a0, 1015
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 414061
	ori	$a0, $a0, 2830
	lu32i.d	$a0, -473034
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_62:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 434176
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 74036
	ori	$a0, $a0, 2051
	lu32i.d	$a0, -146553
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -357828
	ori	$a0, $a0, 3462
	lu32i.d	$a0, -287896
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, 119595
	ori	$a0, $a0, 654
	lu32i.d	$a0, 443382
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -2652
	ori	$a0, $a0, 1176
	lu32i.d	$a0, -390601
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -234895
	ori	$a0, $a0, 2270
	lu32i.d	$a0, 425456
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 31675
	ori	$a0, $a0, 1572
	lu32i.d	$a0, -213272
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -361382
	ori	$a0, $a0, 3143
	lu32i.d	$a0, 333824
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_63:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 286720
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 435088
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 240606
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 448714
	ori	$a0, $a0, 1463
	lu32i.d	$a0, 284662
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -297423
	ori	$a0, $a0, 928
	lu32i.d	$a0, -240206
	lu52i.d	$a0, $a0, 995
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -1723
	ori	$a0, $a0, 3557
	lu32i.d	$a0, -23628
	lu52i.d	$a0, $a0, 1002
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -424687
	ori	$a0, $a0, 2596
	lu32i.d	$a0, -284161
	lu52i.d	$a0, $a0, 1009
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -413552
	ori	$a0, $a0, 1378
	lu32i.d	$a0, 179019
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -520765
	ori	$a0, $a0, 882
	lu32i.d	$a0, -192561
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_64:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 450560
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, -109596
	ori	$a0, $a0, 3966
	lu32i.d	$a0, -60445
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, 267311
	ori	$a0, $a0, 1488
	lu32i.d	$a0, -233201
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -332815
	ori	$a0, $a0, 3442
	lu32i.d	$a0, 521350
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 482607
	ori	$a0, $a0, 2226
	lu32i.d	$a0, -294833
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 471893
	ori	$a0, $a0, 1743
	lu32i.d	$a0, 507662
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -494459
	ori	$a0, $a0, 3646
	lu32i.d	$a0, -118649
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -295280
	ori	$a0, $a0, 4089
	lu32i.d	$a0, 394159
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_65:
	vldi	$vr1, -1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, 417792
	lu52i.d	$a0, $a0, -1018
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	lu12i.w	$a0, 334618
	ori	$a0, $a0, 680
	lu32i.d	$a0, -230068
	lu52i.d	$a0, $a0, 988
	movgr2fr.d	$fa1, $a0
	lu12i.w	$a0, -492819
	ori	$a0, $a0, 1907
	lu32i.d	$a0, -342406
	lu52i.d	$a0, $a0, 980
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	lu12i.w	$a0, -18125
	ori	$a0, $a0, 905
	lu32i.d	$a0, 368931
	lu52i.d	$a0, $a0, 996
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, 353387
	ori	$a0, $a0, 3120
	lu32i.d	$a0, -481420
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -32943
	ori	$a0, $a0, 2461
	lu32i.d	$a0, 347631
	lu52i.d	$a0, $a0, 1010
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -432114
	ori	$a0, $a0, 101
	lu32i.d	$a0, -302930
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	lu12i.w	$a0, -324472
	ori	$a0, $a0, 2632
	lu32i.d	$a0, 276362
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ret
.LBB0_66:
	vldi	$vr0, -912
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_43-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_36-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_46-.LJTI0_0
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_16-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_25-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_47-.LJTI0_0
	.word	.LBB0_59-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_40-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_37-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_63-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_52-.LJTI0_0
	.word	.LBB0_65-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
	.word	.LBB0_54-.LJTI0_0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, 235929
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa0, $a0
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -503317
	ori	$a0, $a0, 2130
	lu32i.d	$a0, -503317
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa1, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_3
# %bb.1:
	lu12i.w	$a0, -335545
	ori	$a0, $a0, 2785
	lu32i.d	$a0, -335545
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa1, $a0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_3
# %bb.2:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
