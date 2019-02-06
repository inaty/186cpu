	lui	sp, 102400
	addi	sp, sp, 0
	lui	hp, 204800
	addi	hp, hp, 0
	lui	ap, 1228800
	addi	ap, ap, 0
	jal	zero, 284
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a1, zero, 1
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a1, a0, -1
	addi	a2, zero, 0
	sw	sp, a0, 0
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 96
	addi	a2, zero, 1
	bne	a1, a2, 12
	addi	a0, zero, 1
	jal	zero, 80
	addi	a2, a1, -1
	sw	sp, a1, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -92
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	addi	a1, a1, -2
	sw	sp, a0, 8
	addi	a0, a1, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -128
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8
	add	a0, a1, a0
	lw	a1, sp, 0
	addi	a1, a1, -2
	addi	a2, zero, 0
	sw	sp, a0, 12
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 96
	addi	a2, zero, 1
	bne	a1, a2, 12
	addi	a0, zero, 1
	jal	zero, 80
	addi	a2, a1, -1
	sw	sp, a1, 16
	addi	a0, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -212
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	addi	a1, a1, -2
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -248
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	add	a0, a1, a0
	lw	a1, sp, 12
	add	a0, a1, a0
	jalr	zero, ra, 0
	addi	a0, zero, 5
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, -292
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, zero, 4
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -324
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	add	a0, a1, a0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 1884
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 1936
	addi	sp, sp, -8
	lw	ra, sp, 4
	fin	0
	float	0.10000000000
	float	0.78539815000
	float	1.57079630000
	float	-1.00000000000
	float	3.14159260000
	float	0.00019587841
	float	0.00833282400
	float	0.16666668000
	float	0.00136950680
	float	0.04166368000
	float	1.00000000000
	float	0.50000000000
	float	6.28318520000
	float	2.00000000000
	flw	fa1, a21, 4
	flt.s	t0, fa0, fa1
	bne	zero, t0, 8
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 468
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lui	a0, 0
	addi	a0, a0, 464
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa0
	bne	zero, t0, 8
	jalr	zero, ra, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 24
	lui	a0, 0
	addi	a0, a0, 460
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	jal	zero, -48
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, -56
	lui	a0, 0
	addi	a0, a0, 464
	flw	fa1, a0, 0
	addi	a21, hp, 0
	addi	hp, hp, 8
	lui	a0, 0
	addi	a0, a0, 472
	sw	a21, a0, 0
	fsw	a21, fa0, 4
	fsw	sp, fa0, 0
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 4
	addi	sp, sp, 8
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -8
	lw	ra, sp, 4
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 0
	jal	zero, -136
	fmul.s	fa0, fa0, fa0, rne
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 456
	flw	fa3, a0, 0
	lui	a0, 0
	addi	a0, a0, 460
	flw	fa4, a0, 0
	fmul.s	fa0, fa4, fa0, rne
	fsub.s	fa0, fa3, fa0, rne
	lui	a0, 0
	addi	a0, a0, 452
	flw	fa3, a0, 0
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 448
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	fsub.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	fmul.s	fa3, fa2, fa1, rne
	fmul.s	fa1, fa3, fa1, rne
	lui	a0, 0
	addi	a0, a0, 444
	flw	fa4, a0, 0
	fmul.s	fa2, fa4, fa2, rne
	fsub.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 440
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 436
	flw	fa2, a0, 0
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fsgnjx.s	fa1, fa0, fa0
	fsw	sp, fa0, 0
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -268
	addi	sp, sp, -8
	lw	ra, sp, 4
	lui	a0, 0
	addi	a0, a0, 432
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	flw	fa0, sp, 0
	fsw	a0, fa0, 0
	jal	zero, 56
	lui	a0, 0
	addi	a0, a0, 428
	flw	fa1, a0, 0
	flw	fa2, sp, 0
	fmul.s	fa1, fa2, fa1, rne
	lui	a0, 0
	addi	a0, a0, 432
	flw	fa2, a0, 0
	fsub.s	fa0, fa0, fa2, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 424
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa0
	bne	zero, t0, 24
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	jal	zero, 36
	lui	a0, 0
	addi	a0, a0, 432
	flw	fa2, a0, 0
	fsub.s	fa0, fa2, fa0, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 420
	flw	fa2, a0, 0
	fsw	sp, fa1, 4
	flt.s	t0, fa0, fa2
	bne	zero, t0, 44
	lui	a0, 0
	addi	a0, a0, 424
	flw	fa2, a0, 0
	fsub.s	fa0, fa2, fa0, rne
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -432
	addi	sp, sp, -12
	lw	ra, sp, 8
	jal	zero, 24
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -368
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 4
	fsgnj.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 456
	flw	fa1, a0, 0
	fsgnjx.s	fa0, fa0, fa0
	fsw	sp, fa1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -588
	addi	sp, sp, -8
	lw	ra, sp, 4
	lui	a0, 0
	addi	a0, a0, 432
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	flw	fa0, sp, 0
	fsw	a0, fa0, 0
	jal	zero, 48
	lui	a0, 0
	addi	a0, a0, 428
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 432
	flw	fa2, a0, 0
	fsub.s	fa0, fa0, fa2, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 424
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa0
	bne	zero, t0, 24
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	jal	zero, 52
	lui	a0, 0
	addi	a0, a0, 428
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	lui	a0, 0
	addi	a0, a0, 432
	flw	fa2, a0, 0
	fsub.s	fa0, fa2, fa0, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 420
	flw	fa2, a0, 0
	fsw	sp, fa1, 4
	flt.s	t0, fa0, fa2
	bne	zero, t0, 44
	lui	a0, 0
	addi	a0, a0, 424
	flw	fa2, a0, 0
	fsub.s	fa0, fa2, fa0, rne
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -672
	addi	sp, sp, -12
	lw	ra, sp, 8
	jal	zero, 24
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -784
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 4
	fsgnj.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	float	0.10000000000
	float	1.57079630000
	float	1.00000000000
	float	0.78539815000
	float	2.43750000000
	float	0.43750000000
	float	0.60035485000
	float	-0.08976446000
	float	0.11111110400
	float	-0.14285714200
	float	0.20000000000
	float	-0.33333330000
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	fmul.s	fa3, fa2, fa1, rne
	fmul.s	fa4, fa3, fa1, rne
	fmul.s	fa5, fa4, fa1, rne
	fmul.s	fa6, fa5, fa1, rne
	fmul.s	fa1, fa6, fa1, rne
	lui	a0, 0
	addi	a0, a0, 1504
	flw	fa7, a0, 0
	fmul.s	fa2, fa7, fa2, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 1500
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 1496
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 1492
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa5, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 1488
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa6, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 1484
	flw	fa2, a0, 0
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fsgnjx.s	fa1, fa0, fa0
	lui	a0, 0
	addi	a0, a0, 1480
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa1
	bne	zero, t0, 44
	fsw	sp, fa0, 0
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -192
	addi	sp, sp, -8
	lw	ra, sp, 4
	flw	fa1, sp, 0
	fsgnj.s	fa0, fa0, fa1
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 1476
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa1
	bne	zero, t0, 104
	lui	a0, 0
	addi	a0, a0, 1472
	flw	fa2, a0, 0
	lui	a0, 0
	addi	a0, a0, 1468
	flw	fa3, a0, 0
	fsub.s	fa3, fa1, fa3, rne
	lui	a0, 0
	addi	a0, a0, 1468
	flw	fa4, a0, 0
	fadd.s	fa1, fa1, fa4, rne
	fdiv.s	fa1, fa3, fa1, rne
	fsw	sp, fa0, 0
	fsw	sp, fa2, 4
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -304
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 4
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 0
	fsgnj.s	fa0, fa0, fa1
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 1464
	flw	fa2, a0, 0
	lui	a0, 0
	addi	a0, a0, 1468
	flw	fa3, a0, 0
	fdiv.s	fa1, fa3, fa1, rne
	fsw	sp, fa0, 0
	fsw	sp, fa2, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -384
	addi	sp, sp, -16
	lw	ra, sp, 12
	flw	fa1, sp, 8
	fsub.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 0
	fsgnj.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	out	zero, a0, 0
	jalr	zero, ra, 0
	printfloat	zero, fa0, rne
	jalr	zero, ra, 0
	slli	a0, a0, 2
	add	t0, ap, a0
	addi	a0, ap, 0
	sw	ap, a1, 0
	addi	ap, ap, 4
	blt	ap, t0, -8
	jalr	zero, ra, 0
	slli	a0, a0, 2
	add	t0, ap, a0
	addi	a0, ap, 0
	fsw	ap, fa0, 0
	addi	ap, ap, 4
	blt	ap, t0, -8
	jalr	zero, ra, 0
	slli	a1, a0, 3
	slli	a0, a0, 1
	add	a0, a1, a0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	addi	a3, a0, 1
	bne	a3, a1, 8
	jalr	zero, ra, 0
	add	a3, a0, a1
	srli	a3, a3, 1
	sw	sp, a0, 0
	sw	sp, a1, 4
	sw	sp, a3, 8
	sw	sp, a21, 12
	sw	sp, a2, 16
	addi	a0, a3, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -72
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	blt	a1, a0, 24
	lw	a0, sp, 8
	lw	a1, sp, 4
	lw	a21, sp, 12
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a0, sp, 0
	lw	a1, sp, 8
	lw	a21, sp, 12
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a21, hp, 0
	addi	hp, hp, 8
	lui	a1, 0
	addi	a1, a1, 2012
	sw	a21, a1, 0
	sw	a21, a0, 4
	addi	a0, zero, 0
	lui	a1, 99999744
	addi	a1, a1, 256
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -68
	addi	sp, sp, -8
	lw	ra, sp, 4
	slli	a1, a0, 3
	slli	a2, a0, 1
	add	a1, a1, a2
	lw	a2, sp, 0
	sub	a1, a2, a1
	sw	sp, a1, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -68
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	addi	a0, a0, 48
	jal	zero, -336
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 48
	jal	zero, -352
	addi	a1, zero, 0
	blt	a1, a0, 48
	addi	a1, zero, 45
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -384
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	sub	a0, zero, a0
	jal	zero, 4
	jal	zero, -160
	addi	t0, zero, 10
	out	zero, t0, 0
	jalr	zero, ra, 0
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	jalr	zero, ra, 0
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	fmv.w.x	fa0, t0
	jalr	zero, ra, 0
