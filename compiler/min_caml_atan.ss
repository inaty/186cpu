	jal	zero, 576
	float	0.10000000000
	float	2.00000000000
	float	1.00000000000
	float	4.00000000000
	float	2.43750000000
	float	3.14159260000
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
	addi	a0, a0, 52
	flw	fa7, a0, 0
	fmul.s	fa2, fa7, fa2, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 44
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 40
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa5, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 36
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa6, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 32
	flw	fa2, a0, 0
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fsgnj.s	fa1, fa0, fa0
	fsw	sp, fa1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 488
	addi	sp, sp, -12
	lw	ra, sp, 8
	lui	a0, 0
	addi	a0, a0, 28
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 380
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 264
	lui	a0, 0
	addi	a0, a0, 24
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 20
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 316
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 92
	lui	a0, 0
	addi	a0, a0, 8
	flw	fa0, a0, 0
	flw	fa1, sp, 16
	fdiv.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 12
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fdiv.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -344
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 0
	fsgnj.s	fa0, fa0, fa1
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 16
	flw	fa0, a0, 0
	flw	fa1, sp, 16
	fdiv.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 12
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fsub.s	fa1, fa2, fa1, rne
	lui	a0, 0
	addi	a0, a0, 12
	flw	fa3, a0, 0
	fadd.s	fa2, fa2, fa3, rne
	fdiv.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -452
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 0
	fsgnj.s	fa0, fa0, fa1
	jalr	zero, ra, 0
	flw	fa0, sp, 8
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -496
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 0
	fsgnj.s	fa0, fa0, fa1
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 4
	flw	fa0, a0, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, -388
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 1728
	addi	sp, sp, -4
	lw	ra, sp, 0
	fin	0
	feq.s	a0, fa0, fa1
	jalr	zero, ra, 0
	flt.s	a0, fa0, fa1
	jalr	zero, ra, 0
	fcvt.s.w	ft0, zero, rne
	flt.s	a0, ft0, fa0
	jalr	zero, ra, 0
	fcvt.s.w	ft0, zero, rne
	flt.s	a0, fa0, ft0
	jalr	zero, ra, 0
	fcvt.s.w	ft0, zero, rne
	feq.s	a0, fa0, ft0
	jalr	zero, ra, 0
	lui	x31, 4096
	addi	x31, x31, -1092
	flw	ft0, x31, 0
	fmul.s	fa0, fa0, ft0, rne
	jalr	zero, ra, 0
	fmul.s	fa0, fa0, fa0, rne
	jalr	zero, ra, 0
	fsgnjx.s	fa0, fa0, fa0
	jalr	zero, ra, 0
	fsgnjn.s	fa0, fa0, fa0
	jalr	zero, ra, 0
	fsqrt.s	fa0, fa0, rne
	jalr	zero, ra, 0
	fcvt.w.s	t0, fa0, rdn
	fcvt.s.w	fa0, t0, rne
	jalr	zero, ra, 0
	fcvt.w.s	a0, fa0, rtz
	jalr	zero, ra, 0
	fcvt.s.w	fa0, a0, rne
	jalr	zero, ra, 0
	float	0.25000000000
	float	-1.00000000000
	float	0.00019587841
	float	0.00833282400
	float	0.16666668000
	float	0.00136950680
	float	0.04166368000
	float	1.00000000000
	float	0.50000000000
	float	3.14159260000
	float	2.00000000000
	flw	fa1, a21, 4
	sw	sp, a21, 0
	fsw	sp, fa0, 8
	fsgnj.s	fa26, fa1, fa1
	fsgnj.s	fa1, fa0, fa0
	fsgnj.s	fa0, fa26, fa26
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -200
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 36
	lui	a0, 0
	addi	a0, a0, 804
	flw	fa0, a0, 0
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	flw	fa0, sp, 8
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa2, a0, 0
	lui	a0, 0
	addi	a0, a0, 804
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fsw	sp, fa1, 0
	fsw	sp, fa0, 8
	fsgnj.s	fa1, fa2, fa2
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -308
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 84
	flw	fa0, sp, 8
	flw	fa1, sp, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -344
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 20
	flw	fa1, sp, 0
	flw	fa0, sp, 8
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, -116
	lui	a0, 0
	addi	a0, a0, 796
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa1, fa1, fa0, rne
	flw	fa0, sp, 8
	jal	zero, -144
	flw	fa0, sp, 8
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 804
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	addi	a21, hp, 0
	addi	hp, hp, 8
	lui	a0, 0
	addi	a0, a0, 808
	sw	a21, a0, 0
	fsw	a21, fa0, 4
	fsw	sp, fa0, 0
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 0
	jal	zero, -248
	fmul.s	fa0, fa0, fa0, rne
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 792
	flw	fa3, a0, 0
	lui	a0, 0
	addi	a0, a0, 796
	flw	fa4, a0, 0
	fmul.s	fa0, fa4, fa0, rne
	fsub.s	fa0, fa3, fa0, rne
	lui	a0, 0
	addi	a0, a0, 788
	flw	fa3, a0, 0
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 784
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	fsub.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	fmul.s	fa3, fa2, fa1, rne
	fmul.s	fa1, fa3, fa1, rne
	lui	a0, 0
	addi	a0, a0, 780
	flw	fa4, a0, 0
	fmul.s	fa2, fa4, fa2, rne
	fsub.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 776
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 0
	addi	a0, a0, 772
	flw	fa2, a0, 0
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fsgnj.s	fa1, fa0, fa0
	fsw	sp, fa1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -624
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -300
	addi	sp, sp, -12
	lw	ra, sp, 8
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -752
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 64
	lui	a0, 0
	addi	a0, a0, 768
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fsub.s	fa1, fa2, fa1, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa1, 4
	fsw	a0, fa0, 0
	jal	zero, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	flw	fa0, sp, 8
	fsw	a0, fa0, 4
	flw	fa0, sp, 0
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa2, a0, 0
	lui	a0, 0
	addi	a0, a0, 796
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fsw	sp, fa1, 16
	fsw	sp, fa0, 24
	fsgnj.s	fa1, fa2, fa2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -912
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 48
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fsub.s	fa0, fa0, fa1, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	flw	fa0, sp, 16
	fsw	a0, fa0, 0
	jal	zero, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	flw	fa0, sp, 24
	fsw	a0, fa0, 4
	flw	fa0, sp, 16
	fsw	a0, fa0, 0
	flw	fa1, a0, 4
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa2, a0, 0
	lui	a0, 0
	addi	a0, a0, 764
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 32
	fsw	sp, fa1, 40
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -1056
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 32
	flw	fa0, sp, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -488
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 60
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 796
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 40
	fsub.s	fa0, fa0, fa1, rne
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -636
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 32
	fsgnj.s	fa0, fa0, fa1
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 792
	flw	fa1, a0, 0
	fsw	sp, fa1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -1124
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -800
	addi	sp, sp, -12
	lw	ra, sp, 8
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -1252
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 64
	lui	a0, 0
	addi	a0, a0, 768
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fsub.s	fa1, fa2, fa1, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa1, 4
	fsw	a0, fa0, 0
	jal	zero, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	flw	fa0, sp, 8
	fsw	a0, fa0, 4
	flw	fa0, sp, 0
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa2, a0, 0
	lui	a0, 0
	addi	a0, a0, 796
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 16
	fsw	sp, fa1, 24
	fsgnj.s	fa1, fa2, fa2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -1412
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 64
	lui	a0, 0
	addi	a0, a0, 768
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa1, a0, 0
	flw	fa2, sp, 16
	fsub.s	fa1, fa1, fa2, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa1, 4
	fsw	a0, fa0, 0
	jal	zero, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	flw	fa0, sp, 16
	fsw	a0, fa0, 4
	flw	fa0, sp, 24
	fsw	a0, fa0, 0
	flw	fa1, a0, 4
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa2, a0, 0
	lui	a0, 0
	addi	a0, a0, 764
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 32
	fsw	sp, fa1, 40
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -1572
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 32
	flw	fa0, sp, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -1092
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 60
	lui	a0, 0
	addi	a0, a0, 800
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 796
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 40
	fsub.s	fa0, fa0, fa1, rne
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -1064
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 32
	fsgnj.s	fa0, fa0, fa1
	jalr	zero, ra, 0
	fatan.s	fa0, fa0, rne
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
	lw	a3, a21, 8
	lw	a4, a21, 4
	div	a5, a0, a4
	mul	a4, a5, a4
	sub	a0, a0, a4
	slli	a4, a2, 2
	add	t0, a1, a4
	sw	t0, a0, 0
	addi	a0, a2, 1
	bne	a5, a3, 8
	jalr	zero, ra, 0
	addi	a2, a0, 0
	addi	a0, a5, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a4, a21, 4
	blt	a1, a4, 44
	slli	a4, a1, 2
	add	t0, a0, a4
	lw	a4, t0, 0
	slli	a5, a3, 2
	add	t0, a2, a5
	sw	t0, a4, 0
	addi	a1, a1, -1
	addi	a3, a3, 1
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a2, a21, 8
	lw	a3, a21, 4
	blt	a1, a2, 8
	jalr	zero, ra, 0
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a2, t0, 0
	addi	a2, a2, 48
	sw	sp, a0, 0
	sw	sp, a21, 4
	sw	sp, a3, 8
	sw	sp, a1, 12
	addi	a0, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -244
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 8
	lw	a1, sp, 12
	add	a1, a1, a0
	lw	a0, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 48
	jal	zero, -296
	sw	sp, a1, 0
	blt	a1, a0, 48
	addi	a2, zero, 45
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -328
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4
	sub	a0, zero, a0
	jal	zero, 4
	addi	a1, zero, 10
	lw	a2, sp, 0
	sw	sp, a0, 8
	sw	sp, a1, 12
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -368
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, a0, 0
	addi	a21, hp, 0
	addi	hp, hp, 16
	lui	a0, 4096
	addi	a0, a0, -1688
	sw	a21, a0, 0
	lw	a2, sp, 0
	sw	a21, a2, 8
	lw	a0, sp, 12
	sw	a21, a0, 4
	lw	a3, sp, 8
	sw	sp, a1, 16
	addi	a0, a3, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12
	lw	a2, sp, 0
	sw	sp, a0, 20
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -484
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a2, a0, 0
	addi	a21, hp, 0
	addi	hp, hp, 8
	lui	a0, 4096
	addi	a0, a0, -1628
	sw	a21, a0, 0
	lw	a3, sp, 0
	sw	a21, a3, 4
	addi	a0, zero, 1
	lw	a1, sp, 20
	addi	a4, a1, -1
	lw	a5, sp, 16
	sw	sp, a2, 24
	sw	sp, a0, 28
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a21, hp, 0
	addi	hp, hp, 16
	lui	a0, 4096
	addi	a0, a0, -1576
	sw	a21, a0, 0
	lw	a0, sp, 20
	sw	a21, a0, 8
	lw	a0, sp, 28
	sw	a21, a0, 4
	lw	a0, sp, 24
	lw	a1, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	t0, zero, 10
	out	zero, t0, 0
	jalr	zero, ra, 0
	jal	zero, -2252
	float	0.5
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
