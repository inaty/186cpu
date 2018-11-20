	jal	zero, 35488
	float	128.00000000000
	float	0.90000000000
	float	0.20000000000
	float	150.00000000000
	float	-150.00000000000
	float	0.10000000000
	float	-2.00000000000
	float	256.00000000000
	float	20.00000000000
	float	0.05000000000
	float	0.25000000000
	float	10.00000000000
	float	0.30000000000
	float	255.00000000000
	float	0.50000000000
	float	0.15000000000
	float	3.14159270000
	float	30.00000000000
	float	15.00000000000
	float	0.00010000000
	float	100000000.00000000000
	float	1000000000.00000000000
	float	-0.10000000000
	float	0.01000000000
	float	-0.20000000000
	float	2.00000000000
	float	-200.00000000000
	float	200.00000000000
	float	0.01745329300
	float	-1.00000000000
	float	1.00000000000
	float	0.00000000000
	addi	a2, zero, 0
	bne	a0, a2, 12
	addi	a0, a1, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	bne	a1, a0, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	fsw	sp, fa0, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 39784
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, 0
	bne	a0, a1, 68
	flw	fa0, sp, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 39728
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 39724
	jalr	zero, ra, 0
	add	a0, a0, a1
	addi	a1, zero, 5
	blt	a0, a1, 12
	addi	a0, a0, -5
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	fsw	a0, fa0, 0
	fsw	a0, fa1, 4
	fsw	a0, fa2, 8
	jalr	zero, ra, 0
	fsw	a0, fa0, 0
	fsw	a0, fa0, 4
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	jal	zero, -28
	flw	fa0, a1, 0
	fsw	a0, fa0, 0
	flw	fa0, a1, 4
	fsw	a0, fa0, 4
	flw	fa0, a1, 8
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	flw	fa0, a0, 0
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 39572
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	flw	fa1, a0, 4
	lw	a1, sp, 0
	flw	fa2, a1, 4
	fsub.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 39524
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 8
	lw	a0, sp, 0
	flw	fa2, a0, 8
	fsub.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 39468
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fadd.s	fa0, fa1, fa0, rne
	jalr	zero, ra, 0
	lui	a1, 0
	addi	a1, a1, 124
	flw	fa0, a1, 0
	flw	fa1, a0, 0
	fsw	sp, fa0, 0
	sw	sp, a0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 39408
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8
	flw	fa1, a0, 4
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 39372
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	flw	fa1, a0, 8
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 39328
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 39324
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 0
	fdiv.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
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
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 39216
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 39180
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 8
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 39136
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 39132
	addi	sp, sp, -28
	lw	ra, sp, 24
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 39052
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 64
	addi	a0, zero, 0
	lw	a1, sp, 0
	bne	a1, a0, 28
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	lw	a0, sp, 4
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
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 4
	flw	fa2, a1, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	flw	fa2, a1, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	flw	fa3, a0, 0
	fmul.s	fa0, fa3, fa0, rne
	flw	fa3, a0, 4
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	flw	fa1, a0, 0
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
	flw	fa0, a0, 0
	flw	fa1, a1, 0
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a1, 4
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	flw	fa0, a0, 8
	flw	fa1, a1, 8
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	flw	fa0, a0, 0
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a1, 4
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	flw	fa0, a0, 8
	flw	fa1, a1, 8
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
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
	lw	a0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 8
	jalr	zero, ra, 0
	lw	a0, a0, 24
	jalr	zero, ra, 0
	lw	a0, a0, 12
	jalr	zero, ra, 0
	lw	a0, a0, 16
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 16
	flw	fa0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 16
	flw	fa0, a0, 8
	jalr	zero, ra, 0
	lw	a0, a0, 16
	jalr	zero, ra, 0
	lw	a0, a0, 20
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 20
	flw	fa0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 20
	flw	fa0, a0, 8
	jalr	zero, ra, 0
	lw	a0, a0, 28
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 28
	flw	fa0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 32
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 32
	flw	fa0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 32
	flw	fa0, a0, 8
	jalr	zero, ra, 0
	lw	a0, a0, 36
	flw	fa0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 36
	flw	fa0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 36
	flw	fa0, a0, 8
	jalr	zero, ra, 0
	lw	a0, a0, 40
	jalr	zero, ra, 0
	lw	a0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 8
	jalr	zero, ra, 0
	lw	a0, a0, 12
	jalr	zero, ra, 0
	lw	a0, a0, 16
	jalr	zero, ra, 0
	lw	a0, a0, 20
	jalr	zero, ra, 0
	lw	a0, a0, 24
	lw	a0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 24
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, a0, 28
	jalr	zero, ra, 0
	lw	a0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 4
	jalr	zero, ra, 0
	lw	a0, a0, 0
	jalr	zero, ra, 0
	lw	a0, a0, 4
	jalr	zero, ra, 0
	flw	fa0, a0, 8
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 116
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	lw	a0, a21, 20
	lw	a1, a21, 16
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	sw	sp, a0, 0
	sw	sp, a2, 4
	sw	sp, a3, 8
	sw	sp, a1, 12
	sw	sp, a4, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 41068
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 41040
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 4
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 41012
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 8
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 40984
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -172
	addi	sp, sp, -24
	lw	ra, sp, 20
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 39148
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 38624
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 40884
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -272
	addi	sp, sp, -52
	lw	ra, sp, 48
	fsw	sp, fa0, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 39048
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fsw	sp, fa0, 56
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 38524
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 32
	fmul.s	fa2, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 112
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	lw	a0, sp, 12
	fsw	a0, fa2, 0
	lui	a1, 0
	addi	a1, a1, 108
	flw	fa2, a1, 0
	flw	fa3, sp, 40
	fmul.s	fa2, fa3, fa2, rne
	fsw	a0, fa2, 4
	flw	fa2, sp, 56
	fmul.s	fa4, fa1, fa2, rne
	lui	a1, 0
	addi	a1, a1, 112
	flw	fa5, a1, 0
	fmul.s	fa4, fa4, fa5, rne
	fsw	a0, fa4, 8
	lw	a1, sp, 8
	fsw	a1, fa2, 0
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa4, a2, 0
	fsw	a1, fa4, 4
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 37792
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 8
	fsw	a0, fa0, 8
	flw	fa0, sp, 40
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 37760
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 0
	flw	fa0, sp, 32
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 37720
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 4
	fsw	a0, fa0, 4
	flw	fa0, sp, 40
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 37688
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 56
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 8
	lw	a0, sp, 16
	flw	fa0, a0, 0
	lw	a1, sp, 12
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	lw	a2, sp, 0
	fsw	a2, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a1, 4
	fsub.s	fa0, fa0, fa1, rne
	fsw	a2, fa0, 4
	flw	fa0, a0, 8
	flw	fa1, a1, 8
	fsub.s	fa0, fa0, fa1, rne
	fsw	a2, fa0, 8
	jalr	zero, ra, 0
	lw	a0, a21, 8
	lw	a1, a21, 4
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 40424
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 40436
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -720
	addi	sp, sp, -12
	lw	ra, sp, 8
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 38108
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 37488
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	fsw	a0, fa0, 4
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 40344
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -812
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 38500
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 37976
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 0
	flw	fa0, sp, 16
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 38428
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 40184
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	jalr	zero, ra, 0
	flw	fa0, a1, 0
	sw	sp, a0, 0
	sw	sp, a1, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 38348
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 37820
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 38276
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 37748
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4
	flw	fa1, a0, 8
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 38204
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 4
	flw	fa1, a0, 8
	fsw	sp, fa0, 40
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 37676
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	flw	fa2, sp, 24
	fmul.s	fa3, fa2, fa1, rne
	flw	fa4, sp, 32
	flw	fa5, sp, 16
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
	fsw	sp, fa0, 48
	fsw	sp, fa8, 56
	fsw	sp, fa10, 64
	fsw	sp, fa6, 72
	fsw	sp, fa9, 80
	fsw	sp, fa3, 88
	fsgnj.s	fa0, fa4, fa4
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 36936
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 24
	flw	fa2, sp, 16
	fmul.s	fa2, fa2, fa1, rne
	flw	fa3, sp, 8
	fmul.s	fa1, fa3, fa1, rne
	lw	a0, sp, 0
	flw	fa3, a0, 0
	flw	fa4, a0, 4
	flw	fa5, a0, 8
	flw	fa6, sp, 88
	fsw	sp, fa1, 96
	fsw	sp, fa2, 104
	fsw	sp, fa5, 112
	fsw	sp, fa0, 120
	fsw	sp, fa4, 128
	fsw	sp, fa3, 136
	fsgnj.s	fa0, fa6, fa6
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 36832
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 80
	fsw	sp, fa0, 144
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	ra, 36792
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 128
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 144
	fadd.s	fa0, fa2, fa0, rne
	flw	fa2, sp, 120
	fsw	sp, fa0, 152
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, 36744
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 112
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 152
	fadd.s	fa0, fa2, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	flw	fa0, sp, 72
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, 36696
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 64
	fsw	sp, fa0, 160
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 36656
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 128
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 160
	fadd.s	fa0, fa2, fa0, rne
	flw	fa2, sp, 104
	fsw	sp, fa0, 168
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 36608
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 112
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 168
	fadd.s	fa0, fa2, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 4
	flw	fa0, sp, 56
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 36560
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 48
	fsw	sp, fa0, 176
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	ra, 36520
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 128
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 176
	fadd.s	fa0, fa2, fa0, rne
	flw	fa2, sp, 96
	fsw	sp, fa0, 184
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, 36472
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 112
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 184
	fadd.s	fa0, fa2, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 8
	lui	a0, 0
	addi	a0, a0, 104
	flw	fa0, a0, 0
	flw	fa2, sp, 72
	flw	fa3, sp, 136
	fmul.s	fa4, fa3, fa2, rne
	flw	fa5, sp, 56
	fmul.s	fa4, fa4, fa5, rne
	flw	fa6, sp, 64
	flw	fa7, sp, 128
	fmul.s	fa8, fa7, fa6, rne
	flw	fa9, sp, 48
	fmul.s	fa8, fa8, fa9, rne
	fadd.s	fa4, fa4, fa8, rne
	flw	fa8, sp, 104
	fmul.s	fa10, fa1, fa8, rne
	flw	fa11, sp, 96
	fmul.s	fa10, fa10, fa11, rne
	fadd.s	fa4, fa4, fa10, rne
	fmul.s	fa0, fa0, fa4, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 0
	lui	a1, 0
	addi	a1, a1, 104
	flw	fa0, a1, 0
	flw	fa4, sp, 88
	fmul.s	fa10, fa3, fa4, rne
	fmul.s	fa5, fa10, fa5, rne
	flw	fa10, sp, 80
	fmul.s	fa12, fa7, fa10, rne
	fmul.s	fa9, fa12, fa9, rne
	fadd.s	fa5, fa5, fa9, rne
	flw	fa9, sp, 120
	fmul.s	fa12, fa1, fa9, rne
	fmul.s	fa11, fa12, fa11, rne
	fadd.s	fa5, fa5, fa11, rne
	fmul.s	fa0, fa0, fa5, rne
	fsw	a0, fa0, 4
	lui	a1, 0
	addi	a1, a1, 104
	flw	fa0, a1, 0
	fmul.s	fa3, fa3, fa4, rne
	fmul.s	fa2, fa3, fa2, rne
	fmul.s	fa3, fa7, fa10, rne
	fmul.s	fa3, fa3, fa6, rne
	fadd.s	fa2, fa2, fa3, rne
	fmul.s	fa1, fa1, fa9, rne
	fmul.s	fa1, fa1, fa8, rne
	fadd.s	fa1, fa2, fa1, rne
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	lw	a1, a21, 4
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 39076
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, 1
	sub	a1, zero, a1
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 39032
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 39008
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 38984
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 38312
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 38948
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 38920
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 38892
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 38184
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 38820
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	fsw	a0, fa0, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 38792
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	fsw	a0, fa0, 4
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 38764
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	fsw	a0, fa0, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 38736
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 35772
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 2
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 32
	addi	a0, a1, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 38012
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 38648
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36
	fsw	a0, fa0, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 38620
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36
	fsw	a0, fa0, 4
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 37912
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 38548
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 38520
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 4
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 38492
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 37784
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	lw	a2, sp, 20
	bne	a2, a1, 8
	jal	zero, 152
	sw	sp, a0, 44
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 38404
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -2752
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44
	fsw	a0, fa0, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 38356
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -2800
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44
	fsw	a0, fa0, 4
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 38308
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -2848
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44
	fsw	a0, fa0, 8
	addi	a1, zero, 2
	lw	a2, sp, 12
	bne	a2, a1, 12
	addi	a1, zero, 1
	jal	zero, 8
	lw	a1, sp, 32
	addi	a3, zero, 4
	lui	a4, 0
	addi	a4, a4, 128
	flw	fa0, a4, 0
	sw	sp, a1, 48
	sw	sp, a0, 44
	addi	a0, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 37548
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
	lw	a2, sp, 28
	sw	a1, a2, 20
	lw	a2, sp, 24
	sw	a1, a2, 16
	lw	a3, sp, 20
	sw	a1, a3, 12
	lw	a4, sp, 16
	sw	a1, a4, 8
	lw	a4, sp, 12
	sw	a1, a4, 4
	lw	a5, sp, 8
	sw	a1, a5, 0
	lw	a5, sp, 4
	slli	a5, a5, 2
	lw	a6, sp, 0
	add	t0, a6, a5
	sw	t0, a1, 0
	addi	a1, zero, 3
	bne	a4, a1, 380
	flw	fa0, a2, 0
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 35128
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 72
	flw	fa0, sp, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -4700
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fsw	sp, fa0, 64
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 35096
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lw	a0, sp, 24
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 35004
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 72
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -4824
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72
	fsw	sp, fa0, 80
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 34972
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lw	a0, sp, 24
	fsw	a0, fa0, 4
	flw	fa0, a0, 8
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 34880
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 72
	flw	fa0, sp, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -4948
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88
	fsw	sp, fa0, 96
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 34848
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lw	a0, sp, 24
	fsw	a0, fa0, 8
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
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -4480
	addi	sp, sp, -108
	lw	ra, sp, 104
	jal	zero, 4
	addi	a0, zero, 0
	lw	a1, sp, 20
	bne	a1, a0, 8
	jal	zero, 32
	lw	a0, sp, 24
	lw	a1, sp, 44
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -2552
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a1, a21, 8
	lw	a2, a21, 4
	addi	a3, zero, 60
	blt	a0, a3, 8
	jalr	zero, ra, 0
	sw	sp, a21, 0
	sw	sp, a2, 4
	sw	sp, a0, 8
	addi	a21, a1, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 0
	bne	a0, a1, 20
	lw	a0, sp, 4
	lw	a1, sp, 8
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 8
	addi	a0, a0, 1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a21, a21, 4
	addi	a0, zero, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 37424
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, 1
	sub	a1, zero, a1
	bne	a0, a1, 24
	lw	a0, sp, 0
	addi	a0, a0, 1
	addi	a1, zero, 1
	sub	a1, zero, a1
	jal	zero, 36728
	lw	a1, sp, 0
	addi	a2, a1, 1
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -80
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 0
	slli	a1, a1, 2
	lw	a2, sp, 4
	add	t0, a0, a1
	sw	t0, a2, 0
	jalr	zero, ra, 0
	addi	a1, zero, 0
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -136
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, a0, 0
	lw	a0, a1, 0
	addi	a2, zero, 1
	sub	a2, zero, a2
	bne	a0, a2, 16
	lw	a0, sp, 0
	addi	a0, a0, 1
	jal	zero, 36604
	lw	a0, sp, 0
	addi	a2, a0, 1
	sw	sp, a1, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -88
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 0
	slli	a1, a1, 2
	lw	a2, sp, 4
	add	t0, a0, a1
	sw	t0, a2, 0
	jalr	zero, ra, 0
	lw	a1, a21, 4
	addi	a2, zero, 0
	sw	sp, a21, 0
	sw	sp, a1, 4
	sw	sp, a0, 8
	addi	a0, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -272
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, a0, 0
	addi	a2, zero, 1
	sub	a2, zero, a2
	bne	a1, a2, 8
	jalr	zero, ra, 0
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, 1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a0, a21, 20
	lw	a1, a21, 16
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	sw	sp, a4, 0
	sw	sp, a2, 4
	sw	sp, a3, 8
	sw	sp, a1, 12
	addi	a21, a0, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a21, sp, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a21, sp, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a0, zero, 0
	lw	a21, sp, 4
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a0, zero, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -388
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 0
	sw	a1, a0, 0
	jalr	zero, ra, 0
	lw	a5, a21, 4
	slli	a6, a2, 2
	add	t0, a1, a6
	flw	fa3, t0, 0
	sw	sp, a5, 0
	fsw	sp, fa2, 8
	sw	sp, a4, 16
	fsw	sp, fa1, 24
	sw	sp, a3, 32
	fsw	sp, fa0, 40
	sw	sp, a1, 48
	sw	sp, a2, 52
	sw	sp, a0, 56
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 33944
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 448
	lw	a0, sp, 56
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -4560
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56
	sw	sp, a0, 60
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -4644
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 48
	add	t0, a3, a2
	flw	fa0, t0, 0
	sw	sp, a0, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 33824
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, a0, 0
	lw	a0, sp, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -6028
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 60
	add	t0, a3, a2
	flw	fa0, t0, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -5916
	addi	sp, sp, -72
	lw	ra, sp, 68
	flw	fa1, sp, 40
	fsub.s	fa0, fa0, fa1, rne
	lw	a0, sp, 52
	slli	a0, a0, 2
	lw	a1, sp, 48
	add	t0, a1, a0
	flw	fa1, t0, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 32
	slli	a2, a0, 2
	add	t0, a1, a2
	flw	fa1, t0, 0
	fmul.s	fa1, fa0, fa1, rne
	flw	fa2, sp, 24
	fadd.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 72
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 33720
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 32
	slli	a0, a0, 2
	lw	a1, sp, 60
	add	t0, a1, a0
	flw	fa1, t0, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 33608
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 16
	slli	a1, a0, 2
	lw	a2, sp, 48
	add	t0, a2, a1
	flw	fa0, t0, 0
	flw	fa1, sp, 72
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 8
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 33608
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 16
	slli	a0, a0, 2
	lw	a1, sp, 60
	add	t0, a1, a0
	flw	fa1, t0, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 33496
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 0
	flw	fa0, sp, 72
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a21, a21, 4
	addi	a2, zero, 0
	addi	a3, zero, 1
	addi	a4, zero, 2
	fsw	sp, fa0, 0
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	sw	sp, a1, 24
	sw	sp, a0, 28
	sw	sp, a21, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 0
	bne	a0, a1, 164
	addi	a2, zero, 1
	addi	a3, zero, 2
	addi	a4, zero, 0
	flw	fa0, sp, 16
	flw	fa1, sp, 8
	flw	fa2, sp, 0
	lw	a0, sp, 28
	lw	a1, sp, 24
	lw	a21, sp, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 0
	bne	a0, a1, 88
	addi	a2, zero, 2
	addi	a3, zero, 0
	addi	a4, zero, 1
	flw	fa0, sp, 8
	flw	fa1, sp, 0
	flw	fa2, sp, 16
	lw	a0, sp, 28
	lw	a1, sp, 24
	lw	a21, sp, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
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
	lw	a2, a21, 4
	sw	sp, a2, 0
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	fsw	sp, fa0, 24
	sw	sp, a1, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -5272
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, a0, 0
	lw	a0, sp, 32
	sw	sp, a1, 36
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -5748
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 33120
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	flw	fa0, sp, 24
	flw	fa1, sp, 16
	flw	fa2, sp, 8
	lw	a0, sp, 36
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -5776
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 33120
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	fsw	sp, fa0, 0
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 33044
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	sp, fa0, 32
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -5524
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 16
	fsw	sp, fa0, 40
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 32976
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 24
	fsw	sp, fa0, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -5580
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 40
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 8
	fsw	sp, fa0, 56
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 32900
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 24
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -5644
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 56
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 24
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -5720
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	flw	fa0, sp, 72
	jalr	zero, ra, 0
	flw	fa0, sp, 8
	flw	fa1, sp, 16
	fmul.s	fa2, fa1, fa0, rne
	lw	a0, sp, 24
	fsw	sp, fa2, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -5628
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 72
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 0
	flw	fa2, sp, 8
	fmul.s	fa2, fa2, fa1, rne
	lw	a0, sp, 24
	fsw	sp, fa0, 88
	fsw	sp, fa2, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -5676
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 88
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 16
	flw	fa2, sp, 0
	fmul.s	fa1, fa2, fa1, rne
	lw	a0, sp, 24
	fsw	sp, fa0, 104
	fsw	sp, fa1, 112
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, -5724
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 104
	fadd.s	fa0, fa1, fa0, rne
	jalr	zero, ra, 0
	fmul.s	fa6, fa0, fa3, rne
	fsw	sp, fa3, 0
	fsw	sp, fa0, 8
	fsw	sp, fa5, 16
	fsw	sp, fa2, 24
	sw	sp, a0, 32
	fsw	sp, fa4, 40
	fsw	sp, fa1, 48
	fsw	sp, fa6, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -5964
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 40
	flw	fa2, sp, 48
	fmul.s	fa3, fa2, fa1, rne
	lw	a0, sp, 32
	fsw	sp, fa0, 64
	fsw	sp, fa3, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -6004
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 64
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 16
	flw	fa2, sp, 24
	fmul.s	fa3, fa2, fa1, rne
	lw	a0, sp, 32
	fsw	sp, fa0, 80
	fsw	sp, fa3, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -6052
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 80
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 32
	fsw	sp, fa0, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -6128
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 0
	bne	a0, a1, 12
	flw	fa0, sp, 96
	jalr	zero, ra, 0
	flw	fa0, sp, 40
	flw	fa1, sp, 24
	fmul.s	fa2, fa1, fa0, rne
	flw	fa3, sp, 16
	flw	fa4, sp, 48
	fmul.s	fa5, fa4, fa3, rne
	fadd.s	fa2, fa2, fa5, rne
	lw	a0, sp, 32
	fsw	sp, fa2, 104
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -6052
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 16
	flw	fa2, sp, 8
	fmul.s	fa1, fa2, fa1, rne
	flw	fa3, sp, 0
	flw	fa4, sp, 24
	fmul.s	fa4, fa4, fa3, rne
	fadd.s	fa1, fa1, fa4, rne
	lw	a0, sp, 32
	fsw	sp, fa0, 112
	fsw	sp, fa1, 120
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, -6108
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa1, sp, 120
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 112
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 40
	flw	fa2, sp, 8
	fmul.s	fa1, fa2, fa1, rne
	flw	fa2, sp, 0
	flw	fa3, sp, 48
	fmul.s	fa2, fa3, fa2, rne
	fadd.s	fa1, fa1, fa2, rne
	lw	a0, sp, 32
	fsw	sp, fa0, 128
	fsw	sp, fa1, 136
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, -6172
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 128
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 32148
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 96
	fadd.s	fa0, fa1, fa0, rne
	jalr	zero, ra, 0
	lw	a2, a21, 4
	flw	fa3, a1, 0
	flw	fa4, a1, 4
	flw	fa5, a1, 8
	sw	sp, a2, 0
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	fsw	sp, fa0, 24
	sw	sp, a0, 32
	sw	sp, a1, 36
	fsgnj.s	fa2, fa5, fa5
	fsgnj.s	fa1, fa4, fa4
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -984
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 32028
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 384
	lw	a0, sp, 36
	flw	fa0, a0, 0
	flw	fa1, a0, 4
	flw	fa2, a0, 8
	flw	fa3, sp, 24
	flw	fa4, sp, 16
	flw	fa5, sp, 8
	lw	a0, sp, 32
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -620
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 24
	flw	fa2, sp, 16
	flw	fa3, sp, 8
	lw	a0, sp, 32
	fsw	sp, fa0, 48
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -1120
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 32
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -6652
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 3
	bne	a0, a1, 28
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	flw	fa1, sp, 56
	fsub.s	fa0, fa1, fa0, rne
	jal	zero, 8
	flw	fa0, sp, 56
	flw	fa1, sp, 48
	fsw	sp, fa0, 64
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 31852
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	flw	fa2, sp, 40
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 31756
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 31796
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 32
	fsw	sp, fa0, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -6812
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 32
	flw	fa0, sp, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 31728
	addi	sp, sp, -92
	lw	ra, sp, 88
	jal	zero, 8
	flw	fa0, sp, 80
	flw	fa1, sp, 48
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 40
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a3, a21, 16
	lw	a4, a21, 12
	lw	a5, a21, 8
	lw	a6, a21, 4
	slli	a0, a0, 2
	add	t0, a6, a0
	lw	a0, t0, 0
	flw	fa0, a2, 0
	sw	sp, a4, 0
	sw	sp, a3, 4
	sw	sp, a1, 8
	sw	sp, a5, 12
	sw	sp, a0, 16
	sw	sp, a2, 20
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -6912
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 20
	flw	fa1, a0, 4
	lw	a1, sp, 16
	fsw	sp, fa0, 32
	fsw	sp, fa1, 40
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -6952
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 20
	flw	fa1, a0, 8
	lw	a0, sp, 16
	fsw	sp, fa0, 48
	fsw	sp, fa1, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -6988
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -7124
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 1
	bne	a0, a1, 36
	flw	fa0, sp, 32
	flw	fa1, sp, 48
	flw	fa2, sp, 64
	lw	a0, sp, 16
	lw	a1, sp, 8
	lw	a21, sp, 12
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 2
	bne	a0, a1, 36
	flw	fa0, sp, 32
	flw	fa1, sp, 48
	flw	fa2, sp, 64
	lw	a0, sp, 16
	lw	a1, sp, 8
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	flw	fa0, sp, 32
	flw	fa1, sp, 48
	flw	fa2, sp, 64
	lw	a0, sp, 16
	lw	a1, sp, 8
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 4
	flw	fa3, a2, 0
	fsub.s	fa3, fa3, fa0, rne
	flw	fa4, a2, 4
	fmul.s	fa3, fa3, fa4, rne
	flw	fa4, a1, 4
	fmul.s	fa4, fa3, fa4, rne
	fadd.s	fa4, fa4, fa1, rne
	sw	sp, a3, 0
	fsw	sp, fa0, 8
	fsw	sp, fa1, 16
	sw	sp, a2, 24
	fsw	sp, fa2, 32
	fsw	sp, fa3, 40
	sw	sp, a1, 48
	sw	sp, a0, 52
	fsgnj.s	fa0, fa4, fa4
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 31256
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -7308
	addi	sp, sp, -68
	lw	ra, sp, 64
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 31128
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 168
	lw	a0, sp, 48
	flw	fa0, a0, 8
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 32
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 31140
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 52
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -7412
	addi	sp, sp, -76
	lw	ra, sp, 72
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 31012
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 52
	lw	a0, sp, 24
	flw	fa0, a0, 4
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 31000
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 684
	lw	a0, sp, 24
	flw	fa0, a0, 8
	flw	fa1, sp, 16
	fsub.s	fa0, fa0, fa1, rne
	flw	fa2, a0, 12
	fmul.s	fa0, fa0, fa2, rne
	lw	a1, sp, 48
	flw	fa2, a1, 0
	fmul.s	fa2, fa0, fa2, rne
	flw	fa3, sp, 8
	fadd.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 72
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 30940
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 52
	fsw	sp, fa0, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -7636
	addi	sp, sp, -92
	lw	ra, sp, 88
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 30812
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 168
	lw	a0, sp, 48
	flw	fa0, a0, 8
	flw	fa1, sp, 72
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 32
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 30824
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 52
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -7728
	addi	sp, sp, -100
	lw	ra, sp, 96
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 30696
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 52
	lw	a0, sp, 24
	flw	fa0, a0, 12
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 30684
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 348
	lw	a0, sp, 24
	flw	fa0, a0, 16
	flw	fa1, sp, 32
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 20
	fmul.s	fa0, fa0, fa1, rne
	lw	a1, sp, 48
	flw	fa1, a1, 0
	fmul.s	fa1, fa0, fa1, rne
	flw	fa2, sp, 8
	fadd.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 96
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 30624
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 52
	fsw	sp, fa0, 104
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -7952
	addi	sp, sp, -116
	lw	ra, sp, 112
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 104
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 30496
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 168
	lw	a0, sp, 48
	flw	fa0, a0, 4
	flw	fa1, sp, 96
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 16
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 30508
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a0, sp, 52
	fsw	sp, fa0, 112
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, -8056
	addi	sp, sp, -124
	lw	ra, sp, 120
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 112
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 30380
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 52
	lw	a0, sp, 24
	flw	fa0, a0, 20
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 30368
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 0
	flw	fa0, sp, 96
	fsw	a0, fa0, 0
	addi	a0, zero, 3
	jalr	zero, ra, 0
	lw	a0, sp, 0
	flw	fa0, sp, 72
	fsw	a0, fa0, 0
	addi	a0, zero, 2
	jalr	zero, ra, 0
	lw	a0, sp, 0
	flw	fa0, sp, 40
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a0, a21, 4
	flw	fa3, a1, 0
	sw	sp, a0, 0
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	fsw	sp, fa0, 24
	sw	sp, a1, 32
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 30208
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 32
	flw	fa0, a0, 4
	flw	fa1, sp, 24
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	flw	fa2, sp, 16
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 12
	flw	fa2, sp, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a2, a21, 4
	flw	fa3, a1, 0
	sw	sp, a2, 0
	fsw	sp, fa3, 8
	sw	sp, a0, 16
	fsw	sp, fa2, 24
	fsw	sp, fa1, 32
	fsw	sp, fa0, 40
	sw	sp, a1, 48
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 30080
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 396
	lw	a0, sp, 48
	flw	fa0, a0, 4
	flw	fa1, sp, 40
	fmul.s	fa0, fa0, fa1, rne
	flw	fa2, a0, 8
	flw	fa3, sp, 32
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	flw	fa2, a0, 12
	flw	fa4, sp, 24
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa0, fa0, fa2, rne
	lw	a1, sp, 16
	fsw	sp, fa0, 56
	addi	a0, a1, 0
	fsgnj.s	fa2, fa4, fa4
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa3, fa3
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -3056
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 16
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -8588
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 3
	bne	a0, a1, 28
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	flw	fa1, sp, 64
	fsub.s	fa0, fa1, fa0, rne
	jal	zero, 8
	flw	fa0, sp, 64
	flw	fa1, sp, 56
	fsw	sp, fa0, 72
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 29916
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72
	flw	fa2, sp, 8
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 29820
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 16
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -8720
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 60
	flw	fa0, sp, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 29828
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 56
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 48
	flw	fa1, a0, 16
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	jal	zero, 56
	flw	fa0, sp, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 29772
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 56
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 48
	flw	fa1, a0, 16
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a3, a21, 16
	lw	a4, a21, 12
	lw	a5, a21, 8
	lw	a6, a21, 4
	slli	a7, a0, 2
	add	t0, a6, a7
	lw	a6, t0, 0
	flw	fa0, a2, 0
	sw	sp, a4, 0
	sw	sp, a3, 4
	sw	sp, a5, 8
	sw	sp, a0, 12
	sw	sp, a1, 16
	sw	sp, a6, 20
	sw	sp, a2, 24
	fsw	sp, fa0, 32
	addi	a0, a6, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -8880
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 24
	flw	fa1, a0, 4
	lw	a1, sp, 20
	fsw	sp, fa0, 40
	fsw	sp, fa1, 48
	addi	a0, a1, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -8920
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 24
	flw	fa1, a0, 8
	lw	a0, sp, 20
	fsw	sp, fa0, 56
	fsw	sp, fa1, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -8956
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -8788
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 12
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	lw	a1, sp, 20
	sw	sp, a0, 80
	addi	a0, a1, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -9140
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a1, zero, 1
	bne	a0, a1, 64
	lw	a0, sp, 16
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, -8876
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a1, a0, 0
	flw	fa0, sp, 40
	flw	fa1, sp, 56
	flw	fa2, sp, 72
	lw	a0, sp, 20
	lw	a2, sp, 80
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 2
	bne	a0, a1, 36
	flw	fa0, sp, 40
	flw	fa1, sp, 56
	flw	fa2, sp, 72
	lw	a0, sp, 20
	lw	a1, sp, 80
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	flw	fa0, sp, 40
	flw	fa1, sp, 56
	flw	fa2, sp, 72
	lw	a0, sp, 20
	lw	a1, sp, 80
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a0, a21, 4
	flw	fa0, a1, 0
	sw	sp, a0, 0
	sw	sp, a2, 4
	sw	sp, a1, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 29208
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a0, sp, 4
	flw	fa1, a0, 12
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a3, a21, 4
	flw	fa3, a1, 0
	sw	sp, a3, 0
	sw	sp, a0, 4
	fsw	sp, fa3, 8
	sw	sp, a2, 16
	fsw	sp, fa2, 24
	fsw	sp, fa1, 32
	fsw	sp, fa0, 40
	sw	sp, a1, 48
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 29104
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 292
	lw	a0, sp, 48
	flw	fa0, a0, 4
	flw	fa1, sp, 40
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	flw	fa2, sp, 32
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 12
	flw	fa2, sp, 24
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lw	a1, sp, 16
	flw	fa1, a1, 12
	fsw	sp, fa0, 56
	fsw	sp, fa1, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 29044
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	flw	fa2, sp, 8
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 28948
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 4
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -9592
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 60
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 28956
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 48
	flw	fa1, a0, 16
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	jal	zero, 56
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 28900
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 48
	flw	fa1, a0, 16
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a2, a21, 16
	lw	a3, a21, 12
	lw	a4, a21, 8
	lw	a5, a21, 4
	slli	a6, a0, 2
	add	t0, a5, a6
	lw	a5, t0, 0
	sw	sp, a3, 0
	sw	sp, a2, 4
	sw	sp, a4, 8
	sw	sp, a5, 12
	sw	sp, a0, 16
	sw	sp, a1, 20
	addi	a0, a5, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -9608
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa0, a0, 0
	flw	fa1, a0, 4
	flw	fa2, a0, 8
	lw	a1, sp, 20
	sw	sp, a0, 24
	fsw	sp, fa2, 32
	fsw	sp, fa1, 40
	fsw	sp, fa0, 48
	addi	a0, a1, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -9568
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 16
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	lw	a1, sp, 12
	sw	sp, a0, 56
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -9920
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 1
	bne	a0, a1, 64
	lw	a0, sp, 20
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -9656
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, a0, 0
	flw	fa0, sp, 48
	flw	fa1, sp, 40
	flw	fa2, sp, 32
	lw	a0, sp, 12
	lw	a2, sp, 56
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 2
	bne	a0, a1, 40
	flw	fa0, sp, 48
	flw	fa1, sp, 40
	flw	fa2, sp, 32
	lw	a0, sp, 12
	lw	a1, sp, 56
	lw	a2, sp, 24
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	flw	fa0, sp, 48
	flw	fa1, sp, 40
	flw	fa2, sp, 32
	lw	a0, sp, 12
	lw	a1, sp, 56
	lw	a2, sp, 24
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a2, zero, 6
	lui	a3, 0
	addi	a3, a3, 128
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 30696
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	flw	fa0, a1, 0
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 28392
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 0
	bne	a0, a1, 184
	lw	a0, sp, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -10164
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4
	flw	fa0, a1, 0
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 28316
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, a0, 0
	lw	a0, sp, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -11536
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 0
	sw	sp, a0, 16
	addi	a0, a1, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -10240
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -11440
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 8
	fsw	a0, fa0, 0
	lui	a1, 0
	addi	a1, a1, 124
	flw	fa0, a1, 0
	lw	a1, sp, 4
	flw	fa1, a1, 0
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lw	a0, sp, 8
	fsw	a0, fa0, 4
	lw	a1, sp, 4
	flw	fa0, a1, 4
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 28156
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 184
	lw	a0, sp, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -10400
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 4
	flw	fa0, a1, 4
	sw	sp, a0, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 28080
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	lw	a0, sp, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -11772
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 0
	sw	sp, a0, 24
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -10464
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -11676
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 8
	fsw	a0, fa0, 8
	lui	a1, 0
	addi	a1, a1, 124
	flw	fa0, a1, 0
	lw	a1, sp, 4
	flw	fa1, a1, 4
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 12
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lw	a0, sp, 8
	fsw	a0, fa0, 12
	lw	a1, sp, 4
	flw	fa0, a1, 8
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 27920
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 0
	bne	a0, a1, 184
	lw	a0, sp, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -10636
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 4
	flw	fa0, a1, 8
	sw	sp, a0, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 27844
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, a0, 0
	lw	a0, sp, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -12008
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 0
	sw	sp, a0, 32
	addi	a0, a1, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -10688
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -11912
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 8
	fsw	a0, fa0, 16
	lui	a1, 0
	addi	a1, a1, 124
	flw	fa0, a1, 0
	lw	a1, sp, 4
	flw	fa1, a1, 8
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 20
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lw	a0, sp, 8
	fsw	a0, fa0, 20
	jalr	zero, ra, 0
	addi	a2, zero, 4
	lui	a3, 0
	addi	a3, a3, 128
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 29932
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	flw	fa0, a1, 0
	lw	a2, sp, 0
	sw	sp, a0, 8
	fsw	sp, fa0, 16
	addi	a0, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -10892
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 4
	lw	a1, sp, 0
	fsw	sp, fa0, 24
	fsw	sp, fa1, 32
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -10932
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 24
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 8
	lw	a0, sp, 0
	fsw	sp, fa0, 40
	fsw	sp, fa1, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -10976
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 40
	fadd.s	fa0, fa1, fa0, rne
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 27444
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 28
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lw	a0, sp, 8
	fsw	a0, fa0, 0
	jal	zero, 224
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa0, a0, 0
	flw	fa1, sp, 56
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 0
	lw	a1, sp, 0
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -11128
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fdiv.s	fa0, fa0, fa1, rne
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 27400
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8
	fsw	a0, fa0, 4
	lw	a1, sp, 0
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -11180
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fdiv.s	fa0, fa0, fa1, rne
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 27336
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8
	fsw	a0, fa0, 8
	lw	a1, sp, 0
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -11232
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fdiv.s	fa0, fa0, fa1, rne
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 27272
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8
	fsw	a0, fa0, 12
	jalr	zero, ra, 0
	addi	a2, zero, 5
	lui	a3, 0
	addi	a3, a3, 128
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 29436
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
	jal	ra, -5920
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4
	flw	fa1, a0, 0
	lw	a1, sp, 0
	fsw	sp, fa0, 16
	fsw	sp, fa1, 24
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -11436
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 27092
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4
	flw	fa1, a0, 4
	lw	a1, sp, 0
	fsw	sp, fa0, 32
	fsw	sp, fa1, 40
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -11496
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 27020
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 4
	flw	fa1, a0, 8
	lw	a1, sp, 0
	fsw	sp, fa0, 48
	fsw	sp, fa1, 56
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -11556
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fmul.s	fa0, fa1, fa0, rne
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 26948
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8
	flw	fa1, sp, 16
	fsw	a0, fa1, 0
	lw	a1, sp, 0
	fsw	sp, fa0, 64
	addi	a0, a1, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -11660
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 36
	lw	a0, sp, 8
	flw	fa0, sp, 32
	fsw	a0, fa0, 4
	flw	fa0, sp, 48
	fsw	a0, fa0, 8
	flw	fa0, sp, 64
	fsw	a0, fa0, 12
	jal	zero, 432
	lw	a0, sp, 4
	flw	fa0, a0, 8
	lw	a1, sp, 0
	fsw	sp, fa0, 72
	addi	a0, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -11580
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 4
	lw	a1, sp, 0
	fsw	sp, fa0, 80
	fsw	sp, fa1, 88
	addi	a0, a1, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -11620
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 80
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 26700
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 32
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 4
	lw	a1, sp, 4
	flw	fa0, a1, 8
	lw	a2, sp, 0
	fsw	sp, fa0, 96
	addi	a0, a2, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -11736
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 0
	lw	a1, sp, 0
	fsw	sp, fa0, 104
	fsw	sp, fa1, 112
	addi	a0, a1, 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, -11764
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 104
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 26556
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 48
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 8
	lw	a1, sp, 4
	flw	fa0, a1, 4
	lw	a2, sp, 0
	fsw	sp, fa0, 120
	addi	a0, a2, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, -11880
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa1, sp, 120
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	flw	fa1, a0, 0
	lw	a0, sp, 0
	fsw	sp, fa0, 128
	fsw	sp, fa1, 136
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, -11916
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 128
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 26416
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 64
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 12
	flw	fa0, sp, 16
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 26364
	addi	sp, sp, -148
	lw	ra, sp, 144
	addi	a1, zero, 0
	bne	a0, a1, 36
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	flw	fa1, sp, 16
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 16
	jal	zero, 4
	lw	a0, sp, 8
	jalr	zero, ra, 0
	lw	a2, a21, 4
	addi	a3, zero, 0
	blt	a1, a3, 304
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	sw	sp, a21, 0
	sw	sp, a1, 4
	sw	sp, a2, 8
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -11980
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12
	sw	sp, a0, 16
	addi	a0, a1, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -12020
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -12348
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 1
	bne	a0, a1, 56
	lw	a0, sp, 20
	lw	a1, sp, 8
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -2304
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 4
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 112
	addi	a1, zero, 2
	bne	a0, a1, 56
	lw	a0, sp, 20
	lw	a1, sp, 8
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -1600
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 4
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 52
	lw	a0, sp, 20
	lw	a1, sp, 8
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -1156
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 4
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 12
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a1, a21, 8
	lw	a21, a21, 4
	lw	a1, a1, 0
	addi	a1, a1, -1
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a2, a21, 4
	addi	a3, zero, 0
	blt	a1, a3, 464
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	sw	sp, a21, 0
	sw	sp, a1, 4
	sw	sp, a0, 8
	sw	sp, a2, 12
	addi	a0, a2, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -12420
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12
	sw	sp, a0, 16
	addi	a0, a1, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -12660
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8
	flw	fa0, a1, 0
	lw	a2, sp, 12
	sw	sp, a0, 20
	fsw	sp, fa0, 24
	addi	a0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -12628
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	a0, fa0, 0
	lw	a1, sp, 8
	flw	fa0, a1, 4
	lw	a2, sp, 12
	fsw	sp, fa0, 32
	addi	a0, a2, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -12672
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	a0, fa0, 4
	lw	a1, sp, 8
	flw	fa0, a1, 8
	lw	a2, sp, 12
	fsw	sp, fa0, 40
	addi	a0, a2, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -12716
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	a0, fa0, 8
	addi	a1, zero, 2
	lw	a2, sp, 20
	bne	a2, a1, 80
	lw	a1, sp, 12
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -12804
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 16
	flw	fa0, a1, 0
	flw	fa1, a1, 4
	flw	fa2, a1, 8
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -13236
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 16
	fsw	a0, fa0, 12
	jal	zero, 96
	addi	a1, zero, 2
	blt	a1, a2, 8
	jal	zero, 84
	flw	fa0, a0, 0
	flw	fa1, a0, 4
	flw	fa2, a0, 8
	lw	a1, sp, 12
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -7468
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 3
	lw	a1, sp, 20
	bne	a1, a0, 24
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa1, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	lw	a0, sp, 16
	fsw	a0, fa0, 12
	lw	a0, sp, 4
	addi	a1, a0, -1
	lw	a0, sp, 8
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a1, a21, 12
	lw	a2, a21, 8
	lw	a3, a21, 4
	sw	sp, a0, 0
	sw	sp, a2, 4
	sw	sp, a3, 8
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -14152
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8
	lw	a0, a0, 0
	addi	a1, a0, -1
	lw	a0, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	fsw	sp, fa2, 0
	fsw	sp, fa1, 8
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 25424
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -13152
	addi	sp, sp, -36
	lw	ra, sp, 32
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 25296
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 180
	flw	fa0, sp, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 25328
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16
	fsw	sp, fa0, 32
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -13236
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 32
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 25200
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 84
	flw	fa0, sp, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 25232
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 16
	fsw	sp, fa0, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -13320
	addi	sp, sp, -52
	lw	ra, sp, 48
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 25104
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 52
	lw	a0, sp, 16
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -13420
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 16
	jal	zero, -13460
	sw	sp, a0, 0
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -13436
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa0, sp, 24
	flw	fa1, sp, 16
	flw	fa2, sp, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -13864
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 0
	fsw	sp, fa0, 32
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -13548
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa0, sp, 32
	sw	sp, a0, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 24936
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, a0, 0
	lw	a0, sp, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -14916
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -8164
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -13696
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 3
	bne	a0, a1, 28
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	flw	fa1, sp, 8
	fsub.s	fa0, fa1, fa0, rne
	jal	zero, 8
	flw	fa0, sp, 8
	lw	a0, sp, 0
	fsw	sp, fa0, 16
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -13744
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa0, sp, 16
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 24740
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, a0, 0
	lw	a0, sp, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -15112
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	fsw	sp, fa2, 0
	fsw	sp, fa1, 8
	sw	sp, a0, 16
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -13800
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	sp, fa0, 32
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -13824
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 8
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	sp, fa0, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -13848
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 0
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	fsw	sp, fa0, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -13984
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 1
	bne	a0, a1, 24
	flw	fa0, sp, 32
	flw	fa1, sp, 40
	flw	fa2, sp, 48
	lw	a0, sp, 16
	jal	zero, -884
	addi	a1, zero, 2
	bne	a0, a1, 24
	flw	fa0, sp, 32
	flw	fa1, sp, 40
	flw	fa2, sp, 48
	lw	a0, sp, 16
	jal	zero, -568
	flw	fa0, sp, 32
	flw	fa1, sp, 40
	flw	fa2, sp, 48
	lw	a0, sp, 16
	jal	zero, -412
	lw	a2, a21, 4
	slli	a3, a0, 2
	add	t0, a1, a3
	lw	a3, t0, 0
	addi	a4, zero, 1
	sub	a4, zero, a4
	bne	a3, a4, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	slli	a3, a3, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	fsw	sp, fa2, 0
	fsw	sp, fa1, 8
	fsw	sp, fa0, 16
	sw	sp, a1, 24
	sw	sp, a21, 28
	sw	sp, a0, 32
	addi	a0, a2, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -304
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 0
	bne	a0, a1, 40
	lw	a0, sp, 32
	addi	a0, a0, 1
	flw	fa0, sp, 16
	flw	fa1, sp, 8
	flw	fa2, sp, 0
	lw	a1, sp, 24
	lw	a21, sp, 28
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a2, a21, 28
	lw	a3, a21, 24
	lw	a4, a21, 20
	lw	a5, a21, 16
	lw	a6, a21, 12
	lw	a7, a21, 8
	lw	a8, a21, 4
	slli	a9, a0, 2
	add	t0, a1, a9
	lw	a9, t0, 0
	addi	a10, zero, 1
	sub	a10, zero, a10
	bne	a9, a10, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a9, a0, 2
	add	t0, a1, a9
	lw	a9, t0, 0
	sw	sp, a8, 0
	sw	sp, a7, 4
	sw	sp, a6, 8
	sw	sp, a1, 12
	sw	sp, a21, 16
	sw	sp, a0, 20
	sw	sp, a4, 24
	sw	sp, a9, 28
	sw	sp, a3, 32
	addi	a1, a5, 0
	addi	a0, a9, 0
	addi	a21, a2, 0
	addi	a2, a7, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32
	flw	fa0, a1, 0
	addi	a1, zero, 0
	fsw	sp, fa0, 40
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 36
	lui	a0, 0
	addi	a0, a0, 100
	flw	fa1, a0, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 24092
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 84
	lw	a0, sp, 28
	slli	a0, a0, 2
	lw	a1, sp, 24
	add	t0, a1, a0
	lw	a0, t0, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -14448
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 20
	addi	a0, a0, 1
	lw	a1, sp, 12
	lw	a21, sp, 16
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa0, a0, 0
	flw	fa1, sp, 40
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a1, sp, 4
	flw	fa2, a1, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a0, 4
	fmul.s	fa2, fa2, fa0, rne
	flw	fa3, a1, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a0, 8
	fmul.s	fa0, fa3, fa0, rne
	flw	fa3, a1, 8
	fadd.s	fa0, fa0, fa3, rne
	addi	a0, zero, 0
	lw	a1, sp, 12
	lw	a21, sp, 0
	fsgnj.s	fa26, fa2, fa2
	fsgnj.s	fa2, fa0, fa0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa26, fa26
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 20
	addi	a0, a0, 1
	lw	a1, sp, 12
	lw	a21, sp, 16
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a2, a21, 8
	lw	a3, a21, 4
	slli	a4, a0, 2
	add	t0, a1, a4
	lw	a4, t0, 0
	addi	a5, zero, 1
	sub	a5, zero, a5
	bne	a4, a5, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a4, a4, 2
	add	t0, a3, a4
	lw	a3, t0, 0
	addi	a4, zero, 0
	sw	sp, a1, 0
	sw	sp, a21, 4
	sw	sp, a0, 8
	addi	a1, a3, 0
	addi	a0, a4, 0
	addi	a21, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 8
	addi	a0, a0, 1
	lw	a1, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	lw	a2, a21, 20
	lw	a3, a21, 16
	lw	a4, a21, 12
	lw	a5, a21, 8
	lw	a6, a21, 4
	slli	a7, a0, 2
	add	t0, a1, a7
	lw	a7, t0, 0
	lw	a8, a7, 0
	addi	a9, zero, 1
	sub	a9, zero, a9
	bne	a8, a9, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a9, zero, 99
	sw	sp, a7, 0
	sw	sp, a4, 4
	sw	sp, a1, 8
	sw	sp, a21, 12
	sw	sp, a0, 16
	bne	a8, a9, 12
	addi	a0, zero, 1
	jal	zero, 176
	sw	sp, a3, 20
	addi	a1, a5, 0
	addi	a0, a8, 0
	addi	a21, a2, 0
	addi	a2, a6, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 116
	lw	a0, sp, 20
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa1, a0, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 23500
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 60
	addi	a0, zero, 1
	lw	a1, sp, 0
	lw	a21, sp, 4
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 1
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 16
	addi	a0, a0, 1
	lw	a1, sp, 8
	lw	a21, sp, 12
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 1
	lw	a1, sp, 0
	lw	a21, sp, 4
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 28
	lw	a0, sp, 16
	addi	a0, a0, 1
	lw	a1, sp, 8
	lw	a21, sp, 12
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
	addi	a13, zero, 1
	sub	a13, zero, a13
	bne	a12, a13, 8
	jalr	zero, ra, 0
	sw	sp, a8, 0
	sw	sp, a10, 4
	sw	sp, a9, 8
	sw	sp, a11, 12
	sw	sp, a4, 16
	sw	sp, a3, 20
	sw	sp, a5, 24
	sw	sp, a2, 28
	sw	sp, a1, 32
	sw	sp, a21, 36
	sw	sp, a0, 40
	sw	sp, a7, 44
	sw	sp, a12, 48
	addi	a1, a2, 0
	addi	a0, a12, 0
	addi	a21, a6, 0
	addi	a2, a4, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 84
	lw	a0, sp, 48
	slli	a0, a0, 2
	lw	a1, sp, 44
	add	t0, a1, a0
	lw	a0, t0, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, -15376
	addi	sp, sp, -56
	lw	ra, sp, 52
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
	flw	fa1, a1, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	sw	sp, a0, 52
	fsw	sp, fa1, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 23028
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 280
	lw	a0, sp, 20
	flw	fa1, a0, 0
	flw	fa0, sp, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 22984
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 236
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa0, a0, 0
	flw	fa1, sp, 56
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 28
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a1, sp, 16
	flw	fa2, a1, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a0, 4
	fmul.s	fa2, fa2, fa0, rne
	flw	fa3, a1, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a0, 8
	fmul.s	fa3, fa3, fa0, rne
	flw	fa4, a1, 8
	fadd.s	fa3, fa3, fa4, rne
	addi	a1, zero, 0
	lw	a2, sp, 32
	lw	a21, sp, 12
	fsw	sp, fa3, 64
	fsw	sp, fa2, 72
	fsw	sp, fa1, 80
	fsw	sp, fa0, 88
	addi	a0, a1, 0
	addi	a1, a2, 0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 76
	lw	a0, sp, 20
	flw	fa0, sp, 88
	fsw	a0, fa0, 0
	flw	fa0, sp, 80
	flw	fa1, sp, 72
	flw	fa2, sp, 64
	lw	a0, sp, 8
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -16848
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 4
	lw	a1, sp, 48
	sw	a0, a1, 0
	lw	a0, sp, 0
	lw	a1, sp, 52
	sw	a0, a1, 0
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
	addi	a6, zero, 1
	sub	a6, zero, a6
	bne	a5, a6, 8
	jalr	zero, ra, 0
	slli	a5, a5, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	addi	a5, zero, 0
	sw	sp, a2, 0
	sw	sp, a1, 4
	sw	sp, a21, 8
	sw	sp, a0, 12
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	a21, a3, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12
	addi	a0, a0, 1
	lw	a1, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 20
	lw	a4, a21, 16
	lw	a5, a21, 12
	lw	a6, a21, 8
	lw	a7, a21, 4
	slli	a8, a0, 2
	add	t0, a1, a8
	lw	a8, t0, 0
	lw	a9, a8, 0
	addi	a10, zero, 1
	sub	a10, zero, a10
	bne	a9, a10, 8
	jalr	zero, ra, 0
	addi	a10, zero, 99
	sw	sp, a2, 0
	sw	sp, a1, 4
	sw	sp, a21, 8
	sw	sp, a0, 12
	bne	a9, a10, 48
	addi	a3, zero, 1
	addi	a1, a8, 0
	addi	a0, a3, 0
	addi	a21, a7, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	jal	zero, 160
	sw	sp, a8, 16
	sw	sp, a7, 20
	sw	sp, a3, 24
	sw	sp, a5, 28
	addi	a1, a2, 0
	addi	a0, a9, 0
	addi	a21, a6, 0
	addi	a2, a4, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 92
	lw	a0, sp, 28
	flw	fa0, a0, 0
	lw	a0, sp, 24
	flw	fa1, a0, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 22356
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 44
	addi	a0, zero, 1
	lw	a1, sp, 16
	lw	a2, sp, 0
	lw	a21, sp, 20
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 12
	addi	a0, a0, 1
	lw	a1, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, a21, 12
	lw	a2, a21, 8
	lw	a3, a21, 4
	lui	a4, 0
	addi	a4, a4, 88
	flw	fa0, a4, 0
	fsw	a2, fa0, 0
	addi	a4, zero, 0
	lw	a3, a3, 0
	sw	sp, a2, 0
	addi	a2, a0, 0
	addi	a21, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa0, a0, 0
	fsw	sp, fa1, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 22152
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 84
	flw	fa1, a0, 0
	flw	fa0, sp, 8
	jal	zero, 22108
	lw	a3, a21, 36
	lw	a4, a21, 32
	lw	a5, a21, 28
	lw	a6, a21, 24
	lw	a7, a21, 20
	lw	a8, a21, 16
	lw	a9, a21, 12
	lw	a10, a21, 8
	lw	a11, a21, 4
	sw	sp, a8, 0
	sw	sp, a10, 4
	sw	sp, a9, 8
	sw	sp, a11, 12
	sw	sp, a4, 16
	sw	sp, a3, 20
	sw	sp, a6, 24
	sw	sp, a21, 28
	sw	sp, a7, 32
	sw	sp, a2, 36
	sw	sp, a5, 40
	sw	sp, a1, 44
	sw	sp, a0, 48
	addi	a0, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, -16208
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 48
	slli	a2, a1, 2
	lw	a3, sp, 44
	add	t0, a3, a2
	lw	a2, t0, 0
	addi	a4, zero, 1
	sub	a4, zero, a4
	bne	a2, a4, 8
	jalr	zero, ra, 0
	lw	a4, sp, 36
	lw	a21, sp, 40
	sw	sp, a0, 52
	sw	sp, a2, 56
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 84
	lw	a0, sp, 56
	slli	a0, a0, 2
	lw	a1, sp, 32
	add	t0, a1, a0
	lw	a0, t0, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -16620
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lw	a0, sp, 48
	addi	a0, a0, 1
	lw	a1, sp, 44
	lw	a2, sp, 36
	lw	a21, sp, 28
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, sp, 24
	flw	fa1, a1, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	sw	sp, a0, 60
	fsw	sp, fa1, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 21784
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 272
	lw	a0, sp, 20
	flw	fa1, a0, 0
	flw	fa0, sp, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 21740
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 228
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa0, a0, 0
	flw	fa1, sp, 64
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 52
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a1, sp, 16
	flw	fa2, a1, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a0, 4
	fmul.s	fa2, fa2, fa0, rne
	flw	fa3, a1, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a0, 8
	fmul.s	fa3, fa3, fa0, rne
	flw	fa4, a1, 8
	fadd.s	fa3, fa3, fa4, rne
	addi	a0, zero, 0
	lw	a1, sp, 44
	lw	a21, sp, 12
	fsw	sp, fa3, 72
	fsw	sp, fa2, 80
	fsw	sp, fa1, 88
	fsw	sp, fa0, 96
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 76
	lw	a0, sp, 20
	flw	fa0, sp, 96
	fsw	a0, fa0, 0
	flw	fa0, sp, 88
	flw	fa1, sp, 80
	flw	fa2, sp, 72
	lw	a0, sp, 8
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -18084
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 4
	lw	a1, sp, 56
	sw	a0, a1, 0
	lw	a0, sp, 0
	lw	a1, sp, 60
	sw	a0, a1, 0
	lw	a0, sp, 48
	addi	a0, a0, 1
	lw	a1, sp, 44
	lw	a2, sp, 36
	lw	a21, sp, 28
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 8
	lw	a4, a21, 4
	slli	a5, a0, 2
	add	t0, a1, a5
	lw	a5, t0, 0
	addi	a6, zero, 1
	sub	a6, zero, a6
	bne	a5, a6, 8
	jalr	zero, ra, 0
	slli	a5, a5, 2
	add	t0, a4, a5
	lw	a4, t0, 0
	addi	a5, zero, 0
	sw	sp, a2, 0
	sw	sp, a1, 4
	sw	sp, a21, 8
	sw	sp, a0, 12
	addi	a1, a4, 0
	addi	a0, a5, 0
	addi	a21, a3, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12
	addi	a0, a0, 1
	lw	a1, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 16
	lw	a4, a21, 12
	lw	a5, a21, 8
	lw	a6, a21, 4
	slli	a7, a0, 2
	add	t0, a1, a7
	lw	a7, t0, 0
	lw	a8, a7, 0
	addi	a9, zero, 1
	sub	a9, zero, a9
	bne	a8, a9, 8
	jalr	zero, ra, 0
	addi	a9, zero, 99
	sw	sp, a2, 0
	sw	sp, a1, 4
	sw	sp, a21, 8
	sw	sp, a0, 12
	bne	a8, a9, 48
	addi	a3, zero, 1
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	a21, a6, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	jal	zero, 156
	sw	sp, a7, 16
	sw	sp, a6, 20
	sw	sp, a3, 24
	sw	sp, a5, 28
	addi	a1, a2, 0
	addi	a0, a8, 0
	addi	a21, a4, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 92
	lw	a0, sp, 28
	flw	fa0, a0, 0
	lw	a0, sp, 24
	flw	fa1, a0, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 21128
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 44
	addi	a0, zero, 1
	lw	a1, sp, 16
	lw	a2, sp, 0
	lw	a21, sp, 20
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 12
	addi	a0, a0, 1
	lw	a1, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, a21, 12
	lw	a2, a21, 8
	lw	a3, a21, 4
	lui	a4, 0
	addi	a4, a4, 88
	flw	fa0, a4, 0
	fsw	a2, fa0, 0
	addi	a4, zero, 0
	lw	a3, a3, 0
	sw	sp, a2, 0
	addi	a2, a0, 0
	addi	a21, a1, 0
	addi	a1, a3, 0
	addi	a0, a4, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa0, a0, 0
	fsw	sp, fa1, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 20924
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 84
	flw	fa1, a0, 0
	flw	fa0, sp, 8
	jal	zero, 20880
	lw	a1, a21, 8
	lw	a2, a21, 4
	lw	a2, a2, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, a2, 8
	addi	a0, a1, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -18740
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 2
	lw	a2, sp, 4
	add	t0, a2, a0
	flw	fa0, t0, 0
	sw	sp, a1, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -18976
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 20848
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12
	slli	a0, a0, 2
	lw	a1, sp, 0
	add	t0, a1, a0
	fsw	t0, fa0, 0
	jalr	zero, ra, 0
	lw	a1, a21, 4
	sw	sp, a0, 0
	sw	sp, a1, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -17764
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 20772
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	fsw	a0, fa0, 0
	lw	a1, sp, 0
	addi	a0, a1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -17808
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 20716
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	fsw	a0, fa0, 4
	lw	a1, sp, 0
	addi	a0, a1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -17852
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 20660
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	lw	a1, a21, 8
	lw	a2, a21, 4
	flw	fa0, a2, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, a2, 8
	fsw	sp, fa0, 16
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -17912
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	flw	fa1, a0, 4
	lw	a1, sp, 4
	fsw	sp, fa0, 24
	fsw	sp, fa1, 32
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -17952
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	flw	fa1, a0, 8
	lw	a0, sp, 4
	fsw	sp, fa0, 40
	fsw	sp, fa1, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -17988
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -18092
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -18116
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -18140
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	sp, fa0, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -18208
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 36
	lw	a0, sp, 0
	flw	fa0, sp, 64
	fsw	a0, fa0, 0
	flw	fa0, sp, 72
	fsw	a0, fa0, 4
	flw	fa0, sp, 80
	fsw	a0, fa0, 8
	jal	zero, 348
	lw	a0, sp, 4
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -18100
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -18148
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 56
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 88
	fadd.s	fa0, fa2, fa0, rne
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 20184
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 64
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	lw	a1, sp, 4
	addi	a0, a1, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -18216
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	sp, fa0, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -18276
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 56
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 96
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 20068
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 72
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 4
	lw	a1, sp, 4
	addi	a0, a1, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -18344
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	sp, fa0, 104
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -18392
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 104
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 19952
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 80
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 8
	lw	a1, sp, 4
	addi	a0, a1, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -18628
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, a0, 0
	lw	a0, sp, 0
	jal	zero, -19328
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	sw	sp, a2, 0
	sw	sp, a0, 4
	sw	sp, a4, 8
	sw	sp, a1, 12
	sw	sp, a3, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -18708
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 1
	bne	a0, a1, 20
	lw	a0, sp, 12
	lw	a21, sp, 16
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 2
	bne	a0, a1, 20
	lw	a0, sp, 4
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a0, sp, 4
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a2, a21, 4
	sw	sp, a1, 0
	sw	sp, a2, 4
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, -18816
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8
	sw	sp, a0, 12
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -18704
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	fsw	a0, fa0, 0
	lw	a1, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -18728
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	fsw	a0, fa0, 4
	lw	a1, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -18752
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	fsw	a0, fa0, 8
	addi	a1, zero, 1
	lw	a2, sp, 12
	bne	a2, a1, 404
	lw	a1, sp, 0
	flw	fa0, a1, 0
	lw	a2, sp, 8
	fsw	sp, fa0, 16
	addi	a0, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -18896
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 40
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 19580
	addi	sp, sp, -36
	lw	ra, sp, 32
	lui	a0, 0
	addi	a0, a0, 36
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa1, a0, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 19428
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 0
	flw	fa0, a1, 8
	lw	a1, sp, 8
	sw	sp, a0, 32
	fsw	sp, fa0, 40
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, -19024
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 40
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	fsw	sp, fa0, 48
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 19428
	addi	sp, sp, -60
	lw	ra, sp, 56
	lui	a0, 0
	addi	a0, a0, 36
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 48
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa1, a0, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 19276
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 0
	lw	a2, sp, 32
	bne	a2, a1, 44
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 56
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	jal	zero, 40
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 56
	flw	fa0, a0, 0
	lw	a0, sp, 4
	fsw	a0, fa0, 4
	jalr	zero, ra, 0
	addi	a1, zero, 2
	bne	a2, a1, 132
	lw	a1, sp, 0
	flw	fa0, a1, 4
	lui	a1, 0
	addi	a1, a1, 44
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 19804
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 19168
	addi	sp, sp, -60
	lw	ra, sp, 56
	lui	a0, 0
	addi	a0, a0, 56
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	a0, fa1, 0
	lui	a1, 0
	addi	a1, a1, 56
	flw	fa1, a1, 0
	lui	a1, 0
	addi	a1, a1, 124
	flw	fa2, a1, 0
	fsub.s	fa0, fa2, fa0, rne
	fmul.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 4
	jalr	zero, ra, 0
	addi	a1, zero, 3
	bne	a2, a1, 360
	lw	a1, sp, 0
	flw	fa0, a1, 0
	lw	a2, sp, 8
	fsw	sp, fa0, 56
	addi	a0, a2, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, -19440
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	flw	fa1, a0, 8
	lw	a0, sp, 8
	fsw	sp, fa0, 64
	fsw	sp, fa1, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -19464
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72
	fsub.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 64
	fsw	sp, fa0, 80
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 18968
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80
	fsw	sp, fa0, 88
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 18936
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 18932
	addi	sp, sp, -100
	lw	ra, sp, 96
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 18900
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 68
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 19932
	addi	sp, sp, -108
	lw	ra, sp, 104
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 18804
	addi	sp, sp, -108
	lw	ra, sp, 104
	lui	a0, 0
	addi	a0, a0, 56
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	lw	a0, sp, 4
	fsw	a0, fa1, 4
	lui	a1, 0
	addi	a1, a1, 124
	flw	fa1, a1, 0
	fsub.s	fa0, fa1, fa0, rne
	lui	a1, 0
	addi	a1, a1, 56
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	addi	a1, zero, 4
	bne	a2, a1, 1024
	lw	a1, sp, 0
	flw	fa0, a1, 0
	lw	a2, sp, 8
	fsw	sp, fa0, 104
	addi	a0, a2, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -19804
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	sp, fa0, 112
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, -19884
	addi	sp, sp, -124
	lw	ra, sp, 120
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 18660
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	flw	fa1, a0, 8
	lw	a1, sp, 8
	fsw	sp, fa0, 120
	fsw	sp, fa1, 128
	addi	a0, a1, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, -19888
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	sp, fa0, 136
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, -19968
	addi	sp, sp, -148
	lw	ra, sp, 144
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 18552
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 120
	fsw	sp, fa0, 144
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	ra, 18488
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 144
	fsw	sp, fa0, 152
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, 18456
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 152
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 120
	fsw	sp, fa0, 160
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 18424
	addi	sp, sp, -172
	lw	ra, sp, 168
	lui	a0, 0
	addi	a0, a0, 80
	flw	fa1, a0, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 18320
	addi	sp, sp, -172
	lw	ra, sp, 168
	addi	a1, zero, 0
	bne	a0, a1, 92
	flw	fa0, sp, 120
	flw	fa1, sp, 144
	fdiv.s	fa0, fa1, fa0, rne
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 18352
	addi	sp, sp, -172
	lw	ra, sp, 168
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 20152
	addi	sp, sp, -172
	lw	ra, sp, 168
	lui	a0, 0
	addi	a0, a0, 72
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 68
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 76
	flw	fa0, a0, 0
	fsw	sp, fa0, 168
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 18284
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	flw	fa1, a0, 4
	lw	a0, sp, 8
	fsw	sp, fa0, 176
	fsw	sp, fa1, 184
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, -20280
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 184
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	sp, fa0, 192
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	ra, -20360
	addi	sp, sp, -204
	lw	ra, sp, 200
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	ra, 18172
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 192
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 160
	fsw	sp, fa0, 200
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 18116
	addi	sp, sp, -212
	lw	ra, sp, 208
	lui	a0, 0
	addi	a0, a0, 80
	flw	fa1, a0, 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 18012
	addi	sp, sp, -212
	lw	ra, sp, 208
	addi	a1, zero, 0
	bne	a0, a1, 92
	flw	fa0, sp, 160
	flw	fa1, sp, 200
	fdiv.s	fa0, fa1, fa0, rne
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 18044
	addi	sp, sp, -212
	lw	ra, sp, 208
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 19844
	addi	sp, sp, -212
	lw	ra, sp, 208
	lui	a0, 0
	addi	a0, a0, 72
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 68
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 76
	flw	fa0, a0, 0
	fsw	sp, fa0, 208
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 17976
	addi	sp, sp, -220
	lw	ra, sp, 216
	flw	fa1, sp, 208
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 64
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 60
	flw	fa2, a0, 0
	flw	fa3, sp, 176
	fsub.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 216
	fsw	sp, fa1, 224
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	ra, 17872
	addi	sp, sp, -236
	lw	ra, sp, 232
	flw	fa1, sp, 224
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 60
	flw	fa1, a0, 0
	flw	fa2, sp, 216
	fsub.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 232
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 240
	addi	sp, sp, 244
	jal	ra, 17816
	addi	sp, sp, -244
	lw	ra, sp, 240
	flw	fa1, sp, 232
	fsub.s	fa0, fa1, fa0, rne
	fsw	sp, fa0, 240
	sw	sp, ra, 248
	addi	sp, sp, 252
	jal	ra, 17740
	addi	sp, sp, -252
	lw	ra, sp, 248
	addi	a1, zero, 0
	bne	a0, a1, 12
	flw	fa0, sp, 240
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 56
	flw	fa1, a0, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 52
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a0, a21, 8
	lw	a1, a21, 4
	fsw	sp, fa2, 0
	fsw	sp, fa1, 8
	fsw	sp, fa0, 16
	sw	sp, a0, 24
	sw	sp, a1, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 17604
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 36
	flw	fa0, sp, 16
	lw	a0, sp, 28
	lw	a1, sp, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -21248
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa0, sp, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 17536
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	flw	fa0, sp, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 17556
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 17536
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 28
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
	lw	a2, a21, 32
	lw	a3, a21, 28
	lw	a4, a21, 24
	lw	a5, a21, 20
	lw	a6, a21, 16
	lw	a7, a21, 12
	lw	a8, a21, 8
	lw	a9, a21, 4
	addi	a10, zero, 0
	blt	a0, a10, 492
	slli	a10, a0, 2
	add	t0, a3, a10
	lw	a3, t0, 0
	sw	sp, a21, 0
	sw	sp, a0, 4
	fsw	sp, fa1, 8
	sw	sp, a9, 16
	sw	sp, a1, 20
	fsw	sp, fa0, 24
	sw	sp, a5, 32
	sw	sp, a2, 36
	sw	sp, a4, 40
	sw	sp, a3, 44
	sw	sp, a7, 48
	sw	sp, a8, 52
	sw	sp, a6, 56
	addi	a0, a3, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -20896
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a21, sp, 56
	sw	sp, a0, 60
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 328
	lw	a0, sp, 52
	lw	a0, a0, 0
	addi	a1, zero, 4
	mul	a0, a0, a1
	lw	a1, sp, 48
	lw	a1, a1, 0
	add	a0, a0, a1
	lw	a1, sp, 44
	sw	sp, a0, 64
	addi	a0, a1, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -21008
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 64
	bne	a1, a0, 260
	addi	a0, zero, 0
	lw	a1, sp, 40
	lw	a1, a1, 0
	lw	a21, sp, 36
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 208
	lw	a0, sp, 60
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -21104
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, a0, 0
	lw	a0, sp, 32
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -21804
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -21128
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 24
	fmul.s	fa2, fa0, fa1, rne
	flw	fa3, sp, 72
	fmul.s	fa2, fa2, fa3, rne
	lw	a0, sp, 60
	fsw	sp, fa2, 80
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -21208
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, a0, 0
	lw	a0, sp, 20
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -21908
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88
	fmul.s	fa1, fa1, fa0, rne
	flw	fa0, sp, 80
	flw	fa2, sp, 8
	lw	a21, sp, 16
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
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
	lw	a3, a21, 80
	lw	a4, a21, 76
	lw	a5, a21, 72
	lw	a6, a21, 68
	lw	a7, a21, 64
	lw	a8, a21, 60
	lw	a9, a21, 56
	lw	a10, a21, 52
	lw	a11, a21, 48
	lw	a12, a21, 44
	lw	a13, a21, 40
	lw	a14, a21, 36
	lw	a15, a21, 32
	lw	a16, a21, 28
	lw	a17, a21, 24
	lw	a18, a21, 20
	lw	a19, a21, 16
	lw	a20, a21, 12
	sw	sp, a5, 0
	lw	a5, a21, 8
	sw	sp, a21, 4
	lw	a21, a21, 4
	sw	sp, a4, 8
	addi	a4, zero, 4
	blt	a4, a0, 1700
	fsw	sp, fa1, 16
	sw	sp, a14, 24
	sw	sp, a9, 28
	sw	sp, a21, 32
	sw	sp, a8, 36
	sw	sp, a11, 40
	sw	sp, a13, 44
	sw	sp, a6, 48
	sw	sp, a2, 52
	sw	sp, a17, 56
	sw	sp, a3, 60
	sw	sp, a18, 64
	sw	sp, a7, 68
	sw	sp, a20, 72
	sw	sp, a12, 76
	sw	sp, a19, 80
	sw	sp, a10, 84
	sw	sp, a5, 88
	fsw	sp, fa0, 96
	sw	sp, a15, 104
	sw	sp, a0, 108
	sw	sp, a1, 112
	sw	sp, a16, 116
	addi	a0, a2, 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, -21604
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a1, sp, 112
	lw	a21, sp, 116
	sw	sp, a0, 120
	addi	a0, a1, 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -128
	lw	ra, sp, 124
	addi	a1, zero, 0
	bne	a0, a1, 224
	addi	a0, zero, 1
	sub	a0, zero, a0
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 120
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, zero, 0
	bne	a1, a0, 8
	jalr	zero, ra, 0
	lw	a0, sp, 112
	lw	a1, sp, 104
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, -22328
	addi	sp, sp, -128
	lw	ra, sp, 124
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, 16616
	addi	sp, sp, -128
	lw	ra, sp, 124
	fsw	sp, fa0, 128
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 16520
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	flw	fa0, sp, 128
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 16540
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 96
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 88
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 84
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
	lw	a0, sp, 80
	lw	a0, a0, 0
	slli	a1, a0, 2
	lw	a2, sp, 76
	add	t0, a2, a1
	lw	a1, t0, 0
	sw	sp, a0, 136
	sw	sp, a1, 140
	addi	a0, a1, 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, -22152
	addi	sp, sp, -148
	lw	ra, sp, 144
	lw	a1, sp, 140
	sw	sp, a0, 144
	addi	a0, a1, 0
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	ra, -22080
	addi	sp, sp, -152
	lw	ra, sp, 148
	flw	fa1, sp, 96
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 140
	lw	a1, sp, 112
	lw	a21, sp, 72
	fsw	sp, fa0, 152
	sw	sp, ra, 160
	addi	sp, sp, 164
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a0, sp, 68
	lw	a1, sp, 64
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, -23324
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a0, sp, 140
	lw	a1, sp, 64
	lw	a21, sp, 60
	sw	sp, ra, 160
	addi	sp, sp, 164
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -164
	lw	ra, sp, 160
	addi	a0, zero, 4
	lw	a1, sp, 136
	mul	a0, a1, a0
	lw	a1, sp, 56
	lw	a1, a1, 0
	add	a0, a0, a1
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 120
	add	t0, a3, a2
	sw	t0, a0, 0
	lw	a0, sp, 52
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, -22148
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a1, sp, 108
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a0, t0, 0
	lw	a2, sp, 64
	addi	a1, a2, 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, -23472
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a0, sp, 52
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, -22200
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a1, sp, 140
	sw	sp, a0, 160
	addi	a0, a1, 0
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, -22360
	addi	sp, sp, -168
	lw	ra, sp, 164
	lui	a0, 0
	addi	a0, a0, 60
	flw	fa1, a0, 0
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, 16004
	addi	sp, sp, -168
	lw	ra, sp, 164
	addi	a1, zero, 0
	bne	a0, a1, 256
	addi	a0, zero, 1
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 160
	add	t0, a3, a2
	sw	t0, a0, 0
	lw	a0, sp, 52
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, -22312
	addi	sp, sp, -168
	lw	ra, sp, 164
	lw	a1, sp, 108
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a2, t0, 0
	lw	a3, sp, 48
	sw	sp, a0, 164
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -23668
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a0, sp, 108
	slli	a1, a0, 2
	lw	a2, sp, 164
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a2, 0
	addi	a2, a2, 124
	flw	fa0, a2, 0
	lui	a2, 0
	addi	a2, a2, 32
	flw	fa1, a2, 0
	fdiv.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 152
	fmul.s	fa0, fa0, fa1, rne
	addi	a0, a1, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -22816
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a0, sp, 52
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -22428
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 108
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a0, t0, 0
	lw	a2, sp, 44
	addi	a1, a2, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -23816
	addi	sp, sp, -172
	lw	ra, sp, 168
	jal	zero, 28
	addi	a0, zero, 0
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 160
	add	t0, a3, a2
	sw	t0, a0, 0
	lui	a0, 0
	addi	a0, a0, 28
	flw	fa0, a0, 0
	lw	a0, sp, 112
	lw	a1, sp, 44
	fsw	sp, fa0, 168
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, -23208
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 112
	lw	a1, sp, 44
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, -23160
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 140
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, -22768
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 96
	fmul.s	fa0, fa1, fa0, rne
	addi	a0, zero, 0
	lw	a1, sp, 40
	lw	a1, a1, 0
	lw	a21, sp, 36
	fsw	sp, fa0, 176
	sw	sp, ra, 184
	addi	sp, sp, 188
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -188
	lw	ra, sp, 184
	addi	a1, zero, 0
	bne	a0, a1, 156
	lw	a0, sp, 44
	lw	a1, sp, 104
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	ra, -23356
	addi	sp, sp, -188
	lw	ra, sp, 184
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	ra, 15588
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 152
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 112
	lw	a1, sp, 104
	fsw	sp, fa0, 184
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, -23416
	addi	sp, sp, -196
	lw	ra, sp, 192
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, 15528
	addi	sp, sp, -196
	lw	ra, sp, 192
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 184
	flw	fa2, sp, 176
	lw	a21, sp, 32
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	jal	zero, 4
	lw	a0, sp, 64
	lw	a21, sp, 28
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	lw	a0, sp, 24
	lw	a0, a0, 0
	addi	a0, a0, -1
	flw	fa0, sp, 152
	flw	fa1, sp, 176
	lw	a1, sp, 112
	lw	a21, sp, 8
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	lui	a0, 0
	addi	a0, a0, 24
	flw	fa0, a0, 0
	flw	fa1, sp, 96
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, 15284
	addi	sp, sp, -196
	lw	ra, sp, 192
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	addi	a0, zero, 4
	lw	a1, sp, 108
	blt	a1, a0, 8
	jal	zero, 32
	addi	a0, a1, 1
	addi	a2, zero, 1
	sub	a2, zero, a2
	slli	a0, a0, 2
	lw	a3, sp, 120
	add	t0, a3, a0
	sw	t0, a2, 0
	addi	a0, zero, 2
	lw	a2, sp, 144
	bne	a2, a0, 124
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa0, a0, 0
	lw	a0, sp, 140
	fsw	sp, fa0, 192
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	ra, -23220
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 192
	fsub.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 96
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 108
	addi	a0, a0, 1
	lw	a1, sp, 0
	flw	fa1, a1, 0
	flw	fa2, sp, 16
	fadd.s	fa1, fa2, fa1, rne
	lw	a1, sp, 112
	lw	a2, sp, 52
	lw	a21, sp, 4
	sw	sp, ra, 200
	addi	sp, sp, 204
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -204
	lw	ra, sp, 200
	jal	zero, 4
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
	sw	sp, a2, 0
	sw	sp, a12, 4
	fsw	sp, fa0, 8
	sw	sp, a7, 16
	sw	sp, a6, 20
	sw	sp, a3, 24
	sw	sp, a4, 28
	sw	sp, a9, 32
	sw	sp, a1, 36
	sw	sp, a11, 40
	sw	sp, a0, 44
	sw	sp, a5, 48
	sw	sp, a10, 52
	addi	a21, a8, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lw	a0, sp, 52
	lw	a0, a0, 0
	slli	a0, a0, 2
	lw	a1, sp, 48
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a1, sp, 44
	sw	sp, a0, 56
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -23320
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, a0, 0
	lw	a0, sp, 56
	lw	a21, sp, 40
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
	lw	a1, sp, 32
	lw	a21, sp, 36
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a0, zero, 0
	lw	a1, sp, 28
	lw	a1, a1, 0
	lw	a21, sp, 24
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 160
	lw	a0, sp, 20
	lw	a1, sp, 16
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -24140
	addi	sp, sp, -64
	lw	ra, sp, 60
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 14804
	addi	sp, sp, -64
	lw	ra, sp, 60
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 14708
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	jal	zero, 8
	flw	fa0, sp, 64
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 56
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -23760
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	lw	a1, sp, 0
	jal	zero, -24192
	jalr	zero, ra, 0
	lw	a4, a21, 4
	addi	a5, zero, 0
	blt	a3, a5, 304
	slli	a5, a3, 2
	add	t0, a0, a5
	lw	a5, t0, 0
	sw	sp, a2, 0
	sw	sp, a21, 4
	sw	sp, a4, 8
	sw	sp, a0, 12
	sw	sp, a3, 16
	sw	sp, a1, 20
	addi	a0, a5, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -23672
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -24368
	addi	sp, sp, -28
	lw	ra, sp, 24
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 14512
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 80
	lw	a0, sp, 16
	slli	a1, a0, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 0
	addi	a3, a3, 16
	flw	fa0, a3, 0
	flw	fa1, sp, 24
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 80
	lw	a0, sp, 16
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, sp, 12
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 0
	addi	a3, a3, 20
	flw	fa0, a3, 0
	flw	fa1, sp, 24
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16
	addi	a3, a0, -2
	lw	a0, sp, 12
	lw	a1, sp, 20
	lw	a2, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a3, a21, 8
	lw	a4, a21, 4
	sw	sp, a2, 0
	sw	sp, a1, 4
	sw	sp, a0, 8
	sw	sp, a4, 12
	addi	a0, a2, 0
	addi	a21, a3, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a3, zero, 118
	lw	a0, sp, 8
	lw	a1, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 12
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 8
	lw	a4, a21, 4
	addi	a5, zero, 0
	sw	sp, a2, 0
	sw	sp, a1, 4
	sw	sp, a3, 8
	sw	sp, a4, 12
	sw	sp, a0, 16
	bne	a0, a5, 8
	jal	zero, 40
	lw	a5, a4, 0
	addi	a0, a5, 0
	addi	a21, a3, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a0, zero, 1
	lw	a1, sp, 16
	bne	a1, a0, 8
	jal	zero, 60
	lw	a0, sp, 12
	lw	a2, a0, 4
	lw	a3, sp, 4
	lw	a4, sp, 0
	lw	a21, sp, 8
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a0, zero, 2
	lw	a1, sp, 16
	bne	a1, a0, 8
	jal	zero, 60
	lw	a0, sp, 12
	lw	a2, a0, 8
	lw	a3, sp, 4
	lw	a4, sp, 0
	lw	a21, sp, 8
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a0, zero, 3
	lw	a1, sp, 16
	bne	a1, a0, 8
	jal	zero, 60
	lw	a0, sp, 12
	lw	a2, a0, 12
	lw	a3, sp, 4
	lw	a4, sp, 0
	lw	a21, sp, 8
	addi	a1, a3, 0
	addi	a0, a2, 0
	addi	a2, a4, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a0, zero, 4
	lw	a1, sp, 16
	bne	a1, a0, 8
	jalr	zero, ra, 0
	lw	a0, sp, 12
	lw	a0, a0, 16
	lw	a1, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	sw	sp, a3, 0
	sw	sp, a2, 4
	sw	sp, a4, 8
	sw	sp, a1, 12
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -24428
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -24428
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 16
	sw	sp, a0, 24
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -24524
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 16
	sw	sp, a0, 28
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -24532
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 12
	slli	a2, a1, 2
	lw	a3, sp, 20
	add	t0, a3, a2
	lw	a2, t0, 0
	lw	a3, sp, 8
	sw	sp, a0, 32
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -25892
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 16
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -24596
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 12
	slli	a2, a1, 2
	lw	a3, sp, 24
	add	t0, a3, a2
	lw	a2, t0, 0
	slli	a3, a1, 2
	lw	a4, sp, 28
	add	t0, a4, a3
	lw	a3, t0, 0
	lw	a21, sp, 4
	addi	a1, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 12
	slli	a0, a0, 2
	lw	a1, sp, 32
	add	t0, a1, a0
	lw	a1, t0, 0
	lw	a0, sp, 0
	lw	a2, sp, 8
	jal	zero, -25056
	lw	a5, a21, 8
	lw	a6, a21, 4
	slli	a7, a0, 2
	add	t0, a1, a7
	lw	a1, t0, 0
	sw	sp, a5, 0
	sw	sp, a6, 4
	sw	sp, a4, 8
	sw	sp, a3, 12
	sw	sp, a2, 16
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -24776
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	addi	a2, a1, -1
	slli	a2, a2, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	lw	a2, t0, 0
	sw	sp, a0, 24
	addi	a0, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -24828
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	lw	a2, t0, 0
	sw	sp, a0, 28
	addi	a0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -24876
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 20
	addi	a2, a1, 1
	slli	a2, a2, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	lw	a2, t0, 0
	sw	sp, a0, 32
	addi	a0, a2, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, -24928
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 20
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	lw	a2, t0, 0
	sw	sp, a0, 36
	addi	a0, a2, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -24976
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 24
	add	t0, a3, a2
	lw	a2, t0, 0
	lw	a3, sp, 4
	sw	sp, a0, 40
	addi	a1, a2, 0
	addi	a0, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -26344
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8
	slli	a1, a0, 2
	lw	a2, sp, 28
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, sp, 4
	addi	a0, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -25564
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8
	slli	a1, a0, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, sp, 4
	addi	a0, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -25612
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8
	slli	a1, a0, 2
	lw	a2, sp, 36
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, sp, 4
	addi	a0, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -25660
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8
	slli	a1, a0, 2
	lw	a2, sp, 40
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, sp, 4
	addi	a0, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -25708
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 20
	slli	a0, a0, 2
	lw	a1, sp, 16
	add	t0, a1, a0
	lw	a0, t0, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -25272
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 8
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a1, t0, 0
	lw	a0, sp, 0
	lw	a2, sp, 4
	jal	zero, -25640
	lw	a2, a21, 4
	addi	a3, zero, 4
	blt	a3, a1, 176
	sw	sp, a21, 0
	sw	sp, a2, 4
	sw	sp, a0, 8
	sw	sp, a1, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -25364
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	lw	a2, sp, 12
	slli	a3, a2, 2
	add	t0, a0, a3
	lw	a0, t0, 0
	blt	a0, a1, 112
	lw	a0, sp, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -25404
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a0, t0, 0
	addi	a2, zero, 0
	bne	a0, a2, 8
	jal	zero, 36
	lw	a0, sp, 8
	lw	a21, sp, 4
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12
	addi	a1, a0, 1
	lw	a0, sp, 8
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	lw	a3, a2, 4
	addi	a4, a1, 1
	blt	a4, a3, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a3, zero, 0
	blt	a3, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a1, a2, 0
	addi	a2, a0, 1
	blt	a2, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a1, zero, 0
	blt	a1, a0, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	sw	sp, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -25612
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	slli	a1, a1, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	jalr	zero, ra, 0
	slli	a5, a0, 2
	add	t0, a2, a5
	lw	a5, t0, 0
	sw	sp, a2, 0
	sw	sp, a3, 4
	sw	sp, a4, 8
	sw	sp, a1, 12
	sw	sp, a0, 16
	addi	a1, a4, 0
	addi	a0, a5, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -92
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	lw	a2, t0, 0
	lw	a3, sp, 8
	sw	sp, a0, 20
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -148
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	bne	a0, a1, 220
	lw	a0, sp, 16
	slli	a2, a0, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	lw	a2, t0, 0
	lw	a3, sp, 8
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -208
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	bne	a0, a1, 152
	lw	a0, sp, 16
	addi	a2, a0, -1
	slli	a2, a2, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	lw	a2, t0, 0
	lw	a4, sp, 8
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -272
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	bne	a0, a1, 80
	lw	a0, sp, 16
	addi	a0, a0, 1
	slli	a0, a0, 2
	lw	a2, sp, 0
	add	t0, a2, a0
	lw	a0, t0, 0
	lw	a2, sp, 8
	addi	a1, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -332
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a6, a21, 8
	lw	a7, a21, 4
	slli	a8, a0, 2
	add	t0, a3, a8
	lw	a8, t0, 0
	addi	a9, zero, 4
	blt	a9, a5, 312
	addi	a9, zero, 0
	sw	sp, a1, 0
	sw	sp, a21, 4
	sw	sp, a7, 8
	sw	sp, a8, 12
	sw	sp, a6, 16
	sw	sp, a5, 20
	sw	sp, a4, 24
	sw	sp, a3, 28
	sw	sp, a2, 32
	sw	sp, a0, 36
	sw	sp, a9, 40
	addi	a1, a5, 0
	addi	a0, a8, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -484
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40
	blt	a0, a1, 224
	lw	a0, sp, 36
	lw	a1, sp, 32
	lw	a2, sp, 28
	lw	a3, sp, 24
	lw	a4, sp, 20
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -488
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	bne	a0, a1, 40
	lw	a0, sp, 36
	slli	a0, a0, 2
	lw	a1, sp, 28
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a1, sp, 20
	lw	a21, sp, 16
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a0, sp, 12
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -26192
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a4, sp, 20
	slli	a1, a4, 2
	add	t0, a0, a1
	lw	a0, t0, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 48
	lw	a0, sp, 36
	lw	a1, sp, 32
	lw	a2, sp, 28
	lw	a3, sp, 24
	lw	a21, sp, 8
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 20
	addi	a5, a0, 1
	lw	a0, sp, 36
	lw	a1, sp, 0
	lw	a2, sp, 32
	lw	a3, sp, 28
	lw	a4, sp, 24
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a0, a21, 4
	addi	a1, zero, 80
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14180
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 48
	addi	a0, a0, 3
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14152
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 10
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14128
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	lw	a1, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14380
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14072
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	lw	a0, a0, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14328
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14020
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 255
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 14280
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 10
	jal	zero, 13980
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 11816
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, zero, 255
	blt	a1, a0, 24
	addi	a1, zero, 0
	blt	a0, a1, 8
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 255
	jal	zero, 14208
	lw	a0, a21, 4
	flw	fa0, a0, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -76
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 13876
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa0, a0, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -128
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 13824
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa0, a0, 8
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -180
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 10
	jal	zero, 13780
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	addi	a5, zero, 4
	blt	a5, a1, 408
	sw	sp, a21, 0
	sw	sp, a2, 4
	sw	sp, a3, 8
	sw	sp, a4, 12
	sw	sp, a1, 16
	sw	sp, a0, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -1212
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	blt	a0, a1, 352
	lw	a0, sp, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -26836
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 16
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a0, t0, 0
	addi	a2, zero, 0
	bne	a0, a2, 8
	jal	zero, 276
	lw	a0, sp, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -26864
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 12
	sw	sp, a0, 24
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -28232
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -26896
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20
	sw	sp, a0, 28
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -26992
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24
	slli	a1, a1, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, sp, 16
	slli	a3, a2, 2
	lw	a4, sp, 28
	add	t0, a4, a3
	lw	a3, t0, 0
	slli	a4, a2, 2
	add	t0, a0, a4
	lw	a0, t0, 0
	lw	a21, sp, 4
	addi	a2, a0, 0
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 20
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -27076
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 16
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a0, t0, 0
	lw	a2, sp, 12
	addi	a1, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -28432
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16
	addi	a1, a0, 1
	lw	a0, sp, 20
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
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
	addi	a12, zero, 0
	blt	a1, a12, 608
	flw	fa3, a7, 0
	lw	a7, a11, 0
	sub	a7, a1, a7
	sw	sp, a21, 0
	sw	sp, a10, 4
	sw	sp, a2, 8
	sw	sp, a4, 12
	sw	sp, a0, 16
	sw	sp, a1, 20
	sw	sp, a3, 24
	sw	sp, a5, 28
	sw	sp, a8, 32
	fsw	sp, fa2, 40
	fsw	sp, fa1, 48
	sw	sp, a9, 56
	fsw	sp, fa0, 64
	sw	sp, a6, 72
	fsw	sp, fa3, 80
	addi	a0, a7, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 11076
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 72
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	flw	fa2, sp, 64
	fadd.s	fa1, fa1, fa2, rne
	lw	a1, sp, 56
	fsw	a1, fa1, 0
	flw	fa1, a0, 4
	fmul.s	fa1, fa0, fa1, rne
	flw	fa3, sp, 48
	fadd.s	fa1, fa1, fa3, rne
	fsw	a1, fa1, 4
	flw	fa1, a0, 8
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 40
	fadd.s	fa0, fa0, fa1, rne
	fsw	a1, fa0, 8
	addi	a0, zero, 0
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -28324
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 32
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -28756
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 28
	lw	a1, sp, 24
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -28768
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a0, zero, 0
	lui	a1, 0
	addi	a1, a1, 124
	flw	fa0, a1, 0
	lw	a1, sp, 20
	slli	a2, a1, 2
	lw	a3, sp, 16
	add	t0, a3, a2
	lw	a2, t0, 0
	lui	a4, 0
	addi	a4, a4, 128
	flw	fa1, a4, 0
	lw	a4, sp, 56
	lw	a21, sp, 12
	addi	a1, a4, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a0, a1, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -27624
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 32
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -28920
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, sp, 8
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -27640
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 4
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20
	addi	a0, a0, -1
	addi	a1, zero, 1
	lw	a2, sp, 8
	sw	sp, a0, 88
	addi	a0, a2, 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, -29148
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a2, a0, 0
	flw	fa0, sp, 64
	flw	fa1, sp, 48
	flw	fa2, sp, 40
	lw	a0, sp, 16
	lw	a1, sp, 88
	lw	a21, sp, 0
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
	sw	sp, a2, 0
	sw	sp, a0, 4
	sw	sp, a6, 8
	sw	sp, a7, 12
	sw	sp, a3, 16
	sw	sp, a4, 20
	fsw	sp, fa0, 24
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 10476
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 20
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	lw	a1, sp, 16
	flw	fa2, a1, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a0, 4
	fmul.s	fa2, fa0, fa2, rne
	flw	fa3, a1, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a0, 8
	fmul.s	fa0, fa0, fa3, rne
	flw	fa3, a1, 8
	fadd.s	fa0, fa0, fa3, rne
	lw	a0, sp, 12
	lw	a0, a0, 0
	addi	a1, a0, -1
	lw	a0, sp, 4
	lw	a2, sp, 0
	lw	a21, sp, 8
	fsgnj.s	fa26, fa2, fa2
	fsgnj.s	fa2, fa0, fa0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa26, fa26
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a5, a21, 24
	lw	a6, a21, 20
	lw	a7, a21, 16
	lw	a8, a21, 12
	lw	a9, a21, 8
	lw	a10, a21, 4
	lw	a9, a9, 0
	blt	a0, a9, 8
	jalr	zero, ra, 0
	slli	a9, a0, 2
	add	t0, a3, a9
	lw	a9, t0, 0
	sw	sp, a21, 0
	sw	sp, a5, 4
	sw	sp, a2, 8
	sw	sp, a6, 12
	sw	sp, a10, 16
	sw	sp, a3, 20
	sw	sp, a4, 24
	sw	sp, a1, 28
	sw	sp, a0, 32
	sw	sp, a8, 36
	sw	sp, a7, 40
	addi	a0, a9, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -28160
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, a0, 0
	lw	a0, sp, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -29460
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 32
	lw	a1, sp, 28
	lw	a2, sp, 24
	lw	a21, sp, 36
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 32
	slli	a1, a0, 2
	lw	a2, sp, 20
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a21, sp, 16
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	jal	zero, 56
	addi	a5, zero, 0
	lw	a0, sp, 32
	lw	a1, sp, 28
	lw	a2, sp, 8
	lw	a3, sp, 20
	lw	a4, sp, 24
	lw	a21, sp, 12
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a21, sp, 4
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 32
	addi	a0, a0, 1
	lw	a1, sp, 28
	lw	a2, sp, 8
	lw	a3, sp, 20
	lw	a4, sp, 24
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a5, a21, 12
	lw	a6, a21, 8
	lw	a7, a21, 4
	lw	a8, a7, 4
	blt	a0, a8, 8
	jalr	zero, ra, 0
	lw	a7, a7, 4
	addi	a7, a7, -1
	sw	sp, a21, 0
	sw	sp, a4, 4
	sw	sp, a3, 8
	sw	sp, a2, 12
	sw	sp, a1, 16
	sw	sp, a0, 20
	sw	sp, a5, 24
	blt	a0, a7, 8
	jal	zero, 48
	addi	a7, a0, 1
	addi	a2, a4, 0
	addi	a1, a7, 0
	addi	a0, a3, 0
	addi	a21, a6, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a0, zero, 0
	lw	a1, sp, 20
	lw	a2, sp, 16
	lw	a3, sp, 12
	lw	a4, sp, 8
	lw	a21, sp, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20
	addi	a0, a0, 1
	addi	a1, zero, 2
	lw	a2, sp, 4
	sw	sp, a0, 28
	addi	a0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -29964
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a4, a0, 0
	lw	a0, sp, 28
	lw	a1, sp, 12
	lw	a2, sp, 8
	lw	a3, sp, 16
	lw	a21, sp, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	jalr	zero, ra, 0
	addi	a0, zero, 3
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 11888
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, a0, 0
	addi	a0, zero, 5
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 11832
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 11816
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 4
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 11772
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 8
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 11728
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 12
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 11684
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 16
	addi	a0, a1, 0
	jalr	zero, ra, 0
	addi	a0, zero, 3
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 11632
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, -304
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 4
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 11540
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 8
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 11500
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -408
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -432
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 20
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 11412
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -496
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 24
	sw	a1, a0, 24
	lw	a0, sp, 20
	sw	a1, a0, 20
	lw	a0, sp, 16
	sw	a1, a0, 16
	lw	a0, sp, 12
	sw	a1, a0, 12
	lw	a0, sp, 8
	sw	a1, a0, 8
	lw	a0, sp, 4
	sw	a1, a0, 4
	lw	a0, sp, 0
	sw	a1, a0, 0
	addi	a0, a1, 0
	jalr	zero, ra, 0
	addi	a2, zero, 0
	blt	a1, a2, 64
	sw	sp, a0, 0
	sw	sp, a1, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -352
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	slli	a2, a1, 2
	lw	a3, sp, 0
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	addi	a0, a3, 0
	jal	zero, -64
	jalr	zero, ra, 0
	lw	a0, a21, 4
	lw	a1, a0, 0
	sw	sp, a0, 0
	sw	sp, a1, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -424
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, a0, 0
	lw	a0, sp, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 11176
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 0
	lw	a1, a1, 0
	addi	a1, a1, -2
	jal	zero, -148
	fsw	sp, fa0, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 9540
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 0
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 10000
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8
	fdiv.s	fa0, fa1, fa0, rne
	jalr	zero, ra, 0
	fmul.s	fa0, fa0, fa0, rne
	lui	a0, 0
	addi	a0, a0, 24
	flw	fa2, a0, 0
	fadd.s	fa0, fa0, fa2, rne
	fsw	sp, fa1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 8860
	addi	sp, sp, -12
	lw	ra, sp, 8
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa1, a0, 0
	fdiv.s	fa1, fa1, fa0, rne
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 10620
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 0
	fmul.s	fa0, fa0, fa1, rne
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -172
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8
	fmul.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	lw	a3, a21, 4
	addi	a4, zero, 5
	blt	a0, a4, 924
	sw	sp, a2, 0
	sw	sp, a3, 4
	sw	sp, a1, 8
	fsw	sp, fa0, 16
	fsw	sp, fa1, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 8700
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 8668
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fadd.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa1, a0, 0
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 8648
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 16
	fdiv.s	fa1, fa1, fa0, rne
	flw	fa2, sp, 24
	fdiv.s	fa2, fa2, fa0, rne
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa3, a0, 0
	fdiv.s	fa0, fa3, fa0, rne
	lw	a0, sp, 8
	slli	a0, a0, 2
	lw	a1, sp, 4
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a1, sp, 0
	slli	a2, a1, 2
	add	t0, a0, a2
	lw	a2, t0, 0
	sw	sp, a0, 40
	fsw	sp, fa0, 48
	fsw	sp, fa2, 56
	fsw	sp, fa1, 64
	addi	a0, a2, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -29760
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa0, sp, 64
	flw	fa1, sp, 56
	flw	fa2, sp, 48
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -31192
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 0
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, sp, 40
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a0, a1, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -29840
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa0, sp, 56
	sw	sp, a0, 72
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, 8424
	addi	sp, sp, -80
	lw	ra, sp, 76
	fsgnj.s	fa2, fa0, fa0
	flw	fa0, sp, 64
	flw	fa1, sp, 48
	lw	a0, sp, 72
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -31304
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 0
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, sp, 40
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a0, a1, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -29952
	addi	sp, sp, -80
	lw	ra, sp, 76
	flw	fa0, sp, 64
	sw	sp, a0, 76
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 8312
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56
	fsw	sp, fa0, 80
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 8280
	addi	sp, sp, -92
	lw	ra, sp, 88
	fsgnj.s	fa2, fa0, fa0
	flw	fa0, sp, 48
	flw	fa1, sp, 80
	lw	a0, sp, 76
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -31448
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 0
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, sp, 40
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a0, a1, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -30096
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa0, sp, 64
	sw	sp, a0, 88
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 8168
	addi	sp, sp, -96
	lw	ra, sp, 92
	flw	fa1, sp, 56
	fsw	sp, fa0, 96
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 8136
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 48
	fsw	sp, fa0, 104
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 8104
	addi	sp, sp, -116
	lw	ra, sp, 112
	fsgnj.s	fa2, fa0, fa0
	flw	fa0, sp, 96
	flw	fa1, sp, 104
	lw	a0, sp, 88
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -31624
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a0, sp, 0
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, sp, 40
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a0, a1, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -30272
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa0, sp, 64
	sw	sp, a0, 112
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 7992
	addi	sp, sp, -120
	lw	ra, sp, 116
	flw	fa1, sp, 48
	fsw	sp, fa0, 120
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 7960
	addi	sp, sp, -132
	lw	ra, sp, 128
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 120
	flw	fa2, sp, 56
	lw	a0, sp, 112
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, -31768
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 0
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, sp, 40
	add	t0, a1, a0
	lw	a0, t0, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, -30412
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa0, sp, 48
	sw	sp, a0, 128
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	ra, 7852
	addi	sp, sp, -136
	lw	ra, sp, 132
	flw	fa1, sp, 64
	flw	fa2, sp, 56
	lw	a0, sp, 128
	jal	zero, -31864
	fsw	sp, fa2, 136
	sw	sp, a2, 0
	sw	sp, a1, 8
	sw	sp, a21, 144
	fsw	sp, fa3, 152
	sw	sp, a0, 160
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, -1100
	addi	sp, sp, -168
	lw	ra, sp, 164
	lw	a0, sp, 160
	addi	a0, a0, 1
	flw	fa1, sp, 152
	fsw	sp, fa0, 168
	sw	sp, a0, 176
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	ra, -1140
	addi	sp, sp, -184
	lw	ra, sp, 180
	fsgnj.s	fa1, fa0, fa0
	flw	fa0, sp, 168
	flw	fa2, sp, 136
	flw	fa3, sp, 152
	lw	a0, sp, 176
	lw	a1, sp, 8
	lw	a2, sp, 0
	lw	a21, sp, 144
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 352
	sw	sp, a21, 0
	sw	sp, a0, 4
	fsw	sp, fa0, 8
	sw	sp, a2, 16
	sw	sp, a1, 20
	sw	sp, a3, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 7684
	addi	sp, sp, -32
	lw	ra, sp, 28
	lui	a0, 0
	addi	a0, a0, 12
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 8
	flw	fa1, a0, 0
	fsub.s	fa2, fa0, fa1, rne
	addi	a0, zero, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa1, a1, 0
	flw	fa3, sp, 8
	lw	a1, sp, 20
	lw	a2, sp, 16
	lw	a21, sp, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 7560
	addi	sp, sp, -32
	lw	ra, sp, 28
	lui	a0, 0
	addi	a0, a0, 12
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 24
	flw	fa1, a0, 0
	fadd.s	fa2, fa0, fa1, rne
	addi	a0, zero, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa1, a1, 0
	lw	a1, sp, 16
	addi	a2, a1, 2
	flw	fa3, sp, 8
	lw	a3, sp, 20
	lw	a21, sp, 24
	addi	a1, a3, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 4
	addi	a0, a0, -1
	addi	a1, zero, 1
	lw	a2, sp, 20
	sw	sp, a0, 28
	addi	a0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -32344
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, a0, 0
	flw	fa0, sp, 8
	lw	a0, sp, 28
	lw	a2, sp, 16
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 188
	sw	sp, a21, 0
	sw	sp, a0, 4
	sw	sp, a2, 8
	sw	sp, a1, 12
	sw	sp, a3, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 7324
	addi	sp, sp, -24
	lw	ra, sp, 20
	lui	a0, 0
	addi	a0, a0, 12
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 8
	flw	fa1, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	addi	a0, zero, 4
	lw	a1, sp, 12
	lw	a2, sp, 8
	lw	a21, sp, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4
	addi	a0, a0, -1
	addi	a1, zero, 2
	lw	a2, sp, 12
	sw	sp, a0, 20
	addi	a0, a2, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -32544
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	lw	a0, sp, 8
	addi	a2, a0, 4
	lw	a0, sp, 20
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a0, a21, 4
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 9316
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, a0, 0
	lw	a0, sp, 0
	lw	a0, a0, 0
	sw	sp, a1, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 9252
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 4
	sw	a1, a0, 0
	addi	a0, a1, 0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	addi	a3, zero, 0
	blt	a1, a3, 84
	sw	sp, a21, 0
	sw	sp, a0, 4
	sw	sp, a1, 8
	addi	a21, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a21, sp, 0
	addi	a0, a3, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a1, a21, 12
	lw	a2, a21, 8
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 172
	addi	a4, zero, 120
	sw	sp, a21, 0
	sw	sp, a2, 4
	sw	sp, a1, 8
	sw	sp, a0, 12
	sw	sp, a4, 16
	addi	a21, a3, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, a0, 0
	lw	a0, sp, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 9028
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12
	slli	a2, a1, 2
	lw	a3, sp, 8
	add	t0, a3, a2
	sw	t0, a0, 0
	slli	a0, a1, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	addi	a2, zero, 118
	lw	a21, sp, 4
	addi	a1, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12
	addi	a0, a0, -1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	addi	a3, zero, 0
	blt	a1, a3, 84
	slli	a3, a1, 2
	add	t0, a0, a3
	lw	a3, t0, 0
	sw	sp, a0, 0
	sw	sp, a21, 4
	sw	sp, a1, 8
	addi	a0, a3, 0
	addi	a21, a2, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8
	addi	a1, a0, -1
	lw	a0, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a1, a21, 8
	lw	a2, a21, 4
	addi	a3, zero, 0
	blt	a0, a3, 84
	slli	a3, a0, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	addi	a3, zero, 119
	sw	sp, a21, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	addi	a21, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	addi	a0, a0, -1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a0, a21, 12
	lw	a1, a21, 8
	lw	a2, a21, 4
	addi	a3, zero, 4
	sw	sp, a0, 0
	sw	sp, a2, 4
	addi	a0, a3, 0
	addi	a21, a1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a0, zero, 9
	addi	a1, zero, 0
	addi	a2, zero, 0
	lw	a21, sp, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a0, zero, 4
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a21, a21, 4
	sw	sp, a3, 0
	sw	sp, a0, 4
	sw	sp, a1, 8
	fsw	sp, fa0, 16
	sw	sp, a2, 24
	fsw	sp, fa3, 32
	fsw	sp, fa2, 40
	fsw	sp, fa1, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, a0, 56
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -31952
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa0, sp, 48
	flw	fa1, sp, 40
	flw	fa2, sp, 32
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -33384
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
	lw	a21, sp, 24
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 16
	fsw	a0, fa0, 8
	lw	a1, sp, 56
	sw	a0, a1, 4
	lw	a1, sp, 8
	sw	a0, a1, 0
	lw	a1, sp, 4
	slli	a1, a1, 2
	lw	a2, sp, 0
	add	t0, a2, a1
	sw	t0, a0, 0
	jalr	zero, ra, 0
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	addi	a5, zero, 4
	mul	a0, a0, a5
	lw	a5, a2, 0
	lui	a6, 0
	addi	a6, a6, 124
	flw	fa0, a6, 0
	sw	sp, a2, 0
	sw	sp, a5, 4
	sw	sp, a4, 8
	sw	sp, a0, 12
	sw	sp, a3, 16
	fsw	sp, fa0, 24
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -32340
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 16
	flw	fa1, a0, 0
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 6092
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 16
	flw	fa1, a0, 4
	fsw	sp, fa0, 40
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 6056
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 16
	flw	fa1, a0, 8
	fsw	sp, fa0, 48
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 6020
	addi	sp, sp, -60
	lw	ra, sp, 56
	fsgnj.s	fa3, fa0, fa0
	lw	a0, sp, 12
	addi	a1, a0, 1
	lw	a2, sp, 16
	flw	fa1, a2, 0
	flw	fa0, sp, 32
	flw	fa2, sp, 48
	lw	a3, sp, 4
	lw	a21, sp, 8
	fsw	sp, fa3, 56
	addi	a0, a3, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 4
	addi	a1, a0, 1
	lw	a2, sp, 12
	addi	a3, a2, 2
	lw	a4, sp, 16
	flw	fa2, a4, 4
	flw	fa0, sp, 32
	flw	fa1, sp, 40
	flw	fa3, sp, 56
	lw	a21, sp, 8
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 4
	addi	a1, a0, 2
	lw	a2, sp, 12
	addi	a2, a2, 3
	lw	a3, sp, 16
	flw	fa3, a3, 8
	flw	fa0, sp, 32
	flw	fa1, sp, 40
	flw	fa2, sp, 48
	lw	a21, sp, 8
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 4
	addi	a0, a0, 3
	lw	a1, sp, 0
	sw	a1, a0, 0
	jalr	zero, ra, 0
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	addi	a5, zero, 4
	mul	a0, a0, a5
	addi	a0, a0, 1
	lw	a5, a2, 0
	lui	a6, 0
	addi	a6, a6, 124
	flw	fa0, a6, 0
	sw	sp, a2, 0
	sw	sp, a0, 4
	sw	sp, a5, 8
	sw	sp, a4, 12
	sw	sp, a3, 16
	sw	sp, a1, 20
	fsw	sp, fa0, 24
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, -32780
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 20
	fsw	sp, fa0, 32
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -32860
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, a0, 0
	lw	a0, sp, 16
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -33332
	addi	sp, sp, -44
	lw	ra, sp, 40
	lui	a0, 0
	addi	a0, a0, 104
	flw	fa1, a0, 0
	lw	a0, sp, 20
	fsw	sp, fa0, 40
	fsw	sp, fa1, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -32968
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 40
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 16
	flw	fa2, a0, 0
	fsub.s	fa0, fa0, fa2, rne
	lui	a1, 0
	addi	a1, a1, 104
	flw	fa2, a1, 0
	lw	a1, sp, 20
	fsw	sp, fa0, 56
	fsw	sp, fa2, 64
	addi	a0, a1, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -33032
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 40
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 16
	flw	fa2, a0, 4
	fsub.s	fa0, fa0, fa2, rne
	lui	a1, 0
	addi	a1, a1, 104
	flw	fa2, a1, 0
	lw	a1, sp, 20
	fsw	sp, fa0, 72
	fsw	sp, fa2, 80
	addi	a0, a1, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, -33096
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 40
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 16
	flw	fa1, a0, 8
	fsub.s	fa3, fa0, fa1, rne
	flw	fa0, sp, 32
	flw	fa1, sp, 56
	flw	fa2, sp, 72
	lw	a0, sp, 8
	lw	a1, sp, 4
	lw	a21, sp, 12
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 8
	addi	a0, a0, 1
	lw	a1, sp, 0
	sw	a1, a0, 0
	jalr	zero, ra, 0
	lw	a1, a21, 12
	lw	a2, a21, 8
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 220
	slli	a4, a0, 2
	add	t0, a3, a4
	lw	a3, t0, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, a2, 8
	sw	sp, a3, 12
	addi	a0, a3, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -33312
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 2
	bne	a0, a1, 156
	lw	a0, sp, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -33240
	addi	sp, sp, -20
	lw	ra, sp, 16
	lui	a0, 0
	addi	a0, a0, 124
	flw	fa1, a0, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 5124
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lw	a0, sp, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -33420
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 1
	bne	a0, a1, 24
	lw	a0, sp, 4
	lw	a1, sp, 12
	lw	a21, sp, 8
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a1, zero, 2
	bne	a0, a1, 24
	lw	a0, sp, 4
	lw	a1, sp, 12
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 56
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
	sw	a13, a0, 0
	sw	a13, a1, 4
	addi	a13, zero, 2
	div	a13, a0, a13
	sw	a14, a13, 0
	addi	a13, zero, 2
	div	a1, a1, a13
	sw	a14, a1, 4
	lui	a1, 0
	addi	a1, a1, 4
	flw	fa0, a1, 0
	sw	sp, a6, 0
	sw	sp, a8, 4
	sw	sp, a3, 8
	sw	sp, a9, 12
	sw	sp, a4, 16
	sw	sp, a11, 20
	sw	sp, a10, 24
	sw	sp, a12, 28
	sw	sp, a2, 32
	sw	sp, a7, 36
	sw	sp, a15, 40
	sw	sp, a5, 44
	fsw	sp, fa0, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 4964
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fdiv.s	fa0, fa1, fa0, rne
	lw	a0, sp, 44
	fsw	a0, fa0, 0
	lw	a21, sp, 40
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a21, sp, 40
	sw	sp, a0, 56
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a21, sp, 40
	sw	sp, a0, 60
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a21, sp, 36
	sw	sp, a0, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a21, sp, 32
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a21, sp, 28
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 24
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -33584
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 20
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, -34960
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 24
	lw	a21, sp, 16
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 12
	lw	a0, a0, 0
	addi	a0, a0, -1
	lw	a21, sp, 8
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	addi	a2, zero, 0
	lw	a0, sp, 60
	lw	a21, sp, 4
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a0, zero, 0
	addi	a4, zero, 2
	lw	a1, sp, 56
	lw	a2, sp, 60
	lw	a3, sp, 64
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 1
	addi	a1, zero, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 6708
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 6692
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, 60
	addi	a2, zero, 0
	addi	a3, zero, 0
	addi	a4, zero, 0
	addi	a5, zero, 0
	addi	a6, zero, 0
	addi	a7, hp, 0
	addi	hp, hp, 44
	sw	a7, a0, 40
	sw	a7, a0, 36
	sw	a7, a0, 32
	sw	a7, a0, 28
	sw	a7, a6, 24
	sw	a7, a0, 20
	sw	a7, a0, 16
	sw	a7, a5, 12
	sw	a7, a4, 8
	sw	a7, a3, 4
	sw	a7, a2, 0
	addi	a0, a7, 0
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 6552
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 4
	addi	a0, a1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 6536
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 8
	addi	a0, a1, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 6492
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 12
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 6448
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	sw	sp, a0, 16
	addi	a0, a1, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 6404
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 50
	addi	a2, zero, 1
	addi	a3, zero, 1
	sub	a3, zero, a3
	sw	sp, a0, 20
	sw	sp, a1, 24
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 6324
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, a0, 0
	lw	a0, sp, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 6296
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 1
	addi	a2, zero, 1
	lw	a3, a0, 0
	sw	sp, a0, 28
	sw	sp, a1, 32
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 6248
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, a0, 0
	lw	a0, sp, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 6220
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 36
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 6204
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 40
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 6136
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 88
	flw	fa0, a2, 0
	sw	sp, a0, 44
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 6120
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 48
	addi	a0, a1, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 6076
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 52
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 6008
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 56
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 5992
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 60
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 5948
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 64
	addi	a0, a1, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 5904
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 68
	addi	a0, a1, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 5860
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 2
	addi	a2, zero, 0
	sw	sp, a0, 72
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, 5792
	addi	sp, sp, -80
	lw	ra, sp, 76
	addi	a1, zero, 2
	addi	a2, zero, 0
	sw	sp, a0, 76
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 5752
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 80
	addi	a0, a1, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, 5736
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 84
	addi	a0, a1, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 5692
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 88
	addi	a0, a1, 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 5648
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 92
	addi	a0, a1, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 5604
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 96
	addi	a0, a1, 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	ra, 5560
	addi	sp, sp, -104
	lw	ra, sp, 100
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 100
	addi	a0, a1, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 5516
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 104
	addi	a0, a1, 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	ra, 5472
	addi	sp, sp, -112
	lw	ra, sp, 108
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 108
	addi	a0, a1, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 5428
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, a0, 0
	addi	a0, zero, 0
	sw	sp, a1, 112
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 5368
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, zero, 0
	addi	a2, hp, 0
	addi	hp, hp, 8
	sw	a2, a0, 4
	lw	a0, sp, 112
	sw	a2, a0, 0
	addi	a0, a2, 0
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 5308
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, a0, 0
	addi	a0, zero, 5
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 5280
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 116
	addi	a0, a1, 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 5264
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 120
	addi	a0, a1, 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, 5220
	addi	sp, sp, -128
	lw	ra, sp, 124
	addi	a1, zero, 60
	lw	a2, sp, 120
	sw	sp, a0, 124
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 5152
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 124
	sw	a1, a0, 0
	addi	a0, a1, 0
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 128
	flw	fa0, a2, 0
	sw	sp, a0, 128
	addi	a0, a1, 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	ra, 5112
	addi	sp, sp, -136
	lw	ra, sp, 132
	addi	a1, a0, 0
	addi	a0, zero, 0
	sw	sp, a1, 132
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 5052
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 132
	sw	a1, a0, 0
	addi	a0, a1, 0
	addi	a1, zero, 180
	addi	a2, zero, 0
	lui	a3, 0
	addi	a3, a3, 128
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
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 4952
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 136
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	ra, 4912
	addi	sp, sp, -144
	lw	ra, sp, 140
	addi	a1, hp, 0
	addi	hp, hp, 24
	lui	a2, 0
	addi	a2, a2, 1784
	sw	a1, a2, 0
	lw	a2, sp, 12
	sw	a1, a2, 20
	lw	a3, sp, 104
	sw	a1, a3, 16
	lw	a4, sp, 100
	sw	a1, a4, 12
	lw	a5, sp, 96
	sw	a1, a5, 8
	lw	a6, sp, 8
	sw	a1, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 12
	lui	a7, 4096
	addi	a7, a7, -1676
	sw	a6, a7, 0
	lw	a7, sp, 16
	sw	a6, a7, 8
	lw	a8, sp, 20
	sw	a6, a8, 4
	addi	a9, hp, 0
	addi	hp, hp, 8
	lui	a10, 4096
	addi	a10, a10, -324
	sw	a9, a10, 0
	lw	a10, sp, 4
	sw	a9, a10, 4
	addi	a11, hp, 0
	addi	hp, hp, 12
	lui	a12, 4096
	addi	a12, a12, 1216
	sw	a11, a12, 0
	sw	a11, a9, 8
	lw	a9, sp, 0
	sw	a11, a9, 4
	addi	a12, hp, 0
	addi	hp, hp, 8
	lui	a13, 4096
	addi	a13, a13, 1320
	sw	a12, a13, 0
	sw	a12, a11, 4
	addi	a11, hp, 0
	addi	hp, hp, 8
	lui	a13, 4096
	addi	a13, a13, 1576
	sw	a11, a13, 0
	lw	a13, sp, 28
	sw	a11, a13, 4
	addi	a14, hp, 0
	addi	hp, hp, 24
	lui	a15, 4096
	addi	a15, a15, 1676
	sw	a14, a15, 0
	sw	a14, a1, 20
	sw	a14, a6, 16
	sw	a14, a11, 12
	sw	a14, a12, 8
	lw	a1, sp, 36
	sw	a14, a1, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a11, 4096
	addi	a11, a11, 1864
	sw	a6, a11, 0
	lw	a11, sp, 40
	sw	a6, a11, 4
	addi	a12, hp, 0
	addi	hp, hp, 8
	lui	a15, 8192
	addi	a15, a15, -1696
	sw	a12, a15, 0
	sw	a12, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a15, 8192
	addi	a15, a15, -1456
	sw	a6, a15, 0
	sw	a6, a11, 4
	addi	a15, hp, 0
	addi	hp, hp, 8
	lui	a16, 8192
	addi	a16, a16, -336
	sw	a15, a16, 0
	sw	a15, a11, 4
	addi	a16, hp, 0
	addi	hp, hp, 20
	lui	a17, 8192
	addi	a17, a17, 156
	sw	a16, a17, 0
	sw	a16, a6, 16
	sw	a16, a15, 12
	sw	a16, a12, 8
	sw	a16, a10, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a12, 8192
	addi	a12, a12, 484
	sw	a6, a12, 0
	sw	a6, a11, 4
	addi	a12, hp, 0
	addi	hp, hp, 8
	lui	a15, 8192
	addi	a15, a15, 1516
	sw	a12, a15, 0
	sw	a12, a11, 4
	addi	a15, hp, 0
	addi	hp, hp, 8
	lui	a17, 8192
	addi	a17, a17, 1648
	sw	a15, a17, 0
	sw	a15, a11, 4
	addi	a17, hp, 0
	addi	hp, hp, 20
	lui	a18, 12288
	addi	a18, a18, -1980
	sw	a17, a18, 0
	sw	a17, a12, 16
	sw	a17, a15, 12
	sw	a17, a6, 8
	sw	a17, a10, 4
	addi	a12, hp, 0
	addi	hp, hp, 8
	lui	a15, 12288
	addi	a15, a15, -1568
	sw	a12, a15, 0
	sw	a12, a11, 4
	addi	a15, hp, 0
	addi	hp, hp, 8
	lui	a18, 12288
	addi	a18, a18, -1476
	sw	a15, a18, 0
	sw	a15, a11, 4
	addi	a18, hp, 0
	addi	hp, hp, 20
	lui	a19, 12288
	addi	a19, a19, -1108
	sw	a18, a19, 0
	sw	a18, a12, 16
	sw	a18, a15, 12
	sw	a18, a6, 8
	sw	a18, a10, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a12, 12288
	addi	a12, a12, 1376
	sw	a6, a12, 0
	sw	a6, a10, 4
	addi	a12, hp, 0
	addi	hp, hp, 12
	lui	a15, 12288
	addi	a15, a15, 1692
	sw	a12, a15, 0
	sw	a12, a9, 8
	sw	a12, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a15, 12288
	addi	a15, a15, 1716
	sw	a6, a15, 0
	sw	a6, a10, 4
	addi	a15, hp, 0
	addi	hp, hp, 16
	lui	a19, 16384
	addi	a19, a19, -1904
	sw	a15, a19, 0
	lw	a19, sp, 92
	sw	a15, a19, 12
	sw	a15, a6, 8
	sw	a15, a9, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a20, 16384
	addi	a20, a20, -884
	sw	a6, a20, 0
	sw	a6, a10, 4
	addi	a20, hp, 0
	addi	hp, hp, 32
	lui	a21, 16384
	addi	a21, a21, -736
	sw	a20, a21, 0
	sw	a20, a17, 28
	sw	a20, a11, 24
	sw	a20, a10, 20
	lw	a21, sp, 128
	sw	a20, a21, 16
	sw	a20, a7, 12
	sw	sp, a14, 140
	lw	a14, sp, 52
	sw	a20, a14, 8
	sw	a20, a6, 4
	sw	sp, a12, 144
	addi	a12, hp, 0
	addi	hp, hp, 12
	lui	a9, 16384
	addi	a9, a9, -272
	sw	a12, a9, 0
	sw	a12, a20, 8
	sw	a12, a13, 4
	addi	a9, hp, 0
	addi	hp, hp, 24
	lui	a20, 16384
	addi	a20, a20, -128
	sw	a9, a20, 0
	sw	a9, a17, 20
	sw	a9, a11, 16
	sw	a9, a12, 12
	sw	a9, a21, 8
	sw	a9, a14, 4
	addi	a12, hp, 0
	addi	hp, hp, 40
	lui	a17, 16384
	addi	a17, a17, 244
	sw	a12, a17, 0
	lw	a17, sp, 48
	sw	a12, a17, 36
	lw	a20, sp, 88
	sw	a12, a20, 32
	sw	a12, a11, 28
	sw	a12, a16, 24
	sw	a12, a10, 20
	lw	a21, sp, 44
	sw	a12, a21, 16
	sw	a12, a14, 12
	lw	a4, sp, 56
	sw	a12, a4, 8
	sw	a12, a6, 4
	addi	a3, hp, 0
	addi	hp, hp, 12
	lui	a5, 16384
	addi	a5, a5, 852
	sw	a3, a5, 0
	sw	a3, a12, 8
	sw	a3, a13, 4
	addi	a5, hp, 0
	addi	hp, hp, 24
	lui	a12, 16384
	addi	a12, a12, 984
	sw	a5, a12, 0
	sw	a5, a17, 20
	sw	a5, a20, 16
	sw	a5, a11, 12
	sw	a5, a16, 8
	sw	a5, a3, 4
	addi	a3, hp, 0
	addi	hp, hp, 16
	lui	a12, 16384
	addi	a12, a12, 1288
	sw	a3, a12, 0
	sw	a3, a5, 12
	sw	a3, a17, 8
	sw	a3, a1, 4
	addi	a5, hp, 0
	addi	hp, hp, 40
	lui	a12, 16384
	addi	a12, a12, 1448
	sw	a5, a12, 0
	sw	a5, a17, 36
	sw	a5, a19, 32
	sw	a5, a18, 28
	sw	a5, a11, 24
	sw	a5, a10, 20
	sw	a5, a21, 16
	sw	a5, a14, 12
	sw	a5, a4, 8
	sw	a5, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 12
	lui	a12, 20480
	addi	a12, a12, -2008
	sw	a6, a12, 0
	sw	a6, a5, 8
	sw	a6, a13, 4
	addi	a5, hp, 0
	addi	hp, hp, 20
	lui	a12, 20480
	addi	a12, a12, -1876
	sw	a5, a12, 0
	sw	a5, a17, 16
	sw	a5, a18, 12
	sw	a5, a11, 8
	sw	a5, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 16
	lui	a11, 20480
	addi	a11, a11, -1580
	sw	a6, a11, 0
	sw	a6, a5, 12
	sw	a6, a17, 8
	sw	a6, a1, 4
	addi	a5, hp, 0
	addi	hp, hp, 12
	lui	a11, 20480
	addi	a11, a11, -1420
	sw	a5, a11, 0
	lw	a11, sp, 60
	sw	a5, a11, 8
	sw	a5, a21, 4
	addi	a12, hp, 0
	addi	hp, hp, 8
	lui	a13, 20480
	addi	a13, a13, -1276
	sw	a12, a13, 0
	sw	a12, a11, 4
	addi	a13, hp, 0
	addi	hp, hp, 12
	lui	a16, 20480
	addi	a16, a16, -1100
	sw	a13, a16, 0
	sw	a13, a11, 8
	sw	a13, a14, 4
	addi	a16, hp, 0
	addi	hp, hp, 16
	lui	a18, 20480
	addi	a18, a18, -384
	sw	a16, a18, 0
	sw	a16, a13, 12
	sw	a16, a5, 8
	sw	a16, a12, 4
	addi	a5, hp, 0
	addi	hp, hp, 8
	lui	a12, 20480
	addi	a12, a12, -268
	sw	a5, a12, 0
	lw	a12, sp, 64
	sw	a5, a12, 4
	addi	a13, hp, 0
	addi	hp, hp, 12
	lui	a18, 20480
	addi	a18, a18, 1824
	sw	a13, a18, 0
	sw	a13, a12, 8
	lw	a18, sp, 72
	sw	a13, a18, 4
	addi	a19, hp, 0
	addi	hp, hp, 36
	lui	a2, 24576
	addi	a2, a2, -2048
	sw	a19, a2, 0
	sw	a19, a9, 32
	lw	a2, sp, 136
	sw	a19, a2, 28
	sw	a19, a1, 24
	sw	a19, a11, 20
	sw	a19, a6, 16
	sw	a19, a21, 12
	sw	a19, a4, 8
	sw	a19, a13, 4
	addi	a2, hp, 0
	addi	hp, hp, 84
	sw	sp, a6, 148
	lui	a6, 24576
	addi	a6, a6, -1516
	sw	a2, a6, 0
	sw	a2, a5, 80
	sw	a2, a19, 76
	sw	a2, a17, 72
	sw	a2, a12, 68
	sw	a2, a20, 64
	sw	a2, a9, 60
	sw	a2, a15, 56
	sw	a2, a18, 52
	sw	a2, a1, 48
	sw	a2, a10, 44
	sw	a2, a11, 40
	sw	a2, a0, 36
	sw	a2, a7, 32
	sw	a2, a3, 28
	sw	a2, a21, 24
	sw	a2, a14, 20
	sw	a2, a4, 16
	sw	a2, a16, 12
	sw	a2, a8, 8
	sw	a2, a13, 4
	addi	a3, hp, 0
	addi	hp, hp, 52
	lui	a6, 24576
	addi	a6, a6, 284
	sw	a3, a6, 0
	sw	a3, a5, 48
	sw	a3, a12, 44
	sw	a3, a9, 40
	sw	a3, a1, 36
	sw	a3, a10, 32
	sw	a3, a11, 28
	sw	a3, a7, 24
	lw	a1, sp, 148
	sw	a3, a1, 20
	sw	a3, a14, 16
	sw	a3, a4, 12
	sw	a3, a16, 8
	lw	a1, sp, 68
	sw	a3, a1, 4
	addi	a4, hp, 0
	addi	hp, hp, 8
	lui	a5, 24576
	addi	a5, a5, 760
	sw	a4, a5, 0
	sw	a4, a3, 4
	addi	a3, hp, 0
	addi	hp, hp, 12
	lui	a5, 24576
	addi	a5, a5, 1076
	sw	a3, a5, 0
	sw	a3, a15, 8
	sw	a3, a4, 4
	addi	a4, hp, 0
	addi	hp, hp, 12
	lui	a5, 24576
	addi	a5, a5, 1160
	sw	a4, a5, 0
	sw	a4, a3, 8
	lw	a5, sp, 116
	sw	a4, a5, 4
	addi	a6, hp, 0
	addi	hp, hp, 16
	lui	a8, 24576
	addi	a8, a8, 1496
	sw	a6, a8, 0
	sw	a6, a4, 12
	sw	a6, a18, 8
	sw	a6, a1, 4
	addi	a4, hp, 0
	addi	hp, hp, 12
	lui	a8, 24576
	addi	a8, a8, 1828
	sw	a4, a8, 0
	sw	a4, a18, 8
	sw	a4, a1, 4
	addi	a8, hp, 0
	addi	hp, hp, 8
	lui	a9, 28672
	addi	a9, a9, -1684
	sw	a8, a9, 0
	sw	a8, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 8
	lui	a9, 28672
	addi	a9, a9, -1496
	sw	a6, a9, 0
	lw	a9, sp, 76
	sw	a6, a9, 4
	addi	a11, hp, 0
	addi	hp, hp, 12
	lui	a12, 28672
	addi	a12, a12, -1020
	sw	a11, a12, 0
	sw	a11, a8, 8
	sw	a11, a4, 4
	addi	a4, hp, 0
	addi	hp, hp, 8
	lui	a12, 28672
	addi	a12, a12, -680
	sw	a4, a12, 0
	sw	a4, a9, 4
	addi	a12, hp, 0
	addi	hp, hp, 8
	lui	a13, 28672
	addi	a13, a13, -396
	sw	a12, a13, 0
	sw	a12, a18, 4
	addi	a13, hp, 0
	addi	hp, hp, 16
	lui	a14, 28672
	addi	a14, a14, -252
	sw	a13, a14, 0
	sw	a13, a3, 12
	sw	a13, a5, 8
	sw	a13, a1, 4
	addi	a1, hp, 0
	addi	hp, hp, 40
	lui	a3, 28672
	addi	a3, a3, 176
	sw	a1, a3, 0
	lw	a3, sp, 12
	sw	a1, a3, 36
	sw	a1, a2, 32
	sw	a1, a20, 28
	lw	a2, sp, 96
	sw	a1, a2, 24
	lw	a2, sp, 84
	sw	a1, a2, 20
	sw	a1, a18, 16
	lw	a3, sp, 108
	sw	a1, a3, 12
	sw	a1, a13, 8
	lw	a3, sp, 80
	sw	a1, a3, 4
	addi	a13, hp, 0
	addi	hp, hp, 28
	lui	a14, 28672
	addi	a14, a14, 828
	sw	a13, a14, 0
	lw	a14, sp, 104
	sw	a13, a14, 24
	lw	a14, sp, 100
	sw	a13, a14, 20
	sw	a13, a2, 16
	sw	a13, a1, 12
	sw	a13, a9, 8
	sw	a13, a3, 4
	addi	a1, hp, 0
	addi	hp, hp, 28
	lui	a14, 28672
	addi	a14, a14, 1028
	sw	a1, a14, 0
	sw	a1, a12, 24
	sw	a1, a11, 20
	sw	a1, a18, 16
	sw	a1, a6, 12
	sw	a1, a9, 8
	sw	a1, a8, 4
	addi	a6, hp, 0
	addi	hp, hp, 16
	lui	a8, 28672
	addi	a8, a8, 1400
	sw	a6, a8, 0
	sw	a6, a1, 12
	sw	a6, a13, 8
	sw	a6, a9, 4
	addi	a1, hp, 0
	addi	hp, hp, 8
	lui	a8, 32768
	addi	a8, a8, -1784
	sw	a1, a8, 0
	sw	a1, a9, 4
	addi	a8, hp, 0
	addi	hp, hp, 8
	lui	a11, 32768
	addi	a11, a11, -1508
	sw	a8, a11, 0
	sw	a8, a5, 4
	addi	a11, hp, 0
	addi	hp, hp, 8
	lui	a12, 32768
	addi	a12, a12, -444
	sw	a11, a12, 0
	sw	a11, a8, 4
	addi	a8, hp, 0
	addi	hp, hp, 8
	lui	a12, 32768
	addi	a12, a12, -80
	sw	a8, a12, 0
	sw	a8, a11, 4
	addi	a11, hp, 0
	addi	hp, hp, 8
	lui	a12, 32768
	addi	a12, a12, 120
	sw	a11, a12, 0
	lw	a12, sp, 0
	sw	a11, a12, 4
	addi	a14, hp, 0
	addi	hp, hp, 8
	lui	a15, 32768
	addi	a15, a15, 232
	sw	a14, a15, 0
	sw	a14, a11, 4
	addi	a15, hp, 0
	addi	hp, hp, 16
	lui	a16, 32768
	addi	a16, a16, 328
	sw	a15, a16, 0
	sw	a15, a5, 12
	sw	a15, a14, 8
	sw	a15, a11, 4
	addi	a14, hp, 0
	addi	hp, hp, 8
	lui	a16, 32768
	addi	a16, a16, 520
	sw	a14, a16, 0
	lw	a16, sp, 144
	sw	a14, a16, 4
	addi	a17, hp, 0
	addi	hp, hp, 12
	lui	a18, 32768
	addi	a18, a18, 616
	sw	a17, a18, 0
	sw	a17, a14, 8
	sw	a17, a5, 4
	addi	a5, hp, 0
	addi	hp, hp, 16
	lui	a14, 32768
	addi	a14, a14, 716
	sw	a5, a14, 0
	sw	a5, a17, 12
	sw	a5, a15, 8
	sw	a5, a8, 4
	addi	a8, hp, 0
	addi	hp, hp, 16
	lui	a14, 32768
	addi	a14, a14, 828
	sw	a8, a14, 0
	sw	a8, a16, 12
	lw	a14, sp, 136
	sw	a8, a14, 8
	sw	a8, a11, 4
	addi	a11, hp, 0
	addi	hp, hp, 16
	lui	a14, 32768
	addi	a14, a14, 1040
	sw	a11, a14, 0
	sw	a11, a0, 12
	sw	a11, a7, 8
	sw	a11, a8, 4
	addi	a14, hp, 0
	addi	hp, hp, 16
	lui	a15, 32768
	addi	a15, a15, 1472
	sw	a14, a15, 0
	sw	a14, a0, 12
	sw	a14, a7, 8
	sw	a14, a8, 4
	addi	a0, hp, 0
	addi	hp, hp, 16
	lui	a8, 32768
	addi	a8, a8, 1920
	sw	a0, a8, 0
	sw	a0, a14, 12
	sw	a0, a11, 8
	sw	a0, a10, 4
	addi	a21, hp, 0
	addi	hp, hp, 60
	lui	a8, 36864
	addi	a8, a8, -1936
	sw	a21, a8, 0
	sw	a21, a4, 56
	sw	a21, a0, 52
	sw	a21, a16, 48
	sw	a21, a2, 44
	sw	a21, a6, 40
	lw	a0, sp, 140
	sw	a21, a0, 36
	sw	a21, a13, 32
	sw	a21, a12, 28
	lw	a0, sp, 128
	sw	a21, a0, 24
	sw	a21, a7, 20
	sw	a21, a5, 16
	sw	a21, a9, 12
	sw	a21, a3, 8
	sw	a21, a1, 4
	addi	a0, zero, 128
	addi	a1, zero, 128
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	addi	zero, zero, 0
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
	lui	x31, 40960
	addi	x31, x31, 1904
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
	lui	a0, 40960
	addi	a0, a0, -860
	flw	fa0, a0, 0
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	flw	fa0, sp, 8
	jalr	zero, ra, 0
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa2, a0, 0
	lui	a0, 40960
	addi	a0, a0, -860
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
	lui	a0, 40960
	addi	a0, a0, -868
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa1, fa1, fa0, rne
	flw	fa0, sp, 8
	jal	zero, -144
	flw	fa0, sp, 8
	jalr	zero, ra, 0
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa1, a0, 0
	lui	a0, 40960
	addi	a0, a0, -860
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	addi	a21, hp, 0
	addi	hp, hp, 8
	lui	a0, 40960
	addi	a0, a0, -856
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
	lui	a0, 40960
	addi	a0, a0, -872
	flw	fa3, a0, 0
	lui	a0, 40960
	addi	a0, a0, -868
	flw	fa4, a0, 0
	fmul.s	fa0, fa4, fa0, rne
	fsub.s	fa0, fa3, fa0, rne
	lui	a0, 40960
	addi	a0, a0, -876
	flw	fa3, a0, 0
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a0, 40960
	addi	a0, a0, -880
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	fsub.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	fmul.s	fa3, fa2, fa1, rne
	fmul.s	fa1, fa3, fa1, rne
	lui	a0, 40960
	addi	a0, a0, -884
	flw	fa4, a0, 0
	fmul.s	fa2, fa4, fa2, rne
	fsub.s	fa0, fa0, fa2, rne
	lui	a0, 40960
	addi	a0, a0, -888
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 40960
	addi	a0, a0, -892
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -752
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 64
	lui	a0, 40960
	addi	a0, a0, -896
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 40960
	addi	a0, a0, -864
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa2, a0, 0
	lui	a0, 40960
	addi	a0, a0, -868
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
	lui	a0, 40960
	addi	a0, a0, -864
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa2, a0, 0
	lui	a0, 40960
	addi	a0, a0, -900
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa0, a0, 0
	lui	a0, 40960
	addi	a0, a0, -868
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
	lui	a0, 40960
	addi	a0, a0, -872
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -1252
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 64
	lui	a0, 40960
	addi	a0, a0, -896
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 40960
	addi	a0, a0, -864
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa2, a0, 0
	lui	a0, 40960
	addi	a0, a0, -868
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
	lui	a0, 40960
	addi	a0, a0, -896
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 40960
	addi	a0, a0, -864
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa2, a0, 0
	lui	a0, 40960
	addi	a0, a0, -900
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
	lui	a0, 40960
	addi	a0, a0, -864
	flw	fa0, a0, 0
	lui	a0, 40960
	addi	a0, a0, -868
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
	lui	a0, 40960
	addi	a0, a0, 712
	flw	fa7, a0, 0
	fmul.s	fa2, fa7, fa2, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 40960
	addi	a0, a0, 708
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 40960
	addi	a0, a0, 704
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 40960
	addi	a0, a0, 700
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa5, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 40960
	addi	a0, a0, 696
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa6, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 40960
	addi	a0, a0, 692
	flw	fa2, a0, 0
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fsgnj.s	fa1, fa0, fa0
	fsw	sp, fa1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, -1836
	addi	sp, sp, -12
	lw	ra, sp, 8
	lui	a0, 40960
	addi	a0, a0, 688
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -1944
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 264
	lui	a0, 40960
	addi	a0, a0, 684
	flw	fa0, a0, 0
	lui	a0, 40960
	addi	a0, a0, 680
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -2008
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 92
	lui	a0, 40960
	addi	a0, a0, 668
	flw	fa0, a0, 0
	flw	fa1, sp, 16
	fdiv.s	fa0, fa1, fa0, rne
	lui	a0, 40960
	addi	a0, a0, 672
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
	lui	a0, 40960
	addi	a0, a0, 676
	flw	fa0, a0, 0
	flw	fa1, sp, 16
	fdiv.s	fa0, fa1, fa0, rne
	lui	a0, 40960
	addi	a0, a0, 672
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fsub.s	fa1, fa2, fa1, rne
	lui	a0, 40960
	addi	a0, a0, 672
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
	lui	a0, 40960
	addi	a0, a0, 1308
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
	lui	a0, 40960
	addi	a0, a0, 1368
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
	lui	a0, 40960
	addi	a0, a0, 1420
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
	jal	zero, -2816
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
