	li	sp, 102400
	li	hp, 204800
	li	ap, 1228800
	j	min_caml_start
l.14509:
	float	128.00000000000
l.14276:
	float	0.90000000000
l.14274:
	float	0.20000000000
l.13732:
	float	150.00000000000
l.13708:
	float	-150.00000000000
l.13633:
	float	0.10000000000
l.13577:
	float	-2.00000000000
l.13562:
	float	0.00390625000
l.13456:
	float	20.00000000000
l.13454:
	float	0.05000000000
l.13445:
	float	0.25000000000
l.13436:
	float	10.00000000000
l.13429:
	float	0.30000000000
l.13427:
	float	255.00000000000
l.13421:
	float	0.15000000000
l.13412:
	float	3.14159270000
l.13410:
	float	30.00000000000
l.13408:
	float	15.00000000000
l.13406:
	float	0.00010000000
l.13350:
	float	100000000.00000000000
l.13332:
	float	1000000000.00000000000
l.13171:
	float	-0.10000000000
l.13136:
	float	0.01000000000
l.13134:
	float	-0.20000000000
l.12883:
	float	0.50000000000
l.12752:
	float	2.00000000000
l.12713:
	float	-200.00000000000
l.12710:
	float	200.00000000000
l.12707:
	float	0.01745329300
l.12683:
	float	1.00000000000
l.12681:
	float	-1.00000000000
l.12679:
	float	0.00000000000
vecunit_sgn.2456:
	flw	fa0, a0, 0 ! 184-184
	fmul.s	fa0, fa0, fa0, rne ! 184-184
	flw	fa1, a0, 4 ! 184-184
	fmul.s	fa1, fa1, fa1, rne ! 184-184
	fadd.s	fa0, fa0, fa1, rne ! 184-184
	flw	fa1, a0, 8 ! 184-184
	fmul.s	fa1, fa1, fa1, rne ! 184-184
	fadd.s	fa0, fa0, fa1, rne ! 184-184
	sw	sp, a0, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_sqrt
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, l.12679 ! 185-185
	flw	fa1, a0, 0 ! 185-185
	feq.s	t0, fa0, fa1 ! 185-185
	bne	zero, t0, beq_else.17337 ! 185-185
	li	a0, 0 ! 185-185
	lw	a1, sp, 4 ! 0-0
	bne	a1, a0, beq_else.17339 ! 185-185
	li	a0, l.12683 ! 185-185
	flw	fa1, a0, 0 ! 185-185
	fdiv.s	fa0, fa1, fa0, rne ! 185-185
	j	beq_cont.17340
beq_else.17339:
	li	a0, l.12681 ! 185-185
	flw	fa1, a0, 0 ! 185-185
	fdiv.s	fa0, fa1, fa0, rne ! 185-185
beq_cont.17340:
	j	beq_cont.17338
beq_else.17337:
	li	a0, l.12683 ! 185-185
	flw	fa0, a0, 0 ! 185-185
beq_cont.17338:
	lw	a0, sp, 0 ! 0-0
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
vecaccumv.2480:
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
read_screen_settings.2557:
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
	li	a0, l.12707 ! 576-576
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
	li	a0, l.12707 ! 576-576
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
	li	a0, l.12710 ! 594-594
	flw	fa3, a0, 0 ! 594-594
	fmul.s	fa2, fa2, fa3, rne ! 594-594
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa2, 0 ! 594-594
	li	a1, l.12713 ! 595-595
	flw	fa2, a1, 0 ! 595-595
	flw	fa3, sp, 28 ! 0-0
	fmul.s	fa2, fa3, fa2, rne ! 595-595
	fsw	a0, fa2, 4 ! 595-595
	flw	fa2, sp, 36 ! 0-0
	fmul.s	fa4, fa1, fa2, rne ! 596-596
	li	a1, l.12710 ! 596-596
	flw	fa5, a1, 0 ! 596-596
	fmul.s	fa4, fa4, fa5, rne ! 596-596
	fsw	a0, fa4, 8 ! 596-596
	lw	a1, sp, 8 ! 0-0
	fsw	a1, fa2, 0 ! 598-598
	li	a2, l.12679 ! 599-599
	flw	fa4, a2, 0 ! 599-599
	fsw	a1, fa4, 4 ! 599-599
	fneg.s	fa4, fa0 ! 600-600
	fsw	a1, fa4, 8 ! 600-600
	fneg.s	fa4, fa3 ! 602-602
	fmul.s	fa0, fa4, fa0, rne ! 602-602
	lw	a1, sp, 4 ! 0-0
	fsw	a1, fa0, 0 ! 602-602
	fneg.s	fa0, fa1 ! 603-603
	fsw	a1, fa0, 4 ! 603-603
	fneg.s	fa0, fa3 ! 604-604
	fmul.s	fa0, fa0, fa2, rne ! 604-604
	fsw	a1, fa0, 8 ! 604-604
	lw	a1, sp, 16 ! 0-0
	flw	fa0, a1, 0 ! 606-606
	flw	fa1, a0, 0 ! 606-606
	fsub.s	fa0, fa0, fa1, rne ! 606-606
	lw	a2, sp, 0 ! 0-0
	fsw	a2, fa0, 0 ! 606-606
	flw	fa0, a1, 4 ! 607-607
	flw	fa1, a0, 4 ! 607-607
	fsub.s	fa0, fa0, fa1, rne ! 607-607
	fsw	a2, fa0, 4 ! 607-607
	flw	fa0, a1, 8 ! 608-608
	flw	fa1, a0, 8 ! 608-608
	fsub.s	fa0, fa0, fa1, rne ! 608-608
	fsw	a2, fa0, 8 ! 608-608
	ret ! 608-608
read_light.2559:
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
	li	a0, l.12707 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	fsw	sp, fa0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_sin
	addi	sp, sp, -16
	lw	ra, sp, 12
	fneg.s	fa0, fa0 ! 620-620
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa0, 4 ! 620-620
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.12707 ! 576-576
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
rotate_quadratic_matrix.2561:
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
	fneg.s	fa1, fa4 ! 652-652
	fmul.s	fa4, fa5, fa2, rne ! 653-653
	fmul.s	fa2, fa7, fa2, rne ! 654-654
	lw	a0, sp, 0 ! 0-0
	flw	fa5, a0, 0 ! 657-657
	flw	fa7, a0, 4 ! 658-658
	flw	fa11, a0, 8 ! 659-659
	fmul.s	fa12, fa3, fa3, rne ! 664-664
	fmul.s	fa12, fa5, fa12, rne ! 664-664
	fmul.s	fa13, fa9, fa9, rne ! 664-664
	fmul.s	fa13, fa7, fa13, rne ! 664-664
	fadd.s	fa12, fa12, fa13, rne ! 664-664
	fmul.s	fa13, fa1, fa1, rne ! 664-664
	fmul.s	fa13, fa11, fa13, rne ! 664-664
	fadd.s	fa12, fa12, fa13, rne ! 664-664
	fsw	a0, fa12, 0 ! 664-664
	fmul.s	fa12, fa6, fa6, rne ! 665-665
	fmul.s	fa12, fa5, fa12, rne ! 665-665
	fmul.s	fa13, fa10, fa10, rne ! 665-665
	fmul.s	fa13, fa7, fa13, rne ! 665-665
	fadd.s	fa12, fa12, fa13, rne ! 665-665
	fmul.s	fa13, fa4, fa4, rne ! 665-665
	fmul.s	fa13, fa11, fa13, rne ! 665-665
	fadd.s	fa12, fa12, fa13, rne ! 665-665
	fsw	a0, fa12, 4 ! 665-665
	fmul.s	fa12, fa8, fa8, rne ! 666-666
	fmul.s	fa12, fa5, fa12, rne ! 666-666
	fmul.s	fa13, fa0, fa0, rne ! 666-666
	fmul.s	fa13, fa7, fa13, rne ! 666-666
	fadd.s	fa12, fa12, fa13, rne ! 666-666
	fmul.s	fa13, fa2, fa2, rne ! 666-666
	fmul.s	fa13, fa11, fa13, rne ! 666-666
	fadd.s	fa12, fa12, fa13, rne ! 666-666
	fsw	a0, fa12, 8 ! 666-666
	li	a0, l.12752 ! 669-669
	flw	fa12, a0, 0 ! 669-669
	fmul.s	fa13, fa5, fa6, rne ! 669-669
	fmul.s	fa13, fa13, fa8, rne ! 669-669
	fmul.s	fa14, fa7, fa10, rne ! 669-669
	fmul.s	fa14, fa14, fa0, rne ! 669-669
	fadd.s	fa13, fa13, fa14, rne ! 669-669
	fmul.s	fa14, fa11, fa4, rne ! 669-669
	fmul.s	fa14, fa14, fa2, rne ! 669-669
	fadd.s	fa13, fa13, fa14, rne ! 669-669
	fmul.s	fa12, fa12, fa13, rne ! 669-669
	lw	a0, sp, 4 ! 0-0
	fsw	a0, fa12, 0 ! 669-669
	li	a1, l.12752 ! 670-670
	flw	fa12, a1, 0 ! 670-670
	fmul.s	fa13, fa5, fa3, rne ! 670-670
	fmul.s	fa8, fa13, fa8, rne ! 670-670
	fmul.s	fa13, fa7, fa9, rne ! 670-670
	fmul.s	fa0, fa13, fa0, rne ! 670-670
	fadd.s	fa0, fa8, fa0, rne ! 670-670
	fmul.s	fa8, fa11, fa1, rne ! 670-670
	fmul.s	fa2, fa8, fa2, rne ! 670-670
	fadd.s	fa0, fa0, fa2, rne ! 670-670
	fmul.s	fa0, fa12, fa0, rne ! 670-670
	fsw	a0, fa0, 4 ! 670-670
	li	a1, l.12752 ! 671-671
	flw	fa0, a1, 0 ! 671-671
	fmul.s	fa2, fa5, fa3, rne ! 671-671
	fmul.s	fa2, fa2, fa6, rne ! 671-671
	fmul.s	fa3, fa7, fa9, rne ! 671-671
	fmul.s	fa3, fa3, fa10, rne ! 671-671
	fadd.s	fa2, fa2, fa3, rne ! 671-671
	fmul.s	fa1, fa11, fa1, rne ! 671-671
	fmul.s	fa1, fa1, fa4, rne ! 671-671
	fadd.s	fa1, fa2, fa1, rne ! 671-671
	fmul.s	fa0, fa0, fa1, rne ! 671-671
	fsw	a0, fa0, 8 ! 671-671
	ret ! 671-671
read_nth_object.2564:
	lw	a1, a21, 4 ! 0-0
	sw	sp, a1, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 679-679
	bne	a0, a1, beq_else.17341 ! 679-755
	li	a0, 0 ! 755-755
	ret ! 755-755
beq_else.17341:
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
	li	a2, l.12679 ! 685-685
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
	li	a2, l.12679 ! 690-690
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
	li	a1, l.12679 ! 695-695
	flw	fa0, a1, 0 ! 695-695
	fsw	sp, fa0, 32 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_read_float
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 32 ! 0-0
	flt.s	t0, fa1, fa0 ! 695-695
	bne	zero, t0, beq_else.17342 ! 695-695
	li	a0, 1 ! 695-695
	j	beq_cont.17343
beq_else.17342:
	li	a0, 0 ! 695-695
beq_cont.17343:
	li	a1, 2 ! 697-697
	li	a2, l.12679 ! 697-697
	flw	fa0, a2, 0 ! 697-697
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
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 0 ! 698-698
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	fsw	a0, fa0, 4 ! 699-699
	li	a1, 3 ! 701-701
	li	a2, l.12679 ! 701-701
	flw	fa0, a2, 0 ! 701-701
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, a0, 44 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 0 ! 702-702
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 4 ! 703-703
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0-0
	fsw	a0, fa0, 8 ! 704-704
	li	a1, 3 ! 706-706
	li	a2, l.12679 ! 706-706
	flw	fa0, a2, 0 ! 706-706
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_float_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 707-707
	lw	a2, sp, 20 ! 0-0
	bne	a2, a1, beq_else.17344 ! 707-713
	j	beq_cont.17345
beq_else.17344:
	sw	sp, a0, 48 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_read_float
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, l.12707 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	lw	a0, sp, 48 ! 0-0
	fsw	a0, fa0, 0 ! 709-709
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_read_float
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, l.12707 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	lw	a0, sp, 48 ! 0-0
	fsw	a0, fa0, 4 ! 710-710
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_read_float
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, l.12707 ! 576-576
	flw	fa1, a0, 0 ! 576-576
	fmul.s	fa0, fa0, fa1, rne ! 576-576
	lw	a0, sp, 48 ! 0-0
	fsw	a0, fa0, 8 ! 711-711
beq_cont.17345:
	li	a1, 2 ! 718-718
	lw	a2, sp, 12 ! 0-0
	bne	a2, a1, beq_else.17346 ! 718-718
	li	a1, 1 ! 718-718
	j	beq_cont.17347
beq_else.17346:
	lw	a1, sp, 36 ! 0-0
beq_cont.17347:
	li	a3, 4 ! 719-719
	li	a4, l.12679 ! 719-719
	flw	fa0, a4, 0 ! 719-719
	sw	sp, a1, 52 ! 0-0
	sw	sp, a0, 48 ! 0-0
	mv	a0, a3
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_float_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	mv	a1, hp ! 722-728
	addi	hp, hp, 44 ! 722-728
	sw	a1, a0, 40 ! 722-728
	lw	a0, sp, 48 ! 0-0
	sw	a1, a0, 36 ! 722-728
	lw	a2, sp, 44 ! 0-0
	sw	a1, a2, 32 ! 722-728
	lw	a2, sp, 40 ! 0-0
	sw	a1, a2, 28 ! 722-728
	lw	a2, sp, 52 ! 0-0
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
	bne	a4, a1, beq_else.17348 ! 732-745
	flw	fa0, a2, 0 ! 735-735
	li	a1, l.12679 ! 736-736
	flw	fa1, a1, 0 ! 736-736
	feq.s	t0, fa0, fa1 ! 736-736
	bne	zero, t0, beq_else.17350 ! 736-736
	li	a1, l.12679 ! 117-117
	flw	fa1, a1, 0 ! 117-117
	feq.s	t0, fa0, fa1 ! 117-119
	bne	zero, t0, beq_else.17352 ! 117-119
	li	a1, l.12679 ! 118-118
	flw	fa1, a1, 0 ! 118-118
	flt.s	t0, fa0, fa1 ! 118-119
	bne	zero, t0, beq_else.17354 ! 118-119
	li	a1, l.12683 ! 118-118
	flw	fa1, a1, 0 ! 118-118
	j	beq_cont.17355
beq_else.17354:
	li	a1, l.12681 ! 119-119
	flw	fa1, a1, 0 ! 119-119
beq_cont.17355:
	j	beq_cont.17353
beq_else.17352:
	li	a1, l.12679 ! 117-117
	flw	fa1, a1, 0 ! 117-117
beq_cont.17353:
	fmul.s	fa0, fa0, fa0, rne ! 736-736
	fdiv.s	fa0, fa1, fa0, rne ! 736-736
	j	beq_cont.17351
beq_else.17350:
	li	a1, l.12679 ! 736-736
	flw	fa0, a1, 0 ! 736-736
beq_cont.17351:
	fsw	a2, fa0, 0 ! 736-736
	flw	fa0, a2, 4 ! 737-737
	li	a1, l.12679 ! 738-738
	flw	fa1, a1, 0 ! 738-738
	feq.s	t0, fa0, fa1 ! 738-738
	bne	zero, t0, beq_else.17356 ! 738-738
	li	a1, l.12679 ! 117-117
	flw	fa1, a1, 0 ! 117-117
	feq.s	t0, fa0, fa1 ! 117-119
	bne	zero, t0, beq_else.17358 ! 117-119
	li	a1, l.12679 ! 118-118
	flw	fa1, a1, 0 ! 118-118
	flt.s	t0, fa0, fa1 ! 118-119
	bne	zero, t0, beq_else.17360 ! 118-119
	li	a1, l.12683 ! 118-118
	flw	fa1, a1, 0 ! 118-118
	j	beq_cont.17361
beq_else.17360:
	li	a1, l.12681 ! 119-119
	flw	fa1, a1, 0 ! 119-119
beq_cont.17361:
	j	beq_cont.17359
beq_else.17358:
	li	a1, l.12679 ! 117-117
	flw	fa1, a1, 0 ! 117-117
beq_cont.17359:
	fmul.s	fa0, fa0, fa0, rne ! 738-738
	fdiv.s	fa0, fa1, fa0, rne ! 738-738
	j	beq_cont.17357
beq_else.17356:
	li	a1, l.12679 ! 738-738
	flw	fa0, a1, 0 ! 738-738
beq_cont.17357:
	fsw	a2, fa0, 4 ! 738-738
	flw	fa0, a2, 8 ! 739-739
	li	a1, l.12679 ! 740-740
	flw	fa1, a1, 0 ! 740-740
	feq.s	t0, fa0, fa1 ! 740-740
	bne	zero, t0, beq_else.17362 ! 740-740
	li	a1, l.12679 ! 117-117
	flw	fa1, a1, 0 ! 117-117
	feq.s	t0, fa0, fa1 ! 117-119
	bne	zero, t0, beq_else.17364 ! 117-119
	li	a1, l.12679 ! 118-118
	flw	fa1, a1, 0 ! 118-118
	flt.s	t0, fa0, fa1 ! 118-119
	bne	zero, t0, beq_else.17366 ! 118-119
	li	a1, l.12683 ! 118-118
	flw	fa1, a1, 0 ! 118-118
	j	beq_cont.17367
beq_else.17366:
	li	a1, l.12681 ! 119-119
	flw	fa1, a1, 0 ! 119-119
beq_cont.17367:
	j	beq_cont.17365
beq_else.17364:
	li	a1, l.12679 ! 117-117
	flw	fa1, a1, 0 ! 117-117
beq_cont.17365:
	fmul.s	fa0, fa0, fa0, rne ! 740-740
	fdiv.s	fa0, fa1, fa0, rne ! 740-740
	j	beq_cont.17363
beq_else.17362:
	li	a1, l.12679 ! 740-740
	flw	fa0, a1, 0 ! 740-740
beq_cont.17363:
	fsw	a2, fa0, 8 ! 740-740
	j	beq_cont.17349
beq_else.17348:
	li	a1, 2 ! 742-742
	bne	a4, a1, beq_else.17368 ! 742-745
	li	a1, 0 ! 744-744
	lw	a4, sp, 36 ! 0-0
	bne	a4, a1, beq_else.17370 ! 744-744
	li	a1, 1 ! 744-744
	j	beq_cont.17371
beq_else.17370:
	li	a1, 0 ! 744-744
beq_cont.17371:
	mv	a0, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	vecunit_sgn.2456
	addi	sp, sp, -60
	lw	ra, sp, 56
	j	beq_cont.17369
beq_else.17368:
beq_cont.17369:
beq_cont.17349:
	li	a0, 0 ! 748-748
	lw	a1, sp, 20 ! 0-0
	bne	a1, a0, beq_else.17372 ! 748-750
	j	beq_cont.17373
beq_else.17372:
	lw	a0, sp, 24 ! 0-0
	lw	a1, sp, 48 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	rotate_quadratic_matrix.2561
	addi	sp, sp, -60
	lw	ra, sp, 56
beq_cont.17373:
	li	a0, 1 ! 752-752
	ret ! 752-752
read_object.2566:
	lw	a1, a21, 8 ! 0-0
	lw	a2, a21, 4 ! 0-0
	li	a3, 60 ! 760-760
	blt	a0, a3, bge_else.17374 ! 760-765
	ret ! 765-765
bge_else.17374:
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
	bne	a0, a1, beq_else.17375 ! 761-764
	lw	a0, sp, 8 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17375:
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 762-762
	li	a1, 60 ! 760-760
	blt	a0, a1, bge_else.17376 ! 760-765
	ret ! 765-765
bge_else.17376:
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.17377 ! 761-764
	lw	a0, sp, 16 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17377:
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 762-762
	li	a1, 60 ! 760-760
	blt	a0, a1, bge_else.17378 ! 760-765
	ret ! 765-765
bge_else.17378:
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 20 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.17379 ! 761-764
	lw	a0, sp, 20 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17379:
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 762-762
	li	a1, 60 ! 760-760
	blt	a0, a1, bge_else.17380 ! 760-765
	ret ! 765-765
bge_else.17380:
	lw	a21, sp, 4 ! 0-0
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 761-764
	bne	a0, a1, beq_else.17381 ! 761-764
	lw	a0, sp, 24 ! 0-0
	lw	a1, sp, 12 ! 0-0
	sw	a1, a0, 0 ! 764-764
	ret ! 764-764
beq_else.17381:
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 762-762
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_net_item.2570:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17382 ! 777-780
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	j	min_caml_create_array
beq_else.17382:
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
	bne	a0, a1, beq_else.17383 ! 777-780
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.17384
beq_else.17383:
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
	bne	a0, a1, beq_else.17385 ! 777-780
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.17386
beq_else.17385:
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
	bne	a0, a1, beq_else.17387 ! 777-780
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.17388
beq_else.17387:
	lw	a1, sp, 24 ! 0-0
	addi	a2, a1, 1 ! 779-779
	sw	sp, a0, 28 ! 0-0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2570
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 28 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
beq_cont.17388:
	lw	a1, sp, 16 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 20 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
beq_cont.17386:
	lw	a1, sp, 8 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 12 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
beq_cont.17384:
	lw	a1, sp, 0 ! 0-0
	slli	a1, a1, 2 ! 780-780
	lw	a2, sp, 4 ! 0-0
	add	t0, a0, a1 ! 780-780
	sw	t0, a2, 0 ! 780-780
	ret ! 780-780
read_or_network.2572:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17389 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	j	beq_cont.17390
beq_else.17389:
	sw	sp, a0, 4 ! 0-0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17391 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	j	beq_cont.17392
beq_else.17391:
	sw	sp, a0, 8 ! 0-0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17393 ! 777-780
	li	a0, 3 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.17394
beq_else.17393:
	li	a1, 3 ! 779-779
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	read_net_item.2570
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 8 ! 780-780
beq_cont.17394:
	lw	a1, sp, 8 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17392:
	lw	a1, sp, 4 ! 0-0
	sw	a0, a1, 0 ! 780-780
	mv	a1, a0 ! 780-780
beq_cont.17390:
	lw	a0, a1, 0 ! 785-785
	li	a2, -1 ! 785-785
	bne	a0, a2, beq_else.17395 ! 785-789
	lw	a0, sp, 0 ! 0-0
	addi	a0, a0, 1 ! 786-786
	j	min_caml_create_array
beq_else.17395:
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
	bne	a0, a1, beq_else.17396 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	j	beq_cont.17397
beq_else.17396:
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17398 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.17399
beq_else.17398:
	li	a1, 2 ! 779-779
	sw	sp, a0, 28 ! 0-0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	read_net_item.2570
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 28 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17399:
	lw	a1, sp, 24 ! 0-0
	sw	a0, a1, 0 ! 780-780
	mv	a1, a0 ! 780-780
beq_cont.17397:
	lw	a0, a1, 0 ! 785-785
	li	a2, -1 ! 785-785
	bne	a0, a2, beq_else.17400 ! 785-789
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 786-786
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	beq_cont.17401
beq_else.17400:
	lw	a0, sp, 20 ! 0-0
	addi	a2, a0, 1 ! 788-788
	sw	sp, a1, 32 ! 0-0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	read_or_network.2572
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 20 ! 0-0
	slli	a1, a1, 2 ! 789-789
	lw	a2, sp, 32 ! 0-0
	add	t0, a0, a1 ! 789-789
	sw	t0, a2, 0 ! 789-789
beq_cont.17401:
	lw	a1, sp, 0 ! 0-0
	slli	a1, a1, 2 ! 789-789
	lw	a2, sp, 16 ! 0-0
	add	t0, a0, a1 ! 789-789
	sw	t0, a2, 0 ! 789-789
	ret ! 789-789
read_and_network.2574:
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
	bne	a0, a1, beq_else.17402 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	j	beq_cont.17403
beq_else.17402:
	sw	sp, a0, 12 ! 0-0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17404 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	beq_cont.17405
beq_else.17404:
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17406 ! 777-780
	li	a0, 3 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	j	beq_cont.17407
beq_else.17406:
	li	a1, 3 ! 779-779
	sw	sp, a0, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	read_net_item.2570
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0-0
	sw	a0, a1, 8 ! 780-780
beq_cont.17407:
	lw	a1, sp, 16 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17405:
	lw	a1, sp, 12 ! 0-0
	sw	a0, a1, 0 ! 780-780
beq_cont.17403:
	lw	a1, a0, 0 ! 794-794
	li	a2, -1 ! 794-794
	bne	a1, a2, beq_else.17408 ! 794-798
	ret ! 794-794
beq_else.17408:
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
	bne	a0, a1, beq_else.17409 ! 777-780
	li	a0, 1 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	j	beq_cont.17410
beq_else.17409:
	sw	sp, a0, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, -1 ! 777-777
	bne	a0, a1, beq_else.17411 ! 777-780
	li	a0, 2 ! 777-777
	li	a1, -1 ! 777-777
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_create_array
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	beq_cont.17412
beq_else.17411:
	li	a1, 2 ! 779-779
	sw	sp, a0, 32 ! 0-0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	read_net_item.2570
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32 ! 0-0
	sw	a0, a1, 4 ! 780-780
beq_cont.17412:
	lw	a1, sp, 28 ! 0-0
	sw	a0, a1, 0 ! 780-780
beq_cont.17410:
	lw	a1, a0, 0 ! 794-794
	li	a2, -1 ! 794-794
	bne	a1, a2, beq_else.17413 ! 794-798
	ret ! 794-794
beq_else.17413:
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 796-796
	lw	a3, sp, 4 ! 0-0
	add	t0, a3, a2 ! 796-796
	sw	t0, a0, 0 ! 796-796
	addi	a0, a1, 1 ! 797-797
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_surface.2578:
	lw	a5, a21, 4 ! 0-0
	slli	a6, a2, 2 ! 828-828
	add	t0, a1, a6 ! 828-828
	flw	fa3, t0, 0 ! 828-828
	li	a6, l.12679 ! 828-828
	flw	fa4, a6, 0 ! 828-828
	feq.s	t0, fa3, fa4 ! 828-837
	bne	zero, t0, beq_else.17414 ! 828-837
	lw	a6, a0, 16 ! 320-325
	lw	a0, a0, 24 ! 272-276
	li	a7, l.12679 ! 830-830
	flw	fa3, a7, 0 ! 830-830
	slli	a7, a2, 2 ! 830-830
	add	t0, a1, a7 ! 830-830
	flw	fa4, t0, 0 ! 830-830
	flt.s	t0, fa3, fa4 ! 830-830
	bne	zero, t0, beq_else.17415 ! 830-830
	li	a7, 1 ! 830-830
	j	beq_cont.17416
beq_else.17415:
	li	a7, 0 ! 830-830
beq_cont.17416:
	li	a8, 0 ! 16-16
	bne	a0, a8, beq_else.17417 ! 16-16
	mv	a0, a7 ! 16-16
	j	beq_cont.17418
beq_else.17417:
	li	a0, 0 ! 16-16
	bne	a7, a0, beq_else.17419 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17420
beq_else.17419:
	li	a0, 0 ! 16-16
beq_cont.17420:
beq_cont.17418:
	slli	a7, a2, 2 ! 830-830
	add	t0, a6, a7 ! 830-830
	flw	fa3, t0, 0 ! 830-830
	li	a7, 0 ! 124-124
	bne	a0, a7, beq_else.17421 ! 124-124
	fneg.s	fa3, fa3 ! 124-124
	j	beq_cont.17422
beq_else.17421:
beq_cont.17422:
	fsub.s	fa0, fa3, fa0, rne ! 832-832
	slli	a0, a2, 2 ! 832-832
	add	t0, a1, a0 ! 832-832
	flw	fa3, t0, 0 ! 832-832
	fdiv.s	fa0, fa0, fa3, rne ! 832-832
	slli	a0, a3, 2 ! 833-833
	add	t0, a6, a0 ! 833-833
	flw	fa3, t0, 0 ! 833-833
	slli	a0, a3, 2 ! 833-833
	add	t0, a1, a0 ! 833-833
	flw	fa4, t0, 0 ! 833-833
	fmul.s	fa4, fa0, fa4, rne ! 833-833
	fadd.s	fa1, fa4, fa1, rne ! 833-833
	fabs.s	fa1, fa1 ! 833-833
	flt.s	t0, fa3, fa1 ! 833-837
	bne	zero, t0, beq_else.17423 ! 833-837
	slli	a0, a4, 2 ! 834-834
	add	t0, a6, a0 ! 834-834
	flw	fa1, t0, 0 ! 834-834
	slli	a0, a4, 2 ! 834-834
	add	t0, a1, a0 ! 834-834
	flw	fa3, t0, 0 ! 834-834
	fmul.s	fa3, fa0, fa3, rne ! 834-834
	fadd.s	fa2, fa3, fa2, rne ! 834-834
	fabs.s	fa2, fa2 ! 834-834
	flt.s	t0, fa1, fa2 ! 834-836
	bne	zero, t0, beq_else.17424 ! 834-836
	fsw	a5, fa0, 0 ! 835-835
	li	a0, 1 ! 835-835
	ret ! 835-835
beq_else.17424:
	li	a0, 0 ! 836-836
	ret ! 836-836
beq_else.17423:
	li	a0, 0 ! 837-837
	ret ! 837-837
beq_else.17414:
	li	a0, 0 ! 828-828
	ret ! 828-828
solver_surface.2593:
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
	li	a1, l.12679 ! 856-856
	flw	fa4, a1, 0 ! 856-856
	flt.s	t0, fa3, fa4 ! 856-859
	bne	zero, t0, beq_else.17425 ! 856-859
	flw	fa4, a0, 0 ! 198-198
	fmul.s	fa0, fa4, fa0, rne ! 198-198
	flw	fa4, a0, 4 ! 198-198
	fmul.s	fa1, fa4, fa1, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a0, 8 ! 198-198
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	fneg.s	fa0, fa0 ! 857-857
	fdiv.s	fa0, fa0, fa3, rne ! 857-857
	fsw	a2, fa0, 0 ! 857-857
	li	a0, 1 ! 858-858
	ret ! 858-858
beq_else.17425:
	li	a0, 0 ! 859-859
	ret ! 859-859
quadratic.2599:
	fmul.s	fa3, fa0, fa0, rne ! 867-867
	lw	a1, a0, 16 ! 290-295
	flw	fa4, a1, 0 ! 295-295
	fmul.s	fa3, fa3, fa4, rne ! 867-867
	fmul.s	fa4, fa1, fa1, rne ! 867-867
	lw	a1, a0, 16 ! 300-305
	flw	fa5, a1, 4 ! 305-305
	fmul.s	fa4, fa4, fa5, rne ! 867-867
	fadd.s	fa3, fa3, fa4, rne ! 867-867
	fmul.s	fa4, fa2, fa2, rne ! 867-867
	lw	a1, a0, 16 ! 310-315
	flw	fa5, a1, 8 ! 315-315
	fmul.s	fa4, fa4, fa5, rne ! 867-867
	fadd.s	fa3, fa3, fa4, rne ! 867-867
	lw	a1, a0, 12 ! 281-285
	li	a2, 0 ! 869-869
	bne	a1, a2, beq_else.17426 ! 869-875
	fmv.s	fa0, fa3 ! 870-870
	ret ! 870-870
beq_else.17426:
	fmul.s	fa4, fa1, fa2, rne ! 873-873
	lw	a1, a0, 36 ! 410-415
	flw	fa5, a1, 0 ! 415-415
	fmul.s	fa4, fa4, fa5, rne ! 873-873
	fadd.s	fa3, fa3, fa4, rne ! 872-873
	fmul.s	fa2, fa2, fa0, rne ! 874-874
	lw	a1, a0, 36 ! 420-425
	flw	fa4, a1, 4 ! 425-425
	fmul.s	fa2, fa2, fa4, rne ! 874-874
	fadd.s	fa2, fa3, fa2, rne ! 872-874
	fmul.s	fa0, fa0, fa1, rne ! 875-875
	lw	a0, a0, 36 ! 430-435
	flw	fa1, a0, 8 ! 435-435
	fmul.s	fa0, fa0, fa1, rne ! 875-875
	fadd.s	fa0, fa2, fa0, rne ! 872-875
	ret ! 872-875
bilinear.2604:
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
	bne	a1, a2, beq_else.17427 ! 886-892
	fmv.s	fa0, fa6 ! 887-887
	ret ! 887-887
beq_else.17427:
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
	li	a0, l.12883 ! 889-892
	flw	fa1, a0, 0 ! 889-892
	fmul.s	fa0, fa0, fa1, rne ! 889-892
	fadd.s	fa0, fa6, fa0, rne ! 889-892
	ret ! 889-892
solver_second.2612:
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
	jal	quadratic.2599
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.12679 ! 909-909
	flw	fa1, a0, 0 ! 909-909
	feq.s	t0, fa0, fa1 ! 909-928
	bne	zero, t0, beq_else.17428 ! 909-928
	lw	a0, sp, 20 ! 0-0
	flw	fa1, a0, 0 ! 914-914
	flw	fa2, a0, 4 ! 914-914
	flw	fa3, a0, 8 ! 914-914
	flw	fa4, sp, 12 ! 0-0
	flw	fa5, sp, 8 ! 0-0
	flw	fa6, sp, 4 ! 0-0
	lw	a0, sp, 16 ! 0-0
	fsw	sp, fa0, 24 ! 0-0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	fmv.s	fa3, fa4
	fmv.s	fa4, fa5
	fmv.s	fa5, fa6
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	bilinear.2604
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
	jal	quadratic.2599
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 917-917
	bne	a1, a2, beq_else.17429 ! 917-917
	li	a1, l.12683 ! 917-917
	flw	fa1, a1, 0 ! 917-917
	fsub.s	fa0, fa0, fa1, rne ! 917-917
	j	beq_cont.17430
beq_else.17429:
beq_cont.17430:
	flw	fa1, sp, 28 ! 0-0
	fmul.s	fa2, fa1, fa1, rne ! 919-919
	flw	fa3, sp, 24 ! 0-0
	fmul.s	fa0, fa3, fa0, rne ! 919-919
	fsub.s	fa0, fa2, fa0, rne ! 919-919
	li	a1, l.12679 ! 921-921
	flw	fa2, a1, 0 ! 921-921
	flt.s	t0, fa0, fa2 ! 921-927
	bne	zero, t0, beq_else.17431 ! 921-927
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sqrt
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16 ! 0-0
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 923-923
	bne	a0, a1, beq_else.17432 ! 923-923
	fneg.s	fa0, fa0 ! 923-923
	j	beq_cont.17433
beq_else.17432:
beq_cont.17433:
	flw	fa1, sp, 28 ! 0-0
	fsub.s	fa0, fa0, fa1, rne ! 924-924
	flw	fa1, sp, 24 ! 0-0
	fdiv.s	fa0, fa0, fa1, rne ! 924-924
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 924-924
	li	a0, 1 ! 924-924
	ret ! 924-924
beq_else.17431:
	li	a0, 0 ! 927-927
	ret ! 927-927
beq_else.17428:
	li	a0, 0 ! 910-910
	ret ! 910-910
solver.2618:
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
	bne	a2, a6, beq_else.17434 ! 940-942
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
	bne	a0, a1, beq_else.17435 ! 843-846
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
	bne	a0, a1, beq_else.17436 ! 844-846
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
	bne	a0, a1, beq_else.17437 ! 845-846
	li	a0, 0 ! 846-846
	ret ! 846-846
beq_else.17437:
	li	a0, 3 ! 845-845
	ret ! 845-845
beq_else.17436:
	li	a0, 2 ! 844-844
	ret ! 844-844
beq_else.17435:
	li	a0, 1 ! 843-843
	ret ! 843-843
beq_else.17434:
	li	a4, 2 ! 941-941
	bne	a2, a4, beq_else.17438 ! 941-942
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
	li	a1, l.12679 ! 856-856
	flw	fa4, a1, 0 ! 856-856
	flt.s	t0, fa3, fa4 ! 856-859
	bne	zero, t0, beq_else.17439 ! 856-859
	flw	fa4, a0, 0 ! 198-198
	fmul.s	fa0, fa4, fa0, rne ! 198-198
	flw	fa4, a0, 4 ! 198-198
	fmul.s	fa1, fa4, fa1, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	flw	fa1, a0, 8 ! 198-198
	fmul.s	fa1, fa1, fa2, rne ! 198-198
	fadd.s	fa0, fa0, fa1, rne ! 198-198
	fneg.s	fa0, fa0 ! 857-857
	fdiv.s	fa0, fa0, fa3, rne ! 857-857
	fsw	a5, fa0, 0 ! 857-857
	li	a0, 1 ! 858-858
	ret ! 858-858
beq_else.17439:
	li	a0, 0 ! 859-859
	ret ! 859-859
beq_else.17438:
	mv	a21, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_fast.2622:
	lw	a3, a21, 4 ! 0-0
	flw	fa3, a2, 0 ! 965-965
	fsub.s	fa3, fa3, fa0, rne ! 965-965
	flw	fa4, a2, 4 ! 965-965
	fmul.s	fa3, fa3, fa4, rne ! 965-965
	lw	a4, a0, 16 ! 300-305
	flw	fa4, a4, 4 ! 305-305
	flw	fa5, a1, 4 ! 967-967
	fmul.s	fa5, fa3, fa5, rne ! 967-967
	fadd.s	fa5, fa5, fa1, rne ! 967-967
	fabs.s	fa5, fa5 ! 967-967
	flt.s	t0, fa4, fa5 ! 967-971
	bne	zero, t0, beq_else.17440 ! 967-971
	lw	a4, a0, 16 ! 310-315
	flw	fa4, a4, 8 ! 315-315
	flw	fa5, a1, 8 ! 968-968
	fmul.s	fa5, fa3, fa5, rne ! 968-968
	fadd.s	fa5, fa5, fa2, rne ! 968-968
	fabs.s	fa5, fa5 ! 968-968
	flt.s	t0, fa4, fa5 ! 968-970
	bne	zero, t0, beq_else.17442 ! 968-970
	flw	fa4, a2, 4 ! 969-969
	li	a4, l.12679 ! 969-969
	flw	fa5, a4, 0 ! 969-969
	feq.s	t0, fa4, fa5 ! 969-969
	bne	zero, t0, beq_else.17444 ! 969-969
	li	a4, 1 ! 969-969
	j	beq_cont.17445
beq_else.17444:
	li	a4, 0 ! 969-969
beq_cont.17445:
	j	beq_cont.17443
beq_else.17442:
	li	a4, 0 ! 970-970
beq_cont.17443:
	j	beq_cont.17441
beq_else.17440:
	li	a4, 0 ! 971-971
beq_cont.17441:
	li	a5, 0 ! 966-993
	bne	a4, a5, beq_else.17446 ! 966-993
	flw	fa3, a2, 8 ! 974-974
	fsub.s	fa3, fa3, fa1, rne ! 974-974
	flw	fa4, a2, 12 ! 974-974
	fmul.s	fa3, fa3, fa4, rne ! 974-974
	lw	a4, a0, 16 ! 290-295
	flw	fa4, a4, 0 ! 295-295
	flw	fa5, a1, 0 ! 976-976
	fmul.s	fa5, fa3, fa5, rne ! 976-976
	fadd.s	fa5, fa5, fa0, rne ! 976-976
	fabs.s	fa5, fa5 ! 976-976
	flt.s	t0, fa4, fa5 ! 976-980
	bne	zero, t0, beq_else.17447 ! 976-980
	lw	a4, a0, 16 ! 310-315
	flw	fa4, a4, 8 ! 315-315
	flw	fa5, a1, 8 ! 977-977
	fmul.s	fa5, fa3, fa5, rne ! 977-977
	fadd.s	fa5, fa5, fa2, rne ! 977-977
	fabs.s	fa5, fa5 ! 977-977
	flt.s	t0, fa4, fa5 ! 977-979
	bne	zero, t0, beq_else.17449 ! 977-979
	flw	fa4, a2, 12 ! 978-978
	li	a4, l.12679 ! 978-978
	flw	fa5, a4, 0 ! 978-978
	feq.s	t0, fa4, fa5 ! 978-978
	bne	zero, t0, beq_else.17451 ! 978-978
	li	a4, 1 ! 978-978
	j	beq_cont.17452
beq_else.17451:
	li	a4, 0 ! 978-978
beq_cont.17452:
	j	beq_cont.17450
beq_else.17449:
	li	a4, 0 ! 979-979
beq_cont.17450:
	j	beq_cont.17448
beq_else.17447:
	li	a4, 0 ! 980-980
beq_cont.17448:
	li	a5, 0 ! 975-993
	bne	a4, a5, beq_else.17453 ! 975-993
	flw	fa3, a2, 16 ! 983-983
	fsub.s	fa2, fa3, fa2, rne ! 983-983
	flw	fa3, a2, 20 ! 983-983
	fmul.s	fa2, fa2, fa3, rne ! 983-983
	lw	a4, a0, 16 ! 290-295
	flw	fa3, a4, 0 ! 295-295
	flw	fa4, a1, 0 ! 985-985
	fmul.s	fa4, fa2, fa4, rne ! 985-985
	fadd.s	fa0, fa4, fa0, rne ! 985-985
	fabs.s	fa0, fa0 ! 985-985
	flt.s	t0, fa3, fa0 ! 985-989
	bne	zero, t0, beq_else.17454 ! 985-989
	lw	a0, a0, 16 ! 300-305
	flw	fa0, a0, 4 ! 305-305
	flw	fa3, a1, 4 ! 986-986
	fmul.s	fa3, fa2, fa3, rne ! 986-986
	fadd.s	fa1, fa3, fa1, rne ! 986-986
	fabs.s	fa1, fa1 ! 986-986
	flt.s	t0, fa0, fa1 ! 986-988
	bne	zero, t0, beq_else.17456 ! 986-988
	flw	fa0, a2, 20 ! 987-987
	li	a0, l.12679 ! 987-987
	flw	fa1, a0, 0 ! 987-987
	feq.s	t0, fa0, fa1 ! 987-987
	bne	zero, t0, beq_else.17458 ! 987-987
	li	a0, 1 ! 987-987
	j	beq_cont.17459
beq_else.17458:
	li	a0, 0 ! 987-987
beq_cont.17459:
	j	beq_cont.17457
beq_else.17456:
	li	a0, 0 ! 988-988
beq_cont.17457:
	j	beq_cont.17455
beq_else.17454:
	li	a0, 0 ! 989-989
beq_cont.17455:
	li	a1, 0 ! 984-993
	bne	a0, a1, beq_else.17460 ! 984-993
	li	a0, 0 ! 993-993
	ret ! 993-993
beq_else.17460:
	fsw	a3, fa2, 0 ! 991-991
	li	a0, 3 ! 991-991
	ret ! 991-991
beq_else.17453:
	fsw	a3, fa3, 0 ! 982-982
	li	a0, 2 ! 982-982
	ret ! 982-982
beq_else.17446:
	fsw	a3, fa3, 0 ! 973-973
	li	a0, 1 ! 973-973
	ret ! 973-973
solver_second_fast.2635:
	lw	a2, a21, 4 ! 0-0
	flw	fa3, a1, 0 ! 1008-1008
	li	a3, l.12679 ! 1009-1009
	flw	fa4, a3, 0 ! 1009-1009
	feq.s	t0, fa3, fa4 ! 1009-1022
	bne	zero, t0, beq_else.17461 ! 1009-1022
	flw	fa4, a1, 4 ! 1012-1012
	fmul.s	fa4, fa4, fa0, rne ! 1012-1012
	flw	fa5, a1, 8 ! 1012-1012
	fmul.s	fa5, fa5, fa1, rne ! 1012-1012
	fadd.s	fa4, fa4, fa5, rne ! 1012-1012
	flw	fa5, a1, 12 ! 1012-1012
	fmul.s	fa5, fa5, fa2, rne ! 1012-1012
	fadd.s	fa4, fa4, fa5, rne ! 1012-1012
	sw	sp, a2, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	fsw	sp, fa3, 8 ! 0-0
	fsw	sp, fa4, 12 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	quadratic.2599
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 1014-1014
	bne	a1, a2, beq_else.17462 ! 1014-1014
	li	a1, l.12683 ! 1014-1014
	flw	fa1, a1, 0 ! 1014-1014
	fsub.s	fa0, fa0, fa1, rne ! 1014-1014
	j	beq_cont.17463
beq_else.17462:
beq_cont.17463:
	flw	fa1, sp, 12 ! 0-0
	fmul.s	fa2, fa1, fa1, rne ! 1015-1015
	flw	fa3, sp, 8 ! 0-0
	fmul.s	fa0, fa3, fa0, rne ! 1015-1015
	fsub.s	fa0, fa2, fa0, rne ! 1015-1015
	li	a1, l.12679 ! 1016-1016
	flw	fa2, a1, 0 ! 1016-1016
	flt.s	t0, fa0, fa2 ! 1016-1022
	bne	zero, t0, beq_else.17464 ! 1016-1022
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1017-1020
	bne	a0, a1, beq_else.17465 ! 1017-1020
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_sqrt
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 12 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1020-1020
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 16 ! 1020-1020
	fmul.s	fa0, fa0, fa1, rne ! 1020-1020
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1020-1020
	j	beq_cont.17466
beq_else.17465:
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_sqrt
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 12 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1018-1018
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 16 ! 1018-1018
	fmul.s	fa0, fa0, fa1, rne ! 1018-1018
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1018-1018
beq_cont.17466:
	li	a0, 1 ! 1021-1021
	ret ! 1021-1021
beq_else.17464:
	li	a0, 0 ! 1022-1022
	ret ! 1022-1022
beq_else.17461:
	li	a0, 0 ! 1010-1010
	ret ! 1010-1010
solver_second_fast2.2652:
	lw	a3, a21, 4 ! 0-0
	flw	fa3, a1, 0 ! 1056-1056
	li	a4, l.12679 ! 1057-1057
	flw	fa4, a4, 0 ! 1057-1057
	feq.s	t0, fa3, fa4 ! 1057-1069
	bne	zero, t0, beq_else.17467 ! 1057-1069
	flw	fa4, a1, 4 ! 1060-1060
	fmul.s	fa0, fa4, fa0, rne ! 1060-1060
	flw	fa4, a1, 8 ! 1060-1060
	fmul.s	fa1, fa4, fa1, rne ! 1060-1060
	fadd.s	fa0, fa0, fa1, rne ! 1060-1060
	flw	fa1, a1, 12 ! 1060-1060
	fmul.s	fa1, fa1, fa2, rne ! 1060-1060
	fadd.s	fa0, fa0, fa1, rne ! 1060-1060
	flw	fa1, a2, 12 ! 1061-1061
	fmul.s	fa2, fa0, fa0, rne ! 1062-1062
	fmul.s	fa1, fa3, fa1, rne ! 1062-1062
	fsub.s	fa1, fa2, fa1, rne ! 1062-1062
	li	a2, l.12679 ! 1063-1063
	flw	fa2, a2, 0 ! 1063-1063
	flt.s	t0, fa1, fa2 ! 1063-1069
	bne	zero, t0, beq_else.17468 ! 1063-1069
	lw	a0, a0, 24 ! 272-276
	li	a2, 0 ! 1064-1067
	bne	a0, a2, beq_else.17469 ! 1064-1067
	sw	sp, a3, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	fsw	sp, fa0, 8 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_sqrt
	addi	sp, sp, -16
	lw	ra, sp, 12
	flw	fa1, sp, 8 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1067-1067
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 16 ! 1067-1067
	fmul.s	fa0, fa0, fa1, rne ! 1067-1067
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1067-1067
	j	beq_cont.17470
beq_else.17469:
	sw	sp, a3, 0 ! 0-0
	sw	sp, a1, 4 ! 0-0
	fsw	sp, fa0, 8 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_sqrt
	addi	sp, sp, -16
	lw	ra, sp, 12
	flw	fa1, sp, 8 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 1065-1065
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 16 ! 1065-1065
	fmul.s	fa0, fa0, fa1, rne ! 1065-1065
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 1065-1065
beq_cont.17470:
	li	a0, 1 ! 1068-1068
	ret ! 1068-1068
beq_else.17468:
	li	a0, 0 ! 1069-1069
	ret ! 1069-1069
beq_else.17467:
	li	a0, 0 ! 1058-1058
	ret ! 1058-1058
solver_fast2.2659:
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
	bne	a7, a8, beq_else.17471 ! 1082-1087
	lw	a1, a1, 0 ! 538-539
	mv	a2, a0
	mv	a21, a3
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17471:
	li	a1, 2 ! 1084-1084
	bne	a7, a1, beq_else.17472 ! 1084-1087
	li	a1, l.12679 ! 1047-1047
	flw	fa0, a1, 0 ! 1047-1047
	flw	fa1, a0, 0 ! 1047-1047
	flt.s	t0, fa0, fa1 ! 1047-1050
	bne	zero, t0, beq_else.17473 ! 1047-1050
	flw	fa0, a0, 0 ! 1048-1048
	flw	fa1, a6, 12 ! 1048-1048
	fmul.s	fa0, fa0, fa1, rne ! 1048-1048
	fsw	a4, fa0, 0 ! 1048-1048
	li	a0, 1 ! 1049-1049
	ret ! 1049-1049
beq_else.17473:
	li	a0, 0 ! 1050-1050
	ret ! 1050-1050
beq_else.17472:
	mv	a1, a0
	mv	a21, a2
	mv	a2, a6
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
setup_rect_table.2662:
	li	a2, 6 ! 1096-1096
	li	a3, l.12679 ! 1096-1096
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
	li	a2, l.12679 ! 1098-1098
	flw	fa1, a2, 0 ! 1098-1098
	feq.s	t0, fa0, fa1 ! 1098-1105
	bne	zero, t0, beq_else.17474 ! 1098-1105
	lw	a2, sp, 0 ! 0-0
	lw	a3, a2, 24 ! 272-276
	li	a4, l.12679 ! 1102-1102
	flw	fa0, a4, 0 ! 1102-1102
	flw	fa1, a1, 0 ! 1102-1102
	flt.s	t0, fa0, fa1 ! 1102-1102
	bne	zero, t0, beq_else.17476 ! 1102-1102
	li	a4, 1 ! 1102-1102
	j	beq_cont.17477
beq_else.17476:
	li	a4, 0 ! 1102-1102
beq_cont.17477:
	li	a5, 0 ! 16-16
	bne	a3, a5, beq_else.17478 ! 16-16
	mv	a3, a4 ! 16-16
	j	beq_cont.17479
beq_else.17478:
	li	a3, 0 ! 16-16
	bne	a4, a3, beq_else.17480 ! 16-16
	li	a3, 1 ! 16-16
	j	beq_cont.17481
beq_else.17480:
	li	a3, 0 ! 16-16
beq_cont.17481:
beq_cont.17479:
	lw	a4, a2, 16 ! 290-295
	flw	fa0, a4, 0 ! 295-295
	li	a4, 0 ! 124-124
	bne	a3, a4, beq_else.17482 ! 124-124
	fneg.s	fa0, fa0 ! 124-124
	j	beq_cont.17483
beq_else.17482:
beq_cont.17483:
	fsw	a0, fa0, 0 ! 1102-1102
	li	a3, l.12683 ! 1104-1104
	flw	fa0, a3, 0 ! 1104-1104
	flw	fa1, a1, 0 ! 1104-1104
	fdiv.s	fa0, fa0, fa1, rne ! 1104-1104
	fsw	a0, fa0, 4 ! 1104-1104
	j	beq_cont.17475
beq_else.17474:
	li	a2, l.12679 ! 1099-1099
	flw	fa0, a2, 0 ! 1099-1099
	fsw	a0, fa0, 4 ! 1099-1099
beq_cont.17475:
	flw	fa0, a1, 4 ! 1106-1106
	li	a2, l.12679 ! 1106-1106
	flw	fa1, a2, 0 ! 1106-1106
	feq.s	t0, fa0, fa1 ! 1106-1111
	bne	zero, t0, beq_else.17484 ! 1106-1111
	lw	a2, sp, 0 ! 0-0
	lw	a3, a2, 24 ! 272-276
	li	a4, l.12679 ! 1109-1109
	flw	fa0, a4, 0 ! 1109-1109
	flw	fa1, a1, 4 ! 1109-1109
	flt.s	t0, fa0, fa1 ! 1109-1109
	bne	zero, t0, beq_else.17486 ! 1109-1109
	li	a4, 1 ! 1109-1109
	j	beq_cont.17487
beq_else.17486:
	li	a4, 0 ! 1109-1109
beq_cont.17487:
	li	a5, 0 ! 16-16
	bne	a3, a5, beq_else.17488 ! 16-16
	mv	a3, a4 ! 16-16
	j	beq_cont.17489
beq_else.17488:
	li	a3, 0 ! 16-16
	bne	a4, a3, beq_else.17490 ! 16-16
	li	a3, 1 ! 16-16
	j	beq_cont.17491
beq_else.17490:
	li	a3, 0 ! 16-16
beq_cont.17491:
beq_cont.17489:
	lw	a4, a2, 16 ! 300-305
	flw	fa0, a4, 4 ! 305-305
	li	a4, 0 ! 124-124
	bne	a3, a4, beq_else.17492 ! 124-124
	fneg.s	fa0, fa0 ! 124-124
	j	beq_cont.17493
beq_else.17492:
beq_cont.17493:
	fsw	a0, fa0, 8 ! 1109-1109
	li	a3, l.12683 ! 1110-1110
	flw	fa0, a3, 0 ! 1110-1110
	flw	fa1, a1, 4 ! 1110-1110
	fdiv.s	fa0, fa0, fa1, rne ! 1110-1110
	fsw	a0, fa0, 12 ! 1110-1110
	j	beq_cont.17485
beq_else.17484:
	li	a2, l.12679 ! 1107-1107
	flw	fa0, a2, 0 ! 1107-1107
	fsw	a0, fa0, 12 ! 1107-1107
beq_cont.17485:
	flw	fa0, a1, 8 ! 1112-1112
	li	a2, l.12679 ! 1112-1112
	flw	fa1, a2, 0 ! 1112-1112
	feq.s	t0, fa0, fa1 ! 1112-1117
	bne	zero, t0, beq_else.17494 ! 1112-1117
	lw	a2, sp, 0 ! 0-0
	lw	a3, a2, 24 ! 272-276
	li	a4, l.12679 ! 1115-1115
	flw	fa0, a4, 0 ! 1115-1115
	flw	fa1, a1, 8 ! 1115-1115
	flt.s	t0, fa0, fa1 ! 1115-1115
	bne	zero, t0, beq_else.17496 ! 1115-1115
	li	a4, 1 ! 1115-1115
	j	beq_cont.17497
beq_else.17496:
	li	a4, 0 ! 1115-1115
beq_cont.17497:
	li	a5, 0 ! 16-16
	bne	a3, a5, beq_else.17498 ! 16-16
	mv	a3, a4 ! 16-16
	j	beq_cont.17499
beq_else.17498:
	li	a3, 0 ! 16-16
	bne	a4, a3, beq_else.17500 ! 16-16
	li	a3, 1 ! 16-16
	j	beq_cont.17501
beq_else.17500:
	li	a3, 0 ! 16-16
beq_cont.17501:
beq_cont.17499:
	lw	a2, a2, 16 ! 310-315
	flw	fa0, a2, 8 ! 315-315
	li	a2, 0 ! 124-124
	bne	a3, a2, beq_else.17502 ! 124-124
	fneg.s	fa0, fa0 ! 124-124
	j	beq_cont.17503
beq_else.17502:
beq_cont.17503:
	fsw	a0, fa0, 16 ! 1115-1115
	li	a2, l.12683 ! 1116-1116
	flw	fa0, a2, 0 ! 1116-1116
	flw	fa1, a1, 8 ! 1116-1116
	fdiv.s	fa0, fa0, fa1, rne ! 1116-1116
	fsw	a0, fa0, 20 ! 1116-1116
	j	beq_cont.17495
beq_else.17494:
	li	a1, l.12679 ! 1113-1113
	flw	fa0, a1, 0 ! 1113-1113
	fsw	a0, fa0, 20 ! 1113-1113
beq_cont.17495:
	ret ! 1118-1118
setup_surface_table.2665:
	li	a2, 4 ! 1123-1123
	li	a3, l.12679 ! 1123-1123
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
	li	a1, l.12679 ! 1127-1127
	flw	fa1, a1, 0 ! 1127-1127
	flt.s	t0, fa0, fa1 ! 1127-1135
	bne	zero, t0, beq_else.17504 ! 1127-1135
	li	a1, l.12681 ! 1129-1129
	flw	fa1, a1, 0 ! 1129-1129
	fdiv.s	fa1, fa1, fa0, rne ! 1129-1129
	fsw	a0, fa1, 0 ! 1129-1129
	lw	a1, a2, 16 ! 290-295
	flw	fa1, a1, 0 ! 295-295
	fdiv.s	fa1, fa1, fa0, rne ! 1131-1131
	fneg.s	fa1, fa1 ! 1131-1131
	fsw	a0, fa1, 4 ! 1131-1131
	lw	a1, a2, 16 ! 300-305
	flw	fa1, a1, 4 ! 305-305
	fdiv.s	fa1, fa1, fa0, rne ! 1132-1132
	fneg.s	fa1, fa1 ! 1132-1132
	fsw	a0, fa1, 8 ! 1132-1132
	lw	a1, a2, 16 ! 310-315
	flw	fa1, a1, 8 ! 315-315
	fdiv.s	fa0, fa1, fa0, rne ! 1133-1133
	fneg.s	fa0, fa0 ! 1133-1133
	fsw	a0, fa0, 12 ! 1133-1133
	j	beq_cont.17505
beq_else.17504:
	li	a1, l.12679 ! 1135-1135
	flw	fa0, a1, 0 ! 1135-1135
	fsw	a0, fa0, 0 ! 1135-1135
beq_cont.17505:
	ret ! 1136-1136
setup_second_table.2668:
	li	a2, 5 ! 1142-1142
	li	a3, l.12679 ! 1142-1142
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
	jal	quadratic.2599
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 1145-1145
	lw	a1, sp, 0 ! 0-0
	lw	a2, a1, 16 ! 290-295
	flw	fa2, a2, 0 ! 295-295
	fmul.s	fa1, fa1, fa2, rne ! 1145-1145
	fneg.s	fa1, fa1 ! 1145-1145
	flw	fa2, a0, 4 ! 1146-1146
	lw	a2, a1, 16 ! 300-305
	flw	fa3, a2, 4 ! 305-305
	fmul.s	fa2, fa2, fa3, rne ! 1146-1146
	fneg.s	fa2, fa2 ! 1146-1146
	flw	fa3, a0, 8 ! 1147-1147
	lw	a2, a1, 16 ! 310-315
	flw	fa4, a2, 8 ! 315-315
	fmul.s	fa3, fa3, fa4, rne ! 1147-1147
	fneg.s	fa3, fa3 ! 1147-1147
	lw	a2, sp, 8 ! 0-0
	fsw	a2, fa0, 0 ! 1149-1149
	lw	a3, a1, 12 ! 281-285
	li	a4, 0 ! 1153-1153
	bne	a3, a4, beq_else.17506 ! 1153-1161
	fsw	a2, fa1, 4 ! 1158-1158
	fsw	a2, fa2, 8 ! 1159-1159
	fsw	a2, fa3, 12 ! 1160-1160
	j	beq_cont.17507
beq_else.17506:
	flw	fa4, a0, 8 ! 1154-1154
	lw	a3, a1, 36 ! 420-425
	flw	fa5, a3, 4 ! 425-425
	fmul.s	fa4, fa4, fa5, rne ! 1154-1154
	flw	fa5, a0, 4 ! 1154-1154
	lw	a3, a1, 36 ! 430-435
	flw	fa6, a3, 8 ! 435-435
	fmul.s	fa5, fa5, fa6, rne ! 1154-1154
	fadd.s	fa4, fa4, fa5, rne ! 1154-1154
	li	a3, l.12883 ! 1154-1154
	flw	fa5, a3, 0 ! 1154-1154
	fmul.s	fa4, fa4, fa5, rne ! 1154-1154
	fsub.s	fa1, fa1, fa4, rne ! 1154-1154
	fsw	a2, fa1, 4 ! 1154-1154
	flw	fa1, a0, 8 ! 1155-1155
	lw	a3, a1, 36 ! 410-415
	flw	fa4, a3, 0 ! 415-415
	fmul.s	fa1, fa1, fa4, rne ! 1155-1155
	flw	fa4, a0, 0 ! 1155-1155
	lw	a3, a1, 36 ! 430-435
	flw	fa5, a3, 8 ! 435-435
	fmul.s	fa4, fa4, fa5, rne ! 1155-1155
	fadd.s	fa1, fa1, fa4, rne ! 1155-1155
	li	a3, l.12883 ! 1155-1155
	flw	fa4, a3, 0 ! 1155-1155
	fmul.s	fa1, fa1, fa4, rne ! 1155-1155
	fsub.s	fa1, fa2, fa1, rne ! 1155-1155
	fsw	a2, fa1, 8 ! 1155-1155
	flw	fa1, a0, 4 ! 1156-1156
	lw	a3, a1, 36 ! 410-415
	flw	fa2, a3, 0 ! 415-415
	fmul.s	fa1, fa1, fa2, rne ! 1156-1156
	flw	fa2, a0, 0 ! 1156-1156
	lw	a0, a1, 36 ! 420-425
	flw	fa4, a0, 4 ! 425-425
	fmul.s	fa2, fa2, fa4, rne ! 1156-1156
	fadd.s	fa1, fa1, fa2, rne ! 1156-1156
	li	a0, l.12883 ! 1156-1156
	flw	fa2, a0, 0 ! 1156-1156
	fmul.s	fa1, fa1, fa2, rne ! 1156-1156
	fsub.s	fa1, fa3, fa1, rne ! 1156-1156
	fsw	a2, fa1, 12 ! 1156-1156
beq_cont.17507:
	li	a0, l.12679 ! 1162-1162
	flw	fa1, a0, 0 ! 1162-1162
	feq.s	t0, fa0, fa1 ! 1162-1164
	bne	zero, t0, beq_else.17508 ! 1162-1164
	li	a0, l.12683 ! 1163-1163
	flw	fa1, a0, 0 ! 1163-1163
	fdiv.s	fa0, fa1, fa0, rne ! 1163-1163
	fsw	a2, fa0, 16 ! 1163-1163
	j	beq_cont.17509
beq_else.17508:
beq_cont.17509:
	mv	a0, a2 ! 1165-1165
	ret ! 1165-1165
iter_setup_dirvec_constants.2671:
	lw	a2, a21, 4 ! 0-0
	li	a3, 0 ! 1171-1171
	blt	a1, a3, bge_else.17510 ! 1171-1184
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
	bne	a6, a7, beq_else.17511 ! 1176-1181
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_rect_table.2662
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.17512
beq_else.17511:
	li	a7, 2 ! 1178-1178
	bne	a6, a7, beq_else.17513 ! 1178-1181
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_surface_table.2665
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.17514
beq_else.17513:
	sw	sp, a4, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	setup_second_table.2668
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 12 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.17514:
beq_cont.17512:
	addi	a0, a1, -1 ! 1183-1183
	li	a1, 0 ! 1171-1171
	blt	a0, a1, bge_else.17515 ! 1171-1184
	slli	a1, a0, 2 ! 1172-1172
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1172-1172
	lw	a1, t0, 0 ! 1172-1172
	lw	a2, sp, 4 ! 0-0
	lw	a3, a2, 4 ! 544-545
	lw	a4, a2, 0 ! 538-539
	lw	a5, a1, 4 ! 252-257
	li	a6, 1 ! 1176-1176
	bne	a5, a6, beq_else.17516 ! 1176-1181
	sw	sp, a3, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_rect_table.2662
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 20 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.17517
beq_else.17516:
	li	a6, 2 ! 1178-1178
	bne	a5, a6, beq_else.17518 ! 1178-1181
	sw	sp, a3, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_surface_table.2665
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 20 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.17519
beq_else.17518:
	sw	sp, a3, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	mv	a0, a4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	setup_second_table.2668
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 20 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.17519:
beq_cont.17517:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 4 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17515:
	ret ! 1184-1184
bge_else.17510:
	ret ! 1184-1184
setup_startp_constants.2676:
	lw	a2, a21, 4 ! 0-0
	li	a3, 0 ! 1196-1196
	blt	a1, a3, bge_else.17520 ! 1196-1211
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
	bne	a4, a5, beq_else.17521 ! 1203-1209
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
	j	beq_cont.17522
beq_else.17521:
	li	a5, 2 ! 1206-1206
	blt	a5, a4, bge_else.17523 ! 1206-1209
	j	bge_cont.17524
bge_else.17523:
	flw	fa0, a3, 0 ! 1207-1207
	flw	fa1, a3, 4 ! 1207-1207
	flw	fa2, a3, 8 ! 1207-1207
	sw	sp, a3, 12 ! 0-0
	sw	sp, a4, 16 ! 0-0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	quadratic.2599
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, 3 ! 1208-1208
	lw	a1, sp, 16 ! 0-0
	bne	a1, a0, beq_else.17525 ! 1208-1208
	li	a0, l.12683 ! 1208-1208
	flw	fa1, a0, 0 ! 1208-1208
	fsub.s	fa0, fa0, fa1, rne ! 1208-1208
	j	beq_cont.17526
beq_else.17525:
beq_cont.17526:
	lw	a0, sp, 12 ! 0-0
	fsw	a0, fa0, 12 ! 1208-1208
bge_cont.17524:
beq_cont.17522:
	lw	a0, sp, 8 ! 0-0
	addi	a1, a0, -1 ! 1210-1210
	lw	a0, sp, 0 ! 0-0
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17520:
	ret ! 1211-1211
is_outside.2696:
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
	bne	a1, a2, beq_else.17527 ! 1255-1260
	lw	a1, a0, 16 ! 290-295
	flw	fa3, a1, 0 ! 295-295
	fabs.s	fa0, fa0 ! 1228-1228
	flt.s	t0, fa3, fa0 ! 1228-1232
	bne	zero, t0, beq_else.17528 ! 1228-1232
	lw	a1, a0, 16 ! 300-305
	flw	fa0, a1, 4 ! 305-305
	fabs.s	fa1, fa1 ! 1229-1229
	flt.s	t0, fa0, fa1 ! 1229-1231
	bne	zero, t0, beq_else.17530 ! 1229-1231
	lw	a1, a0, 16 ! 310-315
	flw	fa0, a1, 8 ! 315-315
	fabs.s	fa1, fa2 ! 1230-1230
	flt.s	t0, fa0, fa1 ! 1230-1230
	bne	zero, t0, beq_else.17532 ! 1230-1230
	li	a1, 1 ! 1230-1230
	j	beq_cont.17533
beq_else.17532:
	li	a1, 0 ! 1230-1230
beq_cont.17533:
	j	beq_cont.17531
beq_else.17530:
	li	a1, 0 ! 1231-1231
beq_cont.17531:
	j	beq_cont.17529
beq_else.17528:
	li	a1, 0 ! 1232-1232
beq_cont.17529:
	li	a2, 0 ! 1227-1233
	bne	a1, a2, beq_else.17534 ! 1227-1233
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1233-1233
	bne	a0, a1, beq_else.17535 ! 1233-1233
	li	a0, 1 ! 1233-1233
	ret ! 1233-1233
beq_else.17535:
	li	a0, 0 ! 1233-1233
	ret ! 1233-1233
beq_else.17534:
	lw	a0, a0, 24 ! 272-276
	ret ! 276-276
beq_else.17527:
	li	a2, 2 ! 1257-1257
	bne	a1, a2, beq_else.17536 ! 1257-1260
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
	li	a1, l.12679 ! 1239-1239
	flw	fa1, a1, 0 ! 1239-1239
	flt.s	t0, fa1, fa0 ! 1239-1239
	bne	zero, t0, beq_else.17537 ! 1239-1239
	li	a1, 1 ! 1239-1239
	j	beq_cont.17538
beq_else.17537:
	li	a1, 0 ! 1239-1239
beq_cont.17538:
	li	a2, 0 ! 16-16
	bne	a0, a2, beq_else.17539 ! 16-16
	mv	a0, a1 ! 16-16
	j	beq_cont.17540
beq_else.17539:
	li	a0, 0 ! 16-16
	bne	a1, a0, beq_else.17541 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17542
beq_else.17541:
	li	a0, 0 ! 16-16
beq_cont.17542:
beq_cont.17540:
	li	a1, 0 ! 1239-1239
	bne	a0, a1, beq_else.17543 ! 1239-1239
	li	a0, 1 ! 1239-1239
	ret ! 1239-1239
beq_else.17543:
	li	a0, 0 ! 1239-1239
	ret ! 1239-1239
beq_else.17536:
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	quadratic.2599
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 1245-1245
	bne	a1, a2, beq_else.17544 ! 1245-1245
	li	a1, l.12683 ! 1245-1245
	flw	fa1, a1, 0 ! 1245-1245
	fsub.s	fa0, fa0, fa1, rne ! 1245-1245
	j	beq_cont.17545
beq_else.17544:
beq_cont.17545:
	lw	a0, a0, 24 ! 272-276
	li	a1, l.12679 ! 1246-1246
	flw	fa1, a1, 0 ! 1246-1246
	flt.s	t0, fa1, fa0 ! 1246-1246
	bne	zero, t0, beq_else.17546 ! 1246-1246
	li	a1, 1 ! 1246-1246
	j	beq_cont.17547
beq_else.17546:
	li	a1, 0 ! 1246-1246
beq_cont.17547:
	li	a2, 0 ! 16-16
	bne	a0, a2, beq_else.17548 ! 16-16
	mv	a0, a1 ! 16-16
	j	beq_cont.17549
beq_else.17548:
	li	a0, 0 ! 16-16
	bne	a1, a0, beq_else.17550 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17551
beq_else.17550:
	li	a0, 0 ! 16-16
beq_cont.17551:
beq_cont.17549:
	li	a1, 0 ! 1246-1246
	bne	a0, a1, beq_else.17552 ! 1246-1246
	li	a0, 1 ! 1246-1246
	ret ! 1246-1246
beq_else.17552:
	li	a0, 0 ! 1246-1246
	ret ! 1246-1246
check_all_inside.2701:
	lw	a2, a21, 4 ! 0-0
	slli	a3, a0, 2 ! 1265-1265
	add	t0, a1, a3 ! 1265-1265
	lw	a3, t0, 0 ! 1265-1265
	li	a4, -1 ! 1266-1266
	bne	a3, a4, beq_else.17553 ! 1266-1273
	li	a0, 1 ! 1267-1267
	ret ! 1267-1267
beq_else.17553:
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
	bne	a4, a5, beq_else.17554 ! 1255-1260
	lw	a4, a3, 16 ! 290-295
	flw	fa6, a4, 0 ! 295-295
	fabs.s	fa3, fa3 ! 1228-1228
	flt.s	t0, fa6, fa3 ! 1228-1232
	bne	zero, t0, beq_else.17556 ! 1228-1232
	lw	a4, a3, 16 ! 300-305
	flw	fa3, a4, 4 ! 305-305
	fabs.s	fa4, fa4 ! 1229-1229
	flt.s	t0, fa3, fa4 ! 1229-1231
	bne	zero, t0, beq_else.17558 ! 1229-1231
	lw	a4, a3, 16 ! 310-315
	flw	fa3, a4, 8 ! 315-315
	fabs.s	fa4, fa5 ! 1230-1230
	flt.s	t0, fa3, fa4 ! 1230-1230
	bne	zero, t0, beq_else.17560 ! 1230-1230
	li	a4, 1 ! 1230-1230
	j	beq_cont.17561
beq_else.17560:
	li	a4, 0 ! 1230-1230
beq_cont.17561:
	j	beq_cont.17559
beq_else.17558:
	li	a4, 0 ! 1231-1231
beq_cont.17559:
	j	beq_cont.17557
beq_else.17556:
	li	a4, 0 ! 1232-1232
beq_cont.17557:
	li	a5, 0 ! 1227-1233
	bne	a4, a5, beq_else.17562 ! 1227-1233
	lw	a3, a3, 24 ! 272-276
	li	a4, 0 ! 1233-1233
	bne	a3, a4, beq_else.17564 ! 1233-1233
	li	a0, 1 ! 1233-1233
	j	beq_cont.17565
beq_else.17564:
	li	a0, 0 ! 1233-1233
beq_cont.17565:
	j	beq_cont.17563
beq_else.17562:
	lw	a3, a3, 24 ! 272-276
	mv	a0, a3 ! 276-276
beq_cont.17563:
	j	beq_cont.17555
beq_else.17554:
	li	a5, 2 ! 1257-1257
	bne	a4, a5, beq_else.17566 ! 1257-1260
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
	li	a4, l.12679 ! 1239-1239
	flw	fa4, a4, 0 ! 1239-1239
	flt.s	t0, fa4, fa3 ! 1239-1239
	bne	zero, t0, beq_else.17568 ! 1239-1239
	li	a4, 1 ! 1239-1239
	j	beq_cont.17569
beq_else.17568:
	li	a4, 0 ! 1239-1239
beq_cont.17569:
	li	a5, 0 ! 16-16
	bne	a3, a5, beq_else.17570 ! 16-16
	mv	a3, a4 ! 16-16
	j	beq_cont.17571
beq_else.17570:
	li	a3, 0 ! 16-16
	bne	a4, a3, beq_else.17572 ! 16-16
	li	a3, 1 ! 16-16
	j	beq_cont.17573
beq_else.17572:
	li	a3, 0 ! 16-16
beq_cont.17573:
beq_cont.17571:
	li	a4, 0 ! 1239-1239
	bne	a3, a4, beq_else.17574 ! 1239-1239
	li	a0, 1 ! 1239-1239
	j	beq_cont.17575
beq_else.17574:
	li	a0, 0 ! 1239-1239
beq_cont.17575:
	j	beq_cont.17567
beq_else.17566:
	sw	sp, a3, 28 ! 0-0
	mv	a0, a3
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	quadratic.2599
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 4 ! 252-257
	li	a2, 3 ! 1245-1245
	bne	a1, a2, beq_else.17576 ! 1245-1245
	li	a1, l.12683 ! 1245-1245
	flw	fa1, a1, 0 ! 1245-1245
	fsub.s	fa0, fa0, fa1, rne ! 1245-1245
	j	beq_cont.17577
beq_else.17576:
beq_cont.17577:
	lw	a0, a0, 24 ! 272-276
	li	a1, l.12679 ! 1246-1246
	flw	fa1, a1, 0 ! 1246-1246
	flt.s	t0, fa1, fa0 ! 1246-1246
	bne	zero, t0, beq_else.17578 ! 1246-1246
	li	a1, 1 ! 1246-1246
	j	beq_cont.17579
beq_else.17578:
	li	a1, 0 ! 1246-1246
beq_cont.17579:
	li	a2, 0 ! 16-16
	bne	a0, a2, beq_else.17580 ! 16-16
	mv	a0, a1 ! 16-16
	j	beq_cont.17581
beq_else.17580:
	li	a0, 0 ! 16-16
	bne	a1, a0, beq_else.17582 ! 16-16
	li	a0, 1 ! 16-16
	j	beq_cont.17583
beq_else.17582:
	li	a0, 0 ! 16-16
beq_cont.17583:
beq_cont.17581:
	li	a1, 0 ! 1246-1246
	bne	a0, a1, beq_else.17584 ! 1246-1246
	li	a0, 1 ! 1246-1246
	j	beq_cont.17585
beq_else.17584:
	li	a0, 0 ! 1246-1246
beq_cont.17585:
beq_cont.17567:
beq_cont.17555:
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.17586 ! 1269-1272
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1272-1272
	slli	a1, a0, 2 ! 1265-1265
	lw	a2, sp, 20 ! 0-0
	add	t0, a2, a1 ! 1265-1265
	lw	a1, t0, 0 ! 1265-1265
	li	a3, -1 ! 1266-1266
	bne	a1, a3, beq_else.17587 ! 1266-1273
	li	a0, 1 ! 1267-1267
	ret ! 1267-1267
beq_else.17587:
	slli	a1, a1, 2 ! 1269-1269
	lw	a3, sp, 16 ! 0-0
	add	t0, a3, a1 ! 1269-1269
	lw	a1, t0, 0 ! 1269-1269
	flw	fa0, sp, 12 ! 0-0
	flw	fa1, sp, 8 ! 0-0
	flw	fa2, sp, 4 ! 0-0
	sw	sp, a0, 32 ! 0-0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	is_outside.2696
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.17588 ! 1269-1272
	lw	a0, sp, 32 ! 0-0
	addi	a0, a0, 1 ! 1272-1272
	flw	fa0, sp, 12 ! 0-0
	flw	fa1, sp, 8 ! 0-0
	flw	fa2, sp, 4 ! 0-0
	lw	a1, sp, 20 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17588:
	li	a0, 0 ! 1270-1270
	ret ! 1270-1270
beq_else.17586:
	li	a0, 0 ! 1270-1270
	ret ! 1270-1270
shadow_check_and_group.2707:
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
	bne	a11, a12, beq_else.17589 ! 1285-1310
	li	a0, 0 ! 1286-1286
	ret ! 1286-1286
beq_else.17589:
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
	bne	a13, a14, beq_else.17590 ! 1034-1039
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
	j	beq_cont.17591
beq_else.17590:
	li	a2, 2 ! 1036-1036
	bne	a13, a2, beq_else.17592 ! 1036-1039
	li	a2, l.12679 ! 998-998
	flw	fa3, a2, 0 ! 998-998
	flw	fa4, a9, 0 ! 998-998
	flt.s	t0, fa3, fa4 ! 998-1002
	bne	zero, t0, beq_else.17594 ! 998-1002
	flw	fa3, a9, 4 ! 1000-1000
	fmul.s	fa0, fa3, fa0, rne ! 1000-1000
	flw	fa3, a9, 8 ! 1000-1000
	fmul.s	fa1, fa3, fa1, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	flw	fa1, a9, 12 ! 1000-1000
	fmul.s	fa1, fa1, fa2, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	fsw	a5, fa0, 0 ! 999-1000
	li	a0, 1 ! 1001-1001
	j	beq_cont.17595
beq_else.17594:
	li	a0, 0 ! 1002-1002
beq_cont.17595:
	j	beq_cont.17593
beq_else.17592:
	mv	a1, a9
	mv	a0, a12
	mv	a21, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
beq_cont.17593:
beq_cont.17591:
	lw	a1, sp, 32 ! 0-0
	flw	fa0, a1, 0 ! 1290-1290
	li	a1, 0 ! 1291-1291
	bne	a0, a1, beq_else.17596 ! 1291-1291
	li	a0, 0 ! 1291-1291
	j	beq_cont.17597
beq_else.17596:
	li	a0, l.13134 ! 1291-1291
	flw	fa1, a0, 0 ! 1291-1291
	flt.s	t0, fa1, fa0 ! 1291-1291
	bne	zero, t0, beq_else.17598 ! 1291-1291
	li	a0, 1 ! 1291-1291
	j	beq_cont.17599
beq_else.17598:
	li	a0, 0 ! 1291-1291
beq_cont.17599:
beq_cont.17597:
	li	a1, 0 ! 1291-1310
	bne	a0, a1, beq_else.17600 ! 1291-1310
	lw	a0, sp, 28 ! 0-0
	slli	a0, a0, 2 ! 1307-1307
	lw	a1, sp, 24 ! 0-0
	add	t0, a1, a0 ! 1307-1307
	lw	a0, t0, 0 ! 1307-1307
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1307-1310
	bne	a0, a1, beq_else.17601 ! 1307-1310
	li	a0, 0 ! 1310-1310
	ret ! 1310-1310
beq_else.17601:
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1308-1308
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 16 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17600:
	li	a0, l.13136 ! 1294-1294
	flw	fa1, a0, 0 ! 1294-1294
	fadd.s	fa0, fa0, fa1, rne ! 1294-1294
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
	bne	a0, a2, beq_else.17602 ! 1266-1273
	li	a0, 1 ! 1267-1267
	j	beq_cont.17603
beq_else.17602:
	slli	a0, a0, 2 ! 1269-1269
	lw	a2, sp, 24 ! 0-0
	add	t0, a2, a0 ! 1269-1269
	lw	a0, t0, 0 ! 1269-1269
	fsw	sp, fa0, 36 ! 0-0
	fsw	sp, fa2, 40 ! 0-0
	fsw	sp, fa1, 44 ! 0-0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	is_outside.2696
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.17604 ! 1269-1272
	li	a0, 1 ! 1272-1272
	flw	fa0, sp, 44 ! 0-0
	flw	fa1, sp, 40 ! 0-0
	flw	fa2, sp, 36 ! 0-0
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	beq_cont.17605
beq_else.17604:
	li	a0, 0 ! 1270-1270
beq_cont.17605:
beq_cont.17603:
	li	a1, 0 ! 1298-1301
	bne	a0, a1, beq_else.17606 ! 1298-1301
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1301-1301
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 16 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17606:
	li	a0, 1 ! 1299-1299
	ret ! 1299-1299
shadow_check_one_or_group.2710:
	lw	a2, a21, 8 ! 0-0
	lw	a3, a21, 4 ! 0-0
	slli	a4, a0, 2 ! 1315-1315
	add	t0, a1, a4 ! 1315-1315
	lw	a4, t0, 0 ! 1315-1315
	li	a5, -1 ! 1316-1316
	bne	a4, a5, beq_else.17607 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.17607:
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
	bne	a0, a1, beq_else.17608 ! 1321-1324
	lw	a0, sp, 16 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	slli	a1, a0, 2 ! 1315-1315
	lw	a2, sp, 12 ! 0-0
	add	t0, a2, a1 ! 1315-1315
	lw	a1, t0, 0 ! 1315-1315
	li	a3, -1 ! 1316-1316
	bne	a1, a3, beq_else.17609 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.17609:
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
	bne	a0, a1, beq_else.17610 ! 1321-1324
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	slli	a1, a0, 2 ! 1315-1315
	lw	a2, sp, 12 ! 0-0
	add	t0, a2, a1 ! 1315-1315
	lw	a1, t0, 0 ! 1315-1315
	li	a3, -1 ! 1316-1316
	bne	a1, a3, beq_else.17611 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.17611:
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
	bne	a0, a1, beq_else.17612 ! 1321-1324
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	slli	a1, a0, 2 ! 1315-1315
	lw	a2, sp, 12 ! 0-0
	add	t0, a2, a1 ! 1315-1315
	lw	a1, t0, 0 ! 1315-1315
	li	a3, -1 ! 1316-1316
	bne	a1, a3, beq_else.17613 ! 1316-1325
	li	a0, 0 ! 1317-1317
	ret ! 1317-1317
beq_else.17613:
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
	bne	a0, a1, beq_else.17614 ! 1321-1324
	lw	a0, sp, 28 ! 0-0
	addi	a0, a0, 1 ! 1324-1324
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17614:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
beq_else.17612:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
beq_else.17610:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
beq_else.17608:
	li	a0, 1 ! 1322-1322
	ret ! 1322-1322
shadow_check_one_or_matrix.2713:
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
	bne	a13, a14, beq_else.17615 ! 1332-1355
	li	a0, 0 ! 1333-1333
	ret ! 1333-1333
beq_else.17615:
	li	a14, 99 ! 1336-1336
	sw	sp, a6, 0 ! 0-0
	sw	sp, a7, 4 ! 0-0
	sw	sp, a11, 8 ! 0-0
	sw	sp, a12, 12 ! 0-0
	sw	sp, a1, 16 ! 0-0
	sw	sp, a21, 20 ! 0-0
	sw	sp, a0, 24 ! 0-0
	bne	a13, a14, beq_else.17616 ! 1336-1348
	li	a0, 1 ! 1337-1337
	j	beq_cont.17617
beq_else.17616:
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
	bne	a10, a13, beq_else.17618 ! 1034-1039
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
	j	beq_cont.17619
beq_else.17618:
	li	a2, 2 ! 1036-1036
	bne	a10, a2, beq_else.17620 ! 1036-1039
	li	a2, l.12679 ! 998-998
	flw	fa3, a2, 0 ! 998-998
	flw	fa4, a9, 0 ! 998-998
	flt.s	t0, fa3, fa4 ! 998-1002
	bne	zero, t0, beq_else.17622 ! 998-1002
	flw	fa3, a9, 4 ! 1000-1000
	fmul.s	fa0, fa3, fa0, rne ! 1000-1000
	flw	fa3, a9, 8 ! 1000-1000
	fmul.s	fa1, fa3, fa1, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	flw	fa1, a9, 12 ! 1000-1000
	fmul.s	fa1, fa1, fa2, rne ! 1000-1000
	fadd.s	fa0, fa0, fa1, rne ! 1000-1000
	fsw	a5, fa0, 0 ! 999-1000
	li	a0, 1 ! 1001-1001
	j	beq_cont.17623
beq_else.17622:
	li	a0, 0 ! 1002-1002
beq_cont.17623:
	j	beq_cont.17621
beq_else.17620:
	mv	a1, a9
	mv	a0, a8
	mv	a21, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
beq_cont.17621:
beq_cont.17619:
	li	a1, 0 ! 1342-1342
	bne	a0, a1, beq_else.17624 ! 1342-1348
	li	a0, 0 ! 1348-1348
	j	beq_cont.17625
beq_else.17624:
	li	a0, l.13171 ! 1343-1343
	flw	fa0, a0, 0 ! 1343-1343
	lw	a0, sp, 28 ! 0-0
	flw	fa1, a0, 0 ! 1343-1343
	flt.s	t0, fa0, fa1 ! 1343-1347
	bne	zero, t0, beq_else.17626 ! 1343-1347
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 4 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.17628 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.17629
beq_else.17628:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.17630 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 8 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.17632 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.17633
beq_else.17632:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.17634 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 12 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.17636 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.17637
beq_else.17636:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.17638 ! 1321-1324
	li	a0, 4 ! 1324-1324
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	beq_cont.17639
beq_else.17638:
	li	a0, 1 ! 1322-1322
beq_cont.17639:
beq_cont.17637:
	j	beq_cont.17635
beq_else.17634:
	li	a0, 1 ! 1322-1322
beq_cont.17635:
beq_cont.17633:
	j	beq_cont.17631
beq_else.17630:
	li	a0, 1 ! 1322-1322
beq_cont.17631:
beq_cont.17629:
	li	a1, 0 ! 1344-1346
	bne	a0, a1, beq_else.17640 ! 1344-1346
	li	a0, 0 ! 1346-1346
	j	beq_cont.17641
beq_else.17640:
	li	a0, 1 ! 1345-1345
beq_cont.17641:
	j	beq_cont.17627
beq_else.17626:
	li	a0, 0 ! 1347-1347
beq_cont.17627:
beq_cont.17625:
beq_cont.17617:
	li	a1, 0 ! 1335-1355
	bne	a0, a1, beq_else.17642 ! 1335-1355
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1355-1355
	lw	a1, sp, 16 ! 0-0
	lw	a21, sp, 20 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17642:
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 4 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.17643 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.17644
beq_else.17643:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.17645 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 8 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.17647 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.17648
beq_else.17647:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a3, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.17649 ! 1321-1324
	lw	a0, sp, 12 ! 0-0
	lw	a1, a0, 12 ! 1315-1315
	li	a2, -1 ! 1316-1316
	bne	a1, a2, beq_else.17651 ! 1316-1325
	li	a0, 0 ! 1317-1317
	j	beq_cont.17652
beq_else.17651:
	slli	a1, a1, 2 ! 1319-1319
	lw	a2, sp, 8 ! 0-0
	add	t0, a2, a1 ! 1319-1319
	lw	a1, t0, 0 ! 1319-1319
	li	a2, 0 ! 1320-1320
	lw	a21, sp, 4 ! 0-0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1321-1324
	bne	a0, a1, beq_else.17653 ! 1321-1324
	li	a0, 4 ! 1324-1324
	lw	a1, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	beq_cont.17654
beq_else.17653:
	li	a0, 1 ! 1322-1322
beq_cont.17654:
beq_cont.17652:
	j	beq_cont.17650
beq_else.17649:
	li	a0, 1 ! 1322-1322
beq_cont.17650:
beq_cont.17648:
	j	beq_cont.17646
beq_else.17645:
	li	a0, 1 ! 1322-1322
beq_cont.17646:
beq_cont.17644:
	li	a1, 0 ! 1350-1353
	bne	a0, a1, beq_else.17655 ! 1350-1353
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, 1 ! 1353-1353
	lw	a1, sp, 16 ! 0-0
	lw	a21, sp, 20 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17655:
	li	a0, 1 ! 1351-1351
	ret ! 1351-1351
solve_each_element.2716:
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
	bne	a14, a15, beq_else.17656 ! 1367-1402
	ret ! 1367-1367
beq_else.17656:
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
	bne	a16, a17, beq_else.17657 ! 940-942
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
	bne	a0, a1, beq_else.17659 ! 843-846
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
	bne	a0, a1, beq_else.17661 ! 844-846
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
	bne	a0, a1, beq_else.17663 ! 845-846
	li	a0, 0 ! 846-846
	j	beq_cont.17664
beq_else.17663:
	li	a0, 3 ! 845-845
beq_cont.17664:
	j	beq_cont.17662
beq_else.17661:
	li	a0, 2 ! 844-844
beq_cont.17662:
	j	beq_cont.17660
beq_else.17659:
	li	a0, 1 ! 843-843
beq_cont.17660:
	j	beq_cont.17658
beq_else.17657:
	li	a7, 2 ! 941-941
	bne	a16, a7, beq_else.17665 ! 941-942
	mv	a1, a2
	mv	a0, a15
	mv	a21, a5
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	j	beq_cont.17666
beq_else.17665:
	mv	a1, a2
	mv	a0, a15
	mv	a21, a6
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
beq_cont.17666:
beq_cont.17658:
	li	a1, 0 ! 1370-1370
	bne	a0, a1, beq_else.17667 ! 1370-1400
	lw	a0, sp, 48 ! 0-0
	slli	a0, a0, 2 ! 1398-1398
	lw	a1, sp, 44 ! 0-0
	add	t0, a1, a0 ! 1398-1398
	lw	a0, t0, 0 ! 1398-1398
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1398-1400
	bne	a0, a1, beq_else.17668 ! 1398-1400
	ret ! 1400-1400
beq_else.17668:
	lw	a0, sp, 40 ! 0-0
	addi	a0, a0, 1 ! 1399-1399
	lw	a1, sp, 32 ! 0-0
	lw	a2, sp, 28 ! 0-0
	lw	a21, sp, 36 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17667:
	lw	a1, sp, 24 ! 0-0
	flw	fa0, a1, 0 ! 1374-1374
	li	a1, l.12679 ! 1376-1376
	flw	fa1, a1, 0 ! 1376-1376
	flt.s	t0, fa0, fa1 ! 1376-1393
	bne	zero, t0, beq_else.17669 ! 1376-1393
	lw	a1, sp, 20 ! 0-0
	flw	fa1, a1, 0 ! 1377-1377
	flt.s	t0, fa1, fa0 ! 1377-1392
	bne	zero, t0, beq_else.17671 ! 1377-1392
	li	a2, l.13136 ! 1379-1379
	flw	fa1, a2, 0 ! 1379-1379
	fadd.s	fa0, fa0, fa1, rne ! 1379-1379
	lw	a2, sp, 28 ! 0-0
	flw	fa1, a2, 0 ! 1380-1380
	fmul.s	fa1, fa1, fa0, rne ! 1380-1380
	lw	a3, sp, 16 ! 0-0
	flw	fa2, a3, 0 ! 1380-1380
	fadd.s	fa1, fa1, fa2, rne ! 1380-1380
	flw	fa2, a2, 4 ! 1381-1381
	fmul.s	fa2, fa2, fa0, rne ! 1381-1381
	flw	fa3, a3, 4 ! 1381-1381
	fadd.s	fa2, fa2, fa3, rne ! 1381-1381
	flw	fa3, a2, 8 ! 1382-1382
	fmul.s	fa3, fa3, fa0, rne ! 1382-1382
	flw	fa4, a3, 8 ! 1382-1382
	fadd.s	fa3, fa3, fa4, rne ! 1382-1382
	lw	a3, sp, 32 ! 0-0
	lw	a4, a3, 0 ! 1265-1265
	li	a5, -1 ! 1266-1266
	sw	sp, a0, 72 ! 0-0
	fsw	sp, fa3, 76 ! 0-0
	fsw	sp, fa2, 80 ! 0-0
	fsw	sp, fa1, 84 ! 0-0
	fsw	sp, fa0, 88 ! 0-0
	bne	a4, a5, beq_else.17673 ! 1266-1273
	li	a0, 1 ! 1267-1267
	j	beq_cont.17674
beq_else.17673:
	slli	a4, a4, 2 ! 1269-1269
	lw	a5, sp, 44 ! 0-0
	add	t0, a5, a4 ! 1269-1269
	lw	a4, t0, 0 ! 1269-1269
	mv	a0, a4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	is_outside.2696
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.17675 ! 1269-1272
	li	a0, 1 ! 1272-1272
	flw	fa0, sp, 84 ! 0-0
	flw	fa1, sp, 80 ! 0-0
	flw	fa2, sp, 76 ! 0-0
	lw	a1, sp, 32 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	j	beq_cont.17676
beq_else.17675:
	li	a0, 0 ! 1270-1270
beq_cont.17676:
beq_cont.17674:
	li	a1, 0 ! 1383-1390
	bne	a0, a1, beq_else.17677 ! 1383-1390
	j	beq_cont.17678
beq_else.17677:
	flw	fa0, sp, 88 ! 0-0
	lw	a0, sp, 20 ! 0-0
	fsw	a0, fa0, 0 ! 1385-1385
	flw	fa0, sp, 84 ! 0-0
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 0 ! 145-145
	flw	fa0, sp, 80 ! 0-0
	fsw	a0, fa0, 4 ! 146-146
	flw	fa0, sp, 76 ! 0-0
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 48 ! 0-0
	lw	a1, sp, 4 ! 0-0
	sw	a1, a0, 0 ! 1387-1387
	lw	a0, sp, 72 ! 0-0
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 0 ! 1388-1388
beq_cont.17678:
	j	beq_cont.17672
beq_else.17671:
beq_cont.17672:
	j	beq_cont.17670
beq_else.17669:
beq_cont.17670:
	lw	a0, sp, 40 ! 0-0
	addi	a0, a0, 1 ! 1394-1394
	lw	a1, sp, 32 ! 0-0
	lw	a2, sp, 28 ! 0-0
	lw	a21, sp, 36 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network.2720:
	lw	a3, a21, 8 ! 0-0
	lw	a4, a21, 4 ! 0-0
	slli	a5, a0, 2 ! 1407-1407
	add	t0, a1, a5 ! 1407-1407
	lw	a5, t0, 0 ! 1407-1407
	li	a6, -1 ! 1408-1408
	bne	a5, a6, beq_else.17679 ! 1408-1412
	ret ! 1412-1412
beq_else.17679:
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
	bne	a1, a3, beq_else.17680 ! 1408-1412
	ret ! 1412-1412
beq_else.17680:
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
	bne	a1, a3, beq_else.17681 ! 1408-1412
	ret ! 1412-1412
beq_else.17681:
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
	bne	a1, a3, beq_else.17682 ! 1408-1412
	ret ! 1412-1412
beq_else.17682:
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
trace_or_matrix.2724:
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
	bne	a15, a16, beq_else.17683 ! 1419-1436
	ret ! 1420-1420
beq_else.17683:
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
	bne	a15, a16, beq_else.17684 ! 1422-1434
	lw	a5, a14, 4 ! 1407-1407
	li	a6, -1 ! 1408-1408
	bne	a5, a6, beq_else.17686 ! 1408-1412
	j	beq_cont.17687
beq_else.17686:
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
	bne	a1, a2, beq_else.17688 ! 1408-1412
	j	beq_cont.17689
beq_else.17688:
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
	bne	a1, a2, beq_else.17690 ! 1408-1412
	j	beq_cont.17691
beq_else.17690:
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
beq_cont.17691:
beq_cont.17689:
beq_cont.17687:
	j	beq_cont.17685
beq_else.17684:
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
	bne	a15, a16, beq_else.17692 ! 940-942
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
	bne	a0, a1, beq_else.17694 ! 843-846
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
	bne	a0, a1, beq_else.17696 ! 844-846
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
	bne	a0, a1, beq_else.17698 ! 845-846
	li	a0, 0 ! 846-846
	j	beq_cont.17699
beq_else.17698:
	li	a0, 3 ! 845-845
beq_cont.17699:
	j	beq_cont.17697
beq_else.17696:
	li	a0, 2 ! 844-844
beq_cont.17697:
	j	beq_cont.17695
beq_else.17694:
	li	a0, 1 ! 843-843
beq_cont.17695:
	j	beq_cont.17693
beq_else.17692:
	li	a7, 2 ! 941-941
	bne	a15, a7, beq_else.17700 ! 941-942
	mv	a1, a2
	mv	a0, a12
	mv	a21, a5
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	j	beq_cont.17701
beq_else.17700:
	mv	a1, a2
	mv	a0, a12
	mv	a21, a6
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.17701:
beq_cont.17693:
	li	a1, 0 ! 1428-1428
	bne	a0, a1, beq_else.17702 ! 1428-1433
	j	beq_cont.17703
beq_else.17702:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1429-1429
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 0 ! 1430-1430
	flt.s	t0, fa1, fa0 ! 1430-1432
	bne	zero, t0, beq_else.17704 ! 1430-1432
	lw	a2, sp, 44 ! 0-0
	lw	a3, a2, 4 ! 1407-1407
	li	a4, -1 ! 1408-1408
	bne	a3, a4, beq_else.17706 ! 1408-1412
	j	beq_cont.17707
beq_else.17706:
	slli	a3, a3, 2 ! 1409-1409
	lw	a4, sp, 32 ! 0-0
	add	t0, a4, a3 ! 1409-1409
	lw	a3, t0, 0 ! 1409-1409
	li	a5, 0 ! 1410-1410
	lw	a6, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	mv	a2, a6
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44 ! 0-0
	lw	a1, a0, 8 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.17708 ! 1408-1412
	j	beq_cont.17709
beq_else.17708:
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
	bne	a1, a2, beq_else.17710 ! 1408-1412
	j	beq_cont.17711
beq_else.17710:
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
beq_cont.17711:
beq_cont.17709:
beq_cont.17707:
	j	beq_cont.17705
beq_else.17704:
beq_cont.17705:
beq_cont.17703:
beq_cont.17685:
	lw	a0, sp, 40 ! 0-0
	addi	a0, a0, 1 ! 1435-1435
	slli	a1, a0, 2 ! 1417-1417
	lw	a2, sp, 36 ! 0-0
	add	t0, a2, a1 ! 1417-1417
	lw	a1, t0, 0 ! 1417-1417
	lw	a3, a1, 0 ! 1418-1418
	li	a4, -1 ! 1419-1419
	bne	a3, a4, beq_else.17712 ! 1419-1436
	ret ! 1420-1420
beq_else.17712:
	li	a4, 99 ! 1422-1422
	sw	sp, a0, 68 ! 0-0
	bne	a3, a4, beq_else.17713 ! 1422-1434
	lw	a3, a1, 4 ! 1407-1407
	li	a4, -1 ! 1408-1408
	bne	a3, a4, beq_else.17715 ! 1408-1412
	j	beq_cont.17716
beq_else.17715:
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
	bne	a1, a2, beq_else.17717 ! 1408-1412
	j	beq_cont.17718
beq_else.17717:
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
beq_cont.17718:
beq_cont.17716:
	j	beq_cont.17714
beq_else.17713:
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
	bne	a0, a1, beq_else.17719 ! 1428-1433
	j	beq_cont.17720
beq_else.17719:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1429-1429
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 1430-1430
	flt.s	t0, fa1, fa0 ! 1430-1432
	bne	zero, t0, beq_else.17721 ! 1430-1432
	lw	a0, sp, 72 ! 0-0
	lw	a1, a0, 4 ! 1407-1407
	li	a2, -1 ! 1408-1408
	bne	a1, a2, beq_else.17723 ! 1408-1412
	j	beq_cont.17724
beq_else.17723:
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
	bne	a1, a2, beq_else.17725 ! 1408-1412
	j	beq_cont.17726
beq_else.17725:
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
beq_cont.17726:
beq_cont.17724:
	j	beq_cont.17722
beq_else.17721:
beq_cont.17722:
beq_cont.17720:
beq_cont.17714:
	lw	a0, sp, 68 ! 0-0
	addi	a0, a0, 1 ! 1435-1435
	lw	a1, sp, 36 ! 0-0
	lw	a2, sp, 24 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_each_element_fast.2730:
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
	bne	a14, a15, beq_else.17727 ! 1461-1495
	ret ! 1461-1461
beq_else.17727:
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
	bne	a18, a19, beq_else.17728 ! 1082-1087
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
	j	beq_cont.17729
beq_else.17728:
	li	a6, 2 ! 1084-1084
	bne	a18, a6, beq_else.17730 ! 1084-1087
	li	a5, l.12679 ! 1047-1047
	flw	fa0, a5, 0 ! 1047-1047
	flw	fa1, a17, 0 ! 1047-1047
	flt.s	t0, fa0, fa1 ! 1047-1050
	bne	zero, t0, beq_else.17732 ! 1047-1050
	flw	fa0, a17, 0 ! 1048-1048
	flw	fa1, a16, 12 ! 1048-1048
	fmul.s	fa0, fa0, fa1, rne ! 1048-1048
	fsw	a7, fa0, 0 ! 1048-1048
	li	a0, 1 ! 1049-1049
	j	beq_cont.17733
beq_else.17732:
	li	a0, 0 ! 1050-1050
beq_cont.17733:
	j	beq_cont.17731
beq_else.17730:
	mv	a2, a16
	mv	a1, a17
	mv	a0, a15
	mv	a21, a5
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
beq_cont.17731:
beq_cont.17729:
	li	a1, 0 ! 1464-1464
	bne	a0, a1, beq_else.17734 ! 1464-1494
	lw	a0, sp, 52 ! 0-0
	slli	a0, a0, 2 ! 1492-1492
	lw	a1, sp, 48 ! 0-0
	add	t0, a1, a0 ! 1492-1492
	lw	a0, t0, 0 ! 1492-1492
	lw	a0, a0, 24 ! 272-276
	li	a1, 0 ! 1492-1494
	bne	a0, a1, beq_else.17735 ! 1492-1494
	ret ! 1494-1494
beq_else.17735:
	lw	a0, sp, 44 ! 0-0
	addi	a0, a0, 1 ! 1493-1493
	lw	a1, sp, 36 ! 0-0
	lw	a2, sp, 32 ! 0-0
	lw	a21, sp, 40 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17734:
	lw	a1, sp, 28 ! 0-0
	flw	fa0, a1, 0 ! 1468-1468
	li	a1, l.12679 ! 1470-1470
	flw	fa1, a1, 0 ! 1470-1470
	flt.s	t0, fa0, fa1 ! 1470-1487
	bne	zero, t0, beq_else.17736 ! 1470-1487
	lw	a1, sp, 24 ! 0-0
	flw	fa1, a1, 0 ! 1471-1471
	flt.s	t0, fa1, fa0 ! 1471-1486
	bne	zero, t0, beq_else.17738 ! 1471-1486
	li	a2, l.13136 ! 1473-1473
	flw	fa1, a2, 0 ! 1473-1473
	fadd.s	fa0, fa0, fa1, rne ! 1473-1473
	lw	a2, sp, 20 ! 0-0
	flw	fa1, a2, 0 ! 1474-1474
	fmul.s	fa1, fa1, fa0, rne ! 1474-1474
	lw	a3, sp, 16 ! 0-0
	flw	fa2, a3, 0 ! 1474-1474
	fadd.s	fa1, fa1, fa2, rne ! 1474-1474
	flw	fa2, a2, 4 ! 1475-1475
	fmul.s	fa2, fa2, fa0, rne ! 1475-1475
	flw	fa3, a3, 4 ! 1475-1475
	fadd.s	fa2, fa2, fa3, rne ! 1475-1475
	flw	fa3, a2, 8 ! 1476-1476
	fmul.s	fa3, fa3, fa0, rne ! 1476-1476
	flw	fa4, a3, 8 ! 1476-1476
	fadd.s	fa3, fa3, fa4, rne ! 1476-1476
	lw	a2, sp, 36 ! 0-0
	lw	a3, a2, 0 ! 1265-1265
	li	a4, -1 ! 1266-1266
	sw	sp, a0, 56 ! 0-0
	fsw	sp, fa3, 60 ! 0-0
	fsw	sp, fa2, 64 ! 0-0
	fsw	sp, fa1, 68 ! 0-0
	fsw	sp, fa0, 72 ! 0-0
	bne	a3, a4, beq_else.17740 ! 1266-1273
	li	a0, 1 ! 1267-1267
	j	beq_cont.17741
beq_else.17740:
	slli	a3, a3, 2 ! 1269-1269
	lw	a4, sp, 48 ! 0-0
	add	t0, a4, a3 ! 1269-1269
	lw	a3, t0, 0 ! 1269-1269
	mv	a0, a3
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	is_outside.2696
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1269-1272
	bne	a0, a1, beq_else.17742 ! 1269-1272
	li	a0, 1 ! 1272-1272
	flw	fa0, sp, 68 ! 0-0
	flw	fa1, sp, 64 ! 0-0
	flw	fa2, sp, 60 ! 0-0
	lw	a1, sp, 36 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	j	beq_cont.17743
beq_else.17742:
	li	a0, 0 ! 1270-1270
beq_cont.17743:
beq_cont.17741:
	li	a1, 0 ! 1477-1484
	bne	a0, a1, beq_else.17744 ! 1477-1484
	j	beq_cont.17745
beq_else.17744:
	flw	fa0, sp, 72 ! 0-0
	lw	a0, sp, 24 ! 0-0
	fsw	a0, fa0, 0 ! 1479-1479
	flw	fa0, sp, 68 ! 0-0
	lw	a0, sp, 8 ! 0-0
	fsw	a0, fa0, 0 ! 145-145
	flw	fa0, sp, 64 ! 0-0
	fsw	a0, fa0, 4 ! 146-146
	flw	fa0, sp, 60 ! 0-0
	fsw	a0, fa0, 8 ! 147-147
	lw	a0, sp, 52 ! 0-0
	lw	a1, sp, 4 ! 0-0
	sw	a1, a0, 0 ! 1481-1481
	lw	a0, sp, 56 ! 0-0
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 0 ! 1482-1482
beq_cont.17745:
	j	beq_cont.17739
beq_else.17738:
beq_cont.17739:
	j	beq_cont.17737
beq_else.17736:
beq_cont.17737:
	lw	a0, sp, 44 ! 0-0
	addi	a0, a0, 1 ! 1488-1488
	lw	a1, sp, 36 ! 0-0
	lw	a2, sp, 32 ! 0-0
	lw	a21, sp, 40 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network_fast.2734:
	lw	a3, a21, 8 ! 0-0
	lw	a4, a21, 4 ! 0-0
	slli	a5, a0, 2 ! 1500-1500
	add	t0, a1, a5 ! 1500-1500
	lw	a5, t0, 0 ! 1500-1500
	li	a6, -1 ! 1501-1501
	bne	a5, a6, beq_else.17746 ! 1501-1505
	ret ! 1505-1505
beq_else.17746:
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
	bne	a1, a3, beq_else.17747 ! 1501-1505
	ret ! 1505-1505
beq_else.17747:
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
	bne	a1, a3, beq_else.17748 ! 1501-1505
	ret ! 1505-1505
beq_else.17748:
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
	bne	a1, a3, beq_else.17749 ! 1501-1505
	ret ! 1505-1505
beq_else.17749:
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
trace_or_matrix_fast.2738:
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
	bne	a13, a14, beq_else.17750 ! 1512-1529
	ret ! 1513-1513
beq_else.17750:
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
	bne	a13, a14, beq_else.17751 ! 1515-1527
	lw	a4, a12, 4 ! 1500-1500
	li	a5, -1 ! 1501-1501
	bne	a4, a5, beq_else.17753 ! 1501-1505
	j	beq_cont.17754
beq_else.17753:
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
	bne	a1, a2, beq_else.17755 ! 1501-1505
	j	beq_cont.17756
beq_else.17755:
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
	bne	a1, a2, beq_else.17757 ! 1501-1505
	j	beq_cont.17758
beq_else.17757:
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
beq_cont.17758:
beq_cont.17756:
beq_cont.17754:
	j	beq_cont.17752
beq_else.17751:
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
	bne	a15, a16, beq_else.17759 ! 1082-1087
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
	j	beq_cont.17760
beq_else.17759:
	li	a5, 2 ! 1084-1084
	bne	a15, a5, beq_else.17761 ! 1084-1087
	li	a4, l.12679 ! 1047-1047
	flw	fa0, a4, 0 ! 1047-1047
	flw	fa1, a13, 0 ! 1047-1047
	flt.s	t0, fa0, fa1 ! 1047-1050
	bne	zero, t0, beq_else.17763 ! 1047-1050
	flw	fa0, a13, 0 ! 1048-1048
	flw	fa1, a14, 12 ! 1048-1048
	fmul.s	fa0, fa0, fa1, rne ! 1048-1048
	fsw	a7, fa0, 0 ! 1048-1048
	li	a0, 1 ! 1049-1049
	j	beq_cont.17764
beq_else.17763:
	li	a0, 0 ! 1050-1050
beq_cont.17764:
	j	beq_cont.17762
beq_else.17761:
	mv	a2, a14
	mv	a1, a13
	mv	a0, a10
	mv	a21, a4
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
beq_cont.17762:
beq_cont.17760:
	li	a1, 0 ! 1521-1521
	bne	a0, a1, beq_else.17765 ! 1521-1526
	j	beq_cont.17766
beq_else.17765:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1522-1522
	lw	a1, sp, 4 ! 0-0
	flw	fa1, a1, 0 ! 1523-1523
	flt.s	t0, fa1, fa0 ! 1523-1525
	bne	zero, t0, beq_else.17767 ! 1523-1525
	lw	a2, sp, 40 ! 0-0
	lw	a3, a2, 4 ! 1500-1500
	li	a4, -1 ! 1501-1501
	bne	a3, a4, beq_else.17769 ! 1501-1505
	j	beq_cont.17770
beq_else.17769:
	slli	a3, a3, 2 ! 1502-1502
	lw	a4, sp, 28 ! 0-0
	add	t0, a4, a3 ! 1502-1502
	lw	a3, t0, 0 ! 1502-1502
	li	a5, 0 ! 1503-1503
	lw	a6, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a2, a6
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.17771 ! 1501-1505
	j	beq_cont.17772
beq_else.17771:
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
	bne	a1, a2, beq_else.17773 ! 1501-1505
	j	beq_cont.17774
beq_else.17773:
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
beq_cont.17774:
beq_cont.17772:
beq_cont.17770:
	j	beq_cont.17768
beq_else.17767:
beq_cont.17768:
beq_cont.17766:
beq_cont.17752:
	lw	a0, sp, 36 ! 0-0
	addi	a0, a0, 1 ! 1528-1528
	slli	a1, a0, 2 ! 1510-1510
	lw	a2, sp, 32 ! 0-0
	add	t0, a2, a1 ! 1510-1510
	lw	a1, t0, 0 ! 1510-1510
	lw	a3, a1, 0 ! 1511-1511
	li	a4, -1 ! 1512-1512
	bne	a3, a4, beq_else.17775 ! 1512-1529
	ret ! 1513-1513
beq_else.17775:
	li	a4, 99 ! 1515-1515
	sw	sp, a0, 44 ! 0-0
	bne	a3, a4, beq_else.17776 ! 1515-1527
	lw	a3, a1, 4 ! 1500-1500
	li	a4, -1 ! 1501-1501
	bne	a3, a4, beq_else.17778 ! 1501-1505
	j	beq_cont.17779
beq_else.17778:
	slli	a3, a3, 2 ! 1502-1502
	lw	a4, sp, 28 ! 0-0
	add	t0, a4, a3 ! 1502-1502
	lw	a3, t0, 0 ! 1502-1502
	li	a5, 0 ! 1503-1503
	lw	a6, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	sw	sp, a1, 48 ! 0-0
	mv	a2, a6
	mv	a1, a3
	mv	a0, a5
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.17780 ! 1501-1505
	j	beq_cont.17781
beq_else.17780:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a2, 0 ! 1503-1503
	lw	a3, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, 3 ! 1504-1504
	lw	a1, sp, 48 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
beq_cont.17781:
beq_cont.17779:
	j	beq_cont.17777
beq_else.17776:
	lw	a4, sp, 20 ! 0-0
	lw	a21, sp, 12 ! 0-0
	sw	sp, a1, 48 ! 0-0
	mv	a1, a4
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1521-1521
	bne	a0, a1, beq_else.17782 ! 1521-1526
	j	beq_cont.17783
beq_else.17782:
	lw	a0, sp, 8 ! 0-0
	flw	fa0, a0, 0 ! 1522-1522
	lw	a0, sp, 4 ! 0-0
	flw	fa1, a0, 0 ! 1523-1523
	flt.s	t0, fa1, fa0 ! 1523-1525
	bne	zero, t0, beq_else.17784 ! 1523-1525
	lw	a0, sp, 48 ! 0-0
	lw	a1, a0, 4 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.17786 ! 1501-1505
	j	beq_cont.17787
beq_else.17786:
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
	lw	a0, sp, 48 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.17788 ! 1501-1505
	j	beq_cont.17789
beq_else.17788:
	slli	a1, a1, 2 ! 1502-1502
	lw	a2, sp, 28 ! 0-0
	add	t0, a2, a1 ! 1502-1502
	lw	a1, t0, 0 ! 1502-1502
	li	a2, 0 ! 1503-1503
	lw	a3, sp, 20 ! 0-0
	lw	a21, sp, 24 ! 0-0
	mv	a0, a2
	mv	a2, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, 3 ! 1504-1504
	lw	a1, sp, 48 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
beq_cont.17789:
beq_cont.17787:
	j	beq_cont.17785
beq_else.17784:
beq_cont.17785:
beq_cont.17783:
beq_cont.17777:
	lw	a0, sp, 44 ! 0-0
	addi	a0, a0, 1 ! 1528-1528
	lw	a1, sp, 32 ! 0-0
	lw	a2, sp, 20 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
judge_intersection_fast.2742:
	lw	a1, a21, 32 ! 0-0
	lw	a2, a21, 28 ! 0-0
	lw	a3, a21, 24 ! 0-0
	lw	a4, a21, 20 ! 0-0
	lw	a5, a21, 16 ! 0-0
	lw	a6, a21, 12 ! 0-0
	lw	a7, a21, 8 ! 0-0
	lw	a8, a21, 4 ! 0-0
	li	a9, l.13332 ! 1535-1535
	flw	fa0, a9, 0 ! 1535-1535
	fsw	a2, fa0, 0 ! 1535-1535
	lw	a7, a7, 0 ! 1536-1536
	lw	a9, a7, 0 ! 1510-1510
	lw	a10, a9, 0 ! 1511-1511
	li	a11, -1 ! 1512-1512
	sw	sp, a2, 0 ! 0-0
	bne	a10, a11, beq_else.17790 ! 1512-1529
	j	beq_cont.17791
beq_else.17790:
	li	a11, 99 ! 1515-1515
	sw	sp, a0, 4 ! 0-0
	sw	sp, a7, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	bne	a10, a11, beq_else.17792 ! 1515-1527
	lw	a3, a9, 4 ! 1500-1500
	li	a4, -1 ! 1501-1501
	bne	a3, a4, beq_else.17794 ! 1501-1505
	j	beq_cont.17795
beq_else.17794:
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
	bne	a1, a2, beq_else.17796 ! 1501-1505
	j	beq_cont.17797
beq_else.17796:
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
beq_cont.17797:
beq_cont.17795:
	j	beq_cont.17793
beq_else.17792:
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
	bne	a0, a1, beq_else.17798 ! 1521-1526
	j	beq_cont.17799
beq_else.17798:
	lw	a0, sp, 32 ! 0-0
	flw	fa0, a0, 0 ! 1522-1522
	lw	a0, sp, 0 ! 0-0
	flw	fa1, a0, 0 ! 1523-1523
	flt.s	t0, fa1, fa0 ! 1523-1525
	bne	zero, t0, beq_else.17800 ! 1523-1525
	lw	a1, sp, 28 ! 0-0
	lw	a2, a1, 4 ! 1500-1500
	li	a3, -1 ! 1501-1501
	bne	a2, a3, beq_else.17802 ! 1501-1505
	j	beq_cont.17803
beq_else.17802:
	slli	a2, a2, 2 ! 1502-1502
	lw	a3, sp, 24 ! 0-0
	add	t0, a3, a2 ! 1502-1502
	lw	a2, t0, 0 ! 1502-1502
	li	a4, 0 ! 1503-1503
	lw	a5, sp, 4 ! 0-0
	lw	a21, sp, 20 ! 0-0
	mv	a1, a2
	mv	a0, a4
	mv	a2, a5
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0-0
	lw	a1, a0, 8 ! 1500-1500
	li	a2, -1 ! 1501-1501
	bne	a1, a2, beq_else.17804 ! 1501-1505
	j	beq_cont.17805
beq_else.17804:
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
beq_cont.17805:
beq_cont.17803:
	j	beq_cont.17801
beq_else.17800:
beq_cont.17801:
beq_cont.17799:
beq_cont.17793:
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
beq_cont.17791:
	lw	a0, sp, 0 ! 0-0
	flw	fa0, a0, 0 ! 1537-1537
	li	a0, l.13171 ! 1539-1539
	flw	fa1, a0, 0 ! 1539-1539
	flt.s	t0, fa0, fa1 ! 1539-1541
	bne	zero, t0, beq_else.17806 ! 1539-1541
	li	a0, l.13350 ! 1540-1540
	flw	fa1, a0, 0 ! 1540-1540
	flt.s	t0, fa1, fa0 ! 1540-1540
	bne	zero, t0, beq_else.17807 ! 1540-1540
	li	a0, 1 ! 1540-1540
	ret ! 1540-1540
beq_else.17807:
	li	a0, 0 ! 1540-1540
	ret ! 1540-1540
beq_else.17806:
	li	a0, 0 ! 1541-1541
	ret ! 1541-1541
get_nvector_second.2748:
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
	bne	a2, a3, beq_else.17808 ! 1579-1587
	fsw	a1, fa3, 0 ! 1580-1580
	fsw	a1, fa4, 4 ! 1581-1581
	fsw	a1, fa5, 8 ! 1582-1582
	j	beq_cont.17809
beq_else.17808:
	lw	a2, a0, 36 ! 430-435
	flw	fa6, a2, 8 ! 435-435
	fmul.s	fa6, fa1, fa6, rne ! 1584-1584
	lw	a2, a0, 36 ! 420-425
	flw	fa7, a2, 4 ! 425-425
	fmul.s	fa7, fa2, fa7, rne ! 1584-1584
	fadd.s	fa6, fa6, fa7, rne ! 1584-1584
	li	a2, l.12883 ! 1584-1584
	flw	fa7, a2, 0 ! 1584-1584
	fmul.s	fa6, fa6, fa7, rne ! 1584-1584
	fadd.s	fa3, fa3, fa6, rne ! 1584-1584
	fsw	a1, fa3, 0 ! 1584-1584
	lw	a2, a0, 36 ! 430-435
	flw	fa3, a2, 8 ! 435-435
	fmul.s	fa3, fa0, fa3, rne ! 1585-1585
	lw	a2, a0, 36 ! 410-415
	flw	fa6, a2, 0 ! 415-415
	fmul.s	fa2, fa2, fa6, rne ! 1585-1585
	fadd.s	fa2, fa3, fa2, rne ! 1585-1585
	li	a2, l.12883 ! 1585-1585
	flw	fa3, a2, 0 ! 1585-1585
	fmul.s	fa2, fa2, fa3, rne ! 1585-1585
	fadd.s	fa2, fa4, fa2, rne ! 1585-1585
	fsw	a1, fa2, 4 ! 1585-1585
	lw	a2, a0, 36 ! 420-425
	flw	fa2, a2, 4 ! 425-425
	fmul.s	fa0, fa0, fa2, rne ! 1586-1586
	lw	a2, a0, 36 ! 410-415
	flw	fa2, a2, 0 ! 415-415
	fmul.s	fa1, fa1, fa2, rne ! 1586-1586
	fadd.s	fa0, fa0, fa1, rne ! 1586-1586
	li	a2, l.12883 ! 1586-1586
	flw	fa1, a2, 0 ! 1586-1586
	fmul.s	fa0, fa0, fa1, rne ! 1586-1586
	fadd.s	fa0, fa5, fa0, rne ! 1586-1586
	fsw	a1, fa0, 8 ! 1586-1586
beq_cont.17809:
	lw	a0, a0, 24 ! 272-276
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	j	vecunit_sgn.2456
get_nvector.2750:
	lw	a2, a21, 12 ! 0-0
	lw	a3, a21, 8 ! 0-0
	lw	a21, a21, 4 ! 0-0
	lw	a4, a0, 4 ! 252-257
	li	a5, 1 ! 1594-1594
	bne	a4, a5, beq_else.17810 ! 1594-1599
	lw	a0, a3, 0 ! 1555-1555
	li	a3, l.12679 ! 159-159
	flw	fa0, a3, 0 ! 159-159
	fsw	a2, fa0, 0 ! 152-152
	fsw	a2, fa0, 4 ! 153-153
	fsw	a2, fa0, 8 ! 154-154
	addi	a3, a0, -1 ! 1558-1558
	addi	a0, a0, -1 ! 1558-1558
	slli	a0, a0, 2 ! 1558-1558
	add	t0, a1, a0 ! 1558-1558
	flw	fa0, t0, 0 ! 1558-1558
	li	a0, l.12679 ! 117-117
	flw	fa1, a0, 0 ! 117-117
	feq.s	t0, fa0, fa1 ! 117-119
	bne	zero, t0, beq_else.17811 ! 117-119
	li	a0, l.12679 ! 118-118
	flw	fa1, a0, 0 ! 118-118
	flt.s	t0, fa0, fa1 ! 118-119
	bne	zero, t0, beq_else.17813 ! 118-119
	li	a0, l.12683 ! 118-118
	flw	fa0, a0, 0 ! 118-118
	j	beq_cont.17814
beq_else.17813:
	li	a0, l.12681 ! 119-119
	flw	fa0, a0, 0 ! 119-119
beq_cont.17814:
	j	beq_cont.17812
beq_else.17811:
	li	a0, l.12679 ! 117-117
	flw	fa0, a0, 0 ! 117-117
beq_cont.17812:
	fneg.s	fa0, fa0 ! 1558-1558
	slli	a0, a3, 2 ! 1558-1558
	add	t0, a2, a0 ! 1558-1558
	fsw	t0, fa0, 0 ! 1558-1558
	ret ! 1558-1558
beq_else.17810:
	li	a1, 2 ! 1596-1596
	bne	a4, a1, beq_else.17815 ! 1596-1599
	lw	a1, a0, 16 ! 290-295
	flw	fa0, a1, 0 ! 295-295
	fneg.s	fa0, fa0 ! 1564-1564
	fsw	a2, fa0, 0 ! 1564-1564
	lw	a1, a0, 16 ! 300-305
	flw	fa0, a1, 4 ! 305-305
	fneg.s	fa0, fa0 ! 1565-1565
	fsw	a2, fa0, 4 ! 1565-1565
	lw	a0, a0, 16 ! 310-315
	flw	fa0, a0, 8 ! 315-315
	fneg.s	fa0, fa0 ! 1566-1566
	fsw	a2, fa0, 8 ! 1566-1566
	ret ! 1566-1566
beq_else.17815:
	lw	a20, a21, 0
	jalr	zero, a20, 0
utexture.2753:
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
	bne	a3, a4, beq_else.17816 ! 1614-1678
	flw	fa0, a1, 0 ! 1617-1617
	lw	a3, a0, 20 ! 330-335
	flw	fa1, a3, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1617-1617
	li	a3, l.13454 ! 1619-1619
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
	li	a0, l.13456 ! 1619-1619
	flw	fa1, a0, 0 ! 1619-1619
	fmul.s	fa0, fa0, fa1, rne ! 1619-1619
	li	a0, l.13436 ! 1620-1620
	flw	fa1, a0, 0 ! 1620-1620
	flw	fa2, sp, 12 ! 0-0
	fsub.s	fa0, fa2, fa0, rne ! 1620-1620
	flt.s	t0, fa1, fa0 ! 1620-1620
	bne	zero, t0, beq_else.17817 ! 1620-1620
	li	a0, 1 ! 1620-1620
	j	beq_cont.17818
beq_else.17817:
	li	a0, 0 ! 1620-1620
beq_cont.17818:
	lw	a1, sp, 8 ! 0-0
	flw	fa0, a1, 8 ! 1622-1622
	lw	a1, sp, 4 ! 0-0
	lw	a1, a1, 20 ! 350-355
	flw	fa1, a1, 8 ! 355-355
	fsub.s	fa0, fa0, fa1, rne ! 1622-1622
	li	a1, l.13454 ! 1624-1624
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
	li	a0, l.13456 ! 1624-1624
	flw	fa1, a0, 0 ! 1624-1624
	fmul.s	fa0, fa0, fa1, rne ! 1624-1624
	li	a0, l.13436 ! 1625-1625
	flw	fa1, a0, 0 ! 1625-1625
	flw	fa2, sp, 20 ! 0-0
	fsub.s	fa0, fa2, fa0, rne ! 1625-1625
	flt.s	t0, fa1, fa0 ! 1625-1625
	bne	zero, t0, beq_else.17819 ! 1625-1625
	li	a0, 1 ! 1625-1625
	j	beq_cont.17820
beq_else.17819:
	li	a0, 0 ! 1625-1625
beq_cont.17820:
	li	a1, 0 ! 1628-1630
	lw	a2, sp, 16 ! 0-0
	bne	a2, a1, beq_else.17821 ! 1628-1630
	li	a1, 0 ! 1630-1630
	bne	a0, a1, beq_else.17823 ! 1630-1630
	li	a0, l.13427 ! 1630-1630
	flw	fa0, a0, 0 ! 1630-1630
	j	beq_cont.17824
beq_else.17823:
	li	a0, l.12679 ! 1630-1630
	flw	fa0, a0, 0 ! 1630-1630
beq_cont.17824:
	j	beq_cont.17822
beq_else.17821:
	li	a1, 0 ! 1629-1629
	bne	a0, a1, beq_else.17825 ! 1629-1629
	li	a0, l.12679 ! 1629-1629
	flw	fa0, a0, 0 ! 1629-1629
	j	beq_cont.17826
beq_else.17825:
	li	a0, l.13427 ! 1629-1629
	flw	fa0, a0, 0 ! 1629-1629
beq_cont.17826:
beq_cont.17822:
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 4 ! 1627-1630
	ret ! 1627-1630
beq_else.17816:
	li	a4, 2 ! 1632-1632
	bne	a3, a4, beq_else.17827 ! 1632-1678
	flw	fa0, a1, 4 ! 1635-1635
	li	a0, l.13445 ! 1635-1635
	flw	fa1, a0, 0 ! 1635-1635
	fmul.s	fa0, fa0, fa1, rne ! 1635-1635
	sw	sp, a2, 0 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sin
	addi	sp, sp, -28
	lw	ra, sp, 24
	fmul.s	fa0, fa0, fa0, rne ! 1635-1635
	li	a0, l.13427 ! 1636-1636
	flw	fa1, a0, 0 ! 1636-1636
	fmul.s	fa1, fa1, fa0, rne ! 1636-1636
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa1, 0 ! 1636-1636
	li	a1, l.13427 ! 1637-1637
	flw	fa1, a1, 0 ! 1637-1637
	li	a1, l.12683 ! 1637-1637
	flw	fa2, a1, 0 ! 1637-1637
	fsub.s	fa0, fa2, fa0, rne ! 1637-1637
	fmul.s	fa0, fa1, fa0, rne ! 1637-1637
	fsw	a0, fa0, 4 ! 1637-1637
	ret ! 1637-1637
beq_else.17827:
	li	a4, 3 ! 1639-1639
	bne	a3, a4, beq_else.17828 ! 1639-1678
	flw	fa0, a1, 0 ! 1642-1642
	lw	a3, a0, 20 ! 330-335
	flw	fa1, a3, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1642-1642
	flw	fa1, a1, 8 ! 1643-1643
	lw	a0, a0, 20 ! 350-355
	flw	fa2, a0, 8 ! 355-355
	fsub.s	fa1, fa1, fa2, rne ! 1643-1643
	fmul.s	fa0, fa0, fa0, rne ! 1644-1644
	fmul.s	fa1, fa1, fa1, rne ! 1644-1644
	fadd.s	fa0, fa0, fa1, rne ! 1644-1644
	sw	sp, a2, 0 ! 0-0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sqrt
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a0, l.13436 ! 1644-1644
	flw	fa1, a0, 0 ! 1644-1644
	fdiv.s	fa0, fa0, fa1, rne ! 1644-1644
	fsw	sp, fa0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_floor
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1645-1645
	li	a0, l.13412 ! 1645-1645
	flw	fa1, a0, 0 ! 1645-1645
	fmul.s	fa0, fa0, fa1, rne ! 1645-1645
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_cos
	addi	sp, sp, -32
	lw	ra, sp, 28
	fmul.s	fa0, fa0, fa0, rne ! 1646-1646
	li	a0, l.13427 ! 1647-1647
	flw	fa1, a0, 0 ! 1647-1647
	fmul.s	fa1, fa0, fa1, rne ! 1647-1647
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa1, 4 ! 1647-1647
	li	a1, l.12683 ! 1648-1648
	flw	fa1, a1, 0 ! 1648-1648
	fsub.s	fa0, fa1, fa0, rne ! 1648-1648
	li	a1, l.13427 ! 1648-1648
	flw	fa1, a1, 0 ! 1648-1648
	fmul.s	fa0, fa0, fa1, rne ! 1648-1648
	fsw	a0, fa0, 8 ! 1648-1648
	ret ! 1648-1648
beq_else.17828:
	li	a4, 4 ! 1650-1650
	bne	a3, a4, beq_else.17829 ! 1650-1678
	flw	fa0, a1, 0 ! 1652-1652
	lw	a3, a0, 20 ! 330-335
	flw	fa1, a3, 0 ! 335-335
	fsub.s	fa0, fa0, fa1, rne ! 1652-1652
	lw	a3, a0, 16 ! 290-295
	flw	fa1, a3, 0 ! 295-295
	sw	sp, a2, 0 ! 0-0
	sw	sp, a0, 4 ! 0-0
	sw	sp, a1, 8 ! 0-0
	fsw	sp, fa0, 28 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sqrt
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 28 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1652-1652
	lw	a0, sp, 8 ! 0-0
	flw	fa1, a0, 8 ! 1653-1653
	lw	a1, sp, 4 ! 0-0
	lw	a2, a1, 20 ! 350-355
	flw	fa2, a2, 8 ! 355-355
	fsub.s	fa1, fa1, fa2, rne ! 1653-1653
	lw	a2, a1, 16 ! 310-315
	flw	fa2, a2, 8 ! 315-315
	fsw	sp, fa0, 32 ! 0-0
	fsw	sp, fa1, 36 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 36 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1653-1653
	flw	fa1, sp, 32 ! 0-0
	fmul.s	fa2, fa1, fa1, rne ! 1654-1654
	fmul.s	fa3, fa0, fa0, rne ! 1654-1654
	fadd.s	fa2, fa2, fa3, rne ! 1654-1654
	li	a0, l.13406 ! 1656-1656
	flw	fa3, a0, 0 ! 1656-1656
	fabs.s	fa4, fa1 ! 1656-1656
	fsw	sp, fa2, 40 ! 0-0
	flt.s	t0, fa3, fa4 ! 1656-1661
	bne	zero, t0, beq_else.17830 ! 1656-1661
	li	a0, l.13408 ! 1657-1657
	flw	fa0, a0, 0 ! 1657-1657
	j	beq_cont.17831
beq_else.17830:
	fdiv.s	fa0, fa0, fa1, rne ! 1659-1659
	fabs.s	fa0, fa0 ! 1659-1659
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_atan
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a0, l.13410 ! 1661-1661
	flw	fa1, a0, 0 ! 1661-1661
	fmul.s	fa0, fa0, fa1, rne ! 1661-1661
	li	a0, l.13412 ! 1661-1661
	flw	fa1, a0, 0 ! 1661-1661
	fdiv.s	fa0, fa0, fa1, rne ! 1661-1661
beq_cont.17831:
	fsw	sp, fa0, 44 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_floor
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 44 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1663-1663
	lw	a0, sp, 8 ! 0-0
	flw	fa1, a0, 4 ! 1665-1665
	lw	a0, sp, 4 ! 0-0
	lw	a1, a0, 20 ! 340-345
	flw	fa2, a1, 4 ! 345-345
	fsub.s	fa1, fa1, fa2, rne ! 1665-1665
	lw	a0, a0, 16 ! 300-305
	flw	fa2, a0, 4 ! 305-305
	fsw	sp, fa0, 48 ! 0-0
	fsw	sp, fa1, 52 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_sqrt
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 52 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1665-1665
	li	a0, l.13406 ! 1667-1667
	flw	fa1, a0, 0 ! 1667-1667
	flw	fa2, sp, 40 ! 0-0
	fabs.s	fa3, fa2 ! 1667-1667
	flt.s	t0, fa1, fa3 ! 1667-1671
	bne	zero, t0, beq_else.17832 ! 1667-1671
	li	a0, l.13408 ! 1668-1668
	flw	fa0, a0, 0 ! 1668-1668
	j	beq_cont.17833
beq_else.17832:
	fdiv.s	fa0, fa0, fa2, rne ! 1670-1670
	fabs.s	fa0, fa0 ! 1670-1670
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_atan
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a0, l.13410 ! 1671-1671
	flw	fa1, a0, 0 ! 1671-1671
	fmul.s	fa0, fa0, fa1, rne ! 1671-1671
	li	a0, l.13412 ! 1671-1671
	flw	fa1, a0, 0 ! 1671-1671
	fdiv.s	fa0, fa0, fa1, rne ! 1671-1671
beq_cont.17833:
	fsw	sp, fa0, 56 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_floor
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa1, sp, 56 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 1673-1673
	li	a0, l.13421 ! 1674-1674
	flw	fa1, a0, 0 ! 1674-1674
	li	a0, l.12883 ! 1674-1674
	flw	fa2, a0, 0 ! 1674-1674
	flw	fa3, sp, 48 ! 0-0
	fsub.s	fa2, fa2, fa3, rne ! 1674-1674
	fmul.s	fa2, fa2, fa2, rne ! 1674-1674
	fsub.s	fa1, fa1, fa2, rne ! 1674-1674
	li	a0, l.12883 ! 1674-1674
	flw	fa2, a0, 0 ! 1674-1674
	fsub.s	fa0, fa2, fa0, rne ! 1674-1674
	fmul.s	fa0, fa0, fa0, rne ! 1674-1674
	fsub.s	fa0, fa1, fa0, rne ! 1674-1674
	li	a0, l.12679 ! 1675-1675
	flw	fa1, a0, 0 ! 1675-1675
	flt.s	t0, fa1, fa0 ! 1675-1675
	bne	zero, t0, beq_else.17834 ! 1675-1675
	li	a0, l.12679 ! 1675-1675
	flw	fa0, a0, 0 ! 1675-1675
	j	beq_cont.17835
beq_else.17834:
beq_cont.17835:
	li	a0, l.13427 ! 1676-1676
	flw	fa1, a0, 0 ! 1676-1676
	fmul.s	fa0, fa1, fa0, rne ! 1676-1676
	li	a0, l.13429 ! 1676-1676
	flw	fa1, a0, 0 ! 1676-1676
	fdiv.s	fa0, fa0, fa1, rne ! 1676-1676
	lw	a0, sp, 0 ! 0-0
	fsw	a0, fa0, 8 ! 1676-1676
	ret ! 1676-1676
beq_else.17829:
	ret ! 1678-1678
trace_reflections.2760:
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
	blt	a0, a12, bge_else.17836 ! 1705-1725
	slli	a12, a0, 2 ! 1706-1706
	add	t0, a7, a12 ! 1706-1706
	lw	a7, t0, 0 ! 1706-1706
	lw	a12, a7, 4 ! 560-561
	li	a13, l.13332 ! 1535-1535
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
	flw	fa0, a0, 0 ! 1537-1537
	li	a0, l.13171 ! 1539-1539
	flw	fa1, a0, 0 ! 1539-1539
	flt.s	t0, fa0, fa1 ! 1539-1541
	bne	zero, t0, beq_else.17837 ! 1539-1541
	li	a0, l.13350 ! 1540-1540
	flw	fa1, a0, 0 ! 1540-1540
	flt.s	t0, fa1, fa0 ! 1540-1540
	bne	zero, t0, beq_else.17839 ! 1540-1540
	li	a0, 1 ! 1540-1540
	j	beq_cont.17840
beq_else.17839:
	li	a0, 0 ! 1540-1540
beq_cont.17840:
	j	beq_cont.17838
beq_else.17837:
	li	a0, 0 ! 1541-1541
beq_cont.17838:
	li	a1, 0 ! 1710-1723
	bne	a0, a1, beq_else.17841 ! 1710-1723
	j	beq_cont.17842
beq_else.17841:
	lw	a0, sp, 52 ! 0-0
	lw	a0, a0, 0 ! 1711-1711
	slli	a0, a0, 2 ! 1711-1711
	lw	a1, sp, 48 ! 0-0
	lw	a1, a1, 0 ! 1711-1711
	add	a0, a0, a1 ! 1711-1711
	lw	a1, sp, 44 ! 0-0
	lw	a2, a1, 0 ! 554-555
	bne	a0, a2, beq_else.17843 ! 1712-1722
	li	a0, 0 ! 1714-1714
	lw	a2, sp, 40 ! 0-0
	lw	a2, a2, 0 ! 1714-1714
	lw	a21, sp, 36 ! 0-0
	mv	a1, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1714-1721
	bne	a0, a1, beq_else.17845 ! 1714-1721
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
	li	a0, l.12679 ! 1689-1689
	flw	fa3, a0, 0 ! 1689-1689
	flt.s	t0, fa0, fa3 ! 1689-1691
	bne	zero, t0, beq_else.17847 ! 1689-1691
	lw	a0, sp, 16 ! 0-0
	flw	fa3, a0, 0 ! 203-203
	lw	a2, sp, 12 ! 0-0
	flw	fa4, a2, 0 ! 203-203
	fmul.s	fa4, fa0, fa4, rne ! 203-203
	fadd.s	fa3, fa3, fa4, rne ! 203-203
	fsw	a0, fa3, 0 ! 203-203
	flw	fa3, a0, 4 ! 204-204
	flw	fa4, a2, 4 ! 204-204
	fmul.s	fa4, fa0, fa4, rne ! 204-204
	fadd.s	fa3, fa3, fa4, rne ! 204-204
	fsw	a0, fa3, 4 ! 204-204
	flw	fa3, a0, 8 ! 205-205
	flw	fa4, a2, 8 ! 205-205
	fmul.s	fa0, fa0, fa4, rne ! 205-205
	fadd.s	fa0, fa3, fa0, rne ! 205-205
	fsw	a0, fa0, 8 ! 205-205
	j	beq_cont.17848
beq_else.17847:
beq_cont.17848:
	li	a0, l.12679 ! 1694-1694
	flw	fa0, a0, 0 ! 1694-1694
	flt.s	t0, fa1, fa0 ! 1694-1699
	bne	zero, t0, beq_else.17849 ! 1694-1699
	fmul.s	fa0, fa1, fa1, rne ! 1695-1695
	fmul.s	fa0, fa0, fa0, rne ! 1695-1695
	flw	fa1, sp, 8 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1695-1695
	lw	a0, sp, 16 ! 0-0
	flw	fa3, a0, 0 ! 1696-1696
	fadd.s	fa3, fa3, fa0, rne ! 1696-1696
	fsw	a0, fa3, 0 ! 1696-1696
	flw	fa3, a0, 4 ! 1697-1697
	fadd.s	fa3, fa3, fa0, rne ! 1697-1697
	fsw	a0, fa3, 4 ! 1697-1697
	flw	fa3, a0, 8 ! 1698-1698
	fadd.s	fa0, fa3, fa0, rne ! 1698-1698
	fsw	a0, fa0, 8 ! 1698-1698
	j	beq_cont.17850
beq_else.17849:
beq_cont.17850:
	j	beq_cont.17846
beq_else.17845:
beq_cont.17846:
	j	beq_cont.17844
beq_else.17843:
beq_cont.17844:
beq_cont.17842:
	lw	a0, sp, 4 ! 0-0
	addi	a0, a0, -1 ! 1724-1724
	flw	fa0, sp, 24 ! 0-0
	flw	fa1, sp, 8 ! 0-0
	lw	a1, sp, 20 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17836:
	ret ! 1725-1725
trace_ray.2765:
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
	blt	a11, a0, bge_else.17851 ! 1733-1814
	lw	a11, a2, 8 ! 476-478
	sw	sp, a17, 16 ! 0-0
	li	a17, l.13332 ! 1444-1444
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
	flw	fa0, a0, 0 ! 1446-1446
	li	a1, l.13171 ! 1448-1448
	flw	fa1, a1, 0 ! 1448-1448
	flt.s	t0, fa0, fa1 ! 1448-1450
	bne	zero, t0, beq_else.17852 ! 1448-1450
	li	a1, l.13350 ! 1449-1449
	flw	fa1, a1, 0 ! 1449-1449
	flt.s	t0, fa1, fa0 ! 1449-1449
	bne	zero, t0, beq_else.17854 ! 1449-1449
	li	a1, 1 ! 1449-1449
	j	beq_cont.17855
beq_else.17854:
	li	a1, 0 ! 1449-1449
beq_cont.17855:
	j	beq_cont.17853
beq_else.17852:
	li	a1, 0 ! 1450-1450
beq_cont.17853:
	li	a2, 0 ! 1735-1813
	bne	a1, a2, beq_else.17856 ! 1735-1813
	li	a0, -1 ! 1798-1798
	lw	a1, sp, 100 ! 0-0
	slli	a2, a1, 2 ! 1798-1798
	lw	a3, sp, 96 ! 0-0
	add	t0, a3, a2 ! 1798-1798
	sw	t0, a0, 0 ! 1798-1798
	li	a0, 0 ! 1800-1800
	bne	a1, a0, beq_else.17857 ! 1800-1812
	ret ! 1812-1812
beq_else.17857:
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
	fneg.s	fa0, fa0 ! 1801-1801
	li	a0, l.12679 ! 1803-1803
	flw	fa1, a0, 0 ! 1803-1803
	flt.s	t0, fa0, fa1 ! 1803-1811
	bne	zero, t0, beq_else.17858 ! 1803-1811
	fmul.s	fa1, fa0, fa0, rne ! 1806-1806
	fmul.s	fa0, fa1, fa0, rne ! 1806-1806
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
beq_else.17858:
	ret ! 1811-1811
beq_else.17856:
	lw	a1, sp, 72 ! 0-0
	lw	a1, a1, 0 ! 1737-1737
	slli	a2, a1, 2 ! 1738-1738
	lw	a3, sp, 68 ! 0-0
	add	t0, a3, a2 ! 1738-1738
	lw	a2, t0, 0 ! 1738-1738
	lw	a3, a2, 8 ! 262-267
	lw	a4, a2, 28 ! 360-365
	flw	fa0, a4, 0 ! 365-365
	flw	fa1, sp, 84 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1740-1740
	lw	a4, a2, 4 ! 252-257
	li	a5, 1 ! 1594-1594
	sw	sp, a3, 108 ! 0-0
	fsw	sp, fa0, 112 ! 0-0
	sw	sp, a1, 116 ! 0-0
	sw	sp, a2, 120 ! 0-0
	bne	a4, a5, beq_else.17859 ! 1594-1599
	lw	a4, sp, 64 ! 0-0
	lw	a5, a4, 0 ! 1555-1555
	li	a6, l.12679 ! 159-159
	flw	fa2, a6, 0 ! 159-159
	lw	a6, sp, 60 ! 0-0
	fsw	a6, fa2, 0 ! 152-152
	fsw	a6, fa2, 4 ! 153-153
	fsw	a6, fa2, 8 ! 154-154
	addi	a7, a5, -1 ! 1558-1558
	addi	a5, a5, -1 ! 1558-1558
	slli	a5, a5, 2 ! 1558-1558
	lw	a8, sp, 92 ! 0-0
	add	t0, a8, a5 ! 1558-1558
	flw	fa2, t0, 0 ! 1558-1558
	li	a5, l.12679 ! 117-117
	flw	fa3, a5, 0 ! 117-117
	feq.s	t0, fa2, fa3 ! 117-119
	bne	zero, t0, beq_else.17861 ! 117-119
	li	a5, l.12679 ! 118-118
	flw	fa3, a5, 0 ! 118-118
	flt.s	t0, fa2, fa3 ! 118-119
	bne	zero, t0, beq_else.17863 ! 118-119
	li	a5, l.12683 ! 118-118
	flw	fa2, a5, 0 ! 118-118
	j	beq_cont.17864
beq_else.17863:
	li	a5, l.12681 ! 119-119
	flw	fa2, a5, 0 ! 119-119
beq_cont.17864:
	j	beq_cont.17862
beq_else.17861:
	li	a5, l.12679 ! 117-117
	flw	fa2, a5, 0 ! 117-117
beq_cont.17862:
	fneg.s	fa2, fa2 ! 1558-1558
	slli	a5, a7, 2 ! 1558-1558
	add	t0, a6, a5 ! 1558-1558
	fsw	t0, fa2, 0 ! 1558-1558
	j	beq_cont.17860
beq_else.17859:
	li	a5, 2 ! 1596-1596
	bne	a4, a5, beq_else.17865 ! 1596-1599
	lw	a4, a2, 16 ! 290-295
	flw	fa2, a4, 0 ! 295-295
	fneg.s	fa2, fa2 ! 1564-1564
	lw	a4, sp, 60 ! 0-0
	fsw	a4, fa2, 0 ! 1564-1564
	lw	a5, a2, 16 ! 300-305
	flw	fa2, a5, 4 ! 305-305
	fneg.s	fa2, fa2 ! 1565-1565
	fsw	a4, fa2, 4 ! 1565-1565
	lw	a5, a2, 16 ! 310-315
	flw	fa2, a5, 8 ! 315-315
	fneg.s	fa2, fa2 ! 1566-1566
	fsw	a4, fa2, 8 ! 1566-1566
	j	beq_cont.17866
beq_else.17865:
	lw	a21, sp, 56 ! 0-0
	mv	a0, a2
	sw	sp, ra, 124
	addi	sp, sp, 128
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -128
	lw	ra, sp, 124
beq_cont.17866:
beq_cont.17860:
	lw	a1, sp, 52 ! 0-0
	flw	fa0, a1, 0 ! 164-164
	lw	a0, sp, 48 ! 0-0
	fsw	a0, fa0, 0 ! 164-164
	flw	fa0, a1, 4 ! 165-165
	fsw	a0, fa0, 4 ! 165-165
	flw	fa0, a1, 8 ! 166-166
	fsw	a0, fa0, 8 ! 166-166
	lw	a0, sp, 120 ! 0-0
	lw	a21, sp, 44 ! 0-0
	sw	sp, ra, 124
	addi	sp, sp, 128
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -128
	lw	ra, sp, 124
	lw	a0, sp, 116 ! 0-0
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
	li	a5, l.12883 ! 1753-1753
	flw	fa0, a5, 0 ! 1753-1753
	lw	a5, sp, 120 ! 0-0
	lw	a6, a5, 28 ! 360-365
	flw	fa1, a6, 0 ! 365-365
	flt.s	t0, fa0, fa1 ! 1753-1762
	bne	zero, t0, beq_else.17867 ! 1753-1762
	li	a6, 0 ! 1754-1754
	slli	a7, a1, 2 ! 1754-1754
	add	t0, a2, a7 ! 1754-1754
	sw	t0, a6, 0 ! 1754-1754
	j	beq_cont.17868
beq_else.17867:
	li	a6, 1 ! 1756-1756
	slli	a7, a1, 2 ! 1756-1756
	add	t0, a2, a7 ! 1756-1756
	sw	t0, a6, 0 ! 1756-1756
	lw	a2, a0, 16 ! 490-492
	slli	a6, a1, 2 ! 1758-1758
	add	t0, a2, a6 ! 1758-1758
	lw	a6, t0, 0 ! 1758-1758
	lw	a7, sp, 36 ! 0-0
	flw	fa0, a7, 0 ! 164-164
	fsw	a6, fa0, 0 ! 164-164
	flw	fa0, a7, 4 ! 165-165
	fsw	a6, fa0, 4 ! 165-165
	flw	fa0, a7, 8 ! 166-166
	fsw	a6, fa0, 8 ! 166-166
	slli	a6, a1, 2 ! 1759-1759
	add	t0, a2, a6 ! 1759-1759
	lw	a2, t0, 0 ! 1759-1759
	li	a6, l.13562 ! 1759-1759
	flw	fa0, a6, 0 ! 1759-1759
	flw	fa1, sp, 112 ! 0-0
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
	slli	a6, a1, 2 ! 1761-1761
	add	t0, a2, a6 ! 1761-1761
	lw	a2, t0, 0 ! 1761-1761
	lw	a6, sp, 60 ! 0-0
	flw	fa0, a6, 0 ! 164-164
	fsw	a2, fa0, 0 ! 164-164
	flw	fa0, a6, 4 ! 165-165
	fsw	a2, fa0, 4 ! 165-165
	flw	fa0, a6, 8 ! 166-166
	fsw	a2, fa0, 8 ! 166-166
beq_cont.17868:
	li	a2, l.13577 ! 1764-1764
	flw	fa0, a2, 0 ! 1764-1764
	lw	a2, sp, 92 ! 0-0
	flw	fa1, a2, 0 ! 193-193
	lw	a6, sp, 60 ! 0-0
	flw	fa2, a6, 0 ! 193-193
	fmul.s	fa1, fa1, fa2, rne ! 193-193
	flw	fa2, a2, 4 ! 193-193
	flw	fa3, a6, 4 ! 193-193
	fmul.s	fa2, fa2, fa3, rne ! 193-193
	fadd.s	fa1, fa1, fa2, rne ! 193-193
	flw	fa2, a2, 8 ! 193-193
	flw	fa3, a6, 8 ! 193-193
	fmul.s	fa2, fa2, fa3, rne ! 193-193
	fadd.s	fa1, fa1, fa2, rne ! 193-193
	fmul.s	fa0, fa0, fa1, rne ! 1764-1764
	flw	fa1, a2, 0 ! 203-203
	flw	fa2, a6, 0 ! 203-203
	fmul.s	fa2, fa0, fa2, rne ! 203-203
	fadd.s	fa1, fa1, fa2, rne ! 203-203
	fsw	a2, fa1, 0 ! 203-203
	flw	fa1, a2, 4 ! 204-204
	flw	fa2, a6, 4 ! 204-204
	fmul.s	fa2, fa0, fa2, rne ! 204-204
	fadd.s	fa1, fa1, fa2, rne ! 204-204
	fsw	a2, fa1, 4 ! 204-204
	flw	fa1, a2, 8 ! 205-205
	flw	fa2, a6, 8 ! 205-205
	fmul.s	fa0, fa0, fa2, rne ! 205-205
	fadd.s	fa0, fa1, fa0, rne ! 205-205
	fsw	a2, fa0, 8 ! 205-205
	lw	a7, a5, 28 ! 370-375
	flw	fa0, a7, 4 ! 375-375
	flw	fa1, sp, 84 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1768-1768
	li	a7, 0 ! 1771-1771
	lw	a8, sp, 32 ! 0-0
	lw	a8, a8, 0 ! 1771-1771
	lw	a21, sp, 28 ! 0-0
	fsw	sp, fa0, 124 ! 0-0
	mv	a1, a8
	mv	a0, a7
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	li	a1, 0 ! 1771-1775
	bne	a0, a1, beq_else.17869 ! 1771-1775
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
	fneg.s	fa0, fa0 ! 1772-1772
	flw	fa1, sp, 112 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 1772-1772
	lw	a0, sp, 92 ! 0-0
	flw	fa2, a0, 0 ! 193-193
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
	fneg.s	fa2, fa2 ! 1773-1773
	li	a1, l.12679 ! 1689-1689
	flw	fa3, a1, 0 ! 1689-1689
	flt.s	t0, fa0, fa3 ! 1689-1691
	bne	zero, t0, beq_else.17871 ! 1689-1691
	lw	a1, sp, 76 ! 0-0
	flw	fa3, a1, 0 ! 203-203
	lw	a2, sp, 36 ! 0-0
	flw	fa4, a2, 0 ! 203-203
	fmul.s	fa4, fa0, fa4, rne ! 203-203
	fadd.s	fa3, fa3, fa4, rne ! 203-203
	fsw	a1, fa3, 0 ! 203-203
	flw	fa3, a1, 4 ! 204-204
	flw	fa4, a2, 4 ! 204-204
	fmul.s	fa4, fa0, fa4, rne ! 204-204
	fadd.s	fa3, fa3, fa4, rne ! 204-204
	fsw	a1, fa3, 4 ! 204-204
	flw	fa3, a1, 8 ! 205-205
	flw	fa4, a2, 8 ! 205-205
	fmul.s	fa0, fa0, fa4, rne ! 205-205
	fadd.s	fa0, fa3, fa0, rne ! 205-205
	fsw	a1, fa0, 8 ! 205-205
	j	beq_cont.17872
beq_else.17871:
beq_cont.17872:
	li	a1, l.12679 ! 1694-1694
	flw	fa0, a1, 0 ! 1694-1694
	flt.s	t0, fa2, fa0 ! 1694-1699
	bne	zero, t0, beq_else.17873 ! 1694-1699
	fmul.s	fa0, fa2, fa2, rne ! 1695-1695
	fmul.s	fa0, fa0, fa0, rne ! 1695-1695
	flw	fa2, sp, 124 ! 0-0
	fmul.s	fa0, fa0, fa2, rne ! 1695-1695
	lw	a1, sp, 76 ! 0-0
	flw	fa3, a1, 0 ! 1696-1696
	fadd.s	fa3, fa3, fa0, rne ! 1696-1696
	fsw	a1, fa3, 0 ! 1696-1696
	flw	fa3, a1, 4 ! 1697-1697
	fadd.s	fa3, fa3, fa0, rne ! 1697-1697
	fsw	a1, fa3, 4 ! 1697-1697
	flw	fa3, a1, 8 ! 1698-1698
	fadd.s	fa0, fa3, fa0, rne ! 1698-1698
	fsw	a1, fa0, 8 ! 1698-1698
	j	beq_cont.17874
beq_else.17873:
beq_cont.17874:
	j	beq_cont.17870
beq_else.17869:
beq_cont.17870:
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
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 4 ! 0-0
	lw	a0, a0, 0 ! 1779-1779
	addi	a0, a0, -1 ! 1779-1779
	flw	fa0, sp, 112 ! 0-0
	flw	fa1, sp, 124 ! 0-0
	lw	a1, sp, 92 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	li	a0, l.13633 ! 1782-1782
	flw	fa0, a0, 0 ! 1782-1782
	flw	fa1, sp, 84 ! 0-0
	flt.s	t0, fa1, fa0 ! 1782-1793
	bne	zero, t0, beq_else.17875 ! 1782-1793
	li	a0, 4 ! 1784-1784
	lw	a1, sp, 100 ! 0-0
	blt	a1, a0, bge_else.17876 ! 1784-1786
	j	bge_cont.17877
bge_else.17876:
	addi	a0, a1, 1 ! 1785-1785
	li	a2, -1 ! 1785-1785
	slli	a0, a0, 2 ! 1785-1785
	lw	a3, sp, 96 ! 0-0
	add	t0, a3, a0 ! 1785-1785
	sw	t0, a2, 0 ! 1785-1785
bge_cont.17877:
	li	a0, 2 ! 1788-1788
	lw	a2, sp, 108 ! 0-0
	bne	a2, a0, beq_else.17878 ! 1788-1791
	li	a0, l.12683 ! 1789-1789
	flw	fa0, a0, 0 ! 1789-1789
	lw	a0, sp, 120 ! 0-0
	lw	a0, a0, 28 ! 360-365
	flw	fa2, a0, 0 ! 365-365
	fsub.s	fa0, fa0, fa2, rne ! 1789-1789
	fmul.s	fa0, fa1, fa0, rne ! 1789-1789
	addi	a0, a1, 1 ! 1790-1790
	lw	a1, sp, 104 ! 0-0
	flw	fa1, a1, 0 ! 1790-1790
	flw	fa2, sp, 24 ! 0-0
	fadd.s	fa1, fa2, fa1, rne ! 1790-1790
	lw	a1, sp, 92 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	j	beq_cont.17879
beq_else.17878:
beq_cont.17879:
	ret ! 1788-1791
beq_else.17875:
	ret ! 1793-1793
bge_else.17851:
	ret ! 1814-1814
trace_diffuse_ray.2771:
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
	li	a15, l.13332 ! 1535-1535
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
	flw	fa0, a0, 0 ! 1537-1537
	li	a0, l.13171 ! 1539-1539
	flw	fa1, a0, 0 ! 1539-1539
	flt.s	t0, fa0, fa1 ! 1539-1541
	bne	zero, t0, beq_else.17880 ! 1539-1541
	li	a0, l.13350 ! 1540-1540
	flw	fa1, a0, 0 ! 1540-1540
	flt.s	t0, fa1, fa0 ! 1540-1540
	bne	zero, t0, beq_else.17882 ! 1540-1540
	li	a0, 1 ! 1540-1540
	j	beq_cont.17883
beq_else.17882:
	li	a0, 0 ! 1540-1540
beq_cont.17883:
	j	beq_cont.17881
beq_else.17880:
	li	a0, 0 ! 1541-1541
beq_cont.17881:
	li	a1, 0 ! 1828-1839
	bne	a0, a1, beq_else.17884 ! 1828-1839
	ret ! 1839-1839
beq_else.17884:
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
	sw	sp, a0, 60 ! 0-0
	bne	a2, a3, beq_else.17885 ! 1594-1599
	lw	a2, sp, 40 ! 0-0
	lw	a2, a2, 0 ! 1555-1555
	li	a3, l.12679 ! 159-159
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
	li	a1, l.12679 ! 117-117
	flw	fa1, a1, 0 ! 117-117
	feq.s	t0, fa0, fa1 ! 117-119
	bne	zero, t0, beq_else.17887 ! 117-119
	li	a1, l.12679 ! 118-118
	flw	fa1, a1, 0 ! 118-118
	flt.s	t0, fa0, fa1 ! 118-119
	bne	zero, t0, beq_else.17889 ! 118-119
	li	a1, l.12683 ! 118-118
	flw	fa0, a1, 0 ! 118-118
	j	beq_cont.17890
beq_else.17889:
	li	a1, l.12681 ! 119-119
	flw	fa0, a1, 0 ! 119-119
beq_cont.17890:
	j	beq_cont.17888
beq_else.17887:
	li	a1, l.12679 ! 117-117
	flw	fa0, a1, 0 ! 117-117
beq_cont.17888:
	fneg.s	fa0, fa0 ! 1558-1558
	slli	a1, a4, 2 ! 1558-1558
	add	t0, a3, a1 ! 1558-1558
	fsw	t0, fa0, 0 ! 1558-1558
	j	beq_cont.17886
beq_else.17885:
	li	a1, 2 ! 1596-1596
	bne	a2, a1, beq_else.17891 ! 1596-1599
	lw	a1, a0, 16 ! 290-295
	flw	fa0, a1, 0 ! 295-295
	fneg.s	fa0, fa0 ! 1564-1564
	lw	a1, sp, 36 ! 0-0
	fsw	a1, fa0, 0 ! 1564-1564
	lw	a2, a0, 16 ! 300-305
	flw	fa0, a2, 4 ! 305-305
	fneg.s	fa0, fa0 ! 1565-1565
	fsw	a1, fa0, 4 ! 1565-1565
	lw	a2, a0, 16 ! 310-315
	flw	fa0, a2, 8 ! 315-315
	fneg.s	fa0, fa0 ! 1566-1566
	fsw	a1, fa0, 8 ! 1566-1566
	j	beq_cont.17892
beq_else.17891:
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
beq_cont.17892:
beq_cont.17886:
	lw	a0, sp, 60 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a21, sp, 28 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a0, 0 ! 1834-1834
	lw	a1, sp, 20 ! 0-0
	lw	a1, a1, 0 ! 1834-1834
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1834-1838
	bne	a0, a1, beq_else.17893 ! 1834-1838
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
	fneg.s	fa0, fa0 ! 1835-1835
	li	a0, l.12679 ! 1836-1836
	flw	fa1, a0, 0 ! 1836-1836
	flt.s	t0, fa0, fa1 ! 1836-1836
	bne	zero, t0, beq_else.17894 ! 1836-1836
	j	beq_cont.17895
beq_else.17894:
	li	a0, l.12679 ! 1836-1836
	flw	fa0, a0, 0 ! 1836-1836
beq_cont.17895:
	flw	fa1, sp, 8 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1837-1837
	lw	a0, sp, 60 ! 0-0
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
beq_else.17893:
	ret ! 1838-1838
iter_trace_diffuse_rays.2774:
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
	blt	a3, a17, bge_else.17896 ! 1845-1856
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
	li	a17, l.12679 ! 1850-1850
	flw	fa1, a17, 0 ! 1850-1850
	sw	sp, a2, 0 ! 0-0
	sw	sp, a21, 4 ! 0-0
	sw	sp, a5, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	sw	sp, a0, 16 ! 0-0
	sw	sp, a3, 20 ! 0-0
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.17897 ! 1850-1853
	addi	a17, a3, 1 ! 1851-1851
	slli	a17, a17, 2 ! 1851-1851
	add	t0, a0, a17 ! 1851-1851
	lw	a17, t0, 0 ! 1851-1851
	li	a18, l.13708 ! 1851-1851
	flw	fa1, a18, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	sw	sp, a6, 24 ! 0-0
	sw	sp, a16, 28 ! 0-0
	fsw	sp, fa0, 32 ! 0-0
	sw	sp, a11, 36 ! 0-0
	sw	sp, a10, 40 ! 0-0
	sw	sp, a7, 44 ! 0-0
	sw	sp, a8, 48 ! 0-0
	sw	sp, a13, 52 ! 0-0
	sw	sp, a4, 56 ! 0-0
	sw	sp, a15, 60 ! 0-0
	sw	sp, a17, 64 ! 0-0
	sw	sp, a9, 68 ! 0-0
	sw	sp, a14, 72 ! 0-0
	mv	a0, a17
	mv	a21, a12
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1828-1839
	bne	a0, a1, beq_else.17899 ! 1828-1839
	j	beq_cont.17900
beq_else.17899:
	lw	a0, sp, 72 ! 0-0
	lw	a0, a0, 0 ! 1829-1829
	slli	a0, a0, 2 ! 1829-1829
	lw	a1, sp, 68 ! 0-0
	add	t0, a1, a0 ! 1829-1829
	lw	a0, t0, 0 ! 1829-1829
	lw	a1, sp, 64 ! 0-0
	lw	a1, a1, 0 ! 538-539
	lw	a21, sp, 60 ! 0-0
	sw	sp, a0, 76 ! 0-0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 76 ! 0-0
	lw	a1, sp, 52 ! 0-0
	lw	a21, sp, 56 ! 0-0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a0, 0 ! 1834-1834
	lw	a1, sp, 48 ! 0-0
	lw	a1, a1, 0 ! 1834-1834
	lw	a21, sp, 44 ! 0-0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1834-1838
	bne	a0, a1, beq_else.17901 ! 1834-1838
	lw	a0, sp, 40 ! 0-0
	flw	fa0, a0, 0 ! 193-193
	lw	a1, sp, 36 ! 0-0
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
	fneg.s	fa0, fa0 ! 1835-1835
	li	a0, l.12679 ! 1836-1836
	flw	fa1, a0, 0 ! 1836-1836
	flt.s	t0, fa0, fa1 ! 1836-1836
	bne	zero, t0, beq_else.17903 ! 1836-1836
	j	beq_cont.17904
beq_else.17903:
	li	a0, l.12679 ! 1836-1836
	flw	fa0, a0, 0 ! 1836-1836
beq_cont.17904:
	flw	fa1, sp, 32 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1837-1837
	lw	a0, sp, 76 ! 0-0
	lw	a0, a0, 28 ! 360-365
	flw	fa1, a0, 0 ! 365-365
	fmul.s	fa0, fa0, fa1, rne ! 1837-1837
	lw	a0, sp, 28 ! 0-0
	flw	fa1, a0, 0 ! 203-203
	lw	a1, sp, 24 ! 0-0
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
	j	beq_cont.17902
beq_else.17901:
beq_cont.17902:
beq_cont.17900:
	j	beq_cont.17898
beq_else.17897:
	slli	a17, a3, 2 ! 1853-1853
	add	t0, a0, a17 ! 1853-1853
	lw	a17, t0, 0 ! 1853-1853
	li	a18, l.13732 ! 1853-1853
	flw	fa1, a18, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	sw	sp, a6, 24 ! 0-0
	sw	sp, a16, 28 ! 0-0
	fsw	sp, fa0, 80 ! 0-0
	sw	sp, a11, 36 ! 0-0
	sw	sp, a10, 40 ! 0-0
	sw	sp, a7, 44 ! 0-0
	sw	sp, a8, 48 ! 0-0
	sw	sp, a13, 52 ! 0-0
	sw	sp, a4, 56 ! 0-0
	sw	sp, a15, 60 ! 0-0
	sw	sp, a17, 84 ! 0-0
	sw	sp, a9, 68 ! 0-0
	sw	sp, a14, 72 ! 0-0
	mv	a0, a17
	mv	a21, a12
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1828-1839
	bne	a0, a1, beq_else.17905 ! 1828-1839
	j	beq_cont.17906
beq_else.17905:
	lw	a0, sp, 72 ! 0-0
	lw	a0, a0, 0 ! 1829-1829
	slli	a0, a0, 2 ! 1829-1829
	lw	a1, sp, 68 ! 0-0
	add	t0, a1, a0 ! 1829-1829
	lw	a0, t0, 0 ! 1829-1829
	lw	a1, sp, 84 ! 0-0
	lw	a1, a1, 0 ! 538-539
	lw	a21, sp, 60 ! 0-0
	sw	sp, a0, 88 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a0, sp, 88 ! 0-0
	lw	a1, sp, 52 ! 0-0
	lw	a21, sp, 56 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a0, 0 ! 1834-1834
	lw	a1, sp, 48 ! 0-0
	lw	a1, a1, 0 ! 1834-1834
	lw	a21, sp, 44 ! 0-0
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 1834-1838
	bne	a0, a1, beq_else.17907 ! 1834-1838
	lw	a0, sp, 40 ! 0-0
	flw	fa0, a0, 0 ! 193-193
	lw	a1, sp, 36 ! 0-0
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
	fneg.s	fa0, fa0 ! 1835-1835
	li	a0, l.12679 ! 1836-1836
	flw	fa1, a0, 0 ! 1836-1836
	flt.s	t0, fa0, fa1 ! 1836-1836
	bne	zero, t0, beq_else.17909 ! 1836-1836
	j	beq_cont.17910
beq_else.17909:
	li	a0, l.12679 ! 1836-1836
	flw	fa0, a0, 0 ! 1836-1836
beq_cont.17910:
	flw	fa1, sp, 80 ! 0-0
	fmul.s	fa0, fa1, fa0, rne ! 1837-1837
	lw	a0, sp, 88 ! 0-0
	lw	a0, a0, 28 ! 360-365
	flw	fa1, a0, 0 ! 365-365
	fmul.s	fa0, fa0, fa1, rne ! 1837-1837
	lw	a0, sp, 28 ! 0-0
	flw	fa1, a0, 0 ! 203-203
	lw	a1, sp, 24 ! 0-0
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
	j	beq_cont.17908
beq_else.17907:
beq_cont.17908:
beq_cont.17906:
beq_cont.17898:
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, -2 ! 1855-1855
	li	a1, 0 ! 1845-1845
	blt	a0, a1, bge_else.17911 ! 1845-1856
	slli	a1, a0, 2 ! 1846-1846
	lw	a2, sp, 16 ! 0-0
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	sw	sp, a0, 92 ! 0-0
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.17912 ! 1850-1853
	addi	a1, a0, 1 ! 1851-1851
	slli	a1, a1, 2 ! 1851-1851
	add	t0, a2, a1 ! 1851-1851
	lw	a1, t0, 0 ! 1851-1851
	li	a4, l.13708 ! 1851-1851
	flw	fa1, a4, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	j	beq_cont.17913
beq_else.17912:
	slli	a1, a0, 2 ! 1853-1853
	add	t0, a2, a1 ! 1853-1853
	lw	a1, t0, 0 ! 1853-1853
	li	a4, l.13732 ! 1853-1853
	flw	fa1, a4, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
beq_cont.17913:
	lw	a0, sp, 92 ! 0-0
	addi	a3, a0, -2 ! 1855-1855
	lw	a0, sp, 16 ! 0-0
	lw	a1, sp, 12 ! 0-0
	lw	a2, sp, 0 ! 0-0
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17911:
	ret ! 1856-1856
bge_else.17896:
	ret ! 1856-1856
trace_diffuse_ray_80percent.2783:
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
	bne	a0, a8, beq_else.17914 ! 1872-1874
	j	beq_cont.17915
beq_else.17914:
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
beq_cont.17915:
	li	a0, 1 ! 1876-1876
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.17916 ! 1876-1878
	j	beq_cont.17917
beq_else.17916:
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
beq_cont.17917:
	li	a0, 2 ! 1880-1880
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.17918 ! 1880-1882
	j	beq_cont.17919
beq_else.17918:
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
beq_cont.17919:
	li	a0, 3 ! 1884-1884
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.17920 ! 1884-1886
	j	beq_cont.17921
beq_else.17920:
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
beq_cont.17921:
	li	a0, 4 ! 1888-1888
	lw	a1, sp, 28 ! 0-0
	bne	a1, a0, beq_else.17922 ! 1888-1890
	ret ! 1890-1890
beq_else.17922:
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
calc_diffuse_using_1point.2787:
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
	bne	a0, a12, beq_else.17923 ! 1872-1874
	j	beq_cont.17924
beq_else.17923:
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.17925 ! 1850-1853
	lw	a1, a0, 476 ! 1851-1851
	li	a3, l.13708 ! 1851-1851
	flw	fa1, a3, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	j	beq_cont.17926
beq_else.17925:
	lw	a1, a0, 472 ! 1853-1853
	li	a3, l.13732 ! 1853-1853
	flw	fa1, a3, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
beq_cont.17926:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 52 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
beq_cont.17924:
	li	a0, 1 ! 1876-1876
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.17927 ! 1876-1878
	j	beq_cont.17928
beq_else.17927:
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
	sw	sp, a2, 56 ! 0-0
	mv	a1, a6
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0-0
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.17929 ! 1850-1853
	lw	a1, a0, 476 ! 1851-1851
	li	a3, l.13708 ! 1851-1851
	flw	fa1, a3, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	beq_cont.17930
beq_else.17929:
	lw	a1, a0, 472 ! 1853-1853
	li	a3, l.13732 ! 1853-1853
	flw	fa1, a3, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
beq_cont.17930:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 56 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
beq_cont.17928:
	li	a0, 2 ! 1880-1880
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.17931 ! 1880-1882
	j	beq_cont.17932
beq_else.17931:
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.17933 ! 1850-1853
	lw	a1, a0, 476 ! 1851-1851
	li	a3, l.13708 ! 1851-1851
	flw	fa1, a3, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	j	beq_cont.17934
beq_else.17933:
	lw	a1, a0, 472 ! 1853-1853
	li	a3, l.13732 ! 1853-1853
	flw	fa1, a3, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
beq_cont.17934:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 60 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
beq_cont.17932:
	li	a0, 3 ! 1884-1884
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.17935 ! 1884-1886
	j	beq_cont.17936
beq_else.17935:
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
	sw	sp, a2, 64 ! 0-0
	mv	a1, a6
	mv	a0, a3
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.17937 ! 1850-1853
	lw	a1, a0, 476 ! 1851-1851
	li	a3, l.13708 ! 1851-1851
	flw	fa1, a3, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	j	beq_cont.17938
beq_else.17937:
	lw	a1, a0, 472 ! 1853-1853
	li	a3, l.13732 ! 1853-1853
	flw	fa1, a3, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.17938:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 64 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.17936:
	li	a0, 4 ! 1888-1888
	lw	a1, sp, 48 ! 0-0
	bne	a1, a0, beq_else.17939 ! 1888-1890
	j	beq_cont.17940
beq_else.17939:
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
	sw	sp, a0, 68 ! 0-0
	mv	a0, a1
	mv	a1, a2
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.17941 ! 1850-1853
	lw	a1, a0, 476 ! 1851-1851
	li	a3, l.13708 ! 1851-1851
	flw	fa1, a3, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	j	beq_cont.17942
beq_else.17941:
	lw	a1, a0, 472 ! 1853-1853
	li	a3, l.13732 ! 1853-1853
	flw	fa1, a3, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 20 ! 0-0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
beq_cont.17942:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 68 ! 0-0
	lw	a1, sp, 24 ! 0-0
	lw	a2, sp, 40 ! 0-0
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
beq_cont.17940:
	lw	a0, sp, 12 ! 0-0
	slli	a0, a0, 2 ! 1908-1908
	lw	a1, sp, 8 ! 0-0
	add	t0, a1, a0 ! 1908-1908
	lw	a1, t0, 0 ! 1908-1908
	lw	a0, sp, 4 ! 0-0
	lw	a2, sp, 0 ! 0-0
	j	vecaccumv.2480
calc_diffuse_using_5points.2790:
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
	j	vecaccumv.2480
do_without_neighbors.2796:
	lw	a2, a21, 16 ! 0-0
	lw	a3, a21, 12 ! 0-0
	lw	a4, a21, 8 ! 0-0
	lw	a5, a21, 4 ! 0-0
	li	a6, 4 ! 1936-1936
	blt	a6, a1, bge_else.17943 ! 1936-1946
	lw	a6, a0, 8 ! 476-478
	li	a7, 0 ! 1939-1939
	slli	a8, a1, 2 ! 1939-1939
	add	t0, a6, a8 ! 1939-1939
	lw	a6, t0, 0 ! 1939-1939
	blt	a6, a7, bge_else.17944 ! 1939-1945
	lw	a6, a0, 12 ! 483-485
	slli	a7, a1, 2 ! 1941-1941
	add	t0, a6, a7 ! 1941-1941
	lw	a6, t0, 0 ! 1941-1941
	li	a7, 0 ! 1941-1943
	sw	sp, a21, 0 ! 0-0
	sw	sp, a5, 4 ! 0-0
	sw	sp, a0, 8 ! 0-0
	sw	sp, a1, 12 ! 0-0
	bne	a6, a7, beq_else.17945 ! 1941-1943
	j	beq_cont.17946
beq_else.17945:
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
	jal	vecaccumv.2480
	addi	sp, sp, -32
	lw	ra, sp, 28
beq_cont.17946:
	lw	a0, sp, 12 ! 0-0
	addi	a1, a0, 1 ! 1944-1944
	li	a0, 4 ! 1936-1936
	blt	a0, a1, bge_else.17947 ! 1936-1946
	lw	a0, sp, 8 ! 0-0
	lw	a2, a0, 8 ! 476-478
	li	a3, 0 ! 1939-1939
	slli	a4, a1, 2 ! 1939-1939
	add	t0, a2, a4 ! 1939-1939
	lw	a2, t0, 0 ! 1939-1939
	blt	a2, a3, bge_else.17948 ! 1939-1945
	lw	a2, a0, 12 ! 483-485
	slli	a3, a1, 2 ! 1941-1941
	add	t0, a2, a3 ! 1941-1941
	lw	a2, t0, 0 ! 1941-1941
	li	a3, 0 ! 1941-1943
	sw	sp, a1, 28 ! 0-0
	bne	a2, a3, beq_else.17949 ! 1941-1943
	j	beq_cont.17950
beq_else.17949:
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
beq_cont.17950:
	lw	a0, sp, 28 ! 0-0
	addi	a1, a0, 1 ! 1944-1944
	lw	a0, sp, 8 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17948:
	ret ! 1945-1945
bge_else.17947:
	ret ! 1946-1946
bge_else.17944:
	ret ! 1945-1945
bge_else.17943:
	ret ! 1946-1946
try_exploit_neighbors.2812:
	lw	a6, a21, 12 ! 0-0
	lw	a7, a21, 8 ! 0-0
	lw	a8, a21, 4 ! 0-0
	slli	a9, a0, 2 ! 1988-1988
	add	t0, a3, a9 ! 1988-1988
	lw	a9, t0, 0 ! 1988-1988
	li	a10, 4 ! 1989-1989
	blt	a10, a5, bge_else.17951 ! 1989-2008
	li	a10, 0 ! 1992-1992
	lw	a11, a9, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	blt	a11, a10, bge_else.17952 ! 1992-2007
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
	bne	a11, a10, beq_else.17953 ! 1972-1980
	slli	a11, a0, 2 ! 1973-1973
	add	t0, a4, a11 ! 1973-1973
	lw	a11, t0, 0 ! 1973-1973
	lw	a11, a11, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	bne	a11, a10, beq_else.17955 ! 1973-1979
	addi	a11, a0, -1 ! 1974-1974
	slli	a11, a11, 2 ! 1974-1974
	add	t0, a3, a11 ! 1974-1974
	lw	a11, t0, 0 ! 1974-1974
	lw	a11, a11, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	bne	a11, a10, beq_else.17957 ! 1974-1978
	addi	a11, a0, 1 ! 1975-1975
	slli	a11, a11, 2 ! 1975-1975
	add	t0, a3, a11 ! 1975-1975
	lw	a11, t0, 0 ! 1975-1975
	lw	a11, a11, 8 ! 476-478
	slli	a12, a5, 2 ! 1964-1964
	add	t0, a11, a12 ! 1964-1964
	lw	a11, t0, 0 ! 1964-1964
	bne	a11, a10, beq_else.17959 ! 1975-1977
	li	a10, 1 ! 1976-1976
	j	beq_cont.17960
beq_else.17959:
	li	a10, 0 ! 1977-1977
beq_cont.17960:
	j	beq_cont.17958
beq_else.17957:
	li	a10, 0 ! 1978-1978
beq_cont.17958:
	j	beq_cont.17956
beq_else.17955:
	li	a10, 0 ! 1979-1979
beq_cont.17956:
	j	beq_cont.17954
beq_else.17953:
	li	a10, 0 ! 1980-1980
beq_cont.17954:
	li	a11, 0 ! 1994-2006
	bne	a10, a11, beq_else.17961 ! 1994-2006
	slli	a0, a0, 2 ! 2006-2006
	add	t0, a3, a0 ! 2006-2006
	lw	a0, t0, 0 ! 2006-2006
	li	a1, 4 ! 1936-1936
	blt	a1, a5, bge_else.17962 ! 1936-1946
	lw	a1, a0, 8 ! 476-478
	li	a2, 0 ! 1939-1939
	slli	a3, a5, 2 ! 1939-1939
	add	t0, a1, a3 ! 1939-1939
	lw	a1, t0, 0 ! 1939-1939
	blt	a1, a2, bge_else.17963 ! 1939-1945
	lw	a1, a0, 12 ! 483-485
	slli	a2, a5, 2 ! 1941-1941
	add	t0, a1, a2 ! 1941-1941
	lw	a1, t0, 0 ! 1941-1941
	li	a2, 0 ! 1941-1943
	sw	sp, a0, 0 ! 0-0
	sw	sp, a6, 4 ! 0-0
	sw	sp, a5, 8 ! 0-0
	bne	a1, a2, beq_else.17964 ! 1941-1943
	j	beq_cont.17965
beq_else.17964:
	mv	a1, a5
	mv	a21, a8
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
beq_cont.17965:
	lw	a0, sp, 8 ! 0-0
	addi	a1, a0, 1 ! 1944-1944
	lw	a0, sp, 0 ! 0-0
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17963:
	ret ! 1945-1945
bge_else.17962:
	ret ! 1946-1946
beq_else.17961:
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
	bne	a8, a9, beq_else.17966 ! 1998-2000
	j	beq_cont.17967
beq_else.17966:
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
beq_cont.17967:
	lw	a0, sp, 8 ! 0-0
	addi	a1, a0, 1 ! 2003-2003
	lw	a0, sp, 36 ! 0-0
	slli	a2, a0, 2 ! 1988-1988
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1988-1988
	lw	a2, t0, 0 ! 1988-1988
	li	a4, 4 ! 1989-1989
	blt	a4, a1, bge_else.17968 ! 1989-2008
	li	a4, 0 ! 1992-1992
	lw	a5, a2, 8 ! 476-478
	slli	a6, a1, 2 ! 1964-1964
	add	t0, a5, a6 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	blt	a5, a4, bge_else.17969 ! 1992-2007
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
	bne	a5, a4, beq_else.17970 ! 1972-1980
	slli	a5, a0, 2 ! 1973-1973
	lw	a7, sp, 24 ! 0-0
	add	t0, a7, a5 ! 1973-1973
	lw	a5, t0, 0 ! 1973-1973
	lw	a5, a5, 8 ! 476-478
	slli	a8, a1, 2 ! 1964-1964
	add	t0, a5, a8 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	bne	a5, a4, beq_else.17972 ! 1973-1979
	addi	a5, a0, -1 ! 1974-1974
	slli	a5, a5, 2 ! 1974-1974
	add	t0, a3, a5 ! 1974-1974
	lw	a5, t0, 0 ! 1974-1974
	lw	a5, a5, 8 ! 476-478
	slli	a8, a1, 2 ! 1964-1964
	add	t0, a5, a8 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	bne	a5, a4, beq_else.17974 ! 1974-1978
	addi	a5, a0, 1 ! 1975-1975
	slli	a5, a5, 2 ! 1975-1975
	add	t0, a3, a5 ! 1975-1975
	lw	a5, t0, 0 ! 1975-1975
	lw	a5, a5, 8 ! 476-478
	slli	a8, a1, 2 ! 1964-1964
	add	t0, a5, a8 ! 1964-1964
	lw	a5, t0, 0 ! 1964-1964
	bne	a5, a4, beq_else.17976 ! 1975-1977
	li	a4, 1 ! 1976-1976
	j	beq_cont.17977
beq_else.17976:
	li	a4, 0 ! 1977-1977
beq_cont.17977:
	j	beq_cont.17975
beq_else.17974:
	li	a4, 0 ! 1978-1978
beq_cont.17975:
	j	beq_cont.17973
beq_else.17972:
	li	a4, 0 ! 1979-1979
beq_cont.17973:
	j	beq_cont.17971
beq_else.17970:
	li	a4, 0 ! 1980-1980
beq_cont.17971:
	li	a5, 0 ! 1994-2006
	bne	a4, a5, beq_else.17978 ! 1994-2006
	slli	a0, a0, 2 ! 2006-2006
	add	t0, a3, a0 ! 2006-2006
	lw	a0, t0, 0 ! 2006-2006
	lw	a21, sp, 4 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
beq_else.17978:
	lw	a2, a2, 12 ! 483-485
	slli	a4, a1, 2 ! 1998-1998
	add	t0, a2, a4 ! 1998-1998
	lw	a2, t0, 0 ! 1998-1998
	li	a4, 0 ! 1998-2000
	sw	sp, a1, 40 ! 0-0
	bne	a2, a4, beq_else.17979 ! 1998-2000
	j	beq_cont.17980
beq_else.17979:
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
beq_cont.17980:
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
bge_else.17969:
	ret ! 2007-2007
bge_else.17968:
	ret ! 2008-2008
bge_else.17952:
	ret ! 2007-2007
bge_else.17951:
	ret ! 2008-2008
write_rgb.2823:
	lw	a0, a21, 4 ! 0-0
	flw	fa0, a0, 0 ! 2035-2035
	sw	sp, a0, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.17981 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.17983 ! 2030-2030
	j	bge_cont.17984
bge_else.17983:
	li	a0, 0 ! 2030-2030
bge_cont.17984:
	j	bge_cont.17982
bge_else.17981:
	li	a0, 255 ! 2030-2030
bge_cont.17982:
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
	blt	a1, a0, bge_else.17985 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.17987 ! 2030-2030
	j	bge_cont.17988
bge_else.17987:
	li	a0, 0 ! 2030-2030
bge_cont.17988:
	j	bge_cont.17986
bge_else.17985:
	li	a0, 255 ! 2030-2030
bge_cont.17986:
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
	blt	a1, a0, bge_else.17989 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.17991 ! 2030-2030
	j	bge_cont.17992
bge_else.17991:
	li	a0, 0 ! 2030-2030
bge_cont.17992:
	j	bge_cont.17990
bge_else.17989:
	li	a0, 255 ! 2030-2030
bge_cont.17990:
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 2040-2040
	j	min_caml_print_char
pretrace_diffuse_rays.2825:
	lw	a2, a21, 28 ! 0-0
	lw	a3, a21, 24 ! 0-0
	lw	a4, a21, 20 ! 0-0
	lw	a5, a21, 16 ! 0-0
	lw	a6, a21, 12 ! 0-0
	lw	a7, a21, 8 ! 0-0
	lw	a8, a21, 4 ! 0-0
	li	a9, 4 ! 2052-2052
	blt	a9, a1, bge_else.17993 ! 2052-2076
	lw	a9, a0, 8 ! 476-478
	slli	a10, a1, 2 ! 1964-1964
	add	t0, a9, a10 ! 1964-1964
	lw	a9, t0, 0 ! 1964-1964
	li	a10, 0 ! 2056-2056
	blt	a9, a10, bge_else.17994 ! 2056-2075
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
	bne	a9, a10, beq_else.17995 ! 2059-2073
	j	beq_cont.17996
beq_else.17995:
	lw	a9, a0, 24 ! 513-515
	lw	a9, a9, 0 ! 515-515
	li	a10, l.12679 ! 159-159
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
beq_cont.17996:
	lw	a1, sp, 32 ! 0-0
	addi	a1, a1, 1 ! 2074-2074
	li	a2, 4 ! 2052-2052
	blt	a2, a1, bge_else.17997 ! 2052-2076
	lw	a2, a0, 8 ! 476-478
	slli	a3, a1, 2 ! 1964-1964
	add	t0, a2, a3 ! 1964-1964
	lw	a2, t0, 0 ! 1964-1964
	li	a3, 0 ! 2056-2056
	blt	a2, a3, bge_else.17998 ! 2056-2075
	lw	a2, a0, 12 ! 483-485
	slli	a3, a1, 2 ! 2059-2059
	add	t0, a2, a3 ! 2059-2059
	lw	a2, t0, 0 ! 2059-2059
	li	a3, 0 ! 2059-2073
	sw	sp, a1, 52 ! 0-0
	bne	a2, a3, beq_else.17999 ! 2059-2073
	j	beq_cont.18000
beq_else.17999:
	lw	a2, a0, 24 ! 513-515
	lw	a2, a2, 0 ! 515-515
	li	a3, l.12679 ! 159-159
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.18001 ! 1850-1853
	lw	a1, a0, 476 ! 1851-1851
	li	a3, l.13708 ! 1851-1851
	flw	fa1, a3, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	j	beq_cont.18002
beq_else.18001:
	lw	a1, a0, 472 ! 1853-1853
	li	a3, l.13732 ! 1853-1853
	flw	fa1, a3, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
beq_cont.18002:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 64 ! 0-0
	lw	a1, sp, 60 ! 0-0
	lw	a2, sp, 56 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
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
beq_cont.18000:
	lw	a1, sp, 52 ! 0-0
	addi	a1, a1, 1 ! 2074-2074
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.17998:
	ret ! 2075-2075
bge_else.17997:
	ret ! 2076-2076
bge_else.17994:
	ret ! 2075-2075
bge_else.17993:
	ret ! 2076-2076
pretrace_pixels.2828:
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
	blt	a1, a19, bge_else.18003 ! 2082-2102
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
	jal	vecunit_sgn.2456
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a0, l.12679 ! 159-159
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
	li	a2, l.12683 ! 2093-2093
	flw	fa0, a2, 0 ! 2093-2093
	lw	a2, sp, 48 ! 0-0
	slli	a3, a2, 2 ! 2093-2093
	lw	a4, sp, 44 ! 0-0
	add	t0, a4, a3 ! 2093-2093
	lw	a3, t0, 0 ! 2093-2093
	li	a5, l.12679 ! 2093-2093
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
	blt	a4, a5, bge_else.18004 ! 2056-2075
	lw	a4, a1, 12 ! 483-485
	lw	a4, a4, 0 ! 2059-2059
	li	a5, 0 ! 2059-2073
	sw	sp, a1, 88 ! 0-0
	bne	a4, a5, beq_else.18006 ! 2059-2073
	j	beq_cont.18007
beq_else.18006:
	lw	a4, a1, 24 ! 513-515
	lw	a4, a4, 0 ! 515-515
	li	a5, l.12679 ! 159-159
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
	li	a1, l.12679 ! 1850-1850
	flw	fa1, a1, 0 ! 1850-1850
	flt.s	t0, fa1, fa0 ! 1850-1853
	bne	zero, t0, beq_else.18008 ! 1850-1853
	lw	a1, a0, 476 ! 1851-1851
	li	a3, l.13708 ! 1851-1851
	flw	fa1, a3, 0 ! 1851-1851
	fdiv.s	fa0, fa0, fa1, rne ! 1851-1851
	lw	a21, sp, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	j	beq_cont.18009
beq_else.18008:
	lw	a1, a0, 472 ! 1853-1853
	li	a3, l.13732 ! 1853-1853
	flw	fa1, a3, 0 ! 1853-1853
	fdiv.s	fa0, fa0, fa1, rne ! 1853-1853
	lw	a21, sp, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
beq_cont.18009:
	li	a3, 116 ! 1855-1855
	lw	a0, sp, 100 ! 0-0
	lw	a1, sp, 96 ! 0-0
	lw	a2, sp, 92 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
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
beq_cont.18007:
	li	a1, 1 ! 2074-2074
	lw	a0, sp, 88 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	j	bge_cont.18005
bge_else.18004:
bge_cont.18005:
	lw	a0, sp, 48 ! 0-0
	addi	a1, a0, -1 ! 2100-2100
	lw	a0, sp, 36 ! 0-0
	addi	a0, a0, 1 ! 129-129
	li	a2, 5 ! 130-130
	blt	a0, a2, bge_else.18010 ! 130-130
	addi	a2, a0, -5 ! 130-130
	j	bge_cont.18011
bge_else.18010:
	mv	a2, a0 ! 130-130
bge_cont.18011:
	flw	fa0, sp, 76 ! 0-0
	flw	fa1, sp, 68 ! 0-0
	flw	fa2, sp, 64 ! 0-0
	lw	a0, sp, 44 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18003:
	ret ! 2102-2102
pretrace_line.2835:
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
scan_pixel.2839:
	lw	a5, a21, 28 ! 0-0
	lw	a6, a21, 24 ! 0-0
	lw	a7, a21, 20 ! 0-0
	lw	a8, a21, 16 ! 0-0
	lw	a9, a21, 12 ! 0-0
	lw	a10, a21, 8 ! 0-0
	lw	a11, a21, 4 ! 0-0
	lw	a12, a8, 0 ! 2123-2123
	blt	a0, a12, bge_else.18012 ! 2123-2138
	ret ! 2138-2138
bge_else.18012:
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
	blt	a13, a12, bge_else.18013 ! 1951-1959
	li	a12, 0 ! 1959-1959
	j	bge_cont.18014
bge_else.18013:
	li	a12, 0 ! 1952-1952
	blt	a12, a1, bge_else.18015 ! 1952-1958
	li	a12, 0 ! 1958-1958
	j	bge_cont.18016
bge_else.18015:
	lw	a12, a8, 0 ! 1953-1953
	addi	a13, a0, 1 ! 1953-1953
	blt	a13, a12, bge_else.18017 ! 1953-1957
	li	a12, 0 ! 1957-1957
	j	bge_cont.18018
bge_else.18017:
	li	a12, 0 ! 1954-1954
	blt	a12, a0, bge_else.18019 ! 1954-1956
	li	a12, 0 ! 1956-1956
	j	bge_cont.18020
bge_else.18019:
	li	a12, 1 ! 1955-1955
bge_cont.18020:
bge_cont.18018:
bge_cont.18016:
bge_cont.18014:
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
	bne	a12, a13, beq_else.18021 ! 2129-2132
	slli	a10, a0, 2 ! 2132-2132
	add	t0, a3, a10 ! 2132-2132
	lw	a10, t0, 0 ! 2132-2132
	li	a12, 0 ! 2132-2132
	lw	a13, a10, 8 ! 476-478
	li	a14, 0 ! 1939-1939
	lw	a13, a13, 0 ! 1939-1939
	blt	a13, a14, bge_else.18023 ! 1939-1945
	lw	a13, a10, 12 ! 483-485
	lw	a13, a13, 0 ! 1941-1941
	li	a14, 0 ! 1941-1943
	sw	sp, a10, 44 ! 0-0
	bne	a13, a14, beq_else.18025 ! 1941-1943
	j	beq_cont.18026
beq_else.18025:
	mv	a1, a12
	mv	a0, a10
	mv	a21, a11
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
beq_cont.18026:
	li	a1, 1 ! 1944-1944
	lw	a0, sp, 44 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	bge_cont.18024
bge_else.18023:
bge_cont.18024:
	j	beq_cont.18022
beq_else.18021:
	li	a11, 0 ! 2130-2130
	slli	a12, a0, 2 ! 1988-1988
	add	t0, a3, a12 ! 1988-1988
	lw	a12, t0, 0 ! 1988-1988
	li	a13, 0 ! 1992-1992
	lw	a14, a12, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	blt	a14, a13, bge_else.18027 ! 1992-2007
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
	bne	a14, a13, beq_else.18029 ! 1972-1980
	slli	a14, a0, 2 ! 1973-1973
	add	t0, a4, a14 ! 1973-1973
	lw	a14, t0, 0 ! 1973-1973
	lw	a14, a14, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	bne	a14, a13, beq_else.18031 ! 1973-1979
	addi	a14, a0, -1 ! 1974-1974
	slli	a14, a14, 2 ! 1974-1974
	add	t0, a3, a14 ! 1974-1974
	lw	a14, t0, 0 ! 1974-1974
	lw	a14, a14, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	bne	a14, a13, beq_else.18033 ! 1974-1978
	addi	a14, a0, 1 ! 1975-1975
	slli	a14, a14, 2 ! 1975-1975
	add	t0, a3, a14 ! 1975-1975
	lw	a14, t0, 0 ! 1975-1975
	lw	a14, a14, 8 ! 476-478
	lw	a14, a14, 0 ! 1964-1964
	bne	a14, a13, beq_else.18035 ! 1975-1977
	li	a13, 1 ! 1976-1976
	j	beq_cont.18036
beq_else.18035:
	li	a13, 0 ! 1977-1977
beq_cont.18036:
	j	beq_cont.18034
beq_else.18033:
	li	a13, 0 ! 1978-1978
beq_cont.18034:
	j	beq_cont.18032
beq_else.18031:
	li	a13, 0 ! 1979-1979
beq_cont.18032:
	j	beq_cont.18030
beq_else.18029:
	li	a13, 0 ! 1980-1980
beq_cont.18030:
	li	a14, 0 ! 1994-2006
	bne	a13, a14, beq_else.18037 ! 1994-2006
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
	j	beq_cont.18038
beq_else.18037:
	lw	a12, a12, 12 ! 483-485
	lw	a12, a12, 0 ! 1998-1998
	li	a13, 0 ! 1998-2000
	bne	a12, a13, beq_else.18039 ! 1998-2000
	j	beq_cont.18040
beq_else.18039:
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
beq_cont.18040:
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
beq_cont.18038:
	j	bge_cont.18028
bge_else.18027:
bge_cont.18028:
beq_cont.18022:
	lw	a0, sp, 40 ! 0-0
	flw	fa0, a0, 0 ! 2035-2035
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_int_of_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 255 ! 2030-2030
	blt	a1, a0, bge_else.18041 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18043 ! 2030-2030
	j	bge_cont.18044
bge_else.18043:
	li	a0, 0 ! 2030-2030
bge_cont.18044:
	j	bge_cont.18042
bge_else.18041:
	li	a0, 255 ! 2030-2030
bge_cont.18042:
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
	blt	a1, a0, bge_else.18045 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18047 ! 2030-2030
	j	bge_cont.18048
bge_else.18047:
	li	a0, 0 ! 2030-2030
bge_cont.18048:
	j	bge_cont.18046
bge_else.18045:
	li	a0, 255 ! 2030-2030
bge_cont.18046:
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
	blt	a1, a0, bge_else.18049 ! 2030-2030
	li	a1, 0 ! 2030-2030
	blt	a0, a1, bge_else.18051 ! 2030-2030
	j	bge_cont.18052
bge_else.18051:
	li	a0, 0 ! 2030-2030
bge_cont.18052:
	j	bge_cont.18050
bge_else.18049:
	li	a0, 255 ! 2030-2030
bge_cont.18050:
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
	blt	a0, a2, bge_else.18053 ! 2123-2138
	ret ! 2138-2138
bge_else.18053:
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
	blt	a5, a2, bge_else.18054 ! 1951-1959
	li	a1, 0 ! 1959-1959
	j	bge_cont.18055
bge_else.18054:
	li	a2, 0 ! 1952-1952
	blt	a2, a4, bge_else.18056 ! 1952-1958
	li	a1, 0 ! 1958-1958
	j	bge_cont.18057
bge_else.18056:
	lw	a1, a1, 0 ! 1953-1953
	addi	a2, a0, 1 ! 1953-1953
	blt	a2, a1, bge_else.18058 ! 1953-1957
	li	a1, 0 ! 1957-1957
	j	bge_cont.18059
bge_else.18058:
	li	a1, 0 ! 1954-1954
	blt	a1, a0, bge_else.18060 ! 1954-1956
	li	a1, 0 ! 1956-1956
	j	bge_cont.18061
bge_else.18060:
	li	a1, 1 ! 1955-1955
bge_cont.18061:
bge_cont.18059:
bge_cont.18057:
bge_cont.18055:
	li	a2, 0 ! 2129-2132
	sw	sp, a0, 48 ! 0-0
	bne	a1, a2, beq_else.18062 ! 2129-2132
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
	j	beq_cont.18063
beq_else.18062:
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
beq_cont.18063:
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
scan_line.2845:
	lw	a5, a21, 28 ! 0-0
	lw	a6, a21, 24 ! 0-0
	lw	a7, a21, 20 ! 0-0
	lw	a8, a21, 16 ! 0-0
	lw	a9, a21, 12 ! 0-0
	lw	a10, a21, 8 ! 0-0
	lw	a11, a21, 4 ! 0-0
	lw	a12, a10, 4 ! 2144-2144
	blt	a0, a12, bge_else.18064 ! 2144-2151
	ret ! 2151-2151
bge_else.18064:
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
	blt	a0, a12, bge_else.18065 ! 2146-2148
	j	bge_cont.18066
bge_else.18065:
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
bge_cont.18066:
	li	a0, 0 ! 2149-2149
	lw	a1, sp, 48 ! 0-0
	lw	a2, a1, 0 ! 2123-2123
	blt	a0, a2, bge_else.18067 ! 2123-2138
	j	bge_cont.18068
bge_else.18067:
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
	blt	a5, a2, bge_else.18069 ! 1951-1959
	li	a2, 0 ! 1959-1959
	j	bge_cont.18070
bge_else.18069:
	li	a2, 0 ! 1952-1952
	blt	a2, a4, bge_else.18071 ! 1952-1958
	li	a2, 0 ! 1958-1958
	j	bge_cont.18072
bge_else.18071:
	lw	a2, a1, 0 ! 1953-1953
	li	a5, 1 ! 1953-1953
	blt	a5, a2, bge_else.18073 ! 1953-1957
	li	a2, 0 ! 1957-1957
	j	bge_cont.18074
bge_else.18073:
	li	a2, 0 ! 1956-1956
bge_cont.18074:
bge_cont.18072:
bge_cont.18070:
	li	a5, 0 ! 2129-2132
	bne	a2, a5, beq_else.18075 ! 2129-2132
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
	j	beq_cont.18076
beq_else.18075:
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
beq_cont.18076:
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
bge_cont.18068:
	lw	a0, sp, 36 ! 0-0
	addi	a1, a0, 1 ! 2150-2150
	lw	a0, sp, 8 ! 0-0
	addi	a0, a0, 2 ! 129-129
	li	a2, 5 ! 130-130
	blt	a0, a2, bge_else.18077 ! 130-130
	addi	a2, a0, -5 ! 130-130
	j	bge_cont.18078
bge_else.18077:
	mv	a2, a0 ! 130-130
bge_cont.18078:
	lw	a0, sp, 48 ! 0-0
	lw	a3, a0, 4 ! 2144-2144
	blt	a1, a3, bge_else.18079 ! 2144-2151
	j	bge_cont.18080
bge_else.18079:
	lw	a0, a0, 4 ! 2146-2146
	addi	a0, a0, -1 ! 2146-2146
	sw	sp, a2, 52 ! 0-0
	sw	sp, a1, 56 ! 0-0
	blt	a1, a0, bge_else.18081 ! 2146-2148
	j	bge_cont.18082
bge_else.18081:
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
bge_cont.18082:
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
	blt	a1, a2, bge_else.18083 ! 130-130
	addi	a4, a1, -5 ! 130-130
	j	bge_cont.18084
bge_else.18083:
	mv	a4, a1 ! 130-130
bge_cont.18084:
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
bge_cont.18080:
	ret ! 2150-2150
create_float5x3array.2851:
	li	a0, 3 ! 2161-2161
	li	a1, l.12679 ! 2161-2161
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
	li	a2, l.12679 ! 2163-2163
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
	li	a2, l.12679 ! 2164-2164
	flw	fa0, a2, 0 ! 2164-2164
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 8 ! 2164-2164
	li	a0, 3 ! 2165-2165
	li	a2, l.12679 ! 2165-2165
	flw	fa0, a2, 0 ! 2165-2165
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 12 ! 2165-2165
	li	a0, 3 ! 2166-2166
	li	a2, l.12679 ! 2166-2166
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
init_line_elements.2855:
	li	a2, 0 ! 2186-2186
	blt	a1, a2, bge_else.18085 ! 2186-2190
	li	a2, 3 ! 2173-2173
	li	a3, l.12679 ! 2173-2173
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
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0-0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
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
	blt	a0, a1, bge_else.18086 ! 2186-2190
	li	a1, 3 ! 2173-2173
	li	a2, l.12679 ! 2173-2173
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
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, a0, 56 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
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
	j	init_line_elements.2855
bge_else.18086:
	mv	a0, a3 ! 2190-2190
	ret ! 2190-2190
bge_else.18085:
	ret ! 2190-2190
calc_dirvec.2865:
	lw	a3, a21, 4 ! 0-0
	li	a4, 5 ! 2223-2223
	blt	a0, a4, bge_else.18087 ! 2223-2239
	fmul.s	fa2, fa0, fa0, rne ! 2224-2224
	fmul.s	fa3, fa1, fa1, rne ! 2224-2224
	fadd.s	fa2, fa2, fa3, rne ! 2224-2224
	li	a0, l.12683 ! 2224-2224
	flw	fa3, a0, 0 ! 2224-2224
	fadd.s	fa2, fa2, fa3, rne ! 2224-2224
	sw	sp, a2, 0 ! 0-0
	sw	sp, a3, 4 ! 0-0
	sw	sp, a1, 8 ! 0-0
	fsw	sp, fa1, 12 ! 0-0
	fsw	sp, fa0, 16 ! 0-0
	fmv.s	fa0, fa2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_sqrt
	addi	sp, sp, -24
	lw	ra, sp, 20
	flw	fa1, sp, 16 ! 0-0
	fdiv.s	fa1, fa1, fa0, rne ! 2225-2225
	flw	fa2, sp, 12 ! 0-0
	fdiv.s	fa2, fa2, fa0, rne ! 2226-2226
	li	a0, l.12683 ! 2227-2227
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
	fneg.s	fa3, fa2 ! 2232-2232
	fsw	a2, fa1, 0 ! 145-145
	fsw	a2, fa0, 4 ! 146-146
	fsw	a2, fa3, 8 ! 147-147
	addi	a2, a1, 80 ! 2233-2233
	slli	a2, a2, 2 ! 2233-2233
	add	t0, a0, a2 ! 2233-2233
	lw	a2, t0, 0 ! 2233-2233
	lw	a2, a2, 0 ! 538-539
	fneg.s	fa3, fa1 ! 2233-2233
	fneg.s	fa4, fa2 ! 2233-2233
	fsw	a2, fa0, 0 ! 145-145
	fsw	a2, fa3, 4 ! 146-146
	fsw	a2, fa4, 8 ! 147-147
	addi	a2, a1, 1 ! 2234-2234
	slli	a2, a2, 2 ! 2234-2234
	add	t0, a0, a2 ! 2234-2234
	lw	a2, t0, 0 ! 2234-2234
	lw	a2, a2, 0 ! 538-539
	fneg.s	fa3, fa1 ! 2234-2234
	fneg.s	fa4, fa2 ! 2234-2234
	fneg.s	fa5, fa0 ! 2234-2234
	fsw	a2, fa3, 0 ! 145-145
	fsw	a2, fa4, 4 ! 146-146
	fsw	a2, fa5, 8 ! 147-147
	addi	a2, a1, 41 ! 2235-2235
	slli	a2, a2, 2 ! 2235-2235
	add	t0, a0, a2 ! 2235-2235
	lw	a2, t0, 0 ! 2235-2235
	lw	a2, a2, 0 ! 538-539
	fneg.s	fa3, fa1 ! 2235-2235
	fneg.s	fa4, fa0 ! 2235-2235
	fsw	a2, fa3, 0 ! 145-145
	fsw	a2, fa4, 4 ! 146-146
	fsw	a2, fa2, 8 ! 147-147
	addi	a1, a1, 81 ! 2236-2236
	slli	a1, a1, 2 ! 2236-2236
	add	t0, a0, a1 ! 2236-2236
	lw	a0, t0, 0 ! 2236-2236
	lw	a0, a0, 0 ! 538-539
	fneg.s	fa0, fa0 ! 2236-2236
	fsw	a0, fa0, 0 ! 145-145
	fsw	a0, fa1, 4 ! 146-146
	fsw	a0, fa2, 8 ! 147-147
	ret ! 147-147
bge_else.18087:
	fmul.s	fa0, fa1, fa1, rne ! 2214-2214
	li	a3, l.13633 ! 2214-2214
	flw	fa1, a3, 0 ! 2214-2214
	fadd.s	fa0, fa0, fa1, rne ! 2214-2214
	sw	sp, a2, 0 ! 0-0
	sw	sp, a1, 8 ! 0-0
	sw	sp, a21, 20 ! 0-0
	fsw	sp, fa3, 24 ! 0-0
	sw	sp, a0, 28 ! 0-0
	fsw	sp, fa2, 32 ! 0-0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_sqrt
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, l.12683 ! 2215-2215
	flw	fa1, a0, 0 ! 2215-2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215-2215
	fsw	sp, fa0, 36 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_atan
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 2217-2217
	fsw	sp, fa0, 40 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_sin
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 40 ! 0-0
	fsw	sp, fa0, 44 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 44 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 2209-2209
	flw	fa1, sp, 36 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 2218-2218
	lw	a0, sp, 28 ! 0-0
	addi	a0, a0, 1 ! 2239-2239
	fmul.s	fa1, fa0, fa0, rne ! 2214-2214
	li	a1, l.13633 ! 2214-2214
	flw	fa2, a1, 0 ! 2214-2214
	fadd.s	fa1, fa1, fa2, rne ! 2214-2214
	fsw	sp, fa0, 48 ! 0-0
	sw	sp, a0, 52 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_sqrt
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a0, l.12683 ! 2215-2215
	flw	fa1, a0, 0 ! 2215-2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215-2215
	fsw	sp, fa0, 56 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_atan
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa1, sp, 24 ! 0-0
	fmul.s	fa0, fa0, fa1, rne ! 2217-2217
	fsw	sp, fa0, 60 ! 0-0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_sin
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 60 ! 0-0
	fsw	sp, fa0, 64 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_cos
	addi	sp, sp, -72
	lw	ra, sp, 68
	flw	fa1, sp, 64 ! 0-0
	fdiv.s	fa0, fa1, fa0, rne ! 2209-2209
	flw	fa1, sp, 56 ! 0-0
	fmul.s	fa1, fa0, fa1, rne ! 2218-2218
	flw	fa0, sp, 48 ! 0-0
	flw	fa2, sp, 32 ! 0-0
	flw	fa3, sp, 24 ! 0-0
	lw	a0, sp, 52 ! 0-0
	lw	a1, sp, 8 ! 0-0
	lw	a2, sp, 0 ! 0-0
	lw	a21, sp, 20 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_dirvecs.2873:
	lw	a3, a21, 4 ! 0-0
	li	a4, 0 ! 2244-2244
	blt	a0, a4, bge_else.18088 ! 2244-2253
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
	li	a0, l.14274 ! 2246-2246
	flw	fa1, a0, 0 ! 2246-2246
	fmul.s	fa0, fa0, fa1, rne ! 2246-2246
	li	a0, l.14276 ! 2246-2246
	flw	fa1, a0, 0 ! 2246-2246
	fsub.s	fa2, fa0, fa1, rne ! 2246-2246
	li	a0, 0 ! 2247-2247
	li	a1, l.12679 ! 2247-2247
	flw	fa0, a1, 0 ! 2247-2247
	li	a1, l.12679 ! 2247-2247
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
	li	a0, l.14274 ! 2249-2249
	flw	fa1, a0, 0 ! 2249-2249
	fmul.s	fa0, fa0, fa1, rne ! 2249-2249
	li	a0, l.13633 ! 2249-2249
	flw	fa1, a0, 0 ! 2249-2249
	fadd.s	fa2, fa0, fa1, rne ! 2249-2249
	li	a0, 0 ! 2250-2250
	li	a1, l.12679 ! 2250-2250
	flw	fa0, a1, 0 ! 2250-2250
	li	a1, l.12679 ! 2250-2250
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
	blt	a1, a2, bge_else.18089 ! 130-130
	addi	a1, a1, -5 ! 130-130
	j	bge_cont.18090
bge_else.18089:
bge_cont.18090:
	flw	fa0, sp, 8 ! 0-0
	lw	a2, sp, 12 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18088:
	ret ! 2253-2253
calc_dirvec_rows.2878:
	lw	a3, a21, 4 ! 0-0
	li	a4, 0 ! 2258-2258
	blt	a0, a4, bge_else.18091 ! 2258-2262
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
	li	a0, l.14274 ! 2259-2259
	flw	fa1, a0, 0 ! 2259-2259
	fmul.s	fa0, fa0, fa1, rne ! 2259-2259
	li	a0, l.14276 ! 2259-2259
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
	blt	a1, a2, bge_else.18092 ! 130-130
	addi	a1, a1, -5 ! 130-130
	j	bge_cont.18093
bge_else.18092:
bge_cont.18093:
	lw	a2, sp, 8 ! 0-0
	addi	a2, a2, 4 ! 2261-2261
	li	a3, 0 ! 2258-2258
	blt	a0, a3, bge_else.18094 ! 2258-2262
	sw	sp, a0, 20 ! 0-0
	sw	sp, a2, 24 ! 0-0
	sw	sp, a1, 28 ! 0-0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_float_of_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.14274 ! 2259-2259
	flw	fa1, a0, 0 ! 2259-2259
	fmul.s	fa0, fa0, fa1, rne ! 2259-2259
	li	a0, l.14276 ! 2259-2259
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
	blt	a1, a2, bge_else.18095 ! 130-130
	addi	a1, a1, -5 ! 130-130
	j	bge_cont.18096
bge_else.18095:
bge_cont.18096:
	lw	a2, sp, 24 ! 0-0
	addi	a2, a2, 4 ! 2261-2261
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18094:
	ret ! 2262-2262
bge_else.18091:
	ret ! 2262-2262
create_dirvec_elements.2884:
	lw	a2, a21, 4 ! 0-0
	li	a3, 0 ! 2277-2277
	blt	a1, a3, bge_else.18097 ! 2277-2280
	li	a3, 3 ! 2271-2271
	li	a4, l.12679 ! 2271-2271
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
	blt	a0, a1, bge_else.18098 ! 2277-2280
	li	a1, 3 ! 2271-2271
	li	a2, l.12679 ! 2271-2271
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
	blt	a0, a1, bge_else.18099 ! 2277-2280
	li	a1, 3 ! 2271-2271
	li	a2, l.12679 ! 2271-2271
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
	blt	a0, a1, bge_else.18100 ! 2277-2280
	li	a1, 3 ! 2271-2271
	li	a2, l.12679 ! 2271-2271
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
bge_else.18100:
	ret ! 2280-2280
bge_else.18099:
	ret ! 2280-2280
bge_else.18098:
	ret ! 2280-2280
bge_else.18097:
	ret ! 2280-2280
create_dirvecs.2887:
	lw	a1, a21, 12 ! 0-0
	lw	a2, a21, 8 ! 0-0
	lw	a3, a21, 4 ! 0-0
	li	a4, 0 ! 2284-2284
	blt	a0, a4, bge_else.18101 ! 2284-2288
	li	a4, 120 ! 2285-2285
	li	a5, 3 ! 2271-2271
	li	a6, l.12679 ! 2271-2271
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
	li	a4, l.12679 ! 2271-2271
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
	li	a2, l.12679 ! 2271-2271
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
	li	a2, l.12679 ! 2271-2271
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
	blt	a0, a1, bge_else.18102 ! 2284-2288
	li	a1, 120 ! 2285-2285
	li	a2, 3 ! 2271-2271
	li	a3, l.12679 ! 2271-2271
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
	li	a3, l.12679 ! 2271-2271
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
	li	a2, l.12679 ! 2271-2271
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
bge_else.18102:
	ret ! 2288-2288
bge_else.18101:
	ret ! 2288-2288
init_dirvec_constants.2889:
	lw	a2, a21, 12 ! 0-0
	lw	a3, a21, 8 ! 0-0
	lw	a4, a21, 4 ! 0-0
	li	a5, 0 ! 2296-2296
	blt	a1, a5, bge_else.18103 ! 2296-2299
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
	blt	a0, a1, bge_else.18104 ! 2296-2299
	slli	a1, a0, 2 ! 2297-2297
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 2297-2297
	lw	a1, t0, 0 ! 2297-2297
	lw	a3, sp, 12 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a0, 24 ! 0-0
	blt	a4, a5, bge_else.18105 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 8 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a1, 4 ! 544-545
	lw	a8, a1, 0 ! 538-539
	lw	a9, a5, 4 ! 252-257
	li	a10, 1 ! 1176-1176
	sw	sp, a1, 28 ! 0-0
	bne	a9, a10, beq_else.18107 ! 1176-1181
	sw	sp, a7, 32 ! 0-0
	sw	sp, a4, 36 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_rect_table.2662
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18108
beq_else.18107:
	li	a10, 2 ! 1178-1178
	bne	a9, a10, beq_else.18109 ! 1178-1181
	sw	sp, a7, 32 ! 0-0
	sw	sp, a4, 36 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_surface_table.2665
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18110
beq_else.18109:
	sw	sp, a7, 32 ! 0-0
	sw	sp, a4, 36 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	setup_second_table.2668
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 32 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18110:
beq_cont.18108:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 28 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	j	bge_cont.18106
bge_else.18105:
bge_cont.18106:
	lw	a0, sp, 24 ! 0-0
	addi	a0, a0, -1 ! 2298-2298
	li	a1, 0 ! 2296-2296
	blt	a0, a1, bge_else.18111 ! 2296-2299
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
	blt	a0, a1, bge_else.18112 ! 2296-2299
	slli	a1, a0, 2 ! 2297-2297
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 2297-2297
	lw	a1, t0, 0 ! 2297-2297
	lw	a3, sp, 12 ! 0-0
	lw	a3, a3, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	li	a4, 0 ! 1171-1171
	sw	sp, a0, 44 ! 0-0
	blt	a3, a4, bge_else.18113 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 8 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a5, a1, 4 ! 544-545
	lw	a6, a1, 0 ! 538-539
	lw	a7, a4, 4 ! 252-257
	li	a8, 1 ! 1176-1176
	sw	sp, a1, 48 ! 0-0
	bne	a7, a8, beq_else.18115 ! 1176-1181
	sw	sp, a5, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_rect_table.2662
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18116
beq_else.18115:
	li	a8, 2 ! 1178-1178
	bne	a7, a8, beq_else.18117 ! 1178-1181
	sw	sp, a5, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_surface_table.2665
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18118
beq_else.18117:
	sw	sp, a5, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a6
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_second_table.2668
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18118:
beq_cont.18116:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 48 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	bge_cont.18114
bge_else.18113:
bge_cont.18114:
	lw	a0, sp, 44 ! 0-0
	addi	a1, a0, -1 ! 2298-2298
	lw	a0, sp, 16 ! 0-0
	lw	a21, sp, 0 ! 0-0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.18112:
	ret ! 2299-2299
bge_else.18111:
	ret ! 2299-2299
bge_else.18104:
	ret ! 2299-2299
bge_else.18103:
	ret ! 2299-2299
init_vecset_constants.2892:
	lw	a1, a21, 20 ! 0-0
	lw	a2, a21, 16 ! 0-0
	lw	a3, a21, 12 ! 0-0
	lw	a4, a21, 8 ! 0-0
	lw	a5, a21, 4 ! 0-0
	li	a6, 0 ! 2303-2303
	blt	a0, a6, bge_else.18119 ! 2303-2306
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
	blt	a8, a9, bge_else.18120 ! 1171-1184
	slli	a9, a8, 2 ! 1172-1172
	add	t0, a1, a9 ! 1172-1172
	lw	a9, t0, 0 ! 1172-1172
	lw	a10, a7, 4 ! 544-545
	lw	a11, a7, 0 ! 538-539
	lw	a12, a9, 4 ! 252-257
	li	a13, 1 ! 1176-1176
	sw	sp, a7, 32 ! 0-0
	bne	a12, a13, beq_else.18122 ! 1176-1181
	sw	sp, a10, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_rect_table.2662
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 36 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18123
beq_else.18122:
	li	a13, 2 ! 1178-1178
	bne	a12, a13, beq_else.18124 ! 1178-1181
	sw	sp, a10, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_surface_table.2665
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 36 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18125
beq_else.18124:
	sw	sp, a10, 36 ! 0-0
	sw	sp, a8, 40 ! 0-0
	mv	a1, a9
	mv	a0, a11
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	setup_second_table.2668
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 36 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18125:
beq_cont.18123:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 32 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	j	bge_cont.18121
bge_else.18120:
bge_cont.18121:
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
	blt	a3, a4, bge_else.18126 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 16 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a6, a1, 4 ! 544-545
	lw	a7, a1, 0 ! 538-539
	lw	a8, a4, 4 ! 252-257
	li	a9, 1 ! 1176-1176
	sw	sp, a1, 44 ! 0-0
	bne	a8, a9, beq_else.18128 ! 1176-1181
	sw	sp, a6, 48 ! 0-0
	sw	sp, a3, 52 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_rect_table.2662
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 48 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18129
beq_else.18128:
	li	a9, 2 ! 1178-1178
	bne	a8, a9, beq_else.18130 ! 1178-1181
	sw	sp, a6, 48 ! 0-0
	sw	sp, a3, 52 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_surface_table.2665
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 48 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18131
beq_else.18130:
	sw	sp, a6, 48 ! 0-0
	sw	sp, a3, 52 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	setup_second_table.2668
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 48 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18131:
beq_cont.18129:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 44 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	j	bge_cont.18127
bge_else.18126:
bge_cont.18127:
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
	blt	a0, a1, bge_else.18132 ! 2303-2306
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
	blt	a3, a4, bge_else.18133 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 16 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a6, a1, 4 ! 544-545
	lw	a7, a1, 0 ! 538-539
	lw	a8, a4, 4 ! 252-257
	li	a9, 1 ! 1176-1176
	sw	sp, a1, 64 ! 0-0
	bne	a8, a9, beq_else.18135 ! 1176-1181
	sw	sp, a6, 68 ! 0-0
	sw	sp, a3, 72 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_rect_table.2662
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 68 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18136
beq_else.18135:
	li	a9, 2 ! 1178-1178
	bne	a8, a9, beq_else.18137 ! 1178-1181
	sw	sp, a6, 68 ! 0-0
	sw	sp, a3, 72 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_surface_table.2665
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 68 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18138
beq_else.18137:
	sw	sp, a6, 68 ! 0-0
	sw	sp, a3, 72 ! 0-0
	mv	a1, a4
	mv	a0, a7
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	setup_second_table.2668
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 68 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18138:
beq_cont.18136:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 64 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	j	bge_cont.18134
bge_else.18133:
bge_cont.18134:
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
	blt	a0, a1, bge_else.18139 ! 2303-2306
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
	blt	a4, a5, bge_else.18140 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 16 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a6, a3, 4 ! 544-545
	lw	a7, a3, 0 ! 538-539
	lw	a8, a5, 4 ! 252-257
	li	a9, 1 ! 1176-1176
	sw	sp, a3, 84 ! 0-0
	bne	a8, a9, beq_else.18142 ! 1176-1181
	sw	sp, a6, 88 ! 0-0
	sw	sp, a4, 92 ! 0-0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_rect_table.2662
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 88 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18143
beq_else.18142:
	li	a9, 2 ! 1178-1178
	bne	a8, a9, beq_else.18144 ! 1178-1181
	sw	sp, a6, 88 ! 0-0
	sw	sp, a4, 92 ! 0-0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_surface_table.2665
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 88 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18145
beq_else.18144:
	sw	sp, a6, 88 ! 0-0
	sw	sp, a4, 92 ! 0-0
	mv	a1, a5
	mv	a0, a7
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	setup_second_table.2668
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 88 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18145:
beq_cont.18143:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 84 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	j	bge_cont.18141
bge_else.18140:
bge_cont.18141:
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
	blt	a0, a1, bge_else.18146 ! 2303-2306
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
bge_else.18146:
	ret ! 2306-2306
bge_else.18139:
	ret ! 2306-2306
bge_else.18132:
	ret ! 2306-2306
bge_else.18119:
	ret ! 2306-2306
setup_rect_reflection.2903:
	lw	a2, a21, 24 ! 0-0
	lw	a3, a21, 20 ! 0-0
	lw	a4, a21, 16 ! 0-0
	lw	a5, a21, 12 ! 0-0
	lw	a6, a21, 8 ! 0-0
	lw	a7, a21, 4 ! 0-0
	slli	a0, a0, 2 ! 2330-2330
	lw	a8, a4, 0 ! 2331-2331
	li	a9, l.12683 ! 2332-2332
	flw	fa0, a9, 0 ! 2332-2332
	lw	a1, a1, 28 ! 360-365
	flw	fa1, a1, 0 ! 365-365
	fsub.s	fa0, fa0, fa1, rne ! 2332-2332
	flw	fa1, a6, 0 ! 2333-2333
	fneg.s	fa1, fa1 ! 2333-2333
	flw	fa2, a6, 4 ! 2334-2334
	fneg.s	fa2, fa2 ! 2334-2334
	flw	fa3, a6, 8 ! 2335-2335
	fneg.s	fa3, fa3 ! 2335-2335
	addi	a1, a0, 1 ! 2336-2336
	flw	fa4, a6, 0 ! 2336-2336
	li	a9, 3 ! 2271-2271
	li	a10, l.12679 ! 2271-2271
	flw	fa5, a10, 0 ! 2271-2271
	sw	sp, a4, 0 ! 0-0
	fsw	sp, fa1, 4 ! 0-0
	sw	sp, a6, 8 ! 0-0
	sw	sp, a0, 12 ! 0-0
	sw	sp, a2, 16 ! 0-0
	sw	sp, a8, 20 ! 0-0
	sw	sp, a1, 24 ! 0-0
	fsw	sp, fa0, 28 ! 0-0
	sw	sp, a7, 32 ! 0-0
	sw	sp, a3, 36 ! 0-0
	fsw	sp, fa3, 40 ! 0-0
	fsw	sp, fa2, 44 ! 0-0
	fsw	sp, fa4, 48 ! 0-0
	sw	sp, a5, 52 ! 0-0
	mv	a0, a9
	fmv.s	fa0, fa5
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_float_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	mv	a1, a0
	lw	a0, sp, 52 ! 0-0
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
	flw	fa0, sp, 48 ! 0-0
	fsw	a2, fa0, 0 ! 145-145
	flw	fa0, sp, 44 ! 0-0
	fsw	a2, fa0, 4 ! 146-146
	flw	fa1, sp, 40 ! 0-0
	fsw	a2, fa1, 8 ! 147-147
	lw	a3, sp, 52 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a1, 60 ! 0-0
	blt	a4, a5, bge_else.18147 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 36 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a5, 4 ! 252-257
	li	a8, 1 ! 1176-1176
	bne	a7, a8, beq_else.18149 ! 1176-1181
	sw	sp, a0, 64 ! 0-0
	sw	sp, a4, 68 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	setup_rect_table.2662
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 68 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 64 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18150
beq_else.18149:
	li	a8, 2 ! 1178-1178
	bne	a7, a8, beq_else.18151 ! 1178-1181
	sw	sp, a0, 64 ! 0-0
	sw	sp, a4, 68 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	setup_surface_table.2665
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 68 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 64 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18152
beq_else.18151:
	sw	sp, a0, 64 ! 0-0
	sw	sp, a4, 68 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	setup_second_table.2668
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a1, sp, 68 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 64 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18152:
beq_cont.18150:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 60 ! 0-0
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	j	bge_cont.18148
bge_else.18147:
bge_cont.18148:
	mv	a0, hp ! 2325-2325
	addi	hp, hp, 12 ! 2325-2325
	flw	fa0, sp, 28 ! 0-0
	fsw	a0, fa0, 8 ! 2325-2325
	lw	a1, sp, 60 ! 0-0
	sw	a0, a1, 4 ! 2325-2325
	lw	a1, sp, 24 ! 0-0
	sw	a0, a1, 0 ! 2325-2325
	lw	a1, sp, 20 ! 0-0
	slli	a2, a1, 2 ! 2325-2325
	lw	a3, sp, 16 ! 0-0
	add	t0, a3, a2 ! 2325-2325
	sw	t0, a0, 0 ! 2325-2325
	addi	a0, a1, 1 ! 2337-2337
	lw	a2, sp, 12 ! 0-0
	addi	a4, a2, 2 ! 2337-2337
	lw	a5, sp, 8 ! 0-0
	flw	fa1, a5, 4 ! 2337-2337
	li	a6, 3 ! 2271-2271
	li	a7, l.12679 ! 2271-2271
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
	lw	a0, sp, 52 ! 0-0
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
	flw	fa0, sp, 4 ! 0-0
	fsw	a2, fa0, 0 ! 145-145
	flw	fa1, sp, 80 ! 0-0
	fsw	a2, fa1, 4 ! 146-146
	flw	fa1, sp, 40 ! 0-0
	fsw	a2, fa1, 8 ! 147-147
	lw	a3, sp, 52 ! 0-0
	lw	a4, a3, 0 ! 1188-1188
	addi	a4, a4, -1 ! 1188-1188
	li	a5, 0 ! 1171-1171
	sw	sp, a1, 88 ! 0-0
	blt	a4, a5, bge_else.18153 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 36 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a5, 4 ! 252-257
	li	a8, 1 ! 1176-1176
	bne	a7, a8, beq_else.18155 ! 1176-1181
	sw	sp, a0, 92 ! 0-0
	sw	sp, a4, 96 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	setup_rect_table.2662
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 96 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 92 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18156
beq_else.18155:
	li	a8, 2 ! 1178-1178
	bne	a7, a8, beq_else.18157 ! 1178-1181
	sw	sp, a0, 92 ! 0-0
	sw	sp, a4, 96 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	setup_surface_table.2665
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 96 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 92 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18158
beq_else.18157:
	sw	sp, a0, 92 ! 0-0
	sw	sp, a4, 96 ! 0-0
	mv	a1, a5
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	setup_second_table.2668
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 96 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 92 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18158:
beq_cont.18156:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 88 ! 0-0
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	j	bge_cont.18154
bge_else.18153:
bge_cont.18154:
	mv	a0, hp ! 2325-2325
	addi	hp, hp, 12 ! 2325-2325
	flw	fa0, sp, 28 ! 0-0
	fsw	a0, fa0, 8 ! 2325-2325
	lw	a1, sp, 88 ! 0-0
	sw	a0, a1, 4 ! 2325-2325
	lw	a1, sp, 76 ! 0-0
	sw	a0, a1, 0 ! 2325-2325
	lw	a1, sp, 72 ! 0-0
	slli	a1, a1, 2 ! 2325-2325
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 2325-2325
	sw	t0, a0, 0 ! 2325-2325
	lw	a0, sp, 20 ! 0-0
	addi	a1, a0, 2 ! 2338-2338
	lw	a3, sp, 12 ! 0-0
	addi	a3, a3, 3 ! 2338-2338
	lw	a4, sp, 8 ! 0-0
	flw	fa1, a4, 8 ! 2338-2338
	li	a4, 3 ! 2271-2271
	li	a5, l.12679 ! 2271-2271
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
	lw	a0, sp, 52 ! 0-0
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
	flw	fa0, sp, 4 ! 0-0
	fsw	a2, fa0, 0 ! 145-145
	flw	fa0, sp, 44 ! 0-0
	fsw	a2, fa0, 4 ! 146-146
	flw	fa0, sp, 108 ! 0-0
	fsw	a2, fa0, 8 ! 147-147
	lw	a3, sp, 52 ! 0-0
	lw	a3, a3, 0 ! 1188-1188
	addi	a3, a3, -1 ! 1188-1188
	li	a4, 0 ! 1171-1171
	sw	sp, a1, 116 ! 0-0
	blt	a3, a4, bge_else.18159 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 36 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a5, a4, 4 ! 252-257
	li	a6, 1 ! 1176-1176
	bne	a5, a6, beq_else.18161 ! 1176-1181
	sw	sp, a0, 120 ! 0-0
	sw	sp, a3, 124 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	setup_rect_table.2662
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 124 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 120 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18162
beq_else.18161:
	li	a6, 2 ! 1178-1178
	bne	a5, a6, beq_else.18163 ! 1178-1181
	sw	sp, a0, 120 ! 0-0
	sw	sp, a3, 124 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	setup_surface_table.2665
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 124 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 120 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18164
beq_else.18163:
	sw	sp, a0, 120 ! 0-0
	sw	sp, a3, 124 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	setup_second_table.2668
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 124 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 120 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18164:
beq_cont.18162:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 116 ! 0-0
	lw	a21, sp, 32 ! 0-0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	j	bge_cont.18160
bge_else.18159:
bge_cont.18160:
	mv	a0, hp ! 2325-2325
	addi	hp, hp, 12 ! 2325-2325
	flw	fa0, sp, 28 ! 0-0
	fsw	a0, fa0, 8 ! 2325-2325
	lw	a1, sp, 116 ! 0-0
	sw	a0, a1, 4 ! 2325-2325
	lw	a1, sp, 104 ! 0-0
	sw	a0, a1, 0 ! 2325-2325
	lw	a1, sp, 100 ! 0-0
	slli	a1, a1, 2 ! 2325-2325
	lw	a2, sp, 16 ! 0-0
	add	t0, a2, a1 ! 2325-2325
	sw	t0, a0, 0 ! 2325-2325
	lw	a0, sp, 20 ! 0-0
	addi	a0, a0, 3 ! 2339-2339
	lw	a1, sp, 0 ! 0-0
	sw	a1, a0, 0 ! 2339-2339
	ret ! 2339-2339
setup_surface_reflection.2906:
	lw	a2, a21, 24 ! 0-0
	lw	a3, a21, 20 ! 0-0
	lw	a4, a21, 16 ! 0-0
	lw	a5, a21, 12 ! 0-0
	lw	a6, a21, 8 ! 0-0
	lw	a7, a21, 4 ! 0-0
	slli	a0, a0, 2 ! 2344-2344
	addi	a0, a0, 1 ! 2344-2344
	lw	a8, a4, 0 ! 2345-2345
	li	a9, l.12683 ! 2346-2346
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
	li	a9, l.12752 ! 2350-2350
	flw	fa2, a9, 0 ! 2350-2350
	lw	a9, a1, 16 ! 290-295
	flw	fa3, a9, 0 ! 295-295
	fmul.s	fa2, fa2, fa3, rne ! 2350-2350
	fmul.s	fa2, fa2, fa1, rne ! 2350-2350
	flw	fa3, a6, 0 ! 2350-2350
	fsub.s	fa2, fa2, fa3, rne ! 2350-2350
	li	a9, l.12752 ! 2351-2351
	flw	fa3, a9, 0 ! 2351-2351
	lw	a9, a1, 16 ! 300-305
	flw	fa4, a9, 4 ! 305-305
	fmul.s	fa3, fa3, fa4, rne ! 2351-2351
	fmul.s	fa3, fa3, fa1, rne ! 2351-2351
	flw	fa4, a6, 4 ! 2351-2351
	fsub.s	fa3, fa3, fa4, rne ! 2351-2351
	li	a9, l.12752 ! 2352-2352
	flw	fa4, a9, 0 ! 2352-2352
	lw	a1, a1, 16 ! 310-315
	flw	fa5, a1, 8 ! 315-315
	fmul.s	fa4, fa4, fa5, rne ! 2352-2352
	fmul.s	fa1, fa4, fa1, rne ! 2352-2352
	flw	fa4, a6, 8 ! 2352-2352
	fsub.s	fa1, fa1, fa4, rne ! 2352-2352
	li	a1, 3 ! 2271-2271
	li	a6, l.12679 ! 2271-2271
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
	blt	a3, a4, bge_else.18165 ! 1171-1184
	slli	a4, a3, 2 ! 1172-1172
	lw	a5, sp, 24 ! 0-0
	add	t0, a5, a4 ! 1172-1172
	lw	a4, t0, 0 ! 1172-1172
	lw	a5, a4, 4 ! 252-257
	li	a6, 1 ! 1176-1176
	bne	a5, a6, beq_else.18167 ! 1176-1181
	sw	sp, a0, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_rect_table.2662
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18168
beq_else.18167:
	li	a6, 2 ! 1178-1178
	bne	a5, a6, beq_else.18169 ! 1178-1181
	sw	sp, a0, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_surface_table.2665
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18170
beq_else.18169:
	sw	sp, a0, 52 ! 0-0
	sw	sp, a3, 56 ! 0-0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	setup_second_table.2668
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 52 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18170:
beq_cont.18168:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 48 ! 0-0
	lw	a21, sp, 20 ! 0-0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	j	bge_cont.18166
bge_else.18165:
bge_cont.18166:
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
rt.2911:
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
	li	a1, l.14509 ! 2386-2386
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
	li	a3, l.12679 ! 2173-2173
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
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
	addi	sp, sp, -124
	lw	ra, sp, 120
	sw	sp, a0, 120 ! 0-0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
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
	jal	init_line_elements.2855
	addi	sp, sp, -136
	lw	ra, sp, 132
	lw	a1, sp, 88 ! 0-0
	lw	a2, a1, 0 ! 2195-2195
	li	a3, 3 ! 2173-2173
	li	a4, l.12679 ! 2173-2173
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
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
	addi	sp, sp, -160
	lw	ra, sp, 156
	sw	sp, a0, 156 ! 0-0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
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
	jal	init_line_elements.2855
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 88 ! 0-0
	lw	a2, a1, 0 ! 2195-2195
	li	a3, 3 ! 2173-2173
	li	a4, l.12679 ! 2173-2173
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
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
	addi	sp, sp, -196
	lw	ra, sp, 192
	sw	sp, a0, 192 ! 0-0
	sw	sp, ra, 196
	addi	sp, sp, 200
	jal	create_float5x3array.2851
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
	jal	create_float5x3array.2851
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
	jal	init_line_elements.2855
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
	bne	a0, a1, beq_else.18171 ! 761-764
	lw	a0, sp, 208 ! 0-0
	lw	a1, sp, 72 ! 0-0
	sw	a1, a0, 0 ! 764-764
	j	beq_cont.18172
beq_else.18171:
	li	a0, 1 ! 762-762
	lw	a21, sp, 68 ! 0-0
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
beq_cont.18172:
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
	jal	read_or_network.2572
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
	blt	a4, a5, bge_else.18173 ! 1171-1184
	slli	a5, a4, 2 ! 1172-1172
	lw	a6, sp, 44 ! 0-0
	add	t0, a6, a5 ! 1172-1172
	lw	a5, t0, 0 ! 1172-1172
	lw	a7, a2, 4 ! 544-545
	lw	a8, a2, 0 ! 538-539
	lw	a9, a5, 4 ! 252-257
	li	a10, 1 ! 1176-1176
	sw	sp, a2, 216 ! 0-0
	bne	a9, a10, beq_else.18175 ! 1176-1181
	sw	sp, a7, 220 ! 0-0
	sw	sp, a4, 224 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 228
	addi	sp, sp, 232
	jal	setup_rect_table.2662
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a1, sp, 224 ! 0-0
	slli	a2, a1, 2 ! 1177-1177
	lw	a3, sp, 220 ! 0-0
	add	t0, a3, a2 ! 1177-1177
	sw	t0, a0, 0 ! 1177-1177
	j	beq_cont.18176
beq_else.18175:
	li	a10, 2 ! 1178-1178
	bne	a9, a10, beq_else.18177 ! 1178-1181
	sw	sp, a7, 220 ! 0-0
	sw	sp, a4, 224 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 228
	addi	sp, sp, 232
	jal	setup_surface_table.2665
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a1, sp, 224 ! 0-0
	slli	a2, a1, 2 ! 1179-1179
	lw	a3, sp, 220 ! 0-0
	add	t0, a3, a2 ! 1179-1179
	sw	t0, a0, 0 ! 1179-1179
	j	beq_cont.18178
beq_else.18177:
	sw	sp, a7, 220 ! 0-0
	sw	sp, a4, 224 ! 0-0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 228
	addi	sp, sp, 232
	jal	setup_second_table.2668
	addi	sp, sp, -232
	lw	ra, sp, 228
	lw	a1, sp, 224 ! 0-0
	slli	a2, a1, 2 ! 1181-1181
	lw	a3, sp, 220 ! 0-0
	add	t0, a3, a2 ! 1181-1181
	sw	t0, a0, 0 ! 1181-1181
beq_cont.18178:
beq_cont.18176:
	addi	a1, a1, -1 ! 1183-1183
	lw	a0, sp, 216 ! 0-0
	lw	a21, sp, 40 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	j	bge_cont.18174
bge_else.18173:
bge_cont.18174:
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
	blt	a0, a1, bge_else.18179 ! 2359-2372
	slli	a1, a0, 2 ! 2360-2360
	lw	a2, sp, 44 ! 0-0
	add	t0, a2, a1 ! 2360-2360
	lw	a1, t0, 0 ! 2360-2360
	lw	a2, a1, 8 ! 262-267
	li	a3, 2 ! 2361-2361
	bne	a2, a3, beq_else.18181 ! 2361-2371
	li	a2, l.12683 ! 2362-2362
	flw	fa0, a2, 0 ! 2362-2362
	lw	a2, a1, 28 ! 360-365
	flw	fa1, a2, 0 ! 365-365
	flt.s	t0, fa0, fa1 ! 2362-2370
	bne	zero, t0, beq_else.18183 ! 2362-2370
	lw	a2, a1, 4 ! 252-257
	li	a3, 1 ! 2365-2365
	bne	a2, a3, beq_else.18185 ! 2365-2369
	lw	a21, sp, 16 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	j	beq_cont.18186
beq_else.18185:
	li	a3, 2 ! 2367-2367
	bne	a2, a3, beq_else.18187 ! 2367-2369
	lw	a21, sp, 12 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	j	beq_cont.18188
beq_else.18187:
beq_cont.18188:
beq_cont.18186:
	j	beq_cont.18184
beq_else.18183:
beq_cont.18184:
	j	beq_cont.18182
beq_else.18181:
beq_cont.18182:
	j	bge_cont.18180
bge_else.18179:
bge_cont.18180:
	li	a1, 0 ! 2396-2396
	li	a2, 0 ! 2396-2396
	lw	a0, sp, 168 ! 0-0
	lw	a21, sp, 8 ! 0-0
	sw	sp, ra, 228
	addi	sp, sp, 232
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -232
	lw	ra, sp, 228
	li	a1, 0 ! 2397-2397
	li	a2, 2 ! 2397-2397
	lw	a0, sp, 88 ! 0-0
	lw	a3, a0, 4 ! 2144-2144
	blt	a1, a3, bge_else.18189 ! 2144-2151
	ret ! 2151-2151
bge_else.18189:
	lw	a0, a0, 4 ! 2146-2146
	addi	a0, a0, -1 ! 2146-2146
	sw	sp, a1, 228 ! 0-0
	blt	a1, a0, bge_else.18190 ! 2146-2148
	j	bge_cont.18191
bge_else.18190:
	li	a0, 1 ! 2147-2147
	lw	a3, sp, 204 ! 0-0
	lw	a21, sp, 8 ! 0-0
	mv	a1, a0
	mv	a0, a3
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
bge_cont.18191:
	li	a0, 0 ! 2149-2149
	lw	a1, sp, 228 ! 0-0
	lw	a2, sp, 132 ! 0-0
	lw	a3, sp, 168 ! 0-0
	lw	a4, sp, 204 ! 0-0
	lw	a21, sp, 4 ! 0-0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	li	a0, 1 ! 2150-2150
	li	a4, 4 ! 130-130
	lw	a1, sp, 168 ! 0-0
	lw	a2, sp, 204 ! 0-0
	lw	a3, sp, 132 ! 0-0
	lw	a21, sp, 0 ! 0-0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
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
	li	a2, l.12679 ! 27-27
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
	li	a2, l.12679 ! 31-31
	flw	fa0, a2, 0 ! 31-31
	sw	sp, a0, 4 ! 0-0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 3 ! 33-33
	li	a2, l.12679 ! 33-33
	flw	fa0, a2, 0 ! 33-33
	sw	sp, a0, 8 ! 0-0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_float_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 3 ! 35-35
	li	a2, l.12679 ! 35-35
	flw	fa0, a2, 0 ! 35-35
	sw	sp, a0, 12 ! 0-0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_float_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 1 ! 37-37
	li	a2, l.13427 ! 37-37
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
	li	a2, l.12679 ! 45-45
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
	li	a2, l.13332 ! 49-49
	flw	fa0, a2, 0 ! 49-49
	sw	sp, a0, 44 ! 0-0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_float_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 3 ! 51-51
	li	a2, l.12679 ! 51-51
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
	li	a2, l.12679 ! 55-55
	flw	fa0, a2, 0 ! 55-55
	sw	sp, a0, 56 ! 0-0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 3 ! 57-57
	li	a2, l.12679 ! 57-57
	flw	fa0, a2, 0 ! 57-57
	sw	sp, a0, 60 ! 0-0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_float_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 3 ! 60-60
	li	a2, l.12679 ! 60-60
	flw	fa0, a2, 0 ! 60-60
	sw	sp, a0, 64 ! 0-0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_create_float_array
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 3 ! 62-62
	li	a2, l.12679 ! 62-62
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
	li	a2, l.12679 ! 69-69
	flw	fa0, a2, 0 ! 69-69
	sw	sp, a0, 80 ! 0-0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_create_float_array
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 3 ! 72-72
	li	a2, l.12679 ! 72-72
	flw	fa0, a2, 0 ! 72-72
	sw	sp, a0, 84 ! 0-0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_create_float_array
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 3 ! 74-74
	li	a2, l.12679 ! 74-74
	flw	fa0, a2, 0 ! 74-74
	sw	sp, a0, 88 ! 0-0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_create_float_array
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 3 ! 77-77
	li	a2, l.12679 ! 77-77
	flw	fa0, a2, 0 ! 77-77
	sw	sp, a0, 92 ! 0-0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_create_float_array
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 3 ! 78-78
	li	a2, l.12679 ! 78-78
	flw	fa0, a2, 0 ! 78-78
	sw	sp, a0, 96 ! 0-0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_create_float_array
	addi	sp, sp, -104
	lw	ra, sp, 100
	li	a1, 3 ! 79-79
	li	a2, l.12679 ! 79-79
	flw	fa0, a2, 0 ! 79-79
	sw	sp, a0, 100 ! 0-0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_create_float_array
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 3 ! 82-82
	li	a2, l.12679 ! 82-82
	flw	fa0, a2, 0 ! 82-82
	sw	sp, a0, 104 ! 0-0
	mv	a0, a1
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_create_float_array
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 86-86
	li	a2, l.12679 ! 86-86
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
	li	a2, l.12679 ! 93-93
	flw	fa0, a2, 0 ! 93-93
	sw	sp, a0, 116 ! 0-0
	mv	a0, a1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_create_float_array
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a1, 3 ! 94-94
	li	a2, l.12679 ! 94-94
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
	li	a4, l.12679 ! 100-100
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
	li	a3, l.12679 ! 103-103
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
	li	a2, read_screen_settings.2557 ! 580-2404
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
	li	a7, read_light.2559 ! 613-2404
	sw	a6, a7, 0 ! 613-2404
	lw	a7, sp, 16 ! 0-0
	sw	a6, a7, 8 ! 613-2404
	lw	a8, sp, 20 ! 0-0
	sw	a6, a8, 4 ! 613-2404
	mv	a9, hp ! 676-2404
	addi	hp, hp, 8 ! 676-2404
	li	a10, read_nth_object.2564 ! 676-2404
	sw	a9, a10, 0 ! 676-2404
	lw	a10, sp, 4 ! 0-0
	sw	a9, a10, 4 ! 676-2404
	mv	a11, hp ! 759-2404
	addi	hp, hp, 12 ! 759-2404
	li	a12, read_object.2566 ! 759-2404
	sw	a11, a12, 0 ! 759-2404
	sw	a11, a9, 8 ! 759-2404
	lw	a12, sp, 0 ! 0-0
	sw	a11, a12, 4 ! 759-2404
	mv	a13, hp ! 792-2404
	addi	hp, hp, 8 ! 792-2404
	li	a14, read_and_network.2574 ! 792-2404
	sw	a13, a14, 0 ! 792-2404
	lw	a14, sp, 28 ! 0-0
	sw	a13, a14, 4 ! 792-2404
	mv	a15, hp ! 827-2404
	addi	hp, hp, 8 ! 827-2404
	li	a16, solver_rect_surface.2578 ! 827-2404
	sw	a15, a16, 0 ! 827-2404
	lw	a16, sp, 40 ! 0-0
	sw	a15, a16, 4 ! 827-2404
	mv	a17, hp ! 851-2404
	addi	hp, hp, 8 ! 851-2404
	li	a18, solver_surface.2593 ! 851-2404
	sw	a17, a18, 0 ! 851-2404
	sw	a17, a16, 4 ! 851-2404
	mv	a18, hp ! 903-2404
	addi	hp, hp, 8 ! 903-2404
	li	a19, solver_second.2612 ! 903-2404
	sw	a18, a19, 0 ! 903-2404
	sw	a18, a16, 4 ! 903-2404
	mv	a19, hp ! 932-2404
	addi	hp, hp, 20 ! 932-2404
	li	a20, solver.2618 ! 932-2404
	sw	a19, a20, 0 ! 932-2404
	sw	a19, a18, 16 ! 932-2404
	sw	a19, a15, 12 ! 932-2404
	sw	a19, a16, 8 ! 932-2404
	sw	a19, a10, 4 ! 932-2404
	mv	a20, hp ! 964-2404
	addi	hp, hp, 8 ! 964-2404
	li	a21, solver_rect_fast.2622 ! 964-2404
	sw	a20, a21, 0 ! 964-2404
	sw	a20, a16, 4 ! 964-2404
	mv	a21, hp ! 1006-2404
	addi	hp, hp, 8 ! 1006-2404
	sw	sp, a13, 144 ! 0-0
	li	a13, solver_second_fast.2635 ! 1006-2404
	sw	a21, a13, 0 ! 1006-2404
	sw	a21, a16, 4 ! 1006-2404
	mv	a13, hp ! 1054-2404
	addi	hp, hp, 8 ! 1054-2404
	sw	sp, a6, 148 ! 0-0
	li	a6, solver_second_fast2.2652 ! 1054-2404
	sw	a13, a6, 0 ! 1054-2404
	sw	a13, a16, 4 ! 1054-2404
	mv	a6, hp ! 1073-2404
	addi	hp, hp, 20 ! 1073-2404
	sw	sp, a9, 152 ! 0-0
	li	a9, solver_fast2.2659 ! 1073-2404
	sw	a6, a9, 0 ! 1073-2404
	sw	a6, a13, 16 ! 1073-2404
	sw	a6, a20, 12 ! 1073-2404
	sw	a6, a16, 8 ! 1073-2404
	sw	a6, a10, 4 ! 1073-2404
	mv	a9, hp ! 1170-2404
	addi	hp, hp, 8 ! 1170-2404
	sw	sp, a11, 156 ! 0-0
	li	a11, iter_setup_dirvec_constants.2671 ! 1170-2404
	sw	a9, a11, 0 ! 1170-2404
	sw	a9, a10, 4 ! 1170-2404
	mv	a11, hp ! 1195-2404
	addi	hp, hp, 8 ! 1195-2404
	sw	sp, a1, 160 ! 0-0
	li	a1, setup_startp_constants.2676 ! 1195-2404
	sw	a11, a1, 0 ! 1195-2404
	sw	a11, a10, 4 ! 1195-2404
	mv	a1, hp ! 1264-2404
	addi	hp, hp, 8 ! 1264-2404
	sw	sp, a9, 164 ! 0-0
	li	a9, check_all_inside.2701 ! 1264-2404
	sw	a1, a9, 0 ! 1264-2404
	sw	a1, a10, 4 ! 1264-2404
	mv	a9, hp ! 1284-2404
	addi	hp, hp, 40 ! 1284-2404
	li	a4, shadow_check_and_group.2707 ! 1284-2404
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
	li	a8, shadow_check_one_or_group.2710 ! 1314-2404
	sw	a2, a8, 0 ! 1314-2404
	sw	a2, a9, 8 ! 1314-2404
	sw	a2, a14, 4 ! 1314-2404
	mv	a8, hp ! 1329-2404
	addi	hp, hp, 44 ! 1329-2404
	li	a7, shadow_check_one_or_matrix.2713 ! 1329-2404
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
	li	a5, solve_each_element.2716 ! 1365-2404
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
	li	a12, solve_one_or_network.2720 ! 1406-2404
	sw	a4, a12, 0 ! 1406-2404
	sw	a4, a2, 8 ! 1406-2404
	sw	a4, a14, 4 ! 1406-2404
	mv	a12, hp ! 1416-2404
	addi	hp, hp, 48 ! 1416-2404
	sw	sp, a0, 168 ! 0-0
	li	a0, trace_or_matrix.2724 ! 1416-2404
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
	li	a2, solve_each_element_fast.2730 ! 1458-2404
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
	li	a4, solve_one_or_network_fast.2734 ! 1499-2404
	sw	a1, a4, 0 ! 1499-2404
	sw	a1, a0, 8 ! 1499-2404
	sw	a1, a14, 4 ! 1499-2404
	mv	a4, hp ! 1509-2404
	addi	hp, hp, 40 ! 1509-2404
	li	a15, trace_or_matrix_fast.2738 ! 1509-2404
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
	li	a15, judge_intersection_fast.2742 ! 1533-2404
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
	li	a6, get_nvector_second.2748 ! 1570-2404
	sw	a1, a6, 0 ! 1570-2404
	lw	a6, sp, 60 ! 0-0
	sw	a1, a6, 8 ! 1570-2404
	sw	a1, a3, 4 ! 1570-2404
	mv	a14, hp ! 1592-2404
	addi	hp, hp, 16 ! 1592-2404
	li	a15, get_nvector.2750 ! 1592-2404
	sw	a14, a15, 0 ! 1592-2404
	sw	a14, a6, 12 ! 1592-2404
	sw	a14, a9, 8 ! 1592-2404
	sw	a14, a1, 4 ! 1592-2404
	mv	a15, hp ! 1608-2404
	addi	hp, hp, 8 ! 1608-2404
	li	a16, utexture.2753 ! 1608-2404
	sw	a15, a16, 0 ! 1608-2404
	lw	a16, sp, 64 ! 0-0
	sw	a15, a16, 4 ! 1608-2404
	mv	a17, hp ! 1703-2404
	addi	hp, hp, 44 ! 1703-2404
	li	a18, trace_reflections.2760 ! 1703-2404
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
	li	a19, trace_ray.2765 ! 1732-2404
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
	li	a7, trace_diffuse_ray.2771 ! 1825-2404
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
	li	a5, iter_trace_diffuse_rays.2774 ! 1844-2404
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
	li	a5, trace_diffuse_ray_80percent.2783 ! 1870-2404
	sw	a3, a5, 0 ! 1870-2404
	sw	a3, a2, 20 ! 1870-2404
	sw	a3, a11, 16 ! 1870-2404
	sw	a3, a17, 12 ! 1870-2404
	sw	a3, a4, 8 ! 1870-2404
	lw	a5, sp, 116 ! 0-0
	sw	a3, a5, 4 ! 1870-2404
	mv	a6, hp ! 1896-2404
	addi	hp, hp, 36 ! 1896-2404
	li	a7, calc_diffuse_using_1point.2787 ! 1896-2404
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
	li	a8, calc_diffuse_using_5points.2790 ! 1915-2404
	sw	a7, a8, 0 ! 1915-2404
	sw	a7, a18, 8 ! 1915-2404
	sw	a7, a1, 4 ! 1915-2404
	mv	a8, hp ! 1935-2404
	addi	hp, hp, 20 ! 1935-2404
	li	a9, do_without_neighbors.2796 ! 1935-2404
	sw	a8, a9, 0 ! 1935-2404
	sw	a8, a3, 16 ! 1935-2404
	sw	a8, a18, 12 ! 1935-2404
	sw	a8, a1, 8 ! 1935-2404
	sw	a8, a6, 4 ! 1935-2404
	mv	a3, hp ! 1987-2404
	addi	hp, hp, 16 ! 1987-2404
	li	a9, try_exploit_neighbors.2812 ! 1987-2404
	sw	a3, a9, 0 ! 1987-2404
	sw	a3, a8, 12 ! 1987-2404
	sw	a3, a7, 8 ! 1987-2404
	sw	a3, a6, 4 ! 1987-2404
	mv	a9, hp ! 2034-2404
	addi	hp, hp, 8 ! 2034-2404
	li	a13, write_rgb.2823 ! 2034-2404
	sw	a9, a13, 0 ! 2034-2404
	sw	a9, a18, 4 ! 2034-2404
	mv	a13, hp ! 2051-2404
	addi	hp, hp, 32 ! 2051-2404
	li	a14, pretrace_diffuse_rays.2825 ! 2051-2404
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
	li	a15, pretrace_pixels.2828 ! 2081-2404
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
	li	a11, pretrace_line.2835 ! 2106-2404
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
	li	a13, scan_pixel.2839 ! 2122-2404
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
	li	a7, scan_line.2845 ! 2142-2404
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
	li	a7, calc_dirvec.2865 ! 2222-2404
	sw	a3, a7, 0 ! 2222-2404
	sw	a3, a5, 4 ! 2222-2404
	mv	a7, hp ! 2243-2404
	addi	hp, hp, 8 ! 2243-2404
	li	a8, calc_dirvecs.2873 ! 2243-2404
	sw	a7, a8, 0 ! 2243-2404
	sw	a7, a3, 4 ! 2243-2404
	mv	a3, hp ! 2257-2404
	addi	hp, hp, 8 ! 2257-2404
	li	a8, calc_dirvec_rows.2878 ! 2257-2404
	sw	a3, a8, 0 ! 2257-2404
	sw	a3, a7, 4 ! 2257-2404
	mv	a7, hp ! 2276-2404
	addi	hp, hp, 8 ! 2276-2404
	li	a8, create_dirvec_elements.2884 ! 2276-2404
	sw	a7, a8, 0 ! 2276-2404
	sw	a7, a17, 4 ! 2276-2404
	mv	a8, hp ! 2283-2404
	addi	hp, hp, 16 ! 2283-2404
	li	a9, create_dirvecs.2887 ! 2283-2404
	sw	a8, a9, 0 ! 2283-2404
	sw	a8, a17, 12 ! 2283-2404
	sw	a8, a5, 8 ! 2283-2404
	sw	a8, a7, 4 ! 2283-2404
	mv	a7, hp ! 2295-2404
	addi	hp, hp, 16 ! 2295-2404
	li	a9, init_dirvec_constants.2889 ! 2295-2404
	sw	a7, a9, 0 ! 2295-2404
	sw	a7, a10, 12 ! 2295-2404
	sw	a7, a17, 8 ! 2295-2404
	lw	a9, sp, 164 ! 0-0
	sw	a7, a9, 4 ! 2295-2404
	mv	a13, hp ! 2302-2404
	addi	hp, hp, 24 ! 2302-2404
	li	a14, init_vecset_constants.2892 ! 2302-2404
	sw	a13, a14, 0 ! 2302-2404
	sw	a13, a10, 20 ! 2302-2404
	sw	a13, a17, 16 ! 2302-2404
	sw	a13, a9, 12 ! 2302-2404
	sw	a13, a7, 8 ! 2302-2404
	sw	a13, a5, 4 ! 2302-2404
	mv	a14, hp ! 2329-2404
	addi	hp, hp, 28 ! 2329-2404
	li	a15, setup_rect_reflection.2903 ! 2329-2404
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
	li	a20, setup_surface_reflection.2906 ! 2343-2404
	sw	a18, a20, 0 ! 2343-2404
	sw	a18, a15, 24 ! 2343-2404
	sw	a18, a10, 20 ! 2343-2404
	sw	a18, a16, 16 ! 2343-2404
	sw	a18, a17, 12 ! 2343-2404
	sw	a18, a19, 8 ! 2343-2404
	sw	a18, a9, 4 ! 2343-2404
	mv	a21, hp ! 2380-2404
	addi	hp, hp, 104 ! 2380-2404
	li	a15, rt.2911 ! 2380-2404
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
