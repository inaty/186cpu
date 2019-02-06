!min_caml_fequal:
!	feq.s	a0, fa0, fa1
!	ret
!min_caml_fless:
!	flt.s	a0, fa0, fa1
!	ret
!min_caml_fispos:
!	fcvt.s.w	ft0, zero, rne
!	flt.s	a0, ft0, fa0
!	ret
!min_caml_fisneg:
!	fcvt.s.w	ft0, zero, rne
!	flt.s	a0, fa0, ft0
!	ret
!min_caml_fiszero:
!	fcvt.s.w	ft0, zero, rne
!	feq.s	a0, fa0, ft0
!	ret
!min_caml_fhalf:
!	li	x31, min_caml_fhalf_float_0.5
!	flw	ft0, x31, 0
!	fmul.s	fa0, fa0, ft0, rne
!	ret
!min_caml_fsqr:
!	fmul.s	fa0, fa0, fa0, rne
!	ret
!min_caml_fabs:
!	fsgnjx.s	fa0, fa0, fa0
!	ret
!min_caml_fneg:
!	fsgnjn.s	fa0, fa0, fa0
!	ret
!min_caml_sqrt:
!	fsqrt.s	fa0, fa0, rne
!	ret
!min_caml_floor:
!	fcvt.w.s	t0, fa0, rdn
!	fcvt.s.w	fa0, t0, rne
!	ret
!min_caml_int_of_float:
!	fcvt.w.s	a0, fa0, rtz
!	ret
!min_caml_float_of_int:
!	fcvt.s.w	fa0, a0, rne
!	ret
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
min_caml_sin:
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
min_caml_cos:
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
min_caml_atan_l.110:
	float	0.10000000000
min_caml_atan_l.107:
	float	1.57079630000
min_caml_atan_l.104:
	float	1.00000000000
min_caml_atan_l.102:
	float	0.78539815000
min_caml_atan_l.100:
	float	2.43750000000
min_caml_atan_l.98:
	float	0.43750000000
min_caml_atan_l.96:
	float	0.60035485000
min_caml_atan_l.94:
	float	-0.08976446000
min_caml_atan_l.92:
	float	0.11111110400
min_caml_atan_l.90:
	float	-0.14285714200
min_caml_atan_l.88:
	float	0.20000000000
min_caml_atan_l.86:
	float	-0.33333330000
min_caml_atan_min_caml_atan_kernel_atan.41:
	fmul.s	fa1, fa0, fa0, rne ! 5-5
	fmul.s	fa2, fa0, fa1, rne ! 6-6
	fmul.s	fa3, fa2, fa1, rne ! 7-7
	fmul.s	fa4, fa3, fa1, rne ! 8-8
	fmul.s	fa5, fa4, fa1, rne ! 9-9
	fmul.s	fa6, fa5, fa1, rne ! 10-10
	fmul.s	fa1, fa6, fa1, rne ! 11-11
	li	a0, min_caml_atan_l.86 ! 12-12
	flw	fa7, a0, 0 ! 12-12
	fmul.s	fa2, fa7, fa2, rne ! 12-12
	fadd.s	fa0, fa0, fa2, rne ! 12-12
	li	a0, min_caml_atan_l.88 ! 12-12
	flw	fa2, a0, 0 ! 12-12
	fmul.s	fa2, fa2, fa3, rne ! 12-12
	fadd.s	fa0, fa0, fa2, rne ! 12-12
	li	a0, min_caml_atan_l.90 ! 12-12
	flw	fa2, a0, 0 ! 12-12
	fmul.s	fa2, fa2, fa4, rne ! 12-12
	fadd.s	fa0, fa0, fa2, rne ! 12-12
	li	a0, min_caml_atan_l.92 ! 13-13
	flw	fa2, a0, 0 ! 13-13
	fmul.s	fa2, fa2, fa5, rne ! 13-13
	fadd.s	fa0, fa0, fa2, rne ! 12-13
	li	a0, min_caml_atan_l.94 ! 13-13
	flw	fa2, a0, 0 ! 13-13
	fmul.s	fa2, fa2, fa6, rne ! 13-13
	fadd.s	fa0, fa0, fa2, rne ! 12-13
	li	a0, min_caml_atan_l.96 ! 13-13
	flw	fa2, a0, 0 ! 13-13
	fmul.s	fa1, fa2, fa1, rne ! 13-13
	fadd.s	fa0, fa0, fa1, rne ! 12-13
	ret ! 12-13
min_caml_atan:
	fabs.s	fa1, fa0 ! 3-3
	li	a0, min_caml_atan_l.98 ! 15-15
	flw	fa2, a0, 0 ! 15-15
	flt.s	t0, fa2, fa1 ! 15-26
	bne	zero, t0, min_caml_atan_beq_else.118 ! 15-26
	fsw	sp, fa0, 0 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_atan_min_caml_atan_kernel_atan.41
	addi	sp, sp, -8
	lw	ra, sp, 4
	flw	fa1, sp, 0 ! 0-0
	fsgnj.s	fa0, fa0, fa1 ! 17-17
	ret ! 17-17
min_caml_atan_beq_else.118:
	li	a0, min_caml_atan_l.100 ! 21-21
	flw	fa2, a0, 0 ! 21-21
	flt.s	t0, fa2, fa1 ! 21-26
	bne	zero, t0, min_caml_atan_beq_else.119 ! 21-26
	li	a0, min_caml_atan_l.102 ! 22-22
	flw	fa2, a0, 0 ! 22-22
	li	a0, min_caml_atan_l.104 ! 22-22
	flw	fa3, a0, 0 ! 22-22
	fsub.s	fa3, fa1, fa3, rne ! 22-22
	li	a0, min_caml_atan_l.104 ! 22-22
	flw	fa4, a0, 0 ! 22-22
	fadd.s	fa1, fa1, fa4, rne ! 22-22
	fdiv.s	fa1, fa3, fa1, rne ! 22-22
	fsw	sp, fa0, 0 ! 0-0
	fsw	sp, fa2, 4 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_atan_min_caml_atan_kernel_atan.41
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 4 ! 0-0
	fadd.s	fa0, fa1, fa0, rne ! 22-22
	flw	fa1, sp, 0 ! 0-0
	fsgnj.s	fa0, fa0, fa1 ! 23-23
	ret ! 23-23
min_caml_atan_beq_else.119:
	li	a0, min_caml_atan_l.107 ! 25-25
	flw	fa2, a0, 0 ! 25-25
	li	a0, min_caml_atan_l.104 ! 25-25
	flw	fa3, a0, 0 ! 25-25
	fdiv.s	fa1, fa3, fa1, rne ! 25-25
	fsw	sp, fa0, 0 ! 0-0
	fsw	sp, fa2, 8 ! 0-0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_atan_min_caml_atan_kernel_atan.41
	addi	sp, sp, -16
	lw	ra, sp, 12
	flw	fa1, sp, 8 ! 0-0
	fsub.s	fa0, fa1, fa0, rne ! 25-25
	flw	fa1, sp, 0 ! 0-0
	fsgnj.s	fa0, fa0, fa1, rne ! 26-26
	ret ! 26-26
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
min_caml_print_int_mul10.27:
	slli	a1, a0, 3 ! 1
	slli	a0, a0, 1 ! 1
	add	a0, a1, a0 ! 1
	ret ! 1
min_caml_print_int_loop.53:
	lw	a2, a21, 4 ! 0
	addi	a3, a0, 1 ! 4
	bne	a3, a1, min_caml_print_int_be_else.82
	ret ! 4
min_caml_print_int_be_else.82:
	add	a3, a0, a1 ! 5
	srli	a3, a3, 1 ! 5
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a21, 12 ! 0
	sw	sp, a2, 16 ! 0
	mv	a0, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_print_int_mul10.27
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	blt	a1, a0, min_caml_print_int_bge_else.83
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 4 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int_bge_else.83:
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int_div10.29:
	mv	a21, hp ! 3
	addi	hp, hp, 8 ! 3
	li	a1, min_caml_print_int_loop.53 ! 3
	sw	a21, a1, 0 ! 3
	sw	a21, a0, 4 ! 3
	li	a0, 0 ! 7
	li	a1, 100000000 ! 7
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_print_int_inner.31:
	li	a1, 0 ! 9
	bne	a0, a1, min_caml_print_int_be_else.84
	ret ! 9
min_caml_print_int_be_else.84:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int_div10.29
	addi	sp, sp, -8
	lw	ra, sp, 4
	slli	a1, a0, 3 ! 11
	slli	a2, a0, 1 ! 11
	add	a1, a1, a2 ! 11
	lw	a2, sp, 0 ! 0
	sub	a1, a2, a1 ! 11
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_print_int_inner.31
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	addi	a0, a0, 48 ! 12
	j	min_caml_print_char
min_caml_print_int:
	li	a1, 0 ! 14
	bne	a0, a1, min_caml_print_int_be_else.86
	li	a0, 48 ! 14
	j	min_caml_print_char
min_caml_print_int_be_else.86:
	li	a1, 0 ! 16
	blt	a1, a0, min_caml_print_int_bge_else.87
	li	a1, 45 ! 16
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	neg	a0, a0 ! 16
	j	min_caml_print_int_bge_cont.88
min_caml_print_int_bge_else.87:
min_caml_print_int_bge_cont.88:
	j	min_caml_print_int_inner.31
min_caml_print_newline:
	li	t0, 10
	out	zero, t0, 0
	ret
!min_caml_truncate:
!	j	min_caml_int_of_float
!min_caml_fhalf_float_0.5:
!	float	0.5
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
min_caml_n_objects:
	int	0
min_caml_dummy:
	float	0.0
min_caml_objects:
	addr	min_caml_object_00
	addr	min_caml_object_01
	addr	min_caml_object_02
	addr	min_caml_object_03
	addr	min_caml_object_04
	addr	min_caml_object_05
	addr	min_caml_object_06
	addr	min_caml_object_07
	addr	min_caml_object_08
	addr	min_caml_object_09
	addr	min_caml_object_10
	addr	min_caml_object_11
	addr	min_caml_object_12
	addr	min_caml_object_13
	addr	min_caml_object_14
	addr	min_caml_object_15
	addr	min_caml_object_16
	addr	min_caml_object_17
	addr	min_caml_object_18
	addr	min_caml_object_19
	addr	min_caml_object_20
	addr	min_caml_object_21
	addr	min_caml_object_22
	addr	min_caml_object_23
	addr	min_caml_object_24
	addr	min_caml_object_25
	addr	min_caml_object_26
	addr	min_caml_object_27
	addr	min_caml_object_28
	addr	min_caml_object_29
	addr	min_caml_object_30
	addr	min_caml_object_31
	addr	min_caml_object_32
	addr	min_caml_object_33
	addr	min_caml_object_34
	addr	min_caml_object_35
	addr	min_caml_object_36
	addr	min_caml_object_37
	addr	min_caml_object_38
	addr	min_caml_object_39
	addr	min_caml_object_40
	addr	min_caml_object_41
	addr	min_caml_object_42
	addr	min_caml_object_43
	addr	min_caml_object_44
	addr	min_caml_object_45
	addr	min_caml_object_46
	addr	min_caml_object_47
	addr	min_caml_object_48
	addr	min_caml_object_49
	addr	min_caml_object_50
	addr	min_caml_object_51
	addr	min_caml_object_52
	addr	min_caml_object_53
	addr	min_caml_object_54
	addr	min_caml_object_55
	addr	min_caml_object_56
	addr	min_caml_object_57
	addr	min_caml_object_58
	addr	min_caml_object_59
min_caml_object_00:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_01:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_02:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_03:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_04:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_05:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_06:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_07:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_08:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_09:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_10:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_11:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_12:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_13:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_14:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_15:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_16:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_17:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_18:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_19:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_20:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_21:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_22:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_23:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_24:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_25:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_26:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_27:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_28:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_29:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_30:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_31:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_32:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_33:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_34:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_35:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_36:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_37:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_38:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_39:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_40:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_41:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_42:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_43:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_44:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_45:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_46:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_47:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_48:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_49:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_50:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_51:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_52:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_53:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_54:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_55:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_56:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_57:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_58:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_object_59:
	int	0
	int	0
	int	0
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	int	0
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
	addr	min_caml_dummy
min_caml_screen:
	float	0.0
	float	0.0
	float	0.0
min_caml_viewpoint:
	float	0.0
	float	0.0
	float	0.0
min_caml_light:
	float	0.0
	float	0.0
	float	0.0
min_caml_beam:
	float	255.0
min_caml_and_net:
	addr	min_caml_and_net_sub_00
	addr	min_caml_and_net_sub_01
	addr	min_caml_and_net_sub_02
	addr	min_caml_and_net_sub_03
	addr	min_caml_and_net_sub_04
	addr	min_caml_and_net_sub_05
	addr	min_caml_and_net_sub_06
	addr	min_caml_and_net_sub_07
	addr	min_caml_and_net_sub_08
	addr	min_caml_and_net_sub_09
	addr	min_caml_and_net_sub_10
	addr	min_caml_and_net_sub_11
	addr	min_caml_and_net_sub_12
	addr	min_caml_and_net_sub_13
	addr	min_caml_and_net_sub_14
	addr	min_caml_and_net_sub_15
	addr	min_caml_and_net_sub_16
	addr	min_caml_and_net_sub_17
	addr	min_caml_and_net_sub_18
	addr	min_caml_and_net_sub_19
	addr	min_caml_and_net_sub_20
	addr	min_caml_and_net_sub_21
	addr	min_caml_and_net_sub_22
	addr	min_caml_and_net_sub_23
	addr	min_caml_and_net_sub_24
	addr	min_caml_and_net_sub_25
	addr	min_caml_and_net_sub_26
	addr	min_caml_and_net_sub_27
	addr	min_caml_and_net_sub_28
	addr	min_caml_and_net_sub_29
	addr	min_caml_and_net_sub_30
	addr	min_caml_and_net_sub_31
	addr	min_caml_and_net_sub_32
	addr	min_caml_and_net_sub_33
	addr	min_caml_and_net_sub_34
	addr	min_caml_and_net_sub_35
	addr	min_caml_and_net_sub_36
	addr	min_caml_and_net_sub_37
	addr	min_caml_and_net_sub_38
	addr	min_caml_and_net_sub_39
	addr	min_caml_and_net_sub_40
	addr	min_caml_and_net_sub_41
	addr	min_caml_and_net_sub_42
	addr	min_caml_and_net_sub_43
	addr	min_caml_and_net_sub_44
	addr	min_caml_and_net_sub_45
	addr	min_caml_and_net_sub_46
	addr	min_caml_and_net_sub_47
	addr	min_caml_and_net_sub_48
	addr	min_caml_and_net_sub_49
min_caml_and_net_sub_00:
	int	-1
min_caml_and_net_sub_01:
	int	-1
min_caml_and_net_sub_02:
	int	-1
min_caml_and_net_sub_03:
	int	-1
min_caml_and_net_sub_04:
	int	-1
min_caml_and_net_sub_05:
	int	-1
min_caml_and_net_sub_06:
	int	-1
min_caml_and_net_sub_07:
	int	-1
min_caml_and_net_sub_08:
	int	-1
min_caml_and_net_sub_09:
	int	-1
min_caml_and_net_sub_10:
	int	-1
min_caml_and_net_sub_11:
	int	-1
min_caml_and_net_sub_12:
	int	-1
min_caml_and_net_sub_13:
	int	-1
min_caml_and_net_sub_14:
	int	-1
min_caml_and_net_sub_15:
	int	-1
min_caml_and_net_sub_16:
	int	-1
min_caml_and_net_sub_17:
	int	-1
min_caml_and_net_sub_18:
	int	-1
min_caml_and_net_sub_19:
	int	-1
min_caml_and_net_sub_20:
	int	-1
min_caml_and_net_sub_21:
	int	-1
min_caml_and_net_sub_22:
	int	-1
min_caml_and_net_sub_23:
	int	-1
min_caml_and_net_sub_24:
	int	-1
min_caml_and_net_sub_25:
	int	-1
min_caml_and_net_sub_26:
	int	-1
min_caml_and_net_sub_27:
	int	-1
min_caml_and_net_sub_28:
	int	-1
min_caml_and_net_sub_29:
	int	-1
min_caml_and_net_sub_30:
	int	-1
min_caml_and_net_sub_31:
	int	-1
min_caml_and_net_sub_32:
	int	-1
min_caml_and_net_sub_33:
	int	-1
min_caml_and_net_sub_34:
	int	-1
min_caml_and_net_sub_35:
	int	-1
min_caml_and_net_sub_36:
	int	-1
min_caml_and_net_sub_37:
	int	-1
min_caml_and_net_sub_38:
	int	-1
min_caml_and_net_sub_39:
	int	-1
min_caml_and_net_sub_40:
	int	-1
min_caml_and_net_sub_41:
	int	-1
min_caml_and_net_sub_42:
	int	-1
min_caml_and_net_sub_43:
	int	-1
min_caml_and_net_sub_44:
	int	-1
min_caml_and_net_sub_45:
	int	-1
min_caml_and_net_sub_46:
	int	-1
min_caml_and_net_sub_47:
	int	-1
min_caml_and_net_sub_48:
	int	-1
min_caml_and_net_sub_49:
	int	-1
