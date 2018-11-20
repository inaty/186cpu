min_caml_fequal:
	feq.s	a0, fa0, fa1
	ret
min_caml_fless:
	flt.s	a0, fa0, fa1
	ret
min_caml_fispos:
	fcvt.s.w	ft0, zero, rne
	flt.s	a0, ft0, fa0
	ret
min_caml_fisneg:
	fcvt.s.w	ft0, zero, rne
	flt.s	a0, fa0, ft0
	ret
min_caml_fiszero:
	fcvt.s.w	ft0, zero, rne
	feq.s	a0, fa0, ft0
	ret
min_caml_fhalf:
	li	x31, min_caml_fhalf_float_0.5
	flw	ft0, x31, 0
	fmul.s	fa0, fa0, ft0, rne
	ret
min_caml_fsqr:
	fmul.s	fa0, fa0, fa0, rne
	ret
min_caml_fabs:
	fsgnjx.s	fa0, fa0, fa0
	ret
min_caml_fneg:
	fsgnjn.s	fa0, fa0, fa0
	ret
min_caml_sqrt:
	fsqrt.s	fa0, fa0, rne
	ret
min_caml_floor:
	fcvt.w.s	t0, fa0, rdn
	fcvt.s.w	fa0, t0, rne
	ret
min_caml_int_of_float:
	fcvt.w.s	a0, fa0, rtz
	ret
min_caml_float_of_int:
	fcvt.s.w	fa0, a0, rne
	ret
min_caml_l.276:
	float	0.25000000000
min_caml_l.260:
	float	-1.00000000000
min_caml_l.254:
	float	0.00019587841
min_caml_l.252:
	float	0.00833282400
min_caml_l.250:
	float	0.16666668000
min_caml_l.248:
	float	0.00136950680
min_caml_l.246:
	float	0.04166368000
min_caml_l.243:
	float	1.00000000000
min_caml_l.236:
	float	0.50000000000
min_caml_l.233:
	float	3.14159260000
min_caml_l.231:
	float	2.00000000000
min_caml_cos_loop1.209:
	flw	fa1, a21, 4 ! 0
	sw	sp, a21, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa26, fa1
	fmv.s	fa1, fa0
	fmv.s	fa0, fa26
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 5
	bne	a0, a1, min_caml_cos_be_else.328
	li	a0, min_caml_l.231 ! 5
	flw	fa0, a0, 0 ! 5
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 5
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_cos_be_else.328:
	flw	fa0, sp, 8 ! 0
	ret ! 5
min_caml_cos_loop2.212:
	li	a0, min_caml_l.233 ! 9
	flw	fa2, a0, 0 ! 9
	li	a0, min_caml_l.231 ! 9
	flw	fa3, a0, 0 ! 9
	fmul.s	fa2, fa2, fa3, rne ! 9
	fsw	sp, fa1, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa1, fa2
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 9
	bne	a0, a1, min_caml_cos_be_else.329
	flw	fa0, sp, 8 ! 0
	flw	fa1, sp, 0 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 13
	bne	a0, a1, min_caml_cos_be_else.330
	flw	fa1, sp, 0 ! 0
	flw	fa0, sp, 8 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 13
	j	min_caml_cos_loop2.212
min_caml_cos_be_else.330:
	li	a0, min_caml_l.236 ! 13
	flw	fa0, a0, 0 ! 13
	flw	fa1, sp, 0 ! 0
	fmul.s	fa1, fa1, fa0, rne ! 13
	flw	fa0, sp, 8 ! 0
	j	min_caml_cos_loop2.212
min_caml_cos_be_else.329:
	flw	fa0, sp, 8 ! 0
	ret ! 10
min_caml_cos_reduction_2pi.96:
	li	a0, min_caml_l.233 ! 2
	flw	fa1, a0, 0 ! 2
	li	a0, min_caml_l.231 ! 2
	flw	fa2, a0, 0 ! 2
	fmul.s	fa1, fa1, fa2, rne ! 2
	mv	a21, hp ! 3
	addi	hp, hp, 8 ! 3
	li	a0, min_caml_cos_loop1.209 ! 3
	sw	a21, a0, 0 ! 3
	fsw	a21, fa0, 4 ! 3
	fsw	sp, fa0, 0 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	fmv.s	fa1, fa0
	flw	fa0, sp, 0 ! 0
	j	min_caml_cos_loop2.212
min_caml_cos_kernel_cos.98:
	fmul.s	fa0, fa0, fa0, rne ! 17
	fmul.s	fa1, fa0, fa0, rne ! 18
	fmul.s	fa2, fa0, fa1, rne ! 19
	li	a0, min_caml_l.243 ! 20
	flw	fa3, a0, 0 ! 20
	li	a0, min_caml_l.236 ! 20
	flw	fa4, a0, 0 ! 20
	fmul.s	fa0, fa4, fa0, rne ! 20
	fsub.s	fa0, fa3, fa0, rne ! 20
	li	a0, min_caml_l.246 ! 20
	flw	fa3, a0, 0 ! 20
	fmul.s	fa1, fa3, fa1, rne ! 20
	fadd.s	fa0, fa0, fa1, rne ! 20
	li	a0, min_caml_l.248 ! 20
	flw	fa1, a0, 0 ! 20
	fmul.s	fa1, fa1, fa2, rne ! 20
	fsub.s	fa0, fa0, fa1, rne ! 20
	ret ! 20
min_caml_cos_kernel_sin.100:
	fmul.s	fa1, fa0, fa0, rne ! 22
	fmul.s	fa2, fa0, fa1, rne ! 23
	fmul.s	fa3, fa2, fa1, rne ! 24
	fmul.s	fa1, fa3, fa1, rne ! 25
	li	a0, min_caml_l.250 ! 26
	flw	fa4, a0, 0 ! 26
	fmul.s	fa2, fa4, fa2, rne ! 26
	fsub.s	fa0, fa0, fa2, rne ! 26
	li	a0, min_caml_l.252 ! 26
	flw	fa2, a0, 0 ! 26
	fmul.s	fa2, fa2, fa3, rne ! 26
	fadd.s	fa0, fa0, fa2, rne ! 26
	li	a0, min_caml_l.254 ! 26
	flw	fa2, a0, 0 ! 26
	fmul.s	fa1, fa2, fa1, rne ! 26
	fsub.s	fa0, fa0, fa1, rne ! 26
	ret ! 26
min_caml_sin:
	fmv.s	fa1, fa0 ! 28
	fsw	sp, fa1, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fabs
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos_reduction_2pi.96
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, min_caml_l.233 ! 32
	flw	fa1, a0, 0 ! 32
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 32
	bne	a0, a1, min_caml_cos_be_else.331
	li	a0, min_caml_l.260 ! 32
	flw	fa0, a0, 0 ! 32
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 32
	li	a0, min_caml_l.233 ! 32
	flw	fa1, a0, 0 ! 32
	flw	fa2, sp, 8 ! 0
	fsub.s	fa1, fa2, fa1, rne ! 32
	mv	a0, hp ! 32
	addi	hp, hp, 8 ! 32
	fsw	a0, fa1, 4 ! 32
	fsw	a0, fa0, 0 ! 32
	j	min_caml_cos_be_cont.332
min_caml_cos_be_else.331:
	mv	a0, hp ! 32
	addi	hp, hp, 8 ! 32
	flw	fa0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 32
	flw	fa0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 32
min_caml_cos_be_cont.332:
	flw	fa0, a0, 4 ! 31
	flw	fa1, a0, 0 ! 31
	li	a0, min_caml_l.233 ! 34
	flw	fa2, a0, 0 ! 34
	li	a0, min_caml_l.236 ! 34
	flw	fa3, a0, 0 ! 34
	fmul.s	fa2, fa2, fa3, rne ! 34
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa1, fa2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 34
	bne	a0, a1, min_caml_cos_be_else.333
	li	a0, min_caml_l.233 ! 34
	flw	fa0, a0, 0 ! 34
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 34
	mv	a0, hp ! 34
	addi	hp, hp, 8 ! 34
	fsw	a0, fa0, 4 ! 34
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 34
	j	min_caml_cos_be_cont.334
min_caml_cos_be_else.333:
	mv	a0, hp ! 34
	addi	hp, hp, 8 ! 34
	flw	fa0, sp, 24 ! 0
	fsw	a0, fa0, 4 ! 34
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 34
min_caml_cos_be_cont.334:
	flw	fa1, a0, 4 ! 33
	flw	fa0, a0, 0 ! 33
	li	a0, min_caml_l.233 ! 36
	flw	fa2, a0, 0 ! 36
	li	a0, min_caml_l.276 ! 36
	flw	fa3, a0, 0 ! 36
	fmul.s	fa2, fa2, fa3, rne ! 36
	fsw	sp, fa0, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 36
	bne	a0, a1, min_caml_cos_be_else.335
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos_kernel_sin.100
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	min_caml_cos_be_cont.336
min_caml_cos_be_else.335:
	li	a0, min_caml_l.233 ! 37
	flw	fa0, a0, 0 ! 37
	li	a0, min_caml_l.236 ! 37
	flw	fa1, a0, 0 ! 37
	fmul.s	fa0, fa0, fa1, rne ! 37
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 37
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos_kernel_cos.98
	addi	sp, sp, -52
	lw	ra, sp, 48
min_caml_cos_be_cont.336:
	flw	fa1, sp, 32 ! 0
	fsgnj.s	fa0, fa0, fa1
	ret
min_caml_cos:
	li	a0, min_caml_l.243 ! 41
	flw	fa1, a0, 0 ! 41
	fsw	sp, fa1, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fabs
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos_reduction_2pi.96
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, min_caml_l.233 ! 46
	flw	fa1, a0, 0 ! 46
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 46
	bne	a0, a1, min_caml_cos_be_else.337
	li	a0, min_caml_l.260 ! 46
	flw	fa0, a0, 0 ! 46
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 46
	li	a0, min_caml_l.233 ! 46
	flw	fa1, a0, 0 ! 46
	flw	fa2, sp, 8 ! 0
	fsub.s	fa1, fa2, fa1, rne ! 46
	mv	a0, hp ! 46
	addi	hp, hp, 8 ! 46
	fsw	a0, fa1, 4 ! 46
	fsw	a0, fa0, 0 ! 46
	j	min_caml_cos_be_cont.338
min_caml_cos_be_else.337:
	mv	a0, hp ! 46
	addi	hp, hp, 8 ! 46
	flw	fa0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 46
	flw	fa0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 46
min_caml_cos_be_cont.338:
	flw	fa0, a0, 4 ! 44
	flw	fa1, a0, 0 ! 44
	li	a0, min_caml_l.233 ! 49
	flw	fa2, a0, 0 ! 49
	li	a0, min_caml_l.236 ! 49
	flw	fa3, a0, 0 ! 49
	fmul.s	fa2, fa2, fa3, rne ! 49
	fsw	sp, fa0, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	fmv.s	fa1, fa2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 49
	bne	a0, a1, min_caml_cos_be_else.339
	li	a0, min_caml_l.260 ! 51
	flw	fa0, a0, 0 ! 51
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 51
	li	a0, min_caml_l.233 ! 51
	flw	fa1, a0, 0 ! 51
	flw	fa2, sp, 16 ! 0
	fsub.s	fa1, fa1, fa2, rne ! 51
	mv	a0, hp ! 51
	addi	hp, hp, 8 ! 51
	fsw	a0, fa1, 4 ! 51
	fsw	a0, fa0, 0 ! 51
	j	min_caml_cos_be_cont.340
min_caml_cos_be_else.339:
	mv	a0, hp ! 50
	addi	hp, hp, 8 ! 50
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 4 ! 50
	flw	fa0, sp, 24 ! 0
	fsw	a0, fa0, 0 ! 50
min_caml_cos_be_cont.340:
	flw	fa1, a0, 4 ! 47
	flw	fa0, a0, 0 ! 47
	li	a0, min_caml_l.233 ! 54
	flw	fa2, a0, 0 ! 54
	li	a0, min_caml_l.276 ! 54
	flw	fa3, a0, 0 ! 54
	fmul.s	fa2, fa2, fa3, rne ! 54
	fsw	sp, fa0, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 54
	bne	a0, a1, min_caml_cos_be_else.341
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos_kernel_cos.98
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	min_caml_cos_be_cont.342
min_caml_cos_be_else.341:
	li	a0, min_caml_l.233 ! 55
	flw	fa0, a0, 0 ! 55
	li	a0, min_caml_l.236 ! 55
	flw	fa1, a0, 0 ! 55
	fmul.s	fa0, fa0, fa1, rne ! 55
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 55
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_cos_kernel_sin.100
	addi	sp, sp, -52
	lw	ra, sp, 48
min_caml_cos_be_cont.342:
	flw	fa1, sp, 32 ! 0
	fsgnj.s	fa0, fa0, fa1
	ret
min_caml_atan_l.120:
	float	0.10000000000
min_caml_atan_l.117:
	float	2.00000000000
min_caml_atan_l.114:
	float	1.00000000000
min_caml_atan_l.112:
	float	4.00000000000
min_caml_atan_l.110:
	float	2.43750000000
min_caml_atan_l.108:
	float	3.14159260000
min_caml_atan_l.106:
	float	0.43750000000
min_caml_atan_l.104:
	float	0.60035485000
min_caml_atan_l.102:
	float	-0.08976446000
min_caml_atan_l.100:
	float	0.11111110400
min_caml_atan_l.98:
	float	-0.14285714200
min_caml_atan_l.96:
	float	0.20000000000
min_caml_atan_l.94:
	float	-0.33333330000
min_caml_atan_kernel_atan.45:
	fmul.s	fa1, fa0, fa0, rne ! 5
	fmul.s	fa2, fa0, fa1, rne ! 6
	fmul.s	fa3, fa2, fa1, rne ! 7
	fmul.s	fa4, fa3, fa1, rne ! 8
	fmul.s	fa5, fa4, fa1, rne ! 9
	fmul.s	fa6, fa5, fa1, rne ! 10
	fmul.s	fa1, fa6, fa1, rne ! 11
	li	a0, min_caml_atan_l.94 ! 12
	flw	fa7, a0, 0 ! 12
	fmul.s	fa2, fa7, fa2, rne ! 12
	fadd.s	fa0, fa0, fa2, rne ! 12
	li	a0, min_caml_atan_l.96 ! 12
	flw	fa2, a0, 0 ! 12
	fmul.s	fa2, fa2, fa3, rne ! 12
	fadd.s	fa0, fa0, fa2, rne ! 12
	li	a0, min_caml_atan_l.98 ! 12
	flw	fa2, a0, 0 ! 12
	fmul.s	fa2, fa2, fa4, rne ! 12
	fadd.s	fa0, fa0, fa2, rne ! 12
	li	a0, min_caml_atan_l.100 ! 13
	flw	fa2, a0, 0 ! 13
	fmul.s	fa2, fa2, fa5, rne ! 13
	fadd.s	fa0, fa0, fa2, rne ! 12
	li	a0, min_caml_atan_l.102 ! 13
	flw	fa2, a0, 0 ! 13
	fmul.s	fa2, fa2, fa6, rne ! 13
	fadd.s	fa0, fa0, fa2, rne ! 12
	li	a0, min_caml_atan_l.104 ! 13
	flw	fa2, a0, 0 ! 13
	fmul.s	fa1, fa2, fa1, rne ! 13
	fadd.s	fa0, fa0, fa1, rne ! 12
	ret ! 12
min_caml_atan:
	fmv.s	fa1, fa0 ! 2
	fsw	sp, fa1, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fabs
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, min_caml_atan_l.106 ! 15
	flw	fa1, a0, 0 ! 15
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 15
	bne	a0, a1, min_caml_atan_be_else.129
	li	a0, min_caml_atan_l.108 ! 19
	flw	fa0, a0, 0 ! 19
	li	a0, min_caml_atan_l.110 ! 21
	flw	fa1, a0, 0 ! 21
	flw	fa2, sp, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fless
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 21
	bne	a0, a1, min_caml_atan_be_else.130
	li	a0, min_caml_atan_l.117 ! 25
	flw	fa0, a0, 0 ! 25
	flw	fa1, sp, 16 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 25
	li	a0, min_caml_atan_l.114 ! 25
	flw	fa1, a0, 0 ! 25
	flw	fa2, sp, 8 ! 0
	fdiv.s	fa1, fa1, fa2, rne ! 25
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_atan_kernel_atan.45
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 25
	flw	fa1, sp, 0 ! 0
	fsgnj.s	fa0, fa0, fa1
	ret
min_caml_atan_be_else.130:
	li	a0, min_caml_atan_l.112 ! 22
	flw	fa0, a0, 0 ! 22
	flw	fa1, sp, 16 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 22
	li	a0, min_caml_atan_l.114 ! 22
	flw	fa1, a0, 0 ! 22
	flw	fa2, sp, 8 ! 0
	fsub.s	fa1, fa2, fa1, rne ! 22
	li	a0, min_caml_atan_l.114 ! 22
	flw	fa3, a0, 0 ! 22
	fadd.s	fa2, fa2, fa3, rne ! 22
	fdiv.s	fa1, fa1, fa2, rne ! 22
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_atan_kernel_atan.45
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 22
	flw	fa1, sp, 0 ! 0
	fsgnj.s	fa0, fa0, fa1
	ret
min_caml_atan_be_else.129:
	flw	fa0, sp, 8 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_atan_kernel_atan.45
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 0 ! 0
	fsgnj.s	fa0, fa0, fa1
	ret
min_caml_print_char:
	out	zero, a0, 0
	ret
min_caml_print_float:
	printfloat	zero, fa0, rne
	ret
min_caml_create_array:
	slli	a0, a0, 2 ! 要素数を4倍
	add	t0, ap, a0 ! 終点
	mv	a0, ap ! 配列先頭アドレスを先に返り値にセット
min_caml_create_array_loop:
	sw	ap, a1, 0
	addi	ap, ap, 4
	blt	ap, t0, min_caml_create_array_loop
	ret
min_caml_create_float_array:
	slli	a0, a0, 2 ! 要素数を4倍
	add	t0, ap, a0 ! 終点
	mv	a0, ap ! 配列先頭アドレスを先に返り値にセット
min_caml_create_float_array_loop:
	fsw	ap, fa0, 0
	addi	ap, ap, 4
	blt	ap, t0, min_caml_create_float_array_loop
	ret
min_caml_print_int_reverced_array.74:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	div	a5, a0, a4 ! 8
	mul	a4, a5, a4 ! 9
	sub	a0, a0, a4 ! 9
	slli	a4, a2, 2 ! 10
	add	t0, a1, a4 ! 10
	sw	t0, a0, 0 ! 10
	addi	a0, a2, 1 ! 11
	bne	a5, a3, be_else.132
	ret ! 12
be_else.132:
	mv	a2, a0
	mv	a0, a5
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int_reverce.46:
	lw	a4, a21, 4 ! 0
	blt	a1, a4, bge_else.133
	slli	a4, a1, 2 ! 18
	add	t0, a0, a4 ! 18
	lw	a4, t0, 0 ! 18
	slli	a5, a3, 2 ! 18
	add	t0, a2, a5 ! 18
	sw	t0, a4, 0 ! 18
	addi	a1, a1, -1 ! 19
	addi	a3, a3, 1 ! 19
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.133:
	ret ! 16
min_caml_print_int_body.52:
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	blt	a1, a2, bge_else.135
	ret ! 26
bge_else.135:
	slli	a2, a1, 2 ! 24
	add	t0, a0, a2 ! 24
	lw	a2, t0, 0 ! 24
	addi	a2, a2, 48 ! 24
	sw	sp, a0, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_char
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 12 ! 0
	add	a1, a1, a0 ! 25
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int:
	li	a1, 0 ! 2
	bne	a0, a1, be_else.137
	li	a0, 48 ! 2
	j	min_caml_print_char
be_else.137:
	sw	sp, a1, 0 ! 0
	blt	a1, a0, bge_else.138
	li	a2, 45 ! 4
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_print_char
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	neg	a0, a0 ! 4
	j	bge_cont.139
bge_else.138:
bge_cont.139:
	li	a1, 10 ! 5
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	mv	a21, hp ! 6
	addi	hp, hp, 16 ! 6
	li	a0, min_caml_print_int_reverced_array.74 ! 6
	sw	a21, a0, 0 ! 6
	lw	a2, sp, 0 ! 0
	sw	a21, a2, 8 ! 6
	lw	a0, sp, 12 ! 0
	sw	a21, a0, 4 ! 6
	lw	a3, sp, 8 ! 0
	sw	sp, a1, 16 ! 0
	mv	a0, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a2, a0
	mv	a21, hp ! 15
	addi	hp, hp, 8 ! 15
	li	a0, min_caml_print_int_reverce.46 ! 15
	sw	a21, a0, 0 ! 15
	lw	a3, sp, 0 ! 0
	sw	a21, a3, 4 ! 15
	li	a0, 1 ! 21
	lw	a1, sp, 20 ! 0
	addi	a4, a1, -1 ! 21
	lw	a5, sp, 16 ! 0
	sw	sp, a2, 24 ! 0
	sw	sp, a0, 28 ! 0
	mv	a1, a4
	mv	a0, a5
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a21, hp ! 22
	addi	hp, hp, 16 ! 22
	li	a0, min_caml_print_int_body.52 ! 22
	sw	a21, a0, 0 ! 22
	lw	a0, sp, 20 ! 0
	sw	a21, a0, 8 ! 22
	lw	a0, sp, 28 ! 0
	sw	a21, a0, 4 ! 22
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_newline:
	li	t0, 10
	out	zero, t0, 0
	ret
min_caml_truncate:
	j	min_caml_int_of_float
min_caml_fhalf_float_0.5:
	float	0.5
min_caml_read_int:
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	slli	a0, a0, 8
	in	a0, zero, 0
	ret
min_caml_read_float:
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	slli	t0, t0, 8
	in	t0, zero, 0
	fmv.w.x	fa0, t0
	ret
