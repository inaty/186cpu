	lui	sp, 102400
	addi	sp, sp, 0
	lui	hp, 204800
	addi	hp, hp, 0
	lui	ap, 1228800
	addi	ap, ap, 0
	jal	zero, 45144
	float	128.00000000000
	float	0.90000000000
	float	0.20000000000
	float	150.00000000000
	float	-150.00000000000
	float	0.10000000000
	float	-2.00000000000
	float	0.00390625000
	float	100000000.00000000000
	float	1000000000.00000000000
	float	20.00000000000
	float	0.05000000000
	float	0.25000000000
	float	10.00000000000
	float	0.30000000000
	float	255.00000000000
	float	0.15000000000
	float	3.14159270000
	float	30.00000000000
	float	15.00000000000
	float	0.00010000000
	float	-0.10000000000
	float	0.01000000000
	float	-0.20000000000
	float	0.50000000000
	float	2.00000000000
	float	-200.00000000000
	float	200.00000000000
	float	0.01745329300
	float	1.00000000000
	float	-1.00000000000
	float	0.00000000000
	flw	fa0, a0, 0
	fmul.s	fa0, fa0, fa0, rne
	flw	fa1, a0, 4
	fmul.s	fa1, fa1, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	fmul.s	fa1, fa1, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsqrt.s	fa0, fa0, rne
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa1, a2, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 52
	addi	a2, zero, 0
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 20
	lui	a1, 0
	addi	a1, a1, 148
	flw	fa1, a1, 0
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa0, a1, 0
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	fsw	a0, fa1, 0
	flw	fa1, a0, 4
	fmul.s	fa1, fa1, fa0, rne
	fsw	a0, fa1, 4
	flw	fa1, a0, 8
	fmul.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	flw	fa0, a0, 0
	flw	fa1, a1, 0
	flw	fa2, a2, 0
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	flw	fa0, a0, 8
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	lw	a0, a21, 12
	lw	a1, a21, 8
	lw	a2, a21, 4
	lui	a3, 53248
	addi	a3, a3, 96
	sw	sp, a1, 0
	sw	sp, a2, 4
	sw	sp, a0, 8
	sw	sp, a3, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 49988
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12
	fsw	a0, fa0, 0
	lui	a0, 53248
	addi	a0, a0, 96
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 49948
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 4
	lui	a0, 53248
	addi	a0, a0, 96
	sw	sp, a0, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 49908
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	fsw	a0, fa0, 8
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 49880
	addi	sp, sp, -28
	lw	ra, sp, 24
	lui	a0, 0
	addi	a0, a0, 140
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 48592
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24
	fsw	sp, fa0, 28
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 48248
	addi	sp, sp, -36
	lw	ra, sp, 32
	fsw	sp, fa0, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 49784
	addi	sp, sp, -40
	lw	ra, sp, 36
	lui	a0, 0
	addi	a0, a0, 140
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 36
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 48496
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 36
	fsw	sp, fa0, 40
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 48152
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 28
	fmul.s	fa2, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 136
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	lw	a0, sp, 8
	fsw	a0, fa2, 0
	lui	a1, 0
	addi	a1, a1, 132
	flw	fa2, a1, 0
	flw	fa3, sp, 32
	fmul.s	fa2, fa3, fa2, rne
	fsw	a0, fa2, 4
	flw	fa2, sp, 40
	fmul.s	fa4, fa1, fa2, rne
	lui	a1, 0
	addi	a1, a1, 136
	flw	fa5, a1, 0
	fmul.s	fa4, fa4, fa5, rne
	fsw	a0, fa4, 8
	lw	a1, sp, 4
	fsw	a1, fa2, 0
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa4, a2, 0
	fsw	a1, fa4, 4
	fsgnjn.s	fa4, fa0, fa0
	fsw	a1, fa4, 8
	fsgnjn.s	fa4, fa3, fa3
	fmul.s	fa0, fa4, fa0, rne
	lw	a1, sp, 0
	fsw	a1, fa0, 0
	fsgnjn.s	fa0, fa1, fa1
	fsw	a1, fa0, 4
	fsgnjn.s	fa0, fa3, fa3
	fmul.s	fa0, fa0, fa2, rne
	fsw	a1, fa0, 8
	lui	a1, 53248
	addi	a1, a1, 108
	lui	a2, 53248
	addi	a2, a2, 96
	flw	fa0, a2, 0
	flw	fa1, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	fsw	a1, fa0, 0
	lui	a1, 53248
	addi	a1, a1, 108
	lui	a2, 53248
	addi	a2, a2, 96
	flw	fa0, a2, 4
	flw	fa1, a0, 4
	fsub.s	fa0, fa0, fa1, rne
	fsw	a1, fa0, 4
	lui	a1, 53248
	addi	a1, a1, 108
	lui	a2, 53248
	addi	a2, a2, 96
	flw	fa0, a2, 8
	flw	fa1, a0, 8
	fsub.s	fa0, fa0, fa1, rne
	fsw	a1, fa0, 8
	jalr	zero, ra, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 49408
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 49420
	addi	sp, sp, -4
	lw	ra, sp, 0
	lui	a0, 0
	addi	a0, a0, 140
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 47820
	addi	sp, sp, -8
	lw	ra, sp, 4
	lui	a0, 53248
	addi	a0, a0, 120
	fsgnjn.s	fa0, fa0, fa0
	fsw	a0, fa0, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 49344
	addi	sp, sp, -8
	lw	ra, sp, 4
	lui	a0, 0
	addi	a0, a0, 140
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 0
	fsw	sp, fa0, 4
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 48048
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 4
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 47704
	addi	sp, sp, -16
	lw	ra, sp, 12
	lui	a0, 53248
	addi	a0, a0, 120
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 0
	flw	fa0, sp, 4
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 47972
	addi	sp, sp, -16
	lw	ra, sp, 12
	lui	a0, 53248
	addi	a0, a0, 120
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 8
	lui	a0, 53248
	addi	a0, a0, 132
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 49168
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12
	fsw	a0, fa0, 0
	jalr	zero, ra, 0
	flw	fa0, a1, 0
	sw	sp, a0, 0
	sw	sp, a1, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 47876
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 47528
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 12
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 47804
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 47456
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4
	flw	fa1, a0, 8
	fsw	sp, fa0, 20
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 47732
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4
	flw	fa1, a0, 8
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 47384
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24
	flw	fa2, sp, 16
	fmul.s	fa3, fa2, fa1, rne
	flw	fa4, sp, 20
	flw	fa5, sp, 12
	fmul.s	fa6, fa5, fa4, rne
	fmul.s	fa6, fa6, fa1, rne
	flw	fa7, sp, 8
	fmul.s	fa8, fa7, fa0, rne
	fsub.s	fa6, fa6, fa8, rne
	fmul.s	fa8, fa7, fa4, rne
	fmul.s	fa8, fa8, fa1, rne
	fmul.s	fa9, fa5, fa0, rne
	fadd.s	fa8, fa8, fa9, rne
	fmul.s	fa9, fa2, fa0, rne
	fmul.s	fa10, fa5, fa4, rne
	fmul.s	fa10, fa10, fa0, rne
	fmul.s	fa11, fa7, fa1, rne
	fadd.s	fa10, fa10, fa11, rne
	fmul.s	fa11, fa7, fa4, rne
	fmul.s	fa0, fa11, fa0, rne
	fmul.s	fa1, fa5, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	fsgnjn.s	fa1, fa4, fa4
	fmul.s	fa4, fa5, fa2, rne
	fmul.s	fa2, fa7, fa2, rne
	lw	a0, sp, 0
	flw	fa5, a0, 0
	flw	fa7, a0, 4
	flw	fa11, a0, 8
	fmul.s	fa12, fa3, fa3, rne
	fmul.s	fa12, fa5, fa12, rne
	fmul.s	fa13, fa9, fa9, rne
	fmul.s	fa13, fa7, fa13, rne
	fadd.s	fa12, fa12, fa13, rne
	fmul.s	fa13, fa1, fa1, rne
	fmul.s	fa13, fa11, fa13, rne
	fadd.s	fa12, fa12, fa13, rne
	fsw	a0, fa12, 0
	fmul.s	fa12, fa6, fa6, rne
	fmul.s	fa12, fa5, fa12, rne
	fmul.s	fa13, fa10, fa10, rne
	fmul.s	fa13, fa7, fa13, rne
	fadd.s	fa12, fa12, fa13, rne
	fmul.s	fa13, fa4, fa4, rne
	fmul.s	fa13, fa11, fa13, rne
	fadd.s	fa12, fa12, fa13, rne
	fsw	a0, fa12, 4
	fmul.s	fa12, fa8, fa8, rne
	fmul.s	fa12, fa5, fa12, rne
	fmul.s	fa13, fa0, fa0, rne
	fmul.s	fa13, fa7, fa13, rne
	fadd.s	fa12, fa12, fa13, rne
	fmul.s	fa13, fa2, fa2, rne
	fmul.s	fa13, fa11, fa13, rne
	fadd.s	fa12, fa12, fa13, rne
	fsw	a0, fa12, 8
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa12, a0, 0
	fmul.s	fa13, fa5, fa6, rne
	fmul.s	fa13, fa13, fa8, rne
	fmul.s	fa14, fa7, fa10, rne
	fmul.s	fa14, fa14, fa0, rne
	fadd.s	fa13, fa13, fa14, rne
	fmul.s	fa14, fa11, fa4, rne
	fmul.s	fa14, fa14, fa2, rne
	fadd.s	fa13, fa13, fa14, rne
	fmul.s	fa12, fa12, fa13, rne
	lw	a0, sp, 4
	fsw	a0, fa12, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa12, a1, 0
	fmul.s	fa13, fa5, fa3, rne
	fmul.s	fa8, fa13, fa8, rne
	fmul.s	fa13, fa7, fa9, rne
	fmul.s	fa0, fa13, fa0, rne
	fadd.s	fa0, fa8, fa0, rne
	fmul.s	fa8, fa11, fa1, rne
	fmul.s	fa2, fa8, fa2, rne
	fadd.s	fa0, fa0, fa2, rne
	fmul.s	fa0, fa12, fa0, rne
	fsw	a0, fa0, 4
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	fmul.s	fa2, fa5, fa3, rne
	fmul.s	fa2, fa2, fa6, rne
	fmul.s	fa3, fa7, fa9, rne
	fmul.s	fa3, fa3, fa10, rne
	fadd.s	fa2, fa2, fa3, rne
	fmul.s	fa1, fa11, fa1, rne
	fmul.s	fa1, fa1, fa4, rne
	fadd.s	fa1, fa2, fa1, rne
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 48496
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, -1
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 48456
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 48432
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 48408
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 16
	addi	a0, a1, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 47984
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, a0, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 48372
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	fsw	a0, fa0, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 48344
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	fsw	a0, fa0, 4
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 48316
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	fsw	a0, fa0, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 47856
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 48244
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 48216
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 48188
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 8
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	fsw	sp, fa0, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 48144
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 28
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 2
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 32
	addi	a0, a1, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 47664
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 48052
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36
	fsw	a0, fa0, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 48024
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36
	fsw	a0, fa0, 4
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 47564
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 47952
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 47924
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 4
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 47896
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 47436
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	lw	a2, sp, 16
	bne	a2, a1, 8
	jal	zero, 140
	sw	sp, a0, 44
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 47808
	addi	sp, sp, -52
	lw	ra, sp, 48
	lui	a0, 0
	addi	a0, a0, 140
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 44
	fsw	a0, fa0, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 47764
	addi	sp, sp, -52
	lw	ra, sp, 48
	lui	a0, 0
	addi	a0, a0, 140
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 44
	fsw	a0, fa0, 4
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 47720
	addi	sp, sp, -52
	lw	ra, sp, 48
	lui	a0, 0
	addi	a0, a0, 140
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 44
	fsw	a0, fa0, 8
	addi	a1, zero, 2
	lw	a2, sp, 8
	bne	a2, a1, 12
	addi	a1, zero, 1
	jal	zero, 8
	lw	a1, sp, 32
	addi	a3, zero, 4
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	sw	sp, a1, 48
	sw	sp, a0, 44
	addi	a0, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 47212
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, hp, 0
	addi	hp, hp, 44
	sw	a1, a0, 40
	lw	a0, sp, 44
	sw	a1, a0, 36
	lw	a2, sp, 40
	sw	a1, a2, 32
	lw	a2, sp, 36
	sw	a1, a2, 28
	lw	a2, sp, 48
	sw	a1, a2, 24
	lw	a2, sp, 24
	sw	a1, a2, 20
	lw	a2, sp, 20
	sw	a1, a2, 16
	lw	a3, sp, 16
	sw	a1, a3, 12
	lw	a4, sp, 12
	sw	a1, a4, 8
	lw	a4, sp, 8
	sw	a1, a4, 4
	lw	a5, sp, 4
	sw	a1, a5, 0
	lui	a5, 49152
	addi	a5, a5, 1312
	lw	a6, sp, 0
	slli	a6, a6, 2
	add	t0, a5, a6
	sw	t0, a1, 0
	addi	a1, zero, 3
	bne	a4, a1, 416
	flw	fa0, a2, 0
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 100
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 56
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 20
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 148
	flw	fa1, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa0, rne
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	fsw	a2, fa0, 0
	flw	fa0, a2, 4
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 100
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 56
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 20
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 148
	flw	fa1, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa0, rne
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	fsw	a2, fa0, 4
	flw	fa0, a2, 8
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 100
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 56
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 20
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 148
	flw	fa1, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa0, rne
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	fsw	a2, fa0, 8
	jal	zero, 64
	addi	a1, zero, 2
	bne	a4, a1, 56
	addi	a1, zero, 0
	lw	a4, sp, 32
	bne	a4, a1, 12
	addi	a1, zero, 1
	jal	zero, 8
	addi	a1, zero, 0
	addi	a0, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, -3232
	addi	sp, sp, -56
	lw	ra, sp, 52
	jal	zero, 4
	addi	a0, zero, 0
	lw	a1, sp, 16
	bne	a1, a0, 8
	jal	zero, 32
	lw	a0, sp, 20
	lw	a1, sp, 44
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, -2160
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a1, zero, 60
	blt	a0, a1, 8
	jalr	zero, ra, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -1600
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, 0
	bne	a0, a1, 24
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a1, sp, 0
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 0
	addi	a0, a0, 1
	addi	a1, zero, 60
	blt	a0, a1, 8
	jalr	zero, ra, 0
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -1672
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, 0
	bne	a0, a1, 24
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a1, sp, 4
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 4
	addi	a0, a0, 1
	addi	a1, zero, 60
	blt	a0, a1, 8
	jalr	zero, ra, 0
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -1744
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 0
	bne	a0, a1, 24
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a1, sp, 8
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 8
	addi	a0, a0, 1
	addi	a1, zero, 60
	blt	a0, a1, 8
	jalr	zero, ra, 0
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -1816
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 24
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a1, sp, 12
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 12
	addi	a0, a0, 1
	jal	zero, -288
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 46628
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, -1
	bne	a0, a1, 20
	lw	a0, sp, 0
	addi	a0, a0, 1
	addi	a1, zero, -1
	jal	zero, 46188
	lw	a1, sp, 0
	addi	a2, a1, 1
	sw	sp, a0, 4
	sw	sp, a2, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 46568
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, -1
	bne	a0, a1, 40
	lw	a0, sp, 8
	addi	a0, a0, 1
	addi	a1, zero, -1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 46120
	addi	sp, sp, -16
	lw	ra, sp, 12
	jal	zero, 260
	lw	a1, sp, 8
	addi	a2, a1, 1
	sw	sp, a0, 12
	sw	sp, a2, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 46488
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, -1
	bne	a0, a1, 40
	lw	a0, sp, 16
	addi	a0, a0, 1
	addi	a1, zero, -1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 46040
	addi	sp, sp, -24
	lw	ra, sp, 20
	jal	zero, 160
	lw	a1, sp, 16
	addi	a2, a1, 1
	sw	sp, a0, 20
	sw	sp, a2, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 46408
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, -1
	bne	a0, a1, 40
	lw	a0, sp, 24
	addi	a0, a0, 1
	addi	a1, zero, -1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 45960
	addi	sp, sp, -32
	lw	ra, sp, 28
	jal	zero, 60
	lw	a1, sp, 24
	addi	a2, a1, 1
	sw	sp, a0, 28
	addi	a0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -312
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a0, a1
	sw	t0, a2, 0
	lw	a1, sp, 16
	slli	a1, a1, 2
	lw	a2, sp, 20
	add	t0, a0, a1
	sw	t0, a2, 0
	lw	a1, sp, 8
	slli	a1, a1, 2
	lw	a2, sp, 12
	add	t0, a0, a1
	sw	t0, a2, 0
	lw	a1, sp, 0
	slli	a1, a1, 2
	lw	a2, sp, 4
	add	t0, a0, a1
	sw	t0, a2, 0
	jalr	zero, ra, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 46220
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, -1
	bne	a0, a1, 40
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 45776
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, a0, 0
	jal	zero, 192
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 46152
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 45708
	addi	sp, sp, -12
	lw	ra, sp, 8
	jal	zero, 116
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 46088
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 3
	addi	a1, zero, -1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 45644
	addi	sp, sp, -16
	lw	ra, sp, 12
	jal	zero, 44
	addi	a1, zero, 3
	sw	sp, a0, 12
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -624
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12
	sw	a0, a1, 8
	lw	a1, sp, 8
	sw	a0, a1, 4
	lw	a1, sp, 4
	sw	a0, a1, 0
	addi	a1, a0, 0
	lw	a0, a1, 0
	addi	a2, zero, -1
	bne	a0, a2, 16
	lw	a0, sp, 0
	addi	a0, a0, 1
	jal	zero, 45548
	lw	a0, sp, 0
	addi	a2, a0, 1
	sw	sp, a1, 16
	sw	sp, a2, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 45928
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, -1
	bne	a0, a1, 40
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 45484
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	jal	zero, 120
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 45860
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 45416
	addi	sp, sp, -32
	lw	ra, sp, 28
	jal	zero, 44
	addi	a1, zero, 2
	sw	sp, a0, 28
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -852
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 28
	sw	a0, a1, 4
	lw	a1, sp, 24
	sw	a0, a1, 0
	addi	a1, a0, 0
	lw	a0, a1, 0
	addi	a2, zero, -1
	bne	a0, a2, 36
	lw	a0, sp, 20
	addi	a0, a0, 1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 45320
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 60
	lw	a0, sp, 20
	addi	a2, a0, 1
	sw	sp, a1, 32
	addi	a0, a2, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -544
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 20
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a0, a1
	sw	t0, a2, 0
	lw	a1, sp, 0
	slli	a1, a1, 2
	lw	a2, sp, 16
	add	t0, a0, a1
	sw	t0, a2, 0
	jalr	zero, ra, 0
	lw	a1, a21, 4
	sw	sp, a21, 0
	sw	sp, a1, 4
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 45608
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 45164
	addi	sp, sp, -16
	lw	ra, sp, 12
	jal	zero, 188
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 45544
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 45100
	addi	sp, sp, -20
	lw	ra, sp, 16
	jal	zero, 116
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 45480
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 3
	addi	a1, zero, -1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 45036
	addi	sp, sp, -24
	lw	ra, sp, 20
	jal	zero, 44
	addi	a1, zero, 3
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -1232
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	sw	a0, a1, 8
	lw	a1, sp, 16
	sw	a0, a1, 4
	lw	a1, sp, 12
	sw	a0, a1, 0
	lw	a1, a0, 0
	addi	a2, zero, -1
	bne	a1, a2, 8
	jalr	zero, ra, 0
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, 1
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 45320
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 44876
	addi	sp, sp, -32
	lw	ra, sp, 28
	jal	zero, 116
	sw	sp, a0, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 45256
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 44812
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 44
	addi	a1, zero, 2
	sw	sp, a0, 32
	addi	a0, a1, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -1456
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32
	sw	a0, a1, 4
	lw	a1, sp, 28
	sw	a0, a1, 0
	lw	a1, a0, 0
	addi	a2, zero, -1
	bne	a1, a2, 8
	jalr	zero, ra, 0
	lw	a1, sp, 24
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, 1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a5, a21, 4
	slli	a6, a2, 2
	add	t0, a1, a6
	flw	fa3, t0, 0
	lui	a6, 0
	addi	a6, a6, 152
	flw	fa4, a6, 0
	feq.s	t0, fa3, fa4
	bne	zero, t0, 256
	lw	a6, a0, 16
	lw	a0, a0, 24
	lui	a7, 0
	addi	a7, a7, 152
	flw	fa3, a7, 0
	slli	a7, a2, 2
	add	t0, a1, a7
	flw	fa4, t0, 0
	flt.s	t0, fa3, fa4
	bne	zero, t0, 12
	addi	a7, zero, 1
	jal	zero, 8
	addi	a7, zero, 0
	addi	a8, zero, 0
	bne	a0, a8, 12
	addi	a0, a7, 0
	jal	zero, 24
	addi	a0, zero, 0
	bne	a7, a0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	slli	a7, a2, 2
	add	t0, a6, a7
	flw	fa3, t0, 0
	addi	a7, zero, 0
	bne	a0, a7, 12
	fsgnjn.s	fa3, fa3, fa3
	jal	zero, 4
	fsub.s	fa0, fa3, fa0, rne
	slli	a0, a2, 2
	add	t0, a1, a0
	flw	fa3, t0, 0
	fdiv.s	fa0, fa0, fa3, rne
	slli	a0, a3, 2
	add	t0, a6, a0
	flw	fa3, t0, 0
	slli	a0, a3, 2
	add	t0, a1, a0
	flw	fa4, t0, 0
	fmul.s	fa4, fa0, fa4, rne
	fadd.s	fa1, fa4, fa1, rne
	fsgnjx.s	fa1, fa1, fa1
	flt.s	t0, fa3, fa1
	bne	zero, t0, 68
	slli	a0, a4, 2
	add	t0, a6, a0
	flw	fa1, t0, 0
	slli	a0, a4, 2
	add	t0, a1, a0
	flw	fa3, t0, 0
	fmul.s	fa3, fa0, fa3, rne
	fadd.s	fa2, fa3, fa2, rne
	fsgnjx.s	fa2, fa2, fa2
	flt.s	t0, fa1, fa2
	bne	zero, t0, 16
	fsw	a5, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	lw	a0, a0, 16
	flw	fa3, a1, 0
	flw	fa4, a0, 0
	fmul.s	fa3, fa3, fa4, rne
	flw	fa4, a1, 4
	flw	fa5, a0, 4
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	flw	fa4, a1, 8
	flw	fa5, a0, 8
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa4, a1, 0
	flt.s	t0, fa3, fa4
	bne	zero, t0, 56
	flw	fa4, a0, 0
	fmul.s	fa0, fa4, fa0, rne
	flw	fa4, a0, 4
	fmul.s	fa1, fa4, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsgnjn.s	fa0, fa0, fa0
	fdiv.s	fa0, fa0, fa3, rne
	fsw	a2, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	fmul.s	fa3, fa0, fa0, rne
	lw	a1, a0, 16
	flw	fa4, a1, 0
	fmul.s	fa3, fa3, fa4, rne
	fmul.s	fa4, fa1, fa1, rne
	lw	a1, a0, 16
	flw	fa5, a1, 4
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	fmul.s	fa4, fa2, fa2, rne
	lw	a1, a0, 16
	flw	fa5, a1, 8
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	lw	a1, a0, 12
	addi	a2, zero, 0
	bne	a1, a2, 12
	fsgnj.s	fa0, fa3, fa3
	jalr	zero, ra, 0
	fmul.s	fa4, fa1, fa2, rne
	lw	a1, a0, 36
	flw	fa5, a1, 0
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	fmul.s	fa2, fa2, fa0, rne
	lw	a1, a0, 36
	flw	fa4, a1, 4
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa2, fa3, fa2, rne
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, a0, 36
	flw	fa1, a0, 8
	fmul.s	fa0, fa0, fa1, rne
	fadd.s	fa0, fa2, fa0, rne
	jalr	zero, ra, 0
	fmul.s	fa6, fa0, fa3, rne
	lw	a1, a0, 16
	flw	fa7, a1, 0
	fmul.s	fa6, fa6, fa7, rne
	fmul.s	fa7, fa1, fa4, rne
	lw	a1, a0, 16
	flw	fa8, a1, 4
	fmul.s	fa7, fa7, fa8, rne
	fadd.s	fa6, fa6, fa7, rne
	fmul.s	fa7, fa2, fa5, rne
	lw	a1, a0, 16
	flw	fa8, a1, 8
	fmul.s	fa7, fa7, fa8, rne
	fadd.s	fa6, fa6, fa7, rne
	lw	a1, a0, 12
	addi	a2, zero, 0
	bne	a1, a2, 12
	fsgnj.s	fa0, fa6, fa6
	jalr	zero, ra, 0
	fmul.s	fa7, fa2, fa4, rne
	fmul.s	fa8, fa1, fa5, rne
	fadd.s	fa7, fa7, fa8, rne
	lw	a1, a0, 36
	flw	fa8, a1, 0
	fmul.s	fa7, fa7, fa8, rne
	fmul.s	fa5, fa0, fa5, rne
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa2, fa5, fa2, rne
	lw	a1, a0, 36
	flw	fa5, a1, 4
	fmul.s	fa2, fa2, fa5, rne
	fadd.s	fa2, fa7, fa2, rne
	fmul.s	fa0, fa0, fa4, rne
	fmul.s	fa1, fa1, fa3, rne
	fadd.s	fa0, fa0, fa1, rne
	lw	a0, a0, 36
	flw	fa1, a0, 8
	fmul.s	fa0, fa0, fa1, rne
	fadd.s	fa0, fa2, fa0, rne
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	fadd.s	fa0, fa6, fa0, rne
	jalr	zero, ra, 0
	lw	a2, a21, 4
	flw	fa3, a1, 0
	flw	fa4, a1, 4
	flw	fa5, a1, 8
	sw	sp, a2, 0
	fsw	sp, fa2, 4
	fsw	sp, fa1, 8
	fsw	sp, fa0, 12
	sw	sp, a0, 16
	sw	sp, a1, 20
	fsgnj.s	fa2, fa5, fa5
	fsgnj.s	fa1, fa4, fa4
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -380
	addi	sp, sp, -28
	lw	ra, sp, 24
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa1, a0, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 268
	lw	a0, sp, 20
	flw	fa1, a0, 0
	flw	fa2, a0, 4
	flw	fa3, a0, 8
	flw	fa4, sp, 12
	flw	fa5, sp, 8
	flw	fa6, sp, 4
	lw	a0, sp, 16
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	fsgnj.s	fa3, fa4, fa4
	fsgnj.s	fa4, fa5, fa5
	fsgnj.s	fa5, fa6, fa6
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -340
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 12
	flw	fa2, sp, 8
	flw	fa3, sp, 4
	lw	a0, sp, 16
	fsw	sp, fa0, 28
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -532
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	flw	fa1, sp, 28
	fmul.s	fa2, fa1, fa1, rne
	flw	fa3, sp, 24
	fmul.s	fa0, fa3, fa0, rne
	fsub.s	fa0, fa2, fa0, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa2, a1, 0
	flt.s	t0, fa0, fa2
	bne	zero, t0, 52
	fsqrt.s	fa0, fa0, rne
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	fsgnjn.s	fa0, fa0, fa0
	jal	zero, 4
	fsub.s	fa0, fa0, fa1, rne
	fdiv.s	fa0, fa0, fa3, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a3, a21, 12
	lw	a4, a21, 8
	lw	a5, a21, 4
	lui	a6, 49152
	addi	a6, a6, 1312
	slli	a0, a0, 2
	add	t0, a6, a0
	lw	a0, t0, 0
	flw	fa0, a2, 0
	lw	a6, a0, 20
	flw	fa1, a6, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a2, 4
	lw	a6, a0, 20
	flw	fa2, a6, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a2, 8
	lw	a2, a0, 20
	flw	fa3, a2, 8
	fsub.s	fa2, fa2, fa3, rne
	lw	a2, a0, 4
	addi	a6, zero, 1
	bne	a2, a6, 248
	addi	a2, zero, 0
	addi	a3, zero, 1
	addi	a5, zero, 2
	fsw	sp, fa0, 0
	fsw	sp, fa2, 4
	fsw	sp, fa1, 8
	sw	sp, a1, 12
	sw	sp, a0, 16
	sw	sp, a4, 20
	addi	a21, a4, 0
	addi	a4, a5, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 164
	addi	a2, zero, 1
	addi	a3, zero, 2
	addi	a4, zero, 0
	flw	fa0, sp, 8
	flw	fa1, sp, 4
	flw	fa2, sp, 0
	lw	a0, sp, 16
	lw	a1, sp, 12
	lw	a21, sp, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 88
	addi	a2, zero, 2
	addi	a3, zero, 0
	addi	a4, zero, 1
	flw	fa0, sp, 4
	flw	fa1, sp, 0
	flw	fa2, sp, 8
	lw	a0, sp, 16
	lw	a1, sp, 12
	lw	a21, sp, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 3
	jalr	zero, ra, 0
	addi	a0, zero, 2
	jalr	zero, ra, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a4, zero, 2
	bne	a2, a4, 132
	lw	a0, a0, 16
	flw	fa3, a1, 0
	flw	fa4, a0, 0
	fmul.s	fa3, fa3, fa4, rne
	flw	fa4, a1, 4
	flw	fa5, a0, 4
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	flw	fa4, a1, 8
	flw	fa5, a0, 8
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa4, a1, 0
	flt.s	t0, fa3, fa4
	bne	zero, t0, 56
	flw	fa4, a0, 0
	fmul.s	fa0, fa4, fa0, rne
	flw	fa4, a0, 4
	fmul.s	fa1, fa4, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsgnjn.s	fa0, fa0, fa0
	fdiv.s	fa0, fa0, fa3, rne
	fsw	a5, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a21, a3, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 4
	flw	fa3, a2, 0
	fsub.s	fa3, fa3, fa0, rne
	flw	fa4, a2, 4
	fmul.s	fa3, fa3, fa4, rne
	lw	a4, a0, 16
	flw	fa4, a4, 4
	flw	fa5, a1, 4
	fmul.s	fa5, fa3, fa5, rne
	fadd.s	fa5, fa5, fa1, rne
	fsgnjx.s	fa5, fa5, fa5
	flt.s	t0, fa4, fa5
	bne	zero, t0, 84
	lw	a4, a0, 16
	flw	fa4, a4, 8
	flw	fa5, a1, 8
	fmul.s	fa5, fa3, fa5, rne
	fadd.s	fa5, fa5, fa2, rne
	fsgnjx.s	fa5, fa5, fa5
	flt.s	t0, fa4, fa5
	bne	zero, t0, 44
	flw	fa4, a2, 4
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa5, a4, 0
	feq.s	t0, fa4, fa5
	bne	zero, t0, 12
	addi	a4, zero, 1
	jal	zero, 8
	addi	a4, zero, 0
	jal	zero, 8
	addi	a4, zero, 0
	jal	zero, 8
	addi	a4, zero, 0
	addi	a5, zero, 0
	bne	a4, a5, 316
	flw	fa3, a2, 8
	fsub.s	fa3, fa3, fa1, rne
	flw	fa4, a2, 12
	fmul.s	fa3, fa3, fa4, rne
	lw	a4, a0, 16
	flw	fa4, a4, 0
	flw	fa5, a1, 0
	fmul.s	fa5, fa3, fa5, rne
	fadd.s	fa5, fa5, fa0, rne
	fsgnjx.s	fa5, fa5, fa5
	flt.s	t0, fa4, fa5
	bne	zero, t0, 84
	lw	a4, a0, 16
	flw	fa4, a4, 8
	flw	fa5, a1, 8
	fmul.s	fa5, fa3, fa5, rne
	fadd.s	fa5, fa5, fa2, rne
	fsgnjx.s	fa5, fa5, fa5
	flt.s	t0, fa4, fa5
	bne	zero, t0, 44
	flw	fa4, a2, 12
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa5, a4, 0
	feq.s	t0, fa4, fa5
	bne	zero, t0, 12
	addi	a4, zero, 1
	jal	zero, 8
	addi	a4, zero, 0
	jal	zero, 8
	addi	a4, zero, 0
	jal	zero, 8
	addi	a4, zero, 0
	addi	a5, zero, 0
	bne	a4, a5, 164
	flw	fa3, a2, 16
	fsub.s	fa2, fa3, fa2, rne
	flw	fa3, a2, 20
	fmul.s	fa2, fa2, fa3, rne
	lw	a4, a0, 16
	flw	fa3, a4, 0
	flw	fa4, a1, 0
	fmul.s	fa4, fa2, fa4, rne
	fadd.s	fa0, fa4, fa0, rne
	fsgnjx.s	fa0, fa0, fa0
	flt.s	t0, fa3, fa0
	bne	zero, t0, 84
	lw	a0, a0, 16
	flw	fa0, a0, 4
	flw	fa3, a1, 4
	fmul.s	fa3, fa2, fa3, rne
	fadd.s	fa1, fa3, fa1, rne
	fsgnjx.s	fa1, fa1, fa1
	flt.s	t0, fa0, fa1
	bne	zero, t0, 44
	flw	fa0, a2, 20
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa1, a0, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	fsw	a3, fa2, 0
	addi	a0, zero, 3
	jalr	zero, ra, 0
	fsw	a3, fa3, 0
	addi	a0, zero, 2
	jalr	zero, ra, 0
	fsw	a3, fa3, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a2, a21, 4
	flw	fa3, a1, 0
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa4, a3, 0
	feq.s	t0, fa3, fa4
	bne	zero, t0, 240
	flw	fa4, a1, 4
	fmul.s	fa4, fa4, fa0, rne
	flw	fa5, a1, 8
	fmul.s	fa5, fa5, fa1, rne
	fadd.s	fa4, fa4, fa5, rne
	flw	fa5, a1, 12
	fmul.s	fa5, fa5, fa2, rne
	fadd.s	fa4, fa4, fa5, rne
	sw	sp, a2, 0
	sw	sp, a1, 4
	fsw	sp, fa3, 8
	fsw	sp, fa4, 12
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -1724
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	flw	fa1, sp, 12
	fmul.s	fa2, fa1, fa1, rne
	flw	fa3, sp, 8
	fmul.s	fa0, fa3, fa0, rne
	fsub.s	fa0, fa2, fa0, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa2, a1, 0
	flt.s	t0, fa0, fa2
	bne	zero, t0, 84
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 36
	fsqrt.s	fa0, fa0, rne
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 16
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	jal	zero, 32
	fsqrt.s	fa0, fa0, rne
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 16
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a3, a21, 4
	flw	fa3, a1, 0
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa4, a4, 0
	feq.s	t0, fa3, fa4
	bne	zero, t0, 144
	flw	fa4, a1, 4
	fmul.s	fa0, fa4, fa0, rne
	flw	fa4, a1, 8
	fmul.s	fa1, fa4, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 12
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a2, 12
	fmul.s	fa2, fa0, fa0, rne
	fmul.s	fa1, fa3, fa1, rne
	fsub.s	fa1, fa2, fa1, rne
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa2, a2, 0
	flt.s	t0, fa1, fa2
	bne	zero, t0, 68
	lw	a0, a0, 24
	addi	a2, zero, 0
	bne	a0, a2, 28
	fsqrt.s	fa1, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 16
	fmul.s	fa0, fa0, fa1, rne
	fsw	a3, fa0, 0
	jal	zero, 24
	fsqrt.s	fa1, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 16
	fmul.s	fa0, fa0, fa1, rne
	fsw	a3, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	lui	a5, 49152
	addi	a5, a5, 1312
	slli	a6, a0, 2
	add	t0, a5, a6
	lw	a5, t0, 0
	lw	a6, a5, 40
	flw	fa0, a6, 0
	flw	fa1, a6, 4
	flw	fa2, a6, 8
	lw	a7, a1, 4
	slli	a0, a0, 2
	add	t0, a7, a0
	lw	a0, t0, 0
	lw	a7, a5, 4
	addi	a8, zero, 1
	bne	a7, a8, 28
	lw	a1, a1, 0
	addi	a2, a0, 0
	addi	a21, a3, 0
	addi	a0, a5, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 2
	bne	a7, a1, 60
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	flw	fa1, a0, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 28
	flw	fa0, a0, 0
	flw	fa1, a6, 12
	fmul.s	fa0, fa0, fa1, rne
	fsw	a4, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a1, a0, 0
	addi	a21, a2, 0
	addi	a2, a6, 0
	addi	a0, a5, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a2, zero, 6
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 41988
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	flw	fa0, a1, 0
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa1, a2, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 140
	lw	a2, sp, 0
	lw	a3, a2, 24
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 12
	addi	a4, zero, 1
	jal	zero, 8
	addi	a4, zero, 0
	addi	a5, zero, 0
	bne	a3, a5, 12
	addi	a3, a4, 0
	jal	zero, 24
	addi	a3, zero, 0
	bne	a4, a3, 12
	addi	a3, zero, 1
	jal	zero, 8
	addi	a3, zero, 0
	lw	a4, a2, 16
	flw	fa0, a4, 0
	addi	a4, zero, 0
	bne	a3, a4, 12
	fsgnjn.s	fa0, fa0, fa0
	jal	zero, 4
	fsw	a0, fa0, 0
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	flw	fa1, a1, 0
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	jal	zero, 20
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	fsw	a0, fa0, 4
	flw	fa0, a1, 4
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa1, a2, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 140
	lw	a2, sp, 0
	lw	a3, a2, 24
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	flw	fa1, a1, 4
	flt.s	t0, fa0, fa1
	bne	zero, t0, 12
	addi	a4, zero, 1
	jal	zero, 8
	addi	a4, zero, 0
	addi	a5, zero, 0
	bne	a3, a5, 12
	addi	a3, a4, 0
	jal	zero, 24
	addi	a3, zero, 0
	bne	a4, a3, 12
	addi	a3, zero, 1
	jal	zero, 8
	addi	a3, zero, 0
	lw	a4, a2, 16
	flw	fa0, a4, 4
	addi	a4, zero, 0
	bne	a3, a4, 12
	fsgnjn.s	fa0, fa0, fa0
	jal	zero, 4
	fsw	a0, fa0, 8
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	flw	fa1, a1, 4
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 12
	jal	zero, 20
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	fsw	a0, fa0, 12
	flw	fa0, a1, 8
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa1, a2, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 140
	lw	a2, sp, 0
	lw	a3, a2, 24
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	flw	fa1, a1, 8
	flt.s	t0, fa0, fa1
	bne	zero, t0, 12
	addi	a4, zero, 1
	jal	zero, 8
	addi	a4, zero, 0
	addi	a5, zero, 0
	bne	a3, a5, 12
	addi	a3, a4, 0
	jal	zero, 24
	addi	a3, zero, 0
	bne	a4, a3, 12
	addi	a3, zero, 1
	jal	zero, 8
	addi	a3, zero, 0
	lw	a2, a2, 16
	flw	fa0, a2, 8
	addi	a2, zero, 0
	bne	a3, a2, 12
	fsgnjn.s	fa0, fa0, fa0
	jal	zero, 4
	fsw	a0, fa0, 16
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	flw	fa1, a1, 8
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 20
	jal	zero, 20
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	fsw	a0, fa0, 20
	jalr	zero, ra, 0
	addi	a2, zero, 4
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 41404
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	flw	fa0, a1, 0
	lw	a2, sp, 0
	lw	a3, a2, 16
	flw	fa1, a3, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	lw	a3, a2, 16
	flw	fa2, a3, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	lw	a1, a2, 16
	flw	fa2, a1, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 88
	lui	a1, 0
	addi	a1, a1, 148
	flw	fa1, a1, 0
	fdiv.s	fa1, fa1, fa0, rne
	fsw	a0, fa1, 0
	lw	a1, a2, 16
	flw	fa1, a1, 0
	fdiv.s	fa1, fa1, fa0, rne
	fsgnjn.s	fa1, fa1, fa1
	fsw	a0, fa1, 4
	lw	a1, a2, 16
	flw	fa1, a1, 4
	fdiv.s	fa1, fa1, fa0, rne
	fsgnjn.s	fa1, fa1, fa1
	fsw	a0, fa1, 8
	lw	a1, a2, 16
	flw	fa1, a1, 8
	fdiv.s	fa0, fa1, fa0, rne
	fsgnjn.s	fa0, fa0, fa0
	fsw	a0, fa0, 12
	jal	zero, 20
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	fsw	a0, fa0, 0
	jalr	zero, ra, 0
	addi	a2, zero, 5
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 41168
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	flw	fa0, a1, 0
	flw	fa1, a1, 4
	flw	fa2, a1, 8
	lw	a2, sp, 0
	sw	sp, a0, 8
	addi	a0, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -3176
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4
	flw	fa1, a0, 0
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa2, a2, 0
	fmul.s	fa1, fa1, fa2, rne
	fsgnjn.s	fa1, fa1, fa1
	flw	fa2, a0, 4
	lw	a2, a1, 16
	flw	fa3, a2, 4
	fmul.s	fa2, fa2, fa3, rne
	fsgnjn.s	fa2, fa2, fa2
	flw	fa3, a0, 8
	lw	a2, a1, 16
	flw	fa4, a2, 8
	fmul.s	fa3, fa3, fa4, rne
	fsgnjn.s	fa3, fa3, fa3
	lw	a2, sp, 8
	fsw	a2, fa0, 0
	lw	a3, a1, 12
	addi	a4, zero, 0
	bne	a3, a4, 20
	fsw	a2, fa1, 4
	fsw	a2, fa2, 8
	fsw	a2, fa3, 12
	jal	zero, 184
	flw	fa4, a0, 8
	lw	a3, a1, 36
	flw	fa5, a3, 4
	fmul.s	fa4, fa4, fa5, rne
	flw	fa5, a0, 4
	lw	a3, a1, 36
	flw	fa6, a3, 8
	fmul.s	fa5, fa5, fa6, rne
	fadd.s	fa4, fa4, fa5, rne
	lui	a3, 0
	addi	a3, a3, 124
	flw	fa5, a3, 0
	fmul.s	fa4, fa4, fa5, rne
	fsub.s	fa1, fa1, fa4, rne
	fsw	a2, fa1, 4
	flw	fa1, a0, 8
	lw	a3, a1, 36
	flw	fa4, a3, 0
	fmul.s	fa1, fa1, fa4, rne
	flw	fa4, a0, 0
	lw	a3, a1, 36
	flw	fa5, a3, 8
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa1, fa1, fa4, rne
	lui	a3, 0
	addi	a3, a3, 124
	flw	fa4, a3, 0
	fmul.s	fa1, fa1, fa4, rne
	fsub.s	fa1, fa2, fa1, rne
	fsw	a2, fa1, 8
	flw	fa1, a0, 4
	lw	a3, a1, 36
	flw	fa2, a3, 0
	fmul.s	fa1, fa1, fa2, rne
	flw	fa2, a0, 0
	lw	a0, a1, 36
	flw	fa4, a0, 4
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa1, fa1, fa2, rne
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	fsub.s	fa1, fa3, fa1, rne
	fsw	a2, fa1, 12
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa1, a0, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 28
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa1, a0, 0
	fdiv.s	fa0, fa1, fa0, rne
	fsw	a2, fa0, 16
	jal	zero, 4
	addi	a0, a2, 0
	jalr	zero, ra, 0
	addi	a2, zero, 0
	blt	a1, a2, 476
	lui	a2, 49152
	addi	a2, a2, 1312
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	lw	a3, a0, 4
	lw	a4, a0, 0
	lw	a5, a2, 4
	addi	a6, zero, 1
	sw	sp, a0, 0
	bne	a5, a6, 64
	sw	sp, a3, 4
	sw	sp, a1, 8
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -1328
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a6, zero, 2
	bne	a5, a6, 64
	sw	sp, a3, 4
	sw	sp, a1, 8
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -812
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a3, 4
	sw	sp, a1, 8
	addi	a1, a2, 0
	addi	a0, a4, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -636
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 232
	lui	a1, 49152
	addi	a1, a1, 1312
	slli	a2, a0, 2
	add	t0, a1, a2
	lw	a1, t0, 0
	lw	a2, sp, 0
	lw	a3, a2, 4
	lw	a4, a2, 0
	lw	a5, a1, 4
	addi	a6, zero, 1
	bne	a5, a6, 60
	sw	sp, a3, 12
	sw	sp, a0, 16
	addi	a0, a4, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -1564
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 120
	addi	a6, zero, 2
	bne	a5, a6, 60
	sw	sp, a3, 12
	sw	sp, a0, 16
	addi	a0, a4, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -1044
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 56
	sw	sp, a3, 12
	sw	sp, a0, 16
	addi	a0, a4, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -864
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 0
	jal	zero, -472
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	addi	a2, zero, 0
	blt	a1, a2, 276
	lui	a2, 49152
	addi	a2, a2, 1312
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	lw	a3, a2, 40
	lw	a4, a2, 4
	flw	fa0, a0, 0
	lw	a5, a2, 20
	flw	fa1, a5, 0
	fsub.s	fa0, fa0, fa1, rne
	fsw	a3, fa0, 0
	flw	fa0, a0, 4
	lw	a5, a2, 20
	flw	fa1, a5, 4
	fsub.s	fa0, fa0, fa1, rne
	fsw	a3, fa0, 4
	flw	fa0, a0, 8
	lw	a5, a2, 20
	flw	fa1, a5, 8
	fsub.s	fa0, fa0, fa1, rne
	fsw	a3, fa0, 8
	addi	a5, zero, 2
	sw	sp, a0, 0
	sw	sp, a1, 4
	bne	a4, a5, 60
	lw	a2, a2, 16
	flw	fa0, a3, 0
	flw	fa1, a3, 4
	flw	fa2, a3, 8
	flw	fa3, a2, 0
	fmul.s	fa0, fa3, fa0, rne
	flw	fa3, a2, 4
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a3, fa0, 12
	jal	zero, 100
	addi	a5, zero, 2
	blt	a5, a4, 8
	jal	zero, 88
	flw	fa0, a3, 0
	flw	fa1, a3, 4
	flw	fa2, a3, 8
	sw	sp, a3, 8
	sw	sp, a4, 12
	addi	a0, a2, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -4220
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a0, zero, 3
	lw	a1, sp, 12
	bne	a1, a0, 24
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa1, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	lw	a0, sp, 8
	fsw	a0, fa0, 12
	lw	a0, sp, 4
	addi	a1, a0, -1
	lw	a0, sp, 0
	jal	zero, -276
	jalr	zero, ra, 0
	lw	a1, a0, 20
	flw	fa3, a1, 0
	fsub.s	fa0, fa0, fa3, rne
	lw	a1, a0, 20
	flw	fa3, a1, 4
	fsub.s	fa1, fa1, fa3, rne
	lw	a1, a0, 20
	flw	fa3, a1, 8
	fsub.s	fa2, fa2, fa3, rne
	lw	a1, a0, 4
	addi	a2, zero, 1
	bne	a1, a2, 136
	lw	a1, a0, 16
	flw	fa3, a1, 0
	fsgnjx.s	fa0, fa0, fa0
	flt.s	t0, fa3, fa0
	bne	zero, t0, 68
	lw	a1, a0, 16
	flw	fa0, a1, 4
	fsgnjx.s	fa1, fa1, fa1
	flt.s	t0, fa0, fa1
	bne	zero, t0, 40
	lw	a1, a0, 16
	flw	fa0, a1, 8
	fsgnjx.s	fa1, fa2, fa2
	flt.s	t0, fa0, fa1
	bne	zero, t0, 12
	addi	a1, zero, 1
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 0
	addi	a2, zero, 0
	bne	a1, a2, 32
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, a0, 24
	jalr	zero, ra, 0
	addi	a2, zero, 2
	bne	a1, a2, 136
	lw	a1, a0, 16
	flw	fa3, a1, 0
	fmul.s	fa0, fa3, fa0, rne
	flw	fa3, a1, 4
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lw	a0, a0, 24
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a1, zero, 1
	jal	zero, 8
	addi	a1, zero, 0
	addi	a2, zero, 0
	bne	a0, a2, 12
	addi	a0, a1, 0
	jal	zero, 24
	addi	a0, zero, 0
	bne	a1, a0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -4624
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	lw	a0, a0, 24
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a1, zero, 1
	jal	zero, 8
	addi	a1, zero, 0
	addi	a2, zero, 0
	bne	a0, a2, 12
	addi	a0, a1, 0
	jal	zero, 24
	addi	a0, zero, 0
	bne	a1, a0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a2, a0, 2
	add	t0, a1, a2
	lw	a2, t0, 0
	addi	a3, zero, -1
	bne	a2, a3, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lui	a3, 49152
	addi	a3, a3, 1312
	slli	a2, a2, 2
	add	t0, a3, a2
	lw	a2, t0, 0
	lw	a3, a2, 20
	flw	fa3, a3, 0
	fsub.s	fa3, fa0, fa3, rne
	lw	a3, a2, 20
	flw	fa4, a3, 4
	fsub.s	fa4, fa1, fa4, rne
	lw	a3, a2, 20
	flw	fa5, a3, 8
	fsub.s	fa5, fa2, fa5, rne
	lw	a3, a2, 4
	addi	a4, zero, 1
	fsw	sp, fa2, 0
	fsw	sp, fa1, 4
	fsw	sp, fa0, 8
	sw	sp, a1, 12
	sw	sp, a0, 16
	bne	a3, a4, 140
	lw	a3, a2, 16
	flw	fa6, a3, 0
	fsgnjx.s	fa3, fa3, fa3
	flt.s	t0, fa6, fa3
	bne	zero, t0, 68
	lw	a3, a2, 16
	flw	fa3, a3, 4
	fsgnjx.s	fa4, fa4, fa4
	flt.s	t0, fa3, fa4
	bne	zero, t0, 40
	lw	a3, a2, 16
	flw	fa3, a3, 8
	fsgnjx.s	fa4, fa5, fa5
	flt.s	t0, fa3, fa4
	bne	zero, t0, 12
	addi	a3, zero, 1
	jal	zero, 8
	addi	a3, zero, 0
	jal	zero, 8
	addi	a3, zero, 0
	jal	zero, 8
	addi	a3, zero, 0
	addi	a4, zero, 0
	bne	a3, a4, 32
	lw	a2, a2, 24
	addi	a3, zero, 0
	bne	a2, a3, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 12
	lw	a2, a2, 24
	addi	a0, a2, 0
	jal	zero, 312
	addi	a4, zero, 2
	bne	a3, a4, 136
	lw	a3, a2, 16
	flw	fa6, a3, 0
	fmul.s	fa3, fa6, fa3, rne
	flw	fa6, a3, 4
	fmul.s	fa4, fa6, fa4, rne
	fadd.s	fa3, fa3, fa4, rne
	flw	fa4, a3, 8
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	lw	a2, a2, 24
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa4, a3, 0
	flt.s	t0, fa4, fa3
	bne	zero, t0, 12
	addi	a3, zero, 1
	jal	zero, 8
	addi	a3, zero, 0
	addi	a4, zero, 0
	bne	a2, a4, 12
	addi	a2, a3, 0
	jal	zero, 24
	addi	a2, zero, 0
	bne	a3, a2, 12
	addi	a2, zero, 1
	jal	zero, 8
	addi	a2, zero, 0
	addi	a3, zero, 0
	bne	a2, a3, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 172
	sw	sp, a2, 20
	addi	a0, a2, 0
	fsgnj.s	fa2, fa5, fa5
	fsgnj.s	fa1, fa4, fa4
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -5188
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	lw	a0, a0, 24
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a1, zero, 1
	jal	zero, 8
	addi	a1, zero, 0
	addi	a2, zero, 0
	bne	a0, a2, 12
	addi	a0, a1, 0
	jal	zero, 24
	addi	a0, zero, 0
	bne	a1, a0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 148
	lw	a0, sp, 16
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lui	a3, 49152
	addi	a3, a3, 1312
	slli	a1, a1, 2
	add	t0, a3, a1
	lw	a1, t0, 0
	flw	fa0, sp, 8
	flw	fa1, sp, 4
	flw	fa2, sp, 0
	sw	sp, a0, 24
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -1132
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 0
	bne	a0, a1, 32
	lw	a0, sp, 24
	addi	a0, a0, 1
	flw	fa0, sp, 8
	flw	fa1, sp, 4
	flw	fa2, sp, 0
	lw	a1, sp, 12
	jal	zero, -700
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a2, a21, 24
	lw	a3, a21, 20
	lw	a4, a21, 16
	lw	a5, a21, 12
	lw	a6, a21, 8
	lw	a7, a21, 4
	slli	a8, a0, 2
	add	t0, a1, a8
	lw	a8, t0, 0
	addi	a9, zero, -1
	bne	a8, a9, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a8, a0, 2
	add	t0, a1, a8
	lw	a8, t0, 0
	lui	a9, 49152
	addi	a9, a9, 1312
	slli	a10, a8, 2
	add	t0, a9, a10
	lw	a9, t0, 0
	flw	fa0, a6, 0
	lw	a10, a9, 20
	flw	fa1, a10, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a6, 4
	lw	a10, a9, 20
	flw	fa2, a10, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a6, 8
	lw	a10, a9, 20
	flw	fa3, a10, 8
	fsub.s	fa2, fa2, fa3, rne
	slli	a10, a8, 2
	add	t0, a7, a10
	lw	a7, t0, 0
	lw	a10, a9, 4
	addi	a11, zero, 1
	sw	sp, a6, 0
	sw	sp, a1, 4
	sw	sp, a21, 8
	sw	sp, a0, 12
	sw	sp, a8, 16
	sw	sp, a5, 20
	bne	a10, a11, 48
	addi	a1, a2, 0
	addi	a0, a9, 0
	addi	a21, a4, 0
	addi	a2, a7, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	jal	zero, 124
	addi	a2, zero, 2
	bne	a10, a2, 80
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa3, a2, 0
	flw	fa4, a7, 0
	flt.s	t0, fa3, fa4
	bne	zero, t0, 48
	flw	fa3, a7, 4
	fmul.s	fa0, fa3, fa0, rne
	flw	fa3, a7, 8
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a7, 12
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a5, fa0, 0
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 40
	addi	a1, a7, 0
	addi	a0, a9, 0
	addi	a21, a3, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	flw	fa0, a1, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 36
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 72
	lui	a0, 49152
	addi	a0, a0, 1312
	lw	a1, sp, 16
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 12
	addi	a0, a0, 1
	lw	a1, sp, 4
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lui	a0, 0
	addi	a0, a0, 116
	flw	fa1, a0, 0
	fadd.s	fa0, fa0, fa1, rne
	lui	a0, 53248
	addi	a0, a0, 120
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a0, sp, 0
	flw	fa2, a0, 0
	fadd.s	fa1, fa1, fa2, rne
	lui	a1, 53248
	addi	a1, a1, 120
	flw	fa2, a1, 4
	fmul.s	fa2, fa2, fa0, rne
	flw	fa3, a0, 4
	fadd.s	fa2, fa2, fa3, rne
	lui	a1, 53248
	addi	a1, a1, 120
	flw	fa3, a1, 8
	fmul.s	fa0, fa3, fa0, rne
	flw	fa3, a0, 8
	fadd.s	fa0, fa0, fa3, rne
	lw	a1, sp, 4
	lw	a0, a1, 0
	addi	a2, zero, -1
	bne	a0, a2, 12
	addi	a0, zero, 1
	jal	zero, 128
	lui	a2, 49152
	addi	a2, a2, 1312
	slli	a0, a0, 2
	add	t0, a2, a0
	lw	a0, t0, 0
	fsw	sp, fa0, 24
	fsw	sp, fa2, 28
	fsw	sp, fa1, 32
	fsgnj.s	fa26, fa2, fa2
	fsgnj.s	fa2, fa0, fa0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa26, fa26
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -1844
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 0
	bne	a0, a1, 48
	addi	a0, zero, 1
	flw	fa0, sp, 32
	flw	fa1, sp, 28
	flw	fa2, sp, 24
	lw	a1, sp, 4
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -1416
	addi	sp, sp, -40
	lw	ra, sp, 36
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 12
	addi	a0, a0, 1
	lw	a1, sp, 4
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a2, a21, 8
	lw	a3, a21, 4
	slli	a4, a0, 2
	add	t0, a1, a4
	lw	a4, t0, 0
	addi	a5, zero, -1
	bne	a4, a5, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a4, a4, 2
	add	t0, a3, a4
	lw	a4, t0, 0
	addi	a5, zero, 0
	sw	sp, a21, 0
	sw	sp, a2, 4
	sw	sp, a3, 8
	sw	sp, a1, 12
	sw	sp, a0, 16
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	a21, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 364
	lw	a0, sp, 16
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 8
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a4, zero, 0
	lw	a21, sp, 4
	sw	sp, a0, 20
	addi	a0, a4, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 252
	lw	a0, sp, 20
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 8
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a4, zero, 0
	lw	a21, sp, 4
	sw	sp, a0, 24
	addi	a0, a4, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 0
	bne	a0, a1, 140
	lw	a0, sp, 24
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 8
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 4
	sw	sp, a0, 28
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 28
	addi	a0, a0, 1
	lw	a1, sp, 12
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a2, a21, 36
	lw	a3, a21, 32
	lw	a4, a21, 28
	lw	a5, a21, 24
	lw	a6, a21, 20
	lw	a7, a21, 16
	lw	a8, a21, 12
	lw	a9, a21, 8
	lw	a10, a21, 4
	slli	a11, a0, 2
	add	t0, a1, a11
	lw	a11, t0, 0
	lw	a12, a11, 0
	addi	a13, zero, -1
	bne	a12, a13, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a13, zero, 99
	sw	sp, a6, 0
	sw	sp, a7, 4
	sw	sp, a10, 8
	sw	sp, a11, 12
	sw	sp, a1, 16
	sw	sp, a21, 20
	sw	sp, a0, 24
	bne	a12, a13, 12
	addi	a0, zero, 1
	jal	zero, 648
	lui	a13, 49152
	addi	a13, a13, 1312
	slli	a14, a12, 2
	add	t0, a13, a14
	lw	a13, t0, 0
	flw	fa0, a8, 0
	lw	a14, a13, 20
	flw	fa1, a14, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a8, 4
	lw	a14, a13, 20
	flw	fa2, a14, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a8, 8
	lw	a8, a13, 20
	flw	fa3, a8, 8
	fsub.s	fa2, fa2, fa3, rne
	slli	a8, a12, 2
	add	t0, a9, a8
	lw	a8, t0, 0
	lw	a9, a13, 4
	addi	a12, zero, 1
	sw	sp, a5, 28
	bne	a9, a12, 48
	addi	a1, a2, 0
	addi	a0, a13, 0
	addi	a21, a4, 0
	addi	a2, a8, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 124
	addi	a2, zero, 2
	bne	a9, a2, 80
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa3, a2, 0
	flw	fa4, a8, 0
	flt.s	t0, fa3, fa4
	bne	zero, t0, 48
	flw	fa3, a8, 4
	fmul.s	fa0, fa3, fa0, rne
	flw	fa3, a8, 8
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a8, 12
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a5, fa0, 0
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 40
	addi	a1, a8, 0
	addi	a0, a13, 0
	addi	a21, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 372
	lui	a0, 0
	addi	a0, a0, 112
	flw	fa0, a0, 0
	lw	a0, sp, 28
	flw	fa1, a0, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 340
	lw	a0, sp, 12
	lw	a1, a0, 4
	addi	a2, zero, -1
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 292
	slli	a1, a1, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 4
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 228
	lw	a0, sp, 12
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 200
	slli	a1, a1, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 4
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 136
	lw	a0, sp, 12
	lw	a1, a0, 12
	addi	a2, zero, -1
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 108
	slli	a1, a1, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 4
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 44
	addi	a0, zero, 4
	lw	a1, sp, 12
	lw	a21, sp, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 8
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 1
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 24
	addi	a0, a0, 1
	lw	a1, sp, 16
	lw	a21, sp, 20
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a0, sp, 12
	lw	a1, a0, 4
	addi	a2, zero, -1
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 292
	slli	a1, a1, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 4
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 228
	lw	a0, sp, 12
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 200
	slli	a1, a1, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 4
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 136
	lw	a0, sp, 12
	lw	a1, a0, 12
	addi	a2, zero, -1
	bne	a1, a2, 12
	addi	a0, zero, 0
	jal	zero, 108
	slli	a1, a1, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a21, sp, 4
	addi	a0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 44
	addi	a0, zero, 4
	lw	a1, sp, 12
	lw	a21, sp, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 8
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 1
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 24
	addi	a0, a0, 1
	lw	a1, sp, 16
	lw	a21, sp, 20
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a3, a21, 36
	lw	a4, a21, 32
	lw	a5, a21, 28
	lw	a6, a21, 24
	lw	a7, a21, 20
	lw	a8, a21, 16
	lw	a9, a21, 12
	lw	a10, a21, 8
	lw	a11, a21, 4
	slli	a12, a0, 2
	add	t0, a1, a12
	lw	a12, t0, 0
	addi	a13, zero, -1
	bne	a12, a13, 8
	jalr	zero, ra, 0
	lui	a13, 49152
	addi	a13, a13, 1312
	slli	a14, a12, 2
	add	t0, a13, a14
	lw	a13, t0, 0
	flw	fa0, a4, 0
	lw	a14, a13, 20
	flw	fa1, a14, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a4, 4
	lw	a14, a13, 20
	flw	fa2, a14, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a4, 8
	lw	a14, a13, 20
	flw	fa3, a14, 8
	fsub.s	fa2, fa2, fa3, rne
	lw	a14, a13, 4
	addi	a15, zero, 1
	sw	sp, a9, 0
	sw	sp, a11, 4
	sw	sp, a10, 8
	sw	sp, a4, 12
	sw	sp, a3, 16
	sw	sp, a8, 20
	sw	sp, a2, 24
	sw	sp, a1, 28
	sw	sp, a21, 32
	sw	sp, a0, 36
	sw	sp, a12, 40
	bne	a14, a15, 260
	addi	a5, zero, 0
	addi	a6, zero, 1
	addi	a14, zero, 2
	fsw	sp, fa0, 44
	fsw	sp, fa2, 48
	fsw	sp, fa1, 52
	sw	sp, a13, 56
	sw	sp, a7, 60
	addi	a4, a14, 0
	addi	a3, a6, 0
	addi	a1, a2, 0
	addi	a0, a13, 0
	addi	a21, a7, 0
	addi	a2, a5, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 164
	addi	a2, zero, 1
	addi	a3, zero, 2
	addi	a4, zero, 0
	flw	fa0, sp, 52
	flw	fa1, sp, 48
	flw	fa2, sp, 44
	lw	a0, sp, 56
	lw	a1, sp, 24
	lw	a21, sp, 60
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 88
	addi	a2, zero, 2
	addi	a3, zero, 0
	addi	a4, zero, 1
	flw	fa0, sp, 48
	flw	fa1, sp, 44
	flw	fa2, sp, 52
	lw	a0, sp, 56
	lw	a1, sp, 24
	lw	a21, sp, 60
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 3
	jal	zero, 8
	addi	a0, zero, 2
	jal	zero, 8
	addi	a0, zero, 1
	jal	zero, 88
	addi	a7, zero, 2
	bne	a14, a7, 44
	addi	a1, a2, 0
	addi	a0, a13, 0
	addi	a21, a5, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	jal	zero, 40
	addi	a1, a2, 0
	addi	a0, a13, 0
	addi	a21, a6, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 72
	lui	a0, 49152
	addi	a0, a0, 1312
	lw	a1, sp, 40
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lw	a0, sp, 36
	addi	a0, a0, 1
	lw	a1, sp, 28
	lw	a2, sp, 24
	lw	a21, sp, 32
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, sp, 20
	flw	fa0, a1, 0
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 332
	lw	a1, sp, 16
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 312
	lui	a2, 0
	addi	a2, a2, 116
	flw	fa1, a2, 0
	fadd.s	fa0, fa0, fa1, rne
	lw	a2, sp, 24
	flw	fa1, a2, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a3, sp, 12
	flw	fa2, a3, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a2, 4
	fmul.s	fa2, fa2, fa0, rne
	flw	fa3, a3, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a2, 8
	fmul.s	fa3, fa3, fa0, rne
	flw	fa4, a3, 8
	fadd.s	fa3, fa3, fa4, rne
	lw	a3, sp, 28
	lw	a4, a3, 0
	addi	a5, zero, -1
	sw	sp, a0, 64
	fsw	sp, fa3, 68
	fsw	sp, fa2, 72
	fsw	sp, fa1, 76
	fsw	sp, fa0, 80
	bne	a4, a5, 12
	addi	a0, zero, 1
	jal	zero, 116
	lui	a5, 49152
	addi	a5, a5, 1312
	slli	a4, a4, 2
	add	t0, a5, a4
	lw	a4, t0, 0
	addi	a0, a4, 0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -4380
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a1, zero, 0
	bne	a0, a1, 48
	addi	a0, zero, 1
	flw	fa0, sp, 76
	flw	fa1, sp, 72
	flw	fa2, sp, 68
	lw	a1, sp, 28
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -3952
	addi	sp, sp, -88
	lw	ra, sp, 84
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 68
	flw	fa0, sp, 80
	lw	a0, sp, 16
	fsw	a0, fa0, 0
	flw	fa0, sp, 76
	lw	a0, sp, 8
	fsw	a0, fa0, 0
	flw	fa0, sp, 72
	fsw	a0, fa0, 4
	flw	fa0, sp, 68
	fsw	a0, fa0, 8
	lw	a0, sp, 40
	lw	a1, sp, 4
	sw	a1, a0, 0
	lw	a0, sp, 64
	lw	a1, sp, 0
	sw	a1, a0, 0
	jal	zero, 4
	jal	zero, 4
	lw	a0, sp, 36
	addi	a0, a0, 1
	lw	a1, sp, 28
	lw	a2, sp, 24
	lw	a21, sp, 32
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 8
	lw	a4, a21, 4
	slli	a5, a0, 2
	add	t0, a1, a5
	lw	a5, t0, 0
	addi	a6, zero, -1
	bne	a5, a6, 8
	jalr	zero, ra, 0
	slli	a5, a5, 2
	add	t0, a4, a5
	lw	a5, t0, 0
	addi	a6, zero, 0
	sw	sp, a21, 0
	sw	sp, a2, 4
	sw	sp, a3, 8
	sw	sp, a4, 12
	sw	sp, a1, 16
	sw	sp, a0, 20
	addi	a1, a5, 0
	addi	a0, a6, 0
	addi	a21, a3, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 8
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a4, zero, 0
	lw	a5, sp, 4
	lw	a21, sp, 8
	sw	sp, a0, 24
	addi	a2, a5, 0
	addi	a0, a4, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 8
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a4, zero, 0
	lw	a5, sp, 4
	lw	a21, sp, 8
	sw	sp, a0, 28
	addi	a2, a5, 0
	addi	a0, a4, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 8
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 4
	lw	a21, sp, 8
	sw	sp, a0, 32
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32
	addi	a0, a0, 1
	lw	a1, sp, 16
	lw	a2, sp, 4
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 40
	lw	a4, a21, 36
	lw	a5, a21, 32
	lw	a6, a21, 28
	lw	a7, a21, 24
	lw	a8, a21, 20
	lw	a9, a21, 16
	lw	a10, a21, 12
	lw	a11, a21, 8
	lw	a12, a21, 4
	slli	a13, a0, 2
	add	t0, a1, a13
	lw	a13, t0, 0
	lw	a14, a13, 0
	addi	a15, zero, -1
	bne	a14, a15, 8
	jalr	zero, ra, 0
	addi	a15, zero, 99
	sw	sp, a21, 0
	sw	sp, a3, 4
	sw	sp, a8, 8
	sw	sp, a4, 12
	sw	sp, a9, 16
	sw	sp, a10, 20
	sw	sp, a2, 24
	sw	sp, a11, 28
	sw	sp, a12, 32
	sw	sp, a1, 36
	sw	sp, a0, 40
	bne	a14, a15, 280
	lw	a5, a13, 4
	addi	a6, zero, -1
	bne	a5, a6, 8
	jal	zero, 260
	slli	a5, a5, 2
	add	t0, a12, a5
	lw	a5, t0, 0
	addi	a6, zero, 0
	sw	sp, a13, 44
	addi	a1, a5, 0
	addi	a0, a6, 0
	addi	a21, a11, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 184
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 24
	lw	a21, sp, 28
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44
	lw	a1, a0, 12
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 24
	lw	a21, sp, 28
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 4
	lw	a1, sp, 44
	lw	a2, sp, 24
	lw	a21, sp, 20
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 752
	lui	a15, 49152
	addi	a15, a15, 1312
	slli	a14, a14, 2
	add	t0, a15, a14
	lw	a14, t0, 0
	flw	fa0, a4, 0
	lw	a15, a14, 20
	flw	fa1, a15, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a4, 4
	lw	a15, a14, 20
	flw	fa2, a15, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a4, 8
	lw	a15, a14, 20
	flw	fa3, a15, 8
	fsub.s	fa2, fa2, fa3, rne
	lw	a15, a14, 4
	addi	a16, zero, 1
	sw	sp, a13, 44
	bne	a15, a16, 260
	addi	a5, zero, 0
	addi	a6, zero, 1
	addi	a15, zero, 2
	fsw	sp, fa0, 48
	fsw	sp, fa2, 52
	fsw	sp, fa1, 56
	sw	sp, a14, 60
	sw	sp, a7, 64
	addi	a4, a15, 0
	addi	a3, a6, 0
	addi	a1, a2, 0
	addi	a0, a14, 0
	addi	a21, a7, 0
	addi	a2, a5, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 164
	addi	a2, zero, 1
	addi	a3, zero, 2
	addi	a4, zero, 0
	flw	fa0, sp, 56
	flw	fa1, sp, 52
	flw	fa2, sp, 48
	lw	a0, sp, 60
	lw	a1, sp, 24
	lw	a21, sp, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 88
	addi	a2, zero, 2
	addi	a3, zero, 0
	addi	a4, zero, 1
	flw	fa0, sp, 52
	flw	fa1, sp, 48
	flw	fa2, sp, 56
	lw	a0, sp, 60
	lw	a1, sp, 24
	lw	a21, sp, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 3
	jal	zero, 8
	addi	a0, zero, 2
	jal	zero, 8
	addi	a0, zero, 1
	jal	zero, 88
	addi	a7, zero, 2
	bne	a15, a7, 44
	addi	a1, a2, 0
	addi	a0, a14, 0
	addi	a21, a5, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	jal	zero, 40
	addi	a1, a2, 0
	addi	a0, a14, 0
	addi	a21, a6, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 316
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a1, sp, 4
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 292
	lw	a2, sp, 44
	lw	a3, a2, 4
	addi	a4, zero, -1
	bne	a3, a4, 8
	jal	zero, 268
	slli	a3, a3, 2
	lw	a4, sp, 32
	add	t0, a4, a3
	lw	a3, t0, 0
	addi	a5, zero, 0
	lw	a6, sp, 24
	lw	a21, sp, 28
	addi	a2, a6, 0
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 184
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 24
	lw	a21, sp, 28
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44
	lw	a1, a0, 12
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 24
	lw	a21, sp, 28
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a0, zero, 4
	lw	a1, sp, 44
	lw	a2, sp, 24
	lw	a21, sp, 20
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	jal	zero, 4
	lw	a0, sp, 40
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 36
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, a1, 0
	addi	a4, zero, -1
	bne	a3, a4, 8
	jalr	zero, ra, 0
	addi	a4, zero, 99
	sw	sp, a0, 68
	bne	a3, a4, 212
	lw	a3, a1, 4
	addi	a4, zero, -1
	bne	a3, a4, 8
	jal	zero, 192
	slli	a3, a3, 2
	lw	a4, sp, 32
	add	t0, a4, a3
	lw	a3, t0, 0
	addi	a5, zero, 0
	lw	a6, sp, 24
	lw	a21, sp, 28
	sw	sp, a1, 72
	addi	a2, a6, 0
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a3, sp, 24
	lw	a21, sp, 28
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	addi	a0, zero, 3
	lw	a1, sp, 72
	lw	a2, sp, 24
	lw	a21, sp, 20
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	jal	zero, 296
	lw	a4, sp, 24
	lw	a5, sp, 12
	lw	a21, sp, 16
	sw	sp, a1, 72
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 232
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a0, sp, 4
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 208
	lw	a0, sp, 72
	lw	a1, a0, 4
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 184
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 24
	lw	a21, sp, 28
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a3, sp, 24
	lw	a21, sp, 28
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	addi	a0, zero, 3
	lw	a1, sp, 72
	lw	a2, sp, 24
	lw	a21, sp, 20
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	jal	zero, 4
	lw	a0, sp, 68
	addi	a0, a0, 1
	lw	a1, sp, 36
	lw	a2, sp, 24
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 32
	lw	a4, a21, 28
	lw	a5, a21, 24
	lw	a6, a21, 20
	lw	a7, a21, 16
	lw	a8, a21, 12
	lw	a9, a21, 8
	lw	a10, a21, 4
	lw	a11, a2, 0
	slli	a12, a0, 2
	add	t0, a1, a12
	lw	a12, t0, 0
	addi	a13, zero, -1
	bne	a12, a13, 8
	jalr	zero, ra, 0
	lui	a13, 49152
	addi	a13, a13, 1312
	slli	a14, a12, 2
	add	t0, a13, a14
	lw	a13, t0, 0
	lw	a14, a13, 40
	flw	fa0, a14, 0
	flw	fa1, a14, 4
	flw	fa2, a14, 8
	lw	a15, a2, 4
	slli	a16, a12, 2
	add	t0, a15, a16
	lw	a15, t0, 0
	lw	a16, a13, 4
	addi	a17, zero, 1
	sw	sp, a8, 0
	sw	sp, a10, 4
	sw	sp, a9, 8
	sw	sp, a4, 12
	sw	sp, a11, 16
	sw	sp, a3, 20
	sw	sp, a7, 24
	sw	sp, a2, 28
	sw	sp, a1, 32
	sw	sp, a21, 36
	sw	sp, a0, 40
	sw	sp, a12, 44
	bne	a16, a17, 52
	lw	a5, a2, 0
	addi	a2, a15, 0
	addi	a1, a5, 0
	addi	a0, a13, 0
	addi	a21, a6, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 108
	addi	a6, zero, 2
	bne	a16, a6, 60
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa0, a5, 0
	flw	fa1, a15, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 28
	flw	fa0, a15, 0
	flw	fa1, a14, 12
	fmul.s	fa0, fa0, fa1, rne
	fsw	a7, fa0, 0
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 44
	addi	a2, a14, 0
	addi	a1, a15, 0
	addi	a0, a13, 0
	addi	a21, a5, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 72
	lui	a0, 49152
	addi	a0, a0, 1312
	lw	a1, sp, 44
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lw	a0, sp, 40
	addi	a0, a0, 1
	lw	a1, sp, 32
	lw	a2, sp, 28
	lw	a21, sp, 36
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, sp, 24
	flw	fa0, a1, 0
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 332
	lw	a1, sp, 20
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 312
	lui	a2, 0
	addi	a2, a2, 116
	flw	fa1, a2, 0
	fadd.s	fa0, fa0, fa1, rne
	lw	a2, sp, 16
	flw	fa1, a2, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a3, sp, 12
	flw	fa2, a3, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a2, 4
	fmul.s	fa2, fa2, fa0, rne
	flw	fa3, a3, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a2, 8
	fmul.s	fa3, fa3, fa0, rne
	flw	fa4, a3, 8
	fadd.s	fa3, fa3, fa4, rne
	lw	a2, sp, 32
	lw	a3, a2, 0
	addi	a4, zero, -1
	sw	sp, a0, 48
	fsw	sp, fa3, 52
	fsw	sp, fa2, 56
	fsw	sp, fa1, 60
	fsw	sp, fa0, 64
	bne	a3, a4, 12
	addi	a0, zero, 1
	jal	zero, 116
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a3, a3, 2
	add	t0, a4, a3
	lw	a3, t0, 0
	addi	a0, a3, 0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -7324
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 48
	addi	a0, zero, 1
	flw	fa0, sp, 60
	flw	fa1, sp, 56
	flw	fa2, sp, 52
	lw	a1, sp, 32
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -6896
	addi	sp, sp, -72
	lw	ra, sp, 68
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 68
	flw	fa0, sp, 64
	lw	a0, sp, 20
	fsw	a0, fa0, 0
	flw	fa0, sp, 60
	lw	a0, sp, 8
	fsw	a0, fa0, 0
	flw	fa0, sp, 56
	fsw	a0, fa0, 4
	flw	fa0, sp, 52
	fsw	a0, fa0, 8
	lw	a0, sp, 44
	lw	a1, sp, 4
	sw	a1, a0, 0
	lw	a0, sp, 48
	lw	a1, sp, 0
	sw	a1, a0, 0
	jal	zero, 4
	jal	zero, 4
	lw	a0, sp, 40
	addi	a0, a0, 1
	lw	a1, sp, 32
	lw	a2, sp, 28
	lw	a21, sp, 36
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 8
	lw	a4, a21, 4
	slli	a5, a0, 2
	add	t0, a1, a5
	lw	a5, t0, 0
	addi	a6, zero, -1
	bne	a5, a6, 8
	jalr	zero, ra, 0
	slli	a5, a5, 2
	add	t0, a4, a5
	lw	a5, t0, 0
	addi	a6, zero, 0
	sw	sp, a21, 0
	sw	sp, a2, 4
	sw	sp, a3, 8
	sw	sp, a4, 12
	sw	sp, a1, 16
	sw	sp, a0, 20
	addi	a1, a5, 0
	addi	a0, a6, 0
	addi	a21, a3, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 8
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a4, zero, 0
	lw	a5, sp, 4
	lw	a21, sp, 8
	sw	sp, a0, 24
	addi	a2, a5, 0
	addi	a0, a4, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 8
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a4, zero, 0
	lw	a5, sp, 4
	lw	a21, sp, 8
	sw	sp, a0, 28
	addi	a2, a5, 0
	addi	a0, a4, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 8
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 4
	lw	a21, sp, 8
	sw	sp, a0, 32
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32
	addi	a0, a0, 1
	lw	a1, sp, 16
	lw	a2, sp, 4
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 32
	lw	a4, a21, 28
	lw	a5, a21, 24
	lw	a6, a21, 20
	lw	a7, a21, 16
	lw	a8, a21, 12
	lw	a9, a21, 8
	lw	a10, a21, 4
	slli	a11, a0, 2
	add	t0, a1, a11
	lw	a11, t0, 0
	lw	a12, a11, 0
	addi	a13, zero, -1
	bne	a12, a13, 8
	jalr	zero, ra, 0
	addi	a13, zero, 99
	sw	sp, a21, 0
	sw	sp, a3, 4
	sw	sp, a7, 8
	sw	sp, a6, 12
	sw	sp, a8, 16
	sw	sp, a2, 20
	sw	sp, a9, 24
	sw	sp, a10, 28
	sw	sp, a1, 32
	sw	sp, a0, 36
	bne	a12, a13, 280
	lw	a4, a11, 4
	addi	a5, zero, -1
	bne	a4, a5, 8
	jal	zero, 260
	slli	a4, a4, 2
	add	t0, a10, a4
	lw	a4, t0, 0
	addi	a5, zero, 0
	sw	sp, a11, 40
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	a21, a9, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 184
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 20
	lw	a21, sp, 24
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	lw	a1, a0, 12
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 20
	lw	a21, sp, 24
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a0, zero, 4
	lw	a1, sp, 40
	lw	a2, sp, 20
	lw	a21, sp, 16
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	jal	zero, 548
	lui	a13, 49152
	addi	a13, a13, 1312
	slli	a14, a12, 2
	add	t0, a13, a14
	lw	a13, t0, 0
	lw	a14, a13, 40
	flw	fa0, a14, 0
	flw	fa1, a14, 4
	flw	fa2, a14, 8
	lw	a15, a2, 4
	slli	a12, a12, 2
	add	t0, a15, a12
	lw	a12, t0, 0
	lw	a15, a13, 4
	addi	a16, zero, 1
	sw	sp, a11, 40
	bne	a15, a16, 52
	lw	a4, a2, 0
	addi	a2, a12, 0
	addi	a1, a4, 0
	addi	a0, a13, 0
	addi	a21, a5, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	jal	zero, 108
	addi	a5, zero, 2
	bne	a15, a5, 60
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	flw	fa1, a12, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 28
	flw	fa0, a12, 0
	flw	fa1, a14, 12
	fmul.s	fa0, fa0, fa1, rne
	fsw	a7, fa0, 0
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 44
	addi	a2, a14, 0
	addi	a1, a12, 0
	addi	a0, a13, 0
	addi	a21, a4, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 316
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a1, sp, 4
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 292
	lw	a2, sp, 40
	lw	a3, a2, 4
	addi	a4, zero, -1
	bne	a3, a4, 8
	jal	zero, 268
	slli	a3, a3, 2
	lw	a4, sp, 28
	add	t0, a4, a3
	lw	a3, t0, 0
	addi	a5, zero, 0
	lw	a6, sp, 20
	lw	a21, sp, 24
	addi	a2, a6, 0
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 184
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 20
	lw	a21, sp, 24
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	lw	a1, a0, 12
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 20
	lw	a21, sp, 24
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a0, zero, 4
	lw	a1, sp, 40
	lw	a2, sp, 20
	lw	a21, sp, 16
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	jal	zero, 4
	lw	a0, sp, 36
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, a1, 0
	addi	a4, zero, -1
	bne	a3, a4, 8
	jalr	zero, ra, 0
	addi	a4, zero, 99
	sw	sp, a0, 44
	bne	a3, a4, 212
	lw	a3, a1, 4
	addi	a4, zero, -1
	bne	a3, a4, 8
	jal	zero, 192
	slli	a3, a3, 2
	lw	a4, sp, 28
	add	t0, a4, a3
	lw	a3, t0, 0
	addi	a5, zero, 0
	lw	a6, sp, 20
	lw	a21, sp, 24
	sw	sp, a1, 48
	addi	a2, a6, 0
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a3, sp, 20
	lw	a21, sp, 24
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a0, zero, 3
	lw	a1, sp, 48
	lw	a2, sp, 20
	lw	a21, sp, 16
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	jal	zero, 288
	lw	a4, sp, 20
	lw	a21, sp, 12
	sw	sp, a1, 48
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 232
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a0, sp, 4
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 208
	lw	a0, sp, 48
	lw	a1, a0, 4
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 184
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 20
	lw	a21, sp, 24
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a3, sp, 20
	lw	a21, sp, 24
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a0, zero, 3
	lw	a1, sp, 48
	lw	a2, sp, 20
	lw	a21, sp, 16
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	jal	zero, 4
	lw	a0, sp, 44
	addi	a0, a0, 1
	lw	a1, sp, 32
	lw	a2, sp, 20
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, a21, 8
	lw	a2, a21, 4
	flw	fa0, a2, 0
	lw	a3, a0, 20
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a2, 4
	lw	a3, a0, 20
	flw	fa2, a3, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a2, 8
	lw	a2, a0, 20
	flw	fa3, a2, 8
	fsub.s	fa2, fa2, fa3, rne
	lw	a2, a0, 16
	flw	fa3, a2, 0
	fmul.s	fa3, fa0, fa3, rne
	lw	a2, a0, 16
	flw	fa4, a2, 4
	fmul.s	fa4, fa1, fa4, rne
	lw	a2, a0, 16
	flw	fa5, a2, 8
	fmul.s	fa5, fa2, fa5, rne
	lw	a2, a0, 12
	addi	a3, zero, 0
	bne	a2, a3, 20
	fsw	a1, fa3, 0
	fsw	a1, fa4, 4
	fsw	a1, fa5, 8
	jal	zero, 160
	lw	a2, a0, 36
	flw	fa6, a2, 8
	fmul.s	fa6, fa1, fa6, rne
	lw	a2, a0, 36
	flw	fa7, a2, 4
	fmul.s	fa7, fa2, fa7, rne
	fadd.s	fa6, fa6, fa7, rne
	lui	a2, 0
	addi	a2, a2, 124
	flw	fa7, a2, 0
	fmul.s	fa6, fa6, fa7, rne
	fadd.s	fa3, fa3, fa6, rne
	fsw	a1, fa3, 0
	lw	a2, a0, 36
	flw	fa3, a2, 8
	fmul.s	fa3, fa0, fa3, rne
	lw	a2, a0, 36
	flw	fa6, a2, 0
	fmul.s	fa2, fa2, fa6, rne
	fadd.s	fa2, fa3, fa2, rne
	lui	a2, 0
	addi	a2, a2, 124
	flw	fa3, a2, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa2, fa4, fa2, rne
	fsw	a1, fa2, 4
	lw	a2, a0, 36
	flw	fa2, a2, 4
	fmul.s	fa0, fa0, fa2, rne
	lw	a2, a0, 36
	flw	fa2, a2, 0
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a2, 0
	addi	a2, a2, 124
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	fadd.s	fa0, fa5, fa0, rne
	fsw	a1, fa0, 8
	lw	a0, a0, 24
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	jal	zero, -19580
	lw	a2, a21, 4
	lw	a3, a0, 0
	lw	a4, a0, 32
	flw	fa0, a4, 0
	fsw	a2, fa0, 0
	lw	a4, a0, 32
	flw	fa0, a4, 4
	fsw	a2, fa0, 4
	lw	a4, a0, 32
	flw	fa0, a4, 8
	fsw	a2, fa0, 8
	addi	a4, zero, 1
	bne	a3, a4, 280
	flw	fa0, a1, 0
	lw	a3, a0, 20
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	lui	a3, 0
	addi	a3, a3, 72
	flw	fa1, a3, 0
	fmul.s	fa1, fa0, fa1, rne
	fcvt.w.s	t0, fa1, rdn
	fcvt.s.w	fa1, t0, rne
	lui	a3, 0
	addi	a3, a3, 68
	flw	fa2, a3, 0
	fmul.s	fa1, fa1, fa2, rne
	lui	a3, 0
	addi	a3, a3, 80
	flw	fa2, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	flt.s	t0, fa2, fa0
	bne	zero, t0, 12
	addi	a3, zero, 1
	jal	zero, 8
	addi	a3, zero, 0
	flw	fa0, a1, 8
	lw	a0, a0, 20
	flw	fa1, a0, 8
	fsub.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 72
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	fcvt.w.s	t0, fa1, rdn
	fcvt.s.w	fa1, t0, rne
	lui	a0, 0
	addi	a0, a0, 68
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	lui	a0, 0
	addi	a0, a0, 80
	flw	fa2, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	flt.s	t0, fa2, fa0
	bne	zero, t0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a3, a1, 44
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 88
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa0, a0, 0
	jal	zero, 40
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 88
	flw	fa0, a0, 0
	fsw	a2, fa0, 4
	jalr	zero, ra, 0
	addi	a4, zero, 2
	bne	a3, a4, 116
	flw	fa0, a1, 4
	lui	a0, 0
	addi	a0, a0, 76
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	sw	sp, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 28752
	addi	sp, sp, -8
	lw	ra, sp, 4
	fmul.s	fa0, fa0, fa0, rne
	lui	a0, 0
	addi	a0, a0, 88
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa1, 0
	lui	a1, 0
	addi	a1, a1, 88
	flw	fa1, a1, 0
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa2, a1, 0
	fsub.s	fa0, fa2, fa0, rne
	fmul.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 4
	jalr	zero, ra, 0
	addi	a4, zero, 3
	bne	a3, a4, 188
	flw	fa0, a1, 0
	lw	a3, a0, 20
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	lw	a0, a0, 20
	flw	fa2, a0, 8
	fsub.s	fa1, fa1, fa2, rne
	fmul.s	fa0, fa0, fa0, rne
	fmul.s	fa1, fa1, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsqrt.s	fa0, fa0, rne
	lui	a0, 0
	addi	a0, a0, 80
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	fcvt.w.s	t0, fa0, rdn
	fcvt.s.w	fa1, t0, rne
	fsub.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	sw	sp, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 28872
	addi	sp, sp, -8
	lw	ra, sp, 4
	fmul.s	fa0, fa0, fa0, rne
	lui	a0, 0
	addi	a0, a0, 88
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa1, 4
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa1, a1, 0
	fsub.s	fa0, fa1, fa0, rne
	lui	a1, 0
	addi	a1, a1, 88
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	addi	a4, zero, 4
	bne	a3, a4, 516
	flw	fa0, a1, 0
	lw	a3, a0, 20
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	lw	a3, a0, 16
	flw	fa1, a3, 0
	fsqrt.s	fa1, fa1, rne
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	lw	a3, a0, 20
	flw	fa2, a3, 8
	fsub.s	fa1, fa1, fa2, rne
	lw	a3, a0, 16
	flw	fa2, a3, 8
	fsqrt.s	fa2, fa2, rne
	fmul.s	fa1, fa1, fa2, rne
	fmul.s	fa2, fa0, fa0, rne
	fmul.s	fa3, fa1, fa1, rne
	fadd.s	fa2, fa2, fa3, rne
	lui	a3, 0
	addi	a3, a3, 108
	flw	fa3, a3, 0
	fsgnjx.s	fa4, fa0, fa0
	sw	sp, a2, 0
	fsw	sp, fa2, 4
	sw	sp, a0, 8
	sw	sp, a1, 12
	flt.s	t0, fa3, fa4
	bne	zero, t0, 20
	lui	a3, 0
	addi	a3, a3, 104
	flw	fa0, a3, 0
	jal	zero, 64
	fdiv.s	fa0, fa1, fa0, rne
	fsgnjx.s	fa0, fa0, fa0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 29164
	addi	sp, sp, -20
	lw	ra, sp, 16
	lui	a0, 0
	addi	a0, a0, 100
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	fcvt.w.s	t0, fa0, rdn
	fcvt.s.w	fa1, t0, rne
	fsub.s	fa0, fa0, fa1, rne
	lw	a0, sp, 12
	flw	fa1, a0, 4
	lw	a0, sp, 8
	lw	a1, a0, 20
	flw	fa2, a1, 4
	fsub.s	fa1, fa1, fa2, rne
	lw	a0, a0, 16
	flw	fa2, a0, 4
	fsqrt.s	fa2, fa2, rne
	fmul.s	fa1, fa1, fa2, rne
	lui	a0, 0
	addi	a0, a0, 108
	flw	fa2, a0, 0
	flw	fa3, sp, 4
	fsgnjx.s	fa4, fa3, fa3
	fsw	sp, fa0, 16
	flt.s	t0, fa2, fa4
	bne	zero, t0, 20
	lui	a0, 0
	addi	a0, a0, 104
	flw	fa0, a0, 0
	jal	zero, 68
	fdiv.s	fa1, fa1, fa3, rne
	fsgnjx.s	fa1, fa1, fa1
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 29000
	addi	sp, sp, -24
	lw	ra, sp, 20
	lui	a0, 0
	addi	a0, a0, 100
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	fcvt.w.s	t0, fa0, rdn
	fcvt.s.w	fa1, t0, rne
	fsub.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa2, a0, 0
	flw	fa3, sp, 16
	fsub.s	fa2, fa2, fa3, rne
	fmul.s	fa2, fa2, fa2, rne
	fsub.s	fa1, fa1, fa2, rne
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa2, a0, 0
	fsub.s	fa0, fa2, fa0, rne
	fmul.s	fa0, fa0, fa0, rne
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 20
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa0, a0, 0
	jal	zero, 4
	lui	a0, 0
	addi	a0, a0, 88
	flw	fa1, a0, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 84
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 40
	lw	a3, a21, 36
	lw	a4, a21, 32
	lw	a5, a21, 28
	lw	a6, a21, 24
	lw	a7, a21, 20
	lw	a8, a21, 16
	lw	a9, a21, 12
	lw	a10, a21, 8
	lw	a11, a21, 4
	addi	a12, zero, 0
	blt	a0, a12, 656
	slli	a12, a0, 2
	add	t0, a7, a12
	lw	a7, t0, 0
	lw	a12, a7, 4
	lui	a13, 0
	addi	a13, a13, 64
	flw	fa2, a13, 0
	fsw	a3, fa2, 0
	addi	a13, zero, 0
	lw	a14, a8, 0
	sw	sp, a21, 0
	sw	sp, a0, 4
	fsw	sp, fa1, 8
	sw	sp, a4, 12
	sw	sp, a6, 16
	sw	sp, a1, 20
	fsw	sp, fa0, 24
	sw	sp, a9, 28
	sw	sp, a12, 32
	sw	sp, a5, 36
	sw	sp, a8, 40
	sw	sp, a7, 44
	sw	sp, a10, 48
	sw	sp, a11, 52
	sw	sp, a3, 56
	addi	a1, a14, 0
	addi	a0, a13, 0
	addi	a21, a2, 0
	addi	a2, a12, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 112
	flw	fa1, a0, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 40
	lui	a0, 0
	addi	a0, a0, 60
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 404
	lw	a0, sp, 52
	lw	a0, a0, 0
	slli	a0, a0, 2
	lw	a1, sp, 48
	lw	a1, a1, 0
	add	a0, a0, a1
	lw	a1, sp, 44
	lw	a2, a1, 0
	bne	a0, a2, 368
	addi	a0, zero, 0
	lw	a2, sp, 40
	lw	a2, a2, 0
	lw	a21, sp, 36
	addi	a1, a2, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 312
	lw	a0, sp, 32
	lw	a1, a0, 0
	lw	a2, sp, 28
	flw	fa0, a2, 0
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a2, 4
	flw	fa2, a1, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a2, 8
	flw	fa2, a1, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lw	a1, sp, 44
	flw	fa1, a1, 8
	flw	fa2, sp, 24
	fmul.s	fa3, fa1, fa2, rne
	fmul.s	fa0, fa3, fa0, rne
	lw	a0, a0, 0
	lw	a1, sp, 20
	flw	fa3, a1, 0
	flw	fa4, a0, 0
	fmul.s	fa3, fa3, fa4, rne
	flw	fa4, a1, 4
	flw	fa5, a0, 4
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	flw	fa4, a1, 8
	flw	fa5, a0, 8
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	fmul.s	fa1, fa1, fa3, rne
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa3, a0, 0
	flt.s	t0, fa0, fa3
	bne	zero, t0, 76
	lw	a0, sp, 16
	flw	fa3, a0, 0
	lw	a2, sp, 12
	flw	fa4, a2, 0
	fmul.s	fa4, fa0, fa4, rne
	fadd.s	fa3, fa3, fa4, rne
	fsw	a0, fa3, 0
	flw	fa3, a0, 4
	flw	fa4, a2, 4
	fmul.s	fa4, fa0, fa4, rne
	fadd.s	fa3, fa3, fa4, rne
	fsw	a0, fa3, 4
	flw	fa3, a0, 8
	flw	fa4, a2, 8
	fmul.s	fa0, fa0, fa4, rne
	fadd.s	fa0, fa3, fa0, rne
	fsw	a0, fa0, 8
	jal	zero, 4
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa0, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 64
	fmul.s	fa0, fa1, fa1, rne
	fmul.s	fa0, fa0, fa0, rne
	flw	fa1, sp, 8
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 16
	flw	fa3, a0, 0
	fadd.s	fa3, fa3, fa0, rne
	fsw	a0, fa3, 0
	flw	fa3, a0, 4
	fadd.s	fa3, fa3, fa0, rne
	fsw	a0, fa3, 4
	flw	fa3, a0, 8
	fadd.s	fa0, fa3, fa0, rne
	fsw	a0, fa0, 8
	jal	zero, 4
	jal	zero, 4
	jal	zero, 4
	lw	a0, sp, 4
	addi	a0, a0, -1
	flw	fa0, sp, 24
	flw	fa1, sp, 8
	lw	a1, sp, 20
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a3, a21, 64
	lw	a4, a21, 60
	lw	a5, a21, 56
	lw	a6, a21, 52
	lw	a7, a21, 48
	lw	a8, a21, 44
	lw	a9, a21, 40
	lw	a10, a21, 36
	lw	a11, a21, 32
	lw	a12, a21, 28
	lw	a13, a21, 24
	lw	a14, a21, 20
	lw	a15, a21, 16
	lw	a16, a21, 12
	lw	a17, a21, 8
	lw	a18, a21, 4
	addi	a19, zero, 4
	blt	a19, a0, 1952
	lw	a19, a2, 8
	lui	a20, 0
	addi	a20, a20, 64
	flw	fa2, a20, 0
	fsw	a6, fa2, 0
	addi	a20, zero, 0
	sw	sp, a21, 0
	lw	a21, a12, 0
	fsw	sp, fa1, 4
	sw	sp, a4, 8
	sw	sp, a14, 12
	sw	sp, a8, 16
	sw	sp, a10, 20
	sw	sp, a12, 24
	sw	sp, a7, 28
	sw	sp, a2, 32
	sw	sp, a3, 36
	sw	sp, a9, 40
	sw	sp, a16, 44
	sw	sp, a18, 48
	sw	sp, a13, 52
	sw	sp, a15, 56
	sw	sp, a17, 60
	sw	sp, a11, 64
	fsw	sp, fa0, 68
	sw	sp, a1, 72
	sw	sp, a19, 76
	sw	sp, a0, 80
	sw	sp, a6, 84
	addi	a2, a1, 0
	addi	a0, a20, 0
	addi	a1, a21, 0
	addi	a21, a5, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 84
	flw	fa0, a0, 0
	lui	a1, 0
	addi	a1, a1, 112
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 40
	lui	a1, 0
	addi	a1, a1, 60
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a1, zero, 1
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 0
	addi	a2, zero, 0
	bne	a1, a2, 200
	addi	a0, zero, -1
	lw	a1, sp, 80
	slli	a2, a1, 2
	lw	a3, sp, 76
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, zero, 0
	bne	a1, a0, 8
	jalr	zero, ra, 0
	lui	a0, 53248
	addi	a0, a0, 120
	lw	a1, sp, 72
	flw	fa0, a1, 0
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a0, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a0, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsgnjn.s	fa0, fa0, fa0
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa1, a0, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 80
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 68
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 53248
	addi	a0, a0, 132
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 64
	flw	fa1, a0, 0
	fadd.s	fa1, fa1, fa0, rne
	fsw	a0, fa1, 0
	flw	fa1, a0, 4
	fadd.s	fa1, fa1, fa0, rne
	fsw	a0, fa1, 4
	flw	fa1, a0, 8
	fadd.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a1, sp, 60
	lw	a1, a1, 0
	lui	a2, 49152
	addi	a2, a2, 1312
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	lw	a3, a2, 8
	lw	a4, a2, 28
	flw	fa0, a4, 0
	flw	fa1, sp, 68
	fmul.s	fa0, fa0, fa1, rne
	lw	a4, a2, 4
	addi	a5, zero, 1
	sw	sp, a3, 88
	fsw	sp, fa0, 92
	sw	sp, a1, 96
	sw	sp, a2, 100
	bne	a4, a5, 168
	lw	a4, sp, 56
	lw	a5, a4, 0
	lui	a6, 0
	addi	a6, a6, 152
	flw	fa2, a6, 0
	lw	a6, sp, 52
	fsw	a6, fa2, 0
	fsw	a6, fa2, 4
	fsw	a6, fa2, 8
	addi	a7, a5, -1
	addi	a5, a5, -1
	slli	a5, a5, 2
	lw	a8, sp, 72
	add	t0, a8, a5
	flw	fa2, t0, 0
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa3, a5, 0
	feq.s	t0, fa2, fa3
	bne	zero, t0, 56
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa3, a5, 0
	flt.s	t0, fa2, fa3
	bne	zero, t0, 20
	lui	a5, 0
	addi	a5, a5, 144
	flw	fa2, a5, 0
	jal	zero, 16
	lui	a5, 0
	addi	a5, a5, 148
	flw	fa2, a5, 0
	jal	zero, 16
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa2, a5, 0
	fsgnjn.s	fa2, fa2, fa2
	slli	a5, a7, 2
	add	t0, a6, a5
	fsw	t0, fa2, 0
	jal	zero, 100
	addi	a5, zero, 2
	bne	a4, a5, 60
	lw	a4, a2, 16
	flw	fa2, a4, 0
	fsgnjn.s	fa2, fa2, fa2
	lw	a4, sp, 52
	fsw	a4, fa2, 0
	lw	a5, a2, 16
	flw	fa2, a5, 4
	fsgnjn.s	fa2, fa2, fa2
	fsw	a4, fa2, 4
	lw	a5, a2, 16
	flw	fa2, a5, 8
	fsgnjn.s	fa2, fa2, fa2
	fsw	a4, fa2, 8
	jal	zero, 36
	lw	a21, sp, 48
	addi	a0, a2, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 44
	flw	fa0, a1, 0
	lw	a0, sp, 40
	fsw	a0, fa0, 0
	flw	fa0, a1, 4
	fsw	a0, fa0, 4
	flw	fa0, a1, 8
	fsw	a0, fa0, 8
	lw	a0, sp, 100
	lw	a21, sp, 36
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 96
	slli	a0, a0, 2
	lw	a1, sp, 56
	lw	a1, a1, 0
	add	a0, a0, a1
	lw	a1, sp, 80
	slli	a2, a1, 2
	lw	a3, sp, 76
	add	t0, a3, a2
	sw	t0, a0, 0
	lw	a0, sp, 32
	lw	a2, a0, 4
	slli	a4, a1, 2
	add	t0, a2, a4
	lw	a2, t0, 0
	lw	a4, sp, 44
	flw	fa0, a4, 0
	fsw	a2, fa0, 0
	flw	fa0, a4, 4
	fsw	a2, fa0, 4
	flw	fa0, a4, 8
	fsw	a2, fa0, 8
	lw	a2, a0, 12
	lui	a5, 0
	addi	a5, a5, 124
	flw	fa0, a5, 0
	lw	a5, sp, 100
	lw	a6, a5, 28
	flw	fa1, a6, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 24
	addi	a6, zero, 0
	slli	a7, a1, 2
	add	t0, a2, a7
	sw	t0, a6, 0
	jal	zero, 176
	addi	a6, zero, 1
	slli	a7, a1, 2
	add	t0, a2, a7
	sw	t0, a6, 0
	lw	a2, a0, 16
	slli	a6, a1, 2
	add	t0, a2, a6
	lw	a6, t0, 0
	lw	a7, sp, 28
	flw	fa0, a7, 0
	fsw	a6, fa0, 0
	flw	fa0, a7, 4
	fsw	a6, fa0, 4
	flw	fa0, a7, 8
	fsw	a6, fa0, 8
	slli	a6, a1, 2
	add	t0, a2, a6
	lw	a2, t0, 0
	lui	a6, 0
	addi	a6, a6, 56
	flw	fa0, a6, 0
	flw	fa1, sp, 92
	fmul.s	fa0, fa0, fa1, rne
	flw	fa2, a2, 0
	fmul.s	fa2, fa2, fa0, rne
	fsw	a2, fa2, 0
	flw	fa2, a2, 4
	fmul.s	fa2, fa2, fa0, rne
	fsw	a2, fa2, 4
	flw	fa2, a2, 8
	fmul.s	fa0, fa2, fa0, rne
	fsw	a2, fa0, 8
	lw	a2, a0, 28
	slli	a6, a1, 2
	add	t0, a2, a6
	lw	a2, t0, 0
	lw	a6, sp, 52
	flw	fa0, a6, 0
	fsw	a2, fa0, 0
	flw	fa0, a6, 4
	fsw	a2, fa0, 4
	flw	fa0, a6, 8
	fsw	a2, fa0, 8
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	lw	a2, sp, 72
	flw	fa1, a2, 0
	lw	a6, sp, 52
	flw	fa2, a6, 0
	fmul.s	fa1, fa1, fa2, rne
	flw	fa2, a2, 4
	flw	fa3, a6, 4
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a2, 8
	flw	fa3, a6, 8
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a2, 0
	flw	fa2, a6, 0
	fmul.s	fa2, fa0, fa2, rne
	fadd.s	fa1, fa1, fa2, rne
	fsw	a2, fa1, 0
	flw	fa1, a2, 4
	flw	fa2, a6, 4
	fmul.s	fa2, fa0, fa2, rne
	fadd.s	fa1, fa1, fa2, rne
	fsw	a2, fa1, 4
	flw	fa1, a2, 8
	flw	fa2, a6, 8
	fmul.s	fa0, fa0, fa2, rne
	fadd.s	fa0, fa1, fa0, rne
	fsw	a2, fa0, 8
	lw	a7, a5, 28
	flw	fa0, a7, 4
	flw	fa1, sp, 68
	fmul.s	fa0, fa1, fa0, rne
	addi	a7, zero, 0
	lw	a8, sp, 24
	lw	a8, a8, 0
	lw	a21, sp, 20
	fsw	sp, fa0, 104
	addi	a1, a8, 0
	addi	a0, a7, 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
	addi	a1, zero, 0
	bne	a0, a1, 308
	lui	a0, 53248
	addi	a0, a0, 120
	lw	a1, sp, 52
	flw	fa0, a1, 0
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a0, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a0, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsgnjn.s	fa0, fa0, fa0
	flw	fa1, sp, 92
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 53248
	addi	a0, a0, 120
	lw	a1, sp, 72
	flw	fa2, a1, 0
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	flw	fa3, a1, 4
	flw	fa4, a0, 4
	fmul.s	fa3, fa3, fa4, rne
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a1, 8
	flw	fa4, a0, 8
	fmul.s	fa3, fa3, fa4, rne
	fadd.s	fa2, fa2, fa3, rne
	fsgnjn.s	fa2, fa2, fa2
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa3, a0, 0
	flt.s	t0, fa0, fa3
	bne	zero, t0, 76
	lw	a0, sp, 64
	flw	fa3, a0, 0
	lw	a2, sp, 28
	flw	fa4, a2, 0
	fmul.s	fa4, fa0, fa4, rne
	fadd.s	fa3, fa3, fa4, rne
	fsw	a0, fa3, 0
	flw	fa3, a0, 4
	flw	fa4, a2, 4
	fmul.s	fa4, fa0, fa4, rne
	fadd.s	fa3, fa3, fa4, rne
	fsw	a0, fa3, 4
	flw	fa3, a0, 8
	flw	fa4, a2, 8
	fmul.s	fa0, fa0, fa4, rne
	fadd.s	fa0, fa3, fa0, rne
	fsw	a0, fa0, 8
	jal	zero, 4
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa0, a0, 0
	flt.s	t0, fa2, fa0
	bne	zero, t0, 64
	fmul.s	fa0, fa2, fa2, rne
	fmul.s	fa0, fa0, fa0, rne
	flw	fa2, sp, 104
	fmul.s	fa0, fa0, fa2, rne
	lw	a0, sp, 64
	flw	fa3, a0, 0
	fadd.s	fa3, fa3, fa0, rne
	fsw	a0, fa3, 0
	flw	fa3, a0, 4
	fadd.s	fa3, fa3, fa0, rne
	fsw	a0, fa3, 4
	flw	fa3, a0, 8
	fadd.s	fa0, fa3, fa0, rne
	fsw	a0, fa0, 8
	jal	zero, 4
	jal	zero, 4
	lw	a0, sp, 44
	flw	fa0, a0, 0
	lw	a1, sp, 16
	fsw	a1, fa0, 0
	flw	fa0, a0, 4
	fsw	a1, fa0, 4
	flw	fa0, a0, 8
	fsw	a1, fa0, 8
	lui	a1, 49152
	addi	a1, a1, 1304
	lw	a1, a1, 0
	addi	a1, a1, -1
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	ra, -13668
	addi	sp, sp, -112
	lw	ra, sp, 108
	lw	a0, sp, 12
	lw	a0, a0, 0
	addi	a0, a0, -1
	flw	fa0, sp, 92
	flw	fa1, sp, 104
	lw	a1, sp, 72
	lw	a21, sp, 8
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa0, a0, 0
	flw	fa1, sp, 68
	flt.s	t0, fa1, fa0
	bne	zero, t0, 152
	addi	a0, zero, 4
	lw	a1, sp, 80
	blt	a1, a0, 8
	jal	zero, 28
	addi	a0, a1, 1
	addi	a2, zero, -1
	slli	a0, a0, 2
	lw	a3, sp, 76
	add	t0, a3, a0
	sw	t0, a2, 0
	addi	a0, zero, 2
	lw	a2, sp, 88
	bne	a2, a0, 96
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 100
	lw	a0, a0, 28
	flw	fa2, a0, 0
	fsub.s	fa0, fa0, fa2, rne
	fmul.s	fa0, fa1, fa0, rne
	addi	a0, a1, 1
	lw	a1, sp, 84
	flw	fa1, a1, 0
	flw	fa2, sp, 4
	fadd.s	fa1, fa2, fa1, rne
	lw	a1, sp, 72
	lw	a2, sp, 32
	lw	a21, sp, 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -112
	lw	ra, sp, 108
	jal	zero, 4
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a1, a21, 48
	lw	a2, a21, 44
	lw	a3, a21, 40
	lw	a4, a21, 36
	lw	a5, a21, 32
	lw	a6, a21, 28
	lw	a7, a21, 24
	lw	a8, a21, 20
	lw	a9, a21, 16
	lw	a10, a21, 12
	lw	a11, a21, 8
	lw	a12, a21, 4
	lui	a13, 0
	addi	a13, a13, 64
	flw	fa1, a13, 0
	fsw	a3, fa1, 0
	addi	a13, zero, 0
	lw	a14, a6, 0
	sw	sp, a4, 0
	sw	sp, a12, 4
	fsw	sp, fa0, 8
	sw	sp, a5, 12
	sw	sp, a6, 16
	sw	sp, a9, 20
	sw	sp, a1, 24
	sw	sp, a11, 28
	sw	sp, a7, 32
	sw	sp, a8, 36
	sw	sp, a0, 40
	sw	sp, a10, 44
	sw	sp, a3, 48
	addi	a1, a14, 0
	addi	a21, a2, 0
	addi	a2, a0, 0
	addi	a0, a13, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 112
	flw	fa1, a0, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 40
	lui	a0, 0
	addi	a0, a0, 60
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lui	a0, 49152
	addi	a0, a0, 1312
	lw	a1, sp, 44
	lw	a1, a1, 0
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	lw	a1, sp, 40
	lw	a1, a1, 0
	lw	a2, a0, 4
	addi	a3, zero, 1
	sw	sp, a0, 52
	bne	a2, a3, 164
	lw	a2, sp, 36
	lw	a2, a2, 0
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	lw	a3, sp, 32
	fsw	a3, fa0, 0
	fsw	a3, fa0, 4
	fsw	a3, fa0, 8
	addi	a4, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	t0, a1, a2
	flw	fa0, t0, 0
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	feq.s	t0, fa0, fa1
	bne	zero, t0, 56
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 20
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa0, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 148
	flw	fa0, a1, 0
	jal	zero, 16
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	fsgnjn.s	fa0, fa0, fa0
	slli	a1, a4, 2
	add	t0, a3, a1
	fsw	t0, fa0, 0
	jal	zero, 96
	addi	a1, zero, 2
	bne	a2, a1, 60
	lw	a1, a0, 16
	flw	fa0, a1, 0
	fsgnjn.s	fa0, fa0, fa0
	lw	a1, sp, 32
	fsw	a1, fa0, 0
	lw	a2, a0, 16
	flw	fa0, a2, 4
	fsgnjn.s	fa0, fa0, fa0
	fsw	a1, fa0, 4
	lw	a2, a0, 16
	flw	fa0, a2, 8
	fsgnjn.s	fa0, fa0, fa0
	fsw	a1, fa0, 8
	jal	zero, 32
	lw	a21, sp, 28
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52
	lw	a1, sp, 20
	lw	a21, sp, 24
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a0, zero, 0
	lw	a1, sp, 16
	lw	a1, a1, 0
	lw	a21, sp, 12
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 0
	bne	a0, a1, 196
	lui	a0, 53248
	addi	a0, a0, 120
	lw	a1, sp, 32
	flw	fa0, a1, 0
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a0, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a0, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	fsgnjn.s	fa0, fa0, fa0
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa1, a0, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 8
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa0, a0, 0
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 52
	lw	a0, a0, 28
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 4
	flw	fa1, a0, 0
	lw	a1, sp, 0
	flw	fa2, a1, 0
	fmul.s	fa2, fa0, fa2, rne
	fadd.s	fa1, fa1, fa2, rne
	fsw	a0, fa1, 0
	flw	fa1, a0, 4
	flw	fa2, a1, 4
	fmul.s	fa2, fa0, fa2, rne
	fadd.s	fa1, fa1, fa2, rne
	fsw	a0, fa1, 4
	flw	fa1, a0, 8
	flw	fa2, a1, 8
	fmul.s	fa0, fa0, fa2, rne
	fadd.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a4, a21, 4
	addi	a5, zero, 0
	blt	a3, a5, 508
	slli	a5, a3, 2
	add	t0, a0, a5
	lw	a5, t0, 0
	lw	a5, a5, 0
	flw	fa0, a5, 0
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a5, 4
	flw	fa2, a1, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a5, 8
	flw	fa2, a1, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa1, a5, 0
	sw	sp, a2, 0
	sw	sp, a21, 4
	sw	sp, a4, 8
	sw	sp, a1, 12
	sw	sp, a0, 16
	sw	sp, a3, 20
	flt.s	t0, fa1, fa0
	bne	zero, t0, 72
	addi	a5, a3, 1
	slli	a5, a5, 2
	add	t0, a0, a5
	lw	a5, t0, 0
	lui	a6, 0
	addi	a6, a6, 44
	flw	fa1, a6, 0
	fdiv.s	fa0, fa0, fa1, rne
	addi	a0, a5, 0
	addi	a21, a4, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	jal	zero, 64
	slli	a5, a3, 2
	add	t0, a0, a5
	lw	a5, t0, 0
	lui	a6, 0
	addi	a6, a6, 40
	flw	fa1, a6, 0
	fdiv.s	fa0, fa0, fa1, rne
	addi	a0, a5, 0
	addi	a21, a4, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	addi	a0, a0, -2
	addi	a1, zero, 0
	blt	a0, a1, 256
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a3, sp, 12
	flw	fa1, a3, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a3, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a3, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	sw	sp, a0, 24
	flt.s	t0, fa1, fa0
	bne	zero, t0, 72
	addi	a1, a0, 1
	slli	a1, a1, 2
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a4, 0
	addi	a4, a4, 44
	flw	fa1, a4, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	jal	zero, 64
	slli	a1, a0, 2
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a4, 0
	addi	a4, a4, 40
	flw	fa1, a4, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	addi	a3, a0, -2
	lw	a0, sp, 16
	lw	a1, sp, 12
	lw	a2, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a3, a21, 12
	lw	a4, a21, 8
	lw	a5, a21, 4
	addi	a6, zero, 0
	sw	sp, a1, 0
	sw	sp, a4, 4
	sw	sp, a3, 8
	sw	sp, a2, 12
	sw	sp, a5, 16
	sw	sp, a0, 20
	bne	a0, a6, 8
	jal	zero, 124
	lw	a6, a5, 0
	flw	fa0, a2, 0
	fsw	a3, fa0, 0
	flw	fa0, a2, 4
	fsw	a3, fa0, 4
	flw	fa0, a2, 8
	fsw	a3, fa0, 8
	lui	a7, 49152
	addi	a7, a7, 1304
	lw	a7, a7, 0
	addi	a7, a7, -1
	sw	sp, a6, 24
	addi	a1, a7, 0
	addi	a0, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -15372
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a3, zero, 118
	lw	a0, sp, 24
	lw	a1, sp, 0
	lw	a2, sp, 12
	lw	a21, sp, 4
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a0, zero, 1
	lw	a1, sp, 20
	bne	a1, a0, 8
	jal	zero, 136
	lw	a0, sp, 16
	lw	a2, a0, 4
	lw	a3, sp, 12
	flw	fa0, a3, 0
	lw	a4, sp, 8
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lui	a5, 49152
	addi	a5, a5, 1304
	lw	a5, a5, 0
	addi	a5, a5, -1
	sw	sp, a2, 28
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -15520
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a3, zero, 118
	lw	a0, sp, 28
	lw	a1, sp, 0
	lw	a2, sp, 12
	lw	a21, sp, 4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a0, zero, 2
	lw	a1, sp, 20
	bne	a1, a0, 8
	jal	zero, 136
	lw	a0, sp, 16
	lw	a2, a0, 8
	lw	a3, sp, 12
	flw	fa0, a3, 0
	lw	a4, sp, 8
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lui	a5, 49152
	addi	a5, a5, 1304
	lw	a5, a5, 0
	addi	a5, a5, -1
	sw	sp, a2, 32
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -15668
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a3, zero, 118
	lw	a0, sp, 32
	lw	a1, sp, 0
	lw	a2, sp, 12
	lw	a21, sp, 4
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a0, zero, 3
	lw	a1, sp, 20
	bne	a1, a0, 8
	jal	zero, 136
	lw	a0, sp, 16
	lw	a2, a0, 12
	lw	a3, sp, 12
	flw	fa0, a3, 0
	lw	a4, sp, 8
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lui	a5, 49152
	addi	a5, a5, 1304
	lw	a5, a5, 0
	addi	a5, a5, -1
	sw	sp, a2, 36
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -15816
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a3, zero, 118
	lw	a0, sp, 36
	lw	a1, sp, 0
	lw	a2, sp, 12
	lw	a21, sp, 4
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a0, zero, 4
	lw	a1, sp, 20
	bne	a1, a0, 8
	jalr	zero, ra, 0
	lw	a0, sp, 16
	lw	a0, a0, 16
	lw	a1, sp, 12
	flw	fa0, a1, 0
	lw	a2, sp, 8
	fsw	a2, fa0, 0
	flw	fa0, a1, 4
	fsw	a2, fa0, 4
	flw	fa0, a1, 8
	fsw	a2, fa0, 8
	lui	a2, 49152
	addi	a2, a2, 1304
	lw	a2, a2, 0
	addi	a2, a2, -1
	sw	sp, a0, 40
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -15964
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a3, zero, 118
	lw	a0, sp, 40
	lw	a1, sp, 0
	lw	a2, sp, 12
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a2, a21, 24
	lw	a3, a21, 20
	lw	a4, a21, 16
	lw	a5, a21, 12
	lw	a6, a21, 8
	lw	a7, a21, 4
	lw	a8, a0, 20
	lw	a9, a0, 28
	lw	a10, a0, 4
	lw	a11, a0, 16
	slli	a12, a1, 2
	add	t0, a8, a12
	lw	a8, t0, 0
	flw	fa0, a8, 0
	fsw	a7, fa0, 0
	flw	fa0, a8, 4
	fsw	a7, fa0, 4
	flw	fa0, a8, 8
	fsw	a7, fa0, 8
	lw	a0, a0, 24
	lw	a0, a0, 0
	slli	a8, a1, 2
	add	t0, a9, a8
	lw	a8, t0, 0
	slli	a9, a1, 2
	add	t0, a10, a9
	lw	a9, t0, 0
	addi	a10, zero, 0
	sw	sp, a7, 0
	sw	sp, a4, 4
	sw	sp, a11, 8
	sw	sp, a1, 12
	sw	sp, a5, 16
	sw	sp, a2, 20
	sw	sp, a8, 24
	sw	sp, a3, 28
	sw	sp, a9, 32
	sw	sp, a6, 36
	sw	sp, a0, 40
	bne	a0, a10, 8
	jal	zero, 312
	lw	a10, a6, 0
	flw	fa0, a9, 0
	fsw	a3, fa0, 0
	flw	fa0, a9, 4
	fsw	a3, fa0, 4
	flw	fa0, a9, 8
	fsw	a3, fa0, 8
	lui	a12, 49152
	addi	a12, a12, 1304
	lw	a12, a12, 0
	addi	a12, a12, -1
	sw	sp, a10, 44
	addi	a1, a12, 0
	addi	a0, a9, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -16232
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 24
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 60
	lw	a1, a0, 476
	lui	a3, 0
	addi	a3, a3, 44
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 56
	lw	a1, a0, 472
	lui	a3, 0
	addi	a3, a3, 40
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a3, zero, 116
	lw	a0, sp, 44
	lw	a1, sp, 24
	lw	a2, sp, 32
	lw	a21, sp, 16
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 1
	lw	a1, sp, 40
	bne	a1, a0, 8
	jal	zero, 324
	lw	a0, sp, 36
	lw	a2, a0, 4
	lw	a3, sp, 32
	flw	fa0, a3, 0
	lw	a4, sp, 28
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lui	a5, 49152
	addi	a5, a5, 1304
	lw	a5, a5, 0
	addi	a5, a5, -1
	sw	sp, a2, 48
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, -16568
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 24
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 60
	lw	a1, a0, 476
	lui	a3, 0
	addi	a3, a3, 44
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	jal	zero, 56
	lw	a1, a0, 472
	lui	a3, 0
	addi	a3, a3, 40
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a3, zero, 116
	lw	a0, sp, 48
	lw	a1, sp, 24
	lw	a2, sp, 32
	lw	a21, sp, 16
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a0, zero, 2
	lw	a1, sp, 40
	bne	a1, a0, 8
	jal	zero, 324
	lw	a0, sp, 36
	lw	a2, a0, 8
	lw	a3, sp, 32
	flw	fa0, a3, 0
	lw	a4, sp, 28
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lui	a5, 49152
	addi	a5, a5, 1304
	lw	a5, a5, 0
	addi	a5, a5, -1
	sw	sp, a2, 52
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -16904
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 24
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 60
	lw	a1, a0, 476
	lui	a3, 0
	addi	a3, a3, 44
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	jal	zero, 56
	lw	a1, a0, 472
	lui	a3, 0
	addi	a3, a3, 40
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a3, zero, 116
	lw	a0, sp, 52
	lw	a1, sp, 24
	lw	a2, sp, 32
	lw	a21, sp, 16
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a0, zero, 3
	lw	a1, sp, 40
	bne	a1, a0, 8
	jal	zero, 324
	lw	a0, sp, 36
	lw	a2, a0, 12
	lw	a3, sp, 32
	flw	fa0, a3, 0
	lw	a4, sp, 28
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lui	a5, 49152
	addi	a5, a5, 1304
	lw	a5, a5, 0
	addi	a5, a5, -1
	sw	sp, a2, 56
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -17240
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 24
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 60
	lw	a1, a0, 476
	lui	a3, 0
	addi	a3, a3, 44
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	jal	zero, 56
	lw	a1, a0, 472
	lui	a3, 0
	addi	a3, a3, 40
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a3, zero, 116
	lw	a0, sp, 56
	lw	a1, sp, 24
	lw	a2, sp, 32
	lw	a21, sp, 16
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a0, zero, 4
	lw	a1, sp, 40
	bne	a1, a0, 8
	jal	zero, 324
	lw	a0, sp, 36
	lw	a0, a0, 16
	lw	a1, sp, 32
	flw	fa0, a1, 0
	lw	a2, sp, 28
	fsw	a2, fa0, 0
	flw	fa0, a1, 4
	fsw	a2, fa0, 4
	flw	fa0, a1, 8
	fsw	a2, fa0, 8
	lui	a2, 49152
	addi	a2, a2, 1304
	lw	a2, a2, 0
	addi	a2, a2, -1
	sw	sp, a0, 60
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -17576
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 24
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 60
	lw	a1, a0, 476
	lui	a3, 0
	addi	a3, a3, 44
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	jal	zero, 56
	lw	a1, a0, 472
	lui	a3, 0
	addi	a3, a3, 40
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a3, zero, 116
	lw	a0, sp, 60
	lw	a1, sp, 24
	lw	a2, sp, 32
	lw	a21, sp, 16
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 12
	slli	a0, a0, 2
	lw	a1, sp, 8
	add	t0, a1, a0
	lw	a1, t0, 0
	lw	a0, sp, 4
	lw	a2, sp, 0
	jal	zero, -27256
	lw	a5, a21, 8
	lw	a6, a21, 4
	slli	a7, a0, 2
	add	t0, a1, a7
	lw	a1, t0, 0
	lw	a1, a1, 20
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	t0, a2, a7
	lw	a7, t0, 0
	lw	a7, a7, 20
	slli	a8, a0, 2
	add	t0, a2, a8
	lw	a8, t0, 0
	lw	a8, a8, 20
	addi	a9, a0, 1
	slli	a9, a9, 2
	add	t0, a2, a9
	lw	a9, t0, 0
	lw	a9, a9, 20
	slli	a10, a0, 2
	add	t0, a3, a10
	lw	a3, t0, 0
	lw	a3, a3, 20
	slli	a10, a4, 2
	add	t0, a1, a10
	lw	a1, t0, 0
	flw	fa0, a1, 0
	fsw	a6, fa0, 0
	flw	fa0, a1, 4
	fsw	a6, fa0, 4
	flw	fa0, a1, 8
	fsw	a6, fa0, 8
	slli	a1, a4, 2
	add	t0, a7, a1
	lw	a1, t0, 0
	flw	fa0, a6, 0
	flw	fa1, a1, 0
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 0
	flw	fa0, a6, 4
	flw	fa1, a1, 4
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 4
	flw	fa0, a6, 8
	flw	fa1, a1, 8
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 8
	slli	a1, a4, 2
	add	t0, a8, a1
	lw	a1, t0, 0
	flw	fa0, a6, 0
	flw	fa1, a1, 0
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 0
	flw	fa0, a6, 4
	flw	fa1, a1, 4
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 4
	flw	fa0, a6, 8
	flw	fa1, a1, 8
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 8
	slli	a1, a4, 2
	add	t0, a9, a1
	lw	a1, t0, 0
	flw	fa0, a6, 0
	flw	fa1, a1, 0
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 0
	flw	fa0, a6, 4
	flw	fa1, a1, 4
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 4
	flw	fa0, a6, 8
	flw	fa1, a1, 8
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 8
	slli	a1, a4, 2
	add	t0, a3, a1
	lw	a1, t0, 0
	flw	fa0, a6, 0
	flw	fa1, a1, 0
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 0
	flw	fa0, a6, 4
	flw	fa1, a1, 4
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 4
	flw	fa0, a6, 8
	flw	fa1, a1, 8
	fadd.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 8
	slli	a0, a0, 2
	add	t0, a2, a0
	lw	a0, t0, 0
	lw	a0, a0, 16
	slli	a1, a4, 2
	add	t0, a0, a1
	lw	a1, t0, 0
	addi	a2, a6, 0
	addi	a0, a5, 0
	jal	zero, -27668
	lw	a2, a21, 16
	lw	a3, a21, 12
	lw	a4, a21, 8
	lw	a5, a21, 4
	addi	a6, zero, 4
	blt	a6, a1, 404
	lw	a6, a0, 8
	addi	a7, zero, 0
	slli	a8, a1, 2
	add	t0, a6, a8
	lw	a6, t0, 0
	blt	a6, a7, 376
	lw	a6, a0, 12
	slli	a7, a1, 2
	add	t0, a6, a7
	lw	a6, t0, 0
	addi	a7, zero, 0
	sw	sp, a21, 0
	sw	sp, a5, 4
	sw	sp, a0, 8
	sw	sp, a1, 12
	bne	a6, a7, 8
	jal	zero, 196
	lw	a6, a0, 20
	lw	a7, a0, 28
	lw	a8, a0, 4
	lw	a9, a0, 16
	slli	a10, a1, 2
	add	t0, a6, a10
	lw	a6, t0, 0
	flw	fa0, a6, 0
	fsw	a4, fa0, 0
	flw	fa0, a6, 4
	fsw	a4, fa0, 4
	flw	fa0, a6, 8
	fsw	a4, fa0, 8
	lw	a6, a0, 24
	lw	a6, a6, 0
	slli	a10, a1, 2
	add	t0, a7, a10
	lw	a7, t0, 0
	slli	a10, a1, 2
	add	t0, a8, a10
	lw	a8, t0, 0
	sw	sp, a4, 16
	sw	sp, a3, 20
	sw	sp, a9, 24
	addi	a1, a7, 0
	addi	a0, a6, 0
	addi	a21, a2, 0
	addi	a2, a8, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 12
	slli	a1, a0, 2
	lw	a2, sp, 24
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, sp, 20
	lw	a3, sp, 16
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -27944
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 12
	addi	a1, a0, 1
	addi	a0, zero, 4
	blt	a0, a1, 120
	lw	a0, sp, 8
	lw	a2, a0, 8
	addi	a3, zero, 0
	slli	a4, a1, 2
	add	t0, a2, a4
	lw	a2, t0, 0
	blt	a2, a3, 88
	lw	a2, a0, 12
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	addi	a3, zero, 0
	sw	sp, a1, 28
	bne	a2, a3, 8
	jal	zero, 32
	lw	a21, sp, 4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	addi	a1, a0, 1
	lw	a0, sp, 8
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a6, a21, 12
	lw	a7, a21, 8
	lw	a8, a21, 4
	slli	a9, a0, 2
	add	t0, a3, a9
	lw	a9, t0, 0
	addi	a10, zero, 4
	blt	a10, a5, 928
	addi	a10, zero, 0
	lw	a11, a9, 8
	slli	a12, a5, 2
	add	t0, a11, a12
	lw	a11, t0, 0
	blt	a11, a10, 900
	slli	a10, a0, 2
	add	t0, a3, a10
	lw	a10, t0, 0
	lw	a10, a10, 8
	slli	a11, a5, 2
	add	t0, a10, a11
	lw	a10, t0, 0
	slli	a11, a0, 2
	add	t0, a2, a11
	lw	a11, t0, 0
	lw	a11, a11, 8
	slli	a12, a5, 2
	add	t0, a11, a12
	lw	a11, t0, 0
	bne	a11, a10, 140
	slli	a11, a0, 2
	add	t0, a4, a11
	lw	a11, t0, 0
	lw	a11, a11, 8
	slli	a12, a5, 2
	add	t0, a11, a12
	lw	a11, t0, 0
	bne	a11, a10, 100
	addi	a11, a0, -1
	slli	a11, a11, 2
	add	t0, a3, a11
	lw	a11, t0, 0
	lw	a11, a11, 8
	slli	a12, a5, 2
	add	t0, a11, a12
	lw	a11, t0, 0
	bne	a11, a10, 56
	addi	a11, a0, 1
	slli	a11, a11, 2
	add	t0, a3, a11
	lw	a11, t0, 0
	lw	a11, a11, 8
	slli	a12, a5, 2
	add	t0, a11, a12
	lw	a11, t0, 0
	bne	a11, a10, 12
	addi	a10, zero, 1
	jal	zero, 8
	addi	a10, zero, 0
	jal	zero, 8
	addi	a10, zero, 0
	jal	zero, 8
	addi	a10, zero, 0
	jal	zero, 8
	addi	a10, zero, 0
	addi	a11, zero, 0
	bne	a10, a11, 152
	slli	a0, a0, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	addi	a1, zero, 4
	blt	a1, a5, 128
	lw	a1, a0, 8
	addi	a2, zero, 0
	slli	a3, a5, 2
	add	t0, a1, a3
	lw	a1, t0, 0
	blt	a1, a2, 100
	lw	a1, a0, 12
	slli	a2, a5, 2
	add	t0, a1, a2
	lw	a1, t0, 0
	addi	a2, zero, 0
	sw	sp, a0, 0
	sw	sp, a6, 4
	sw	sp, a5, 8
	bne	a1, a2, 8
	jal	zero, 36
	addi	a1, a5, 0
	addi	a21, a8, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8
	addi	a1, a0, 1
	lw	a0, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a8, a9, 12
	slli	a9, a5, 2
	add	t0, a8, a9
	lw	a8, t0, 0
	addi	a9, zero, 0
	sw	sp, a1, 12
	sw	sp, a21, 16
	sw	sp, a7, 20
	sw	sp, a6, 4
	sw	sp, a4, 24
	sw	sp, a2, 28
	sw	sp, a3, 32
	sw	sp, a0, 36
	sw	sp, a5, 8
	bne	a8, a9, 8
	jal	zero, 48
	addi	a1, a2, 0
	addi	a21, a7, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a5, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 8
	addi	a1, a0, 1
	lw	a0, sp, 36
	slli	a2, a0, 2
	lw	a3, sp, 32
	add	t0, a3, a2
	lw	a2, t0, 0
	addi	a4, zero, 4
	blt	a4, a1, 396
	addi	a4, zero, 0
	lw	a5, a2, 8
	slli	a6, a1, 2
	add	t0, a5, a6
	lw	a5, t0, 0
	blt	a5, a4, 368
	slli	a4, a0, 2
	add	t0, a3, a4
	lw	a4, t0, 0
	lw	a4, a4, 8
	slli	a5, a1, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	slli	a5, a0, 2
	lw	a6, sp, 28
	add	t0, a6, a5
	lw	a5, t0, 0
	lw	a5, a5, 8
	slli	a7, a1, 2
	add	t0, a5, a7
	lw	a5, t0, 0
	bne	a5, a4, 144
	slli	a5, a0, 2
	lw	a7, sp, 24
	add	t0, a7, a5
	lw	a5, t0, 0
	lw	a5, a5, 8
	slli	a8, a1, 2
	add	t0, a5, a8
	lw	a5, t0, 0
	bne	a5, a4, 100
	addi	a5, a0, -1
	slli	a5, a5, 2
	add	t0, a3, a5
	lw	a5, t0, 0
	lw	a5, a5, 8
	slli	a8, a1, 2
	add	t0, a5, a8
	lw	a5, t0, 0
	bne	a5, a4, 56
	addi	a5, a0, 1
	slli	a5, a5, 2
	add	t0, a3, a5
	lw	a5, t0, 0
	lw	a5, a5, 8
	slli	a8, a1, 2
	add	t0, a5, a8
	lw	a5, t0, 0
	bne	a5, a4, 12
	addi	a4, zero, 1
	jal	zero, 8
	addi	a4, zero, 0
	jal	zero, 8
	addi	a4, zero, 0
	jal	zero, 8
	addi	a4, zero, 0
	jal	zero, 8
	addi	a4, zero, 0
	addi	a5, zero, 0
	bne	a4, a5, 28
	slli	a0, a0, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a2, a2, 12
	slli	a4, a1, 2
	add	t0, a2, a4
	lw	a2, t0, 0
	addi	a4, zero, 0
	sw	sp, a1, 40
	bne	a2, a4, 8
	jal	zero, 56
	lw	a2, sp, 24
	lw	a21, sp, 20
	addi	a4, a1, 0
	addi	a1, a6, 0
	addi	a20, a3, 0
	addi	a3, a2, 0
	addi	a2, a20, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	addi	a5, a0, 1
	lw	a0, sp, 36
	lw	a1, sp, 12
	lw	a2, sp, 28
	lw	a3, sp, 32
	lw	a4, sp, 24
	lw	a21, sp, 16
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a0, a21, 4
	flw	fa0, a0, 0
	fcvt.w.s	a1, fa0, rtz
	addi	a2, zero, 255
	blt	a2, a1, 24
	addi	a2, zero, 0
	blt	a1, a2, 8
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 255
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 20872
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 20508
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa0, a0, 4
	fcvt.w.s	a1, fa0, rtz
	addi	a2, zero, 255
	blt	a2, a1, 24
	addi	a2, zero, 0
	blt	a1, a2, 8
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 255
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 20780
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 20416
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa0, a0, 8
	fcvt.w.s	a0, fa0, rtz
	addi	a1, zero, 255
	blt	a1, a0, 24
	addi	a1, zero, 0
	blt	a0, a1, 8
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 255
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 20692
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 10
	jal	zero, 20336
	lw	a2, a21, 20
	lw	a3, a21, 16
	lw	a4, a21, 12
	lw	a5, a21, 8
	lw	a6, a21, 4
	addi	a7, zero, 4
	blt	a7, a1, 900
	lw	a7, a0, 8
	slli	a8, a1, 2
	add	t0, a7, a8
	lw	a7, t0, 0
	addi	a8, zero, 0
	blt	a7, a8, 872
	lw	a7, a0, 12
	slli	a8, a1, 2
	add	t0, a7, a8
	lw	a7, t0, 0
	addi	a8, zero, 0
	sw	sp, a21, 0
	sw	sp, a4, 4
	sw	sp, a2, 8
	sw	sp, a3, 12
	sw	sp, a5, 16
	sw	sp, a6, 20
	sw	sp, a1, 24
	bne	a7, a8, 8
	jal	zero, 260
	lw	a7, a0, 24
	lw	a7, a7, 0
	lui	a8, 0
	addi	a8, a8, 152
	flw	fa0, a8, 0
	fsw	a6, fa0, 0
	fsw	a6, fa0, 4
	fsw	a6, fa0, 8
	lw	a8, a0, 28
	lw	a9, a0, 4
	slli	a7, a7, 2
	add	t0, a5, a7
	lw	a7, t0, 0
	slli	a10, a1, 2
	add	t0, a8, a10
	lw	a8, t0, 0
	slli	a10, a1, 2
	add	t0, a9, a10
	lw	a9, t0, 0
	flw	fa0, a9, 0
	fsw	a3, fa0, 0
	flw	fa0, a9, 4
	fsw	a3, fa0, 4
	flw	fa0, a9, 8
	fsw	a3, fa0, 8
	lui	a10, 49152
	addi	a10, a10, 1304
	lw	a10, a10, 0
	addi	a10, a10, -1
	sw	sp, a0, 28
	sw	sp, a9, 32
	sw	sp, a8, 36
	sw	sp, a7, 40
	addi	a1, a10, 0
	addi	a0, a9, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -20168
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a3, zero, 118
	lw	a0, sp, 40
	lw	a1, sp, 36
	lw	a2, sp, 32
	lw	a21, sp, 4
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 28
	lw	a1, a0, 20
	lw	a2, sp, 24
	slli	a3, a2, 2
	add	t0, a1, a3
	lw	a1, t0, 0
	lw	a3, sp, 20
	flw	fa0, a3, 0
	fsw	a1, fa0, 0
	flw	fa0, a3, 4
	fsw	a1, fa0, 4
	flw	fa0, a3, 8
	fsw	a1, fa0, 8
	lw	a1, sp, 24
	addi	a1, a1, 1
	addi	a2, zero, 4
	blt	a2, a1, 540
	lw	a2, a0, 8
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	addi	a3, zero, 0
	blt	a2, a3, 512
	lw	a2, a0, 12
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	addi	a3, zero, 0
	sw	sp, a1, 44
	bne	a2, a3, 8
	jal	zero, 460
	lw	a2, a0, 24
	lw	a2, a2, 0
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	lw	a3, sp, 20
	fsw	a3, fa0, 0
	fsw	a3, fa0, 4
	fsw	a3, fa0, 8
	lw	a4, a0, 28
	lw	a5, a0, 4
	slli	a2, a2, 2
	lw	a6, sp, 16
	add	t0, a6, a2
	lw	a2, t0, 0
	slli	a6, a1, 2
	add	t0, a4, a6
	lw	a4, t0, 0
	slli	a6, a1, 2
	add	t0, a5, a6
	lw	a5, t0, 0
	flw	fa0, a5, 0
	lw	a6, sp, 12
	fsw	a6, fa0, 0
	flw	fa0, a5, 4
	fsw	a6, fa0, 4
	flw	fa0, a5, 8
	fsw	a6, fa0, 8
	lui	a6, 49152
	addi	a6, a6, 1304
	lw	a6, a6, 0
	addi	a6, a6, -1
	sw	sp, a0, 28
	sw	sp, a5, 48
	sw	sp, a4, 52
	sw	sp, a2, 56
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -20508
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 52
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 60
	lw	a1, a0, 476
	lui	a3, 0
	addi	a3, a3, 44
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	jal	zero, 56
	lw	a1, a0, 472
	lui	a3, 0
	addi	a3, a3, 40
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a3, zero, 116
	lw	a0, sp, 56
	lw	a1, sp, 52
	lw	a2, sp, 48
	lw	a21, sp, 4
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 28
	lw	a1, a0, 20
	lw	a2, sp, 44
	slli	a3, a2, 2
	add	t0, a1, a3
	lw	a1, t0, 0
	lw	a3, sp, 20
	flw	fa0, a3, 0
	fsw	a1, fa0, 0
	flw	fa0, a3, 4
	fsw	a1, fa0, 4
	flw	fa0, a3, 8
	fsw	a1, fa0, 8
	lw	a1, sp, 44
	addi	a1, a1, 1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a3, a21, 52
	lw	a4, a21, 48
	lw	a5, a21, 44
	lw	a6, a21, 40
	lw	a7, a21, 36
	lw	a8, a21, 32
	lw	a9, a21, 28
	lw	a10, a21, 24
	lw	a11, a21, 20
	lw	a12, a21, 16
	lw	a13, a21, 12
	lw	a14, a21, 8
	lw	a15, a21, 4
	addi	a16, zero, 0
	blt	a1, a16, 984
	flw	fa3, a8, 0
	lw	a8, a13, 0
	sub	a8, a1, a8
	fcvt.s.w	fa4, a8, rne
	fmul.s	fa3, fa3, fa4, rne
	flw	fa4, a7, 0
	fmul.s	fa4, fa3, fa4, rne
	fadd.s	fa4, fa4, fa0, rne
	fsw	a10, fa4, 0
	flw	fa4, a7, 4
	fmul.s	fa4, fa3, fa4, rne
	fadd.s	fa4, fa4, fa1, rne
	fsw	a10, fa4, 4
	flw	fa4, a7, 8
	fmul.s	fa3, fa3, fa4, rne
	fadd.s	fa3, fa3, fa2, rne
	fsw	a10, fa3, 8
	addi	a7, zero, 0
	fsw	sp, fa2, 0
	fsw	sp, fa1, 4
	fsw	sp, fa0, 8
	sw	sp, a21, 12
	sw	sp, a11, 16
	sw	sp, a12, 20
	sw	sp, a4, 24
	sw	sp, a5, 28
	sw	sp, a14, 32
	sw	sp, a15, 36
	sw	sp, a2, 40
	sw	sp, a10, 44
	sw	sp, a3, 48
	sw	sp, a0, 52
	sw	sp, a1, 56
	sw	sp, a6, 60
	sw	sp, a9, 64
	addi	a1, a7, 0
	addi	a0, a10, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -30620
	addi	sp, sp, -72
	lw	ra, sp, 68
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa0, a0, 0
	lw	a0, sp, 64
	fsw	a0, fa0, 0
	fsw	a0, fa0, 4
	fsw	a0, fa0, 8
	lui	a1, 53248
	addi	a1, a1, 108
	flw	fa0, a1, 0
	lw	a2, sp, 60
	fsw	a2, fa0, 0
	flw	fa0, a1, 4
	fsw	a2, fa0, 4
	flw	fa0, a1, 8
	fsw	a2, fa0, 8
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	lw	a2, sp, 56
	slli	a3, a2, 2
	lw	a4, sp, 52
	add	t0, a4, a3
	lw	a3, t0, 0
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa1, a5, 0
	lw	a5, sp, 44
	lw	a21, sp, 48
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a5, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 56
	slli	a1, a0, 2
	lw	a2, sp, 52
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	lw	a3, sp, 64
	flw	fa0, a3, 0
	fsw	a1, fa0, 0
	flw	fa0, a3, 4
	fsw	a1, fa0, 4
	flw	fa0, a3, 8
	fsw	a1, fa0, 8
	slli	a1, a0, 2
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a1, a1, 24
	lw	a3, sp, 40
	sw	a1, a3, 0
	slli	a1, a0, 2
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a4, a1, 8
	lw	a4, a4, 0
	addi	a5, zero, 0
	blt	a4, a5, 492
	lw	a4, a1, 12
	lw	a4, a4, 0
	addi	a5, zero, 0
	sw	sp, a1, 68
	bne	a4, a5, 8
	jal	zero, 428
	lw	a4, a1, 24
	lw	a4, a4, 0
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa0, a5, 0
	lw	a5, sp, 36
	fsw	a5, fa0, 0
	fsw	a5, fa0, 4
	fsw	a5, fa0, 8
	lw	a6, a1, 28
	lw	a7, a1, 4
	slli	a4, a4, 2
	lw	a8, sp, 32
	add	t0, a8, a4
	lw	a4, t0, 0
	lw	a6, a6, 0
	lw	a7, a7, 0
	flw	fa0, a7, 0
	lw	a8, sp, 28
	fsw	a8, fa0, 0
	flw	fa0, a7, 4
	fsw	a8, fa0, 4
	flw	fa0, a7, 8
	fsw	a8, fa0, 8
	lui	a8, 49152
	addi	a8, a8, 1304
	lw	a8, a8, 0
	addi	a8, a8, -1
	sw	sp, a7, 72
	sw	sp, a6, 76
	sw	sp, a4, 80
	addi	a1, a8, 0
	addi	a0, a7, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -21492
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 80
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 76
	flw	fa1, a2, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 4
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa1, a1, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 60
	lw	a1, a0, 476
	lui	a3, 0
	addi	a3, a3, 44
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 24
	addi	a0, a1, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	jal	zero, 56
	lw	a1, a0, 472
	lui	a3, 0
	addi	a3, a3, 40
	flw	fa1, a3, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a21, sp, 24
	addi	a0, a1, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a3, zero, 116
	lw	a0, sp, 80
	lw	a1, sp, 76
	lw	a2, sp, 72
	lw	a21, sp, 20
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 68
	lw	a1, a0, 20
	lw	a1, a1, 0
	lw	a2, sp, 36
	flw	fa0, a2, 0
	fsw	a1, fa0, 0
	flw	fa0, a2, 4
	fsw	a1, fa0, 4
	flw	fa0, a2, 8
	fsw	a1, fa0, 8
	addi	a1, zero, 1
	lw	a0, sp, 68
	lw	a21, sp, 16
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	jal	zero, 4
	lw	a0, sp, 56
	addi	a1, a0, -1
	lw	a0, sp, 40
	addi	a0, a0, 1
	addi	a2, zero, 5
	blt	a0, a2, 12
	addi	a2, a0, -5
	jal	zero, 8
	addi	a2, a0, 0
	flw	fa0, sp, 8
	flw	fa1, sp, 4
	flw	fa2, sp, 0
	lw	a0, sp, 52
	lw	a21, sp, 12
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a3, a21, 24
	lw	a4, a21, 20
	lw	a5, a21, 16
	lw	a6, a21, 12
	lw	a7, a21, 8
	lw	a8, a21, 4
	flw	fa0, a5, 0
	lw	a5, a8, 4
	sub	a1, a1, a5
	fcvt.s.w	fa1, a1, rne
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a4, 0
	fmul.s	fa1, fa0, fa1, rne
	flw	fa2, a3, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a4, 4
	fmul.s	fa2, fa0, fa2, rne
	flw	fa3, a3, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a4, 8
	fmul.s	fa0, fa0, fa3, rne
	flw	fa3, a3, 8
	fadd.s	fa0, fa0, fa3, rne
	lw	a1, a7, 0
	addi	a1, a1, -1
	addi	a21, a6, 0
	fsgnj.s	fa26, fa2, fa2
	fsgnj.s	fa2, fa0, fa0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa26, fa26
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a5, a21, 28
	lw	a6, a21, 24
	lw	a7, a21, 20
	lw	a8, a21, 16
	lw	a9, a21, 12
	lw	a10, a21, 8
	lw	a11, a21, 4
	lw	a12, a8, 0
	blt	a0, a12, 8
	jalr	zero, ra, 0
	slli	a12, a0, 2
	add	t0, a3, a12
	lw	a12, t0, 0
	lw	a12, a12, 0
	flw	fa0, a12, 0
	fsw	a7, fa0, 0
	flw	fa0, a12, 4
	fsw	a7, fa0, 4
	flw	fa0, a12, 8
	fsw	a7, fa0, 8
	lw	a12, a8, 4
	addi	a13, a1, 1
	blt	a13, a12, 12
	addi	a12, zero, 0
	jal	zero, 60
	addi	a12, zero, 0
	blt	a12, a1, 12
	addi	a12, zero, 0
	jal	zero, 44
	lw	a12, a8, 0
	addi	a13, a0, 1
	blt	a13, a12, 12
	addi	a12, zero, 0
	jal	zero, 24
	addi	a12, zero, 0
	blt	a12, a0, 12
	addi	a12, zero, 0
	jal	zero, 8
	addi	a12, zero, 1
	addi	a13, zero, 0
	sw	sp, a21, 0
	sw	sp, a5, 4
	sw	sp, a4, 8
	sw	sp, a2, 12
	sw	sp, a6, 16
	sw	sp, a9, 20
	sw	sp, a1, 24
	sw	sp, a3, 28
	sw	sp, a8, 32
	sw	sp, a0, 36
	sw	sp, a7, 40
	bne	a12, a13, 140
	slli	a10, a0, 2
	add	t0, a3, a10
	lw	a10, t0, 0
	addi	a12, zero, 0
	lw	a13, a10, 8
	addi	a14, zero, 0
	lw	a13, a13, 0
	blt	a13, a14, 104
	lw	a13, a10, 12
	lw	a13, a13, 0
	addi	a14, zero, 0
	sw	sp, a10, 44
	bne	a13, a14, 8
	jal	zero, 40
	addi	a1, a12, 0
	addi	a0, a10, 0
	addi	a21, a11, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 1
	lw	a0, sp, 44
	lw	a21, sp, 20
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 4
	jal	zero, 376
	addi	a11, zero, 0
	slli	a12, a0, 2
	add	t0, a3, a12
	lw	a12, t0, 0
	addi	a13, zero, 0
	lw	a14, a12, 8
	lw	a14, a14, 0
	blt	a14, a13, 344
	slli	a13, a0, 2
	add	t0, a3, a13
	lw	a13, t0, 0
	lw	a13, a13, 8
	lw	a13, a13, 0
	slli	a14, a0, 2
	add	t0, a2, a14
	lw	a14, t0, 0
	lw	a14, a14, 8
	lw	a14, a14, 0
	bne	a14, a13, 116
	slli	a14, a0, 2
	add	t0, a4, a14
	lw	a14, t0, 0
	lw	a14, a14, 8
	lw	a14, a14, 0
	bne	a14, a13, 84
	addi	a14, a0, -1
	slli	a14, a14, 2
	add	t0, a3, a14
	lw	a14, t0, 0
	lw	a14, a14, 8
	lw	a14, a14, 0
	bne	a14, a13, 48
	addi	a14, a0, 1
	slli	a14, a14, 2
	add	t0, a3, a14
	lw	a14, t0, 0
	lw	a14, a14, 8
	lw	a14, a14, 0
	bne	a14, a13, 12
	addi	a13, zero, 1
	jal	zero, 8
	addi	a13, zero, 0
	jal	zero, 8
	addi	a13, zero, 0
	jal	zero, 8
	addi	a13, zero, 0
	jal	zero, 8
	addi	a13, zero, 0
	addi	a14, zero, 0
	bne	a13, a14, 56
	slli	a10, a0, 2
	add	t0, a3, a10
	lw	a10, t0, 0
	addi	a1, a11, 0
	addi	a0, a10, 0
	addi	a21, a9, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 120
	lw	a12, a12, 12
	lw	a12, a12, 0
	addi	a13, zero, 0
	bne	a12, a13, 8
	jal	zero, 48
	addi	a1, a2, 0
	addi	a21, a10, 0
	addi	a2, a3, 0
	addi	a3, a4, 0
	addi	a4, a11, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a5, zero, 1
	lw	a0, sp, 36
	lw	a1, sp, 24
	lw	a2, sp, 12
	lw	a3, sp, 28
	lw	a4, sp, 8
	lw	a21, sp, 16
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 4
	lw	a0, sp, 40
	flw	fa0, a0, 0
	fcvt.w.s	a1, fa0, rtz
	addi	a2, zero, 255
	blt	a2, a1, 24
	addi	a2, zero, 0
	blt	a1, a2, 8
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 255
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17800
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 32
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17436
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40
	flw	fa0, a0, 4
	fcvt.w.s	a1, fa0, rtz
	addi	a2, zero, 255
	blt	a2, a1, 24
	addi	a2, zero, 0
	blt	a1, a2, 8
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 255
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17708
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 32
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17344
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40
	flw	fa0, a0, 8
	fcvt.w.s	a1, fa0, rtz
	addi	a2, zero, 255
	blt	a2, a1, 24
	addi	a2, zero, 0
	blt	a1, a2, 8
	jal	zero, 8
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 255
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17616
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 10
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17252
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 36
	addi	a0, a0, 1
	lw	a1, sp, 32
	lw	a2, a1, 0
	blt	a0, a2, 8
	jalr	zero, ra, 0
	slli	a2, a0, 2
	lw	a3, sp, 28
	add	t0, a3, a2
	lw	a2, t0, 0
	lw	a2, a2, 0
	flw	fa0, a2, 0
	lw	a4, sp, 40
	fsw	a4, fa0, 0
	flw	fa0, a2, 4
	fsw	a4, fa0, 4
	flw	fa0, a2, 8
	fsw	a4, fa0, 8
	lw	a2, a1, 4
	lw	a4, sp, 24
	addi	a5, a4, 1
	blt	a5, a2, 12
	addi	a1, zero, 0
	jal	zero, 60
	addi	a2, zero, 0
	blt	a2, a4, 12
	addi	a1, zero, 0
	jal	zero, 44
	lw	a1, a1, 0
	addi	a2, a0, 1
	blt	a2, a1, 12
	addi	a1, zero, 0
	jal	zero, 24
	addi	a1, zero, 0
	blt	a1, a0, 12
	addi	a1, zero, 0
	jal	zero, 8
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 48
	bne	a1, a2, 60
	slli	a1, a0, 2
	add	t0, a3, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a21, sp, 20
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	jal	zero, 56
	addi	a5, zero, 0
	lw	a2, sp, 12
	lw	a1, sp, 8
	lw	a21, sp, 16
	addi	a20, a4, 0
	addi	a4, a1, 0
	addi	a1, a20, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a21, sp, 4
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 48
	addi	a0, a0, 1
	lw	a1, sp, 24
	lw	a2, sp, 12
	lw	a3, sp, 28
	lw	a4, sp, 8
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a5, a21, 28
	lw	a6, a21, 24
	lw	a7, a21, 20
	lw	a8, a21, 16
	lw	a9, a21, 12
	lw	a10, a21, 8
	lw	a11, a21, 4
	lw	a12, a10, 4
	blt	a0, a12, 8
	jalr	zero, ra, 0
	lw	a12, a10, 4
	addi	a12, a12, -1
	sw	sp, a21, 0
	sw	sp, a9, 4
	sw	sp, a4, 8
	sw	sp, a7, 12
	sw	sp, a5, 16
	sw	sp, a3, 20
	sw	sp, a1, 24
	sw	sp, a6, 28
	sw	sp, a11, 32
	sw	sp, a0, 36
	sw	sp, a8, 40
	sw	sp, a2, 44
	sw	sp, a10, 48
	blt	a0, a12, 8
	jal	zero, 48
	addi	a12, a0, 1
	addi	a2, a4, 0
	addi	a1, a12, 0
	addi	a0, a3, 0
	addi	a21, a9, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a0, zero, 0
	lw	a1, sp, 48
	lw	a2, a1, 0
	blt	a0, a2, 8
	jal	zero, 284
	lw	a3, sp, 44
	lw	a2, a3, 0
	lw	a2, a2, 0
	flw	fa0, a2, 0
	lw	a4, sp, 40
	fsw	a4, fa0, 0
	flw	fa0, a2, 4
	fsw	a4, fa0, 4
	flw	fa0, a2, 8
	fsw	a4, fa0, 8
	lw	a2, a1, 4
	lw	a4, sp, 36
	addi	a5, a4, 1
	blt	a5, a2, 12
	addi	a2, zero, 0
	jal	zero, 44
	addi	a2, zero, 0
	blt	a2, a4, 12
	addi	a2, zero, 0
	jal	zero, 28
	lw	a2, a1, 0
	addi	a5, zero, 1
	blt	a5, a2, 12
	addi	a2, zero, 0
	jal	zero, 8
	addi	a2, zero, 0
	addi	a5, zero, 0
	bne	a2, a5, 48
	lw	a0, a3, 0
	addi	a2, zero, 0
	lw	a21, sp, 32
	addi	a1, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	jal	zero, 52
	addi	a5, zero, 0
	lw	a2, sp, 24
	lw	a6, sp, 20
	lw	a21, sp, 28
	addi	a1, a4, 0
	addi	a4, a6, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a21, sp, 16
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a0, zero, 1
	lw	a1, sp, 36
	lw	a2, sp, 24
	lw	a3, sp, 44
	lw	a4, sp, 20
	lw	a21, sp, 12
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 36
	addi	a1, a0, 1
	lw	a0, sp, 8
	addi	a0, a0, 2
	addi	a2, zero, 5
	blt	a0, a2, 12
	addi	a2, a0, -5
	jal	zero, 8
	addi	a2, a0, 0
	lw	a0, sp, 48
	lw	a3, a0, 4
	blt	a1, a3, 8
	jal	zero, 196
	lw	a0, a0, 4
	addi	a0, a0, -1
	sw	sp, a2, 52
	sw	sp, a1, 56
	blt	a1, a0, 8
	jal	zero, 48
	addi	a0, a1, 1
	lw	a3, sp, 24
	lw	a21, sp, 4
	addi	a1, a0, 0
	addi	a0, a3, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a0, zero, 0
	lw	a1, sp, 56
	lw	a2, sp, 44
	lw	a3, sp, 20
	lw	a4, sp, 24
	lw	a21, sp, 12
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
	addi	a0, a0, 1
	lw	a1, sp, 52
	addi	a1, a1, 2
	addi	a2, zero, 5
	blt	a1, a2, 12
	addi	a4, a1, -5
	jal	zero, 8
	addi	a4, a1, 0
	lw	a1, sp, 20
	lw	a2, sp, 24
	lw	a3, sp, 44
	lw	a21, sp, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	jalr	zero, ra, 0
	addi	a0, zero, 3
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa0, a1, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 16224
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, a0, 0
	addi	a0, zero, 5
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 16168
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 16152
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 4
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 16108
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 8
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 16064
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 12
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 16020
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 16
	addi	a0, a1, 0
	jalr	zero, ra, 0
	addi	a2, zero, 0
	blt	a1, a2, 744
	addi	a2, zero, 3
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	sw	sp, a0, 0
	sw	sp, a1, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 15948
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -324
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 12
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 15856
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 16
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 15816
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, a0, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -428
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -452
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 28
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 15728
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, a0, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -516
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 32
	sw	a1, a0, 24
	lw	a0, sp, 28
	sw	a1, a0, 20
	lw	a0, sp, 24
	sw	a1, a0, 16
	lw	a0, sp, 20
	sw	a1, a0, 12
	lw	a0, sp, 16
	sw	a1, a0, 8
	lw	a0, sp, 12
	sw	a1, a0, 4
	lw	a0, sp, 8
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 4
	slli	a2, a1, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 368
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 36
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 15584
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -688
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 44
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 15492
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 48
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 15452
	addi	sp, sp, -56
	lw	ra, sp, 52
	sw	sp, a0, 52
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -792
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, a0, 56
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -816
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 60
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 15364
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, a0, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -880
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 64
	sw	a1, a0, 24
	lw	a0, sp, 60
	sw	a1, a0, 20
	lw	a0, sp, 56
	sw	a1, a0, 16
	lw	a0, sp, 52
	sw	a1, a0, 12
	lw	a0, sp, 48
	sw	a1, a0, 8
	lw	a0, sp, 44
	sw	a1, a0, 4
	lw	a0, sp, 40
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	zero, -736
	addi	a0, a3, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a3, a21, 4
	addi	a4, zero, 5
	blt	a0, a4, 300
	fmul.s	fa2, fa0, fa0, rne
	fmul.s	fa3, fa1, fa1, rne
	fadd.s	fa2, fa2, fa3, rne
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa3, a0, 0
	fadd.s	fa2, fa2, fa3, rne
	fsqrt.s	fa2, fa2, rne
	fdiv.s	fa0, fa0, fa2, rne
	fdiv.s	fa1, fa1, fa2, rne
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa3, a0, 0
	fdiv.s	fa2, fa3, fa2, rne
	slli	a0, a1, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	slli	a1, a2, 2
	add	t0, a0, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	fsw	a1, fa0, 0
	fsw	a1, fa1, 4
	fsw	a1, fa2, 8
	addi	a1, a2, 40
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	fsgnjn.s	fa3, fa1, fa1
	fsw	a1, fa0, 0
	fsw	a1, fa2, 4
	fsw	a1, fa3, 8
	addi	a1, a2, 80
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	fsgnjn.s	fa3, fa0, fa0
	fsgnjn.s	fa4, fa1, fa1
	fsw	a1, fa2, 0
	fsw	a1, fa3, 4
	fsw	a1, fa4, 8
	addi	a1, a2, 1
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	fsgnjn.s	fa3, fa0, fa0
	fsgnjn.s	fa4, fa1, fa1
	fsgnjn.s	fa5, fa2, fa2
	fsw	a1, fa3, 0
	fsw	a1, fa4, 4
	fsw	a1, fa5, 8
	addi	a1, a2, 41
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	fsgnjn.s	fa3, fa0, fa0
	fsgnjn.s	fa4, fa2, fa2
	fsw	a1, fa3, 0
	fsw	a1, fa4, 4
	fsw	a1, fa1, 8
	addi	a1, a2, 81
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	lw	a0, a0, 0
	fsgnjn.s	fa2, fa2, fa2
	fsw	a0, fa2, 0
	fsw	a0, fa0, 4
	fsw	a0, fa1, 8
	jalr	zero, ra, 0
	fmul.s	fa0, fa1, fa1, rne
	lui	a3, 0
	addi	a3, a3, 48
	flw	fa1, a3, 0
	fadd.s	fa0, fa0, fa1, rne
	fsqrt.s	fa0, fa0, rne
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa1, a3, 0
	fdiv.s	fa1, fa1, fa0, rne
	sw	sp, a2, 0
	sw	sp, a1, 4
	sw	sp, a21, 8
	fsw	sp, fa3, 12
	sw	sp, a0, 16
	fsw	sp, fa0, 20
	fsw	sp, fa2, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 14544
	addi	sp, sp, -32
	lw	ra, sp, 28
	flw	fa1, sp, 24
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 13672
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 28
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 13952
	addi	sp, sp, -40
	lw	ra, sp, 36
	flw	fa1, sp, 32
	fdiv.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 20
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 16
	addi	a0, a0, 1
	fmul.s	fa1, fa0, fa0, rne
	lui	a1, 0
	addi	a1, a1, 48
	flw	fa2, a1, 0
	fadd.s	fa1, fa1, fa2, rne
	fsqrt.s	fa1, fa1, rne
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa2, a1, 0
	fdiv.s	fa2, fa2, fa1, rne
	fsw	sp, fa0, 36
	sw	sp, a0, 40
	fsw	sp, fa1, 44
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 14380
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 12
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 48
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 13508
	addi	sp, sp, -56
	lw	ra, sp, 52
	flw	fa1, sp, 48
	fsw	sp, fa0, 52
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 13788
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 52
	fdiv.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 44
	fmul.s	fa1, fa0, fa1, rne
	flw	fa0, sp, 36
	flw	fa2, sp, 24
	flw	fa3, sp, 12
	lw	a0, sp, 40
	lw	a1, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 316
	fcvt.s.w	fa1, a0, rne
	lui	a4, 0
	addi	a4, a4, 36
	flw	fa2, a4, 0
	fmul.s	fa1, fa1, fa2, rne
	lui	a4, 0
	addi	a4, a4, 32
	flw	fa2, a4, 0
	fsub.s	fa2, fa1, fa2, rne
	addi	a4, zero, 0
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa1, a5, 0
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa3, a5, 0
	sw	sp, a21, 0
	fsw	sp, fa0, 4
	sw	sp, a1, 8
	sw	sp, a3, 12
	sw	sp, a2, 16
	sw	sp, a0, 20
	addi	a0, a4, 0
	addi	a21, a3, 0
	fsgnj.s	fa26, fa3, fa3
	fsgnj.s	fa3, fa0, fa0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa26, fa26
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	fcvt.s.w	fa0, a0, rne
	lui	a1, 0
	addi	a1, a1, 36
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 48
	flw	fa1, a1, 0
	fadd.s	fa2, fa0, fa1, rne
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa1, a2, 0
	lw	a2, sp, 16
	addi	a3, a2, 2
	flw	fa3, sp, 4
	lw	a4, sp, 8
	lw	a21, sp, 12
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	addi	a0, a0, -1
	lw	a1, sp, 8
	addi	a1, a1, 1
	addi	a2, zero, 5
	blt	a1, a2, 12
	addi	a1, a1, -5
	jal	zero, 4
	flw	fa0, sp, 4
	lw	a2, sp, 16
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 284
	fcvt.s.w	fa0, a0, rne
	lui	a4, 0
	addi	a4, a4, 36
	flw	fa1, a4, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a4, 0
	addi	a4, a4, 32
	flw	fa1, a4, 0
	fsub.s	fa0, fa0, fa1, rne
	addi	a4, zero, 4
	sw	sp, a21, 0
	sw	sp, a3, 4
	sw	sp, a2, 8
	sw	sp, a1, 12
	sw	sp, a0, 16
	addi	a0, a4, 0
	addi	a21, a3, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	addi	a0, a0, -1
	lw	a1, sp, 12
	addi	a1, a1, 2
	addi	a2, zero, 5
	blt	a1, a2, 12
	addi	a1, a1, -5
	jal	zero, 4
	lw	a2, sp, 8
	addi	a2, a2, 4
	addi	a3, zero, 0
	blt	a0, a3, 140
	fcvt.s.w	fa0, a0, rne
	lui	a3, 0
	addi	a3, a3, 36
	flw	fa1, a3, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a3, 0
	addi	a3, a3, 32
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	addi	a3, zero, 4
	lw	a21, sp, 4
	sw	sp, a2, 20
	sw	sp, a1, 24
	sw	sp, a0, 28
	addi	a0, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	addi	a0, a0, -1
	lw	a1, sp, 24
	addi	a1, a1, 2
	addi	a2, zero, 5
	blt	a1, a2, 12
	addi	a1, a1, -5
	jal	zero, 4
	lw	a2, sp, 20
	addi	a2, a2, 4
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	addi	a2, zero, 0
	blt	a1, a2, 580
	addi	a2, zero, 3
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	sw	sp, a0, 0
	sw	sp, a1, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 13892
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 13824
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 8
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 4
	slli	a2, a1, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 432
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 12
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 13752
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 13684
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 16
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 12
	slli	a2, a1, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 288
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 13612
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 13544
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 24
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 20
	slli	a2, a1, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 144
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 28
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 13472
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 13404
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 32
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 28
	slli	a2, a1, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	zero, -568
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a1, a21, 4
	addi	a2, zero, 0
	blt	a0, a2, 1016
	addi	a2, zero, 120
	addi	a3, zero, 3
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	sw	sp, a21, 0
	sw	sp, a1, 4
	sw	sp, a0, 8
	sw	sp, a2, 12
	addi	a0, a3, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 13288
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 13220
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 16
	sw	a1, a0, 0
	lw	a0, sp, 12
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 13176
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	slli	a0, a1, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	addi	a2, zero, 3
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	sw	sp, a0, 20
	addi	a0, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 13128
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 13060
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 24
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 20
	sw	a1, a0, 472
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 13020
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 12952
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 28
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 20
	sw	a1, a0, 468
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 12912
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 12844
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 32
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 20
	sw	a1, a0, 464
	addi	a0, zero, 115
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -1132
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 8
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 452
	addi	a1, zero, 120
	addi	a2, zero, 3
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	sw	sp, a0, 36
	sw	sp, a1, 40
	addi	a0, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 12736
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 44
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 12668
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 44
	sw	a1, a0, 0
	lw	a0, sp, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 12624
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	slli	a0, a1, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	addi	a2, zero, 3
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	sw	sp, a0, 48
	addi	a0, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 12576
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 52
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 12508
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 52
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 48
	sw	a1, a0, 472
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 12468
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 56
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 12400
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 56
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 48
	sw	a1, a0, 468
	addi	a0, zero, 116
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -1576
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 36
	addi	a0, a0, -1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	addi	a2, zero, 0
	blt	a1, a2, 816
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a2, t0, 0
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	sw	sp, a0, 0
	sw	sp, a1, 4
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -28512
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 732
	slli	a1, a0, 2
	lw	a2, sp, 0
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a0, 8
	blt	a3, a4, 264
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a5, a3, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	lw	a5, a1, 4
	lw	a6, a1, 0
	lw	a7, a4, 4
	addi	a8, zero, 1
	sw	sp, a1, 12
	bne	a7, a8, 64
	sw	sp, a5, 16
	sw	sp, a3, 20
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -29904
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a8, zero, 2
	bne	a7, a8, 64
	sw	sp, a5, 16
	sw	sp, a3, 20
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -29388
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a5, 16
	sw	sp, a3, 20
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -29212
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 12
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -28828
	addi	sp, sp, -28
	lw	ra, sp, 24
	jal	zero, 4
	lw	a0, sp, 8
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 408
	slli	a1, a0, 2
	lw	a2, sp, 0
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	sw	sp, a0, 24
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -28912
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 324
	slli	a1, a0, 2
	lw	a2, sp, 0
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a0, 28
	blt	a3, a4, 264
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a5, a3, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	lw	a5, a1, 4
	lw	a6, a1, 0
	lw	a7, a4, 4
	addi	a8, zero, 1
	sw	sp, a1, 32
	bne	a7, a8, 64
	sw	sp, a5, 36
	sw	sp, a3, 40
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -30304
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40
	slli	a2, a1, 2
	lw	a3, sp, 36
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a8, zero, 2
	bne	a7, a8, 64
	sw	sp, a5, 36
	sw	sp, a3, 40
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -29788
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40
	slli	a2, a1, 2
	lw	a3, sp, 36
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a5, 36
	sw	sp, a3, 40
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -29612
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40
	slli	a2, a1, 2
	lw	a3, sp, 36
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 32
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -29228
	addi	sp, sp, -48
	lw	ra, sp, 44
	jal	zero, 4
	lw	a0, sp, 28
	addi	a1, a0, -1
	lw	a0, sp, 0
	jal	zero, -804
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a1, a21, 4
	addi	a2, zero, 0
	blt	a0, a2, 1556
	slli	a2, a0, 2
	add	t0, a1, a2
	lw	a2, t0, 0
	lw	a3, a2, 476
	lui	a4, 49152
	addi	a4, a4, 1304
	lw	a4, a4, 0
	addi	a4, a4, -1
	addi	a5, zero, 0
	sw	sp, a21, 0
	sw	sp, a1, 4
	sw	sp, a0, 8
	sw	sp, a2, 12
	blt	a4, a5, 264
	lui	a5, 49152
	addi	a5, a5, 1312
	slli	a6, a4, 2
	add	t0, a5, a6
	lw	a5, t0, 0
	lw	a6, a3, 4
	lw	a7, a3, 0
	lw	a8, a5, 4
	addi	a9, zero, 1
	sw	sp, a3, 16
	bne	a8, a9, 64
	sw	sp, a6, 20
	sw	sp, a4, 24
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -30664
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24
	slli	a2, a1, 2
	lw	a3, sp, 20
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a9, zero, 2
	bne	a8, a9, 64
	sw	sp, a6, 20
	sw	sp, a4, 24
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -30148
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24
	slli	a2, a1, 2
	lw	a3, sp, 20
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a6, 20
	sw	sp, a4, 24
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -29972
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24
	slli	a2, a1, 2
	lw	a3, sp, 20
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 16
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -29588
	addi	sp, sp, -32
	lw	ra, sp, 28
	jal	zero, 4
	lw	a0, sp, 12
	lw	a1, a0, 472
	lui	a2, 49152
	addi	a2, a2, 1304
	lw	a2, a2, 0
	addi	a2, a2, -1
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -29644
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 12
	lw	a1, a0, 468
	lui	a2, 49152
	addi	a2, a2, 1304
	lw	a2, a2, 0
	addi	a2, a2, -1
	addi	a3, zero, 0
	blt	a2, a3, 264
	lui	a3, 49152
	addi	a3, a3, 1312
	slli	a4, a2, 2
	add	t0, a3, a4
	lw	a3, t0, 0
	lw	a4, a1, 4
	lw	a5, a1, 0
	lw	a6, a3, 4
	addi	a7, zero, 1
	sw	sp, a1, 28
	bne	a6, a7, 64
	sw	sp, a4, 32
	sw	sp, a2, 36
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -31008
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 32
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a7, zero, 2
	bne	a6, a7, 64
	sw	sp, a4, 32
	sw	sp, a2, 36
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -30492
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 32
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a4, 32
	sw	sp, a2, 36
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -30316
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 32
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 28
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -29932
	addi	sp, sp, -44
	lw	ra, sp, 40
	jal	zero, 4
	addi	a1, zero, 116
	lw	a0, sp, 12
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -1512
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 8
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 848
	slli	a1, a0, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, a1, 476
	lui	a4, 49152
	addi	a4, a4, 1304
	lw	a4, a4, 0
	addi	a4, a4, -1
	sw	sp, a0, 40
	sw	sp, a1, 44
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -30052
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44
	lw	a1, a0, 472
	lui	a2, 49152
	addi	a2, a2, 1304
	lw	a2, a2, 0
	addi	a2, a2, -1
	addi	a3, zero, 0
	blt	a2, a3, 264
	lui	a3, 49152
	addi	a3, a3, 1312
	slli	a4, a2, 2
	add	t0, a3, a4
	lw	a3, t0, 0
	lw	a4, a1, 4
	lw	a5, a1, 0
	lw	a6, a3, 4
	addi	a7, zero, 1
	sw	sp, a1, 48
	bne	a6, a7, 64
	sw	sp, a4, 52
	sw	sp, a2, 56
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -31416
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56
	slli	a2, a1, 2
	lw	a3, sp, 52
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a7, zero, 2
	bne	a6, a7, 64
	sw	sp, a4, 52
	sw	sp, a2, 56
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -30900
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56
	slli	a2, a1, 2
	lw	a3, sp, 52
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a4, 52
	sw	sp, a2, 56
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -30724
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56
	slli	a2, a1, 2
	lw	a3, sp, 52
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 48
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -30340
	addi	sp, sp, -64
	lw	ra, sp, 60
	jal	zero, 4
	addi	a1, zero, 117
	lw	a0, sp, 44
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -1920
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 40
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 436
	slli	a1, a0, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, a1, 476
	lui	a4, 49152
	addi	a4, a4, 1304
	lw	a4, a4, 0
	addi	a4, a4, -1
	addi	a5, zero, 0
	sw	sp, a0, 60
	sw	sp, a1, 64
	blt	a4, a5, 264
	lui	a5, 49152
	addi	a5, a5, 1312
	slli	a6, a4, 2
	add	t0, a5, a6
	lw	a5, t0, 0
	lw	a6, a3, 4
	lw	a7, a3, 0
	lw	a8, a5, 4
	addi	a9, zero, 1
	sw	sp, a3, 68
	bne	a8, a9, 64
	sw	sp, a6, 72
	sw	sp, a4, 76
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -31772
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 76
	slli	a2, a1, 2
	lw	a3, sp, 72
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a9, zero, 2
	bne	a8, a9, 64
	sw	sp, a6, 72
	sw	sp, a4, 76
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -31256
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 76
	slli	a2, a1, 2
	lw	a3, sp, 72
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a6, 72
	sw	sp, a4, 76
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -31080
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 76
	slli	a2, a1, 2
	lw	a3, sp, 72
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 68
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -30696
	addi	sp, sp, -84
	lw	ra, sp, 80
	jal	zero, 4
	addi	a1, zero, 118
	lw	a0, sp, 64
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -2276
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 60
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 76
	slli	a1, a0, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 119
	sw	sp, a0, 80
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -2344
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 80
	addi	a0, a0, -1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 8
	lw	a3, a21, 4
	slli	a0, a0, 2
	lw	a4, a3, 0
	lui	a5, 0
	addi	a5, a5, 144
	flw	fa0, a5, 0
	lw	a1, a1, 28
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	lui	a1, 53248
	addi	a1, a1, 120
	flw	fa1, a1, 0
	fsgnjn.s	fa1, fa1, fa1
	lui	a1, 53248
	addi	a1, a1, 120
	flw	fa2, a1, 4
	fsgnjn.s	fa2, fa2, fa2
	lui	a1, 53248
	addi	a1, a1, 120
	flw	fa3, a1, 8
	fsgnjn.s	fa3, fa3, fa3
	addi	a1, a0, 1
	lui	a5, 53248
	addi	a5, a5, 120
	flw	fa4, a5, 0
	addi	a5, zero, 3
	lui	a6, 0
	addi	a6, a6, 152
	flw	fa5, a6, 0
	sw	sp, a3, 0
	fsw	sp, fa1, 4
	sw	sp, a0, 8
	sw	sp, a2, 12
	sw	sp, a4, 16
	sw	sp, a1, 20
	fsw	sp, fa0, 24
	fsw	sp, fa3, 28
	fsw	sp, fa2, 32
	fsw	sp, fa4, 36
	addi	a0, a5, 0
	fsgnj.s	fa0, fa5, fa5
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 9752
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 9684
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 40
	sw	a1, a2, 0
	flw	fa0, sp, 36
	fsw	a2, fa0, 0
	flw	fa0, sp, 32
	fsw	a2, fa0, 4
	flw	fa1, sp, 28
	fsw	a2, fa1, 8
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a1, 44
	blt	a3, a4, 252
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a5, a3, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	lw	a5, a4, 4
	addi	a6, zero, 1
	bne	a5, a6, 64
	sw	sp, a0, 48
	sw	sp, a3, 52
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -32452
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 48
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a6, zero, 2
	bne	a5, a6, 64
	sw	sp, a0, 48
	sw	sp, a3, 52
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -31936
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 48
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 48
	sw	sp, a3, 52
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -31760
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 48
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 44
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -31376
	addi	sp, sp, -60
	lw	ra, sp, 56
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 24
	fsw	a0, fa0, 8
	lw	a1, sp, 44
	sw	a0, a1, 4
	lw	a1, sp, 20
	sw	a0, a1, 0
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, 1
	lw	a2, sp, 8
	addi	a4, a2, 2
	lui	a5, 53248
	addi	a5, a5, 120
	flw	fa1, a5, 4
	addi	a5, zero, 3
	lui	a6, 0
	addi	a6, a6, 152
	flw	fa2, a6, 0
	sw	sp, a0, 56
	sw	sp, a4, 60
	fsw	sp, fa1, 64
	addi	a0, a5, 0
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 9260
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 68
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 9192
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 68
	sw	a1, a2, 0
	flw	fa0, sp, 4
	fsw	a2, fa0, 0
	flw	fa1, sp, 64
	fsw	a2, fa1, 4
	flw	fa1, sp, 28
	fsw	a2, fa1, 8
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a1, 72
	blt	a3, a4, 252
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a5, a3, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	lw	a5, a4, 4
	addi	a6, zero, 1
	bne	a5, a6, 64
	sw	sp, a0, 76
	sw	sp, a3, 80
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -32944
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a1, sp, 80
	slli	a2, a1, 2
	lw	a3, sp, 76
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a6, zero, 2
	bne	a5, a6, 64
	sw	sp, a0, 76
	sw	sp, a3, 80
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -32428
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a1, sp, 80
	slli	a2, a1, 2
	lw	a3, sp, 76
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 76
	sw	sp, a3, 80
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -32252
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a1, sp, 80
	slli	a2, a1, 2
	lw	a3, sp, 76
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 72
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -31868
	addi	sp, sp, -88
	lw	ra, sp, 84
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 24
	fsw	a0, fa0, 8
	lw	a1, sp, 72
	sw	a0, a1, 4
	lw	a1, sp, 60
	sw	a0, a1, 0
	lw	a1, sp, 56
	slli	a1, a1, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	sw	t0, a0, 0
	lw	a0, sp, 16
	addi	a1, a0, 2
	lw	a3, sp, 8
	addi	a3, a3, 3
	lui	a4, 53248
	addi	a4, a4, 120
	flw	fa1, a4, 8
	addi	a4, zero, 3
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa2, a5, 0
	sw	sp, a1, 84
	sw	sp, a3, 88
	fsw	sp, fa1, 92
	addi	a0, a4, 0
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 8764
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 96
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	ra, 8696
	addi	sp, sp, -104
	lw	ra, sp, 100
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 96
	sw	a1, a2, 0
	flw	fa0, sp, 4
	fsw	a2, fa0, 0
	flw	fa0, sp, 32
	fsw	a2, fa0, 4
	flw	fa0, sp, 92
	fsw	a2, fa0, 8
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a1, 100
	blt	a3, a4, 252
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a5, a3, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	lw	a5, a4, 4
	addi	a6, zero, 1
	bne	a5, a6, 64
	sw	sp, a0, 104
	sw	sp, a3, 108
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -33440
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 104
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a6, zero, 2
	bne	a5, a6, 64
	sw	sp, a0, 104
	sw	sp, a3, 108
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -32924
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 104
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 104
	sw	sp, a3, 108
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -32748
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 104
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 100
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -32364
	addi	sp, sp, -116
	lw	ra, sp, 112
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 24
	fsw	a0, fa0, 8
	lw	a1, sp, 100
	sw	a0, a1, 4
	lw	a1, sp, 88
	sw	a0, a1, 0
	lw	a1, sp, 84
	slli	a1, a1, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	sw	t0, a0, 0
	lw	a0, sp, 16
	addi	a0, a0, 3
	lw	a1, sp, 0
	sw	a1, a0, 0
	jalr	zero, ra, 0
	lw	a2, a21, 8
	lw	a3, a21, 4
	slli	a0, a0, 2
	addi	a0, a0, 1
	lw	a4, a3, 0
	lui	a5, 0
	addi	a5, a5, 144
	flw	fa0, a5, 0
	lw	a5, a1, 28
	flw	fa1, a5, 0
	fsub.s	fa0, fa0, fa1, rne
	lui	a5, 53248
	addi	a5, a5, 120
	lw	a6, a1, 16
	flw	fa1, a5, 0
	flw	fa2, a6, 0
	fmul.s	fa1, fa1, fa2, rne
	flw	fa2, a5, 4
	flw	fa3, a6, 4
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a5, 8
	flw	fa3, a6, 8
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	lui	a5, 0
	addi	a5, a5, 128
	flw	fa2, a5, 0
	lw	a5, a1, 16
	flw	fa3, a5, 0
	fmul.s	fa2, fa2, fa3, rne
	fmul.s	fa2, fa2, fa1, rne
	lui	a5, 53248
	addi	a5, a5, 120
	flw	fa3, a5, 0
	fsub.s	fa2, fa2, fa3, rne
	lui	a5, 0
	addi	a5, a5, 128
	flw	fa3, a5, 0
	lw	a5, a1, 16
	flw	fa4, a5, 4
	fmul.s	fa3, fa3, fa4, rne
	fmul.s	fa3, fa3, fa1, rne
	lui	a5, 53248
	addi	a5, a5, 120
	flw	fa4, a5, 4
	fsub.s	fa3, fa3, fa4, rne
	lui	a5, 0
	addi	a5, a5, 128
	flw	fa4, a5, 0
	lw	a1, a1, 16
	flw	fa5, a1, 8
	fmul.s	fa4, fa4, fa5, rne
	fmul.s	fa1, fa4, fa1, rne
	lui	a1, 53248
	addi	a1, a1, 120
	flw	fa4, a1, 8
	fsub.s	fa1, fa1, fa4, rne
	addi	a1, zero, 3
	lui	a5, 0
	addi	a5, a5, 152
	flw	fa4, a5, 0
	sw	sp, a3, 0
	sw	sp, a2, 4
	sw	sp, a4, 8
	sw	sp, a0, 12
	fsw	sp, fa0, 16
	fsw	sp, fa1, 20
	fsw	sp, fa3, 24
	fsw	sp, fa2, 28
	addi	a0, a1, 0
	fsgnj.s	fa0, fa4, fa4
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 8024
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, a0, 0
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	sw	sp, a1, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 7956
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 32
	sw	a1, a2, 0
	flw	fa0, sp, 28
	fsw	a2, fa0, 0
	flw	fa0, sp, 24
	fsw	a2, fa0, 4
	flw	fa0, sp, 20
	fsw	a2, fa0, 8
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a1, 36
	blt	a3, a4, 252
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a5, a3, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	lw	a5, a4, 4
	addi	a6, zero, 1
	bne	a5, a6, 64
	sw	sp, a0, 40
	sw	sp, a3, 44
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -34180
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44
	slli	a2, a1, 2
	lw	a3, sp, 40
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a6, zero, 2
	bne	a5, a6, 64
	sw	sp, a0, 40
	sw	sp, a3, 44
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -33664
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44
	slli	a2, a1, 2
	lw	a3, sp, 40
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 40
	sw	sp, a3, 44
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -33488
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 44
	slli	a2, a1, 2
	lw	a3, sp, 40
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 36
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -33104
	addi	sp, sp, -52
	lw	ra, sp, 48
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 16
	fsw	a0, fa0, 8
	lw	a1, sp, 36
	sw	a0, a1, 4
	lw	a1, sp, 12
	sw	a0, a1, 0
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, 1
	lw	a1, sp, 0
	sw	a1, a0, 0
	jalr	zero, ra, 0
	lw	a2, a21, 68
	lw	a3, a21, 64
	lw	a4, a21, 60
	lw	a5, a21, 56
	lw	a6, a21, 52
	lw	a7, a21, 48
	lw	a8, a21, 44
	lw	a9, a21, 40
	lw	a10, a21, 36
	lw	a11, a21, 32
	lw	a12, a21, 28
	lw	a13, a21, 24
	lw	a14, a21, 20
	lw	a15, a21, 16
	lw	a16, a21, 12
	lw	a17, a21, 8
	lw	a18, a21, 4
	sw	a14, a0, 0
	sw	a14, a1, 4
	srli	a19, a0, 1
	sw	a15, a19, 0
	srli	a1, a1, 1
	sw	a15, a1, 4
	lui	a1, 0
	addi	a1, a1, 28
	flw	fa0, a1, 0
	fcvt.s.w	fa1, a0, rne
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a6, fa0, 0
	lw	a0, a14, 0
	addi	a1, zero, 3
	lui	a6, 0
	addi	a6, a6, 152
	flw	fa0, a6, 0
	sw	sp, a7, 0
	sw	sp, a5, 4
	sw	sp, a10, 8
	sw	sp, a3, 12
	sw	sp, a4, 16
	sw	sp, a12, 20
	sw	sp, a2, 24
	sw	sp, a13, 28
	sw	sp, a16, 32
	sw	sp, a18, 36
	sw	sp, a17, 40
	sw	sp, a11, 44
	sw	sp, a9, 48
	sw	sp, a8, 52
	sw	sp, a14, 56
	sw	sp, a0, 60
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 7372
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, a0, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -8900
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 68
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 7280
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 72
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, 7240
	addi	sp, sp, -80
	lw	ra, sp, 76
	sw	sp, a0, 76
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -9004
	addi	sp, sp, -84
	lw	ra, sp, 80
	sw	sp, a0, 80
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -9028
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 84
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 7152
	addi	sp, sp, -92
	lw	ra, sp, 88
	sw	sp, a0, 88
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, -9092
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 88
	sw	a1, a0, 24
	lw	a0, sp, 84
	sw	a1, a0, 20
	lw	a0, sp, 80
	sw	a1, a0, 16
	lw	a0, sp, 76
	sw	a1, a0, 12
	lw	a0, sp, 72
	sw	a1, a0, 8
	lw	a0, sp, 68
	sw	a1, a0, 4
	lw	a0, sp, 64
	sw	a1, a0, 0
	lw	a0, sp, 60
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 7036
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a1, sp, 56
	lw	a2, a1, 0
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, -8964
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a1, sp, 56
	lw	a2, a1, 0
	addi	a3, zero, 3
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	sw	sp, a0, 92
	sw	sp, a2, 96
	addi	a0, a3, 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	ra, 6972
	addi	sp, sp, -104
	lw	ra, sp, 100
	sw	sp, a0, 100
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -9300
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 104
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	ra, 6880
	addi	sp, sp, -112
	lw	ra, sp, 108
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 108
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 6840
	addi	sp, sp, -116
	lw	ra, sp, 112
	sw	sp, a0, 112
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, -9404
	addi	sp, sp, -120
	lw	ra, sp, 116
	sw	sp, a0, 116
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, -9428
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 120
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, 6752
	addi	sp, sp, -128
	lw	ra, sp, 124
	sw	sp, a0, 124
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, -9492
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 124
	sw	a1, a0, 24
	lw	a0, sp, 120
	sw	a1, a0, 20
	lw	a0, sp, 116
	sw	a1, a0, 16
	lw	a0, sp, 112
	sw	a1, a0, 12
	lw	a0, sp, 108
	sw	a1, a0, 8
	lw	a0, sp, 104
	sw	a1, a0, 4
	lw	a0, sp, 100
	sw	a1, a0, 0
	lw	a0, sp, 96
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 6636
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 56
	lw	a2, a1, 0
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, -9364
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a1, sp, 56
	lw	a2, a1, 0
	addi	a3, zero, 3
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	sw	sp, a0, 128
	sw	sp, a2, 132
	addi	a0, a3, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 6572
	addi	sp, sp, -140
	lw	ra, sp, 136
	sw	sp, a0, 136
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	ra, -9700
	addi	sp, sp, -144
	lw	ra, sp, 140
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 140
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 6480
	addi	sp, sp, -148
	lw	ra, sp, 144
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 144
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	ra, 6440
	addi	sp, sp, -152
	lw	ra, sp, 148
	sw	sp, a0, 148
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	ra, -9804
	addi	sp, sp, -156
	lw	ra, sp, 152
	sw	sp, a0, 152
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	ra, -9828
	addi	sp, sp, -160
	lw	ra, sp, 156
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 156
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, 6352
	addi	sp, sp, -164
	lw	ra, sp, 160
	sw	sp, a0, 160
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, -9892
	addi	sp, sp, -168
	lw	ra, sp, 164
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 160
	sw	a1, a0, 24
	lw	a0, sp, 156
	sw	a1, a0, 20
	lw	a0, sp, 152
	sw	a1, a0, 16
	lw	a0, sp, 148
	sw	a1, a0, 12
	lw	a0, sp, 144
	sw	a1, a0, 8
	lw	a0, sp, 140
	sw	a1, a0, 4
	lw	a0, sp, 136
	sw	a1, a0, 0
	lw	a0, sp, 132
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, 6236
	addi	sp, sp, -168
	lw	ra, sp, 164
	lw	a1, sp, 56
	lw	a2, a1, 0
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, -9764
	addi	sp, sp, -168
	lw	ra, sp, 164
	lw	a21, sp, 52
	sw	sp, a0, 164
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -42860
	addi	sp, sp, -172
	lw	ra, sp, 168
	addi	a0, zero, 0
	sw	sp, a0, 168
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, -41980
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a1, zero, 0
	bne	a0, a1, 24
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a1, sp, 168
	sw	a0, a1, 0
	jal	zero, 28
	addi	a0, zero, 1
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, -40456
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 0
	lw	a21, sp, 48
	sw	sp, ra, 172
	addi	sp, sp, 176
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, -39812
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a1, sp, 44
	sw	a1, a0, 0
	addi	a0, zero, 80
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 5964
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 51
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 5940
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 10
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 5916
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a0, sp, 56
	lw	a1, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 6224
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 32
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 5860
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a0, sp, 56
	lw	a1, a0, 4
	addi	a0, a1, 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 6168
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 32
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 5804
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 255
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 6120
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 10
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 5756
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 4
	lw	a21, sp, 40
	sw	sp, ra, 172
	addi	sp, sp, 176
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a0, zero, 9
	addi	a1, zero, 0
	addi	a2, zero, 0
	lw	a21, sp, 36
	sw	sp, ra, 172
	addi	sp, sp, 176
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a0, sp, 32
	lw	a1, a0, 16
	lw	a2, a1, 476
	lui	a3, 49152
	addi	a3, a3, 1304
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a1, 172
	blt	a3, a4, 264
	lui	a4, 49152
	addi	a4, a4, 1312
	slli	a5, a3, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	lw	a5, a2, 4
	lw	a6, a2, 0
	lw	a7, a4, 4
	addi	a8, zero, 1
	sw	sp, a2, 176
	bne	a7, a8, 64
	sw	sp, a5, 180
	sw	sp, a3, 184
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, -36416
	addi	sp, sp, -192
	lw	ra, sp, 188
	lw	a1, sp, 184
	slli	a2, a1, 2
	lw	a3, sp, 180
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a8, zero, 2
	bne	a7, a8, 64
	sw	sp, a5, 180
	sw	sp, a3, 184
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, -35900
	addi	sp, sp, -192
	lw	ra, sp, 188
	lw	a1, sp, 184
	slli	a2, a1, 2
	lw	a3, sp, 180
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a5, 180
	sw	sp, a3, 184
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, -35724
	addi	sp, sp, -192
	lw	ra, sp, 188
	lw	a1, sp, 184
	slli	a2, a1, 2
	lw	a3, sp, 180
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 176
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, -35340
	addi	sp, sp, -192
	lw	ra, sp, 188
	jal	zero, 4
	addi	a1, zero, 118
	lw	a0, sp, 172
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, -6920
	addi	sp, sp, -192
	lw	ra, sp, 188
	lw	a0, sp, 32
	lw	a0, a0, 12
	addi	a1, zero, 119
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, -6952
	addi	sp, sp, -192
	lw	ra, sp, 188
	addi	a0, zero, 2
	lw	a21, sp, 28
	sw	sp, ra, 188
	addi	sp, sp, 192
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -192
	lw	ra, sp, 188
	lui	a0, 53248
	addi	a0, a0, 120
	flw	fa0, a0, 0
	lw	a1, sp, 24
	fsw	a1, fa0, 0
	flw	fa0, a0, 4
	fsw	a1, fa0, 4
	flw	fa0, a0, 8
	fsw	a1, fa0, 8
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	addi	a1, a0, -1
	lw	a0, sp, 20
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, -35512
	addi	sp, sp, -192
	lw	ra, sp, 188
	lui	a0, 49152
	addi	a0, a0, 1304
	lw	a0, a0, 0
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 160
	lui	a1, 49152
	addi	a1, a1, 1312
	slli	a2, a0, 2
	add	t0, a1, a2
	lw	a1, t0, 0
	lw	a2, a1, 8
	addi	a3, zero, 2
	bne	a2, a3, 124
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	lw	a2, a1, 28
	flw	fa1, a2, 0
	flt.s	t0, fa0, fa1
	bne	zero, t0, 92
	lw	a2, a1, 4
	addi	a3, zero, 1
	bne	a2, a3, 36
	lw	a21, sp, 16
	sw	sp, ra, 188
	addi	sp, sp, 192
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -192
	lw	ra, sp, 188
	jal	zero, 44
	addi	a3, zero, 2
	bne	a2, a3, 36
	lw	a21, sp, 12
	sw	sp, ra, 188
	addi	sp, sp, 192
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -192
	lw	ra, sp, 188
	jal	zero, 4
	jal	zero, 4
	jal	zero, 4
	jal	zero, 4
	addi	a1, zero, 0
	addi	a2, zero, 0
	lw	a0, sp, 128
	lw	a21, sp, 8
	sw	sp, ra, 188
	addi	sp, sp, 192
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -192
	lw	ra, sp, 188
	addi	a1, zero, 0
	addi	a2, zero, 2
	lw	a0, sp, 56
	lw	a3, a0, 4
	blt	a1, a3, 8
	jalr	zero, ra, 0
	lw	a0, a0, 4
	addi	a0, a0, -1
	sw	sp, a1, 188
	blt	a1, a0, 8
	jal	zero, 48
	addi	a0, zero, 1
	lw	a3, sp, 164
	lw	a21, sp, 8
	addi	a1, a0, 0
	addi	a0, a3, 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	addi	a0, zero, 0
	lw	a1, sp, 188
	lw	a2, sp, 92
	lw	a3, sp, 128
	lw	a4, sp, 164
	lw	a21, sp, 4
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	addi	a0, zero, 1
	addi	a4, zero, 4
	lw	a1, sp, 128
	lw	a2, sp, 164
	lw	a3, sp, 92
	lw	a21, sp, 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	jalr	zero, ra, 0
	addi	a0, zero, 50
	addi	a1, zero, 1
	addi	a2, zero, -1
	sw	sp, a0, 0
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 4780
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, a0, 0
	lw	a0, sp, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 4752
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, 1
	addi	a2, zero, 1
	lw	a3, a0, 0
	sw	sp, a0, 4
	sw	sp, a1, 8
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 4704
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, a0, 0
	lw	a0, sp, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 4676
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 12
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 4660
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 16
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 4592
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 64
	flw	fa0, a2, 0
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 4576
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 24
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 4532
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 28
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 4464
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 32
	addi	a0, a1, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 4448
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 36
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 4404
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 40
	addi	a0, a1, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 4360
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 44
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 4316
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 2
	addi	a2, zero, 0
	sw	sp, a0, 48
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 4248
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 2
	addi	a2, zero, 0
	sw	sp, a0, 52
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 4208
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 56
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 4192
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 60
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 4148
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 64
	addi	a0, a1, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 4104
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 68
	addi	a0, a1, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 4060
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 72
	addi	a0, a1, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, 4016
	addi	sp, sp, -80
	lw	ra, sp, 76
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 76
	addi	a0, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 3972
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 80
	addi	a0, a1, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, 3928
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 84
	addi	a0, a1, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 3884
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, a0, 0
	addi	a0, zero, 0
	sw	sp, a1, 88
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 3824
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, zero, 0
	addi	a2, hp, 0
	addi	hp, hp, 8
	sw	a2, a0, 4
	lw	a0, sp, 88
	sw	a2, a0, 0
	addi	a0, a2, 0
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 3764
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, a0, 0
	addi	a0, zero, 5
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 3736
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 92
	addi	a0, a1, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 3720
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 152
	flw	fa0, a2, 0
	sw	sp, a0, 96
	addi	a0, a1, 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	ra, 3676
	addi	sp, sp, -104
	lw	ra, sp, 100
	addi	a1, zero, 60
	lw	a2, sp, 96
	sw	sp, a0, 100
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 3608
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 100
	sw	a1, a2, 0
	addi	a3, zero, 0
	lui	a4, 0
	addi	a4, a4, 152
	flw	fa0, a4, 0
	sw	sp, a1, 104
	sw	sp, a0, 108
	addi	a0, a3, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 3568
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, a0, 0
	addi	a0, zero, 0
	sw	sp, a1, 112
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 3508
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 112
	sw	a1, a0, 0
	addi	a0, a1, 0
	addi	a1, zero, 180
	addi	a2, zero, 0
	lui	a3, 0
	addi	a3, a3, 152
	flw	fa0, a3, 0
	addi	a3, hp, 0
	addi	hp, hp, 12
	fsw	a3, fa0, 8
	sw	a3, a0, 4
	sw	a3, a2, 0
	addi	a0, a3, 0
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 3408
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 116
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 3368
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, hp, 0
	addi	hp, hp, 16
	lui	a2, 0
	addi	a2, a2, 388
	sw	a1, a2, 0
	lw	a2, sp, 80
	sw	a1, a2, 12
	lw	a3, sp, 76
	sw	a1, a3, 8
	lw	a4, sp, 72
	sw	a1, a4, 4
	addi	a5, hp, 0
	addi	hp, hp, 8
	lui	a6, 4096
	addi	a6, a6, 660
	sw	a5, a6, 0
	lw	a6, sp, 4
	sw	a5, a6, 4
	addi	a7, hp, 0
	addi	hp, hp, 8
	lui	a8, 4096
	addi	a8, a8, 1188
	sw	a7, a8, 0
	lw	a8, sp, 16
	sw	a7, a8, 4
	addi	a9, hp, 0
	addi	hp, hp, 8
	lui	a10, 4096
	addi	a10, a10, 1484
	sw	a9, a10, 0
	sw	a9, a8, 4
	addi	a10, hp, 0
	addi	hp, hp, 8
	lui	a11, 4096
	addi	a11, a11, 1936
	sw	a10, a11, 0
	sw	a10, a8, 4
	addi	a11, hp, 0
	addi	hp, hp, 16
	lui	a12, 8192
	addi	a12, a12, -1796
	sw	a11, a12, 0
	sw	a11, a10, 12
	sw	a11, a7, 8
	sw	a11, a8, 4
	addi	a12, hp, 0
	addi	hp, hp, 8
	lui	a13, 8192
	addi	a13, a13, -1312
	sw	a12, a13, 0
	sw	a12, a8, 4
	addi	a13, hp, 0
	addi	hp, hp, 8
	lui	a14, 8192
	addi	a14, a14, -844
	sw	a13, a14, 0
	sw	a13, a8, 4
	addi	a14, hp, 0
	addi	hp, hp, 8
	lui	a15, 8192
	addi	a15, a15, -572
	sw	a14, a15, 0
	sw	a14, a8, 4
	addi	a15, hp, 0
	addi	hp, hp, 16
	lui	a16, 8192
	addi	a16, a16, -396
	sw	a15, a16, 0
	sw	a15, a14, 12
	sw	a15, a12, 8
	sw	a15, a8, 4
	addi	a16, hp, 0
	addi	hp, hp, 28
	lui	a17, 12288
	addi	a17, a17, -1088
	sw	a16, a17, 0
	lw	a17, sp, 100
	sw	a16, a17, 24
	sw	a16, a13, 20
	sw	a16, a12, 16
	sw	a16, a8, 12
	lw	a18, sp, 28
	sw	a16, a18, 8
	lw	a19, sp, 108
	sw	a16, a19, 4
	addi	a20, hp, 0
	addi	hp, hp, 12
	lui	a21, 12288
	addi	a21, a21, -332
	sw	a20, a21, 0
	sw	a20, a16, 8
	sw	a20, a6, 4
	addi	a21, hp, 0
	addi	hp, hp, 40
	sw	sp, a5, 120
	lui	a5, 12288
	addi	a5, a5, 152
	sw	a21, a5, 0
	sw	a21, a17, 36
	sw	a21, a13, 32
	sw	a21, a12, 28
	sw	a21, a8, 24
	sw	a21, a20, 20
	sw	a21, a16, 16
	sw	a21, a18, 12
	sw	a21, a19, 8
	sw	a21, a6, 4
	addi	a5, hp, 0
	addi	hp, hp, 40
	lui	a13, 12288
	addi	a13, a13, 1292
	sw	a5, a13, 0
	lw	a13, sp, 24
	sw	a5, a13, 36
	lw	a16, sp, 64
	sw	a5, a16, 32
	sw	a5, a9, 28
	sw	a5, a10, 24
	sw	a5, a7, 20
	sw	a5, a8, 16
	lw	a19, sp, 20
	sw	a5, a19, 12
	sw	a5, a18, 8
	lw	a20, sp, 32
	sw	a5, a20, 4
	sw	sp, a1, 124
	addi	a1, hp, 0
	addi	hp, hp, 12
	lui	a17, 16384
	addi	a17, a17, -1820
	sw	a1, a17, 0
	sw	a1, a5, 8
	sw	a1, a6, 4
	addi	a17, hp, 0
	addi	hp, hp, 44
	lui	a3, 16384
	addi	a3, a3, -1384
	sw	a17, a3, 0
	sw	a17, a13, 40
	sw	a17, a16, 36
	sw	a17, a9, 32
	sw	a17, a10, 28
	sw	a17, a7, 24
	sw	a17, a8, 20
	sw	a17, a11, 16
	sw	a17, a1, 12
	sw	a17, a5, 8
	sw	a17, a6, 4
	addi	a1, hp, 0
	addi	hp, hp, 36
	lui	a3, 16384
	addi	a3, a3, 340
	sw	a1, a3, 0
	sw	a1, a13, 32
	lw	a3, sp, 68
	sw	a1, a3, 28
	sw	a1, a14, 24
	sw	a1, a12, 20
	sw	a1, a8, 16
	sw	a1, a19, 12
	sw	a1, a18, 8
	sw	a1, a20, 4
	addi	a5, hp, 0
	addi	hp, hp, 12
	lui	a7, 16384
	addi	a7, a7, 1124
	sw	a5, a7, 0
	sw	a5, a1, 8
	sw	a5, a6, 4
	addi	a7, hp, 0
	addi	hp, hp, 36
	lui	a9, 16384
	addi	a9, a9, 1560
	sw	a7, a9, 0
	sw	a7, a13, 32
	sw	a7, a14, 28
	sw	a7, a12, 24
	sw	a7, a15, 20
	sw	a7, a8, 16
	sw	a7, a5, 12
	sw	a7, a1, 8
	sw	a7, a6, 4
	addi	a1, hp, 0
	addi	hp, hp, 12
	lui	a5, 20480
	addi	a5, a5, -1036
	sw	a1, a5, 0
	lw	a5, sp, 36
	sw	a1, a5, 8
	sw	a1, a18, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a8, 20480
	addi	a8, a8, -740
	sw	a6, a8, 0
	lw	a8, sp, 40
	sw	a6, a8, 4
	addi	a9, hp, 0
	addi	hp, hp, 44
	lui	a10, 20480
	addi	a10, a10, 424
	sw	a9, a10, 0
	sw	a9, a7, 40
	sw	a9, a13, 36
	sw	a9, a8, 32
	sw	a9, a21, 28
	lw	a10, sp, 48
	sw	a9, a10, 24
	lw	a11, sp, 116
	sw	a9, a11, 20
	lw	a12, sp, 12
	sw	a9, a12, 16
	sw	a9, a5, 12
	sw	a9, a19, 8
	sw	a9, a20, 4
	addi	a14, hp, 0
	addi	hp, hp, 68
	lui	a15, 20480
	addi	a15, a15, 1128
	sw	a14, a15, 0
	sw	a14, a6, 64
	sw	a14, a9, 60
	sw	a14, a17, 56
	sw	a14, a13, 52
	sw	a14, a8, 48
	sw	a14, a3, 44
	sw	a14, a16, 40
	sw	a14, a21, 36
	sw	a14, a10, 32
	sw	a14, a12, 28
	sw	a14, a5, 24
	sw	a14, a0, 20
	sw	a14, a19, 16
	sw	a14, a18, 12
	sw	a14, a20, 8
	sw	a14, a1, 4
	addi	a9, hp, 0
	addi	hp, hp, 52
	lui	a15, 24576
	addi	a15, a15, -944
	sw	a9, a15, 0
	sw	a9, a6, 48
	sw	a9, a7, 44
	sw	a9, a13, 40
	sw	a9, a8, 36
	sw	a9, a21, 32
	sw	a9, a12, 28
	sw	a9, a5, 24
	sw	a9, a19, 20
	sw	a9, a18, 16
	sw	a9, a20, 12
	sw	a9, a1, 8
	lw	a1, sp, 44
	sw	a9, a1, 4
	addi	a5, hp, 0
	addi	hp, hp, 8
	lui	a6, 24576
	addi	a6, a6, -116
	sw	a5, a6, 0
	sw	a5, a9, 4
	addi	a6, hp, 0
	addi	hp, hp, 16
	lui	a7, 24576
	addi	a7, a7, 404
	sw	a6, a7, 0
	sw	a6, a3, 12
	sw	a6, a5, 8
	lw	a7, sp, 92
	sw	a6, a7, 4
	addi	a8, hp, 0
	addi	hp, hp, 28
	lui	a13, 24576
	addi	a13, a13, 1148
	sw	a8, a13, 0
	sw	a8, a9, 24
	sw	a8, a3, 20
	sw	a8, a10, 16
	sw	a8, a5, 12
	sw	a8, a7, 8
	sw	a8, a1, 4
	addi	a13, hp, 0
	addi	hp, hp, 12
	lui	a15, 28672
	addi	a15, a15, -1100
	sw	a13, a15, 0
	sw	a13, a10, 8
	sw	a13, a1, 4
	addi	a15, hp, 0
	addi	hp, hp, 20
	lui	a17, 28672
	addi	a17, a17, -688
	sw	a15, a17, 0
	sw	a15, a6, 16
	sw	a15, a10, 12
	sw	a15, a1, 8
	sw	a15, a8, 4
	addi	a6, hp, 0
	addi	hp, hp, 16
	lui	a17, 28672
	addi	a17, a17, -260
	sw	a6, a17, 0
	sw	a6, a15, 12
	sw	a6, a13, 8
	sw	a6, a8, 4
	addi	a17, hp, 0
	addi	hp, hp, 8
	lui	a18, 28672
	addi	a18, a18, 700
	sw	a17, a18, 0
	sw	a17, a10, 4
	addi	a18, hp, 0
	addi	hp, hp, 24
	lui	a19, 28672
	addi	a19, a19, 960
	sw	a18, a19, 0
	sw	a18, a9, 20
	sw	a18, a3, 16
	sw	a18, a5, 12
	sw	a18, a7, 8
	sw	a18, a1, 4
	addi	a19, hp, 0
	addi	hp, hp, 56
	lui	a20, 28672
	addi	a20, a20, 1888
	sw	a19, a20, 0
	sw	a19, a14, 52
	sw	a19, a9, 48
	sw	a19, a3, 44
	sw	a19, a16, 40
	sw	a19, a4, 36
	lw	a3, sp, 60
	sw	a19, a3, 32
	sw	a19, a10, 28
	lw	a4, sp, 84
	sw	a19, a4, 24
	sw	a19, a18, 20
	sw	a19, a5, 16
	lw	a4, sp, 56
	sw	a19, a4, 12
	sw	a19, a7, 8
	sw	a19, a1, 4
	addi	a1, hp, 0
	addi	hp, hp, 28
	lui	a5, 32768
	addi	a5, a5, -1164
	sw	a1, a5, 0
	sw	a1, a2, 24
	lw	a2, sp, 76
	sw	a1, a2, 20
	sw	a1, a3, 16
	sw	a1, a19, 12
	lw	a2, sp, 52
	sw	a1, a2, 8
	sw	a1, a4, 4
	addi	a5, hp, 0
	addi	hp, hp, 32
	lui	a9, 32768
	addi	a9, a9, -1036
	sw	a5, a9, 0
	sw	a5, a17, 28
	sw	a5, a6, 24
	sw	a5, a10, 20
	sw	a5, a2, 16
	sw	a5, a15, 12
	sw	a5, a13, 8
	sw	a5, a8, 4
	addi	a8, hp, 0
	addi	hp, hp, 32
	lui	a9, 32768
	addi	a9, a9, 292
	sw	a8, a9, 0
	sw	a8, a17, 28
	sw	a8, a6, 24
	sw	a8, a5, 20
	sw	a8, a10, 16
	sw	a8, a1, 12
	sw	a8, a2, 8
	sw	a8, a15, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a9, 32768
	addi	a9, a9, 2000
	sw	a6, a9, 0
	sw	a6, a7, 4
	addi	a9, hp, 0
	addi	hp, hp, 8
	lui	a10, 36864
	addi	a10, a10, -1416
	sw	a9, a10, 0
	sw	a9, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a10, 36864
	addi	a10, a10, -1088
	sw	a6, a10, 0
	sw	a6, a9, 4
	addi	a9, hp, 0
	addi	hp, hp, 8
	lui	a10, 36864
	addi	a10, a10, -204
	sw	a9, a10, 0
	sw	a9, a7, 4
	addi	a10, hp, 0
	addi	hp, hp, 8
	lui	a13, 36864
	addi	a13, a13, 1648
	sw	a10, a13, 0
	sw	a10, a7, 4
	addi	a13, hp, 0
	addi	hp, hp, 12
	lui	a14, 40960
	addi	a14, a14, -880
	sw	a13, a14, 0
	sw	a13, a11, 8
	sw	a13, a0, 4
	addi	a14, hp, 0
	addi	hp, hp, 12
	lui	a15, 40960
	addi	a15, a15, 728
	sw	a14, a15, 0
	sw	a14, a11, 8
	sw	a14, a0, 4
	addi	a21, hp, 0
	addi	hp, hp, 72
	lui	a0, 40960
	addi	a0, a0, 1464
	sw	a21, a0, 0
	lw	a0, sp, 100
	sw	a21, a0, 68
	sw	a21, a14, 64
	sw	a21, a13, 60
	sw	a21, a5, 56
	sw	a21, a3, 52
	sw	a21, a8, 48
	lw	a0, sp, 124
	sw	a21, a0, 44
	lw	a0, sp, 120
	sw	a21, a0, 40
	sw	a21, a1, 36
	sw	a21, a12, 32
	lw	a0, sp, 104
	sw	a21, a0, 28
	sw	a21, a10, 24
	sw	a21, a2, 20
	sw	a21, a4, 16
	sw	a21, a7, 12
	sw	a21, a9, 8
	sw	a21, a6, 4
	addi	a0, zero, 128
	addi	a1, zero, 128
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	zero, zero, 0
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
	lui	a0, 49152
	addi	a0, a0, -644
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lui	a0, 49152
	addi	a0, a0, -648
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa0
	bne	zero, t0, 8
	jalr	zero, ra, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 24
	lui	a0, 49152
	addi	a0, a0, -652
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	jal	zero, -48
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, -56
	lui	a0, 49152
	addi	a0, a0, -648
	flw	fa1, a0, 0
	addi	a21, hp, 0
	addi	hp, hp, 8
	lui	a0, 49152
	addi	a0, a0, -640
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
	lui	a0, 49152
	addi	a0, a0, -656
	flw	fa3, a0, 0
	lui	a0, 49152
	addi	a0, a0, -652
	flw	fa4, a0, 0
	fmul.s	fa0, fa4, fa0, rne
	fsub.s	fa0, fa3, fa0, rne
	lui	a0, 49152
	addi	a0, a0, -660
	flw	fa3, a0, 0
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a0, 49152
	addi	a0, a0, -664
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	fsub.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	fmul.s	fa3, fa2, fa1, rne
	fmul.s	fa1, fa3, fa1, rne
	lui	a0, 49152
	addi	a0, a0, -668
	flw	fa4, a0, 0
	fmul.s	fa2, fa4, fa2, rne
	fsub.s	fa0, fa0, fa2, rne
	lui	a0, 49152
	addi	a0, a0, -672
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 49152
	addi	a0, a0, -676
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
	lui	a0, 49152
	addi	a0, a0, -680
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	flw	fa0, sp, 0
	fsw	a0, fa0, 0
	jal	zero, 56
	lui	a0, 49152
	addi	a0, a0, -684
	flw	fa1, a0, 0
	flw	fa2, sp, 0
	fmul.s	fa1, fa2, fa1, rne
	lui	a0, 49152
	addi	a0, a0, -680
	flw	fa2, a0, 0
	fsub.s	fa0, fa0, fa2, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 49152
	addi	a0, a0, -688
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa0
	bne	zero, t0, 24
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	jal	zero, 36
	lui	a0, 49152
	addi	a0, a0, -680
	flw	fa2, a0, 0
	fsub.s	fa0, fa2, fa0, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 49152
	addi	a0, a0, -692
	flw	fa2, a0, 0
	fsw	sp, fa1, 4
	flt.s	t0, fa0, fa2
	bne	zero, t0, 44
	lui	a0, 49152
	addi	a0, a0, -688
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
	lui	a0, 49152
	addi	a0, a0, -656
	flw	fa1, a0, 0
	fsgnjx.s	fa0, fa0, fa0
	fsw	sp, fa1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -588
	addi	sp, sp, -8
	lw	ra, sp, 4
	lui	a0, 49152
	addi	a0, a0, -680
	flw	fa1, a0, 0
	flt.s	t0, fa1, fa0
	bne	zero, t0, 28
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	flw	fa0, sp, 0
	fsw	a0, fa0, 0
	jal	zero, 48
	lui	a0, 49152
	addi	a0, a0, -684
	flw	fa1, a0, 0
	lui	a0, 49152
	addi	a0, a0, -680
	flw	fa2, a0, 0
	fsub.s	fa0, fa0, fa2, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 49152
	addi	a0, a0, -688
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa0
	bne	zero, t0, 24
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	jal	zero, 52
	lui	a0, 49152
	addi	a0, a0, -684
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	lui	a0, 49152
	addi	a0, a0, -680
	flw	fa2, a0, 0
	fsub.s	fa0, fa2, fa0, rne
	addi	a0, hp, 0
	addi	hp, hp, 8
	fsw	a0, fa0, 4
	fsw	a0, fa1, 0
	flw	fa0, a0, 4
	flw	fa1, a0, 0
	lui	a0, 49152
	addi	a0, a0, -692
	flw	fa2, a0, 0
	fsw	sp, fa1, 4
	flt.s	t0, fa0, fa2
	bne	zero, t0, 44
	lui	a0, 49152
	addi	a0, a0, -688
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
	lui	a0, 49152
	addi	a0, a0, 392
	flw	fa7, a0, 0
	fmul.s	fa2, fa7, fa2, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 49152
	addi	a0, a0, 388
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 49152
	addi	a0, a0, 384
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 49152
	addi	a0, a0, 380
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa5, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 49152
	addi	a0, a0, 376
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa6, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 49152
	addi	a0, a0, 372
	flw	fa2, a0, 0
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fsgnjx.s	fa1, fa0, fa0
	lui	a0, 49152
	addi	a0, a0, 368
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
	lui	a0, 49152
	addi	a0, a0, 364
	flw	fa2, a0, 0
	flt.s	t0, fa2, fa1
	bne	zero, t0, 104
	lui	a0, 49152
	addi	a0, a0, 360
	flw	fa2, a0, 0
	lui	a0, 49152
	addi	a0, a0, 356
	flw	fa3, a0, 0
	fsub.s	fa3, fa1, fa3, rne
	lui	a0, 49152
	addi	a0, a0, 356
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
	lui	a0, 49152
	addi	a0, a0, 352
	flw	fa2, a0, 0
	lui	a0, 49152
	addi	a0, a0, 356
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
	lui	a1, 49152
	addi	a1, a1, 900
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
	int	0
	float	0.0
	int	50704
	int	50748
	int	50792
	int	50836
	int	50880
	int	50924
	int	50968
	int	51012
	int	51056
	int	51100
	int	51144
	int	51188
	int	51232
	int	51276
	int	51320
	int	51364
	int	51408
	int	51452
	int	51496
	int	51540
	int	51584
	int	51628
	int	51672
	int	51716
	int	51760
	int	51804
	int	51848
	int	51892
	int	51936
	int	51980
	int	52024
	int	52068
	int	52112
	int	52156
	int	52200
	int	52244
	int	52288
	int	52332
	int	52376
	int	52420
	int	52464
	int	52508
	int	52552
	int	52596
	int	52640
	int	52684
	int	52728
	int	52772
	int	52816
	int	52860
	int	52904
	int	52948
	int	52992
	int	53036
	int	53080
	int	53124
	int	53168
	int	53212
	int	53256
	int	53300
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	int	0
	int	0
	int	0
	int	0
	int	50460
	int	50460
	int	0
	int	50460
	int	50460
	int	50460
	int	50460
	float	0.0
	float	0.0
	float	0.0
	float	0.0
	float	0.0
	float	0.0
	float	0.0
	float	0.0
	float	0.0
	float	255.0
