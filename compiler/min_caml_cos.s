min_caml_cos_l.262:
	float	0.10000000000
min_caml_cos_l.238:
	float	0.78539815000
min_caml_cos_l.229:
	float	1.57079630000
min_caml_cos_l.223:
	float	-1.00000000000
min_caml_cos_l.218:
	float	3.14159260000
min_caml_cos_l.216:
	float	0.00019587841
min_caml_cos_l.214:
	float	0.00833282400
min_caml_cos_l.212:
	float	0.16666668000
min_caml_cos_l.210:
	float	0.00136950680
min_caml_cos_l.208:
	float	0.04166368000
min_caml_cos_l.205:
	float	1.00000000000
min_caml_cos_l.199:
	float	0.50000000000
min_caml_cos_l.197:
	float	6.28318520000
min_caml_cos_l.195:
	float	2.00000000000
min_caml_cos_loop1.179:
	flw	fa1, a21, 4 ! 0-0
	flt.s	t0, fa0, fa1 ! 5-5
	bne	zero, t0, min_caml_cos_beq_else.275 ! 5-5
	ret ! 5-5
min_caml_cos_beq_else.275:
	li	a0, min_caml_cos_l.195 ! 5-5
	flw	fa1, a0, 0 ! 5-5
	fmul.s	fa0, fa0, fa1, rne ! 5-5
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_cos_loop2.182:
	li	a0, min_caml_cos_l.197 ! 9-9
	flw	fa2, a0, 0 ! 9-9
	flt.s	t0, fa2, fa0 ! 9-14
	bne	zero, t0, min_caml_cos_beq_else.276 ! 9-14
	ret ! 10-10
min_caml_cos_beq_else.276:
	flt.s	t0, fa1, fa0 ! 13-13
	bne	zero, t0, min_caml_cos_beq_else.277 ! 13-13
	li	a0, min_caml_cos_l.199 ! 13-13
	flw	fa2, a0, 0 ! 13-13
	fmul.s	fa1, fa1, fa2, rne ! 13-13
	j	min_caml_cos_loop2.182
min_caml_cos_beq_else.277:
	fsub.s	fa0, fa0, fa1, rne ! 13-13
	j	min_caml_cos_loop2.182
min_caml_cos_reduction_2pi.78:
	li	a0, min_caml_cos_l.197 ! 2-2
	flw	fa1, a0, 0 ! 2-2
	mv	a21, hp ! 3-15
	addi	hp, hp, 8 ! 3-15
	li	a0, min_caml_cos_loop1.179 ! 3-15
	sw	a21, a0, 0 ! 3-15
	fsw	a21, fa0, 4 ! 3-15
	fsw	sp, fa0, 0 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 4
	addi	sp, sp, 8
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -8
	lw	ra, sp, 4
	fmv.s	fa1, fa0
	flw	fa0, sp, 0 ! 0-0
	j	min_caml_cos_loop2.182
min_caml_cos_kernel_cos.80:
	fmul.s	fa0, fa0, fa0, rne ! 17-17
	fmul.s	fa1, fa0, fa0, rne ! 18-18
	fmul.s	fa2, fa0, fa1, rne ! 19-19
	li	a0, min_caml_cos_l.205 ! 20-20
	flw	fa3, a0, 0 ! 20-20
	li	a0, min_caml_cos_l.199 ! 20-20
	flw	fa4, a0, 0 ! 20-20
	fmul.s	fa0, fa4, fa0, rne ! 20-20
	fsub.s	fa0, fa3, fa0, rne ! 20-20
	li	a0, min_caml_cos_l.208 ! 20-20
	flw	fa3, a0, 0 ! 20-20
	fmul.s	fa1, fa3, fa1, rne ! 20-20
	fadd.s	fa0, fa0, fa1, rne ! 20-20
	li	a0, min_caml_cos_l.210 ! 20-20
	flw	fa1, a0, 0 ! 20-20
	fmul.s	fa1, fa1, fa2, rne ! 20-20
	fsub.s	fa0, fa0, fa1, rne ! 20-20
	ret ! 20-20
min_caml_cos_kernel_sin.82:
	fmul.s	fa1, fa0, fa0, rne ! 22-22
	fmul.s	fa2, fa0, fa1, rne ! 23-23
	fmul.s	fa3, fa2, fa1, rne ! 24-24
	fmul.s	fa1, fa3, fa1, rne ! 25-25
	li	a0, min_caml_cos_l.212 ! 26-26
	flw	fa4, a0, 0 ! 26-26
	fmul.s	fa2, fa4, fa2, rne ! 26-26
	fsub.s	fa0, fa0, fa2, rne ! 26-26
	li	a0, min_caml_cos_l.214 ! 26-26
	flw	fa2, a0, 0 ! 26-26
	fmul.s	fa2, fa2, fa3, rne ! 26-26
	fadd.s	fa0, fa0, fa2, rne ! 26-26
	li	a0, min_caml_cos_l.216 ! 26-26
	flw	fa2, a0, 0 ! 26-26
	fmul.s	fa1, fa2, fa1, rne ! 26-26
	fsub.s	fa0, fa0, fa1, rne ! 26-26
	ret ! 26-26
min_caml_cos_sin.84:
	fabs.s	fa1, fa0 ! 29-29
	fsw	sp, fa0, 0 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_cos_reduction_2pi.78
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_cos_l.218 ! 32-32
	flw	fa1, a0, 0 ! 32-32
	flt.s	t0, fa1, fa0 ! 32-32
	bne	zero, t0, min_caml_cos_beq_else.278 ! 32-32
	mv	a0, hp ! 32-32
	addi	hp, hp, 8 ! 32-32
	fsw	a0, fa0, 4 ! 32-32
	flw	fa0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 32-32
	j	min_caml_cos_beq_cont.279
min_caml_cos_beq_else.278:
	li	a0, min_caml_cos_l.223 ! 32-32
	flw	fa1, a0, 0 ! 32-32
	flw	fa2, sp, 0 ! 0-0
	fmul.s	fa1, fa2, fa1, rne ! 32-32
	li	a0, min_caml_cos_l.218 ! 32-32
	flw	fa2, a0, 0 ! 32-32
	fsub.s	fa0, fa0, fa2, rne ! 32-32
	mv	a0, hp ! 32-32
	addi	hp, hp, 8 ! 32-32
	fsw	a0, fa0, 4 ! 32-32
	fsw	a0, fa1, 0 ! 32-32
min_caml_cos_beq_cont.279:
	flw	fa0, a0, 4 ! 31-39
	flw	fa1, a0, 0 ! 31-39
	li	a0, min_caml_cos_l.229 ! 34-34
	flw	fa2, a0, 0 ! 34-34
	flt.s	t0, fa2, fa0 ! 34-34
	bne	zero, t0, min_caml_cos_beq_else.280 ! 34-34
	mv	a0, hp ! 34-34
	addi	hp, hp, 8 ! 34-34
	fsw	a0, fa0, 4 ! 34-34
	fsw	a0, fa1, 0 ! 34-34
	j	min_caml_cos_beq_cont.281
min_caml_cos_beq_else.280:
	li	a0, min_caml_cos_l.218 ! 34-34
	flw	fa2, a0, 0 ! 34-34
	fsub.s	fa0, fa2, fa0, rne ! 34-34
	mv	a0, hp ! 34-34
	addi	hp, hp, 8 ! 34-34
	fsw	a0, fa0, 4 ! 34-34
	fsw	a0, fa1, 0 ! 34-34
min_caml_cos_beq_cont.281:
	flw	fa0, a0, 4 ! 33-39
	flw	fa1, a0, 0 ! 33-39
	li	a0, min_caml_cos_l.238 ! 36-36
	flw	fa2, a0, 0 ! 36-36
	fsw	sp, fa1, 4 ! 0-0
	flt.s	t0, fa0, fa2 ! 36-38
	bne	zero, t0, min_caml_cos_beq_else.282 ! 36-38
	li	a0, min_caml_cos_l.229 ! 37-37
	flw	fa2, a0, 0 ! 37-37
	fsub.s	fa0, fa2, fa0, rne ! 37-37
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos_kernel_cos.80
	addi	sp, sp, -12
	lw	ra, sp, 8
	j	min_caml_cos_beq_cont.283
min_caml_cos_beq_else.282:
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos_kernel_sin.82
	addi	sp, sp, -12
	lw	ra, sp, 8
min_caml_cos_beq_cont.283:
	flw	fa1, sp, 4 ! 0-0
	fsgnj.s	fa0, fa0, fa1, rne ! 39-39
	ret ! 39-39
min_caml_cos_cos.86:
	li	a0, min_caml_cos_l.205 ! 41-41
	flw	fa1, a0, 0 ! 41-41
	fabs.s	fa0, fa0 ! 42-42
	fsw	sp, fa1, 0 ! 0-0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_cos_reduction_2pi.78
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_cos_l.218 ! 46-46
	flw	fa1, a0, 0 ! 46-46
	flt.s	t0, fa1, fa0 ! 46-46
	bne	zero, t0, min_caml_cos_beq_else.284 ! 46-46
	mv	a0, hp ! 46-46
	addi	hp, hp, 8 ! 46-46
	fsw	a0, fa0, 4 ! 46-46
	flw	fa0, sp, 0 ! 0-0
	fsw	a0, fa0, 0 ! 46-46
	j	min_caml_cos_beq_cont.285
min_caml_cos_beq_else.284:
	li	a0, min_caml_cos_l.223 ! 46-46
	flw	fa1, a0, 0 ! 46-46
	li	a0, min_caml_cos_l.218 ! 46-46
	flw	fa2, a0, 0 ! 46-46
	fsub.s	fa0, fa0, fa2, rne ! 46-46
	mv	a0, hp ! 46-46
	addi	hp, hp, 8 ! 46-46
	fsw	a0, fa0, 4 ! 46-46
	fsw	a0, fa1, 0 ! 46-46
min_caml_cos_beq_cont.285:
	flw	fa0, a0, 4 ! 44-57
	flw	fa1, a0, 0 ! 44-57
	li	a0, min_caml_cos_l.229 ! 49-49
	flw	fa2, a0, 0 ! 49-49
	flt.s	t0, fa2, fa0 ! 49-51
	bne	zero, t0, min_caml_cos_beq_else.286 ! 49-51
	mv	a0, hp ! 50-50
	addi	hp, hp, 8 ! 50-50
	fsw	a0, fa0, 4 ! 50-50
	fsw	a0, fa1, 0 ! 50-50
	j	min_caml_cos_beq_cont.287
min_caml_cos_beq_else.286:
	li	a0, min_caml_cos_l.223 ! 51-51
	flw	fa2, a0, 0 ! 51-51
	fmul.s	fa1, fa1, fa2, rne ! 51-51
	li	a0, min_caml_cos_l.218 ! 51-51
	flw	fa2, a0, 0 ! 51-51
	fsub.s	fa0, fa2, fa0, rne ! 51-51
	mv	a0, hp ! 51-51
	addi	hp, hp, 8 ! 51-51
	fsw	a0, fa0, 4 ! 51-51
	fsw	a0, fa1, 0 ! 51-51
min_caml_cos_beq_cont.287:
	flw	fa0, a0, 4 ! 47-57
	flw	fa1, a0, 0 ! 47-57
	li	a0, min_caml_cos_l.238 ! 54-54
	flw	fa2, a0, 0 ! 54-54
	fsw	sp, fa1, 4 ! 0-0
	flt.s	t0, fa0, fa2 ! 54-56
	bne	zero, t0, min_caml_cos_beq_else.288 ! 54-56
	li	a0, min_caml_cos_l.229 ! 55-55
	flw	fa2, a0, 0 ! 55-55
	fsub.s	fa0, fa2, fa0, rne ! 55-55
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos_kernel_sin.82
	addi	sp, sp, -12
	lw	ra, sp, 8
	j	min_caml_cos_beq_cont.289
min_caml_cos_beq_else.288:
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos_kernel_cos.80
	addi	sp, sp, -12
	lw	ra, sp, 8
min_caml_cos_beq_cont.289:
	flw	fa1, sp, 4 ! 0-0
	fsgnj.s	fa0, fa0, fa1, rne ! 57-57
	ret ! 57-57
