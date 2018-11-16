	j	min_caml_start
l.304:
	float	0.10000000000
l.276:
	float	0.25000000000
l.260:
	float	-1.00000000000
l.254:
	float	0.00019587841
l.252:
	float	0.00833282400
l.250:
	float	0.16666668000
l.248:
	float	0.00136950680
l.246:
	float	0.04166368000
l.243:
	float	1.00000000000
l.236:
	float	0.50000000000
l.233:
	float	3.14159260000
l.231:
	float	2.00000000000
loop1.209:
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
	bne	a0, a1, be_else.328
	li	a0, l.231 ! 5
	flw	fa0, a0, 0 ! 5
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 5
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.328:
	flw	fa0, sp, 8 ! 0
	ret ! 5
loop2.212:
	li	a0, l.233 ! 9
	flw	fa2, a0, 0 ! 9
	li	a0, l.231 ! 9
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
	bne	a0, a1, be_else.329
	flw	fa0, sp, 8 ! 0
	flw	fa1, sp, 0 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 13
	bne	a0, a1, be_else.330
	flw	fa1, sp, 0 ! 0
	flw	fa0, sp, 8 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 13
	j	loop2.212
be_else.330:
	li	a0, l.236 ! 13
	flw	fa0, a0, 0 ! 13
	flw	fa1, sp, 0 ! 0
	fmul.s	fa1, fa1, fa0, rne ! 13
	flw	fa0, sp, 8 ! 0
	j	loop2.212
be_else.329:
	flw	fa0, sp, 8 ! 0
	ret ! 10
reduction_2pi.96:
	li	a0, l.233 ! 2
	flw	fa1, a0, 0 ! 2
	li	a0, l.231 ! 2
	flw	fa2, a0, 0 ! 2
	fmul.s	fa1, fa1, fa2, rne ! 2
	mv	a21, hp ! 3
	addi	hp, hp, 8 ! 3
	li	a0, loop1.209 ! 3
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
	j	loop2.212
kernel_cos.98:
	fmul.s	fa0, fa0, fa0, rne ! 17
	fmul.s	fa1, fa0, fa0, rne ! 18
	fmul.s	fa2, fa0, fa1, rne ! 19
	li	a0, l.243 ! 20
	flw	fa3, a0, 0 ! 20
	li	a0, l.236 ! 20
	flw	fa4, a0, 0 ! 20
	fmul.s	fa0, fa4, fa0, rne ! 20
	fsub.s	fa0, fa3, fa0, rne ! 20
	li	a0, l.246 ! 20
	flw	fa3, a0, 0 ! 20
	fmul.s	fa1, fa3, fa1, rne ! 20
	fadd.s	fa0, fa0, fa1, rne ! 20
	li	a0, l.248 ! 20
	flw	fa1, a0, 0 ! 20
	fmul.s	fa1, fa1, fa2, rne ! 20
	fsub.s	fa0, fa0, fa1, rne ! 20
	ret ! 20
kernel_sin.100:
	fmul.s	fa1, fa0, fa0, rne ! 22
	fmul.s	fa2, fa0, fa1, rne ! 23
	fmul.s	fa3, fa2, fa1, rne ! 24
	fmul.s	fa1, fa3, fa1, rne ! 25
	li	a0, l.250 ! 26
	flw	fa4, a0, 0 ! 26
	fmul.s	fa2, fa4, fa2, rne ! 26
	fsub.s	fa0, fa0, fa2, rne ! 26
	li	a0, l.252 ! 26
	flw	fa2, a0, 0 ! 26
	fmul.s	fa2, fa2, fa3, rne ! 26
	fadd.s	fa0, fa0, fa2, rne ! 26
	li	a0, l.254 ! 26
	flw	fa2, a0, 0 ! 26
	fmul.s	fa1, fa2, fa1, rne ! 26
	fsub.s	fa0, fa0, fa1, rne ! 26
	ret ! 26
sin.102:
	fmv.s	fa1, fa0 ! 28
	fsw	sp, fa1, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fabs
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	reduction_2pi.96
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, l.233 ! 32
	flw	fa1, a0, 0 ! 32
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 32
	bne	a0, a1, be_else.331
	li	a0, l.260 ! 32
	flw	fa0, a0, 0 ! 32
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 32
	li	a0, l.233 ! 32
	flw	fa1, a0, 0 ! 32
	flw	fa2, sp, 8 ! 0
	fsub.s	fa1, fa2, fa1, rne ! 32
	mv	a0, hp ! 32
	addi	hp, hp, 8 ! 32
	fsw	a0, fa1, 4 ! 32
	fsw	a0, fa0, 0 ! 32
	j	be_cont.332
be_else.331:
	mv	a0, hp ! 32
	addi	hp, hp, 8 ! 32
	flw	fa0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 32
	flw	fa0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 32
be_cont.332:
	flw	fa0, a0, 4 ! 31
	flw	fa1, a0, 0 ! 31
	li	a0, l.233 ! 34
	flw	fa2, a0, 0 ! 34
	li	a0, l.236 ! 34
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
	bne	a0, a1, be_else.333
	li	a0, l.233 ! 34
	flw	fa0, a0, 0 ! 34
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 34
	mv	a0, hp ! 34
	addi	hp, hp, 8 ! 34
	fsw	a0, fa0, 4 ! 34
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 34
	j	be_cont.334
be_else.333:
	mv	a0, hp ! 34
	addi	hp, hp, 8 ! 34
	flw	fa0, sp, 24 ! 0
	fsw	a0, fa0, 4 ! 34
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 34
be_cont.334:
	flw	fa1, a0, 4 ! 33
	flw	fa0, a0, 0 ! 33
	li	a0, l.233 ! 36
	flw	fa2, a0, 0 ! 36
	li	a0, l.276 ! 36
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
	bne	a0, a1, be_else.335
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	kernel_sin.100
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	be_cont.336
be_else.335:
	li	a0, l.233 ! 37
	flw	fa0, a0, 0 ! 37
	li	a0, l.236 ! 37
	flw	fa1, a0, 0 ! 37
	fmul.s	fa0, fa0, fa1, rne ! 37
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 37
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	kernel_cos.98
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.336:
	flw	fa1, sp, 32 ! 0
	fsgnj.s	fa0, fa0, fa1
	ret
cos.104:
	li	a0, l.243 ! 41
	flw	fa1, a0, 0 ! 41
	fsw	sp, fa1, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fabs
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	reduction_2pi.96
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, l.233 ! 46
	flw	fa1, a0, 0 ! 46
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 46
	bne	a0, a1, be_else.337
	li	a0, l.260 ! 46
	flw	fa0, a0, 0 ! 46
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 46
	li	a0, l.233 ! 46
	flw	fa1, a0, 0 ! 46
	flw	fa2, sp, 8 ! 0
	fsub.s	fa1, fa2, fa1, rne ! 46
	mv	a0, hp ! 46
	addi	hp, hp, 8 ! 46
	fsw	a0, fa1, 4 ! 46
	fsw	a0, fa0, 0 ! 46
	j	be_cont.338
be_else.337:
	mv	a0, hp ! 46
	addi	hp, hp, 8 ! 46
	flw	fa0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 46
	flw	fa0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 46
be_cont.338:
	flw	fa0, a0, 4 ! 44
	flw	fa1, a0, 0 ! 44
	li	a0, l.233 ! 49
	flw	fa2, a0, 0 ! 49
	li	a0, l.236 ! 49
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
	bne	a0, a1, be_else.339
	li	a0, l.260 ! 51
	flw	fa0, a0, 0 ! 51
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 51
	li	a0, l.233 ! 51
	flw	fa1, a0, 0 ! 51
	flw	fa2, sp, 16 ! 0
	fsub.s	fa1, fa1, fa2, rne ! 51
	mv	a0, hp ! 51
	addi	hp, hp, 8 ! 51
	fsw	a0, fa1, 4 ! 51
	fsw	a0, fa0, 0 ! 51
	j	be_cont.340
be_else.339:
	mv	a0, hp ! 50
	addi	hp, hp, 8 ! 50
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 4 ! 50
	flw	fa0, sp, 24 ! 0
	fsw	a0, fa0, 0 ! 50
be_cont.340:
	flw	fa1, a0, 4 ! 47
	flw	fa0, a0, 0 ! 47
	li	a0, l.233 ! 54
	flw	fa2, a0, 0 ! 54
	li	a0, l.276 ! 54
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
	bne	a0, a1, be_else.341
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	kernel_cos.98
	addi	sp, sp, -52
	lw	ra, sp, 48
	j	be_cont.342
be_else.341:
	li	a0, l.233 ! 55
	flw	fa0, a0, 0 ! 55
	li	a0, l.236 ! 55
	flw	fa1, a0, 0 ! 55
	fmul.s	fa0, fa0, fa1, rne ! 55
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 55
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	kernel_sin.100
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.342:
	flw	fa1, sp, 32 ! 0
	fsgnj.s	fa0, fa0, fa1
	ret
min_caml_start:
	li	a0, l.304 ! 58
	flw	fa0, a0, 0 ! 58
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	cos.104
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_float
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_newline
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a0, l.304 ! 59
	flw	fa0, a0, 0 ! 59
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	sin.102
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_float
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_print_newline
	addi	sp, sp, -4
	lw	ra, sp, 0
	fin	0
