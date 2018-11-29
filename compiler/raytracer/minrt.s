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
	flw	fa0, a0, 0 ! 184-184
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fsqr
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 4 ! 184-184
	fsw	sp, fa0, 8 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fsqr
	addi	sp, sp, -16
	lw	ra, sp, 12
	flw	fa1, sp, 8 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 184-184
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 8 ! 184-184
	fsw	sp, fa0, 12 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fsqr
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 12 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 184-184
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_sqrt
	addi	sp, sp, -20
	lw	ra, sp, 16
	fsw	sp, fa0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fiszero
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 185-185
	bne	a0, a1, beq_else.17783 ! 185-185
	li	a0, 0 ! 185-185
	lw	a1, sp, 0 ! 0-0
	bne	a1, a0, beq_else.17785 ! 185-185
	li	a0, l.12811 ! 185-185
	flw	fa0, a0, 0 ! 185-185
	flw	fa1, sp, 16 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 185-185
	j	beq_cont.17786
beq_else.17785:
	li	a0, l.12813 ! 185-185
	flw	fa0, a0, 0 ! 185-185
	flw	fa1, sp, 16 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 185-185
beq_cont.17786:
	j	beq_cont.17784
beq_else.17783:
	li	a0, l.12811 ! 185-185
	flw	fa0, a0, 0 ! 185-185
beq_cont.17784:
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 186-186
	fmul.s	fa1, fa1, fa0, rne ! 186-186
	fsw	a0, fa1, 0 ! 186-186
	flw	fa1, a0, 4 ! 187-187
	fmul.s	fa1, fa1, fa0, rne ! 187-187
	fsw	a0, fa1, 4 ! 187-187
	flw	fa1, a0, 8 ! 188-188
	fmul.s	fa0, fa1, fa0, rne ! 188-188
	fsw	a0, fa0, 8 ! 188-188
	ret ! 188-188
vecaccumv.2518:
	flw	fa0, a0, 0 ! 231-231
	flw	fa1, a1, 0 ! 231-231
	flw	fa2, a2, 0 ! 231-231
	fmul.s	fa1, fa1, fa2, rne ! 231-231
	fadd.s	fa0, fa0, fa1, rne ! 231-231
	fsw	a0, fa0, 0 ! 231-231
	flw	fa0, a0, 4 ! 232-232
	flw	fa1, a1, 4 ! 232-232
	flw	fa2, a2, 4 ! 232-232
	fmul.s	fa1, fa1, fa2, rne ! 232-232
	fadd.s	fa0, fa0, fa1, rne ! 232-232
	fsw	a0, fa0, 4 ! 232-232
	flw	fa0, a0, 8 ! 233-233
	flw	fa1, a1, 8 ! 233-233
	flw	fa2, a2, 8 ! 233-233
	fmul.s	fa1, fa1, fa2, rne ! 233-233
	fadd.s	fa0, fa0, fa1, rne ! 233-233
	fsw	a0, fa0, 8 ! 233-233
	ret ! 233-233
read_screen_settings.2595:
	lw	a0, a21, 20 ! 0-0
	lw	a1, a21, 16 ! 0-0
	lw	a2, a21, 12 ! 0-0
	lw	a3, a21, 8 ! 0-0
	lw	a4, a21, 4 ! 0-0
	sw	sp, a0, 0 ! 0-0
	sw	sp, a2, 4 ! 0-0
	sw	sp, a3, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a4, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0-0
	fsw	a0, fa0, 0 ! 583-583
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0-0
	fsw	a0, fa0, 4 ! 584-584
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0-0
	fsw	a0, fa0, 8 ! 585-585
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, l.12837 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	fsw	sp, fa0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_cos
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 20 ! 0-0
	fsw	sp, fa0, 24 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_sin
	addi	sp, sp, -32
	lw	ra, sp, 28
	fsw	sp, fa0, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.12837 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	fsw	sp, fa0, 32 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_cos
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 32 ! 0-0
	fsw	sp, fa0, 36 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sin
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 24 ! 0-0
	fmul.s	fa2, fa1, fa0, rne ! 594-594
	li	a0, l.12840 ! 594-594
	flw	fa3, a0, 0 ! 594-594
	fmul.s	fa2, fa2, fa3, rne ! 594-594
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa2, 0 ! 594-594
	li	a1, l.12843 ! 595-595
	flw	fa2, a1, 0 ! 595-595
	flw	fa3, sp, 28 ! 0-0
	fmul.s	fa2, fa3, fa2, rne ! 595-595
	fsw	a0, fa2, 4 ! 595-595
	flw	fa2, sp, 36 ! 0-0
	fmul.s	fa4, fa1, fa2, rne ! 596-596
	li	a1, l.12840 ! 596-596
	flw	fa5, a1, 0 ! 596-596
	fmul.s	fa4, fa4, fa5, rne ! 596-596
	fsw	a0, fa4, 8 ! 596-596
	lw	a1, sp, 8 ! 0-0
	fsw	a1, fa2, 0 ! 598-598
	li	a2, l.12849 ! 599-599
	flw	fa4, a2, 0 ! 599-599
	fsw	a1, fa4, 4 ! 599-599
	fsw	sp, fa0, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 8 ! 600-600
	flw	fa0, sp, 28 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 40 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 602-602
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 0 ! 602-602
	flw	fa0, sp, 24 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 4 ! 603-603
	flw	fa0, sp, 28 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 36 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 604-604
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 8 ! 604-604
	lw	a0, sp, 16 ! 0-0
	flw	fa0, a0, 0 ! 606-606
	lw	a1, sp, 12 ! 0-0
	flw	fa1, a1, 0 ! 606-606
	fsub.s	fa0, fa0, fa1, rne ! 606-606
	lw	a2, sp, 0 ! 0-0
	fsw	a2, fa0, 0 ! 606-606
	flw	fa0, a0, 4 ! 607-607
	flw	fa1, a1, 4 ! 607-607
	fsub.s	fa0, fa0, fa1, rne ! 607-607
	fsw	a2, fa0, 4 ! 607-607
	flw	fa0, a0, 8 ! 608-608
	flw	fa1, a1, 8 ! 608-608
	fsub.s	fa0, fa0, fa1, rne ! 608-608
	fsw	a2, fa0, 8 ! 608-608
	ret ! 608-608
read_light.2597:
	lw	a0, a21, 8 ! 0-0
	lw	a1, a21, 4 ! 0-0
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
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
	li	a0, l.12837 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	fsw	sp, fa0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_sin
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 4 ! 620-620
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.12837 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	flw	fa1, sp, 8 ! 0-0
	fsw	sp, fa0, 12 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_cos
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 12 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_sin
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 16 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 624-624
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 0 ! 624-624
	flw	fa0, sp, 12 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_cos
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 16 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 626-626
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 8 ! 626-626
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 627-627
	ret ! 627-627
rotate_quadratic_matrix.2599:
	flw	fa0, a1, 0 ! 637-637
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 638-638
	fsw	sp, fa0, 8 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_sin
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 4 ! 639-639
	fsw	sp, fa0, 12 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_cos
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 4 ! 640-640
	fsw	sp, fa0, 16 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_sin
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 8 ! 641-641
	fsw	sp, fa0, 20 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_cos
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 8 ! 642-642
	fsw	sp, fa0, 24 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_sin
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24 ! 0-0
	flw	fa2, sp, 16 ! 0-0
	fmul.s	fa3, fa2, fa1, rne ! 644-644
	flw	fa4, sp, 20 ! 0-0
	flw	fa5, sp, 12 ! 0-0
	fmul.s	fa6, fa5, fa4, rne ! 645-645
	fmul.s	fa6, fa6, fa1, rne ! 645-645
	flw	fa7, sp, 8 ! 0-0
	fmul.s	fa8, fa7, fa0, rne ! 645-645
	fsub.s	fa6, fa6, fa8, rne ! 645-645
	fmul.s	fa8, fa7, fa4, rne ! 646-646
	fmul.s	fa8, fa8, fa1, rne ! 646-646
	fmul.s	fa9, fa5, fa0, rne ! 646-646
	fadd.s	fa8, fa8, fa9, rne ! 646-646
	fmul.s	fa9, fa2, fa0, rne ! 648-648
	fmul.s	fa10, fa5, fa4, rne ! 649-649
	fmul.s	fa10, fa10, fa0, rne ! 649-649
	fmul.s	fa11, fa7, fa1, rne ! 649-649
	fadd.s	fa10, fa10, fa11, rne ! 649-649
	fmul.s	fa11, fa7, fa4, rne ! 650-650
	fmul.s	fa0, fa11, fa0, rne ! 650-650
	fmul.s	fa1, fa5, fa1, rne ! 650-650
	fsub.s	fa0, fa0, fa1, rne ! 650-650
	fsw	sp, fa0, 28 ! 0-0
	fsw	sp, fa8, 32 ! 0-0
	fsw	sp, fa10, 36 ! 0-0
	fsw	sp, fa6, 40 ! 0-0
	fsw	sp, fa9, 44 ! 0-0
	fsw	sp, fa3, 48 ! 0-0
	fmv.s	fa0, fa4
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	flw	fa1, sp, 16 ! 0-0
	flw	fa2, sp, 12 ! 0-0
	fmul.s	fa2, fa2, fa1, rne ! 653-653
	flw	fa3, sp, 8 ! 0-0
	fmul.s	fa1, fa3, fa1, rne ! 654-654
	lw	a0, sp, 0 ! 0-0
	flw	fa3, a0, 0 ! 657-657
	flw	fa4, a0, 4 ! 658-658
	flw	fa5, a0, 8 ! 659-659
	flw	fa6, sp, 48 ! 0-0
	fsw	sp, fa1, 52 ! 0-0
	fsw	sp, fa2, 56 ! 0-0
	fsw	sp, fa5, 60 ! 0-0
	fsw	sp, fa0, 64 ! 0-0
	fsw	sp, fa4, 68 ! 0-0
	fsw	sp, fa3, 72 ! 0-0
	fmv.s	fa0, fa6
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fsqr
	addi	sp, sp, -80
	lw	ra, sp, 76
	flw	fa1, sp, 72 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 664-664
	flw	fa2, sp, 44 ! 0-0
	fsw	sp, fa0, 76 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fsqr
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 68 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 664-664
	flw	fa2, sp, 76 ! 0-0
	fadd.s	fa0, fa2, fa0, rne ! 664-664
	flw	fa2, sp, 64 ! 0-0
	fsw	sp, fa0, 80 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_fsqr
	addi	sp, sp, -88
	lw	ra, sp, 84
	flw	fa1, sp, 60 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 664-664
	flw	fa2, sp, 80 ! 0-0
	fadd.s	fa0, fa2, fa0, rne ! 664-664
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 664-664
	flw	fa0, sp, 40 ! 0-0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_fsqr
	addi	sp, sp, -88
	lw	ra, sp, 84
	flw	fa1, sp, 72 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 665-665
	flw	fa2, sp, 36 ! 0-0
	fsw	sp, fa0, 84 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fsqr
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 68 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 665-665
	flw	fa2, sp, 84 ! 0-0
	fadd.s	fa0, fa2, fa0, rne ! 665-665
	flw	fa2, sp, 56 ! 0-0
	fsw	sp, fa0, 88 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fsqr
	addi	sp, sp, -96
	lw	ra, sp, 92
	flw	fa1, sp, 60 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 665-665
	flw	fa2, sp, 88 ! 0-0
	fadd.s	fa0, fa2, fa0, rne ! 665-665
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 4 ! 665-665
	flw	fa0, sp, 32 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fsqr
	addi	sp, sp, -96
	lw	ra, sp, 92
	flw	fa1, sp, 72 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 666-666
	flw	fa2, sp, 28 ! 0-0
	fsw	sp, fa0, 92 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 68 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 666-666
	flw	fa2, sp, 92 ! 0-0
	fadd.s	fa0, fa2, fa0, rne ! 666-666
	flw	fa2, sp, 52 ! 0-0
	fsw	sp, fa0, 96 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_fsqr
	addi	sp, sp, -104
	lw	ra, sp, 100
	flw	fa1, sp, 60 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 666-666
	flw	fa2, sp, 96 ! 0-0
	fadd.s	fa0, fa2, fa0, rne ! 666-666
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 8 ! 666-666
	li	a0, l.12883 ! 669-669
	flw	fa0, a0, 0 ! 669-669
	flw	fa2, sp, 40 ! 0-0
	flw	fa3, sp, 72 ! 0-0
	fmul.s	fa4, fa3, fa2, rne ! 669-669
	flw	fa5, sp, 32 ! 0-0
	fmul.s	fa4, fa4, fa5, rne ! 669-669
	flw	fa6, sp, 36 ! 0-0
	flw	fa7, sp, 68 ! 0-0
	fmul.s	fa8, fa7, fa6, rne ! 669-669
	flw	fa9, sp, 28 ! 0-0
	fmul.s	fa8, fa8, fa9, rne ! 669-669
	fadd.s	fa4, fa4, fa8, rne ! 669-669
	flw	fa8, sp, 56 ! 0-0
	fmul.s	fa10, fa1, fa8, rne ! 669-669
	flw	fa11, sp, 52 ! 0-0
	fmul.s	fa10, fa10, fa11, rne ! 669-669
	fadd.s	fa4, fa4, fa10, rne ! 669-669
	fmul.s	fa0, fa0, fa4, rne ! 669-669
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 0 ! 669-669
	li	a1, l.12883 ! 670-670
	flw	fa0, a1, 0 ! 670-670
	flw	fa4, sp, 48 ! 0-0
	fmul.s	fa10, fa3, fa4, rne ! 670-670
	fmul.s	fa5, fa10, fa5, rne ! 670-670
	flw	fa10, sp, 44 ! 0-0
	fmul.s	fa12, fa7, fa10, rne ! 670-670
	fmul.s	fa9, fa12, fa9, rne ! 670-670
	fadd.s	fa5, fa5, fa9, rne ! 670-670
	flw	fa9, sp, 64 ! 0-0
	fmul.s	fa12, fa1, fa9, rne ! 670-670
	fmul.s	fa11, fa12, fa11, rne ! 670-670
	fadd.s	fa5, fa5, fa11, rne ! 670-670
	fmul.s	fa0, fa0, fa5, rne ! 670-670
	fsw	a0, fa0, 4 ! 670-670
	li	a1, l.12883 ! 671-671
	flw	fa0, a1, 0 ! 671-671
	fmul.s	fa3, fa3, fa4, rne ! 671-671
	fmul.s	fa2, fa3, fa2, rne ! 671-671
	fmul.s	fa3, fa7, fa10, rne ! 671-671
	fmul.s	fa3, fa3, fa6, rne ! 671-671
	fadd.s	fa2, fa2, fa3, rne ! 671-671
	fmul.s	fa1, fa1, fa9, rne ! 671-671
	fmul.s	fa1, fa1, fa8, rne ! 671-671
	fadd.s	fa1, fa2, fa1, rne ! 671-671
	fmul.s	fa0, fa0, fa1, rne ! 671-671
	fsw	a0, fa0, 8 ! 671-671
	ret ! 671-671
read_nth_object.2602:
	lw	a1, a21, 4 ! 0-0
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 679-679
	bne	a0, a1, beq_else.17787 ! 679-755
	li	a0, 0 ! 755-755
	ret ! 755-755
beq_else.17787:
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 3 ! 685-685
	li	a2, l.12849 ! 685-685
	flw	fa0, a2, 0 ! 685-685
	sw	sp, a0, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 0 ! 686-686
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 4 ! 687-687
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 8 ! 688-688
	li	a1, 3 ! 690-690
	li	a2, l.12849 ! 690-690
	flw	fa0, a2, 0 ! 690-690
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	fsw	a0, fa0, 0 ! 691-691
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	fsw	a0, fa0, 4 ! 692-692
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	fsw	a0, fa0, 8 ! 693-693
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
	li	a1, 2 ! 697-697
	li	a2, l.12849 ! 697-697
	flw	fa0, a2, 0 ! 697-697
	sw	sp, a0, 32 ! 0-0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0-0
	fsw	a0, fa0, 0 ! 698-698
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0-0
	fsw	a0, fa0, 4 ! 699-699
	li	a1, 3 ! 701-701
	li	a2, l.12849 ! 701-701
	flw	fa0, a2, 0 ! 701-701
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 0 ! 702-702
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 4 ! 703-703
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 8 ! 704-704
	li	a1, 3 ! 706-706
	li	a2, l.12849 ! 706-706
	flw	fa0, a2, 0 ! 706-706
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 707-707
	lw	a2, sp, 20 ! 0-0
	bne	a2, a1, beq_else.17788 ! 707-713
	j	beq_cont.17789
beq_else.17788:
	sw	sp, a0, 44 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.12837 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 0 ! 709-709
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.12837 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 4 ! 710-710
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, l.12837 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 8 ! 711-711
beq_cont.17789:
	li	a1, 2 ! 718-718
	lw	a2, sp, 12 ! 0-0
	bne	a2, a1, beq_else.17790 ! 718-718
	li	a1, 1 ! 718-718
	j	beq_cont.17791
beq_else.17790:
	lw	a1, sp, 32 ! 0-0
beq_cont.17791:
	li	a3, 4 ! 719-719
	li	a4, l.12849 ! 719-719
	flw	fa0, a4, 0 ! 719-719
	sw	sp, a1, 48 ! 0-0
	sw	sp, a0, 44 ! 0-0
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, hp ! 722-728
	addi	hp, hp, 44 ! 722-728
	sw	a1, a0, 40 ! 722-728
	lw	a0, sp, 44 ! 0-0
	sw	a1, a0, 36 ! 722-728
	lw	a2, sp, 40 ! 0-0
	sw	a1, a2, 32 ! 722-728
	lw	a2, sp, 36 ! 0-0
	sw	a1, a2, 28 ! 722-728
	lw	a2, sp, 48 ! 0-0
	sw	a1, a2, 24 ! 722-728
	lw	a2, sp, 28 ! 0-0
	sw	a1, a2, 20 ! 722-728
	lw	a2, sp, 24 ! 0-0
	sw	a1, a2, 16 ! 722-728
	lw	a3, sp, 20 ! 0-0
	sw	a1, a3, 12 ! 722-728
	lw	a4, sp, 16 ! 0-0
	sw	a1, a4, 8 ! 722-728
	lw	a4, sp, 12 ! 0-0
	sw	a1, a4, 4 ! 722-728
	lw	a5, sp, 8 ! 0-0
	sw	a1, a5, 0 ! 722-728
	lw	a5, sp, 4 ! 0-0
	slli	a5, a5, 2 ! 730-730
	lw	a6, sp, 0 ! 0-0
	add	t0, a6, a5 ! 730-730
	sw	t0, a1, 0 ! 730-730
	li	a1, 3 ! 732-732
	bne	a4, a1, beq_else.17792 ! 732-745
	flw	fa0, a2, 0 ! 735-735
	fsw	sp, fa0, 52 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fiszero
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 736-736
	bne	a0, a1, beq_else.17794 ! 736-736
	flw	fa0, sp, 52 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fiszero
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 117-119
	bne	a0, a1, beq_else.17796 ! 117-119
	flw	fa0, sp, 52 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fispos
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 118-119
	bne	a0, a1, beq_else.17798 ! 118-119
	li	a0, l.12813 ! 119-119
	flw	fa0, a0, 0 ! 119-119
	j	beq_cont.17799
beq_else.17798:
	li	a0, l.12811 ! 118-118
	flw	fa0, a0, 0 ! 118-118
beq_cont.17799:
	j	beq_cont.17797
beq_else.17796:
	li	a0, l.12849 ! 117-117
	flw	fa0, a0, 0 ! 117-117
beq_cont.17797:
	flw	fa1, sp, 52 ! 0-0
	fsw	sp, fa0, 56 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fsqr
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa1, sp, 56 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 736-736
	j	beq_cont.17795
beq_else.17794:
	li	a0, l.12849 ! 736-736
	flw	fa0, a0, 0 ! 736-736
beq_cont.17795:
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 0 ! 736-736
	flw	fa0, a0, 4 ! 737-737
	fsw	sp, fa0, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fiszero
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 738-738
	bne	a0, a1, beq_else.17800 ! 738-738
	flw	fa0, sp, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fiszero
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 117-119
	bne	a0, a1, beq_else.17802 ! 117-119
	flw	fa0, sp, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fispos
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 118-119
	bne	a0, a1, beq_else.17804 ! 118-119
	li	a0, l.12813 ! 119-119
	flw	fa0, a0, 0 ! 119-119
	j	beq_cont.17805
beq_else.17804:
	li	a0, l.12811 ! 118-118
	flw	fa0, a0, 0 ! 118-118
beq_cont.17805:
	j	beq_cont.17803
beq_else.17802:
	li	a0, l.12849 ! 117-117
	flw	fa0, a0, 0 ! 117-117
beq_cont.17803:
	flw	fa1, sp, 60 ! 0-0
	fsw	sp, fa0, 64 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fsqr
	addi	sp, sp, -72
	lw	ra, sp, 68
	flw	fa1, sp, 64 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 738-738
	j	beq_cont.17801
beq_else.17800:
	li	a0, l.12849 ! 738-738
	flw	fa0, a0, 0 ! 738-738
beq_cont.17801:
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 4 ! 738-738
	flw	fa0, a0, 8 ! 739-739
	fsw	sp, fa0, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fiszero
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 740-740
	bne	a0, a1, beq_else.17806 ! 740-740
	flw	fa0, sp, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fiszero
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 117-119
	bne	a0, a1, beq_else.17808 ! 117-119
	flw	fa0, sp, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fispos
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 118-119
	bne	a0, a1, beq_else.17810 ! 118-119
	li	a0, l.12813 ! 119-119
	flw	fa0, a0, 0 ! 119-119
	j	beq_cont.17811
beq_else.17810:
	li	a0, l.12811 ! 118-118
	flw	fa0, a0, 0 ! 118-118
beq_cont.17811:
	j	beq_cont.17809
beq_else.17808:
	li	a0, l.12849 ! 117-117
	flw	fa0, a0, 0 ! 117-117
beq_cont.17809:
	flw	fa1, sp, 68 ! 0-0
	fsw	sp, fa0, 72 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fsqr
	addi	sp, sp, -80
	lw	ra, sp, 76
	flw	fa1, sp, 72 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 740-740
	j	beq_cont.17807
beq_else.17806:
	li	a0, l.12849 ! 740-740
	flw	fa0, a0, 0 ! 740-740
beq_cont.17807:
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 8 ! 740-740
	j	beq_cont.17793
beq_else.17792:
	li	a1, 2 ! 742-742
	bne	a4, a1, beq_else.17812 ! 742-745
	li	a1, 0 ! 744-744
	lw	a4, sp, 32 ! 0-0
	bne	a4, a1, beq_else.17814 ! 744-744
	li	a1, 1 ! 744-744
	j	beq_cont.17815
beq_else.17814:
	li	a1, 0 ! 744-744
beq_cont.17815:
	mv	a0, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	vecunit_sgn.2494
	addi	sp, sp, -80
	lw	ra, sp, 76
	j	beq_cont.17813
beq_else.17812:
beq_cont.17813:
beq_cont.17793:
	li	a0, 0 ! 748-748
	lw	a1, sp, 20 ! 0-0
	bne	a1, a0, beq_else.17816 ! 748-750
	j	beq_cont.17817
beq_else.17816:
	lw	a0, sp, 24 ! 0-0
	lw	a1, sp, 44 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	rotate_quadratic_matrix.2599
	addi	sp, sp, -80
	lw	ra, sp, 76
beq_cont.17817:
	li	a0, 1 ! 752-752
	ret ! 752-752
read_object.2604:
	lw	a1, a21, 8 ! 0-0
	lw	a2, a21, 4 ! 0-0
	li	a3, 60 ! 760-760
	blt	a0, a3, bge_else.17818 ! 760-765
	ret ! 765-765
bge_else.17818:
	sw	sp, a21, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, a2, 12 ! 0-0
	mv	a21, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.17819 ! 761-764
	lw	a0, sp, 8 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17819:
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 762-762
	li	a1, 60 ! 760-760
	blt	a0, a1, bge_else.17820 ! 760-765
	ret ! 765-765
bge_else.17820:
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.17821 ! 761-764
	lw	a0, sp, 16 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17821:
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 762-762
	li	a1, 60 ! 760-760
	blt	a0, a1, bge_else.17822 ! 760-765
	ret ! 765-765
bge_else.17822:
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.17823 ! 761-764
	lw	a0, sp, 20 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17823:
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 762-762
	li	a1, 60 ! 760-760
	blt	a0, a1, bge_else.17824 ! 760-765
	ret ! 765-765
bge_else.17824:
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.17825 ! 761-764
	lw	a0, sp, 24 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17825:
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 762-762
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_net_item.2608:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17826 ! 777-780
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	j	min_caml_create_array
beq_else.17826:
	lw	a1, sp, 0 ! 0-0
	addi	a2, a1, 1 ! 779-779
	sw	sp, a0, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17827 ! 777-780
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.17828
beq_else.17827:
	lw	a1, sp, 8 ! 0-0
	addi	a2, a1, 1 ! 779-779
	sw	sp, a0, 12 ! 0-0
	sw	sp, a2, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17829 ! 777-780
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.17830
beq_else.17829:
	lw	a1, sp, 16 ! 0-0
	addi	a2, a1, 1 ! 779-779
	sw	sp, a0, 20 ! 0-0
	sw	sp, a2, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17831 ! 777-780
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.17832
beq_else.17831:
	lw	a1, sp, 24 ! 0-0
	addi	a2, a1, 1 ! 779-779
	sw	sp, a0, 28 ! 0-0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2608
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 28 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
beq_cont.17832:
	lw	a1, sp, 16 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 20 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
beq_cont.17830:
	lw	a1, sp, 8 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 12 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
beq_cont.17828:
	lw	a1, sp, 0 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 4 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
	ret ! 780-780
read_or_network.2610:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17833 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	j	beq_cont.17834
beq_else.17833:
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17835 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	j	beq_cont.17836
beq_else.17835:
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17837 ! 777-780
	li	a0, 3 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.17838
beq_else.17837:
	li	a1, 3 ! 779-779
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	read_net_item.2608
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 8 ! 780-780
beq_cont.17838:
	lw	a1, sp, 8 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17836:
	lw	a1, sp, 4 ! 0-0
	sw	a0, a1, 0 ! 780-780
	mv	a1, a0 ! 780-780
beq_cont.17834:
	lw	a0, a1, 0 ! 785-785
	li	a2, -1 ! 785-785
	bne	a0, a2, beq_else.17839 ! 785-789
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 786-786
	j	min_caml_create_array
beq_else.17839:
	lw	a0, sp, 0 ! 0-0
	addi	a2, a0, 1 ! 788-788
	sw	sp, a1, 16 ! 0-0
	sw	sp, a2, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_read_int
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17840 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	j	beq_cont.17841
beq_else.17840:
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17842 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.17843
beq_else.17842:
	li	a1, 2 ! 779-779
	sw	sp, a0, 28 ! 0-0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2608
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 28 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17843:
	lw	a1, sp, 24 ! 0-0
	sw	a0, a1, 0 ! 780-780
	mv	a1, a0 ! 780-780
beq_cont.17841:
	lw	a0, a1, 0 ! 785-785
	li	a2, -1 ! 785-785
	bne	a0, a2, beq_else.17844 ! 785-789
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 786-786
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	beq_cont.17845
beq_else.17844:
	lw	a0, sp, 20 ! 0-0
	addi	a2, a0, 1 ! 788-788
	sw	sp, a1, 32 ! 0-0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	read_or_network.2610
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 20 ! 0-0
	slli	a1, a1, 2 ! 789-789
	lw	a2, sp, 32 ! 0-0
	add	t0, a0, a1 ! 789-789
	sw	t0, a2, 0 ! 789-789
beq_cont.17845:
	lw	a1, sp, 0 ! 0-0
	slli	a1, a1, 2 ! 789-789
	lw	a2, sp, 16 ! 0-0
	add	t0, a0, a1 ! 789-789
	sw	t0, a2, 0 ! 789-789
	ret ! 789-789
read_and_network.2612:
	lw	a1, a21, 4 ! 0-0
	sw	sp, a21, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17846 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.17847
beq_else.17846:
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17848 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	beq_cont.17849
beq_else.17848:
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17850 ! 777-780
	li	a0, 3 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.17851
beq_else.17850:
	li	a1, 3 ! 779-779
	sw	sp, a0, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	read_net_item.2608
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0-0
	sw	a0, a1, 8 ! 780-780
beq_cont.17851:
	lw	a1, sp, 16 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17849:
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 0 ! 780-780
beq_cont.17847:
	lw	a1, a0, 0 ! 794-794
	li	a2, -1 ! 794-794
	bne	a1, a2, beq_else.17852 ! 794-798
	ret ! 794-794
beq_else.17852:
	lw	a1, sp, 8 ! 0-0
	slli	a2, a1, 2 ! 796-796
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 796-796
	sw	t0, a0, 0 ! 796-796
	addi	a0, a1, 1 ! 797-797
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17853 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.17854
beq_else.17853:
	sw	sp, a0, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17855 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	beq_cont.17856
beq_else.17855:
	li	a1, 2 ! 779-779
	sw	sp, a0, 32 ! 0-0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	read_net_item.2608
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17856:
	lw	a1, sp, 28 ! 0-0
	sw	a0, a1, 0 ! 780-780
beq_cont.17854:
	lw	a1, a0, 0 ! 794-794
	li	a2, -1 ! 794-794
	bne	a1, a2, beq_else.17857 ! 794-798
	ret ! 794-794
beq_else.17857:
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 796-796
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 796-796
	sw	t0, a0, 0 ! 796-796
	addi	a0, a1, 1 ! 797-797
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_surface.2616:
	lw	a5, a21, 4 ! 0-0
	slli	a6, a2, 2 ! 828-828
	add	t0, a1, a6 ! 828-828
	flw	fa3, t0, 0 ! 828-828
	sw	sp, a5, 0 ! 0-0
	fsw	sp, fa2, 4 ! 0-0
	sw	sp, a4, 8 ! 0-0
	fsw	sp, fa1, 12 ! 0-0
	sw	sp, a3, 16 ! 0-0
	fsw	sp, fa0, 20 ! 0-0
	sw	sp, a1, 24 ! 0-0
	sw	sp, a2, 28 ! 0-0
	sw	sp, a0, 32 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fiszero
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 828-837
	bne	a0, a1, beq_else.17858 ! 828-837
	lw	a0, sp, 32 ! 0-0
	lw	a1, a0, 16 ! 320-325
	lw	a0, a0, 24 ! 272-276
	lw	a2, sp, 28 ! 0-0
	slli	a3, a2, 2 ! 830-830
	lw	a4, sp, 24 ! 0-0
	add	t0, a4, a3 ! 830-830
	flw	fa0, t0, 0 ! 830-830
	sw	sp, a1, 36 ! 0-0
	sw	sp, a0, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fisneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 16-16
	lw	a2, sp, 40 ! 0-0
	bne	a2, a1, beq_else.17859 ! 16-16
	j	beq_cont.17860
beq_else.17859:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.17861 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17862
beq_else.17861:
	li	a0, 0 ! 16-16
beq_cont.17862:
beq_cont.17860:
	lw	a1, sp, 28 ! 0-0
	slli	a2, a1, 2 ! 830-830
	lw	a3, sp, 36 ! 0-0
	add	t0, a3, a2 ! 830-830
	flw	fa0, t0, 0 ! 830-830
	li	a2, 0 ! 124-124
	bne	a0, a2, beq_else.17863 ! 124-124
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	j	beq_cont.17864
beq_else.17863:
beq_cont.17864:
	flw	fa1, sp, 20 ! 0-0
	fsub.s	fa0, fa0, fa1, rne ! 832-832
	lw	a0, sp, 28 ! 0-0
	slli	a0, a0, 2 ! 832-832
	lw	a1, sp, 24 ! 0-0
	add	t0, a1, a0 ! 832-832
	flw	fa1, t0, 0 ! 832-832
	fdiv.s	fa0, fa0, fa1, rne ! 832-832
	lw	a0, sp, 16 ! 0-0
	slli	a2, a0, 2 ! 833-833
	add	t0, a1, a2 ! 833-833
	flw	fa1, t0, 0 ! 833-833
	fmul.s	fa1, fa0, fa1, rne ! 833-833
	flw	fa2, sp, 12 ! 0-0
	fadd.s	fa1, fa1, fa2, rne ! 833-833
	fsw	sp, fa0, 44 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fabs
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 16 ! 0-0
	slli	a0, a0, 2 ! 833-833
	lw	a1, sp, 36 ! 0-0
	add	t0, a1, a0 ! 833-833
	flw	fa1, t0, 0 ! 833-833
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 833-837
	bne	a0, a1, beq_else.17865 ! 833-837
	li	a0, 0 ! 837-837
	ret ! 837-837
beq_else.17865:
	lw	a0, sp, 8 ! 0-0
	slli	a1, a0, 2 ! 834-834
	lw	a2, sp, 24 ! 0-0
	add	t0, a2, a1 ! 834-834
	flw	fa0, t0, 0 ! 834-834
	flw	fa1, sp, 44 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 834-834
	flw	fa2, sp, 4 ! 0-0
	fadd.s	fa0, fa0, fa2, rne ! 834-834
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fabs
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 8 ! 0-0
	slli	a0, a0, 2 ! 834-834
	lw	a1, sp, 36 ! 0-0
	add	t0, a1, a0 ! 834-834
	flw	fa1, t0, 0 ! 834-834
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 834-836
	bne	a0, a1, beq_else.17866 ! 834-836
	li	a0, 0 ! 836-836
	ret ! 836-836
beq_else.17866:
	flw	fa0, sp, 44 ! 0-0
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 835-835
	li	a0, 1 ! 835-835
	ret ! 835-835
beq_else.17858:
	li	a0, 0 ! 828-828
	ret ! 828-828
solver_surface.2631:
	lw	a2, a21, 4 ! 0-0
	lw	a0, a0, 16 ! 320-325
	flw	fa3, a1, 0 ! 193-193
	flw	fa4, a0, 0 ! 193-193
	fmul.s	fa3, fa3, fa4, rne ! 193-193
	flw	fa4, a1, 4 ! 193-193
	flw	fa5, a0, 4 ! 193-193
	fmul.s	fa4, fa4, fa5, rne ! 193-193
	fadd.s	fa3, fa3, fa4, rne ! 193-193
	flw	fa4, a1, 8 ! 193-193
	flw	fa5, a0, 8 ! 193-193
	fmul.s	fa4, fa4, fa5, rne ! 193-193
	fadd.s	fa3, fa3, fa4, rne ! 193-193
	sw	sp, a2, 0 ! 0-0
	fsw	sp, fa3, 4 ! 0-0
	fsw	sp, fa2, 8 ! 0-0
	fsw	sp, fa1, 12 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	sw	sp, a0, 20 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fispos
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 856-859
	bne	a0, a1, beq_else.17867 ! 856-859
	li	a0, 0 ! 859-859
	ret ! 859-859
beq_else.17867:
	lw	a0, sp, 20 ! 0-0
	flw	fa0, a0, 0 ! 198-198
	flw	fa1, sp, 16 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a0, 4 ! 198-198
	flw	fa2, sp, 12 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a0, 8 ! 198-198
	flw	fa2, sp, 8 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 4 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 857-857
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 857-857
	li	a0, 1 ! 858-858
	ret ! 858-858
quadratic.2637:
	fsw	sp, fa0, 0 ! 0-0
	fsw	sp, fa2, 4 ! 0-0
	fsw	sp, fa1, 8 ! 0-0
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fsqr
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 16 ! 290-295
	flw	fa1, a1, 0 ! 295-295
	fmul.s	fa0, fa0, fa1, rne ! 867-867
	flw	fa1, sp, 8 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fsqr
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 16 ! 300-305
	flw	fa1, a1, 4 ! 305-305
	fmul.s	fa0, fa0, fa1, rne ! 867-867
	flw	fa1, sp, 16 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 867-867
	flw	fa1, sp, 4 ! 0-0
	fsw	sp, fa0, 20 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fsqr
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 16 ! 310-315
	flw	fa1, a1, 8 ! 315-315
	fmul.s	fa0, fa0, fa1, rne ! 867-867
	flw	fa1, sp, 20 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 867-867
	lw	a1, a0, 12 ! 281-285
	li	a2, 0 ! 869-869
	bne	a1, a2, beq_else.17868 ! 869-875
	ret ! 870-870
beq_else.17868:
	flw	fa1, sp, 4 ! 0-0
	flw	fa2, sp, 8 ! 0-0
	fmul.s	fa3, fa2, fa1, rne ! 873-873
	lw	a1, a0, 36 ! 410-415
	flw	fa4, a1, 0 ! 415-415
	fmul.s	fa3, fa3, fa4, rne ! 873-873
	fadd.s	fa0, fa0, fa3, rne ! 872-873
	flw	fa3, sp, 0 ! 0-0
	fmul.s	fa1, fa1, fa3, rne ! 874-874
	lw	a1, a0, 36 ! 420-425
	flw	fa4, a1, 4 ! 425-425
	fmul.s	fa1, fa1, fa4, rne ! 874-874
	fadd.s	fa0, fa0, fa1, rne ! 872-874
	fmul.s	fa1, fa3, fa2, rne ! 875-875
	lw	a0, a0, 36 ! 430-435
	flw	fa2, a0, 8 ! 435-435
	fmul.s	fa1, fa1, fa2, rne ! 875-875
	fadd.s	fa0, fa0, fa1, rne ! 872-875
	ret ! 872-875
bilinear.2642:
	fmul.s	fa6, fa0, fa3, rne ! 882-882
	lw	a1, a0, 16 ! 290-295
	flw	fa7, a1, 0 ! 295-295
	fmul.s	fa6, fa6, fa7, rne ! 882-882
	fmul.s	fa7, fa1, fa4, rne ! 883-883
	lw	a1, a0, 16 ! 300-305
	flw	fa8, a1, 4 ! 305-305
	fmul.s	fa7, fa7, fa8, rne ! 883-883
	fadd.s	fa6, fa6, fa7, rne ! 882-883
	fmul.s	fa7, fa2, fa5, rne ! 884-884
	lw	a1, a0, 16 ! 310-315
	flw	fa8, a1, 8 ! 315-315
	fmul.s	fa7, fa7, fa8, rne ! 884-884
	fadd.s	fa6, fa6, fa7, rne ! 882-884
	lw	a1, a0, 12 ! 281-285
	li	a2, 0 ! 886-886
	bne	a1, a2, beq_else.17869 ! 886-892
	fmv.s	fa0, fa6 ! 887-887
	ret ! 887-887
beq_else.17869:
	fmul.s	fa7, fa2, fa4, rne ! 890-890
	fmul.s	fa8, fa1, fa5, rne ! 890-890
	fadd.s	fa7, fa7, fa8, rne ! 890-890
	lw	a1, a0, 36 ! 410-415
	flw	fa8, a1, 0 ! 415-415
	fmul.s	fa7, fa7, fa8, rne ! 890-890
	fmul.s	fa5, fa0, fa5, rne ! 891-891
	fmul.s	fa2, fa2, fa3, rne ! 891-891
	fadd.s	fa2, fa5, fa2, rne ! 891-891
	lw	a1, a0, 36 ! 420-425
	flw	fa5, a1, 4 ! 425-425
	fmul.s	fa2, fa2, fa5, rne ! 891-891
	fadd.s	fa2, fa7, fa2, rne ! 890-891
	fmul.s	fa0, fa0, fa4, rne ! 892-892
	fmul.s	fa1, fa1, fa3, rne ! 892-892
	fadd.s	fa0, fa0, fa1, rne ! 892-892
	lw	a0, a0, 36 ! 430-435
	flw	fa1, a0, 8 ! 435-435
	fmul.s	fa0, fa0, fa1, rne ! 892-892
	fadd.s	fa0, fa2, fa0, rne ! 890-892
	fsw	sp, fa6, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_fhalf
	addi	sp, sp, -8
	lw	ra, sp, 4
	flw	fa1, sp, 0 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 889-892
	ret ! 889-892
solver_second.2650:
	lw	a2, a21, 4 ! 0-0
	flw	fa3, a1, 0 ! 907-907
	flw	fa4, a1, 4 ! 907-907
	flw	fa5, a1, 8 ! 907-907
	sw	sp, a2, 0 ! 0-0
	fsw	sp, fa2, 4 ! 0-0
	fsw	sp, fa1, 8 ! 0-0
	fsw	sp, fa0, 12 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, a1, 20 ! 0-0
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	quadratic.2637
	addi	sp, sp, -28
	lw	ra, sp, 24
	fsw	sp, fa0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fiszero
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 909-928
	bne	a0, a1, beq_else.17870 ! 909-928
	lw	a0, sp, 20 ! 0-0
	flw	fa0, a0, 0 ! 914-914
	flw	fa1, a0, 4 ! 914-914
	flw	fa2, a0, 8 ! 914-914
	flw	fa3, sp, 12 ! 0-0
	flw	fa4, sp, 8 ! 0-0
	flw	fa5, sp, 4 ! 0-0
	lw	a0, sp, 16 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	bilinear.2642
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 12 ! 0-0
	flw	fa2, sp, 8 ! 0-0
	flw	fa3, sp, 4 ! 0-0
	lw	a0, sp, 16 ! 0-0
	fsw	sp, fa0, 28 ! 0-0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	quadratic.2637
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 917-917
	bne	a1, a2, beq_else.17871 ! 917-917
	li	a1, l.12811 ! 917-917
	flw	fa1, a1, 0 ! 917-917
	fsub.s	fa0, fa0, fa1, rne ! 917-917
	j	beq_cont.17872
beq_else.17871:
beq_cont.17872:
	flw	fa1, sp, 28 ! 0-0
	fsw	sp, fa0, 32 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fsqr
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 32 ! 0-0
	flw	fa2, sp, 24 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 919-919
	fsub.s	fa0, fa0, fa1, rne ! 919-919
	fsw	sp, fa0, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fispos
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 921-927
	bne	a0, a1, beq_else.17873 ! 921-927
	li	a0, 0 ! 927-927
	ret ! 927-927
beq_else.17873:
	flw	fa0, sp, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 16 ! 0-0
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 923-923
	bne	a0, a1, beq_else.17874 ! 923-923
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fneg
	addi	sp, sp, -44
	lw	ra, sp, 40
	j	beq_cont.17875
beq_else.17874:
beq_cont.17875:
	flw	fa1, sp, 28 ! 0-0
	fsub.s	fa0, fa0, fa1, rne ! 924-924
	flw	fa1, sp, 24 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 924-924
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 924-924
	li	a0, 1 ! 924-924
	ret ! 924-924
beq_else.17870:
	li	a0, 0 ! 910-910
	ret ! 910-910
solver.2656:
	lw	a3, a21, 16 ! 0-0
	lw	a4, a21, 12 ! 0-0
	lw	a5, a21, 8 ! 0-0
	lw	a6, a21, 4 ! 0-0
	slli	a0, a0, 2 ! 933-933
	add	t0, a6, a0 ! 933-933
	lw	a0, t0, 0 ! 933-933
	flw	fa0, a2, 0 ! 935-935
	lw	a6, a0, 20 ! 330-335
	flw	fa1, a6, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 935-935
	flw	fa1, a2, 4 ! 936-936
	lw	a6, a0, 20 ! 340-345
	flw	fa2, a6, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 936-936
	flw	fa2, a2, 8 ! 937-937
	lw	a2, a0, 20 ! 350-355
	flw	fa3, a2, 8 ! 355-355
	fsub.s	fa2, fa2, fa3, rne ! 937-937
	lw	a2, a0, 4 ! 252-257
	li	a6, 1 ! 940-940
	bne	a2, a6, beq_else.17876 ! 940-942
	li	a2, 0 ! 843-843
	li	a3, 1 ! 843-843
	li	a5, 2 ! 843-843
	fsw	sp, fa0, 0 ! 0-0
	fsw	sp, fa2, 4 ! 0-0
	fsw	sp, fa1, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, a4, 20 ! 0-0
	mv	a21, a4
	mv	a4, a5
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 843-846
	bne	a0, a1, beq_else.17877 ! 843-846
	li	a2, 1 ! 844-844
	li	a3, 2 ! 844-844
	li	a4, 0 ! 844-844
	flw	fa0, sp, 8 ! 0-0
	flw	fa1, sp, 4 ! 0-0
	flw	fa2, sp, 0 ! 0-0
	lw	a0, sp, 16 ! 0-0
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 844-846
	bne	a0, a1, beq_else.17878 ! 844-846
	li	a2, 2 ! 845-845
	li	a3, 0 ! 845-845
	li	a4, 1 ! 845-845
	flw	fa0, sp, 4 ! 0-0
	flw	fa1, sp, 0 ! 0-0
	flw	fa2, sp, 8 ! 0-0
	lw	a0, sp, 16 ! 0-0
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 845-846
	bne	a0, a1, beq_else.17879 ! 845-846
	li	a0, 0 ! 846-846
	ret ! 846-846
beq_else.17879:
	li	a0, 3 ! 845-845
	ret ! 845-845
beq_else.17878:
	li	a0, 2 ! 844-844
	ret ! 844-844
beq_else.17877:
	li	a0, 1 ! 843-843
	ret ! 843-843
beq_else.17876:
	li	a4, 2 ! 941-941
	bne	a2, a4, beq_else.17880 ! 941-942
	lw	a0, a0, 16 ! 320-325
	flw	fa3, a1, 0 ! 193-193
	flw	fa4, a0, 0 ! 193-193
	fmul.s	fa3, fa3, fa4, rne ! 193-193
	flw	fa4, a1, 4 ! 193-193
	flw	fa5, a0, 4 ! 193-193
	fmul.s	fa4, fa4, fa5, rne ! 193-193
	fadd.s	fa3, fa3, fa4, rne ! 193-193
	flw	fa4, a1, 8 ! 193-193
	flw	fa5, a0, 8 ! 193-193
	fmul.s	fa4, fa4, fa5, rne ! 193-193
	fadd.s	fa3, fa3, fa4, rne ! 193-193
	sw	sp, a5, 24 ! 0-0
	fsw	sp, fa3, 28 ! 0-0
	fsw	sp, fa2, 4 ! 0-0
	fsw	sp, fa1, 8 ! 0-0
	fsw	sp, fa0, 0 ! 0-0
	sw	sp, a0, 32 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fispos
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 856-859
	bne	a0, a1, beq_else.17881 ! 856-859
	li	a0, 0 ! 859-859
	ret ! 859-859
beq_else.17881:
	lw	a0, sp, 32 ! 0-0
	flw	fa0, a0, 0 ! 198-198
	flw	fa1, sp, 0 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a0, 4 ! 198-198
	flw	fa2, sp, 8 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a0, 8 ! 198-198
	flw	fa2, sp, 4 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 28 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 857-857
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 0 ! 857-857
	li	a0, 1 ! 858-858
	ret ! 858-858
beq_else.17880:
	mv	a21, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_fast.2660:
	lw	a3, a21, 4 ! 0-0
	flw	fa3, a2, 0 ! 965-965
	fsub.s	fa3, fa3, fa0, rne ! 965-965
	flw	fa4, a2, 4 ! 965-965
	fmul.s	fa3, fa3, fa4, rne ! 965-965
	flw	fa4, a1, 4 ! 967-967
	fmul.s	fa4, fa3, fa4, rne ! 967-967
	fadd.s	fa4, fa4, fa1, rne ! 967-967
	sw	sp, a3, 0 ! 0-0
	fsw	sp, fa0, 4 ! 0-0
	fsw	sp, fa1, 8 ! 0-0
	sw	sp, a2, 12 ! 0-0
	fsw	sp, fa2, 16 ! 0-0
	fsw	sp, fa3, 20 ! 0-0
	sw	sp, a1, 24 ! 0-0
	sw	sp, a0, 28 ! 0-0
	fmv.s	fa0, fa4
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fabs
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 16 ! 300-305
	flw	fa1, a1, 4 ! 305-305
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 967-971
	bne	a0, a1, beq_else.17882 ! 967-971
	li	a0, 0 ! 971-971
	j	beq_cont.17883
beq_else.17882:
	lw	a0, sp, 24 ! 0-0
	flw	fa0, a0, 8 ! 968-968
	flw	fa1, sp, 20 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 968-968
	flw	fa2, sp, 16 ! 0-0
	fadd.s	fa0, fa0, fa2, rne ! 968-968
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fabs
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 16 ! 310-315
	flw	fa1, a1, 8 ! 315-315
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 968-970
	bne	a0, a1, beq_else.17884 ! 968-970
	li	a0, 0 ! 970-970
	j	beq_cont.17885
beq_else.17884:
	lw	a0, sp, 12 ! 0-0
	flw	fa0, a0, 4 ! 969-969
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fiszero
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 969-969
	bne	a0, a1, beq_else.17886 ! 969-969
	li	a0, 1 ! 969-969
	j	beq_cont.17887
beq_else.17886:
	li	a0, 0 ! 969-969
beq_cont.17887:
beq_cont.17885:
beq_cont.17883:
	li	a1, 0 ! 966-993
	bne	a0, a1, beq_else.17888 ! 966-993
	lw	a0, sp, 12 ! 0-0
	flw	fa0, a0, 8 ! 974-974
	flw	fa1, sp, 8 ! 0-0
	fsub.s	fa0, fa0, fa1, rne ! 974-974
	flw	fa2, a0, 12 ! 974-974
	fmul.s	fa0, fa0, fa2, rne ! 974-974
	lw	a1, sp, 24 ! 0-0
	flw	fa2, a1, 0 ! 976-976
	fmul.s	fa2, fa0, fa2, rne ! 976-976
	flw	fa3, sp, 4 ! 0-0
	fadd.s	fa2, fa2, fa3, rne ! 976-976
	fsw	sp, fa0, 32 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fabs
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 16 ! 290-295
	flw	fa1, a1, 0 ! 295-295
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 976-980
	bne	a0, a1, beq_else.17889 ! 976-980
	li	a0, 0 ! 980-980
	j	beq_cont.17890
beq_else.17889:
	lw	a0, sp, 24 ! 0-0
	flw	fa0, a0, 8 ! 977-977
	flw	fa1, sp, 32 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 977-977
	flw	fa2, sp, 16 ! 0-0
	fadd.s	fa0, fa0, fa2, rne ! 977-977
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fabs
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 16 ! 310-315
	flw	fa1, a1, 8 ! 315-315
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 977-979
	bne	a0, a1, beq_else.17891 ! 977-979
	li	a0, 0 ! 979-979
	j	beq_cont.17892
beq_else.17891:
	lw	a0, sp, 12 ! 0-0
	flw	fa0, a0, 12 ! 978-978
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fiszero
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 978-978
	bne	a0, a1, beq_else.17893 ! 978-978
	li	a0, 1 ! 978-978
	j	beq_cont.17894
beq_else.17893:
	li	a0, 0 ! 978-978
beq_cont.17894:
beq_cont.17892:
beq_cont.17890:
	li	a1, 0 ! 975-993
	bne	a0, a1, beq_else.17895 ! 975-993
	lw	a0, sp, 12 ! 0-0
	flw	fa0, a0, 16 ! 983-983
	flw	fa1, sp, 16 ! 0-0
	fsub.s	fa0, fa0, fa1, rne ! 983-983
	flw	fa1, a0, 20 ! 983-983
	fmul.s	fa0, fa0, fa1, rne ! 983-983
	lw	a1, sp, 24 ! 0-0
	flw	fa1, a1, 0 ! 985-985
	fmul.s	fa1, fa0, fa1, rne ! 985-985
	flw	fa2, sp, 4 ! 0-0
	fadd.s	fa1, fa1, fa2, rne ! 985-985
	fsw	sp, fa0, 36 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fabs
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 16 ! 290-295
	flw	fa1, a1, 0 ! 295-295
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 985-989
	bne	a0, a1, beq_else.17896 ! 985-989
	li	a0, 0 ! 989-989
	j	beq_cont.17897
beq_else.17896:
	lw	a0, sp, 24 ! 0-0
	flw	fa0, a0, 4 ! 986-986
	flw	fa1, sp, 36 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 986-986
	flw	fa2, sp, 8 ! 0-0
	fadd.s	fa0, fa0, fa2, rne ! 986-986
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fabs
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 28 ! 0-0
	lw	a0, a0, 16 ! 300-305
	flw	fa1, a0, 4 ! 305-305
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 986-988
	bne	a0, a1, beq_else.17898 ! 986-988
	li	a0, 0 ! 988-988
	j	beq_cont.17899
beq_else.17898:
	lw	a0, sp, 12 ! 0-0
	flw	fa0, a0, 20 ! 987-987
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fiszero
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 987-987
	bne	a0, a1, beq_else.17900 ! 987-987
	li	a0, 1 ! 987-987
	j	beq_cont.17901
beq_else.17900:
	li	a0, 0 ! 987-987
beq_cont.17901:
beq_cont.17899:
beq_cont.17897:
	li	a1, 0 ! 984-993
	bne	a0, a1, beq_else.17902 ! 984-993
	li	a0, 0 ! 993-993
	ret ! 993-993
beq_else.17902:
	flw	fa0, sp, 36 ! 0-0
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 991-991
	li	a0, 3 ! 991-991
	ret ! 991-991
beq_else.17895:
	flw	fa0, sp, 32 ! 0-0
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 982-982
	li	a0, 2 ! 982-982
	ret ! 982-982
beq_else.17888:
	flw	fa0, sp, 20 ! 0-0
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 973-973
	li	a0, 1 ! 973-973
	ret ! 973-973
solver_second_fast.2673:
	lw	a2, a21, 4 ! 0-0
	flw	fa3, a1, 0 ! 1008-1008
	sw	sp, a2, 0 ! 0-0
	fsw	sp, fa3, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	fsw	sp, fa2, 12 ! 0-0
	fsw	sp, fa1, 16 ! 0-0
	fsw	sp, fa0, 20 ! 0-0
	sw	sp, a1, 24 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fiszero
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1009-1022
	bne	a0, a1, beq_else.17903 ! 1009-1022
	lw	a0, sp, 24 ! 0-0
	flw	fa0, a0, 4 ! 1012-1012
	flw	fa1, sp, 20 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1012-1012
	flw	fa2, a0, 8 ! 1012-1012
	flw	fa3, sp, 16 ! 0-0
	fmul.s	fa2, fa2, fa3, rne ! 1012-1012
	fadd.s	fa0, fa0, fa2, rne ! 1012-1012
	flw	fa2, a0, 12 ! 1012-1012
	flw	fa4, sp, 12 ! 0-0
	fmul.s	fa2, fa2, fa4, rne ! 1012-1012
	fadd.s	fa0, fa0, fa2, rne ! 1012-1012
	lw	a1, sp, 8 ! 0-0
	fsw	sp, fa0, 28 ! 0-0
	mv	a0, a1
	fmv.s	fa2, fa4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	quadratic.2637
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 1014-1014
	bne	a1, a2, beq_else.17904 ! 1014-1014
	li	a1, l.12811 ! 1014-1014
	flw	fa1, a1, 0 ! 1014-1014
	fsub.s	fa0, fa0, fa1, rne ! 1014-1014
	j	beq_cont.17905
beq_else.17904:
beq_cont.17905:
	flw	fa1, sp, 28 ! 0-0
	fsw	sp, fa0, 32 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fsqr
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 32 ! 0-0
	flw	fa2, sp, 4 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 1015-1015
	fsub.s	fa0, fa0, fa1, rne ! 1015-1015
	fsw	sp, fa0, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fispos
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 1016-1022
	bne	a0, a1, beq_else.17906 ! 1016-1022
	li	a0, 0 ! 1022-1022
	ret ! 1022-1022
beq_else.17906:
	lw	a0, sp, 8 ! 0-0
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1017-1020
	bne	a0, a1, beq_else.17907 ! 1017-1020
	flw	fa0, sp, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 28 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1020-1020
	lw	a0, sp, 24 ! 0-0
	flw	fa1, a0, 16 ! 1020-1020
	fmul.s	fa0, fa0, fa1, rne ! 1020-1020
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1020-1020
	j	beq_cont.17908
beq_else.17907:
	flw	fa0, sp, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 28 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1018-1018
	lw	a0, sp, 24 ! 0-0
	flw	fa1, a0, 16 ! 1018-1018
	fmul.s	fa0, fa0, fa1, rne ! 1018-1018
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1018-1018
beq_cont.17908:
	li	a0, 1 ! 1021-1021
	ret ! 1021-1021
beq_else.17903:
	li	a0, 0 ! 1010-1010
	ret ! 1010-1010
solver_second_fast2.2690:
	lw	a3, a21, 4 ! 0-0
	flw	fa3, a1, 0 ! 1056-1056
	sw	sp, a3, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	fsw	sp, fa3, 8 ! 0-0
	sw	sp, a2, 12 ! 0-0
	fsw	sp, fa2, 16 ! 0-0
	fsw	sp, fa1, 20 ! 0-0
	fsw	sp, fa0, 24 ! 0-0
	sw	sp, a1, 28 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fiszero
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1057-1069
	bne	a0, a1, beq_else.17909 ! 1057-1069
	lw	a0, sp, 28 ! 0-0
	flw	fa0, a0, 4 ! 1060-1060
	flw	fa1, sp, 24 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1060-1060
	flw	fa1, a0, 8 ! 1060-1060
	flw	fa2, sp, 20 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 1060-1060
	fadd.s	fa0, fa0, fa1, rne ! 1060-1060
	flw	fa1, a0, 12 ! 1060-1060
	flw	fa2, sp, 16 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 1060-1060
	fadd.s	fa0, fa0, fa1, rne ! 1060-1060
	lw	a1, sp, 12 ! 0-0
	flw	fa1, a1, 12 ! 1061-1061
	fsw	sp, fa0, 32 ! 0-0
	fsw	sp, fa1, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fsqr
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 36 ! 0-0
	flw	fa2, sp, 8 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 1062-1062
	fsub.s	fa0, fa0, fa1, rne ! 1062-1062
	fsw	sp, fa0, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fispos
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 1063-1069
	bne	a0, a1, beq_else.17910 ! 1063-1069
	li	a0, 0 ! 1069-1069
	ret ! 1069-1069
beq_else.17910:
	lw	a0, sp, 4 ! 0-0
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1064-1067
	bne	a0, a1, beq_else.17911 ! 1064-1067
	flw	fa0, sp, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_sqrt
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 32 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1067-1067
	lw	a0, sp, 28 ! 0-0
	flw	fa1, a0, 16 ! 1067-1067
	fmul.s	fa0, fa0, fa1, rne ! 1067-1067
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1067-1067
	j	beq_cont.17912
beq_else.17911:
	flw	fa0, sp, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_sqrt
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 32 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1065-1065
	lw	a0, sp, 28 ! 0-0
	flw	fa1, a0, 16 ! 1065-1065
	fmul.s	fa0, fa0, fa1, rne ! 1065-1065
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1065-1065
beq_cont.17912:
	li	a0, 1 ! 1068-1068
	ret ! 1068-1068
beq_else.17909:
	li	a0, 0 ! 1058-1058
	ret ! 1058-1058
solver_fast2.2697:
	lw	a2, a21, 16 ! 0-0
	lw	a3, a21, 12 ! 0-0
	lw	a4, a21, 8 ! 0-0
	lw	a5, a21, 4 ! 0-0
	slli	a6, a0, 2 ! 1074-1074
	add	t0, a5, a6 ! 1074-1074
	lw	a5, t0, 0 ! 1074-1074
	lw	a6, a5, 40 ! 447-452
	flw	fa0, a6, 0 ! 1076-1076
	flw	fa1, a6, 4 ! 1077-1077
	flw	fa2, a6, 8 ! 1078-1078
	lw	a7, a1, 4 ! 544-545
	slli	a0, a0, 2 ! 1080-1080
	add	t0, a7, a0 ! 1080-1080
	lw	a0, t0, 0 ! 1080-1080
	lw	a7, a5, 4 ! 252-257
	li	a8, 1 ! 1082-1082
	bne	a7, a8, beq_else.17913 ! 1082-1087
	lw	a1, a1, 0 ! 538-539
	mv	a2, a0
	mv	a21, a3
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17913:
	li	a1, 2 ! 1084-1084
	bne	a7, a1, beq_else.17914 ! 1084-1087
	flw	fa0, a0, 0 ! 1047-1047
	sw	sp, a4, 0 ! 0-0
	sw	sp, a6, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fisneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1047-1050
	bne	a0, a1, beq_else.17915 ! 1047-1050
	li	a0, 0 ! 1050-1050
	ret ! 1050-1050
beq_else.17915:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1048-1048
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 12 ! 1048-1048
	fmul.s	fa0, fa0, fa1, rne ! 1048-1048
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1048-1048
	li	a0, 1 ! 1049-1049
	ret ! 1049-1049
beq_else.17914:
	mv	a1, a0
	mv	a21, a2
	mv	a2, a6
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
setup_rect_table.2700:
	li	a2, 6 ! 1096-1096
	li	a3, l.12849 ! 1096-1096
	flw	fa0, a3, 0 ! 1096-1096
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 0 ! 1098-1098
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fiszero
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1098-1105
	bne	a0, a1, beq_else.17916 ! 1098-1105
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 24 ! 272-276
	lw	a2, sp, 4 ! 0-0
	flw	fa0, a2, 0 ! 1102-1102
	sw	sp, a1, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fisneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 16-16
	lw	a2, sp, 12 ! 0-0
	bne	a2, a1, beq_else.17918 ! 16-16
	j	beq_cont.17919
beq_else.17918:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.17920 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17921
beq_else.17920:
	li	a0, 0 ! 16-16
beq_cont.17921:
beq_cont.17919:
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 290-295
	flw	fa0, a2, 0 ! 295-295
	li	a2, 0 ! 124-124
	bne	a0, a2, beq_else.17922 ! 124-124
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	beq_cont.17923
beq_else.17922:
beq_cont.17923:
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 0 ! 1102-1102
	li	a1, l.12811 ! 1104-1104
	flw	fa0, a1, 0 ! 1104-1104
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 0 ! 1104-1104
	fdiv.s	fa0, fa0, fa1, rne ! 1104-1104
	fsw	a0, fa0, 4 ! 1104-1104
	j	beq_cont.17917
beq_else.17916:
	li	a0, l.12849 ! 1099-1099
	flw	fa0, a0, 0 ! 1099-1099
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 4 ! 1099-1099
beq_cont.17917:
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 4 ! 1106-1106
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fiszero
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 1106-1111
	bne	a0, a1, beq_else.17924 ! 1106-1111
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 24 ! 272-276
	lw	a2, sp, 4 ! 0-0
	flw	fa0, a2, 4 ! 1109-1109
	sw	sp, a1, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fisneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 16-16
	lw	a2, sp, 16 ! 0-0
	bne	a2, a1, beq_else.17926 ! 16-16
	j	beq_cont.17927
beq_else.17926:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.17928 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17929
beq_else.17928:
	li	a0, 0 ! 16-16
beq_cont.17929:
beq_cont.17927:
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 300-305
	flw	fa0, a2, 4 ! 305-305
	li	a2, 0 ! 124-124
	bne	a0, a2, beq_else.17930 ! 124-124
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.17931
beq_else.17930:
beq_cont.17931:
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 8 ! 1109-1109
	li	a1, l.12811 ! 1110-1110
	flw	fa0, a1, 0 ! 1110-1110
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 4 ! 1110-1110
	fdiv.s	fa0, fa0, fa1, rne ! 1110-1110
	fsw	a0, fa0, 12 ! 1110-1110
	j	beq_cont.17925
beq_else.17924:
	li	a0, l.12849 ! 1107-1107
	flw	fa0, a0, 0 ! 1107-1107
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 12 ! 1107-1107
beq_cont.17925:
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 8 ! 1112-1112
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fiszero
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1112-1117
	bne	a0, a1, beq_else.17932 ! 1112-1117
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 24 ! 272-276
	lw	a2, sp, 4 ! 0-0
	flw	fa0, a2, 8 ! 1115-1115
	sw	sp, a1, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fisneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 16-16
	lw	a2, sp, 20 ! 0-0
	bne	a2, a1, beq_else.17934 ! 16-16
	j	beq_cont.17935
beq_else.17934:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.17936 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17937
beq_else.17936:
	li	a0, 0 ! 16-16
beq_cont.17937:
beq_cont.17935:
	lw	a1, sp, 0 ! 0-0
	lw	a1, a1, 16 ! 310-315
	flw	fa0, a1, 8 ! 315-315
	li	a1, 0 ! 124-124
	bne	a0, a1, beq_else.17938 ! 124-124
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	j	beq_cont.17939
beq_else.17938:
beq_cont.17939:
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 16 ! 1115-1115
	li	a1, l.12811 ! 1116-1116
	flw	fa0, a1, 0 ! 1116-1116
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 8 ! 1116-1116
	fdiv.s	fa0, fa0, fa1, rne ! 1116-1116
	fsw	a0, fa0, 20 ! 1116-1116
	j	beq_cont.17933
beq_else.17932:
	li	a0, l.12849 ! 1113-1113
	flw	fa0, a0, 0 ! 1113-1113
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 20 ! 1113-1113
beq_cont.17933:
	ret ! 1118-1118
setup_surface_table.2703:
	li	a2, 4 ! 1123-1123
	li	a3, l.12849 ! 1123-1123
	flw	fa0, a3, 0 ! 1123-1123
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 0 ! 1125-1125
	lw	a2, sp, 0 ! 0-0
	lw	a3, a2, 16 ! 290-295
	flw	fa1, a3, 0 ! 295-295
	fmul.s	fa0, fa0, fa1, rne ! 1125-1125
	flw	fa1, a1, 4 ! 1125-1125
	lw	a3, a2, 16 ! 300-305
	flw	fa2, a3, 4 ! 305-305
	fmul.s	fa1, fa1, fa2, rne ! 1125-1125
	fadd.s	fa0, fa0, fa1, rne ! 1125-1125
	flw	fa1, a1, 8 ! 1125-1125
	lw	a1, a2, 16 ! 310-315
	flw	fa2, a1, 8 ! 315-315
	fmul.s	fa1, fa1, fa2, rne ! 1125-1125
	fadd.s	fa0, fa0, fa1, rne ! 1125-1125
	fsw	sp, fa0, 8 ! 0-0
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fispos
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 1127-1135
	bne	a0, a1, beq_else.17940 ! 1127-1135
	li	a0, l.12849 ! 1135-1135
	flw	fa0, a0, 0 ! 1135-1135
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa0, 0 ! 1135-1135
	j	beq_cont.17941
beq_else.17940:
	li	a0, l.12813 ! 1129-1129
	flw	fa0, a0, 0 ! 1129-1129
	flw	fa1, sp, 8 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 1129-1129
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa0, 0 ! 1129-1129
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 290-295
	flw	fa0, a2, 0 ! 295-295
	fdiv.s	fa0, fa0, fa1, rne ! 1131-1131
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa0, 4 ! 1131-1131
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 300-305
	flw	fa0, a2, 4 ! 305-305
	flw	fa1, sp, 8 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 1132-1132
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa0, 8 ! 1132-1132
	lw	a1, sp, 0 ! 0-0
	lw	a1, a1, 16 ! 310-315
	flw	fa0, a1, 8 ! 315-315
	flw	fa1, sp, 8 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 1133-1133
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa0, 12 ! 1133-1133
beq_cont.17941:
	ret ! 1136-1136
setup_second_table.2706:
	li	a2, 5 ! 1142-1142
	li	a3, l.12849 ! 1142-1142
	flw	fa0, a3, 0 ! 1142-1142
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 0 ! 1144-1144
	flw	fa1, a1, 4 ! 1144-1144
	flw	fa2, a1, 8 ! 1144-1144
	lw	a2, sp, 0 ! 0-0
	sw	sp, a0, 8 ! 0-0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	quadratic.2637
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 1145-1145
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 290-295
	flw	fa2, a2, 0 ! 295-295
	fmul.s	fa1, fa1, fa2, rne ! 1145-1145
	fsw	sp, fa0, 12 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 4 ! 1146-1146
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 300-305
	flw	fa2, a2, 4 ! 305-305
	fmul.s	fa1, fa1, fa2, rne ! 1146-1146
	fsw	sp, fa0, 16 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 8 ! 1147-1147
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 310-315
	flw	fa2, a2, 8 ! 315-315
	fmul.s	fa1, fa1, fa2, rne ! 1147-1147
	fsw	sp, fa0, 20 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 12 ! 0-0
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa1, 0 ! 1149-1149
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 12 ! 281-285
	li	a3, 0 ! 1153-1153
	bne	a2, a3, beq_else.17942 ! 1153-1161
	flw	fa2, sp, 16 ! 0-0
	fsw	a0, fa2, 4 ! 1158-1158
	flw	fa2, sp, 20 ! 0-0
	fsw	a0, fa2, 8 ! 1159-1159
	fsw	a0, fa0, 12 ! 1160-1160
	j	beq_cont.17943
beq_else.17942:
	lw	a2, sp, 4 ! 0-0
	flw	fa2, a2, 8 ! 1154-1154
	lw	a3, a1, 36 ! 420-425
	flw	fa3, a3, 4 ! 425-425
	fmul.s	fa2, fa2, fa3, rne ! 1154-1154
	flw	fa3, a2, 4 ! 1154-1154
	lw	a3, a1, 36 ! 430-435
	flw	fa4, a3, 8 ! 435-435
	fmul.s	fa3, fa3, fa4, rne ! 1154-1154
	fadd.s	fa2, fa2, fa3, rne ! 1154-1154
	fsw	sp, fa0, 24 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fhalf
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 16 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1154-1154
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 4 ! 1154-1154
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 8 ! 1155-1155
	lw	a2, sp, 0 ! 0-0
	lw	a3, a2, 36 ! 410-415
	flw	fa1, a3, 0 ! 415-415
	fmul.s	fa0, fa0, fa1, rne ! 1155-1155
	flw	fa1, a1, 0 ! 1155-1155
	lw	a3, a2, 36 ! 430-435
	flw	fa2, a3, 8 ! 435-435
	fmul.s	fa1, fa1, fa2, rne ! 1155-1155
	fadd.s	fa0, fa0, fa1, rne ! 1155-1155
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fhalf
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 20 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1155-1155
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 8 ! 1155-1155
	lw	a1, sp, 4 ! 0-0
	flw	fa0, a1, 4 ! 1156-1156
	lw	a2, sp, 0 ! 0-0
	lw	a3, a2, 36 ! 410-415
	flw	fa1, a3, 0 ! 415-415
	fmul.s	fa0, fa0, fa1, rne ! 1156-1156
	flw	fa1, a1, 0 ! 1156-1156
	lw	a1, a2, 36 ! 420-425
	flw	fa2, a1, 4 ! 425-425
	fmul.s	fa1, fa1, fa2, rne ! 1156-1156
	fadd.s	fa0, fa0, fa1, rne ! 1156-1156
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fhalf
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1156-1156
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 12 ! 1156-1156
beq_cont.17943:
	flw	fa0, sp, 12 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fiszero
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1162-1164
	bne	a0, a1, beq_else.17944 ! 1162-1164
	li	a0, l.12811 ! 1163-1163
	flw	fa0, a0, 0 ! 1163-1163
	flw	fa1, sp, 12 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 1163-1163
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 16 ! 1163-1163
	j	beq_cont.17945
beq_else.17944:
beq_cont.17945:
	lw	a0, sp, 8 ! 0-0
	ret ! 1165-1165
iter_setup_dirvec_constants.2709:
	lw	a2, a21, 4 ! 0-0
	li	a3, 0 ! 1171-1171
	blt	a1, a3, bge_else.17946 ! 1171-1184
	slli	a3, a1, 2 ! 1172-1172
	add	t0, a2, a3 ! 1172-1172
	lw	a3, t0, 0 ! 1172-1172
	lw	a4, a0, 4 ! 544-545
	lw	a5, a0, 0 ! 538-539
	lw	a6, a3, 4 ! 252-257
	li	a7, 1 ! 1176-1176
	sw	sp, a21, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	bne	a6, a7, beq_else.17947 ! 1176-1181
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_rect_table.2700
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.17948
beq_else.17947:
	li	a7, 2 ! 1178-1178
	bne	a6, a7, beq_else.17949 ! 1178-1181
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_surface_table.2703
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.17950
beq_else.17949:
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_second_table.2706
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.17950:
beq_cont.17948:
	addi	a0, a1, -1 ! 1183-1183
	li	a1, 0 ! 1171-1171
	blt	a0, a1, bge_else.17951 ! 1171-1184
	slli	a1, a0, 2 ! 1172-1172
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1172-1172
	lw	a1, t0, 0 ! 1172-1172
	lw	a2, sp, 4 ! 0-0
	lw	a3, a2, 4 ! 544-545
	lw	a4, a2, 0 ! 538-539
	lw	a5, a1, 4 ! 252-257
	li	a6, 1 ! 1176-1176
	bne	a5, a6, beq_else.17952 ! 1176-1181
	sw	sp, a3, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_rect_table.2700
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 20 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.17953
beq_else.17952:
	li	a6, 2 ! 1178-1178
	bne	a5, a6, beq_else.17954 ! 1178-1181
	sw	sp, a3, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_surface_table.2703
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 20 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.17955
beq_else.17954:
	sw	sp, a3, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_second_table.2706
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 20 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.17955:
beq_cont.17953:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 4 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17951:
	ret ! 1184-1184
bge_else.17946:
	ret ! 1184-1184
setup_startp_constants.2714:
	lw	a2, a21, 4 ! 0-0
	li	a3, 0 ! 1196-1196
	blt	a1, a3, bge_else.17956 ! 1196-1211
	slli	a3, a1, 2 ! 1197-1197
	add	t0, a2, a3 ! 1197-1197
	lw	a2, t0, 0 ! 1197-1197
	lw	a3, a2, 40 ! 447-452
	lw	a4, a2, 4 ! 252-257
	flw	fa0, a0, 0 ! 1200-1200
	lw	a5, a2, 20 ! 330-335
	flw	fa1, a5, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1200-1200
	fsw	a3, fa0, 0 ! 1200-1200
	flw	fa0, a0, 4 ! 1201-1201
	lw	a5, a2, 20 ! 340-345
	flw	fa1, a5, 4 ! 345-345
	fsub.s	fa0, fa0, fa1, rne ! 1201-1201
	fsw	a3, fa0, 4 ! 1201-1201
	flw	fa0, a0, 8 ! 1202-1202
	lw	a5, a2, 20 ! 350-355
	flw	fa1, a5, 8 ! 355-355
	fsub.s	fa0, fa0, fa1, rne ! 1202-1202
	fsw	a3, fa0, 8 ! 1202-1202
	li	a5, 2 ! 1203-1203
	sw	sp, a0, 0 ! 0-0
	sw	sp, a21, 4 ! 0-0
	sw	sp, a1, 8 ! 0-0
	bne	a4, a5, beq_else.17957 ! 1203-1209
	lw	a2, a2, 16 ! 320-325
	flw	fa0, a3, 0 ! 1205-1205
	flw	fa1, a3, 4 ! 1205-1205
	flw	fa2, a3, 8 ! 1205-1205
	flw	fa3, a2, 0 ! 198-198
	fmul.s	fa0, fa3, fa0, rne ! 198-198
	flw	fa3, a2, 4 ! 198-198
	fmul.s	fa1, fa3, fa1, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a2, 8 ! 198-198
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	fsw	a3, fa0, 12 ! 1204-1205
	j	beq_cont.17958
beq_else.17957:
	li	a5, 2 ! 1206-1206
	blt	a5, a4, bge_else.17959 ! 1206-1209
	j	bge_cont.17960
bge_else.17959:
	flw	fa0, a3, 0 ! 1207-1207
	flw	fa1, a3, 4 ! 1207-1207
	flw	fa2, a3, 8 ! 1207-1207
	sw	sp, a3, 12 ! 0-0
	sw	sp, a4, 16 ! 0-0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	quadratic.2637
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, 3 ! 1208-1208
	lw	a1, sp, 16 ! 0-0
	bne	a1, a0, beq_else.17961 ! 1208-1208
	li	a0, l.12811 ! 1208-1208
	flw	fa1, a0, 0 ! 1208-1208
	fsub.s	fa0, fa0, fa1, rne ! 1208-1208
	j	beq_cont.17962
beq_else.17961:
beq_cont.17962:
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa0, 12 ! 1208-1208
bge_cont.17960:
beq_cont.17958:
	lw	a0, sp, 8 ! 0-0
	addi	a1, a0, -1 ! 1210-1210
	lw	a0, sp, 0 ! 0-0
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17956:
	ret ! 1211-1211
is_outside.2734:
	lw	a1, a0, 20 ! 330-335
	flw	fa3, a1, 0 ! 335-335
	fsub.s	fa0, fa0, fa3, rne ! 1251-1251
	lw	a1, a0, 20 ! 340-345
	flw	fa3, a1, 4 ! 345-345
	fsub.s	fa1, fa1, fa3, rne ! 1252-1252
	lw	a1, a0, 20 ! 350-355
	flw	fa3, a1, 8 ! 355-355
	fsub.s	fa2, fa2, fa3, rne ! 1253-1253
	lw	a1, a0, 4 ! 252-257
	li	a2, 1 ! 1255-1255
	bne	a1, a2, beq_else.17963 ! 1255-1260
	fsw	sp, fa2, 0 ! 0-0
	fsw	sp, fa1, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fabs
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 16 ! 290-295
	flw	fa1, a1, 0 ! 295-295
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fless
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1228-1232
	bne	a0, a1, beq_else.17964 ! 1228-1232
	li	a0, 0 ! 1232-1232
	j	beq_cont.17965
beq_else.17964:
	flw	fa0, sp, 4 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fabs
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 16 ! 300-305
	flw	fa1, a1, 4 ! 305-305
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fless
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1229-1231
	bne	a0, a1, beq_else.17966 ! 1229-1231
	li	a0, 0 ! 1231-1231
	j	beq_cont.17967
beq_else.17966:
	flw	fa0, sp, 0 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fabs
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 16 ! 310-315
	flw	fa1, a1, 8 ! 315-315
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fless
	addi	sp, sp, -16
	lw	ra, sp, 12
beq_cont.17967:
beq_cont.17965:
	li	a1, 0 ! 1227-1233
	bne	a0, a1, beq_else.17968 ! 1227-1233
	lw	a0, sp, 8 ! 0-0
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1233-1233
	bne	a0, a1, beq_else.17969 ! 1233-1233
	li	a0, 1 ! 1233-1233
	ret ! 1233-1233
beq_else.17969:
	li	a0, 0 ! 1233-1233
	ret ! 1233-1233
beq_else.17968:
	lw	a0, sp, 8 ! 0-0
	lw	a0, a0, 24 ! 272-276
	ret ! 276-276
beq_else.17963:
	li	a2, 2 ! 1257-1257
	bne	a1, a2, beq_else.17970 ! 1257-1260
	lw	a1, a0, 16 ! 320-325
	flw	fa3, a1, 0 ! 198-198
	fmul.s	fa0, fa3, fa0, rne ! 198-198
	flw	fa3, a1, 4 ! 198-198
	fmul.s	fa1, fa3, fa1, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a1, 8 ! 198-198
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	lw	a0, a0, 24 ! 272-276
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fisneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 16-16
	lw	a2, sp, 12 ! 0-0
	bne	a2, a1, beq_else.17971 ! 16-16
	j	beq_cont.17972
beq_else.17971:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.17973 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17974
beq_else.17973:
	li	a0, 0 ! 16-16
beq_cont.17974:
beq_cont.17972:
	li	a1, 0 ! 1239-1239
	bne	a0, a1, beq_else.17975 ! 1239-1239
	li	a0, 1 ! 1239-1239
	ret ! 1239-1239
beq_else.17975:
	li	a0, 0 ! 1239-1239
	ret ! 1239-1239
beq_else.17970:
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	quadratic.2637
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 8 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 1245-1245
	bne	a1, a2, beq_else.17976 ! 1245-1245
	li	a1, l.12811 ! 1245-1245
	flw	fa1, a1, 0 ! 1245-1245
	fsub.s	fa0, fa0, fa1, rne ! 1245-1245
	j	beq_cont.17977
beq_else.17976:
beq_cont.17977:
	lw	a0, a0, 24 ! 272-276
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fisneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 16-16
	lw	a2, sp, 16 ! 0-0
	bne	a2, a1, beq_else.17978 ! 16-16
	j	beq_cont.17979
beq_else.17978:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.17980 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17981
beq_else.17980:
	li	a0, 0 ! 16-16
beq_cont.17981:
beq_cont.17979:
	li	a1, 0 ! 1246-1246
	bne	a0, a1, beq_else.17982 ! 1246-1246
	li	a0, 1 ! 1246-1246
	ret ! 1246-1246
beq_else.17982:
	li	a0, 0 ! 1246-1246
	ret ! 1246-1246
check_all_inside.2739:
	lw	a2, a21, 4 ! 0-0
	slli	a3, a0, 2 ! 1265-1265
	add	t0, a1, a3 ! 1265-1265
	lw	a3, t0, 0 ! 1265-1265
	li	a4, -1 ! 1266-1266
	bne	a3, a4, beq_else.17983 ! 1266-1273
	li	a0, 1 ! 1267-1267
	ret ! 1267-1267
beq_else.17983:
	slli	a3, a3, 2 ! 1269-1269
	add	t0, a2, a3 ! 1269-1269
	lw	a3, t0, 0 ! 1269-1269
	lw	a4, a3, 20 ! 330-335
	flw	fa3, a4, 0 ! 335-335
	fsub.s	fa3, fa0, fa3, rne ! 1251-1251
	lw	a4, a3, 20 ! 340-345
	flw	fa4, a4, 4 ! 345-345
	fsub.s	fa4, fa1, fa4, rne ! 1252-1252
	lw	a4, a3, 20 ! 350-355
	flw	fa5, a4, 8 ! 355-355
	fsub.s	fa5, fa2, fa5, rne ! 1253-1253
	lw	a4, a3, 4 ! 252-257
	li	a5, 1 ! 1255-1255
	sw	sp, a21, 0 ! 0-0
	fsw	sp, fa2, 4 ! 0-0
	fsw	sp, fa1, 8 ! 0-0
	fsw	sp, fa0, 12 ! 0-0
	sw	sp, a2, 16 ! 0-0
	sw	sp, a1, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	bne	a4, a5, beq_else.17984 ! 1255-1260
	fsw	sp, fa5, 28 ! 0-0
	fsw	sp, fa4, 32 ! 0-0
	sw	sp, a3, 36 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fabs
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0-0
	lw	a1, a0, 16 ! 290-295
	flw	fa1, a1, 0 ! 295-295
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 1228-1232
	bne	a0, a1, beq_else.17986 ! 1228-1232
	li	a0, 0 ! 1232-1232
	j	beq_cont.17987
beq_else.17986:
	flw	fa0, sp, 32 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fabs
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0-0
	lw	a1, a0, 16 ! 300-305
	flw	fa1, a1, 4 ! 305-305
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 1229-1231
	bne	a0, a1, beq_else.17988 ! 1229-1231
	li	a0, 0 ! 1231-1231
	j	beq_cont.17989
beq_else.17988:
	flw	fa0, sp, 28 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fabs
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0-0
	lw	a1, a0, 16 ! 310-315
	flw	fa1, a1, 8 ! 315-315
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
beq_cont.17989:
beq_cont.17987:
	li	a1, 0 ! 1227-1233
	bne	a0, a1, beq_else.17990 ! 1227-1233
	lw	a0, sp, 36 ! 0-0
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1233-1233
	bne	a0, a1, beq_else.17992 ! 1233-1233
	li	a0, 1 ! 1233-1233
	j	beq_cont.17993
beq_else.17992:
	li	a0, 0 ! 1233-1233
beq_cont.17993:
	j	beq_cont.17991
beq_else.17990:
	lw	a0, sp, 36 ! 0-0
	lw	a0, a0, 24 ! 272-276
beq_cont.17991:
	j	beq_cont.17985
beq_else.17984:
	li	a5, 2 ! 1257-1257
	bne	a4, a5, beq_else.17994 ! 1257-1260
	lw	a4, a3, 16 ! 320-325
	flw	fa6, a4, 0 ! 198-198
	fmul.s	fa3, fa6, fa3, rne ! 198-198
	flw	fa6, a4, 4 ! 198-198
	fmul.s	fa4, fa6, fa4, rne ! 198-198
	fadd.s	fa3, fa3, fa4, rne ! 198-198
	flw	fa4, a4, 8 ! 198-198
	fmul.s	fa4, fa4, fa5, rne ! 198-198
	fadd.s	fa3, fa3, fa4, rne ! 198-198
	lw	a3, a3, 24 ! 272-276
	sw	sp, a3, 40 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fisneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 16-16
	lw	a2, sp, 40 ! 0-0
	bne	a2, a1, beq_else.17996 ! 16-16
	j	beq_cont.17997
beq_else.17996:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.17998 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17999
beq_else.17998:
	li	a0, 0 ! 16-16
beq_cont.17999:
beq_cont.17997:
	li	a1, 0 ! 1239-1239
	bne	a0, a1, beq_else.18000 ! 1239-1239
	li	a0, 1 ! 1239-1239
	j	beq_cont.18001
beq_else.18000:
	li	a0, 0 ! 1239-1239
beq_cont.18001:
	j	beq_cont.17995
beq_else.17994:
	sw	sp, a3, 36 ! 0-0
	mv	a0, a3
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	quadratic.2637
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 36 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 1245-1245
	bne	a1, a2, beq_else.18002 ! 1245-1245
	li	a1, l.12811 ! 1245-1245
	flw	fa1, a1, 0 ! 1245-1245
	fsub.s	fa0, fa0, fa1, rne ! 1245-1245
	j	beq_cont.18003
beq_else.18002:
beq_cont.18003:
	lw	a0, a0, 24 ! 272-276
	sw	sp, a0, 44 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fisneg
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 16-16
	lw	a2, sp, 44 ! 0-0
	bne	a2, a1, beq_else.18004 ! 16-16
	j	beq_cont.18005
beq_else.18004:
	li	a1, 0 ! 16-16
	bne	a0, a1, beq_else.18006 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.18007
beq_else.18006:
	li	a0, 0 ! 16-16
beq_cont.18007:
beq_cont.18005:
	li	a1, 0 ! 1246-1246
	bne	a0, a1, beq_else.18008 ! 1246-1246
	li	a0, 1 ! 1246-1246
	j	beq_cont.18009
beq_else.18008:
	li	a0, 0 ! 1246-1246
beq_cont.18009:
beq_cont.17995:
beq_cont.17985:
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.18010 ! 1269-1272
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1272-1272
	slli	a1, a0, 2 ! 1265-1265
	lw	a2, sp, 20 ! 0-0
	add	t0, a2, a1 ! 1265-1265
	lw	a1, t0, 0 ! 1265-1265
	li	a3, -1 ! 1266-1266
	bne	a1, a3, beq_else.18011 ! 1266-1273
	li	a0, 1 ! 1267-1267
	ret ! 1267-1267
beq_else.18011:
	slli	a1, a1, 2 ! 1269-1269
	lw	a3, sp, 16 ! 0-0
	add	t0, a3, a1 ! 1269-1269
	lw	a1, t0, 0 ! 1269-1269
	flw	fa0, sp, 12 ! 0-0
	flw	fa1, sp, 8 ! 0-0
	flw	fa2, sp, 4 ! 0-0
	sw	sp, a0, 48 ! 0-0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	is_outside.2734
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.18012 ! 1269-1272
	lw	a0, sp, 48 ! 0-0
	addi	a0, a0, 1 ! 1272-1272
	flw	fa0, sp, 12 ! 0-0
	flw	fa1, sp, 8 ! 0-0
	flw	fa2, sp, 4 ! 0-0
	lw	a1, sp, 20 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18012:
	li	a0, 0 ! 1270-1270
	ret ! 1270-1270
beq_else.18010:
	li	a0, 0 ! 1270-1270
	ret ! 1270-1270
shadow_check_and_group.2745:
	lw	a2, a21, 36 ! 0-0
	lw	a3, a21, 32 ! 0-0
	lw	a4, a21, 28 ! 0-0
	lw	a5, a21, 24 ! 0-0
	lw	a6, a21, 20 ! 0-0
	lw	a7, a21, 16 ! 0-0
	lw	a8, a21, 12 ! 0-0
	lw	a9, a21, 8 ! 0-0
	lw	a10, a21, 4 ! 0-0
	slli	a11, a0, 2 ! 1285-1285
	add	t0, a1, a11 ! 1285-1285
	lw	a11, t0, 0 ! 1285-1285
	li	a12, -1 ! 1285-1285
	bne	a11, a12, beq_else.18013 ! 1285-1310
	li	a0, 0 ! 1286-1286
	ret ! 1286-1286
beq_else.18013:
	slli	a11, a0, 2 ! 1288-1288
	add	t0, a1, a11 ! 1288-1288
	lw	a11, t0, 0 ! 1288-1288
	slli	a12, a11, 2 ! 1027-1027
	add	t0, a6, a12 ! 1027-1027
	lw	a12, t0, 0 ! 1027-1027
	flw	fa0, a8, 0 ! 1028-1028
	lw	a13, a12, 20 ! 330-335
	flw	fa1, a13, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1028-1028
	flw	fa1, a8, 4 ! 1029-1029
	lw	a13, a12, 20 ! 340-345
	flw	fa2, a13, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 1029-1029
	flw	fa2, a8, 8 ! 1030-1030
	lw	a13, a12, 20 ! 350-355
	flw	fa3, a13, 8 ! 355-355
	fsub.s	fa2, fa2, fa3, rne ! 1030-1030
	slli	a13, a11, 2 ! 1032-1032
	add	t0, a9, a13 ! 1032-1032
	lw	a9, t0, 0 ! 1032-1032
	lw	a13, a12, 4 ! 252-257
	li	a14, 1 ! 1034-1034
	sw	sp, a10, 0 ! 0-0
	sw	sp, a8, 4 ! 0-0
	sw	sp, a7, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a21, 16 ! 0-0
	sw	sp, a0, 20 ! 0-0
	sw	sp, a6, 24 ! 0-0
	sw	sp, a11, 28 ! 0-0
	sw	sp, a5, 32 ! 0-0
	bne	a13, a14, beq_else.18014 ! 1034-1039
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
	j	beq_cont.18015
beq_else.18014:
	li	a2, 2 ! 1036-1036
	bne	a13, a2, beq_else.18016 ! 1036-1039
	flw	fa3, a9, 0 ! 998-998
	fsw	sp, fa2, 36 ! 0-0
	fsw	sp, fa1, 40 ! 0-0
	fsw	sp, fa0, 44 ! 0-0
	sw	sp, a9, 48 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fisneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 998-1002
	bne	a0, a1, beq_else.18018 ! 998-1002
	li	a0, 0 ! 1002-1002
	j	beq_cont.18019
beq_else.18018:
	lw	a0, sp, 48 ! 0-0
	flw	fa0, a0, 4 ! 1000-1000
	flw	fa1, sp, 44 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1000-1000
	flw	fa1, a0, 8 ! 1000-1000
	flw	fa2, sp, 40 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	flw	fa1, a0, 12 ! 1000-1000
	flw	fa2, sp, 36 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	lw	a0, sp, 32 ! 0-0
	fsw	a0, fa0, 0 ! 999-1000
	li	a0, 1 ! 1001-1001
beq_cont.18019:
	j	beq_cont.18017
beq_else.18016:
	mv	a1, a9
	mv	a0, a12
	mv	a21, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
beq_cont.18017:
beq_cont.18015:
	lw	a1, sp, 32 ! 0-0
	flw	fa0, a1, 0 ! 1290-1290
	li	a1, 0 ! 1291-1291
	fsw	sp, fa0, 52 ! 0-0
	bne	a0, a1, beq_else.18020 ! 1291-1291
	li	a0, 0 ! 1291-1291
	j	beq_cont.18021
beq_else.18020:
	li	a0, l.13223 ! 1291-1291
	flw	fa1, a0, 0 ! 1291-1291
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fless
	addi	sp, sp, -60
	lw	ra, sp, 56
beq_cont.18021:
	li	a1, 0 ! 1291-1310
	bne	a0, a1, beq_else.18022 ! 1291-1310
	lw	a0, sp, 28 ! 0-0
	slli	a0, a0, 2 ! 1307-1307
	lw	a1, sp, 24 ! 0-0
	add	t0, a1, a0 ! 1307-1307
	lw	a0, t0, 0 ! 1307-1307
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1307-1310
	bne	a0, a1, beq_else.18023 ! 1307-1310
	li	a0, 0 ! 1310-1310
	ret ! 1310-1310
beq_else.18023:
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1308-1308
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 16 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18022:
	li	a0, l.13225 ! 1294-1294
	flw	fa0, a0, 0 ! 1294-1294
	flw	fa1, sp, 52 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1294-1294
	lw	a0, sp, 8 ! 0-0
	flw	fa1, a0, 0 ! 1295-1295
	fmul.s	fa1, fa1, fa0, rne ! 1295-1295
	lw	a1, sp, 4 ! 0-0
	flw	fa2, a1, 0 ! 1295-1295
	fadd.s	fa1, fa1, fa2, rne ! 1295-1295
	flw	fa2, a0, 4 ! 1296-1296
	fmul.s	fa2, fa2, fa0, rne ! 1296-1296
	flw	fa3, a1, 4 ! 1296-1296
	fadd.s	fa2, fa2, fa3, rne ! 1296-1296
	flw	fa3, a0, 8 ! 1297-1297
	fmul.s	fa0, fa3, fa0, rne ! 1297-1297
	flw	fa3, a1, 8 ! 1297-1297
	fadd.s	fa0, fa0, fa3, rne ! 1297-1297
	lw	a1, sp, 12 ! 0-0
	lw	a0, a1, 0 ! 1265-1265
	li	a2, -1 ! 1266-1266
	bne	a0, a2, beq_else.18024 ! 1266-1273
	li	a0, 1 ! 1267-1267
	j	beq_cont.18025
beq_else.18024:
	slli	a0, a0, 2 ! 1269-1269
	lw	a2, sp, 24 ! 0-0
	add	t0, a2, a0 ! 1269-1269
	lw	a0, t0, 0 ! 1269-1269
	fsw	sp, fa0, 56 ! 0-0
	fsw	sp, fa2, 60 ! 0-0
	fsw	sp, fa1, 64 ! 0-0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	is_outside.2734
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.18026 ! 1269-1272
	li	a0, 1 ! 1272-1272
	flw	fa0, sp, 64 ! 0-0
	flw	fa1, sp, 60 ! 0-0
	flw	fa2, sp, 56 ! 0-0
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	j	beq_cont.18027
beq_else.18026:
	li	a0, 0 ! 1270-1270
beq_cont.18027:
beq_cont.18025:
	li	a1, 0 ! 1298-1301
	bne	a0, a1, beq_else.18028 ! 1298-1301
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1301-1301
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 16 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18028:
	li	a0, 1 ! 1299-1299
	ret ! 1299-1299
shadow_check_one_or_group.2748:
	lw	a2, a21, 8 ! 0-0
	lw	a3, a21, 4 ! 0-0
	slli	a4, a0, 2 ! 1315-1315
	add	t0, a1, a4 ! 1315-1315
	lw	a4, t0, 0 ! 1315-1315
	li	a5, -1 ! 1316-1316
	bne	a4, a5, beq_else.18029 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.18029:
	slli	a4, a4, 2 ! 1319-1319
	add	t0, a3, a4 ! 1319-1319
	lw	a4, t0, 0 ! 1319-1319
	li	a5, 0 ! 1320-1320
	sw	sp, a21, 0 ! 0-0
	sw	sp, a2, 4 ! 0-0
	sw	sp, a3, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a0, 16 ! 0-0
	mv	a1, a4
	mv	a0, a5
	mv	a21, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18030 ! 1321-1324
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	slli	a1, a0, 2 ! 1315-1315
	lw	a2, sp, 12 ! 0-0
	add	t0, a2, a1 ! 1315-1315
	lw	a1, t0, 0 ! 1315-1315
	li	a3, -1 ! 1316-1316
	bne	a1, a3, beq_else.18031 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.18031:
	slli	a1, a1, 2 ! 1319-1319
	lw	a3, sp, 8 ! 0-0
	add	t0, a3, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a4, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 20 ! 0-0
	mv	a0, a4
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18032 ! 1321-1324
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	slli	a1, a0, 2 ! 1315-1315
	lw	a2, sp, 12 ! 0-0
	add	t0, a2, a1 ! 1315-1315
	lw	a1, t0, 0 ! 1315-1315
	li	a3, -1 ! 1316-1316
	bne	a1, a3, beq_else.18033 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.18033:
	slli	a1, a1, 2 ! 1319-1319
	lw	a3, sp, 8 ! 0-0
	add	t0, a3, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a4, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18034 ! 1321-1324
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	slli	a1, a0, 2 ! 1315-1315
	lw	a2, sp, 12 ! 0-0
	add	t0, a2, a1 ! 1315-1315
	lw	a1, t0, 0 ! 1315-1315
	li	a3, -1 ! 1316-1316
	bne	a1, a3, beq_else.18035 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.18035:
	slli	a1, a1, 2 ! 1319-1319
	lw	a3, sp, 8 ! 0-0
	add	t0, a3, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 28 ! 0-0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18036 ! 1321-1324
	lw	a0, sp, 28 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18036:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
beq_else.18034:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
beq_else.18032:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
beq_else.18030:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
shadow_check_one_or_matrix.2751:
	lw	a2, a21, 40 ! 0-0
	lw	a3, a21, 36 ! 0-0
	lw	a4, a21, 32 ! 0-0
	lw	a5, a21, 28 ! 0-0
	lw	a6, a21, 24 ! 0-0
	lw	a7, a21, 20 ! 0-0
	lw	a8, a21, 16 ! 0-0
	lw	a9, a21, 12 ! 0-0
	lw	a10, a21, 8 ! 0-0
	lw	a11, a21, 4 ! 0-0
	slli	a12, a0, 2 ! 1330-1330
	add	t0, a1, a12 ! 1330-1330
	lw	a12, t0, 0 ! 1330-1330
	lw	a13, a12, 0 ! 1331-1331
	li	a14, -1 ! 1332-1332
	bne	a13, a14, beq_else.18037 ! 1332-1355
	li	a0, 0 ! 1333-1333
	ret ! 1333-1333
beq_else.18037:
	li	a14, 99 ! 1336-1336
	sw	sp, a6, 0 ! 0-0
	sw	sp, a7, 4 ! 0-0
	sw	sp, a11, 8 ! 0-0
	sw	sp, a12, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	sw	sp, a21, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	bne	a13, a14, beq_else.18038 ! 1336-1348
	li	a0, 1 ! 1337-1337
	j	beq_cont.18039
beq_else.18038:
	slli	a14, a13, 2 ! 1027-1027
	add	t0, a8, a14 ! 1027-1027
	lw	a8, t0, 0 ! 1027-1027
	flw	fa0, a9, 0 ! 1028-1028
	lw	a14, a8, 20 ! 330-335
	flw	fa1, a14, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1028-1028
	flw	fa1, a9, 4 ! 1029-1029
	lw	a14, a8, 20 ! 340-345
	flw	fa2, a14, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 1029-1029
	flw	fa2, a9, 8 ! 1030-1030
	lw	a9, a8, 20 ! 350-355
	flw	fa3, a9, 8 ! 355-355
	fsub.s	fa2, fa2, fa3, rne ! 1030-1030
	slli	a9, a13, 2 ! 1032-1032
	add	t0, a10, a9 ! 1032-1032
	lw	a9, t0, 0 ! 1032-1032
	lw	a10, a8, 4 ! 252-257
	li	a13, 1 ! 1034-1034
	sw	sp, a5, 28 ! 0-0
	bne	a10, a13, beq_else.18040 ! 1034-1039
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
	j	beq_cont.18041
beq_else.18040:
	li	a2, 2 ! 1036-1036
	bne	a10, a2, beq_else.18042 ! 1036-1039
	flw	fa3, a9, 0 ! 998-998
	fsw	sp, fa2, 32 ! 0-0
	fsw	sp, fa1, 36 ! 0-0
	fsw	sp, fa0, 40 ! 0-0
	sw	sp, a9, 44 ! 0-0
	fmv.s	fa0, fa3
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fisneg
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 998-1002
	bne	a0, a1, beq_else.18044 ! 998-1002
	li	a0, 0 ! 1002-1002
	j	beq_cont.18045
beq_else.18044:
	lw	a0, sp, 44 ! 0-0
	flw	fa0, a0, 4 ! 1000-1000
	flw	fa1, sp, 40 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1000-1000
	flw	fa1, a0, 8 ! 1000-1000
	flw	fa2, sp, 36 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	flw	fa1, a0, 12 ! 1000-1000
	flw	fa2, sp, 32 ! 0-0
	fmul.s	fa1, fa1, fa2, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	lw	a0, sp, 28 ! 0-0
	fsw	a0, fa0, 0 ! 999-1000
	li	a0, 1 ! 1001-1001
beq_cont.18045:
	j	beq_cont.18043
beq_else.18042:
	mv	a1, a9
	mv	a0, a8
	mv	a21, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
beq_cont.18043:
beq_cont.18041:
	li	a1, 0 ! 1342-1342
	bne	a0, a1, beq_else.18046 ! 1342-1348
	li	a0, 0 ! 1348-1348
	j	beq_cont.18047
beq_else.18046:
	lw	a0, sp, 28 ! 0-0
	flw	fa0, a0, 0 ! 1343-1343
	li	a0, l.13260 ! 1343-1343
	flw	fa1, a0, 0 ! 1343-1343
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1343-1347
	bne	a0, a1, beq_else.18048 ! 1343-1347
	li	a0, 0 ! 1347-1347
	j	beq_cont.18049
beq_else.18048:
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 4 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.18050 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.18051
beq_else.18050:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18052 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 8 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.18054 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.18055
beq_else.18054:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18056 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 12 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.18058 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.18059
beq_else.18058:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18060 ! 1321-1324
	li	a0, 4 ! 1324-1324
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	beq_cont.18061
beq_else.18060:
	li	a0, 1 ! 1322-1322
beq_cont.18061:
beq_cont.18059:
	j	beq_cont.18057
beq_else.18056:
	li	a0, 1 ! 1322-1322
beq_cont.18057:
beq_cont.18055:
	j	beq_cont.18053
beq_else.18052:
	li	a0, 1 ! 1322-1322
beq_cont.18053:
beq_cont.18051:
	li	a1, 0 ! 1344-1346
	bne	a0, a1, beq_else.18062 ! 1344-1346
	li	a0, 0 ! 1346-1346
	j	beq_cont.18063
beq_else.18062:
	li	a0, 1 ! 1345-1345
beq_cont.18063:
beq_cont.18049:
beq_cont.18047:
beq_cont.18039:
	li	a1, 0 ! 1335-1355
	bne	a0, a1, beq_else.18064 ! 1335-1355
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1355-1355
	lw	a1, sp, 16 ! 0-0
	lw	a21, sp, 20 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18064:
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 4 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.18065 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.18066
beq_else.18065:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18067 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 8 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.18069 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.18070
beq_else.18069:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18071 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 12 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.18073 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.18074
beq_else.18073:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a2, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.18075 ! 1321-1324
	li	a0, 4 ! 1324-1324
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	beq_cont.18076
beq_else.18075:
	li	a0, 1 ! 1322-1322
beq_cont.18076:
beq_cont.18074:
	j	beq_cont.18072
beq_else.18071:
	li	a0, 1 ! 1322-1322
beq_cont.18072:
beq_cont.18070:
	j	beq_cont.18068
beq_else.18067:
	li	a0, 1 ! 1322-1322
beq_cont.18068:
beq_cont.18066:
	li	a1, 0 ! 1350-1353
	bne	a0, a1, beq_else.18077 ! 1350-1353
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1353-1353
	lw	a1, sp, 16 ! 0-0
	lw	a21, sp, 20 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18077:
	li	a0, 1 ! 1351-1351
	ret ! 1351-1351
solve_each_element.2754:
	lw	a3, a21, 44 ! 0-0
	lw	a4, a21, 40 ! 0-0
	lw	a5, a21, 36 ! 0-0
	lw	a6, a21, 32 ! 0-0
	lw	a7, a21, 28 ! 0-0
	lw	a8, a21, 24 ! 0-0
	lw	a9, a21, 20 ! 0-0
	lw	a10, a21, 16 ! 0-0
	lw	a11, a21, 12 ! 0-0
	lw	a12, a21, 8 ! 0-0
	lw	a13, a21, 4 ! 0-0
	slli	a14, a0, 2 ! 1366-1366
	add	t0, a1, a14 ! 1366-1366
	lw	a14, t0, 0 ! 1366-1366
	li	a15, -1 ! 1367-1367
	bne	a14, a15, beq_else.18078 ! 1367-1402
	ret ! 1367-1367
beq_else.18078:
	slli	a15, a14, 2 ! 933-933
	add	t0, a9, a15 ! 933-933
	lw	a15, t0, 0 ! 933-933
	flw	fa0, a4, 0 ! 935-935
	lw	a16, a15, 20 ! 330-335
	flw	fa1, a16, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 935-935
	flw	fa1, a4, 4 ! 936-936
	lw	a16, a15, 20 ! 340-345
	flw	fa2, a16, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 936-936
	flw	fa2, a4, 8 ! 937-937
	lw	a16, a15, 20 ! 350-355
	flw	fa3, a16, 8 ! 355-355
	fsub.s	fa2, fa2, fa3, rne ! 937-937
	lw	a16, a15, 4 ! 252-257
	li	a17, 1 ! 940-940
	sw	sp, a10, 0 ! 0-0
	sw	sp, a12, 4 ! 0-0
	sw	sp, a11, 8 ! 0-0
	sw	sp, a13, 12 ! 0-0
	sw	sp, a4, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	sw	sp, a8, 24 ! 0-0
	sw	sp, a2, 28 ! 0-0
	sw	sp, a1, 32 ! 0-0
	sw	sp, a21, 36 ! 0-0
	sw	sp, a0, 40 ! 0-0
	sw	sp, a9, 44 ! 0-0
	sw	sp, a14, 48 ! 0-0
	bne	a16, a17, beq_else.18079 ! 940-942
	li	a5, 0 ! 843-843
	li	a6, 1 ! 843-843
	li	a16, 2 ! 843-843
	fsw	sp, fa0, 52 ! 0-0
	fsw	sp, fa2, 56 ! 0-0
	fsw	sp, fa1, 60 ! 0-0
	sw	sp, a15, 64 ! 0-0
	sw	sp, a7, 68 ! 0-0
	mv	a4, a16
	mv	a3, a6
	mv	a1, a2
	mv	a0, a15
	mv	a21, a7
	mv	a2, a5
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 843-846
	bne	a0, a1, beq_else.18081 ! 843-846
	li	a2, 1 ! 844-844
	li	a3, 2 ! 844-844
	li	a4, 0 ! 844-844
	flw	fa0, sp, 60 ! 0-0
	flw	fa1, sp, 56 ! 0-0
	flw	fa2, sp, 52 ! 0-0
	lw	a0, sp, 64 ! 0-0
	lw	a1, sp, 28 ! 0-0
	lw	a21, sp, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 844-846
	bne	a0, a1, beq_else.18083 ! 844-846
	li	a2, 2 ! 845-845
	li	a3, 0 ! 845-845
	li	a4, 1 ! 845-845
	flw	fa0, sp, 56 ! 0-0
	flw	fa1, sp, 52 ! 0-0
	flw	fa2, sp, 60 ! 0-0
	lw	a0, sp, 64 ! 0-0
	lw	a1, sp, 28 ! 0-0
	lw	a21, sp, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 845-846
	bne	a0, a1, beq_else.18085 ! 845-846
	li	a0, 0 ! 846-846
	j	beq_cont.18086
beq_else.18085:
	li	a0, 3 ! 845-845
beq_cont.18086:
	j	beq_cont.18084
beq_else.18083:
	li	a0, 2 ! 844-844
beq_cont.18084:
	j	beq_cont.18082
beq_else.18081:
	li	a0, 1 ! 843-843
beq_cont.18082:
	j	beq_cont.18080
beq_else.18079:
	li	a7, 2 ! 941-941
	bne	a16, a7, beq_else.18087 ! 941-942
	mv	a1, a2
	mv	a0, a15
	mv	a21, a5
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	j	beq_cont.18088
beq_else.18087:
	mv	a1, a2
	mv	a0, a15
	mv	a21, a6
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
beq_cont.18088:
beq_cont.18080:
	li	a1, 0 ! 1370-1370
	bne	a0, a1, beq_else.18089 ! 1370-1400
	lw	a0, sp, 48 ! 0-0
	slli	a0, a0, 2 ! 1398-1398
	lw	a1, sp, 44 ! 0-0
	add	t0, a1, a0 ! 1398-1398
	lw	a0, t0, 0 ! 1398-1398
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1398-1400
	bne	a0, a1, beq_else.18090 ! 1398-1400
	ret ! 1400-1400
beq_else.18090:
	lw	a0, sp, 40 ! 0-0
	addi	a0, a0, 1 ! 1399-1399
	lw	a1, sp, 32 ! 0-0
	lw	a2, sp, 28 ! 0-0
	lw	a21, sp, 36 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18089:
	lw	a1, sp, 24 ! 0-0
	flw	fa1, a1, 0 ! 1374-1374
	li	a1, l.12849 ! 1376-1376
	flw	fa0, a1, 0 ! 1376-1376
	sw	sp, a0, 72 ! 0-0
	fsw	sp, fa1, 76 ! 0-0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1376-1393
	bne	a0, a1, beq_else.18091 ! 1376-1393
	j	beq_cont.18092
beq_else.18091:
	lw	a0, sp, 20 ! 0-0
	flw	fa1, a0, 0 ! 1377-1377
	flw	fa0, sp, 76 ! 0-0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1377-1392
	bne	a0, a1, beq_else.18093 ! 1377-1392
	j	beq_cont.18094
beq_else.18093:
	li	a0, l.13225 ! 1379-1379
	flw	fa0, a0, 0 ! 1379-1379
	flw	fa1, sp, 76 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1379-1379
	lw	a2, sp, 28 ! 0-0
	flw	fa1, a2, 0 ! 1380-1380
	fmul.s	fa1, fa1, fa0, rne ! 1380-1380
	lw	a0, sp, 16 ! 0-0
	flw	fa2, a0, 0 ! 1380-1380
	fadd.s	fa1, fa1, fa2, rne ! 1380-1380
	flw	fa2, a2, 4 ! 1381-1381
	fmul.s	fa2, fa2, fa0, rne ! 1381-1381
	flw	fa3, a0, 4 ! 1381-1381
	fadd.s	fa2, fa2, fa3, rne ! 1381-1381
	flw	fa3, a2, 8 ! 1382-1382
	fmul.s	fa3, fa3, fa0, rne ! 1382-1382
	flw	fa4, a0, 8 ! 1382-1382
	fadd.s	fa3, fa3, fa4, rne ! 1382-1382
	lw	a1, sp, 32 ! 0-0
	lw	a0, a1, 0 ! 1265-1265
	li	a3, -1 ! 1266-1266
	fsw	sp, fa3, 80 ! 0-0
	fsw	sp, fa2, 84 ! 0-0
	fsw	sp, fa1, 88 ! 0-0
	fsw	sp, fa0, 92 ! 0-0
	bne	a0, a3, beq_else.18095 ! 1266-1273
	li	a0, 1 ! 1267-1267
	j	beq_cont.18096
beq_else.18095:
	slli	a0, a0, 2 ! 1269-1269
	lw	a3, sp, 44 ! 0-0
	add	t0, a3, a0 ! 1269-1269
	lw	a0, t0, 0 ! 1269-1269
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	is_outside.2734
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.18097 ! 1269-1272
	li	a0, 1 ! 1272-1272
	flw	fa0, sp, 88 ! 0-0
	flw	fa1, sp, 84 ! 0-0
	flw	fa2, sp, 80 ! 0-0
	lw	a1, sp, 32 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	j	beq_cont.18098
beq_else.18097:
	li	a0, 0 ! 1270-1270
beq_cont.18098:
beq_cont.18096:
	li	a1, 0 ! 1383-1390
	bne	a0, a1, beq_else.18099 ! 1383-1390
	j	beq_cont.18100
beq_else.18099:
	flw	fa0, sp, 92 ! 0-0
	lw	a0, sp, 20 ! 0-0
	fsw	a0, fa0, 0 ! 1385-1385
	flw	fa0, sp, 88 ! 0-0
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 0 ! 145-145
	flw	fa0, sp, 84 ! 0-0
	fsw	a0, fa0, 4 ! 146-146
	flw	fa0, sp, 80 ! 0-0
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 48 ! 0-0
	lw	a1, sp, 4 ! 0-0
	sw	a1, a0, 0 ! 1387-1387
	lw	a0, sp, 72 ! 0-0
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 0 ! 1388-1388
beq_cont.18100:
beq_cont.18094:
beq_cont.18092:
	lw	a0, sp, 40 ! 0-0
	addi	a0, a0, 1 ! 1394-1394
	lw	a1, sp, 32 ! 0-0
	lw	a2, sp, 28 ! 0-0
	lw	a21, sp, 36 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network.2758:
	lw	a3, a21, 8 ! 0-0
	lw	a4, a21, 4 ! 0-0
	slli	a5, a0, 2 ! 1407-1407
	add	t0, a1, a5 ! 1407-1407
	lw	a5, t0, 0 ! 1407-1407
	li	a6, -1 ! 1408-1408
	bne	a5, a6, beq_else.18101 ! 1408-1412
	ret ! 1412-1412
beq_else.18101:
	slli	a5, a5, 2 ! 1409-1409
	add	t0, a4, a5 ! 1409-1409
	lw	a5, t0, 0 ! 1409-1409
	li	a6, 0 ! 1410-1410
	sw	sp, a21, 0 ! 0-0
	sw	sp, a2, 4 ! 0-0
	sw	sp, a3, 8 ! 0-0
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	sw	sp, a0, 20 ! 0-0
	mv	a1, a5
	mv	a0, a6
	mv	a21, a3
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1411-1411
	slli	a1, a0, 2 ! 1407-1407
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 1407-1407
	lw	a1, t0, 0 ! 1407-1407
	li	a3, -1 ! 1408-1408
	bne	a1, a3, beq_else.18102 ! 1408-1412
	ret ! 1412-1412
beq_else.18102:
	slli	a1, a1, 2 ! 1409-1409
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a4, 0 ! 1410-1410
	lw	a5, sp, 4 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1411-1411
	slli	a1, a0, 2 ! 1407-1407
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 1407-1407
	lw	a1, t0, 0 ! 1407-1407
	li	a3, -1 ! 1408-1408
	bne	a1, a3, beq_else.18103 ! 1408-1412
	ret ! 1412-1412
beq_else.18103:
	slli	a1, a1, 2 ! 1409-1409
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a4, 0 ! 1410-1410
	lw	a5, sp, 4 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, a0, 28 ! 0-0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	addi	a0, a0, 1 ! 1411-1411
	slli	a1, a0, 2 ! 1407-1407
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 1407-1407
	lw	a1, t0, 0 ! 1407-1407
	li	a3, -1 ! 1408-1408
	bne	a1, a3, beq_else.18104 ! 1408-1412
	ret ! 1412-1412
beq_else.18104:
	slli	a1, a1, 2 ! 1409-1409
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a3, 0 ! 1410-1410
	lw	a4, sp, 4 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, a0, 32 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0-0
	addi	a0, a0, 1 ! 1411-1411
	lw	a1, sp, 16 ! 0-0
	lw	a2, sp, 4 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix.2762:
	lw	a3, a21, 44 ! 0-0
	lw	a4, a21, 40 ! 0-0
	lw	a5, a21, 36 ! 0-0
	lw	a6, a21, 32 ! 0-0
	lw	a7, a21, 28 ! 0-0
	lw	a8, a21, 24 ! 0-0
	lw	a9, a21, 20 ! 0-0
	lw	a10, a21, 16 ! 0-0
	lw	a11, a21, 12 ! 0-0
	lw	a12, a21, 8 ! 0-0
	lw	a13, a21, 4 ! 0-0
	slli	a14, a0, 2 ! 1417-1417
	add	t0, a1, a14 ! 1417-1417
	lw	a14, t0, 0 ! 1417-1417
	lw	a15, a14, 0 ! 1418-1418
	li	a16, -1 ! 1419-1419
	bne	a15, a16, beq_else.18105 ! 1419-1436
	ret ! 1420-1420
beq_else.18105:
	li	a16, 99 ! 1422-1422
	sw	sp, a21, 0 ! 0-0
	sw	sp, a3, 4 ! 0-0
	sw	sp, a8, 8 ! 0-0
	sw	sp, a4, 12 ! 0-0
	sw	sp, a9, 16 ! 0-0
	sw	sp, a10, 20 ! 0-0
	sw	sp, a2, 24 ! 0-0
	sw	sp, a11, 28 ! 0-0
	sw	sp, a13, 32 ! 0-0
	sw	sp, a1, 36 ! 0-0
	sw	sp, a0, 40 ! 0-0
	bne	a15, a16, beq_else.18106 ! 1422-1434
	lw	a5, a14, 4 ! 1407-1407
	li	a6, -1 ! 1408-1408
	bne	a5, a6, beq_else.18108 ! 1408-1412
	j	beq_cont.18109
beq_else.18108:
	slli	a5, a5, 2 ! 1409-1409
	add	t0, a13, a5 ! 1409-1409
	lw	a5, t0, 0 ! 1409-1409
	li	a6, 0 ! 1410-1410
	sw	sp, a14, 44 ! 0-0
	mv	a1, a5
	mv	a0, a6
	mv	a21, a11
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0-0
	lw	a1, a0, 8 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18110 ! 1408-1412
	j	beq_cont.18111
beq_else.18110:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a3, 0 ! 1410-1410
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0-0
	lw	a1, a0, 12 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18112 ! 1408-1412
	j	beq_cont.18113
beq_else.18112:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a3, 0 ! 1410-1410
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 4 ! 1411-1411
	lw	a1, sp, 44 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
beq_cont.18113:
beq_cont.18111:
beq_cont.18109:
	j	beq_cont.18107
beq_else.18106:
	slli	a15, a15, 2 ! 933-933
	add	t0, a12, a15 ! 933-933
	lw	a12, t0, 0 ! 933-933
	flw	fa0, a4, 0 ! 935-935
	lw	a15, a12, 20 ! 330-335
	flw	fa1, a15, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 935-935
	flw	fa1, a4, 4 ! 936-936
	lw	a15, a12, 20 ! 340-345
	flw	fa2, a15, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 936-936
	flw	fa2, a4, 8 ! 937-937
	lw	a15, a12, 20 ! 350-355
	flw	fa3, a15, 8 ! 355-355
	fsub.s	fa2, fa2, fa3, rne ! 937-937
	lw	a15, a12, 4 ! 252-257
	li	a16, 1 ! 940-940
	sw	sp, a14, 44 ! 0-0
	bne	a15, a16, beq_else.18114 ! 940-942
	li	a5, 0 ! 843-843
	li	a6, 1 ! 843-843
	li	a15, 2 ! 843-843
	fsw	sp, fa0, 48 ! 0-0
	fsw	sp, fa2, 52 ! 0-0
	fsw	sp, fa1, 56 ! 0-0
	sw	sp, a12, 60 ! 0-0
	sw	sp, a7, 64 ! 0-0
	mv	a4, a15
	mv	a3, a6
	mv	a1, a2
	mv	a0, a12
	mv	a21, a7
	mv	a2, a5
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 843-846
	bne	a0, a1, beq_else.18116 ! 843-846
	li	a2, 1 ! 844-844
	li	a3, 2 ! 844-844
	li	a4, 0 ! 844-844
	flw	fa0, sp, 56 ! 0-0
	flw	fa1, sp, 52 ! 0-0
	flw	fa2, sp, 48 ! 0-0
	lw	a0, sp, 60 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a21, sp, 64 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 844-846
	bne	a0, a1, beq_else.18118 ! 844-846
	li	a2, 2 ! 845-845
	li	a3, 0 ! 845-845
	li	a4, 1 ! 845-845
	flw	fa0, sp, 52 ! 0-0
	flw	fa1, sp, 48 ! 0-0
	flw	fa2, sp, 56 ! 0-0
	lw	a0, sp, 60 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a21, sp, 64 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 845-846
	bne	a0, a1, beq_else.18120 ! 845-846
	li	a0, 0 ! 846-846
	j	beq_cont.18121
beq_else.18120:
	li	a0, 3 ! 845-845
beq_cont.18121:
	j	beq_cont.18119
beq_else.18118:
	li	a0, 2 ! 844-844
beq_cont.18119:
	j	beq_cont.18117
beq_else.18116:
	li	a0, 1 ! 843-843
beq_cont.18117:
	j	beq_cont.18115
beq_else.18114:
	li	a7, 2 ! 941-941
	bne	a15, a7, beq_else.18122 ! 941-942
	mv	a1, a2
	mv	a0, a12
	mv	a21, a5
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	j	beq_cont.18123
beq_else.18122:
	mv	a1, a2
	mv	a0, a12
	mv	a21, a6
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.18123:
beq_cont.18115:
	li	a1, 0 ! 1428-1428
	bne	a0, a1, beq_else.18124 ! 1428-1433
	j	beq_cont.18125
beq_else.18124:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1429-1429
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 0 ! 1430-1430
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fless
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1430-1432
	bne	a0, a1, beq_else.18126 ! 1430-1432
	j	beq_cont.18127
beq_else.18126:
	lw	a0, sp, 44 ! 0-0
	lw	a1, a0, 4 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18128 ! 1408-1412
	j	beq_cont.18129
beq_else.18128:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a3, 0 ! 1410-1410
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44 ! 0-0
	lw	a1, a0, 8 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18130 ! 1408-1412
	j	beq_cont.18131
beq_else.18130:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a3, 0 ! 1410-1410
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44 ! 0-0
	lw	a1, a0, 12 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18132 ! 1408-1412
	j	beq_cont.18133
beq_else.18132:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a3, 0 ! 1410-1410
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a0, 4 ! 1411-1411
	lw	a1, sp, 44 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.18133:
beq_cont.18131:
beq_cont.18129:
beq_cont.18127:
beq_cont.18125:
beq_cont.18107:
	lw	a0, sp, 40 ! 0-0
	addi	a0, a0, 1 ! 1435-1435
	slli	a1, a0, 2 ! 1417-1417
	lw	a2, sp, 36 ! 0-0
	add	t0, a2, a1 ! 1417-1417
	lw	a1, t0, 0 ! 1417-1417
	lw	a3, a1, 0 ! 1418-1418
	li	a4, -1 ! 1419-1419
	bne	a3, a4, beq_else.18134 ! 1419-1436
	ret ! 1420-1420
beq_else.18134:
	li	a4, 99 ! 1422-1422
	sw	sp, a0, 68 ! 0-0
	bne	a3, a4, beq_else.18135 ! 1422-1434
	lw	a3, a1, 4 ! 1407-1407
	li	a4, -1 ! 1408-1408
	bne	a3, a4, beq_else.18137 ! 1408-1412
	j	beq_cont.18138
beq_else.18137:
	slli	a3, a3, 2 ! 1409-1409
	lw	a4, sp, 32 ! 0-0
	add	t0, a4, a3 ! 1409-1409
	lw	a3, t0, 0 ! 1409-1409
	li	a5, 0 ! 1410-1410
	lw	a6, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	sw	sp, a1, 72 ! 0-0
	mv	a2, a6
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72 ! 0-0
	lw	a1, a0, 8 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18139 ! 1408-1412
	j	beq_cont.18140
beq_else.18139:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a2, 0 ! 1410-1410
	lw	a3, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a0, 3 ! 1411-1411
	lw	a1, sp, 72 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
beq_cont.18140:
beq_cont.18138:
	j	beq_cont.18136
beq_else.18135:
	lw	a4, sp, 24 ! 0-0
	lw	a5, sp, 12 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, a1, 72 ! 0-0
	mv	a2, a5
	mv	a1, a4
	mv	a0, a3
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1428-1428
	bne	a0, a1, beq_else.18141 ! 1428-1433
	j	beq_cont.18142
beq_else.18141:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1429-1429
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 1430-1430
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fless
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1430-1432
	bne	a0, a1, beq_else.18143 ! 1430-1432
	j	beq_cont.18144
beq_else.18143:
	lw	a0, sp, 72 ! 0-0
	lw	a1, a0, 4 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18145 ! 1408-1412
	j	beq_cont.18146
beq_else.18145:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a3, 0 ! 1410-1410
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72 ! 0-0
	lw	a1, a0, 8 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.18147 ! 1408-1412
	j	beq_cont.18148
beq_else.18147:
	slli	a1, a1, 2 ! 1409-1409
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1409-1409
	lw	a1, t0, 0 ! 1409-1409
	li	a2, 0 ! 1410-1410
	lw	a3, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a0, 3 ! 1411-1411
	lw	a1, sp, 72 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
beq_cont.18148:
beq_cont.18146:
beq_cont.18144:
beq_cont.18142:
beq_cont.18136:
	lw	a0, sp, 68 ! 0-0
	addi	a0, a0, 1 ! 1435-1435
	lw	a1, sp, 36 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_each_element_fast.2768:
	lw	a3, a21, 40 ! 0-0
	lw	a4, a21, 36 ! 0-0
	lw	a5, a21, 32 ! 0-0
	lw	a6, a21, 28 ! 0-0
	lw	a7, a21, 24 ! 0-0
	lw	a8, a21, 20 ! 0-0
	lw	a9, a21, 16 ! 0-0
	lw	a10, a21, 12 ! 0-0
	lw	a11, a21, 8 ! 0-0
	lw	a12, a21, 4 ! 0-0
	lw	a13, a2, 0 ! 538-539
	slli	a14, a0, 2 ! 1460-1460
	add	t0, a1, a14 ! 1460-1460
	lw	a14, t0, 0 ! 1460-1460
	li	a15, -1 ! 1461-1461
	bne	a14, a15, beq_else.18149 ! 1461-1495
	ret ! 1461-1461
beq_else.18149:
	slli	a15, a14, 2 ! 1074-1074
	add	t0, a8, a15 ! 1074-1074
	lw	a15, t0, 0 ! 1074-1074
	lw	a16, a15, 40 ! 447-452
	flw	fa0, a16, 0 ! 1076-1076
	flw	fa1, a16, 4 ! 1077-1077
	flw	fa2, a16, 8 ! 1078-1078
	lw	a17, a2, 4 ! 544-545
	slli	a18, a14, 2 ! 1080-1080
	add	t0, a17, a18 ! 1080-1080
	lw	a17, t0, 0 ! 1080-1080
	lw	a18, a15, 4 ! 252-257
	li	a19, 1 ! 1082-1082
	sw	sp, a9, 0 ! 0-0
	sw	sp, a11, 4 ! 0-0
	sw	sp, a10, 8 ! 0-0
	sw	sp, a12, 12 ! 0-0
	sw	sp, a4, 16 ! 0-0
	sw	sp, a13, 20 ! 0-0
	sw	sp, a3, 24 ! 0-0
	sw	sp, a7, 28 ! 0-0
	sw	sp, a2, 32 ! 0-0
	sw	sp, a1, 36 ! 0-0
	sw	sp, a21, 40 ! 0-0
	sw	sp, a0, 44 ! 0-0
	sw	sp, a8, 48 ! 0-0
	sw	sp, a14, 52 ! 0-0
	bne	a18, a19, beq_else.18150 ! 1082-1087
	lw	a5, a2, 0 ! 538-539
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
	j	beq_cont.18151
beq_else.18150:
	li	a6, 2 ! 1084-1084
	bne	a18, a6, beq_else.18152 ! 1084-1087
	flw	fa0, a17, 0 ! 1047-1047
	sw	sp, a16, 56 ! 0-0
	sw	sp, a17, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fisneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1047-1050
	bne	a0, a1, beq_else.18154 ! 1047-1050
	li	a0, 0 ! 1050-1050
	j	beq_cont.18155
beq_else.18154:
	lw	a0, sp, 60 ! 0-0
	flw	fa0, a0, 0 ! 1048-1048
	lw	a0, sp, 56 ! 0-0
	flw	fa1, a0, 12 ! 1048-1048
	fmul.s	fa0, fa0, fa1, rne ! 1048-1048
	lw	a0, sp, 28 ! 0-0
	fsw	a0, fa0, 0 ! 1048-1048
	li	a0, 1 ! 1049-1049
beq_cont.18155:
	j	beq_cont.18153
beq_else.18152:
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
beq_cont.18153:
beq_cont.18151:
	li	a1, 0 ! 1464-1464
	bne	a0, a1, beq_else.18156 ! 1464-1494
	lw	a0, sp, 52 ! 0-0
	slli	a0, a0, 2 ! 1492-1492
	lw	a1, sp, 48 ! 0-0
	add	t0, a1, a0 ! 1492-1492
	lw	a0, t0, 0 ! 1492-1492
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1492-1494
	bne	a0, a1, beq_else.18157 ! 1492-1494
	ret ! 1494-1494
beq_else.18157:
	lw	a0, sp, 44 ! 0-0
	addi	a0, a0, 1 ! 1493-1493
	lw	a1, sp, 36 ! 0-0
	lw	a2, sp, 32 ! 0-0
	lw	a21, sp, 40 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18156:
	lw	a1, sp, 28 ! 0-0
	flw	fa1, a1, 0 ! 1468-1468
	li	a1, l.12849 ! 1470-1470
	flw	fa0, a1, 0 ! 1470-1470
	sw	sp, a0, 64 ! 0-0
	fsw	sp, fa1, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1470-1487
	bne	a0, a1, beq_else.18158 ! 1470-1487
	j	beq_cont.18159
beq_else.18158:
	lw	a0, sp, 24 ! 0-0
	flw	fa1, a0, 0 ! 1471-1471
	flw	fa0, sp, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1471-1486
	bne	a0, a1, beq_else.18160 ! 1471-1486
	j	beq_cont.18161
beq_else.18160:
	li	a0, l.13225 ! 1473-1473
	flw	fa0, a0, 0 ! 1473-1473
	flw	fa1, sp, 68 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1473-1473
	lw	a0, sp, 20 ! 0-0
	flw	fa1, a0, 0 ! 1474-1474
	fmul.s	fa1, fa1, fa0, rne ! 1474-1474
	lw	a1, sp, 16 ! 0-0
	flw	fa2, a1, 0 ! 1474-1474
	fadd.s	fa1, fa1, fa2, rne ! 1474-1474
	flw	fa2, a0, 4 ! 1475-1475
	fmul.s	fa2, fa2, fa0, rne ! 1475-1475
	flw	fa3, a1, 4 ! 1475-1475
	fadd.s	fa2, fa2, fa3, rne ! 1475-1475
	flw	fa3, a0, 8 ! 1476-1476
	fmul.s	fa3, fa3, fa0, rne ! 1476-1476
	flw	fa4, a1, 8 ! 1476-1476
	fadd.s	fa3, fa3, fa4, rne ! 1476-1476
	lw	a1, sp, 36 ! 0-0
	lw	a0, a1, 0 ! 1265-1265
	li	a2, -1 ! 1266-1266
	fsw	sp, fa3, 72 ! 0-0
	fsw	sp, fa2, 76 ! 0-0
	fsw	sp, fa1, 80 ! 0-0
	fsw	sp, fa0, 84 ! 0-0
	bne	a0, a2, beq_else.18162 ! 1266-1273
	li	a0, 1 ! 1267-1267
	j	beq_cont.18163
beq_else.18162:
	slli	a0, a0, 2 ! 1269-1269
	lw	a2, sp, 48 ! 0-0
	add	t0, a2, a0 ! 1269-1269
	lw	a0, t0, 0 ! 1269-1269
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	is_outside.2734
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.18164 ! 1269-1272
	li	a0, 1 ! 1272-1272
	flw	fa0, sp, 80 ! 0-0
	flw	fa1, sp, 76 ! 0-0
	flw	fa2, sp, 72 ! 0-0
	lw	a1, sp, 36 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	j	beq_cont.18165
beq_else.18164:
	li	a0, 0 ! 1270-1270
beq_cont.18165:
beq_cont.18163:
	li	a1, 0 ! 1477-1484
	bne	a0, a1, beq_else.18166 ! 1477-1484
	j	beq_cont.18167
beq_else.18166:
	flw	fa0, sp, 84 ! 0-0
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 0 ! 1479-1479
	flw	fa0, sp, 80 ! 0-0
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 0 ! 145-145
	flw	fa0, sp, 76 ! 0-0
	fsw	a0, fa0, 4 ! 146-146
	flw	fa0, sp, 72 ! 0-0
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 52 ! 0-0
	lw	a1, sp, 4 ! 0-0
	sw	a1, a0, 0 ! 1481-1481
	lw	a0, sp, 64 ! 0-0
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 0 ! 1482-1482
beq_cont.18167:
beq_cont.18161:
beq_cont.18159:
	lw	a0, sp, 44 ! 0-0
	addi	a0, a0, 1 ! 1488-1488
	lw	a1, sp, 36 ! 0-0
	lw	a2, sp, 32 ! 0-0
	lw	a21, sp, 40 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network_fast.2772:
	lw	a3, a21, 8 ! 0-0
	lw	a4, a21, 4 ! 0-0
	slli	a5, a0, 2 ! 1500-1500
	add	t0, a1, a5 ! 1500-1500
	lw	a5, t0, 0 ! 1500-1500
	li	a6, -1 ! 1501-1501
	bne	a5, a6, beq_else.18168 ! 1501-1505
	ret ! 1505-1505
beq_else.18168:
	slli	a5, a5, 2 ! 1502-1502
	add	t0, a4, a5 ! 1502-1502
	lw	a5, t0, 0 ! 1502-1502
	li	a6, 0 ! 1503-1503
	sw	sp, a21, 0 ! 0-0
	sw	sp, a2, 4 ! 0-0
	sw	sp, a3, 8 ! 0-0
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	sw	sp, a0, 20 ! 0-0
	mv	a1, a5
	mv	a0, a6
	mv	a21, a3
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1504-1504
	slli	a1, a0, 2 ! 1500-1500
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 1500-1500
	lw	a1, t0, 0 ! 1500-1500
	li	a3, -1 ! 1501-1501
	bne	a1, a3, beq_else.18169 ! 1501-1505
	ret ! 1505-1505
beq_else.18169:
	slli	a1, a1, 2 ! 1502-1502
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a4, 0 ! 1503-1503
	lw	a5, sp, 4 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1504-1504
	slli	a1, a0, 2 ! 1500-1500
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 1500-1500
	lw	a1, t0, 0 ! 1500-1500
	li	a3, -1 ! 1501-1501
	bne	a1, a3, beq_else.18170 ! 1501-1505
	ret ! 1505-1505
beq_else.18170:
	slli	a1, a1, 2 ! 1502-1502
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a4, 0 ! 1503-1503
	lw	a5, sp, 4 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, a0, 28 ! 0-0
	mv	a2, a5
	mv	a0, a4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	addi	a0, a0, 1 ! 1504-1504
	slli	a1, a0, 2 ! 1500-1500
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 1500-1500
	lw	a1, t0, 0 ! 1500-1500
	li	a3, -1 ! 1501-1501
	bne	a1, a3, beq_else.18171 ! 1501-1505
	ret ! 1505-1505
beq_else.18171:
	slli	a1, a1, 2 ! 1502-1502
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 4 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, a0, 32 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0-0
	addi	a0, a0, 1 ! 1504-1504
	lw	a1, sp, 16 ! 0-0
	lw	a2, sp, 4 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix_fast.2776:
	lw	a3, a21, 36 ! 0-0
	lw	a4, a21, 32 ! 0-0
	lw	a5, a21, 28 ! 0-0
	lw	a6, a21, 24 ! 0-0
	lw	a7, a21, 20 ! 0-0
	lw	a8, a21, 16 ! 0-0
	lw	a9, a21, 12 ! 0-0
	lw	a10, a21, 8 ! 0-0
	lw	a11, a21, 4 ! 0-0
	slli	a12, a0, 2 ! 1510-1510
	add	t0, a1, a12 ! 1510-1510
	lw	a12, t0, 0 ! 1510-1510
	lw	a13, a12, 0 ! 1511-1511
	li	a14, -1 ! 1512-1512
	bne	a13, a14, beq_else.18172 ! 1512-1529
	ret ! 1513-1513
beq_else.18172:
	li	a14, 99 ! 1515-1515
	sw	sp, a21, 0 ! 0-0
	sw	sp, a3, 4 ! 0-0
	sw	sp, a7, 8 ! 0-0
	sw	sp, a6, 12 ! 0-0
	sw	sp, a8, 16 ! 0-0
	sw	sp, a2, 20 ! 0-0
	sw	sp, a9, 24 ! 0-0
	sw	sp, a11, 28 ! 0-0
	sw	sp, a1, 32 ! 0-0
	sw	sp, a0, 36 ! 0-0
	bne	a13, a14, beq_else.18173 ! 1515-1527
	lw	a4, a12, 4 ! 1500-1500
	li	a5, -1 ! 1501-1501
	bne	a4, a5, beq_else.18175 ! 1501-1505
	j	beq_cont.18176
beq_else.18175:
	slli	a4, a4, 2 ! 1502-1502
	add	t0, a11, a4 ! 1502-1502
	lw	a4, t0, 0 ! 1502-1502
	li	a5, 0 ! 1503-1503
	sw	sp, a12, 40 ! 0-0
	mv	a1, a4
	mv	a0, a5
	mv	a21, a9
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18177 ! 1501-1505
	j	beq_cont.18178
beq_else.18177:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	lw	a1, a0, 12 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18179 ! 1501-1505
	j	beq_cont.18180
beq_else.18179:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a0, 4 ! 1504-1504
	lw	a1, sp, 40 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
beq_cont.18180:
beq_cont.18178:
beq_cont.18176:
	j	beq_cont.18174
beq_else.18173:
	slli	a14, a13, 2 ! 1074-1074
	add	t0, a10, a14 ! 1074-1074
	lw	a10, t0, 0 ! 1074-1074
	lw	a14, a10, 40 ! 447-452
	flw	fa0, a14, 0 ! 1076-1076
	flw	fa1, a14, 4 ! 1077-1077
	flw	fa2, a14, 8 ! 1078-1078
	lw	a15, a2, 4 ! 544-545
	slli	a13, a13, 2 ! 1080-1080
	add	t0, a15, a13 ! 1080-1080
	lw	a13, t0, 0 ! 1080-1080
	lw	a15, a10, 4 ! 252-257
	li	a16, 1 ! 1082-1082
	sw	sp, a12, 40 ! 0-0
	bne	a15, a16, beq_else.18181 ! 1082-1087
	lw	a4, a2, 0 ! 538-539
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
	j	beq_cont.18182
beq_else.18181:
	li	a5, 2 ! 1084-1084
	bne	a15, a5, beq_else.18183 ! 1084-1087
	flw	fa0, a13, 0 ! 1047-1047
	sw	sp, a14, 44 ! 0-0
	sw	sp, a13, 48 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fisneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1047-1050
	bne	a0, a1, beq_else.18185 ! 1047-1050
	li	a0, 0 ! 1050-1050
	j	beq_cont.18186
beq_else.18185:
	lw	a0, sp, 48 ! 0-0
	flw	fa0, a0, 0 ! 1048-1048
	lw	a0, sp, 44 ! 0-0
	flw	fa1, a0, 12 ! 1048-1048
	fmul.s	fa0, fa0, fa1, rne ! 1048-1048
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 0 ! 1048-1048
	li	a0, 1 ! 1049-1049
beq_cont.18186:
	j	beq_cont.18184
beq_else.18183:
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
beq_cont.18184:
beq_cont.18182:
	li	a1, 0 ! 1521-1521
	bne	a0, a1, beq_else.18187 ! 1521-1526
	j	beq_cont.18188
beq_else.18187:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1522-1522
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 0 ! 1523-1523
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fless
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1523-1525
	bne	a0, a1, beq_else.18189 ! 1523-1525
	j	beq_cont.18190
beq_else.18189:
	lw	a0, sp, 40 ! 0-0
	lw	a1, a0, 4 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18191 ! 1501-1505
	j	beq_cont.18192
beq_else.18191:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 40 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18193 ! 1501-1505
	j	beq_cont.18194
beq_else.18193:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 40 ! 0-0
	lw	a1, a0, 12 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18195 ! 1501-1505
	j	beq_cont.18196
beq_else.18195:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, 4 ! 1504-1504
	lw	a1, sp, 40 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
beq_cont.18196:
beq_cont.18194:
beq_cont.18192:
beq_cont.18190:
beq_cont.18188:
beq_cont.18174:
	lw	a0, sp, 36 ! 0-0
	addi	a0, a0, 1 ! 1528-1528
	slli	a1, a0, 2 ! 1510-1510
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1510-1510
	lw	a1, t0, 0 ! 1510-1510
	lw	a3, a1, 0 ! 1511-1511
	li	a4, -1 ! 1512-1512
	bne	a3, a4, beq_else.18197 ! 1512-1529
	ret ! 1513-1513
beq_else.18197:
	li	a4, 99 ! 1515-1515
	sw	sp, a0, 52 ! 0-0
	bne	a3, a4, beq_else.18198 ! 1515-1527
	lw	a3, a1, 4 ! 1500-1500
	li	a4, -1 ! 1501-1501
	bne	a3, a4, beq_else.18200 ! 1501-1505
	j	beq_cont.18201
beq_else.18200:
	slli	a3, a3, 2 ! 1502-1502
	lw	a4, sp, 28 ! 0-0
	add	t0, a4, a3 ! 1502-1502
	lw	a3, t0, 0 ! 1502-1502
	li	a5, 0 ! 1503-1503
	lw	a6, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	sw	sp, a1, 56 ! 0-0
	mv	a2, a6
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18202 ! 1501-1505
	j	beq_cont.18203
beq_else.18202:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a2, 0 ! 1503-1503
	lw	a3, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, 3 ! 1504-1504
	lw	a1, sp, 56 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
beq_cont.18203:
beq_cont.18201:
	j	beq_cont.18199
beq_else.18198:
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, a1, 56 ! 0-0
	mv	a1, a4
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1521-1521
	bne	a0, a1, beq_else.18204 ! 1521-1526
	j	beq_cont.18205
beq_else.18204:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1522-1522
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 1523-1523
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fless
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1523-1525
	bne	a0, a1, beq_else.18206 ! 1523-1525
	j	beq_cont.18207
beq_else.18206:
	lw	a0, sp, 56 ! 0-0
	lw	a1, a0, 4 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18208 ! 1501-1505
	j	beq_cont.18209
beq_else.18208:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18210 ! 1501-1505
	j	beq_cont.18211
beq_else.18210:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a2, 0 ! 1503-1503
	lw	a3, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, 3 ! 1504-1504
	lw	a1, sp, 56 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
beq_cont.18211:
beq_cont.18209:
beq_cont.18207:
beq_cont.18205:
beq_cont.18199:
	lw	a0, sp, 52 ! 0-0
	addi	a0, a0, 1 ! 1528-1528
	lw	a1, sp, 32 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
judge_intersection_fast.2780:
	lw	a1, a21, 32 ! 0-0
	lw	a2, a21, 28 ! 0-0
	lw	a3, a21, 24 ! 0-0
	lw	a4, a21, 20 ! 0-0
	lw	a5, a21, 16 ! 0-0
	lw	a6, a21, 12 ! 0-0
	lw	a7, a21, 8 ! 0-0
	lw	a8, a21, 4 ! 0-0
	li	a9, l.13418 ! 1535-1535
	flw	fa0, a9, 0 ! 1535-1535
	fsw	a2, fa0, 0 ! 1535-1535
	lw	a7, a7, 0 ! 1536-1536
	lw	a9, a7, 0 ! 1510-1510
	lw	a10, a9, 0 ! 1511-1511
	li	a11, -1 ! 1512-1512
	sw	sp, a2, 0 ! 0-0
	bne	a10, a11, beq_else.18212 ! 1512-1529
	j	beq_cont.18213
beq_else.18212:
	li	a11, 99 ! 1515-1515
	sw	sp, a0, 4 ! 0-0
	sw	sp, a7, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	bne	a10, a11, beq_else.18214 ! 1515-1527
	lw	a3, a9, 4 ! 1500-1500
	li	a4, -1 ! 1501-1501
	bne	a3, a4, beq_else.18216 ! 1501-1505
	j	beq_cont.18217
beq_else.18216:
	slli	a3, a3, 2 ! 1502-1502
	add	t0, a8, a3 ! 1502-1502
	lw	a3, t0, 0 ! 1502-1502
	li	a4, 0 ! 1503-1503
	sw	sp, a5, 16 ! 0-0
	sw	sp, a6, 20 ! 0-0
	sw	sp, a8, 24 ! 0-0
	sw	sp, a9, 28 ! 0-0
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
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18218 ! 1501-1505
	j	beq_cont.18219
beq_else.18218:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 24 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a2, 0 ! 1503-1503
	lw	a3, sp, 4 ! 0-0
	lw	a21, sp, 20 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, 3 ! 1504-1504
	lw	a1, sp, 28 ! 0-0
	lw	a2, sp, 4 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
beq_cont.18219:
beq_cont.18217:
	j	beq_cont.18215
beq_else.18214:
	sw	sp, a5, 16 ! 0-0
	sw	sp, a6, 20 ! 0-0
	sw	sp, a8, 24 ! 0-0
	sw	sp, a9, 28 ! 0-0
	sw	sp, a4, 32 ! 0-0
	mv	a1, a0
	mv	a21, a3
	mv	a0, a10
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1521-1521
	bne	a0, a1, beq_else.18220 ! 1521-1526
	j	beq_cont.18221
beq_else.18220:
	lw	a0, sp, 32 ! 0-0
	flw	fa0, a0, 0 ! 1522-1522
	lw	a0, sp, 0 ! 0-0
	flw	fa1, a0, 0 ! 1523-1523
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1523-1525
	bne	a0, a1, beq_else.18222 ! 1523-1525
	j	beq_cont.18223
beq_else.18222:
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 4 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18224 ! 1501-1505
	j	beq_cont.18225
beq_else.18224:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 24 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a3, 0 ! 1503-1503
	lw	a4, sp, 4 ! 0-0
	lw	a21, sp, 20 ! 0-0
	mv	a2, a4
	mv	a0, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.18226 ! 1501-1505
	j	beq_cont.18227
beq_else.18226:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 24 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a2, 0 ! 1503-1503
	lw	a3, sp, 4 ! 0-0
	lw	a21, sp, 20 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, 3 ! 1504-1504
	lw	a1, sp, 28 ! 0-0
	lw	a2, sp, 4 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
beq_cont.18227:
beq_cont.18225:
beq_cont.18223:
beq_cont.18221:
beq_cont.18215:
	li	a0, 1 ! 1528-1528
	lw	a1, sp, 8 ! 0-0
	lw	a2, sp, 4 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
beq_cont.18213:
	lw	a0, sp, 0 ! 0-0
	flw	fa1, a0, 0 ! 1537-1537
	li	a0, l.13260 ! 1539-1539
	flw	fa0, a0, 0 ! 1539-1539
	fsw	sp, fa1, 36 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 1539-1541
	bne	a0, a1, beq_else.18228 ! 1539-1541
	li	a0, 0 ! 1541-1541
	ret ! 1541-1541
beq_else.18228:
	li	a0, l.13436 ! 1540-1540
	flw	fa1, a0, 0 ! 1540-1540
	flw	fa0, sp, 36 ! 0-0
	j	min_caml_fless
get_nvector_second.2786:
	lw	a1, a21, 8 ! 0-0
	lw	a2, a21, 4 ! 0-0
	flw	fa0, a2, 0 ! 1571-1571
	lw	a3, a0, 20 ! 330-335
	flw	fa1, a3, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1571-1571
	flw	fa1, a2, 4 ! 1572-1572
	lw	a3, a0, 20 ! 340-345
	flw	fa2, a3, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 1572-1572
	flw	fa2, a2, 8 ! 1573-1573
	lw	a2, a0, 20 ! 350-355
	flw	fa3, a2, 8 ! 355-355
	fsub.s	fa2, fa2, fa3, rne ! 1573-1573
	lw	a2, a0, 16 ! 290-295
	flw	fa3, a2, 0 ! 295-295
	fmul.s	fa3, fa0, fa3, rne ! 1575-1575
	lw	a2, a0, 16 ! 300-305
	flw	fa4, a2, 4 ! 305-305
	fmul.s	fa4, fa1, fa4, rne ! 1576-1576
	lw	a2, a0, 16 ! 310-315
	flw	fa5, a2, 8 ! 315-315
	fmul.s	fa5, fa2, fa5, rne ! 1577-1577
	lw	a2, a0, 12 ! 281-285
	li	a3, 0 ! 1579-1579
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	bne	a2, a3, beq_else.18229 ! 1579-1587
	fsw	a1, fa3, 0 ! 1580-1580
	fsw	a1, fa4, 4 ! 1581-1581
	fsw	a1, fa5, 8 ! 1582-1582
	j	beq_cont.18230
beq_else.18229:
	lw	a2, a0, 36 ! 430-435
	flw	fa6, a2, 8 ! 435-435
	fmul.s	fa6, fa1, fa6, rne ! 1584-1584
	lw	a2, a0, 36 ! 420-425
	flw	fa7, a2, 4 ! 425-425
	fmul.s	fa7, fa2, fa7, rne ! 1584-1584
	fadd.s	fa6, fa6, fa7, rne ! 1584-1584
	fsw	sp, fa5, 8 ! 0-0
	fsw	sp, fa1, 12 ! 0-0
	fsw	sp, fa4, 16 ! 0-0
	fsw	sp, fa2, 20 ! 0-0
	fsw	sp, fa0, 24 ! 0-0
	fsw	sp, fa3, 28 ! 0-0
	fmv.s	fa0, fa6
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fhalf
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 28 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1584-1584
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1584-1584
	lw	a1, sp, 4 ! 0-0
	lw	a2, a1, 36 ! 430-435
	flw	fa0, a2, 8 ! 435-435
	flw	fa1, sp, 24 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1585-1585
	lw	a2, a1, 36 ! 410-415
	flw	fa2, a2, 0 ! 415-415
	flw	fa3, sp, 20 ! 0-0
	fmul.s	fa2, fa3, fa2, rne ! 1585-1585
	fadd.s	fa0, fa0, fa2, rne ! 1585-1585
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fhalf
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 16 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1585-1585
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 4 ! 1585-1585
	lw	a1, sp, 4 ! 0-0
	lw	a2, a1, 36 ! 420-425
	flw	fa0, a2, 4 ! 425-425
	flw	fa1, sp, 24 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1586-1586
	lw	a2, a1, 36 ! 410-415
	flw	fa1, a2, 0 ! 415-415
	flw	fa2, sp, 12 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 1586-1586
	fadd.s	fa0, fa0, fa1, rne ! 1586-1586
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fhalf
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 8 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1586-1586
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 8 ! 1586-1586
beq_cont.18230:
	lw	a0, sp, 4 ! 0-0
	lw	a1, a0, 24 ! 272-276
	lw	a0, sp, 0 ! 0-0
	j	vecunit_sgn.2494
get_nvector.2788:
	lw	a2, a21, 12 ! 0-0
	lw	a3, a21, 8 ! 0-0
	lw	a21, a21, 4 ! 0-0
	lw	a4, a0, 4 ! 252-257
	li	a5, 1 ! 1594-1594
	bne	a4, a5, beq_else.18231 ! 1594-1599
	lw	a0, a3, 0 ! 1555-1555
	li	a3, l.12849 ! 159-159
	flw	fa0, a3, 0 ! 159-159
	fsw	a2, fa0, 0 ! 152-152
	fsw	a2, fa0, 4 ! 153-153
	fsw	a2, fa0, 8 ! 154-154
	addi	a3, a0, -1 ! 1558-1558
	addi	a0, a0, -1 ! 1558-1558
	slli	a0, a0, 2 ! 1558-1558
	add	t0, a1, a0 ! 1558-1558
	flw	fa0, t0, 0 ! 1558-1558
	sw	sp, a2, 0 ! 0-0
	sw	sp, a3, 4 ! 0-0
	fsw	sp, fa0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fiszero
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 117-119
	bne	a0, a1, beq_else.18232 ! 117-119
	flw	fa0, sp, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fispos
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 118-119
	bne	a0, a1, beq_else.18234 ! 118-119
	li	a0, l.12813 ! 119-119
	flw	fa0, a0, 0 ! 119-119
	j	beq_cont.18235
beq_else.18234:
	li	a0, l.12811 ! 118-118
	flw	fa0, a0, 0 ! 118-118
beq_cont.18235:
	j	beq_cont.18233
beq_else.18232:
	li	a0, l.12849 ! 117-117
	flw	fa0, a0, 0 ! 117-117
beq_cont.18233:
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0-0
	slli	a0, a0, 2 ! 1558-1558
	lw	a1, sp, 0 ! 0-0
	add	t0, a1, a0 ! 1558-1558
	fsw	t0, fa0, 0 ! 1558-1558
	ret ! 1558-1558
beq_else.18231:
	li	a1, 2 ! 1596-1596
	bne	a4, a1, beq_else.18236 ! 1596-1599
	lw	a1, a0, 16 ! 290-295
	flw	fa0, a1, 0 ! 295-295
	sw	sp, a0, 12 ! 0-0
	sw	sp, a2, 0 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1564-1564
	lw	a1, sp, 12 ! 0-0
	lw	a2, a1, 16 ! 300-305
	flw	fa0, a2, 4 ! 305-305
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 4 ! 1565-1565
	lw	a1, sp, 12 ! 0-0
	lw	a1, a1, 16 ! 310-315
	flw	fa0, a1, 8 ! 315-315
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 8 ! 1566-1566
	ret ! 1566-1566
beq_else.18236:
	lw	a20, a21, 0
	jalr	zero, a20, 0
utexture.2791:
	lw	a2, a21, 4 ! 0-0
	lw	a3, a0, 0 ! 242-247
	lw	a4, a0, 32 ! 380-385
	flw	fa0, a4, 0 ! 385-385
	fsw	a2, fa0, 0 ! 1611-1611
	lw	a4, a0, 32 ! 390-395
	flw	fa0, a4, 4 ! 395-395
	fsw	a2, fa0, 4 ! 1612-1612
	lw	a4, a0, 32 ! 400-405
	flw	fa0, a4, 8 ! 405-405
	fsw	a2, fa0, 8 ! 1613-1613
	li	a4, 1 ! 1614-1614
	bne	a3, a4, beq_else.18237 ! 1614-1678
	flw	fa0, a1, 0 ! 1617-1617
	lw	a3, a0, 20 ! 330-335
	flw	fa1, a3, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1617-1617
	li	a3, l.13535 ! 1619-1619
	flw	fa1, a3, 0 ! 1619-1619
	fmul.s	fa1, fa0, fa1, rne ! 1619-1619
	sw	sp, a2, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, a1, 8 ! 0-0
	fsw	sp, fa0, 12 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_floor
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, l.13537 ! 1619-1619
	flw	fa1, a0, 0 ! 1619-1619
	fmul.s	fa0, fa0, fa1, rne ! 1619-1619
	flw	fa1, sp, 12 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1620-1620
	li	a0, l.13517 ! 1620-1620
	flw	fa1, a0, 0 ! 1620-1620
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 8 ! 0-0
	flw	fa0, a1, 8 ! 1622-1622
	lw	a1, sp, 4 ! 0-0
	lw	a1, a1, 20 ! 350-355
	flw	fa1, a1, 8 ! 355-355
	fsub.s	fa0, fa0, fa1, rne ! 1622-1622
	li	a1, l.13535 ! 1624-1624
	flw	fa1, a1, 0 ! 1624-1624
	fmul.s	fa1, fa0, fa1, rne ! 1624-1624
	sw	sp, a0, 16 ! 0-0
	fsw	sp, fa0, 20 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_floor
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.13537 ! 1624-1624
	flw	fa1, a0, 0 ! 1624-1624
	fmul.s	fa0, fa0, fa1, rne ! 1624-1624
	flw	fa1, sp, 20 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1625-1625
	li	a0, l.13517 ! 1625-1625
	flw	fa1, a0, 0 ! 1625-1625
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fless
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 1628-1630
	lw	a2, sp, 16 ! 0-0
	bne	a2, a1, beq_else.18238 ! 1628-1630
	li	a1, 0 ! 1630-1630
	bne	a0, a1, beq_else.18240 ! 1630-1630
	li	a0, l.13508 ! 1630-1630
	flw	fa0, a0, 0 ! 1630-1630
	j	beq_cont.18241
beq_else.18240:
	li	a0, l.12849 ! 1630-1630
	flw	fa0, a0, 0 ! 1630-1630
beq_cont.18241:
	j	beq_cont.18239
beq_else.18238:
	li	a1, 0 ! 1629-1629
	bne	a0, a1, beq_else.18242 ! 1629-1629
	li	a0, l.12849 ! 1629-1629
	flw	fa0, a0, 0 ! 1629-1629
	j	beq_cont.18243
beq_else.18242:
	li	a0, l.13508 ! 1629-1629
	flw	fa0, a0, 0 ! 1629-1629
beq_cont.18243:
beq_cont.18239:
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 4 ! 1627-1630
	ret ! 1627-1630
beq_else.18237:
	li	a4, 2 ! 1632-1632
	bne	a3, a4, beq_else.18244 ! 1632-1678
	flw	fa0, a1, 4 ! 1635-1635
	li	a0, l.13526 ! 1635-1635
	flw	fa1, a0, 0 ! 1635-1635
	fmul.s	fa0, fa0, fa1, rne ! 1635-1635
	sw	sp, a2, 0 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sin
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fsqr
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.13508 ! 1636-1636
	flw	fa1, a0, 0 ! 1636-1636
	fmul.s	fa1, fa1, fa0, rne ! 1636-1636
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa1, 0 ! 1636-1636
	li	a1, l.13508 ! 1637-1637
	flw	fa1, a1, 0 ! 1637-1637
	li	a1, l.12811 ! 1637-1637
	flw	fa2, a1, 0 ! 1637-1637
	fsub.s	fa0, fa2, fa0, rne ! 1637-1637
	fmul.s	fa0, fa1, fa0, rne ! 1637-1637
	fsw	a0, fa0, 4 ! 1637-1637
	ret ! 1637-1637
beq_else.18244:
	li	a4, 3 ! 1639-1639
	bne	a3, a4, beq_else.18245 ! 1639-1678
	flw	fa0, a1, 0 ! 1642-1642
	lw	a3, a0, 20 ! 330-335
	flw	fa1, a3, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1642-1642
	flw	fa1, a1, 8 ! 1643-1643
	lw	a0, a0, 20 ! 350-355
	flw	fa2, a0, 8 ! 355-355
	fsub.s	fa1, fa1, fa2, rne ! 1643-1643
	sw	sp, a2, 0 ! 0-0
	fsw	sp, fa1, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24 ! 0-0
	fsw	sp, fa0, 28 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fsqr
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 28 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1644-1644
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sqrt
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.13517 ! 1644-1644
	flw	fa1, a0, 0 ! 1644-1644
	fdiv.s	fa0, fa0, fa1, rne ! 1644-1644
	fsw	sp, fa0, 32 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_floor
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 32 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1645-1645
	li	a0, l.13493 ! 1645-1645
	flw	fa1, a0, 0 ! 1645-1645
	fmul.s	fa0, fa0, fa1, rne ! 1645-1645
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_cos
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fsqr
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, l.13508 ! 1647-1647
	flw	fa1, a0, 0 ! 1647-1647
	fmul.s	fa1, fa0, fa1, rne ! 1647-1647
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa1, 4 ! 1647-1647
	li	a1, l.12811 ! 1648-1648
	flw	fa1, a1, 0 ! 1648-1648
	fsub.s	fa0, fa1, fa0, rne ! 1648-1648
	li	a1, l.13508 ! 1648-1648
	flw	fa1, a1, 0 ! 1648-1648
	fmul.s	fa0, fa0, fa1, rne ! 1648-1648
	fsw	a0, fa0, 8 ! 1648-1648
	ret ! 1648-1648
beq_else.18245:
	li	a4, 4 ! 1650-1650
	bne	a3, a4, beq_else.18246 ! 1650-1678
	flw	fa0, a1, 0 ! 1652-1652
	lw	a3, a0, 20 ! 330-335
	flw	fa1, a3, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1652-1652
	lw	a3, a0, 16 ! 290-295
	flw	fa1, a3, 0 ! 295-295
	sw	sp, a2, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, a1, 8 ! 0-0
	fsw	sp, fa0, 36 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 36 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1652-1652
	lw	a0, sp, 8 ! 0-0
	flw	fa1, a0, 8 ! 1653-1653
	lw	a1, sp, 4 ! 0-0
	lw	a2, a1, 20 ! 350-355
	flw	fa2, a2, 8 ! 355-355
	fsub.s	fa1, fa1, fa2, rne ! 1653-1653
	lw	a2, a1, 16 ! 310-315
	flw	fa2, a2, 8 ! 315-315
	fsw	sp, fa0, 40 ! 0-0
	fsw	sp, fa1, 44 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_sqrt
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 44 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1653-1653
	flw	fa1, sp, 40 ! 0-0
	fsw	sp, fa0, 48 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fsqr
	addi	sp, sp, -56
	lw	ra, sp, 52
	flw	fa1, sp, 48 ! 0-0
	fsw	sp, fa0, 52 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fsqr
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 52 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1654-1654
	flw	fa1, sp, 40 ! 0-0
	fsw	sp, fa0, 56 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fabs
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, l.13487 ! 1656-1656
	flw	fa1, a0, 0 ! 1656-1656
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fless
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1656-1661
	bne	a0, a1, beq_else.18247 ! 1656-1661
	flw	fa0, sp, 40 ! 0-0
	flw	fa1, sp, 48 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1659-1659
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fabs
	addi	sp, sp, -64
	lw	ra, sp, 60
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_atan
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, l.13491 ! 1661-1661
	flw	fa1, a0, 0 ! 1661-1661
	fmul.s	fa0, fa0, fa1, rne ! 1661-1661
	li	a0, l.13493 ! 1661-1661
	flw	fa1, a0, 0 ! 1661-1661
	fdiv.s	fa0, fa0, fa1, rne ! 1661-1661
	j	beq_cont.18248
beq_else.18247:
	li	a0, l.13489 ! 1657-1657
	flw	fa0, a0, 0 ! 1657-1657
beq_cont.18248:
	fsw	sp, fa0, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_floor
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 60 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1663-1663
	lw	a0, sp, 8 ! 0-0
	flw	fa1, a0, 4 ! 1665-1665
	lw	a0, sp, 4 ! 0-0
	lw	a1, a0, 20 ! 340-345
	flw	fa2, a1, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 1665-1665
	lw	a0, a0, 16 ! 300-305
	flw	fa2, a0, 4 ! 305-305
	fsw	sp, fa0, 64 ! 0-0
	fsw	sp, fa1, 68 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_sqrt
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 68 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1665-1665
	flw	fa1, sp, 56 ! 0-0
	fsw	sp, fa0, 72 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fabs
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a0, l.13487 ! 1667-1667
	flw	fa1, a0, 0 ! 1667-1667
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fless
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1667-1671
	bne	a0, a1, beq_else.18249 ! 1667-1671
	flw	fa0, sp, 56 ! 0-0
	flw	fa1, sp, 72 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1670-1670
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fabs
	addi	sp, sp, -80
	lw	ra, sp, 76
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_atan
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a0, l.13491 ! 1671-1671
	flw	fa1, a0, 0 ! 1671-1671
	fmul.s	fa0, fa0, fa1, rne ! 1671-1671
	li	a0, l.13493 ! 1671-1671
	flw	fa1, a0, 0 ! 1671-1671
	fdiv.s	fa0, fa0, fa1, rne ! 1671-1671
	j	beq_cont.18250
beq_else.18249:
	li	a0, l.13489 ! 1668-1668
	flw	fa0, a0, 0 ! 1668-1668
beq_cont.18250:
	fsw	sp, fa0, 76 ! 0-0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_floor
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 76 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1673-1673
	li	a0, l.13502 ! 1674-1674
	flw	fa1, a0, 0 ! 1674-1674
	li	a0, l.13504 ! 1674-1674
	flw	fa2, a0, 0 ! 1674-1674
	flw	fa3, sp, 64 ! 0-0
	fsub.s	fa2, fa2, fa3, rne ! 1674-1674
	fsw	sp, fa0, 80 ! 0-0
	fsw	sp, fa1, 84 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fsqr
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 84 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1674-1674
	li	a0, l.13504 ! 1674-1674
	flw	fa1, a0, 0 ! 1674-1674
	flw	fa2, sp, 80 ! 0-0
	fsub.s	fa1, fa1, fa2, rne ! 1674-1674
	fsw	sp, fa0, 88 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fsqr
	addi	sp, sp, -96
	lw	ra, sp, 92
	flw	fa1, sp, 88 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1674-1674
	fsw	sp, fa0, 92 ! 0-0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fisneg
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1675-1675
	bne	a0, a1, beq_else.18251 ! 1675-1675
	flw	fa0, sp, 92 ! 0-0
	j	beq_cont.18252
beq_else.18251:
	li	a0, l.12849 ! 1675-1675
	flw	fa0, a0, 0 ! 1675-1675
beq_cont.18252:
	li	a0, l.13508 ! 1676-1676
	flw	fa1, a0, 0 ! 1676-1676
	fmul.s	fa0, fa1, fa0, rne ! 1676-1676
	li	a0, l.13510 ! 1676-1676
	flw	fa1, a0, 0 ! 1676-1676
	fdiv.s	fa0, fa0, fa1, rne ! 1676-1676
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 8 ! 1676-1676
	ret ! 1676-1676
beq_else.18246:
	ret ! 1678-1678
trace_reflections.2798:
	lw	a2, a21, 40 ! 0-0
	lw	a3, a21, 36 ! 0-0
	lw	a4, a21, 32 ! 0-0
	lw	a5, a21, 28 ! 0-0
	lw	a6, a21, 24 ! 0-0
	lw	a7, a21, 20 ! 0-0
	lw	a8, a21, 16 ! 0-0
	lw	a9, a21, 12 ! 0-0
	lw	a10, a21, 8 ! 0-0
	lw	a11, a21, 4 ! 0-0
	li	a12, 0 ! 1705-1705
	blt	a0, a12, bge_else.18253 ! 1705-1725
	slli	a12, a0, 2 ! 1706-1706
	add	t0, a7, a12 ! 1706-1706
	lw	a7, t0, 0 ! 1706-1706
	lw	a12, a7, 4 ! 560-561
	li	a13, l.13418 ! 1535-1535
	flw	fa2, a13, 0 ! 1535-1535
	fsw	a3, fa2, 0 ! 1535-1535
	li	a13, 0 ! 1536-1536
	lw	a14, a8, 0 ! 1536-1536
	sw	sp, a21, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	fsw	sp, fa1, 8 ! 0-0
	sw	sp, a4, 12 ! 0-0
	sw	sp, a6, 16 ! 0-0
	sw	sp, a1, 20 ! 0-0
	fsw	sp, fa0, 24 ! 0-0
	sw	sp, a9, 28 ! 0-0
	sw	sp, a12, 32 ! 0-0
	sw	sp, a5, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	sw	sp, a7, 44 ! 0-0
	sw	sp, a10, 48 ! 0-0
	sw	sp, a11, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a14
	mv	a0, a13
	mv	a21, a2
	mv	a2, a12
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0-0
	flw	fa1, a0, 0 ! 1537-1537
	li	a0, l.13260 ! 1539-1539
	flw	fa0, a0, 0 ! 1539-1539
	fsw	sp, fa1, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1539-1541
	bne	a0, a1, beq_else.18254 ! 1539-1541
	li	a0, 0 ! 1541-1541
	j	beq_cont.18255
beq_else.18254:
	li	a0, l.13436 ! 1540-1540
	flw	fa1, a0, 0 ! 1540-1540
	flw	fa0, sp, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
beq_cont.18255:
	li	a1, 0 ! 1710-1723
	bne	a0, a1, beq_else.18256 ! 1710-1723
	j	beq_cont.18257
beq_else.18256:
	lw	a0, sp, 52 ! 0-0
	lw	a0, a0, 0 ! 1711-1711
	slli	a0, a0, 2 ! 1711-1711
	lw	a1, sp, 48 ! 0-0
	lw	a1, a1, 0 ! 1711-1711
	add	a0, a0, a1 ! 1711-1711
	lw	a1, sp, 44 ! 0-0
	lw	a2, a1, 0 ! 554-555
	bne	a0, a2, beq_else.18258 ! 1712-1722
	li	a0, 0 ! 1714-1714
	lw	a2, sp, 40 ! 0-0
	lw	a2, a2, 0 ! 1714-1714
	lw	a21, sp, 36 ! 0-0
	mv	a1, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1714-1721
	bne	a0, a1, beq_else.18260 ! 1714-1721
	lw	a0, sp, 32 ! 0-0
	lw	a1, a0, 0 ! 538-539
	lw	a2, sp, 28 ! 0-0
	flw	fa0, a2, 0 ! 193-193
	flw	fa1, a1, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a2, 4 ! 193-193
	flw	fa2, a1, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a2, 8 ! 193-193
	flw	fa2, a1, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	lw	a1, sp, 44 ! 0-0
	flw	fa1, a1, 8 ! 566-567
	flw	fa2, sp, 24 ! 0-0
	fmul.s	fa3, fa1, fa2, rne ! 1718-1718
	fmul.s	fa0, fa3, fa0, rne ! 1718-1718
	lw	a0, a0, 0 ! 538-539
	lw	a1, sp, 20 ! 0-0
	flw	fa3, a1, 0 ! 193-193
	flw	fa4, a0, 0 ! 193-193
	fmul.s	fa3, fa3, fa4, rne ! 193-193
	flw	fa4, a1, 4 ! 193-193
	flw	fa5, a0, 4 ! 193-193
	fmul.s	fa4, fa4, fa5, rne ! 193-193
	fadd.s	fa3, fa3, fa4, rne ! 193-193
	flw	fa4, a1, 8 ! 193-193
	flw	fa5, a0, 8 ! 193-193
	fmul.s	fa4, fa4, fa5, rne ! 193-193
	fadd.s	fa3, fa3, fa4, rne ! 193-193
	fmul.s	fa1, fa1, fa3, rne ! 1719-1719
	fsw	sp, fa1, 64 ! 0-0
	fsw	sp, fa0, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fispos
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1689-1691
	bne	a0, a1, beq_else.18262 ! 1689-1691
	j	beq_cont.18263
beq_else.18262:
	lw	a0, sp, 16 ! 0-0
	flw	fa0, a0, 0 ! 203-203
	lw	a1, sp, 12 ! 0-0
	flw	fa1, a1, 0 ! 203-203
	flw	fa2, sp, 68 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 203-203
	fadd.s	fa0, fa0, fa1, rne ! 203-203
	fsw	a0, fa0, 0 ! 203-203
	flw	fa0, a0, 4 ! 204-204
	flw	fa1, a1, 4 ! 204-204
	fmul.s	fa1, fa2, fa1, rne ! 204-204
	fadd.s	fa0, fa0, fa1, rne ! 204-204
	fsw	a0, fa0, 4 ! 204-204
	flw	fa0, a0, 8 ! 205-205
	flw	fa1, a1, 8 ! 205-205
	fmul.s	fa1, fa2, fa1, rne ! 205-205
	fadd.s	fa0, fa0, fa1, rne ! 205-205
	fsw	a0, fa0, 8 ! 205-205
beq_cont.18263:
	flw	fa0, sp, 64 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fispos
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1694-1699
	bne	a0, a1, beq_else.18264 ! 1694-1699
	j	beq_cont.18265
beq_else.18264:
	flw	fa0, sp, 64 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 8 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1695-1695
	lw	a0, sp, 16 ! 0-0
	flw	fa2, a0, 0 ! 1696-1696
	fadd.s	fa2, fa2, fa0, rne ! 1696-1696
	fsw	a0, fa2, 0 ! 1696-1696
	flw	fa2, a0, 4 ! 1697-1697
	fadd.s	fa2, fa2, fa0, rne ! 1697-1697
	fsw	a0, fa2, 4 ! 1697-1697
	flw	fa2, a0, 8 ! 1698-1698
	fadd.s	fa0, fa2, fa0, rne ! 1698-1698
	fsw	a0, fa0, 8 ! 1698-1698
beq_cont.18265:
	j	beq_cont.18261
beq_else.18260:
beq_cont.18261:
	j	beq_cont.18259
beq_else.18258:
beq_cont.18259:
beq_cont.18257:
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, -1 ! 1724-1724
	flw	fa0, sp, 24 ! 0-0
	flw	fa1, sp, 8 ! 0-0
	lw	a1, sp, 20 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18253:
	ret ! 1725-1725
trace_ray.2803:
	lw	a3, a21, 84 ! 0-0
	lw	a4, a21, 80 ! 0-0
	lw	a5, a21, 76 ! 0-0
	lw	a6, a21, 72 ! 0-0
	lw	a7, a21, 68 ! 0-0
	lw	a8, a21, 64 ! 0-0
	lw	a9, a21, 60 ! 0-0
	lw	a10, a21, 56 ! 0-0
	lw	a11, a21, 52 ! 0-0
	lw	a12, a21, 48 ! 0-0
	lw	a13, a21, 44 ! 0-0
	lw	a14, a21, 40 ! 0-0
	lw	a15, a21, 36 ! 0-0
	lw	a16, a21, 32 ! 0-0
	lw	a17, a21, 28 ! 0-0
	lw	a18, a21, 24 ! 0-0
	lw	a19, a21, 20 ! 0-0
	lw	a20, a21, 16 ! 0-0
	sw	sp, a4, 0 ! 0-0
	lw	a4, a21, 12 ! 0-0
	sw	sp, a16, 4 ! 0-0
	lw	a16, a21, 8 ! 0-0
	sw	sp, a21, 8 ! 0-0
	lw	a21, a21, 4 ! 0-0
	sw	sp, a11, 12 ! 0-0
	li	a11, 4 ! 1733-1733
	blt	a11, a0, bge_else.18266 ! 1733-1814
	lw	a11, a2, 8 ! 476-478
	sw	sp, a17, 16 ! 0-0
	li	a17, l.13418 ! 1444-1444
	flw	fa2, a17, 0 ! 1444-1444
	fsw	a6, fa2, 0 ! 1444-1444
	li	a17, 0 ! 1445-1445
	sw	sp, a8, 20 ! 0-0
	lw	a8, a13, 0 ! 1445-1445
	fsw	sp, fa1, 24 ! 0-0
	sw	sp, a10, 28 ! 0-0
	sw	sp, a13, 32 ! 0-0
	sw	sp, a7, 36 ! 0-0
	sw	sp, a2, 40 ! 0-0
	sw	sp, a3, 44 ! 0-0
	sw	sp, a9, 48 ! 0-0
	sw	sp, a20, 52 ! 0-0
	sw	sp, a16, 56 ! 0-0
	sw	sp, a15, 60 ! 0-0
	sw	sp, a19, 64 ! 0-0
	sw	sp, a14, 68 ! 0-0
	sw	sp, a4, 72 ! 0-0
	sw	sp, a12, 76 ! 0-0
	sw	sp, a21, 80 ! 0-0
	fsw	sp, fa0, 84 ! 0-0
	sw	sp, a18, 88 ! 0-0
	sw	sp, a1, 92 ! 0-0
	sw	sp, a11, 96 ! 0-0
	sw	sp, a0, 100 ! 0-0
	sw	sp, a6, 104 ! 0-0
	mv	a2, a1
	mv	a0, a17
	mv	a21, a5
	mv	a1, a8
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
	lw	a0, sp, 104 ! 0-0
	flw	fa1, a0, 0 ! 1446-1446
	li	a1, l.13260 ! 1448-1448
	flw	fa0, a1, 0 ! 1448-1448
	fsw	sp, fa1, 108 ! 0-0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fless
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a1, 0 ! 1448-1450
	bne	a0, a1, beq_else.18267 ! 1448-1450
	li	a0, 0 ! 1450-1450
	j	beq_cont.18268
beq_else.18267:
	li	a0, l.13436 ! 1449-1449
	flw	fa1, a0, 0 ! 1449-1449
	flw	fa0, sp, 108 ! 0-0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fless
	addi	sp, sp, -116
	lw	ra, sp, 112
beq_cont.18268:
	li	a1, 0 ! 1735-1813
	bne	a0, a1, beq_else.18269 ! 1735-1813
	li	a0, -1 ! 1798-1798
	lw	a1, sp, 100 ! 0-0
	slli	a2, a1, 2 ! 1798-1798
	lw	a3, sp, 96 ! 0-0
	add	t0, a3, a2 ! 1798-1798
	sw	t0, a0, 0 ! 1798-1798
	li	a0, 0 ! 1800-1800
	bne	a1, a0, beq_else.18270 ! 1800-1812
	ret ! 1812-1812
beq_else.18270:
	lw	a0, sp, 92 ! 0-0
	flw	fa0, a0, 0 ! 193-193
	lw	a1, sp, 88 ! 0-0
	flw	fa1, a1, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 4 ! 193-193
	flw	fa2, a1, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 8 ! 193-193
	flw	fa2, a1, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fneg
	addi	sp, sp, -116
	lw	ra, sp, 112
	fsw	sp, fa0, 112 ! 0-0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_fispos
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 1803-1811
	bne	a0, a1, beq_else.18271 ! 1803-1811
	ret ! 1811-1811
beq_else.18271:
	flw	fa0, sp, 112 ! 0-0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_fsqr
	addi	sp, sp, -120
	lw	ra, sp, 116
	flw	fa1, sp, 112 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1806-1806
	flw	fa1, sp, 84 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1806-1806
	lw	a0, sp, 80 ! 0-0
	flw	fa1, a0, 0 ! 1806-1806
	fmul.s	fa0, fa0, fa1, rne ! 1806-1806
	lw	a0, sp, 76 ! 0-0
	flw	fa1, a0, 0 ! 1807-1807
	fadd.s	fa1, fa1, fa0, rne ! 1807-1807
	fsw	a0, fa1, 0 ! 1807-1807
	flw	fa1, a0, 4 ! 1808-1808
	fadd.s	fa1, fa1, fa0, rne ! 1808-1808
	fsw	a0, fa1, 4 ! 1808-1808
	flw	fa1, a0, 8 ! 1809-1809
	fadd.s	fa0, fa1, fa0, rne ! 1809-1809
	fsw	a0, fa0, 8 ! 1809-1809
	ret ! 1809-1809
beq_else.18269:
	lw	a0, sp, 72 ! 0-0
	lw	a0, a0, 0 ! 1737-1737
	slli	a1, a0, 2 ! 1738-1738
	lw	a2, sp, 68 ! 0-0
	add	t0, a2, a1 ! 1738-1738
	lw	a1, t0, 0 ! 1738-1738
	lw	a2, a1, 8 ! 262-267
	lw	a3, a1, 28 ! 360-365
	flw	fa0, a3, 0 ! 365-365
	flw	fa1, sp, 84 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1740-1740
	lw	a3, a1, 4 ! 252-257
	li	a4, 1 ! 1594-1594
	sw	sp, a2, 116 ! 0-0
	fsw	sp, fa0, 120 ! 0-0
	sw	sp, a0, 124 ! 0-0
	sw	sp, a1, 128 ! 0-0
	bne	a3, a4, beq_else.18272 ! 1594-1599
	lw	a3, sp, 64 ! 0-0
	lw	a4, a3, 0 ! 1555-1555
	li	a5, l.12849 ! 159-159
	flw	fa2, a5, 0 ! 159-159
	lw	a5, sp, 60 ! 0-0
	fsw	a5, fa2, 0 ! 152-152
	fsw	a5, fa2, 4 ! 153-153
	fsw	a5, fa2, 8 ! 154-154
	addi	a6, a4, -1 ! 1558-1558
	addi	a4, a4, -1 ! 1558-1558
	slli	a4, a4, 2 ! 1558-1558
	lw	a7, sp, 92 ! 0-0
	add	t0, a7, a4 ! 1558-1558
	flw	fa2, t0, 0 ! 1558-1558
	sw	sp, a6, 132 ! 0-0
	fsw	sp, fa2, 136 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fiszero
	addi	sp, sp, -144
	lw	ra, sp, 140
	li	a1, 0 ! 117-119
	bne	a0, a1, beq_else.18274 ! 117-119
	flw	fa0, sp, 136 ! 0-0
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fispos
	addi	sp, sp, -144
	lw	ra, sp, 140
	li	a1, 0 ! 118-119
	bne	a0, a1, beq_else.18276 ! 118-119
	li	a0, l.12813 ! 119-119
	flw	fa0, a0, 0 ! 119-119
	j	beq_cont.18277
beq_else.18276:
	li	a0, l.12811 ! 118-118
	flw	fa0, a0, 0 ! 118-118
beq_cont.18277:
	j	beq_cont.18275
beq_else.18274:
	li	a0, l.12849 ! 117-117
	flw	fa0, a0, 0 ! 117-117
beq_cont.18275:
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fneg
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 132 ! 0-0
	slli	a0, a0, 2 ! 1558-1558
	lw	a1, sp, 60 ! 0-0
	add	t0, a1, a0 ! 1558-1558
	fsw	t0, fa0, 0 ! 1558-1558
	j	beq_cont.18273
beq_else.18272:
	li	a4, 2 ! 1596-1596
	bne	a3, a4, beq_else.18278 ! 1596-1599
	lw	a3, a1, 16 ! 290-295
	flw	fa2, a3, 0 ! 295-295
	fmv.s	fa0, fa2
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fneg
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 60 ! 0-0
	fsw	a0, fa0, 0 ! 1564-1564
	lw	a1, sp, 128 ! 0-0
	lw	a2, a1, 16 ! 300-305
	flw	fa0, a2, 4 ! 305-305
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fneg
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 60 ! 0-0
	fsw	a0, fa0, 4 ! 1565-1565
	lw	a1, sp, 128 ! 0-0
	lw	a2, a1, 16 ! 310-315
	flw	fa0, a2, 8 ! 315-315
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_fneg
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 60 ! 0-0
	fsw	a0, fa0, 8 ! 1566-1566
	j	beq_cont.18279
beq_else.18278:
	lw	a21, sp, 56 ! 0-0
	mv	a0, a1
	sw	sp, ra, 140
	addi	sp, sp, 144
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -144
	lw	ra, sp, 140
beq_cont.18279:
beq_cont.18273:
	lw	a1, sp, 52 ! 0-0
	flw	fa0, a1, 0 ! 164-164
	lw	a0, sp, 48 ! 0-0
	fsw	a0, fa0, 0 ! 164-164
	flw	fa0, a1, 4 ! 165-165
	fsw	a0, fa0, 4 ! 165-165
	flw	fa0, a1, 8 ! 166-166
	fsw	a0, fa0, 8 ! 166-166
	lw	a0, sp, 128 ! 0-0
	lw	a21, sp, 44 ! 0-0
	sw	sp, ra, 140
	addi	sp, sp, 144
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 124 ! 0-0
	slli	a0, a0, 2 ! 1747-1747
	lw	a1, sp, 64 ! 0-0
	lw	a1, a1, 0 ! 1747-1747
	add	a0, a0, a1 ! 1747-1747
	lw	a1, sp, 100 ! 0-0
	slli	a2, a1, 2 ! 1747-1747
	lw	a3, sp, 96 ! 0-0
	add	t0, a3, a2 ! 1747-1747
	sw	t0, a0, 0 ! 1747-1747
	lw	a0, sp, 40 ! 0-0
	lw	a2, a0, 4 ! 468-470
	slli	a4, a1, 2 ! 1749-1749
	add	t0, a2, a4 ! 1749-1749
	lw	a2, t0, 0 ! 1749-1749
	lw	a4, sp, 52 ! 0-0
	flw	fa0, a4, 0 ! 164-164
	fsw	a2, fa0, 0 ! 164-164
	flw	fa0, a4, 4 ! 165-165
	fsw	a2, fa0, 4 ! 165-165
	flw	fa0, a4, 8 ! 166-166
	fsw	a2, fa0, 8 ! 166-166
	lw	a2, a0, 12 ! 483-485
	lw	a5, sp, 128 ! 0-0
	lw	a6, a5, 28 ! 360-365
	flw	fa0, a6, 0 ! 365-365
	li	a6, l.13504 ! 1753-1753
	flw	fa1, a6, 0 ! 1753-1753
	sw	sp, a2, 140 ! 0-0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fless
	addi	sp, sp, -148
	lw	ra, sp, 144
	li	a1, 0 ! 1753-1762
	bne	a0, a1, beq_else.18280 ! 1753-1762
	li	a0, 1 ! 1756-1756
	lw	a1, sp, 100 ! 0-0
	slli	a2, a1, 2 ! 1756-1756
	lw	a3, sp, 140 ! 0-0
	add	t0, a3, a2 ! 1756-1756
	sw	t0, a0, 0 ! 1756-1756
	lw	a0, sp, 40 ! 0-0
	lw	a2, a0, 16 ! 490-492
	slli	a3, a1, 2 ! 1758-1758
	add	t0, a2, a3 ! 1758-1758
	lw	a3, t0, 0 ! 1758-1758
	lw	a4, sp, 36 ! 0-0
	flw	fa0, a4, 0 ! 164-164
	fsw	a3, fa0, 0 ! 164-164
	flw	fa0, a4, 4 ! 165-165
	fsw	a3, fa0, 4 ! 165-165
	flw	fa0, a4, 8 ! 166-166
	fsw	a3, fa0, 8 ! 166-166
	slli	a3, a1, 2 ! 1759-1759
	add	t0, a2, a3 ! 1759-1759
	lw	a2, t0, 0 ! 1759-1759
	li	a3, l.13639 ! 1759-1759
	flw	fa0, a3, 0 ! 1759-1759
	flw	fa1, sp, 120 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1759-1759
	flw	fa2, a2, 0 ! 224-224
	fmul.s	fa2, fa2, fa0, rne ! 224-224
	fsw	a2, fa2, 0 ! 224-224
	flw	fa2, a2, 4 ! 225-225
	fmul.s	fa2, fa2, fa0, rne ! 225-225
	fsw	a2, fa2, 4 ! 225-225
	flw	fa2, a2, 8 ! 226-226
	fmul.s	fa0, fa2, fa0, rne ! 226-226
	fsw	a2, fa0, 8 ! 226-226
	lw	a2, a0, 28 ! 527-529
	slli	a3, a1, 2 ! 1761-1761
	add	t0, a2, a3 ! 1761-1761
	lw	a2, t0, 0 ! 1761-1761
	lw	a3, sp, 60 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	fsw	a2, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a2, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a2, fa0, 8 ! 166-166
	j	beq_cont.18281
beq_else.18280:
	li	a0, 0 ! 1754-1754
	lw	a1, sp, 100 ! 0-0
	slli	a2, a1, 2 ! 1754-1754
	lw	a3, sp, 140 ! 0-0
	add	t0, a3, a2 ! 1754-1754
	sw	t0, a0, 0 ! 1754-1754
beq_cont.18281:
	li	a0, l.13654 ! 1764-1764
	flw	fa0, a0, 0 ! 1764-1764
	lw	a0, sp, 92 ! 0-0
	flw	fa1, a0, 0 ! 193-193
	lw	a2, sp, 60 ! 0-0
	flw	fa2, a2, 0 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	flw	fa2, a0, 4 ! 193-193
	flw	fa3, a2, 4 ! 193-193
	fmul.s	fa2, fa2, fa3, rne ! 193-193
	fadd.s	fa1, fa1, fa2, rne ! 193-193
	flw	fa2, a0, 8 ! 193-193
	flw	fa3, a2, 8 ! 193-193
	fmul.s	fa2, fa2, fa3, rne ! 193-193
	fadd.s	fa1, fa1, fa2, rne ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 1764-1764
	flw	fa1, a0, 0 ! 203-203
	flw	fa2, a2, 0 ! 203-203
	fmul.s	fa2, fa0, fa2, rne ! 203-203
	fadd.s	fa1, fa1, fa2, rne ! 203-203
	fsw	a0, fa1, 0 ! 203-203
	flw	fa1, a0, 4 ! 204-204
	flw	fa2, a2, 4 ! 204-204
	fmul.s	fa2, fa0, fa2, rne ! 204-204
	fadd.s	fa1, fa1, fa2, rne ! 204-204
	fsw	a0, fa1, 4 ! 204-204
	flw	fa1, a0, 8 ! 205-205
	flw	fa2, a2, 8 ! 205-205
	fmul.s	fa0, fa0, fa2, rne ! 205-205
	fadd.s	fa0, fa1, fa0, rne ! 205-205
	fsw	a0, fa0, 8 ! 205-205
	lw	a3, sp, 128 ! 0-0
	lw	a4, a3, 28 ! 370-375
	flw	fa0, a4, 4 ! 375-375
	flw	fa1, sp, 84 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1768-1768
	li	a4, 0 ! 1771-1771
	lw	a5, sp, 32 ! 0-0
	lw	a5, a5, 0 ! 1771-1771
	lw	a21, sp, 28 ! 0-0
	fsw	sp, fa0, 144 ! 0-0
	mv	a1, a5
	mv	a0, a4
	sw	sp, ra, 148
	addi	sp, sp, 152
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -152
	lw	ra, sp, 148
	li	a1, 0 ! 1771-1775
	bne	a0, a1, beq_else.18282 ! 1771-1775
	lw	a0, sp, 60 ! 0-0
	flw	fa0, a0, 0 ! 193-193
	lw	a1, sp, 88 ! 0-0
	flw	fa1, a1, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 4 ! 193-193
	flw	fa2, a1, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 8 ! 193-193
	flw	fa2, a1, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	min_caml_fneg
	addi	sp, sp, -152
	lw	ra, sp, 148
	flw	fa1, sp, 120 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1772-1772
	lw	a0, sp, 92 ! 0-0
	flw	fa2, a0, 0 ! 193-193
	lw	a1, sp, 88 ! 0-0
	flw	fa3, a1, 0 ! 193-193
	fmul.s	fa2, fa2, fa3, rne ! 193-193
	flw	fa3, a0, 4 ! 193-193
	flw	fa4, a1, 4 ! 193-193
	fmul.s	fa3, fa3, fa4, rne ! 193-193
	fadd.s	fa2, fa2, fa3, rne ! 193-193
	flw	fa3, a0, 8 ! 193-193
	flw	fa4, a1, 8 ! 193-193
	fmul.s	fa3, fa3, fa4, rne ! 193-193
	fadd.s	fa2, fa2, fa3, rne ! 193-193
	fsw	sp, fa0, 148 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_fneg
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 148 ! 0-0
	fsw	sp, fa0, 152 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_fispos
	addi	sp, sp, -160
	lw	ra, sp, 156
	li	a1, 0 ! 1689-1691
	bne	a0, a1, beq_else.18284 ! 1689-1691
	j	beq_cont.18285
beq_else.18284:
	lw	a0, sp, 76 ! 0-0
	flw	fa0, a0, 0 ! 203-203
	lw	a1, sp, 36 ! 0-0
	flw	fa1, a1, 0 ! 203-203
	flw	fa2, sp, 148 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 203-203
	fadd.s	fa0, fa0, fa1, rne ! 203-203
	fsw	a0, fa0, 0 ! 203-203
	flw	fa0, a0, 4 ! 204-204
	flw	fa1, a1, 4 ! 204-204
	fmul.s	fa1, fa2, fa1, rne ! 204-204
	fadd.s	fa0, fa0, fa1, rne ! 204-204
	fsw	a0, fa0, 4 ! 204-204
	flw	fa0, a0, 8 ! 205-205
	flw	fa1, a1, 8 ! 205-205
	fmul.s	fa1, fa2, fa1, rne ! 205-205
	fadd.s	fa0, fa0, fa1, rne ! 205-205
	fsw	a0, fa0, 8 ! 205-205
beq_cont.18285:
	flw	fa0, sp, 152 ! 0-0
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_fispos
	addi	sp, sp, -160
	lw	ra, sp, 156
	li	a1, 0 ! 1694-1699
	bne	a0, a1, beq_else.18286 ! 1694-1699
	j	beq_cont.18287
beq_else.18286:
	flw	fa0, sp, 152 ! 0-0
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_fsqr
	addi	sp, sp, -160
	lw	ra, sp, 156
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_fsqr
	addi	sp, sp, -160
	lw	ra, sp, 156
	flw	fa1, sp, 144 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1695-1695
	lw	a0, sp, 76 ! 0-0
	flw	fa2, a0, 0 ! 1696-1696
	fadd.s	fa2, fa2, fa0, rne ! 1696-1696
	fsw	a0, fa2, 0 ! 1696-1696
	flw	fa2, a0, 4 ! 1697-1697
	fadd.s	fa2, fa2, fa0, rne ! 1697-1697
	fsw	a0, fa2, 4 ! 1697-1697
	flw	fa2, a0, 8 ! 1698-1698
	fadd.s	fa0, fa2, fa0, rne ! 1698-1698
	fsw	a0, fa0, 8 ! 1698-1698
beq_cont.18287:
	j	beq_cont.18283
beq_else.18282:
beq_cont.18283:
	lw	a0, sp, 52 ! 0-0
	flw	fa0, a0, 0 ! 164-164
	lw	a1, sp, 20 ! 0-0
	fsw	a1, fa0, 0 ! 164-164
	flw	fa0, a0, 4 ! 165-165
	fsw	a1, fa0, 4 ! 165-165
	flw	fa0, a0, 8 ! 166-166
	fsw	a1, fa0, 8 ! 166-166
	lw	a1, sp, 16 ! 0-0
	lw	a1, a1, 0 ! 1216-1216
	addi	a1, a1, -1 ! 1216-1216
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 156
	addi	sp, sp, 160
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -160
	lw	ra, sp, 156
	lw	a0, sp, 4 ! 0-0
	lw	a0, a0, 0 ! 1779-1779
	addi	a0, a0, -1 ! 1779-1779
	flw	fa0, sp, 120 ! 0-0
	flw	fa1, sp, 144 ! 0-0
	lw	a1, sp, 92 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 156
	addi	sp, sp, 160
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -160
	lw	ra, sp, 156
	li	a0, l.13708 ! 1782-1782
	flw	fa0, a0, 0 ! 1782-1782
	flw	fa1, sp, 84 ! 0-0
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	min_caml_fless
	addi	sp, sp, -160
	lw	ra, sp, 156
	li	a1, 0 ! 1782-1793
	bne	a0, a1, beq_else.18288 ! 1782-1793
	ret ! 1793-1793
beq_else.18288:
	li	a0, 4 ! 1784-1784
	lw	a1, sp, 100 ! 0-0
	blt	a1, a0, bge_else.18289 ! 1784-1786
	j	bge_cont.18290
bge_else.18289:
	addi	a0, a1, 1 ! 1785-1785
	li	a2, -1 ! 1785-1785
	slli	a0, a0, 2 ! 1785-1785
	lw	a3, sp, 96 ! 0-0
	add	t0, a3, a0 ! 1785-1785
	sw	t0, a2, 0 ! 1785-1785
bge_cont.18290:
	li	a0, 2 ! 1788-1788
	lw	a2, sp, 116 ! 0-0
	bne	a2, a0, beq_else.18291 ! 1788-1791
	li	a0, l.12811 ! 1789-1789
	flw	fa0, a0, 0 ! 1789-1789
	lw	a0, sp, 128 ! 0-0
	lw	a0, a0, 28 ! 360-365
	flw	fa1, a0, 0 ! 365-365
	fsub.s	fa0, fa0, fa1, rne ! 1789-1789
	flw	fa1, sp, 84 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1789-1789
	addi	a0, a1, 1 ! 1790-1790
	lw	a1, sp, 104 ! 0-0
	flw	fa1, a1, 0 ! 1790-1790
	flw	fa2, sp, 24 ! 0-0
	fadd.s	fa1, fa2, fa1, rne ! 1790-1790
	lw	a1, sp, 92 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, ra, 156
	addi	sp, sp, 160
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -160
	lw	ra, sp, 156
	j	beq_cont.18292
beq_else.18291:
beq_cont.18292:
	ret ! 1788-1791
bge_else.18266:
	ret ! 1814-1814
trace_diffuse_ray.2809:
	lw	a1, a21, 56 ! 0-0
	lw	a2, a21, 52 ! 0-0
	lw	a3, a21, 48 ! 0-0
	lw	a4, a21, 44 ! 0-0
	lw	a5, a21, 40 ! 0-0
	lw	a6, a21, 36 ! 0-0
	lw	a7, a21, 32 ! 0-0
	lw	a8, a21, 28 ! 0-0
	lw	a9, a21, 24 ! 0-0
	lw	a10, a21, 20 ! 0-0
	lw	a11, a21, 16 ! 0-0
	lw	a12, a21, 12 ! 0-0
	lw	a13, a21, 8 ! 0-0
	lw	a14, a21, 4 ! 0-0
	li	a15, l.13418 ! 1535-1535
	flw	fa1, a15, 0 ! 1535-1535
	fsw	a3, fa1, 0 ! 1535-1535
	li	a15, 0 ! 1536-1536
	lw	a16, a6, 0 ! 1536-1536
	sw	sp, a4, 0 ! 0-0
	sw	sp, a14, 4 ! 0-0
	fsw	sp, fa0, 8 ! 0-0
	sw	sp, a9, 12 ! 0-0
	sw	sp, a5, 16 ! 0-0
	sw	sp, a6, 20 ! 0-0
	sw	sp, a11, 24 ! 0-0
	sw	sp, a1, 28 ! 0-0
	sw	sp, a13, 32 ! 0-0
	sw	sp, a8, 36 ! 0-0
	sw	sp, a10, 40 ! 0-0
	sw	sp, a0, 44 ! 0-0
	sw	sp, a7, 48 ! 0-0
	sw	sp, a12, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a16
	mv	a21, a2
	mv	a2, a0
	mv	a0, a15
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0-0
	flw	fa1, a0, 0 ! 1537-1537
	li	a0, l.13260 ! 1539-1539
	flw	fa0, a0, 0 ! 1539-1539
	fsw	sp, fa1, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1539-1541
	bne	a0, a1, beq_else.18293 ! 1539-1541
	li	a0, 0 ! 1541-1541
	j	beq_cont.18294
beq_else.18293:
	li	a0, l.13436 ! 1540-1540
	flw	fa1, a0, 0 ! 1540-1540
	flw	fa0, sp, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
beq_cont.18294:
	li	a1, 0 ! 1828-1839
	bne	a0, a1, beq_else.18295 ! 1828-1839
	ret ! 1839-1839
beq_else.18295:
	lw	a0, sp, 52 ! 0-0
	lw	a0, a0, 0 ! 1829-1829
	slli	a0, a0, 2 ! 1829-1829
	lw	a1, sp, 48 ! 0-0
	add	t0, a1, a0 ! 1829-1829
	lw	a0, t0, 0 ! 1829-1829
	lw	a1, sp, 44 ! 0-0
	lw	a1, a1, 0 ! 538-539
	lw	a2, a0, 4 ! 252-257
	li	a3, 1 ! 1594-1594
	sw	sp, a0, 64 ! 0-0
	bne	a2, a3, beq_else.18296 ! 1594-1599
	lw	a2, sp, 40 ! 0-0
	lw	a2, a2, 0 ! 1555-1555
	li	a3, l.12849 ! 159-159
	flw	fa0, a3, 0 ! 159-159
	lw	a3, sp, 36 ! 0-0
	fsw	a3, fa0, 0 ! 152-152
	fsw	a3, fa0, 4 ! 153-153
	fsw	a3, fa0, 8 ! 154-154
	addi	a4, a2, -1 ! 1558-1558
	addi	a2, a2, -1 ! 1558-1558
	slli	a2, a2, 2 ! 1558-1558
	add	t0, a1, a2 ! 1558-1558
	flw	fa0, t0, 0 ! 1558-1558
	sw	sp, a4, 68 ! 0-0
	fsw	sp, fa0, 72 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fiszero
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 117-119
	bne	a0, a1, beq_else.18298 ! 117-119
	flw	fa0, sp, 72 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fispos
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 118-119
	bne	a0, a1, beq_else.18300 ! 118-119
	li	a0, l.12813 ! 119-119
	flw	fa0, a0, 0 ! 119-119
	j	beq_cont.18301
beq_else.18300:
	li	a0, l.12811 ! 118-118
	flw	fa0, a0, 0 ! 118-118
beq_cont.18301:
	j	beq_cont.18299
beq_else.18298:
	li	a0, l.12849 ! 117-117
	flw	fa0, a0, 0 ! 117-117
beq_cont.18299:
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 68 ! 0-0
	slli	a0, a0, 2 ! 1558-1558
	lw	a1, sp, 36 ! 0-0
	add	t0, a1, a0 ! 1558-1558
	fsw	t0, fa0, 0 ! 1558-1558
	j	beq_cont.18297
beq_else.18296:
	li	a1, 2 ! 1596-1596
	bne	a2, a1, beq_else.18302 ! 1596-1599
	lw	a1, a0, 16 ! 290-295
	flw	fa0, a1, 0 ! 295-295
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 36 ! 0-0
	fsw	a0, fa0, 0 ! 1564-1564
	lw	a1, sp, 64 ! 0-0
	lw	a2, a1, 16 ! 300-305
	flw	fa0, a2, 4 ! 305-305
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 36 ! 0-0
	fsw	a0, fa0, 4 ! 1565-1565
	lw	a1, sp, 64 ! 0-0
	lw	a2, a1, 16 ! 310-315
	flw	fa0, a2, 8 ! 315-315
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 36 ! 0-0
	fsw	a0, fa0, 8 ! 1566-1566
	j	beq_cont.18303
beq_else.18302:
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
beq_cont.18303:
beq_cont.18297:
	lw	a0, sp, 64 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a0, 0 ! 1834-1834
	lw	a1, sp, 20 ! 0-0
	lw	a1, a1, 0 ! 1834-1834
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1834-1838
	bne	a0, a1, beq_else.18304 ! 1834-1838
	lw	a0, sp, 36 ! 0-0
	flw	fa0, a0, 0 ! 193-193
	lw	a1, sp, 12 ! 0-0
	flw	fa1, a1, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 4 ! 193-193
	flw	fa2, a1, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 8 ! 193-193
	flw	fa2, a1, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	fsw	sp, fa0, 76 ! 0-0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fispos
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1836-1836
	bne	a0, a1, beq_else.18305 ! 1836-1836
	li	a0, l.12849 ! 1836-1836
	flw	fa0, a0, 0 ! 1836-1836
	j	beq_cont.18306
beq_else.18305:
	flw	fa0, sp, 76 ! 0-0
beq_cont.18306:
	flw	fa1, sp, 8 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1837-1837
	lw	a0, sp, 64 ! 0-0
	lw	a0, a0, 28 ! 360-365
	flw	fa1, a0, 0 ! 365-365
	fmul.s	fa0, fa0, fa1, rne ! 1837-1837
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 203-203
	lw	a1, sp, 0 ! 0-0
	flw	fa2, a1, 0 ! 203-203
	fmul.s	fa2, fa0, fa2, rne ! 203-203
	fadd.s	fa1, fa1, fa2, rne ! 203-203
	fsw	a0, fa1, 0 ! 203-203
	flw	fa1, a0, 4 ! 204-204
	flw	fa2, a1, 4 ! 204-204
	fmul.s	fa2, fa0, fa2, rne ! 204-204
	fadd.s	fa1, fa1, fa2, rne ! 204-204
	fsw	a0, fa1, 4 ! 204-204
	flw	fa1, a0, 8 ! 205-205
	flw	fa2, a1, 8 ! 205-205
	fmul.s	fa0, fa0, fa2, rne ! 205-205
	fadd.s	fa0, fa1, fa0, rne ! 205-205
	fsw	a0, fa0, 8 ! 205-205
	ret ! 205-205
beq_else.18304:
	ret ! 1838-1838
iter_trace_diffuse_rays.2812:
	lw	a4, a21, 52 ! 0-0
	lw	a5, a21, 48 ! 0-0
	lw	a6, a21, 44 ! 0-0
	lw	a7, a21, 40 ! 0-0
	lw	a8, a21, 36 ! 0-0
	lw	a9, a21, 32 ! 0-0
	lw	a10, a21, 28 ! 0-0
	lw	a11, a21, 24 ! 0-0
	lw	a12, a21, 20 ! 0-0
	lw	a13, a21, 16 ! 0-0
	lw	a14, a21, 12 ! 0-0
	lw	a15, a21, 8 ! 0-0
	lw	a16, a21, 4 ! 0-0
	li	a17, 0 ! 1845-1845
	blt	a3, a17, bge_else.18307 ! 1845-1856
	slli	a17, a3, 2 ! 1846-1846
	add	t0, a0, a17 ! 1846-1846
	lw	a17, t0, 0 ! 1846-1846
	lw	a17, a17, 0 ! 538-539
	flw	fa0, a17, 0 ! 193-193
	flw	fa1, a1, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a17, 4 ! 193-193
	flw	fa2, a1, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a17, 8 ! 193-193
	flw	fa2, a1, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	sw	sp, a2, 0 ! 0-0
	sw	sp, a21, 4 ! 0-0
	sw	sp, a5, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a6, 16 ! 0-0
	sw	sp, a16, 20 ! 0-0
	sw	sp, a11, 24 ! 0-0
	sw	sp, a10, 28 ! 0-0
	sw	sp, a7, 32 ! 0-0
	sw	sp, a8, 36 ! 0-0
	sw	sp, a13, 40 ! 0-0
	sw	sp, a4, 44 ! 0-0
	sw	sp, a15, 48 ! 0-0
	sw	sp, a9, 52 ! 0-0
	sw	sp, a14, 56 ! 0-0
	sw	sp, a12, 60 ! 0-0
	fsw	sp, fa0, 64 ! 0-0
	sw	sp, a0, 68 ! 0-0
	sw	sp, a3, 72 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fisneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18308 ! 1850-1853
	lw	a0, sp, 72 ! 0-0
	slli	a1, a0, 2 ! 1853-1853
	lw	a2, sp, 68 ! 0-0
	add	t0, a2, a1 ! 1853-1853
	lw	a1, t0, 0 ! 1853-1853
	li	a3, l.13801 ! 1853-1853
	flw	fa0, a3, 0 ! 1853-1853
	flw	fa1, sp, 64 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 60 ! 0-0
	fsw	sp, fa0, 76 ! 0-0
	sw	sp, a1, 80 ! 0-0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 1828-1839
	bne	a0, a1, beq_else.18310 ! 1828-1839
	j	beq_cont.18311
beq_else.18310:
	lw	a0, sp, 56 ! 0-0
	lw	a0, a0, 0 ! 1829-1829
	slli	a0, a0, 2 ! 1829-1829
	lw	a1, sp, 52 ! 0-0
	add	t0, a1, a0 ! 1829-1829
	lw	a0, t0, 0 ! 1829-1829
	lw	a1, sp, 80 ! 0-0
	lw	a1, a1, 0 ! 538-539
	lw	a21, sp, 48 ! 0-0
	sw	sp, a0, 84 ! 0-0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 84 ! 0-0
	lw	a1, sp, 40 ! 0-0
	lw	a21, sp, 44 ! 0-0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a0, 0 ! 1834-1834
	lw	a1, sp, 36 ! 0-0
	lw	a1, a1, 0 ! 1834-1834
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1834-1838
	bne	a0, a1, beq_else.18312 ! 1834-1838
	lw	a0, sp, 28 ! 0-0
	flw	fa0, a0, 0 ! 193-193
	lw	a1, sp, 24 ! 0-0
	flw	fa1, a1, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 4 ! 193-193
	flw	fa2, a1, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 8 ! 193-193
	flw	fa2, a1, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	fsw	sp, fa0, 88 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fispos
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 1836-1836
	bne	a0, a1, beq_else.18314 ! 1836-1836
	li	a0, l.12849 ! 1836-1836
	flw	fa0, a0, 0 ! 1836-1836
	j	beq_cont.18315
beq_else.18314:
	flw	fa0, sp, 88 ! 0-0
beq_cont.18315:
	flw	fa1, sp, 76 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1837-1837
	lw	a0, sp, 84 ! 0-0
	lw	a0, a0, 28 ! 360-365
	flw	fa1, a0, 0 ! 365-365
	fmul.s	fa0, fa0, fa1, rne ! 1837-1837
	lw	a0, sp, 20 ! 0-0
	flw	fa1, a0, 0 ! 203-203
	lw	a1, sp, 16 ! 0-0
	flw	fa2, a1, 0 ! 203-203
	fmul.s	fa2, fa0, fa2, rne ! 203-203
	fadd.s	fa1, fa1, fa2, rne ! 203-203
	fsw	a0, fa1, 0 ! 203-203
	flw	fa1, a0, 4 ! 204-204
	flw	fa2, a1, 4 ! 204-204
	fmul.s	fa2, fa0, fa2, rne ! 204-204
	fadd.s	fa1, fa1, fa2, rne ! 204-204
	fsw	a0, fa1, 4 ! 204-204
	flw	fa1, a0, 8 ! 205-205
	flw	fa2, a1, 8 ! 205-205
	fmul.s	fa0, fa0, fa2, rne ! 205-205
	fadd.s	fa0, fa1, fa0, rne ! 205-205
	fsw	a0, fa0, 8 ! 205-205
	j	beq_cont.18313
beq_else.18312:
beq_cont.18313:
beq_cont.18311:
	j	beq_cont.18309
beq_else.18308:
	lw	a0, sp, 72 ! 0-0
	addi	a1, a0, 1 ! 1851-1851
	slli	a1, a1, 2 ! 1851-1851
	lw	a2, sp, 68 ! 0-0
	add	t0, a2, a1 ! 1851-1851
	lw	a1, t0, 0 ! 1851-1851
	li	a3, l.13778 ! 1851-1851
	flw	fa0, a3, 0 ! 1851-1851
	flw	fa1, sp, 64 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 60 ! 0-0
	fsw	sp, fa0, 92 ! 0-0
	sw	sp, a1, 96 ! 0-0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	li	a1, 0 ! 1828-1839
	bne	a0, a1, beq_else.18316 ! 1828-1839
	j	beq_cont.18317
beq_else.18316:
	lw	a0, sp, 56 ! 0-0
	lw	a0, a0, 0 ! 1829-1829
	slli	a0, a0, 2 ! 1829-1829
	lw	a1, sp, 52 ! 0-0
	add	t0, a1, a0 ! 1829-1829
	lw	a0, t0, 0 ! 1829-1829
	lw	a1, sp, 96 ! 0-0
	lw	a1, a1, 0 ! 538-539
	lw	a21, sp, 48 ! 0-0
	sw	sp, a0, 100 ! 0-0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 100 ! 0-0
	lw	a1, sp, 40 ! 0-0
	lw	a21, sp, 44 ! 0-0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a0, 0 ! 1834-1834
	lw	a1, sp, 36 ! 0-0
	lw	a1, a1, 0 ! 1834-1834
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 0 ! 1834-1838
	bne	a0, a1, beq_else.18318 ! 1834-1838
	lw	a0, sp, 28 ! 0-0
	flw	fa0, a0, 0 ! 193-193
	lw	a1, sp, 24 ! 0-0
	flw	fa1, a1, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 4 ! 193-193
	flw	fa2, a1, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a0, 8 ! 193-193
	flw	fa2, a1, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fneg
	addi	sp, sp, -108
	lw	ra, sp, 104
	fsw	sp, fa0, 104 ! 0-0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_fispos
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 1836-1836
	bne	a0, a1, beq_else.18320 ! 1836-1836
	li	a0, l.12849 ! 1836-1836
	flw	fa0, a0, 0 ! 1836-1836
	j	beq_cont.18321
beq_else.18320:
	flw	fa0, sp, 104 ! 0-0
beq_cont.18321:
	flw	fa1, sp, 92 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1837-1837
	lw	a0, sp, 100 ! 0-0
	lw	a0, a0, 28 ! 360-365
	flw	fa1, a0, 0 ! 365-365
	fmul.s	fa0, fa0, fa1, rne ! 1837-1837
	lw	a0, sp, 20 ! 0-0
	flw	fa1, a0, 0 ! 203-203
	lw	a1, sp, 16 ! 0-0
	flw	fa2, a1, 0 ! 203-203
	fmul.s	fa2, fa0, fa2, rne ! 203-203
	fadd.s	fa1, fa1, fa2, rne ! 203-203
	fsw	a0, fa1, 0 ! 203-203
	flw	fa1, a0, 4 ! 204-204
	flw	fa2, a1, 4 ! 204-204
	fmul.s	fa2, fa0, fa2, rne ! 204-204
	fadd.s	fa1, fa1, fa2, rne ! 204-204
	fsw	a0, fa1, 4 ! 204-204
	flw	fa1, a0, 8 ! 205-205
	flw	fa2, a1, 8 ! 205-205
	fmul.s	fa0, fa0, fa2, rne ! 205-205
	fadd.s	fa0, fa1, fa0, rne ! 205-205
	fsw	a0, fa0, 8 ! 205-205
	j	beq_cont.18319
beq_else.18318:
beq_cont.18319:
beq_cont.18317:
beq_cont.18309:
	lw	a0, sp, 72 ! 0-0
	addi	a0, a0, -2 ! 1855-1855
	li	a1, 0 ! 1845-1845
	blt	a0, a1, bge_else.18322 ! 1845-1856
	slli	a1, a0, 2 ! 1846-1846
	lw	a2, sp, 68 ! 0-0
	add	t0, a2, a1 ! 1846-1846
	lw	a1, t0, 0 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a3, sp, 12 ! 0-0
	flw	fa1, a3, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a3, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a3, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 108 ! 0-0
	sw	sp, a0, 112 ! 0-0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_fisneg
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18323 ! 1850-1853
	lw	a0, sp, 112 ! 0-0
	slli	a1, a0, 2 ! 1853-1853
	lw	a2, sp, 68 ! 0-0
	add	t0, a2, a1 ! 1853-1853
	lw	a1, t0, 0 ! 1853-1853
	li	a3, l.13801 ! 1853-1853
	flw	fa0, a3, 0 ! 1853-1853
	flw	fa1, sp, 108 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	j	beq_cont.18324
beq_else.18323:
	lw	a0, sp, 112 ! 0-0
	addi	a1, a0, 1 ! 1851-1851
	slli	a1, a1, 2 ! 1851-1851
	lw	a2, sp, 68 ! 0-0
	add	t0, a2, a1 ! 1851-1851
	lw	a1, t0, 0 ! 1851-1851
	li	a3, l.13778 ! 1851-1851
	flw	fa0, a3, 0 ! 1851-1851
	flw	fa1, sp, 108 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
beq_cont.18324:
	lw	a0, sp, 112 ! 0-0
	addi	a3, a0, -2 ! 1855-1855
	lw	a0, sp, 68 ! 0-0
	lw	a1, sp, 12 ! 0-0
	lw	a2, sp, 0 ! 0-0
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18322:
	ret ! 1856-1856
bge_else.18307:
	ret ! 1856-1856
trace_diffuse_ray_80percent.2821:
	lw	a3, a21, 20 ! 0-0
	lw	a4, a21, 16 ! 0-0
	lw	a5, a21, 12 ! 0-0
	lw	a6, a21, 8 ! 0-0
	lw	a7, a21, 4 ! 0-0
	li	a8, 0 ! 1872-1872
	sw	sp, a1, 0 ! 0-0
	sw	sp, a6, 4 ! 0-0
	sw	sp, a4, 8 ! 0-0
	sw	sp, a5, 12 ! 0-0
	sw	sp, a3, 16 ! 0-0
	sw	sp, a2, 20 ! 0-0
	sw	sp, a7, 24 ! 0-0
	sw	sp, a0, 28 ! 0-0
	bne	a0, a8, beq_else.18325 ! 1872-1874
	j	beq_cont.18326
beq_else.18325:
	lw	a8, a7, 0 ! 1873-1873
	flw	fa0, a2, 0 ! 164-164
	fsw	a3, fa0, 0 ! 164-164
	flw	fa0, a2, 4 ! 165-165
	fsw	a3, fa0, 4 ! 165-165
	flw	fa0, a2, 8 ! 166-166
	fsw	a3, fa0, 8 ! 166-166
	lw	a9, a5, 0 ! 1216-1216
	addi	a9, a9, -1 ! 1216-1216
	sw	sp, a8, 32 ! 0-0
	mv	a1, a9
	mv	a0, a2
	mv	a21, a4
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a3, 118 ! 1865-1865
	lw	a0, sp, 32 ! 0-0
	lw	a1, sp, 0 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
beq_cont.18326:
	li	a0, 1 ! 1876-1876
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.18327 ! 1876-1878
	j	beq_cont.18328
beq_else.18327:
	lw	a0, sp, 24 ! 0-0
	lw	a2, a0, 4 ! 1877-1877
	lw	a3, sp, 20 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	lw	a4, sp, 16 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a5, sp, 12 ! 0-0
	lw	a6, a5, 0 ! 1216-1216
	addi	a6, a6, -1 ! 1216-1216
	lw	a21, sp, 8 ! 0-0
	sw	sp, a2, 36 ! 0-0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a3, 118 ! 1865-1865
	lw	a0, sp, 36 ! 0-0
	lw	a1, sp, 0 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
beq_cont.18328:
	li	a0, 2 ! 1880-1880
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.18329 ! 1880-1882
	j	beq_cont.18330
beq_else.18329:
	lw	a0, sp, 24 ! 0-0
	lw	a2, a0, 8 ! 1881-1881
	lw	a3, sp, 20 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	lw	a4, sp, 16 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a5, sp, 12 ! 0-0
	lw	a6, a5, 0 ! 1216-1216
	addi	a6, a6, -1 ! 1216-1216
	lw	a21, sp, 8 ! 0-0
	sw	sp, a2, 40 ! 0-0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a3, 118 ! 1865-1865
	lw	a0, sp, 40 ! 0-0
	lw	a1, sp, 0 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
beq_cont.18330:
	li	a0, 3 ! 1884-1884
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.18331 ! 1884-1886
	j	beq_cont.18332
beq_else.18331:
	lw	a0, sp, 24 ! 0-0
	lw	a2, a0, 12 ! 1885-1885
	lw	a3, sp, 20 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	lw	a4, sp, 16 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a5, sp, 12 ! 0-0
	lw	a6, a5, 0 ! 1216-1216
	addi	a6, a6, -1 ! 1216-1216
	lw	a21, sp, 8 ! 0-0
	sw	sp, a2, 44 ! 0-0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a3, 118 ! 1865-1865
	lw	a0, sp, 44 ! 0-0
	lw	a1, sp, 0 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
beq_cont.18332:
	li	a0, 4 ! 1888-1888
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.18333 ! 1888-1890
	ret ! 1890-1890
beq_else.18333:
	lw	a0, sp, 24 ! 0-0
	lw	a0, a0, 16 ! 1889-1889
	lw	a1, sp, 20 ! 0-0
	flw	fa0, a1, 0 ! 164-164
	lw	a2, sp, 16 ! 0-0
	fsw	a2, fa0, 0 ! 164-164
	flw	fa0, a1, 4 ! 165-165
	fsw	a2, fa0, 4 ! 165-165
	flw	fa0, a1, 8 ! 166-166
	fsw	a2, fa0, 8 ! 166-166
	lw	a2, sp, 12 ! 0-0
	lw	a2, a2, 0 ! 1216-1216
	addi	a2, a2, -1 ! 1216-1216
	lw	a21, sp, 8 ! 0-0
	sw	sp, a0, 48 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a3, 118 ! 1865-1865
	lw	a0, sp, 48 ! 0-0
	lw	a1, sp, 0 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_diffuse_using_1point.2825:
	lw	a2, a21, 32 ! 0-0
	lw	a3, a21, 28 ! 0-0
	lw	a4, a21, 24 ! 0-0
	lw	a5, a21, 20 ! 0-0
	lw	a6, a21, 16 ! 0-0
	lw	a7, a21, 12 ! 0-0
	lw	a8, a21, 8 ! 0-0
	lw	a9, a21, 4 ! 0-0
	lw	a10, a0, 20 ! 497-499
	lw	a11, a0, 28 ! 527-529
	lw	a12, a0, 4 ! 468-470
	lw	a13, a0, 16 ! 490-492
	slli	a14, a1, 2 ! 1903-1903
	add	t0, a10, a14 ! 1903-1903
	lw	a10, t0, 0 ! 1903-1903
	flw	fa0, a10, 0 ! 164-164
	fsw	a9, fa0, 0 ! 164-164
	flw	fa0, a10, 4 ! 165-165
	fsw	a9, fa0, 4 ! 165-165
	flw	fa0, a10, 8 ! 166-166
	fsw	a9, fa0, 8 ! 166-166
	lw	a0, a0, 24 ! 513-515
	lw	a0, a0, 0 ! 515-515
	slli	a10, a1, 2 ! 1906-1906
	add	t0, a11, a10 ! 1906-1906
	lw	a10, t0, 0 ! 1906-1906
	slli	a11, a1, 2 ! 1907-1907
	add	t0, a12, a11 ! 1907-1907
	lw	a11, t0, 0 ! 1907-1907
	li	a12, 0 ! 1872-1872
	sw	sp, a9, 0 ! 0-0
	sw	sp, a5, 4 ! 0-0
	sw	sp, a13, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a7, 16 ! 0-0
	sw	sp, a2, 20 ! 0-0
	sw	sp, a10, 24 ! 0-0
	sw	sp, a4, 28 ! 0-0
	sw	sp, a6, 32 ! 0-0
	sw	sp, a3, 36 ! 0-0
	sw	sp, a11, 40 ! 0-0
	sw	sp, a8, 44 ! 0-0
	sw	sp, a0, 48 ! 0-0
	bne	a0, a12, beq_else.18334 ! 1872-1874
	j	beq_cont.18335
beq_else.18334:
	lw	a12, a8, 0 ! 1873-1873
	flw	fa0, a11, 0 ! 164-164
	fsw	a3, fa0, 0 ! 164-164
	flw	fa0, a11, 4 ! 165-165
	fsw	a3, fa0, 4 ! 165-165
	flw	fa0, a11, 8 ! 166-166
	fsw	a3, fa0, 8 ! 166-166
	lw	a14, a6, 0 ! 1216-1216
	addi	a14, a14, -1 ! 1216-1216
	sw	sp, a12, 52 ! 0-0
	mv	a1, a14
	mv	a0, a11
	mv	a21, a4
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52 ! 0-0
	lw	a1, a0, 472 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a2, sp, 24 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a2, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a2, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 56 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fisneg
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18336 ! 1850-1853
	lw	a0, sp, 52 ! 0-0
	lw	a1, a0, 472 ! 1853-1853
	li	a2, l.13801 ! 1853-1853
	flw	fa0, a2, 0 ! 1853-1853
	flw	fa1, sp, 56 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	beq_cont.18337
beq_else.18336:
	lw	a0, sp, 52 ! 0-0
	lw	a1, a0, 476 ! 1851-1851
	li	a2, l.13778 ! 1851-1851
	flw	fa0, a2, 0 ! 1851-1851
	flw	fa1, sp, 56 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
beq_cont.18337:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 52 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
beq_cont.18335:
	li	a0, 1 ! 1876-1876
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.18338 ! 1876-1878
	j	beq_cont.18339
beq_else.18338:
	lw	a0, sp, 44 ! 0-0
	lw	a2, a0, 4 ! 1877-1877
	lw	a3, sp, 40 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	lw	a4, sp, 36 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a5, sp, 32 ! 0-0
	lw	a6, a5, 0 ! 1216-1216
	addi	a6, a6, -1 ! 1216-1216
	lw	a21, sp, 28 ! 0-0
	sw	sp, a2, 60 ! 0-0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60 ! 0-0
	lw	a1, a0, 472 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a2, sp, 24 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a2, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a2, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 64 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fisneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18340 ! 1850-1853
	lw	a0, sp, 60 ! 0-0
	lw	a1, a0, 472 ! 1853-1853
	li	a2, l.13801 ! 1853-1853
	flw	fa0, a2, 0 ! 1853-1853
	flw	fa1, sp, 64 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	j	beq_cont.18341
beq_else.18340:
	lw	a0, sp, 60 ! 0-0
	lw	a1, a0, 476 ! 1851-1851
	li	a2, l.13778 ! 1851-1851
	flw	fa0, a2, 0 ! 1851-1851
	flw	fa1, sp, 64 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.18341:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 60 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.18339:
	li	a0, 2 ! 1880-1880
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.18342 ! 1880-1882
	j	beq_cont.18343
beq_else.18342:
	lw	a0, sp, 44 ! 0-0
	lw	a2, a0, 8 ! 1881-1881
	lw	a3, sp, 40 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	lw	a4, sp, 36 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a5, sp, 32 ! 0-0
	lw	a6, a5, 0 ! 1216-1216
	addi	a6, a6, -1 ! 1216-1216
	lw	a21, sp, 28 ! 0-0
	sw	sp, a2, 68 ! 0-0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 68 ! 0-0
	lw	a1, a0, 472 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a2, sp, 24 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a2, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a2, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 72 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fisneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18344 ! 1850-1853
	lw	a0, sp, 68 ! 0-0
	lw	a1, a0, 472 ! 1853-1853
	li	a2, l.13801 ! 1853-1853
	flw	fa0, a2, 0 ! 1853-1853
	flw	fa1, sp, 72 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	j	beq_cont.18345
beq_else.18344:
	lw	a0, sp, 68 ! 0-0
	lw	a1, a0, 476 ! 1851-1851
	li	a2, l.13778 ! 1851-1851
	flw	fa0, a2, 0 ! 1851-1851
	flw	fa1, sp, 72 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
beq_cont.18345:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 68 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
beq_cont.18343:
	li	a0, 3 ! 1884-1884
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.18346 ! 1884-1886
	j	beq_cont.18347
beq_else.18346:
	lw	a0, sp, 44 ! 0-0
	lw	a2, a0, 12 ! 1885-1885
	lw	a3, sp, 40 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	lw	a4, sp, 36 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a5, sp, 32 ! 0-0
	lw	a6, a5, 0 ! 1216-1216
	addi	a6, a6, -1 ! 1216-1216
	lw	a21, sp, 28 ! 0-0
	sw	sp, a2, 76 ! 0-0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 76 ! 0-0
	lw	a1, a0, 472 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a2, sp, 24 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a2, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a2, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 80 ! 0-0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_fisneg
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18348 ! 1850-1853
	lw	a0, sp, 76 ! 0-0
	lw	a1, a0, 472 ! 1853-1853
	li	a2, l.13801 ! 1853-1853
	flw	fa0, a2, 0 ! 1853-1853
	flw	fa1, sp, 80 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	j	beq_cont.18349
beq_else.18348:
	lw	a0, sp, 76 ! 0-0
	lw	a1, a0, 476 ! 1851-1851
	li	a2, l.13778 ! 1851-1851
	flw	fa0, a2, 0 ! 1851-1851
	flw	fa1, sp, 80 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
beq_cont.18349:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 76 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
beq_cont.18347:
	li	a0, 4 ! 1888-1888
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.18350 ! 1888-1890
	j	beq_cont.18351
beq_else.18350:
	lw	a0, sp, 44 ! 0-0
	lw	a0, a0, 16 ! 1889-1889
	lw	a1, sp, 40 ! 0-0
	flw	fa0, a1, 0 ! 164-164
	lw	a2, sp, 36 ! 0-0
	fsw	a2, fa0, 0 ! 164-164
	flw	fa0, a1, 4 ! 165-165
	fsw	a2, fa0, 4 ! 165-165
	flw	fa0, a1, 8 ! 166-166
	fsw	a2, fa0, 8 ! 166-166
	lw	a2, sp, 32 ! 0-0
	lw	a2, a2, 0 ! 1216-1216
	addi	a2, a2, -1 ! 1216-1216
	lw	a21, sp, 28 ! 0-0
	sw	sp, a0, 84 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 84 ! 0-0
	lw	a1, a0, 472 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a2, sp, 24 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a2, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a2, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 88 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fisneg
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18352 ! 1850-1853
	lw	a0, sp, 84 ! 0-0
	lw	a1, a0, 472 ! 1853-1853
	li	a2, l.13801 ! 1853-1853
	flw	fa0, a2, 0 ! 1853-1853
	flw	fa1, sp, 88 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	j	beq_cont.18353
beq_else.18352:
	lw	a0, sp, 84 ! 0-0
	lw	a1, a0, 476 ! 1851-1851
	li	a2, l.13778 ! 1851-1851
	flw	fa0, a2, 0 ! 1851-1851
	flw	fa1, sp, 88 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
beq_cont.18353:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 84 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
beq_cont.18351:
	lw	a0, sp, 12 ! 0-0
	slli	a0, a0, 2 ! 1908-1908
	lw	a1, sp, 8 ! 0-0
	add	t0, a1, a0 ! 1908-1908
	lw	a1, t0, 0 ! 1908-1908
	lw	a0, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	vecaccumv.2518
calc_diffuse_using_5points.2828:
	lw	a5, a21, 8 ! 0-0
	lw	a6, a21, 4 ! 0-0
	slli	a7, a0, 2 ! 1917-1917
	add	t0, a1, a7 ! 1917-1917
	lw	a1, t0, 0 ! 1917-1917
	lw	a1, a1, 20 ! 497-499
	addi	a7, a0, -1 ! 1918-1918
	slli	a7, a7, 2 ! 1918-1918
	add	t0, a2, a7 ! 1918-1918
	lw	a7, t0, 0 ! 1918-1918
	lw	a7, a7, 20 ! 497-499
	slli	a8, a0, 2 ! 1919-1919
	add	t0, a2, a8 ! 1919-1919
	lw	a8, t0, 0 ! 1919-1919
	lw	a8, a8, 20 ! 497-499
	addi	a9, a0, 1 ! 1920-1920
	slli	a9, a9, 2 ! 1920-1920
	add	t0, a2, a9 ! 1920-1920
	lw	a9, t0, 0 ! 1920-1920
	lw	a9, a9, 20 ! 497-499
	slli	a10, a0, 2 ! 1921-1921
	add	t0, a3, a10 ! 1921-1921
	lw	a3, t0, 0 ! 1921-1921
	lw	a3, a3, 20 ! 497-499
	slli	a10, a4, 2 ! 1923-1923
	add	t0, a1, a10 ! 1923-1923
	lw	a1, t0, 0 ! 1923-1923
	flw	fa0, a1, 0 ! 164-164
	fsw	a6, fa0, 0 ! 164-164
	flw	fa0, a1, 4 ! 165-165
	fsw	a6, fa0, 4 ! 165-165
	flw	fa0, a1, 8 ! 166-166
	fsw	a6, fa0, 8 ! 166-166
	slli	a1, a4, 2 ! 1924-1924
	add	t0, a7, a1 ! 1924-1924
	lw	a1, t0, 0 ! 1924-1924
	flw	fa0, a6, 0 ! 210-210
	flw	fa1, a1, 0 ! 210-210
	fadd.s	fa0, fa0, fa1, rne ! 210-210
	fsw	a6, fa0, 0 ! 210-210
	flw	fa0, a6, 4 ! 211-211
	flw	fa1, a1, 4 ! 211-211
	fadd.s	fa0, fa0, fa1, rne ! 211-211
	fsw	a6, fa0, 4 ! 211-211
	flw	fa0, a6, 8 ! 212-212
	flw	fa1, a1, 8 ! 212-212
	fadd.s	fa0, fa0, fa1, rne ! 212-212
	fsw	a6, fa0, 8 ! 212-212
	slli	a1, a4, 2 ! 1925-1925
	add	t0, a8, a1 ! 1925-1925
	lw	a1, t0, 0 ! 1925-1925
	flw	fa0, a6, 0 ! 210-210
	flw	fa1, a1, 0 ! 210-210
	fadd.s	fa0, fa0, fa1, rne ! 210-210
	fsw	a6, fa0, 0 ! 210-210
	flw	fa0, a6, 4 ! 211-211
	flw	fa1, a1, 4 ! 211-211
	fadd.s	fa0, fa0, fa1, rne ! 211-211
	fsw	a6, fa0, 4 ! 211-211
	flw	fa0, a6, 8 ! 212-212
	flw	fa1, a1, 8 ! 212-212
	fadd.s	fa0, fa0, fa1, rne ! 212-212
	fsw	a6, fa0, 8 ! 212-212
	slli	a1, a4, 2 ! 1926-1926
	add	t0, a9, a1 ! 1926-1926
	lw	a1, t0, 0 ! 1926-1926
	flw	fa0, a6, 0 ! 210-210
	flw	fa1, a1, 0 ! 210-210
	fadd.s	fa0, fa0, fa1, rne ! 210-210
	fsw	a6, fa0, 0 ! 210-210
	flw	fa0, a6, 4 ! 211-211
	flw	fa1, a1, 4 ! 211-211
	fadd.s	fa0, fa0, fa1, rne ! 211-211
	fsw	a6, fa0, 4 ! 211-211
	flw	fa0, a6, 8 ! 212-212
	flw	fa1, a1, 8 ! 212-212
	fadd.s	fa0, fa0, fa1, rne ! 212-212
	fsw	a6, fa0, 8 ! 212-212
	slli	a1, a4, 2 ! 1927-1927
	add	t0, a3, a1 ! 1927-1927
	lw	a1, t0, 0 ! 1927-1927
	flw	fa0, a6, 0 ! 210-210
	flw	fa1, a1, 0 ! 210-210
	fadd.s	fa0, fa0, fa1, rne ! 210-210
	fsw	a6, fa0, 0 ! 210-210
	flw	fa0, a6, 4 ! 211-211
	flw	fa1, a1, 4 ! 211-211
	fadd.s	fa0, fa0, fa1, rne ! 211-211
	fsw	a6, fa0, 4 ! 211-211
	flw	fa0, a6, 8 ! 212-212
	flw	fa1, a1, 8 ! 212-212
	fadd.s	fa0, fa0, fa1, rne ! 212-212
	fsw	a6, fa0, 8 ! 212-212
	slli	a0, a0, 2 ! 1929-1929
	add	t0, a2, a0 ! 1929-1929
	lw	a0, t0, 0 ! 1929-1929
	lw	a0, a0, 16 ! 490-492
	slli	a1, a4, 2 ! 1930-1930
	add	t0, a0, a1 ! 1930-1930
	lw	a1, t0, 0 ! 1930-1930
	mv	a2, a6
	mv	a0, a5
	j	vecaccumv.2518
do_without_neighbors.2834:
	lw	a2, a21, 16 ! 0-0
	lw	a3, a21, 12 ! 0-0
	lw	a4, a21, 8 ! 0-0
	lw	a5, a21, 4 ! 0-0
	li	a6, 4 ! 1936-1936
	blt	a6, a1, bge_else.18354 ! 1936-1946
	lw	a6, a0, 8 ! 476-478
	li	a7, 0 ! 1939-1939
	slli	a8, a1, 2 ! 1939-1939
	add	t0, a6, a8 ! 1939-1939
	lw	a6, t0, 0 ! 1939-1939
	blt	a6, a7, bge_else.18355 ! 1939-1945
	lw	a6, a0, 12 ! 483-485
	slli	a7, a1, 2 ! 1941-1941
	add	t0, a6, a7 ! 1941-1941
	lw	a6, t0, 0 ! 1941-1941
	li	a7, 0 ! 1941-1943
	sw	sp, a21, 0 ! 0-0
	sw	sp, a5, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	bne	a6, a7, beq_else.18356 ! 1941-1943
	j	beq_cont.18357
beq_else.18356:
	lw	a6, a0, 20 ! 497-499
	lw	a7, a0, 28 ! 527-529
	lw	a8, a0, 4 ! 468-470
	lw	a9, a0, 16 ! 490-492
	slli	a10, a1, 2 ! 1903-1903
	add	t0, a6, a10 ! 1903-1903
	lw	a6, t0, 0 ! 1903-1903
	flw	fa0, a6, 0 ! 164-164
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a6, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a6, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a6, a0, 24 ! 513-515
	lw	a6, a6, 0 ! 515-515
	slli	a10, a1, 2 ! 1906-1906
	add	t0, a7, a10 ! 1906-1906
	lw	a7, t0, 0 ! 1906-1906
	slli	a10, a1, 2 ! 1907-1907
	add	t0, a8, a10 ! 1907-1907
	lw	a8, t0, 0 ! 1907-1907
	sw	sp, a4, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	sw	sp, a9, 24 ! 0-0
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
	lw	a0, sp, 12 ! 0-0
	slli	a1, a0, 2 ! 1908-1908
	lw	a2, sp, 24 ! 0-0
	add	t0, a2, a1 ! 1908-1908
	lw	a1, t0, 0 ! 1908-1908
	lw	a2, sp, 20 ! 0-0
	lw	a3, sp, 16 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	vecaccumv.2518
	addi	sp, sp, -32
	lw	ra, sp, 28
beq_cont.18357:
	lw	a0, sp, 12 ! 0-0
	addi	a1, a0, 1 ! 1944-1944
	li	a0, 4 ! 1936-1936
	blt	a0, a1, bge_else.18358 ! 1936-1946
	lw	a0, sp, 8 ! 0-0
	lw	a2, a0, 8 ! 476-478
	li	a3, 0 ! 1939-1939
	slli	a4, a1, 2 ! 1939-1939
	add	t0, a2, a4 ! 1939-1939
	lw	a2, t0, 0 ! 1939-1939
	blt	a2, a3, bge_else.18359 ! 1939-1945
	lw	a2, a0, 12 ! 483-485
	slli	a3, a1, 2 ! 1941-1941
	add	t0, a2, a3 ! 1941-1941
	lw	a2, t0, 0 ! 1941-1941
	li	a3, 0 ! 1941-1943
	sw	sp, a1, 28 ! 0-0
	bne	a2, a3, beq_else.18360 ! 1941-1943
	j	beq_cont.18361
beq_else.18360:
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
beq_cont.18361:
	lw	a0, sp, 28 ! 0-0
	addi	a1, a0, 1 ! 1944-1944
	lw	a0, sp, 8 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18359:
	ret ! 1945-1945
bge_else.18358:
	ret ! 1946-1946
bge_else.18355:
	ret ! 1945-1945
bge_else.18354:
	ret ! 1946-1946
try_exploit_neighbors.2850:
	lw	a6, a21, 12 ! 0-0
	lw	a7, a21, 8 ! 0-0
	lw	a8, a21, 4 ! 0-0
	slli	a9, a0, 2 ! 1988-1988
	add	t0, a3, a9 ! 1988-1988
	lw	a9, t0, 0 ! 1988-1988
	li	a10, 4 ! 1989-1989
	blt	a10, a5, bge_else.18362 ! 1989-2008
	li	a10, 0 ! 1992-1992
	lw	a11, a9, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	blt	a11, a10, bge_else.18363 ! 1992-2007
	slli	a10, a0, 2 ! 1970-1970
	add	t0, a3, a10 ! 1970-1970
	lw	a10, t0, 0 ! 1970-1970
	lw	a10, a10, 8 ! 476-478
	slli	a11, a5, 2 ! 1964-1964
	add	t0, a10, a11 ! 1964-1964
	lw	a10, t0, 0 ! 1964-1964
	slli	a11, a0, 2 ! 1972-1972
	add	t0, a2, a11 ! 1972-1972
	lw	a11, t0, 0 ! 1972-1972
	lw	a11, a11, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	bne	a11, a10, beq_else.18364 ! 1972-1980
	slli	a11, a0, 2 ! 1973-1973
	add	t0, a4, a11 ! 1973-1973
	lw	a11, t0, 0 ! 1973-1973
	lw	a11, a11, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	bne	a11, a10, beq_else.18366 ! 1973-1979
	addi	a11, a0, -1 ! 1974-1974
	slli	a11, a11, 2 ! 1974-1974
	add	t0, a3, a11 ! 1974-1974
	lw	a11, t0, 0 ! 1974-1974
	lw	a11, a11, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	bne	a11, a10, beq_else.18368 ! 1974-1978
	addi	a11, a0, 1 ! 1975-1975
	slli	a11, a11, 2 ! 1975-1975
	add	t0, a3, a11 ! 1975-1975
	lw	a11, t0, 0 ! 1975-1975
	lw	a11, a11, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	bne	a11, a10, beq_else.18370 ! 1975-1977
	li	a10, 1 ! 1976-1976
	j	beq_cont.18371
beq_else.18370:
	li	a10, 0 ! 1977-1977
beq_cont.18371:
	j	beq_cont.18369
beq_else.18368:
	li	a10, 0 ! 1978-1978
beq_cont.18369:
	j	beq_cont.18367
beq_else.18366:
	li	a10, 0 ! 1979-1979
beq_cont.18367:
	j	beq_cont.18365
beq_else.18364:
	li	a10, 0 ! 1980-1980
beq_cont.18365:
	li	a11, 0 ! 1994-2006
	bne	a10, a11, beq_else.18372 ! 1994-2006
	slli	a0, a0, 2 ! 2006-2006
	add	t0, a3, a0 ! 2006-2006
	lw	a0, t0, 0 ! 2006-2006
	li	a1, 4 ! 1936-1936
	blt	a1, a5, bge_else.18373 ! 1936-1946
	lw	a1, a0, 8 ! 476-478
	li	a2, 0 ! 1939-1939
	slli	a3, a5, 2 ! 1939-1939
	add	t0, a1, a3 ! 1939-1939
	lw	a1, t0, 0 ! 1939-1939
	blt	a1, a2, bge_else.18374 ! 1939-1945
	lw	a1, a0, 12 ! 483-485
	slli	a2, a5, 2 ! 1941-1941
	add	t0, a1, a2 ! 1941-1941
	lw	a1, t0, 0 ! 1941-1941
	li	a2, 0 ! 1941-1943
	sw	sp, a0, 0 ! 0-0
	sw	sp, a6, 4 ! 0-0
	sw	sp, a5, 8 ! 0-0
	bne	a1, a2, beq_else.18375 ! 1941-1943
	j	beq_cont.18376
beq_else.18375:
	mv	a1, a5
	mv	a21, a8
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
beq_cont.18376:
	lw	a0, sp, 8 ! 0-0
	addi	a1, a0, 1 ! 1944-1944
	lw	a0, sp, 0 ! 0-0
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18374:
	ret ! 1945-1945
bge_else.18373:
	ret ! 1946-1946
beq_else.18372:
	lw	a8, a9, 12 ! 483-485
	slli	a9, a5, 2 ! 1998-1998
	add	t0, a8, a9 ! 1998-1998
	lw	a8, t0, 0 ! 1998-1998
	li	a9, 0 ! 1998-2000
	sw	sp, a1, 12 ! 0-0
	sw	sp, a21, 16 ! 0-0
	sw	sp, a7, 20 ! 0-0
	sw	sp, a6, 4 ! 0-0
	sw	sp, a4, 24 ! 0-0
	sw	sp, a2, 28 ! 0-0
	sw	sp, a3, 32 ! 0-0
	sw	sp, a0, 36 ! 0-0
	sw	sp, a5, 8 ! 0-0
	bne	a8, a9, beq_else.18377 ! 1998-2000
	j	beq_cont.18378
beq_else.18377:
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
beq_cont.18378:
	lw	a0, sp, 8 ! 0-0
	addi	a1, a0, 1 ! 2003-2003
	lw	a0, sp, 36 ! 0-0
	slli	a2, a0, 2 ! 1988-1988
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1988-1988
	lw	a2, t0, 0 ! 1988-1988
	li	a4, 4 ! 1989-1989
	blt	a4, a1, bge_else.18379 ! 1989-2008
	li	a4, 0 ! 1992-1992
	lw	a5, a2, 8 ! 476-478
	slli	a6, a1, 2 ! 1964-1964
	add	t0, a5, a6 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	blt	a5, a4, bge_else.18380 ! 1992-2007
	slli	a4, a0, 2 ! 1970-1970
	add	t0, a3, a4 ! 1970-1970
	lw	a4, t0, 0 ! 1970-1970
	lw	a4, a4, 8 ! 476-478
	slli	a5, a1, 2 ! 1964-1964
	add	t0, a4, a5 ! 1964-1964
	lw	a4, t0, 0 ! 1964-1964
	slli	a5, a0, 2 ! 1972-1972
	lw	a6, sp, 28 ! 0-0
	add	t0, a6, a5 ! 1972-1972
	lw	a5, t0, 0 ! 1972-1972
	lw	a5, a5, 8 ! 476-478
	slli	a7, a1, 2 ! 1964-1964
	add	t0, a5, a7 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	bne	a5, a4, beq_else.18381 ! 1972-1980
	slli	a5, a0, 2 ! 1973-1973
	lw	a7, sp, 24 ! 0-0
	add	t0, a7, a5 ! 1973-1973
	lw	a5, t0, 0 ! 1973-1973
	lw	a5, a5, 8 ! 476-478
	slli	a8, a1, 2 ! 1964-1964
	add	t0, a5, a8 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	bne	a5, a4, beq_else.18383 ! 1973-1979
	addi	a5, a0, -1 ! 1974-1974
	slli	a5, a5, 2 ! 1974-1974
	add	t0, a3, a5 ! 1974-1974
	lw	a5, t0, 0 ! 1974-1974
	lw	a5, a5, 8 ! 476-478
	slli	a8, a1, 2 ! 1964-1964
	add	t0, a5, a8 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	bne	a5, a4, beq_else.18385 ! 1974-1978
	addi	a5, a0, 1 ! 1975-1975
	slli	a5, a5, 2 ! 1975-1975
	add	t0, a3, a5 ! 1975-1975
	lw	a5, t0, 0 ! 1975-1975
	lw	a5, a5, 8 ! 476-478
	slli	a8, a1, 2 ! 1964-1964
	add	t0, a5, a8 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	bne	a5, a4, beq_else.18387 ! 1975-1977
	li	a4, 1 ! 1976-1976
	j	beq_cont.18388
beq_else.18387:
	li	a4, 0 ! 1977-1977
beq_cont.18388:
	j	beq_cont.18386
beq_else.18385:
	li	a4, 0 ! 1978-1978
beq_cont.18386:
	j	beq_cont.18384
beq_else.18383:
	li	a4, 0 ! 1979-1979
beq_cont.18384:
	j	beq_cont.18382
beq_else.18381:
	li	a4, 0 ! 1980-1980
beq_cont.18382:
	li	a5, 0 ! 1994-2006
	bne	a4, a5, beq_else.18389 ! 1994-2006
	slli	a0, a0, 2 ! 2006-2006
	add	t0, a3, a0 ! 2006-2006
	lw	a0, t0, 0 ! 2006-2006
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.18389:
	lw	a2, a2, 12 ! 483-485
	slli	a4, a1, 2 ! 1998-1998
	add	t0, a2, a4 ! 1998-1998
	lw	a2, t0, 0 ! 1998-1998
	li	a4, 0 ! 1998-2000
	sw	sp, a1, 40 ! 0-0
	bne	a2, a4, beq_else.18390 ! 1998-2000
	j	beq_cont.18391
beq_else.18390:
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 20 ! 0-0
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
beq_cont.18391:
	lw	a0, sp, 40 ! 0-0
	addi	a5, a0, 1 ! 2003-2003
	lw	a0, sp, 36 ! 0-0
	lw	a1, sp, 12 ! 0-0
	lw	a2, sp, 28 ! 0-0
	lw	a3, sp, 32 ! 0-0
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 16 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18380:
	ret ! 2007-2007
bge_else.18379:
	ret ! 2008-2008
bge_else.18363:
	ret ! 2007-2007
bge_else.18362:
	ret ! 2008-2008
write_rgb.2861:
	lw	a0, a21, 4 ! 0-0
	flw	fa0, a0, 0 ! 2035-2035
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.18392 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18394 ! 2030-2030
	j	bge_cont.18395
bge_else.18394:
	li	a0, 0 ! 2030-2030
bge_cont.18395:
	j	bge_cont.18393
bge_else.18392:
	li	a0, 255 ! 2030-2030
bge_cont.18393:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2036-2036
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0-0
	flw	fa0, a0, 4 ! 2037-2037
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.18396 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18398 ! 2030-2030
	j	bge_cont.18399
bge_else.18398:
	li	a0, 0 ! 2030-2030
bge_cont.18399:
	j	bge_cont.18397
bge_else.18396:
	li	a0, 255 ! 2030-2030
bge_cont.18397:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2038-2038
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0-0
	flw	fa0, a0, 8 ! 2039-2039
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.18400 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18402 ! 2030-2030
	j	bge_cont.18403
bge_else.18402:
	li	a0, 0 ! 2030-2030
bge_cont.18403:
	j	bge_cont.18401
bge_else.18400:
	li	a0, 255 ! 2030-2030
bge_cont.18401:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 2040-2040
	j	min_caml_print_char
pretrace_diffuse_rays.2863:
	lw	a2, a21, 28 ! 0-0
	lw	a3, a21, 24 ! 0-0
	lw	a4, a21, 20 ! 0-0
	lw	a5, a21, 16 ! 0-0
	lw	a6, a21, 12 ! 0-0
	lw	a7, a21, 8 ! 0-0
	lw	a8, a21, 4 ! 0-0
	li	a9, 4 ! 2052-2052
	blt	a9, a1, bge_else.18404 ! 2052-2076
	lw	a9, a0, 8 ! 476-478
	slli	a10, a1, 2 ! 1964-1964
	add	t0, a9, a10 ! 1964-1964
	lw	a9, t0, 0 ! 1964-1964
	li	a10, 0 ! 2056-2056
	blt	a9, a10, bge_else.18405 ! 2056-2075
	lw	a9, a0, 12 ! 483-485
	slli	a10, a1, 2 ! 2059-2059
	add	t0, a9, a10 ! 2059-2059
	lw	a9, t0, 0 ! 2059-2059
	li	a10, 0 ! 2059-2073
	sw	sp, a21, 0 ! 0-0
	sw	sp, a6, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	sw	sp, a4, 12 ! 0-0
	sw	sp, a5, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	sw	sp, a7, 24 ! 0-0
	sw	sp, a8, 28 ! 0-0
	sw	sp, a1, 32 ! 0-0
	bne	a9, a10, beq_else.18406 ! 2059-2073
	j	beq_cont.18407
beq_else.18406:
	lw	a9, a0, 24 ! 513-515
	lw	a9, a9, 0 ! 515-515
	li	a10, l.12849 ! 159-159
	flw	fa0, a10, 0 ! 159-159
	fsw	a8, fa0, 0 ! 152-152
	fsw	a8, fa0, 4 ! 153-153
	fsw	a8, fa0, 8 ! 154-154
	lw	a10, a0, 28 ! 527-529
	lw	a11, a0, 4 ! 468-470
	slli	a9, a9, 2 ! 2068-2068
	add	t0, a7, a9 ! 2068-2068
	lw	a9, t0, 0 ! 2068-2068
	slli	a12, a1, 2 ! 2069-2069
	add	t0, a10, a12 ! 2069-2069
	lw	a10, t0, 0 ! 2069-2069
	slli	a12, a1, 2 ! 2070-2070
	add	t0, a11, a12 ! 2070-2070
	lw	a11, t0, 0 ! 2070-2070
	flw	fa0, a11, 0 ! 164-164
	fsw	a3, fa0, 0 ! 164-164
	flw	fa0, a11, 4 ! 165-165
	fsw	a3, fa0, 4 ! 165-165
	flw	fa0, a11, 8 ! 166-166
	fsw	a3, fa0, 8 ! 166-166
	lw	a12, a5, 0 ! 1216-1216
	addi	a12, a12, -1 ! 1216-1216
	sw	sp, a0, 36 ! 0-0
	sw	sp, a11, 40 ! 0-0
	sw	sp, a10, 44 ! 0-0
	sw	sp, a9, 48 ! 0-0
	mv	a1, a12
	mv	a0, a11
	mv	a21, a4
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a3, 118 ! 1865-1865
	lw	a0, sp, 48 ! 0-0
	lw	a1, sp, 44 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 36 ! 0-0
	lw	a1, a0, 20 ! 497-499
	lw	a2, sp, 32 ! 0-0
	slli	a3, a2, 2 ! 2072-2072
	add	t0, a1, a3 ! 2072-2072
	lw	a1, t0, 0 ! 2072-2072
	lw	a3, sp, 28 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	fsw	a1, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a1, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a1, fa0, 8 ! 166-166
beq_cont.18407:
	lw	a1, sp, 32 ! 0-0
	addi	a1, a1, 1 ! 2074-2074
	li	a2, 4 ! 2052-2052
	blt	a2, a1, bge_else.18408 ! 2052-2076
	lw	a2, a0, 8 ! 476-478
	slli	a3, a1, 2 ! 1964-1964
	add	t0, a2, a3 ! 1964-1964
	lw	a2, t0, 0 ! 1964-1964
	li	a3, 0 ! 2056-2056
	blt	a2, a3, bge_else.18409 ! 2056-2075
	lw	a2, a0, 12 ! 483-485
	slli	a3, a1, 2 ! 2059-2059
	add	t0, a2, a3 ! 2059-2059
	lw	a2, t0, 0 ! 2059-2059
	li	a3, 0 ! 2059-2073
	sw	sp, a1, 52 ! 0-0
	bne	a2, a3, beq_else.18410 ! 2059-2073
	j	beq_cont.18411
beq_else.18410:
	lw	a2, a0, 24 ! 513-515
	lw	a2, a2, 0 ! 515-515
	li	a3, l.12849 ! 159-159
	flw	fa0, a3, 0 ! 159-159
	lw	a3, sp, 28 ! 0-0
	fsw	a3, fa0, 0 ! 152-152
	fsw	a3, fa0, 4 ! 153-153
	fsw	a3, fa0, 8 ! 154-154
	lw	a4, a0, 28 ! 527-529
	lw	a5, a0, 4 ! 468-470
	slli	a2, a2, 2 ! 2068-2068
	lw	a6, sp, 24 ! 0-0
	add	t0, a6, a2 ! 2068-2068
	lw	a2, t0, 0 ! 2068-2068
	slli	a6, a1, 2 ! 2069-2069
	add	t0, a4, a6 ! 2069-2069
	lw	a4, t0, 0 ! 2069-2069
	slli	a6, a1, 2 ! 2070-2070
	add	t0, a5, a6 ! 2070-2070
	lw	a5, t0, 0 ! 2070-2070
	flw	fa0, a5, 0 ! 164-164
	lw	a6, sp, 20 ! 0-0
	fsw	a6, fa0, 0 ! 164-164
	flw	fa0, a5, 4 ! 165-165
	fsw	a6, fa0, 4 ! 165-165
	flw	fa0, a5, 8 ! 166-166
	fsw	a6, fa0, 8 ! 166-166
	lw	a6, sp, 16 ! 0-0
	lw	a6, a6, 0 ! 1216-1216
	addi	a6, a6, -1 ! 1216-1216
	lw	a21, sp, 12 ! 0-0
	sw	sp, a0, 36 ! 0-0
	sw	sp, a5, 56 ! 0-0
	sw	sp, a4, 60 ! 0-0
	sw	sp, a2, 64 ! 0-0
	mv	a1, a6
	mv	a0, a5
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0-0
	lw	a1, a0, 472 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a2, sp, 60 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a2, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a2, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 68 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fisneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18412 ! 1850-1853
	lw	a0, sp, 64 ! 0-0
	lw	a1, a0, 472 ! 1853-1853
	li	a2, l.13801 ! 1853-1853
	flw	fa0, a2, 0 ! 1853-1853
	flw	fa1, sp, 68 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	j	beq_cont.18413
beq_else.18412:
	lw	a0, sp, 64 ! 0-0
	lw	a1, a0, 476 ! 1851-1851
	li	a2, l.13778 ! 1851-1851
	flw	fa0, a2, 0 ! 1851-1851
	flw	fa1, sp, 68 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
beq_cont.18413:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 64 ! 0-0
	lw	a1, sp, 60 ! 0-0
	lw	a2, sp, 56 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 36 ! 0-0
	lw	a1, a0, 20 ! 497-499
	lw	a2, sp, 52 ! 0-0
	slli	a3, a2, 2 ! 2072-2072
	add	t0, a1, a3 ! 2072-2072
	lw	a1, t0, 0 ! 2072-2072
	lw	a3, sp, 28 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	fsw	a1, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a1, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a1, fa0, 8 ! 166-166
beq_cont.18411:
	lw	a1, sp, 52 ! 0-0
	addi	a1, a1, 1 ! 2074-2074
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18409:
	ret ! 2075-2075
bge_else.18408:
	ret ! 2076-2076
bge_else.18405:
	ret ! 2075-2075
bge_else.18404:
	ret ! 2076-2076
pretrace_pixels.2866:
	lw	a3, a21, 64 ! 0-0
	lw	a4, a21, 60 ! 0-0
	lw	a5, a21, 56 ! 0-0
	lw	a6, a21, 52 ! 0-0
	lw	a7, a21, 48 ! 0-0
	lw	a8, a21, 44 ! 0-0
	lw	a9, a21, 40 ! 0-0
	lw	a10, a21, 36 ! 0-0
	lw	a11, a21, 32 ! 0-0
	lw	a12, a21, 28 ! 0-0
	lw	a13, a21, 24 ! 0-0
	lw	a14, a21, 20 ! 0-0
	lw	a15, a21, 16 ! 0-0
	lw	a16, a21, 12 ! 0-0
	lw	a17, a21, 8 ! 0-0
	lw	a18, a21, 4 ! 0-0
	li	a19, 0 ! 2082-2082
	blt	a1, a19, bge_else.18414 ! 2082-2102
	flw	fa3, a10, 0 ! 2084-2084
	lw	a10, a16, 0 ! 2084-2084
	sub	a10, a1, a10 ! 2084-2084
	sw	sp, a21, 0 ! 0-0
	sw	sp, a13, 4 ! 0-0
	sw	sp, a15, 8 ! 0-0
	sw	sp, a5, 12 ! 0-0
	sw	sp, a8, 16 ! 0-0
	sw	sp, a14, 20 ! 0-0
	sw	sp, a6, 24 ! 0-0
	sw	sp, a17, 28 ! 0-0
	sw	sp, a18, 32 ! 0-0
	sw	sp, a2, 36 ! 0-0
	sw	sp, a4, 40 ! 0-0
	sw	sp, a0, 44 ! 0-0
	sw	sp, a1, 48 ! 0-0
	sw	sp, a7, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	sw	sp, a11, 60 ! 0-0
	fsw	sp, fa2, 64 ! 0-0
	fsw	sp, fa1, 68 ! 0-0
	sw	sp, a12, 72 ! 0-0
	fsw	sp, fa0, 76 ! 0-0
	sw	sp, a9, 80 ! 0-0
	fsw	sp, fa3, 84 ! 0-0
	mv	a0, a10
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_float_of_int
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 84 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 2084-2084
	lw	a0, sp, 80 ! 0-0
	flw	fa1, a0, 0 ! 2085-2085
	fmul.s	fa1, fa0, fa1, rne ! 2085-2085
	flw	fa2, sp, 76 ! 0-0
	fadd.s	fa1, fa1, fa2, rne ! 2085-2085
	lw	a1, sp, 72 ! 0-0
	fsw	a1, fa1, 0 ! 2085-2085
	flw	fa1, a0, 4 ! 2086-2086
	fmul.s	fa1, fa0, fa1, rne ! 2086-2086
	flw	fa3, sp, 68 ! 0-0
	fadd.s	fa1, fa1, fa3, rne ! 2086-2086
	fsw	a1, fa1, 4 ! 2086-2086
	flw	fa1, a0, 8 ! 2087-2087
	fmul.s	fa0, fa0, fa1, rne ! 2087-2087
	flw	fa1, sp, 64 ! 0-0
	fadd.s	fa0, fa0, fa1, rne ! 2087-2087
	fsw	a1, fa0, 8 ! 2087-2087
	li	a0, 0 ! 2088-2088
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	vecunit_sgn.2494
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a0, l.12849 ! 159-159
	flw	fa0, a0, 0 ! 159-159
	lw	a0, sp, 60 ! 0-0
	fsw	a0, fa0, 0 ! 152-152
	fsw	a0, fa0, 4 ! 153-153
	fsw	a0, fa0, 8 ! 154-154
	lw	a1, sp, 56 ! 0-0
	flw	fa0, a1, 0 ! 164-164
	lw	a2, sp, 52 ! 0-0
	fsw	a2, fa0, 0 ! 164-164
	flw	fa0, a1, 4 ! 165-165
	fsw	a2, fa0, 4 ! 165-165
	flw	fa0, a1, 8 ! 166-166
	fsw	a2, fa0, 8 ! 166-166
	li	a1, 0 ! 2093-2093
	li	a2, l.12811 ! 2093-2093
	flw	fa0, a2, 0 ! 2093-2093
	lw	a2, sp, 48 ! 0-0
	slli	a3, a2, 2 ! 2093-2093
	lw	a4, sp, 44 ! 0-0
	add	t0, a4, a3 ! 2093-2093
	lw	a3, t0, 0 ! 2093-2093
	li	a5, l.12849 ! 2093-2093
	flw	fa1, a5, 0 ! 2093-2093
	lw	a5, sp, 72 ! 0-0
	lw	a21, sp, 40 ! 0-0
	mv	a2, a3
	mv	a0, a1
	mv	a1, a5
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 48 ! 0-0
	slli	a1, a0, 2 ! 2094-2094
	lw	a2, sp, 44 ! 0-0
	add	t0, a2, a1 ! 2094-2094
	lw	a1, t0, 0 ! 2094-2094
	lw	a1, a1, 0 ! 461-463
	lw	a3, sp, 60 ! 0-0
	flw	fa0, a3, 0 ! 164-164
	fsw	a1, fa0, 0 ! 164-164
	flw	fa0, a3, 4 ! 165-165
	fsw	a1, fa0, 4 ! 165-165
	flw	fa0, a3, 8 ! 166-166
	fsw	a1, fa0, 8 ! 166-166
	slli	a1, a0, 2 ! 2095-2095
	add	t0, a2, a1 ! 2095-2095
	lw	a1, t0, 0 ! 2095-2095
	lw	a1, a1, 24 ! 520-522
	lw	a3, sp, 36 ! 0-0
	sw	a1, a3, 0 ! 522-522
	slli	a1, a0, 2 ! 2098-2098
	add	t0, a2, a1 ! 2098-2098
	lw	a1, t0, 0 ! 2098-2098
	lw	a4, a1, 8 ! 476-478
	lw	a4, a4, 0 ! 1964-1964
	li	a5, 0 ! 2056-2056
	blt	a4, a5, bge_else.18415 ! 2056-2075
	lw	a4, a1, 12 ! 483-485
	lw	a4, a4, 0 ! 2059-2059
	li	a5, 0 ! 2059-2073
	sw	sp, a1, 88 ! 0-0
	bne	a4, a5, beq_else.18417 ! 2059-2073
	j	beq_cont.18418
beq_else.18417:
	lw	a4, a1, 24 ! 513-515
	lw	a4, a4, 0 ! 515-515
	li	a5, l.12849 ! 159-159
	flw	fa0, a5, 0 ! 159-159
	lw	a5, sp, 32 ! 0-0
	fsw	a5, fa0, 0 ! 152-152
	fsw	a5, fa0, 4 ! 153-153
	fsw	a5, fa0, 8 ! 154-154
	lw	a6, a1, 28 ! 527-529
	lw	a7, a1, 4 ! 468-470
	slli	a4, a4, 2 ! 2068-2068
	lw	a8, sp, 28 ! 0-0
	add	t0, a8, a4 ! 2068-2068
	lw	a4, t0, 0 ! 2068-2068
	lw	a6, a6, 0 ! 2069-2069
	lw	a7, a7, 0 ! 2070-2070
	flw	fa0, a7, 0 ! 164-164
	lw	a8, sp, 24 ! 0-0
	fsw	a8, fa0, 0 ! 164-164
	flw	fa0, a7, 4 ! 165-165
	fsw	a8, fa0, 4 ! 165-165
	flw	fa0, a7, 8 ! 166-166
	fsw	a8, fa0, 8 ! 166-166
	lw	a8, sp, 20 ! 0-0
	lw	a8, a8, 0 ! 1216-1216
	addi	a8, a8, -1 ! 1216-1216
	lw	a21, sp, 16 ! 0-0
	sw	sp, a7, 92 ! 0-0
	sw	sp, a6, 96 ! 0-0
	sw	sp, a4, 100 ! 0-0
	mv	a1, a8
	mv	a0, a7
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 100 ! 0-0
	lw	a1, a0, 472 ! 1846-1846
	lw	a1, a1, 0 ! 538-539
	flw	fa0, a1, 0 ! 193-193
	lw	a2, sp, 96 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 4 ! 193-193
	flw	fa2, a2, 4 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	flw	fa1, a1, 8 ! 193-193
	flw	fa2, a2, 8 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	fadd.s	fa0, fa0, fa1, rne ! 193-193
	fsw	sp, fa0, 104 ! 0-0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_fisneg
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 1850-1853
	bne	a0, a1, beq_else.18419 ! 1850-1853
	lw	a0, sp, 100 ! 0-0
	lw	a1, a0, 472 ! 1853-1853
	li	a2, l.13801 ! 1853-1853
	flw	fa0, a2, 0 ! 1853-1853
	flw	fa1, sp, 104 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1853-1853
	lw	a21, sp, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
	j	beq_cont.18420
beq_else.18419:
	lw	a0, sp, 100 ! 0-0
	lw	a1, a0, 476 ! 1851-1851
	li	a2, l.13778 ! 1851-1851
	flw	fa0, a2, 0 ! 1851-1851
	flw	fa1, sp, 104 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 1851-1851
	lw	a21, sp, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
beq_cont.18420:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 100 ! 0-0
	lw	a1, sp, 96 ! 0-0
	lw	a2, sp, 92 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
	lw	a0, sp, 88 ! 0-0
	lw	a1, a0, 20 ! 497-499
	lw	a1, a1, 0 ! 2072-2072
	lw	a2, sp, 32 ! 0-0
	flw	fa0, a2, 0 ! 164-164
	fsw	a1, fa0, 0 ! 164-164
	flw	fa0, a2, 4 ! 165-165
	fsw	a1, fa0, 4 ! 165-165
	flw	fa0, a2, 8 ! 166-166
	fsw	a1, fa0, 8 ! 166-166
beq_cont.18418:
	li	a1, 1 ! 2074-2074
	lw	a0, sp, 88 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
	j	bge_cont.18416
bge_else.18415:
bge_cont.18416:
	lw	a0, sp, 48 ! 0-0
	addi	a1, a0, -1 ! 2100-2100
	lw	a0, sp, 36 ! 0-0
	addi	a0, a0, 1 ! 129-129
	li	a2, 5 ! 130-130
	blt	a0, a2, bge_else.18421 ! 130-130
	addi	a2, a0, -5 ! 130-130
	j	bge_cont.18422
bge_else.18421:
	mv	a2, a0 ! 130-130
bge_cont.18422:
	flw	fa0, sp, 76 ! 0-0
	flw	fa1, sp, 68 ! 0-0
	flw	fa2, sp, 64 ! 0-0
	lw	a0, sp, 44 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18414:
	ret ! 2102-2102
pretrace_line.2873:
	lw	a3, a21, 24 ! 0-0
	lw	a4, a21, 20 ! 0-0
	lw	a5, a21, 16 ! 0-0
	lw	a6, a21, 12 ! 0-0
	lw	a7, a21, 8 ! 0-0
	lw	a8, a21, 4 ! 0-0
	flw	fa0, a5, 0 ! 2107-2107
	lw	a5, a8, 4 ! 2107-2107
	sub	a1, a1, a5 ! 2107-2107
	sw	sp, a2, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, a6, 8 ! 0-0
	sw	sp, a7, 12 ! 0-0
	sw	sp, a3, 16 ! 0-0
	sw	sp, a4, 20 ! 0-0
	fsw	sp, fa0, 24 ! 0-0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 2107-2107
	lw	a0, sp, 20 ! 0-0
	flw	fa1, a0, 0 ! 2110-2110
	fmul.s	fa1, fa0, fa1, rne ! 2110-2110
	lw	a1, sp, 16 ! 0-0
	flw	fa2, a1, 0 ! 2110-2110
	fadd.s	fa1, fa1, fa2, rne ! 2110-2110
	flw	fa2, a0, 4 ! 2111-2111
	fmul.s	fa2, fa0, fa2, rne ! 2111-2111
	flw	fa3, a1, 4 ! 2111-2111
	fadd.s	fa2, fa2, fa3, rne ! 2111-2111
	flw	fa3, a0, 8 ! 2112-2112
	fmul.s	fa0, fa0, fa3, rne ! 2112-2112
	flw	fa3, a1, 8 ! 2112-2112
	fadd.s	fa0, fa0, fa3, rne ! 2112-2112
	lw	a0, sp, 12 ! 0-0
	lw	a0, a0, 0 ! 2113-2113
	addi	a1, a0, -1 ! 2113-2113
	lw	a0, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	lw	a21, sp, 8 ! 0-0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_pixel.2877:
	lw	a5, a21, 28 ! 0-0
	lw	a6, a21, 24 ! 0-0
	lw	a7, a21, 20 ! 0-0
	lw	a8, a21, 16 ! 0-0
	lw	a9, a21, 12 ! 0-0
	lw	a10, a21, 8 ! 0-0
	lw	a11, a21, 4 ! 0-0
	lw	a12, a8, 0 ! 2123-2123
	blt	a0, a12, bge_else.18423 ! 2123-2138
	ret ! 2138-2138
bge_else.18423:
	slli	a12, a0, 2 ! 2126-2126
	add	t0, a3, a12 ! 2126-2126
	lw	a12, t0, 0 ! 2126-2126
	lw	a12, a12, 0 ! 461-463
	flw	fa0, a12, 0 ! 164-164
	fsw	a7, fa0, 0 ! 164-164
	flw	fa0, a12, 4 ! 165-165
	fsw	a7, fa0, 4 ! 165-165
	flw	fa0, a12, 8 ! 166-166
	fsw	a7, fa0, 8 ! 166-166
	lw	a12, a8, 4 ! 1951-1951
	addi	a13, a1, 1 ! 1951-1951
	blt	a13, a12, bge_else.18424 ! 1951-1959
	li	a12, 0 ! 1959-1959
	j	bge_cont.18425
bge_else.18424:
	li	a12, 0 ! 1952-1952
	blt	a12, a1, bge_else.18426 ! 1952-1958
	li	a12, 0 ! 1958-1958
	j	bge_cont.18427
bge_else.18426:
	lw	a12, a8, 0 ! 1953-1953
	addi	a13, a0, 1 ! 1953-1953
	blt	a13, a12, bge_else.18428 ! 1953-1957
	li	a12, 0 ! 1957-1957
	j	bge_cont.18429
bge_else.18428:
	li	a12, 0 ! 1954-1954
	blt	a12, a0, bge_else.18430 ! 1954-1956
	li	a12, 0 ! 1956-1956
	j	bge_cont.18431
bge_else.18430:
	li	a12, 1 ! 1955-1955
bge_cont.18431:
bge_cont.18429:
bge_cont.18427:
bge_cont.18425:
	li	a13, 0 ! 2129-2132
	sw	sp, a21, 0 ! 0-0
	sw	sp, a5, 4 ! 0-0
	sw	sp, a4, 8 ! 0-0
	sw	sp, a2, 12 ! 0-0
	sw	sp, a6, 16 ! 0-0
	sw	sp, a9, 20 ! 0-0
	sw	sp, a1, 24 ! 0-0
	sw	sp, a3, 28 ! 0-0
	sw	sp, a8, 32 ! 0-0
	sw	sp, a0, 36 ! 0-0
	sw	sp, a7, 40 ! 0-0
	bne	a12, a13, beq_else.18432 ! 2129-2132
	slli	a10, a0, 2 ! 2132-2132
	add	t0, a3, a10 ! 2132-2132
	lw	a10, t0, 0 ! 2132-2132
	li	a12, 0 ! 2132-2132
	lw	a13, a10, 8 ! 476-478
	li	a14, 0 ! 1939-1939
	lw	a13, a13, 0 ! 1939-1939
	blt	a13, a14, bge_else.18434 ! 1939-1945
	lw	a13, a10, 12 ! 483-485
	lw	a13, a13, 0 ! 1941-1941
	li	a14, 0 ! 1941-1943
	sw	sp, a10, 44 ! 0-0
	bne	a13, a14, beq_else.18436 ! 1941-1943
	j	beq_cont.18437
beq_else.18436:
	mv	a1, a12
	mv	a0, a10
	mv	a21, a11
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
beq_cont.18437:
	li	a1, 1 ! 1944-1944
	lw	a0, sp, 44 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	bge_cont.18435
bge_else.18434:
bge_cont.18435:
	j	beq_cont.18433
beq_else.18432:
	li	a11, 0 ! 2130-2130
	slli	a12, a0, 2 ! 1988-1988
	add	t0, a3, a12 ! 1988-1988
	lw	a12, t0, 0 ! 1988-1988
	li	a13, 0 ! 1992-1992
	lw	a14, a12, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	blt	a14, a13, bge_else.18438 ! 1992-2007
	slli	a13, a0, 2 ! 1970-1970
	add	t0, a3, a13 ! 1970-1970
	lw	a13, t0, 0 ! 1970-1970
	lw	a13, a13, 8 ! 476-478
	lw	a13, a13, 0 ! 1964-1964
	slli	a14, a0, 2 ! 1972-1972
	add	t0, a2, a14 ! 1972-1972
	lw	a14, t0, 0 ! 1972-1972
	lw	a14, a14, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	bne	a14, a13, beq_else.18440 ! 1972-1980
	slli	a14, a0, 2 ! 1973-1973
	add	t0, a4, a14 ! 1973-1973
	lw	a14, t0, 0 ! 1973-1973
	lw	a14, a14, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	bne	a14, a13, beq_else.18442 ! 1973-1979
	addi	a14, a0, -1 ! 1974-1974
	slli	a14, a14, 2 ! 1974-1974
	add	t0, a3, a14 ! 1974-1974
	lw	a14, t0, 0 ! 1974-1974
	lw	a14, a14, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	bne	a14, a13, beq_else.18444 ! 1974-1978
	addi	a14, a0, 1 ! 1975-1975
	slli	a14, a14, 2 ! 1975-1975
	add	t0, a3, a14 ! 1975-1975
	lw	a14, t0, 0 ! 1975-1975
	lw	a14, a14, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	bne	a14, a13, beq_else.18446 ! 1975-1977
	li	a13, 1 ! 1976-1976
	j	beq_cont.18447
beq_else.18446:
	li	a13, 0 ! 1977-1977
beq_cont.18447:
	j	beq_cont.18445
beq_else.18444:
	li	a13, 0 ! 1978-1978
beq_cont.18445:
	j	beq_cont.18443
beq_else.18442:
	li	a13, 0 ! 1979-1979
beq_cont.18443:
	j	beq_cont.18441
beq_else.18440:
	li	a13, 0 ! 1980-1980
beq_cont.18441:
	li	a14, 0 ! 1994-2006
	bne	a13, a14, beq_else.18448 ! 1994-2006
	slli	a10, a0, 2 ! 2006-2006
	add	t0, a3, a10 ! 2006-2006
	lw	a10, t0, 0 ! 2006-2006
	mv	a1, a11
	mv	a0, a10
	mv	a21, a9
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	beq_cont.18449
beq_else.18448:
	lw	a12, a12, 12 ! 483-485
	lw	a12, a12, 0 ! 1998-1998
	li	a13, 0 ! 1998-2000
	bne	a12, a13, beq_else.18450 ! 1998-2000
	j	beq_cont.18451
beq_else.18450:
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
beq_cont.18451:
	li	a5, 1 ! 2003-2003
	lw	a0, sp, 36 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 12 ! 0-0
	lw	a3, sp, 28 ! 0-0
	lw	a4, sp, 8 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
beq_cont.18449:
	j	bge_cont.18439
bge_else.18438:
bge_cont.18439:
beq_cont.18433:
	lw	a0, sp, 40 ! 0-0
	flw	fa0, a0, 0 ! 2035-2035
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_int_of_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.18452 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18454 ! 2030-2030
	j	bge_cont.18455
bge_else.18454:
	li	a0, 0 ! 2030-2030
bge_cont.18455:
	j	bge_cont.18453
bge_else.18452:
	li	a0, 255 ! 2030-2030
bge_cont.18453:
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 32 ! 2036-2036
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_char
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40 ! 0-0
	flw	fa0, a0, 4 ! 2037-2037
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_int_of_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.18456 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18458 ! 2030-2030
	j	bge_cont.18459
bge_else.18458:
	li	a0, 0 ! 2030-2030
bge_cont.18459:
	j	bge_cont.18457
bge_else.18456:
	li	a0, 255 ! 2030-2030
bge_cont.18457:
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 32 ! 2038-2038
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_char
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40 ! 0-0
	flw	fa0, a0, 8 ! 2039-2039
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_int_of_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.18460 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18462 ! 2030-2030
	j	bge_cont.18463
bge_else.18462:
	li	a0, 0 ! 2030-2030
bge_cont.18463:
	j	bge_cont.18461
bge_else.18460:
	li	a0, 255 ! 2030-2030
bge_cont.18461:
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_int
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 10 ! 2040-2040
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_print_char
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 36 ! 0-0
	addi	a0, a0, 1 ! 2137-2137
	lw	a1, sp, 32 ! 0-0
	lw	a2, a1, 0 ! 2123-2123
	blt	a0, a2, bge_else.18464 ! 2123-2138
	ret ! 2138-2138
bge_else.18464:
	slli	a2, a0, 2 ! 2126-2126
	lw	a3, sp, 28 ! 0-0
	add	t0, a3, a2 ! 2126-2126
	lw	a2, t0, 0 ! 2126-2126
	lw	a2, a2, 0 ! 461-463
	flw	fa0, a2, 0 ! 164-164
	lw	a4, sp, 40 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a2, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a2, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a2, a1, 4 ! 1951-1951
	lw	a4, sp, 24 ! 0-0
	addi	a5, a4, 1 ! 1951-1951
	blt	a5, a2, bge_else.18465 ! 1951-1959
	li	a1, 0 ! 1959-1959
	j	bge_cont.18466
bge_else.18465:
	li	a2, 0 ! 1952-1952
	blt	a2, a4, bge_else.18467 ! 1952-1958
	li	a1, 0 ! 1958-1958
	j	bge_cont.18468
bge_else.18467:
	lw	a1, a1, 0 ! 1953-1953
	addi	a2, a0, 1 ! 1953-1953
	blt	a2, a1, bge_else.18469 ! 1953-1957
	li	a1, 0 ! 1957-1957
	j	bge_cont.18470
bge_else.18469:
	li	a1, 0 ! 1954-1954
	blt	a1, a0, bge_else.18471 ! 1954-1956
	li	a1, 0 ! 1956-1956
	j	bge_cont.18472
bge_else.18471:
	li	a1, 1 ! 1955-1955
bge_cont.18472:
bge_cont.18470:
bge_cont.18468:
bge_cont.18466:
	li	a2, 0 ! 2129-2132
	sw	sp, a0, 48 ! 0-0
	bne	a1, a2, beq_else.18473 ! 2129-2132
	slli	a1, a0, 2 ! 2132-2132
	add	t0, a3, a1 ! 2132-2132
	lw	a1, t0, 0 ! 2132-2132
	li	a2, 0 ! 2132-2132
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	j	beq_cont.18474
beq_else.18473:
	li	a5, 0 ! 2130-2130
	lw	a2, sp, 12 ! 0-0
	lw	a1, sp, 8 ! 0-0
	lw	a21, sp, 16 ! 0-0
	mv	a20, a4
	mv	a4, a1
	mv	a1, a20
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
beq_cont.18474:
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48 ! 0-0
	addi	a0, a0, 1 ! 2137-2137
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 12 ! 0-0
	lw	a3, sp, 28 ! 0-0
	lw	a4, sp, 8 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_line.2883:
	lw	a5, a21, 28 ! 0-0
	lw	a6, a21, 24 ! 0-0
	lw	a7, a21, 20 ! 0-0
	lw	a8, a21, 16 ! 0-0
	lw	a9, a21, 12 ! 0-0
	lw	a10, a21, 8 ! 0-0
	lw	a11, a21, 4 ! 0-0
	lw	a12, a10, 4 ! 2144-2144
	blt	a0, a12, bge_else.18475 ! 2144-2151
	ret ! 2151-2151
bge_else.18475:
	lw	a12, a10, 4 ! 2146-2146
	addi	a12, a12, -1 ! 2146-2146
	sw	sp, a21, 0 ! 0-0
	sw	sp, a9, 4 ! 0-0
	sw	sp, a4, 8 ! 0-0
	sw	sp, a7, 12 ! 0-0
	sw	sp, a5, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	sw	sp, a1, 24 ! 0-0
	sw	sp, a6, 28 ! 0-0
	sw	sp, a11, 32 ! 0-0
	sw	sp, a0, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	sw	sp, a2, 44 ! 0-0
	sw	sp, a10, 48 ! 0-0
	blt	a0, a12, bge_else.18476 ! 2146-2148
	j	bge_cont.18477
bge_else.18476:
	addi	a12, a0, 1 ! 2147-2147
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
bge_cont.18477:
	li	a0, 0 ! 2149-2149
	lw	a1, sp, 48 ! 0-0
	lw	a2, a1, 0 ! 2123-2123
	blt	a0, a2, bge_else.18478 ! 2123-2138
	j	bge_cont.18479
bge_else.18478:
	lw	a3, sp, 44 ! 0-0
	lw	a2, a3, 0 ! 2126-2126
	lw	a2, a2, 0 ! 461-463
	flw	fa0, a2, 0 ! 164-164
	lw	a4, sp, 40 ! 0-0
	fsw	a4, fa0, 0 ! 164-164
	flw	fa0, a2, 4 ! 165-165
	fsw	a4, fa0, 4 ! 165-165
	flw	fa0, a2, 8 ! 166-166
	fsw	a4, fa0, 8 ! 166-166
	lw	a2, a1, 4 ! 1951-1951
	lw	a4, sp, 36 ! 0-0
	addi	a5, a4, 1 ! 1951-1951
	blt	a5, a2, bge_else.18480 ! 1951-1959
	li	a2, 0 ! 1959-1959
	j	bge_cont.18481
bge_else.18480:
	li	a2, 0 ! 1952-1952
	blt	a2, a4, bge_else.18482 ! 1952-1958
	li	a2, 0 ! 1958-1958
	j	bge_cont.18483
bge_else.18482:
	lw	a2, a1, 0 ! 1953-1953
	li	a5, 1 ! 1953-1953
	blt	a5, a2, bge_else.18484 ! 1953-1957
	li	a2, 0 ! 1957-1957
	j	bge_cont.18485
bge_else.18484:
	li	a2, 0 ! 1956-1956
bge_cont.18485:
bge_cont.18483:
bge_cont.18481:
	li	a5, 0 ! 2129-2132
	bne	a2, a5, beq_else.18486 ! 2129-2132
	lw	a0, a3, 0 ! 2132-2132
	li	a2, 0 ! 2132-2132
	lw	a21, sp, 32 ! 0-0
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	j	beq_cont.18487
beq_else.18486:
	li	a5, 0 ! 2130-2130
	lw	a2, sp, 24 ! 0-0
	lw	a6, sp, 20 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a1, a4
	mv	a4, a6
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
beq_cont.18487:
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, 1 ! 2137-2137
	lw	a1, sp, 36 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a3, sp, 44 ! 0-0
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
bge_cont.18479:
	lw	a0, sp, 36 ! 0-0
	addi	a1, a0, 1 ! 2150-2150
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 2 ! 129-129
	li	a2, 5 ! 130-130
	blt	a0, a2, bge_else.18488 ! 130-130
	addi	a2, a0, -5 ! 130-130
	j	bge_cont.18489
bge_else.18488:
	mv	a2, a0 ! 130-130
bge_cont.18489:
	lw	a0, sp, 48 ! 0-0
	lw	a3, a0, 4 ! 2144-2144
	blt	a1, a3, bge_else.18490 ! 2144-2151
	j	bge_cont.18491
bge_else.18490:
	lw	a0, a0, 4 ! 2146-2146
	addi	a0, a0, -1 ! 2146-2146
	sw	sp, a2, 52 ! 0-0
	sw	sp, a1, 56 ! 0-0
	blt	a1, a0, bge_else.18492 ! 2146-2148
	j	bge_cont.18493
bge_else.18492:
	addi	a0, a1, 1 ! 2147-2147
	lw	a3, sp, 24 ! 0-0
	lw	a21, sp, 4 ! 0-0
	mv	a1, a0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
bge_cont.18493:
	li	a0, 0 ! 2149-2149
	lw	a1, sp, 56 ! 0-0
	lw	a2, sp, 44 ! 0-0
	lw	a3, sp, 20 ! 0-0
	lw	a4, sp, 24 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0-0
	addi	a0, a0, 1 ! 2150-2150
	lw	a1, sp, 52 ! 0-0
	addi	a1, a1, 2 ! 129-129
	li	a2, 5 ! 130-130
	blt	a1, a2, bge_else.18494 ! 130-130
	addi	a4, a1, -5 ! 130-130
	j	bge_cont.18495
bge_else.18494:
	mv	a4, a1 ! 130-130
bge_cont.18495:
	lw	a1, sp, 20 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a3, sp, 44 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
bge_cont.18491:
	ret ! 2150-2150
create_float5x3array.2889:
	li	a0, 3 ! 2161-2161
	li	a1, l.12849 ! 2161-2161
	flw	fa0, a1, 0 ! 2161-2161
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_float_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	mv	a1, a0
	li	a0, 5 ! 2162-2162
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 3 ! 2163-2163
	li	a2, l.12849 ! 2163-2163
	flw	fa0, a2, 0 ! 2163-2163
	sw	sp, a0, 0 ! 0-0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 4 ! 2163-2163
	li	a0, 3 ! 2164-2164
	li	a2, l.12849 ! 2164-2164
	flw	fa0, a2, 0 ! 2164-2164
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 8 ! 2164-2164
	li	a0, 3 ! 2165-2165
	li	a2, l.12849 ! 2165-2165
	flw	fa0, a2, 0 ! 2165-2165
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 12 ! 2165-2165
	li	a0, 3 ! 2166-2166
	li	a2, l.12849 ! 2166-2166
	flw	fa0, a2, 0 ! 2166-2166
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 16 ! 2166-2166
	mv	a0, a1 ! 2167-2167
	ret ! 2167-2167
init_line_elements.2893:
	li	a2, 0 ! 2186-2186
	blt	a1, a2, bge_else.18496 ! 2186-2190
	li	a2, 3 ! 2173-2173
	li	a3, l.12849 ! 2173-2173
	flw	fa0, a3, 0 ! 2173-2173
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	create_float5x3array.2889
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 5 ! 2175-2175
	li	a2, 0 ! 2175-2175
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 5 ! 2176-2176
	li	a2, 0 ! 2176-2176
	sw	sp, a0, 16 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, a0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	create_float5x3array.2889
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	create_float5x3array.2889
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 1 ! 2179-2179
	li	a2, 0 ! 2179-2179
	sw	sp, a0, 28 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, a0, 32 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	create_float5x3array.2889
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, hp ! 2181-2181
	addi	hp, hp, 32 ! 2181-2181
	sw	a1, a0, 28 ! 2181-2181
	lw	a0, sp, 32 ! 0-0
	sw	a1, a0, 24 ! 2181-2181
	lw	a0, sp, 28 ! 0-0
	sw	a1, a0, 20 ! 2181-2181
	lw	a0, sp, 24 ! 0-0
	sw	a1, a0, 16 ! 2181-2181
	lw	a0, sp, 20 ! 0-0
	sw	a1, a0, 12 ! 2181-2181
	lw	a0, sp, 16 ! 0-0
	sw	a1, a0, 8 ! 2181-2181
	lw	a0, sp, 12 ! 0-0
	sw	a1, a0, 4 ! 2181-2181
	lw	a0, sp, 8 ! 0-0
	sw	a1, a0, 0 ! 2181-2181
	mv	a0, a1 ! 2181-2181
	lw	a1, sp, 4 ! 0-0
	slli	a2, a1, 2 ! 2187-2187
	lw	a3, sp, 0 ! 0-0
	add	t0, a3, a2 ! 2187-2187
	sw	t0, a0, 0 ! 2187-2187
	addi	a0, a1, -1 ! 2188-2188
	li	a1, 0 ! 2186-2186
	blt	a0, a1, bge_else.18497 ! 2186-2190
	li	a1, 3 ! 2173-2173
	li	a2, l.12849 ! 2173-2173
	flw	fa0, a2, 0 ! 2173-2173
	sw	sp, a0, 36 ! 0-0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	create_float5x3array.2889
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 5 ! 2175-2175
	li	a2, 0 ! 2175-2175
	sw	sp, a0, 44 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 5 ! 2176-2176
	li	a2, 0 ! 2176-2176
	sw	sp, a0, 48 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	sw	sp, a0, 52 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	create_float5x3array.2889
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, a0, 56 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	create_float5x3array.2889
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 1 ! 2179-2179
	li	a2, 0 ! 2179-2179
	sw	sp, a0, 60 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, a0, 64 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	create_float5x3array.2889
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, hp ! 2181-2181
	addi	hp, hp, 32 ! 2181-2181
	sw	a1, a0, 28 ! 2181-2181
	lw	a0, sp, 64 ! 0-0
	sw	a1, a0, 24 ! 2181-2181
	lw	a0, sp, 60 ! 0-0
	sw	a1, a0, 20 ! 2181-2181
	lw	a0, sp, 56 ! 0-0
	sw	a1, a0, 16 ! 2181-2181
	lw	a0, sp, 52 ! 0-0
	sw	a1, a0, 12 ! 2181-2181
	lw	a0, sp, 48 ! 0-0
	sw	a1, a0, 8 ! 2181-2181
	lw	a0, sp, 44 ! 0-0
	sw	a1, a0, 4 ! 2181-2181
	lw	a0, sp, 40 ! 0-0
	sw	a1, a0, 0 ! 2181-2181
	mv	a0, a1 ! 2181-2181
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 2187-2187
	lw	a3, sp, 0 ! 0-0
	add	t0, a3, a2 ! 2187-2187
	sw	t0, a0, 0 ! 2187-2187
	addi	a1, a1, -1 ! 2188-2188
	mv	a0, a3
	j	init_line_elements.2893
bge_else.18497:
	mv	a0, a3 ! 2190-2190
	ret ! 2190-2190
bge_else.18496:
	ret ! 2190-2190
calc_dirvec.2903:
	lw	a3, a21, 4 ! 0-0
	li	a4, 5 ! 2223-2223
	blt	a0, a4, bge_else.18498 ! 2223-2239
	sw	sp, a2, 0 ! 0-0
	sw	sp, a3, 4 ! 0-0
	sw	sp, a1, 8 ! 0-0
	fsw	sp, fa0, 12 ! 0-0
	fsw	sp, fa1, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fsqr
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 16 ! 0-0
	fsw	sp, fa0, 20 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fsqr
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 20 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 2224-2224
	li	a0, l.12811 ! 2224-2224
	flw	fa1, a0, 0 ! 2224-2224
	fadd.s	fa0, fa0, fa1, rne ! 2224-2224
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sqrt
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 12 ! 0-0
	fdiv.s	fa1, fa1, fa0, rne ! 2225-2225
	flw	fa2, sp, 16 ! 0-0
	fdiv.s	fa2, fa2, fa0, rne ! 2226-2226
	li	a0, l.12811 ! 2227-2227
	flw	fa3, a0, 0 ! 2227-2227
	fdiv.s	fa0, fa3, fa0, rne ! 2227-2227
	lw	a0, sp, 8 ! 0-0
	slli	a0, a0, 2 ! 2230-2230
	lw	a1, sp, 4 ! 0-0
	add	t0, a1, a0 ! 2230-2230
	lw	a0, t0, 0 ! 2230-2230
	lw	a1, sp, 0 ! 0-0
	slli	a2, a1, 2 ! 2231-2231
	add	t0, a0, a2 ! 2231-2231
	lw	a2, t0, 0 ! 2231-2231
	lw	a2, a2, 0 ! 538-539
	fsw	a2, fa1, 0 ! 145-145
	fsw	a2, fa2, 4 ! 146-146
	fsw	a2, fa0, 8 ! 147-147
	addi	a2, a1, 40 ! 2232-2232
	slli	a2, a2, 2 ! 2232-2232
	add	t0, a0, a2 ! 2232-2232
	lw	a2, t0, 0 ! 2232-2232
	lw	a2, a2, 0 ! 538-539
	fsw	sp, fa2, 24 ! 0-0
	sw	sp, a0, 28 ! 0-0
	fsw	sp, fa0, 32 ! 0-0
	fsw	sp, fa1, 36 ! 0-0
	sw	sp, a2, 40 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 36 ! 0-0
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa1, 0 ! 145-145
	flw	fa2, sp, 32 ! 0-0
	fsw	a0, fa2, 4 ! 146-146
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 0 ! 0-0
	addi	a1, a0, 80 ! 2233-2233
	slli	a1, a1, 2 ! 2233-2233
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 2233-2233
	lw	a1, t0, 0 ! 2233-2233
	lw	a1, a1, 0 ! 538-539
	sw	sp, a1, 44 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fneg
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 24 ! 0-0
	fsw	sp, fa0, 48 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	flw	fa1, sp, 32 ! 0-0
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa1, 0 ! 145-145
	flw	fa2, sp, 48 ! 0-0
	fsw	a0, fa2, 4 ! 146-146
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 0 ! 0-0
	addi	a1, a0, 1 ! 2234-2234
	slli	a1, a1, 2 ! 2234-2234
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 2234-2234
	lw	a1, t0, 0 ! 2234-2234
	lw	a1, a1, 0 ! 538-539
	flw	fa0, sp, 36 ! 0-0
	sw	sp, a1, 52 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fneg
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 24 ! 0-0
	fsw	sp, fa0, 56 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fneg
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa1, sp, 32 ! 0-0
	fsw	sp, fa0, 60 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0-0
	lw	a0, sp, 52 ! 0-0
	fsw	a0, fa1, 0 ! 145-145
	flw	fa1, sp, 60 ! 0-0
	fsw	a0, fa1, 4 ! 146-146
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 0 ! 0-0
	addi	a1, a0, 41 ! 2235-2235
	slli	a1, a1, 2 ! 2235-2235
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 2235-2235
	lw	a1, t0, 0 ! 2235-2235
	lw	a1, a1, 0 ! 538-539
	flw	fa0, sp, 36 ! 0-0
	sw	sp, a1, 64 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	flw	fa1, sp, 32 ! 0-0
	fsw	sp, fa0, 68 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 68 ! 0-0
	lw	a0, sp, 64 ! 0-0
	fsw	a0, fa1, 0 ! 145-145
	fsw	a0, fa0, 4 ! 146-146
	flw	fa0, sp, 24 ! 0-0
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 81 ! 2236-2236
	slli	a0, a0, 2 ! 2236-2236
	lw	a1, sp, 28 ! 0-0
	add	t0, a1, a0 ! 2236-2236
	lw	a0, t0, 0 ! 2236-2236
	lw	a0, a0, 0 ! 538-539
	flw	fa1, sp, 32 ! 0-0
	sw	sp, a0, 72 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72 ! 0-0
	fsw	a0, fa0, 0 ! 145-145
	flw	fa0, sp, 36 ! 0-0
	fsw	a0, fa0, 4 ! 146-146
	flw	fa0, sp, 24 ! 0-0
	fsw	a0, fa0, 8 ! 147-147
	ret ! 147-147
bge_else.18498:
	fmul.s	fa0, fa1, fa1, rne ! 2214-2214
	li	a3, l.13708 ! 2214-2214
	flw	fa1, a3, 0 ! 2214-2214
	fadd.s	fa0, fa0, fa1, rne ! 2214-2214
	sw	sp, a2, 0 ! 0-0
	sw	sp, a1, 8 ! 0-0
	sw	sp, a21, 76 ! 0-0
	fsw	sp, fa3, 80 ! 0-0
	sw	sp, a0, 84 ! 0-0
	fsw	sp, fa2, 88 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_sqrt
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a0, l.12811 ! 2215-2215
	flw	fa1, a0, 0 ! 2215-2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215-2215
	fsw	sp, fa0, 92 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_atan
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 2217-2217
	fsw	sp, fa0, 96 ! 0-0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_sin
	addi	sp, sp, -104
	lw	ra, sp, 100
	flw	fa1, sp, 96 ! 0-0
	fsw	sp, fa0, 100 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_cos
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 100 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 2209-2209
	flw	fa1, sp, 92 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 2218-2218
	lw	a0, sp, 84 ! 0-0
	addi	a0, a0, 1 ! 2239-2239
	fmul.s	fa1, fa0, fa0, rne ! 2214-2214
	li	a1, l.13708 ! 2214-2214
	flw	fa2, a1, 0 ! 2214-2214
	fadd.s	fa1, fa1, fa2, rne ! 2214-2214
	fsw	sp, fa0, 104 ! 0-0
	sw	sp, a0, 108 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_sqrt
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a0, l.12811 ! 2215-2215
	flw	fa1, a0, 0 ! 2215-2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215-2215
	fsw	sp, fa0, 112 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_atan
	addi	sp, sp, -120
	lw	ra, sp, 116
	flw	fa1, sp, 80 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 2217-2217
	fsw	sp, fa0, 116 ! 0-0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_sin
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 116 ! 0-0
	fsw	sp, fa0, 120 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_cos
	addi	sp, sp, -128
	lw	ra, sp, 124
	flw	fa1, sp, 120 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 2209-2209
	flw	fa1, sp, 112 ! 0-0
	fmul.s	fa1, fa0, fa1, rne ! 2218-2218
	flw	fa0, sp, 104 ! 0-0
	flw	fa2, sp, 88 ! 0-0
	flw	fa3, sp, 80 ! 0-0
	lw	a0, sp, 108 ! 0-0
	lw	a1, sp, 8 ! 0-0
	lw	a2, sp, 0 ! 0-0
	lw	a21, sp, 76 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_dirvecs.2911:
	lw	a3, a21, 4 ! 0-0
	li	a4, 0 ! 2244-2244
	blt	a0, a4, bge_else.18499 ! 2244-2253
	sw	sp, a21, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	fsw	sp, fa0, 8 ! 0-0
	sw	sp, a2, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_float_of_int
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.14334 ! 2246-2246
	flw	fa1, a0, 0 ! 2246-2246
	fmul.s	fa0, fa0, fa1, rne ! 2246-2246
	li	a0, l.14336 ! 2246-2246
	flw	fa1, a0, 0 ! 2246-2246
	fsub.s	fa2, fa0, fa1, rne ! 2246-2246
	li	a0, 0 ! 2247-2247
	li	a1, l.12849 ! 2247-2247
	flw	fa0, a1, 0 ! 2247-2247
	li	a1, l.12849 ! 2247-2247
	flw	fa1, a1, 0 ! 2247-2247
	flw	fa3, sp, 8 ! 0-0
	lw	a1, sp, 16 ! 0-0
	lw	a2, sp, 12 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_float_of_int
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.14334 ! 2249-2249
	flw	fa1, a0, 0 ! 2249-2249
	fmul.s	fa0, fa0, fa1, rne ! 2249-2249
	li	a0, l.13708 ! 2249-2249
	flw	fa1, a0, 0 ! 2249-2249
	fadd.s	fa2, fa0, fa1, rne ! 2249-2249
	li	a0, 0 ! 2250-2250
	li	a1, l.12849 ! 2250-2250
	flw	fa0, a1, 0 ! 2250-2250
	li	a1, l.12849 ! 2250-2250
	flw	fa1, a1, 0 ! 2250-2250
	lw	a1, sp, 12 ! 0-0
	addi	a2, a1, 2 ! 2250-2250
	flw	fa3, sp, 8 ! 0-0
	lw	a3, sp, 16 ! 0-0
	lw	a21, sp, 20 ! 0-0
	mv	a1, a3
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, -1 ! 2252-2252
	lw	a1, sp, 16 ! 0-0
	addi	a1, a1, 1 ! 129-129
	li	a2, 5 ! 130-130
	blt	a1, a2, bge_else.18500 ! 130-130
	addi	a1, a1, -5 ! 130-130
	j	bge_cont.18501
bge_else.18500:
bge_cont.18501:
	flw	fa0, sp, 8 ! 0-0
	lw	a2, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18499:
	ret ! 2253-2253
calc_dirvec_rows.2916:
	lw	a3, a21, 4 ! 0-0
	li	a4, 0 ! 2258-2258
	blt	a0, a4, bge_else.18502 ! 2258-2262
	sw	sp, a21, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a3, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_float_of_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, l.14334 ! 2259-2259
	flw	fa1, a0, 0 ! 2259-2259
	fmul.s	fa0, fa0, fa1, rne ! 2259-2259
	li	a0, l.14336 ! 2259-2259
	flw	fa1, a0, 0 ! 2259-2259
	fsub.s	fa0, fa0, fa1, rne ! 2259-2259
	li	a0, 4 ! 2260-2260
	lw	a1, sp, 12 ! 0-0
	lw	a2, sp, 8 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, -1 ! 2261-2261
	lw	a1, sp, 12 ! 0-0
	addi	a1, a1, 2 ! 129-129
	li	a2, 5 ! 130-130
	blt	a1, a2, bge_else.18503 ! 130-130
	addi	a1, a1, -5 ! 130-130
	j	bge_cont.18504
bge_else.18503:
bge_cont.18504:
	lw	a2, sp, 8 ! 0-0
	addi	a2, a2, 4 ! 2261-2261
	li	a3, 0 ! 2258-2258
	blt	a0, a3, bge_else.18505 ! 2258-2262
	sw	sp, a0, 20 ! 0-0
	sw	sp, a2, 24 ! 0-0
	sw	sp, a1, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_float_of_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.14334 ! 2259-2259
	flw	fa1, a0, 0 ! 2259-2259
	fmul.s	fa0, fa0, fa1, rne ! 2259-2259
	li	a0, l.14336 ! 2259-2259
	flw	fa1, a0, 0 ! 2259-2259
	fsub.s	fa0, fa0, fa1, rne ! 2259-2259
	li	a0, 4 ! 2260-2260
	lw	a1, sp, 28 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, -1 ! 2261-2261
	lw	a1, sp, 28 ! 0-0
	addi	a1, a1, 2 ! 129-129
	li	a2, 5 ! 130-130
	blt	a1, a2, bge_else.18506 ! 130-130
	addi	a1, a1, -5 ! 130-130
	j	bge_cont.18507
bge_else.18506:
bge_cont.18507:
	lw	a2, sp, 24 ! 0-0
	addi	a2, a2, 4 ! 2261-2261
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18505:
	ret ! 2262-2262
bge_else.18502:
	ret ! 2262-2262
create_dirvec_elements.2922:
	lw	a2, a21, 4 ! 0-0
	li	a3, 0 ! 2277-2277
	blt	a1, a3, bge_else.18508 ! 2277-2280
	li	a3, 3 ! 2271-2271
	li	a4, l.12849 ! 2271-2271
	flw	fa0, a4, 0 ! 2271-2271
	sw	sp, a21, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, a1, 8 ! 0-0
	sw	sp, a2, 12 ! 0-0
	mv	a0, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_float_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	mv	a1, a0
	lw	a0, sp, 12 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 16 ! 0-0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 16 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 8 ! 0-0
	slli	a2, a1, 2 ! 2278-2278
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 2278-2278
	sw	t0, a0, 0 ! 2278-2278
	addi	a0, a1, -1 ! 2279-2279
	li	a1, 0 ! 2277-2277
	blt	a0, a1, bge_else.18509 ! 2277-2280
	li	a1, 3 ! 2271-2271
	li	a2, l.12849 ! 2271-2271
	flw	fa0, a2, 0 ! 2271-2271
	sw	sp, a0, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 12 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 24 ! 0-0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 24 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 20 ! 0-0
	slli	a2, a1, 2 ! 2278-2278
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 2278-2278
	sw	t0, a0, 0 ! 2278-2278
	addi	a0, a1, -1 ! 2279-2279
	li	a1, 0 ! 2277-2277
	blt	a0, a1, bge_else.18510 ! 2277-2280
	li	a1, 3 ! 2271-2271
	li	a2, l.12849 ! 2271-2271
	flw	fa0, a2, 0 ! 2271-2271
	sw	sp, a0, 28 ! 0-0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_float_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	mv	a1, a0
	lw	a0, sp, 12 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 32 ! 0-0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 32 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 28 ! 0-0
	slli	a2, a1, 2 ! 2278-2278
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 2278-2278
	sw	t0, a0, 0 ! 2278-2278
	addi	a0, a1, -1 ! 2279-2279
	li	a1, 0 ! 2277-2277
	blt	a0, a1, bge_else.18511 ! 2277-2280
	li	a1, 3 ! 2271-2271
	li	a2, l.12849 ! 2271-2271
	flw	fa0, a2, 0 ! 2271-2271
	sw	sp, a0, 36 ! 0-0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	mv	a1, a0
	lw	a0, sp, 12 ! 0-0
	lw	a0, a0, 0 ! 2272-2272
	sw	sp, a1, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 40 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 2278-2278
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 2278-2278
	sw	t0, a0, 0 ! 2278-2278
	addi	a1, a1, -1 ! 2279-2279
	lw	a21, sp, 0 ! 0-0
	mv	a0, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18511:
	ret ! 2280-2280
bge_else.18510:
	ret ! 2280-2280
bge_else.18509:
	ret ! 2280-2280
bge_else.18508:
	ret ! 2280-2280
create_dirvecs.2925:
	lw	a1, a21, 12 ! 0-0
	lw	a2, a21, 8 ! 0-0
	lw	a3, a21, 4 ! 0-0
	li	a4, 0 ! 2284-2284
	blt	a0, a4, bge_else.18512 ! 2284-2288
	li	a4, 120 ! 2285-2285
	li	a5, 3 ! 2271-2271
	li	a6, l.12849 ! 2271-2271
	flw	fa0, a6, 0 ! 2271-2271
	sw	sp, a21, 0 ! 0-0
	sw	sp, a3, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	sw	sp, a0, 12 ! 0-0
	sw	sp, a4, 16 ! 0-0
	sw	sp, a1, 20 ! 0-0
	mv	a0, a5
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 20 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 24 ! 0-0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 24 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	lw	a0, sp, 16 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 12 ! 0-0
	slli	a2, a1, 2 ! 2285-2285
	lw	a3, sp, 8 ! 0-0
	add	t0, a3, a2 ! 2285-2285
	sw	t0, a0, 0 ! 2285-2285
	slli	a0, a1, 2 ! 2286-2286
	add	t0, a3, a0 ! 2286-2286
	lw	a0, t0, 0 ! 2286-2286
	li	a2, 3 ! 2271-2271
	li	a4, l.12849 ! 2271-2271
	flw	fa0, a4, 0 ! 2271-2271
	sw	sp, a0, 28 ! 0-0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_float_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	mv	a1, a0
	lw	a0, sp, 20 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 32 ! 0-0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 32 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 28 ! 0-0
	sw	a1, a0, 472 ! 2278-2278
	li	a0, 3 ! 2271-2271
	li	a2, l.12849 ! 2271-2271
	flw	fa0, a2, 0 ! 2271-2271
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 20 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 36 ! 0-0
	mv	a0, a2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 36 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 28 ! 0-0
	sw	a1, a0, 468 ! 2278-2278
	li	a0, 3 ! 2271-2271
	li	a2, l.12849 ! 2271-2271
	flw	fa0, a2, 0 ! 2271-2271
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	mv	a1, a0
	lw	a0, sp, 20 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 40 ! 0-0
	mv	a0, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 40 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 28 ! 0-0
	sw	a1, a0, 464 ! 2278-2278
	li	a0, 115 ! 2279-2279
	lw	a21, sp, 4 ! 0-0
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 12 ! 0-0
	addi	a0, a0, -1 ! 2287-2287
	li	a1, 0 ! 2284-2284
	blt	a0, a1, bge_else.18513 ! 2284-2288
	li	a1, 120 ! 2285-2285
	li	a2, 3 ! 2271-2271
	li	a3, l.12849 ! 2271-2271
	flw	fa0, a3, 0 ! 2271-2271
	sw	sp, a0, 44 ! 0-0
	sw	sp, a1, 48 ! 0-0
	mv	a0, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, a0
	lw	a0, sp, 20 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 52 ! 0-0
	mv	a0, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 52 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	lw	a0, sp, 48 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 44 ! 0-0
	slli	a2, a1, 2 ! 2285-2285
	lw	a3, sp, 8 ! 0-0
	add	t0, a3, a2 ! 2285-2285
	sw	t0, a0, 0 ! 2285-2285
	slli	a0, a1, 2 ! 2286-2286
	add	t0, a3, a0 ! 2286-2286
	lw	a0, t0, 0 ! 2286-2286
	li	a2, 3 ! 2271-2271
	li	a3, l.12849 ! 2271-2271
	flw	fa0, a3, 0 ! 2271-2271
	sw	sp, a0, 56 ! 0-0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a1, a0
	lw	a0, sp, 20 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 60 ! 0-0
	mv	a0, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 60 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 56 ! 0-0
	sw	a1, a0, 472 ! 2278-2278
	li	a0, 3 ! 2271-2271
	li	a2, l.12849 ! 2271-2271
	flw	fa0, a2, 0 ! 2271-2271
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_float_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	mv	a1, a0
	lw	a0, sp, 20 ! 0-0
	lw	a0, a0, 0 ! 2272-2272
	sw	sp, a1, 64 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_create_array
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a0, sp, 64 ! 0-0
	sw	a1, a0, 0 ! 2273-2273
	mv	a0, a1 ! 2273-2273
	lw	a1, sp, 56 ! 0-0
	sw	a1, a0, 468 ! 2278-2278
	li	a0, 116 ! 2279-2279
	lw	a21, sp, 4 ! 0-0
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44 ! 0-0
	addi	a0, a0, -1 ! 2287-2287
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18513:
	ret ! 2288-2288
bge_else.18512:
	ret ! 2288-2288
init_dirvec_constants.2927:
	lw	a2, a21, 12 ! 0-0
	lw	a3, a21, 8 ! 0-0
	lw	a4, a21, 4 ! 0-0
	li	a5, 0 ! 2296-2296
	blt	a1, a5, bge_else.18514 ! 2296-2299
	slli	a5, a1, 2 ! 2297-2297
	add	t0, a0, a5 ! 2297-2297
	lw	a5, t0, 0 ! 2297-2297
	lw	a6, a3, 0 ! 1188-1188
	addi	a6, a6, -1 ! 1188-1188
	sw	sp, a21, 0 ! 0-0
	sw	sp, a4, 4 ! 0-0
	sw	sp, a2, 8 ! 0-0
	sw	sp, a3, 12 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, a1, 20 ! 0-0
	mv	a1, a6
	mv	a0, a5
	mv	a21, a4
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, -1 ! 2298-2298
	li	a1, 0 ! 2296-2296
	blt	a0, a1, bge_else.18515 ! 2296-2299
	slli	a1, a0, 2 ! 2297-2297
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 2297-2297
	lw	a1, t0, 0 ! 2297-2297
	lw	a3, sp, 12 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a0, 24 ! 0-0
	blt	a4, a5, bge_else.18516 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 8 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a1, 4 ! 544-545
	lw	a8, a1, 0 ! 538-539
	lw	a9, a5, 4 ! 252-257
	li	a10, 1 ! 1176-1176
	sw	sp, a1, 28 ! 0-0
	bne	a9, a10, beq_else.18518 ! 1176-1181
	sw	sp, a7, 32 ! 0-0
	sw	sp, a4, 36 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_rect_table.2700
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18519
beq_else.18518:
	li	a10, 2 ! 1178-1178
	bne	a9, a10, beq_else.18520 ! 1178-1181
	sw	sp, a7, 32 ! 0-0
	sw	sp, a4, 36 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_surface_table.2703
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18521
beq_else.18520:
	sw	sp, a7, 32 ! 0-0
	sw	sp, a4, 36 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_second_table.2706
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18521:
beq_cont.18519:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 28 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	j	bge_cont.18517
bge_else.18516:
bge_cont.18517:
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, -1 ! 2298-2298
	li	a1, 0 ! 2296-2296
	blt	a0, a1, bge_else.18522 ! 2296-2299
	slli	a1, a0, 2 ! 2297-2297
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 2297-2297
	lw	a1, t0, 0 ! 2297-2297
	lw	a3, sp, 12 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 40 ! 0-0
	mv	a0, a1
	mv	a1, a4
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	addi	a0, a0, -1 ! 2298-2298
	li	a1, 0 ! 2296-2296
	blt	a0, a1, bge_else.18523 ! 2296-2299
	slli	a1, a0, 2 ! 2297-2297
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 2297-2297
	lw	a1, t0, 0 ! 2297-2297
	lw	a3, sp, 12 ! 0-0
	lw	a3, a3, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	li	a4, 0 ! 1171-1171
	sw	sp, a0, 44 ! 0-0
	blt	a3, a4, bge_else.18524 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 8 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a5, a1, 4 ! 544-545
	lw	a6, a1, 0 ! 538-539
	lw	a7, a4, 4 ! 252-257
	li	a8, 1 ! 1176-1176
	sw	sp, a1, 48 ! 0-0
	bne	a7, a8, beq_else.18526 ! 1176-1181
	sw	sp, a5, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_rect_table.2700
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18527
beq_else.18526:
	li	a8, 2 ! 1178-1178
	bne	a7, a8, beq_else.18528 ! 1178-1181
	sw	sp, a5, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_surface_table.2703
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18529
beq_else.18528:
	sw	sp, a5, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_second_table.2706
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18529:
beq_cont.18527:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 48 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	bge_cont.18525
bge_else.18524:
bge_cont.18525:
	lw	a0, sp, 44 ! 0-0
	addi	a1, a0, -1 ! 2298-2298
	lw	a0, sp, 16 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18523:
	ret ! 2299-2299
bge_else.18522:
	ret ! 2299-2299
bge_else.18515:
	ret ! 2299-2299
bge_else.18514:
	ret ! 2299-2299
init_vecset_constants.2930:
	lw	a1, a21, 20 ! 0-0
	lw	a2, a21, 16 ! 0-0
	lw	a3, a21, 12 ! 0-0
	lw	a4, a21, 8 ! 0-0
	lw	a5, a21, 4 ! 0-0
	li	a6, 0 ! 2303-2303
	blt	a0, a6, bge_else.18530 ! 2303-2306
	slli	a6, a0, 2 ! 2304-2304
	add	t0, a5, a6 ! 2304-2304
	lw	a6, t0, 0 ! 2304-2304
	lw	a7, a6, 476 ! 2297-2297
	lw	a8, a2, 0 ! 1188-1188
	addi	a8, a8, -1 ! 1188-1188
	li	a9, 0 ! 1171-1171
	sw	sp, a21, 0 ! 0-0
	sw	sp, a5, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	sw	sp, a2, 24 ! 0-0
	sw	sp, a6, 28 ! 0-0
	blt	a8, a9, bge_else.18531 ! 1171-1184
	slli	a9, a8, 2 ! 1172-1172
	add	t0, a1, a9 ! 1172-1172
	lw	a9, t0, 0 ! 1172-1172
	lw	a10, a7, 4 ! 544-545
	lw	a11, a7, 0 ! 538-539
	lw	a12, a9, 4 ! 252-257
	li	a13, 1 ! 1176-1176
	sw	sp, a7, 32 ! 0-0
	bne	a12, a13, beq_else.18533 ! 1176-1181
	sw	sp, a10, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_rect_table.2700
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 36 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18534
beq_else.18533:
	li	a13, 2 ! 1178-1178
	bne	a12, a13, beq_else.18535 ! 1178-1181
	sw	sp, a10, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_surface_table.2703
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 36 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18536
beq_else.18535:
	sw	sp, a10, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_second_table.2706
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 36 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18536:
beq_cont.18534:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 32 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	j	bge_cont.18532
bge_else.18531:
bge_cont.18532:
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 472 ! 2297-2297
	lw	a2, sp, 24 ! 0-0
	lw	a3, a2, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 468 ! 2297-2297
	lw	a2, sp, 24 ! 0-0
	lw	a3, a2, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	li	a4, 0 ! 1171-1171
	blt	a3, a4, bge_else.18537 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 16 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a6, a1, 4 ! 544-545
	lw	a7, a1, 0 ! 538-539
	lw	a8, a4, 4 ! 252-257
	li	a9, 1 ! 1176-1176
	sw	sp, a1, 44 ! 0-0
	bne	a8, a9, beq_else.18539 ! 1176-1181
	sw	sp, a6, 48 ! 0-0
	sw	sp, a3, 52 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_rect_table.2700
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 48 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18540
beq_else.18539:
	li	a9, 2 ! 1178-1178
	bne	a8, a9, beq_else.18541 ! 1178-1181
	sw	sp, a6, 48 ! 0-0
	sw	sp, a3, 52 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_surface_table.2703
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 48 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18542
beq_else.18541:
	sw	sp, a6, 48 ! 0-0
	sw	sp, a3, 52 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_second_table.2706
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 48 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18542:
beq_cont.18540:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 44 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	j	bge_cont.18538
bge_else.18537:
bge_cont.18538:
	li	a1, 116 ! 2298-2298
	lw	a0, sp, 28 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, -1 ! 2305-2305
	li	a1, 0 ! 2303-2303
	blt	a0, a1, bge_else.18543 ! 2303-2306
	slli	a1, a0, 2 ! 2304-2304
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 2304-2304
	lw	a1, t0, 0 ! 2304-2304
	lw	a3, a1, 476 ! 2297-2297
	lw	a4, sp, 24 ! 0-0
	lw	a5, a4, 0 ! 1188-1188
	addi	a5, a5, -1 ! 1188-1188
	lw	a21, sp, 20 ! 0-0
	sw	sp, a0, 56 ! 0-0
	sw	sp, a1, 60 ! 0-0
	mv	a1, a5
	mv	a0, a3
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60 ! 0-0
	lw	a1, a0, 472 ! 2297-2297
	lw	a2, sp, 24 ! 0-0
	lw	a3, a2, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	li	a4, 0 ! 1171-1171
	blt	a3, a4, bge_else.18544 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 16 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a6, a1, 4 ! 544-545
	lw	a7, a1, 0 ! 538-539
	lw	a8, a4, 4 ! 252-257
	li	a9, 1 ! 1176-1176
	sw	sp, a1, 64 ! 0-0
	bne	a8, a9, beq_else.18546 ! 1176-1181
	sw	sp, a6, 68 ! 0-0
	sw	sp, a3, 72 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_rect_table.2700
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 68 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18547
beq_else.18546:
	li	a9, 2 ! 1178-1178
	bne	a8, a9, beq_else.18548 ! 1178-1181
	sw	sp, a6, 68 ! 0-0
	sw	sp, a3, 72 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_surface_table.2703
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 68 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18549
beq_else.18548:
	sw	sp, a6, 68 ! 0-0
	sw	sp, a3, 72 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_second_table.2706
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 68 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18549:
beq_cont.18547:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 64 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	j	bge_cont.18545
bge_else.18544:
bge_cont.18545:
	li	a1, 117 ! 2298-2298
	lw	a0, sp, 60 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 56 ! 0-0
	addi	a0, a0, -1 ! 2305-2305
	li	a1, 0 ! 2303-2303
	blt	a0, a1, bge_else.18550 ! 2303-2306
	slli	a1, a0, 2 ! 2304-2304
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 2304-2304
	lw	a1, t0, 0 ! 2304-2304
	lw	a3, a1, 476 ! 2297-2297
	lw	a4, sp, 24 ! 0-0
	lw	a4, a4, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a0, 76 ! 0-0
	sw	sp, a1, 80 ! 0-0
	blt	a4, a5, bge_else.18551 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 16 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a6, a3, 4 ! 544-545
	lw	a7, a3, 0 ! 538-539
	lw	a8, a5, 4 ! 252-257
	li	a9, 1 ! 1176-1176
	sw	sp, a3, 84 ! 0-0
	bne	a8, a9, beq_else.18553 ! 1176-1181
	sw	sp, a6, 88 ! 0-0
	sw	sp, a4, 92 ! 0-0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_rect_table.2700
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 88 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18554
beq_else.18553:
	li	a9, 2 ! 1178-1178
	bne	a8, a9, beq_else.18555 ! 1178-1181
	sw	sp, a6, 88 ! 0-0
	sw	sp, a4, 92 ! 0-0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_surface_table.2703
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 88 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18556
beq_else.18555:
	sw	sp, a6, 88 ! 0-0
	sw	sp, a4, 92 ! 0-0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_second_table.2706
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 88 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18556:
beq_cont.18554:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 84 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	j	bge_cont.18552
bge_else.18551:
bge_cont.18552:
	li	a1, 118 ! 2298-2298
	lw	a0, sp, 80 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 76 ! 0-0
	addi	a0, a0, -1 ! 2305-2305
	li	a1, 0 ! 2303-2303
	blt	a0, a1, bge_else.18557 ! 2303-2306
	slli	a1, a0, 2 ! 2304-2304
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 2304-2304
	lw	a1, t0, 0 ! 2304-2304
	li	a2, 119 ! 2304-2304
	lw	a21, sp, 12 ! 0-0
	sw	sp, a0, 96 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 96 ! 0-0
	addi	a0, a0, -1 ! 2305-2305
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18557:
	ret ! 2306-2306
bge_else.18550:
	ret ! 2306-2306
bge_else.18543:
	ret ! 2306-2306
bge_else.18530:
	ret ! 2306-2306
setup_rect_reflection.2941:
	lw	a2, a21, 24 ! 0-0
	lw	a3, a21, 20 ! 0-0
	lw	a4, a21, 16 ! 0-0
	lw	a5, a21, 12 ! 0-0
	lw	a6, a21, 8 ! 0-0
	lw	a7, a21, 4 ! 0-0
	slli	a0, a0, 2 ! 2330-2330
	lw	a8, a4, 0 ! 2331-2331
	li	a9, l.12811 ! 2332-2332
	flw	fa0, a9, 0 ! 2332-2332
	lw	a1, a1, 28 ! 360-365
	flw	fa1, a1, 0 ! 365-365
	fsub.s	fa0, fa0, fa1, rne ! 2332-2332
	flw	fa1, a6, 0 ! 2333-2333
	sw	sp, a4, 0 ! 0-0
	sw	sp, a2, 4 ! 0-0
	sw	sp, a8, 8 ! 0-0
	fsw	sp, fa0, 12 ! 0-0
	sw	sp, a7, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	sw	sp, a5, 24 ! 0-0
	sw	sp, a0, 28 ! 0-0
	sw	sp, a6, 32 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0-0
	flw	fa1, a0, 4 ! 2334-2334
	fsw	sp, fa0, 36 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fneg
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 32 ! 0-0
	flw	fa1, a0, 8 ! 2335-2335
	fsw	sp, fa0, 40 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 28 ! 0-0
	addi	a1, a0, 1 ! 2336-2336
	lw	a2, sp, 32 ! 0-0
	flw	fa1, a2, 0 ! 2336-2336
	li	a3, 3 ! 2271-2271
	li	a4, l.12849 ! 2271-2271
	flw	fa2, a4, 0 ! 2271-2271
	sw	sp, a1, 44 ! 0-0
	fsw	sp, fa0, 48 ! 0-0
	fsw	sp, fa1, 52 ! 0-0
	mv	a0, a3
	fmv.s	fa0, fa2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_float_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	mv	a1, a0
	lw	a0, sp, 24 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 56 ! 0-0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a2, sp, 56 ! 0-0
	sw	a1, a2, 0 ! 2273-2273
	flw	fa0, sp, 52 ! 0-0
	fsw	a2, fa0, 0 ! 145-145
	flw	fa0, sp, 40 ! 0-0
	fsw	a2, fa0, 4 ! 146-146
	flw	fa1, sp, 48 ! 0-0
	fsw	a2, fa1, 8 ! 147-147
	lw	a3, sp, 24 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a1, 60 ! 0-0
	blt	a4, a5, bge_else.18558 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 20 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a5, 4 ! 252-257
	li	a8, 1 ! 1176-1176
	bne	a7, a8, beq_else.18560 ! 1176-1181
	sw	sp, a0, 64 ! 0-0
	sw	sp, a4, 68 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	setup_rect_table.2700
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 68 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 64 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18561
beq_else.18560:
	li	a8, 2 ! 1178-1178
	bne	a7, a8, beq_else.18562 ! 1178-1181
	sw	sp, a0, 64 ! 0-0
	sw	sp, a4, 68 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	setup_surface_table.2703
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 68 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 64 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18563
beq_else.18562:
	sw	sp, a0, 64 ! 0-0
	sw	sp, a4, 68 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	setup_second_table.2706
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 68 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 64 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18563:
beq_cont.18561:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 60 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	j	bge_cont.18559
bge_else.18558:
bge_cont.18559:
	mv	a0, hp ! 2325-2325
	addi	hp, hp, 12 ! 2325-2325
	flw	fa0, sp, 12 ! 0-0
	fsw	a0, fa0, 8 ! 2325-2325
	lw	a1, sp, 60 ! 0-0
	sw	a0, a1, 4 ! 2325-2325
	lw	a1, sp, 44 ! 0-0
	sw	a0, a1, 0 ! 2325-2325
	lw	a1, sp, 8 ! 0-0
	slli	a2, a1, 2 ! 2325-2325
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 2325-2325
	sw	t0, a0, 0 ! 2325-2325
	addi	a0, a1, 1 ! 2337-2337
	lw	a2, sp, 28 ! 0-0
	addi	a4, a2, 2 ! 2337-2337
	lw	a5, sp, 32 ! 0-0
	flw	fa1, a5, 4 ! 2337-2337
	li	a6, 3 ! 2271-2271
	li	a7, l.12849 ! 2271-2271
	flw	fa2, a7, 0 ! 2271-2271
	sw	sp, a0, 72 ! 0-0
	sw	sp, a4, 76 ! 0-0
	fsw	sp, fa1, 80 ! 0-0
	mv	a0, a6
	fmv.s	fa0, fa2
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_create_float_array
	addi	sp, sp, -88
	lw	ra, sp, 84
	mv	a1, a0
	lw	a0, sp, 24 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 84 ! 0-0
	mv	a0, a2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_create_array
	addi	sp, sp, -92
	lw	ra, sp, 88
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a2, sp, 84 ! 0-0
	sw	a1, a2, 0 ! 2273-2273
	flw	fa0, sp, 36 ! 0-0
	fsw	a2, fa0, 0 ! 145-145
	flw	fa1, sp, 80 ! 0-0
	fsw	a2, fa1, 4 ! 146-146
	flw	fa1, sp, 48 ! 0-0
	fsw	a2, fa1, 8 ! 147-147
	lw	a3, sp, 24 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a1, 88 ! 0-0
	blt	a4, a5, bge_else.18564 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 20 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a5, 4 ! 252-257
	li	a8, 1 ! 1176-1176
	bne	a7, a8, beq_else.18566 ! 1176-1181
	sw	sp, a0, 92 ! 0-0
	sw	sp, a4, 96 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	setup_rect_table.2700
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 96 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 92 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18567
beq_else.18566:
	li	a8, 2 ! 1178-1178
	bne	a7, a8, beq_else.18568 ! 1178-1181
	sw	sp, a0, 92 ! 0-0
	sw	sp, a4, 96 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	setup_surface_table.2703
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 96 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 92 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18569
beq_else.18568:
	sw	sp, a0, 92 ! 0-0
	sw	sp, a4, 96 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	setup_second_table.2706
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 96 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 92 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18569:
beq_cont.18567:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 88 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	j	bge_cont.18565
bge_else.18564:
bge_cont.18565:
	mv	a0, hp ! 2325-2325
	addi	hp, hp, 12 ! 2325-2325
	flw	fa0, sp, 12 ! 0-0
	fsw	a0, fa0, 8 ! 2325-2325
	lw	a1, sp, 88 ! 0-0
	sw	a0, a1, 4 ! 2325-2325
	lw	a1, sp, 76 ! 0-0
	sw	a0, a1, 0 ! 2325-2325
	lw	a1, sp, 72 ! 0-0
	slli	a1, a1, 2 ! 2325-2325
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 2325-2325
	sw	t0, a0, 0 ! 2325-2325
	lw	a0, sp, 8 ! 0-0
	addi	a1, a0, 2 ! 2338-2338
	lw	a3, sp, 28 ! 0-0
	addi	a3, a3, 3 ! 2338-2338
	lw	a4, sp, 32 ! 0-0
	flw	fa1, a4, 8 ! 2338-2338
	li	a4, 3 ! 2271-2271
	li	a5, l.12849 ! 2271-2271
	flw	fa2, a5, 0 ! 2271-2271
	sw	sp, a1, 100 ! 0-0
	sw	sp, a3, 104 ! 0-0
	fsw	sp, fa1, 108 ! 0-0
	mv	a0, a4
	fmv.s	fa0, fa2
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_create_float_array
	addi	sp, sp, -116
	lw	ra, sp, 112
	mv	a1, a0
	lw	a0, sp, 24 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 112 ! 0-0
	mv	a0, a2
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a2, sp, 112 ! 0-0
	sw	a1, a2, 0 ! 2273-2273
	flw	fa0, sp, 36 ! 0-0
	fsw	a2, fa0, 0 ! 145-145
	flw	fa0, sp, 40 ! 0-0
	fsw	a2, fa0, 4 ! 146-146
	flw	fa0, sp, 108 ! 0-0
	fsw	a2, fa0, 8 ! 147-147
	lw	a3, sp, 24 ! 0-0
	lw	a3, a3, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	li	a4, 0 ! 1171-1171
	sw	sp, a1, 116 ! 0-0
	blt	a3, a4, bge_else.18570 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 20 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a5, a4, 4 ! 252-257
	li	a6, 1 ! 1176-1176
	bne	a5, a6, beq_else.18572 ! 1176-1181
	sw	sp, a0, 120 ! 0-0
	sw	sp, a3, 124 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	setup_rect_table.2700
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 124 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 120 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18573
beq_else.18572:
	li	a6, 2 ! 1178-1178
	bne	a5, a6, beq_else.18574 ! 1178-1181
	sw	sp, a0, 120 ! 0-0
	sw	sp, a3, 124 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	setup_surface_table.2703
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 124 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 120 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18575
beq_else.18574:
	sw	sp, a0, 120 ! 0-0
	sw	sp, a3, 124 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	setup_second_table.2706
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 124 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 120 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18575:
beq_cont.18573:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 116 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	j	bge_cont.18571
bge_else.18570:
bge_cont.18571:
	mv	a0, hp ! 2325-2325
	addi	hp, hp, 12 ! 2325-2325
	flw	fa0, sp, 12 ! 0-0
	fsw	a0, fa0, 8 ! 2325-2325
	lw	a1, sp, 116 ! 0-0
	sw	a0, a1, 4 ! 2325-2325
	lw	a1, sp, 104 ! 0-0
	sw	a0, a1, 0 ! 2325-2325
	lw	a1, sp, 100 ! 0-0
	slli	a1, a1, 2 ! 2325-2325
	lw	a2, sp, 4 ! 0-0
	add	t0, a2, a1 ! 2325-2325
	sw	t0, a0, 0 ! 2325-2325
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 3 ! 2339-2339
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 0 ! 2339-2339
	ret ! 2339-2339
setup_surface_reflection.2944:
	lw	a2, a21, 24 ! 0-0
	lw	a3, a21, 20 ! 0-0
	lw	a4, a21, 16 ! 0-0
	lw	a5, a21, 12 ! 0-0
	lw	a6, a21, 8 ! 0-0
	lw	a7, a21, 4 ! 0-0
	slli	a0, a0, 2 ! 2344-2344
	addi	a0, a0, 1 ! 2344-2344
	lw	a8, a4, 0 ! 2345-2345
	li	a9, l.12811 ! 2346-2346
	flw	fa0, a9, 0 ! 2346-2346
	lw	a9, a1, 28 ! 360-365
	flw	fa1, a9, 0 ! 365-365
	fsub.s	fa0, fa0, fa1, rne ! 2346-2346
	lw	a9, a1, 16 ! 320-325
	flw	fa1, a6, 0 ! 193-193
	flw	fa2, a9, 0 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	flw	fa2, a6, 4 ! 193-193
	flw	fa3, a9, 4 ! 193-193
	fmul.s	fa2, fa2, fa3, rne ! 193-193
	fadd.s	fa1, fa1, fa2, rne ! 193-193
	flw	fa2, a6, 8 ! 193-193
	flw	fa3, a9, 8 ! 193-193
	fmul.s	fa2, fa2, fa3, rne ! 193-193
	fadd.s	fa1, fa1, fa2, rne ! 193-193
	li	a9, l.12883 ! 2350-2350
	flw	fa2, a9, 0 ! 2350-2350
	lw	a9, a1, 16 ! 290-295
	flw	fa3, a9, 0 ! 295-295
	fmul.s	fa2, fa2, fa3, rne ! 2350-2350
	fmul.s	fa2, fa2, fa1, rne ! 2350-2350
	flw	fa3, a6, 0 ! 2350-2350
	fsub.s	fa2, fa2, fa3, rne ! 2350-2350
	li	a9, l.12883 ! 2351-2351
	flw	fa3, a9, 0 ! 2351-2351
	lw	a9, a1, 16 ! 300-305
	flw	fa4, a9, 4 ! 305-305
	fmul.s	fa3, fa3, fa4, rne ! 2351-2351
	fmul.s	fa3, fa3, fa1, rne ! 2351-2351
	flw	fa4, a6, 4 ! 2351-2351
	fsub.s	fa3, fa3, fa4, rne ! 2351-2351
	li	a9, l.12883 ! 2352-2352
	flw	fa4, a9, 0 ! 2352-2352
	lw	a1, a1, 16 ! 310-315
	flw	fa5, a1, 8 ! 315-315
	fmul.s	fa4, fa4, fa5, rne ! 2352-2352
	fmul.s	fa1, fa4, fa1, rne ! 2352-2352
	flw	fa4, a6, 8 ! 2352-2352
	fsub.s	fa1, fa1, fa4, rne ! 2352-2352
	li	a1, 3 ! 2271-2271
	li	a6, l.12849 ! 2271-2271
	flw	fa4, a6, 0 ! 2271-2271
	sw	sp, a4, 0 ! 0-0
	sw	sp, a2, 4 ! 0-0
	sw	sp, a8, 8 ! 0-0
	sw	sp, a0, 12 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	sw	sp, a7, 20 ! 0-0
	sw	sp, a3, 24 ! 0-0
	fsw	sp, fa1, 28 ! 0-0
	fsw	sp, fa3, 32 ! 0-0
	fsw	sp, fa2, 36 ! 0-0
	sw	sp, a5, 40 ! 0-0
	mv	a0, a1
	fmv.s	fa0, fa4
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, a0
	lw	a0, sp, 40 ! 0-0
	lw	a2, a0, 0 ! 2272-2272
	sw	sp, a1, 44 ! 0-0
	mv	a0, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	mv	a1, hp ! 2273-2273
	addi	hp, hp, 8 ! 2273-2273
	sw	a1, a0, 4 ! 2273-2273
	lw	a2, sp, 44 ! 0-0
	sw	a1, a2, 0 ! 2273-2273
	flw	fa0, sp, 36 ! 0-0
	fsw	a2, fa0, 0 ! 145-145
	flw	fa0, sp, 32 ! 0-0
	fsw	a2, fa0, 4 ! 146-146
	flw	fa0, sp, 28 ! 0-0
	fsw	a2, fa0, 8 ! 147-147
	lw	a3, sp, 40 ! 0-0
	lw	a3, a3, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	li	a4, 0 ! 1171-1171
	sw	sp, a1, 48 ! 0-0
	blt	a3, a4, bge_else.18576 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 24 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a5, a4, 4 ! 252-257
	li	a6, 1 ! 1176-1176
	bne	a5, a6, beq_else.18578 ! 1176-1181
	sw	sp, a0, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_rect_table.2700
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18579
beq_else.18578:
	li	a6, 2 ! 1178-1178
	bne	a5, a6, beq_else.18580 ! 1178-1181
	sw	sp, a0, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_surface_table.2703
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18581
beq_else.18580:
	sw	sp, a0, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_second_table.2706
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18581:
beq_cont.18579:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 48 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	bge_cont.18577
bge_else.18576:
bge_cont.18577:
	mv	a0, hp ! 2325-2325
	addi	hp, hp, 12 ! 2325-2325
	flw	fa0, sp, 16 ! 0-0
	fsw	a0, fa0, 8 ! 2325-2325
	lw	a1, sp, 48 ! 0-0
	sw	a0, a1, 4 ! 2325-2325
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 0 ! 2325-2325
	lw	a1, sp, 8 ! 0-0
	slli	a2, a1, 2 ! 2325-2325
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 2325-2325
	sw	t0, a0, 0 ! 2325-2325
	addi	a0, a1, 1 ! 2353-2353
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 0 ! 2353-2353
	ret ! 2353-2353
rt.2949:
	lw	a2, a21, 100 ! 0-0
	lw	a3, a21, 96 ! 0-0
	lw	a4, a21, 92 ! 0-0
	lw	a5, a21, 88 ! 0-0
	lw	a6, a21, 84 ! 0-0
	lw	a7, a21, 80 ! 0-0
	lw	a8, a21, 76 ! 0-0
	lw	a9, a21, 72 ! 0-0
	lw	a10, a21, 68 ! 0-0
	lw	a11, a21, 64 ! 0-0
	lw	a12, a21, 60 ! 0-0
	lw	a13, a21, 56 ! 0-0
	lw	a14, a21, 52 ! 0-0
	lw	a15, a21, 48 ! 0-0
	lw	a16, a21, 44 ! 0-0
	lw	a17, a21, 40 ! 0-0
	lw	a18, a21, 36 ! 0-0
	lw	a19, a21, 32 ! 0-0
	lw	a20, a21, 28 ! 0-0
	sw	sp, a7, 0 ! 0-0
	lw	a7, a21, 24 ! 0-0
	sw	sp, a5, 4 ! 0-0
	lw	a5, a21, 20 ! 0-0
	sw	sp, a13, 8 ! 0-0
	lw	a13, a21, 16 ! 0-0
	sw	sp, a3, 12 ! 0-0
	lw	a3, a21, 12 ! 0-0
	sw	sp, a4, 16 ! 0-0
	lw	a4, a21, 8 ! 0-0
	lw	a21, a21, 4 ! 0-0
	sw	a5, a0, 0 ! 2382-2382
	sw	a5, a1, 4 ! 2383-2383
	sw	sp, a17, 20 ! 0-0
	srli	a17, a0, 1 ! 2384-2384
	sw	a13, a17, 0 ! 2384-2384
	srli	a1, a1, 1 ! 2385-2385
	sw	a13, a1, 4 ! 2385-2385
	li	a1, l.14569 ! 2386-2386
	flw	fa0, a1, 0 ! 2386-2386
	sw	sp, a2, 24 ! 0-0
	sw	sp, a18, 28 ! 0-0
	sw	sp, a20, 32 ! 0-0
	sw	sp, a7, 36 ! 0-0
	sw	sp, a19, 40 ! 0-0
	sw	sp, a15, 44 ! 0-0
	sw	sp, a3, 48 ! 0-0
	sw	sp, a21, 52 ! 0-0
	sw	sp, a4, 56 ! 0-0
	sw	sp, a14, 60 ! 0-0
	sw	sp, a12, 64 ! 0-0
	sw	sp, a9, 68 ! 0-0
	sw	sp, a16, 72 ! 0-0
	sw	sp, a10, 76 ! 0-0
	sw	sp, a11, 80 ! 0-0
	sw	sp, a8, 84 ! 0-0
	sw	sp, a5, 88 ! 0-0
	sw	sp, a6, 92 ! 0-0
	fsw	sp, fa0, 96 ! 0-0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_float_of_int
	addi	sp, sp, -104
	lw	ra, sp, 100
	flw	fa1, sp, 96 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 2386-2386
	lw	a0, sp, 92 ! 0-0
	fsw	a0, fa0, 0 ! 2386-2386
	lw	a0, sp, 88 ! 0-0
	lw	a1, a0, 0 ! 2195-2195
	li	a2, 3 ! 2173-2173
	li	a3, l.12849 ! 2173-2173
	flw	fa0, a3, 0 ! 2173-2173
	sw	sp, a1, 100 ! 0-0
	mv	a0, a2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_create_float_array
	addi	sp, sp, -108
	lw	ra, sp, 104
	sw	sp, a0, 104 ! 0-0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	create_float5x3array.2889
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 5 ! 2175-2175
	li	a2, 0 ! 2175-2175
	sw	sp, a0, 108 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_create_array
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a1, 5 ! 2176-2176
	li	a2, 0 ! 2176-2176
	sw	sp, a0, 112 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	sw	sp, a0, 116 ! 0-0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	create_float5x3array.2889
	addi	sp, sp, -124
	lw	ra, sp, 120
	sw	sp, a0, 120 ! 0-0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	create_float5x3array.2889
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a1, 1 ! 2179-2179
	li	a2, 0 ! 2179-2179
	sw	sp, a0, 124 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_create_array
	addi	sp, sp, -132
	lw	ra, sp, 128
	sw	sp, a0, 128 ! 0-0
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	create_float5x3array.2889
	addi	sp, sp, -136
	lw	ra, sp, 132
	mv	a1, hp ! 2181-2181
	addi	hp, hp, 32 ! 2181-2181
	sw	a1, a0, 28 ! 2181-2181
	lw	a0, sp, 128 ! 0-0
	sw	a1, a0, 24 ! 2181-2181
	lw	a0, sp, 124 ! 0-0
	sw	a1, a0, 20 ! 2181-2181
	lw	a0, sp, 120 ! 0-0
	sw	a1, a0, 16 ! 2181-2181
	lw	a0, sp, 116 ! 0-0
	sw	a1, a0, 12 ! 2181-2181
	lw	a0, sp, 112 ! 0-0
	sw	a1, a0, 8 ! 2181-2181
	lw	a0, sp, 108 ! 0-0
	sw	a1, a0, 4 ! 2181-2181
	lw	a0, sp, 104 ! 0-0
	sw	a1, a0, 0 ! 2181-2181
	lw	a0, sp, 100 ! 0-0
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	min_caml_create_array
	addi	sp, sp, -136
	lw	ra, sp, 132
	lw	a1, sp, 88 ! 0-0
	lw	a2, a1, 0 ! 2196-2196
	addi	a2, a2, -2 ! 2196-2196
	mv	a1, a2
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	init_line_elements.2893
	addi	sp, sp, -136
	lw	ra, sp, 132
	lw	a1, sp, 88 ! 0-0
	lw	a2, a1, 0 ! 2195-2195
	li	a3, 3 ! 2173-2173
	li	a4, l.12849 ! 2173-2173
	flw	fa0, a4, 0 ! 2173-2173
	sw	sp, a0, 132 ! 0-0
	sw	sp, a2, 136 ! 0-0
	mv	a0, a3
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_create_float_array
	addi	sp, sp, -144
	lw	ra, sp, 140
	sw	sp, a0, 140 ! 0-0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	create_float5x3array.2889
	addi	sp, sp, -148
	lw	ra, sp, 144
	li	a1, 5 ! 2175-2175
	li	a2, 0 ! 2175-2175
	sw	sp, a0, 144 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	min_caml_create_array
	addi	sp, sp, -152
	lw	ra, sp, 148
	li	a1, 5 ! 2176-2176
	li	a2, 0 ! 2176-2176
	sw	sp, a0, 148 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_create_array
	addi	sp, sp, -156
	lw	ra, sp, 152
	sw	sp, a0, 152 ! 0-0
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	create_float5x3array.2889
	addi	sp, sp, -160
	lw	ra, sp, 156
	sw	sp, a0, 156 ! 0-0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	create_float5x3array.2889
	addi	sp, sp, -164
	lw	ra, sp, 160
	li	a1, 1 ! 2179-2179
	li	a2, 0 ! 2179-2179
	sw	sp, a0, 160 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	min_caml_create_array
	addi	sp, sp, -168
	lw	ra, sp, 164
	sw	sp, a0, 164 ! 0-0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	create_float5x3array.2889
	addi	sp, sp, -172
	lw	ra, sp, 168
	mv	a1, hp ! 2181-2181
	addi	hp, hp, 32 ! 2181-2181
	sw	a1, a0, 28 ! 2181-2181
	lw	a0, sp, 164 ! 0-0
	sw	a1, a0, 24 ! 2181-2181
	lw	a0, sp, 160 ! 0-0
	sw	a1, a0, 20 ! 2181-2181
	lw	a0, sp, 156 ! 0-0
	sw	a1, a0, 16 ! 2181-2181
	lw	a0, sp, 152 ! 0-0
	sw	a1, a0, 12 ! 2181-2181
	lw	a0, sp, 148 ! 0-0
	sw	a1, a0, 8 ! 2181-2181
	lw	a0, sp, 144 ! 0-0
	sw	a1, a0, 4 ! 2181-2181
	lw	a0, sp, 140 ! 0-0
	sw	a1, a0, 0 ! 2181-2181
	lw	a0, sp, 136 ! 0-0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_create_array
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 88 ! 0-0
	lw	a2, a1, 0 ! 2196-2196
	addi	a2, a2, -2 ! 2196-2196
	mv	a1, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	init_line_elements.2893
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 88 ! 0-0
	lw	a2, a1, 0 ! 2195-2195
	li	a3, 3 ! 2173-2173
	li	a4, l.12849 ! 2173-2173
	flw	fa0, a4, 0 ! 2173-2173
	sw	sp, a0, 168 ! 0-0
	sw	sp, a2, 172 ! 0-0
	mv	a0, a3
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_create_float_array
	addi	sp, sp, -180
	lw	ra, sp, 176
	sw	sp, a0, 176 ! 0-0
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	create_float5x3array.2889
	addi	sp, sp, -184
	lw	ra, sp, 180
	li	a1, 5 ! 2175-2175
	li	a2, 0 ! 2175-2175
	sw	sp, a0, 180 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_create_array
	addi	sp, sp, -188
	lw	ra, sp, 184
	li	a1, 5 ! 2176-2176
	li	a2, 0 ! 2176-2176
	sw	sp, a0, 184 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	min_caml_create_array
	addi	sp, sp, -192
	lw	ra, sp, 188
	sw	sp, a0, 188 ! 0-0
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	create_float5x3array.2889
	addi	sp, sp, -196
	lw	ra, sp, 192
	sw	sp, a0, 192 ! 0-0
	sw	sp, ra, 196
	addi	sp, sp, 200
	jal	create_float5x3array.2889
	addi	sp, sp, -200
	lw	ra, sp, 196
	li	a1, 1 ! 2179-2179
	li	a2, 0 ! 2179-2179
	sw	sp, a0, 196 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	min_caml_create_array
	addi	sp, sp, -204
	lw	ra, sp, 200
	sw	sp, a0, 200 ! 0-0
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	create_float5x3array.2889
	addi	sp, sp, -208
	lw	ra, sp, 204
	mv	a1, hp ! 2181-2181
	addi	hp, hp, 32 ! 2181-2181
	sw	a1, a0, 28 ! 2181-2181
	lw	a0, sp, 200 ! 0-0
	sw	a1, a0, 24 ! 2181-2181
	lw	a0, sp, 196 ! 0-0
	sw	a1, a0, 20 ! 2181-2181
	lw	a0, sp, 192 ! 0-0
	sw	a1, a0, 16 ! 2181-2181
	lw	a0, sp, 188 ! 0-0
	sw	a1, a0, 12 ! 2181-2181
	lw	a0, sp, 184 ! 0-0
	sw	a1, a0, 8 ! 2181-2181
	lw	a0, sp, 180 ! 0-0
	sw	a1, a0, 4 ! 2181-2181
	lw	a0, sp, 176 ! 0-0
	sw	a1, a0, 0 ! 2181-2181
	lw	a0, sp, 172 ! 0-0
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	min_caml_create_array
	addi	sp, sp, -208
	lw	ra, sp, 204
	lw	a1, sp, 88 ! 0-0
	lw	a2, a1, 0 ! 2196-2196
	addi	a2, a2, -2 ! 2196-2196
	mv	a1, a2
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	init_line_elements.2893
	addi	sp, sp, -208
	lw	ra, sp, 204
	lw	a21, sp, 84 ! 0-0
	sw	sp, a0, 204 ! 0-0
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a21, sp, 80 ! 0-0
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a0, 0 ! 769-769
	lw	a21, sp, 76 ! 0-0
	sw	sp, a0, 208 ! 0-0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.18582 ! 761-764
	lw	a0, sp, 208 ! 0-0
	lw	a1, sp, 72 ! 0-0
	sw	a1, a0, 0 ! 764-764
	j	beq_cont.18583
beq_else.18582:
	li	a0, 1 ! 762-762
	lw	a21, sp, 68 ! 0-0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
beq_cont.18583:
	li	a0, 0 ! 806-806
	lw	a21, sp, 64 ! 0-0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 0 ! 807-807
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	read_or_network.2610
	addi	sp, sp, -216
	lw	ra, sp, 212
	lw	a1, sp, 60 ! 0-0
	sw	a1, a0, 0 ! 807-807
	li	a0, 80 ! 2016-2016
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_char
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 51 ! 2017-2017
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_char
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 10 ! 2018-2018
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_char
	addi	sp, sp, -216
	lw	ra, sp, 212
	lw	a0, sp, 88 ! 0-0
	lw	a1, a0, 0 ! 2019-2019
	mv	a0, a1
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_int
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 32 ! 2020-2020
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_char
	addi	sp, sp, -216
	lw	ra, sp, 212
	lw	a0, sp, 88 ! 0-0
	lw	a1, a0, 4 ! 2021-2021
	mv	a0, a1
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_int
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 32 ! 2022-2022
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_char
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 255 ! 2023-2023
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_int
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 10 ! 2024-2024
	sw	sp, ra, 212
	addi	sp, sp, 216
	jal	min_caml_print_char
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 4 ! 2310-2310
	lw	a21, sp, 56 ! 0-0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	li	a0, 9 ! 2311-2311
	li	a1, 0 ! 2311-2311
	li	a2, 0 ! 2311-2311
	lw	a21, sp, 52 ! 0-0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	lw	a0, sp, 48 ! 0-0
	lw	a1, a0, 16 ! 2304-2304
	lw	a2, a1, 476 ! 2297-2297
	lw	a3, sp, 72 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a1, 212 ! 0-0
	blt	a4, a5, bge_else.18584 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 44 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a2, 4 ! 544-545
	lw	a8, a2, 0 ! 538-539
	lw	a9, a5, 4 ! 252-257
	li	a10, 1 ! 1176-1176
	sw	sp, a2, 216 ! 0-0
	bne	a9, a10, beq_else.18586 ! 1176-1181
	sw	sp, a7, 220 ! 0-0
	sw	sp, a4, 224 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 228
	addi	sp, sp, 232
	jal	setup_rect_table.2700
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a1, sp, 224 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 220 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18587
beq_else.18586:
	li	a10, 2 ! 1178-1178
	bne	a9, a10, beq_else.18588 ! 1178-1181
	sw	sp, a7, 220 ! 0-0
	sw	sp, a4, 224 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 228
	addi	sp, sp, 232
	jal	setup_surface_table.2703
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a1, sp, 224 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 220 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18589
beq_else.18588:
	sw	sp, a7, 220 ! 0-0
	sw	sp, a4, 224 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 228
	addi	sp, sp, 232
	jal	setup_second_table.2706
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a1, sp, 224 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 220 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18589:
beq_cont.18587:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 216 ! 0-0
	lw	a21, sp, 40 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	j	bge_cont.18585
bge_else.18584:
bge_cont.18585:
	li	a1, 118 ! 2298-2298
	lw	a0, sp, 212 ! 0-0
	lw	a21, sp, 36 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a0, sp, 48 ! 0-0
	lw	a0, a0, 12 ! 2304-2304
	li	a1, 119 ! 2304-2304
	lw	a21, sp, 36 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	li	a0, 2 ! 2305-2305
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a0, sp, 28 ! 0-0
	flw	fa0, a0, 0 ! 164-164
	lw	a1, sp, 24 ! 0-0
	fsw	a1, fa0, 0 ! 164-164
	flw	fa0, a0, 4 ! 165-165
	fsw	a1, fa0, 4 ! 165-165
	flw	fa0, a0, 8 ! 166-166
	fsw	a1, fa0, 8 ! 166-166
	lw	a0, sp, 72 ! 0-0
	lw	a1, a0, 0 ! 1188-1188
	addi	a1, a1, -1 ! 1188-1188
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 40 ! 0-0
	mv	a0, a2
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a0, sp, 72 ! 0-0
	lw	a0, a0, 0 ! 2395-2395
	addi	a0, a0, -1 ! 2395-2395
	li	a1, 0 ! 2359-2359
	blt	a0, a1, bge_else.18590 ! 2359-2372
	slli	a1, a0, 2 ! 2360-2360
	lw	a2, sp, 44 ! 0-0
	add	t0, a2, a1 ! 2360-2360
	lw	a1, t0, 0 ! 2360-2360
	lw	a2, a1, 8 ! 262-267
	li	a3, 2 ! 2361-2361
	bne	a2, a3, beq_else.18592 ! 2361-2371
	lw	a2, a1, 28 ! 360-365
	flw	fa0, a2, 0 ! 365-365
	li	a2, l.12811 ! 2362-2362
	flw	fa1, a2, 0 ! 2362-2362
	sw	sp, a0, 228 ! 0-0
	sw	sp, a1, 232 ! 0-0
	sw	sp, ra, 236
	addi	sp, sp, 240
	jal	min_caml_fless
	addi	sp, sp, -240
	lw	ra, sp, 236
	li	a1, 0 ! 2362-2370
	bne	a0, a1, beq_else.18594 ! 2362-2370
	j	beq_cont.18595
beq_else.18594:
	lw	a1, sp, 232 ! 0-0
	lw	a0, a1, 4 ! 252-257
	li	a2, 1 ! 2365-2365
	bne	a0, a2, beq_else.18596 ! 2365-2369
	lw	a0, sp, 228 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 236
	addi	sp, sp, 240
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -240
	lw	ra, sp, 236
	j	beq_cont.18597
beq_else.18596:
	li	a2, 2 ! 2367-2367
	bne	a0, a2, beq_else.18598 ! 2367-2369
	lw	a0, sp, 228 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 236
	addi	sp, sp, 240
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -240
	lw	ra, sp, 236
	j	beq_cont.18599
beq_else.18598:
beq_cont.18599:
beq_cont.18597:
beq_cont.18595:
	j	beq_cont.18593
beq_else.18592:
beq_cont.18593:
	j	bge_cont.18591
bge_else.18590:
bge_cont.18591:
	li	a1, 0 ! 2396-2396
	li	a2, 0 ! 2396-2396
	lw	a0, sp, 168 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, ra, 236
	addi	sp, sp, 240
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -240
	lw	ra, sp, 236
	li	a1, 0 ! 2397-2397
	li	a2, 2 ! 2397-2397
	lw	a0, sp, 88 ! 0-0
	lw	a3, a0, 4 ! 2144-2144
	blt	a1, a3, bge_else.18600 ! 2144-2151
	ret ! 2151-2151
bge_else.18600:
	lw	a0, a0, 4 ! 2146-2146
	addi	a0, a0, -1 ! 2146-2146
	sw	sp, a1, 236 ! 0-0
	blt	a1, a0, bge_else.18601 ! 2146-2148
	j	bge_cont.18602
bge_else.18601:
	li	a0, 1 ! 2147-2147
	lw	a3, sp, 204 ! 0-0
	lw	a21, sp, 8 ! 0-0
	mv	a1, a0
	mv	a0, a3
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
bge_cont.18602:
	li	a0, 0 ! 2149-2149
	lw	a1, sp, 236 ! 0-0
	lw	a2, sp, 132 ! 0-0
	lw	a3, sp, 168 ! 0-0
	lw	a4, sp, 204 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	li	a0, 1 ! 2150-2150
	li	a4, 4 ! 130-130
	lw	a1, sp, 168 ! 0-0
	lw	a2, sp, 204 ! 0-0
	lw	a3, sp, 132 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	ret ! 2150-2150
min_caml_start:
	li	a0, 1 ! 23-23
	li	a1, 0 ! 23-23
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 0 ! 27-27
	li	a2, l.12849 ! 27-27
	flw	fa0, a2, 0 ! 27-27
	sw	sp, a0, 0 ! 0-0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 60 ! 28-28
	li	a2, 0 ! 28-28
	li	a3, 0 ! 28-28
	li	a4, 0 ! 28-28
	li	a5, 0 ! 28-28
	li	a6, 0 ! 28-28
	mv	a7, hp ! 28-28
	addi	hp, hp, 44 ! 28-28
	sw	a7, a0, 40 ! 28-28
	sw	a7, a0, 36 ! 28-28
	sw	a7, a0, 32 ! 28-28
	sw	a7, a0, 28 ! 28-28
	sw	a7, a6, 24 ! 28-28
	sw	a7, a0, 20 ! 28-28
	sw	a7, a0, 16 ! 28-28
	sw	a7, a5, 12 ! 28-28
	sw	a7, a4, 8 ! 28-28
	sw	a7, a3, 4 ! 28-28
	sw	a7, a2, 0 ! 28-28
	mv	a0, a7 ! 28-28
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 3 ! 31-31
	li	a2, l.12849 ! 31-31
	flw	fa0, a2, 0 ! 31-31
	sw	sp, a0, 4 ! 0-0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 3 ! 33-33
	li	a2, l.12849 ! 33-33
	flw	fa0, a2, 0 ! 33-33
	sw	sp, a0, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_float_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 3 ! 35-35
	li	a2, l.12849 ! 35-35
	flw	fa0, a2, 0 ! 35-35
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_float_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 1 ! 37-37
	li	a2, l.13508 ! 37-37
	flw	fa0, a2, 0 ! 37-37
	sw	sp, a0, 16 ! 0-0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_float_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 50 ! 39-39
	li	a2, 1 ! 39-39
	li	a3, -1 ! 39-39
	sw	sp, a0, 20 ! 0-0
	sw	sp, a1, 24 ! 0-0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 1 ! 41-41
	li	a2, 1 ! 41-41
	lw	a3, a0, 0 ! 41-41
	sw	sp, a0, 28 ! 0-0
	sw	sp, a1, 32 ! 0-0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 32 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 1 ! 45-45
	li	a2, l.12849 ! 45-45
	flw	fa0, a2, 0 ! 45-45
	sw	sp, a0, 36 ! 0-0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 1 ! 47-47
	li	a2, 0 ! 47-47
	sw	sp, a0, 40 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 1 ! 49-49
	li	a2, l.13418 ! 49-49
	flw	fa0, a2, 0 ! 49-49
	sw	sp, a0, 44 ! 0-0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_float_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 3 ! 51-51
	li	a2, l.12849 ! 51-51
	flw	fa0, a2, 0 ! 51-51
	sw	sp, a0, 48 ! 0-0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 1 ! 53-53
	li	a2, 0 ! 53-53
	sw	sp, a0, 52 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 3 ! 55-55
	li	a2, l.12849 ! 55-55
	flw	fa0, a2, 0 ! 55-55
	sw	sp, a0, 56 ! 0-0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 3 ! 57-57
	li	a2, l.12849 ! 57-57
	flw	fa0, a2, 0 ! 57-57
	sw	sp, a0, 60 ! 0-0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_float_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 3 ! 60-60
	li	a2, l.12849 ! 60-60
	flw	fa0, a2, 0 ! 60-60
	sw	sp, a0, 64 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_create_float_array
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 3 ! 62-62
	li	a2, l.12849 ! 62-62
	flw	fa0, a2, 0 ! 62-62
	sw	sp, a0, 68 ! 0-0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_create_float_array
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 2 ! 65-65
	li	a2, 0 ! 65-65
	sw	sp, a0, 72 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_create_array
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 2 ! 67-67
	li	a2, 0 ! 67-67
	sw	sp, a0, 76 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_create_array
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 1 ! 69-69
	li	a2, l.12849 ! 69-69
	flw	fa0, a2, 0 ! 69-69
	sw	sp, a0, 80 ! 0-0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_create_float_array
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 3 ! 72-72
	li	a2, l.12849 ! 72-72
	flw	fa0, a2, 0 ! 72-72
	sw	sp, a0, 84 ! 0-0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_create_float_array
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 3 ! 74-74
	li	a2, l.12849 ! 74-74
	flw	fa0, a2, 0 ! 74-74
	sw	sp, a0, 88 ! 0-0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_create_float_array
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 3 ! 77-77
	li	a2, l.12849 ! 77-77
	flw	fa0, a2, 0 ! 77-77
	sw	sp, a0, 92 ! 0-0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_create_float_array
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 3 ! 78-78
	li	a2, l.12849 ! 78-78
	flw	fa0, a2, 0 ! 78-78
	sw	sp, a0, 96 ! 0-0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_create_float_array
	addi	sp, sp, -104
	lw	ra, sp, 100
	li	a1, 3 ! 79-79
	li	a2, l.12849 ! 79-79
	flw	fa0, a2, 0 ! 79-79
	sw	sp, a0, 100 ! 0-0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_create_float_array
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 3 ! 82-82
	li	a2, l.12849 ! 82-82
	flw	fa0, a2, 0 ! 82-82
	sw	sp, a0, 104 ! 0-0
	mv	a0, a1
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_create_float_array
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 86-86
	li	a2, l.12849 ! 86-86
	flw	fa0, a2, 0 ! 86-86
	sw	sp, a0, 108 ! 0-0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_create_float_array
	addi	sp, sp, -116
	lw	ra, sp, 112
	mv	a1, a0
	li	a0, 0 ! 87-87
	sw	sp, a1, 112 ! 0-0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 88-88
	mv	a2, hp ! 88-88
	addi	hp, hp, 8 ! 88-88
	sw	a2, a0, 4 ! 88-88
	lw	a0, sp, 112 ! 0-0
	sw	a2, a0, 0 ! 88-88
	mv	a0, a2 ! 88-88
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	mv	a1, a0
	li	a0, 5 ! 89-89
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 93-93
	li	a2, l.12849 ! 93-93
	flw	fa0, a2, 0 ! 93-93
	sw	sp, a0, 116 ! 0-0
	mv	a0, a1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_create_float_array
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a1, 3 ! 94-94
	li	a2, l.12849 ! 94-94
	flw	fa0, a2, 0 ! 94-94
	sw	sp, a0, 120 ! 0-0
	mv	a0, a1
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_create_float_array
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a1, 60 ! 95-95
	lw	a2, sp, 120 ! 0-0
	sw	sp, a0, 124 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_create_array
	addi	sp, sp, -132
	lw	ra, sp, 128
	mv	a1, hp ! 96-96
	addi	hp, hp, 8 ! 96-96
	sw	a1, a0, 4 ! 96-96
	lw	a2, sp, 124 ! 0-0
	sw	a1, a2, 0 ! 96-96
	li	a3, 0 ! 100-100
	li	a4, l.12849 ! 100-100
	flw	fa0, a4, 0 ! 100-100
	sw	sp, a1, 128 ! 0-0
	sw	sp, a0, 132 ! 0-0
	mv	a0, a3
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_create_float_array
	addi	sp, sp, -140
	lw	ra, sp, 136
	mv	a1, a0
	li	a0, 0 ! 101-101
	sw	sp, a1, 136 ! 0-0
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_create_array
	addi	sp, sp, -144
	lw	ra, sp, 140
	mv	a1, hp ! 102-102
	addi	hp, hp, 8 ! 102-102
	sw	a1, a0, 4 ! 102-102
	lw	a0, sp, 136 ! 0-0
	sw	a1, a0, 0 ! 102-102
	mv	a0, a1 ! 102-102
	li	a1, 180 ! 103-103
	li	a2, 0 ! 103-103
	li	a3, l.12849 ! 103-103
	flw	fa0, a3, 0 ! 103-103
	mv	a3, hp ! 103-103
	addi	hp, hp, 12 ! 103-103
	fsw	a3, fa0, 8 ! 103-103
	sw	a3, a0, 4 ! 103-103
	sw	a3, a2, 0 ! 103-103
	mv	a0, a3 ! 103-103
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_create_array
	addi	sp, sp, -144
	lw	ra, sp, 140
	li	a1, 1 ! 107-107
	li	a2, 0 ! 107-107
	sw	sp, a0, 140 ! 0-0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_create_array
	addi	sp, sp, -148
	lw	ra, sp, 144
	mv	a1, hp ! 580-2404
	addi	hp, hp, 24 ! 580-2404
	li	a2, read_screen_settings.2595 ! 580-2404
	sw	a1, a2, 0 ! 580-2404
	lw	a2, sp, 12 ! 0-0
	sw	a1, a2, 20 ! 580-2404
	lw	a3, sp, 104 ! 0-0
	sw	a1, a3, 16 ! 580-2404
	lw	a4, sp, 100 ! 0-0
	sw	a1, a4, 12 ! 580-2404
	lw	a5, sp, 96 ! 0-0
	sw	a1, a5, 8 ! 580-2404
	lw	a6, sp, 8 ! 0-0
	sw	a1, a6, 4 ! 580-2404
	mv	a6, hp ! 613-2404
	addi	hp, hp, 12 ! 613-2404
	li	a7, read_light.2597 ! 613-2404
	sw	a6, a7, 0 ! 613-2404
	lw	a7, sp, 16 ! 0-0
	sw	a6, a7, 8 ! 613-2404
	lw	a8, sp, 20 ! 0-0
	sw	a6, a8, 4 ! 613-2404
	mv	a9, hp ! 676-2404
	addi	hp, hp, 8 ! 676-2404
	li	a10, read_nth_object.2602 ! 676-2404
	sw	a9, a10, 0 ! 676-2404
	lw	a10, sp, 4 ! 0-0
	sw	a9, a10, 4 ! 676-2404
	mv	a11, hp ! 759-2404
	addi	hp, hp, 12 ! 759-2404
	li	a12, read_object.2604 ! 759-2404
	sw	a11, a12, 0 ! 759-2404
	sw	a11, a9, 8 ! 759-2404
	lw	a12, sp, 0 ! 0-0
	sw	a11, a12, 4 ! 759-2404
	mv	a13, hp ! 792-2404
	addi	hp, hp, 8 ! 792-2404
	li	a14, read_and_network.2612 ! 792-2404
	sw	a13, a14, 0 ! 792-2404
	lw	a14, sp, 28 ! 0-0
	sw	a13, a14, 4 ! 792-2404
	mv	a15, hp ! 827-2404
	addi	hp, hp, 8 ! 827-2404
	li	a16, solver_rect_surface.2616 ! 827-2404
	sw	a15, a16, 0 ! 827-2404
	lw	a16, sp, 40 ! 0-0
	sw	a15, a16, 4 ! 827-2404
	mv	a17, hp ! 851-2404
	addi	hp, hp, 8 ! 851-2404
	li	a18, solver_surface.2631 ! 851-2404
	sw	a17, a18, 0 ! 851-2404
	sw	a17, a16, 4 ! 851-2404
	mv	a18, hp ! 903-2404
	addi	hp, hp, 8 ! 903-2404
	li	a19, solver_second.2650 ! 903-2404
	sw	a18, a19, 0 ! 903-2404
	sw	a18, a16, 4 ! 903-2404
	mv	a19, hp ! 932-2404
	addi	hp, hp, 20 ! 932-2404
	li	a20, solver.2656 ! 932-2404
	sw	a19, a20, 0 ! 932-2404
	sw	a19, a18, 16 ! 932-2404
	sw	a19, a15, 12 ! 932-2404
	sw	a19, a16, 8 ! 932-2404
	sw	a19, a10, 4 ! 932-2404
	mv	a20, hp ! 964-2404
	addi	hp, hp, 8 ! 964-2404
	li	a21, solver_rect_fast.2660 ! 964-2404
	sw	a20, a21, 0 ! 964-2404
	sw	a20, a16, 4 ! 964-2404
	mv	a21, hp ! 1006-2404
	addi	hp, hp, 8 ! 1006-2404
	sw	sp, a13, 144 ! 0-0
	li	a13, solver_second_fast.2673 ! 1006-2404
	sw	a21, a13, 0 ! 1006-2404
	sw	a21, a16, 4 ! 1006-2404
	mv	a13, hp ! 1054-2404
	addi	hp, hp, 8 ! 1054-2404
	sw	sp, a6, 148 ! 0-0
	li	a6, solver_second_fast2.2690 ! 1054-2404
	sw	a13, a6, 0 ! 1054-2404
	sw	a13, a16, 4 ! 1054-2404
	mv	a6, hp ! 1073-2404
	addi	hp, hp, 20 ! 1073-2404
	sw	sp, a9, 152 ! 0-0
	li	a9, solver_fast2.2697 ! 1073-2404
	sw	a6, a9, 0 ! 1073-2404
	sw	a6, a13, 16 ! 1073-2404
	sw	a6, a20, 12 ! 1073-2404
	sw	a6, a16, 8 ! 1073-2404
	sw	a6, a10, 4 ! 1073-2404
	mv	a9, hp ! 1170-2404
	addi	hp, hp, 8 ! 1170-2404
	sw	sp, a11, 156 ! 0-0
	li	a11, iter_setup_dirvec_constants.2709 ! 1170-2404
	sw	a9, a11, 0 ! 1170-2404
	sw	a9, a10, 4 ! 1170-2404
	mv	a11, hp ! 1195-2404
	addi	hp, hp, 8 ! 1195-2404
	sw	sp, a1, 160 ! 0-0
	li	a1, setup_startp_constants.2714 ! 1195-2404
	sw	a11, a1, 0 ! 1195-2404
	sw	a11, a10, 4 ! 1195-2404
	mv	a1, hp ! 1264-2404
	addi	hp, hp, 8 ! 1264-2404
	sw	sp, a9, 164 ! 0-0
	li	a9, check_all_inside.2739 ! 1264-2404
	sw	a1, a9, 0 ! 1264-2404
	sw	a1, a10, 4 ! 1264-2404
	mv	a9, hp ! 1284-2404
	addi	hp, hp, 40 ! 1284-2404
	li	a4, shadow_check_and_group.2745 ! 1284-2404
	sw	a9, a4, 0 ! 1284-2404
	lw	a4, sp, 124 ! 0-0
	sw	a9, a4, 36 ! 1284-2404
	sw	a9, a21, 32 ! 1284-2404
	sw	a9, a20, 28 ! 1284-2404
	sw	a9, a16, 24 ! 1284-2404
	sw	a9, a10, 20 ! 1284-2404
	sw	a9, a7, 16 ! 1284-2404
	lw	a3, sp, 52 ! 0-0
	sw	a9, a3, 12 ! 1284-2404
	lw	a5, sp, 132 ! 0-0
	sw	a9, a5, 8 ! 1284-2404
	sw	a9, a1, 4 ! 1284-2404
	mv	a2, hp ! 1314-2404
	addi	hp, hp, 12 ! 1314-2404
	li	a8, shadow_check_one_or_group.2748 ! 1314-2404
	sw	a2, a8, 0 ! 1314-2404
	sw	a2, a9, 8 ! 1314-2404
	sw	a2, a14, 4 ! 1314-2404
	mv	a8, hp ! 1329-2404
	addi	hp, hp, 44 ! 1329-2404
	li	a7, shadow_check_one_or_matrix.2751 ! 1329-2404
	sw	a8, a7, 0 ! 1329-2404
	sw	a8, a4, 40 ! 1329-2404
	sw	a8, a21, 36 ! 1329-2404
	sw	a8, a20, 32 ! 1329-2404
	sw	a8, a16, 28 ! 1329-2404
	sw	a8, a2, 24 ! 1329-2404
	sw	a8, a9, 20 ! 1329-2404
	sw	a8, a10, 16 ! 1329-2404
	sw	a8, a3, 12 ! 1329-2404
	sw	a8, a5, 8 ! 1329-2404
	sw	a8, a14, 4 ! 1329-2404
	mv	a2, hp ! 1365-2404
	addi	hp, hp, 48 ! 1365-2404
	li	a5, solve_each_element.2754 ! 1365-2404
	sw	a2, a5, 0 ! 1365-2404
	lw	a5, sp, 48 ! 0-0
	sw	a2, a5, 44 ! 1365-2404
	lw	a7, sp, 88 ! 0-0
	sw	a2, a7, 40 ! 1365-2404
	sw	a2, a17, 36 ! 1365-2404
	sw	a2, a18, 32 ! 1365-2404
	sw	a2, a15, 28 ! 1365-2404
	sw	a2, a16, 24 ! 1365-2404
	sw	a2, a10, 20 ! 1365-2404
	lw	a9, sp, 44 ! 0-0
	sw	a2, a9, 16 ! 1365-2404
	sw	a2, a3, 12 ! 1365-2404
	lw	a21, sp, 56 ! 0-0
	sw	a2, a21, 8 ! 1365-2404
	sw	a2, a1, 4 ! 1365-2404
	mv	a4, hp ! 1406-2404
	addi	hp, hp, 12 ! 1406-2404
	li	a12, solve_one_or_network.2758 ! 1406-2404
	sw	a4, a12, 0 ! 1406-2404
	sw	a4, a2, 8 ! 1406-2404
	sw	a4, a14, 4 ! 1406-2404
	mv	a12, hp ! 1416-2404
	addi	hp, hp, 48 ! 1416-2404
	sw	sp, a0, 168 ! 0-0
	li	a0, trace_or_matrix.2762 ! 1416-2404
	sw	a12, a0, 0 ! 1416-2404
	sw	a12, a5, 44 ! 1416-2404
	sw	a12, a7, 40 ! 1416-2404
	sw	a12, a17, 36 ! 1416-2404
	sw	a12, a18, 32 ! 1416-2404
	sw	a12, a15, 28 ! 1416-2404
	sw	a12, a16, 24 ! 1416-2404
	sw	a12, a19, 20 ! 1416-2404
	sw	a12, a4, 16 ! 1416-2404
	sw	a12, a2, 12 ! 1416-2404
	sw	a12, a10, 8 ! 1416-2404
	sw	a12, a14, 4 ! 1416-2404
	mv	a0, hp ! 1458-2404
	addi	hp, hp, 44 ! 1458-2404
	li	a2, solve_each_element_fast.2768 ! 1458-2404
	sw	a0, a2, 0 ! 1458-2404
	sw	a0, a5, 40 ! 1458-2404
	lw	a2, sp, 92 ! 0-0
	sw	a0, a2, 36 ! 1458-2404
	sw	a0, a13, 32 ! 1458-2404
	sw	a0, a20, 28 ! 1458-2404
	sw	a0, a16, 24 ! 1458-2404
	sw	a0, a10, 20 ! 1458-2404
	sw	a0, a9, 16 ! 1458-2404
	sw	a0, a3, 12 ! 1458-2404
	sw	a0, a21, 8 ! 1458-2404
	sw	a0, a1, 4 ! 1458-2404
	mv	a1, hp ! 1499-2404
	addi	hp, hp, 12 ! 1499-2404
	li	a4, solve_one_or_network_fast.2772 ! 1499-2404
	sw	a1, a4, 0 ! 1499-2404
	sw	a1, a0, 8 ! 1499-2404
	sw	a1, a14, 4 ! 1499-2404
	mv	a4, hp ! 1509-2404
	addi	hp, hp, 40 ! 1509-2404
	li	a15, trace_or_matrix_fast.2776 ! 1509-2404
	sw	a4, a15, 0 ! 1509-2404
	sw	a4, a5, 36 ! 1509-2404
	sw	a4, a13, 32 ! 1509-2404
	sw	a4, a20, 28 ! 1509-2404
	sw	a4, a6, 24 ! 1509-2404
	sw	a4, a16, 20 ! 1509-2404
	sw	a4, a1, 16 ! 1509-2404
	sw	a4, a0, 12 ! 1509-2404
	sw	a4, a10, 8 ! 1509-2404
	sw	a4, a14, 4 ! 1509-2404
	mv	a13, hp ! 1533-2404
	addi	hp, hp, 36 ! 1533-2404
	li	a15, judge_intersection_fast.2780 ! 1533-2404
	sw	a13, a15, 0 ! 1533-2404
	sw	a13, a4, 32 ! 1533-2404
	sw	a13, a5, 28 ! 1533-2404
	sw	a13, a6, 24 ! 1533-2404
	sw	a13, a16, 20 ! 1533-2404
	sw	a13, a1, 16 ! 1533-2404
	sw	a13, a0, 12 ! 1533-2404
	lw	a0, sp, 36 ! 0-0
	sw	a13, a0, 8 ! 1533-2404
	sw	a13, a14, 4 ! 1533-2404
	mv	a1, hp ! 1570-2404
	addi	hp, hp, 12 ! 1570-2404
	li	a6, get_nvector_second.2786 ! 1570-2404
	sw	a1, a6, 0 ! 1570-2404
	lw	a6, sp, 60 ! 0-0
	sw	a1, a6, 8 ! 1570-2404
	sw	a1, a3, 4 ! 1570-2404
	mv	a14, hp ! 1592-2404
	addi	hp, hp, 16 ! 1592-2404
	li	a15, get_nvector.2788 ! 1592-2404
	sw	a14, a15, 0 ! 1592-2404
	sw	a14, a6, 12 ! 1592-2404
	sw	a14, a9, 8 ! 1592-2404
	sw	a14, a1, 4 ! 1592-2404
	mv	a15, hp ! 1608-2404
	addi	hp, hp, 8 ! 1608-2404
	li	a16, utexture.2791 ! 1608-2404
	sw	a15, a16, 0 ! 1608-2404
	lw	a16, sp, 64 ! 0-0
	sw	a15, a16, 4 ! 1608-2404
	mv	a17, hp ! 1703-2404
	addi	hp, hp, 44 ! 1703-2404
	li	a18, trace_reflections.2798 ! 1703-2404
	sw	a17, a18, 0 ! 1703-2404
	sw	a17, a4, 40 ! 1703-2404
	sw	a17, a5, 36 ! 1703-2404
	sw	a17, a16, 32 ! 1703-2404
	sw	a17, a8, 28 ! 1703-2404
	lw	a18, sp, 72 ! 0-0
	sw	a17, a18, 24 ! 1703-2404
	lw	a19, sp, 140 ! 0-0
	sw	a17, a19, 20 ! 1703-2404
	sw	a17, a0, 16 ! 1703-2404
	sw	a17, a6, 12 ! 1703-2404
	sw	a17, a9, 8 ! 1703-2404
	sw	a17, a21, 4 ! 1703-2404
	mv	a20, hp ! 1732-2404
	addi	hp, hp, 88 ! 1732-2404
	li	a19, trace_ray.2803 ! 1732-2404
	sw	a20, a19, 0 ! 1732-2404
	sw	a20, a15, 84 ! 1732-2404
	sw	a20, a17, 80 ! 1732-2404
	sw	a20, a12, 76 ! 1732-2404
	sw	a20, a5, 72 ! 1732-2404
	sw	a20, a16, 68 ! 1732-2404
	sw	a20, a2, 64 ! 1732-2404
	sw	a20, a7, 60 ! 1732-2404
	sw	a20, a8, 56 ! 1732-2404
	sw	a20, a11, 52 ! 1732-2404
	sw	a20, a18, 48 ! 1732-2404
	sw	a20, a0, 44 ! 1732-2404
	sw	a20, a10, 40 ! 1732-2404
	sw	a20, a6, 36 ! 1732-2404
	lw	a12, sp, 168 ! 0-0
	sw	a20, a12, 32 ! 1732-2404
	lw	a17, sp, 0 ! 0-0
	sw	a20, a17, 28 ! 1732-2404
	lw	a19, sp, 16 ! 0-0
	sw	a20, a19, 24 ! 1732-2404
	sw	a20, a9, 20 ! 1732-2404
	sw	a20, a3, 16 ! 1732-2404
	sw	a20, a21, 12 ! 1732-2404
	sw	a20, a1, 8 ! 1732-2404
	lw	a12, sp, 20 ! 0-0
	sw	a20, a12, 4 ! 1732-2404
	mv	a12, hp ! 1825-2404
	addi	hp, hp, 60 ! 1825-2404
	li	a7, trace_diffuse_ray.2809 ! 1825-2404
	sw	a12, a7, 0 ! 1825-2404
	sw	a12, a15, 56 ! 1825-2404
	sw	a12, a4, 52 ! 1825-2404
	sw	a12, a5, 48 ! 1825-2404
	sw	a12, a16, 44 ! 1825-2404
	sw	a12, a8, 40 ! 1825-2404
	sw	a12, a0, 36 ! 1825-2404
	sw	a12, a10, 32 ! 1825-2404
	sw	a12, a6, 28 ! 1825-2404
	sw	a12, a19, 24 ! 1825-2404
	sw	a12, a9, 20 ! 1825-2404
	sw	a12, a3, 16 ! 1825-2404
	sw	a12, a21, 12 ! 1825-2404
	sw	a12, a1, 8 ! 1825-2404
	lw	a1, sp, 68 ! 0-0
	sw	a12, a1, 4 ! 1825-2404
	mv	a4, hp ! 1844-2404
	addi	hp, hp, 56 ! 1844-2404
	li	a5, iter_trace_diffuse_rays.2812 ! 1844-2404
	sw	a4, a5, 0 ! 1844-2404
	sw	a4, a15, 52 ! 1844-2404
	sw	a4, a12, 48 ! 1844-2404
	sw	a4, a16, 44 ! 1844-2404
	sw	a4, a8, 40 ! 1844-2404
	sw	a4, a0, 36 ! 1844-2404
	sw	a4, a10, 32 ! 1844-2404
	sw	a4, a6, 28 ! 1844-2404
	sw	a4, a19, 24 ! 1844-2404
	sw	a4, a13, 20 ! 1844-2404
	sw	a4, a3, 16 ! 1844-2404
	sw	a4, a21, 12 ! 1844-2404
	sw	a4, a14, 8 ! 1844-2404
	sw	a4, a1, 4 ! 1844-2404
	mv	a3, hp ! 1870-2404
	addi	hp, hp, 24 ! 1870-2404
	li	a5, trace_diffuse_ray_80percent.2821 ! 1870-2404
	sw	a3, a5, 0 ! 1870-2404
	sw	a3, a2, 20 ! 1870-2404
	sw	a3, a11, 16 ! 1870-2404
	sw	a3, a17, 12 ! 1870-2404
	sw	a3, a4, 8 ! 1870-2404
	lw	a5, sp, 116 ! 0-0
	sw	a3, a5, 4 ! 1870-2404
	mv	a6, hp ! 1896-2404
	addi	hp, hp, 36 ! 1896-2404
	li	a7, calc_diffuse_using_1point.2825 ! 1896-2404
	sw	a6, a7, 0 ! 1896-2404
	sw	a6, a12, 32 ! 1896-2404
	sw	a6, a2, 28 ! 1896-2404
	sw	a6, a11, 24 ! 1896-2404
	sw	a6, a18, 20 ! 1896-2404
	sw	a6, a17, 16 ! 1896-2404
	sw	a6, a4, 12 ! 1896-2404
	sw	a6, a5, 8 ! 1896-2404
	sw	a6, a1, 4 ! 1896-2404
	mv	a7, hp ! 1915-2404
	addi	hp, hp, 12 ! 1915-2404
	li	a8, calc_diffuse_using_5points.2828 ! 1915-2404
	sw	a7, a8, 0 ! 1915-2404
	sw	a7, a18, 8 ! 1915-2404
	sw	a7, a1, 4 ! 1915-2404
	mv	a8, hp ! 1935-2404
	addi	hp, hp, 20 ! 1935-2404
	li	a9, do_without_neighbors.2834 ! 1935-2404
	sw	a8, a9, 0 ! 1935-2404
	sw	a8, a3, 16 ! 1935-2404
	sw	a8, a18, 12 ! 1935-2404
	sw	a8, a1, 8 ! 1935-2404
	sw	a8, a6, 4 ! 1935-2404
	mv	a3, hp ! 1987-2404
	addi	hp, hp, 16 ! 1987-2404
	li	a9, try_exploit_neighbors.2850 ! 1987-2404
	sw	a3, a9, 0 ! 1987-2404
	sw	a3, a8, 12 ! 1987-2404
	sw	a3, a7, 8 ! 1987-2404
	sw	a3, a6, 4 ! 1987-2404
	mv	a9, hp ! 2034-2404
	addi	hp, hp, 8 ! 2034-2404
	li	a13, write_rgb.2861 ! 2034-2404
	sw	a9, a13, 0 ! 2034-2404
	sw	a9, a18, 4 ! 2034-2404
	mv	a13, hp ! 2051-2404
	addi	hp, hp, 32 ! 2051-2404
	li	a14, pretrace_diffuse_rays.2863 ! 2051-2404
	sw	a13, a14, 0 ! 2051-2404
	sw	a13, a12, 28 ! 2051-2404
	sw	a13, a2, 24 ! 2051-2404
	sw	a13, a11, 20 ! 2051-2404
	sw	a13, a17, 16 ! 2051-2404
	sw	a13, a4, 12 ! 2051-2404
	sw	a13, a5, 8 ! 2051-2404
	sw	a13, a1, 4 ! 2051-2404
	mv	a14, hp ! 2081-2404
	addi	hp, hp, 68 ! 2081-2404
	li	a15, pretrace_pixels.2866 ! 2081-2404
	sw	a14, a15, 0 ! 2081-2404
	lw	a15, sp, 12 ! 0-0
	sw	a14, a15, 64 ! 2081-2404
	sw	a14, a20, 60 ! 2081-2404
	sw	a14, a12, 56 ! 2081-2404
	sw	a14, a2, 52 ! 2081-2404
	lw	a2, sp, 88 ! 0-0
	sw	a14, a2, 48 ! 2081-2404
	sw	a14, a11, 44 ! 2081-2404
	lw	a2, sp, 96 ! 0-0
	sw	a14, a2, 40 ! 2081-2404
	lw	a2, sp, 84 ! 0-0
	sw	a14, a2, 36 ! 2081-2404
	sw	a14, a18, 32 ! 2081-2404
	lw	a11, sp, 108 ! 0-0
	sw	a14, a11, 28 ! 2081-2404
	sw	a14, a13, 24 ! 2081-2404
	sw	a14, a17, 20 ! 2081-2404
	sw	a14, a4, 16 ! 2081-2404
	lw	a4, sp, 80 ! 0-0
	sw	a14, a4, 12 ! 2081-2404
	sw	a14, a5, 8 ! 2081-2404
	sw	a14, a1, 4 ! 2081-2404
	mv	a1, hp ! 2106-2404
	addi	hp, hp, 28 ! 2106-2404
	li	a11, pretrace_line.2873 ! 2106-2404
	sw	a1, a11, 0 ! 2106-2404
	lw	a11, sp, 104 ! 0-0
	sw	a1, a11, 24 ! 2106-2404
	lw	a11, sp, 100 ! 0-0
	sw	a1, a11, 20 ! 2106-2404
	sw	a1, a2, 16 ! 2106-2404
	sw	a1, a14, 12 ! 2106-2404
	lw	a11, sp, 76 ! 0-0
	sw	a1, a11, 8 ! 2106-2404
	sw	a1, a4, 4 ! 2106-2404
	mv	a12, hp ! 2122-2404
	addi	hp, hp, 32 ! 2122-2404
	li	a13, scan_pixel.2877 ! 2122-2404
	sw	a12, a13, 0 ! 2122-2404
	sw	a12, a9, 28 ! 2122-2404
	sw	a12, a3, 24 ! 2122-2404
	sw	a12, a18, 20 ! 2122-2404
	sw	a12, a11, 16 ! 2122-2404
	sw	a12, a8, 12 ! 2122-2404
	sw	a12, a7, 8 ! 2122-2404
	sw	a12, a6, 4 ! 2122-2404
	mv	a6, hp ! 2142-2404
	addi	hp, hp, 32 ! 2142-2404
	li	a7, scan_line.2883 ! 2142-2404
	sw	a6, a7, 0 ! 2142-2404
	sw	a6, a9, 28 ! 2142-2404
	sw	a6, a3, 24 ! 2142-2404
	sw	a6, a12, 20 ! 2142-2404
	sw	a6, a18, 16 ! 2142-2404
	sw	a6, a1, 12 ! 2142-2404
	sw	a6, a11, 8 ! 2142-2404
	sw	a6, a8, 4 ! 2142-2404
	mv	a3, hp ! 2222-2404
	addi	hp, hp, 8 ! 2222-2404
	li	a7, calc_dirvec.2903 ! 2222-2404
	sw	a3, a7, 0 ! 2222-2404
	sw	a3, a5, 4 ! 2222-2404
	mv	a7, hp ! 2243-2404
	addi	hp, hp, 8 ! 2243-2404
	li	a8, calc_dirvecs.2911 ! 2243-2404
	sw	a7, a8, 0 ! 2243-2404
	sw	a7, a3, 4 ! 2243-2404
	mv	a3, hp ! 2257-2404
	addi	hp, hp, 8 ! 2257-2404
	li	a8, calc_dirvec_rows.2916 ! 2257-2404
	sw	a3, a8, 0 ! 2257-2404
	sw	a3, a7, 4 ! 2257-2404
	mv	a7, hp ! 2276-2404
	addi	hp, hp, 8 ! 2276-2404
	li	a8, create_dirvec_elements.2922 ! 2276-2404
	sw	a7, a8, 0 ! 2276-2404
	sw	a7, a17, 4 ! 2276-2404
	mv	a8, hp ! 2283-2404
	addi	hp, hp, 16 ! 2283-2404
	li	a9, create_dirvecs.2925 ! 2283-2404
	sw	a8, a9, 0 ! 2283-2404
	sw	a8, a17, 12 ! 2283-2404
	sw	a8, a5, 8 ! 2283-2404
	sw	a8, a7, 4 ! 2283-2404
	mv	a7, hp ! 2295-2404
	addi	hp, hp, 16 ! 2295-2404
	li	a9, init_dirvec_constants.2927 ! 2295-2404
	sw	a7, a9, 0 ! 2295-2404
	sw	a7, a10, 12 ! 2295-2404
	sw	a7, a17, 8 ! 2295-2404
	lw	a9, sp, 164 ! 0-0
	sw	a7, a9, 4 ! 2295-2404
	mv	a13, hp ! 2302-2404
	addi	hp, hp, 24 ! 2302-2404
	li	a14, init_vecset_constants.2930 ! 2302-2404
	sw	a13, a14, 0 ! 2302-2404
	sw	a13, a10, 20 ! 2302-2404
	sw	a13, a17, 16 ! 2302-2404
	sw	a13, a9, 12 ! 2302-2404
	sw	a13, a7, 8 ! 2302-2404
	sw	a13, a5, 4 ! 2302-2404
	mv	a14, hp ! 2329-2404
	addi	hp, hp, 28 ! 2329-2404
	li	a15, setup_rect_reflection.2941 ! 2329-2404
	sw	a14, a15, 0 ! 2329-2404
	lw	a15, sp, 140 ! 0-0
	sw	a14, a15, 24 ! 2329-2404
	sw	a14, a10, 20 ! 2329-2404
	lw	a16, sp, 168 ! 0-0
	sw	a14, a16, 16 ! 2329-2404
	sw	a14, a17, 12 ! 2329-2404
	sw	a14, a19, 8 ! 2329-2404
	sw	a14, a9, 4 ! 2329-2404
	mv	a18, hp ! 2343-2404
	addi	hp, hp, 28 ! 2343-2404
	li	a20, setup_surface_reflection.2944 ! 2343-2404
	sw	a18, a20, 0 ! 2343-2404
	sw	a18, a15, 24 ! 2343-2404
	sw	a18, a10, 20 ! 2343-2404
	sw	a18, a16, 16 ! 2343-2404
	sw	a18, a17, 12 ! 2343-2404
	sw	a18, a19, 8 ! 2343-2404
	sw	a18, a9, 4 ! 2343-2404
	mv	a21, hp ! 2380-2404
	addi	hp, hp, 104 ! 2380-2404
	li	a15, rt.2949 ! 2380-2404
	sw	a21, a15, 0 ! 2380-2404
	lw	a15, sp, 124 ! 0-0
	sw	a21, a15, 100 ! 2380-2404
	sw	a21, a18, 96 ! 2380-2404
	sw	a21, a14, 92 ! 2380-2404
	sw	a21, a12, 88 ! 2380-2404
	sw	a21, a2, 84 ! 2380-2404
	sw	a21, a6, 80 ! 2380-2404
	lw	a2, sp, 160 ! 0-0
	sw	a21, a2, 76 ! 2380-2404
	lw	a2, sp, 156 ! 0-0
	sw	a21, a2, 72 ! 2380-2404
	lw	a2, sp, 152 ! 0-0
	sw	a21, a2, 68 ! 2380-2404
	lw	a2, sp, 148 ! 0-0
	sw	a21, a2, 64 ! 2380-2404
	lw	a2, sp, 144 ! 0-0
	sw	a21, a2, 60 ! 2380-2404
	sw	a21, a1, 56 ! 2380-2404
	sw	a21, a0, 52 ! 2380-2404
	sw	a21, a10, 48 ! 2380-2404
	sw	a21, a17, 44 ! 2380-2404
	lw	a0, sp, 128 ! 0-0
	sw	a21, a0, 40 ! 2380-2404
	sw	a21, a19, 36 ! 2380-2404
	sw	a21, a9, 32 ! 2380-2404
	sw	a21, a13, 28 ! 2380-2404
	sw	a21, a7, 24 ! 2380-2404
	sw	a21, a11, 20 ! 2380-2404
	sw	a21, a4, 16 ! 2380-2404
	sw	a21, a5, 12 ! 2380-2404
	sw	a21, a8, 8 ! 2380-2404
	sw	a21, a3, 4 ! 2380-2404
	li	a0, 128 ! 2402-2402
	li	a1, 128 ! 2402-2402
	sw	sp, ra, 172
	addi	sp, sp, 176
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -176
	lw	ra, sp, 172
	li	zero, 0 ! 2404-2404
	fin	0
