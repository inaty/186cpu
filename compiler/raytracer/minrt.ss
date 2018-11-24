	lui	a0, 102400
	addi	a0, a0, 0
	addi	sp, a0, 0
	lui	a0, 204800
	addi	a0, a0, 0
	addi	hp, a0, 0
	lui	a0, 1228800
	addi	a0, a0, 0
	addi	ap, a0, 0
	jal	zero, 53248
	float	128.00000000000
	float	0.90000000000
	float	0.20000000000
	float	150.00000000000
	float	-150.00000000000
	float	0.10000000000
	float	-2.00000000000
	float	0.00390625000
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
	float	0.00000000000
	float	-200.00000000000
	float	200.00000000000
	float	0.01745329300
	float	-1.00000000000
	float	1.00000000000
	flw	fa0, a0, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 57468
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 57432
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
	jal	ra, 57388
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 57384
	addi	sp, sp, -28
	lw	ra, sp, 24
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 57304
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 0
	bne	a0, a1, 64
	addi	a0, zero, 0
	lw	a1, sp, 0
	bne	a1, a0, 28
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 164
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
	jal	ra, 59736
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 59708
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 4
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 59680
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 8
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 59652
	addi	sp, sp, -24
	lw	ra, sp, 20
	lui	a0, 0
	addi	a0, a0, 156
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 58060
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 57536
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 59556
	addi	sp, sp, -52
	lw	ra, sp, 48
	lui	a0, 0
	addi	a0, a0, 156
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 57964
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fsw	sp, fa0, 56
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 57440
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 32
	fmul.s	fa2, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 152
	flw	fa3, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	lw	a0, sp, 12
	fsw	a0, fa2, 0
	lui	a1, 0
	addi	a1, a1, 148
	flw	fa2, a1, 0
	flw	fa3, sp, 40
	fmul.s	fa2, fa3, fa2, rne
	fsw	a0, fa2, 4
	flw	fa2, sp, 56
	fmul.s	fa4, fa1, fa2, rne
	lui	a1, 0
	addi	a1, a1, 152
	flw	fa5, a1, 0
	fmul.s	fa4, fa4, fa5, rne
	fsw	a0, fa4, 8
	lw	a1, sp, 8
	fsw	a1, fa2, 0
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa4, a2, 0
	fsw	a1, fa4, 4
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 56708
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 8
	fsw	a0, fa0, 8
	flw	fa0, sp, 40
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 56676
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 0
	flw	fa0, sp, 32
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 56636
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 4
	fsw	a0, fa0, 4
	flw	fa0, sp, 40
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 56604
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
	jal	ra, 59100
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 59112
	addi	sp, sp, -12
	lw	ra, sp, 8
	lui	a0, 0
	addi	a0, a0, 156
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 57028
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 56408
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	fsw	a0, fa0, 4
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 59024
	addi	sp, sp, -20
	lw	ra, sp, 16
	lui	a0, 0
	addi	a0, a0, 156
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 8
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 57424
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 56900
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 0
	flw	fa0, sp, 16
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 57352
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 4
	fsw	a0, fa0, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 58868
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
	jal	ra, 57272
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 56744
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 57200
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4
	flw	fa1, a0, 4
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 56672
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4
	flw	fa1, a0, 8
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 57128
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 4
	flw	fa1, a0, 8
	fsw	sp, fa0, 40
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 56600
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
	jal	ra, 55860
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
	jal	ra, 55756
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 80
	fsw	sp, fa0, 144
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	ra, 55716
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
	jal	ra, 55668
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
	jal	ra, 55620
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 64
	fsw	sp, fa0, 160
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 55580
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
	jal	ra, 55532
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
	jal	ra, 55484
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 136
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 48
	fsw	sp, fa0, 176
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	ra, 55444
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
	jal	ra, 55396
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 112
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 184
	fadd.s	fa0, fa2, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 8
	lui	a0, 0
	addi	a0, a0, 140
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
	addi	a1, a1, 140
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
	addi	a1, a1, 140
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
	jal	ra, 57760
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, -1
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 57720
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 57696
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 57672
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 57240
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 57636
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 57608
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 4
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 57580
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	fsw	a0, fa0, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 57112
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 57508
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	fsw	a0, fa0, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 57480
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	fsw	a0, fa0, 4
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 57452
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	fsw	a0, fa0, 8
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 57424
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 54700
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, 2
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 32
	addi	a0, a1, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 56940
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 57336
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36
	fsw	a0, fa0, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 57308
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36
	fsw	a0, fa0, 4
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 56840
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 57236
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 57208
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 4
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 57180
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	fsw	a0, fa0, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	addi	a0, a1, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 56712
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	lw	a2, sp, 20
	bne	a2, a1, 8
	jal	zero, 140
	sw	sp, a0, 44
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 57092
	addi	sp, sp, -52
	lw	ra, sp, 48
	lui	a0, 0
	addi	a0, a0, 156
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 44
	fsw	a0, fa0, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 57048
	addi	sp, sp, -52
	lw	ra, sp, 48
	lui	a0, 0
	addi	a0, a0, 156
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 44
	fsw	a0, fa0, 4
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 57004
	addi	sp, sp, -52
	lw	ra, sp, 48
	lui	a0, 0
	addi	a0, a0, 156
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
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
	addi	a4, a4, 144
	flw	fa0, a4, 0
	sw	sp, a1, 48
	sw	sp, a0, 44
	addi	a0, a3, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 56488
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
	bne	a4, a1, 632
	flw	fa0, a2, 0
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 54068
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 156
	flw	fa0, sp, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 54036
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 68
	flw	fa0, sp, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 53980
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	flw	fa1, sp, 56
	fsw	sp, fa0, 64
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 53952
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 24
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 53860
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 156
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 53828
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 68
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 53772
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	flw	fa1, sp, 72
	fsw	sp, fa0, 80
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 53744
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 24
	fsw	a0, fa0, 4
	flw	fa0, a0, 8
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 53652
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 156
	flw	fa0, sp, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 53620
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 68
	flw	fa0, sp, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 53564
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	flw	fa1, sp, 88
	fsw	sp, fa0, 96
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 53536
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96
	fdiv.s	fa0, fa1, fa0, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
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
	jal	ra, -4044
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
	jal	ra, -2788
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
	sw	sp, a1, 4
	sw	sp, a2, 8
	sw	sp, a0, 12
	addi	a21, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 20
	lw	a0, sp, 8
	lw	a1, sp, 12
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 12
	addi	a0, a0, 1
	addi	a1, zero, 60
	blt	a0, a1, 8
	jalr	zero, ra, 0
	lw	a21, sp, 4
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 20
	lw	a0, sp, 8
	lw	a1, sp, 16
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 16
	addi	a0, a0, 1
	addi	a1, zero, 60
	blt	a0, a1, 8
	jalr	zero, ra, 0
	lw	a21, sp, 4
	sw	sp, a0, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	bne	a0, a1, 20
	lw	a0, sp, 8
	lw	a1, sp, 20
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 20
	addi	a0, a0, 1
	addi	a1, zero, 60
	blt	a0, a1, 8
	jalr	zero, ra, 0
	lw	a21, sp, 4
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 0
	bne	a0, a1, 20
	lw	a0, sp, 8
	lw	a1, sp, 24
	sw	a0, a1, 0
	jalr	zero, ra, 0
	lw	a0, sp, 24
	addi	a0, a0, 1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 55656
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, -1
	bne	a0, a1, 20
	lw	a0, sp, 0
	addi	a0, a0, 1
	addi	a1, zero, -1
	jal	zero, 55208
	lw	a1, sp, 0
	addi	a2, a1, 1
	sw	sp, a0, 4
	sw	sp, a2, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 55596
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, -1
	bne	a0, a1, 40
	lw	a0, sp, 8
	addi	a0, a0, 1
	addi	a1, zero, -1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 55140
	addi	sp, sp, -16
	lw	ra, sp, 12
	jal	zero, 260
	lw	a1, sp, 8
	addi	a2, a1, 1
	sw	sp, a0, 12
	sw	sp, a2, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 55516
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, -1
	bne	a0, a1, 40
	lw	a0, sp, 16
	addi	a0, a0, 1
	addi	a1, zero, -1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 55060
	addi	sp, sp, -24
	lw	ra, sp, 20
	jal	zero, 160
	lw	a1, sp, 16
	addi	a2, a1, 1
	sw	sp, a0, 20
	sw	sp, a2, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 55436
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, -1
	bne	a0, a1, 40
	lw	a0, sp, 24
	addi	a0, a0, 1
	addi	a1, zero, -1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 54980
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
	jal	ra, 55248
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, -1
	bne	a0, a1, 40
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 54796
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, a0, 0
	jal	zero, 192
	sw	sp, a0, 4
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 55180
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 54728
	addi	sp, sp, -12
	lw	ra, sp, 8
	jal	zero, 116
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 55116
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 3
	addi	a1, zero, -1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 54664
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
	jal	zero, 54568
	lw	a0, sp, 0
	addi	a2, a0, 1
	sw	sp, a1, 16
	sw	sp, a2, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 54956
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, -1
	bne	a0, a1, 40
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 54504
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	jal	zero, 120
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 54888
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 54436
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
	jal	ra, 54340
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
	jal	ra, 54636
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 54184
	addi	sp, sp, -16
	lw	ra, sp, 12
	jal	zero, 188
	sw	sp, a0, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 54572
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 54120
	addi	sp, sp, -20
	lw	ra, sp, 16
	jal	zero, 116
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 54508
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 3
	addi	a1, zero, -1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 54056
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
	jal	ra, 54348
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 1
	addi	a1, zero, -1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 53896
	addi	sp, sp, -32
	lw	ra, sp, 28
	jal	zero, 116
	sw	sp, a0, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 54284
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, zero, -1
	bne	a0, a1, 36
	addi	a0, zero, 2
	addi	a1, zero, -1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 53832
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
	jal	ra, 51408
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 428
	lw	a0, sp, 56
	lw	a1, a0, 16
	lw	a0, a0, 24
	lw	a2, sp, 52
	slli	a3, a2, 2
	lw	a4, sp, 48
	add	t0, a4, a3
	flw	fa0, t0, 0
	sw	sp, a1, 60
	sw	sp, a0, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 51328
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	lw	a2, sp, 64
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 60
	add	t0, a3, a2
	flw	fa0, t0, 0
	addi	a2, zero, 0
	bne	a0, a2, 28
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 51304
	addi	sp, sp, -72
	lw	ra, sp, 68
	jal	zero, 4
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
	jal	ra, 51204
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 32
	slli	a0, a0, 2
	lw	a1, sp, 60
	add	t0, a1, a0
	flw	fa1, t0, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 51092
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
	jal	ra, 51092
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 16
	slli	a0, a0, 2
	lw	a1, sp, 60
	add	t0, a1, a0
	flw	fa1, t0, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 50980
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
	sw	sp, a2, 0
	fsw	sp, fa3, 8
	fsw	sp, fa2, 16
	fsw	sp, fa1, 24
	fsw	sp, fa0, 32
	sw	sp, a0, 40
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 50844
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 40
	flw	fa0, a0, 0
	flw	fa1, sp, 32
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 4
	flw	fa2, sp, 24
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	flw	fa2, sp, 16
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 50832
	addi	sp, sp, -48
	lw	ra, sp, 44
	flw	fa1, sp, 8
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
	jal	ra, 50756
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24
	lw	a1, a0, 16
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 16
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 50708
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 24
	lw	a1, a0, 16
	flw	fa1, a1, 4
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 32
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 8
	fsw	sp, fa0, 40
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 50652
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 24
	lw	a1, a0, 16
	flw	fa1, a1, 8
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 40
	fadd.s	fa0, fa1, fa0, rne
	lw	a1, a0, 12
	addi	a2, zero, 0
	bne	a1, a2, 8
	jalr	zero, ra, 0
	flw	fa1, sp, 8
	flw	fa2, sp, 16
	fmul.s	fa3, fa2, fa1, rne
	lw	a1, a0, 36
	flw	fa4, a1, 0
	fmul.s	fa3, fa3, fa4, rne
	fadd.s	fa0, fa0, fa3, rne
	flw	fa3, sp, 0
	fmul.s	fa1, fa1, fa3, rne
	lw	a1, a0, 36
	flw	fa4, a1, 4
	fmul.s	fa1, fa1, fa4, rne
	fadd.s	fa0, fa0, fa1, rne
	fmul.s	fa1, fa3, fa2, rne
	lw	a0, a0, 36
	flw	fa2, a0, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
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
	fsw	sp, fa6, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 50336
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 0
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
	jal	ra, -508
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 50216
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 328
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
	jal	ra, -336
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
	jal	ra, -644
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 32
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	flw	fa1, sp, 48
	fsw	sp, fa0, 56
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 50068
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	flw	fa2, sp, 40
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 49972
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	flw	fa0, sp, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 50012
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 32
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 28
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 49968
	addi	sp, sp, -76
	lw	ra, sp, 72
	jal	zero, 4
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
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	sw	sp, a1, 24
	sw	sp, a0, 28
	sw	sp, a4, 32
	addi	a21, a4, 0
	addi	a4, a5, 0
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
	addi	a4, zero, 2
	bne	a2, a4, 208
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
	sw	sp, a5, 36
	fsw	sp, fa3, 40
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	fsw	sp, fa0, 0
	sw	sp, a0, 48
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 49416
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 48
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 4
	flw	fa2, sp, 16
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	flw	fa2, sp, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 49404
	addi	sp, sp, -56
	lw	ra, sp, 52
	flw	fa1, sp, 40
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 36
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a21, a3, 0
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
	jal	ra, 49272
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52
	lw	a1, a0, 16
	flw	fa1, a1, 4
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 49168
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 144
	lw	a0, sp, 48
	flw	fa0, a0, 8
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 32
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 49180
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52
	lw	a1, a0, 16
	flw	fa1, a1, 8
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 49076
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 52
	lw	a0, sp, 24
	flw	fa0, a0, 4
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 49064
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 588
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
	fsw	sp, fa0, 56
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 49004
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 52
	lw	a1, a0, 16
	flw	fa1, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 48900
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 144
	lw	a0, sp, 48
	flw	fa0, a0, 8
	flw	fa1, sp, 56
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 32
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 48912
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 52
	lw	a1, a0, 16
	flw	fa1, a1, 8
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 48808
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 52
	lw	a0, sp, 24
	flw	fa0, a0, 12
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 48796
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 300
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
	fsw	sp, fa0, 64
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 48736
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 52
	lw	a1, a0, 16
	flw	fa1, a1, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 48632
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 144
	lw	a0, sp, 48
	flw	fa0, a0, 4
	flw	fa1, sp, 64
	fmul.s	fa0, fa1, fa0, rne
	flw	fa2, sp, 16
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 48644
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 52
	lw	a0, a0, 16
	flw	fa1, a0, 4
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 48540
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 52
	lw	a0, sp, 24
	flw	fa0, a0, 20
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 48528
	addi	sp, sp, -76
	lw	ra, sp, 72
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
	flw	fa0, sp, 64
	fsw	a0, fa0, 0
	addi	a0, zero, 3
	jalr	zero, ra, 0
	lw	a0, sp, 0
	flw	fa0, sp, 56
	fsw	a0, fa0, 0
	addi	a0, zero, 2
	jalr	zero, ra, 0
	lw	a0, sp, 0
	flw	fa0, sp, 40
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
	jal	ra, 48372
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 352
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
	jal	ra, -2476
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 16
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	flw	fa1, sp, 56
	fsw	sp, fa0, 64
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 48236
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	flw	fa2, sp, 8
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 48140
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 16
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 60
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 48164
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
	jal	ra, 48108
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
	jal	ra, 47944
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 276
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
	jal	ra, 47884
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	flw	fa2, sp, 8
	fmul.s	fa1, fa2, fa1, rne
	fsub.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 47788
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 4
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 60
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 47812
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
	jal	ra, 47756
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
	bne	a7, a1, 92
	flw	fa0, a0, 0
	sw	sp, a4, 0
	sw	sp, a6, 4
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 47504
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
	addi	a1, a0, 0
	addi	a21, a2, 0
	addi	a2, a6, 0
	addi	a0, a5, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a2, zero, 6
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 49664
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4
	flw	fa0, a1, 0
	sw	sp, a0, 8
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 47360
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 0
	bne	a0, a1, 164
	lw	a0, sp, 0
	lw	a1, a0, 24
	lw	a2, sp, 4
	flw	fa0, a2, 0
	sw	sp, a1, 12
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 47300
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	lw	a2, sp, 12
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa0, a2, 0
	addi	a2, zero, 0
	bne	a0, a2, 28
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 47284
	addi	sp, sp, -20
	lw	ra, sp, 16
	jal	zero, 4
	lw	a0, sp, 8
	fsw	a0, fa0, 0
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa0, a1, 0
	lw	a1, sp, 4
	flw	fa1, a1, 0
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 8
	fsw	a0, fa0, 4
	lw	a1, sp, 4
	flw	fa0, a1, 4
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 47144
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 164
	lw	a0, sp, 0
	lw	a1, a0, 24
	lw	a2, sp, 4
	flw	fa0, a2, 4
	sw	sp, a1, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 47084
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	lw	a2, sp, 16
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa0, a2, 4
	addi	a2, zero, 0
	bne	a0, a2, 28
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 47068
	addi	sp, sp, -24
	lw	ra, sp, 20
	jal	zero, 4
	lw	a0, sp, 8
	fsw	a0, fa0, 8
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa0, a1, 0
	lw	a1, sp, 4
	flw	fa1, a1, 4
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 12
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 8
	fsw	a0, fa0, 12
	lw	a1, sp, 4
	flw	fa0, a1, 8
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 46928
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 164
	lw	a0, sp, 0
	lw	a1, a0, 24
	lw	a2, sp, 4
	flw	fa0, a2, 8
	sw	sp, a1, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 46868
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	lw	a2, sp, 20
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	lw	a1, sp, 0
	lw	a1, a1, 16
	flw	fa0, a1, 8
	addi	a1, zero, 0
	bne	a0, a1, 28
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 46852
	addi	sp, sp, -28
	lw	ra, sp, 24
	jal	zero, 4
	lw	a0, sp, 8
	fsw	a0, fa0, 16
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa0, a1, 0
	lw	a1, sp, 4
	flw	fa1, a1, 8
	fdiv.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 20
	jal	zero, 24
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 8
	fsw	a0, fa0, 20
	jalr	zero, ra, 0
	addi	a2, zero, 4
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 48960
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
	fsw	sp, fa0, 8
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 46572
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 28
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 16
	fsw	a0, fa0, 0
	jal	zero, 172
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	flw	fa1, sp, 8
	fdiv.s	fa0, fa0, fa1, rne
	lw	a0, sp, 16
	fsw	a0, fa0, 0
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa0, a2, 0
	fdiv.s	fa0, fa0, fa1, rne
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 46548
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 4
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa0, a2, 4
	flw	fa1, sp, 8
	fdiv.s	fa0, fa0, fa1, rne
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 46500
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 8
	lw	a1, sp, 0
	lw	a1, a1, 16
	flw	fa0, a1, 8
	flw	fa1, sp, 8
	fdiv.s	fa0, fa0, fa1, rne
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 46452
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	fsw	a0, fa0, 12
	jalr	zero, ra, 0
	addi	a2, zero, 5
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	sw	sp, a1, 0
	sw	sp, a0, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 48616
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
	jal	ra, -4452
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4
	flw	fa1, a0, 0
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa2, a2, 0
	fmul.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 46292
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4
	flw	fa1, a0, 4
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa2, a2, 4
	fmul.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 24
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 46240
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4
	flw	fa1, a0, 8
	lw	a1, sp, 0
	lw	a2, a1, 16
	flw	fa2, a2, 8
	fmul.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 46188
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 8
	flw	fa1, sp, 16
	fsw	a0, fa1, 0
	lw	a1, sp, 0
	lw	a2, a1, 12
	addi	a3, zero, 0
	bne	a2, a3, 28
	flw	fa2, sp, 24
	fsw	a0, fa2, 4
	flw	fa2, sp, 32
	fsw	a0, fa2, 8
	fsw	a0, fa0, 12
	jal	zero, 248
	lw	a2, sp, 4
	flw	fa2, a2, 8
	lw	a3, a1, 36
	flw	fa3, a3, 4
	fmul.s	fa2, fa2, fa3, rne
	flw	fa3, a2, 4
	lw	a3, a1, 36
	flw	fa4, a3, 8
	fmul.s	fa3, fa3, fa4, rne
	fadd.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 40
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 46032
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 24
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 4
	lw	a1, sp, 4
	flw	fa0, a1, 8
	lw	a2, sp, 0
	lw	a3, a2, 36
	flw	fa1, a3, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 0
	lw	a3, a2, 36
	flw	fa2, a3, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 45952
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 32
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 8
	lw	a1, sp, 4
	flw	fa0, a1, 4
	lw	a2, sp, 0
	lw	a3, a2, 36
	flw	fa1, a3, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 0
	lw	a1, a2, 36
	flw	fa2, a1, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 45872
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 12
	flw	fa0, sp, 16
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 45820
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 36
	lui	a0, 0
	addi	a0, a0, 164
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
	blt	a1, a3, 480
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a3, t0, 0
	lw	a4, a0, 4
	lw	a5, a0, 0
	lw	a6, a3, 4
	addi	a7, zero, 1
	sw	sp, a21, 0
	sw	sp, a0, 4
	sw	sp, a2, 8
	bne	a6, a7, 64
	sw	sp, a4, 12
	sw	sp, a1, 16
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -1748
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a7, zero, 2
	bne	a6, a7, 64
	sw	sp, a4, 12
	sw	sp, a1, 16
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -1112
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a4, 12
	sw	sp, a1, 16
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -828
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16
	slli	a2, a1, 2
	lw	a3, sp, 12
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 236
	slli	a1, a0, 2
	lw	a2, sp, 8
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, sp, 4
	lw	a3, a2, 4
	lw	a4, a2, 0
	lw	a5, a1, 4
	addi	a6, zero, 1
	bne	a5, a6, 60
	sw	sp, a3, 20
	sw	sp, a0, 24
	addi	a0, a4, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -1980
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24
	slli	a2, a1, 2
	lw	a3, sp, 20
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 120
	addi	a6, zero, 2
	bne	a5, a6, 60
	sw	sp, a3, 20
	sw	sp, a0, 24
	addi	a0, a4, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -1340
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24
	slli	a2, a1, 2
	lw	a3, sp, 20
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 56
	sw	sp, a3, 20
	sw	sp, a0, 24
	addi	a0, a4, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, -1052
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 24
	slli	a2, a1, 2
	lw	a3, sp, 20
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 4
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	addi	a3, zero, 0
	blt	a1, a3, 280
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
	sw	sp, a21, 4
	sw	sp, a1, 8
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
	sw	sp, a3, 12
	sw	sp, a4, 16
	addi	a0, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, -5692
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a0, zero, 3
	lw	a1, sp, 16
	bne	a1, a0, 24
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa1, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	lw	a0, sp, 12
	fsw	a0, fa0, 12
	lw	a0, sp, 8
	addi	a1, a0, -1
	lw	a0, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
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
	bne	a1, a2, 264
	fsw	sp, fa2, 0
	fsw	sp, fa1, 8
	sw	sp, a0, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 44948
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	lw	a1, a0, 16
	flw	fa1, a1, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 44844
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 132
	flw	fa0, sp, 8
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 44876
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	lw	a1, a0, 16
	flw	fa1, a1, 4
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 44772
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 60
	flw	fa0, sp, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 44804
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16
	lw	a1, a0, 16
	flw	fa1, a1, 8
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 44700
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 0
	bne	a0, a1, 36
	lw	a0, sp, 16
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a0, sp, 16
	lw	a0, a0, 24
	jalr	zero, ra, 0
	addi	a2, zero, 2
	bne	a1, a2, 128
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
	sw	sp, a0, 20
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 44596
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, zero, 0
	lw	a2, sp, 20
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	sw	sp, a0, 16
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, -6224
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 16
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	lw	a0, a0, 24
	sw	sp, a0, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 44448
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, zero, 0
	lw	a2, sp, 24
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	slli	a3, a0, 2
	add	t0, a1, a3
	lw	a3, t0, 0
	addi	a4, zero, -1
	bne	a3, a4, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	slli	a3, a3, 2
	add	t0, a2, a3
	lw	a3, t0, 0
	lw	a4, a3, 20
	flw	fa3, a4, 0
	fsub.s	fa3, fa0, fa3, rne
	lw	a4, a3, 20
	flw	fa4, a4, 4
	fsub.s	fa4, fa1, fa4, rne
	lw	a4, a3, 20
	flw	fa5, a4, 8
	fsub.s	fa5, fa2, fa5, rne
	lw	a4, a3, 4
	addi	a5, zero, 1
	sw	sp, a21, 0
	fsw	sp, fa2, 8
	fsw	sp, fa1, 16
	fsw	sp, fa0, 24
	sw	sp, a2, 32
	sw	sp, a1, 36
	sw	sp, a0, 40
	bne	a4, a5, 268
	fsw	sp, fa5, 48
	fsw	sp, fa4, 56
	sw	sp, a3, 64
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 44284
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64
	lw	a1, a0, 16
	flw	fa1, a1, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 44180
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 132
	flw	fa0, sp, 56
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 44212
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64
	lw	a1, a0, 16
	flw	fa1, a1, 4
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 44108
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 60
	flw	fa0, sp, 48
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 44140
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64
	lw	a1, a0, 16
	flw	fa1, a1, 8
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 44036
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 36
	lw	a0, sp, 64
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 12
	lw	a0, sp, 64
	lw	a0, a0, 24
	jal	zero, 300
	addi	a5, zero, 2
	bne	a4, a5, 132
	lw	a4, a3, 16
	flw	fa6, a4, 0
	fmul.s	fa3, fa6, fa3, rne
	flw	fa6, a4, 4
	fmul.s	fa4, fa6, fa4, rne
	fadd.s	fa3, fa3, fa4, rne
	flw	fa4, a4, 8
	fmul.s	fa4, fa4, fa5, rne
	fadd.s	fa3, fa3, fa4, rne
	lw	a3, a3, 24
	sw	sp, a3, 68
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 43928
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	lw	a2, sp, 68
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 164
	sw	sp, a3, 64
	addi	a0, a3, 0
	fsgnj.s	fa2, fa5, fa5
	fsgnj.s	fa1, fa4, fa4
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, -6908
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 64
	lw	a1, a0, 4
	addi	a2, zero, 3
	bne	a1, a2, 24
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	jal	zero, 4
	lw	a0, a0, 24
	sw	sp, a0, 72
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, 43764
	addi	sp, sp, -80
	lw	ra, sp, 76
	addi	a1, zero, 0
	lw	a2, sp, 72
	bne	a2, a1, 8
	jal	zero, 24
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 1
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 152
	lw	a0, sp, 40
	addi	a0, a0, 1
	slli	a1, a0, 2
	lw	a2, sp, 36
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, -1
	bne	a1, a3, 12
	addi	a0, zero, 1
	jalr	zero, ra, 0
	slli	a1, a1, 2
	lw	a3, sp, 32
	add	t0, a3, a1
	lw	a1, t0, 0
	flw	fa0, sp, 24
	flw	fa1, sp, 16
	flw	fa2, sp, 8
	sw	sp, a0, 76
	addi	a0, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, -1360
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 40
	lw	a0, sp, 76
	addi	a0, a0, 1
	flw	fa0, sp, 24
	flw	fa1, sp, 16
	flw	fa2, sp, 8
	lw	a1, sp, 36
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a0, zero, 0
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
	addi	a12, zero, -1
	bne	a11, a12, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	slli	a11, a0, 2
	add	t0, a1, a11
	lw	a11, t0, 0
	slli	a12, a11, 2
	add	t0, a6, a12
	lw	a12, t0, 0
	flw	fa0, a8, 0
	lw	a13, a12, 20
	flw	fa1, a13, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a8, 4
	lw	a13, a12, 20
	flw	fa2, a13, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a8, 8
	lw	a13, a12, 20
	flw	fa3, a13, 8
	fsub.s	fa2, fa2, fa3, rne
	slli	a13, a11, 2
	add	t0, a9, a13
	lw	a9, t0, 0
	lw	a13, a12, 4
	addi	a14, zero, 1
	sw	sp, a10, 0
	sw	sp, a8, 4
	sw	sp, a7, 8
	sw	sp, a1, 12
	sw	sp, a21, 16
	sw	sp, a0, 20
	sw	sp, a6, 24
	sw	sp, a11, 28
	sw	sp, a5, 32
	bne	a13, a14, 48
	addi	a1, a2, 0
	addi	a0, a12, 0
	addi	a21, a4, 0
	addi	a2, a9, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	jal	zero, 172
	addi	a2, zero, 2
	bne	a13, a2, 128
	flw	fa3, a9, 0
	fsw	sp, fa2, 40
	fsw	sp, fa1, 48
	fsw	sp, fa0, 56
	sw	sp, a9, 64
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 43252
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 64
	lw	a0, sp, 64
	flw	fa0, a0, 4
	flw	fa1, sp, 56
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	flw	fa2, sp, 48
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 12
	flw	fa2, sp, 40
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lw	a0, sp, 32
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jal	zero, 40
	addi	a1, a9, 0
	addi	a0, a12, 0
	addi	a21, a3, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 32
	flw	fa0, a1, 0
	addi	a1, zero, 0
	fsw	sp, fa0, 72
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 36
	lui	a0, 0
	addi	a0, a0, 136
	flw	fa1, a0, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 43056
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 28
	slli	a0, a0, 2
	lw	a1, sp, 24
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a0, a0, 24
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
	addi	a0, a0, 132
	flw	fa0, a0, 0
	flw	fa1, sp, 72
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
	lw	a1, sp, 12
	lw	a0, a1, 0
	addi	a2, zero, -1
	bne	a0, a2, 12
	addi	a0, zero, 1
	jal	zero, 132
	slli	a0, a0, 2
	lw	a2, sp, 24
	add	t0, a2, a0
	lw	a0, t0, 0
	fsw	sp, fa0, 80
	fsw	sp, fa2, 88
	fsw	sp, fa1, 96
	fsgnj.s	fa26, fa2, fa2
	fsgnj.s	fa2, fa0, fa0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa26, fa26
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -2124
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 0
	bne	a0, a1, 56
	addi	a0, zero, 1
	flw	fa0, sp, 96
	flw	fa1, sp, 88
	flw	fa2, sp, 80
	lw	a1, sp, 12
	lw	a21, sp, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	jal	zero, 8
	addi	a0, zero, 0
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
	slli	a12, a0, 2
	add	t0, a1, a12
	lw	a12, t0, 0
	lw	a13, a12, 0
	addi	a14, zero, -1
	bne	a13, a14, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	addi	a14, zero, 99
	sw	sp, a6, 0
	sw	sp, a7, 4
	sw	sp, a11, 8
	sw	sp, a12, 12
	sw	sp, a1, 16
	sw	sp, a21, 20
	sw	sp, a0, 24
	bne	a13, a14, 12
	addi	a0, zero, 1
	jal	zero, 708
	slli	a14, a13, 2
	add	t0, a8, a14
	lw	a8, t0, 0
	flw	fa0, a9, 0
	lw	a14, a8, 20
	flw	fa1, a14, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a9, 4
	lw	a14, a8, 20
	flw	fa2, a14, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a9, 8
	lw	a9, a8, 20
	flw	fa3, a9, 8
	fsub.s	fa2, fa2, fa3, rne
	slli	a9, a13, 2
	add	t0, a10, a9
	lw	a9, t0, 0
	lw	a10, a8, 4
	addi	a13, zero, 1
	sw	sp, a5, 28
	bne	a10, a13, 48
	addi	a1, a2, 0
	addi	a0, a8, 0
	addi	a21, a4, 0
	addi	a2, a9, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 172
	addi	a2, zero, 2
	bne	a10, a2, 128
	flw	fa3, a9, 0
	fsw	sp, fa2, 32
	fsw	sp, fa1, 40
	fsw	sp, fa0, 48
	sw	sp, a9, 56
	fsgnj.s	fa0, fa3, fa3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 41952
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 64
	lw	a0, sp, 56
	flw	fa0, a0, 4
	flw	fa1, sp, 48
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 8
	flw	fa2, sp, 40
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 12
	flw	fa2, sp, 32
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	lw	a0, sp, 28
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jal	zero, 40
	addi	a1, a9, 0
	addi	a0, a8, 0
	addi	a21, a3, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 392
	lw	a0, sp, 28
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa1, a0, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 41760
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 336
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 44
	addi	a0, zero, 4
	lw	a1, sp, 12
	lw	a21, sp, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 44
	addi	a0, zero, 4
	lw	a1, sp, 12
	lw	a21, sp, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
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
	lw	a3, a21, 44
	lw	a4, a21, 40
	lw	a5, a21, 36
	lw	a6, a21, 32
	lw	a7, a21, 28
	lw	a8, a21, 24
	lw	a9, a21, 20
	lw	a10, a21, 16
	lw	a11, a21, 12
	lw	a12, a21, 8
	lw	a13, a21, 4
	slli	a14, a0, 2
	add	t0, a1, a14
	lw	a14, t0, 0
	addi	a15, zero, -1
	bne	a14, a15, 8
	jalr	zero, ra, 0
	slli	a15, a14, 2
	add	t0, a9, a15
	lw	a15, t0, 0
	flw	fa0, a4, 0
	lw	a16, a15, 20
	flw	fa1, a16, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a4, 4
	lw	a16, a15, 20
	flw	fa2, a16, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a4, 8
	lw	a16, a15, 20
	flw	fa3, a16, 8
	fsub.s	fa2, fa2, fa3, rne
	lw	a16, a15, 4
	addi	a17, zero, 1
	sw	sp, a10, 0
	sw	sp, a12, 4
	sw	sp, a11, 8
	sw	sp, a13, 12
	sw	sp, a4, 16
	sw	sp, a3, 20
	sw	sp, a8, 24
	sw	sp, a2, 28
	sw	sp, a1, 32
	sw	sp, a21, 36
	sw	sp, a0, 40
	sw	sp, a9, 44
	sw	sp, a14, 48
	bne	a16, a17, 260
	addi	a5, zero, 0
	addi	a6, zero, 1
	addi	a16, zero, 2
	fsw	sp, fa0, 56
	fsw	sp, fa2, 64
	fsw	sp, fa1, 72
	sw	sp, a15, 80
	sw	sp, a7, 84
	addi	a4, a16, 0
	addi	a3, a6, 0
	addi	a1, a2, 0
	addi	a0, a15, 0
	addi	a21, a7, 0
	addi	a2, a5, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 164
	addi	a2, zero, 1
	addi	a3, zero, 2
	addi	a4, zero, 0
	flw	fa0, sp, 72
	flw	fa1, sp, 64
	flw	fa2, sp, 56
	lw	a0, sp, 80
	lw	a1, sp, 28
	lw	a21, sp, 84
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 88
	addi	a2, zero, 2
	addi	a3, zero, 0
	addi	a4, zero, 1
	flw	fa0, sp, 64
	flw	fa1, sp, 56
	flw	fa2, sp, 72
	lw	a0, sp, 80
	lw	a1, sp, 28
	lw	a21, sp, 84
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
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
	bne	a16, a7, 44
	addi	a1, a2, 0
	addi	a0, a15, 0
	addi	a21, a5, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	jal	zero, 40
	addi	a1, a2, 0
	addi	a0, a15, 0
	addi	a21, a6, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 48
	slli	a0, a0, 2
	lw	a1, sp, 44
	add	t0, a1, a0
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
	flw	fa1, a1, 0
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa0, a1, 0
	sw	sp, a0, 88
	fsw	sp, fa1, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 40376
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 352
	lw	a0, sp, 20
	flw	fa1, a0, 0
	flw	fa0, sp, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 40332
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 308
	lui	a0, 0
	addi	a0, a0, 132
	flw	fa0, a0, 0
	flw	fa1, sp, 96
	fadd.s	fa0, fa1, fa0, rne
	lw	a2, sp, 28
	flw	fa1, a2, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a0, sp, 16
	flw	fa2, a0, 0
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a2, 4
	fmul.s	fa2, fa2, fa0, rne
	flw	fa3, a0, 4
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a2, 8
	fmul.s	fa3, fa3, fa0, rne
	flw	fa4, a0, 8
	fadd.s	fa3, fa3, fa4, rne
	lw	a1, sp, 32
	lw	a0, a1, 0
	addi	a3, zero, -1
	fsw	sp, fa3, 104
	fsw	sp, fa2, 112
	fsw	sp, fa1, 120
	fsw	sp, fa0, 128
	bne	a0, a3, 12
	addi	a0, zero, 1
	jal	zero, 116
	slli	a0, a0, 2
	lw	a3, sp, 44
	add	t0, a3, a0
	lw	a0, t0, 0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, -4788
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, zero, 0
	bne	a0, a1, 56
	addi	a0, zero, 1
	flw	fa0, sp, 120
	flw	fa1, sp, 112
	flw	fa2, sp, 104
	lw	a1, sp, 32
	lw	a21, sp, 12
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 68
	lw	a0, sp, 20
	flw	fa0, sp, 128
	fsw	a0, fa0, 0
	lw	a0, sp, 8
	flw	fa0, sp, 120
	fsw	a0, fa0, 0
	flw	fa0, sp, 112
	fsw	a0, fa0, 4
	flw	fa0, sp, 104
	fsw	a0, fa0, 8
	lw	a0, sp, 4
	lw	a1, sp, 48
	sw	a0, a1, 0
	lw	a0, sp, 0
	lw	a1, sp, 88
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
	lw	a3, a21, 44
	lw	a4, a21, 40
	lw	a5, a21, 36
	lw	a6, a21, 32
	lw	a7, a21, 28
	lw	a8, a21, 24
	lw	a9, a21, 20
	lw	a10, a21, 16
	lw	a11, a21, 12
	lw	a12, a21, 8
	lw	a13, a21, 4
	slli	a14, a0, 2
	add	t0, a1, a14
	lw	a14, t0, 0
	lw	a15, a14, 0
	addi	a16, zero, -1
	bne	a15, a16, 8
	jalr	zero, ra, 0
	addi	a16, zero, 99
	sw	sp, a21, 0
	sw	sp, a3, 4
	sw	sp, a8, 8
	sw	sp, a4, 12
	sw	sp, a9, 16
	sw	sp, a10, 20
	sw	sp, a2, 24
	sw	sp, a11, 28
	sw	sp, a13, 32
	sw	sp, a1, 36
	sw	sp, a0, 40
	bne	a15, a16, 280
	lw	a5, a14, 4
	addi	a6, zero, -1
	bne	a5, a6, 8
	jal	zero, 260
	slli	a5, a5, 2
	add	t0, a13, a5
	lw	a5, t0, 0
	addi	a6, zero, 0
	sw	sp, a14, 44
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
	jal	zero, 760
	slli	a15, a15, 2
	add	t0, a12, a15
	lw	a12, t0, 0
	flw	fa0, a4, 0
	lw	a15, a12, 20
	flw	fa1, a15, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a4, 4
	lw	a15, a12, 20
	flw	fa2, a15, 4
	fsub.s	fa1, fa1, fa2, rne
	flw	fa2, a4, 8
	lw	a15, a12, 20
	flw	fa3, a15, 8
	fsub.s	fa2, fa2, fa3, rne
	lw	a15, a12, 4
	addi	a16, zero, 1
	sw	sp, a14, 44
	bne	a15, a16, 260
	addi	a5, zero, 0
	addi	a6, zero, 1
	addi	a15, zero, 2
	fsw	sp, fa0, 48
	fsw	sp, fa2, 56
	fsw	sp, fa1, 64
	sw	sp, a12, 72
	sw	sp, a7, 76
	addi	a4, a15, 0
	addi	a3, a6, 0
	addi	a1, a2, 0
	addi	a0, a12, 0
	addi	a21, a7, 0
	addi	a2, a5, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 164
	addi	a2, zero, 1
	addi	a3, zero, 2
	addi	a4, zero, 0
	flw	fa0, sp, 64
	flw	fa1, sp, 56
	flw	fa2, sp, 48
	lw	a0, sp, 72
	lw	a1, sp, 24
	lw	a21, sp, 76
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 88
	addi	a2, zero, 2
	addi	a3, zero, 0
	addi	a4, zero, 1
	flw	fa0, sp, 56
	flw	fa1, sp, 48
	flw	fa2, sp, 64
	lw	a0, sp, 72
	lw	a1, sp, 24
	lw	a21, sp, 76
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
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
	addi	a0, a12, 0
	addi	a21, a5, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	jal	zero, 40
	addi	a1, a2, 0
	addi	a0, a12, 0
	addi	a21, a6, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 332
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a1, sp, 4
	flw	fa1, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 38688
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 284
	lw	a0, sp, 44
	lw	a1, a0, 4
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 264
	slli	a1, a1, 2
	lw	a2, sp, 32
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 24
	lw	a21, sp, 28
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
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
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
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
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a0, zero, 4
	lw	a1, sp, 44
	lw	a2, sp, 24
	lw	a21, sp, 20
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
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
	sw	sp, a0, 80
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
	sw	sp, a1, 84
	addi	a2, a6, 0
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 84
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
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a0, zero, 3
	lw	a1, sp, 84
	lw	a2, sp, 24
	lw	a21, sp, 20
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	jal	zero, 316
	lw	a4, sp, 24
	lw	a5, sp, 12
	lw	a21, sp, 16
	sw	sp, a1, 84
	addi	a2, a5, 0
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 252
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a0, sp, 4
	flw	fa1, a0, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 38036
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 204
	lw	a0, sp, 84
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
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 84
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
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a0, zero, 3
	lw	a1, sp, 84
	lw	a2, sp, 24
	lw	a21, sp, 20
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 80
	addi	a0, a0, 1
	lw	a1, sp, 36
	lw	a2, sp, 24
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
	lw	a13, a2, 0
	slli	a14, a0, 2
	add	t0, a1, a14
	lw	a14, t0, 0
	addi	a15, zero, -1
	bne	a14, a15, 8
	jalr	zero, ra, 0
	slli	a15, a14, 2
	add	t0, a8, a15
	lw	a15, t0, 0
	lw	a16, a15, 40
	flw	fa0, a16, 0
	flw	fa1, a16, 4
	flw	fa2, a16, 8
	lw	a17, a2, 4
	slli	a18, a14, 2
	add	t0, a17, a18
	lw	a17, t0, 0
	lw	a18, a15, 4
	addi	a19, zero, 1
	sw	sp, a9, 0
	sw	sp, a11, 4
	sw	sp, a10, 8
	sw	sp, a12, 12
	sw	sp, a4, 16
	sw	sp, a13, 20
	sw	sp, a3, 24
	sw	sp, a7, 28
	sw	sp, a2, 32
	sw	sp, a1, 36
	sw	sp, a21, 40
	sw	sp, a0, 44
	sw	sp, a8, 48
	sw	sp, a14, 52
	bne	a18, a19, 52
	lw	a5, a2, 0
	addi	a2, a17, 0
	addi	a1, a5, 0
	addi	a0, a15, 0
	addi	a21, a6, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	jal	zero, 136
	addi	a6, zero, 2
	bne	a18, a6, 88
	flw	fa0, a17, 0
	sw	sp, a16, 56
	sw	sp, a17, 60
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 37548
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 36
	lw	a0, sp, 60
	flw	fa0, a0, 0
	lw	a0, sp, 56
	flw	fa1, a0, 12
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 28
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jal	zero, 44
	addi	a2, a16, 0
	addi	a1, a17, 0
	addi	a0, a15, 0
	addi	a21, a5, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 52
	slli	a0, a0, 2
	lw	a1, sp, 48
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a0, a0, 24
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lw	a0, sp, 44
	addi	a0, a0, 1
	lw	a1, sp, 36
	lw	a2, sp, 32
	lw	a21, sp, 40
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, sp, 28
	flw	fa1, a1, 0
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa0, a1, 0
	sw	sp, a0, 64
	fsw	sp, fa1, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 37316
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 352
	lw	a0, sp, 24
	flw	fa1, a0, 0
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 37272
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 308
	lui	a0, 0
	addi	a0, a0, 132
	flw	fa0, a0, 0
	flw	fa1, sp, 72
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 20
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
	lw	a1, sp, 36
	lw	a0, a1, 0
	addi	a2, zero, -1
	fsw	sp, fa3, 80
	fsw	sp, fa2, 88
	fsw	sp, fa1, 96
	fsw	sp, fa0, 104
	bne	a0, a2, 12
	addi	a0, zero, 1
	jal	zero, 116
	slli	a0, a0, 2
	lw	a2, sp, 48
	add	t0, a2, a0
	lw	a0, t0, 0
	fsgnj.s	fa0, fa1, fa1
	fsgnj.s	fa1, fa2, fa2
	fsgnj.s	fa2, fa3, fa3
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -7848
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, zero, 0
	bne	a0, a1, 56
	addi	a0, zero, 1
	flw	fa0, sp, 96
	flw	fa1, sp, 88
	flw	fa2, sp, 80
	lw	a1, sp, 36
	lw	a21, sp, 12
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	jal	zero, 8
	addi	a0, zero, 0
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 68
	lw	a0, sp, 24
	flw	fa0, sp, 104
	fsw	a0, fa0, 0
	lw	a0, sp, 8
	flw	fa0, sp, 96
	fsw	a0, fa0, 0
	flw	fa0, sp, 88
	fsw	a0, fa0, 4
	flw	fa0, sp, 80
	fsw	a0, fa0, 8
	lw	a0, sp, 4
	lw	a1, sp, 52
	sw	a0, a1, 0
	lw	a0, sp, 0
	lw	a1, sp, 64
	sw	a0, a1, 0
	lw	a0, sp, 44
	addi	a0, a0, 1
	lw	a1, sp, 36
	lw	a2, sp, 32
	lw	a21, sp, 40
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
	lw	a13, a12, 0
	addi	a14, zero, -1
	bne	a13, a14, 8
	jalr	zero, ra, 0
	addi	a14, zero, 99
	sw	sp, a21, 0
	sw	sp, a3, 4
	sw	sp, a7, 8
	sw	sp, a6, 12
	sw	sp, a8, 16
	sw	sp, a2, 20
	sw	sp, a9, 24
	sw	sp, a11, 28
	sw	sp, a1, 32
	sw	sp, a0, 36
	bne	a13, a14, 280
	lw	a4, a12, 4
	addi	a5, zero, -1
	bne	a4, a5, 8
	jal	zero, 260
	slli	a4, a4, 2
	add	t0, a11, a4
	lw	a4, t0, 0
	addi	a5, zero, 0
	sw	sp, a12, 40
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
	jal	zero, 584
	slli	a14, a13, 2
	add	t0, a10, a14
	lw	a10, t0, 0
	lw	a14, a10, 40
	flw	fa0, a14, 0
	flw	fa1, a14, 4
	flw	fa2, a14, 8
	lw	a15, a2, 4
	slli	a13, a13, 2
	add	t0, a15, a13
	lw	a13, t0, 0
	lw	a15, a10, 4
	addi	a16, zero, 1
	sw	sp, a12, 40
	bne	a15, a16, 52
	lw	a4, a2, 0
	addi	a2, a13, 0
	addi	a1, a4, 0
	addi	a0, a10, 0
	addi	a21, a5, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	jal	zero, 136
	addi	a5, zero, 2
	bne	a15, a5, 88
	flw	fa0, a13, 0
	sw	sp, a14, 44
	sw	sp, a13, 48
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 35976
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 36
	lw	a0, sp, 48
	flw	fa0, a0, 0
	lw	a0, sp, 44
	flw	fa1, a0, 12
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 8
	fsw	a0, fa0, 0
	addi	a0, zero, 1
	jal	zero, 44
	addi	a2, a14, 0
	addi	a1, a13, 0
	addi	a0, a10, 0
	addi	a21, a4, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 332
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a1, sp, 4
	flw	fa1, a1, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 35816
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 284
	lw	a0, sp, 40
	lw	a1, a0, 4
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 264
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
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
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
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a0, zero, 4
	lw	a1, sp, 40
	lw	a2, sp, 20
	lw	a21, sp, 16
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
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
	sw	sp, a0, 52
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
	sw	sp, a1, 56
	addi	a2, a6, 0
	addi	a1, a3, 0
	addi	a0, a5, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a0, zero, 3
	lw	a1, sp, 56
	lw	a2, sp, 20
	lw	a21, sp, 16
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	jal	zero, 308
	lw	a4, sp, 20
	lw	a21, sp, 12
	sw	sp, a1, 56
	addi	a1, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 252
	lw	a0, sp, 8
	flw	fa0, a0, 0
	lw	a0, sp, 4
	flw	fa1, a0, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 35172
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 204
	lw	a0, sp, 56
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56
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
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a0, zero, 3
	lw	a1, sp, 56
	lw	a2, sp, 20
	lw	a21, sp, 16
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 52
	addi	a0, a0, 1
	lw	a1, sp, 32
	lw	a2, sp, 20
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a1, a21, 32
	lw	a2, a21, 28
	lw	a3, a21, 24
	lw	a4, a21, 20
	lw	a5, a21, 16
	lw	a6, a21, 12
	lw	a7, a21, 8
	lw	a8, a21, 4
	lui	a9, 0
	addi	a9, a9, 124
	flw	fa0, a9, 0
	fsw	a2, fa0, 0
	lw	a7, a7, 0
	lw	a9, a7, 0
	lw	a10, a9, 0
	addi	a11, zero, -1
	sw	sp, a2, 0
	bne	a10, a11, 8
	jal	zero, 592
	addi	a11, zero, 99
	sw	sp, a0, 4
	sw	sp, a7, 8
	sw	sp, a1, 12
	bne	a10, a11, 216
	lw	a3, a9, 4
	addi	a4, zero, -1
	bne	a3, a4, 8
	jal	zero, 196
	slli	a3, a3, 2
	add	t0, a8, a3
	lw	a3, t0, 0
	addi	a4, zero, 0
	sw	sp, a5, 16
	sw	sp, a6, 20
	sw	sp, a8, 24
	sw	sp, a9, 28
	addi	a2, a0, 0
	addi	a1, a3, 0
	addi	a21, a6, 0
	addi	a0, a4, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 24
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a3, sp, 4
	lw	a21, sp, 20
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a0, zero, 3
	lw	a1, sp, 28
	lw	a2, sp, 4
	lw	a21, sp, 16
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	jal	zero, 320
	sw	sp, a5, 16
	sw	sp, a6, 20
	sw	sp, a8, 24
	sw	sp, a9, 28
	sw	sp, a4, 32
	addi	a1, a0, 0
	addi	a21, a3, 0
	addi	a0, a10, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 252
	lw	a0, sp, 32
	flw	fa0, a0, 0
	lw	a0, sp, 0
	flw	fa1, a0, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 34520
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 204
	lw	a0, sp, 28
	lw	a1, a0, 4
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 184
	slli	a1, a1, 2
	lw	a2, sp, 24
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a3, zero, 0
	lw	a4, sp, 4
	lw	a21, sp, 20
	addi	a2, a4, 0
	addi	a0, a3, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28
	lw	a1, a0, 8
	addi	a2, zero, -1
	bne	a1, a2, 8
	jal	zero, 104
	slli	a1, a1, 2
	lw	a2, sp, 24
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 0
	lw	a3, sp, 4
	lw	a21, sp, 20
	addi	a0, a2, 0
	addi	a2, a3, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a0, zero, 3
	lw	a1, sp, 28
	lw	a2, sp, 4
	lw	a21, sp, 16
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a0, zero, 1
	lw	a1, sp, 8
	lw	a2, sp, 4
	lw	a21, sp, 12
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 0
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	fsw	sp, fa1, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 34224
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jalr	zero, ra, 0
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa1, a0, 0
	flw	fa0, sp, 40
	jal	zero, 34180
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
	sw	sp, a1, 0
	sw	sp, a0, 4
	bne	a2, a3, 20
	fsw	a1, fa3, 0
	fsw	a1, fa4, 4
	fsw	a1, fa5, 8
	jal	zero, 248
	lw	a2, a0, 36
	flw	fa6, a2, 8
	fmul.s	fa6, fa1, fa6, rne
	lw	a2, a0, 36
	flw	fa7, a2, 4
	fmul.s	fa7, fa2, fa7, rne
	fadd.s	fa6, fa6, fa7, rne
	fsw	sp, fa5, 8
	fsw	sp, fa1, 16
	fsw	sp, fa4, 24
	fsw	sp, fa2, 32
	fsw	sp, fa0, 40
	fsw	sp, fa3, 48
	fsgnj.s	fa0, fa6, fa6
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 34028
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	lw	a1, sp, 4
	lw	a2, a1, 36
	flw	fa0, a2, 8
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	lw	a2, a1, 36
	flw	fa2, a2, 0
	flw	fa3, sp, 32
	fmul.s	fa2, fa3, fa2, rne
	fadd.s	fa0, fa0, fa2, rne
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 33952
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 24
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 4
	lw	a1, sp, 4
	lw	a2, a1, 36
	flw	fa0, a2, 4
	flw	fa1, sp, 40
	fmul.s	fa0, fa1, fa0, rne
	lw	a2, a1, 36
	flw	fa1, a2, 0
	flw	fa2, sp, 16
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 33876
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 8
	fadd.s	fa0, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa0, 8
	lw	a0, sp, 4
	lw	a1, a0, 24
	lw	a0, sp, 0
	jal	zero, -23632
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a21, a21, 4
	lw	a4, a0, 4
	addi	a5, zero, 1
	bne	a4, a5, 212
	lw	a0, a3, 0
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	fsw	a2, fa0, 0
	fsw	a2, fa0, 4
	fsw	a2, fa0, 8
	addi	a3, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 2
	add	t0, a1, a0
	flw	fa0, t0, 0
	sw	sp, a2, 0
	sw	sp, a3, 4
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 33728
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 68
	flw	fa0, sp, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 33672
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 33672
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4
	slli	a0, a0, 2
	lw	a1, sp, 0
	add	t0, a1, a0
	fsw	t0, fa0, 0
	jalr	zero, ra, 0
	addi	a1, zero, 2
	bne	a4, a1, 132
	lw	a1, a0, 16
	flw	fa0, a1, 0
	sw	sp, a0, 16
	sw	sp, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 33604
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0
	fsw	a0, fa0, 0
	lw	a1, sp, 16
	lw	a2, a1, 16
	flw	fa0, a2, 4
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 33564
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0
	fsw	a0, fa0, 4
	lw	a1, sp, 16
	lw	a1, a1, 16
	flw	fa0, a1, 8
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 33524
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 0
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
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
	bne	a3, a4, 360
	flw	fa0, a1, 0
	lw	a3, a0, 20
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	lui	a3, 0
	addi	a3, a3, 76
	flw	fa1, a3, 0
	fmul.s	fa1, fa0, fa1, rne
	sw	sp, a2, 0
	sw	sp, a0, 4
	sw	sp, a1, 8
	fsw	sp, fa0, 16
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 33396
	addi	sp, sp, -28
	lw	ra, sp, 24
	lui	a0, 0
	addi	a0, a0, 72
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 16
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 84
	flw	fa1, a0, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 33244
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 8
	flw	fa0, a1, 8
	lw	a1, sp, 4
	lw	a1, a1, 20
	flw	fa1, a1, 8
	fsub.s	fa0, fa0, fa1, rne
	lui	a1, 0
	addi	a1, a1, 76
	flw	fa1, a1, 0
	fmul.s	fa1, fa0, fa1, rne
	sw	sp, a0, 24
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 33268
	addi	sp, sp, -44
	lw	ra, sp, 40
	lui	a0, 0
	addi	a0, a0, 72
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 32
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 84
	flw	fa1, a0, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 33116
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, zero, 0
	lw	a2, sp, 24
	bne	a2, a1, 44
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	jal	zero, 40
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa0, a0, 0
	lw	a0, sp, 0
	fsw	a0, fa0, 4
	jalr	zero, ra, 0
	addi	a4, zero, 2
	bne	a3, a4, 132
	flw	fa0, a1, 4
	lui	a0, 0
	addi	a0, a0, 80
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	sw	sp, a2, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 33644
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 33008
	addi	sp, sp, -44
	lw	ra, sp, 40
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa0, rne
	lw	a0, sp, 0
	fsw	a0, fa1, 0
	lui	a1, 0
	addi	a1, a1, 92
	flw	fa1, a1, 0
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa2, a1, 0
	fsub.s	fa0, fa2, fa0, rne
	fmul.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 4
	jalr	zero, ra, 0
	addi	a4, zero, 3
	bne	a3, a4, 292
	flw	fa0, a1, 0
	lw	a3, a0, 20
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a1, 8
	lw	a0, a0, 20
	flw	fa2, a0, 8
	fsub.s	fa1, fa1, fa2, rne
	sw	sp, a2, 0
	fsw	sp, fa1, 40
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 32876
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40
	fsw	sp, fa0, 48
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 32844
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48
	fadd.s	fa0, fa1, fa0, rne
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 32840
	addi	sp, sp, -60
	lw	ra, sp, 56
	lui	a0, 0
	addi	a0, a0, 84
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 32808
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 104
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 33840
	addi	sp, sp, -68
	lw	ra, sp, 64
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 32712
	addi	sp, sp, -68
	lw	ra, sp, 64
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	lw	a0, sp, 0
	fsw	a0, fa1, 4
	lui	a1, 0
	addi	a1, a1, 164
	flw	fa1, a1, 0
	fsub.s	fa0, fa1, fa0, rne
	lui	a1, 0
	addi	a1, a1, 92
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	addi	a4, zero, 4
	bne	a3, a4, 924
	flw	fa0, a1, 0
	lw	a3, a0, 20
	flw	fa1, a3, 0
	fsub.s	fa0, fa0, fa1, rne
	lw	a3, a0, 16
	flw	fa1, a3, 0
	sw	sp, a2, 0
	sw	sp, a0, 4
	sw	sp, a1, 8
	fsw	sp, fa0, 64
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 32600
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	flw	fa1, a0, 8
	lw	a1, sp, 4
	lw	a2, a1, 20
	flw	fa2, a2, 8
	fsub.s	fa1, fa1, fa2, rne
	lw	a2, a1, 16
	flw	fa2, a2, 8
	fsw	sp, fa0, 72
	fsw	sp, fa1, 80
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 32528
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 72
	fsw	sp, fa0, 88
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 32464
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88
	fsw	sp, fa0, 96
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 32432
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96
	fadd.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 72
	fsw	sp, fa0, 104
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 32400
	addi	sp, sp, -116
	lw	ra, sp, 112
	lui	a0, 0
	addi	a0, a0, 116
	flw	fa1, a0, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 32296
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, zero, 0
	bne	a0, a1, 92
	flw	fa0, sp, 72
	flw	fa1, sp, 88
	fdiv.s	fa0, fa1, fa0, rne
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 32328
	addi	sp, sp, -116
	lw	ra, sp, 112
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 34128
	addi	sp, sp, -116
	lw	ra, sp, 112
	lui	a0, 0
	addi	a0, a0, 108
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 104
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 112
	flw	fa0, a0, 0
	fsw	sp, fa0, 112
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 32260
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112
	fsub.s	fa0, fa1, fa0, rne
	lw	a0, sp, 8
	flw	fa1, a0, 4
	lw	a0, sp, 4
	lw	a1, a0, 20
	flw	fa2, a1, 4
	fsub.s	fa1, fa1, fa2, rne
	lw	a0, a0, 16
	flw	fa2, a0, 4
	fsw	sp, fa0, 120
	fsw	sp, fa1, 128
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 32180
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128
	fmul.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 104
	fsw	sp, fa0, 136
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 32124
	addi	sp, sp, -148
	lw	ra, sp, 144
	lui	a0, 0
	addi	a0, a0, 116
	flw	fa1, a0, 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 32020
	addi	sp, sp, -148
	lw	ra, sp, 144
	addi	a1, zero, 0
	bne	a0, a1, 92
	flw	fa0, sp, 104
	flw	fa1, sp, 136
	fdiv.s	fa0, fa1, fa0, rne
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 32052
	addi	sp, sp, -148
	lw	ra, sp, 144
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 33852
	addi	sp, sp, -148
	lw	ra, sp, 144
	lui	a0, 0
	addi	a0, a0, 108
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 104
	flw	fa1, a0, 0
	fdiv.s	fa0, fa0, fa1, rne
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 112
	flw	fa0, a0, 0
	fsw	sp, fa0, 144
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	ra, 31984
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 144
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 100
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa2, a0, 0
	flw	fa3, sp, 120
	fsub.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 152
	fsw	sp, fa1, 160
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 31880
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 160
	fsub.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 96
	flw	fa1, a0, 0
	flw	fa2, sp, 152
	fsub.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 168
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 31824
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168
	fsub.s	fa0, fa1, fa0, rne
	fsw	sp, fa0, 176
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	ra, 31748
	addi	sp, sp, -188
	lw	ra, sp, 184
	addi	a1, zero, 0
	bne	a0, a1, 12
	flw	fa0, sp, 176
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lui	a0, 0
	addi	a0, a0, 92
	flw	fa1, a0, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 88
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
	blt	a0, a12, 752
	slli	a12, a0, 2
	add	t0, a7, a12
	lw	a7, t0, 0
	lw	a12, a7, 4
	lui	a13, 0
	addi	a13, a13, 124
	flw	fa2, a13, 0
	fsw	a3, fa2, 0
	addi	a13, zero, 0
	lw	a14, a8, 0
	sw	sp, a21, 0
	sw	sp, a0, 4
	fsw	sp, fa1, 8
	sw	sp, a4, 16
	sw	sp, a6, 20
	sw	sp, a1, 24
	fsw	sp, fa0, 32
	sw	sp, a9, 40
	sw	sp, a12, 44
	sw	sp, a5, 48
	sw	sp, a8, 52
	sw	sp, a7, 56
	sw	sp, a10, 60
	sw	sp, a11, 64
	sw	sp, a3, 68
	addi	a1, a14, 0
	addi	a0, a13, 0
	addi	a21, a2, 0
	addi	a2, a12, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 68
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	fsw	sp, fa1, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 31420
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 40
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa1, a0, 0
	flw	fa0, sp, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 31368
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 472
	lw	a0, sp, 64
	lw	a0, a0, 0
	slli	a0, a0, 2
	lw	a1, sp, 60
	lw	a1, a1, 0
	add	a0, a0, a1
	lw	a1, sp, 56
	lw	a2, a1, 0
	bne	a0, a2, 436
	addi	a0, zero, 0
	lw	a2, sp, 52
	lw	a2, a2, 0
	lw	a21, sp, 48
	addi	a1, a2, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 380
	lw	a0, sp, 44
	lw	a1, a0, 0
	lw	a2, sp, 40
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
	lw	a1, sp, 56
	flw	fa1, a1, 8
	flw	fa2, sp, 32
	fmul.s	fa3, fa1, fa2, rne
	fmul.s	fa0, fa3, fa0, rne
	lw	a0, a0, 0
	lw	a1, sp, 24
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
	fsw	sp, fa1, 80
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 31116
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 76
	lw	a0, sp, 20
	flw	fa0, a0, 0
	lw	a1, sp, 16
	flw	fa1, a1, 0
	flw	fa2, sp, 88
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a1, 4
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	flw	fa0, a0, 8
	flw	fa1, a1, 8
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	flw	fa0, sp, 80
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 31008
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 96
	flw	fa0, sp, 80
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 31028
	addi	sp, sp, -100
	lw	ra, sp, 96
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 31008
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 8
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 20
	flw	fa2, a0, 0
	fadd.s	fa2, fa2, fa0, rne
	fsw	a0, fa2, 0
	flw	fa2, a0, 4
	fadd.s	fa2, fa2, fa0, rne
	fsw	a0, fa2, 4
	flw	fa2, a0, 8
	fadd.s	fa0, fa2, fa0, rne
	fsw	a0, fa0, 8
	jal	zero, 4
	jal	zero, 4
	lw	a0, sp, 4
	addi	a0, a0, -1
	flw	fa0, sp, 32
	flw	fa1, sp, 8
	lw	a1, sp, 24
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a3, a21, 84
	lw	a4, a21, 80
	lw	a5, a21, 76
	lw	a6, a21, 72
	lw	a7, a21, 68
	lw	a8, a21, 64
	lw	a9, a21, 60
	lw	a10, a21, 56
	lw	a11, a21, 52
	lw	a12, a21, 48
	lw	a13, a21, 44
	lw	a14, a21, 40
	lw	a15, a21, 36
	lw	a16, a21, 32
	lw	a17, a21, 28
	lw	a18, a21, 24
	lw	a19, a21, 20
	lw	a20, a21, 16
	sw	sp, a4, 0
	lw	a4, a21, 12
	sw	sp, a16, 4
	lw	a16, a21, 8
	sw	sp, a21, 8
	lw	a21, a21, 4
	sw	sp, a11, 12
	addi	a11, zero, 4
	blt	a11, a0, 2328
	lw	a11, a2, 8
	sw	sp, a17, 16
	lui	a17, 0
	addi	a17, a17, 124
	flw	fa2, a17, 0
	fsw	a6, fa2, 0
	addi	a17, zero, 0
	sw	sp, a8, 20
	lw	a8, a13, 0
	fsw	sp, fa1, 24
	sw	sp, a10, 32
	sw	sp, a13, 36
	sw	sp, a7, 40
	sw	sp, a2, 44
	sw	sp, a3, 48
	sw	sp, a9, 52
	sw	sp, a20, 56
	sw	sp, a16, 60
	sw	sp, a15, 64
	sw	sp, a19, 68
	sw	sp, a14, 72
	sw	sp, a4, 76
	sw	sp, a12, 80
	sw	sp, a21, 84
	fsw	sp, fa0, 88
	sw	sp, a18, 96
	sw	sp, a1, 100
	sw	sp, a11, 104
	sw	sp, a0, 108
	sw	sp, a6, 112
	addi	a2, a1, 0
	addi	a0, a17, 0
	addi	a21, a5, 0
	addi	a1, a8, 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	lw	a0, sp, 112
	flw	fa1, a0, 0
	lui	a1, 0
	addi	a1, a1, 128
	flw	fa0, a1, 0
	fsw	sp, fa1, 120
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 30540
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 40
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa1, a0, 0
	flw	fa0, sp, 120
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 30488
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, zero, 0
	bne	a0, a1, 244
	addi	a0, zero, -1
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 104
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, zero, 0
	bne	a1, a0, 8
	jalr	zero, ra, 0
	lw	a0, sp, 100
	flw	fa0, a0, 0
	lw	a1, sp, 96
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
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 30452
	addi	sp, sp, -132
	lw	ra, sp, 128
	fsw	sp, fa0, 128
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 30356
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	flw	fa0, sp, 128
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 30376
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 88
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 84
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 80
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
	lw	a0, sp, 76
	lw	a0, a0, 0
	slli	a1, a0, 2
	lw	a2, sp, 72
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, a1, 8
	lw	a3, a1, 28
	flw	fa0, a3, 0
	flw	fa1, sp, 88
	fmul.s	fa0, fa0, fa1, rne
	lw	a3, a1, 4
	addi	a4, zero, 1
	sw	sp, a2, 136
	fsw	sp, fa0, 144
	sw	sp, a0, 152
	sw	sp, a1, 156
	bne	a3, a4, 224
	lw	a3, sp, 68
	lw	a4, a3, 0
	lui	a5, 0
	addi	a5, a5, 144
	flw	fa2, a5, 0
	lw	a5, sp, 64
	fsw	a5, fa2, 0
	fsw	a5, fa2, 4
	fsw	a5, fa2, 8
	addi	a6, a4, -1
	addi	a4, a4, -1
	slli	a4, a4, 2
	lw	a7, sp, 100
	add	t0, a7, a4
	flw	fa2, t0, 0
	sw	sp, a6, 160
	fsw	sp, fa2, 168
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 30108
	addi	sp, sp, -180
	lw	ra, sp, 176
	addi	a1, zero, 0
	bne	a0, a1, 68
	flw	fa0, sp, 168
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 30052
	addi	sp, sp, -180
	lw	ra, sp, 176
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 30052
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 160
	slli	a0, a0, 2
	lw	a1, sp, 64
	add	t0, a1, a0
	fsw	t0, fa0, 0
	jal	zero, 168
	addi	a4, zero, 2
	bne	a3, a4, 128
	lw	a3, a1, 16
	flw	fa2, a3, 0
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 29988
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 64
	fsw	a0, fa0, 0
	lw	a1, sp, 156
	lw	a2, a1, 16
	flw	fa0, a2, 4
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 29948
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 64
	fsw	a0, fa0, 4
	lw	a1, sp, 156
	lw	a2, a1, 16
	flw	fa0, a2, 8
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 29908
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 64
	fsw	a0, fa0, 8
	jal	zero, 36
	lw	a21, sp, 60
	addi	a0, a1, 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a1, sp, 56
	flw	fa0, a1, 0
	lw	a0, sp, 52
	fsw	a0, fa0, 0
	flw	fa0, a1, 4
	fsw	a0, fa0, 4
	flw	fa0, a1, 8
	fsw	a0, fa0, 8
	lw	a0, sp, 156
	lw	a21, sp, 48
	sw	sp, ra, 176
	addi	sp, sp, 180
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 152
	slli	a0, a0, 2
	lw	a1, sp, 68
	lw	a1, a1, 0
	add	a0, a0, a1
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 104
	add	t0, a3, a2
	sw	t0, a0, 0
	lw	a0, sp, 44
	lw	a2, a0, 4
	slli	a4, a1, 2
	add	t0, a2, a4
	lw	a2, t0, 0
	lw	a4, sp, 56
	flw	fa0, a4, 0
	fsw	a2, fa0, 0
	flw	fa0, a4, 4
	fsw	a2, fa0, 4
	flw	fa0, a4, 8
	fsw	a2, fa0, 8
	lw	a2, a0, 12
	lw	a5, sp, 156
	lw	a6, a5, 28
	flw	fa0, a6, 0
	lui	a6, 0
	addi	a6, a6, 96
	flw	fa1, a6, 0
	sw	sp, a2, 176
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	ra, 29580
	addi	sp, sp, -184
	lw	ra, sp, 180
	addi	a1, zero, 0
	bne	a0, a1, 192
	addi	a0, zero, 1
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 176
	add	t0, a3, a2
	sw	t0, a0, 0
	lw	a0, sp, 44
	lw	a2, a0, 16
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a3, t0, 0
	lw	a4, sp, 40
	flw	fa0, a4, 0
	fsw	a3, fa0, 0
	flw	fa0, a4, 4
	fsw	a3, fa0, 4
	flw	fa0, a4, 8
	fsw	a3, fa0, 8
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	lui	a3, 0
	addi	a3, a3, 68
	flw	fa0, a3, 0
	flw	fa1, sp, 144
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
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	lw	a3, sp, 64
	flw	fa0, a3, 0
	fsw	a2, fa0, 0
	flw	fa0, a3, 4
	fsw	a2, fa0, 4
	flw	fa0, a3, 8
	fsw	a2, fa0, 8
	jal	zero, 28
	addi	a0, zero, 0
	lw	a1, sp, 108
	slli	a2, a1, 2
	lw	a3, sp, 176
	add	t0, a3, a2
	sw	t0, a0, 0
	lui	a0, 0
	addi	a0, a0, 64
	flw	fa0, a0, 0
	lw	a0, sp, 100
	flw	fa1, a0, 0
	lw	a2, sp, 64
	flw	fa2, a2, 0
	fmul.s	fa1, fa1, fa2, rne
	flw	fa2, a0, 4
	flw	fa3, a2, 4
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a0, 8
	flw	fa3, a2, 8
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a0, 0
	flw	fa2, a2, 0
	fmul.s	fa2, fa0, fa2, rne
	fadd.s	fa1, fa1, fa2, rne
	fsw	a0, fa1, 0
	flw	fa1, a0, 4
	flw	fa2, a2, 4
	fmul.s	fa2, fa0, fa2, rne
	fadd.s	fa1, fa1, fa2, rne
	fsw	a0, fa1, 4
	flw	fa1, a0, 8
	flw	fa2, a2, 8
	fmul.s	fa0, fa0, fa2, rne
	fadd.s	fa0, fa1, fa0, rne
	fsw	a0, fa0, 8
	lw	a3, sp, 156
	lw	a4, a3, 28
	flw	fa0, a4, 4
	flw	fa1, sp, 88
	fmul.s	fa0, fa1, fa0, rne
	addi	a4, zero, 0
	lw	a5, sp, 36
	lw	a5, a5, 0
	lw	a21, sp, 32
	fsw	sp, fa0, 184
	addi	a1, a5, 0
	addi	a0, a4, 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	addi	a1, zero, 0
	bne	a0, a1, 412
	lw	a0, sp, 64
	flw	fa0, a0, 0
	lw	a1, sp, 96
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
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, 29160
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 144
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 100
	flw	fa2, a0, 0
	lw	a1, sp, 96
	flw	fa3, a1, 0
	fmul.s	fa2, fa2, fa3, rne
	flw	fa3, a0, 4
	flw	fa4, a1, 4
	fmul.s	fa3, fa3, fa4, rne
	fadd.s	fa2, fa2, fa3, rne
	flw	fa3, a0, 8
	flw	fa4, a1, 8
	fmul.s	fa3, fa3, fa4, rne
	fadd.s	fa2, fa2, fa3, rne
	fsw	sp, fa0, 192
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	ra, 29072
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 192
	fsw	sp, fa0, 200
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 28968
	addi	sp, sp, -212
	lw	ra, sp, 208
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 76
	lw	a0, sp, 80
	flw	fa0, a0, 0
	lw	a1, sp, 40
	flw	fa1, a1, 0
	flw	fa2, sp, 192
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 0
	flw	fa0, a0, 4
	flw	fa1, a1, 4
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 4
	flw	fa0, a0, 8
	flw	fa1, a1, 8
	fmul.s	fa1, fa2, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	fsw	a0, fa0, 8
	flw	fa0, sp, 200
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 28860
	addi	sp, sp, -212
	lw	ra, sp, 208
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 96
	flw	fa0, sp, 200
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 28880
	addi	sp, sp, -212
	lw	ra, sp, 208
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 28860
	addi	sp, sp, -212
	lw	ra, sp, 208
	flw	fa1, sp, 184
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 80
	flw	fa2, a0, 0
	fadd.s	fa2, fa2, fa0, rne
	fsw	a0, fa2, 0
	flw	fa2, a0, 4
	fadd.s	fa2, fa2, fa0, rne
	fsw	a0, fa2, 4
	flw	fa2, a0, 8
	fadd.s	fa0, fa2, fa0, rne
	fsw	a0, fa0, 8
	jal	zero, 4
	lw	a0, sp, 56
	flw	fa0, a0, 0
	lw	a1, sp, 20
	fsw	a1, fa0, 0
	flw	fa0, a0, 4
	fsw	a1, fa0, 4
	flw	fa0, a0, 8
	fsw	a1, fa0, 8
	lw	a1, sp, 16
	lw	a1, a1, 0
	addi	a1, a1, -1
	lw	a21, sp, 12
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a0, sp, 4
	lw	a0, a0, 0
	addi	a0, a0, -1
	flw	fa0, sp, 144
	flw	fa1, sp, 184
	lw	a1, sp, 100
	lw	a21, sp, 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	lui	a0, 0
	addi	a0, a0, 60
	flw	fa0, a0, 0
	flw	fa1, sp, 88
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 28584
	addi	sp, sp, -212
	lw	ra, sp, 208
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	addi	a0, zero, 4
	lw	a1, sp, 108
	blt	a1, a0, 8
	jal	zero, 28
	addi	a0, a1, 1
	addi	a2, zero, -1
	slli	a0, a0, 2
	lw	a3, sp, 104
	add	t0, a3, a0
	sw	t0, a2, 0
	addi	a0, zero, 2
	lw	a2, sp, 136
	bne	a2, a0, 100
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	lw	a0, sp, 156
	lw	a0, a0, 28
	flw	fa1, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 88
	fmul.s	fa0, fa1, fa0, rne
	addi	a0, a1, 1
	lw	a1, sp, 112
	flw	fa1, a1, 0
	flw	fa2, sp, 24
	fadd.s	fa1, fa2, fa1, rne
	lw	a1, sp, 100
	lw	a2, sp, 44
	lw	a21, sp, 8
	sw	sp, ra, 208
	addi	sp, sp, 212
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -212
	lw	ra, sp, 208
	jal	zero, 4
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a1, a21, 56
	lw	a2, a21, 52
	lw	a3, a21, 48
	lw	a4, a21, 44
	lw	a5, a21, 40
	lw	a6, a21, 36
	lw	a7, a21, 32
	lw	a8, a21, 28
	lw	a9, a21, 24
	lw	a10, a21, 20
	lw	a11, a21, 16
	lw	a12, a21, 12
	lw	a13, a21, 8
	lw	a14, a21, 4
	lui	a15, 0
	addi	a15, a15, 124
	flw	fa1, a15, 0
	fsw	a3, fa1, 0
	addi	a15, zero, 0
	lw	a16, a6, 0
	sw	sp, a4, 0
	sw	sp, a14, 4
	fsw	sp, fa0, 8
	sw	sp, a9, 16
	sw	sp, a5, 20
	sw	sp, a6, 24
	sw	sp, a11, 28
	sw	sp, a1, 32
	sw	sp, a13, 36
	sw	sp, a8, 40
	sw	sp, a10, 44
	sw	sp, a0, 48
	sw	sp, a7, 52
	sw	sp, a12, 56
	sw	sp, a3, 60
	addi	a1, a16, 0
	addi	a21, a2, 0
	addi	a2, a0, 0
	addi	a0, a15, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60
	flw	fa1, a0, 0
	lui	a0, 0
	addi	a0, a0, 128
	flw	fa0, a0, 0
	fsw	sp, fa1, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 28192
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 12
	addi	a0, zero, 0
	jal	zero, 40
	lui	a0, 0
	addi	a0, a0, 120
	flw	fa1, a0, 0
	flw	fa0, sp, 64
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 28140
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 0
	bne	a0, a1, 8
	jalr	zero, ra, 0
	lw	a0, sp, 56
	lw	a0, a0, 0
	slli	a0, a0, 2
	lw	a1, sp, 52
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a1, sp, 48
	lw	a1, a1, 0
	lw	a2, a0, 4
	addi	a3, zero, 1
	sw	sp, a0, 72
	bne	a2, a3, 216
	lw	a2, sp, 44
	lw	a2, a2, 0
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	lw	a3, sp, 40
	fsw	a3, fa0, 0
	fsw	a3, fa0, 4
	fsw	a3, fa0, 8
	addi	a4, a2, -1
	addi	a2, a2, -1
	slli	a2, a2, 2
	add	t0, a1, a2
	flw	fa0, t0, 0
	sw	sp, a4, 76
	fsw	sp, fa0, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 28028
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 68
	flw	fa0, sp, 80
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 27972
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 160
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa0, a0, 0
	jal	zero, 16
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 27972
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 76
	slli	a0, a0, 2
	lw	a1, sp, 40
	add	t0, a1, a0
	fsw	t0, fa0, 0
	jal	zero, 160
	addi	a1, zero, 2
	bne	a2, a1, 124
	lw	a1, a0, 16
	flw	fa0, a1, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 27912
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 40
	fsw	a0, fa0, 0
	lw	a1, sp, 72
	lw	a2, a1, 16
	flw	fa0, a2, 4
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 27872
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 40
	fsw	a0, fa0, 4
	lw	a1, sp, 72
	lw	a2, a1, 16
	flw	fa0, a2, 8
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 27832
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 40
	fsw	a0, fa0, 8
	jal	zero, 32
	lw	a21, sp, 36
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 72
	lw	a1, sp, 28
	lw	a21, sp, 32
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a0, zero, 0
	lw	a1, sp, 24
	lw	a1, a1, 0
	lw	a21, sp, 20
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 0
	bne	a0, a1, 224
	lw	a0, sp, 40
	flw	fa0, a0, 0
	lw	a1, sp, 16
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
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 27636
	addi	sp, sp, -92
	lw	ra, sp, 88
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 27540
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	jal	zero, 8
	flw	fa0, sp, 88
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 72
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
	lw	a4, a21, 52
	lw	a5, a21, 48
	lw	a6, a21, 44
	lw	a7, a21, 40
	lw	a8, a21, 36
	lw	a9, a21, 32
	lw	a10, a21, 28
	lw	a11, a21, 24
	lw	a12, a21, 20
	lw	a13, a21, 16
	lw	a14, a21, 12
	lw	a15, a21, 8
	lw	a16, a21, 4
	addi	a17, zero, 0
	blt	a3, a17, 1404
	slli	a17, a3, 2
	add	t0, a0, a17
	lw	a17, t0, 0
	lw	a17, a17, 0
	flw	fa0, a17, 0
	flw	fa1, a1, 0
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, a17, 4
	flw	fa2, a1, 4
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	flw	fa1, a17, 8
	flw	fa2, a1, 8
	fmul.s	fa1, fa1, fa2, rne
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, a2, 0
	sw	sp, a21, 4
	sw	sp, a5, 8
	sw	sp, a1, 12
	sw	sp, a6, 16
	sw	sp, a16, 20
	sw	sp, a11, 24
	sw	sp, a10, 28
	sw	sp, a7, 32
	sw	sp, a8, 36
	sw	sp, a13, 40
	sw	sp, a4, 44
	sw	sp, a15, 48
	sw	sp, a9, 52
	sw	sp, a14, 56
	sw	sp, a12, 60
	fsw	sp, fa0, 64
	sw	sp, a0, 72
	sw	sp, a3, 76
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 27208
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 468
	lw	a0, sp, 76
	slli	a1, a0, 2
	lw	a2, sp, 72
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 0
	addi	a3, a3, 52
	flw	fa0, a3, 0
	flw	fa1, sp, 64
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 60
	fsw	sp, fa0, 80
	sw	sp, a1, 88
	addi	a0, a1, 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 372
	lw	a0, sp, 56
	lw	a0, a0, 0
	slli	a0, a0, 2
	lw	a1, sp, 52
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a1, sp, 88
	lw	a1, a1, 0
	lw	a21, sp, 48
	sw	sp, a0, 92
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 92
	lw	a1, sp, 40
	lw	a21, sp, 44
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a0, zero, 0
	lw	a1, sp, 36
	lw	a1, a1, 0
	lw	a21, sp, 32
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 224
	lw	a0, sp, 28
	flw	fa0, a0, 0
	lw	a1, sp, 24
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
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 26948
	addi	sp, sp, -100
	lw	ra, sp, 96
	fsw	sp, fa0, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 26852
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	jal	zero, 8
	flw	fa0, sp, 96
	flw	fa1, sp, 80
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 92
	lw	a0, a0, 28
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 20
	flw	fa1, a0, 0
	lw	a1, sp, 16
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
	jal	zero, 4
	jal	zero, 468
	lw	a0, sp, 76
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, sp, 72
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 0
	addi	a3, a3, 56
	flw	fa0, a3, 0
	flw	fa1, sp, 64
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 60
	fsw	sp, fa0, 104
	sw	sp, a1, 112
	addi	a0, a1, 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 372
	lw	a0, sp, 56
	lw	a0, a0, 0
	slli	a0, a0, 2
	lw	a1, sp, 52
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a1, sp, 112
	lw	a1, a1, 0
	lw	a21, sp, 48
	sw	sp, a0, 116
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a0, sp, 116
	lw	a1, sp, 40
	lw	a21, sp, 44
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a0, zero, 0
	lw	a1, sp, 36
	lw	a1, a1, 0
	lw	a21, sp, 32
	sw	sp, ra, 120
	addi	sp, sp, 124
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, zero, 0
	bne	a0, a1, 224
	lw	a0, sp, 28
	flw	fa0, a0, 0
	lw	a1, sp, 24
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
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 26480
	addi	sp, sp, -124
	lw	ra, sp, 120
	fsw	sp, fa0, 120
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 26384
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, zero, 0
	bne	a0, a1, 20
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	jal	zero, 8
	flw	fa0, sp, 120
	flw	fa1, sp, 104
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 116
	lw	a0, a0, 28
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 20
	flw	fa1, a0, 0
	lw	a1, sp, 16
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
	jal	zero, 4
	lw	a0, sp, 76
	addi	a0, a0, -2
	addi	a1, zero, 0
	blt	a0, a1, 292
	slli	a1, a0, 2
	lw	a2, sp, 72
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
	fsw	sp, fa0, 128
	sw	sp, a0, 136
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	ra, 26160
	addi	sp, sp, -144
	lw	ra, sp, 140
	addi	a1, zero, 0
	bne	a0, a1, 80
	lw	a0, sp, 136
	slli	a1, a0, 2
	lw	a2, sp, 72
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 0
	addi	a3, a3, 52
	flw	fa0, a3, 0
	flw	fa1, sp, 128
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 140
	addi	sp, sp, 144
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -144
	lw	ra, sp, 140
	jal	zero, 80
	lw	a0, sp, 136
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, sp, 72
	add	t0, a2, a1
	lw	a1, t0, 0
	lui	a3, 0
	addi	a3, a3, 56
	flw	fa0, a3, 0
	flw	fa1, sp, 128
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 140
	addi	sp, sp, 144
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 136
	addi	a3, a0, -2
	lw	a0, sp, 72
	lw	a1, sp, 12
	lw	a2, sp, 0
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a3, a21, 20
	lw	a4, a21, 16
	lw	a5, a21, 12
	lw	a6, a21, 8
	lw	a7, a21, 4
	addi	a8, zero, 0
	sw	sp, a1, 0
	sw	sp, a6, 4
	sw	sp, a4, 8
	sw	sp, a5, 12
	sw	sp, a3, 16
	sw	sp, a2, 20
	sw	sp, a7, 24
	sw	sp, a0, 28
	bne	a0, a8, 8
	jal	zero, 124
	lw	a8, a7, 0
	flw	fa0, a2, 0
	fsw	a3, fa0, 0
	flw	fa0, a2, 4
	fsw	a3, fa0, 4
	flw	fa0, a2, 8
	fsw	a3, fa0, 8
	lw	a9, a5, 0
	addi	a9, a9, -1
	sw	sp, a8, 32
	addi	a1, a9, 0
	addi	a0, a2, 0
	addi	a21, a4, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a3, zero, 118
	lw	a0, sp, 32
	lw	a1, sp, 0
	lw	a2, sp, 20
	lw	a21, sp, 4
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a0, zero, 1
	lw	a1, sp, 28
	bne	a1, a0, 8
	jal	zero, 140
	lw	a0, sp, 24
	lw	a2, a0, 4
	lw	a3, sp, 20
	flw	fa0, a3, 0
	lw	a4, sp, 16
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lw	a5, sp, 12
	lw	a6, a5, 0
	addi	a6, a6, -1
	lw	a21, sp, 8
	sw	sp, a2, 36
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a3, zero, 118
	lw	a0, sp, 36
	lw	a1, sp, 0
	lw	a2, sp, 20
	lw	a21, sp, 4
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a0, zero, 2
	lw	a1, sp, 28
	bne	a1, a0, 8
	jal	zero, 140
	lw	a0, sp, 24
	lw	a2, a0, 8
	lw	a3, sp, 20
	flw	fa0, a3, 0
	lw	a4, sp, 16
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lw	a5, sp, 12
	lw	a6, a5, 0
	addi	a6, a6, -1
	lw	a21, sp, 8
	sw	sp, a2, 40
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a3, zero, 118
	lw	a0, sp, 40
	lw	a1, sp, 0
	lw	a2, sp, 20
	lw	a21, sp, 4
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a0, zero, 3
	lw	a1, sp, 28
	bne	a1, a0, 8
	jal	zero, 140
	lw	a0, sp, 24
	lw	a2, a0, 12
	lw	a3, sp, 20
	flw	fa0, a3, 0
	lw	a4, sp, 16
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lw	a5, sp, 12
	lw	a6, a5, 0
	addi	a6, a6, -1
	lw	a21, sp, 8
	sw	sp, a2, 44
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a3, zero, 118
	lw	a0, sp, 44
	lw	a1, sp, 0
	lw	a2, sp, 20
	lw	a21, sp, 4
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 4
	lw	a1, sp, 28
	bne	a1, a0, 8
	jalr	zero, ra, 0
	lw	a0, sp, 24
	lw	a0, a0, 16
	lw	a1, sp, 20
	flw	fa0, a1, 0
	lw	a2, sp, 16
	fsw	a2, fa0, 0
	flw	fa0, a1, 4
	fsw	a2, fa0, 4
	flw	fa0, a1, 8
	fsw	a2, fa0, 8
	lw	a2, sp, 12
	lw	a2, a2, 0
	addi	a2, a2, -1
	lw	a21, sp, 8
	sw	sp, a0, 48
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a3, zero, 118
	lw	a0, sp, 48
	lw	a1, sp, 0
	lw	a2, sp, 20
	lw	a21, sp, 4
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a2, a21, 32
	lw	a3, a21, 28
	lw	a4, a21, 24
	lw	a5, a21, 20
	lw	a6, a21, 16
	lw	a7, a21, 12
	lw	a8, a21, 8
	lw	a9, a21, 4
	lw	a10, a0, 20
	lw	a11, a0, 28
	lw	a12, a0, 4
	lw	a13, a0, 16
	slli	a14, a1, 2
	add	t0, a10, a14
	lw	a10, t0, 0
	flw	fa0, a10, 0
	fsw	a9, fa0, 0
	flw	fa0, a10, 4
	fsw	a9, fa0, 4
	flw	fa0, a10, 8
	fsw	a9, fa0, 8
	lw	a0, a0, 24
	lw	a0, a0, 0
	slli	a10, a1, 2
	add	t0, a11, a10
	lw	a10, t0, 0
	slli	a11, a1, 2
	add	t0, a12, a11
	lw	a11, t0, 0
	addi	a12, zero, 0
	sw	sp, a9, 0
	sw	sp, a5, 4
	sw	sp, a13, 8
	sw	sp, a1, 12
	sw	sp, a7, 16
	sw	sp, a2, 20
	sw	sp, a10, 24
	sw	sp, a4, 28
	sw	sp, a6, 32
	sw	sp, a3, 36
	sw	sp, a11, 40
	sw	sp, a8, 44
	sw	sp, a0, 48
	bne	a0, a12, 8
	jal	zero, 340
	lw	a12, a8, 0
	flw	fa0, a11, 0
	fsw	a3, fa0, 0
	flw	fa0, a11, 4
	fsw	a3, fa0, 4
	flw	fa0, a11, 8
	fsw	a3, fa0, 8
	lw	a14, a6, 0
	addi	a14, a14, -1
	sw	sp, a12, 52
	addi	a1, a14, 0
	addi	a0, a11, 0
	addi	a21, a4, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
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
	fsw	sp, fa0, 56
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 24844
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 52
	lw	a1, a0, 472
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	flw	fa1, sp, 56
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	jal	zero, 64
	lw	a0, sp, 52
	lw	a1, a0, 476
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	flw	fa1, sp, 56
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a3, zero, 116
	lw	a0, sp, 52
	lw	a1, sp, 24
	lw	a2, sp, 40
	lw	a21, sp, 16
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a0, zero, 1
	lw	a1, sp, 48
	bne	a1, a0, 8
	jal	zero, 356
	lw	a0, sp, 44
	lw	a2, a0, 4
	lw	a3, sp, 40
	flw	fa0, a3, 0
	lw	a4, sp, 36
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lw	a5, sp, 32
	lw	a6, a5, 0
	addi	a6, a6, -1
	lw	a21, sp, 28
	sw	sp, a2, 64
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64
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
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 24476
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 64
	lw	a1, a0, 472
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	flw	fa1, sp, 72
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	jal	zero, 64
	lw	a0, sp, 64
	lw	a1, a0, 476
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	flw	fa1, sp, 72
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a3, zero, 116
	lw	a0, sp, 64
	lw	a1, sp, 24
	lw	a2, sp, 40
	lw	a21, sp, 16
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a0, zero, 2
	lw	a1, sp, 48
	bne	a1, a0, 8
	jal	zero, 356
	lw	a0, sp, 44
	lw	a2, a0, 8
	lw	a3, sp, 40
	flw	fa0, a3, 0
	lw	a4, sp, 36
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lw	a5, sp, 32
	lw	a6, a5, 0
	addi	a6, a6, -1
	lw	a21, sp, 28
	sw	sp, a2, 80
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 80
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
	fsw	sp, fa0, 88
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 24108
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 80
	lw	a1, a0, 472
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	flw	fa1, sp, 88
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	jal	zero, 64
	lw	a0, sp, 80
	lw	a1, a0, 476
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	flw	fa1, sp, 88
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a3, zero, 116
	lw	a0, sp, 80
	lw	a1, sp, 24
	lw	a2, sp, 40
	lw	a21, sp, 16
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a0, zero, 3
	lw	a1, sp, 48
	bne	a1, a0, 8
	jal	zero, 356
	lw	a0, sp, 44
	lw	a2, a0, 12
	lw	a3, sp, 40
	flw	fa0, a3, 0
	lw	a4, sp, 36
	fsw	a4, fa0, 0
	flw	fa0, a3, 4
	fsw	a4, fa0, 4
	flw	fa0, a3, 8
	fsw	a4, fa0, 8
	lw	a5, sp, 32
	lw	a6, a5, 0
	addi	a6, a6, -1
	lw	a21, sp, 28
	sw	sp, a2, 96
	addi	a1, a6, 0
	addi	a0, a3, 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 96
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
	fsw	sp, fa0, 104
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 23740
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 96
	lw	a1, a0, 472
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	flw	fa1, sp, 104
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	jal	zero, 64
	lw	a0, sp, 96
	lw	a1, a0, 476
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	flw	fa1, sp, 104
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a3, zero, 116
	lw	a0, sp, 96
	lw	a1, sp, 24
	lw	a2, sp, 40
	lw	a21, sp, 16
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a0, zero, 4
	lw	a1, sp, 48
	bne	a1, a0, 8
	jal	zero, 356
	lw	a0, sp, 44
	lw	a0, a0, 16
	lw	a1, sp, 40
	flw	fa0, a1, 0
	lw	a2, sp, 36
	fsw	a2, fa0, 0
	flw	fa0, a1, 4
	fsw	a2, fa0, 4
	flw	fa0, a1, 8
	fsw	a2, fa0, 8
	lw	a2, sp, 32
	lw	a2, a2, 0
	addi	a2, a2, -1
	lw	a21, sp, 28
	sw	sp, a0, 112
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	lw	a0, sp, 112
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
	fsw	sp, fa0, 120
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 23372
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 112
	lw	a1, a0, 472
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	flw	fa1, sp, 120
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	jal	zero, 64
	lw	a0, sp, 112
	lw	a1, a0, 476
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	flw	fa1, sp, 120
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 20
	addi	a0, a1, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a3, zero, 116
	lw	a0, sp, 112
	lw	a1, sp, 24
	lw	a2, sp, 40
	lw	a21, sp, 16
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 12
	slli	a0, a0, 2
	lw	a1, sp, 8
	add	t0, a1, a0
	lw	a1, t0, 0
	lw	a0, sp, 4
	lw	a2, sp, 0
	jal	zero, -34000
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
	jal	zero, -34412
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
	jal	ra, -34688
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
	sw	sp, a0, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 21420
	addi	sp, sp, -8
	lw	ra, sp, 4
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
	jal	ra, 23860
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 23496
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa0, a0, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 21316
	addi	sp, sp, -8
	lw	ra, sp, 4
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
	jal	ra, 23756
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 32
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 23392
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0
	flw	fa0, a0, 8
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 21212
	addi	sp, sp, -8
	lw	ra, sp, 4
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
	jal	ra, 23652
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a0, zero, 10
	jal	zero, 23296
	lw	a2, a21, 28
	lw	a3, a21, 24
	lw	a4, a21, 20
	lw	a5, a21, 16
	lw	a6, a21, 12
	lw	a7, a21, 8
	lw	a8, a21, 4
	addi	a9, zero, 4
	blt	a9, a1, 940
	lw	a9, a0, 8
	slli	a10, a1, 2
	add	t0, a9, a10
	lw	a9, t0, 0
	addi	a10, zero, 0
	blt	a9, a10, 912
	lw	a9, a0, 12
	slli	a10, a1, 2
	add	t0, a9, a10
	lw	a9, t0, 0
	addi	a10, zero, 0
	sw	sp, a21, 0
	sw	sp, a6, 4
	sw	sp, a2, 8
	sw	sp, a4, 12
	sw	sp, a5, 16
	sw	sp, a3, 20
	sw	sp, a7, 24
	sw	sp, a8, 28
	sw	sp, a1, 32
	bne	a9, a10, 8
	jal	zero, 260
	lw	a9, a0, 24
	lw	a9, a9, 0
	lui	a10, 0
	addi	a10, a10, 144
	flw	fa0, a10, 0
	fsw	a8, fa0, 0
	fsw	a8, fa0, 4
	fsw	a8, fa0, 8
	lw	a10, a0, 28
	lw	a11, a0, 4
	slli	a9, a9, 2
	add	t0, a7, a9
	lw	a9, t0, 0
	slli	a12, a1, 2
	add	t0, a10, a12
	lw	a10, t0, 0
	slli	a12, a1, 2
	add	t0, a11, a12
	lw	a11, t0, 0
	flw	fa0, a11, 0
	fsw	a3, fa0, 0
	flw	fa0, a11, 4
	fsw	a3, fa0, 4
	flw	fa0, a11, 8
	fsw	a3, fa0, 8
	lw	a12, a5, 0
	addi	a12, a12, -1
	sw	sp, a0, 36
	sw	sp, a11, 40
	sw	sp, a10, 44
	sw	sp, a9, 48
	addi	a1, a12, 0
	addi	a0, a11, 0
	addi	a21, a4, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a3, zero, 118
	lw	a0, sp, 48
	lw	a1, sp, 44
	lw	a2, sp, 40
	lw	a21, sp, 4
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 36
	lw	a1, a0, 20
	lw	a2, sp, 32
	slli	a3, a2, 2
	add	t0, a1, a3
	lw	a1, t0, 0
	lw	a3, sp, 28
	flw	fa0, a3, 0
	fsw	a1, fa0, 0
	flw	fa0, a3, 4
	fsw	a1, fa0, 4
	flw	fa0, a3, 8
	fsw	a1, fa0, 8
	lw	a1, sp, 32
	addi	a1, a1, 1
	addi	a2, zero, 4
	blt	a2, a1, 572
	lw	a2, a0, 8
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	addi	a3, zero, 0
	blt	a2, a3, 544
	lw	a2, a0, 12
	slli	a3, a1, 2
	add	t0, a2, a3
	lw	a2, t0, 0
	addi	a3, zero, 0
	sw	sp, a1, 52
	bne	a2, a3, 8
	jal	zero, 492
	lw	a2, a0, 24
	lw	a2, a2, 0
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	lw	a3, sp, 28
	fsw	a3, fa0, 0
	fsw	a3, fa0, 4
	fsw	a3, fa0, 8
	lw	a4, a0, 28
	lw	a5, a0, 4
	slli	a2, a2, 2
	lw	a6, sp, 24
	add	t0, a6, a2
	lw	a2, t0, 0
	slli	a6, a1, 2
	add	t0, a4, a6
	lw	a4, t0, 0
	slli	a6, a1, 2
	add	t0, a5, a6
	lw	a5, t0, 0
	flw	fa0, a5, 0
	lw	a6, sp, 20
	fsw	a6, fa0, 0
	flw	fa0, a5, 4
	fsw	a6, fa0, 4
	flw	fa0, a5, 8
	fsw	a6, fa0, 8
	lw	a6, sp, 16
	lw	a6, a6, 0
	addi	a6, a6, -1
	lw	a21, sp, 12
	sw	sp, a0, 36
	sw	sp, a5, 56
	sw	sp, a4, 60
	sw	sp, a2, 64
	addi	a1, a6, 0
	addi	a0, a5, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 60
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
	fsw	sp, fa0, 72
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 20352
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 64
	lw	a1, a0, 472
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	flw	fa1, sp, 72
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	jal	zero, 64
	lw	a0, sp, 64
	lw	a1, a0, 476
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	flw	fa1, sp, 72
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 8
	addi	a0, a1, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a3, zero, 116
	lw	a0, sp, 64
	lw	a1, sp, 60
	lw	a2, sp, 56
	lw	a21, sp, 4
	sw	sp, ra, 80
	addi	sp, sp, 84
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 36
	lw	a1, a0, 20
	lw	a2, sp, 52
	slli	a3, a2, 2
	add	t0, a1, a3
	lw	a1, t0, 0
	lw	a3, sp, 28
	flw	fa0, a3, 0
	fsw	a1, fa0, 0
	flw	fa0, a3, 4
	fsw	a1, fa0, 4
	flw	fa0, a3, 8
	fsw	a1, fa0, 8
	lw	a1, sp, 52
	addi	a1, a1, 1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
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
	addi	a19, zero, 0
	blt	a1, a19, 1080
	flw	fa3, a10, 0
	lw	a10, a16, 0
	sub	a10, a1, a10
	sw	sp, a21, 0
	sw	sp, a13, 4
	sw	sp, a15, 8
	sw	sp, a5, 12
	sw	sp, a8, 16
	sw	sp, a14, 20
	sw	sp, a6, 24
	sw	sp, a17, 28
	sw	sp, a18, 32
	sw	sp, a2, 36
	sw	sp, a4, 40
	sw	sp, a0, 44
	sw	sp, a1, 48
	sw	sp, a7, 52
	sw	sp, a3, 56
	sw	sp, a11, 60
	fsw	sp, fa2, 64
	fsw	sp, fa1, 72
	sw	sp, a12, 80
	fsw	sp, fa0, 88
	sw	sp, a9, 96
	fsw	sp, fa3, 104
	addi	a0, a10, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 19988
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104
	fmul.s	fa0, fa1, fa0, rne
	lw	a0, sp, 96
	flw	fa1, a0, 0
	fmul.s	fa1, fa0, fa1, rne
	flw	fa2, sp, 88
	fadd.s	fa1, fa1, fa2, rne
	lw	a1, sp, 80
	fsw	a1, fa1, 0
	flw	fa1, a0, 4
	fmul.s	fa1, fa0, fa1, rne
	flw	fa3, sp, 72
	fadd.s	fa1, fa1, fa3, rne
	fsw	a1, fa1, 4
	flw	fa1, a0, 8
	fmul.s	fa0, fa0, fa1, rne
	flw	fa1, sp, 64
	fadd.s	fa0, fa0, fa1, rne
	fsw	a1, fa0, 8
	addi	a0, zero, 0
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -37664
	addi	sp, sp, -116
	lw	ra, sp, 112
	lui	a0, 0
	addi	a0, a0, 144
	flw	fa0, a0, 0
	lw	a0, sp, 60
	fsw	a0, fa0, 0
	fsw	a0, fa0, 4
	fsw	a0, fa0, 8
	lw	a1, sp, 56
	flw	fa0, a1, 0
	lw	a2, sp, 52
	fsw	a2, fa0, 0
	flw	fa0, a1, 4
	fsw	a2, fa0, 4
	flw	fa0, a1, 8
	fsw	a2, fa0, 8
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 164
	flw	fa0, a2, 0
	lw	a2, sp, 48
	slli	a3, a2, 2
	lw	a4, sp, 44
	add	t0, a4, a3
	lw	a3, t0, 0
	lui	a5, 0
	addi	a5, a5, 144
	flw	fa1, a5, 0
	lw	a5, sp, 80
	lw	a21, sp, 40
	addi	a2, a3, 0
	addi	a0, a1, 0
	addi	a1, a5, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a0, sp, 48
	slli	a1, a0, 2
	lw	a2, sp, 44
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	lw	a3, sp, 60
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
	lw	a3, sp, 36
	sw	a1, a3, 0
	slli	a1, a0, 2
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a4, a1, 8
	lw	a4, a4, 0
	addi	a5, zero, 0
	blt	a4, a5, 524
	lw	a4, a1, 12
	lw	a4, a4, 0
	addi	a5, zero, 0
	sw	sp, a1, 112
	bne	a4, a5, 8
	jal	zero, 460
	lw	a4, a1, 24
	lw	a4, a4, 0
	lui	a5, 0
	addi	a5, a5, 144
	flw	fa0, a5, 0
	lw	a5, sp, 32
	fsw	a5, fa0, 0
	fsw	a5, fa0, 4
	fsw	a5, fa0, 8
	lw	a6, a1, 28
	lw	a7, a1, 4
	slli	a4, a4, 2
	lw	a8, sp, 28
	add	t0, a8, a4
	lw	a4, t0, 0
	lw	a6, a6, 0
	lw	a7, a7, 0
	flw	fa0, a7, 0
	lw	a8, sp, 24
	fsw	a8, fa0, 0
	flw	fa0, a7, 4
	fsw	a8, fa0, 4
	flw	fa0, a7, 8
	fsw	a8, fa0, 8
	lw	a8, sp, 20
	lw	a8, a8, 0
	addi	a8, a8, -1
	lw	a21, sp, 16
	sw	sp, a7, 116
	sw	sp, a6, 120
	sw	sp, a4, 124
	addi	a1, a8, 0
	addi	a0, a7, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 124
	lw	a1, a0, 472
	lw	a1, a1, 0
	flw	fa0, a1, 0
	lw	a2, sp, 120
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
	fsw	sp, fa0, 128
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 19260
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, zero, 0
	bne	a0, a1, 68
	lw	a0, sp, 124
	lw	a1, a0, 472
	lui	a2, 0
	addi	a2, a2, 52
	flw	fa0, a2, 0
	flw	fa1, sp, 128
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 12
	addi	a0, a1, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	jal	zero, 64
	lw	a0, sp, 124
	lw	a1, a0, 476
	lui	a2, 0
	addi	a2, a2, 56
	flw	fa0, a2, 0
	flw	fa1, sp, 128
	fdiv.s	fa0, fa1, fa0, rne
	lw	a21, sp, 12
	addi	a0, a1, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a3, zero, 116
	lw	a0, sp, 124
	lw	a1, sp, 120
	lw	a2, sp, 116
	lw	a21, sp, 8
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a0, sp, 112
	lw	a1, a0, 20
	lw	a1, a1, 0
	lw	a2, sp, 32
	flw	fa0, a2, 0
	fsw	a1, fa0, 0
	flw	fa0, a2, 4
	fsw	a1, fa0, 4
	flw	fa0, a2, 8
	fsw	a1, fa0, 8
	addi	a1, zero, 1
	lw	a0, sp, 112
	lw	a21, sp, 4
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	jal	zero, 4
	lw	a0, sp, 48
	addi	a1, a0, -1
	lw	a0, sp, 36
	addi	a0, a0, 1
	addi	a2, zero, 5
	blt	a0, a2, 12
	addi	a2, a0, -5
	jal	zero, 8
	addi	a2, a0, 0
	flw	fa0, sp, 88
	flw	fa1, sp, 72
	flw	fa2, sp, 64
	lw	a0, sp, 44
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
	jal	ra, 18944
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
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 18080
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 255
	blt	a1, a0, 24
	addi	a1, zero, 0
	blt	a0, a1, 8
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 255
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 20520
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 32
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 20156
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40
	flw	fa0, a0, 4
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17976
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 255
	blt	a1, a0, 24
	addi	a1, zero, 0
	blt	a0, a1, 8
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 255
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 20416
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 32
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 20052
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 40
	flw	fa0, a0, 8
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 17872
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 255
	blt	a1, a0, 24
	addi	a1, zero, 0
	blt	a0, a1, 8
	jal	zero, 8
	addi	a0, zero, 0
	jal	zero, 8
	addi	a0, zero, 255
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 20312
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a0, zero, 10
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 19948
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
	addi	a1, a1, 144
	flw	fa0, a1, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 18920
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, a0, 0
	addi	a0, zero, 5
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 18864
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 18848
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 4
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 18804
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 8
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 18760
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0
	sw	a1, a0, 12
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 18716
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
	addi	a3, a3, 144
	flw	fa0, a3, 0
	sw	sp, a0, 0
	sw	sp, a1, 4
	addi	a0, a2, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 18644
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
	jal	ra, 18552
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 16
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 18512
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
	jal	ra, 18424
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
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 36
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 18280
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
	jal	ra, 18188
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 48
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 18148
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
	jal	ra, 18060
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
	blt	a0, a4, 748
	sw	sp, a2, 0
	sw	sp, a3, 4
	sw	sp, a1, 8
	fsw	sp, fa0, 16
	fsw	sp, fa1, 24
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 15656
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24
	fsw	sp, fa0, 32
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 15624
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32
	fadd.s	fa0, fa1, fa0, rne
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa1, a0, 0
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 15604
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 16
	fdiv.s	fa1, fa1, fa0, rne
	flw	fa2, sp, 24
	fdiv.s	fa2, fa2, fa0, rne
	lui	a0, 0
	addi	a0, a0, 164
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
	lw	a2, a2, 0
	fsw	a2, fa1, 0
	fsw	a2, fa2, 4
	fsw	a2, fa0, 8
	addi	a2, a1, 40
	slli	a2, a2, 2
	add	t0, a0, a2
	lw	a2, t0, 0
	lw	a2, a2, 0
	fsw	sp, fa2, 40
	sw	sp, a0, 48
	fsw	sp, fa0, 56
	sw	sp, a2, 64
	fsw	sp, fa1, 72
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 15448
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 64
	flw	fa1, sp, 72
	fsw	a0, fa1, 0
	flw	fa2, sp, 56
	fsw	a0, fa2, 4
	fsw	a0, fa0, 8
	lw	a0, sp, 0
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, sp, 48
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	sw	sp, a1, 80
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, 15368
	addi	sp, sp, -88
	lw	ra, sp, 84
	flw	fa1, sp, 40
	fsw	sp, fa0, 88
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 15336
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 80
	flw	fa1, sp, 56
	fsw	a0, fa1, 0
	flw	fa2, sp, 88
	fsw	a0, fa2, 4
	fsw	a0, fa0, 8
	lw	a0, sp, 0
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, sp, 48
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	flw	fa0, sp, 72
	sw	sp, a1, 96
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	ra, 15256
	addi	sp, sp, -104
	lw	ra, sp, 100
	flw	fa1, sp, 40
	fsw	sp, fa0, 104
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 15224
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 56
	fsw	sp, fa0, 112
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 15192
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a0, sp, 96
	flw	fa1, sp, 104
	fsw	a0, fa1, 0
	flw	fa1, sp, 112
	fsw	a0, fa1, 4
	fsw	a0, fa0, 8
	lw	a0, sp, 0
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, sp, 48
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a1, a1, 0
	flw	fa0, sp, 72
	sw	sp, a1, 120
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, 15112
	addi	sp, sp, -128
	lw	ra, sp, 124
	flw	fa1, sp, 56
	fsw	sp, fa0, 128
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 15080
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a0, sp, 120
	flw	fa1, sp, 128
	fsw	a0, fa1, 0
	fsw	a0, fa0, 4
	flw	fa0, sp, 40
	fsw	a0, fa0, 8
	lw	a0, sp, 0
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, sp, 48
	add	t0, a1, a0
	lw	a0, t0, 0
	lw	a0, a0, 0
	flw	fa1, sp, 56
	sw	sp, a0, 136
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	ra, 14996
	addi	sp, sp, -144
	lw	ra, sp, 140
	lw	a0, sp, 136
	fsw	a0, fa0, 0
	flw	fa0, sp, 72
	fsw	a0, fa0, 4
	flw	fa0, sp, 40
	fsw	a0, fa0, 8
	jalr	zero, ra, 0
	fmul.s	fa0, fa1, fa1, rne
	lui	a3, 0
	addi	a3, a3, 60
	flw	fa1, a3, 0
	fadd.s	fa0, fa0, fa1, rne
	sw	sp, a2, 0
	sw	sp, a1, 8
	sw	sp, a21, 140
	fsw	sp, fa3, 144
	sw	sp, a0, 152
	fsw	sp, fa2, 160
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 14912
	addi	sp, sp, -172
	lw	ra, sp, 168
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa1, a0, 0
	fdiv.s	fa1, fa1, fa0, rne
	fsw	sp, fa0, 168
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	ra, 16672
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 160
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 176
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	ra, 15428
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 176
	fsw	sp, fa0, 184
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, 15888
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 184
	fdiv.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 168
	fmul.s	fa0, fa0, fa1, rne
	lw	a0, sp, 152
	addi	a0, a0, 1
	fmul.s	fa1, fa0, fa0, rne
	lui	a1, 0
	addi	a1, a1, 60
	flw	fa2, a1, 0
	fadd.s	fa1, fa1, fa2, rne
	fsw	sp, fa0, 192
	sw	sp, a0, 200
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	ra, 14728
	addi	sp, sp, -208
	lw	ra, sp, 204
	lui	a0, 0
	addi	a0, a0, 164
	flw	fa1, a0, 0
	fdiv.s	fa1, fa1, fa0, rne
	fsw	sp, fa0, 208
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 16488
	addi	sp, sp, -220
	lw	ra, sp, 216
	flw	fa1, sp, 144
	fmul.s	fa0, fa0, fa1, rne
	fsw	sp, fa0, 216
	sw	sp, ra, 224
	addi	sp, sp, 228
	jal	ra, 15244
	addi	sp, sp, -228
	lw	ra, sp, 224
	flw	fa1, sp, 216
	fsw	sp, fa0, 224
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	ra, 15704
	addi	sp, sp, -236
	lw	ra, sp, 232
	flw	fa1, sp, 224
	fdiv.s	fa0, fa1, fa0, rne
	flw	fa1, sp, 208
	fmul.s	fa1, fa0, fa1, rne
	flw	fa0, sp, 192
	flw	fa2, sp, 160
	flw	fa3, sp, 144
	lw	a0, sp, 200
	lw	a1, sp, 8
	lw	a2, sp, 0
	lw	a21, sp, 140
	lw	a20, a21, 0
	jalr	zero, a20, 0
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 332
	sw	sp, a21, 0
	sw	sp, a0, 4
	fsw	sp, fa0, 8
	sw	sp, a2, 16
	sw	sp, a1, 20
	sw	sp, a3, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 14540
	addi	sp, sp, -32
	lw	ra, sp, 28
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 44
	flw	fa1, a0, 0
	fsub.s	fa2, fa0, fa1, rne
	addi	a0, zero, 0
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa0, a1, 0
	lui	a1, 0
	addi	a1, a1, 144
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
	jal	ra, 14416
	addi	sp, sp, -32
	lw	ra, sp, 28
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 60
	flw	fa1, a0, 0
	fadd.s	fa2, fa0, fa1, rne
	addi	a0, zero, 0
	lui	a1, 0
	addi	a1, a1, 144
	flw	fa0, a1, 0
	lui	a1, 0
	addi	a1, a1, 144
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
	lw	a1, sp, 20
	addi	a1, a1, 1
	addi	a2, zero, 5
	blt	a1, a2, 12
	addi	a1, a1, -5
	jal	zero, 4
	flw	fa0, sp, 8
	lw	a2, sp, 16
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 324
	sw	sp, a21, 0
	sw	sp, a0, 4
	sw	sp, a2, 8
	sw	sp, a1, 12
	sw	sp, a3, 16
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 14200
	addi	sp, sp, -24
	lw	ra, sp, 20
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 44
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
	lw	a1, sp, 12
	addi	a1, a1, 2
	addi	a2, zero, 5
	blt	a1, a2, 12
	addi	a1, a1, -5
	jal	zero, 4
	lw	a2, sp, 8
	addi	a2, a2, 4
	addi	a3, zero, 0
	blt	a0, a3, 160
	sw	sp, a0, 20
	sw	sp, a2, 24
	sw	sp, a1, 28
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 14048
	addi	sp, sp, -36
	lw	ra, sp, 32
	lui	a0, 0
	addi	a0, a0, 48
	flw	fa1, a0, 0
	fmul.s	fa0, fa0, fa1, rne
	lui	a0, 0
	addi	a0, a0, 44
	flw	fa1, a0, 0
	fsub.s	fa0, fa0, fa1, rne
	addi	a0, zero, 4
	lw	a1, sp, 28
	lw	a2, sp, 24
	lw	a21, sp, 16
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 20
	addi	a0, a0, -1
	lw	a1, sp, 28
	addi	a1, a1, 2
	addi	a2, zero, 5
	blt	a1, a2, 12
	addi	a1, a1, -5
	jal	zero, 4
	lw	a2, sp, 24
	addi	a2, a2, 4
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 4
	addi	a3, zero, 0
	blt	a1, a3, 592
	addi	a3, zero, 3
	lui	a4, 0
	addi	a4, a4, 144
	flw	fa0, a4, 0
	sw	sp, a21, 0
	sw	sp, a0, 4
	sw	sp, a1, 8
	sw	sp, a2, 12
	addi	a0, a3, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 16036
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, a0, 0
	lw	a0, sp, 12
	lw	a2, a0, 0
	sw	sp, a1, 16
	addi	a0, a2, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 15968
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 16
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 436
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 20
	addi	a0, a1, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 15896
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	lw	a0, sp, 12
	lw	a2, a0, 0
	sw	sp, a1, 24
	addi	a0, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 15828
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
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 292
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 28
	addi	a0, a1, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 15756
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, a0, 0
	lw	a0, sp, 12
	lw	a2, a0, 0
	sw	sp, a1, 32
	addi	a0, a2, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 15688
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
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, -1
	addi	a1, zero, 0
	blt	a0, a1, 148
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 36
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 15616
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, a0, 0
	lw	a0, sp, 12
	lw	a0, a0, 0
	sw	sp, a1, 40
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 15552
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 40
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 36
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
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a1, a21, 12
	lw	a2, a21, 8
	lw	a3, a21, 4
	addi	a4, zero, 0
	blt	a0, a4, 1036
	addi	a4, zero, 120
	addi	a5, zero, 3
	lui	a6, 0
	addi	a6, a6, 144
	flw	fa0, a6, 0
	sw	sp, a21, 0
	sw	sp, a3, 4
	sw	sp, a2, 8
	sw	sp, a0, 12
	sw	sp, a4, 16
	sw	sp, a1, 20
	addi	a0, a5, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	ra, 15412
	addi	sp, sp, -28
	lw	ra, sp, 24
	addi	a1, a0, 0
	lw	a0, sp, 20
	lw	a2, a0, 0
	sw	sp, a1, 24
	addi	a0, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 15344
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 24
	sw	a1, a0, 0
	lw	a0, sp, 16
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 15300
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 12
	slli	a2, a1, 2
	lw	a3, sp, 8
	add	t0, a3, a2
	sw	t0, a0, 0
	slli	a0, a1, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	addi	a2, zero, 3
	lui	a4, 0
	addi	a4, a4, 144
	flw	fa0, a4, 0
	sw	sp, a0, 28
	addi	a0, a2, 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	ra, 15252
	addi	sp, sp, -36
	lw	ra, sp, 32
	addi	a1, a0, 0
	lw	a0, sp, 20
	lw	a2, a0, 0
	sw	sp, a1, 32
	addi	a0, a2, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 15184
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 32
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 28
	sw	a1, a0, 472
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 15144
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, a0, 0
	lw	a0, sp, 20
	lw	a2, a0, 0
	sw	sp, a1, 36
	addi	a0, a2, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 15076
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 36
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 28
	sw	a1, a0, 468
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 15036
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, a0, 0
	lw	a0, sp, 20
	lw	a2, a0, 0
	sw	sp, a1, 40
	addi	a0, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 14968
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 40
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 28
	sw	a1, a0, 464
	addi	a0, zero, 115
	lw	a21, sp, 4
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 12
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 456
	addi	a1, zero, 120
	addi	a2, zero, 3
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	sw	sp, a0, 44
	sw	sp, a1, 48
	addi	a0, a2, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 14852
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, a0, 0
	lw	a0, sp, 20
	lw	a2, a0, 0
	sw	sp, a1, 52
	addi	a0, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 14784
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 52
	sw	a1, a0, 0
	lw	a0, sp, 48
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 14740
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 44
	slli	a2, a1, 2
	lw	a3, sp, 8
	add	t0, a3, a2
	sw	t0, a0, 0
	slli	a0, a1, 2
	add	t0, a3, a0
	lw	a0, t0, 0
	addi	a2, zero, 3
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	sw	sp, a0, 56
	addi	a0, a2, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 14692
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, a0, 0
	lw	a0, sp, 20
	lw	a2, a0, 0
	sw	sp, a1, 60
	addi	a0, a2, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 14624
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 60
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 56
	sw	a1, a0, 472
	addi	a0, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 14584
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, a0, 0
	lw	a0, sp, 20
	lw	a0, a0, 0
	sw	sp, a1, 64
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 14520
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 64
	sw	a1, a0, 0
	addi	a0, a1, 0
	lw	a1, sp, 56
	sw	a1, a0, 468
	addi	a0, zero, 116
	lw	a21, sp, 4
	addi	a20, a1, 0
	addi	a1, a0, 0
	addi	a0, a20, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44
	addi	a0, a0, -1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 12
	lw	a3, a21, 8
	lw	a4, a21, 4
	addi	a5, zero, 0
	blt	a1, a5, 844
	slli	a5, a1, 2
	add	t0, a0, a5
	lw	a5, t0, 0
	lw	a6, a3, 0
	addi	a6, a6, -1
	sw	sp, a21, 0
	sw	sp, a4, 4
	sw	sp, a2, 8
	sw	sp, a3, 12
	sw	sp, a0, 16
	sw	sp, a1, 20
	addi	a1, a6, 0
	addi	a0, a5, 0
	addi	a21, a4, 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 20
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 744
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, sp, 12
	lw	a4, a3, 0
	addi	a4, a4, -1
	addi	a5, zero, 0
	sw	sp, a0, 24
	blt	a4, a5, 268
	slli	a5, a4, 2
	lw	a6, sp, 8
	add	t0, a6, a5
	lw	a5, t0, 0
	lw	a7, a1, 4
	lw	a8, a1, 0
	lw	a9, a5, 4
	addi	a10, zero, 1
	sw	sp, a1, 28
	bne	a9, a10, 64
	sw	sp, a7, 32
	sw	sp, a4, 36
	addi	a1, a5, 0
	addi	a0, a8, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -35488
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 32
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a10, zero, 2
	bne	a9, a10, 64
	sw	sp, a7, 32
	sw	sp, a4, 36
	addi	a1, a5, 0
	addi	a0, a8, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -34852
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 32
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a7, 32
	sw	sp, a4, 36
	addi	a1, a5, 0
	addi	a0, a8, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, -34568
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 36
	slli	a2, a1, 2
	lw	a3, sp, 32
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 28
	lw	a21, sp, 4
	sw	sp, ra, 40
	addi	sp, sp, 44
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -44
	lw	ra, sp, 40
	jal	zero, 4
	lw	a0, sp, 24
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 420
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, sp, 12
	lw	a4, a3, 0
	addi	a4, a4, -1
	lw	a21, sp, 4
	sw	sp, a0, 40
	addi	a0, a1, 0
	addi	a1, a4, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 332
	slli	a1, a0, 2
	lw	a2, sp, 16
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, sp, 12
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a0, 44
	blt	a3, a4, 268
	slli	a4, a3, 2
	lw	a5, sp, 8
	add	t0, a5, a4
	lw	a4, t0, 0
	lw	a5, a1, 4
	lw	a6, a1, 0
	lw	a7, a4, 4
	addi	a8, zero, 1
	sw	sp, a1, 48
	bne	a7, a8, 64
	sw	sp, a5, 52
	sw	sp, a3, 56
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -35892
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56
	slli	a2, a1, 2
	lw	a3, sp, 52
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a8, zero, 2
	bne	a7, a8, 64
	sw	sp, a5, 52
	sw	sp, a3, 56
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -35256
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56
	slli	a2, a1, 2
	lw	a3, sp, 52
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a5, 52
	sw	sp, a3, 56
	addi	a1, a4, 0
	addi	a0, a6, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, -34972
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56
	slli	a2, a1, 2
	lw	a3, sp, 52
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 48
	lw	a21, sp, 4
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	jal	zero, 4
	lw	a0, sp, 44
	addi	a1, a0, -1
	lw	a0, sp, 16
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a1, a21, 20
	lw	a2, a21, 16
	lw	a3, a21, 12
	lw	a4, a21, 8
	lw	a5, a21, 4
	addi	a6, zero, 0
	blt	a0, a6, 1604
	slli	a6, a0, 2
	add	t0, a5, a6
	lw	a6, t0, 0
	lw	a7, a6, 476
	lw	a8, a2, 0
	addi	a8, a8, -1
	addi	a9, zero, 0
	sw	sp, a21, 0
	sw	sp, a5, 4
	sw	sp, a0, 8
	sw	sp, a4, 12
	sw	sp, a1, 16
	sw	sp, a3, 20
	sw	sp, a2, 24
	sw	sp, a6, 28
	blt	a8, a9, 264
	slli	a9, a8, 2
	add	t0, a1, a9
	lw	a9, t0, 0
	lw	a10, a7, 4
	lw	a11, a7, 0
	lw	a12, a9, 4
	addi	a13, zero, 1
	sw	sp, a7, 32
	bne	a12, a13, 64
	sw	sp, a10, 36
	sw	sp, a8, 40
	addi	a1, a9, 0
	addi	a0, a11, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -36284
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40
	slli	a2, a1, 2
	lw	a3, sp, 36
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a13, zero, 2
	bne	a12, a13, 64
	sw	sp, a10, 36
	sw	sp, a8, 40
	addi	a1, a9, 0
	addi	a0, a11, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -35648
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40
	slli	a2, a1, 2
	lw	a3, sp, 36
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a10, 36
	sw	sp, a8, 40
	addi	a1, a9, 0
	addi	a0, a11, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, -35364
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40
	slli	a2, a1, 2
	lw	a3, sp, 36
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 32
	lw	a21, sp, 20
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	jal	zero, 4
	lw	a0, sp, 28
	lw	a1, a0, 472
	lw	a2, sp, 24
	lw	a3, a2, 0
	addi	a3, a3, -1
	lw	a21, sp, 20
	addi	a0, a1, 0
	addi	a1, a3, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 28
	lw	a1, a0, 468
	lw	a2, sp, 24
	lw	a3, a2, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	blt	a3, a4, 268
	slli	a4, a3, 2
	lw	a5, sp, 16
	add	t0, a5, a4
	lw	a4, t0, 0
	lw	a6, a1, 4
	lw	a7, a1, 0
	lw	a8, a4, 4
	addi	a9, zero, 1
	sw	sp, a1, 44
	bne	a8, a9, 64
	sw	sp, a6, 48
	sw	sp, a3, 52
	addi	a1, a4, 0
	addi	a0, a7, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -36632
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 48
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a9, zero, 2
	bne	a8, a9, 64
	sw	sp, a6, 48
	sw	sp, a3, 52
	addi	a1, a4, 0
	addi	a0, a7, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -35996
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 48
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a6, 48
	sw	sp, a3, 52
	addi	a1, a4, 0
	addi	a0, a7, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, -35712
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 52
	slli	a2, a1, 2
	lw	a3, sp, 48
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 44
	lw	a21, sp, 20
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	jal	zero, 4
	addi	a1, zero, 116
	lw	a0, sp, 28
	lw	a21, sp, 12
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 8
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 876
	slli	a1, a0, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, a1, 476
	lw	a4, sp, 24
	lw	a5, a4, 0
	addi	a5, a5, -1
	lw	a21, sp, 20
	sw	sp, a0, 56
	sw	sp, a1, 60
	addi	a1, a5, 0
	addi	a0, a3, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 60
	lw	a1, a0, 472
	lw	a2, sp, 24
	lw	a3, a2, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	blt	a3, a4, 268
	slli	a4, a3, 2
	lw	a5, sp, 16
	add	t0, a5, a4
	lw	a4, t0, 0
	lw	a6, a1, 4
	lw	a7, a1, 0
	lw	a8, a4, 4
	addi	a9, zero, 1
	sw	sp, a1, 64
	bne	a8, a9, 64
	sw	sp, a6, 68
	sw	sp, a3, 72
	addi	a1, a4, 0
	addi	a0, a7, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -37052
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72
	slli	a2, a1, 2
	lw	a3, sp, 68
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a9, zero, 2
	bne	a8, a9, 64
	sw	sp, a6, 68
	sw	sp, a3, 72
	addi	a1, a4, 0
	addi	a0, a7, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -36416
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72
	slli	a2, a1, 2
	lw	a3, sp, 68
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a6, 68
	sw	sp, a3, 72
	addi	a1, a4, 0
	addi	a0, a7, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -36132
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72
	slli	a2, a1, 2
	lw	a3, sp, 68
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 64
	lw	a21, sp, 20
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	jal	zero, 4
	addi	a1, zero, 117
	lw	a0, sp, 60
	lw	a21, sp, 12
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 56
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 452
	slli	a1, a0, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a3, a1, 476
	lw	a4, sp, 24
	lw	a4, a4, 0
	addi	a4, a4, -1
	addi	a5, zero, 0
	sw	sp, a0, 76
	sw	sp, a1, 80
	blt	a4, a5, 268
	slli	a5, a4, 2
	lw	a6, sp, 16
	add	t0, a6, a5
	lw	a5, t0, 0
	lw	a6, a3, 4
	lw	a7, a3, 0
	lw	a8, a5, 4
	addi	a9, zero, 1
	sw	sp, a3, 84
	bne	a8, a9, 64
	sw	sp, a6, 88
	sw	sp, a4, 92
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -37416
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92
	slli	a2, a1, 2
	lw	a3, sp, 88
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a9, zero, 2
	bne	a8, a9, 64
	sw	sp, a6, 88
	sw	sp, a4, 92
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -36780
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92
	slli	a2, a1, 2
	lw	a3, sp, 88
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a6, 88
	sw	sp, a4, 92
	addi	a1, a5, 0
	addi	a0, a7, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, -36496
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a1, sp, 92
	slli	a2, a1, 2
	lw	a3, sp, 88
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 84
	lw	a21, sp, 20
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	jal	zero, 4
	addi	a1, zero, 118
	lw	a0, sp, 80
	lw	a21, sp, 12
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 76
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 84
	slli	a1, a0, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	lw	a1, t0, 0
	addi	a2, zero, 119
	lw	a21, sp, 12
	sw	sp, a0, 96
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 96
	addi	a0, a0, -1
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	jalr	zero, ra, 0
	lw	a2, a21, 24
	lw	a3, a21, 20
	lw	a4, a21, 16
	lw	a5, a21, 12
	lw	a6, a21, 8
	lw	a7, a21, 4
	slli	a0, a0, 2
	lw	a8, a4, 0
	lui	a9, 0
	addi	a9, a9, 164
	flw	fa0, a9, 0
	lw	a1, a1, 28
	flw	fa1, a1, 0
	fsub.s	fa0, fa0, fa1, rne
	flw	fa1, a6, 0
	sw	sp, a4, 0
	sw	sp, a2, 4
	sw	sp, a8, 8
	fsw	sp, fa0, 16
	sw	sp, a7, 24
	sw	sp, a3, 28
	sw	sp, a5, 32
	sw	sp, a0, 36
	sw	sp, a6, 40
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 9604
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40
	flw	fa1, a0, 4
	fsw	sp, fa0, 48
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 9568
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 40
	flw	fa1, a0, 8
	fsw	sp, fa0, 56
	fsgnj.s	fa0, fa1, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 9532
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 36
	addi	a1, a0, 1
	lw	a2, sp, 40
	flw	fa1, a2, 0
	addi	a3, zero, 3
	lui	a4, 0
	addi	a4, a4, 144
	flw	fa2, a4, 0
	sw	sp, a1, 64
	fsw	sp, fa0, 72
	fsw	sp, fa1, 80
	addi	a0, a3, 0
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 11684
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, a0, 0
	lw	a0, sp, 32
	lw	a2, a0, 0
	sw	sp, a1, 88
	addi	a0, a2, 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 11616
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 88
	sw	a1, a2, 0
	flw	fa0, sp, 80
	fsw	a2, fa0, 0
	flw	fa0, sp, 56
	fsw	a2, fa0, 4
	flw	fa1, sp, 72
	fsw	a2, fa1, 8
	lw	a3, sp, 32
	lw	a4, a3, 0
	addi	a4, a4, -1
	addi	a5, zero, 0
	sw	sp, a1, 92
	blt	a4, a5, 256
	slli	a5, a4, 2
	lw	a6, sp, 28
	add	t0, a6, a5
	lw	a5, t0, 0
	lw	a7, a5, 4
	addi	a8, zero, 1
	bne	a7, a8, 64
	sw	sp, a0, 96
	sw	sp, a4, 100
	addi	a1, a5, 0
	addi	a0, a2, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -38188
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 100
	slli	a2, a1, 2
	lw	a3, sp, 96
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a8, zero, 2
	bne	a7, a8, 64
	sw	sp, a0, 96
	sw	sp, a4, 100
	addi	a1, a5, 0
	addi	a0, a2, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -37552
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 100
	slli	a2, a1, 2
	lw	a3, sp, 96
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 96
	sw	sp, a4, 100
	addi	a1, a5, 0
	addi	a0, a2, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, -37268
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a1, sp, 100
	slli	a2, a1, 2
	lw	a3, sp, 96
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 92
	lw	a21, sp, 24
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 16
	fsw	a0, fa0, 8
	lw	a1, sp, 92
	sw	a0, a1, 4
	lw	a1, sp, 64
	sw	a0, a1, 0
	lw	a1, sp, 8
	slli	a2, a1, 2
	lw	a3, sp, 4
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a0, a1, 1
	lw	a2, sp, 36
	addi	a4, a2, 2
	lw	a5, sp, 40
	flw	fa1, a5, 4
	addi	a6, zero, 3
	lui	a7, 0
	addi	a7, a7, 144
	flw	fa2, a7, 0
	sw	sp, a0, 104
	sw	sp, a4, 108
	fsw	sp, fa1, 112
	addi	a0, a6, 0
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 11196
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, a0, 0
	lw	a0, sp, 32
	lw	a2, a0, 0
	sw	sp, a1, 120
	addi	a0, a2, 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, 11128
	addi	sp, sp, -128
	lw	ra, sp, 124
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 120
	sw	a1, a2, 0
	flw	fa0, sp, 48
	fsw	a2, fa0, 0
	flw	fa1, sp, 112
	fsw	a2, fa1, 4
	flw	fa1, sp, 72
	fsw	a2, fa1, 8
	lw	a3, sp, 32
	lw	a4, a3, 0
	addi	a4, a4, -1
	addi	a5, zero, 0
	sw	sp, a1, 124
	blt	a4, a5, 256
	slli	a5, a4, 2
	lw	a6, sp, 28
	add	t0, a6, a5
	lw	a5, t0, 0
	lw	a7, a5, 4
	addi	a8, zero, 1
	bne	a7, a8, 64
	sw	sp, a0, 128
	sw	sp, a4, 132
	addi	a1, a5, 0
	addi	a0, a2, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, -38676
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 132
	slli	a2, a1, 2
	lw	a3, sp, 128
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a8, zero, 2
	bne	a7, a8, 64
	sw	sp, a0, 128
	sw	sp, a4, 132
	addi	a1, a5, 0
	addi	a0, a2, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, -38040
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 132
	slli	a2, a1, 2
	lw	a3, sp, 128
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 128
	sw	sp, a4, 132
	addi	a1, a5, 0
	addi	a0, a2, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, -37756
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 132
	slli	a2, a1, 2
	lw	a3, sp, 128
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 124
	lw	a21, sp, 24
	sw	sp, ra, 136
	addi	sp, sp, 140
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -140
	lw	ra, sp, 136
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 16
	fsw	a0, fa0, 8
	lw	a1, sp, 124
	sw	a0, a1, 4
	lw	a1, sp, 108
	sw	a0, a1, 0
	lw	a1, sp, 104
	slli	a1, a1, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	sw	t0, a0, 0
	lw	a0, sp, 8
	addi	a1, a0, 2
	lw	a3, sp, 36
	addi	a3, a3, 3
	lw	a4, sp, 40
	flw	fa1, a4, 8
	addi	a4, zero, 3
	lui	a5, 0
	addi	a5, a5, 144
	flw	fa2, a5, 0
	sw	sp, a1, 136
	sw	sp, a3, 140
	fsw	sp, fa1, 144
	addi	a0, a4, 0
	fsgnj.s	fa0, fa2, fa2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	ra, 10704
	addi	sp, sp, -156
	lw	ra, sp, 152
	addi	a1, a0, 0
	lw	a0, sp, 32
	lw	a2, a0, 0
	sw	sp, a1, 152
	addi	a0, a2, 0
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	ra, 10636
	addi	sp, sp, -160
	lw	ra, sp, 156
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 152
	sw	a1, a2, 0
	flw	fa0, sp, 48
	fsw	a2, fa0, 0
	flw	fa0, sp, 56
	fsw	a2, fa0, 4
	flw	fa0, sp, 144
	fsw	a2, fa0, 8
	lw	a3, sp, 32
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a1, 156
	blt	a3, a4, 256
	slli	a4, a3, 2
	lw	a5, sp, 28
	add	t0, a5, a4
	lw	a4, t0, 0
	lw	a5, a4, 4
	addi	a6, zero, 1
	bne	a5, a6, 64
	sw	sp, a0, 160
	sw	sp, a3, 164
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -39168
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 164
	slli	a2, a1, 2
	lw	a3, sp, 160
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a6, zero, 2
	bne	a5, a6, 64
	sw	sp, a0, 160
	sw	sp, a3, 164
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -38532
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 164
	slli	a2, a1, 2
	lw	a3, sp, 160
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 160
	sw	sp, a3, 164
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, -38248
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 164
	slli	a2, a1, 2
	lw	a3, sp, 160
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 156
	lw	a21, sp, 24
	sw	sp, ra, 168
	addi	sp, sp, 172
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -172
	lw	ra, sp, 168
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 16
	fsw	a0, fa0, 8
	lw	a1, sp, 156
	sw	a0, a1, 4
	lw	a1, sp, 140
	sw	a0, a1, 0
	lw	a1, sp, 136
	slli	a1, a1, 2
	lw	a2, sp, 4
	add	t0, a2, a1
	sw	t0, a0, 0
	lw	a0, sp, 8
	addi	a0, a0, 3
	lw	a1, sp, 0
	sw	a1, a0, 0
	jalr	zero, ra, 0
	lw	a2, a21, 24
	lw	a3, a21, 20
	lw	a4, a21, 16
	lw	a5, a21, 12
	lw	a6, a21, 8
	lw	a7, a21, 4
	slli	a0, a0, 2
	addi	a0, a0, 1
	lw	a8, a4, 0
	lui	a9, 0
	addi	a9, a9, 164
	flw	fa0, a9, 0
	lw	a9, a1, 28
	flw	fa1, a9, 0
	fsub.s	fa0, fa0, fa1, rne
	lw	a9, a1, 16
	flw	fa1, a6, 0
	flw	fa2, a9, 0
	fmul.s	fa1, fa1, fa2, rne
	flw	fa2, a6, 4
	flw	fa3, a9, 4
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	flw	fa2, a6, 8
	flw	fa3, a9, 8
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa1, fa1, fa2, rne
	lui	a9, 0
	addi	a9, a9, 140
	flw	fa2, a9, 0
	lw	a9, a1, 16
	flw	fa3, a9, 0
	fmul.s	fa2, fa2, fa3, rne
	fmul.s	fa2, fa2, fa1, rne
	flw	fa3, a6, 0
	fsub.s	fa2, fa2, fa3, rne
	lui	a9, 0
	addi	a9, a9, 140
	flw	fa3, a9, 0
	lw	a9, a1, 16
	flw	fa4, a9, 4
	fmul.s	fa3, fa3, fa4, rne
	fmul.s	fa3, fa3, fa1, rne
	flw	fa4, a6, 4
	fsub.s	fa3, fa3, fa4, rne
	lui	a9, 0
	addi	a9, a9, 140
	flw	fa4, a9, 0
	lw	a1, a1, 16
	flw	fa5, a1, 8
	fmul.s	fa4, fa4, fa5, rne
	fmul.s	fa1, fa4, fa1, rne
	flw	fa4, a6, 8
	fsub.s	fa1, fa1, fa4, rne
	addi	a1, zero, 3
	lui	a6, 0
	addi	a6, a6, 144
	flw	fa4, a6, 0
	sw	sp, a4, 0
	sw	sp, a2, 4
	sw	sp, a8, 8
	sw	sp, a0, 12
	fsw	sp, fa0, 16
	sw	sp, a7, 24
	sw	sp, a3, 28
	fsw	sp, fa1, 32
	fsw	sp, fa3, 40
	fsw	sp, fa2, 48
	sw	sp, a5, 56
	addi	a0, a1, 0
	fsgnj.s	fa0, fa4, fa4
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 9968
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, a0, 0
	lw	a0, sp, 56
	lw	a2, a0, 0
	sw	sp, a1, 60
	addi	a0, a2, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 9900
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 60
	sw	a1, a2, 0
	flw	fa0, sp, 48
	fsw	a2, fa0, 0
	flw	fa0, sp, 40
	fsw	a2, fa0, 4
	flw	fa0, sp, 32
	fsw	a2, fa0, 8
	lw	a3, sp, 56
	lw	a3, a3, 0
	addi	a3, a3, -1
	addi	a4, zero, 0
	sw	sp, a1, 64
	blt	a3, a4, 256
	slli	a4, a3, 2
	lw	a5, sp, 28
	add	t0, a5, a4
	lw	a4, t0, 0
	lw	a5, a4, 4
	addi	a6, zero, 1
	bne	a5, a6, 64
	sw	sp, a0, 68
	sw	sp, a3, 72
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -39904
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72
	slli	a2, a1, 2
	lw	a3, sp, 68
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a6, zero, 2
	bne	a5, a6, 64
	sw	sp, a0, 68
	sw	sp, a3, 72
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -39268
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72
	slli	a2, a1, 2
	lw	a3, sp, 68
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a0, 68
	sw	sp, a3, 72
	addi	a1, a4, 0
	addi	a0, a2, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, -38984
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 72
	slli	a2, a1, 2
	lw	a3, sp, 68
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 64
	lw	a21, sp, 24
	sw	sp, ra, 76
	addi	sp, sp, 80
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -80
	lw	ra, sp, 76
	jal	zero, 4
	addi	a0, hp, 0
	addi	hp, hp, 12
	flw	fa0, sp, 16
	fsw	a0, fa0, 8
	lw	a1, sp, 64
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
	lw	a2, a21, 100
	lw	a3, a21, 96
	lw	a4, a21, 92
	lw	a5, a21, 88
	lw	a6, a21, 84
	lw	a7, a21, 80
	lw	a8, a21, 76
	lw	a9, a21, 72
	lw	a10, a21, 68
	lw	a11, a21, 64
	lw	a12, a21, 60
	lw	a13, a21, 56
	lw	a14, a21, 52
	lw	a15, a21, 48
	lw	a16, a21, 44
	lw	a17, a21, 40
	lw	a18, a21, 36
	lw	a19, a21, 32
	lw	a20, a21, 28
	sw	sp, a7, 0
	lw	a7, a21, 24
	sw	sp, a5, 4
	lw	a5, a21, 20
	sw	sp, a13, 8
	lw	a13, a21, 16
	sw	sp, a3, 12
	lw	a3, a21, 12
	sw	sp, a4, 16
	lw	a4, a21, 8
	lw	a21, a21, 4
	sw	a5, a0, 0
	sw	a5, a1, 4
	sw	sp, a17, 20
	srli	a17, a0, 1
	sw	a13, a17, 0
	srli	a1, a1, 1
	sw	a13, a1, 4
	lui	a1, 0
	addi	a1, a1, 40
	flw	fa0, a1, 0
	sw	sp, a2, 24
	sw	sp, a18, 28
	sw	sp, a20, 32
	sw	sp, a7, 36
	sw	sp, a19, 40
	sw	sp, a15, 44
	sw	sp, a3, 48
	sw	sp, a21, 52
	sw	sp, a4, 56
	sw	sp, a14, 60
	sw	sp, a12, 64
	sw	sp, a9, 68
	sw	sp, a16, 72
	sw	sp, a10, 76
	sw	sp, a11, 80
	sw	sp, a8, 84
	sw	sp, a5, 88
	sw	sp, a6, 92
	fsw	sp, fa0, 96
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 7096
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96
	fdiv.s	fa0, fa1, fa0, rne
	lw	a0, sp, 92
	fsw	a0, fa0, 0
	lw	a0, sp, 88
	lw	a1, a0, 0
	addi	a2, zero, 3
	lui	a3, 0
	addi	a3, a3, 144
	flw	fa0, a3, 0
	sw	sp, a1, 104
	addi	a0, a2, 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	ra, 9216
	addi	sp, sp, -112
	lw	ra, sp, 108
	sw	sp, a0, 108
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, -9752
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 112
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 9124
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 116
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 9084
	addi	sp, sp, -124
	lw	ra, sp, 120
	sw	sp, a0, 120
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, -9856
	addi	sp, sp, -128
	lw	ra, sp, 124
	sw	sp, a0, 124
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, -9880
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 128
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	ra, 8996
	addi	sp, sp, -136
	lw	ra, sp, 132
	sw	sp, a0, 132
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, -9944
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 132
	sw	a1, a0, 24
	lw	a0, sp, 128
	sw	a1, a0, 20
	lw	a0, sp, 124
	sw	a1, a0, 16
	lw	a0, sp, 120
	sw	a1, a0, 12
	lw	a0, sp, 116
	sw	a1, a0, 8
	lw	a0, sp, 112
	sw	a1, a0, 4
	lw	a0, sp, 108
	sw	a1, a0, 0
	lw	a0, sp, 104
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 8880
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 88
	lw	a2, a1, 0
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, -9816
	addi	sp, sp, -140
	lw	ra, sp, 136
	lw	a1, sp, 88
	lw	a2, a1, 0
	addi	a3, zero, 3
	lui	a4, 0
	addi	a4, a4, 144
	flw	fa0, a4, 0
	sw	sp, a0, 136
	sw	sp, a2, 140
	addi	a0, a3, 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 8816
	addi	sp, sp, -148
	lw	ra, sp, 144
	sw	sp, a0, 144
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	ra, -10152
	addi	sp, sp, -152
	lw	ra, sp, 148
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 148
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	ra, 8724
	addi	sp, sp, -156
	lw	ra, sp, 152
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 152
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 156
	addi	sp, sp, 160
	jal	ra, 8684
	addi	sp, sp, -160
	lw	ra, sp, 156
	sw	sp, a0, 156
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	ra, -10256
	addi	sp, sp, -164
	lw	ra, sp, 160
	sw	sp, a0, 160
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	ra, -10280
	addi	sp, sp, -168
	lw	ra, sp, 164
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 164
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	ra, 8596
	addi	sp, sp, -172
	lw	ra, sp, 168
	sw	sp, a0, 168
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, -10344
	addi	sp, sp, -176
	lw	ra, sp, 172
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 168
	sw	a1, a0, 24
	lw	a0, sp, 164
	sw	a1, a0, 20
	lw	a0, sp, 160
	sw	a1, a0, 16
	lw	a0, sp, 156
	sw	a1, a0, 12
	lw	a0, sp, 152
	sw	a1, a0, 8
	lw	a0, sp, 148
	sw	a1, a0, 4
	lw	a0, sp, 144
	sw	a1, a0, 0
	lw	a0, sp, 140
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, 8480
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a1, sp, 88
	lw	a2, a1, 0
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	sp, ra, 172
	addi	sp, sp, 176
	jal	ra, -10216
	addi	sp, sp, -176
	lw	ra, sp, 172
	lw	a1, sp, 88
	lw	a2, a1, 0
	addi	a3, zero, 3
	lui	a4, 0
	addi	a4, a4, 144
	flw	fa0, a4, 0
	sw	sp, a0, 172
	sw	sp, a2, 176
	addi	a0, a3, 0
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	ra, 8416
	addi	sp, sp, -184
	lw	ra, sp, 180
	sw	sp, a0, 180
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	ra, -10552
	addi	sp, sp, -188
	lw	ra, sp, 184
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 184
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 188
	addi	sp, sp, 192
	jal	ra, 8324
	addi	sp, sp, -192
	lw	ra, sp, 188
	addi	a1, zero, 5
	addi	a2, zero, 0
	sw	sp, a0, 188
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	ra, 8284
	addi	sp, sp, -196
	lw	ra, sp, 192
	sw	sp, a0, 192
	sw	sp, ra, 196
	addi	sp, sp, 200
	jal	ra, -10656
	addi	sp, sp, -200
	lw	ra, sp, 196
	sw	sp, a0, 196
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	ra, -10680
	addi	sp, sp, -204
	lw	ra, sp, 200
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 200
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 204
	addi	sp, sp, 208
	jal	ra, 8196
	addi	sp, sp, -208
	lw	ra, sp, 204
	sw	sp, a0, 204
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, -10744
	addi	sp, sp, -212
	lw	ra, sp, 208
	addi	a1, hp, 0
	addi	hp, hp, 32
	sw	a1, a0, 28
	lw	a0, sp, 204
	sw	a1, a0, 24
	lw	a0, sp, 200
	sw	a1, a0, 20
	lw	a0, sp, 196
	sw	a1, a0, 16
	lw	a0, sp, 192
	sw	a1, a0, 12
	lw	a0, sp, 188
	sw	a1, a0, 8
	lw	a0, sp, 184
	sw	a1, a0, 4
	lw	a0, sp, 180
	sw	a1, a0, 0
	lw	a0, sp, 176
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, 8080
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a1, sp, 88
	lw	a2, a1, 0
	addi	a2, a2, -2
	addi	a1, a2, 0
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	ra, -10616
	addi	sp, sp, -212
	lw	ra, sp, 208
	lw	a21, sp, 84
	sw	sp, a0, 208
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	lw	a21, sp, 80
	sw	sp, ra, 212
	addi	sp, sp, 216
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -216
	lw	ra, sp, 212
	addi	a0, zero, 0
	lw	a21, sp, 76
	sw	sp, a0, 212
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a1, zero, 0
	bne	a0, a1, 20
	lw	a0, sp, 72
	lw	a1, sp, 212
	sw	a0, a1, 0
	jal	zero, 36
	addi	a0, zero, 1
	lw	a21, sp, 68
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 0
	lw	a21, sp, 64
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, -47008
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a1, sp, 60
	sw	a1, a0, 0
	addi	a0, zero, 80
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7788
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 51
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7764
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 10
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7740
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a0, sp, 88
	lw	a1, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 8048
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 32
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7684
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a0, sp, 88
	lw	a1, a0, 4
	addi	a0, a1, 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7992
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 32
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7628
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 255
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7944
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 10
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	ra, 7580
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 4
	lw	a21, sp, 56
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	addi	a0, zero, 9
	addi	a1, zero, 0
	addi	a2, zero, 0
	lw	a21, sp, 52
	sw	sp, ra, 216
	addi	sp, sp, 220
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -220
	lw	ra, sp, 216
	lw	a0, sp, 48
	lw	a1, a0, 16
	lw	a2, a1, 476
	lw	a3, sp, 72
	lw	a4, a3, 0
	addi	a4, a4, -1
	addi	a5, zero, 0
	sw	sp, a1, 216
	blt	a4, a5, 268
	slli	a5, a4, 2
	lw	a6, sp, 44
	add	t0, a6, a5
	lw	a5, t0, 0
	lw	a7, a2, 4
	lw	a8, a2, 0
	lw	a9, a5, 4
	addi	a10, zero, 1
	sw	sp, a2, 220
	bne	a9, a10, 64
	sw	sp, a7, 224
	sw	sp, a4, 228
	addi	a1, a5, 0
	addi	a0, a8, 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	ra, -42260
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a1, sp, 228
	slli	a2, a1, 2
	lw	a3, sp, 224
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 128
	addi	a10, zero, 2
	bne	a9, a10, 64
	sw	sp, a7, 224
	sw	sp, a4, 228
	addi	a1, a5, 0
	addi	a0, a8, 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	ra, -41624
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a1, sp, 228
	slli	a2, a1, 2
	lw	a3, sp, 224
	add	t0, a3, a2
	sw	t0, a0, 0
	jal	zero, 60
	sw	sp, a7, 224
	sw	sp, a4, 228
	addi	a1, a5, 0
	addi	a0, a8, 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	ra, -41340
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a1, sp, 228
	slli	a2, a1, 2
	lw	a3, sp, 224
	add	t0, a3, a2
	sw	t0, a0, 0
	addi	a1, a1, -1
	lw	a0, sp, 220
	lw	a21, sp, 40
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	jal	zero, 4
	addi	a1, zero, 118
	lw	a0, sp, 216
	lw	a21, sp, 36
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a0, sp, 48
	lw	a0, a0, 12
	addi	a1, zero, 119
	lw	a21, sp, 36
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	addi	a0, zero, 2
	lw	a21, sp, 32
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a0, sp, 28
	flw	fa0, a0, 0
	lw	a1, sp, 24
	fsw	a1, fa0, 0
	flw	fa0, a0, 4
	fsw	a1, fa0, 4
	flw	fa0, a0, 8
	fsw	a1, fa0, 8
	lw	a0, sp, 72
	lw	a1, a0, 0
	addi	a1, a1, -1
	lw	a2, sp, 20
	lw	a21, sp, 40
	addi	a0, a2, 0
	sw	sp, ra, 232
	addi	sp, sp, 236
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -236
	lw	ra, sp, 232
	lw	a0, sp, 72
	lw	a0, a0, 0
	addi	a0, a0, -1
	addi	a1, zero, 0
	blt	a0, a1, 196
	slli	a1, a0, 2
	lw	a2, sp, 44
	add	t0, a2, a1
	lw	a1, t0, 0
	lw	a2, a1, 8
	addi	a3, zero, 2
	bne	a2, a3, 164
	lw	a2, a1, 28
	flw	fa0, a2, 0
	lui	a2, 0
	addi	a2, a2, 164
	flw	fa1, a2, 0
	sw	sp, a0, 232
	sw	sp, a1, 236
	sw	sp, ra, 240
	addi	sp, sp, 244
	jal	ra, 4664
	addi	sp, sp, -244
	lw	ra, sp, 240
	addi	a1, zero, 0
	bne	a0, a1, 8
	jal	zero, 100
	lw	a1, sp, 236
	lw	a0, a1, 4
	addi	a2, zero, 1
	bne	a0, a2, 40
	lw	a0, sp, 232
	lw	a21, sp, 16
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	jal	zero, 48
	addi	a2, zero, 2
	bne	a0, a2, 40
	lw	a0, sp, 232
	lw	a21, sp, 12
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	jal	zero, 4
	jal	zero, 4
	jal	zero, 4
	addi	a1, zero, 0
	addi	a2, zero, 0
	lw	a0, sp, 172
	lw	a21, sp, 8
	sw	sp, ra, 240
	addi	sp, sp, 244
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -244
	lw	ra, sp, 240
	addi	a1, zero, 0
	addi	a2, zero, 2
	lw	a0, sp, 88
	lw	a3, a0, 4
	blt	a1, a3, 8
	jalr	zero, ra, 0
	lw	a0, a0, 4
	addi	a0, a0, -1
	sw	sp, a1, 240
	blt	a1, a0, 8
	jal	zero, 48
	addi	a0, zero, 1
	lw	a3, sp, 208
	lw	a21, sp, 8
	addi	a1, a0, 0
	addi	a0, a3, 0
	sw	sp, ra, 244
	addi	sp, sp, 248
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -248
	lw	ra, sp, 244
	addi	a0, zero, 0
	lw	a1, sp, 240
	lw	a2, sp, 136
	lw	a3, sp, 172
	lw	a4, sp, 208
	lw	a21, sp, 4
	sw	sp, ra, 244
	addi	sp, sp, 248
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -248
	lw	ra, sp, 244
	addi	a0, zero, 1
	addi	a4, zero, 4
	lw	a1, sp, 172
	lw	a2, sp, 208
	lw	a3, sp, 136
	lw	a21, sp, 0
	sw	sp, ra, 244
	addi	sp, sp, 248
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -248
	lw	ra, sp, 244
	jalr	zero, ra, 0
	addi	a0, zero, 1
	addi	a1, zero, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	ra, 6568
	addi	sp, sp, -4
	lw	ra, sp, 0
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 0
	addi	a0, a1, 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	ra, 6552
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
	jal	ra, 6412
	addi	sp, sp, -8
	lw	ra, sp, 4
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 4
	addi	a0, a1, 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	ra, 6396
	addi	sp, sp, -12
	lw	ra, sp, 8
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 8
	addi	a0, a1, 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	ra, 6352
	addi	sp, sp, -16
	lw	ra, sp, 12
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 12
	addi	a0, a1, 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, 6308
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 92
	flw	fa0, a2, 0
	sw	sp, a0, 16
	addi	a0, a1, 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	ra, 6264
	addi	sp, sp, -24
	lw	ra, sp, 20
	addi	a1, zero, 50
	addi	a2, zero, 1
	addi	a3, zero, -1
	sw	sp, a0, 20
	sw	sp, a1, 24
	addi	a1, a3, 0
	addi	a0, a2, 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 6188
	addi	sp, sp, -32
	lw	ra, sp, 28
	addi	a1, a0, 0
	lw	a0, sp, 24
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	ra, 6160
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
	jal	ra, 6112
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, a0, 0
	lw	a0, sp, 32
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	ra, 6084
	addi	sp, sp, -40
	lw	ra, sp, 36
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 36
	addi	a0, a1, 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	ra, 6068
	addi	sp, sp, -44
	lw	ra, sp, 40
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 40
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	ra, 6000
	addi	sp, sp, -48
	lw	ra, sp, 44
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 124
	flw	fa0, a2, 0
	sw	sp, a0, 44
	addi	a0, a1, 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	ra, 5984
	addi	sp, sp, -52
	lw	ra, sp, 48
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 48
	addi	a0, a1, 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	ra, 5940
	addi	sp, sp, -56
	lw	ra, sp, 52
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 52
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	ra, 5872
	addi	sp, sp, -60
	lw	ra, sp, 56
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 56
	addi	a0, a1, 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	ra, 5856
	addi	sp, sp, -64
	lw	ra, sp, 60
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 60
	addi	a0, a1, 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	ra, 5812
	addi	sp, sp, -68
	lw	ra, sp, 64
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 64
	addi	a0, a1, 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	ra, 5768
	addi	sp, sp, -72
	lw	ra, sp, 68
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 68
	addi	a0, a1, 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	ra, 5724
	addi	sp, sp, -76
	lw	ra, sp, 72
	addi	a1, zero, 2
	addi	a2, zero, 0
	sw	sp, a0, 72
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	ra, 5656
	addi	sp, sp, -80
	lw	ra, sp, 76
	addi	a1, zero, 2
	addi	a2, zero, 0
	sw	sp, a0, 76
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	ra, 5616
	addi	sp, sp, -84
	lw	ra, sp, 80
	addi	a1, zero, 1
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 80
	addi	a0, a1, 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	ra, 5600
	addi	sp, sp, -88
	lw	ra, sp, 84
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 84
	addi	a0, a1, 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	ra, 5556
	addi	sp, sp, -92
	lw	ra, sp, 88
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 88
	addi	a0, a1, 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	ra, 5512
	addi	sp, sp, -96
	lw	ra, sp, 92
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 92
	addi	a0, a1, 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	ra, 5468
	addi	sp, sp, -100
	lw	ra, sp, 96
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 96
	addi	a0, a1, 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	ra, 5424
	addi	sp, sp, -104
	lw	ra, sp, 100
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 100
	addi	a0, a1, 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	ra, 5380
	addi	sp, sp, -108
	lw	ra, sp, 104
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 104
	addi	a0, a1, 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	ra, 5336
	addi	sp, sp, -112
	lw	ra, sp, 108
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 108
	addi	a0, a1, 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	ra, 5292
	addi	sp, sp, -116
	lw	ra, sp, 112
	addi	a1, a0, 0
	addi	a0, zero, 0
	sw	sp, a1, 112
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 5232
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
	jal	ra, 5172
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, a0, 0
	addi	a0, zero, 5
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	ra, 5144
	addi	sp, sp, -120
	lw	ra, sp, 116
	addi	a1, zero, 0
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 116
	addi	a0, a1, 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	ra, 5128
	addi	sp, sp, -124
	lw	ra, sp, 120
	addi	a1, zero, 3
	lui	a2, 0
	addi	a2, a2, 144
	flw	fa0, a2, 0
	sw	sp, a0, 120
	addi	a0, a1, 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	ra, 5084
	addi	sp, sp, -128
	lw	ra, sp, 124
	addi	a1, zero, 60
	lw	a2, sp, 120
	sw	sp, a0, 124
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	ra, 5016
	addi	sp, sp, -132
	lw	ra, sp, 128
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a2, sp, 124
	sw	a1, a2, 0
	addi	a3, zero, 0
	lui	a4, 0
	addi	a4, a4, 144
	flw	fa0, a4, 0
	sw	sp, a1, 128
	sw	sp, a0, 132
	addi	a0, a3, 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	ra, 4976
	addi	sp, sp, -140
	lw	ra, sp, 136
	addi	a1, a0, 0
	addi	a0, zero, 0
	sw	sp, a1, 136
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	ra, 4916
	addi	sp, sp, -144
	lw	ra, sp, 140
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	a1, a0, 4
	lw	a0, sp, 136
	sw	a1, a0, 0
	addi	a0, a1, 0
	addi	a1, zero, 180
	addi	a2, zero, 0
	lui	a3, 0
	addi	a3, a3, 144
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
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	ra, 4816
	addi	sp, sp, -144
	lw	ra, sp, 140
	addi	a1, zero, 1
	addi	a2, zero, 0
	sw	sp, a0, 140
	addi	a0, a1, 0
	addi	a1, a2, 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	ra, 4776
	addi	sp, sp, -148
	lw	ra, sp, 144
	addi	a1, hp, 0
	addi	hp, hp, 24
	lui	a2, 0
	addi	a2, a2, 532
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
	lui	a7, 0
	addi	a7, a7, 1160
	sw	a6, a7, 0
	lw	a7, sp, 16
	sw	a6, a7, 8
	lw	a8, sp, 20
	sw	a6, a8, 4
	addi	a9, hp, 0
	addi	hp, hp, 8
	lui	a10, 4096
	addi	a10, a10, -1592
	sw	a9, a10, 0
	lw	a10, sp, 4
	sw	a9, a10, 4
	addi	a11, hp, 0
	addi	hp, hp, 12
	lui	a12, 4096
	addi	a12, a12, 184
	sw	a11, a12, 0
	sw	a11, a9, 8
	lw	a12, sp, 0
	sw	a11, a12, 4
	addi	a13, hp, 0
	addi	hp, hp, 8
	lui	a14, 4096
	addi	a14, a14, 1528
	sw	a13, a14, 0
	lw	a14, sp, 28
	sw	a13, a14, 4
	addi	a15, hp, 0
	addi	hp, hp, 8
	lui	a16, 8192
	addi	a16, a16, -2040
	sw	a15, a16, 0
	lw	a16, sp, 40
	sw	a15, a16, 4
	addi	a17, hp, 0
	addi	hp, hp, 8
	lui	a18, 8192
	addi	a18, a18, -1524
	sw	a17, a18, 0
	sw	a17, a16, 4
	addi	a18, hp, 0
	addi	hp, hp, 8
	lui	a19, 8192
	addi	a19, a19, -868
	sw	a18, a19, 0
	sw	a18, a16, 4
	addi	a19, hp, 0
	addi	hp, hp, 20
	lui	a20, 8192
	addi	a20, a20, -432
	sw	a19, a20, 0
	sw	a19, a18, 16
	sw	a19, a15, 12
	sw	a19, a16, 8
	sw	a19, a10, 4
	addi	a20, hp, 0
	addi	hp, hp, 8
	lui	a21, 8192
	addi	a21, a21, 124
	sw	a20, a21, 0
	sw	a20, a16, 4
	addi	a21, hp, 0
	addi	hp, hp, 8
	sw	sp, a13, 144
	lui	a13, 8192
	addi	a13, a13, 1012
	sw	a21, a13, 0
	sw	a21, a16, 4
	addi	a13, hp, 0
	addi	hp, hp, 8
	sw	sp, a6, 148
	lui	a6, 8192
	addi	a6, a6, 1436
	sw	a13, a6, 0
	sw	a13, a16, 4
	addi	a6, hp, 0
	addi	hp, hp, 20
	sw	sp, a9, 152
	lui	a9, 8192
	addi	a9, a9, 1788
	sw	a6, a9, 0
	sw	a6, a13, 16
	sw	a6, a20, 12
	sw	a6, a16, 8
	sw	a6, a10, 4
	addi	a9, hp, 0
	addi	hp, hp, 8
	sw	sp, a11, 156
	lui	a11, 12288
	addi	a11, a11, -424
	sw	a9, a11, 0
	sw	a9, a10, 4
	addi	a11, hp, 0
	addi	hp, hp, 8
	sw	sp, a1, 160
	lui	a1, 12288
	addi	a1, a1, 68
	sw	a11, a1, 0
	sw	a11, a10, 4
	addi	a1, hp, 0
	addi	hp, hp, 8
	sw	sp, a9, 164
	lui	a9, 12288
	addi	a9, a9, 948
	sw	a1, a9, 0
	sw	a1, a10, 4
	addi	a9, hp, 0
	addi	hp, hp, 40
	lui	a4, 12288
	addi	a4, a4, 1792
	sw	a9, a4, 0
	lw	a4, sp, 124
	sw	a9, a4, 36
	sw	a9, a21, 32
	sw	a9, a20, 28
	sw	a9, a16, 24
	sw	a9, a10, 20
	sw	a9, a7, 16
	lw	a3, sp, 52
	sw	a9, a3, 12
	lw	a5, sp, 132
	sw	a9, a5, 8
	sw	a9, a1, 4
	addi	a2, hp, 0
	addi	hp, hp, 12
	lui	a8, 16384
	addi	a8, a8, -1496
	sw	a2, a8, 0
	sw	a2, a9, 8
	sw	a2, a14, 4
	addi	a8, hp, 0
	addi	hp, hp, 44
	lui	a7, 16384
	addi	a7, a7, -1012
	sw	a8, a7, 0
	sw	a8, a4, 40
	sw	a8, a21, 36
	sw	a8, a20, 32
	sw	a8, a16, 28
	sw	a8, a2, 24
	sw	a8, a9, 20
	sw	a8, a10, 16
	sw	a8, a3, 12
	sw	a8, a5, 8
	sw	a8, a14, 4
	addi	a2, hp, 0
	addi	hp, hp, 48
	lui	a5, 16384
	addi	a5, a5, 192
	sw	a2, a5, 0
	lw	a5, sp, 48
	sw	a2, a5, 44
	lw	a7, sp, 88
	sw	a2, a7, 40
	sw	a2, a17, 36
	sw	a2, a18, 32
	sw	a2, a15, 28
	sw	a2, a16, 24
	sw	a2, a10, 20
	lw	a9, sp, 44
	sw	a2, a9, 16
	sw	a2, a3, 12
	lw	a21, sp, 56
	sw	a2, a21, 8
	sw	a2, a1, 4
	addi	a4, hp, 0
	addi	hp, hp, 12
	lui	a12, 16384
	addi	a12, a12, 1232
	sw	a4, a12, 0
	sw	a4, a2, 8
	sw	a4, a14, 4
	addi	a12, hp, 0
	addi	hp, hp, 48
	sw	sp, a0, 168
	lui	a0, 16384
	addi	a0, a0, 1668
	sw	a12, a0, 0
	sw	a12, a5, 44
	sw	a12, a7, 40
	sw	a12, a17, 36
	sw	a12, a18, 32
	sw	a12, a15, 28
	sw	a12, a16, 24
	sw	a12, a19, 20
	sw	a12, a4, 16
	sw	a12, a2, 12
	sw	a12, a10, 8
	sw	a12, a14, 4
	addi	a0, hp, 0
	addi	hp, hp, 44
	lui	a2, 20480
	addi	a2, a2, -672
	sw	a0, a2, 0
	sw	a0, a5, 40
	lw	a2, sp, 92
	sw	a0, a2, 36
	sw	a0, a13, 32
	sw	a0, a20, 28
	sw	a0, a16, 24
	sw	a0, a10, 20
	sw	a0, a9, 16
	sw	a0, a3, 12
	sw	a0, a21, 8
	sw	a0, a1, 4
	addi	a1, hp, 0
	addi	hp, hp, 12
	lui	a4, 20480
	addi	a4, a4, 196
	sw	a1, a4, 0
	sw	a1, a0, 8
	sw	a1, a14, 4
	addi	a4, hp, 0
	addi	hp, hp, 40
	lui	a15, 20480
	addi	a15, a15, 632
	sw	a4, a15, 0
	sw	a4, a5, 36
	sw	a4, a13, 32
	sw	a4, a20, 28
	sw	a4, a6, 24
	sw	a4, a16, 20
	sw	a4, a1, 16
	sw	a4, a0, 12
	sw	a4, a10, 8
	sw	a4, a14, 4
	addi	a13, hp, 0
	addi	hp, hp, 36
	lui	a15, 24576
	addi	a15, a15, -1904
	sw	a13, a15, 0
	sw	a13, a4, 32
	sw	a13, a5, 28
	sw	a13, a6, 24
	sw	a13, a16, 20
	sw	a13, a1, 16
	sw	a13, a0, 12
	lw	a0, sp, 36
	sw	a13, a0, 8
	sw	a13, a14, 4
	addi	a1, hp, 0
	addi	hp, hp, 12
	lui	a6, 24576
	addi	a6, a6, -1160
	sw	a1, a6, 0
	lw	a6, sp, 60
	sw	a1, a6, 8
	sw	a1, a3, 4
	addi	a14, hp, 0
	addi	hp, hp, 16
	lui	a15, 24576
	addi	a15, a15, -772
	sw	a14, a15, 0
	sw	a14, a6, 12
	sw	a14, a9, 8
	sw	a14, a1, 4
	addi	a15, hp, 0
	addi	hp, hp, 8
	lui	a16, 24576
	addi	a16, a16, -396
	sw	a15, a16, 0
	lw	a16, sp, 64
	sw	a15, a16, 4
	addi	a17, hp, 0
	addi	hp, hp, 44
	lui	a18, 24576
	addi	a18, a18, 1376
	sw	a17, a18, 0
	sw	a17, a4, 40
	sw	a17, a5, 36
	sw	a17, a16, 32
	sw	a17, a8, 28
	lw	a18, sp, 72
	sw	a17, a18, 24
	lw	a19, sp, 140
	sw	a17, a19, 20
	sw	a17, a0, 16
	sw	a17, a6, 12
	sw	a17, a9, 8
	sw	a17, a21, 4
	addi	a20, hp, 0
	addi	hp, hp, 88
	lui	a19, 28672
	addi	a19, a19, -1920
	sw	a20, a19, 0
	sw	a20, a15, 84
	sw	a20, a17, 80
	sw	a20, a12, 76
	sw	a20, a5, 72
	sw	a20, a16, 68
	sw	a20, a2, 64
	sw	a20, a7, 60
	sw	a20, a8, 56
	sw	a20, a11, 52
	sw	a20, a18, 48
	sw	a20, a0, 44
	sw	a20, a10, 40
	sw	a20, a6, 36
	lw	a12, sp, 168
	sw	a20, a12, 32
	lw	a17, sp, 0
	sw	a20, a17, 28
	lw	a19, sp, 16
	sw	a20, a19, 24
	sw	a20, a9, 20
	sw	a20, a3, 16
	sw	a20, a21, 12
	sw	a20, a1, 8
	lw	a12, sp, 20
	sw	a20, a12, 4
	addi	a12, hp, 0
	addi	hp, hp, 60
	lui	a7, 28672
	addi	a7, a7, 516
	sw	a12, a7, 0
	sw	a12, a15, 56
	sw	a12, a4, 52
	sw	a12, a5, 48
	sw	a12, a16, 44
	sw	a12, a8, 40
	sw	a12, a0, 36
	sw	a12, a10, 32
	sw	a12, a6, 28
	sw	a12, a19, 24
	sw	a12, a9, 20
	sw	a12, a3, 16
	sw	a12, a21, 12
	sw	a12, a1, 8
	lw	a1, sp, 68
	sw	a12, a1, 4
	addi	a4, hp, 0
	addi	hp, hp, 56
	lui	a5, 28672
	addi	a5, a5, 1528
	sw	a4, a5, 0
	sw	a4, a15, 52
	sw	a4, a12, 48
	sw	a4, a16, 44
	sw	a4, a8, 40
	sw	a4, a0, 36
	sw	a4, a10, 32
	sw	a4, a6, 28
	sw	a4, a19, 24
	sw	a4, a13, 20
	sw	a4, a3, 16
	sw	a4, a21, 12
	sw	a4, a14, 8
	sw	a4, a1, 4
	addi	a3, hp, 0
	addi	hp, hp, 24
	lui	a5, 32768
	addi	a5, a5, -1104
	sw	a3, a5, 0
	sw	a3, a2, 20
	sw	a3, a11, 16
	sw	a3, a17, 12
	sw	a3, a4, 8
	lw	a5, sp, 116
	sw	a3, a5, 4
	addi	a6, hp, 0
	addi	hp, hp, 36
	lui	a7, 32768
	addi	a7, a7, -328
	sw	a6, a7, 0
	sw	a6, a12, 32
	sw	a6, a2, 28
	sw	a6, a11, 24
	sw	a6, a18, 20
	sw	a6, a17, 16
	sw	a6, a4, 12
	sw	a6, a5, 8
	sw	a6, a1, 4
	addi	a7, hp, 0
	addi	hp, hp, 12
	lui	a8, 32768
	addi	a8, a8, 1692
	sw	a7, a8, 0
	sw	a7, a18, 8
	sw	a7, a1, 4
	addi	a8, hp, 0
	addi	hp, hp, 20
	lui	a9, 36864
	addi	a9, a9, -1992
	sw	a8, a9, 0
	sw	a8, a3, 16
	sw	a8, a18, 12
	sw	a8, a1, 8
	sw	a8, a6, 4
	addi	a3, hp, 0
	addi	hp, hp, 16
	lui	a9, 36864
	addi	a9, a9, -1564
	sw	a3, a9, 0
	sw	a3, a8, 12
	sw	a3, a7, 8
	sw	a3, a6, 4
	addi	a9, hp, 0
	addi	hp, hp, 8
	lui	a13, 36864
	addi	a13, a13, -604
	sw	a9, a13, 0
	sw	a9, a18, 4
	addi	a13, hp, 0
	addi	hp, hp, 32
	lui	a14, 36864
	addi	a14, a14, -304
	sw	a13, a14, 0
	sw	a13, a12, 28
	sw	a13, a2, 24
	sw	a13, a11, 20
	sw	a13, a17, 16
	sw	a13, a4, 12
	sw	a13, a5, 8
	sw	a13, a1, 4
	addi	a14, hp, 0
	addi	hp, hp, 68
	lui	a15, 36864
	addi	a15, a15, 672
	sw	a14, a15, 0
	lw	a15, sp, 12
	sw	a14, a15, 64
	sw	a14, a20, 60
	sw	a14, a12, 56
	sw	a14, a2, 52
	lw	a2, sp, 88
	sw	a14, a2, 48
	sw	a14, a11, 44
	lw	a2, sp, 96
	sw	a14, a2, 40
	lw	a2, sp, 84
	sw	a14, a2, 36
	sw	a14, a18, 32
	lw	a11, sp, 108
	sw	a14, a11, 28
	sw	a14, a13, 24
	sw	a14, a17, 20
	sw	a14, a4, 16
	lw	a4, sp, 80
	sw	a14, a4, 12
	sw	a14, a5, 8
	sw	a14, a1, 4
	addi	a1, hp, 0
	addi	hp, hp, 28
	lui	a11, 36864
	addi	a11, a11, 1824
	sw	a1, a11, 0
	lw	a11, sp, 104
	sw	a1, a11, 24
	lw	a11, sp, 100
	sw	a1, a11, 20
	sw	a1, a2, 16
	sw	a1, a14, 12
	lw	a11, sp, 76
	sw	a1, a11, 8
	sw	a1, a4, 4
	addi	a12, hp, 0
	addi	hp, hp, 32
	lui	a13, 36864
	addi	a13, a13, 2024
	sw	a12, a13, 0
	sw	a12, a9, 28
	sw	a12, a3, 24
	sw	a12, a18, 20
	sw	a12, a11, 16
	sw	a12, a8, 12
	sw	a12, a7, 8
	sw	a12, a6, 4
	addi	a6, hp, 0
	addi	hp, hp, 32
	lui	a7, 40960
	addi	a7, a7, -708
	sw	a6, a7, 0
	sw	a6, a9, 28
	sw	a6, a3, 24
	sw	a6, a12, 20
	sw	a6, a18, 16
	sw	a6, a1, 12
	sw	a6, a11, 8
	sw	a6, a8, 4
	addi	a3, hp, 0
	addi	hp, hp, 8
	lui	a7, 40960
	addi	a7, a7, 1000
	sw	a3, a7, 0
	sw	a3, a5, 4
	addi	a7, hp, 0
	addi	hp, hp, 8
	lui	a8, 45056
	addi	a8, a8, -1932
	sw	a7, a8, 0
	sw	a7, a3, 4
	addi	a3, hp, 0
	addi	hp, hp, 8
	lui	a8, 45056
	addi	a8, a8, -1588
	sw	a3, a8, 0
	sw	a3, a7, 4
	addi	a7, hp, 0
	addi	hp, hp, 8
	lui	a8, 45056
	addi	a8, a8, -1252
	sw	a7, a8, 0
	sw	a7, a17, 4
	addi	a8, hp, 0
	addi	hp, hp, 16
	lui	a9, 45056
	addi	a9, a9, -648
	sw	a8, a9, 0
	sw	a8, a17, 12
	sw	a8, a5, 8
	sw	a8, a7, 4
	addi	a7, hp, 0
	addi	hp, hp, 16
	lui	a9, 45056
	addi	a9, a9, 408
	sw	a7, a9, 0
	sw	a7, a10, 12
	sw	a7, a17, 8
	lw	a9, sp, 164
	sw	a7, a9, 4
	addi	a13, hp, 0
	addi	hp, hp, 24
	lui	a14, 45056
	addi	a14, a14, 1272
	sw	a13, a14, 0
	sw	a13, a10, 20
	sw	a13, a17, 16
	sw	a13, a9, 12
	sw	a13, a7, 8
	sw	a13, a5, 4
	addi	a14, hp, 0
	addi	hp, hp, 28
	lui	a15, 49152
	addi	a15, a15, -1192
	sw	a14, a15, 0
	lw	a15, sp, 140
	sw	a14, a15, 24
	sw	a14, a10, 20
	lw	a16, sp, 168
	sw	a14, a16, 16
	sw	a14, a17, 12
	sw	a14, a19, 8
	sw	a14, a9, 4
	addi	a18, hp, 0
	addi	hp, hp, 28
	lui	a20, 49152
	addi	a20, a20, 484
	sw	a18, a20, 0
	sw	a18, a15, 24
	sw	a18, a10, 20
	sw	a18, a16, 16
	sw	a18, a17, 12
	sw	a18, a19, 8
	sw	a18, a9, 4
	addi	a21, hp, 0
	addi	hp, hp, 104
	lui	a15, 49152
	addi	a15, a15, 1216
	sw	a21, a15, 0
	lw	a15, sp, 124
	sw	a21, a15, 100
	sw	a21, a18, 96
	sw	a21, a14, 92
	sw	a21, a12, 88
	sw	a21, a2, 84
	sw	a21, a6, 80
	lw	a2, sp, 160
	sw	a21, a2, 76
	lw	a2, sp, 156
	sw	a21, a2, 72
	lw	a2, sp, 152
	sw	a21, a2, 68
	lw	a2, sp, 148
	sw	a21, a2, 64
	lw	a2, sp, 144
	sw	a21, a2, 60
	sw	a21, a1, 56
	sw	a21, a0, 52
	sw	a21, a10, 48
	sw	a21, a17, 44
	lw	a0, sp, 128
	sw	a21, a0, 40
	sw	a21, a19, 36
	sw	a21, a9, 32
	sw	a21, a13, 28
	sw	a21, a7, 24
	sw	a21, a11, 20
	sw	a21, a4, 16
	sw	a21, a5, 12
	sw	a21, a8, 8
	sw	a21, a3, 4
	addi	a0, zero, 128
	addi	a1, zero, 128
	sw	sp, ra, 172
	addi	sp, sp, 176
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -176
	lw	ra, sp, 172
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
	lui	x31, 61440
	addi	x31, x31, -1160
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
	lui	a0, 57344
	addi	a0, a0, 412
	flw	fa0, a0, 0
	flw	fa1, sp, 8
	fmul.s	fa0, fa1, fa0, rne
	lw	a21, sp, 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
	flw	fa0, sp, 8
	jalr	zero, ra, 0
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa2, a0, 0
	lui	a0, 57344
	addi	a0, a0, 412
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
	lui	a0, 57344
	addi	a0, a0, 404
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa1, fa1, fa0, rne
	flw	fa0, sp, 8
	jal	zero, -144
	flw	fa0, sp, 8
	jalr	zero, ra, 0
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa1, a0, 0
	lui	a0, 57344
	addi	a0, a0, 412
	flw	fa2, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	addi	a21, hp, 0
	addi	hp, hp, 8
	lui	a0, 57344
	addi	a0, a0, 416
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
	lui	a0, 57344
	addi	a0, a0, 400
	flw	fa3, a0, 0
	lui	a0, 57344
	addi	a0, a0, 404
	flw	fa4, a0, 0
	fmul.s	fa0, fa4, fa0, rne
	fsub.s	fa0, fa3, fa0, rne
	lui	a0, 57344
	addi	a0, a0, 396
	flw	fa3, a0, 0
	fmul.s	fa1, fa3, fa1, rne
	fadd.s	fa0, fa0, fa1, rne
	lui	a0, 57344
	addi	a0, a0, 392
	flw	fa1, a0, 0
	fmul.s	fa1, fa1, fa2, rne
	fsub.s	fa0, fa0, fa1, rne
	jalr	zero, ra, 0
	fmul.s	fa1, fa0, fa0, rne
	fmul.s	fa2, fa0, fa1, rne
	fmul.s	fa3, fa2, fa1, rne
	fmul.s	fa1, fa3, fa1, rne
	lui	a0, 57344
	addi	a0, a0, 388
	flw	fa4, a0, 0
	fmul.s	fa2, fa4, fa2, rne
	fsub.s	fa0, fa0, fa2, rne
	lui	a0, 57344
	addi	a0, a0, 384
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 57344
	addi	a0, a0, 380
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -752
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 64
	lui	a0, 57344
	addi	a0, a0, 376
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 57344
	addi	a0, a0, 408
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa2, a0, 0
	lui	a0, 57344
	addi	a0, a0, 404
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
	lui	a0, 57344
	addi	a0, a0, 408
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa2, a0, 0
	lui	a0, 57344
	addi	a0, a0, 372
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa0, a0, 0
	lui	a0, 57344
	addi	a0, a0, 404
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
	lui	a0, 57344
	addi	a0, a0, 400
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -1252
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 64
	lui	a0, 57344
	addi	a0, a0, 376
	flw	fa0, a0, 0
	flw	fa1, sp, 0
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 57344
	addi	a0, a0, 408
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa2, a0, 0
	lui	a0, 57344
	addi	a0, a0, 404
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
	lui	a0, 57344
	addi	a0, a0, 376
	flw	fa0, a0, 0
	flw	fa1, sp, 24
	fmul.s	fa0, fa1, fa0, rne
	lui	a0, 57344
	addi	a0, a0, 408
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa2, a0, 0
	lui	a0, 57344
	addi	a0, a0, 372
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
	lui	a0, 57344
	addi	a0, a0, 408
	flw	fa0, a0, 0
	lui	a0, 57344
	addi	a0, a0, 404
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
	lui	a0, 57344
	addi	a0, a0, 1984
	flw	fa7, a0, 0
	fmul.s	fa2, fa7, fa2, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 57344
	addi	a0, a0, 1980
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa3, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 57344
	addi	a0, a0, 1976
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa4, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 57344
	addi	a0, a0, 1972
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa5, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 57344
	addi	a0, a0, 1968
	flw	fa2, a0, 0
	fmul.s	fa2, fa2, fa6, rne
	fadd.s	fa0, fa0, fa2, rne
	lui	a0, 57344
	addi	a0, a0, 1964
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
	lui	a0, 57344
	addi	a0, a0, 1960
	flw	fa1, a0, 0
	fsw	sp, fa0, 8
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	ra, -1944
	addi	sp, sp, -20
	lw	ra, sp, 16
	addi	a1, zero, 0
	bne	a0, a1, 264
	lui	a0, 57344
	addi	a0, a0, 1956
	flw	fa0, a0, 0
	lui	a0, 57344
	addi	a0, a0, 1952
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
	lui	a0, 57344
	addi	a0, a0, 1940
	flw	fa0, a0, 0
	flw	fa1, sp, 16
	fdiv.s	fa0, fa1, fa0, rne
	lui	a0, 57344
	addi	a0, a0, 1944
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
	lui	a0, 57344
	addi	a0, a0, 1948
	flw	fa0, a0, 0
	flw	fa1, sp, 16
	fdiv.s	fa0, fa1, fa0, rne
	lui	a0, 57344
	addi	a0, a0, 1944
	flw	fa1, a0, 0
	flw	fa2, sp, 8
	fsub.s	fa1, fa2, fa1, rne
	lui	a0, 57344
	addi	a0, a0, 1944
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
	lui	a1, 61440
	addi	a1, a1, -1500
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
	jal	zero, -2576
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
