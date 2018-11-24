	li	a0, 102400
	mv	sp, a0
	li	a0, 204800
	mv	hp, a0
	li	a0, 1228800
	mv	ap, a0
	j	min_caml_start
l.14569:
	float	128.00000000000
l.14336:
	float	0.90000000000
l.14334:
	float	0.20000000000
l.13801:
	float	150.00000000000
l.13778:
	float	-150.00000000000
l.13708:
	float	0.10000000000
l.13654:
	float	-2.00000000000
l.13639:
	float	0.00390625000
l.13537:
	float	20.00000000000
l.13535:
	float	0.05000000000
l.13526:
	float	0.25000000000
l.13517:
	float	10.00000000000
l.13510:
	float	0.30000000000
l.13508:
	float	255.00000000000
l.13504:
	float	0.50000000000
l.13502:
	float	0.15000000000
l.13493:
	float	3.14159270000
l.13491:
	float	30.00000000000
l.13489:
	float	15.00000000000
l.13487:
	float	0.00010000000
l.13436:
	float	100000000.00000000000
l.13418:
	float	1000000000.00000000000
l.13260:
	float	-0.10000000000
l.13225:
	float	0.01000000000
l.13223:
	float	-0.20000000000
l.12883:
	float	2.00000000000
l.12849:
	float	0.00000000000
l.12843:
	float	-200.00000000000
l.12840:
	float	200.00000000000
l.12837:
	float	0.01745329300
l.12813:
	float	-1.00000000000
l.12811:
	float	1.00000000000
vecunit_sgn.2494:
	flw	fa0, a0, 0 ! 184
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fsqr
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 184
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fsqr
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 184
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 184
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fsqr
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 184
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sqrt
	addi	sp, sp, -28
	lw	ra, sp, 24
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fiszero
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 185
	bne	a0, a1, be_else.17783
	li	a0, 0 ! 185
	lw	a1, sp, 0 ! 0
	bne	a1, a0, be_else.17785
	li	a0, l.12811 ! 185
	flw	fa0, a0, 0 ! 185
	flw	fa1, sp, 24 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 185
	j	be_cont.17786
be_else.17785:
	li	a0, l.12813 ! 185
	flw	fa0, a0, 0 ! 185
	flw	fa1, sp, 24 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 185
be_cont.17786:
	j	be_cont.17784
be_else.17783:
	li	a0, l.12811 ! 185
	flw	fa0, a0, 0 ! 185
be_cont.17784:
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 186
	fmul.s	fa1, fa1, fa0, rne ! 186
	fsw	a0, fa1, 0 ! 186
	flw	fa1, a0, 4 ! 187
	fmul.s	fa1, fa1, fa0, rne ! 187
	fsw	a0, fa1, 4 ! 187
	flw	fa1, a0, 8 ! 188
	fmul.s	fa0, fa1, fa0, rne ! 188
	fsw	a0, fa0, 8 ! 188
	ret ! 188
vecaccumv.2518:
	flw	fa0, a0, 0 ! 231
	flw	fa1, a1, 0 ! 231
	flw	fa2, a2, 0 ! 231
	fmul.s	fa1, fa1, fa2, rne ! 231
	fadd.s	fa0, fa0, fa1, rne ! 231
	fsw	a0, fa0, 0 ! 231
	flw	fa0, a0, 4 ! 232
	flw	fa1, a1, 4 ! 232
	flw	fa2, a2, 4 ! 232
	fmul.s	fa1, fa1, fa2, rne ! 232
	fadd.s	fa0, fa0, fa1, rne ! 232
	fsw	a0, fa0, 4 ! 232
	flw	fa0, a0, 8 ! 233
	flw	fa1, a1, 8 ! 233
	flw	fa2, a2, 8 ! 233
	fmul.s	fa1, fa1, fa2, rne ! 233
	fadd.s	fa0, fa0, fa1, rne ! 233
	fsw	a0, fa0, 8 ! 233
	ret ! 233
read_screen_settings.2595:
	lw	a0, a21, 20 ! 0
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 583
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 4 ! 584
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 585
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, l.12837 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_cos
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sin
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.12837 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	fsw	sp, fa0, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_cos
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_sin
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 32 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 594
	li	a0, l.12840 ! 594
	flw	fa3, a0, 0 ! 594
	fmul.s	fa2, fa2, fa3, rne ! 594
	lw	a0, sp, 12 ! 0
	fsw	a0, fa2, 0 ! 594
	li	a1, l.12843 ! 595
	flw	fa2, a1, 0 ! 595
	flw	fa3, sp, 40 ! 0
	fmul.s	fa2, fa3, fa2, rne ! 595
	fsw	a0, fa2, 4 ! 595
	flw	fa2, sp, 56 ! 0
	fmul.s	fa4, fa1, fa2, rne ! 596
	li	a1, l.12840 ! 596
	flw	fa5, a1, 0 ! 596
	fmul.s	fa4, fa4, fa5, rne ! 596
	fsw	a0, fa4, 8 ! 596
	lw	a1, sp, 8 ! 0
	fsw	a1, fa2, 0 ! 598
	li	a2, l.12849 ! 599
	flw	fa4, a2, 0 ! 599
	fsw	a1, fa4, 4 ! 599
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 8 ! 600
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 602
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 602
	flw	fa0, sp, 32 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 4 ! 603
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 604
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 8 ! 604
	lw	a0, sp, 16 ! 0
	flw	fa0, a0, 0 ! 606
	lw	a1, sp, 12 ! 0
	flw	fa1, a1, 0 ! 606
	fsub.s	fa0, fa0, fa1, rne ! 606
	lw	a2, sp, 0 ! 0
	fsw	a2, fa0, 0 ! 606
	flw	fa0, a0, 4 ! 607
	flw	fa1, a1, 4 ! 607
	fsub.s	fa0, fa0, fa1, rne ! 607
	fsw	a2, fa0, 4 ! 607
	flw	fa0, a0, 8 ! 608
	flw	fa1, a1, 8 ! 608
	fsub.s	fa0, fa0, fa1, rne ! 608
	fsw	a2, fa0, 8 ! 608
	ret ! 608
read_light.2597:
	lw	a0, a21, 8 ! 0
	lw	a1, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_float
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, l.12837 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_sin
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 4 ! 620
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_float
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, l.12837 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	flw	fa1, sp, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_cos
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sin
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 624
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 624
	flw	fa0, sp, 16 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_cos
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 626
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 8 ! 626
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 627
	ret ! 627
rotate_quadratic_matrix.2599:
	flw	fa0, a1, 0 ! 637
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 638
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_sin
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 639
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_cos
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 640
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sin
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 641
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_cos
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 642
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_sin
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 24 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 644
	flw	fa4, sp, 32 ! 0
	flw	fa5, sp, 16 ! 0
	fmul.s	fa6, fa5, fa4, rne ! 645
	fmul.s	fa6, fa6, fa1, rne ! 645
	flw	fa7, sp, 8 ! 0
	fmul.s	fa8, fa7, fa0, rne ! 645
	fsub.s	fa6, fa6, fa8, rne ! 645
	fmul.s	fa8, fa7, fa4, rne ! 646
	fmul.s	fa8, fa8, fa1, rne ! 646
	fmul.s	fa9, fa5, fa0, rne ! 646
	fadd.s	fa8, fa8, fa9, rne ! 646
	fmul.s	fa9, fa2, fa0, rne ! 648
	fmul.s	fa10, fa5, fa4, rne ! 649
	fmul.s	fa10, fa10, fa0, rne ! 649
	fmul.s	fa11, fa7, fa1, rne ! 649
	fadd.s	fa10, fa10, fa11, rne ! 649
	fmul.s	fa11, fa7, fa4, rne ! 650
	fmul.s	fa0, fa11, fa0, rne ! 650
	fmul.s	fa1, fa5, fa1, rne ! 650
	fsub.s	fa0, fa0, fa1, rne ! 650
	fsw	sp, fa0, 48 ! 0
	fsw	sp, fa8, 56 ! 0
	fsw	sp, fa10, 64 ! 0
	fsw	sp, fa6, 72 ! 0
	fsw	sp, fa9, 80 ! 0
	fsw	sp, fa3, 88 ! 0
	fmv.s	fa0, fa4
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fneg
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 24 ! 0
	flw	fa2, sp, 16 ! 0
	fmul.s	fa2, fa2, fa1, rne ! 653
	flw	fa3, sp, 8 ! 0
	fmul.s	fa1, fa3, fa1, rne ! 654
	lw	a0, sp, 0 ! 0
	flw	fa3, a0, 0 ! 657
	flw	fa4, a0, 4 ! 658
	flw	fa5, a0, 8 ! 659
	flw	fa6, sp, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	fsw	sp, fa2, 104 ! 0
	fsw	sp, fa5, 112 ! 0
	fsw	sp, fa0, 120 ! 0
	fsw	sp, fa4, 128 ! 0
	fsw	sp, fa3, 136 ! 0
	fmv.s	fa0, fa6
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fsqr
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 80 ! 0
	fsw	sp, fa0, 144 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_fsqr
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 144 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 664
	flw	fa2, sp, 120 ! 0
	fsw	sp, fa0, 152 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fsqr
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 152 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 664
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 664
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fsqr
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 64 ! 0
	fsw	sp, fa0, 160 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fsqr
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 160 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 665
	flw	fa2, sp, 104 ! 0
	fsw	sp, fa0, 168 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 168 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 665
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 4 ! 665
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 48 ! 0
	fsw	sp, fa0, 176 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fsqr
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 176 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 666
	flw	fa2, sp, 96 ! 0
	fsw	sp, fa0, 184 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fsqr
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 184 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 666
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 8 ! 666
	li	a0, l.12883 ! 669
	flw	fa0, a0, 0 ! 669
	flw	fa2, sp, 72 ! 0
	flw	fa3, sp, 136 ! 0
	fmul.s	fa4, fa3, fa2, rne ! 669
	flw	fa5, sp, 56 ! 0
	fmul.s	fa4, fa4, fa5, rne ! 669
	flw	fa6, sp, 64 ! 0
	flw	fa7, sp, 128 ! 0
	fmul.s	fa8, fa7, fa6, rne ! 669
	flw	fa9, sp, 48 ! 0
	fmul.s	fa8, fa8, fa9, rne ! 669
	fadd.s	fa4, fa4, fa8, rne ! 669
	flw	fa8, sp, 104 ! 0
	fmul.s	fa10, fa1, fa8, rne ! 669
	flw	fa11, sp, 96 ! 0
	fmul.s	fa10, fa10, fa11, rne ! 669
	fadd.s	fa4, fa4, fa10, rne ! 669
	fmul.s	fa0, fa0, fa4, rne ! 669
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 669
	li	a1, l.12883 ! 670
	flw	fa0, a1, 0 ! 670
	flw	fa4, sp, 88 ! 0
	fmul.s	fa10, fa3, fa4, rne ! 670
	fmul.s	fa5, fa10, fa5, rne ! 670
	flw	fa10, sp, 80 ! 0
	fmul.s	fa12, fa7, fa10, rne ! 670
	fmul.s	fa9, fa12, fa9, rne ! 670
	fadd.s	fa5, fa5, fa9, rne ! 670
	flw	fa9, sp, 120 ! 0
	fmul.s	fa12, fa1, fa9, rne ! 670
	fmul.s	fa11, fa12, fa11, rne ! 670
	fadd.s	fa5, fa5, fa11, rne ! 670
	fmul.s	fa0, fa0, fa5, rne ! 670
	fsw	a0, fa0, 4 ! 670
	li	a1, l.12883 ! 671
	flw	fa0, a1, 0 ! 671
	fmul.s	fa3, fa3, fa4, rne ! 671
	fmul.s	fa2, fa3, fa2, rne ! 671
	fmul.s	fa3, fa7, fa10, rne ! 671
	fmul.s	fa3, fa3, fa6, rne ! 671
	fadd.s	fa2, fa2, fa3, rne ! 671
	fmul.s	fa1, fa1, fa9, rne ! 671
	fmul.s	fa1, fa1, fa8, rne ! 671
	fadd.s	fa1, fa2, fa1, rne ! 671
	fmul.s	fa0, fa0, fa1, rne ! 671
	fsw	a0, fa0, 8 ! 671
	ret ! 671
read_nth_object.2602:
	lw	a1, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 679
	bne	a0, a1, be_else.17793
	li	a0, 0 ! 755
	ret ! 755
be_else.17793:
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 3 ! 685
	li	a2, l.12849 ! 685
	flw	fa0, a2, 0 ! 685
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 0 ! 686
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 4 ! 687
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 8 ! 688
	li	a1, 3 ! 690
	li	a2, l.12849 ! 690
	flw	fa0, a2, 0 ! 690
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 0 ! 691
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 4 ! 692
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 8 ! 693
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fisneg
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 2 ! 697
	li	a2, l.12849 ! 697
	flw	fa0, a2, 0 ! 697
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0
	fsw	a0, fa0, 0 ! 698
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0
	fsw	a0, fa0, 4 ! 699
	li	a1, 3 ! 701
	li	a2, l.12849 ! 701
	flw	fa0, a2, 0 ! 701
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 0 ! 702
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 4 ! 703
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 8 ! 704
	li	a1, 3 ! 706
	li	a2, l.12849 ! 706
	flw	fa0, a2, 0 ! 706
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 707
	lw	a2, sp, 20 ! 0
	bne	a2, a1, be_else.17794
	j	be_cont.17795
be_else.17794:
	sw	sp, a0, 44 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.12837 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	lw	a0, sp, 44 ! 0
	fsw	a0, fa0, 0 ! 709
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.12837 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	lw	a0, sp, 44 ! 0
	fsw	a0, fa0, 4 ! 710
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.12837 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	lw	a0, sp, 44 ! 0
	fsw	a0, fa0, 8 ! 711
be_cont.17795:
	li	a1, 2 ! 718
	lw	a2, sp, 12 ! 0
	bne	a2, a1, be_else.17796
	li	a1, 1 ! 718
	j	be_cont.17797
be_else.17796:
	lw	a1, sp, 32 ! 0
be_cont.17797:
	li	a3, 4 ! 719
	li	a4, l.12849 ! 719
	flw	fa0, a4, 0 ! 719
	sw	sp, a1, 48 ! 0
	sw	sp, a0, 44 ! 0
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, hp ! 722
	addi	hp, hp, 44 ! 722
	sw	a1, a0, 40 ! 722
	lw	a0, sp, 44 ! 0
	sw	a1, a0, 36 ! 722
	lw	a2, sp, 40 ! 0
	sw	a1, a2, 32 ! 722
	lw	a2, sp, 36 ! 0
	sw	a1, a2, 28 ! 722
	lw	a2, sp, 48 ! 0
	sw	a1, a2, 24 ! 722
	lw	a2, sp, 28 ! 0
	sw	a1, a2, 20 ! 722
	lw	a2, sp, 24 ! 0
	sw	a1, a2, 16 ! 722
	lw	a3, sp, 20 ! 0
	sw	a1, a3, 12 ! 722
	lw	a4, sp, 16 ! 0
	sw	a1, a4, 8 ! 722
	lw	a4, sp, 12 ! 0
	sw	a1, a4, 4 ! 722
	lw	a5, sp, 8 ! 0
	sw	a1, a5, 0 ! 722
	lw	a5, sp, 4 ! 0
	slli	a5, a5, 2 ! 730
	lw	a6, sp, 0 ! 0
	add	t0, a6, a5 ! 730
	sw	t0, a1, 0 ! 730
	li	a1, 3 ! 732
	bne	a4, a1, be_else.17798
	flw	fa0, a2, 0 ! 735
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fiszero
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 736
	bne	a0, a1, be_else.17801
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fiszero
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 117
	bne	a0, a1, be_else.17803
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fispos
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 118
	bne	a0, a1, be_else.17805
	li	a0, l.12813 ! 119
	flw	fa0, a0, 0 ! 119
	j	be_cont.17806
be_else.17805:
	li	a0, l.12811 ! 118
	flw	fa0, a0, 0 ! 118
be_cont.17806:
	j	be_cont.17804
be_else.17803:
	li	a0, l.12849 ! 117
	flw	fa0, a0, 0 ! 117
be_cont.17804:
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 64 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 736
	j	be_cont.17802
be_else.17801:
	li	a0, l.12849 ! 736
	flw	fa0, a0, 0 ! 736
be_cont.17802:
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 0 ! 736
	flw	fa0, a0, 4 ! 737
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fiszero
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 738
	bne	a0, a1, be_else.17807
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fiszero
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 117
	bne	a0, a1, be_else.17809
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fispos
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 118
	bne	a0, a1, be_else.17811
	li	a0, l.12813 ! 119
	flw	fa0, a0, 0 ! 119
	j	be_cont.17812
be_else.17811:
	li	a0, l.12811 ! 118
	flw	fa0, a0, 0 ! 118
be_cont.17812:
	j	be_cont.17810
be_else.17809:
	li	a0, l.12849 ! 117
	flw	fa0, a0, 0 ! 117
be_cont.17810:
	flw	fa1, sp, 72 ! 0
	fsw	sp, fa0, 80 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fsqr
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 738
	j	be_cont.17808
be_else.17807:
	li	a0, l.12849 ! 738
	flw	fa0, a0, 0 ! 738
be_cont.17808:
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 4 ! 738
	flw	fa0, a0, 8 ! 739
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fiszero
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 740
	bne	a0, a1, be_else.17813
	flw	fa0, sp, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fiszero
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 117
	bne	a0, a1, be_else.17815
	flw	fa0, sp, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fispos
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 118
	bne	a0, a1, be_else.17817
	li	a0, l.12813 ! 119
	flw	fa0, a0, 0 ! 119
	j	be_cont.17818
be_else.17817:
	li	a0, l.12811 ! 118
	flw	fa0, a0, 0 ! 118
be_cont.17818:
	j	be_cont.17816
be_else.17815:
	li	a0, l.12849 ! 117
	flw	fa0, a0, 0 ! 117
be_cont.17816:
	flw	fa1, sp, 88 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fsqr
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 740
	j	be_cont.17814
be_else.17813:
	li	a0, l.12849 ! 740
	flw	fa0, a0, 0 ! 740
be_cont.17814:
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 8 ! 740
	j	be_cont.17799
be_else.17798:
	li	a1, 2 ! 742
	bne	a4, a1, be_else.17819
	li	a1, 0 ! 744
	lw	a4, sp, 32 ! 0
	bne	a4, a1, be_else.17821
	li	a1, 1 ! 744
	j	be_cont.17822
be_else.17821:
	li	a1, 0 ! 744
be_cont.17822:
	mv	a0, a2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	vecunit_sgn.2494
	addi	sp, sp, -108
	lw	ra, sp, 104
	j	be_cont.17820
be_else.17819:
be_cont.17820:
be_cont.17799:
	li	a0, 0 ! 748
	lw	a1, sp, 20 ! 0
	bne	a1, a0, be_else.17823
	j	be_cont.17824
be_else.17823:
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 44 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	rotate_quadratic_matrix.2599
	addi	sp, sp, -108
	lw	ra, sp, 104
be_cont.17824:
	li	a0, 1 ! 752
	ret ! 752
read_object.2604:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	li	a3, 60 ! 760
	blt	a0, a3, bge_else.17825
	ret ! 765
bge_else.17825:
	sw	sp, a21, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a21, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 761
	bne	a0, a1, be_else.17827
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 12 ! 0
	sw	a0, a1, 0 ! 764
	ret ! 764
be_else.17827:
	lw	a0, sp, 12 ! 0
	addi	a0, a0, 1 ! 762
	li	a1, 60 ! 760
	blt	a0, a1, bge_else.17829
	ret ! 765
bge_else.17829:
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 761
	bne	a0, a1, be_else.17831
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 16 ! 0
	sw	a0, a1, 0 ! 764
	ret ! 764
be_else.17831:
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 762
	li	a1, 60 ! 760
	blt	a0, a1, bge_else.17833
	ret ! 765
bge_else.17833:
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 761
	bne	a0, a1, be_else.17835
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 20 ! 0
	sw	a0, a1, 0 ! 764
	ret ! 764
be_else.17835:
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 762
	li	a1, 60 ! 760
	blt	a0, a1, bge_else.17837
	ret ! 765
bge_else.17837:
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 761
	bne	a0, a1, be_else.17839
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 24 ! 0
	sw	a0, a1, 0 ! 764
	ret ! 764
be_else.17839:
	lw	a0, sp, 24 ! 0
	addi	a0, a0, 1 ! 762
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_net_item.2608:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17841
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 1 ! 777
	li	a1, -1 ! 777
	j	min_caml_create_array
be_else.17841:
	lw	a1, sp, 0 ! 0
	addi	a2, a1, 1 ! 779
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17842
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	be_cont.17843
be_else.17842:
	lw	a1, sp, 8 ! 0
	addi	a2, a1, 1 ! 779
	sw	sp, a0, 12 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17844
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	be_cont.17845
be_else.17844:
	lw	a1, sp, 16 ! 0
	addi	a2, a1, 1 ! 779
	sw	sp, a0, 20 ! 0
	sw	sp, a2, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17846
	lw	a0, sp, 24 ! 0
	addi	a0, a0, 1 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	be_cont.17847
be_else.17846:
	lw	a1, sp, 24 ! 0
	addi	a2, a1, 1 ! 779
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2608
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0
	slli	a1, a1, 2 ! 780
	lw	a2, sp, 28 ! 0
	add	t0, a0, a1 ! 780
	sw	t0, a2, 0 ! 780
be_cont.17847:
	lw	a1, sp, 16 ! 0
	slli	a1, a1, 2 ! 780
	lw	a2, sp, 20 ! 0
	add	t0, a0, a1 ! 780
	sw	t0, a2, 0 ! 780
be_cont.17845:
	lw	a1, sp, 8 ! 0
	slli	a1, a1, 2 ! 780
	lw	a2, sp, 12 ! 0
	add	t0, a0, a1 ! 780
	sw	t0, a2, 0 ! 780
be_cont.17843:
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 780
	lw	a2, sp, 4 ! 0
	add	t0, a0, a1 ! 780
	sw	t0, a2, 0 ! 780
	ret ! 780
read_or_network.2610:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17848
	li	a0, 1 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	j	be_cont.17849
be_else.17848:
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17850
	li	a0, 2 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	j	be_cont.17851
be_else.17850:
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17852
	li	a0, 3 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	be_cont.17853
be_else.17852:
	li	a1, 3 ! 779
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	read_net_item.2608
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0
	sw	a0, a1, 8 ! 780
be_cont.17853:
	lw	a1, sp, 8 ! 0
	sw	a0, a1, 4 ! 780
be_cont.17851:
	lw	a1, sp, 4 ! 0
	sw	a0, a1, 0 ! 780
	mv	a1, a0 ! 780
be_cont.17849:
	lw	a0, a1, 0 ! 785
	li	a2, -1 ! 785
	bne	a0, a2, be_else.17854
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 1 ! 786
	j	min_caml_create_array
be_else.17854:
	lw	a0, sp, 0 ! 0
	addi	a2, a0, 1 ! 788
	sw	sp, a1, 16 ! 0
	sw	sp, a2, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_int
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17855
	li	a0, 1 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	j	be_cont.17856
be_else.17855:
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17857
	li	a0, 2 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	be_cont.17858
be_else.17857:
	li	a1, 2 ! 779
	sw	sp, a0, 28 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2608
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 28 ! 0
	sw	a0, a1, 4 ! 780
be_cont.17858:
	lw	a1, sp, 24 ! 0
	sw	a0, a1, 0 ! 780
	mv	a1, a0 ! 780
be_cont.17856:
	lw	a0, a1, 0 ! 785
	li	a2, -1 ! 785
	bne	a0, a2, be_else.17859
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 786
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	be_cont.17860
be_else.17859:
	lw	a0, sp, 20 ! 0
	addi	a2, a0, 1 ! 788
	sw	sp, a1, 32 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	read_or_network.2610
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 20 ! 0
	slli	a1, a1, 2 ! 789
	lw	a2, sp, 32 ! 0
	add	t0, a0, a1 ! 789
	sw	t0, a2, 0 ! 789
be_cont.17860:
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 789
	lw	a2, sp, 16 ! 0
	add	t0, a0, a1 ! 789
	sw	t0, a2, 0 ! 789
	ret ! 789
read_and_network.2612:
	lw	a1, a21, 4 ! 0
	sw	sp, a21, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17861
	li	a0, 1 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	be_cont.17862
be_else.17861:
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17863
	li	a0, 2 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	be_cont.17864
be_else.17863:
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17865
	li	a0, 3 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	be_cont.17866
be_else.17865:
	li	a1, 3 ! 779
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	read_net_item.2608
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	sw	a0, a1, 8 ! 780
be_cont.17866:
	lw	a1, sp, 16 ! 0
	sw	a0, a1, 4 ! 780
be_cont.17864:
	lw	a1, sp, 12 ! 0
	sw	a0, a1, 0 ! 780
be_cont.17862:
	lw	a1, a0, 0 ! 794
	li	a2, -1 ! 794
	bne	a1, a2, be_else.17867
	ret ! 794
be_else.17867:
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 796
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 796
	sw	t0, a0, 0 ! 796
	addi	a0, a1, 1 ! 797
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17869
	li	a0, 1 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	be_cont.17870
be_else.17869:
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, -1 ! 777
	bne	a0, a1, be_else.17871
	li	a0, 2 ! 777
	li	a1, -1 ! 777
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	be_cont.17872
be_else.17871:
	li	a1, 2 ! 779
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	read_net_item.2608
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32 ! 0
	sw	a0, a1, 4 ! 780
be_cont.17872:
	lw	a1, sp, 28 ! 0
	sw	a0, a1, 0 ! 780
be_cont.17870:
	lw	a1, a0, 0 ! 794
	li	a2, -1 ! 794
	bne	a1, a2, be_else.17873
	ret ! 794
be_else.17873:
	lw	a1, sp, 24 ! 0
	slli	a2, a1, 2 ! 796
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 796
	sw	t0, a0, 0 ! 796
	addi	a0, a1, 1 ! 797
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_surface.2616:
	lw	a5, a21, 4 ! 0
	slli	a6, a2, 2 ! 828
	add	t0, a1, a6 ! 828
	flw	fa3, t0, 0 ! 828
	sw	sp, a5, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	sw	sp, a4, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	sw	sp, a3, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, a2, 52 ! 0
	sw	sp, a0, 56 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fiszero
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 828
	bne	a0, a1, be_else.17878
	lw	a0, sp, 56 ! 0
	lw	a1, a0, 16 ! 829
	lw	a0, a0, 24 ! 325
	lw	a2, sp, 52 ! 0
	slli	a3, a2, 2 ! 830
	lw	a4, sp, 48 ! 0
	add	t0, a4, a3 ! 830
	flw	fa0, t0, 0 ! 830
	sw	sp, a1, 60 ! 0
	sw	sp, a0, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fisneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 16
	lw	a2, sp, 64 ! 0
	bne	a2, a1, be_else.17879
	j	be_cont.17880
be_else.17879:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.17881
	li	a0, 1 ! 16
	j	be_cont.17882
be_else.17881:
	li	a0, 0 ! 16
be_cont.17882:
be_cont.17880:
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 830
	lw	a3, sp, 60 ! 0
	add	t0, a3, a2 ! 830
	flw	fa0, t0, 0 ! 830
	li	a2, 0 ! 124
	bne	a0, a2, be_else.17883
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	j	be_cont.17884
be_else.17883:
be_cont.17884:
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 832
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 832
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 832
	flw	fa1, t0, 0 ! 832
	fdiv.s	fa0, fa0, fa1, rne ! 832
	lw	a0, sp, 32 ! 0
	slli	a2, a0, 2 ! 833
	add	t0, a1, a2 ! 833
	flw	fa1, t0, 0 ! 833
	fmul.s	fa1, fa0, fa1, rne ! 833
	flw	fa2, sp, 24 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 833
	fsw	sp, fa0, 72 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fabs
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 32 ! 0
	slli	a0, a0, 2 ! 833
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 833
	flw	fa1, t0, 0 ! 833
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 833
	bne	a0, a1, be_else.17886
	li	a0, 0 ! 837
	ret ! 837
be_else.17886:
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 834
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 834
	flw	fa0, t0, 0 ! 834
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 834
	flw	fa2, sp, 8 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 834
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fabs
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 834
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 834
	flw	fa1, t0, 0 ! 834
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 834
	bne	a0, a1, be_else.17887
	li	a0, 0 ! 836
	ret ! 836
be_else.17887:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 72 ! 0
	fsw	a0, fa0, 0 ! 835
	li	a0, 1 ! 835
	ret ! 835
be_else.17878:
	li	a0, 0 ! 828
	ret ! 828
solver_surface.2631:
	lw	a2, a21, 4 ! 0
	lw	a0, a0, 16 ! 854
	flw	fa3, a1, 0 ! 193
	flw	fa4, a0, 0 ! 193
	fmul.s	fa3, fa3, fa4, rne ! 193
	flw	fa4, a1, 4 ! 193
	flw	fa5, a0, 4 ! 193
	fmul.s	fa4, fa4, fa5, rne ! 193
	fadd.s	fa3, fa3, fa4, rne ! 193
	flw	fa4, a1, 8 ! 193
	flw	fa5, a0, 8 ! 193
	fmul.s	fa4, fa4, fa5, rne ! 193
	fadd.s	fa3, fa3, fa4, rne ! 193
	sw	sp, a2, 0 ! 0
	fsw	sp, fa3, 8 ! 0
	fsw	sp, fa2, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, a0, 40 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fispos
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 856
	bne	a0, a1, be_else.17889
	li	a0, 0 ! 859
	ret ! 859
be_else.17889:
	lw	a0, sp, 40 ! 0
	flw	fa0, a0, 0 ! 198
	flw	fa1, sp, 32 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 198
	flw	fa1, a0, 4 ! 198
	flw	fa2, sp, 24 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	flw	fa1, a0, 8 ! 198
	flw	fa2, sp, 16 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 8 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 857
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 857
	li	a0, 1 ! 858
	ret ! 858
quadratic.2637:
	fsw	sp, fa0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	lw	a1, a0, 16 ! 867
	flw	fa1, a1, 0 ! 295
	fmul.s	fa0, fa0, fa1, rne ! 867
	flw	fa1, sp, 16 ! 0
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fsqr
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 24 ! 0
	lw	a1, a0, 16 ! 867
	flw	fa1, a1, 4 ! 305
	fmul.s	fa0, fa0, fa1, rne ! 867
	flw	fa1, sp, 32 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 8 ! 0
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fsqr
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 24 ! 0
	lw	a1, a0, 16 ! 867
	flw	fa1, a1, 8 ! 315
	fmul.s	fa0, fa0, fa1, rne ! 867
	flw	fa1, sp, 40 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 867
	lw	a1, a0, 12 ! 869
	li	a2, 0 ! 869
	bne	a1, a2, be_else.17891
	ret ! 870
be_else.17891:
	flw	fa1, sp, 8 ! 0
	flw	fa2, sp, 16 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 873
	lw	a1, a0, 36 ! 873
	flw	fa4, a1, 0 ! 415
	fmul.s	fa3, fa3, fa4, rne ! 873
	fadd.s	fa0, fa0, fa3, rne ! 872
	flw	fa3, sp, 0 ! 0
	fmul.s	fa1, fa1, fa3, rne ! 874
	lw	a1, a0, 36 ! 874
	flw	fa4, a1, 4 ! 425
	fmul.s	fa1, fa1, fa4, rne ! 874
	fadd.s	fa0, fa0, fa1, rne ! 872
	fmul.s	fa1, fa3, fa2, rne ! 875
	lw	a0, a0, 36 ! 875
	flw	fa2, a0, 8 ! 435
	fmul.s	fa1, fa1, fa2, rne ! 875
	fadd.s	fa0, fa0, fa1, rne ! 872
	ret ! 872
bilinear.2642:
	fmul.s	fa6, fa0, fa3, rne ! 882
	lw	a1, a0, 16 ! 882
	flw	fa7, a1, 0 ! 295
	fmul.s	fa6, fa6, fa7, rne ! 882
	fmul.s	fa7, fa1, fa4, rne ! 883
	lw	a1, a0, 16 ! 883
	flw	fa8, a1, 4 ! 305
	fmul.s	fa7, fa7, fa8, rne ! 883
	fadd.s	fa6, fa6, fa7, rne ! 882
	fmul.s	fa7, fa2, fa5, rne ! 884
	lw	a1, a0, 16 ! 884
	flw	fa8, a1, 8 ! 315
	fmul.s	fa7, fa7, fa8, rne ! 884
	fadd.s	fa6, fa6, fa7, rne ! 882
	lw	a1, a0, 12 ! 886
	li	a2, 0 ! 886
	bne	a1, a2, be_else.17892
	fmv.s	fa0, fa6 ! 887
	ret ! 887
be_else.17892:
	fmul.s	fa7, fa2, fa4, rne ! 890
	fmul.s	fa8, fa1, fa5, rne ! 890
	fadd.s	fa7, fa7, fa8, rne ! 890
	lw	a1, a0, 36 ! 890
	flw	fa8, a1, 0 ! 415
	fmul.s	fa7, fa7, fa8, rne ! 890
	fmul.s	fa5, fa0, fa5, rne ! 891
	fmul.s	fa2, fa2, fa3, rne ! 891
	fadd.s	fa2, fa5, fa2, rne ! 891
	lw	a1, a0, 36 ! 891
	flw	fa5, a1, 4 ! 425
	fmul.s	fa2, fa2, fa5, rne ! 891
	fadd.s	fa2, fa7, fa2, rne ! 890
	fmul.s	fa0, fa0, fa4, rne ! 892
	fmul.s	fa1, fa1, fa3, rne ! 892
	fadd.s	fa0, fa0, fa1, rne ! 892
	lw	a0, a0, 36 ! 892
	flw	fa1, a0, 8 ! 435
	fmul.s	fa0, fa0, fa1, rne ! 892
	fadd.s	fa0, fa2, fa0, rne ! 890
	fsw	sp, fa6, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fhalf
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 0 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 889
	ret ! 889
solver_second.2650:
	lw	a2, a21, 4 ! 0
	flw	fa3, a1, 0 ! 907
	flw	fa4, a1, 4 ! 907
	flw	fa5, a1, 8 ! 907
	sw	sp, a2, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, a1, 36 ! 0
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	quadratic.2637
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fiszero
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 909
	bne	a0, a1, be_else.17894
	lw	a0, sp, 36 ! 0
	flw	fa0, a0, 0 ! 914
	flw	fa1, a0, 4 ! 914
	flw	fa2, a0, 8 ! 914
	flw	fa3, sp, 24 ! 0
	flw	fa4, sp, 16 ! 0
	flw	fa5, sp, 8 ! 0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	bilinear.2642
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 24 ! 0
	flw	fa2, sp, 16 ! 0
	flw	fa3, sp, 8 ! 0
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	quadratic.2637
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 32 ! 0
	lw	a1, a0, 4 ! 917
	li	a2, 3 ! 917
	bne	a1, a2, be_else.17895
	li	a1, l.12811 ! 917
	flw	fa1, a1, 0 ! 917
	fsub.s	fa0, fa0, fa1, rne ! 917
	j	be_cont.17896
be_else.17895:
be_cont.17896:
	flw	fa1, sp, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fsqr
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 40 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 919
	fsub.s	fa0, fa0, fa1, rne ! 919
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fispos
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 921
	bne	a0, a1, be_else.17897
	li	a0, 0 ! 927
	ret ! 927
be_else.17897:
	flw	fa0, sp, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_sqrt
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 32 ! 0
	lw	a0, a0, 24 ! 923
	li	a1, 0 ! 923
	bne	a0, a1, be_else.17898
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	j	be_cont.17899
be_else.17898:
be_cont.17899:
	flw	fa1, sp, 48 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 924
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 924
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 924
	li	a0, 1 ! 924
	ret ! 924
be_else.17894:
	li	a0, 0 ! 910
	ret ! 910
solver.2656:
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a0, a0, 2 ! 933
	add	t0, a6, a0 ! 933
	lw	a0, t0, 0 ! 933
	flw	fa0, a2, 0 ! 935
	lw	a6, a0, 20 ! 935
	flw	fa1, a6, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 935
	flw	fa1, a2, 4 ! 936
	lw	a6, a0, 20 ! 936
	flw	fa2, a6, 4 ! 345
	fsub.s	fa1, fa1, fa2, rne ! 936
	flw	fa2, a2, 8 ! 937
	lw	a2, a0, 20 ! 937
	flw	fa3, a2, 8 ! 355
	fsub.s	fa2, fa2, fa3, rne ! 937
	lw	a2, a0, 4 ! 938
	li	a6, 1 ! 940
	bne	a2, a6, be_else.17900
	li	a2, 0 ! 843
	li	a3, 1 ! 843
	li	a5, 2 ! 843
	fsw	sp, fa0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, a4, 32 ! 0
	mv	a21, a4
	mv	a4, a5
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 843
	bne	a0, a1, be_else.17901
	li	a2, 1 ! 844
	li	a3, 2 ! 844
	li	a4, 0 ! 844
	flw	fa0, sp, 16 ! 0
	flw	fa1, sp, 8 ! 0
	flw	fa2, sp, 0 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 844
	bne	a0, a1, be_else.17902
	li	a2, 2 ! 845
	li	a3, 0 ! 845
	li	a4, 1 ! 845
	flw	fa0, sp, 8 ! 0
	flw	fa1, sp, 0 ! 0
	flw	fa2, sp, 16 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 845
	bne	a0, a1, be_else.17903
	li	a0, 0 ! 846
	ret ! 846
be_else.17903:
	li	a0, 3 ! 845
	ret ! 845
be_else.17902:
	li	a0, 2 ! 844
	ret ! 844
be_else.17901:
	li	a0, 1 ! 843
	ret ! 843
be_else.17900:
	li	a4, 2 ! 941
	bne	a2, a4, be_else.17904
	lw	a0, a0, 16 ! 941
	flw	fa3, a1, 0 ! 193
	flw	fa4, a0, 0 ! 193
	fmul.s	fa3, fa3, fa4, rne ! 193
	flw	fa4, a1, 4 ! 193
	flw	fa5, a0, 4 ! 193
	fmul.s	fa4, fa4, fa5, rne ! 193
	fadd.s	fa3, fa3, fa4, rne ! 193
	flw	fa4, a1, 8 ! 193
	flw	fa5, a0, 8 ! 193
	fmul.s	fa4, fa4, fa5, rne ! 193
	fadd.s	fa3, fa3, fa4, rne ! 193
	sw	sp, a5, 36 ! 0
	fsw	sp, fa3, 40 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 0 ! 0
	sw	sp, a0, 48 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fispos
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 856
	bne	a0, a1, be_else.17905
	li	a0, 0 ! 859
	ret ! 859
be_else.17905:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 0 ! 198
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 198
	flw	fa1, a0, 4 ! 198
	flw	fa2, sp, 16 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	flw	fa1, a0, 8 ! 198
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 857
	lw	a0, sp, 36 ! 0
	fsw	a0, fa0, 0 ! 857
	li	a0, 1 ! 858
	ret ! 858
be_else.17904:
	mv	a21, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_fast.2660:
	lw	a3, a21, 4 ! 0
	flw	fa3, a2, 0 ! 965
	fsub.s	fa3, fa3, fa0, rne ! 965
	flw	fa4, a2, 4 ! 965
	fmul.s	fa3, fa3, fa4, rne ! 965
	flw	fa4, a1, 4 ! 967
	fmul.s	fa4, fa3, fa4, rne ! 967
	fadd.s	fa4, fa4, fa1, rne ! 967
	sw	sp, a3, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a2, 24 ! 0
	fsw	sp, fa2, 32 ! 0
	fsw	sp, fa3, 40 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, a0, 52 ! 0
	fmv.s	fa0, fa4
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fabs
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 16 ! 967
	flw	fa1, a1, 4 ! 305
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fless
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 967
	bne	a0, a1, be_else.17908
	li	a0, 0 ! 971
	j	be_cont.17909
be_else.17908:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 8 ! 968
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 968
	flw	fa2, sp, 32 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 968
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fabs
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 16 ! 968
	flw	fa1, a1, 8 ! 315
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fless
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 968
	bne	a0, a1, be_else.17910
	li	a0, 0 ! 970
	j	be_cont.17911
be_else.17910:
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 4 ! 969
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fiszero
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 969
	bne	a0, a1, be_else.17912
	li	a0, 1 ! 969
	j	be_cont.17913
be_else.17912:
	li	a0, 0 ! 969
be_cont.17913:
be_cont.17911:
be_cont.17909:
	li	a1, 0 ! 966
	bne	a0, a1, be_else.17914
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 8 ! 974
	flw	fa1, sp, 16 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 974
	flw	fa2, a0, 12 ! 974
	fmul.s	fa0, fa0, fa2, rne ! 974
	lw	a1, sp, 48 ! 0
	flw	fa2, a1, 0 ! 976
	fmul.s	fa2, fa0, fa2, rne ! 976
	flw	fa3, sp, 8 ! 0
	fadd.s	fa2, fa2, fa3, rne ! 976
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fabs
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 16 ! 976
	flw	fa1, a1, 0 ! 295
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 976
	bne	a0, a1, be_else.17915
	li	a0, 0 ! 980
	j	be_cont.17916
be_else.17915:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 8 ! 977
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 977
	flw	fa2, sp, 32 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 977
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fabs
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 16 ! 977
	flw	fa1, a1, 8 ! 315
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 977
	bne	a0, a1, be_else.17917
	li	a0, 0 ! 979
	j	be_cont.17918
be_else.17917:
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 12 ! 978
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fiszero
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 978
	bne	a0, a1, be_else.17919
	li	a0, 1 ! 978
	j	be_cont.17920
be_else.17919:
	li	a0, 0 ! 978
be_cont.17920:
be_cont.17918:
be_cont.17916:
	li	a1, 0 ! 975
	bne	a0, a1, be_else.17921
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 16 ! 983
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 983
	flw	fa1, a0, 20 ! 983
	fmul.s	fa0, fa0, fa1, rne ! 983
	lw	a1, sp, 48 ! 0
	flw	fa1, a1, 0 ! 985
	fmul.s	fa1, fa0, fa1, rne ! 985
	flw	fa2, sp, 8 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 985
	fsw	sp, fa0, 64 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fabs
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 16 ! 985
	flw	fa1, a1, 0 ! 295
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 985
	bne	a0, a1, be_else.17922
	li	a0, 0 ! 989
	j	be_cont.17923
be_else.17922:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 4 ! 986
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 986
	flw	fa2, sp, 16 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 986
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fabs
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 52 ! 0
	lw	a0, a0, 16 ! 986
	flw	fa1, a0, 4 ! 305
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 986
	bne	a0, a1, be_else.17924
	li	a0, 0 ! 988
	j	be_cont.17925
be_else.17924:
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 20 ! 987
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fiszero
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 987
	bne	a0, a1, be_else.17926
	li	a0, 1 ! 987
	j	be_cont.17927
be_else.17926:
	li	a0, 0 ! 987
be_cont.17927:
be_cont.17925:
be_cont.17923:
	li	a1, 0 ! 984
	bne	a0, a1, be_else.17928
	li	a0, 0 ! 993
	ret ! 993
be_else.17928:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 64 ! 0
	fsw	a0, fa0, 0 ! 991
	li	a0, 3 ! 991
	ret ! 991
be_else.17921:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 56 ! 0
	fsw	a0, fa0, 0 ! 982
	li	a0, 2 ! 982
	ret ! 982
be_else.17914:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 40 ! 0
	fsw	a0, fa0, 0 ! 973
	li	a0, 1 ! 973
	ret ! 973
solver_second_fast.2673:
	lw	a2, a21, 4 ! 0
	flw	fa3, a1, 0 ! 1008
	sw	sp, a2, 0 ! 0
	fsw	sp, fa3, 8 ! 0
	sw	sp, a0, 16 ! 0
	fsw	sp, fa2, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a1, 48 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fiszero
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1009
	bne	a0, a1, be_else.17931
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 4 ! 1012
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1012
	flw	fa2, a0, 8 ! 1012
	flw	fa3, sp, 32 ! 0
	fmul.s	fa2, fa2, fa3, rne ! 1012
	fadd.s	fa0, fa0, fa2, rne ! 1012
	flw	fa2, a0, 12 ! 1012
	flw	fa4, sp, 24 ! 0
	fmul.s	fa2, fa2, fa4, rne ! 1012
	fadd.s	fa0, fa0, fa2, rne ! 1012
	lw	a1, sp, 16 ! 0
	fsw	sp, fa0, 56 ! 0
	mv	a0, a1
	fmv.s	fa2, fa4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	quadratic.2637
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 16 ! 0
	lw	a1, a0, 4 ! 1014
	li	a2, 3 ! 1014
	bne	a1, a2, be_else.17933
	li	a1, l.12811 ! 1014
	flw	fa1, a1, 0 ! 1014
	fsub.s	fa0, fa0, fa1, rne ! 1014
	j	be_cont.17934
be_else.17933:
be_cont.17934:
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 64 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 1015
	fsub.s	fa0, fa0, fa1, rne ! 1015
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fispos
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1016
	bne	a0, a1, be_else.17935
	li	a0, 0 ! 1022
	ret ! 1022
be_else.17935:
	lw	a0, sp, 16 ! 0
	lw	a0, a0, 24 ! 1017
	li	a1, 0 ! 1017
	bne	a0, a1, be_else.17936
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sqrt
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1020
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1020
	fmul.s	fa0, fa0, fa1, rne ! 1020
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1020
	j	be_cont.17937
be_else.17936:
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sqrt
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1018
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1018
	fmul.s	fa0, fa0, fa1, rne ! 1018
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1018
be_cont.17937:
	li	a0, 1 ! 1021
	ret ! 1021
be_else.17931:
	li	a0, 0 ! 1010
	ret ! 1010
solver_second_fast2.2690:
	lw	a3, a21, 4 ! 0
	flw	fa3, a1, 0 ! 1056
	sw	sp, a3, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa3, 8 ! 0
	sw	sp, a2, 16 ! 0
	fsw	sp, fa2, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a1, 48 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fiszero
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1057
	bne	a0, a1, be_else.17939
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 4 ! 1060
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1060
	flw	fa1, a0, 8 ! 1060
	flw	fa2, sp, 32 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1060
	fadd.s	fa0, fa0, fa1, rne ! 1060
	flw	fa1, a0, 12 ! 1060
	flw	fa2, sp, 24 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1060
	fadd.s	fa0, fa0, fa1, rne ! 1060
	lw	a1, sp, 16 ! 0
	flw	fa1, a1, 12 ! 1061
	fsw	sp, fa0, 56 ! 0
	fsw	sp, fa1, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 1062
	fsub.s	fa0, fa0, fa1, rne ! 1062
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fispos
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1063
	bne	a0, a1, be_else.17941
	li	a0, 0 ! 1069
	ret ! 1069
be_else.17941:
	lw	a0, sp, 4 ! 0
	lw	a0, a0, 24 ! 1064
	li	a1, 0 ! 1064
	bne	a0, a1, be_else.17942
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sqrt
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1067
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1067
	fmul.s	fa0, fa0, fa1, rne ! 1067
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1067
	j	be_cont.17943
be_else.17942:
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sqrt
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1065
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1065
	fmul.s	fa0, fa0, fa1, rne ! 1065
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1065
be_cont.17943:
	li	a0, 1 ! 1068
	ret ! 1068
be_else.17939:
	li	a0, 0 ! 1058
	ret ! 1058
solver_fast2.2697:
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	slli	a6, a0, 2 ! 1074
	add	t0, a5, a6 ! 1074
	lw	a5, t0, 0 ! 1074
	lw	a6, a5, 40 ! 1075
	flw	fa0, a6, 0 ! 1076
	flw	fa1, a6, 4 ! 1077
	flw	fa2, a6, 8 ! 1078
	lw	a7, a1, 4 ! 1079
	slli	a0, a0, 2 ! 1080
	add	t0, a7, a0 ! 1080
	lw	a0, t0, 0 ! 1080
	lw	a7, a5, 4 ! 1081
	li	a8, 1 ! 1082
	bne	a7, a8, be_else.17944
	lw	a1, a1, 0 ! 1083
	mv	a2, a0
	mv	a21, a3
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.17944:
	li	a1, 2 ! 1084
	bne	a7, a1, be_else.17945
	flw	fa0, a0, 0 ! 1047
	sw	sp, a4, 0 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fisneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1047
	bne	a0, a1, be_else.17946
	li	a0, 0 ! 1050
	ret ! 1050
be_else.17946:
	lw	a0, sp, 8 ! 0
	flw	fa0, a0, 0 ! 1048
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 12 ! 1048
	fmul.s	fa0, fa0, fa1, rne ! 1048
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1048
	li	a0, 1 ! 1049
	ret ! 1049
be_else.17945:
	mv	a1, a0
	mv	a21, a2
	mv	a2, a6
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
setup_rect_table.2700:
	li	a2, 6 ! 1096
	li	a3, l.12849 ! 1096
	flw	fa0, a3, 0 ! 1096
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 0 ! 1098
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fiszero
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1098
	bne	a0, a1, be_else.17947
	lw	a0, sp, 0 ! 0
	lw	a1, a0, 24 ! 1102
	lw	a2, sp, 4 ! 0
	flw	fa0, a2, 0 ! 1102
	sw	sp, a1, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fisneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 16
	lw	a2, sp, 12 ! 0
	bne	a2, a1, be_else.17949
	j	be_cont.17950
be_else.17949:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.17951
	li	a0, 1 ! 16
	j	be_cont.17952
be_else.17951:
	li	a0, 0 ! 16
be_cont.17952:
be_cont.17950:
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 16 ! 1102
	flw	fa0, a2, 0 ! 295
	li	a2, 0 ! 124
	bne	a0, a2, be_else.17953
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	be_cont.17954
be_else.17953:
be_cont.17954:
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 0 ! 1102
	li	a1, l.12811 ! 1104
	flw	fa0, a1, 0 ! 1104
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 0 ! 1104
	fdiv.s	fa0, fa0, fa1, rne ! 1104
	fsw	a0, fa0, 4 ! 1104
	j	be_cont.17948
be_else.17947:
	li	a0, l.12849 ! 1099
	flw	fa0, a0, 0 ! 1099
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 1099
be_cont.17948:
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 4 ! 1106
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fiszero
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 1106
	bne	a0, a1, be_else.17955
	lw	a0, sp, 0 ! 0
	lw	a1, a0, 24 ! 1109
	lw	a2, sp, 4 ! 0
	flw	fa0, a2, 4 ! 1109
	sw	sp, a1, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fisneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 16
	lw	a2, sp, 16 ! 0
	bne	a2, a1, be_else.17957
	j	be_cont.17958
be_else.17957:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.17959
	li	a0, 1 ! 16
	j	be_cont.17960
be_else.17959:
	li	a0, 0 ! 16
be_cont.17960:
be_cont.17958:
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 16 ! 1109
	flw	fa0, a2, 4 ! 305
	li	a2, 0 ! 124
	bne	a0, a2, be_else.17961
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	be_cont.17962
be_else.17961:
be_cont.17962:
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 8 ! 1109
	li	a1, l.12811 ! 1110
	flw	fa0, a1, 0 ! 1110
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 4 ! 1110
	fdiv.s	fa0, fa0, fa1, rne ! 1110
	fsw	a0, fa0, 12 ! 1110
	j	be_cont.17956
be_else.17955:
	li	a0, l.12849 ! 1107
	flw	fa0, a0, 0 ! 1107
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 12 ! 1107
be_cont.17956:
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 8 ! 1112
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fiszero
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1112
	bne	a0, a1, be_else.17963
	lw	a0, sp, 0 ! 0
	lw	a1, a0, 24 ! 1115
	lw	a2, sp, 4 ! 0
	flw	fa0, a2, 8 ! 1115
	sw	sp, a1, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fisneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 16
	lw	a2, sp, 20 ! 0
	bne	a2, a1, be_else.17965
	j	be_cont.17966
be_else.17965:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.17967
	li	a0, 1 ! 16
	j	be_cont.17968
be_else.17967:
	li	a0, 0 ! 16
be_cont.17968:
be_cont.17966:
	lw	a1, sp, 0 ! 0
	lw	a1, a1, 16 ! 1115
	flw	fa0, a1, 8 ! 315
	li	a1, 0 ! 124
	bne	a0, a1, be_else.17969
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	j	be_cont.17970
be_else.17969:
be_cont.17970:
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 16 ! 1115
	li	a1, l.12811 ! 1116
	flw	fa0, a1, 0 ! 1116
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 8 ! 1116
	fdiv.s	fa0, fa0, fa1, rne ! 1116
	fsw	a0, fa0, 20 ! 1116
	j	be_cont.17964
be_else.17963:
	li	a0, l.12849 ! 1113
	flw	fa0, a0, 0 ! 1113
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 20 ! 1113
be_cont.17964:
	ret ! 1118
setup_surface_table.2703:
	li	a2, 4 ! 1123
	li	a3, l.12849 ! 1123
	flw	fa0, a3, 0 ! 1123
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 0 ! 1125
	lw	a2, sp, 0 ! 0
	lw	a3, a2, 16 ! 1125
	flw	fa1, a3, 0 ! 295
	fmul.s	fa0, fa0, fa1, rne ! 1125
	flw	fa1, a1, 4 ! 1125
	lw	a3, a2, 16 ! 1125
	flw	fa2, a3, 4 ! 305
	fmul.s	fa1, fa1, fa2, rne ! 1125
	fadd.s	fa0, fa0, fa1, rne ! 1125
	flw	fa1, a1, 8 ! 1125
	lw	a1, a2, 16 ! 1125
	flw	fa2, a1, 8 ! 315
	fmul.s	fa1, fa1, fa2, rne ! 1125
	fadd.s	fa0, fa0, fa1, rne ! 1125
	fsw	sp, fa0, 8 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fispos
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1127
	bne	a0, a1, be_else.17971
	li	a0, l.12849 ! 1135
	flw	fa0, a0, 0 ! 1135
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 1135
	j	be_cont.17972
be_else.17971:
	li	a0, l.12813 ! 1129
	flw	fa0, a0, 0 ! 1129
	flw	fa1, sp, 8 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1129
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 1129
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 16 ! 1131
	flw	fa0, a2, 0 ! 295
	fdiv.s	fa0, fa0, fa1, rne ! 1131
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 4 ! 1131
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 16 ! 1132
	flw	fa0, a2, 4 ! 305
	flw	fa1, sp, 8 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1132
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 1132
	lw	a1, sp, 0 ! 0
	lw	a1, a1, 16 ! 1133
	flw	fa0, a1, 8 ! 315
	flw	fa1, sp, 8 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1133
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 12 ! 1133
be_cont.17972:
	ret ! 1136
setup_second_table.2706:
	li	a2, 5 ! 1142
	li	a3, l.12849 ! 1142
	flw	fa0, a3, 0 ! 1142
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 0 ! 1144
	flw	fa1, a1, 4 ! 1144
	flw	fa2, a1, 8 ! 1144
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	quadratic.2637
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 1145
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 16 ! 1145
	flw	fa2, a2, 0 ! 295
	fmul.s	fa1, fa1, fa2, rne ! 1145
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 1146
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 16 ! 1146
	flw	fa2, a2, 4 ! 305
	fmul.s	fa1, fa1, fa2, rne ! 1146
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fneg
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 1147
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 16 ! 1147
	flw	fa2, a2, 8 ! 315
	fmul.s	fa1, fa1, fa2, rne ! 1147
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fneg
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 8 ! 0
	flw	fa1, sp, 16 ! 0
	fsw	a0, fa1, 0 ! 1149
	lw	a1, sp, 0 ! 0
	lw	a2, a1, 12 ! 1153
	li	a3, 0 ! 1153
	bne	a2, a3, be_else.17974
	flw	fa2, sp, 24 ! 0
	fsw	a0, fa2, 4 ! 1158
	flw	fa2, sp, 32 ! 0
	fsw	a0, fa2, 8 ! 1159
	fsw	a0, fa0, 12 ! 1160
	j	be_cont.17975
be_else.17974:
	lw	a2, sp, 4 ! 0
	flw	fa2, a2, 8 ! 1154
	lw	a3, a1, 36 ! 1154
	flw	fa3, a3, 4 ! 425
	fmul.s	fa2, fa2, fa3, rne ! 1154
	flw	fa3, a2, 4 ! 1154
	lw	a3, a1, 36 ! 1154
	flw	fa4, a3, 8 ! 435
	fmul.s	fa3, fa3, fa4, rne ! 1154
	fadd.s	fa2, fa2, fa3, rne ! 1154
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fhalf
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1154
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 1154
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 8 ! 1155
	lw	a2, sp, 0 ! 0
	lw	a3, a2, 36 ! 1155
	flw	fa1, a3, 0 ! 415
	fmul.s	fa0, fa0, fa1, rne ! 1155
	flw	fa1, a1, 0 ! 1155
	lw	a3, a2, 36 ! 1155
	flw	fa2, a3, 8 ! 435
	fmul.s	fa1, fa1, fa2, rne ! 1155
	fadd.s	fa0, fa0, fa1, rne ! 1155
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fhalf
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1155
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 8 ! 1155
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 4 ! 1156
	lw	a2, sp, 0 ! 0
	lw	a3, a2, 36 ! 1156
	flw	fa1, a3, 0 ! 415
	fmul.s	fa0, fa0, fa1, rne ! 1156
	flw	fa1, a1, 0 ! 1156
	lw	a1, a2, 36 ! 1156
	flw	fa2, a1, 4 ! 425
	fmul.s	fa1, fa1, fa2, rne ! 1156
	fadd.s	fa0, fa0, fa1, rne ! 1156
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fhalf
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1156
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 12 ! 1156
be_cont.17975:
	flw	fa0, sp, 16 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fiszero
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1162
	bne	a0, a1, be_else.17976
	li	a0, l.12811 ! 1163
	flw	fa0, a0, 0 ! 1163
	flw	fa1, sp, 16 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1163
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 16 ! 1163
	j	be_cont.17977
be_else.17976:
be_cont.17977:
	lw	a0, sp, 8 ! 0
	ret ! 1165
iter_setup_dirvec_constants.2709:
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 1171
	blt	a1, a3, bge_else.17978
	slli	a3, a1, 2 ! 1172
	add	t0, a2, a3 ! 1172
	lw	a3, t0, 0 ! 1172
	lw	a4, a0, 4 ! 1173
	lw	a5, a0, 0 ! 545
	lw	a6, a3, 4 ! 539
	li	a7, 1 ! 1176
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	bne	a6, a7, be_else.17979
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_rect_table.2700
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 12 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.17980
be_else.17979:
	li	a7, 2 ! 1178
	bne	a6, a7, be_else.17981
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_surface_table.2703
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 12 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.17982
be_else.17981:
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_second_table.2706
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 12 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.17982:
be_cont.17980:
	addi	a0, a1, -1 ! 1183
	li	a1, 0 ! 1171
	blt	a0, a1, bge_else.17983
	slli	a1, a0, 2 ! 1172
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1172
	lw	a1, t0, 0 ! 1172
	lw	a2, sp, 4 ! 0
	lw	a3, a2, 4 ! 1173
	lw	a4, a2, 0 ! 545
	lw	a5, a1, 4 ! 539
	li	a6, 1 ! 1176
	bne	a5, a6, be_else.17984
	sw	sp, a3, 20 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_rect_table.2700
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 20 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.17985
be_else.17984:
	li	a6, 2 ! 1178
	bne	a5, a6, be_else.17986
	sw	sp, a3, 20 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_surface_table.2703
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 20 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.17987
be_else.17986:
	sw	sp, a3, 20 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_second_table.2706
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 20 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.17987:
be_cont.17985:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 4 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17983:
	ret ! 1184
bge_else.17978:
	ret ! 1184
setup_startp_constants.2714:
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 1196
	blt	a1, a3, bge_else.17990
	slli	a3, a1, 2 ! 1197
	add	t0, a2, a3 ! 1197
	lw	a2, t0, 0 ! 1197
	lw	a3, a2, 40 ! 1198
	lw	a4, a2, 4 ! 452
	flw	fa0, a0, 0 ! 1200
	lw	a5, a2, 20 ! 1200
	flw	fa1, a5, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 1200
	fsw	a3, fa0, 0 ! 1200
	flw	fa0, a0, 4 ! 1201
	lw	a5, a2, 20 ! 1201
	flw	fa1, a5, 4 ! 345
	fsub.s	fa0, fa0, fa1, rne ! 1201
	fsw	a3, fa0, 4 ! 1201
	flw	fa0, a0, 8 ! 1202
	lw	a5, a2, 20 ! 1202
	flw	fa1, a5, 8 ! 355
	fsub.s	fa0, fa0, fa1, rne ! 1202
	fsw	a3, fa0, 8 ! 1202
	li	a5, 2 ! 1203
	sw	sp, a0, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a1, 8 ! 0
	bne	a4, a5, be_else.17991
	lw	a2, a2, 16 ! 1205
	flw	fa0, a3, 0 ! 1205
	flw	fa1, a3, 4 ! 1205
	flw	fa2, a3, 8 ! 1205
	flw	fa3, a2, 0 ! 198
	fmul.s	fa0, fa3, fa0, rne ! 198
	flw	fa3, a2, 4 ! 198
	fmul.s	fa1, fa3, fa1, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	flw	fa1, a2, 8 ! 198
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	fsw	a3, fa0, 12 ! 1204
	j	be_cont.17992
be_else.17991:
	li	a5, 2 ! 1206
	blt	a5, a4, bge_else.17993
	j	bge_cont.17994
bge_else.17993:
	flw	fa0, a3, 0 ! 1207
	flw	fa1, a3, 4 ! 1207
	flw	fa2, a3, 8 ! 1207
	sw	sp, a3, 12 ! 0
	sw	sp, a4, 16 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	quadratic.2637
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, 3 ! 1208
	lw	a1, sp, 16 ! 0
	bne	a1, a0, be_else.17995
	li	a0, l.12811 ! 1208
	flw	fa1, a0, 0 ! 1208
	fsub.s	fa0, fa0, fa1, rne ! 1208
	j	be_cont.17996
be_else.17995:
be_cont.17996:
	lw	a0, sp, 12 ! 0
	fsw	a0, fa0, 12 ! 1208
bge_cont.17994:
be_cont.17992:
	lw	a0, sp, 8 ! 0
	addi	a1, a0, -1 ! 1210
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17990:
	ret ! 1211
is_outside.2734:
	lw	a1, a0, 20 ! 1251
	flw	fa3, a1, 0 ! 335
	fsub.s	fa0, fa0, fa3, rne ! 1251
	lw	a1, a0, 20 ! 1252
	flw	fa3, a1, 4 ! 345
	fsub.s	fa1, fa1, fa3, rne ! 1252
	lw	a1, a0, 20 ! 1253
	flw	fa3, a1, 8 ! 355
	fsub.s	fa2, fa2, fa3, rne ! 1253
	lw	a1, a0, 4 ! 1254
	li	a2, 1 ! 1255
	bne	a1, a2, be_else.17998
	fsw	sp, fa2, 0 ! 0
	fsw	sp, fa1, 8 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fabs
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	lw	a1, a0, 16 ! 1228
	flw	fa1, a1, 0 ! 295
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fless
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1228
	bne	a0, a1, be_else.17999
	li	a0, 0 ! 1232
	j	be_cont.18000
be_else.17999:
	flw	fa0, sp, 8 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fabs
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	lw	a1, a0, 16 ! 1229
	flw	fa1, a1, 4 ! 305
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fless
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1229
	bne	a0, a1, be_else.18001
	li	a0, 0 ! 1231
	j	be_cont.18002
be_else.18001:
	flw	fa0, sp, 0 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fabs
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	lw	a1, a0, 16 ! 1230
	flw	fa1, a1, 8 ! 315
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fless
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.18002:
be_cont.18000:
	li	a1, 0 ! 1227
	bne	a0, a1, be_else.18003
	lw	a0, sp, 16 ! 0
	lw	a0, a0, 24 ! 1233
	li	a1, 0 ! 1233
	bne	a0, a1, be_else.18004
	li	a0, 1 ! 1233
	ret ! 1233
be_else.18004:
	li	a0, 0 ! 1233
	ret ! 1233
be_else.18003:
	lw	a0, sp, 16 ! 0
	lw	a0, a0, 24 ! 1233
	ret ! 276
be_else.17998:
	li	a2, 2 ! 1257
	bne	a1, a2, be_else.18005
	lw	a1, a0, 16 ! 1258
	flw	fa3, a1, 0 ! 198
	fmul.s	fa0, fa3, fa0, rne ! 198
	flw	fa3, a1, 4 ! 198
	fmul.s	fa1, fa3, fa1, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	flw	fa1, a1, 8 ! 198
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	lw	a0, a0, 24 ! 1239
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fisneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 16
	lw	a2, sp, 20 ! 0
	bne	a2, a1, be_else.18006
	j	be_cont.18007
be_else.18006:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.18008
	li	a0, 1 ! 16
	j	be_cont.18009
be_else.18008:
	li	a0, 0 ! 16
be_cont.18009:
be_cont.18007:
	li	a1, 0 ! 1239
	bne	a0, a1, be_else.18010
	li	a0, 1 ! 1239
	ret ! 1239
be_else.18010:
	li	a0, 0 ! 1239
	ret ! 1239
be_else.18005:
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	quadratic.2637
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 16 ! 0
	lw	a1, a0, 4 ! 1245
	li	a2, 3 ! 1245
	bne	a1, a2, be_else.18011
	li	a1, l.12811 ! 1245
	flw	fa1, a1, 0 ! 1245
	fsub.s	fa0, fa0, fa1, rne ! 1245
	j	be_cont.18012
be_else.18011:
be_cont.18012:
	lw	a0, a0, 24 ! 1246
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fisneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 16
	lw	a2, sp, 24 ! 0
	bne	a2, a1, be_else.18013
	j	be_cont.18014
be_else.18013:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.18015
	li	a0, 1 ! 16
	j	be_cont.18016
be_else.18015:
	li	a0, 0 ! 16
be_cont.18016:
be_cont.18014:
	li	a1, 0 ! 1246
	bne	a0, a1, be_else.18017
	li	a0, 1 ! 1246
	ret ! 1246
be_else.18017:
	li	a0, 0 ! 1246
	ret ! 1246
check_all_inside.2739:
	lw	a2, a21, 4 ! 0
	slli	a3, a0, 2 ! 1265
	add	t0, a1, a3 ! 1265
	lw	a3, t0, 0 ! 1265
	li	a4, -1 ! 1266
	bne	a3, a4, be_else.18018
	li	a0, 1 ! 1267
	ret ! 1267
be_else.18018:
	slli	a3, a3, 2 ! 1269
	add	t0, a2, a3 ! 1269
	lw	a3, t0, 0 ! 1269
	lw	a4, a3, 20 ! 1269
	flw	fa3, a4, 0 ! 335
	fsub.s	fa3, fa0, fa3, rne ! 1251
	lw	a4, a3, 20 ! 1252
	flw	fa4, a4, 4 ! 345
	fsub.s	fa4, fa1, fa4, rne ! 1252
	lw	a4, a3, 20 ! 1253
	flw	fa5, a4, 8 ! 355
	fsub.s	fa5, fa2, fa5, rne ! 1253
	lw	a4, a3, 4 ! 1254
	li	a5, 1 ! 1255
	sw	sp, a21, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a1, 36 ! 0
	sw	sp, a0, 40 ! 0
	bne	a4, a5, be_else.18020
	fsw	sp, fa5, 48 ! 0
	fsw	sp, fa4, 56 ! 0
	sw	sp, a3, 64 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fabs
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 16 ! 1228
	flw	fa1, a1, 0 ! 295
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fless
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1228
	bne	a0, a1, be_else.18023
	li	a0, 0 ! 1232
	j	be_cont.18024
be_else.18023:
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fabs
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 16 ! 1229
	flw	fa1, a1, 4 ! 305
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fless
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1229
	bne	a0, a1, be_else.18025
	li	a0, 0 ! 1231
	j	be_cont.18026
be_else.18025:
	flw	fa0, sp, 48 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fabs
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 16 ! 1230
	flw	fa1, a1, 8 ! 315
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fless
	addi	sp, sp, -72
	lw	ra, sp, 68
be_cont.18026:
be_cont.18024:
	li	a1, 0 ! 1227
	bne	a0, a1, be_else.18027
	lw	a0, sp, 64 ! 0
	lw	a0, a0, 24 ! 1233
	li	a1, 0 ! 1233
	bne	a0, a1, be_else.18029
	li	a0, 1 ! 1233
	j	be_cont.18030
be_else.18029:
	li	a0, 0 ! 1233
be_cont.18030:
	j	be_cont.18028
be_else.18027:
	lw	a0, sp, 64 ! 0
	lw	a0, a0, 24 ! 1233
be_cont.18028:
	j	be_cont.18021
be_else.18020:
	li	a5, 2 ! 1257
	bne	a4, a5, be_else.18031
	lw	a4, a3, 16 ! 1258
	flw	fa6, a4, 0 ! 198
	fmul.s	fa3, fa6, fa3, rne ! 198
	flw	fa6, a4, 4 ! 198
	fmul.s	fa4, fa6, fa4, rne ! 198
	fadd.s	fa3, fa3, fa4, rne ! 198
	flw	fa4, a4, 8 ! 198
	fmul.s	fa4, fa4, fa5, rne ! 198
	fadd.s	fa3, fa3, fa4, rne ! 198
	lw	a3, a3, 24 ! 1239
	sw	sp, a3, 68 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fisneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 16
	lw	a2, sp, 68 ! 0
	bne	a2, a1, be_else.18033
	j	be_cont.18034
be_else.18033:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.18035
	li	a0, 1 ! 16
	j	be_cont.18036
be_else.18035:
	li	a0, 0 ! 16
be_cont.18036:
be_cont.18034:
	li	a1, 0 ! 1239
	bne	a0, a1, be_else.18037
	li	a0, 1 ! 1239
	j	be_cont.18038
be_else.18037:
	li	a0, 0 ! 1239
be_cont.18038:
	j	be_cont.18032
be_else.18031:
	sw	sp, a3, 64 ! 0
	mv	a0, a3
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	quadratic.2637
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 4 ! 1245
	li	a2, 3 ! 1245
	bne	a1, a2, be_else.18039
	li	a1, l.12811 ! 1245
	flw	fa1, a1, 0 ! 1245
	fsub.s	fa0, fa0, fa1, rne ! 1245
	j	be_cont.18040
be_else.18039:
be_cont.18040:
	lw	a0, a0, 24 ! 1246
	sw	sp, a0, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fisneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 16
	lw	a2, sp, 72 ! 0
	bne	a2, a1, be_else.18041
	j	be_cont.18042
be_else.18041:
	li	a1, 0 ! 16
	bne	a0, a1, be_else.18043
	li	a0, 1 ! 16
	j	be_cont.18044
be_else.18043:
	li	a0, 0 ! 16
be_cont.18044:
be_cont.18042:
	li	a1, 0 ! 1246
	bne	a0, a1, be_else.18045
	li	a0, 1 ! 1246
	j	be_cont.18046
be_else.18045:
	li	a0, 0 ! 1246
be_cont.18046:
be_cont.18032:
be_cont.18021:
	li	a1, 0 ! 1269
	bne	a0, a1, be_else.18047
	lw	a0, sp, 40 ! 0
	addi	a0, a0, 1 ! 1272
	slli	a1, a0, 2 ! 1265
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 1265
	lw	a1, t0, 0 ! 1265
	li	a3, -1 ! 1266
	bne	a1, a3, be_else.18048
	li	a0, 1 ! 1267
	ret ! 1267
be_else.18048:
	slli	a1, a1, 2 ! 1269
	lw	a3, sp, 32 ! 0
	add	t0, a3, a1 ! 1269
	lw	a1, t0, 0 ! 1269
	flw	fa0, sp, 24 ! 0
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 8 ! 0
	sw	sp, a0, 76 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	is_outside.2734
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1269
	bne	a0, a1, be_else.18049
	lw	a0, sp, 76 ! 0
	addi	a0, a0, 1 ! 1272
	flw	fa0, sp, 24 ! 0
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 8 ! 0
	lw	a1, sp, 36 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18049:
	li	a0, 0 ! 1270
	ret ! 1270
be_else.18047:
	li	a0, 0 ! 1270
	ret ! 1270
shadow_check_and_group.2745:
	lw	a2, a21, 36 ! 0
	lw	a3, a21, 32 ! 0
	lw	a4, a21, 28 ! 0
	lw	a5, a21, 24 ! 0
	lw	a6, a21, 20 ! 0
	lw	a7, a21, 16 ! 0
	lw	a8, a21, 12 ! 0
	lw	a9, a21, 8 ! 0
	lw	a10, a21, 4 ! 0
	slli	a11, a0, 2 ! 1285
	add	t0, a1, a11 ! 1285
	lw	a11, t0, 0 ! 1285
	li	a12, -1 ! 1285
	bne	a11, a12, be_else.18050
	li	a0, 0 ! 1286
	ret ! 1286
be_else.18050:
	slli	a11, a0, 2 ! 1288
	add	t0, a1, a11 ! 1288
	lw	a11, t0, 0 ! 1288
	slli	a12, a11, 2 ! 1027
	add	t0, a6, a12 ! 1027
	lw	a12, t0, 0 ! 1027
	flw	fa0, a8, 0 ! 1028
	lw	a13, a12, 20 ! 1028
	flw	fa1, a13, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 1028
	flw	fa1, a8, 4 ! 1029
	lw	a13, a12, 20 ! 1029
	flw	fa2, a13, 4 ! 345
	fsub.s	fa1, fa1, fa2, rne ! 1029
	flw	fa2, a8, 8 ! 1030
	lw	a13, a12, 20 ! 1030
	flw	fa3, a13, 8 ! 355
	fsub.s	fa2, fa2, fa3, rne ! 1030
	slli	a13, a11, 2 ! 1032
	add	t0, a9, a13 ! 1032
	lw	a9, t0, 0 ! 1032
	lw	a13, a12, 4 ! 1033
	li	a14, 1 ! 1034
	sw	sp, a10, 0 ! 0
	sw	sp, a8, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a21, 16 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, a6, 24 ! 0
	sw	sp, a11, 28 ! 0
	sw	sp, a5, 32 ! 0
	bne	a13, a14, be_else.18051
	mv	a1, a2
	mv	a0, a12
	mv	a21, a4
	mv	a2, a9
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	j	be_cont.18052
be_else.18051:
	li	a2, 2 ! 1036
	bne	a13, a2, be_else.18053
	flw	fa3, a9, 0 ! 998
	fsw	sp, fa2, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, a9, 64 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fisneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 998
	bne	a0, a1, be_else.18056
	li	a0, 0 ! 1002
	j	be_cont.18057
be_else.18056:
	lw	a0, sp, 64 ! 0
	flw	fa0, a0, 4 ! 1000
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1000
	flw	fa1, a0, 8 ! 1000
	flw	fa2, sp, 48 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	flw	fa1, a0, 12 ! 1000
	flw	fa2, sp, 40 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	lw	a0, sp, 32 ! 0
	fsw	a0, fa0, 0 ! 999
	li	a0, 1 ! 1001
be_cont.18057:
	j	be_cont.18054
be_else.18053:
	mv	a1, a9
	mv	a0, a12
	mv	a21, a3
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
be_cont.18054:
be_cont.18052:
	lw	a1, sp, 32 ! 0
	flw	fa0, a1, 0 ! 1290
	li	a1, 0 ! 1291
	fsw	sp, fa0, 72 ! 0
	bne	a0, a1, be_else.18059
	li	a0, 0 ! 1291
	j	be_cont.18060
be_else.18059:
	li	a0, l.13223 ! 1291
	flw	fa1, a0, 0 ! 1291
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
be_cont.18060:
	li	a1, 0 ! 1291
	bne	a0, a1, be_else.18061
	lw	a0, sp, 28 ! 0
	slli	a0, a0, 2 ! 1307
	lw	a1, sp, 24 ! 0
	add	t0, a1, a0 ! 1307
	lw	a0, t0, 0 ! 1307
	lw	a0, a0, 24 ! 1307
	li	a1, 0 ! 1307
	bne	a0, a1, be_else.18062
	li	a0, 0 ! 1310
	ret ! 1310
be_else.18062:
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 1308
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18061:
	li	a0, l.13225 ! 1294
	flw	fa0, a0, 0 ! 1294
	flw	fa1, sp, 72 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1294
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 0 ! 1295
	fmul.s	fa1, fa1, fa0, rne ! 1295
	lw	a1, sp, 4 ! 0
	flw	fa2, a1, 0 ! 1295
	fadd.s	fa1, fa1, fa2, rne ! 1295
	flw	fa2, a0, 4 ! 1296
	fmul.s	fa2, fa2, fa0, rne ! 1296
	flw	fa3, a1, 4 ! 1296
	fadd.s	fa2, fa2, fa3, rne ! 1296
	flw	fa3, a0, 8 ! 1297
	fmul.s	fa0, fa3, fa0, rne ! 1297
	flw	fa3, a1, 8 ! 1297
	fadd.s	fa0, fa0, fa3, rne ! 1297
	lw	a1, sp, 12 ! 0
	lw	a0, a1, 0 ! 1265
	li	a2, -1 ! 1266
	bne	a0, a2, be_else.18063
	li	a0, 1 ! 1267
	j	be_cont.18064
be_else.18063:
	slli	a0, a0, 2 ! 1269
	lw	a2, sp, 24 ! 0
	add	t0, a2, a0 ! 1269
	lw	a0, t0, 0 ! 1269
	fsw	sp, fa0, 80 ! 0
	fsw	sp, fa2, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	is_outside.2734
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 0 ! 1269
	bne	a0, a1, be_else.18065
	li	a0, 1 ! 1272
	flw	fa0, sp, 96 ! 0
	flw	fa1, sp, 88 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	j	be_cont.18066
be_else.18065:
	li	a0, 0 ! 1270
be_cont.18066:
be_cont.18064:
	li	a1, 0 ! 1298
	bne	a0, a1, be_else.18067
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 1301
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18067:
	li	a0, 1 ! 1299
	ret ! 1299
shadow_check_one_or_group.2748:
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	slli	a4, a0, 2 ! 1315
	add	t0, a1, a4 ! 1315
	lw	a4, t0, 0 ! 1315
	li	a5, -1 ! 1316
	bne	a4, a5, be_else.18068
	li	a0, 0 ! 1317
	ret ! 1317
be_else.18068:
	slli	a4, a4, 2 ! 1319
	add	t0, a3, a4 ! 1319
	lw	a4, t0, 0 ! 1319
	li	a5, 0 ! 1320
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a1, a4
	mv	a0, a5
	mv	a21, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18069
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 1324
	slli	a1, a0, 2 ! 1315
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 1315
	lw	a1, t0, 0 ! 1315
	li	a3, -1 ! 1316
	bne	a1, a3, be_else.18070
	li	a0, 0 ! 1317
	ret ! 1317
be_else.18070:
	slli	a1, a1, 2 ! 1319
	lw	a3, sp, 8 ! 0
	add	t0, a3, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a4, 0 ! 1320
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a4
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18071
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 1324
	slli	a1, a0, 2 ! 1315
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 1315
	lw	a1, t0, 0 ! 1315
	li	a3, -1 ! 1316
	bne	a1, a3, be_else.18072
	li	a0, 0 ! 1317
	ret ! 1317
be_else.18072:
	slli	a1, a1, 2 ! 1319
	lw	a3, sp, 8 ! 0
	add	t0, a3, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a4, 0 ! 1320
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18073
	lw	a0, sp, 24 ! 0
	addi	a0, a0, 1 ! 1324
	slli	a1, a0, 2 ! 1315
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 1315
	lw	a1, t0, 0 ! 1315
	li	a3, -1 ! 1316
	bne	a1, a3, be_else.18074
	li	a0, 0 ! 1317
	ret ! 1317
be_else.18074:
	slli	a1, a1, 2 ! 1319
	lw	a3, sp, 8 ! 0
	add	t0, a3, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a3, 0 ! 1320
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 28 ! 0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18075
	lw	a0, sp, 28 ! 0
	addi	a0, a0, 1 ! 1324
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18075:
	li	a0, 1 ! 1322
	ret ! 1322
be_else.18073:
	li	a0, 1 ! 1322
	ret ! 1322
be_else.18071:
	li	a0, 1 ! 1322
	ret ! 1322
be_else.18069:
	li	a0, 1 ! 1322
	ret ! 1322
shadow_check_one_or_matrix.2751:
	lw	a2, a21, 40 ! 0
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	slli	a12, a0, 2 ! 1330
	add	t0, a1, a12 ! 1330
	lw	a12, t0, 0 ! 1330
	lw	a13, a12, 0 ! 1331
	li	a14, -1 ! 1332
	bne	a13, a14, be_else.18076
	li	a0, 0 ! 1333
	ret ! 1333
be_else.18076:
	li	a14, 99 ! 1336
	sw	sp, a6, 0 ! 0
	sw	sp, a7, 4 ! 0
	sw	sp, a11, 8 ! 0
	sw	sp, a12, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a21, 20 ! 0
	sw	sp, a0, 24 ! 0
	bne	a13, a14, be_else.18077
	li	a0, 1 ! 1337
	j	be_cont.18078
be_else.18077:
	slli	a14, a13, 2 ! 1027
	add	t0, a8, a14 ! 1027
	lw	a8, t0, 0 ! 1027
	flw	fa0, a9, 0 ! 1028
	lw	a14, a8, 20 ! 1028
	flw	fa1, a14, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 1028
	flw	fa1, a9, 4 ! 1029
	lw	a14, a8, 20 ! 1029
	flw	fa2, a14, 4 ! 345
	fsub.s	fa1, fa1, fa2, rne ! 1029
	flw	fa2, a9, 8 ! 1030
	lw	a9, a8, 20 ! 1030
	flw	fa3, a9, 8 ! 355
	fsub.s	fa2, fa2, fa3, rne ! 1030
	slli	a9, a13, 2 ! 1032
	add	t0, a10, a9 ! 1032
	lw	a9, t0, 0 ! 1032
	lw	a10, a8, 4 ! 1033
	li	a13, 1 ! 1034
	sw	sp, a5, 28 ! 0
	bne	a10, a13, be_else.18079
	mv	a1, a2
	mv	a0, a8
	mv	a21, a4
	mv	a2, a9
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	be_cont.18080
be_else.18079:
	li	a2, 2 ! 1036
	bne	a10, a2, be_else.18081
	flw	fa3, a9, 0 ! 998
	fsw	sp, fa2, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	fsw	sp, fa0, 48 ! 0
	sw	sp, a9, 56 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fisneg
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 998
	bne	a0, a1, be_else.18083
	li	a0, 0 ! 1002
	j	be_cont.18084
be_else.18083:
	lw	a0, sp, 56 ! 0
	flw	fa0, a0, 4 ! 1000
	flw	fa1, sp, 48 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1000
	flw	fa1, a0, 8 ! 1000
	flw	fa2, sp, 40 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	flw	fa1, a0, 12 ! 1000
	flw	fa2, sp, 32 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 0 ! 999
	li	a0, 1 ! 1001
be_cont.18084:
	j	be_cont.18082
be_else.18081:
	mv	a1, a9
	mv	a0, a8
	mv	a21, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
be_cont.18082:
be_cont.18080:
	li	a1, 0 ! 1342
	bne	a0, a1, be_else.18085
	li	a0, 0 ! 1348
	j	be_cont.18086
be_else.18085:
	lw	a0, sp, 28 ! 0
	flw	fa0, a0, 0 ! 1343
	li	a0, l.13260 ! 1343
	flw	fa1, a0, 0 ! 1343
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fless
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1343
	bne	a0, a1, be_else.18087
	li	a0, 0 ! 1347
	j	be_cont.18088
be_else.18087:
	lw	a0, sp, 12 ! 0
	lw	a1, a0, 4 ! 1315
	li	a2, -1 ! 1316
	bne	a1, a2, be_else.18089
	li	a0, 0 ! 1317
	j	be_cont.18090
be_else.18089:
	slli	a1, a1, 2 ! 1319
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a3, 0 ! 1320
	lw	a21, sp, 4 ! 0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18091
	lw	a0, sp, 12 ! 0
	lw	a1, a0, 8 ! 1315
	li	a2, -1 ! 1316
	bne	a1, a2, be_else.18093
	li	a0, 0 ! 1317
	j	be_cont.18094
be_else.18093:
	slli	a1, a1, 2 ! 1319
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a3, 0 ! 1320
	lw	a21, sp, 4 ! 0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18095
	lw	a0, sp, 12 ! 0
	lw	a1, a0, 12 ! 1315
	li	a2, -1 ! 1316
	bne	a1, a2, be_else.18097
	li	a0, 0 ! 1317
	j	be_cont.18098
be_else.18097:
	slli	a1, a1, 2 ! 1319
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a3, 0 ! 1320
	lw	a21, sp, 4 ! 0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18099
	li	a0, 4 ! 1324
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	be_cont.18100
be_else.18099:
	li	a0, 1 ! 1322
be_cont.18100:
be_cont.18098:
	j	be_cont.18096
be_else.18095:
	li	a0, 1 ! 1322
be_cont.18096:
be_cont.18094:
	j	be_cont.18092
be_else.18091:
	li	a0, 1 ! 1322
be_cont.18092:
be_cont.18090:
	li	a1, 0 ! 1344
	bne	a0, a1, be_else.18101
	li	a0, 0 ! 1346
	j	be_cont.18102
be_else.18101:
	li	a0, 1 ! 1345
be_cont.18102:
be_cont.18088:
be_cont.18086:
be_cont.18078:
	li	a1, 0 ! 1335
	bne	a0, a1, be_else.18103
	lw	a0, sp, 24 ! 0
	addi	a0, a0, 1 ! 1355
	lw	a1, sp, 16 ! 0
	lw	a21, sp, 20 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18103:
	lw	a0, sp, 12 ! 0
	lw	a1, a0, 4 ! 1315
	li	a2, -1 ! 1316
	bne	a1, a2, be_else.18104
	li	a0, 0 ! 1317
	j	be_cont.18105
be_else.18104:
	slli	a1, a1, 2 ! 1319
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a3, 0 ! 1320
	lw	a21, sp, 4 ! 0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18106
	lw	a0, sp, 12 ! 0
	lw	a1, a0, 8 ! 1315
	li	a2, -1 ! 1316
	bne	a1, a2, be_else.18108
	li	a0, 0 ! 1317
	j	be_cont.18109
be_else.18108:
	slli	a1, a1, 2 ! 1319
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a3, 0 ! 1320
	lw	a21, sp, 4 ! 0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18110
	lw	a0, sp, 12 ! 0
	lw	a1, a0, 12 ! 1315
	li	a2, -1 ! 1316
	bne	a1, a2, be_else.18112
	li	a0, 0 ! 1317
	j	be_cont.18113
be_else.18112:
	slli	a1, a1, 2 ! 1319
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 1319
	lw	a1, t0, 0 ! 1319
	li	a2, 0 ! 1320
	lw	a21, sp, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.18114
	li	a0, 4 ! 1324
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	be_cont.18115
be_else.18114:
	li	a0, 1 ! 1322
be_cont.18115:
be_cont.18113:
	j	be_cont.18111
be_else.18110:
	li	a0, 1 ! 1322
be_cont.18111:
be_cont.18109:
	j	be_cont.18107
be_else.18106:
	li	a0, 1 ! 1322
be_cont.18107:
be_cont.18105:
	li	a1, 0 ! 1350
	bne	a0, a1, be_else.18116
	lw	a0, sp, 24 ! 0
	addi	a0, a0, 1 ! 1353
	lw	a1, sp, 16 ! 0
	lw	a21, sp, 20 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18116:
	li	a0, 1 ! 1351
	ret ! 1351
solve_each_element.2754:
	lw	a3, a21, 44 ! 0
	lw	a4, a21, 40 ! 0
	lw	a5, a21, 36 ! 0
	lw	a6, a21, 32 ! 0
	lw	a7, a21, 28 ! 0
	lw	a8, a21, 24 ! 0
	lw	a9, a21, 20 ! 0
	lw	a10, a21, 16 ! 0
	lw	a11, a21, 12 ! 0
	lw	a12, a21, 8 ! 0
	lw	a13, a21, 4 ! 0
	slli	a14, a0, 2 ! 1366
	add	t0, a1, a14 ! 1366
	lw	a14, t0, 0 ! 1366
	li	a15, -1 ! 1367
	bne	a14, a15, be_else.18117
	ret ! 1367
be_else.18117:
	slli	a15, a14, 2 ! 933
	add	t0, a9, a15 ! 933
	lw	a15, t0, 0 ! 933
	flw	fa0, a4, 0 ! 935
	lw	a16, a15, 20 ! 935
	flw	fa1, a16, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 935
	flw	fa1, a4, 4 ! 936
	lw	a16, a15, 20 ! 936
	flw	fa2, a16, 4 ! 345
	fsub.s	fa1, fa1, fa2, rne ! 936
	flw	fa2, a4, 8 ! 937
	lw	a16, a15, 20 ! 937
	flw	fa3, a16, 8 ! 355
	fsub.s	fa2, fa2, fa3, rne ! 937
	lw	a16, a15, 4 ! 938
	li	a17, 1 ! 940
	sw	sp, a10, 0 ! 0
	sw	sp, a12, 4 ! 0
	sw	sp, a11, 8 ! 0
	sw	sp, a13, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a2, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a21, 36 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a9, 44 ! 0
	sw	sp, a14, 48 ! 0
	bne	a16, a17, be_else.18119
	li	a5, 0 ! 843
	li	a6, 1 ! 843
	li	a16, 2 ! 843
	fsw	sp, fa0, 56 ! 0
	fsw	sp, fa2, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	sw	sp, a15, 80 ! 0
	sw	sp, a7, 84 ! 0
	mv	a4, a16
	mv	a3, a6
	mv	a1, a2
	mv	a0, a15
	mv	a21, a7
	mv	a2, a5
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 843
	bne	a0, a1, be_else.18122
	li	a2, 1 ! 844
	li	a3, 2 ! 844
	li	a4, 0 ! 844
	flw	fa0, sp, 72 ! 0
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 56 ! 0
	lw	a0, sp, 80 ! 0
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 84 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 844
	bne	a0, a1, be_else.18124
	li	a2, 2 ! 845
	li	a3, 0 ! 845
	li	a4, 1 ! 845
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 80 ! 0
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 84 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 845
	bne	a0, a1, be_else.18126
	li	a0, 0 ! 846
	j	be_cont.18127
be_else.18126:
	li	a0, 3 ! 845
be_cont.18127:
	j	be_cont.18125
be_else.18124:
	li	a0, 2 ! 844
be_cont.18125:
	j	be_cont.18123
be_else.18122:
	li	a0, 1 ! 843
be_cont.18123:
	j	be_cont.18120
be_else.18119:
	li	a7, 2 ! 941
	bne	a16, a7, be_else.18128
	mv	a1, a2
	mv	a0, a15
	mv	a21, a5
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	j	be_cont.18129
be_else.18128:
	mv	a1, a2
	mv	a0, a15
	mv	a21, a6
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
be_cont.18129:
be_cont.18120:
	li	a1, 0 ! 1370
	bne	a0, a1, be_else.18130
	lw	a0, sp, 48 ! 0
	slli	a0, a0, 2 ! 1398
	lw	a1, sp, 44 ! 0
	add	t0, a1, a0 ! 1398
	lw	a0, t0, 0 ! 1398
	lw	a0, a0, 24 ! 1398
	li	a1, 0 ! 1398
	bne	a0, a1, be_else.18131
	ret ! 1400
be_else.18131:
	lw	a0, sp, 40 ! 0
	addi	a0, a0, 1 ! 1399
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 36 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18130:
	lw	a1, sp, 24 ! 0
	flw	fa1, a1, 0 ! 1374
	li	a1, l.12849 ! 1376
	flw	fa0, a1, 0 ! 1376
	sw	sp, a0, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fless
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 0 ! 1376
	bne	a0, a1, be_else.18134
	j	be_cont.18135
be_else.18134:
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 1377
	flw	fa0, sp, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fless
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 0 ! 1377
	bne	a0, a1, be_else.18136
	j	be_cont.18137
be_else.18136:
	li	a0, l.13225 ! 1379
	flw	fa0, a0, 0 ! 1379
	flw	fa1, sp, 96 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1379
	lw	a2, sp, 28 ! 0
	flw	fa1, a2, 0 ! 1380
	fmul.s	fa1, fa1, fa0, rne ! 1380
	lw	a0, sp, 16 ! 0
	flw	fa2, a0, 0 ! 1380
	fadd.s	fa1, fa1, fa2, rne ! 1380
	flw	fa2, a2, 4 ! 1381
	fmul.s	fa2, fa2, fa0, rne ! 1381
	flw	fa3, a0, 4 ! 1381
	fadd.s	fa2, fa2, fa3, rne ! 1381
	flw	fa3, a2, 8 ! 1382
	fmul.s	fa3, fa3, fa0, rne ! 1382
	flw	fa4, a0, 8 ! 1382
	fadd.s	fa3, fa3, fa4, rne ! 1382
	lw	a1, sp, 32 ! 0
	lw	a0, a1, 0 ! 1265
	li	a3, -1 ! 1266
	fsw	sp, fa3, 104 ! 0
	fsw	sp, fa2, 112 ! 0
	fsw	sp, fa1, 120 ! 0
	fsw	sp, fa0, 128 ! 0
	bne	a0, a3, be_else.18138
	li	a0, 1 ! 1267
	j	be_cont.18139
be_else.18138:
	slli	a0, a0, 2 ! 1269
	lw	a3, sp, 44 ! 0
	add	t0, a3, a0 ! 1269
	lw	a0, t0, 0 ! 1269
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	is_outside.2734
	addi	sp, sp, -140
	lw	ra, sp, 136
	li	a1, 0 ! 1269
	bne	a0, a1, be_else.18140
	li	a0, 1 ! 1272
	flw	fa0, sp, 120 ! 0
	flw	fa1, sp, 112 ! 0
	flw	fa2, sp, 104 ! 0
	lw	a1, sp, 32 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	j	be_cont.18141
be_else.18140:
	li	a0, 0 ! 1270
be_cont.18141:
be_cont.18139:
	li	a1, 0 ! 1383
	bne	a0, a1, be_else.18142
	j	be_cont.18143
be_else.18142:
	lw	a0, sp, 20 ! 0
	flw	fa0, sp, 128 ! 0
	fsw	a0, fa0, 0 ! 1385
	lw	a0, sp, 8 ! 0
	flw	fa0, sp, 120 ! 0
	fsw	a0, fa0, 0 ! 145
	flw	fa0, sp, 112 ! 0
	fsw	a0, fa0, 4 ! 146
	flw	fa0, sp, 104 ! 0
	fsw	a0, fa0, 8 ! 147
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 48 ! 0
	sw	a0, a1, 0 ! 1387
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 88 ! 0
	sw	a0, a1, 0 ! 1388
be_cont.18143:
be_cont.18137:
be_cont.18135:
	lw	a0, sp, 40 ! 0
	addi	a0, a0, 1 ! 1394
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 36 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network.2758:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a0, 2 ! 1407
	add	t0, a1, a5 ! 1407
	lw	a5, t0, 0 ! 1407
	li	a6, -1 ! 1408
	bne	a5, a6, be_else.18144
	ret ! 1412
be_else.18144:
	slli	a5, a5, 2 ! 1409
	add	t0, a4, a5 ! 1409
	lw	a5, t0, 0 ! 1409
	li	a6, 0 ! 1410
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a0, 20 ! 0
	mv	a1, a5
	mv	a0, a6
	mv	a21, a3
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 1411
	slli	a1, a0, 2 ! 1407
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 1407
	lw	a1, t0, 0 ! 1407
	li	a3, -1 ! 1408
	bne	a1, a3, be_else.18146
	ret ! 1412
be_else.18146:
	slli	a1, a1, 2 ! 1409
	lw	a3, sp, 12 ! 0
	add	t0, a3, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a4, 0 ! 1410
	lw	a5, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 24 ! 0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	addi	a0, a0, 1 ! 1411
	slli	a1, a0, 2 ! 1407
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 1407
	lw	a1, t0, 0 ! 1407
	li	a3, -1 ! 1408
	bne	a1, a3, be_else.18148
	ret ! 1412
be_else.18148:
	slli	a1, a1, 2 ! 1409
	lw	a3, sp, 12 ! 0
	add	t0, a3, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a4, 0 ! 1410
	lw	a5, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 28 ! 0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	addi	a0, a0, 1 ! 1411
	slli	a1, a0, 2 ! 1407
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 1407
	lw	a1, t0, 0 ! 1407
	li	a3, -1 ! 1408
	bne	a1, a3, be_else.18150
	ret ! 1412
be_else.18150:
	slli	a1, a1, 2 ! 1409
	lw	a3, sp, 12 ! 0
	add	t0, a3, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a3, 0 ! 1410
	lw	a4, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 32 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0
	addi	a0, a0, 1 ! 1411
	lw	a1, sp, 16 ! 0
	lw	a2, sp, 4 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix.2762:
	lw	a3, a21, 44 ! 0
	lw	a4, a21, 40 ! 0
	lw	a5, a21, 36 ! 0
	lw	a6, a21, 32 ! 0
	lw	a7, a21, 28 ! 0
	lw	a8, a21, 24 ! 0
	lw	a9, a21, 20 ! 0
	lw	a10, a21, 16 ! 0
	lw	a11, a21, 12 ! 0
	lw	a12, a21, 8 ! 0
	lw	a13, a21, 4 ! 0
	slli	a14, a0, 2 ! 1417
	add	t0, a1, a14 ! 1417
	lw	a14, t0, 0 ! 1417
	lw	a15, a14, 0 ! 1418
	li	a16, -1 ! 1419
	bne	a15, a16, be_else.18152
	ret ! 1420
be_else.18152:
	li	a16, 99 ! 1422
	sw	sp, a21, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a8, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a9, 16 ! 0
	sw	sp, a10, 20 ! 0
	sw	sp, a2, 24 ! 0
	sw	sp, a11, 28 ! 0
	sw	sp, a13, 32 ! 0
	sw	sp, a1, 36 ! 0
	sw	sp, a0, 40 ! 0
	bne	a15, a16, be_else.18154
	lw	a5, a14, 4 ! 1407
	li	a6, -1 ! 1408
	bne	a5, a6, be_else.18156
	j	be_cont.18157
be_else.18156:
	slli	a5, a5, 2 ! 1409
	add	t0, a13, a5 ! 1409
	lw	a5, t0, 0 ! 1409
	li	a6, 0 ! 1410
	sw	sp, a14, 44 ! 0
	mv	a1, a5
	mv	a0, a6
	mv	a21, a11
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0
	lw	a1, a0, 8 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18158
	j	be_cont.18159
be_else.18158:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a3, 0 ! 1410
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0
	lw	a1, a0, 12 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18160
	j	be_cont.18161
be_else.18160:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a3, 0 ! 1410
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 4 ! 1411
	lw	a1, sp, 44 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.18161:
be_cont.18159:
be_cont.18157:
	j	be_cont.18155
be_else.18154:
	slli	a15, a15, 2 ! 933
	add	t0, a12, a15 ! 933
	lw	a12, t0, 0 ! 933
	flw	fa0, a4, 0 ! 935
	lw	a15, a12, 20 ! 935
	flw	fa1, a15, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 935
	flw	fa1, a4, 4 ! 936
	lw	a15, a12, 20 ! 936
	flw	fa2, a15, 4 ! 345
	fsub.s	fa1, fa1, fa2, rne ! 936
	flw	fa2, a4, 8 ! 937
	lw	a15, a12, 20 ! 937
	flw	fa3, a15, 8 ! 355
	fsub.s	fa2, fa2, fa3, rne ! 937
	lw	a15, a12, 4 ! 938
	li	a16, 1 ! 940
	sw	sp, a14, 44 ! 0
	bne	a15, a16, be_else.18162
	li	a5, 0 ! 843
	li	a6, 1 ! 843
	li	a15, 2 ! 843
	fsw	sp, fa0, 48 ! 0
	fsw	sp, fa2, 56 ! 0
	fsw	sp, fa1, 64 ! 0
	sw	sp, a12, 72 ! 0
	sw	sp, a7, 76 ! 0
	mv	a4, a15
	mv	a3, a6
	mv	a1, a2
	mv	a0, a12
	mv	a21, a7
	mv	a2, a5
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 843
	bne	a0, a1, be_else.18164
	li	a2, 1 ! 844
	li	a3, 2 ! 844
	li	a4, 0 ! 844
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 48 ! 0
	lw	a0, sp, 72 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 844
	bne	a0, a1, be_else.18166
	li	a2, 2 ! 845
	li	a3, 0 ! 845
	li	a4, 1 ! 845
	flw	fa0, sp, 56 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a0, sp, 72 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 845
	bne	a0, a1, be_else.18168
	li	a0, 0 ! 846
	j	be_cont.18169
be_else.18168:
	li	a0, 3 ! 845
be_cont.18169:
	j	be_cont.18167
be_else.18166:
	li	a0, 2 ! 844
be_cont.18167:
	j	be_cont.18165
be_else.18164:
	li	a0, 1 ! 843
be_cont.18165:
	j	be_cont.18163
be_else.18162:
	li	a7, 2 ! 941
	bne	a15, a7, be_else.18170
	mv	a1, a2
	mv	a0, a12
	mv	a21, a5
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	j	be_cont.18171
be_else.18170:
	mv	a1, a2
	mv	a0, a12
	mv	a21, a6
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
be_cont.18171:
be_cont.18163:
	li	a1, 0 ! 1428
	bne	a0, a1, be_else.18172
	j	be_cont.18173
be_else.18172:
	lw	a0, sp, 8 ! 0
	flw	fa0, a0, 0 ! 1429
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 0 ! 1430
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1430
	bne	a0, a1, be_else.18174
	j	be_cont.18175
be_else.18174:
	lw	a0, sp, 44 ! 0
	lw	a1, a0, 4 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18176
	j	be_cont.18177
be_else.18176:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a3, 0 ! 1410
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 44 ! 0
	lw	a1, a0, 8 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18178
	j	be_cont.18179
be_else.18178:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a3, 0 ! 1410
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 44 ! 0
	lw	a1, a0, 12 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18180
	j	be_cont.18181
be_else.18180:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a3, 0 ! 1410
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a0, 4 ! 1411
	lw	a1, sp, 44 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
be_cont.18181:
be_cont.18179:
be_cont.18177:
be_cont.18175:
be_cont.18173:
be_cont.18155:
	lw	a0, sp, 40 ! 0
	addi	a0, a0, 1 ! 1435
	slli	a1, a0, 2 ! 1417
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 1417
	lw	a1, t0, 0 ! 1417
	lw	a3, a1, 0 ! 1418
	li	a4, -1 ! 1419
	bne	a3, a4, be_else.18182
	ret ! 1420
be_else.18182:
	li	a4, 99 ! 1422
	sw	sp, a0, 80 ! 0
	bne	a3, a4, be_else.18184
	lw	a3, a1, 4 ! 1407
	li	a4, -1 ! 1408
	bne	a3, a4, be_else.18186
	j	be_cont.18187
be_else.18186:
	slli	a3, a3, 2 ! 1409
	lw	a4, sp, 32 ! 0
	add	t0, a4, a3 ! 1409
	lw	a3, t0, 0 ! 1409
	li	a5, 0 ! 1410
	lw	a6, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	sw	sp, a1, 84 ! 0
	mv	a2, a6
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 84 ! 0
	lw	a1, a0, 8 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18188
	j	be_cont.18189
be_else.18188:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a2, 0 ! 1410
	lw	a3, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a0, 3 ! 1411
	lw	a1, sp, 84 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
be_cont.18189:
be_cont.18187:
	j	be_cont.18185
be_else.18184:
	lw	a4, sp, 24 ! 0
	lw	a5, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, a1, 84 ! 0
	mv	a2, a5
	mv	a1, a4
	mv	a0, a3
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1428
	bne	a0, a1, be_else.18190
	j	be_cont.18191
be_else.18190:
	lw	a0, sp, 8 ! 0
	flw	fa0, a0, 0 ! 1429
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 1430
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fless
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1430
	bne	a0, a1, be_else.18192
	j	be_cont.18193
be_else.18192:
	lw	a0, sp, 84 ! 0
	lw	a1, a0, 4 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18194
	j	be_cont.18195
be_else.18194:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a3, 0 ! 1410
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 84 ! 0
	lw	a1, a0, 8 ! 1407
	li	a2, -1 ! 1408
	bne	a1, a2, be_else.18196
	j	be_cont.18197
be_else.18196:
	slli	a1, a1, 2 ! 1409
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1409
	lw	a1, t0, 0 ! 1409
	li	a2, 0 ! 1410
	lw	a3, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a0, 3 ! 1411
	lw	a1, sp, 84 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
be_cont.18197:
be_cont.18195:
be_cont.18193:
be_cont.18191:
be_cont.18185:
	lw	a0, sp, 80 ! 0
	addi	a0, a0, 1 ! 1435
	lw	a1, sp, 36 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_each_element_fast.2768:
	lw	a3, a21, 40 ! 0
	lw	a4, a21, 36 ! 0
	lw	a5, a21, 32 ! 0
	lw	a6, a21, 28 ! 0
	lw	a7, a21, 24 ! 0
	lw	a8, a21, 20 ! 0
	lw	a9, a21, 16 ! 0
	lw	a10, a21, 12 ! 0
	lw	a11, a21, 8 ! 0
	lw	a12, a21, 4 ! 0
	lw	a13, a2, 0 ! 1459
	slli	a14, a0, 2 ! 1460
	add	t0, a1, a14 ! 1460
	lw	a14, t0, 0 ! 1460
	li	a15, -1 ! 1461
	bne	a14, a15, be_else.18198
	ret ! 1461
be_else.18198:
	slli	a15, a14, 2 ! 1074
	add	t0, a8, a15 ! 1074
	lw	a15, t0, 0 ! 1074
	lw	a16, a15, 40 ! 1075
	flw	fa0, a16, 0 ! 1076
	flw	fa1, a16, 4 ! 1077
	flw	fa2, a16, 8 ! 1078
	lw	a17, a2, 4 ! 1079
	slli	a18, a14, 2 ! 1080
	add	t0, a17, a18 ! 1080
	lw	a17, t0, 0 ! 1080
	lw	a18, a15, 4 ! 1081
	li	a19, 1 ! 1082
	sw	sp, a9, 0 ! 0
	sw	sp, a11, 4 ! 0
	sw	sp, a10, 8 ! 0
	sw	sp, a12, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a13, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a7, 28 ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a1, 36 ! 0
	sw	sp, a21, 40 ! 0
	sw	sp, a0, 44 ! 0
	sw	sp, a8, 48 ! 0
	sw	sp, a14, 52 ! 0
	bne	a18, a19, be_else.18200
	lw	a5, a2, 0 ! 1083
	mv	a2, a17
	mv	a1, a5
	mv	a0, a15
	mv	a21, a6
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	j	be_cont.18201
be_else.18200:
	li	a6, 2 ! 1084
	bne	a18, a6, be_else.18202
	flw	fa0, a17, 0 ! 1047
	sw	sp, a16, 56 ! 0
	sw	sp, a17, 60 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fisneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1047
	bne	a0, a1, be_else.18204
	li	a0, 0 ! 1050
	j	be_cont.18205
be_else.18204:
	lw	a0, sp, 60 ! 0
	flw	fa0, a0, 0 ! 1048
	lw	a0, sp, 56 ! 0
	flw	fa1, a0, 12 ! 1048
	fmul.s	fa0, fa0, fa1, rne ! 1048
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 0 ! 1048
	li	a0, 1 ! 1049
be_cont.18205:
	j	be_cont.18203
be_else.18202:
	mv	a2, a16
	mv	a1, a17
	mv	a0, a15
	mv	a21, a5
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
be_cont.18203:
be_cont.18201:
	li	a1, 0 ! 1464
	bne	a0, a1, be_else.18206
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 1492
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 1492
	lw	a0, t0, 0 ! 1492
	lw	a0, a0, 24 ! 1492
	li	a1, 0 ! 1492
	bne	a0, a1, be_else.18207
	ret ! 1494
be_else.18207:
	lw	a0, sp, 44 ! 0
	addi	a0, a0, 1 ! 1493
	lw	a1, sp, 36 ! 0
	lw	a2, sp, 32 ! 0
	lw	a21, sp, 40 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18206:
	lw	a1, sp, 28 ! 0
	flw	fa1, a1, 0 ! 1468
	li	a1, l.12849 ! 1470
	flw	fa0, a1, 0 ! 1470
	sw	sp, a0, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1470
	bne	a0, a1, be_else.18210
	j	be_cont.18211
be_else.18210:
	lw	a0, sp, 24 ! 0
	flw	fa1, a0, 0 ! 1471
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1471
	bne	a0, a1, be_else.18212
	j	be_cont.18213
be_else.18212:
	li	a0, l.13225 ! 1473
	flw	fa0, a0, 0 ! 1473
	flw	fa1, sp, 72 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1473
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 1474
	fmul.s	fa1, fa1, fa0, rne ! 1474
	lw	a1, sp, 16 ! 0
	flw	fa2, a1, 0 ! 1474
	fadd.s	fa1, fa1, fa2, rne ! 1474
	flw	fa2, a0, 4 ! 1475
	fmul.s	fa2, fa2, fa0, rne ! 1475
	flw	fa3, a1, 4 ! 1475
	fadd.s	fa2, fa2, fa3, rne ! 1475
	flw	fa3, a0, 8 ! 1476
	fmul.s	fa3, fa3, fa0, rne ! 1476
	flw	fa4, a1, 8 ! 1476
	fadd.s	fa3, fa3, fa4, rne ! 1476
	lw	a1, sp, 36 ! 0
	lw	a0, a1, 0 ! 1265
	li	a2, -1 ! 1266
	fsw	sp, fa3, 80 ! 0
	fsw	sp, fa2, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	fsw	sp, fa0, 104 ! 0
	bne	a0, a2, be_else.18214
	li	a0, 1 ! 1267
	j	be_cont.18215
be_else.18214:
	slli	a0, a0, 2 ! 1269
	lw	a2, sp, 48 ! 0
	add	t0, a2, a0 ! 1269
	lw	a0, t0, 0 ! 1269
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	is_outside.2734
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a1, 0 ! 1269
	bne	a0, a1, be_else.18216
	li	a0, 1 ! 1272
	flw	fa0, sp, 96 ! 0
	flw	fa1, sp, 88 ! 0
	flw	fa2, sp, 80 ! 0
	lw	a1, sp, 36 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	j	be_cont.18217
be_else.18216:
	li	a0, 0 ! 1270
be_cont.18217:
be_cont.18215:
	li	a1, 0 ! 1477
	bne	a0, a1, be_else.18218
	j	be_cont.18219
be_else.18218:
	lw	a0, sp, 24 ! 0
	flw	fa0, sp, 104 ! 0
	fsw	a0, fa0, 0 ! 1479
	lw	a0, sp, 8 ! 0
	flw	fa0, sp, 96 ! 0
	fsw	a0, fa0, 0 ! 145
	flw	fa0, sp, 88 ! 0
	fsw	a0, fa0, 4 ! 146
	flw	fa0, sp, 80 ! 0
	fsw	a0, fa0, 8 ! 147
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 52 ! 0
	sw	a0, a1, 0 ! 1481
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 64 ! 0
	sw	a0, a1, 0 ! 1482
be_cont.18219:
be_cont.18213:
be_cont.18211:
	lw	a0, sp, 44 ! 0
	addi	a0, a0, 1 ! 1488
	lw	a1, sp, 36 ! 0
	lw	a2, sp, 32 ! 0
	lw	a21, sp, 40 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network_fast.2772:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a0, 2 ! 1500
	add	t0, a1, a5 ! 1500
	lw	a5, t0, 0 ! 1500
	li	a6, -1 ! 1501
	bne	a5, a6, be_else.18220
	ret ! 1505
be_else.18220:
	slli	a5, a5, 2 ! 1502
	add	t0, a4, a5 ! 1502
	lw	a5, t0, 0 ! 1502
	li	a6, 0 ! 1503
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a0, 20 ! 0
	mv	a1, a5
	mv	a0, a6
	mv	a21, a3
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 1504
	slli	a1, a0, 2 ! 1500
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 1500
	lw	a1, t0, 0 ! 1500
	li	a3, -1 ! 1501
	bne	a1, a3, be_else.18222
	ret ! 1505
be_else.18222:
	slli	a1, a1, 2 ! 1502
	lw	a3, sp, 12 ! 0
	add	t0, a3, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a4, 0 ! 1503
	lw	a5, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 24 ! 0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	addi	a0, a0, 1 ! 1504
	slli	a1, a0, 2 ! 1500
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 1500
	lw	a1, t0, 0 ! 1500
	li	a3, -1 ! 1501
	bne	a1, a3, be_else.18224
	ret ! 1505
be_else.18224:
	slli	a1, a1, 2 ! 1502
	lw	a3, sp, 12 ! 0
	add	t0, a3, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a4, 0 ! 1503
	lw	a5, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 28 ! 0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	addi	a0, a0, 1 ! 1504
	slli	a1, a0, 2 ! 1500
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 1500
	lw	a1, t0, 0 ! 1500
	li	a3, -1 ! 1501
	bne	a1, a3, be_else.18226
	ret ! 1505
be_else.18226:
	slli	a1, a1, 2 ! 1502
	lw	a3, sp, 12 ! 0
	add	t0, a3, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 32 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0
	addi	a0, a0, 1 ! 1504
	lw	a1, sp, 16 ! 0
	lw	a2, sp, 4 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix_fast.2776:
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	slli	a12, a0, 2 ! 1510
	add	t0, a1, a12 ! 1510
	lw	a12, t0, 0 ! 1510
	lw	a13, a12, 0 ! 1511
	li	a14, -1 ! 1512
	bne	a13, a14, be_else.18228
	ret ! 1513
be_else.18228:
	li	a14, 99 ! 1515
	sw	sp, a21, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a6, 12 ! 0
	sw	sp, a8, 16 ! 0
	sw	sp, a2, 20 ! 0
	sw	sp, a9, 24 ! 0
	sw	sp, a11, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a0, 36 ! 0
	bne	a13, a14, be_else.18230
	lw	a4, a12, 4 ! 1500
	li	a5, -1 ! 1501
	bne	a4, a5, be_else.18232
	j	be_cont.18233
be_else.18232:
	slli	a4, a4, 2 ! 1502
	add	t0, a11, a4 ! 1502
	lw	a4, t0, 0 ! 1502
	li	a5, 0 ! 1503
	sw	sp, a12, 40 ! 0
	mv	a1, a4
	mv	a0, a5
	mv	a21, a9
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	lw	a1, a0, 8 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18234
	j	be_cont.18235
be_else.18234:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	lw	a1, a0, 12 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18236
	j	be_cont.18237
be_else.18236:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a0, 4 ! 1504
	lw	a1, sp, 40 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
be_cont.18237:
be_cont.18235:
be_cont.18233:
	j	be_cont.18231
be_else.18230:
	slli	a14, a13, 2 ! 1074
	add	t0, a10, a14 ! 1074
	lw	a10, t0, 0 ! 1074
	lw	a14, a10, 40 ! 1075
	flw	fa0, a14, 0 ! 1076
	flw	fa1, a14, 4 ! 1077
	flw	fa2, a14, 8 ! 1078
	lw	a15, a2, 4 ! 1079
	slli	a13, a13, 2 ! 1080
	add	t0, a15, a13 ! 1080
	lw	a13, t0, 0 ! 1080
	lw	a15, a10, 4 ! 1081
	li	a16, 1 ! 1082
	sw	sp, a12, 40 ! 0
	bne	a15, a16, be_else.18238
	lw	a4, a2, 0 ! 1083
	mv	a2, a13
	mv	a1, a4
	mv	a0, a10
	mv	a21, a5
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	j	be_cont.18239
be_else.18238:
	li	a5, 2 ! 1084
	bne	a15, a5, be_else.18240
	flw	fa0, a13, 0 ! 1047
	sw	sp, a14, 44 ! 0
	sw	sp, a13, 48 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fisneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1047
	bne	a0, a1, be_else.18242
	li	a0, 0 ! 1050
	j	be_cont.18243
be_else.18242:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 0 ! 1048
	lw	a0, sp, 44 ! 0
	flw	fa1, a0, 12 ! 1048
	fmul.s	fa0, fa0, fa1, rne ! 1048
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 0 ! 1048
	li	a0, 1 ! 1049
be_cont.18243:
	j	be_cont.18241
be_else.18240:
	mv	a2, a14
	mv	a1, a13
	mv	a0, a10
	mv	a21, a4
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
be_cont.18241:
be_cont.18239:
	li	a1, 0 ! 1521
	bne	a0, a1, be_else.18244
	j	be_cont.18245
be_else.18244:
	lw	a0, sp, 8 ! 0
	flw	fa0, a0, 0 ! 1522
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 0 ! 1523
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fless
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1523
	bne	a0, a1, be_else.18246
	j	be_cont.18247
be_else.18246:
	lw	a0, sp, 40 ! 0
	lw	a1, a0, 4 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18248
	j	be_cont.18249
be_else.18248:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 40 ! 0
	lw	a1, a0, 8 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18250
	j	be_cont.18251
be_else.18250:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 40 ! 0
	lw	a1, a0, 12 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18252
	j	be_cont.18253
be_else.18252:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, 4 ! 1504
	lw	a1, sp, 40 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
be_cont.18253:
be_cont.18251:
be_cont.18249:
be_cont.18247:
be_cont.18245:
be_cont.18231:
	lw	a0, sp, 36 ! 0
	addi	a0, a0, 1 ! 1528
	slli	a1, a0, 2 ! 1510
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1510
	lw	a1, t0, 0 ! 1510
	lw	a3, a1, 0 ! 1511
	li	a4, -1 ! 1512
	bne	a3, a4, be_else.18254
	ret ! 1513
be_else.18254:
	li	a4, 99 ! 1515
	sw	sp, a0, 52 ! 0
	bne	a3, a4, be_else.18256
	lw	a3, a1, 4 ! 1500
	li	a4, -1 ! 1501
	bne	a3, a4, be_else.18258
	j	be_cont.18259
be_else.18258:
	slli	a3, a3, 2 ! 1502
	lw	a4, sp, 28 ! 0
	add	t0, a4, a3 ! 1502
	lw	a3, t0, 0 ! 1502
	li	a5, 0 ! 1503
	lw	a6, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, a1, 56 ! 0
	mv	a2, a6
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0
	lw	a1, a0, 8 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18260
	j	be_cont.18261
be_else.18260:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a2, 0 ! 1503
	lw	a3, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, 3 ! 1504
	lw	a1, sp, 56 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
be_cont.18261:
be_cont.18259:
	j	be_cont.18257
be_else.18256:
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, a1, 56 ! 0
	mv	a1, a4
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1521
	bne	a0, a1, be_else.18262
	j	be_cont.18263
be_else.18262:
	lw	a0, sp, 8 ! 0
	flw	fa0, a0, 0 ! 1522
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 1523
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fless
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1523
	bne	a0, a1, be_else.18264
	j	be_cont.18265
be_else.18264:
	lw	a0, sp, 56 ! 0
	lw	a1, a0, 4 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18266
	j	be_cont.18267
be_else.18266:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0
	lw	a1, a0, 8 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18268
	j	be_cont.18269
be_else.18268:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a2, 0 ! 1503
	lw	a3, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, 3 ! 1504
	lw	a1, sp, 56 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
be_cont.18269:
be_cont.18267:
be_cont.18265:
be_cont.18263:
be_cont.18257:
	lw	a0, sp, 52 ! 0
	addi	a0, a0, 1 ! 1528
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
judge_intersection_fast.2780:
	lw	a1, a21, 32 ! 0
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	li	a9, l.13418 ! 1535
	flw	fa0, a9, 0 ! 1535
	fsw	a2, fa0, 0 ! 1535
	lw	a7, a7, 0 ! 1536
	lw	a9, a7, 0 ! 1510
	lw	a10, a9, 0 ! 1511
	li	a11, -1 ! 1512
	sw	sp, a2, 0 ! 0
	bne	a10, a11, be_else.18270
	j	be_cont.18271
be_else.18270:
	li	a11, 99 ! 1515
	sw	sp, a0, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a1, 12 ! 0
	bne	a10, a11, be_else.18272
	lw	a3, a9, 4 ! 1500
	li	a4, -1 ! 1501
	bne	a3, a4, be_else.18274
	j	be_cont.18275
be_else.18274:
	slli	a3, a3, 2 ! 1502
	add	t0, a8, a3 ! 1502
	lw	a3, t0, 0 ! 1502
	li	a4, 0 ! 1503
	sw	sp, a5, 16 ! 0
	sw	sp, a6, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a9, 28 ! 0
	mv	a2, a0
	mv	a1, a3
	mv	a21, a6
	mv	a0, a4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	lw	a1, a0, 8 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18276
	j	be_cont.18277
be_else.18276:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 24 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a2, 0 ! 1503
	lw	a3, sp, 4 ! 0
	lw	a21, sp, 20 ! 0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, 3 ! 1504
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 4 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.18277:
be_cont.18275:
	j	be_cont.18273
be_else.18272:
	sw	sp, a5, 16 ! 0
	sw	sp, a6, 20 ! 0
	sw	sp, a8, 24 ! 0
	sw	sp, a9, 28 ! 0
	sw	sp, a4, 32 ! 0
	mv	a1, a0
	mv	a21, a3
	mv	a0, a10
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1521
	bne	a0, a1, be_else.18278
	j	be_cont.18279
be_else.18278:
	lw	a0, sp, 32 ! 0
	flw	fa0, a0, 0 ! 1522
	lw	a0, sp, 0 ! 0
	flw	fa1, a0, 0 ! 1523
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1523
	bne	a0, a1, be_else.18280
	j	be_cont.18281
be_else.18280:
	lw	a0, sp, 28 ! 0
	lw	a1, a0, 4 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18282
	j	be_cont.18283
be_else.18282:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 24 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a3, 0 ! 1503
	lw	a4, sp, 4 ! 0
	lw	a21, sp, 20 ! 0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0
	lw	a1, a0, 8 ! 1500
	li	a2, -1 ! 1501
	bne	a1, a2, be_else.18284
	j	be_cont.18285
be_else.18284:
	slli	a1, a1, 2 ! 1502
	lw	a2, sp, 24 ! 0
	add	t0, a2, a1 ! 1502
	lw	a1, t0, 0 ! 1502
	li	a2, 0 ! 1503
	lw	a3, sp, 4 ! 0
	lw	a21, sp, 20 ! 0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, 3 ! 1504
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 4 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
be_cont.18285:
be_cont.18283:
be_cont.18281:
be_cont.18279:
be_cont.18273:
	li	a0, 1 ! 1528
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 4 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
be_cont.18271:
	lw	a0, sp, 0 ! 0
	flw	fa1, a0, 0 ! 1537
	li	a0, l.13260 ! 1539
	flw	fa0, a0, 0 ! 1539
	fsw	sp, fa1, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1539
	bne	a0, a1, be_else.18287
	li	a0, 0 ! 1541
	ret ! 1541
be_else.18287:
	li	a0, l.13436 ! 1540
	flw	fa1, a0, 0 ! 1540
	flw	fa0, sp, 40 ! 0
	j	min_caml_fless
get_nvector_second.2786:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	flw	fa0, a2, 0 ! 1571
	lw	a3, a0, 20 ! 1571
	flw	fa1, a3, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 1571
	flw	fa1, a2, 4 ! 1572
	lw	a3, a0, 20 ! 1572
	flw	fa2, a3, 4 ! 345
	fsub.s	fa1, fa1, fa2, rne ! 1572
	flw	fa2, a2, 8 ! 1573
	lw	a2, a0, 20 ! 1573
	flw	fa3, a2, 8 ! 355
	fsub.s	fa2, fa2, fa3, rne ! 1573
	lw	a2, a0, 16 ! 1575
	flw	fa3, a2, 0 ! 295
	fmul.s	fa3, fa0, fa3, rne ! 1575
	lw	a2, a0, 16 ! 1576
	flw	fa4, a2, 4 ! 305
	fmul.s	fa4, fa1, fa4, rne ! 1576
	lw	a2, a0, 16 ! 1577
	flw	fa5, a2, 8 ! 315
	fmul.s	fa5, fa2, fa5, rne ! 1577
	lw	a2, a0, 12 ! 1579
	li	a3, 0 ! 1579
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	bne	a2, a3, be_else.18288
	fsw	a1, fa3, 0 ! 1580
	fsw	a1, fa4, 4 ! 1581
	fsw	a1, fa5, 8 ! 1582
	j	be_cont.18289
be_else.18288:
	lw	a2, a0, 36 ! 1584
	flw	fa6, a2, 8 ! 435
	fmul.s	fa6, fa1, fa6, rne ! 1584
	lw	a2, a0, 36 ! 1584
	flw	fa7, a2, 4 ! 425
	fmul.s	fa7, fa2, fa7, rne ! 1584
	fadd.s	fa6, fa6, fa7, rne ! 1584
	fsw	sp, fa5, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa4, 24 ! 0
	fsw	sp, fa2, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	fsw	sp, fa3, 48 ! 0
	fmv.s	fa0, fa6
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fhalf
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1584
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1584
	lw	a1, sp, 4 ! 0
	lw	a2, a1, 36 ! 1585
	flw	fa0, a2, 8 ! 435
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1585
	lw	a2, a1, 36 ! 1585
	flw	fa2, a2, 0 ! 415
	flw	fa3, sp, 32 ! 0
	fmul.s	fa2, fa3, fa2, rne ! 1585
	fadd.s	fa0, fa0, fa2, rne ! 1585
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fhalf
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 24 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1585
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 4 ! 1585
	lw	a1, sp, 4 ! 0
	lw	a2, a1, 36 ! 1586
	flw	fa0, a2, 4 ! 425
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1586
	lw	a2, a1, 36 ! 1586
	flw	fa1, a2, 0 ! 415
	flw	fa2, sp, 16 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 1586
	fadd.s	fa0, fa0, fa1, rne ! 1586
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fhalf
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 8 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1586
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 8 ! 1586
be_cont.18289:
	lw	a0, sp, 4 ! 0
	lw	a1, a0, 24 ! 1588
	lw	a0, sp, 0 ! 0
	j	vecunit_sgn.2494
get_nvector.2788:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a21, a21, 4 ! 0
	lw	a4, a0, 4 ! 1593
	li	a5, 1 ! 1594
	bne	a4, a5, be_else.18290
	lw	a0, a3, 0 ! 1555
	li	a3, l.12849 ! 159
	flw	fa0, a3, 0 ! 159
	fsw	a2, fa0, 0 ! 152
	fsw	a2, fa0, 4 ! 153
	fsw	a2, fa0, 8 ! 154
	addi	a3, a0, -1 ! 1558
	addi	a0, a0, -1 ! 1558
	slli	a0, a0, 2 ! 1558
	add	t0, a1, a0 ! 1558
	flw	fa0, t0, 0 ! 1558
	sw	sp, a2, 0 ! 0
	sw	sp, a3, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fiszero
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 117
	bne	a0, a1, be_else.18291
	flw	fa0, sp, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fispos
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 118
	bne	a0, a1, be_else.18293
	li	a0, l.12813 ! 119
	flw	fa0, a0, 0 ! 119
	j	be_cont.18294
be_else.18293:
	li	a0, l.12811 ! 118
	flw	fa0, a0, 0 ! 118
be_cont.18294:
	j	be_cont.18292
be_else.18291:
	li	a0, l.12849 ! 117
	flw	fa0, a0, 0 ! 117
be_cont.18292:
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	slli	a0, a0, 2 ! 1558
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1558
	fsw	t0, fa0, 0 ! 1558
	ret ! 1558
be_else.18290:
	li	a1, 2 ! 1596
	bne	a4, a1, be_else.18296
	lw	a1, a0, 16 ! 1564
	flw	fa0, a1, 0 ! 295
	sw	sp, a0, 16 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1564
	lw	a1, sp, 16 ! 0
	lw	a2, a1, 16 ! 1565
	flw	fa0, a2, 4 ! 305
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 4 ! 1565
	lw	a1, sp, 16 ! 0
	lw	a1, a1, 16 ! 1566
	flw	fa0, a1, 8 ! 315
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 8 ! 1566
	ret ! 1566
be_else.18296:
	lw	a20, a21, 0
	jalr	zero, a20, 0
utexture.2791:
	lw	a2, a21, 4 ! 0
	lw	a3, a0, 0 ! 1609
	lw	a4, a0, 32 ! 1611
	flw	fa0, a4, 0 ! 385
	fsw	a2, fa0, 0 ! 1611
	lw	a4, a0, 32 ! 1612
	flw	fa0, a4, 4 ! 395
	fsw	a2, fa0, 4 ! 1612
	lw	a4, a0, 32 ! 1613
	flw	fa0, a4, 8 ! 405
	fsw	a2, fa0, 8 ! 1613
	li	a4, 1 ! 1614
	bne	a3, a4, be_else.18298
	flw	fa0, a1, 0 ! 1617
	lw	a3, a0, 20 ! 1617
	flw	fa1, a3, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 1617
	li	a3, l.13535 ! 1619
	flw	fa1, a3, 0 ! 1619
	fmul.s	fa1, fa0, fa1, rne ! 1619
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_floor
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.13537 ! 1619
	flw	fa1, a0, 0 ! 1619
	fmul.s	fa0, fa0, fa1, rne ! 1619
	flw	fa1, sp, 16 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1620
	li	a0, l.13517 ! 1620
	flw	fa1, a0, 0 ! 1620
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fless
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 8 ! 0
	flw	fa0, a1, 8 ! 1622
	lw	a1, sp, 4 ! 0
	lw	a1, a1, 20 ! 1622
	flw	fa1, a1, 8 ! 355
	fsub.s	fa0, fa0, fa1, rne ! 1622
	li	a1, l.13535 ! 1624
	flw	fa1, a1, 0 ! 1624
	fmul.s	fa1, fa0, fa1, rne ! 1624
	sw	sp, a0, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_floor
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a0, l.13537 ! 1624
	flw	fa1, a0, 0 ! 1624
	fmul.s	fa0, fa0, fa1, rne ! 1624
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1625
	li	a0, l.13517 ! 1625
	flw	fa1, a0, 0 ! 1625
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 1628
	lw	a2, sp, 24 ! 0
	bne	a2, a1, be_else.18301
	li	a1, 0 ! 1630
	bne	a0, a1, be_else.18303
	li	a0, l.13508 ! 1630
	flw	fa0, a0, 0 ! 1630
	j	be_cont.18304
be_else.18303:
	li	a0, l.12849 ! 1630
	flw	fa0, a0, 0 ! 1630
be_cont.18304:
	j	be_cont.18302
be_else.18301:
	li	a1, 0 ! 1629
	bne	a0, a1, be_else.18305
	li	a0, l.12849 ! 1629
	flw	fa0, a0, 0 ! 1629
	j	be_cont.18306
be_else.18305:
	li	a0, l.13508 ! 1629
	flw	fa0, a0, 0 ! 1629
be_cont.18306:
be_cont.18302:
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 4 ! 1627
	ret ! 1627
be_else.18298:
	li	a4, 2 ! 1632
	bne	a3, a4, be_else.18308
	flw	fa0, a1, 4 ! 1635
	li	a0, l.13526 ! 1635
	flw	fa1, a0, 0 ! 1635
	fmul.s	fa0, fa0, fa1, rne ! 1635
	sw	sp, a2, 0 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sin
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fsqr
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a0, l.13508 ! 1636
	flw	fa1, a0, 0 ! 1636
	fmul.s	fa1, fa1, fa0, rne ! 1636
	lw	a0, sp, 0 ! 0
	fsw	a0, fa1, 0 ! 1636
	li	a1, l.13508 ! 1637
	flw	fa1, a1, 0 ! 1637
	li	a1, l.12811 ! 1637
	flw	fa2, a1, 0 ! 1637
	fsub.s	fa0, fa2, fa0, rne ! 1637
	fmul.s	fa0, fa1, fa0, rne ! 1637
	fsw	a0, fa0, 4 ! 1637
	ret ! 1637
be_else.18308:
	li	a4, 3 ! 1639
	bne	a3, a4, be_else.18310
	flw	fa0, a1, 0 ! 1642
	lw	a3, a0, 20 ! 1642
	flw	fa1, a3, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 1642
	flw	fa1, a1, 8 ! 1643
	lw	a0, a0, 20 ! 1643
	flw	fa2, a0, 8 ! 355
	fsub.s	fa1, fa1, fa2, rne ! 1643
	sw	sp, a2, 0 ! 0
	fsw	sp, fa1, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fsqr
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fsqr
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1644
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_sqrt
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a0, l.13517 ! 1644
	flw	fa1, a0, 0 ! 1644
	fdiv.s	fa0, fa0, fa1, rne ! 1644
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_floor
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1645
	li	a0, l.13493 ! 1645
	flw	fa1, a0, 0 ! 1645
	fmul.s	fa0, fa0, fa1, rne ! 1645
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_cos
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fsqr
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a0, l.13508 ! 1647
	flw	fa1, a0, 0 ! 1647
	fmul.s	fa1, fa0, fa1, rne ! 1647
	lw	a0, sp, 0 ! 0
	fsw	a0, fa1, 4 ! 1647
	li	a1, l.12811 ! 1648
	flw	fa1, a1, 0 ! 1648
	fsub.s	fa0, fa1, fa0, rne ! 1648
	li	a1, l.13508 ! 1648
	flw	fa1, a1, 0 ! 1648
	fmul.s	fa0, fa0, fa1, rne ! 1648
	fsw	a0, fa0, 8 ! 1648
	ret ! 1648
be_else.18310:
	li	a4, 4 ! 1650
	bne	a3, a4, be_else.18312
	flw	fa0, a1, 0 ! 1652
	lw	a3, a0, 20 ! 1652
	flw	fa1, a3, 0 ! 335
	fsub.s	fa0, fa0, fa1, rne ! 1652
	lw	a3, a0, 16 ! 1652
	flw	fa1, a3, 0 ! 295
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	fsw	sp, fa0, 64 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_sqrt
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1652
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 8 ! 1653
	lw	a1, sp, 4 ! 0
	lw	a2, a1, 20 ! 1653
	flw	fa2, a2, 8 ! 355
	fsub.s	fa1, fa1, fa2, rne ! 1653
	lw	a2, a1, 16 ! 1653
	flw	fa2, a2, 8 ! 315
	fsw	sp, fa0, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_sqrt
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1653
	flw	fa1, sp, 72 ! 0
	fsw	sp, fa0, 88 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fsqr
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1654
	flw	fa1, sp, 72 ! 0
	fsw	sp, fa0, 104 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fabs
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a0, l.13487 ! 1656
	flw	fa1, a0, 0 ! 1656
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fless
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a1, 0 ! 1656
	bne	a0, a1, be_else.18313
	flw	fa0, sp, 72 ! 0
	flw	fa1, sp, 88 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1659
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fabs
	addi	sp, sp, -116
	lw	ra, sp, 112
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_atan
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a0, l.13491 ! 1661
	flw	fa1, a0, 0 ! 1661
	fmul.s	fa0, fa0, fa1, rne ! 1661
	li	a0, l.13493 ! 1661
	flw	fa1, a0, 0 ! 1661
	fdiv.s	fa0, fa0, fa1, rne ! 1661
	j	be_cont.18314
be_else.18313:
	li	a0, l.13489 ! 1657
	flw	fa0, a0, 0 ! 1657
be_cont.18314:
	fsw	sp, fa0, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_floor
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1663
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 4 ! 1665
	lw	a0, sp, 4 ! 0
	lw	a1, a0, 20 ! 1665
	flw	fa2, a1, 4 ! 345
	fsub.s	fa1, fa1, fa2, rne ! 1665
	lw	a0, a0, 16 ! 1665
	flw	fa2, a0, 4 ! 305
	fsw	sp, fa0, 120 ! 0
	fsw	sp, fa1, 128 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_sqrt
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1665
	flw	fa1, sp, 104 ! 0
	fsw	sp, fa0, 136 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fabs
	addi	sp, sp, -148
	lw	ra, sp, 144
	li	a0, l.13487 ! 1667
	flw	fa1, a0, 0 ! 1667
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fless
	addi	sp, sp, -148
	lw	ra, sp, 144
	li	a1, 0 ! 1667
	bne	a0, a1, be_else.18315
	flw	fa0, sp, 104 ! 0
	flw	fa1, sp, 136 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1670
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fabs
	addi	sp, sp, -148
	lw	ra, sp, 144
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_atan
	addi	sp, sp, -148
	lw	ra, sp, 144
	li	a0, l.13491 ! 1671
	flw	fa1, a0, 0 ! 1671
	fmul.s	fa0, fa0, fa1, rne ! 1671
	li	a0, l.13493 ! 1671
	flw	fa1, a0, 0 ! 1671
	fdiv.s	fa0, fa0, fa1, rne ! 1671
	j	be_cont.18316
be_else.18315:
	li	a0, l.13489 ! 1668
	flw	fa0, a0, 0 ! 1668
be_cont.18316:
	fsw	sp, fa0, 144 ! 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_floor
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 144 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1673
	li	a0, l.13502 ! 1674
	flw	fa1, a0, 0 ! 1674
	li	a0, l.13504 ! 1674
	flw	fa2, a0, 0 ! 1674
	flw	fa3, sp, 120 ! 0
	fsub.s	fa2, fa2, fa3, rne ! 1674
	fsw	sp, fa0, 152 ! 0
	fsw	sp, fa1, 160 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fsqr
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 160 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1674
	li	a0, l.13504 ! 1674
	flw	fa1, a0, 0 ! 1674
	flw	fa2, sp, 152 ! 0
	fsub.s	fa1, fa1, fa2, rne ! 1674
	fsw	sp, fa0, 168 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1674
	fsw	sp, fa0, 176 ! 0
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fisneg
	addi	sp, sp, -188
	lw	ra, sp, 184
	li	a1, 0 ! 1675
	bne	a0, a1, be_else.18317
	flw	fa0, sp, 176 ! 0
	j	be_cont.18318
be_else.18317:
	li	a0, l.12849 ! 1675
	flw	fa0, a0, 0 ! 1675
be_cont.18318:
	li	a0, l.13508 ! 1676
	flw	fa1, a0, 0 ! 1676
	fmul.s	fa0, fa1, fa0, rne ! 1676
	li	a0, l.13510 ! 1676
	flw	fa1, a0, 0 ! 1676
	fdiv.s	fa0, fa0, fa1, rne ! 1676
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 8 ! 1676
	ret ! 1676
be_else.18312:
	ret ! 1678
trace_reflections.2798:
	lw	a2, a21, 40 ! 0
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	li	a12, 0 ! 1705
	blt	a0, a12, bge_else.18321
	slli	a12, a0, 2 ! 1706
	add	t0, a7, a12 ! 1706
	lw	a7, t0, 0 ! 1706
	lw	a12, a7, 4 ! 1707
	li	a13, l.13418 ! 1535
	flw	fa2, a13, 0 ! 1535
	fsw	a3, fa2, 0 ! 1535
	li	a13, 0 ! 1536
	lw	a14, a8, 0 ! 1536
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa1, 8 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a6, 20 ! 0
	sw	sp, a1, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, a9, 40 ! 0
	sw	sp, a12, 44 ! 0
	sw	sp, a5, 48 ! 0
	sw	sp, a8, 52 ! 0
	sw	sp, a7, 56 ! 0
	sw	sp, a10, 60 ! 0
	sw	sp, a11, 64 ! 0
	sw	sp, a3, 68 ! 0
	mv	a1, a14
	mv	a0, a13
	mv	a21, a2
	mv	a2, a12
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 68 ! 0
	flw	fa1, a0, 0 ! 1537
	li	a0, l.13260 ! 1539
	flw	fa0, a0, 0 ! 1539
	fsw	sp, fa1, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1539
	bne	a0, a1, be_else.18323
	li	a0, 0 ! 1541
	j	be_cont.18324
be_else.18323:
	li	a0, l.13436 ! 1540
	flw	fa1, a0, 0 ! 1540
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
be_cont.18324:
	li	a1, 0 ! 1710
	bne	a0, a1, be_else.18325
	j	be_cont.18326
be_else.18325:
	lw	a0, sp, 64 ! 0
	lw	a0, a0, 0 ! 1711
	slli	a0, a0, 2 ! 1711
	lw	a1, sp, 60 ! 0
	lw	a1, a1, 0 ! 1711
	add	a0, a0, a1 ! 1711
	lw	a1, sp, 56 ! 0
	lw	a2, a1, 0 ! 1712
	bne	a0, a2, be_else.18327
	li	a0, 0 ! 1714
	lw	a2, sp, 52 ! 0
	lw	a2, a2, 0 ! 1714
	lw	a21, sp, 48 ! 0
	mv	a1, a2
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1714
	bne	a0, a1, be_else.18329
	lw	a0, sp, 44 ! 0
	lw	a1, a0, 0 ! 1716
	lw	a2, sp, 40 ! 0
	flw	fa0, a2, 0 ! 193
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a2, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a2, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	lw	a1, sp, 56 ! 0
	flw	fa1, a1, 8 ! 1717
	flw	fa2, sp, 32 ! 0
	fmul.s	fa3, fa1, fa2, rne ! 1718
	fmul.s	fa0, fa3, fa0, rne ! 1718
	lw	a0, a0, 0 ! 1719
	lw	a1, sp, 24 ! 0
	flw	fa3, a1, 0 ! 193
	flw	fa4, a0, 0 ! 193
	fmul.s	fa3, fa3, fa4, rne ! 193
	flw	fa4, a1, 4 ! 193
	flw	fa5, a0, 4 ! 193
	fmul.s	fa4, fa4, fa5, rne ! 193
	fadd.s	fa3, fa3, fa4, rne ! 193
	flw	fa4, a1, 8 ! 193
	flw	fa5, a0, 8 ! 193
	fmul.s	fa4, fa4, fa5, rne ! 193
	fadd.s	fa3, fa3, fa4, rne ! 193
	fmul.s	fa1, fa1, fa3, rne ! 1719
	fsw	sp, fa1, 80 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fispos
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1689
	bne	a0, a1, be_else.18331
	j	be_cont.18332
be_else.18331:
	lw	a0, sp, 20 ! 0
	flw	fa0, a0, 0 ! 203
	lw	a1, sp, 16 ! 0
	flw	fa1, a1, 0 ! 203
	flw	fa2, sp, 88 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 203
	fadd.s	fa0, fa0, fa1, rne ! 203
	fsw	a0, fa0, 0 ! 203
	flw	fa0, a0, 4 ! 204
	flw	fa1, a1, 4 ! 204
	fmul.s	fa1, fa2, fa1, rne ! 204
	fadd.s	fa0, fa0, fa1, rne ! 204
	fsw	a0, fa0, 4 ! 204
	flw	fa0, a0, 8 ! 205
	flw	fa1, a1, 8 ! 205
	fmul.s	fa1, fa2, fa1, rne ! 205
	fadd.s	fa0, fa0, fa1, rne ! 205
	fsw	a0, fa0, 8 ! 205
be_cont.18332:
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fispos
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1694
	bne	a0, a1, be_else.18333
	j	be_cont.18334
be_else.18333:
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1695
	lw	a0, sp, 20 ! 0
	flw	fa2, a0, 0 ! 1696
	fadd.s	fa2, fa2, fa0, rne ! 1696
	fsw	a0, fa2, 0 ! 1696
	flw	fa2, a0, 4 ! 1697
	fadd.s	fa2, fa2, fa0, rne ! 1697
	fsw	a0, fa2, 4 ! 1697
	flw	fa2, a0, 8 ! 1698
	fadd.s	fa0, fa2, fa0, rne ! 1698
	fsw	a0, fa0, 8 ! 1698
be_cont.18334:
	j	be_cont.18330
be_else.18329:
be_cont.18330:
	j	be_cont.18328
be_else.18327:
be_cont.18328:
be_cont.18326:
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 1724
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 8 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18321:
	ret ! 1725
trace_ray.2803:
	lw	a3, a21, 84 ! 0
	lw	a4, a21, 80 ! 0
	lw	a5, a21, 76 ! 0
	lw	a6, a21, 72 ! 0
	lw	a7, a21, 68 ! 0
	lw	a8, a21, 64 ! 0
	lw	a9, a21, 60 ! 0
	lw	a10, a21, 56 ! 0
	lw	a11, a21, 52 ! 0
	lw	a12, a21, 48 ! 0
	lw	a13, a21, 44 ! 0
	lw	a14, a21, 40 ! 0
	lw	a15, a21, 36 ! 0
	lw	a16, a21, 32 ! 0
	lw	a17, a21, 28 ! 0
	lw	a18, a21, 24 ! 0
	lw	a19, a21, 20 ! 0
	lw	a20, a21, 16 ! 0
	sw	sp, a4, 0 ! 0
	lw	a4, a21, 12 ! 0
	sw	sp, a16, 4 ! 0
	lw	a16, a21, 8 ! 0
	sw	sp, a21, 8 ! 0
	lw	a21, a21, 4 ! 0
	sw	sp, a11, 12 ! 0
	li	a11, 4 ! 1733
	blt	a11, a0, bge_else.18336
	lw	a11, a2, 8 ! 1734
	sw	sp, a17, 16 ! 0
	li	a17, l.13418 ! 1444
	flw	fa2, a17, 0 ! 1444
	fsw	a6, fa2, 0 ! 1444
	li	a17, 0 ! 1445
	sw	sp, a8, 20 ! 0
	lw	a8, a13, 0 ! 1445
	fsw	sp, fa1, 24 ! 0
	sw	sp, a10, 32 ! 0
	sw	sp, a13, 36 ! 0
	sw	sp, a7, 40 ! 0
	sw	sp, a2, 44 ! 0
	sw	sp, a3, 48 ! 0
	sw	sp, a9, 52 ! 0
	sw	sp, a20, 56 ! 0
	sw	sp, a16, 60 ! 0
	sw	sp, a15, 64 ! 0
	sw	sp, a19, 68 ! 0
	sw	sp, a14, 72 ! 0
	sw	sp, a4, 76 ! 0
	sw	sp, a12, 80 ! 0
	sw	sp, a21, 84 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, a18, 96 ! 0
	sw	sp, a1, 100 ! 0
	sw	sp, a11, 104 ! 0
	sw	sp, a0, 108 ! 0
	sw	sp, a6, 112 ! 0
	mv	a2, a1
	mv	a0, a17
	mv	a21, a5
	mv	a1, a8
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	lw	a0, sp, 112 ! 0
	flw	fa1, a0, 0 ! 1446
	li	a1, l.13260 ! 1448
	flw	fa0, a1, 0 ! 1448
	fsw	sp, fa1, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fless
	addi	sp, sp, -132
	lw	ra, sp, 128
	li	a1, 0 ! 1448
	bne	a0, a1, be_else.18338
	li	a0, 0 ! 1450
	j	be_cont.18339
be_else.18338:
	li	a0, l.13436 ! 1449
	flw	fa1, a0, 0 ! 1449
	flw	fa0, sp, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fless
	addi	sp, sp, -132
	lw	ra, sp, 128
be_cont.18339:
	li	a1, 0 ! 1735
	bne	a0, a1, be_else.18340
	li	a0, -1 ! 1798
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1798
	lw	a3, sp, 104 ! 0
	add	t0, a3, a2 ! 1798
	sw	t0, a0, 0 ! 1798
	li	a0, 0 ! 1800
	bne	a1, a0, be_else.18341
	ret ! 1812
be_else.18341:
	lw	a0, sp, 100 ! 0
	flw	fa0, a0, 0 ! 193
	lw	a1, sp, 96 ! 0
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fneg
	addi	sp, sp, -132
	lw	ra, sp, 128
	fsw	sp, fa0, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fispos
	addi	sp, sp, -140
	lw	ra, sp, 136
	li	a1, 0 ! 1803
	bne	a0, a1, be_else.18343
	ret ! 1811
be_else.18343:
	flw	fa0, sp, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fsqr
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1806
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1806
	lw	a0, sp, 84 ! 0
	flw	fa1, a0, 0 ! 1806
	fmul.s	fa0, fa0, fa1, rne ! 1806
	lw	a0, sp, 80 ! 0
	flw	fa1, a0, 0 ! 1807
	fadd.s	fa1, fa1, fa0, rne ! 1807
	fsw	a0, fa1, 0 ! 1807
	flw	fa1, a0, 4 ! 1808
	fadd.s	fa1, fa1, fa0, rne ! 1808
	fsw	a0, fa1, 4 ! 1808
	flw	fa1, a0, 8 ! 1809
	fadd.s	fa0, fa1, fa0, rne ! 1809
	fsw	a0, fa0, 8 ! 1809
	ret ! 1809
be_else.18340:
	lw	a0, sp, 76 ! 0
	lw	a0, a0, 0 ! 1737
	slli	a1, a0, 2 ! 1738
	lw	a2, sp, 72 ! 0
	add	t0, a2, a1 ! 1738
	lw	a1, t0, 0 ! 1738
	lw	a2, a1, 8 ! 1739
	lw	a3, a1, 28 ! 267
	flw	fa0, a3, 0 ! 365
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1740
	lw	a3, a1, 4 ! 1742
	li	a4, 1 ! 1594
	sw	sp, a2, 136 ! 0
	fsw	sp, fa0, 144 ! 0
	sw	sp, a0, 152 ! 0
	sw	sp, a1, 156 ! 0
	bne	a3, a4, be_else.18347
	lw	a3, sp, 68 ! 0
	lw	a4, a3, 0 ! 1555
	li	a5, l.12849 ! 159
	flw	fa2, a5, 0 ! 159
	lw	a5, sp, 64 ! 0
	fsw	a5, fa2, 0 ! 152
	fsw	a5, fa2, 4 ! 153
	fsw	a5, fa2, 8 ! 154
	addi	a6, a4, -1 ! 1558
	addi	a4, a4, -1 ! 1558
	slli	a4, a4, 2 ! 1558
	lw	a7, sp, 100 ! 0
	add	t0, a7, a4 ! 1558
	flw	fa2, t0, 0 ! 1558
	sw	sp, a6, 160 ! 0
	fsw	sp, fa2, 168 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fiszero
	addi	sp, sp, -180
	lw	ra, sp, 176
	li	a1, 0 ! 117
	bne	a0, a1, be_else.18350
	flw	fa0, sp, 168 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fispos
	addi	sp, sp, -180
	lw	ra, sp, 176
	li	a1, 0 ! 118
	bne	a0, a1, be_else.18352
	li	a0, l.12813 ! 119
	flw	fa0, a0, 0 ! 119
	j	be_cont.18353
be_else.18352:
	li	a0, l.12811 ! 118
	flw	fa0, a0, 0 ! 118
be_cont.18353:
	j	be_cont.18351
be_else.18350:
	li	a0, l.12849 ! 117
	flw	fa0, a0, 0 ! 117
be_cont.18351:
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fneg
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 160 ! 0
	slli	a0, a0, 2 ! 1558
	lw	a1, sp, 64 ! 0
	add	t0, a1, a0 ! 1558
	fsw	t0, fa0, 0 ! 1558
	j	be_cont.18348
be_else.18347:
	li	a4, 2 ! 1596
	bne	a3, a4, be_else.18354
	lw	a3, a1, 16 ! 1564
	flw	fa2, a3, 0 ! 295
	fmv.s	fa0, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fneg
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 64 ! 0
	fsw	a0, fa0, 0 ! 1564
	lw	a1, sp, 156 ! 0
	lw	a2, a1, 16 ! 1565
	flw	fa0, a2, 4 ! 305
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fneg
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 64 ! 0
	fsw	a0, fa0, 4 ! 1565
	lw	a1, sp, 156 ! 0
	lw	a2, a1, 16 ! 1566
	flw	fa0, a2, 8 ! 315
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fneg
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 64 ! 0
	fsw	a0, fa0, 8 ! 1566
	j	be_cont.18355
be_else.18354:
	lw	a21, sp, 60 ! 0
	mv	a0, a1
	sw	sp, ra, 176
	addi	sp, sp, 180
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -180
	lw	ra, sp, 176
be_cont.18355:
be_cont.18348:
	lw	a1, sp, 56 ! 0
	flw	fa0, a1, 0 ! 164
	lw	a0, sp, 52 ! 0
	fsw	a0, fa0, 0 ! 164
	flw	fa0, a1, 4 ! 165
	fsw	a0, fa0, 4 ! 165
	flw	fa0, a1, 8 ! 166
	fsw	a0, fa0, 8 ! 166
	lw	a0, sp, 156 ! 0
	lw	a21, sp, 48 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 152 ! 0
	slli	a0, a0, 2 ! 1747
	lw	a1, sp, 68 ! 0
	lw	a1, a1, 0 ! 1747
	add	a0, a0, a1 ! 1747
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1747
	lw	a3, sp, 104 ! 0
	add	t0, a3, a2 ! 1747
	sw	t0, a0, 0 ! 1747
	lw	a0, sp, 44 ! 0
	lw	a2, a0, 4 ! 1748
	slli	a4, a1, 2 ! 1749
	add	t0, a2, a4 ! 1749
	lw	a2, t0, 0 ! 1749
	lw	a4, sp, 56 ! 0
	flw	fa0, a4, 0 ! 164
	fsw	a2, fa0, 0 ! 164
	flw	fa0, a4, 4 ! 165
	fsw	a2, fa0, 4 ! 165
	flw	fa0, a4, 8 ! 166
	fsw	a2, fa0, 8 ! 166
	lw	a2, a0, 12 ! 1752
	lw	a5, sp, 156 ! 0
	lw	a6, a5, 28 ! 485
	flw	fa0, a6, 0 ! 365
	li	a6, l.13504 ! 1753
	flw	fa1, a6, 0 ! 1753
	sw	sp, a2, 176 ! 0
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	min_caml_fless
	addi	sp, sp, -184
	lw	ra, sp, 180
	li	a1, 0 ! 1753
	bne	a0, a1, be_else.18356
	li	a0, 1 ! 1756
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1756
	lw	a3, sp, 176 ! 0
	add	t0, a3, a2 ! 1756
	sw	t0, a0, 0 ! 1756
	lw	a0, sp, 44 ! 0
	lw	a2, a0, 16 ! 1757
	slli	a3, a1, 2 ! 1758
	add	t0, a2, a3 ! 1758
	lw	a3, t0, 0 ! 1758
	lw	a4, sp, 40 ! 0
	flw	fa0, a4, 0 ! 164
	fsw	a3, fa0, 0 ! 164
	flw	fa0, a4, 4 ! 165
	fsw	a3, fa0, 4 ! 165
	flw	fa0, a4, 8 ! 166
	fsw	a3, fa0, 8 ! 166
	slli	a3, a1, 2 ! 1759
	add	t0, a2, a3 ! 1759
	lw	a2, t0, 0 ! 1759
	li	a3, l.13639 ! 1759
	flw	fa0, a3, 0 ! 1759
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1759
	flw	fa2, a2, 0 ! 224
	fmul.s	fa2, fa2, fa0, rne ! 224
	fsw	a2, fa2, 0 ! 224
	flw	fa2, a2, 4 ! 225
	fmul.s	fa2, fa2, fa0, rne ! 225
	fsw	a2, fa2, 4 ! 225
	flw	fa2, a2, 8 ! 226
	fmul.s	fa0, fa2, fa0, rne ! 226
	fsw	a2, fa0, 8 ! 226
	lw	a2, a0, 28 ! 1760
	slli	a3, a1, 2 ! 1761
	add	t0, a2, a3 ! 1761
	lw	a2, t0, 0 ! 1761
	lw	a3, sp, 64 ! 0
	flw	fa0, a3, 0 ! 164
	fsw	a2, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a2, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a2, fa0, 8 ! 166
	j	be_cont.18357
be_else.18356:
	li	a0, 0 ! 1754
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1754
	lw	a3, sp, 176 ! 0
	add	t0, a3, a2 ! 1754
	sw	t0, a0, 0 ! 1754
be_cont.18357:
	li	a0, l.13654 ! 1764
	flw	fa0, a0, 0 ! 1764
	lw	a0, sp, 100 ! 0
	flw	fa1, a0, 0 ! 193
	lw	a2, sp, 64 ! 0
	flw	fa2, a2, 0 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	flw	fa2, a0, 4 ! 193
	flw	fa3, a2, 4 ! 193
	fmul.s	fa2, fa2, fa3, rne ! 193
	fadd.s	fa1, fa1, fa2, rne ! 193
	flw	fa2, a0, 8 ! 193
	flw	fa3, a2, 8 ! 193
	fmul.s	fa2, fa2, fa3, rne ! 193
	fadd.s	fa1, fa1, fa2, rne ! 193
	fmul.s	fa0, fa0, fa1, rne ! 1764
	flw	fa1, a0, 0 ! 203
	flw	fa2, a2, 0 ! 203
	fmul.s	fa2, fa0, fa2, rne ! 203
	fadd.s	fa1, fa1, fa2, rne ! 203
	fsw	a0, fa1, 0 ! 203
	flw	fa1, a0, 4 ! 204
	flw	fa2, a2, 4 ! 204
	fmul.s	fa2, fa0, fa2, rne ! 204
	fadd.s	fa1, fa1, fa2, rne ! 204
	fsw	a0, fa1, 4 ! 204
	flw	fa1, a0, 8 ! 205
	flw	fa2, a2, 8 ! 205
	fmul.s	fa0, fa0, fa2, rne ! 205
	fadd.s	fa0, fa1, fa0, rne ! 205
	fsw	a0, fa0, 8 ! 205
	lw	a3, sp, 156 ! 0
	lw	a4, a3, 28 ! 1768
	flw	fa0, a4, 4 ! 375
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1768
	li	a4, 0 ! 1771
	lw	a5, sp, 36 ! 0
	lw	a5, a5, 0 ! 1771
	lw	a21, sp, 32 ! 0
	fsw	sp, fa0, 184 ! 0
	mv	a1, a5
	mv	a0, a4
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	li	a1, 0 ! 1771
	bne	a0, a1, be_else.18359
	lw	a0, sp, 64 ! 0
	flw	fa0, a0, 0 ! 193
	lw	a1, sp, 96 ! 0
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fneg
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1772
	lw	a0, sp, 100 ! 0
	flw	fa2, a0, 0 ! 193
	lw	a1, sp, 96 ! 0
	flw	fa3, a1, 0 ! 193
	fmul.s	fa2, fa2, fa3, rne ! 193
	flw	fa3, a0, 4 ! 193
	flw	fa4, a1, 4 ! 193
	fmul.s	fa3, fa3, fa4, rne ! 193
	fadd.s	fa2, fa2, fa3, rne ! 193
	flw	fa3, a0, 8 ! 193
	flw	fa4, a1, 8 ! 193
	fmul.s	fa3, fa3, fa4, rne ! 193
	fadd.s	fa2, fa2, fa3, rne ! 193
	fsw	sp, fa0, 192 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	min_caml_fneg
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 192 ! 0
	fsw	sp, fa0, 200 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fispos
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a1, 0 ! 1689
	bne	a0, a1, be_else.18361
	j	be_cont.18362
be_else.18361:
	lw	a0, sp, 80 ! 0
	flw	fa0, a0, 0 ! 203
	lw	a1, sp, 40 ! 0
	flw	fa1, a1, 0 ! 203
	flw	fa2, sp, 192 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 203
	fadd.s	fa0, fa0, fa1, rne ! 203
	fsw	a0, fa0, 0 ! 203
	flw	fa0, a0, 4 ! 204
	flw	fa1, a1, 4 ! 204
	fmul.s	fa1, fa2, fa1, rne ! 204
	fadd.s	fa0, fa0, fa1, rne ! 204
	fsw	a0, fa0, 4 ! 204
	flw	fa0, a0, 8 ! 205
	flw	fa1, a1, 8 ! 205
	fmul.s	fa1, fa2, fa1, rne ! 205
	fadd.s	fa0, fa0, fa1, rne ! 205
	fsw	a0, fa0, 8 ! 205
be_cont.18362:
	flw	fa0, sp, 200 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fispos
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a1, 0 ! 1694
	bne	a0, a1, be_else.18363
	j	be_cont.18364
be_else.18363:
	flw	fa0, sp, 200 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fsqr
	addi	sp, sp, -212
	lw	ra, sp, 208
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fsqr
	addi	sp, sp, -212
	lw	ra, sp, 208
	flw	fa1, sp, 184 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1695
	lw	a0, sp, 80 ! 0
	flw	fa2, a0, 0 ! 1696
	fadd.s	fa2, fa2, fa0, rne ! 1696
	fsw	a0, fa2, 0 ! 1696
	flw	fa2, a0, 4 ! 1697
	fadd.s	fa2, fa2, fa0, rne ! 1697
	fsw	a0, fa2, 4 ! 1697
	flw	fa2, a0, 8 ! 1698
	fadd.s	fa0, fa2, fa0, rne ! 1698
	fsw	a0, fa0, 8 ! 1698
be_cont.18364:
	j	be_cont.18360
be_else.18359:
be_cont.18360:
	lw	a0, sp, 56 ! 0
	flw	fa0, a0, 0 ! 164
	lw	a1, sp, 20 ! 0
	fsw	a1, fa0, 0 ! 164
	flw	fa0, a0, 4 ! 165
	fsw	a1, fa0, 4 ! 165
	flw	fa0, a0, 8 ! 166
	fsw	a1, fa0, 8 ! 166
	lw	a1, sp, 16 ! 0
	lw	a1, a1, 0 ! 1216
	addi	a1, a1, -1 ! 1216
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a0, sp, 4 ! 0
	lw	a0, a0, 0 ! 1779
	addi	a0, a0, -1 ! 1779
	flw	fa0, sp, 144 ! 0
	flw	fa1, sp, 184 ! 0
	lw	a1, sp, 100 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a0, l.13708 ! 1782
	flw	fa0, a0, 0 ! 1782
	flw	fa1, sp, 88 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fless
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a1, 0 ! 1782
	bne	a0, a1, be_else.18365
	ret ! 1793
be_else.18365:
	li	a0, 4 ! 1784
	lw	a1, sp, 108 ! 0
	blt	a1, a0, bge_else.18367
	j	bge_cont.18368
bge_else.18367:
	addi	a0, a1, 1 ! 1785
	li	a2, -1 ! 1785
	slli	a0, a0, 2 ! 1785
	lw	a3, sp, 104 ! 0
	add	t0, a3, a0 ! 1785
	sw	t0, a2, 0 ! 1785
bge_cont.18368:
	li	a0, 2 ! 1788
	lw	a2, sp, 136 ! 0
	bne	a2, a0, be_else.18369
	li	a0, l.12811 ! 1789
	flw	fa0, a0, 0 ! 1789
	lw	a0, sp, 156 ! 0
	lw	a0, a0, 28 ! 1789
	flw	fa1, a0, 0 ! 365
	fsub.s	fa0, fa0, fa1, rne ! 1789
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1789
	addi	a0, a1, 1 ! 1790
	lw	a1, sp, 112 ! 0
	flw	fa1, a1, 0 ! 1790
	flw	fa2, sp, 24 ! 0
	fadd.s	fa1, fa2, fa1, rne ! 1790
	lw	a1, sp, 100 ! 0
	lw	a2, sp, 44 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	j	be_cont.18370
be_else.18369:
be_cont.18370:
	ret ! 1788
bge_else.18336:
	ret ! 1814
trace_diffuse_ray.2809:
	lw	a1, a21, 56 ! 0
	lw	a2, a21, 52 ! 0
	lw	a3, a21, 48 ! 0
	lw	a4, a21, 44 ! 0
	lw	a5, a21, 40 ! 0
	lw	a6, a21, 36 ! 0
	lw	a7, a21, 32 ! 0
	lw	a8, a21, 28 ! 0
	lw	a9, a21, 24 ! 0
	lw	a10, a21, 20 ! 0
	lw	a11, a21, 16 ! 0
	lw	a12, a21, 12 ! 0
	lw	a13, a21, 8 ! 0
	lw	a14, a21, 4 ! 0
	li	a15, l.13418 ! 1535
	flw	fa1, a15, 0 ! 1535
	fsw	a3, fa1, 0 ! 1535
	li	a15, 0 ! 1536
	lw	a16, a6, 0 ! 1536
	sw	sp, a4, 0 ! 0
	sw	sp, a14, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a9, 16 ! 0
	sw	sp, a5, 20 ! 0
	sw	sp, a6, 24 ! 0
	sw	sp, a11, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a13, 36 ! 0
	sw	sp, a8, 40 ! 0
	sw	sp, a10, 44 ! 0
	sw	sp, a0, 48 ! 0
	sw	sp, a7, 52 ! 0
	sw	sp, a12, 56 ! 0
	sw	sp, a3, 60 ! 0
	mv	a1, a16
	mv	a21, a2
	mv	a2, a0
	mv	a0, a15
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60 ! 0
	flw	fa1, a0, 0 ! 1537
	li	a0, l.13260 ! 1539
	flw	fa0, a0, 0 ! 1539
	fsw	sp, fa1, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1539
	bne	a0, a1, be_else.18373
	li	a0, 0 ! 1541
	j	be_cont.18374
be_else.18373:
	li	a0, l.13436 ! 1540
	flw	fa1, a0, 0 ! 1540
	flw	fa0, sp, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
be_cont.18374:
	li	a1, 0 ! 1828
	bne	a0, a1, be_else.18375
	ret ! 1839
be_else.18375:
	lw	a0, sp, 56 ! 0
	lw	a0, a0, 0 ! 1829
	slli	a0, a0, 2 ! 1829
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 1829
	lw	a0, t0, 0 ! 1829
	lw	a1, sp, 48 ! 0
	lw	a1, a1, 0 ! 1830
	lw	a2, a0, 4 ! 539
	li	a3, 1 ! 1594
	sw	sp, a0, 72 ! 0
	bne	a2, a3, be_else.18377
	lw	a2, sp, 44 ! 0
	lw	a2, a2, 0 ! 1555
	li	a3, l.12849 ! 159
	flw	fa0, a3, 0 ! 159
	lw	a3, sp, 40 ! 0
	fsw	a3, fa0, 0 ! 152
	fsw	a3, fa0, 4 ! 153
	fsw	a3, fa0, 8 ! 154
	addi	a4, a2, -1 ! 1558
	addi	a2, a2, -1 ! 1558
	slli	a2, a2, 2 ! 1558
	add	t0, a1, a2 ! 1558
	flw	fa0, t0, 0 ! 1558
	sw	sp, a4, 76 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fiszero
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 117
	bne	a0, a1, be_else.18379
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fispos
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 118
	bne	a0, a1, be_else.18381
	li	a0, l.12813 ! 119
	flw	fa0, a0, 0 ! 119
	j	be_cont.18382
be_else.18381:
	li	a0, l.12811 ! 118
	flw	fa0, a0, 0 ! 118
be_cont.18382:
	j	be_cont.18380
be_else.18379:
	li	a0, l.12849 ! 117
	flw	fa0, a0, 0 ! 117
be_cont.18380:
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 76 ! 0
	slli	a0, a0, 2 ! 1558
	lw	a1, sp, 40 ! 0
	add	t0, a1, a0 ! 1558
	fsw	t0, fa0, 0 ! 1558
	j	be_cont.18378
be_else.18377:
	li	a1, 2 ! 1596
	bne	a2, a1, be_else.18383
	lw	a1, a0, 16 ! 1564
	flw	fa0, a1, 0 ! 295
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 0 ! 1564
	lw	a1, sp, 72 ! 0
	lw	a2, a1, 16 ! 1565
	flw	fa0, a2, 4 ! 305
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 4 ! 1565
	lw	a1, sp, 72 ! 0
	lw	a2, a1, 16 ! 1566
	flw	fa0, a2, 8 ! 315
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 8 ! 1566
	j	be_cont.18384
be_else.18383:
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
be_cont.18384:
be_cont.18378:
	lw	a0, sp, 72 ! 0
	lw	a1, sp, 28 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a0, 0 ! 1834
	lw	a1, sp, 24 ! 0
	lw	a1, a1, 0 ! 1834
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1834
	bne	a0, a1, be_else.18385
	lw	a0, sp, 40 ! 0
	flw	fa0, a0, 0 ! 193
	lw	a1, sp, 16 ! 0
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fispos
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1836
	bne	a0, a1, be_else.18386
	li	a0, l.12849 ! 1836
	flw	fa0, a0, 0 ! 1836
	j	be_cont.18387
be_else.18386:
	flw	fa0, sp, 88 ! 0
be_cont.18387:
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1837
	lw	a0, sp, 72 ! 0
	lw	a0, a0, 28 ! 1837
	flw	fa1, a0, 0 ! 365
	fmul.s	fa0, fa0, fa1, rne ! 1837
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 203
	lw	a1, sp, 0 ! 0
	flw	fa2, a1, 0 ! 203
	fmul.s	fa2, fa0, fa2, rne ! 203
	fadd.s	fa1, fa1, fa2, rne ! 203
	fsw	a0, fa1, 0 ! 203
	flw	fa1, a0, 4 ! 204
	flw	fa2, a1, 4 ! 204
	fmul.s	fa2, fa0, fa2, rne ! 204
	fadd.s	fa1, fa1, fa2, rne ! 204
	fsw	a0, fa1, 4 ! 204
	flw	fa1, a0, 8 ! 205
	flw	fa2, a1, 8 ! 205
	fmul.s	fa0, fa0, fa2, rne ! 205
	fadd.s	fa0, fa1, fa0, rne ! 205
	fsw	a0, fa0, 8 ! 205
	ret ! 205
be_else.18385:
	ret ! 1838
iter_trace_diffuse_rays.2812:
	lw	a4, a21, 52 ! 0
	lw	a5, a21, 48 ! 0
	lw	a6, a21, 44 ! 0
	lw	a7, a21, 40 ! 0
	lw	a8, a21, 36 ! 0
	lw	a9, a21, 32 ! 0
	lw	a10, a21, 28 ! 0
	lw	a11, a21, 24 ! 0
	lw	a12, a21, 20 ! 0
	lw	a13, a21, 16 ! 0
	lw	a14, a21, 12 ! 0
	lw	a15, a21, 8 ! 0
	lw	a16, a21, 4 ! 0
	li	a17, 0 ! 1845
	blt	a3, a17, bge_else.18390
	slli	a17, a3, 2 ! 1846
	add	t0, a0, a17 ! 1846
	lw	a17, t0, 0 ! 1846
	lw	a17, a17, 0 ! 1846
	flw	fa0, a17, 0 ! 193
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a17, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a17, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	sw	sp, a2, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a5, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a6, 16 ! 0
	sw	sp, a16, 20 ! 0
	sw	sp, a11, 24 ! 0
	sw	sp, a10, 28 ! 0
	sw	sp, a7, 32 ! 0
	sw	sp, a8, 36 ! 0
	sw	sp, a13, 40 ! 0
	sw	sp, a4, 44 ! 0
	sw	sp, a15, 48 ! 0
	sw	sp, a9, 52 ! 0
	sw	sp, a14, 56 ! 0
	sw	sp, a12, 60 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, a0, 72 ! 0
	sw	sp, a3, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fisneg
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18391
	lw	a0, sp, 76 ! 0
	slli	a1, a0, 2 ! 1853
	lw	a2, sp, 72 ! 0
	add	t0, a2, a1 ! 1853
	lw	a1, t0, 0 ! 1853
	li	a3, l.13801 ! 1853
	flw	fa0, a3, 0 ! 1853
	flw	fa1, sp, 64 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 60 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, a1, 88 ! 0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 1828
	bne	a0, a1, be_else.18393
	j	be_cont.18394
be_else.18393:
	lw	a0, sp, 56 ! 0
	lw	a0, a0, 0 ! 1829
	slli	a0, a0, 2 ! 1829
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 1829
	lw	a0, t0, 0 ! 1829
	lw	a1, sp, 88 ! 0
	lw	a1, a1, 0 ! 1830
	lw	a21, sp, 48 ! 0
	sw	sp, a0, 92 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 92 ! 0
	lw	a1, sp, 40 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a0, 0 ! 1834
	lw	a1, sp, 36 ! 0
	lw	a1, a1, 0 ! 1834
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1834
	bne	a0, a1, be_else.18395
	lw	a0, sp, 28 ! 0
	flw	fa0, a0, 0 ! 193
	lw	a1, sp, 24 ! 0
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fneg
	addi	sp, sp, -100
	lw	ra, sp, 96
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fispos
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 0 ! 1836
	bne	a0, a1, be_else.18397
	li	a0, l.12849 ! 1836
	flw	fa0, a0, 0 ! 1836
	j	be_cont.18398
be_else.18397:
	flw	fa0, sp, 96 ! 0
be_cont.18398:
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1837
	lw	a0, sp, 92 ! 0
	lw	a0, a0, 28 ! 1837
	flw	fa1, a0, 0 ! 365
	fmul.s	fa0, fa0, fa1, rne ! 1837
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 203
	lw	a1, sp, 16 ! 0
	flw	fa2, a1, 0 ! 203
	fmul.s	fa2, fa0, fa2, rne ! 203
	fadd.s	fa1, fa1, fa2, rne ! 203
	fsw	a0, fa1, 0 ! 203
	flw	fa1, a0, 4 ! 204
	flw	fa2, a1, 4 ! 204
	fmul.s	fa2, fa0, fa2, rne ! 204
	fadd.s	fa1, fa1, fa2, rne ! 204
	fsw	a0, fa1, 4 ! 204
	flw	fa1, a0, 8 ! 205
	flw	fa2, a1, 8 ! 205
	fmul.s	fa0, fa0, fa2, rne ! 205
	fadd.s	fa0, fa1, fa0, rne ! 205
	fsw	a0, fa0, 8 ! 205
	j	be_cont.18396
be_else.18395:
be_cont.18396:
be_cont.18394:
	j	be_cont.18392
be_else.18391:
	lw	a0, sp, 76 ! 0
	addi	a1, a0, 1 ! 1851
	slli	a1, a1, 2 ! 1851
	lw	a2, sp, 72 ! 0
	add	t0, a2, a1 ! 1851
	lw	a1, t0, 0 ! 1851
	li	a3, l.13778 ! 1851
	flw	fa0, a3, 0 ! 1851
	flw	fa1, sp, 64 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 60 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, a1, 112 ! 0
	mv	a0, a1
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 1828
	bne	a0, a1, be_else.18399
	j	be_cont.18400
be_else.18399:
	lw	a0, sp, 56 ! 0
	lw	a0, a0, 0 ! 1829
	slli	a0, a0, 2 ! 1829
	lw	a1, sp, 52 ! 0
	add	t0, a1, a0 ! 1829
	lw	a0, t0, 0 ! 1829
	lw	a1, sp, 112 ! 0
	lw	a1, a1, 0 ! 1830
	lw	a21, sp, 48 ! 0
	sw	sp, a0, 116 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a0, sp, 116 ! 0
	lw	a1, sp, 40 ! 0
	lw	a21, sp, 44 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a0, 0 ! 1834
	lw	a1, sp, 36 ! 0
	lw	a1, a1, 0 ! 1834
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a1, 0 ! 1834
	bne	a0, a1, be_else.18401
	lw	a0, sp, 28 ! 0
	flw	fa0, a0, 0 ! 193
	lw	a1, sp, 24 ! 0
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fneg
	addi	sp, sp, -124
	lw	ra, sp, 120
	fsw	sp, fa0, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fispos
	addi	sp, sp, -132
	lw	ra, sp, 128
	li	a1, 0 ! 1836
	bne	a0, a1, be_else.18403
	li	a0, l.12849 ! 1836
	flw	fa0, a0, 0 ! 1836
	j	be_cont.18404
be_else.18403:
	flw	fa0, sp, 120 ! 0
be_cont.18404:
	flw	fa1, sp, 104 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1837
	lw	a0, sp, 116 ! 0
	lw	a0, a0, 28 ! 1837
	flw	fa1, a0, 0 ! 365
	fmul.s	fa0, fa0, fa1, rne ! 1837
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 203
	lw	a1, sp, 16 ! 0
	flw	fa2, a1, 0 ! 203
	fmul.s	fa2, fa0, fa2, rne ! 203
	fadd.s	fa1, fa1, fa2, rne ! 203
	fsw	a0, fa1, 0 ! 203
	flw	fa1, a0, 4 ! 204
	flw	fa2, a1, 4 ! 204
	fmul.s	fa2, fa0, fa2, rne ! 204
	fadd.s	fa1, fa1, fa2, rne ! 204
	fsw	a0, fa1, 4 ! 204
	flw	fa1, a0, 8 ! 205
	flw	fa2, a1, 8 ! 205
	fmul.s	fa0, fa0, fa2, rne ! 205
	fadd.s	fa0, fa1, fa0, rne ! 205
	fsw	a0, fa0, 8 ! 205
	j	be_cont.18402
be_else.18401:
be_cont.18402:
be_cont.18400:
be_cont.18392:
	lw	a0, sp, 76 ! 0
	addi	a0, a0, -2 ! 1855
	li	a1, 0 ! 1845
	blt	a0, a1, bge_else.18405
	slli	a1, a0, 2 ! 1846
	lw	a2, sp, 72 ! 0
	add	t0, a2, a1 ! 1846
	lw	a1, t0, 0 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a3, sp, 12 ! 0
	flw	fa1, a3, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a3, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a3, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 128 ! 0
	sw	sp, a0, 136 ! 0
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fisneg
	addi	sp, sp, -144
	lw	ra, sp, 140
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18406
	lw	a0, sp, 136 ! 0
	slli	a1, a0, 2 ! 1853
	lw	a2, sp, 72 ! 0
	add	t0, a2, a1 ! 1853
	lw	a1, t0, 0 ! 1853
	li	a3, l.13801 ! 1853
	flw	fa0, a3, 0 ! 1853
	flw	fa1, sp, 128 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 140
	addi	sp, sp, 144
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -144
	lw	ra, sp, 140
	j	be_cont.18407
be_else.18406:
	lw	a0, sp, 136 ! 0
	addi	a1, a0, 1 ! 1851
	slli	a1, a1, 2 ! 1851
	lw	a2, sp, 72 ! 0
	add	t0, a2, a1 ! 1851
	lw	a1, t0, 0 ! 1851
	li	a3, l.13778 ! 1851
	flw	fa0, a3, 0 ! 1851
	flw	fa1, sp, 128 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 140
	addi	sp, sp, 144
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -144
	lw	ra, sp, 140
be_cont.18407:
	lw	a0, sp, 136 ! 0
	addi	a3, a0, -2 ! 1855
	lw	a0, sp, 72 ! 0
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18405:
	ret ! 1856
bge_else.18390:
	ret ! 1856
trace_diffuse_ray_80percent.2821:
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	li	a8, 0 ! 1872
	sw	sp, a1, 0 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a2, 20 ! 0
	sw	sp, a7, 24 ! 0
	sw	sp, a0, 28 ! 0
	bne	a0, a8, be_else.18410
	j	be_cont.18411
be_else.18410:
	lw	a8, a7, 0 ! 1873
	flw	fa0, a2, 0 ! 164
	fsw	a3, fa0, 0 ! 164
	flw	fa0, a2, 4 ! 165
	fsw	a3, fa0, 4 ! 165
	flw	fa0, a2, 8 ! 166
	fsw	a3, fa0, 8 ! 166
	lw	a9, a5, 0 ! 1216
	addi	a9, a9, -1 ! 1216
	sw	sp, a8, 32 ! 0
	mv	a1, a9
	mv	a0, a2
	mv	a21, a4
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a3, 118 ! 1865
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
be_cont.18411:
	li	a0, 1 ! 1876
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.18412
	j	be_cont.18413
be_else.18412:
	lw	a0, sp, 24 ! 0
	lw	a2, a0, 4 ! 1877
	lw	a3, sp, 20 ! 0
	flw	fa0, a3, 0 ! 164
	lw	a4, sp, 16 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a5, sp, 12 ! 0
	lw	a6, a5, 0 ! 1216
	addi	a6, a6, -1 ! 1216
	lw	a21, sp, 8 ! 0
	sw	sp, a2, 36 ! 0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a3, 118 ! 1865
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
be_cont.18413:
	li	a0, 2 ! 1880
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.18414
	j	be_cont.18415
be_else.18414:
	lw	a0, sp, 24 ! 0
	lw	a2, a0, 8 ! 1881
	lw	a3, sp, 20 ! 0
	flw	fa0, a3, 0 ! 164
	lw	a4, sp, 16 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a5, sp, 12 ! 0
	lw	a6, a5, 0 ! 1216
	addi	a6, a6, -1 ! 1216
	lw	a21, sp, 8 ! 0
	sw	sp, a2, 40 ! 0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a3, 118 ! 1865
	lw	a0, sp, 40 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
be_cont.18415:
	li	a0, 3 ! 1884
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.18416
	j	be_cont.18417
be_else.18416:
	lw	a0, sp, 24 ! 0
	lw	a2, a0, 12 ! 1885
	lw	a3, sp, 20 ! 0
	flw	fa0, a3, 0 ! 164
	lw	a4, sp, 16 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a5, sp, 12 ! 0
	lw	a6, a5, 0 ! 1216
	addi	a6, a6, -1 ! 1216
	lw	a21, sp, 8 ! 0
	sw	sp, a2, 44 ! 0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a3, 118 ! 1865
	lw	a0, sp, 44 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.18417:
	li	a0, 4 ! 1888
	lw	a1, sp, 28 ! 0
	bne	a1, a0, be_else.18418
	ret ! 1890
be_else.18418:
	lw	a0, sp, 24 ! 0
	lw	a0, a0, 16 ! 1889
	lw	a1, sp, 20 ! 0
	flw	fa0, a1, 0 ! 164
	lw	a2, sp, 16 ! 0
	fsw	a2, fa0, 0 ! 164
	flw	fa0, a1, 4 ! 165
	fsw	a2, fa0, 4 ! 165
	flw	fa0, a1, 8 ! 166
	fsw	a2, fa0, 8 ! 166
	lw	a2, sp, 12 ! 0
	lw	a2, a2, 0 ! 1216
	addi	a2, a2, -1 ! 1216
	lw	a21, sp, 8 ! 0
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a3, 118 ! 1865
	lw	a0, sp, 48 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_diffuse_using_1point.2825:
	lw	a2, a21, 32 ! 0
	lw	a3, a21, 28 ! 0
	lw	a4, a21, 24 ! 0
	lw	a5, a21, 20 ! 0
	lw	a6, a21, 16 ! 0
	lw	a7, a21, 12 ! 0
	lw	a8, a21, 8 ! 0
	lw	a9, a21, 4 ! 0
	lw	a10, a0, 20 ! 1898
	lw	a11, a0, 28 ! 499
	lw	a12, a0, 4 ! 529
	lw	a13, a0, 16 ! 470
	slli	a14, a1, 2 ! 1903
	add	t0, a10, a14 ! 1903
	lw	a10, t0, 0 ! 1903
	flw	fa0, a10, 0 ! 164
	fsw	a9, fa0, 0 ! 164
	flw	fa0, a10, 4 ! 165
	fsw	a9, fa0, 4 ! 165
	flw	fa0, a10, 8 ! 166
	fsw	a9, fa0, 8 ! 166
	lw	a0, a0, 24 ! 1904
	lw	a0, a0, 0 ! 515
	slli	a10, a1, 2 ! 1906
	add	t0, a11, a10 ! 1906
	lw	a10, t0, 0 ! 1906
	slli	a11, a1, 2 ! 1907
	add	t0, a12, a11 ! 1907
	lw	a11, t0, 0 ! 1907
	li	a12, 0 ! 1872
	sw	sp, a9, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a13, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a7, 16 ! 0
	sw	sp, a2, 20 ! 0
	sw	sp, a10, 24 ! 0
	sw	sp, a4, 28 ! 0
	sw	sp, a6, 32 ! 0
	sw	sp, a3, 36 ! 0
	sw	sp, a11, 40 ! 0
	sw	sp, a8, 44 ! 0
	sw	sp, a0, 48 ! 0
	bne	a0, a12, be_else.18420
	j	be_cont.18421
be_else.18420:
	lw	a12, a8, 0 ! 1873
	flw	fa0, a11, 0 ! 164
	fsw	a3, fa0, 0 ! 164
	flw	fa0, a11, 4 ! 165
	fsw	a3, fa0, 4 ! 165
	flw	fa0, a11, 8 ! 166
	fsw	a3, fa0, 8 ! 166
	lw	a14, a6, 0 ! 1216
	addi	a14, a14, -1 ! 1216
	sw	sp, a12, 52 ! 0
	mv	a1, a14
	mv	a0, a11
	mv	a21, a4
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 472 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a2, sp, 24 ! 0
	flw	fa1, a2, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a2, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a2, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fisneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18422
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 472 ! 1853
	li	a2, l.13801 ! 1853
	flw	fa0, a2, 0 ! 1853
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	j	be_cont.18423
be_else.18422:
	lw	a0, sp, 52 ! 0
	lw	a1, a0, 476 ! 1851
	li	a2, l.13778 ! 1851
	flw	fa0, a2, 0 ! 1851
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
be_cont.18423:
	li	a3, 116 ! 1855
	lw	a0, sp, 52 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
be_cont.18421:
	li	a0, 1 ! 1876
	lw	a1, sp, 48 ! 0
	bne	a1, a0, be_else.18424
	j	be_cont.18425
be_else.18424:
	lw	a0, sp, 44 ! 0
	lw	a2, a0, 4 ! 1877
	lw	a3, sp, 40 ! 0
	flw	fa0, a3, 0 ! 164
	lw	a4, sp, 36 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a5, sp, 32 ! 0
	lw	a6, a5, 0 ! 1216
	addi	a6, a6, -1 ! 1216
	lw	a21, sp, 28 ! 0
	sw	sp, a2, 64 ! 0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 472 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a2, sp, 24 ! 0
	flw	fa1, a2, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a2, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a2, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fisneg
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18427
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 472 ! 1853
	li	a2, l.13801 ! 1853
	flw	fa0, a2, 0 ! 1853
	flw	fa1, sp, 72 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	j	be_cont.18428
be_else.18427:
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 476 ! 1851
	li	a2, l.13778 ! 1851
	flw	fa0, a2, 0 ! 1851
	flw	fa1, sp, 72 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
be_cont.18428:
	li	a3, 116 ! 1855
	lw	a0, sp, 64 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
be_cont.18425:
	li	a0, 2 ! 1880
	lw	a1, sp, 48 ! 0
	bne	a1, a0, be_else.18429
	j	be_cont.18430
be_else.18429:
	lw	a0, sp, 44 ! 0
	lw	a2, a0, 8 ! 1881
	lw	a3, sp, 40 ! 0
	flw	fa0, a3, 0 ! 164
	lw	a4, sp, 36 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a5, sp, 32 ! 0
	lw	a6, a5, 0 ! 1216
	addi	a6, a6, -1 ! 1216
	lw	a21, sp, 28 ! 0
	sw	sp, a2, 80 ! 0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 80 ! 0
	lw	a1, a0, 472 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a2, sp, 24 ! 0
	flw	fa1, a2, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a2, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a2, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fisneg
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18432
	lw	a0, sp, 80 ! 0
	lw	a1, a0, 472 ! 1853
	li	a2, l.13801 ! 1853
	flw	fa0, a2, 0 ! 1853
	flw	fa1, sp, 88 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	j	be_cont.18433
be_else.18432:
	lw	a0, sp, 80 ! 0
	lw	a1, a0, 476 ! 1851
	li	a2, l.13778 ! 1851
	flw	fa0, a2, 0 ! 1851
	flw	fa1, sp, 88 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
be_cont.18433:
	li	a3, 116 ! 1855
	lw	a0, sp, 80 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
be_cont.18430:
	li	a0, 3 ! 1884
	lw	a1, sp, 48 ! 0
	bne	a1, a0, be_else.18434
	j	be_cont.18435
be_else.18434:
	lw	a0, sp, 44 ! 0
	lw	a2, a0, 12 ! 1885
	lw	a3, sp, 40 ! 0
	flw	fa0, a3, 0 ! 164
	lw	a4, sp, 36 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a5, sp, 32 ! 0
	lw	a6, a5, 0 ! 1216
	addi	a6, a6, -1 ! 1216
	lw	a21, sp, 28 ! 0
	sw	sp, a2, 96 ! 0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 96 ! 0
	lw	a1, a0, 472 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a2, sp, 24 ! 0
	flw	fa1, a2, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a2, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a2, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fisneg
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18437
	lw	a0, sp, 96 ! 0
	lw	a1, a0, 472 ! 1853
	li	a2, l.13801 ! 1853
	flw	fa0, a2, 0 ! 1853
	flw	fa1, sp, 104 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	j	be_cont.18438
be_else.18437:
	lw	a0, sp, 96 ! 0
	lw	a1, a0, 476 ! 1851
	li	a2, l.13778 ! 1851
	flw	fa0, a2, 0 ! 1851
	flw	fa1, sp, 104 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
be_cont.18438:
	li	a3, 116 ! 1855
	lw	a0, sp, 96 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
be_cont.18435:
	li	a0, 4 ! 1888
	lw	a1, sp, 48 ! 0
	bne	a1, a0, be_else.18439
	j	be_cont.18440
be_else.18439:
	lw	a0, sp, 44 ! 0
	lw	a0, a0, 16 ! 1889
	lw	a1, sp, 40 ! 0
	flw	fa0, a1, 0 ! 164
	lw	a2, sp, 36 ! 0
	fsw	a2, fa0, 0 ! 164
	flw	fa0, a1, 4 ! 165
	fsw	a2, fa0, 4 ! 165
	flw	fa0, a1, 8 ! 166
	fsw	a2, fa0, 8 ! 166
	lw	a2, sp, 32 ! 0
	lw	a2, a2, 0 ! 1216
	addi	a2, a2, -1 ! 1216
	lw	a21, sp, 28 ! 0
	sw	sp, a0, 112 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	lw	a0, sp, 112 ! 0
	lw	a1, a0, 472 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a2, sp, 24 ! 0
	flw	fa1, a2, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a2, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a2, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fisneg
	addi	sp, sp, -132
	lw	ra, sp, 128
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18442
	lw	a0, sp, 112 ! 0
	lw	a1, a0, 472 ! 1853
	li	a2, l.13801 ! 1853
	flw	fa0, a2, 0 ! 1853
	flw	fa1, sp, 120 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	j	be_cont.18443
be_else.18442:
	lw	a0, sp, 112 ! 0
	lw	a1, a0, 476 ! 1851
	li	a2, l.13778 ! 1851
	flw	fa0, a2, 0 ! 1851
	flw	fa1, sp, 120 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
be_cont.18443:
	li	a3, 116 ! 1855
	lw	a0, sp, 112 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
be_cont.18440:
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 1908
	lw	a1, sp, 8 ! 0
	add	t0, a1, a0 ! 1908
	lw	a1, t0, 0 ! 1908
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	vecaccumv.2518
calc_diffuse_using_5points.2828:
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a7, a0, 2 ! 1917
	add	t0, a1, a7 ! 1917
	lw	a1, t0, 0 ! 1917
	lw	a1, a1, 20 ! 1917
	addi	a7, a0, -1 ! 1918
	slli	a7, a7, 2 ! 1918
	add	t0, a2, a7 ! 1918
	lw	a7, t0, 0 ! 1918
	lw	a7, a7, 20 ! 1918
	slli	a8, a0, 2 ! 1919
	add	t0, a2, a8 ! 1919
	lw	a8, t0, 0 ! 1919
	lw	a8, a8, 20 ! 1919
	addi	a9, a0, 1 ! 1920
	slli	a9, a9, 2 ! 1920
	add	t0, a2, a9 ! 1920
	lw	a9, t0, 0 ! 1920
	lw	a9, a9, 20 ! 1920
	slli	a10, a0, 2 ! 1921
	add	t0, a3, a10 ! 1921
	lw	a3, t0, 0 ! 1921
	lw	a3, a3, 20 ! 1921
	slli	a10, a4, 2 ! 1923
	add	t0, a1, a10 ! 1923
	lw	a1, t0, 0 ! 1923
	flw	fa0, a1, 0 ! 164
	fsw	a6, fa0, 0 ! 164
	flw	fa0, a1, 4 ! 165
	fsw	a6, fa0, 4 ! 165
	flw	fa0, a1, 8 ! 166
	fsw	a6, fa0, 8 ! 166
	slli	a1, a4, 2 ! 1924
	add	t0, a7, a1 ! 1924
	lw	a1, t0, 0 ! 1924
	flw	fa0, a6, 0 ! 210
	flw	fa1, a1, 0 ! 210
	fadd.s	fa0, fa0, fa1, rne ! 210
	fsw	a6, fa0, 0 ! 210
	flw	fa0, a6, 4 ! 211
	flw	fa1, a1, 4 ! 211
	fadd.s	fa0, fa0, fa1, rne ! 211
	fsw	a6, fa0, 4 ! 211
	flw	fa0, a6, 8 ! 212
	flw	fa1, a1, 8 ! 212
	fadd.s	fa0, fa0, fa1, rne ! 212
	fsw	a6, fa0, 8 ! 212
	slli	a1, a4, 2 ! 1925
	add	t0, a8, a1 ! 1925
	lw	a1, t0, 0 ! 1925
	flw	fa0, a6, 0 ! 210
	flw	fa1, a1, 0 ! 210
	fadd.s	fa0, fa0, fa1, rne ! 210
	fsw	a6, fa0, 0 ! 210
	flw	fa0, a6, 4 ! 211
	flw	fa1, a1, 4 ! 211
	fadd.s	fa0, fa0, fa1, rne ! 211
	fsw	a6, fa0, 4 ! 211
	flw	fa0, a6, 8 ! 212
	flw	fa1, a1, 8 ! 212
	fadd.s	fa0, fa0, fa1, rne ! 212
	fsw	a6, fa0, 8 ! 212
	slli	a1, a4, 2 ! 1926
	add	t0, a9, a1 ! 1926
	lw	a1, t0, 0 ! 1926
	flw	fa0, a6, 0 ! 210
	flw	fa1, a1, 0 ! 210
	fadd.s	fa0, fa0, fa1, rne ! 210
	fsw	a6, fa0, 0 ! 210
	flw	fa0, a6, 4 ! 211
	flw	fa1, a1, 4 ! 211
	fadd.s	fa0, fa0, fa1, rne ! 211
	fsw	a6, fa0, 4 ! 211
	flw	fa0, a6, 8 ! 212
	flw	fa1, a1, 8 ! 212
	fadd.s	fa0, fa0, fa1, rne ! 212
	fsw	a6, fa0, 8 ! 212
	slli	a1, a4, 2 ! 1927
	add	t0, a3, a1 ! 1927
	lw	a1, t0, 0 ! 1927
	flw	fa0, a6, 0 ! 210
	flw	fa1, a1, 0 ! 210
	fadd.s	fa0, fa0, fa1, rne ! 210
	fsw	a6, fa0, 0 ! 210
	flw	fa0, a6, 4 ! 211
	flw	fa1, a1, 4 ! 211
	fadd.s	fa0, fa0, fa1, rne ! 211
	fsw	a6, fa0, 4 ! 211
	flw	fa0, a6, 8 ! 212
	flw	fa1, a1, 8 ! 212
	fadd.s	fa0, fa0, fa1, rne ! 212
	fsw	a6, fa0, 8 ! 212
	slli	a0, a0, 2 ! 1929
	add	t0, a2, a0 ! 1929
	lw	a0, t0, 0 ! 1929
	lw	a0, a0, 16 ! 1929
	slli	a1, a4, 2 ! 1930
	add	t0, a0, a1 ! 1930
	lw	a1, t0, 0 ! 1930
	mv	a2, a6
	mv	a0, a5
	j	vecaccumv.2518
do_without_neighbors.2834:
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	li	a6, 4 ! 1936
	blt	a6, a1, bge_else.18444
	lw	a6, a0, 8 ! 1938
	li	a7, 0 ! 1939
	slli	a8, a1, 2 ! 1939
	add	t0, a6, a8 ! 1939
	lw	a6, t0, 0 ! 1939
	blt	a6, a7, bge_else.18445
	lw	a6, a0, 12 ! 1940
	slli	a7, a1, 2 ! 1941
	add	t0, a6, a7 ! 1941
	lw	a6, t0, 0 ! 1941
	li	a7, 0 ! 1941
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	bne	a6, a7, be_else.18446
	j	be_cont.18447
be_else.18446:
	lw	a6, a0, 20 ! 1942
	lw	a7, a0, 28 ! 499
	lw	a8, a0, 4 ! 529
	lw	a9, a0, 16 ! 470
	slli	a10, a1, 2 ! 1903
	add	t0, a6, a10 ! 1903
	lw	a6, t0, 0 ! 1903
	flw	fa0, a6, 0 ! 164
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a6, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a6, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a6, a0, 24 ! 1904
	lw	a6, a6, 0 ! 515
	slli	a10, a1, 2 ! 1906
	add	t0, a7, a10 ! 1906
	lw	a7, t0, 0 ! 1906
	slli	a10, a1, 2 ! 1907
	add	t0, a8, a10 ! 1907
	lw	a8, t0, 0 ! 1907
	sw	sp, a4, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a9, 24 ! 0
	mv	a1, a7
	mv	a0, a6
	mv	a21, a2
	mv	a2, a8
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 12 ! 0
	slli	a1, a0, 2 ! 1908
	lw	a2, sp, 24 ! 0
	add	t0, a2, a1 ! 1908
	lw	a1, t0, 0 ! 1908
	lw	a2, sp, 20 ! 0
	lw	a3, sp, 16 ! 0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	vecaccumv.2518
	addi	sp, sp, -32
	lw	ra, sp, 28
be_cont.18447:
	lw	a0, sp, 12 ! 0
	addi	a1, a0, 1 ! 1944
	li	a0, 4 ! 1936
	blt	a0, a1, bge_else.18448
	lw	a0, sp, 8 ! 0
	lw	a2, a0, 8 ! 1938
	li	a3, 0 ! 1939
	slli	a4, a1, 2 ! 1939
	add	t0, a2, a4 ! 1939
	lw	a2, t0, 0 ! 1939
	blt	a2, a3, bge_else.18449
	lw	a2, a0, 12 ! 1940
	slli	a3, a1, 2 ! 1941
	add	t0, a2, a3 ! 1941
	lw	a2, t0, 0 ! 1941
	li	a3, 0 ! 1941
	sw	sp, a1, 28 ! 0
	bne	a2, a3, be_else.18450
	j	be_cont.18451
be_else.18450:
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.18451:
	lw	a0, sp, 28 ! 0
	addi	a1, a0, 1 ! 1944
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18449:
	ret ! 1945
bge_else.18448:
	ret ! 1946
bge_else.18445:
	ret ! 1945
bge_else.18444:
	ret ! 1946
try_exploit_neighbors.2850:
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	slli	a9, a0, 2 ! 1988
	add	t0, a3, a9 ! 1988
	lw	a9, t0, 0 ! 1988
	li	a10, 4 ! 1989
	blt	a10, a5, bge_else.18456
	li	a10, 0 ! 1992
	lw	a11, a9, 8 ! 1992
	slli	a12, a5, 2 ! 1964
	add	t0, a11, a12 ! 1964
	lw	a11, t0, 0 ! 1964
	blt	a11, a10, bge_else.18457
	slli	a10, a0, 2 ! 1970
	add	t0, a3, a10 ! 1970
	lw	a10, t0, 0 ! 1970
	lw	a10, a10, 8 ! 1970
	slli	a11, a5, 2 ! 478
	add	t0, a10, a11 ! 478
	lw	a10, t0, 0 ! 478
	slli	a11, a0, 2 ! 1972
	add	t0, a2, a11 ! 1972
	lw	a11, t0, 0 ! 1972
	lw	a11, a11, 8 ! 1972
	slli	a12, a5, 2 ! 478
	add	t0, a11, a12 ! 478
	lw	a11, t0, 0 ! 478
	bne	a11, a10, be_else.18458
	slli	a11, a0, 2 ! 1973
	add	t0, a4, a11 ! 1973
	lw	a11, t0, 0 ! 1973
	lw	a11, a11, 8 ! 1973
	slli	a12, a5, 2 ! 478
	add	t0, a11, a12 ! 478
	lw	a11, t0, 0 ! 478
	bne	a11, a10, be_else.18460
	addi	a11, a0, -1 ! 1974
	slli	a11, a11, 2 ! 1974
	add	t0, a3, a11 ! 1974
	lw	a11, t0, 0 ! 1974
	lw	a11, a11, 8 ! 1974
	slli	a12, a5, 2 ! 478
	add	t0, a11, a12 ! 478
	lw	a11, t0, 0 ! 478
	bne	a11, a10, be_else.18462
	addi	a11, a0, 1 ! 1975
	slli	a11, a11, 2 ! 1975
	add	t0, a3, a11 ! 1975
	lw	a11, t0, 0 ! 1975
	lw	a11, a11, 8 ! 1975
	slli	a12, a5, 2 ! 478
	add	t0, a11, a12 ! 478
	lw	a11, t0, 0 ! 478
	bne	a11, a10, be_else.18464
	li	a10, 1 ! 1976
	j	be_cont.18465
be_else.18464:
	li	a10, 0 ! 1977
be_cont.18465:
	j	be_cont.18463
be_else.18462:
	li	a10, 0 ! 1978
be_cont.18463:
	j	be_cont.18461
be_else.18460:
	li	a10, 0 ! 1979
be_cont.18461:
	j	be_cont.18459
be_else.18458:
	li	a10, 0 ! 1980
be_cont.18459:
	li	a11, 0 ! 1994
	bne	a10, a11, be_else.18466
	slli	a0, a0, 2 ! 2006
	add	t0, a3, a0 ! 2006
	lw	a0, t0, 0 ! 2006
	li	a1, 4 ! 1936
	blt	a1, a5, bge_else.18467
	lw	a1, a0, 8 ! 1938
	li	a2, 0 ! 1939
	slli	a3, a5, 2 ! 1939
	add	t0, a1, a3 ! 1939
	lw	a1, t0, 0 ! 1939
	blt	a1, a2, bge_else.18468
	lw	a1, a0, 12 ! 1940
	slli	a2, a5, 2 ! 1941
	add	t0, a1, a2 ! 1941
	lw	a1, t0, 0 ! 1941
	li	a2, 0 ! 1941
	sw	sp, a0, 0 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a5, 8 ! 0
	bne	a1, a2, be_else.18469
	j	be_cont.18470
be_else.18469:
	mv	a1, a5
	mv	a21, a8
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
be_cont.18470:
	lw	a0, sp, 8 ! 0
	addi	a1, a0, 1 ! 1944
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18468:
	ret ! 1945
bge_else.18467:
	ret ! 1946
be_else.18466:
	lw	a8, a9, 12 ! 1997
	slli	a9, a5, 2 ! 1998
	add	t0, a8, a9 ! 1998
	lw	a8, t0, 0 ! 1998
	li	a9, 0 ! 1998
	sw	sp, a1, 12 ! 0
	sw	sp, a21, 16 ! 0
	sw	sp, a7, 20 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a4, 24 ! 0
	sw	sp, a2, 28 ! 0
	sw	sp, a3, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a5, 8 ! 0
	bne	a8, a9, be_else.18473
	j	be_cont.18474
be_else.18473:
	mv	a1, a2
	mv	a21, a7
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
be_cont.18474:
	lw	a0, sp, 8 ! 0
	addi	a1, a0, 1 ! 2003
	lw	a0, sp, 36 ! 0
	slli	a2, a0, 2 ! 1988
	lw	a3, sp, 32 ! 0
	add	t0, a3, a2 ! 1988
	lw	a2, t0, 0 ! 1988
	li	a4, 4 ! 1989
	blt	a4, a1, bge_else.18475
	li	a4, 0 ! 1992
	lw	a5, a2, 8 ! 1992
	slli	a6, a1, 2 ! 478
	add	t0, a5, a6 ! 478
	lw	a5, t0, 0 ! 478
	blt	a5, a4, bge_else.18476
	slli	a4, a0, 2 ! 1970
	add	t0, a3, a4 ! 1970
	lw	a4, t0, 0 ! 1970
	lw	a4, a4, 8 ! 1970
	slli	a5, a1, 2 ! 1964
	add	t0, a4, a5 ! 1964
	lw	a4, t0, 0 ! 1964
	slli	a5, a0, 2 ! 1972
	lw	a6, sp, 28 ! 0
	add	t0, a6, a5 ! 1972
	lw	a5, t0, 0 ! 1972
	lw	a5, a5, 8 ! 1972
	slli	a7, a1, 2 ! 1964
	add	t0, a5, a7 ! 1964
	lw	a5, t0, 0 ! 1964
	bne	a5, a4, be_else.18477
	slli	a5, a0, 2 ! 1973
	lw	a7, sp, 24 ! 0
	add	t0, a7, a5 ! 1973
	lw	a5, t0, 0 ! 1973
	lw	a5, a5, 8 ! 1973
	slli	a8, a1, 2 ! 1964
	add	t0, a5, a8 ! 1964
	lw	a5, t0, 0 ! 1964
	bne	a5, a4, be_else.18479
	addi	a5, a0, -1 ! 1974
	slli	a5, a5, 2 ! 1974
	add	t0, a3, a5 ! 1974
	lw	a5, t0, 0 ! 1974
	lw	a5, a5, 8 ! 1974
	slli	a8, a1, 2 ! 1964
	add	t0, a5, a8 ! 1964
	lw	a5, t0, 0 ! 1964
	bne	a5, a4, be_else.18481
	addi	a5, a0, 1 ! 1975
	slli	a5, a5, 2 ! 1975
	add	t0, a3, a5 ! 1975
	lw	a5, t0, 0 ! 1975
	lw	a5, a5, 8 ! 1975
	slli	a8, a1, 2 ! 1964
	add	t0, a5, a8 ! 1964
	lw	a5, t0, 0 ! 1964
	bne	a5, a4, be_else.18483
	li	a4, 1 ! 1976
	j	be_cont.18484
be_else.18483:
	li	a4, 0 ! 1977
be_cont.18484:
	j	be_cont.18482
be_else.18481:
	li	a4, 0 ! 1978
be_cont.18482:
	j	be_cont.18480
be_else.18479:
	li	a4, 0 ! 1979
be_cont.18480:
	j	be_cont.18478
be_else.18477:
	li	a4, 0 ! 1980
be_cont.18478:
	li	a5, 0 ! 1994
	bne	a4, a5, be_else.18485
	slli	a0, a0, 2 ! 2006
	add	t0, a3, a0 ! 2006
	lw	a0, t0, 0 ! 2006
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.18485:
	lw	a2, a2, 12 ! 1997
	slli	a4, a1, 2 ! 1998
	add	t0, a2, a4 ! 1998
	lw	a2, t0, 0 ! 1998
	li	a4, 0 ! 1998
	sw	sp, a1, 40 ! 0
	bne	a2, a4, be_else.18486
	j	be_cont.18487
be_else.18486:
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 20 ! 0
	mv	a4, a1
	mv	a1, a6
	mv	a20, a3
	mv	a3, a2
	mv	a2, a20
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
be_cont.18487:
	lw	a0, sp, 40 ! 0
	addi	a5, a0, 1 ! 2003
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 28 ! 0
	lw	a3, sp, 32 ! 0
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18476:
	ret ! 2007
bge_else.18475:
	ret ! 2008
bge_else.18457:
	ret ! 2007
bge_else.18456:
	ret ! 2008
write_rgb.2861:
	lw	a0, a21, 4 ! 0
	flw	fa0, a0, 0 ! 2035
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.18492
	li	a1, 0 ! 2030
	blt	a0, a1, bge_else.18494
	j	bge_cont.18495
bge_else.18494:
	li	a0, 0 ! 2030
bge_cont.18495:
	j	bge_cont.18493
bge_else.18492:
	li	a0, 255 ! 2030
bge_cont.18493:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2036
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	flw	fa0, a0, 4 ! 2037
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.18496
	li	a1, 0 ! 2030
	blt	a0, a1, bge_else.18498
	j	bge_cont.18499
bge_else.18498:
	li	a0, 0 ! 2030
bge_cont.18499:
	j	bge_cont.18497
bge_else.18496:
	li	a0, 255 ! 2030
bge_cont.18497:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2038
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	flw	fa0, a0, 8 ! 2039
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.18500
	li	a1, 0 ! 2030
	blt	a0, a1, bge_else.18502
	j	bge_cont.18503
bge_else.18502:
	li	a0, 0 ! 2030
bge_cont.18503:
	j	bge_cont.18501
bge_else.18500:
	li	a0, 255 ! 2030
bge_cont.18501:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 2040
	j	min_caml_print_char
pretrace_diffuse_rays.2863:
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	li	a9, 4 ! 2052
	blt	a9, a1, bge_else.18504
	lw	a9, a0, 8 ! 2055
	slli	a10, a1, 2 ! 1964
	add	t0, a9, a10 ! 1964
	lw	a9, t0, 0 ! 1964
	li	a10, 0 ! 2056
	blt	a9, a10, bge_else.18505
	lw	a9, a0, 12 ! 2058
	slli	a10, a1, 2 ! 2059
	add	t0, a9, a10 ! 2059
	lw	a9, t0, 0 ! 2059
	li	a10, 0 ! 2059
	sw	sp, a21, 0 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a5, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a7, 24 ! 0
	sw	sp, a8, 28 ! 0
	sw	sp, a1, 32 ! 0
	bne	a9, a10, be_else.18506
	j	be_cont.18507
be_else.18506:
	lw	a9, a0, 24 ! 2060
	lw	a9, a9, 0 ! 515
	li	a10, l.12849 ! 159
	flw	fa0, a10, 0 ! 159
	fsw	a8, fa0, 0 ! 152
	fsw	a8, fa0, 4 ! 153
	fsw	a8, fa0, 8 ! 154
	lw	a10, a0, 28 ! 2065
	lw	a11, a0, 4 ! 529
	slli	a9, a9, 2 ! 2068
	add	t0, a7, a9 ! 2068
	lw	a9, t0, 0 ! 2068
	slli	a12, a1, 2 ! 2069
	add	t0, a10, a12 ! 2069
	lw	a10, t0, 0 ! 2069
	slli	a12, a1, 2 ! 2070
	add	t0, a11, a12 ! 2070
	lw	a11, t0, 0 ! 2070
	flw	fa0, a11, 0 ! 164
	fsw	a3, fa0, 0 ! 164
	flw	fa0, a11, 4 ! 165
	fsw	a3, fa0, 4 ! 165
	flw	fa0, a11, 8 ! 166
	fsw	a3, fa0, 8 ! 166
	lw	a12, a5, 0 ! 1216
	addi	a12, a12, -1 ! 1216
	sw	sp, a0, 36 ! 0
	sw	sp, a11, 40 ! 0
	sw	sp, a10, 44 ! 0
	sw	sp, a9, 48 ! 0
	mv	a1, a12
	mv	a0, a11
	mv	a21, a4
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a3, 118 ! 1865
	lw	a0, sp, 48 ! 0
	lw	a1, sp, 44 ! 0
	lw	a2, sp, 40 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 36 ! 0
	lw	a1, a0, 20 ! 2071
	lw	a2, sp, 32 ! 0
	slli	a3, a2, 2 ! 2072
	add	t0, a1, a3 ! 2072
	lw	a1, t0, 0 ! 2072
	lw	a3, sp, 28 ! 0
	flw	fa0, a3, 0 ! 164
	fsw	a1, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a1, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a1, fa0, 8 ! 166
be_cont.18507:
	lw	a1, sp, 32 ! 0
	addi	a1, a1, 1 ! 2074
	li	a2, 4 ! 2052
	blt	a2, a1, bge_else.18508
	lw	a2, a0, 8 ! 2055
	slli	a3, a1, 2 ! 478
	add	t0, a2, a3 ! 478
	lw	a2, t0, 0 ! 478
	li	a3, 0 ! 2056
	blt	a2, a3, bge_else.18509
	lw	a2, a0, 12 ! 2058
	slli	a3, a1, 2 ! 2059
	add	t0, a2, a3 ! 2059
	lw	a2, t0, 0 ! 2059
	li	a3, 0 ! 2059
	sw	sp, a1, 52 ! 0
	bne	a2, a3, be_else.18510
	j	be_cont.18511
be_else.18510:
	lw	a2, a0, 24 ! 2060
	lw	a2, a2, 0 ! 515
	li	a3, l.12849 ! 159
	flw	fa0, a3, 0 ! 159
	lw	a3, sp, 28 ! 0
	fsw	a3, fa0, 0 ! 152
	fsw	a3, fa0, 4 ! 153
	fsw	a3, fa0, 8 ! 154
	lw	a4, a0, 28 ! 2065
	lw	a5, a0, 4 ! 529
	slli	a2, a2, 2 ! 2068
	lw	a6, sp, 24 ! 0
	add	t0, a6, a2 ! 2068
	lw	a2, t0, 0 ! 2068
	slli	a6, a1, 2 ! 2069
	add	t0, a4, a6 ! 2069
	lw	a4, t0, 0 ! 2069
	slli	a6, a1, 2 ! 2070
	add	t0, a5, a6 ! 2070
	lw	a5, t0, 0 ! 2070
	flw	fa0, a5, 0 ! 164
	lw	a6, sp, 20 ! 0
	fsw	a6, fa0, 0 ! 164
	flw	fa0, a5, 4 ! 165
	fsw	a6, fa0, 4 ! 165
	flw	fa0, a5, 8 ! 166
	fsw	a6, fa0, 8 ! 166
	lw	a6, sp, 16 ! 0
	lw	a6, a6, 0 ! 1216
	addi	a6, a6, -1 ! 1216
	lw	a21, sp, 12 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a5, 56 ! 0
	sw	sp, a4, 60 ! 0
	sw	sp, a2, 64 ! 0
	mv	a1, a6
	mv	a0, a5
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 472 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a2, sp, 60 ! 0
	flw	fa1, a2, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a2, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a2, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fisneg
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18513
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 472 ! 1853
	li	a2, l.13801 ! 1853
	flw	fa0, a2, 0 ! 1853
	flw	fa1, sp, 72 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	j	be_cont.18514
be_else.18513:
	lw	a0, sp, 64 ! 0
	lw	a1, a0, 476 ! 1851
	li	a2, l.13778 ! 1851
	flw	fa0, a2, 0 ! 1851
	flw	fa1, sp, 72 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
be_cont.18514:
	li	a3, 116 ! 1855
	lw	a0, sp, 64 ! 0
	lw	a1, sp, 60 ! 0
	lw	a2, sp, 56 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 36 ! 0
	lw	a1, a0, 20 ! 2071
	lw	a2, sp, 52 ! 0
	slli	a3, a2, 2 ! 2072
	add	t0, a1, a3 ! 2072
	lw	a1, t0, 0 ! 2072
	lw	a3, sp, 28 ! 0
	flw	fa0, a3, 0 ! 164
	fsw	a1, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a1, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a1, fa0, 8 ! 166
be_cont.18511:
	lw	a1, sp, 52 ! 0
	addi	a1, a1, 1 ! 2074
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18509:
	ret ! 2075
bge_else.18508:
	ret ! 2076
bge_else.18505:
	ret ! 2075
bge_else.18504:
	ret ! 2076
pretrace_pixels.2866:
	lw	a3, a21, 64 ! 0
	lw	a4, a21, 60 ! 0
	lw	a5, a21, 56 ! 0
	lw	a6, a21, 52 ! 0
	lw	a7, a21, 48 ! 0
	lw	a8, a21, 44 ! 0
	lw	a9, a21, 40 ! 0
	lw	a10, a21, 36 ! 0
	lw	a11, a21, 32 ! 0
	lw	a12, a21, 28 ! 0
	lw	a13, a21, 24 ! 0
	lw	a14, a21, 20 ! 0
	lw	a15, a21, 16 ! 0
	lw	a16, a21, 12 ! 0
	lw	a17, a21, 8 ! 0
	lw	a18, a21, 4 ! 0
	li	a19, 0 ! 2082
	blt	a1, a19, bge_else.18519
	flw	fa3, a10, 0 ! 2084
	lw	a10, a16, 0 ! 2084
	sub	a10, a1, a10 ! 2084
	sw	sp, a21, 0 ! 0
	sw	sp, a13, 4 ! 0
	sw	sp, a15, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a8, 16 ! 0
	sw	sp, a14, 20 ! 0
	sw	sp, a6, 24 ! 0
	sw	sp, a17, 28 ! 0
	sw	sp, a18, 32 ! 0
	sw	sp, a2, 36 ! 0
	sw	sp, a4, 40 ! 0
	sw	sp, a0, 44 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, a7, 52 ! 0
	sw	sp, a3, 56 ! 0
	sw	sp, a11, 60 ! 0
	fsw	sp, fa2, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	sw	sp, a12, 80 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, a9, 96 ! 0
	fsw	sp, fa3, 104 ! 0
	mv	a0, a10
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_float_of_int
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2084
	lw	a0, sp, 96 ! 0
	flw	fa1, a0, 0 ! 2085
	fmul.s	fa1, fa0, fa1, rne ! 2085
	flw	fa2, sp, 88 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 2085
	lw	a1, sp, 80 ! 0
	fsw	a1, fa1, 0 ! 2085
	flw	fa1, a0, 4 ! 2086
	fmul.s	fa1, fa0, fa1, rne ! 2086
	flw	fa3, sp, 72 ! 0
	fadd.s	fa1, fa1, fa3, rne ! 2086
	fsw	a1, fa1, 4 ! 2086
	flw	fa1, a0, 8 ! 2087
	fmul.s	fa0, fa0, fa1, rne ! 2087
	flw	fa1, sp, 64 ! 0
	fadd.s	fa0, fa0, fa1, rne ! 2087
	fsw	a1, fa0, 8 ! 2087
	li	a0, 0 ! 2088
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	vecunit_sgn.2494
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a0, l.12849 ! 159
	flw	fa0, a0, 0 ! 159
	lw	a0, sp, 60 ! 0
	fsw	a0, fa0, 0 ! 152
	fsw	a0, fa0, 4 ! 153
	fsw	a0, fa0, 8 ! 154
	lw	a1, sp, 56 ! 0
	flw	fa0, a1, 0 ! 164
	lw	a2, sp, 52 ! 0
	fsw	a2, fa0, 0 ! 164
	flw	fa0, a1, 4 ! 165
	fsw	a2, fa0, 4 ! 165
	flw	fa0, a1, 8 ! 166
	fsw	a2, fa0, 8 ! 166
	li	a1, 0 ! 2093
	li	a2, l.12811 ! 2093
	flw	fa0, a2, 0 ! 2093
	lw	a2, sp, 48 ! 0
	slli	a3, a2, 2 ! 2093
	lw	a4, sp, 44 ! 0
	add	t0, a4, a3 ! 2093
	lw	a3, t0, 0 ! 2093
	li	a5, l.12849 ! 2093
	flw	fa1, a5, 0 ! 2093
	lw	a5, sp, 80 ! 0
	lw	a21, sp, 40 ! 0
	mv	a2, a3
	mv	a0, a1
	mv	a1, a5
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a0, sp, 48 ! 0
	slli	a1, a0, 2 ! 2094
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 2094
	lw	a1, t0, 0 ! 2094
	lw	a1, a1, 0 ! 2094
	lw	a3, sp, 60 ! 0
	flw	fa0, a3, 0 ! 164
	fsw	a1, fa0, 0 ! 164
	flw	fa0, a3, 4 ! 165
	fsw	a1, fa0, 4 ! 165
	flw	fa0, a3, 8 ! 166
	fsw	a1, fa0, 8 ! 166
	slli	a1, a0, 2 ! 2095
	add	t0, a2, a1 ! 2095
	lw	a1, t0, 0 ! 2095
	lw	a1, a1, 24 ! 2095
	lw	a3, sp, 36 ! 0
	sw	a1, a3, 0 ! 522
	slli	a1, a0, 2 ! 2098
	add	t0, a2, a1 ! 2098
	lw	a1, t0, 0 ! 2098
	lw	a4, a1, 8 ! 2098
	lw	a4, a4, 0 ! 478
	li	a5, 0 ! 2056
	blt	a4, a5, bge_else.18522
	lw	a4, a1, 12 ! 2058
	lw	a4, a4, 0 ! 2059
	li	a5, 0 ! 2059
	sw	sp, a1, 112 ! 0
	bne	a4, a5, be_else.18524
	j	be_cont.18525
be_else.18524:
	lw	a4, a1, 24 ! 2060
	lw	a4, a4, 0 ! 515
	li	a5, l.12849 ! 159
	flw	fa0, a5, 0 ! 159
	lw	a5, sp, 32 ! 0
	fsw	a5, fa0, 0 ! 152
	fsw	a5, fa0, 4 ! 153
	fsw	a5, fa0, 8 ! 154
	lw	a6, a1, 28 ! 2065
	lw	a7, a1, 4 ! 529
	slli	a4, a4, 2 ! 2068
	lw	a8, sp, 28 ! 0
	add	t0, a8, a4 ! 2068
	lw	a4, t0, 0 ! 2068
	lw	a6, a6, 0 ! 2069
	lw	a7, a7, 0 ! 2070
	flw	fa0, a7, 0 ! 164
	lw	a8, sp, 24 ! 0
	fsw	a8, fa0, 0 ! 164
	flw	fa0, a7, 4 ! 165
	fsw	a8, fa0, 4 ! 165
	flw	fa0, a7, 8 ! 166
	fsw	a8, fa0, 8 ! 166
	lw	a8, sp, 20 ! 0
	lw	a8, a8, 0 ! 1216
	addi	a8, a8, -1 ! 1216
	lw	a21, sp, 16 ! 0
	sw	sp, a7, 116 ! 0
	sw	sp, a6, 120 ! 0
	sw	sp, a4, 124 ! 0
	mv	a1, a8
	mv	a0, a7
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 124 ! 0
	lw	a1, a0, 472 ! 1846
	lw	a1, a1, 0 ! 1846
	flw	fa0, a1, 0 ! 193
	lw	a2, sp, 120 ! 0
	flw	fa1, a2, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 4 ! 193
	flw	fa2, a2, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a1, 8 ! 193
	flw	fa2, a2, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	fsw	sp, fa0, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fisneg
	addi	sp, sp, -140
	lw	ra, sp, 136
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.18526
	lw	a0, sp, 124 ! 0
	lw	a1, a0, 472 ! 1853
	li	a2, l.13801 ! 1853
	flw	fa0, a2, 0 ! 1853
	flw	fa1, sp, 128 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	j	be_cont.18527
be_else.18526:
	lw	a0, sp, 124 ! 0
	lw	a1, a0, 476 ! 1851
	li	a2, l.13778 ! 1851
	flw	fa0, a2, 0 ! 1851
	flw	fa1, sp, 128 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
be_cont.18527:
	li	a3, 116 ! 1855
	lw	a0, sp, 124 ! 0
	lw	a1, sp, 120 ! 0
	lw	a2, sp, 116 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a0, sp, 112 ! 0
	lw	a1, a0, 20 ! 2071
	lw	a1, a1, 0 ! 2072
	lw	a2, sp, 32 ! 0
	flw	fa0, a2, 0 ! 164
	fsw	a1, fa0, 0 ! 164
	flw	fa0, a2, 4 ! 165
	fsw	a1, fa0, 4 ! 165
	flw	fa0, a2, 8 ! 166
	fsw	a1, fa0, 8 ! 166
be_cont.18525:
	li	a1, 1 ! 2074
	lw	a0, sp, 112 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	j	bge_cont.18523
bge_else.18522:
bge_cont.18523:
	lw	a0, sp, 48 ! 0
	addi	a1, a0, -1 ! 2100
	lw	a0, sp, 36 ! 0
	addi	a0, a0, 1 ! 129
	li	a2, 5 ! 130
	blt	a0, a2, bge_else.18528
	addi	a2, a0, -5 ! 130
	j	bge_cont.18529
bge_else.18528:
	mv	a2, a0 ! 130
bge_cont.18529:
	flw	fa0, sp, 88 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18519:
	ret ! 2102
pretrace_line.2873:
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	flw	fa0, a5, 0 ! 2107
	lw	a5, a8, 4 ! 2107
	sub	a1, a1, a5 ! 2107
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a4, 20 ! 0
	fsw	sp, fa0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_float_of_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2107
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 2110
	fmul.s	fa1, fa0, fa1, rne ! 2110
	lw	a1, sp, 16 ! 0
	flw	fa2, a1, 0 ! 2110
	fadd.s	fa1, fa1, fa2, rne ! 2110
	flw	fa2, a0, 4 ! 2111
	fmul.s	fa2, fa0, fa2, rne ! 2111
	flw	fa3, a1, 4 ! 2111
	fadd.s	fa2, fa2, fa3, rne ! 2111
	flw	fa3, a0, 8 ! 2112
	fmul.s	fa0, fa0, fa3, rne ! 2112
	flw	fa3, a1, 8 ! 2112
	fadd.s	fa0, fa0, fa3, rne ! 2112
	lw	a0, sp, 12 ! 0
	lw	a0, a0, 0 ! 2113
	addi	a1, a0, -1 ! 2113
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_pixel.2877:
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	lw	a12, a8, 0 ! 2123
	blt	a0, a12, bge_else.18531
	ret ! 2138
bge_else.18531:
	slli	a12, a0, 2 ! 2126
	add	t0, a3, a12 ! 2126
	lw	a12, t0, 0 ! 2126
	lw	a12, a12, 0 ! 2126
	flw	fa0, a12, 0 ! 164
	fsw	a7, fa0, 0 ! 164
	flw	fa0, a12, 4 ! 165
	fsw	a7, fa0, 4 ! 165
	flw	fa0, a12, 8 ! 166
	fsw	a7, fa0, 8 ! 166
	lw	a12, a8, 4 ! 1951
	addi	a13, a1, 1 ! 1951
	blt	a13, a12, bge_else.18533
	li	a12, 0 ! 1959
	j	bge_cont.18534
bge_else.18533:
	li	a12, 0 ! 1952
	blt	a12, a1, bge_else.18535
	li	a12, 0 ! 1958
	j	bge_cont.18536
bge_else.18535:
	lw	a12, a8, 0 ! 1953
	addi	a13, a0, 1 ! 1953
	blt	a13, a12, bge_else.18537
	li	a12, 0 ! 1957
	j	bge_cont.18538
bge_else.18537:
	li	a12, 0 ! 1954
	blt	a12, a0, bge_else.18539
	li	a12, 0 ! 1956
	j	bge_cont.18540
bge_else.18539:
	li	a12, 1 ! 1955
bge_cont.18540:
bge_cont.18538:
bge_cont.18536:
bge_cont.18534:
	li	a13, 0 ! 2129
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a2, 12 ! 0
	sw	sp, a6, 16 ! 0
	sw	sp, a9, 20 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a3, 28 ! 0
	sw	sp, a8, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a7, 40 ! 0
	bne	a12, a13, be_else.18541
	slli	a10, a0, 2 ! 2132
	add	t0, a3, a10 ! 2132
	lw	a10, t0, 0 ! 2132
	li	a12, 0 ! 2132
	lw	a13, a10, 8 ! 1938
	li	a14, 0 ! 1939
	lw	a13, a13, 0 ! 1939
	blt	a13, a14, bge_else.18543
	lw	a13, a10, 12 ! 1940
	lw	a13, a13, 0 ! 1941
	li	a14, 0 ! 1941
	sw	sp, a10, 44 ! 0
	bne	a13, a14, be_else.18545
	j	be_cont.18546
be_else.18545:
	mv	a1, a12
	mv	a0, a10
	mv	a21, a11
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.18546:
	li	a1, 1 ! 1944
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	bge_cont.18544
bge_else.18543:
bge_cont.18544:
	j	be_cont.18542
be_else.18541:
	li	a11, 0 ! 2130
	slli	a12, a0, 2 ! 1988
	add	t0, a3, a12 ! 1988
	lw	a12, t0, 0 ! 1988
	li	a13, 0 ! 1992
	lw	a14, a12, 8 ! 1992
	lw	a14, a14, 0 ! 478
	blt	a14, a13, bge_else.18547
	slli	a13, a0, 2 ! 1970
	add	t0, a3, a13 ! 1970
	lw	a13, t0, 0 ! 1970
	lw	a13, a13, 8 ! 1970
	lw	a13, a13, 0 ! 1964
	slli	a14, a0, 2 ! 1972
	add	t0, a2, a14 ! 1972
	lw	a14, t0, 0 ! 1972
	lw	a14, a14, 8 ! 1972
	lw	a14, a14, 0 ! 1964
	bne	a14, a13, be_else.18549
	slli	a14, a0, 2 ! 1973
	add	t0, a4, a14 ! 1973
	lw	a14, t0, 0 ! 1973
	lw	a14, a14, 8 ! 1973
	lw	a14, a14, 0 ! 1964
	bne	a14, a13, be_else.18551
	addi	a14, a0, -1 ! 1974
	slli	a14, a14, 2 ! 1974
	add	t0, a3, a14 ! 1974
	lw	a14, t0, 0 ! 1974
	lw	a14, a14, 8 ! 1974
	lw	a14, a14, 0 ! 1964
	bne	a14, a13, be_else.18553
	addi	a14, a0, 1 ! 1975
	slli	a14, a14, 2 ! 1975
	add	t0, a3, a14 ! 1975
	lw	a14, t0, 0 ! 1975
	lw	a14, a14, 8 ! 1975
	lw	a14, a14, 0 ! 1964
	bne	a14, a13, be_else.18555
	li	a13, 1 ! 1976
	j	be_cont.18556
be_else.18555:
	li	a13, 0 ! 1977
be_cont.18556:
	j	be_cont.18554
be_else.18553:
	li	a13, 0 ! 1978
be_cont.18554:
	j	be_cont.18552
be_else.18551:
	li	a13, 0 ! 1979
be_cont.18552:
	j	be_cont.18550
be_else.18549:
	li	a13, 0 ! 1980
be_cont.18550:
	li	a14, 0 ! 1994
	bne	a13, a14, be_else.18557
	slli	a10, a0, 2 ! 2006
	add	t0, a3, a10 ! 2006
	lw	a10, t0, 0 ! 2006
	mv	a1, a11
	mv	a0, a10
	mv	a21, a9
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	be_cont.18558
be_else.18557:
	lw	a12, a12, 12 ! 1997
	lw	a12, a12, 0 ! 1998
	li	a13, 0 ! 1998
	bne	a12, a13, be_else.18559
	j	be_cont.18560
be_else.18559:
	mv	a1, a2
	mv	a21, a10
	mv	a2, a3
	mv	a3, a4
	mv	a4, a11
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.18560:
	li	a5, 1 ! 2003
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 12 ! 0
	lw	a3, sp, 28 ! 0
	lw	a4, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.18558:
	j	bge_cont.18548
bge_else.18547:
bge_cont.18548:
be_cont.18542:
	lw	a0, sp, 40 ! 0
	flw	fa0, a0, 0 ! 2035
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_int_of_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.18561
	li	a1, 0 ! 2030
	blt	a0, a1, bge_else.18563
	j	bge_cont.18564
bge_else.18563:
	li	a0, 0 ! 2030
bge_cont.18564:
	j	bge_cont.18562
bge_else.18561:
	li	a0, 255 ! 2030
bge_cont.18562:
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 32 ! 2036
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_char
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40 ! 0
	flw	fa0, a0, 4 ! 2037
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_int_of_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.18565
	li	a1, 0 ! 2030
	blt	a0, a1, bge_else.18567
	j	bge_cont.18568
bge_else.18567:
	li	a0, 0 ! 2030
bge_cont.18568:
	j	bge_cont.18566
bge_else.18565:
	li	a0, 255 ! 2030
bge_cont.18566:
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 32 ! 2038
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_char
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40 ! 0
	flw	fa0, a0, 8 ! 2039
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_int_of_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.18569
	li	a1, 0 ! 2030
	blt	a0, a1, bge_else.18571
	j	bge_cont.18572
bge_else.18571:
	li	a0, 0 ! 2030
bge_cont.18572:
	j	bge_cont.18570
bge_else.18569:
	li	a0, 255 ! 2030
bge_cont.18570:
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 10 ! 2040
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_char
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 36 ! 0
	addi	a0, a0, 1 ! 2137
	lw	a1, sp, 32 ! 0
	lw	a2, a1, 0 ! 2123
	blt	a0, a2, bge_else.18573
	ret ! 2138
bge_else.18573:
	slli	a2, a0, 2 ! 2126
	lw	a3, sp, 28 ! 0
	add	t0, a3, a2 ! 2126
	lw	a2, t0, 0 ! 2126
	lw	a2, a2, 0 ! 2126
	flw	fa0, a2, 0 ! 164
	lw	a4, sp, 40 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a2, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a2, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a2, a1, 4 ! 1951
	lw	a4, sp, 24 ! 0
	addi	a5, a4, 1 ! 1951
	blt	a5, a2, bge_else.18575
	li	a1, 0 ! 1959
	j	bge_cont.18576
bge_else.18575:
	li	a2, 0 ! 1952
	blt	a2, a4, bge_else.18577
	li	a1, 0 ! 1958
	j	bge_cont.18578
bge_else.18577:
	lw	a1, a1, 0 ! 1953
	addi	a2, a0, 1 ! 1953
	blt	a2, a1, bge_else.18579
	li	a1, 0 ! 1957
	j	bge_cont.18580
bge_else.18579:
	li	a1, 0 ! 1954
	blt	a1, a0, bge_else.18581
	li	a1, 0 ! 1956
	j	bge_cont.18582
bge_else.18581:
	li	a1, 1 ! 1955
bge_cont.18582:
bge_cont.18580:
bge_cont.18578:
bge_cont.18576:
	li	a2, 0 ! 2129
	sw	sp, a0, 48 ! 0
	bne	a1, a2, be_else.18583
	slli	a1, a0, 2 ! 2132
	add	t0, a3, a1 ! 2132
	lw	a1, t0, 0 ! 2132
	li	a2, 0 ! 2132
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	j	be_cont.18584
be_else.18583:
	li	a5, 0 ! 2130
	lw	a2, sp, 12 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	mv	a20, a4
	mv	a4, a1
	mv	a1, a20
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
be_cont.18584:
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48 ! 0
	addi	a0, a0, 1 ! 2137
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 12 ! 0
	lw	a3, sp, 28 ! 0
	lw	a4, sp, 8 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_line.2883:
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	lw	a12, a10, 4 ! 2144
	blt	a0, a12, bge_else.18585
	ret ! 2151
bge_else.18585:
	lw	a12, a10, 4 ! 2146
	addi	a12, a12, -1 ! 2146
	sw	sp, a21, 0 ! 0
	sw	sp, a9, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a5, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a6, 28 ! 0
	sw	sp, a11, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a8, 40 ! 0
	sw	sp, a2, 44 ! 0
	sw	sp, a10, 48 ! 0
	blt	a0, a12, bge_else.18587
	j	bge_cont.18588
bge_else.18587:
	addi	a12, a0, 1 ! 2147
	mv	a2, a4
	mv	a1, a12
	mv	a0, a3
	mv	a21, a9
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
bge_cont.18588:
	li	a0, 0 ! 2149
	lw	a1, sp, 48 ! 0
	lw	a2, a1, 0 ! 2123
	blt	a0, a2, bge_else.18589
	j	bge_cont.18590
bge_else.18589:
	lw	a3, sp, 44 ! 0
	lw	a2, a3, 0 ! 2126
	lw	a2, a2, 0 ! 2126
	flw	fa0, a2, 0 ! 164
	lw	a4, sp, 40 ! 0
	fsw	a4, fa0, 0 ! 164
	flw	fa0, a2, 4 ! 165
	fsw	a4, fa0, 4 ! 165
	flw	fa0, a2, 8 ! 166
	fsw	a4, fa0, 8 ! 166
	lw	a2, a1, 4 ! 1951
	lw	a4, sp, 36 ! 0
	addi	a5, a4, 1 ! 1951
	blt	a5, a2, bge_else.18591
	li	a2, 0 ! 1959
	j	bge_cont.18592
bge_else.18591:
	li	a2, 0 ! 1952
	blt	a2, a4, bge_else.18593
	li	a2, 0 ! 1958
	j	bge_cont.18594
bge_else.18593:
	lw	a2, a1, 0 ! 1953
	li	a5, 1 ! 1953
	blt	a5, a2, bge_else.18595
	li	a2, 0 ! 1957
	j	bge_cont.18596
bge_else.18595:
	li	a2, 0 ! 1956
bge_cont.18596:
bge_cont.18594:
bge_cont.18592:
	li	a5, 0 ! 2129
	bne	a2, a5, be_else.18597
	lw	a0, a3, 0 ! 2132
	li	a2, 0 ! 2132
	lw	a21, sp, 32 ! 0
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	j	be_cont.18598
be_else.18597:
	li	a5, 0 ! 2130
	lw	a2, sp, 24 ! 0
	lw	a6, sp, 20 ! 0
	lw	a21, sp, 28 ! 0
	mv	a1, a4
	mv	a4, a6
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
be_cont.18598:
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, 1 ! 2137
	lw	a1, sp, 36 ! 0
	lw	a2, sp, 24 ! 0
	lw	a3, sp, 44 ! 0
	lw	a4, sp, 20 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
bge_cont.18590:
	lw	a0, sp, 36 ! 0
	addi	a1, a0, 1 ! 2150
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 2 ! 129
	li	a2, 5 ! 130
	blt	a0, a2, bge_else.18599
	addi	a2, a0, -5 ! 130
	j	bge_cont.18600
bge_else.18599:
	mv	a2, a0 ! 130
bge_cont.18600:
	lw	a0, sp, 48 ! 0
	lw	a3, a0, 4 ! 2144
	blt	a1, a3, bge_else.18601
	j	bge_cont.18602
bge_else.18601:
	lw	a0, a0, 4 ! 2146
	addi	a0, a0, -1 ! 2146
	sw	sp, a2, 52 ! 0
	sw	sp, a1, 56 ! 0
	blt	a1, a0, bge_else.18603
	j	bge_cont.18604
bge_else.18603:
	addi	a0, a1, 1 ! 2147
	lw	a3, sp, 24 ! 0
	lw	a21, sp, 4 ! 0
	mv	a1, a0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
bge_cont.18604:
	li	a0, 0 ! 2149
	lw	a1, sp, 56 ! 0
	lw	a2, sp, 44 ! 0
	lw	a3, sp, 20 ! 0
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0
	addi	a0, a0, 1 ! 2150
	lw	a1, sp, 52 ! 0
	addi	a1, a1, 2 ! 129
	li	a2, 5 ! 130
	blt	a1, a2, bge_else.18605
	addi	a4, a1, -5 ! 130
	j	bge_cont.18606
bge_else.18605:
	mv	a4, a1 ! 130
bge_cont.18606:
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 24 ! 0
	lw	a3, sp, 44 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
bge_cont.18602:
	ret ! 2150
create_float5x3array.2889:
	li	a0, 3 ! 2161
	li	a1, l.12849 ! 2161
	flw	fa0, a1, 0 ! 2161
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_float_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	mv	a1, a0
	li	a0, 5 ! 2162
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 3 ! 2163
	li	a2, l.12849 ! 2163
	flw	fa0, a2, 0 ! 2163
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 4 ! 2163
	li	a0, 3 ! 2164
	li	a2, l.12849 ! 2164
	flw	fa0, a2, 0 ! 2164
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 8 ! 2164
	li	a0, 3 ! 2165
	li	a2, l.12849 ! 2165
	flw	fa0, a2, 0 ! 2165
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 12 ! 2165
	li	a0, 3 ! 2166
	li	a2, l.12849 ! 2166
	flw	fa0, a2, 0 ! 2166
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 16 ! 2166
	mv	a0, a1 ! 2167
	ret ! 2167
init_line_elements.2893:
	li	a2, 0 ! 2186
	blt	a1, a2, bge_else.18608
	li	a2, 3 ! 2173
	li	a3, l.12849 ! 2173
	flw	fa0, a3, 0 ! 2173
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	create_float5x3array.2889
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 5 ! 2175
	li	a2, 0 ! 2175
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 5 ! 2176
	li	a2, 0 ! 2176
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	create_float5x3array.2889
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	create_float5x3array.2889
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 1 ! 2179
	li	a2, 0 ! 2179
	sw	sp, a0, 28 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, a0, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	create_float5x3array.2889
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, hp ! 2181
	addi	hp, hp, 32 ! 2181
	sw	a1, a0, 28 ! 2181
	lw	a0, sp, 32 ! 0
	sw	a1, a0, 24 ! 2181
	lw	a0, sp, 28 ! 0
	sw	a1, a0, 20 ! 2181
	lw	a0, sp, 24 ! 0
	sw	a1, a0, 16 ! 2181
	lw	a0, sp, 20 ! 0
	sw	a1, a0, 12 ! 2181
	lw	a0, sp, 16 ! 0
	sw	a1, a0, 8 ! 2181
	lw	a0, sp, 12 ! 0
	sw	a1, a0, 4 ! 2181
	lw	a0, sp, 8 ! 0
	sw	a1, a0, 0 ! 2181
	mv	a0, a1 ! 2181
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 2187
	lw	a3, sp, 0 ! 0
	add	t0, a3, a2 ! 2187
	sw	t0, a0, 0 ! 2187
	addi	a0, a1, -1 ! 2188
	li	a1, 0 ! 2186
	blt	a0, a1, bge_else.18609
	li	a1, 3 ! 2173
	li	a2, l.12849 ! 2173
	flw	fa0, a2, 0 ! 2173
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	create_float5x3array.2889
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 5 ! 2175
	li	a2, 0 ! 2175
	sw	sp, a0, 44 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 5 ! 2176
	li	a2, 0 ! 2176
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	sw	sp, a0, 52 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	create_float5x3array.2889
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, a0, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	create_float5x3array.2889
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 1 ! 2179
	li	a2, 0 ! 2179
	sw	sp, a0, 60 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, a0, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	create_float5x3array.2889
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, hp ! 2181
	addi	hp, hp, 32 ! 2181
	sw	a1, a0, 28 ! 2181
	lw	a0, sp, 64 ! 0
	sw	a1, a0, 24 ! 2181
	lw	a0, sp, 60 ! 0
	sw	a1, a0, 20 ! 2181
	lw	a0, sp, 56 ! 0
	sw	a1, a0, 16 ! 2181
	lw	a0, sp, 52 ! 0
	sw	a1, a0, 12 ! 2181
	lw	a0, sp, 48 ! 0
	sw	a1, a0, 8 ! 2181
	lw	a0, sp, 44 ! 0
	sw	a1, a0, 4 ! 2181
	lw	a0, sp, 40 ! 0
	sw	a1, a0, 0 ! 2181
	mv	a0, a1 ! 2181
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 2187
	lw	a3, sp, 0 ! 0
	add	t0, a3, a2 ! 2187
	sw	t0, a0, 0 ! 2187
	addi	a1, a1, -1 ! 2188
	mv	a0, a3
	j	init_line_elements.2893
bge_else.18609:
	mv	a0, a3 ! 2190
	ret ! 2190
bge_else.18608:
	ret ! 2190
calc_dirvec.2903:
	lw	a3, a21, 4 ! 0
	li	a4, 5 ! 2223
	blt	a0, a4, bge_else.18610
	sw	sp, a2, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fsqr
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fsqr
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 2224
	li	a0, l.12811 ! 2224
	flw	fa1, a0, 0 ! 2224
	fadd.s	fa0, fa0, fa1, rne ! 2224
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 16 ! 0
	fdiv.s	fa1, fa1, fa0, rne ! 2225
	flw	fa2, sp, 24 ! 0
	fdiv.s	fa2, fa2, fa0, rne ! 2226
	li	a0, l.12811 ! 2227
	flw	fa3, a0, 0 ! 2227
	fdiv.s	fa0, fa3, fa0, rne ! 2227
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 2 ! 2230
	lw	a1, sp, 4 ! 0
	add	t0, a1, a0 ! 2230
	lw	a0, t0, 0 ! 2230
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 2231
	add	t0, a0, a2 ! 2231
	lw	a2, t0, 0 ! 2231
	lw	a2, a2, 0 ! 2231
	fsw	a2, fa1, 0 ! 145
	fsw	a2, fa2, 4 ! 146
	fsw	a2, fa0, 8 ! 147
	addi	a2, a1, 40 ! 2232
	slli	a2, a2, 2 ! 2232
	add	t0, a0, a2 ! 2232
	lw	a2, t0, 0 ! 2232
	lw	a2, a2, 0 ! 2232
	fsw	sp, fa2, 40 ! 0
	sw	sp, a0, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, a2, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fneg
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 64 ! 0
	flw	fa1, sp, 72 ! 0
	fsw	a0, fa1, 0 ! 145
	flw	fa2, sp, 56 ! 0
	fsw	a0, fa2, 4 ! 146
	fsw	a0, fa0, 8 ! 147
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 80 ! 2233
	slli	a1, a1, 2 ! 2233
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 2233
	lw	a1, t0, 0 ! 2233
	lw	a1, a1, 0 ! 2233
	sw	sp, a1, 80 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_fneg
	addi	sp, sp, -88
	lw	ra, sp, 84
	flw	fa1, sp, 40 ! 0
	fsw	sp, fa0, 88 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fneg
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 80 ! 0
	flw	fa1, sp, 56 ! 0
	fsw	a0, fa1, 0 ! 145
	flw	fa2, sp, 88 ! 0
	fsw	a0, fa2, 4 ! 146
	fsw	a0, fa0, 8 ! 147
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 1 ! 2234
	slli	a1, a1, 2 ! 2234
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 2234
	lw	a1, t0, 0 ! 2234
	lw	a1, a1, 0 ! 2234
	flw	fa0, sp, 72 ! 0
	sw	sp, a1, 96 ! 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_fneg
	addi	sp, sp, -104
	lw	ra, sp, 100
	flw	fa1, sp, 40 ! 0
	fsw	sp, fa0, 104 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fneg
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 112 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fneg
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a0, sp, 96 ! 0
	flw	fa1, sp, 104 ! 0
	fsw	a0, fa1, 0 ! 145
	flw	fa1, sp, 112 ! 0
	fsw	a0, fa1, 4 ! 146
	fsw	a0, fa0, 8 ! 147
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 41 ! 2235
	slli	a1, a1, 2 ! 2235
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 2235
	lw	a1, t0, 0 ! 2235
	lw	a1, a1, 0 ! 2235
	flw	fa0, sp, 72 ! 0
	sw	sp, a1, 120 ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_fneg
	addi	sp, sp, -128
	lw	ra, sp, 124
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 128 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fneg
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a0, sp, 120 ! 0
	flw	fa1, sp, 128 ! 0
	fsw	a0, fa1, 0 ! 145
	fsw	a0, fa0, 4 ! 146
	flw	fa0, sp, 40 ! 0
	fsw	a0, fa0, 8 ! 147
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 81 ! 2236
	slli	a0, a0, 2 ! 2236
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 2236
	lw	a0, t0, 0 ! 2236
	lw	a0, a0, 0 ! 2236
	flw	fa1, sp, 56 ! 0
	sw	sp, a0, 136 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fneg
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 136 ! 0
	fsw	a0, fa0, 0 ! 145
	flw	fa0, sp, 72 ! 0
	fsw	a0, fa0, 4 ! 146
	flw	fa0, sp, 40 ! 0
	fsw	a0, fa0, 8 ! 147
	ret ! 147
bge_else.18610:
	fmul.s	fa0, fa1, fa1, rne ! 2214
	li	a3, l.13708 ! 2214
	flw	fa1, a3, 0 ! 2214
	fadd.s	fa0, fa0, fa1, rne ! 2214
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a21, 140 ! 0
	fsw	sp, fa3, 144 ! 0
	sw	sp, a0, 152 ! 0
	fsw	sp, fa2, 160 ! 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_sqrt
	addi	sp, sp, -172
	lw	ra, sp, 168
	li	a0, l.12811 ! 2215
	flw	fa1, a0, 0 ! 2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215
	fsw	sp, fa0, 168 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_atan
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 160 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2217
	fsw	sp, fa0, 176 ! 0
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_sin
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 176 ! 0
	fsw	sp, fa0, 184 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_cos
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 184 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 2209
	flw	fa1, sp, 168 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2218
	lw	a0, sp, 152 ! 0
	addi	a0, a0, 1 ! 2239
	fmul.s	fa1, fa0, fa0, rne ! 2214
	li	a1, l.13708 ! 2214
	flw	fa2, a1, 0 ! 2214
	fadd.s	fa1, fa1, fa2, rne ! 2214
	fsw	sp, fa0, 192 ! 0
	sw	sp, a0, 200 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	min_caml_sqrt
	addi	sp, sp, -208
	lw	ra, sp, 204
	li	a0, l.12811 ! 2215
	flw	fa1, a0, 0 ! 2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215
	fsw	sp, fa0, 208 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_atan
	addi	sp, sp, -220
	lw	ra, sp, 216
	flw	fa1, sp, 144 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2217
	fsw	sp, fa0, 216 ! 0
	sw	sp, ra, 224
	addi	sp, sp, 228
	jal	min_caml_sin
	addi	sp, sp, -228
	lw	ra, sp, 224
	flw	fa1, sp, 216 ! 0
	fsw	sp, fa0, 224 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	min_caml_cos
	addi	sp, sp, -236
	lw	ra, sp, 232
	flw	fa1, sp, 224 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 2209
	flw	fa1, sp, 208 ! 0
	fmul.s	fa1, fa0, fa1, rne ! 2218
	flw	fa0, sp, 192 ! 0
	flw	fa2, sp, 160 ! 0
	flw	fa3, sp, 144 ! 0
	lw	a0, sp, 200 ! 0
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 140 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_dirvecs.2911:
	lw	a3, a21, 4 ! 0
	li	a4, 0 ! 2244
	blt	a0, a4, bge_else.18620
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.14334 ! 2246
	flw	fa1, a0, 0 ! 2246
	fmul.s	fa0, fa0, fa1, rne ! 2246
	li	a0, l.14336 ! 2246
	flw	fa1, a0, 0 ! 2246
	fsub.s	fa2, fa0, fa1, rne ! 2246
	li	a0, 0 ! 2247
	li	a1, l.12849 ! 2247
	flw	fa0, a1, 0 ! 2247
	li	a1, l.12849 ! 2247
	flw	fa1, a1, 0 ! 2247
	flw	fa3, sp, 8 ! 0
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 16 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.14334 ! 2249
	flw	fa1, a0, 0 ! 2249
	fmul.s	fa0, fa0, fa1, rne ! 2249
	li	a0, l.13708 ! 2249
	flw	fa1, a0, 0 ! 2249
	fadd.s	fa2, fa0, fa1, rne ! 2249
	li	a0, 0 ! 2250
	li	a1, l.12849 ! 2250
	flw	fa0, a1, 0 ! 2250
	li	a1, l.12849 ! 2250
	flw	fa1, a1, 0 ! 2250
	lw	a1, sp, 16 ! 0
	addi	a2, a1, 2 ! 2250
	flw	fa3, sp, 8 ! 0
	lw	a3, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a1, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 2252
	lw	a1, sp, 20 ! 0
	addi	a1, a1, 1 ! 129
	li	a2, 5 ! 130
	blt	a1, a2, bge_else.18621
	addi	a1, a1, -5 ! 130
	j	bge_cont.18622
bge_else.18621:
bge_cont.18622:
	flw	fa0, sp, 8 ! 0
	lw	a2, sp, 16 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18620:
	ret ! 2253
calc_dirvec_rows.2916:
	lw	a3, a21, 4 ! 0
	li	a4, 0 ! 2258
	blt	a0, a4, bge_else.18624
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_float_of_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, l.14334 ! 2259
	flw	fa1, a0, 0 ! 2259
	fmul.s	fa0, fa0, fa1, rne ! 2259
	li	a0, l.14336 ! 2259
	flw	fa1, a0, 0 ! 2259
	fsub.s	fa0, fa0, fa1, rne ! 2259
	li	a0, 4 ! 2260
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 2261
	lw	a1, sp, 12 ! 0
	addi	a1, a1, 2 ! 129
	li	a2, 5 ! 130
	blt	a1, a2, bge_else.18625
	addi	a1, a1, -5 ! 130
	j	bge_cont.18626
bge_else.18625:
bge_cont.18626:
	lw	a2, sp, 8 ! 0
	addi	a2, a2, 4 ! 2261
	li	a3, 0 ! 2258
	blt	a0, a3, bge_else.18627
	sw	sp, a0, 20 ! 0
	sw	sp, a2, 24 ! 0
	sw	sp, a1, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_float_of_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.14334 ! 2259
	flw	fa1, a0, 0 ! 2259
	fmul.s	fa0, fa0, fa1, rne ! 2259
	li	a0, l.14336 ! 2259
	flw	fa1, a0, 0 ! 2259
	fsub.s	fa0, fa0, fa1, rne ! 2259
	li	a0, 4 ! 2260
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 20 ! 0
	addi	a0, a0, -1 ! 2261
	lw	a1, sp, 28 ! 0
	addi	a1, a1, 2 ! 129
	li	a2, 5 ! 130
	blt	a1, a2, bge_else.18628
	addi	a1, a1, -5 ! 130
	j	bge_cont.18629
bge_else.18628:
bge_cont.18629:
	lw	a2, sp, 24 ! 0
	addi	a2, a2, 4 ! 2261
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18627:
	ret ! 2262
bge_else.18624:
	ret ! 2262
create_dirvec_elements.2922:
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 2277
	blt	a1, a3, bge_else.18632
	li	a3, 3 ! 2271
	li	a4, l.12849 ! 2271
	flw	fa0, a4, 0 ! 2271
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a2, 12 ! 0
	mv	a0, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_float_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	mv	a1, a0
	lw	a0, sp, 12 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 16 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 16 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 2278
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 2278
	sw	t0, a0, 0 ! 2278
	addi	a0, a1, -1 ! 2279
	li	a1, 0 ! 2277
	blt	a0, a1, bge_else.18633
	li	a1, 3 ! 2271
	li	a2, l.12849 ! 2271
	flw	fa0, a2, 0 ! 2271
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 12 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 24 ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 24 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 2278
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 2278
	sw	t0, a0, 0 ! 2278
	addi	a0, a1, -1 ! 2279
	li	a1, 0 ! 2277
	blt	a0, a1, bge_else.18634
	li	a1, 3 ! 2271
	li	a2, l.12849 ! 2271
	flw	fa0, a2, 0 ! 2271
	sw	sp, a0, 28 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_float_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	mv	a1, a0
	lw	a0, sp, 12 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 32 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 32 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 28 ! 0
	slli	a2, a1, 2 ! 2278
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 2278
	sw	t0, a0, 0 ! 2278
	addi	a0, a1, -1 ! 2279
	li	a1, 0 ! 2277
	blt	a0, a1, bge_else.18635
	li	a1, 3 ! 2271
	li	a2, l.12849 ! 2271
	flw	fa0, a2, 0 ! 2271
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	mv	a1, a0
	lw	a0, sp, 12 ! 0
	lw	a0, a0, 0 ! 2272
	sw	sp, a1, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 40 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 2278
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 2278
	sw	t0, a0, 0 ! 2278
	addi	a1, a1, -1 ! 2279
	lw	a21, sp, 0 ! 0
	mv	a0, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18635:
	ret ! 2280
bge_else.18634:
	ret ! 2280
bge_else.18633:
	ret ! 2280
bge_else.18632:
	ret ! 2280
create_dirvecs.2925:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	li	a4, 0 ! 2284
	blt	a0, a4, bge_else.18640
	li	a4, 120 ! 2285
	li	a5, 3 ! 2271
	li	a6, l.12849 ! 2271
	flw	fa0, a6, 0 ! 2271
	sw	sp, a21, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a1, 20 ! 0
	mv	a0, a5
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 24 ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 24 ! 0
	sw	a1, a0, 0 ! 2273
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 2285
	lw	a3, sp, 8 ! 0
	add	t0, a3, a2 ! 2285
	sw	t0, a0, 0 ! 2285
	slli	a0, a1, 2 ! 2286
	add	t0, a3, a0 ! 2286
	lw	a0, t0, 0 ! 2286
	li	a2, 3 ! 2271
	li	a4, l.12849 ! 2271
	flw	fa0, a4, 0 ! 2271
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_float_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 32 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 32 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 28 ! 0
	sw	a1, a0, 472 ! 2278
	li	a0, 3 ! 2271
	li	a2, l.12849 ! 2271
	flw	fa0, a2, 0 ! 2271
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 36 ! 0
	mv	a0, a2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 36 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 28 ! 0
	sw	a1, a0, 468 ! 2278
	li	a0, 3 ! 2271
	li	a2, l.12849 ! 2271
	flw	fa0, a2, 0 ! 2271
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 40 ! 0
	mv	a0, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 40 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 28 ! 0
	sw	a1, a0, 464 ! 2278
	li	a0, 115 ! 2279
	lw	a21, sp, 4 ! 0
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 12 ! 0
	addi	a0, a0, -1 ! 2287
	li	a1, 0 ! 2284
	blt	a0, a1, bge_else.18641
	li	a1, 120 ! 2285
	li	a2, 3 ! 2271
	li	a3, l.12849 ! 2271
	flw	fa0, a3, 0 ! 2271
	sw	sp, a0, 44 ! 0
	sw	sp, a1, 48 ! 0
	mv	a0, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 52 ! 0
	mv	a0, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 52 ! 0
	sw	a1, a0, 0 ! 2273
	lw	a0, sp, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 44 ! 0
	slli	a2, a1, 2 ! 2285
	lw	a3, sp, 8 ! 0
	add	t0, a3, a2 ! 2285
	sw	t0, a0, 0 ! 2285
	slli	a0, a1, 2 ! 2286
	add	t0, a3, a0 ! 2286
	lw	a0, t0, 0 ! 2286
	li	a2, 3 ! 2271
	li	a3, l.12849 ! 2271
	flw	fa0, a3, 0 ! 2271
	sw	sp, a0, 56 ! 0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 60 ! 0
	mv	a0, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 60 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 56 ! 0
	sw	a1, a0, 472 ! 2278
	li	a0, 3 ! 2271
	li	a2, l.12849 ! 2271
	flw	fa0, a2, 0 ! 2271
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_float_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	lw	a0, a0, 0 ! 2272
	sw	sp, a1, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_create_array
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 64 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	lw	a1, sp, 56 ! 0
	sw	a1, a0, 468 ! 2278
	li	a0, 116 ! 2279
	lw	a21, sp, 4 ! 0
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44 ! 0
	addi	a0, a0, -1 ! 2287
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18641:
	ret ! 2288
bge_else.18640:
	ret ! 2288
init_dirvec_constants.2927:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	li	a5, 0 ! 2296
	blt	a1, a5, bge_else.18644
	slli	a5, a1, 2 ! 2297
	add	t0, a0, a5 ! 2297
	lw	a5, t0, 0 ! 2297
	lw	a6, a3, 0 ! 1188
	addi	a6, a6, -1 ! 1188
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a3, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a1, 20 ! 0
	mv	a1, a6
	mv	a0, a5
	mv	a21, a4
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0
	addi	a0, a0, -1 ! 2298
	li	a1, 0 ! 2296
	blt	a0, a1, bge_else.18645
	slli	a1, a0, 2 ! 2297
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 2297
	lw	a1, t0, 0 ! 2297
	lw	a3, sp, 12 ! 0
	lw	a4, a3, 0 ! 1188
	addi	a4, a4, -1 ! 1188
	li	a5, 0 ! 1171
	sw	sp, a0, 24 ! 0
	blt	a4, a5, bge_else.18646
	slli	a5, a4, 2 ! 1172
	lw	a6, sp, 8 ! 0
	add	t0, a6, a5 ! 1172
	lw	a5, t0, 0 ! 1172
	lw	a7, a1, 4 ! 1173
	lw	a8, a1, 0 ! 545
	lw	a9, a5, 4 ! 539
	li	a10, 1 ! 1176
	sw	sp, a1, 28 ! 0
	bne	a9, a10, be_else.18648
	sw	sp, a7, 32 ! 0
	sw	sp, a4, 36 ! 0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_rect_table.2700
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 32 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18649
be_else.18648:
	li	a10, 2 ! 1178
	bne	a9, a10, be_else.18650
	sw	sp, a7, 32 ! 0
	sw	sp, a4, 36 ! 0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_surface_table.2703
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 32 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18651
be_else.18650:
	sw	sp, a7, 32 ! 0
	sw	sp, a4, 36 ! 0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_second_table.2706
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 32 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18651:
be_cont.18649:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 28 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	j	bge_cont.18647
bge_else.18646:
bge_cont.18647:
	lw	a0, sp, 24 ! 0
	addi	a0, a0, -1 ! 2298
	li	a1, 0 ! 2296
	blt	a0, a1, bge_else.18652
	slli	a1, a0, 2 ! 2297
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 2297
	lw	a1, t0, 0 ! 2297
	lw	a3, sp, 12 ! 0
	lw	a4, a3, 0 ! 1188
	addi	a4, a4, -1 ! 1188
	lw	a21, sp, 4 ! 0
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	mv	a1, a4
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	addi	a0, a0, -1 ! 2298
	li	a1, 0 ! 2296
	blt	a0, a1, bge_else.18653
	slli	a1, a0, 2 ! 2297
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 2297
	lw	a1, t0, 0 ! 2297
	lw	a3, sp, 12 ! 0
	lw	a3, a3, 0 ! 1188
	addi	a3, a3, -1 ! 1188
	li	a4, 0 ! 1171
	sw	sp, a0, 44 ! 0
	blt	a3, a4, bge_else.18654
	slli	a4, a3, 2 ! 1172
	lw	a5, sp, 8 ! 0
	add	t0, a5, a4 ! 1172
	lw	a4, t0, 0 ! 1172
	lw	a5, a1, 4 ! 1173
	lw	a6, a1, 0 ! 545
	lw	a7, a4, 4 ! 539
	li	a8, 1 ! 1176
	sw	sp, a1, 48 ! 0
	bne	a7, a8, be_else.18656
	sw	sp, a5, 52 ! 0
	sw	sp, a3, 56 ! 0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_rect_table.2700
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 52 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18657
be_else.18656:
	li	a8, 2 ! 1178
	bne	a7, a8, be_else.18658
	sw	sp, a5, 52 ! 0
	sw	sp, a3, 56 ! 0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_surface_table.2703
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 52 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18659
be_else.18658:
	sw	sp, a5, 52 ! 0
	sw	sp, a3, 56 ! 0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_second_table.2706
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 52 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18659:
be_cont.18657:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 48 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	bge_cont.18655
bge_else.18654:
bge_cont.18655:
	lw	a0, sp, 44 ! 0
	addi	a1, a0, -1 ! 2298
	lw	a0, sp, 16 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18653:
	ret ! 2299
bge_else.18652:
	ret ! 2299
bge_else.18645:
	ret ! 2299
bge_else.18644:
	ret ! 2299
init_vecset_constants.2930:
	lw	a1, a21, 20 ! 0
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	li	a6, 0 ! 2303
	blt	a0, a6, bge_else.18664
	slli	a6, a0, 2 ! 2304
	add	t0, a5, a6 ! 2304
	lw	a6, t0, 0 ! 2304
	lw	a7, a6, 476 ! 2297
	lw	a8, a2, 0 ! 1188
	addi	a8, a8, -1 ! 1188
	li	a9, 0 ! 1171
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a2, 24 ! 0
	sw	sp, a6, 28 ! 0
	blt	a8, a9, bge_else.18665
	slli	a9, a8, 2 ! 1172
	add	t0, a1, a9 ! 1172
	lw	a9, t0, 0 ! 1172
	lw	a10, a7, 4 ! 1173
	lw	a11, a7, 0 ! 545
	lw	a12, a9, 4 ! 539
	li	a13, 1 ! 1176
	sw	sp, a7, 32 ! 0
	bne	a12, a13, be_else.18667
	sw	sp, a10, 36 ! 0
	sw	sp, a8, 40 ! 0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_rect_table.2700
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 36 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18668
be_else.18667:
	li	a13, 2 ! 1178
	bne	a12, a13, be_else.18669
	sw	sp, a10, 36 ! 0
	sw	sp, a8, 40 ! 0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_surface_table.2703
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 36 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18670
be_else.18669:
	sw	sp, a10, 36 ! 0
	sw	sp, a8, 40 ! 0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_second_table.2706
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 36 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18670:
be_cont.18668:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 32 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	j	bge_cont.18666
bge_else.18665:
bge_cont.18666:
	lw	a0, sp, 28 ! 0
	lw	a1, a0, 472 ! 2297
	lw	a2, sp, 24 ! 0
	lw	a3, a2, 0 ! 1188
	addi	a3, a3, -1 ! 1188
	lw	a21, sp, 20 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 28 ! 0
	lw	a1, a0, 468 ! 2297
	lw	a2, sp, 24 ! 0
	lw	a3, a2, 0 ! 1188
	addi	a3, a3, -1 ! 1188
	li	a4, 0 ! 1171
	blt	a3, a4, bge_else.18671
	slli	a4, a3, 2 ! 1172
	lw	a5, sp, 16 ! 0
	add	t0, a5, a4 ! 1172
	lw	a4, t0, 0 ! 1172
	lw	a6, a1, 4 ! 1173
	lw	a7, a1, 0 ! 545
	lw	a8, a4, 4 ! 539
	li	a9, 1 ! 1176
	sw	sp, a1, 44 ! 0
	bne	a8, a9, be_else.18673
	sw	sp, a6, 48 ! 0
	sw	sp, a3, 52 ! 0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_rect_table.2700
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18674
be_else.18673:
	li	a9, 2 ! 1178
	bne	a8, a9, be_else.18675
	sw	sp, a6, 48 ! 0
	sw	sp, a3, 52 ! 0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_surface_table.2703
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18676
be_else.18675:
	sw	sp, a6, 48 ! 0
	sw	sp, a3, 52 ! 0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_second_table.2706
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18676:
be_cont.18674:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 44 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	j	bge_cont.18672
bge_else.18671:
bge_cont.18672:
	li	a1, 116 ! 2298
	lw	a0, sp, 28 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 8 ! 0
	addi	a0, a0, -1 ! 2305
	li	a1, 0 ! 2303
	blt	a0, a1, bge_else.18677
	slli	a1, a0, 2 ! 2304
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 2304
	lw	a1, t0, 0 ! 2304
	lw	a3, a1, 476 ! 2297
	lw	a4, sp, 24 ! 0
	lw	a5, a4, 0 ! 1188
	addi	a5, a5, -1 ! 1188
	lw	a21, sp, 20 ! 0
	sw	sp, a0, 56 ! 0
	sw	sp, a1, 60 ! 0
	mv	a1, a5
	mv	a0, a3
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60 ! 0
	lw	a1, a0, 472 ! 2297
	lw	a2, sp, 24 ! 0
	lw	a3, a2, 0 ! 1188
	addi	a3, a3, -1 ! 1188
	li	a4, 0 ! 1171
	blt	a3, a4, bge_else.18678
	slli	a4, a3, 2 ! 1172
	lw	a5, sp, 16 ! 0
	add	t0, a5, a4 ! 1172
	lw	a4, t0, 0 ! 1172
	lw	a6, a1, 4 ! 1173
	lw	a7, a1, 0 ! 545
	lw	a8, a4, 4 ! 539
	li	a9, 1 ! 1176
	sw	sp, a1, 64 ! 0
	bne	a8, a9, be_else.18680
	sw	sp, a6, 68 ! 0
	sw	sp, a3, 72 ! 0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_rect_table.2700
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 68 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18681
be_else.18680:
	li	a9, 2 ! 1178
	bne	a8, a9, be_else.18682
	sw	sp, a6, 68 ! 0
	sw	sp, a3, 72 ! 0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_surface_table.2703
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 68 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18683
be_else.18682:
	sw	sp, a6, 68 ! 0
	sw	sp, a3, 72 ! 0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_second_table.2706
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 68 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18683:
be_cont.18681:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 64 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	j	bge_cont.18679
bge_else.18678:
bge_cont.18679:
	li	a1, 117 ! 2298
	lw	a0, sp, 60 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 56 ! 0
	addi	a0, a0, -1 ! 2305
	li	a1, 0 ! 2303
	blt	a0, a1, bge_else.18684
	slli	a1, a0, 2 ! 2304
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 2304
	lw	a1, t0, 0 ! 2304
	lw	a3, a1, 476 ! 2297
	lw	a4, sp, 24 ! 0
	lw	a4, a4, 0 ! 1188
	addi	a4, a4, -1 ! 1188
	li	a5, 0 ! 1171
	sw	sp, a0, 76 ! 0
	sw	sp, a1, 80 ! 0
	blt	a4, a5, bge_else.18685
	slli	a5, a4, 2 ! 1172
	lw	a6, sp, 16 ! 0
	add	t0, a6, a5 ! 1172
	lw	a5, t0, 0 ! 1172
	lw	a6, a3, 4 ! 1173
	lw	a7, a3, 0 ! 545
	lw	a8, a5, 4 ! 539
	li	a9, 1 ! 1176
	sw	sp, a3, 84 ! 0
	bne	a8, a9, be_else.18687
	sw	sp, a6, 88 ! 0
	sw	sp, a4, 92 ! 0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_rect_table.2700
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 88 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18688
be_else.18687:
	li	a9, 2 ! 1178
	bne	a8, a9, be_else.18689
	sw	sp, a6, 88 ! 0
	sw	sp, a4, 92 ! 0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_surface_table.2703
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 88 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18690
be_else.18689:
	sw	sp, a6, 88 ! 0
	sw	sp, a4, 92 ! 0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_second_table.2706
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 88 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18690:
be_cont.18688:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 84 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	j	bge_cont.18686
bge_else.18685:
bge_cont.18686:
	li	a1, 118 ! 2298
	lw	a0, sp, 80 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 76 ! 0
	addi	a0, a0, -1 ! 2305
	li	a1, 0 ! 2303
	blt	a0, a1, bge_else.18691
	slli	a1, a0, 2 ! 2304
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 2304
	lw	a1, t0, 0 ! 2304
	li	a2, 119 ! 2304
	lw	a21, sp, 12 ! 0
	sw	sp, a0, 96 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 96 ! 0
	addi	a0, a0, -1 ! 2305
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18691:
	ret ! 2306
bge_else.18684:
	ret ! 2306
bge_else.18677:
	ret ! 2306
bge_else.18664:
	ret ! 2306
setup_rect_reflection.2941:
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a0, a0, 2 ! 2330
	lw	a8, a4, 0 ! 2331
	li	a9, l.12811 ! 2332
	flw	fa0, a9, 0 ! 2332
	lw	a1, a1, 28 ! 2332
	flw	fa1, a1, 0 ! 365
	fsub.s	fa0, fa0, fa1, rne ! 2332
	flw	fa1, a6, 0 ! 2333
	sw	sp, a4, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a8, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a7, 24 ! 0
	sw	sp, a3, 28 ! 0
	sw	sp, a5, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a6, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	flw	fa1, a0, 4 ! 2334
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fneg
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 40 ! 0
	flw	fa1, a0, 8 ! 2335
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 36 ! 0
	addi	a1, a0, 1 ! 2336
	lw	a2, sp, 40 ! 0
	flw	fa1, a2, 0 ! 2336
	li	a3, 3 ! 2271
	li	a4, l.12849 ! 2271
	flw	fa2, a4, 0 ! 2271
	sw	sp, a1, 64 ! 0
	fsw	sp, fa0, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	mv	a0, a3
	fmv.s	fa0, fa2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_create_float_array
	addi	sp, sp, -92
	lw	ra, sp, 88
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 88 ! 0
	mv	a0, a2
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_create_array
	addi	sp, sp, -96
	lw	ra, sp, 92
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a2, sp, 88 ! 0
	sw	a1, a2, 0 ! 2273
	flw	fa0, sp, 80 ! 0
	fsw	a2, fa0, 0 ! 145
	flw	fa0, sp, 56 ! 0
	fsw	a2, fa0, 4 ! 146
	flw	fa1, sp, 72 ! 0
	fsw	a2, fa1, 8 ! 147
	lw	a3, sp, 32 ! 0
	lw	a4, a3, 0 ! 1188
	addi	a4, a4, -1 ! 1188
	li	a5, 0 ! 1171
	sw	sp, a1, 92 ! 0
	blt	a4, a5, bge_else.18699
	slli	a5, a4, 2 ! 1172
	lw	a6, sp, 28 ! 0
	add	t0, a6, a5 ! 1172
	lw	a5, t0, 0 ! 1172
	lw	a7, a5, 4 ! 1173
	li	a8, 1 ! 1176
	bne	a7, a8, be_else.18701
	sw	sp, a0, 96 ! 0
	sw	sp, a4, 100 ! 0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	setup_rect_table.2700
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 100 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 96 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18702
be_else.18701:
	li	a8, 2 ! 1178
	bne	a7, a8, be_else.18703
	sw	sp, a0, 96 ! 0
	sw	sp, a4, 100 ! 0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	setup_surface_table.2703
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 100 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 96 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18704
be_else.18703:
	sw	sp, a0, 96 ! 0
	sw	sp, a4, 100 ! 0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	setup_second_table.2706
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 100 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 96 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18704:
be_cont.18702:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 92 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	j	bge_cont.18700
bge_else.18699:
bge_cont.18700:
	mv	a0, hp ! 2325
	addi	hp, hp, 12 ! 2325
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 2325
	lw	a1, sp, 92 ! 0
	sw	a0, a1, 4 ! 2325
	lw	a1, sp, 64 ! 0
	sw	a0, a1, 0 ! 2325
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 2325
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 2325
	sw	t0, a0, 0 ! 2325
	addi	a0, a1, 1 ! 2337
	lw	a2, sp, 36 ! 0
	addi	a4, a2, 2 ! 2337
	lw	a5, sp, 40 ! 0
	flw	fa1, a5, 4 ! 2337
	li	a6, 3 ! 2271
	li	a7, l.12849 ! 2271
	flw	fa2, a7, 0 ! 2271
	sw	sp, a0, 104 ! 0
	sw	sp, a4, 108 ! 0
	fsw	sp, fa1, 112 ! 0
	mv	a0, a6
	fmv.s	fa0, fa2
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_create_float_array
	addi	sp, sp, -124
	lw	ra, sp, 120
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 120 ! 0
	mv	a0, a2
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_create_array
	addi	sp, sp, -128
	lw	ra, sp, 124
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a2, sp, 120 ! 0
	sw	a1, a2, 0 ! 2273
	flw	fa0, sp, 48 ! 0
	fsw	a2, fa0, 0 ! 145
	flw	fa1, sp, 112 ! 0
	fsw	a2, fa1, 4 ! 146
	flw	fa1, sp, 72 ! 0
	fsw	a2, fa1, 8 ! 147
	lw	a3, sp, 32 ! 0
	lw	a4, a3, 0 ! 1188
	addi	a4, a4, -1 ! 1188
	li	a5, 0 ! 1171
	sw	sp, a1, 124 ! 0
	blt	a4, a5, bge_else.18705
	slli	a5, a4, 2 ! 1172
	lw	a6, sp, 28 ! 0
	add	t0, a6, a5 ! 1172
	lw	a5, t0, 0 ! 1172
	lw	a7, a5, 4 ! 1173
	li	a8, 1 ! 1176
	bne	a7, a8, be_else.18707
	sw	sp, a0, 128 ! 0
	sw	sp, a4, 132 ! 0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	setup_rect_table.2700
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 132 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 128 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18708
be_else.18707:
	li	a8, 2 ! 1178
	bne	a7, a8, be_else.18709
	sw	sp, a0, 128 ! 0
	sw	sp, a4, 132 ! 0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	setup_surface_table.2703
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 132 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 128 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18710
be_else.18709:
	sw	sp, a0, 128 ! 0
	sw	sp, a4, 132 ! 0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	setup_second_table.2706
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 132 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 128 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18710:
be_cont.18708:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 124 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	j	bge_cont.18706
bge_else.18705:
bge_cont.18706:
	mv	a0, hp ! 2325
	addi	hp, hp, 12 ! 2325
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 2325
	lw	a1, sp, 124 ! 0
	sw	a0, a1, 4 ! 2325
	lw	a1, sp, 108 ! 0
	sw	a0, a1, 0 ! 2325
	lw	a1, sp, 104 ! 0
	slli	a1, a1, 2 ! 2325
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 2325
	sw	t0, a0, 0 ! 2325
	lw	a0, sp, 8 ! 0
	addi	a1, a0, 2 ! 2338
	lw	a3, sp, 36 ! 0
	addi	a3, a3, 3 ! 2338
	lw	a4, sp, 40 ! 0
	flw	fa1, a4, 8 ! 2338
	li	a4, 3 ! 2271
	li	a5, l.12849 ! 2271
	flw	fa2, a5, 0 ! 2271
	sw	sp, a1, 136 ! 0
	sw	sp, a3, 140 ! 0
	fsw	sp, fa1, 144 ! 0
	mv	a0, a4
	fmv.s	fa0, fa2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_create_float_array
	addi	sp, sp, -156
	lw	ra, sp, 152
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 152 ! 0
	mv	a0, a2
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_create_array
	addi	sp, sp, -160
	lw	ra, sp, 156
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a2, sp, 152 ! 0
	sw	a1, a2, 0 ! 2273
	flw	fa0, sp, 48 ! 0
	fsw	a2, fa0, 0 ! 145
	flw	fa0, sp, 56 ! 0
	fsw	a2, fa0, 4 ! 146
	flw	fa0, sp, 144 ! 0
	fsw	a2, fa0, 8 ! 147
	lw	a3, sp, 32 ! 0
	lw	a3, a3, 0 ! 1188
	addi	a3, a3, -1 ! 1188
	li	a4, 0 ! 1171
	sw	sp, a1, 156 ! 0
	blt	a3, a4, bge_else.18711
	slli	a4, a3, 2 ! 1172
	lw	a5, sp, 28 ! 0
	add	t0, a5, a4 ! 1172
	lw	a4, t0, 0 ! 1172
	lw	a5, a4, 4 ! 1173
	li	a6, 1 ! 1176
	bne	a5, a6, be_else.18713
	sw	sp, a0, 160 ! 0
	sw	sp, a3, 164 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	setup_rect_table.2700
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 164 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 160 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18714
be_else.18713:
	li	a6, 2 ! 1178
	bne	a5, a6, be_else.18715
	sw	sp, a0, 160 ! 0
	sw	sp, a3, 164 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	setup_surface_table.2703
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 164 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 160 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18716
be_else.18715:
	sw	sp, a0, 160 ! 0
	sw	sp, a3, 164 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	setup_second_table.2706
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 164 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 160 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18716:
be_cont.18714:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 156 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	j	bge_cont.18712
bge_else.18711:
bge_cont.18712:
	mv	a0, hp ! 2325
	addi	hp, hp, 12 ! 2325
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 2325
	lw	a1, sp, 156 ! 0
	sw	a0, a1, 4 ! 2325
	lw	a1, sp, 140 ! 0
	sw	a0, a1, 0 ! 2325
	lw	a1, sp, 136 ! 0
	slli	a1, a1, 2 ! 2325
	lw	a2, sp, 4 ! 0
	add	t0, a2, a1 ! 2325
	sw	t0, a0, 0 ! 2325
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 3 ! 2339
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 0 ! 2339
	ret ! 2339
setup_surface_reflection.2944:
	lw	a2, a21, 24 ! 0
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a0, a0, 2 ! 2344
	addi	a0, a0, 1 ! 2344
	lw	a8, a4, 0 ! 2345
	li	a9, l.12811 ! 2346
	flw	fa0, a9, 0 ! 2346
	lw	a9, a1, 28 ! 2346
	flw	fa1, a9, 0 ! 365
	fsub.s	fa0, fa0, fa1, rne ! 2346
	lw	a9, a1, 16 ! 2347
	flw	fa1, a6, 0 ! 193
	flw	fa2, a9, 0 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	flw	fa2, a6, 4 ! 193
	flw	fa3, a9, 4 ! 193
	fmul.s	fa2, fa2, fa3, rne ! 193
	fadd.s	fa1, fa1, fa2, rne ! 193
	flw	fa2, a6, 8 ! 193
	flw	fa3, a9, 8 ! 193
	fmul.s	fa2, fa2, fa3, rne ! 193
	fadd.s	fa1, fa1, fa2, rne ! 193
	li	a9, l.12883 ! 2350
	flw	fa2, a9, 0 ! 2350
	lw	a9, a1, 16 ! 2350
	flw	fa3, a9, 0 ! 295
	fmul.s	fa2, fa2, fa3, rne ! 2350
	fmul.s	fa2, fa2, fa1, rne ! 2350
	flw	fa3, a6, 0 ! 2350
	fsub.s	fa2, fa2, fa3, rne ! 2350
	li	a9, l.12883 ! 2351
	flw	fa3, a9, 0 ! 2351
	lw	a9, a1, 16 ! 2351
	flw	fa4, a9, 4 ! 305
	fmul.s	fa3, fa3, fa4, rne ! 2351
	fmul.s	fa3, fa3, fa1, rne ! 2351
	flw	fa4, a6, 4 ! 2351
	fsub.s	fa3, fa3, fa4, rne ! 2351
	li	a9, l.12883 ! 2352
	flw	fa4, a9, 0 ! 2352
	lw	a1, a1, 16 ! 2352
	flw	fa5, a1, 8 ! 315
	fmul.s	fa4, fa4, fa5, rne ! 2352
	fmul.s	fa1, fa4, fa1, rne ! 2352
	flw	fa4, a6, 8 ! 2352
	fsub.s	fa1, fa1, fa4, rne ! 2352
	li	a1, 3 ! 2271
	li	a6, l.12849 ! 2271
	flw	fa4, a6, 0 ! 2271
	sw	sp, a4, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a8, 8 ! 0
	sw	sp, a0, 12 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a7, 24 ! 0
	sw	sp, a3, 28 ! 0
	fsw	sp, fa1, 32 ! 0
	fsw	sp, fa3, 40 ! 0
	fsw	sp, fa2, 48 ! 0
	sw	sp, a5, 56 ! 0
	mv	a0, a1
	fmv.s	fa0, fa4
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a1, a0
	lw	a0, sp, 56 ! 0
	lw	a2, a0, 0 ! 2272
	sw	sp, a1, 60 ! 0
	mv	a0, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a2, sp, 60 ! 0
	sw	a1, a2, 0 ! 2273
	flw	fa0, sp, 48 ! 0
	fsw	a2, fa0, 0 ! 145
	flw	fa0, sp, 40 ! 0
	fsw	a2, fa0, 4 ! 146
	flw	fa0, sp, 32 ! 0
	fsw	a2, fa0, 8 ! 147
	lw	a3, sp, 56 ! 0
	lw	a3, a3, 0 ! 1188
	addi	a3, a3, -1 ! 1188
	li	a4, 0 ! 1171
	sw	sp, a1, 64 ! 0
	blt	a3, a4, bge_else.18718
	slli	a4, a3, 2 ! 1172
	lw	a5, sp, 28 ! 0
	add	t0, a5, a4 ! 1172
	lw	a4, t0, 0 ! 1172
	lw	a5, a4, 4 ! 1173
	li	a6, 1 ! 1176
	bne	a5, a6, be_else.18720
	sw	sp, a0, 68 ! 0
	sw	sp, a3, 72 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_rect_table.2700
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 68 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18721
be_else.18720:
	li	a6, 2 ! 1178
	bne	a5, a6, be_else.18722
	sw	sp, a0, 68 ! 0
	sw	sp, a3, 72 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_surface_table.2703
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 68 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18723
be_else.18722:
	sw	sp, a0, 68 ! 0
	sw	sp, a3, 72 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_second_table.2706
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 68 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18723:
be_cont.18721:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 64 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	j	bge_cont.18719
bge_else.18718:
bge_cont.18719:
	mv	a0, hp ! 2325
	addi	hp, hp, 12 ! 2325
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 2325
	lw	a1, sp, 64 ! 0
	sw	a0, a1, 4 ! 2325
	lw	a1, sp, 12 ! 0
	sw	a0, a1, 0 ! 2325
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 2325
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 2325
	sw	t0, a0, 0 ! 2325
	addi	a0, a1, 1 ! 2353
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 0 ! 2353
	ret ! 2353
rt.2949:
	lw	a2, a21, 100 ! 0
	lw	a3, a21, 96 ! 0
	lw	a4, a21, 92 ! 0
	lw	a5, a21, 88 ! 0
	lw	a6, a21, 84 ! 0
	lw	a7, a21, 80 ! 0
	lw	a8, a21, 76 ! 0
	lw	a9, a21, 72 ! 0
	lw	a10, a21, 68 ! 0
	lw	a11, a21, 64 ! 0
	lw	a12, a21, 60 ! 0
	lw	a13, a21, 56 ! 0
	lw	a14, a21, 52 ! 0
	lw	a15, a21, 48 ! 0
	lw	a16, a21, 44 ! 0
	lw	a17, a21, 40 ! 0
	lw	a18, a21, 36 ! 0
	lw	a19, a21, 32 ! 0
	lw	a20, a21, 28 ! 0
	sw	sp, a7, 0 ! 0
	lw	a7, a21, 24 ! 0
	sw	sp, a5, 4 ! 0
	lw	a5, a21, 20 ! 0
	sw	sp, a13, 8 ! 0
	lw	a13, a21, 16 ! 0
	sw	sp, a3, 12 ! 0
	lw	a3, a21, 12 ! 0
	sw	sp, a4, 16 ! 0
	lw	a4, a21, 8 ! 0
	lw	a21, a21, 4 ! 0
	sw	a5, a0, 0 ! 2382
	sw	a5, a1, 4 ! 2383
	sw	sp, a17, 20 ! 0
	srli	a17, a0, 1 ! 2384
	sw	a13, a17, 0 ! 2384
	srli	a1, a1, 1 ! 2385
	sw	a13, a1, 4 ! 2385
	li	a1, l.14569 ! 2386
	flw	fa0, a1, 0 ! 2386
	sw	sp, a2, 24 ! 0
	sw	sp, a18, 28 ! 0
	sw	sp, a20, 32 ! 0
	sw	sp, a7, 36 ! 0
	sw	sp, a19, 40 ! 0
	sw	sp, a15, 44 ! 0
	sw	sp, a3, 48 ! 0
	sw	sp, a21, 52 ! 0
	sw	sp, a4, 56 ! 0
	sw	sp, a14, 60 ! 0
	sw	sp, a12, 64 ! 0
	sw	sp, a9, 68 ! 0
	sw	sp, a16, 72 ! 0
	sw	sp, a10, 76 ! 0
	sw	sp, a11, 80 ! 0
	sw	sp, a8, 84 ! 0
	sw	sp, a5, 88 ! 0
	sw	sp, a6, 92 ! 0
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_float_of_int
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 2386
	lw	a0, sp, 92 ! 0
	fsw	a0, fa0, 0 ! 2386
	lw	a0, sp, 88 ! 0
	lw	a1, a0, 0 ! 2195
	li	a2, 3 ! 2173
	li	a3, l.12849 ! 2173
	flw	fa0, a3, 0 ! 2173
	sw	sp, a1, 104 ! 0
	mv	a0, a2
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_create_float_array
	addi	sp, sp, -112
	lw	ra, sp, 108
	sw	sp, a0, 108 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	create_float5x3array.2889
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a1, 5 ! 2175
	li	a2, 0 ! 2175
	sw	sp, a0, 112 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 5 ! 2176
	li	a2, 0 ! 2176
	sw	sp, a0, 116 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_create_array
	addi	sp, sp, -124
	lw	ra, sp, 120
	sw	sp, a0, 120 ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	create_float5x3array.2889
	addi	sp, sp, -128
	lw	ra, sp, 124
	sw	sp, a0, 124 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	create_float5x3array.2889
	addi	sp, sp, -132
	lw	ra, sp, 128
	li	a1, 1 ! 2179
	li	a2, 0 ! 2179
	sw	sp, a0, 128 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	min_caml_create_array
	addi	sp, sp, -136
	lw	ra, sp, 132
	sw	sp, a0, 132 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	create_float5x3array.2889
	addi	sp, sp, -140
	lw	ra, sp, 136
	mv	a1, hp ! 2181
	addi	hp, hp, 32 ! 2181
	sw	a1, a0, 28 ! 2181
	lw	a0, sp, 132 ! 0
	sw	a1, a0, 24 ! 2181
	lw	a0, sp, 128 ! 0
	sw	a1, a0, 20 ! 2181
	lw	a0, sp, 124 ! 0
	sw	a1, a0, 16 ! 2181
	lw	a0, sp, 120 ! 0
	sw	a1, a0, 12 ! 2181
	lw	a0, sp, 116 ! 0
	sw	a1, a0, 8 ! 2181
	lw	a0, sp, 112 ! 0
	sw	a1, a0, 4 ! 2181
	lw	a0, sp, 108 ! 0
	sw	a1, a0, 0 ! 2181
	lw	a0, sp, 104 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_create_array
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 88 ! 0
	lw	a2, a1, 0 ! 2196
	addi	a2, a2, -2 ! 2196
	mv	a1, a2
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	init_line_elements.2893
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 88 ! 0
	lw	a2, a1, 0 ! 2195
	li	a3, 3 ! 2173
	li	a4, l.12849 ! 2173
	flw	fa0, a4, 0 ! 2173
	sw	sp, a0, 136 ! 0
	sw	sp, a2, 140 ! 0
	mv	a0, a3
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_create_float_array
	addi	sp, sp, -148
	lw	ra, sp, 144
	sw	sp, a0, 144 ! 0
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	create_float5x3array.2889
	addi	sp, sp, -152
	lw	ra, sp, 148
	li	a1, 5 ! 2175
	li	a2, 0 ! 2175
	sw	sp, a0, 148 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_create_array
	addi	sp, sp, -156
	lw	ra, sp, 152
	li	a1, 5 ! 2176
	li	a2, 0 ! 2176
	sw	sp, a0, 152 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_create_array
	addi	sp, sp, -160
	lw	ra, sp, 156
	sw	sp, a0, 156 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	create_float5x3array.2889
	addi	sp, sp, -164
	lw	ra, sp, 160
	sw	sp, a0, 160 ! 0
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	create_float5x3array.2889
	addi	sp, sp, -168
	lw	ra, sp, 164
	li	a1, 1 ! 2179
	li	a2, 0 ! 2179
	sw	sp, a0, 164 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_create_array
	addi	sp, sp, -172
	lw	ra, sp, 168
	sw	sp, a0, 168 ! 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	create_float5x3array.2889
	addi	sp, sp, -176
	lw	ra, sp, 172
	mv	a1, hp ! 2181
	addi	hp, hp, 32 ! 2181
	sw	a1, a0, 28 ! 2181
	lw	a0, sp, 168 ! 0
	sw	a1, a0, 24 ! 2181
	lw	a0, sp, 164 ! 0
	sw	a1, a0, 20 ! 2181
	lw	a0, sp, 160 ! 0
	sw	a1, a0, 16 ! 2181
	lw	a0, sp, 156 ! 0
	sw	a1, a0, 12 ! 2181
	lw	a0, sp, 152 ! 0
	sw	a1, a0, 8 ! 2181
	lw	a0, sp, 148 ! 0
	sw	a1, a0, 4 ! 2181
	lw	a0, sp, 144 ! 0
	sw	a1, a0, 0 ! 2181
	lw	a0, sp, 140 ! 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	min_caml_create_array
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a1, sp, 88 ! 0
	lw	a2, a1, 0 ! 2196
	addi	a2, a2, -2 ! 2196
	mv	a1, a2
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	init_line_elements.2893
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a1, sp, 88 ! 0
	lw	a2, a1, 0 ! 2195
	li	a3, 3 ! 2173
	li	a4, l.12849 ! 2173
	flw	fa0, a4, 0 ! 2173
	sw	sp, a0, 172 ! 0
	sw	sp, a2, 176 ! 0
	mv	a0, a3
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	min_caml_create_float_array
	addi	sp, sp, -184
	lw	ra, sp, 180
	sw	sp, a0, 180 ! 0
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	create_float5x3array.2889
	addi	sp, sp, -188
	lw	ra, sp, 184
	li	a1, 5 ! 2175
	li	a2, 0 ! 2175
	sw	sp, a0, 184 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	min_caml_create_array
	addi	sp, sp, -192
	lw	ra, sp, 188
	li	a1, 5 ! 2176
	li	a2, 0 ! 2176
	sw	sp, a0, 188 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_create_array
	addi	sp, sp, -196
	lw	ra, sp, 192
	sw	sp, a0, 192 ! 0
	sw	sp, ra, 196
	addi	sp, sp, 200
	jal	create_float5x3array.2889
	addi	sp, sp, -200
	lw	ra, sp, 196
	sw	sp, a0, 196 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	create_float5x3array.2889
	addi	sp, sp, -204
	lw	ra, sp, 200
	li	a1, 1 ! 2179
	li	a2, 0 ! 2179
	sw	sp, a0, 200 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	min_caml_create_array
	addi	sp, sp, -208
	lw	ra, sp, 204
	sw	sp, a0, 204 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	create_float5x3array.2889
	addi	sp, sp, -212
	lw	ra, sp, 208
	mv	a1, hp ! 2181
	addi	hp, hp, 32 ! 2181
	sw	a1, a0, 28 ! 2181
	lw	a0, sp, 204 ! 0
	sw	a1, a0, 24 ! 2181
	lw	a0, sp, 200 ! 0
	sw	a1, a0, 20 ! 2181
	lw	a0, sp, 196 ! 0
	sw	a1, a0, 16 ! 2181
	lw	a0, sp, 192 ! 0
	sw	a1, a0, 12 ! 2181
	lw	a0, sp, 188 ! 0
	sw	a1, a0, 8 ! 2181
	lw	a0, sp, 184 ! 0
	sw	a1, a0, 4 ! 2181
	lw	a0, sp, 180 ! 0
	sw	a1, a0, 0 ! 2181
	lw	a0, sp, 176 ! 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_create_array
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a1, sp, 88 ! 0
	lw	a2, a1, 0 ! 2196
	addi	a2, a2, -2 ! 2196
	mv	a1, a2
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	init_line_elements.2893
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a21, sp, 84 ! 0
	sw	sp, a0, 208 ! 0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	lw	a21, sp, 80 ! 0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 0 ! 769
	lw	a21, sp, 76 ! 0
	sw	sp, a0, 212 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a1, 0 ! 761
	bne	a0, a1, be_else.18725
	lw	a0, sp, 72 ! 0
	lw	a1, sp, 212 ! 0
	sw	a0, a1, 0 ! 764
	j	be_cont.18726
be_else.18725:
	li	a0, 1 ! 762
	lw	a21, sp, 68 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
be_cont.18726:
	li	a0, 0 ! 806
	lw	a21, sp, 64 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 0 ! 807
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	read_or_network.2610
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a1, sp, 60 ! 0
	sw	a1, a0, 0 ! 807
	li	a0, 80 ! 2016
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_char
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 51 ! 2017
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_char
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 10 ! 2018
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_char
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a0, sp, 88 ! 0
	lw	a1, a0, 0 ! 2019
	mv	a0, a1
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_int
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 32 ! 2020
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_char
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a0, sp, 88 ! 0
	lw	a1, a0, 4 ! 2021
	mv	a0, a1
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_int
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 32 ! 2022
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_char
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 255 ! 2023
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_int
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 10 ! 2024
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_print_char
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 4 ! 2310
	lw	a21, sp, 56 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	li	a0, 9 ! 2311
	li	a1, 0 ! 2311
	li	a2, 0 ! 2311
	lw	a21, sp, 52 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a0, sp, 48 ! 0
	lw	a1, a0, 16 ! 2304
	lw	a2, a1, 476 ! 2297
	lw	a3, sp, 72 ! 0
	lw	a4, a3, 0 ! 1188
	addi	a4, a4, -1 ! 1188
	li	a5, 0 ! 1171
	sw	sp, a1, 216 ! 0
	blt	a4, a5, bge_else.18727
	slli	a5, a4, 2 ! 1172
	lw	a6, sp, 44 ! 0
	add	t0, a6, a5 ! 1172
	lw	a5, t0, 0 ! 1172
	lw	a7, a2, 4 ! 1173
	lw	a8, a2, 0 ! 545
	lw	a9, a5, 4 ! 539
	li	a10, 1 ! 1176
	sw	sp, a2, 220 ! 0
	bne	a9, a10, be_else.18729
	sw	sp, a7, 224 ! 0
	sw	sp, a4, 228 ! 0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	setup_rect_table.2700
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a1, sp, 228 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 224 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.18730
be_else.18729:
	li	a10, 2 ! 1178
	bne	a9, a10, be_else.18731
	sw	sp, a7, 224 ! 0
	sw	sp, a4, 228 ! 0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	setup_surface_table.2703
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a1, sp, 228 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 224 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.18732
be_else.18731:
	sw	sp, a7, 224 ! 0
	sw	sp, a4, 228 ! 0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	setup_second_table.2706
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a1, sp, 228 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 224 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.18732:
be_cont.18730:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 220 ! 0
	lw	a21, sp, 40 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	j	bge_cont.18728
bge_else.18727:
bge_cont.18728:
	li	a1, 118 ! 2298
	lw	a0, sp, 216 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a0, sp, 48 ! 0
	lw	a0, a0, 12 ! 2304
	li	a1, 119 ! 2304
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	li	a0, 2 ! 2305
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a0, sp, 28 ! 0
	flw	fa0, a0, 0 ! 164
	lw	a1, sp, 24 ! 0
	fsw	a1, fa0, 0 ! 164
	flw	fa0, a0, 4 ! 165
	fsw	a1, fa0, 4 ! 165
	flw	fa0, a0, 8 ! 166
	fsw	a1, fa0, 8 ! 166
	lw	a0, sp, 72 ! 0
	lw	a1, a0, 0 ! 1188
	addi	a1, a1, -1 ! 1188
	lw	a2, sp, 20 ! 0
	lw	a21, sp, 40 ! 0
	mv	a0, a2
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a0, sp, 72 ! 0
	lw	a0, a0, 0 ! 2395
	addi	a0, a0, -1 ! 2395
	li	a1, 0 ! 2359
	blt	a0, a1, bge_else.18733
	slli	a1, a0, 2 ! 2360
	lw	a2, sp, 44 ! 0
	add	t0, a2, a1 ! 2360
	lw	a1, t0, 0 ! 2360
	lw	a2, a1, 8 ! 2361
	li	a3, 2 ! 2361
	bne	a2, a3, be_else.18735
	lw	a2, a1, 28 ! 2362
	flw	fa0, a2, 0 ! 365
	li	a2, l.12811 ! 2362
	flw	fa1, a2, 0 ! 2362
	sw	sp, a0, 232 ! 0
	sw	sp, a1, 236 ! 0
	sw	sp, ra, 240
	addi	sp, sp, 244
	jal	min_caml_fless
	addi	sp, sp, -244
	lw	ra, sp, 240
	li	a1, 0 ! 2362
	bne	a0, a1, be_else.18737
	j	be_cont.18738
be_else.18737:
	lw	a1, sp, 236 ! 0
	lw	a0, a1, 4 ! 2363
	li	a2, 1 ! 2365
	bne	a0, a2, be_else.18739
	lw	a0, sp, 232 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	j	be_cont.18740
be_else.18739:
	li	a2, 2 ! 2367
	bne	a0, a2, be_else.18741
	lw	a0, sp, 232 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	j	be_cont.18742
be_else.18741:
be_cont.18742:
be_cont.18740:
be_cont.18738:
	j	be_cont.18736
be_else.18735:
be_cont.18736:
	j	bge_cont.18734
bge_else.18733:
bge_cont.18734:
	li	a1, 0 ! 2396
	li	a2, 0 ! 2396
	lw	a0, sp, 172 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	li	a1, 0 ! 2397
	li	a2, 2 ! 2397
	lw	a0, sp, 88 ! 0
	lw	a3, a0, 4 ! 2144
	blt	a1, a3, bge_else.18743
	ret ! 2151
bge_else.18743:
	lw	a0, a0, 4 ! 2146
	addi	a0, a0, -1 ! 2146
	sw	sp, a1, 240 ! 0
	blt	a1, a0, bge_else.18745
	j	bge_cont.18746
bge_else.18745:
	li	a0, 1 ! 2147
	lw	a3, sp, 208 ! 0
	lw	a21, sp, 8 ! 0
	mv	a1, a0
	mv	a0, a3
	sw	sp, ra, 244
	addi	sp, sp, 248
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -248
	lw	ra, sp, 244
bge_cont.18746:
	li	a0, 0 ! 2149
	lw	a1, sp, 240 ! 0
	lw	a2, sp, 136 ! 0
	lw	a3, sp, 172 ! 0
	lw	a4, sp, 208 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 244
	addi	sp, sp, 248
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -248
	lw	ra, sp, 244
	li	a0, 1 ! 2150
	li	a4, 4 ! 130
	lw	a1, sp, 172 ! 0
	lw	a2, sp, 208 ! 0
	lw	a3, sp, 136 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 244
	addi	sp, sp, 248
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -248
	lw	ra, sp, 244
	ret ! 2150
min_caml_start:
	li	a0, 1 ! 23
	li	a1, 0 ! 23
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 0 ! 27
	li	a2, l.12849 ! 27
	flw	fa0, a2, 0 ! 27
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 60 ! 28
	li	a2, 0 ! 28
	li	a3, 0 ! 28
	li	a4, 0 ! 28
	li	a5, 0 ! 28
	li	a6, 0 ! 28
	mv	a7, hp ! 28
	addi	hp, hp, 44 ! 28
	sw	a7, a0, 40 ! 28
	sw	a7, a0, 36 ! 28
	sw	a7, a0, 32 ! 28
	sw	a7, a0, 28 ! 28
	sw	a7, a6, 24 ! 28
	sw	a7, a0, 20 ! 28
	sw	a7, a0, 16 ! 28
	sw	a7, a5, 12 ! 28
	sw	a7, a4, 8 ! 28
	sw	a7, a3, 4 ! 28
	sw	a7, a2, 0 ! 28
	mv	a0, a7 ! 28
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 3 ! 31
	li	a2, l.12849 ! 31
	flw	fa0, a2, 0 ! 31
	sw	sp, a0, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 3 ! 33
	li	a2, l.12849 ! 33
	flw	fa0, a2, 0 ! 33
	sw	sp, a0, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_float_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 3 ! 35
	li	a2, l.12849 ! 35
	flw	fa0, a2, 0 ! 35
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_float_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 1 ! 37
	li	a2, l.13508 ! 37
	flw	fa0, a2, 0 ! 37
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_float_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 50 ! 39
	li	a2, 1 ! 39
	li	a3, -1 ! 39
	sw	sp, a0, 20 ! 0
	sw	sp, a1, 24 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 1 ! 41
	li	a2, 1 ! 41
	lw	a3, a0, 0 ! 41
	sw	sp, a0, 28 ! 0
	sw	sp, a1, 32 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 1 ! 45
	li	a2, l.12849 ! 45
	flw	fa0, a2, 0 ! 45
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 1 ! 47
	li	a2, 0 ! 47
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 1 ! 49
	li	a2, l.13418 ! 49
	flw	fa0, a2, 0 ! 49
	sw	sp, a0, 44 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_float_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 3 ! 51
	li	a2, l.12849 ! 51
	flw	fa0, a2, 0 ! 51
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 1 ! 53
	li	a2, 0 ! 53
	sw	sp, a0, 52 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 3 ! 55
	li	a2, l.12849 ! 55
	flw	fa0, a2, 0 ! 55
	sw	sp, a0, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 3 ! 57
	li	a2, l.12849 ! 57
	flw	fa0, a2, 0 ! 57
	sw	sp, a0, 60 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_float_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 3 ! 60
	li	a2, l.12849 ! 60
	flw	fa0, a2, 0 ! 60
	sw	sp, a0, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_create_float_array
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 3 ! 62
	li	a2, l.12849 ! 62
	flw	fa0, a2, 0 ! 62
	sw	sp, a0, 68 ! 0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_create_float_array
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 2 ! 65
	li	a2, 0 ! 65
	sw	sp, a0, 72 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_create_array
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 2 ! 67
	li	a2, 0 ! 67
	sw	sp, a0, 76 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_create_array
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 1 ! 69
	li	a2, l.12849 ! 69
	flw	fa0, a2, 0 ! 69
	sw	sp, a0, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_create_float_array
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 3 ! 72
	li	a2, l.12849 ! 72
	flw	fa0, a2, 0 ! 72
	sw	sp, a0, 84 ! 0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_create_float_array
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 3 ! 74
	li	a2, l.12849 ! 74
	flw	fa0, a2, 0 ! 74
	sw	sp, a0, 88 ! 0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_create_float_array
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 3 ! 77
	li	a2, l.12849 ! 77
	flw	fa0, a2, 0 ! 77
	sw	sp, a0, 92 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_create_float_array
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 3 ! 78
	li	a2, l.12849 ! 78
	flw	fa0, a2, 0 ! 78
	sw	sp, a0, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_create_float_array
	addi	sp, sp, -104
	lw	ra, sp, 100
	li	a1, 3 ! 79
	li	a2, l.12849 ! 79
	flw	fa0, a2, 0 ! 79
	sw	sp, a0, 100 ! 0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_create_float_array
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 3 ! 82
	li	a2, l.12849 ! 82
	flw	fa0, a2, 0 ! 82
	sw	sp, a0, 104 ! 0
	mv	a0, a1
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_create_float_array
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 86
	li	a2, l.12849 ! 86
	flw	fa0, a2, 0 ! 86
	sw	sp, a0, 108 ! 0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_create_float_array
	addi	sp, sp, -116
	lw	ra, sp, 112
	mv	a1, a0
	li	a0, 0 ! 87
	sw	sp, a1, 112 ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 88
	mv	a2, hp ! 88
	addi	hp, hp, 8 ! 88
	sw	a2, a0, 4 ! 88
	lw	a0, sp, 112 ! 0
	sw	a2, a0, 0 ! 88
	mv	a0, a2 ! 88
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	mv	a1, a0
	li	a0, 5 ! 89
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 93
	li	a2, l.12849 ! 93
	flw	fa0, a2, 0 ! 93
	sw	sp, a0, 116 ! 0
	mv	a0, a1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_create_float_array
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a1, 3 ! 94
	li	a2, l.12849 ! 94
	flw	fa0, a2, 0 ! 94
	sw	sp, a0, 120 ! 0
	mv	a0, a1
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_create_float_array
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a1, 60 ! 95
	lw	a2, sp, 120 ! 0
	sw	sp, a0, 124 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_create_array
	addi	sp, sp, -132
	lw	ra, sp, 128
	mv	a1, hp ! 96
	addi	hp, hp, 8 ! 96
	sw	a1, a0, 4 ! 96
	lw	a2, sp, 124 ! 0
	sw	a1, a2, 0 ! 96
	li	a3, 0 ! 100
	li	a4, l.12849 ! 100
	flw	fa0, a4, 0 ! 100
	sw	sp, a1, 128 ! 0
	sw	sp, a0, 132 ! 0
	mv	a0, a3
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_create_float_array
	addi	sp, sp, -140
	lw	ra, sp, 136
	mv	a1, a0
	li	a0, 0 ! 101
	sw	sp, a1, 136 ! 0
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_create_array
	addi	sp, sp, -144
	lw	ra, sp, 140
	mv	a1, hp ! 102
	addi	hp, hp, 8 ! 102
	sw	a1, a0, 4 ! 102
	lw	a0, sp, 136 ! 0
	sw	a1, a0, 0 ! 102
	mv	a0, a1 ! 102
	li	a1, 180 ! 103
	li	a2, 0 ! 103
	li	a3, l.12849 ! 103
	flw	fa0, a3, 0 ! 103
	mv	a3, hp ! 103
	addi	hp, hp, 12 ! 103
	fsw	a3, fa0, 8 ! 103
	sw	a3, a0, 4 ! 103
	sw	a3, a2, 0 ! 103
	mv	a0, a3 ! 103
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_create_array
	addi	sp, sp, -144
	lw	ra, sp, 140
	li	a1, 1 ! 107
	li	a2, 0 ! 107
	sw	sp, a0, 140 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_create_array
	addi	sp, sp, -148
	lw	ra, sp, 144
	mv	a1, hp ! 580
	addi	hp, hp, 24 ! 580
	li	a2, read_screen_settings.2595 ! 580
	sw	a1, a2, 0 ! 580
	lw	a2, sp, 12 ! 0
	sw	a1, a2, 20 ! 580
	lw	a3, sp, 104 ! 0
	sw	a1, a3, 16 ! 580
	lw	a4, sp, 100 ! 0
	sw	a1, a4, 12 ! 580
	lw	a5, sp, 96 ! 0
	sw	a1, a5, 8 ! 580
	lw	a6, sp, 8 ! 0
	sw	a1, a6, 4 ! 580
	mv	a6, hp ! 613
	addi	hp, hp, 12 ! 613
	li	a7, read_light.2597 ! 613
	sw	a6, a7, 0 ! 613
	lw	a7, sp, 16 ! 0
	sw	a6, a7, 8 ! 613
	lw	a8, sp, 20 ! 0
	sw	a6, a8, 4 ! 613
	mv	a9, hp ! 676
	addi	hp, hp, 8 ! 676
	li	a10, read_nth_object.2602 ! 676
	sw	a9, a10, 0 ! 676
	lw	a10, sp, 4 ! 0
	sw	a9, a10, 4 ! 676
	mv	a11, hp ! 759
	addi	hp, hp, 12 ! 759
	li	a12, read_object.2604 ! 759
	sw	a11, a12, 0 ! 759
	sw	a11, a9, 8 ! 759
	lw	a12, sp, 0 ! 0
	sw	a11, a12, 4 ! 759
	mv	a13, hp ! 792
	addi	hp, hp, 8 ! 792
	li	a14, read_and_network.2612 ! 792
	sw	a13, a14, 0 ! 792
	lw	a14, sp, 28 ! 0
	sw	a13, a14, 4 ! 792
	mv	a15, hp ! 827
	addi	hp, hp, 8 ! 827
	li	a16, solver_rect_surface.2616 ! 827
	sw	a15, a16, 0 ! 827
	lw	a16, sp, 40 ! 0
	sw	a15, a16, 4 ! 827
	mv	a17, hp ! 851
	addi	hp, hp, 8 ! 851
	li	a18, solver_surface.2631 ! 851
	sw	a17, a18, 0 ! 851
	sw	a17, a16, 4 ! 851
	mv	a18, hp ! 903
	addi	hp, hp, 8 ! 903
	li	a19, solver_second.2650 ! 903
	sw	a18, a19, 0 ! 903
	sw	a18, a16, 4 ! 903
	mv	a19, hp ! 932
	addi	hp, hp, 20 ! 932
	li	a20, solver.2656 ! 932
	sw	a19, a20, 0 ! 932
	sw	a19, a18, 16 ! 932
	sw	a19, a15, 12 ! 932
	sw	a19, a16, 8 ! 932
	sw	a19, a10, 4 ! 932
	mv	a20, hp ! 964
	addi	hp, hp, 8 ! 964
	li	a21, solver_rect_fast.2660 ! 964
	sw	a20, a21, 0 ! 964
	sw	a20, a16, 4 ! 964
	mv	a21, hp ! 1006
	addi	hp, hp, 8 ! 1006
	sw	sp, a13, 144 ! 0
	li	a13, solver_second_fast.2673 ! 1006
	sw	a21, a13, 0 ! 1006
	sw	a21, a16, 4 ! 1006
	mv	a13, hp ! 1054
	addi	hp, hp, 8 ! 1054
	sw	sp, a6, 148 ! 0
	li	a6, solver_second_fast2.2690 ! 1054
	sw	a13, a6, 0 ! 1054
	sw	a13, a16, 4 ! 1054
	mv	a6, hp ! 1073
	addi	hp, hp, 20 ! 1073
	sw	sp, a9, 152 ! 0
	li	a9, solver_fast2.2697 ! 1073
	sw	a6, a9, 0 ! 1073
	sw	a6, a13, 16 ! 1073
	sw	a6, a20, 12 ! 1073
	sw	a6, a16, 8 ! 1073
	sw	a6, a10, 4 ! 1073
	mv	a9, hp ! 1170
	addi	hp, hp, 8 ! 1170
	sw	sp, a11, 156 ! 0
	li	a11, iter_setup_dirvec_constants.2709 ! 1170
	sw	a9, a11, 0 ! 1170
	sw	a9, a10, 4 ! 1170
	mv	a11, hp ! 1195
	addi	hp, hp, 8 ! 1195
	sw	sp, a1, 160 ! 0
	li	a1, setup_startp_constants.2714 ! 1195
	sw	a11, a1, 0 ! 1195
	sw	a11, a10, 4 ! 1195
	mv	a1, hp ! 1264
	addi	hp, hp, 8 ! 1264
	sw	sp, a9, 164 ! 0
	li	a9, check_all_inside.2739 ! 1264
	sw	a1, a9, 0 ! 1264
	sw	a1, a10, 4 ! 1264
	mv	a9, hp ! 1284
	addi	hp, hp, 40 ! 1284
	li	a4, shadow_check_and_group.2745 ! 1284
	sw	a9, a4, 0 ! 1284
	lw	a4, sp, 124 ! 0
	sw	a9, a4, 36 ! 1284
	sw	a9, a21, 32 ! 1284
	sw	a9, a20, 28 ! 1284
	sw	a9, a16, 24 ! 1284
	sw	a9, a10, 20 ! 1284
	sw	a9, a7, 16 ! 1284
	lw	a3, sp, 52 ! 0
	sw	a9, a3, 12 ! 1284
	lw	a5, sp, 132 ! 0
	sw	a9, a5, 8 ! 1284
	sw	a9, a1, 4 ! 1284
	mv	a2, hp ! 1314
	addi	hp, hp, 12 ! 1314
	li	a8, shadow_check_one_or_group.2748 ! 1314
	sw	a2, a8, 0 ! 1314
	sw	a2, a9, 8 ! 1314
	sw	a2, a14, 4 ! 1314
	mv	a8, hp ! 1329
	addi	hp, hp, 44 ! 1329
	li	a7, shadow_check_one_or_matrix.2751 ! 1329
	sw	a8, a7, 0 ! 1329
	sw	a8, a4, 40 ! 1329
	sw	a8, a21, 36 ! 1329
	sw	a8, a20, 32 ! 1329
	sw	a8, a16, 28 ! 1329
	sw	a8, a2, 24 ! 1329
	sw	a8, a9, 20 ! 1329
	sw	a8, a10, 16 ! 1329
	sw	a8, a3, 12 ! 1329
	sw	a8, a5, 8 ! 1329
	sw	a8, a14, 4 ! 1329
	mv	a2, hp ! 1365
	addi	hp, hp, 48 ! 1365
	li	a5, solve_each_element.2754 ! 1365
	sw	a2, a5, 0 ! 1365
	lw	a5, sp, 48 ! 0
	sw	a2, a5, 44 ! 1365
	lw	a7, sp, 88 ! 0
	sw	a2, a7, 40 ! 1365
	sw	a2, a17, 36 ! 1365
	sw	a2, a18, 32 ! 1365
	sw	a2, a15, 28 ! 1365
	sw	a2, a16, 24 ! 1365
	sw	a2, a10, 20 ! 1365
	lw	a9, sp, 44 ! 0
	sw	a2, a9, 16 ! 1365
	sw	a2, a3, 12 ! 1365
	lw	a21, sp, 56 ! 0
	sw	a2, a21, 8 ! 1365
	sw	a2, a1, 4 ! 1365
	mv	a4, hp ! 1406
	addi	hp, hp, 12 ! 1406
	li	a12, solve_one_or_network.2758 ! 1406
	sw	a4, a12, 0 ! 1406
	sw	a4, a2, 8 ! 1406
	sw	a4, a14, 4 ! 1406
	mv	a12, hp ! 1416
	addi	hp, hp, 48 ! 1416
	sw	sp, a0, 168 ! 0
	li	a0, trace_or_matrix.2762 ! 1416
	sw	a12, a0, 0 ! 1416
	sw	a12, a5, 44 ! 1416
	sw	a12, a7, 40 ! 1416
	sw	a12, a17, 36 ! 1416
	sw	a12, a18, 32 ! 1416
	sw	a12, a15, 28 ! 1416
	sw	a12, a16, 24 ! 1416
	sw	a12, a19, 20 ! 1416
	sw	a12, a4, 16 ! 1416
	sw	a12, a2, 12 ! 1416
	sw	a12, a10, 8 ! 1416
	sw	a12, a14, 4 ! 1416
	mv	a0, hp ! 1458
	addi	hp, hp, 44 ! 1458
	li	a2, solve_each_element_fast.2768 ! 1458
	sw	a0, a2, 0 ! 1458
	sw	a0, a5, 40 ! 1458
	lw	a2, sp, 92 ! 0
	sw	a0, a2, 36 ! 1458
	sw	a0, a13, 32 ! 1458
	sw	a0, a20, 28 ! 1458
	sw	a0, a16, 24 ! 1458
	sw	a0, a10, 20 ! 1458
	sw	a0, a9, 16 ! 1458
	sw	a0, a3, 12 ! 1458
	sw	a0, a21, 8 ! 1458
	sw	a0, a1, 4 ! 1458
	mv	a1, hp ! 1499
	addi	hp, hp, 12 ! 1499
	li	a4, solve_one_or_network_fast.2772 ! 1499
	sw	a1, a4, 0 ! 1499
	sw	a1, a0, 8 ! 1499
	sw	a1, a14, 4 ! 1499
	mv	a4, hp ! 1509
	addi	hp, hp, 40 ! 1509
	li	a15, trace_or_matrix_fast.2776 ! 1509
	sw	a4, a15, 0 ! 1509
	sw	a4, a5, 36 ! 1509
	sw	a4, a13, 32 ! 1509
	sw	a4, a20, 28 ! 1509
	sw	a4, a6, 24 ! 1509
	sw	a4, a16, 20 ! 1509
	sw	a4, a1, 16 ! 1509
	sw	a4, a0, 12 ! 1509
	sw	a4, a10, 8 ! 1509
	sw	a4, a14, 4 ! 1509
	mv	a13, hp ! 1533
	addi	hp, hp, 36 ! 1533
	li	a15, judge_intersection_fast.2780 ! 1533
	sw	a13, a15, 0 ! 1533
	sw	a13, a4, 32 ! 1533
	sw	a13, a5, 28 ! 1533
	sw	a13, a6, 24 ! 1533
	sw	a13, a16, 20 ! 1533
	sw	a13, a1, 16 ! 1533
	sw	a13, a0, 12 ! 1533
	lw	a0, sp, 36 ! 0
	sw	a13, a0, 8 ! 1533
	sw	a13, a14, 4 ! 1533
	mv	a1, hp ! 1570
	addi	hp, hp, 12 ! 1570
	li	a6, get_nvector_second.2786 ! 1570
	sw	a1, a6, 0 ! 1570
	lw	a6, sp, 60 ! 0
	sw	a1, a6, 8 ! 1570
	sw	a1, a3, 4 ! 1570
	mv	a14, hp ! 1592
	addi	hp, hp, 16 ! 1592
	li	a15, get_nvector.2788 ! 1592
	sw	a14, a15, 0 ! 1592
	sw	a14, a6, 12 ! 1592
	sw	a14, a9, 8 ! 1592
	sw	a14, a1, 4 ! 1592
	mv	a15, hp ! 1608
	addi	hp, hp, 8 ! 1608
	li	a16, utexture.2791 ! 1608
	sw	a15, a16, 0 ! 1608
	lw	a16, sp, 64 ! 0
	sw	a15, a16, 4 ! 1608
	mv	a17, hp ! 1703
	addi	hp, hp, 44 ! 1703
	li	a18, trace_reflections.2798 ! 1703
	sw	a17, a18, 0 ! 1703
	sw	a17, a4, 40 ! 1703
	sw	a17, a5, 36 ! 1703
	sw	a17, a16, 32 ! 1703
	sw	a17, a8, 28 ! 1703
	lw	a18, sp, 72 ! 0
	sw	a17, a18, 24 ! 1703
	lw	a19, sp, 140 ! 0
	sw	a17, a19, 20 ! 1703
	sw	a17, a0, 16 ! 1703
	sw	a17, a6, 12 ! 1703
	sw	a17, a9, 8 ! 1703
	sw	a17, a21, 4 ! 1703
	mv	a20, hp ! 1732
	addi	hp, hp, 88 ! 1732
	li	a19, trace_ray.2803 ! 1732
	sw	a20, a19, 0 ! 1732
	sw	a20, a15, 84 ! 1732
	sw	a20, a17, 80 ! 1732
	sw	a20, a12, 76 ! 1732
	sw	a20, a5, 72 ! 1732
	sw	a20, a16, 68 ! 1732
	sw	a20, a2, 64 ! 1732
	sw	a20, a7, 60 ! 1732
	sw	a20, a8, 56 ! 1732
	sw	a20, a11, 52 ! 1732
	sw	a20, a18, 48 ! 1732
	sw	a20, a0, 44 ! 1732
	sw	a20, a10, 40 ! 1732
	sw	a20, a6, 36 ! 1732
	lw	a12, sp, 168 ! 0
	sw	a20, a12, 32 ! 1732
	lw	a17, sp, 0 ! 0
	sw	a20, a17, 28 ! 1732
	lw	a19, sp, 16 ! 0
	sw	a20, a19, 24 ! 1732
	sw	a20, a9, 20 ! 1732
	sw	a20, a3, 16 ! 1732
	sw	a20, a21, 12 ! 1732
	sw	a20, a1, 8 ! 1732
	lw	a12, sp, 20 ! 0
	sw	a20, a12, 4 ! 1732
	mv	a12, hp ! 1825
	addi	hp, hp, 60 ! 1825
	li	a7, trace_diffuse_ray.2809 ! 1825
	sw	a12, a7, 0 ! 1825
	sw	a12, a15, 56 ! 1825
	sw	a12, a4, 52 ! 1825
	sw	a12, a5, 48 ! 1825
	sw	a12, a16, 44 ! 1825
	sw	a12, a8, 40 ! 1825
	sw	a12, a0, 36 ! 1825
	sw	a12, a10, 32 ! 1825
	sw	a12, a6, 28 ! 1825
	sw	a12, a19, 24 ! 1825
	sw	a12, a9, 20 ! 1825
	sw	a12, a3, 16 ! 1825
	sw	a12, a21, 12 ! 1825
	sw	a12, a1, 8 ! 1825
	lw	a1, sp, 68 ! 0
	sw	a12, a1, 4 ! 1825
	mv	a4, hp ! 1844
	addi	hp, hp, 56 ! 1844
	li	a5, iter_trace_diffuse_rays.2812 ! 1844
	sw	a4, a5, 0 ! 1844
	sw	a4, a15, 52 ! 1844
	sw	a4, a12, 48 ! 1844
	sw	a4, a16, 44 ! 1844
	sw	a4, a8, 40 ! 1844
	sw	a4, a0, 36 ! 1844
	sw	a4, a10, 32 ! 1844
	sw	a4, a6, 28 ! 1844
	sw	a4, a19, 24 ! 1844
	sw	a4, a13, 20 ! 1844
	sw	a4, a3, 16 ! 1844
	sw	a4, a21, 12 ! 1844
	sw	a4, a14, 8 ! 1844
	sw	a4, a1, 4 ! 1844
	mv	a3, hp ! 1870
	addi	hp, hp, 24 ! 1870
	li	a5, trace_diffuse_ray_80percent.2821 ! 1870
	sw	a3, a5, 0 ! 1870
	sw	a3, a2, 20 ! 1870
	sw	a3, a11, 16 ! 1870
	sw	a3, a17, 12 ! 1870
	sw	a3, a4, 8 ! 1870
	lw	a5, sp, 116 ! 0
	sw	a3, a5, 4 ! 1870
	mv	a6, hp ! 1896
	addi	hp, hp, 36 ! 1896
	li	a7, calc_diffuse_using_1point.2825 ! 1896
	sw	a6, a7, 0 ! 1896
	sw	a6, a12, 32 ! 1896
	sw	a6, a2, 28 ! 1896
	sw	a6, a11, 24 ! 1896
	sw	a6, a18, 20 ! 1896
	sw	a6, a17, 16 ! 1896
	sw	a6, a4, 12 ! 1896
	sw	a6, a5, 8 ! 1896
	sw	a6, a1, 4 ! 1896
	mv	a7, hp ! 1915
	addi	hp, hp, 12 ! 1915
	li	a8, calc_diffuse_using_5points.2828 ! 1915
	sw	a7, a8, 0 ! 1915
	sw	a7, a18, 8 ! 1915
	sw	a7, a1, 4 ! 1915
	mv	a8, hp ! 1935
	addi	hp, hp, 20 ! 1935
	li	a9, do_without_neighbors.2834 ! 1935
	sw	a8, a9, 0 ! 1935
	sw	a8, a3, 16 ! 1935
	sw	a8, a18, 12 ! 1935
	sw	a8, a1, 8 ! 1935
	sw	a8, a6, 4 ! 1935
	mv	a3, hp ! 1987
	addi	hp, hp, 16 ! 1987
	li	a9, try_exploit_neighbors.2850 ! 1987
	sw	a3, a9, 0 ! 1987
	sw	a3, a8, 12 ! 1987
	sw	a3, a7, 8 ! 1987
	sw	a3, a6, 4 ! 1987
	mv	a9, hp ! 2034
	addi	hp, hp, 8 ! 2034
	li	a13, write_rgb.2861 ! 2034
	sw	a9, a13, 0 ! 2034
	sw	a9, a18, 4 ! 2034
	mv	a13, hp ! 2051
	addi	hp, hp, 32 ! 2051
	li	a14, pretrace_diffuse_rays.2863 ! 2051
	sw	a13, a14, 0 ! 2051
	sw	a13, a12, 28 ! 2051
	sw	a13, a2, 24 ! 2051
	sw	a13, a11, 20 ! 2051
	sw	a13, a17, 16 ! 2051
	sw	a13, a4, 12 ! 2051
	sw	a13, a5, 8 ! 2051
	sw	a13, a1, 4 ! 2051
	mv	a14, hp ! 2081
	addi	hp, hp, 68 ! 2081
	li	a15, pretrace_pixels.2866 ! 2081
	sw	a14, a15, 0 ! 2081
	lw	a15, sp, 12 ! 0
	sw	a14, a15, 64 ! 2081
	sw	a14, a20, 60 ! 2081
	sw	a14, a12, 56 ! 2081
	sw	a14, a2, 52 ! 2081
	lw	a2, sp, 88 ! 0
	sw	a14, a2, 48 ! 2081
	sw	a14, a11, 44 ! 2081
	lw	a2, sp, 96 ! 0
	sw	a14, a2, 40 ! 2081
	lw	a2, sp, 84 ! 0
	sw	a14, a2, 36 ! 2081
	sw	a14, a18, 32 ! 2081
	lw	a11, sp, 108 ! 0
	sw	a14, a11, 28 ! 2081
	sw	a14, a13, 24 ! 2081
	sw	a14, a17, 20 ! 2081
	sw	a14, a4, 16 ! 2081
	lw	a4, sp, 80 ! 0
	sw	a14, a4, 12 ! 2081
	sw	a14, a5, 8 ! 2081
	sw	a14, a1, 4 ! 2081
	mv	a1, hp ! 2106
	addi	hp, hp, 28 ! 2106
	li	a11, pretrace_line.2873 ! 2106
	sw	a1, a11, 0 ! 2106
	lw	a11, sp, 104 ! 0
	sw	a1, a11, 24 ! 2106
	lw	a11, sp, 100 ! 0
	sw	a1, a11, 20 ! 2106
	sw	a1, a2, 16 ! 2106
	sw	a1, a14, 12 ! 2106
	lw	a11, sp, 76 ! 0
	sw	a1, a11, 8 ! 2106
	sw	a1, a4, 4 ! 2106
	mv	a12, hp ! 2122
	addi	hp, hp, 32 ! 2122
	li	a13, scan_pixel.2877 ! 2122
	sw	a12, a13, 0 ! 2122
	sw	a12, a9, 28 ! 2122
	sw	a12, a3, 24 ! 2122
	sw	a12, a18, 20 ! 2122
	sw	a12, a11, 16 ! 2122
	sw	a12, a8, 12 ! 2122
	sw	a12, a7, 8 ! 2122
	sw	a12, a6, 4 ! 2122
	mv	a6, hp ! 2142
	addi	hp, hp, 32 ! 2142
	li	a7, scan_line.2883 ! 2142
	sw	a6, a7, 0 ! 2142
	sw	a6, a9, 28 ! 2142
	sw	a6, a3, 24 ! 2142
	sw	a6, a12, 20 ! 2142
	sw	a6, a18, 16 ! 2142
	sw	a6, a1, 12 ! 2142
	sw	a6, a11, 8 ! 2142
	sw	a6, a8, 4 ! 2142
	mv	a3, hp ! 2222
	addi	hp, hp, 8 ! 2222
	li	a7, calc_dirvec.2903 ! 2222
	sw	a3, a7, 0 ! 2222
	sw	a3, a5, 4 ! 2222
	mv	a7, hp ! 2243
	addi	hp, hp, 8 ! 2243
	li	a8, calc_dirvecs.2911 ! 2243
	sw	a7, a8, 0 ! 2243
	sw	a7, a3, 4 ! 2243
	mv	a3, hp ! 2257
	addi	hp, hp, 8 ! 2257
	li	a8, calc_dirvec_rows.2916 ! 2257
	sw	a3, a8, 0 ! 2257
	sw	a3, a7, 4 ! 2257
	mv	a7, hp ! 2276
	addi	hp, hp, 8 ! 2276
	li	a8, create_dirvec_elements.2922 ! 2276
	sw	a7, a8, 0 ! 2276
	sw	a7, a17, 4 ! 2276
	mv	a8, hp ! 2283
	addi	hp, hp, 16 ! 2283
	li	a9, create_dirvecs.2925 ! 2283
	sw	a8, a9, 0 ! 2283
	sw	a8, a17, 12 ! 2283
	sw	a8, a5, 8 ! 2283
	sw	a8, a7, 4 ! 2283
	mv	a7, hp ! 2295
	addi	hp, hp, 16 ! 2295
	li	a9, init_dirvec_constants.2927 ! 2295
	sw	a7, a9, 0 ! 2295
	sw	a7, a10, 12 ! 2295
	sw	a7, a17, 8 ! 2295
	lw	a9, sp, 164 ! 0
	sw	a7, a9, 4 ! 2295
	mv	a13, hp ! 2302
	addi	hp, hp, 24 ! 2302
	li	a14, init_vecset_constants.2930 ! 2302
	sw	a13, a14, 0 ! 2302
	sw	a13, a10, 20 ! 2302
	sw	a13, a17, 16 ! 2302
	sw	a13, a9, 12 ! 2302
	sw	a13, a7, 8 ! 2302
	sw	a13, a5, 4 ! 2302
	mv	a14, hp ! 2329
	addi	hp, hp, 28 ! 2329
	li	a15, setup_rect_reflection.2941 ! 2329
	sw	a14, a15, 0 ! 2329
	lw	a15, sp, 140 ! 0
	sw	a14, a15, 24 ! 2329
	sw	a14, a10, 20 ! 2329
	lw	a16, sp, 168 ! 0
	sw	a14, a16, 16 ! 2329
	sw	a14, a17, 12 ! 2329
	sw	a14, a19, 8 ! 2329
	sw	a14, a9, 4 ! 2329
	mv	a18, hp ! 2343
	addi	hp, hp, 28 ! 2343
	li	a20, setup_surface_reflection.2944 ! 2343
	sw	a18, a20, 0 ! 2343
	sw	a18, a15, 24 ! 2343
	sw	a18, a10, 20 ! 2343
	sw	a18, a16, 16 ! 2343
	sw	a18, a17, 12 ! 2343
	sw	a18, a19, 8 ! 2343
	sw	a18, a9, 4 ! 2343
	mv	a21, hp ! 2380
	addi	hp, hp, 104 ! 2380
	li	a15, rt.2949 ! 2380
	sw	a21, a15, 0 ! 2380
	lw	a15, sp, 124 ! 0
	sw	a21, a15, 100 ! 2380
	sw	a21, a18, 96 ! 2380
	sw	a21, a14, 92 ! 2380
	sw	a21, a12, 88 ! 2380
	sw	a21, a2, 84 ! 2380
	sw	a21, a6, 80 ! 2380
	lw	a2, sp, 160 ! 0
	sw	a21, a2, 76 ! 2380
	lw	a2, sp, 156 ! 0
	sw	a21, a2, 72 ! 2380
	lw	a2, sp, 152 ! 0
	sw	a21, a2, 68 ! 2380
	lw	a2, sp, 148 ! 0
	sw	a21, a2, 64 ! 2380
	lw	a2, sp, 144 ! 0
	sw	a21, a2, 60 ! 2380
	sw	a21, a1, 56 ! 2380
	sw	a21, a0, 52 ! 2380
	sw	a21, a10, 48 ! 2380
	sw	a21, a17, 44 ! 2380
	lw	a0, sp, 128 ! 0
	sw	a21, a0, 40 ! 2380
	sw	a21, a19, 36 ! 2380
	sw	a21, a9, 32 ! 2380
	sw	a21, a13, 28 ! 2380
	sw	a21, a7, 24 ! 2380
	sw	a21, a11, 20 ! 2380
	sw	a21, a4, 16 ! 2380
	sw	a21, a5, 12 ! 2380
	sw	a21, a8, 8 ! 2380
	sw	a21, a3, 4 ! 2380
	li	a0, 128 ! 2402
	li	a1, 128 ! 2402
	sw	sp, ra, 172
	addi	sp, sp, 176
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -176
	lw	ra, sp, 172
	li	zero, 0 ! 2404
	fin	0
