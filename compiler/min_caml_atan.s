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
min_caml_atan_min_caml_atan.35:
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
