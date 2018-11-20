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
