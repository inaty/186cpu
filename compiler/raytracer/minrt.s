	j	min_caml_start
l.6741:
	float	128.00000000000
l.6692:
	float	0.90000000000
l.6690:
	float	0.20000000000
l.6583:
	float	150.00000000000
l.6580:
	float	-150.00000000000
l.6561:
	float	0.10000000000
l.6557:
	float	-2.00000000000
l.6554:
	float	256.00000000000
l.6521:
	float	20.00000000000
l.6519:
	float	0.05000000000
l.6511:
	float	0.25000000000
l.6502:
	float	10.00000000000
l.6497:
	float	0.30000000000
l.6495:
	float	255.00000000000
l.6491:
	float	0.50000000000
l.6489:
	float	0.15000000000
l.6482:
	float	3.14159270000
l.6480:
	float	30.00000000000
l.6478:
	float	15.00000000000
l.6476:
	float	0.00010000000
l.6427:
	float	100000000.00000000000
l.6421:
	float	1000000000.00000000000
l.6398:
	float	-0.10000000000
l.6384:
	float	0.01000000000
l.6382:
	float	-0.20000000000
l.6163:
	float	2.00000000000
l.6126:
	float	-200.00000000000
l.6123:
	float	200.00000000000
l.6118:
	float	0.01745329300
l.6005:
	float	-1.00000000000
l.6003:
	float	1.00000000000
l.6001:
	float	0.00000000000
xor.2435:
	li	a2, 0 ! 16
	bne	a0, a2, be_else.8855
	mv	a0, a1 ! 16
	ret ! 16
be_else.8855:
	li	a0, 0 ! 16
	bne	a1, a0, be_else.8856
	li	a0, 1 ! 16
	ret ! 16
be_else.8856:
	li	a0, 0 ! 16
	ret ! 16
sgn.2468:
	fsw	sp, fa0, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fiszero
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 0 ! 117
	bne	a0, a1, be_else.8857
	flw	fa0, sp, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fispos
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 0 ! 118
	bne	a0, a1, be_else.8858
	li	a0, l.6005 ! 119
	flw	fa0, a0, 0 ! 119
	ret ! 119
be_else.8858:
	li	a0, l.6003 ! 118
	flw	fa0, a0, 0 ! 118
	ret ! 118
be_else.8857:
	li	a0, l.6001 ! 117
	flw	fa0, a0, 0 ! 117
	ret ! 117
fneg_cond.2470:
	li	a1, 0 ! 124
	bne	a0, a1, be_else.8859
	j	min_caml_fneg
be_else.8859:
	ret ! 124
add_mod5.2473:
	add	a0, a0, a1 ! 129
	li	a1, 5 ! 130
	blt	a0, a1, bge_else.8860
	addi	a0, a0, -5 ! 130
	ret ! 130
bge_else.8860:
	ret ! 130
vecset.2476:
	fsw	a0, fa0, 0 ! 145
	fsw	a0, fa1, 4 ! 146
	fsw	a0, fa2, 8 ! 147
	ret ! 147
vecfill.2481:
	fsw	a0, fa0, 0 ! 152
	fsw	a0, fa0, 4 ! 153
	fsw	a0, fa0, 8 ! 154
	ret ! 154
vecbzero.2484:
	li	a1, l.6001 ! 159
	flw	fa0, a1, 0 ! 159
	j	vecfill.2481
veccpy.2486:
	flw	fa0, a1, 0 ! 164
	fsw	a0, fa0, 0 ! 164
	flw	fa0, a1, 4 ! 165
	fsw	a0, fa0, 4 ! 165
	flw	fa0, a1, 8 ! 166
	fsw	a0, fa0, 8 ! 166
	ret ! 166
vecdist2.2489:
	flw	fa0, a0, 0 ! 171
	flw	fa1, a1, 0 ! 171
	fsub.s	fa0, fa0, fa1, rne ! 171
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fsqr
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 171
	lw	a1, sp, 0 ! 0
	flw	fa2, a1, 4 ! 171
	fsub.s	fa1, fa1, fa2, rne ! 171
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fsqr
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 171
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 171
	lw	a0, sp, 0 ! 0
	flw	fa2, a0, 8 ! 171
	fsub.s	fa1, fa1, fa2, rne ! 171
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fsqr
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 171
	ret ! 171
vecunit.2492:
	li	a1, l.6003 ! 176
	flw	fa0, a1, 0 ! 176
	flw	fa1, a0, 0 ! 176
	fsw	sp, fa0, 0 ! 0
	sw	sp, a0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fsqr
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 4 ! 176
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fsqr
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 176
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 8 ! 176
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fsqr
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 176
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sqrt
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 0 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 176
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 0 ! 177
	fmul.s	fa1, fa1, fa0, rne ! 177
	fsw	a0, fa1, 0 ! 177
	flw	fa1, a0, 4 ! 178
	fmul.s	fa1, fa1, fa0, rne ! 178
	fsw	a0, fa1, 4 ! 178
	flw	fa1, a0, 8 ! 179
	fmul.s	fa0, fa1, fa0, rne ! 179
	fsw	a0, fa0, 8 ! 179
	ret ! 179
vecunit_sgn.2494:
	flw	fa0, a0, 0 ! 184
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fsqr
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 184
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fsqr
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 184
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 184
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fsqr
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 184
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_sqrt
	addi	sp, sp, -28
	lw	ra, sp, 24
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fiszero
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 185
	bne	a0, a1, be_else.8866
	li	a0, 0 ! 185
	lw	a1, sp, 0 ! 0
	bne	a1, a0, be_else.8868
	li	a0, l.6003 ! 185
	flw	fa0, a0, 0 ! 185
	flw	fa1, sp, 24 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 185
	j	be_cont.8869
be_else.8868:
	li	a0, l.6005 ! 185
	flw	fa0, a0, 0 ! 185
	flw	fa1, sp, 24 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 185
be_cont.8869:
	j	be_cont.8867
be_else.8866:
	li	a0, l.6003 ! 185
	flw	fa0, a0, 0 ! 185
be_cont.8867:
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 186
	fmul.s	fa1, fa1, fa0, rne ! 186
	fsw	a0, fa1, 0 ! 186
	flw	fa1, a0, 4 ! 187
	fmul.s	fa1, fa1, fa0, rne ! 187
	fsw	a0, fa1, 4 ! 187
	flw	fa1, a0, 8 ! 188
	fmul.s	fa0, fa1, fa0, rne ! 188
	fsw	a0, fa0, 8 ! 188
	ret ! 188
veciprod.2497:
	flw	fa0, a0, 0 ! 193
	flw	fa1, a1, 0 ! 193
	fmul.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 4 ! 193
	flw	fa2, a1, 4 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	flw	fa1, a0, 8 ! 193
	flw	fa2, a1, 8 ! 193
	fmul.s	fa1, fa1, fa2, rne ! 193
	fadd.s	fa0, fa0, fa1, rne ! 193
	ret ! 193
veciprod2.2500:
	flw	fa3, a0, 0 ! 198
	fmul.s	fa0, fa3, fa0, rne ! 198
	flw	fa3, a0, 4 ! 198
	fmul.s	fa1, fa3, fa1, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	flw	fa1, a0, 8 ! 198
	fmul.s	fa1, fa1, fa2, rne ! 198
	fadd.s	fa0, fa0, fa1, rne ! 198
	ret ! 198
vecaccum.2505:
	flw	fa1, a0, 0 ! 203
	flw	fa2, a1, 0 ! 203
	fmul.s	fa2, fa0, fa2, rne ! 203
	fadd.s	fa1, fa1, fa2, rne ! 203
	fsw	a0, fa1, 0 ! 203
	flw	fa1, a0, 4 ! 204
	flw	fa2, a1, 4 ! 204
	fmul.s	fa2, fa0, fa2, rne ! 204
	fadd.s	fa1, fa1, fa2, rne ! 204
	fsw	a0, fa1, 4 ! 204
	flw	fa1, a0, 8 ! 205
	flw	fa2, a1, 8 ! 205
	fmul.s	fa0, fa0, fa2, rne ! 205
	fadd.s	fa0, fa1, fa0, rne ! 205
	fsw	a0, fa0, 8 ! 205
	ret ! 205
vecadd.2509:
	flw	fa0, a0, 0 ! 210
	flw	fa1, a1, 0 ! 210
	fadd.s	fa0, fa0, fa1, rne ! 210
	fsw	a0, fa0, 0 ! 210
	flw	fa0, a0, 4 ! 211
	flw	fa1, a1, 4 ! 211
	fadd.s	fa0, fa0, fa1, rne ! 211
	fsw	a0, fa0, 4 ! 211
	flw	fa0, a0, 8 ! 212
	flw	fa1, a1, 8 ! 212
	fadd.s	fa0, fa0, fa1, rne ! 212
	fsw	a0, fa0, 8 ! 212
	ret ! 212
vecmul.2512:
	flw	fa0, a0, 0 ! 217
	flw	fa1, a1, 0 ! 217
	fmul.s	fa0, fa0, fa1, rne ! 217
	fsw	a0, fa0, 0 ! 217
	flw	fa0, a0, 4 ! 218
	flw	fa1, a1, 4 ! 218
	fmul.s	fa0, fa0, fa1, rne ! 218
	fsw	a0, fa0, 4 ! 218
	flw	fa0, a0, 8 ! 219
	flw	fa1, a1, 8 ! 219
	fmul.s	fa0, fa0, fa1, rne ! 219
	fsw	a0, fa0, 8 ! 219
	ret ! 219
vecscale.2515:
	flw	fa1, a0, 0 ! 224
	fmul.s	fa1, fa1, fa0, rne ! 224
	fsw	a0, fa1, 0 ! 224
	flw	fa1, a0, 4 ! 225
	fmul.s	fa1, fa1, fa0, rne ! 225
	fsw	a0, fa1, 4 ! 225
	flw	fa1, a0, 8 ! 226
	fmul.s	fa0, fa1, fa0, rne ! 226
	fsw	a0, fa0, 8 ! 226
	ret ! 226
vecaccumv.2518:
	flw	fa0, a0, 0 ! 231
	flw	fa1, a1, 0 ! 231
	flw	fa2, a2, 0 ! 231
	fmul.s	fa1, fa1, fa2, rne ! 231
	fadd.s	fa0, fa0, fa1, rne ! 231
	fsw	a0, fa0, 0 ! 231
	flw	fa0, a0, 4 ! 232
	flw	fa1, a1, 4 ! 232
	flw	fa2, a2, 4 ! 232
	fmul.s	fa1, fa1, fa2, rne ! 232
	fadd.s	fa0, fa0, fa1, rne ! 232
	fsw	a0, fa0, 4 ! 232
	flw	fa0, a0, 8 ! 233
	flw	fa1, a1, 8 ! 233
	flw	fa2, a2, 8 ! 233
	fmul.s	fa1, fa1, fa2, rne ! 233
	fadd.s	fa0, fa0, fa1, rne ! 233
	fsw	a0, fa0, 8 ! 233
	ret ! 233
o_texturetype.2522:
	lw	a0, a0, 0 ! 242
	ret ! 247
o_form.2524:
	lw	a0, a0, 4 ! 252
	ret ! 257
o_reflectiontype.2526:
	lw	a0, a0, 8 ! 262
	ret ! 267
o_isinvert.2528:
	lw	a0, a0, 24 ! 272
	ret ! 276
o_isrot.2530:
	lw	a0, a0, 12 ! 281
	ret ! 285
o_param_a.2532:
	lw	a0, a0, 16 ! 290
	flw	fa0, a0, 0 ! 295
	ret ! 295
o_param_b.2534:
	lw	a0, a0, 16 ! 300
	flw	fa0, a0, 4 ! 305
	ret ! 305
o_param_c.2536:
	lw	a0, a0, 16 ! 310
	flw	fa0, a0, 8 ! 315
	ret ! 315
o_param_abc.2538:
	lw	a0, a0, 16 ! 320
	ret ! 325
o_param_x.2540:
	lw	a0, a0, 20 ! 330
	flw	fa0, a0, 0 ! 335
	ret ! 335
o_param_y.2542:
	lw	a0, a0, 20 ! 340
	flw	fa0, a0, 4 ! 345
	ret ! 345
o_param_z.2544:
	lw	a0, a0, 20 ! 350
	flw	fa0, a0, 8 ! 355
	ret ! 355
o_diffuse.2546:
	lw	a0, a0, 28 ! 360
	flw	fa0, a0, 0 ! 365
	ret ! 365
o_hilight.2548:
	lw	a0, a0, 28 ! 370
	flw	fa0, a0, 4 ! 375
	ret ! 375
o_color_red.2550:
	lw	a0, a0, 32 ! 380
	flw	fa0, a0, 0 ! 385
	ret ! 385
o_color_green.2552:
	lw	a0, a0, 32 ! 390
	flw	fa0, a0, 4 ! 395
	ret ! 395
o_color_blue.2554:
	lw	a0, a0, 32 ! 400
	flw	fa0, a0, 8 ! 405
	ret ! 405
o_param_r1.2556:
	lw	a0, a0, 36 ! 410
	flw	fa0, a0, 0 ! 415
	ret ! 415
o_param_r2.2558:
	lw	a0, a0, 36 ! 420
	flw	fa0, a0, 4 ! 425
	ret ! 425
o_param_r3.2560:
	lw	a0, a0, 36 ! 430
	flw	fa0, a0, 8 ! 435
	ret ! 435
o_param_ctbl.2562:
	lw	a0, a0, 40 ! 447
	ret ! 452
p_rgb.2564:
	lw	a0, a0, 0 ! 461
	ret ! 463
p_intersection_points.2566:
	lw	a0, a0, 4 ! 468
	ret ! 470
p_surface_ids.2568:
	lw	a0, a0, 8 ! 476
	ret ! 478
p_calc_diffuse.2570:
	lw	a0, a0, 12 ! 483
	ret ! 485
p_energy.2572:
	lw	a0, a0, 16 ! 490
	ret ! 492
p_received_ray_20percent.2574:
	lw	a0, a0, 20 ! 497
	ret ! 499
p_group_id.2576:
	lw	a0, a0, 24 ! 513
	lw	a0, a0, 0 ! 515
	ret ! 515
p_set_group_id.2578:
	lw	a0, a0, 24 ! 520
	sw	a0, a1, 0 ! 522
	ret ! 522
p_nvectors.2581:
	lw	a0, a0, 28 ! 527
	ret ! 529
d_vec.2583:
	lw	a0, a0, 0 ! 538
	ret ! 539
d_const.2585:
	lw	a0, a0, 4 ! 544
	ret ! 545
r_surface_id.2587:
	lw	a0, a0, 0 ! 554
	ret ! 555
r_dvec.2589:
	lw	a0, a0, 4 ! 560
	ret ! 561
r_bright.2591:
	flw	fa0, a0, 8 ! 566
	ret ! 567
rad.2593:
	li	a0, l.6118 ! 576
	flw	fa1, a0, 0 ! 576
	fmul.s	fa0, fa0, fa1, rne ! 576
	ret ! 576
read_screen_settings.2595:
	lw	a0, a21, 20 ! 0
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 583
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 4 ! 584
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 585
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_float
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	rad.2593
	addi	sp, sp, -24
	lw	ra, sp, 20
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_cos
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sin
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	rad.2593
	addi	sp, sp, -52
	lw	ra, sp, 48
	fsw	sp, fa0, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_cos
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_sin
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 32 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 594
	li	a0, l.6123 ! 594
	flw	fa3, a0, 0 ! 594
	fmul.s	fa2, fa2, fa3, rne ! 594
	lw	a0, sp, 12 ! 0
	fsw	a0, fa2, 0 ! 594
	li	a1, l.6126 ! 595
	flw	fa2, a1, 0 ! 595
	flw	fa3, sp, 40 ! 0
	fmul.s	fa2, fa3, fa2, rne ! 595
	fsw	a0, fa2, 4 ! 595
	flw	fa2, sp, 56 ! 0
	fmul.s	fa4, fa1, fa2, rne ! 596
	li	a1, l.6123 ! 596
	flw	fa5, a1, 0 ! 596
	fmul.s	fa4, fa4, fa5, rne ! 596
	fsw	a0, fa4, 8 ! 596
	lw	a1, sp, 8 ! 0
	fsw	a1, fa2, 0 ! 598
	li	a2, l.6001 ! 599
	flw	fa4, a2, 0 ! 599
	fsw	a1, fa4, 4 ! 599
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 8 ! 600
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 602
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 602
	flw	fa0, sp, 32 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 4 ! 603
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fneg
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 604
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 8 ! 604
	lw	a0, sp, 16 ! 0
	flw	fa0, a0, 0 ! 606
	lw	a1, sp, 12 ! 0
	flw	fa1, a1, 0 ! 606
	fsub.s	fa0, fa0, fa1, rne ! 606
	lw	a2, sp, 0 ! 0
	fsw	a2, fa0, 0 ! 606
	flw	fa0, a0, 4 ! 607
	flw	fa1, a1, 4 ! 607
	fsub.s	fa0, fa0, fa1, rne ! 607
	fsw	a2, fa0, 4 ! 607
	flw	fa0, a0, 8 ! 608
	flw	fa1, a1, 8 ! 608
	fsub.s	fa0, fa0, fa1, rne ! 608
	fsw	a2, fa0, 8 ! 608
	ret ! 608
read_light.2597:
	lw	a0, a21, 8 ! 0
	lw	a1, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_float
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	rad.2593
	addi	sp, sp, -12
	lw	ra, sp, 8
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_sin
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 4 ! 620
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_float
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	rad.2593
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_cos
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sin
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 624
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 624
	flw	fa0, sp, 16 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_cos
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 626
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 8 ! 626
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 627
	ret ! 627
rotate_quadratic_matrix.2599:
	flw	fa0, a1, 0 ! 637
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_cos
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 638
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_sin
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 639
	fsw	sp, fa0, 16 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_cos
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 640
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_sin
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 641
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_cos
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 642
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_sin
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 24 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 644
	flw	fa4, sp, 32 ! 0
	flw	fa5, sp, 16 ! 0
	fmul.s	fa6, fa5, fa4, rne ! 645
	fmul.s	fa6, fa6, fa1, rne ! 645
	flw	fa7, sp, 8 ! 0
	fmul.s	fa8, fa7, fa0, rne ! 645
	fsub.s	fa6, fa6, fa8, rne ! 645
	fmul.s	fa8, fa7, fa4, rne ! 646
	fmul.s	fa8, fa8, fa1, rne ! 646
	fmul.s	fa9, fa5, fa0, rne ! 646
	fadd.s	fa8, fa8, fa9, rne ! 646
	fmul.s	fa9, fa2, fa0, rne ! 648
	fmul.s	fa10, fa5, fa4, rne ! 649
	fmul.s	fa10, fa10, fa0, rne ! 649
	fmul.s	fa11, fa7, fa1, rne ! 649
	fadd.s	fa10, fa10, fa11, rne ! 649
	fmul.s	fa11, fa7, fa4, rne ! 650
	fmul.s	fa0, fa11, fa0, rne ! 650
	fmul.s	fa1, fa5, fa1, rne ! 650
	fsub.s	fa0, fa0, fa1, rne ! 650
	fsw	sp, fa0, 48 ! 0
	fsw	sp, fa8, 56 ! 0
	fsw	sp, fa10, 64 ! 0
	fsw	sp, fa6, 72 ! 0
	fsw	sp, fa9, 80 ! 0
	fsw	sp, fa3, 88 ! 0
	fmv.s	fa0, fa4
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fneg
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 24 ! 0
	flw	fa2, sp, 16 ! 0
	fmul.s	fa2, fa2, fa1, rne ! 653
	flw	fa3, sp, 8 ! 0
	fmul.s	fa1, fa3, fa1, rne ! 654
	lw	a0, sp, 0 ! 0
	flw	fa3, a0, 0 ! 657
	flw	fa4, a0, 4 ! 658
	flw	fa5, a0, 8 ! 659
	flw	fa6, sp, 88 ! 0
	fsw	sp, fa1, 96 ! 0
	fsw	sp, fa2, 104 ! 0
	fsw	sp, fa5, 112 ! 0
	fsw	sp, fa0, 120 ! 0
	fsw	sp, fa4, 128 ! 0
	fsw	sp, fa3, 136 ! 0
	fmv.s	fa0, fa6
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fsqr
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 80 ! 0
	fsw	sp, fa0, 144 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_fsqr
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 144 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 664
	flw	fa2, sp, 120 ! 0
	fsw	sp, fa0, 152 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fsqr
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 664
	flw	fa2, sp, 152 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 664
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 664
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fsqr
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 64 ! 0
	fsw	sp, fa0, 160 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fsqr
	addi	sp, sp, -172
	lw	ra, sp, 168
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 160 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 665
	flw	fa2, sp, 104 ! 0
	fsw	sp, fa0, 168 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 665
	flw	fa2, sp, 168 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 665
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 4 ! 665
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_fsqr
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 48 ! 0
	fsw	sp, fa0, 176 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fsqr
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 176 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 666
	flw	fa2, sp, 96 ! 0
	fsw	sp, fa0, 184 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fsqr
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 666
	flw	fa2, sp, 184 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 666
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 8 ! 666
	li	a0, l.6163 ! 669
	flw	fa0, a0, 0 ! 669
	flw	fa2, sp, 72 ! 0
	flw	fa3, sp, 136 ! 0
	fmul.s	fa4, fa3, fa2, rne ! 669
	flw	fa5, sp, 56 ! 0
	fmul.s	fa4, fa4, fa5, rne ! 669
	flw	fa6, sp, 64 ! 0
	flw	fa7, sp, 128 ! 0
	fmul.s	fa8, fa7, fa6, rne ! 669
	flw	fa9, sp, 48 ! 0
	fmul.s	fa8, fa8, fa9, rne ! 669
	fadd.s	fa4, fa4, fa8, rne ! 669
	flw	fa8, sp, 104 ! 0
	fmul.s	fa10, fa1, fa8, rne ! 669
	flw	fa11, sp, 96 ! 0
	fmul.s	fa10, fa10, fa11, rne ! 669
	fadd.s	fa4, fa4, fa10, rne ! 669
	fmul.s	fa0, fa0, fa4, rne ! 669
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 669
	li	a1, l.6163 ! 670
	flw	fa0, a1, 0 ! 670
	flw	fa4, sp, 88 ! 0
	fmul.s	fa10, fa3, fa4, rne ! 670
	fmul.s	fa5, fa10, fa5, rne ! 670
	flw	fa10, sp, 80 ! 0
	fmul.s	fa12, fa7, fa10, rne ! 670
	fmul.s	fa9, fa12, fa9, rne ! 670
	fadd.s	fa5, fa5, fa9, rne ! 670
	flw	fa9, sp, 120 ! 0
	fmul.s	fa12, fa1, fa9, rne ! 670
	fmul.s	fa11, fa12, fa11, rne ! 670
	fadd.s	fa5, fa5, fa11, rne ! 670
	fmul.s	fa0, fa0, fa5, rne ! 670
	fsw	a0, fa0, 4 ! 670
	li	a1, l.6163 ! 671
	flw	fa0, a1, 0 ! 671
	fmul.s	fa3, fa3, fa4, rne ! 671
	fmul.s	fa2, fa3, fa2, rne ! 671
	fmul.s	fa3, fa7, fa10, rne ! 671
	fmul.s	fa3, fa3, fa6, rne ! 671
	fadd.s	fa2, fa2, fa3, rne ! 671
	fmul.s	fa1, fa1, fa9, rne ! 671
	fmul.s	fa1, fa1, fa8, rne ! 671
	fadd.s	fa1, fa2, fa1, rne ! 671
	fmul.s	fa0, fa0, fa1, rne ! 671
	fsw	a0, fa0, 8 ! 671
	ret ! 671
read_nth_object.2602:
	lw	a1, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_read_int
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 1 ! 679
	neg	a1, a1 ! 679
	bne	a0, a1, be_else.8881
	li	a0, 0 ! 755
	ret ! 755
be_else.8881:
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_read_int
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 3 ! 685
	li	a2, l.6001 ! 685
	flw	fa0, a2, 0 ! 685
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_float_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 0 ! 686
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 4 ! 687
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 8 ! 688
	li	a1, 3 ! 690
	li	a2, l.6001 ! 690
	flw	fa0, a2, 0 ! 690
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 0 ! 691
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 4 ! 692
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 28 ! 0
	fsw	a0, fa0, 8 ! 693
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_read_float
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fisneg
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 2 ! 697
	li	a2, l.6001 ! 697
	flw	fa0, a2, 0 ! 697
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0
	fsw	a0, fa0, 0 ! 698
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_read_float
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 36 ! 0
	fsw	a0, fa0, 4 ! 699
	li	a1, 3 ! 701
	li	a2, l.6001 ! 701
	flw	fa0, a2, 0 ! 701
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 0 ! 702
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 4 ! 703
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	fsw	a0, fa0, 8 ! 704
	li	a1, 3 ! 706
	li	a2, l.6001 ! 706
	flw	fa0, a2, 0 ! 706
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 707
	lw	a2, sp, 20 ! 0
	bne	a2, a1, be_else.8882
	j	be_cont.8883
be_else.8882:
	sw	sp, a0, 44 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	rad.2593
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0
	fsw	a0, fa0, 0 ! 709
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	rad.2593
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0
	fsw	a0, fa0, 4 ! 710
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_read_float
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	rad.2593
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 44 ! 0
	fsw	a0, fa0, 8 ! 711
be_cont.8883:
	li	a1, 2 ! 718
	lw	a2, sp, 12 ! 0
	bne	a2, a1, be_else.8884
	li	a1, 1 ! 718
	j	be_cont.8885
be_else.8884:
	lw	a1, sp, 32 ! 0
be_cont.8885:
	li	a3, 4 ! 719
	li	a4, l.6001 ! 719
	flw	fa0, a4, 0 ! 719
	sw	sp, a1, 48 ! 0
	sw	sp, a0, 44 ! 0
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, hp ! 722
	addi	hp, hp, 44 ! 722
	sw	a1, a0, 40 ! 722
	lw	a0, sp, 44 ! 0
	sw	a1, a0, 36 ! 722
	lw	a2, sp, 40 ! 0
	sw	a1, a2, 32 ! 722
	lw	a2, sp, 36 ! 0
	sw	a1, a2, 28 ! 722
	lw	a2, sp, 48 ! 0
	sw	a1, a2, 24 ! 722
	lw	a2, sp, 28 ! 0
	sw	a1, a2, 20 ! 722
	lw	a2, sp, 24 ! 0
	sw	a1, a2, 16 ! 722
	lw	a3, sp, 20 ! 0
	sw	a1, a3, 12 ! 722
	lw	a4, sp, 16 ! 0
	sw	a1, a4, 8 ! 722
	lw	a4, sp, 12 ! 0
	sw	a1, a4, 4 ! 722
	lw	a5, sp, 8 ! 0
	sw	a1, a5, 0 ! 722
	lw	a5, sp, 4 ! 0
	slli	a5, a5, 2 ! 730
	lw	a6, sp, 0 ! 0
	add	t0, a6, a5 ! 730
	sw	t0, a1, 0 ! 730
	li	a1, 3 ! 732
	bne	a4, a1, be_else.8886
	flw	fa0, a2, 0 ! 735
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fiszero
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 736
	bne	a0, a1, be_else.8889
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	sgn.2468
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 64 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 736
	j	be_cont.8890
be_else.8889:
	li	a0, l.6001 ! 736
	flw	fa0, a0, 0 ! 736
be_cont.8890:
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 0 ! 736
	flw	fa0, a0, 4 ! 737
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fiszero
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 738
	bne	a0, a1, be_else.8891
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	sgn.2468
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fsw	sp, fa0, 80 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fsqr
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 738
	j	be_cont.8892
be_else.8891:
	li	a0, l.6001 ! 738
	flw	fa0, a0, 0 ! 738
be_cont.8892:
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 4 ! 738
	flw	fa0, a0, 8 ! 739
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fiszero
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 740
	bne	a0, a1, be_else.8893
	flw	fa0, sp, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	sgn.2468
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fsqr
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 740
	j	be_cont.8894
be_else.8893:
	li	a0, l.6001 ! 740
	flw	fa0, a0, 0 ! 740
be_cont.8894:
	lw	a0, sp, 24 ! 0
	fsw	a0, fa0, 8 ! 740
	j	be_cont.8887
be_else.8886:
	li	a1, 2 ! 742
	bne	a4, a1, be_else.8895
	li	a1, 0 ! 744
	lw	a4, sp, 32 ! 0
	bne	a4, a1, be_else.8897
	li	a1, 1 ! 744
	j	be_cont.8898
be_else.8897:
	li	a1, 0 ! 744
be_cont.8898:
	mv	a0, a2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	vecunit_sgn.2494
	addi	sp, sp, -108
	lw	ra, sp, 104
	j	be_cont.8896
be_else.8895:
be_cont.8896:
be_cont.8887:
	li	a0, 0 ! 748
	lw	a1, sp, 20 ! 0
	bne	a1, a0, be_else.8899
	j	be_cont.8900
be_else.8899:
	lw	a0, sp, 24 ! 0
	lw	a1, sp, 44 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	rotate_quadratic_matrix.2599
	addi	sp, sp, -108
	lw	ra, sp, 104
be_cont.8900:
	li	a0, 1 ! 752
	ret ! 752
read_object.2604:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	li	a3, 60 ! 760
	blt	a0, a3, bge_else.8901
	ret ! 765
bge_else.8901:
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a21, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 761
	bne	a0, a1, be_else.8903
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 8 ! 0
	sw	a0, a1, 0 ! 764
	ret ! 764
be_else.8903:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 762
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_all_object.2606:
	lw	a21, a21, 4 ! 0
	li	a0, 0 ! 769
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_net_item.2608:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 1 ! 777
	neg	a1, a1 ! 777
	bne	a0, a1, be_else.8905
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 1 ! 777
	li	a1, 1 ! 777
	neg	a1, a1 ! 777
	j	min_caml_create_array
be_else.8905:
	lw	a1, sp, 0 ! 0
	addi	a2, a1, 1 ! 779
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	read_net_item.2608
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 780
	lw	a2, sp, 4 ! 0
	add	t0, a0, a1 ! 780
	sw	t0, a2, 0 ! 780
	ret ! 780
read_or_network.2610:
	li	a1, 0 ! 784
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	read_net_item.2608
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	lw	a0, a1, 0 ! 785
	li	a2, 1 ! 785
	neg	a2, a2 ! 785
	bne	a0, a2, be_else.8906
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 1 ! 786
	j	min_caml_create_array
be_else.8906:
	lw	a0, sp, 0 ! 0
	addi	a2, a0, 1 ! 788
	sw	sp, a1, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	read_or_network.2610
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 789
	lw	a2, sp, 4 ! 0
	add	t0, a0, a1 ! 789
	sw	t0, a2, 0 ! 789
	ret ! 789
read_and_network.2612:
	lw	a1, a21, 4 ! 0
	li	a2, 0 ! 793
	sw	sp, a21, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	read_net_item.2608
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, a0, 0 ! 794
	li	a2, 1 ! 794
	neg	a2, a2 ! 794
	bne	a1, a2, be_else.8907
	ret ! 794
be_else.8907:
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 796
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 796
	sw	t0, a0, 0 ! 796
	addi	a0, a1, 1 ! 797
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
read_parameter.2614:
	lw	a0, a21, 20 ! 0
	lw	a1, a21, 16 ! 0
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a4, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a21, a0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, 0 ! 806
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, 0 ! 807
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	read_or_network.2610
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 0 ! 807
	ret ! 807
solver_rect_surface.2616:
	lw	a5, a21, 4 ! 0
	slli	a6, a2, 2 ! 828
	add	t0, a1, a6 ! 828
	flw	fa3, t0, 0 ! 828
	sw	sp, a5, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	sw	sp, a4, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	sw	sp, a3, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, a2, 52 ! 0
	sw	sp, a0, 56 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fiszero
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 828
	bne	a0, a1, be_else.8913
	lw	a0, sp, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	o_param_abc.2538
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 56 ! 0
	sw	sp, a0, 60 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_isinvert.2528
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 830
	lw	a3, sp, 48 ! 0
	add	t0, a3, a2 ! 830
	flw	fa0, t0, 0 ! 830
	sw	sp, a0, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_fisneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, a0
	lw	a0, sp, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	xor.2435
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 52 ! 0
	slli	a2, a1, 2 ! 830
	lw	a3, sp, 60 ! 0
	add	t0, a3, a2 ! 830
	flw	fa0, t0, 0 ! 830
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	fneg_cond.2470
	addi	sp, sp, -72
	lw	ra, sp, 68
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 832
	lw	a0, sp, 52 ! 0
	slli	a0, a0, 2 ! 832
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 832
	flw	fa1, t0, 0 ! 832
	fdiv.s	fa0, fa0, fa1, rne ! 832
	lw	a0, sp, 32 ! 0
	slli	a2, a0, 2 ! 833
	add	t0, a1, a2 ! 833
	flw	fa1, t0, 0 ! 833
	fmul.s	fa1, fa0, fa1, rne ! 833
	flw	fa2, sp, 24 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 833
	fsw	sp, fa0, 72 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fabs
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 32 ! 0
	slli	a0, a0, 2 ! 833
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 833
	flw	fa1, t0, 0 ! 833
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 833
	bne	a0, a1, be_else.8915
	li	a0, 0 ! 837
	ret ! 837
be_else.8915:
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 834
	lw	a2, sp, 48 ! 0
	add	t0, a2, a1 ! 834
	flw	fa0, t0, 0 ! 834
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 834
	flw	fa2, sp, 8 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 834
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fabs
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 16 ! 0
	slli	a0, a0, 2 ! 834
	lw	a1, sp, 60 ! 0
	add	t0, a1, a0 ! 834
	flw	fa1, t0, 0 ! 834
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fless
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 834
	bne	a0, a1, be_else.8916
	li	a0, 0 ! 836
	ret ! 836
be_else.8916:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 72 ! 0
	fsw	a0, fa0, 0 ! 835
	li	a0, 1 ! 835
	ret ! 835
be_else.8913:
	li	a0, 0 ! 828
	ret ! 828
solver_rect.2625:
	lw	a21, a21, 4 ! 0
	li	a2, 0 ! 843
	li	a3, 1 ! 843
	li	a4, 2 ! 843
	fsw	sp, fa0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, a21, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 843
	bne	a0, a1, be_else.8917
	li	a2, 1 ! 844
	li	a3, 2 ! 844
	li	a4, 0 ! 844
	flw	fa0, sp, 16 ! 0
	flw	fa1, sp, 8 ! 0
	flw	fa2, sp, 0 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 844
	bne	a0, a1, be_else.8918
	li	a2, 2 ! 845
	li	a3, 0 ! 845
	li	a4, 1 ! 845
	flw	fa0, sp, 8 ! 0
	flw	fa1, sp, 0 ! 0
	flw	fa2, sp, 16 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 845
	bne	a0, a1, be_else.8919
	li	a0, 0 ! 846
	ret ! 846
be_else.8919:
	li	a0, 3 ! 845
	ret ! 845
be_else.8918:
	li	a0, 2 ! 844
	ret ! 844
be_else.8917:
	li	a0, 1 ! 843
	ret ! 843
solver_surface.2631:
	lw	a2, a21, 4 ! 0
	sw	sp, a2, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	o_param_abc.2538
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	sw	sp, a1, 36 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	veciprod.2497
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fispos
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 856
	bne	a0, a1, be_else.8921
	li	a0, 0 ! 859
	ret ! 859
be_else.8921:
	flw	fa0, sp, 24 ! 0
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 8 ! 0
	lw	a0, sp, 36 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	veciprod2.2500
	addi	sp, sp, -52
	lw	ra, sp, 48
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fneg
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 857
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 857
	li	a0, 1 ! 858
	ret ! 858
quadratic.2637:
	fsw	sp, fa0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_a.2532
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 16 ! 0
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fsqr
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 24 ! 0
	fsw	sp, fa0, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_param_b.2534
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 40 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 8 ! 0
	fsw	sp, fa0, 56 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fsqr
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 24 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_param_c.2536
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 867
	flw	fa1, sp, 56 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 867
	lw	a0, sp, 24 ! 0
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	o_isrot.2530
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 869
	bne	a0, a1, be_else.8923
	flw	fa0, sp, 72 ! 0
	ret ! 870
be_else.8923:
	flw	fa0, sp, 8 ! 0
	flw	fa1, sp, 16 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 873
	lw	a0, sp, 24 ! 0
	fsw	sp, fa2, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_param_r1.2556
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 873
	flw	fa1, sp, 72 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 872
	flw	fa1, sp, 0 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa2, fa2, fa1, rne ! 874
	lw	a0, sp, 24 ! 0
	fsw	sp, fa0, 88 ! 0
	fsw	sp, fa2, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	o_param_r2.2558
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 874
	flw	fa1, sp, 88 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 872
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 0 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 875
	lw	a0, sp, 24 ! 0
	fsw	sp, fa0, 104 ! 0
	fsw	sp, fa1, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	o_param_r3.2560
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 875
	flw	fa1, sp, 104 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 872
	ret ! 872
bilinear.2642:
	fmul.s	fa6, fa0, fa3, rne ! 882
	fsw	sp, fa3, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	fsw	sp, fa5, 16 ! 0
	fsw	sp, fa2, 24 ! 0
	sw	sp, a0, 32 ! 0
	fsw	sp, fa4, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	fsw	sp, fa6, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_a.2532
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 882
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 48 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 883
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 64 ! 0
	fsw	sp, fa3, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	o_param_b.2534
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 883
	flw	fa1, sp, 64 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 882
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 24 ! 0
	fmul.s	fa3, fa2, fa1, rne ! 884
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 80 ! 0
	fsw	sp, fa3, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	o_param_c.2536
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 884
	flw	fa1, sp, 80 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 882
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	o_isrot.2530
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 0 ! 886
	bne	a0, a1, be_else.8925
	flw	fa0, sp, 96 ! 0
	ret ! 887
be_else.8925:
	flw	fa0, sp, 40 ! 0
	flw	fa1, sp, 24 ! 0
	fmul.s	fa2, fa1, fa0, rne ! 890
	flw	fa3, sp, 16 ! 0
	flw	fa4, sp, 48 ! 0
	fmul.s	fa5, fa4, fa3, rne ! 890
	fadd.s	fa2, fa2, fa5, rne ! 890
	lw	a0, sp, 32 ! 0
	fsw	sp, fa2, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_param_r1.2556
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 890
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 891
	flw	fa3, sp, 0 ! 0
	flw	fa4, sp, 24 ! 0
	fmul.s	fa4, fa4, fa3, rne ! 891
	fadd.s	fa1, fa1, fa4, rne ! 891
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 112 ! 0
	fsw	sp, fa1, 120 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	o_param_r2.2558
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa1, sp, 120 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 891
	flw	fa1, sp, 112 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 890
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 892
	flw	fa2, sp, 0 ! 0
	flw	fa3, sp, 48 ! 0
	fmul.s	fa2, fa3, fa2, rne ! 892
	fadd.s	fa1, fa1, fa2, rne ! 892
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 128 ! 0
	fsw	sp, fa1, 136 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	o_param_r3.2560
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 892
	flw	fa1, sp, 128 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 890
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fhalf
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 96 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 889
	ret ! 889
solver_second.2650:
	lw	a2, a21, 4 ! 0
	flw	fa3, a1, 0 ! 907
	flw	fa4, a1, 4 ! 907
	flw	fa5, a1, 8 ! 907
	sw	sp, a2, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, a1, 36 ! 0
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	quadratic.2637
	addi	sp, sp, -44
	lw	ra, sp, 40
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fiszero
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 909
	bne	a0, a1, be_else.8927
	lw	a0, sp, 36 ! 0
	flw	fa0, a0, 0 ! 914
	flw	fa1, a0, 4 ! 914
	flw	fa2, a0, 8 ! 914
	flw	fa3, sp, 24 ! 0
	flw	fa4, sp, 16 ! 0
	flw	fa5, sp, 8 ! 0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	bilinear.2642
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 24 ! 0
	flw	fa2, sp, 16 ! 0
	flw	fa3, sp, 8 ! 0
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	quadratic.2637
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_form.2524
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 3 ! 917
	bne	a0, a1, be_else.8928
	li	a0, l.6003 ! 917
	flw	fa0, a0, 0 ! 917
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 917
	j	be_cont.8929
be_else.8928:
	flw	fa0, sp, 56 ! 0
be_cont.8929:
	flw	fa1, sp, 48 ! 0
	fsw	sp, fa0, 64 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 40 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 919
	fsub.s	fa0, fa0, fa1, rne ! 919
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fispos
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 921
	bne	a0, a1, be_else.8930
	li	a0, 0 ! 927
	ret ! 927
be_else.8930:
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sqrt
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 32 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_isinvert.2528
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 923
	bne	a0, a1, be_else.8931
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	j	be_cont.8932
be_else.8931:
	flw	fa0, sp, 80 ! 0
be_cont.8932:
	flw	fa1, sp, 48 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 924
	flw	fa1, sp, 40 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 924
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 924
	li	a0, 1 ! 924
	ret ! 924
be_else.8927:
	li	a0, 0 ! 910
	ret ! 910
solver.2656:
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a0, a0, 2 ! 933
	add	t0, a6, a0 ! 933
	lw	a0, t0, 0 ! 933
	flw	fa0, a2, 0 ! 935
	sw	sp, a4, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a2, 20 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_param_x.2540
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 935
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 4 ! 936
	lw	a1, sp, 16 ! 0
	fsw	sp, fa0, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_y.2542
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 936
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 8 ! 937
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 48 ! 0
	fsw	sp, fa1, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_z.2544
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 937
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_form.2524
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 1 ! 940
	bne	a0, a1, be_else.8933
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.8933:
	li	a1, 2 ! 941
	bne	a0, a1, be_else.8934
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.8934:
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_rect_fast.2660:
	lw	a3, a21, 4 ! 0
	flw	fa3, a2, 0 ! 965
	fsub.s	fa3, fa3, fa0, rne ! 965
	flw	fa4, a2, 4 ! 965
	fmul.s	fa3, fa3, fa4, rne ! 965
	flw	fa4, a1, 4 ! 967
	fmul.s	fa4, fa3, fa4, rne ! 967
	fadd.s	fa4, fa4, fa1, rne ! 967
	sw	sp, a3, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	sw	sp, a2, 24 ! 0
	fsw	sp, fa2, 32 ! 0
	fsw	sp, fa3, 40 ! 0
	sw	sp, a1, 48 ! 0
	sw	sp, a0, 52 ! 0
	fmv.s	fa0, fa4
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fabs
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a0, sp, 52 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_b.2534
	addi	sp, sp, -68
	lw	ra, sp, 64
	fmv.s	fa1, fa0
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 967
	bne	a0, a1, be_else.8937
	li	a0, 0 ! 971
	j	be_cont.8938
be_else.8937:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 8 ! 968
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 968
	flw	fa2, sp, 32 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 968
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fabs
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 52 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_param_c.2536
	addi	sp, sp, -76
	lw	ra, sp, 72
	fmv.s	fa1, fa0
	flw	fa0, sp, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 968
	bne	a0, a1, be_else.8939
	li	a0, 0 ! 970
	j	be_cont.8940
be_else.8939:
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 4 ! 969
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fiszero
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 969
	bne	a0, a1, be_else.8941
	li	a0, 1 ! 969
	j	be_cont.8942
be_else.8941:
	li	a0, 0 ! 969
be_cont.8942:
be_cont.8940:
be_cont.8938:
	li	a1, 0 ! 966
	bne	a0, a1, be_else.8943
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 8 ! 974
	flw	fa1, sp, 16 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 974
	flw	fa2, a0, 12 ! 974
	fmul.s	fa0, fa0, fa2, rne ! 974
	lw	a1, sp, 48 ! 0
	flw	fa2, a1, 0 ! 976
	fmul.s	fa2, fa0, fa2, rne ! 976
	flw	fa3, sp, 8 ! 0
	fadd.s	fa2, fa2, fa3, rne ! 976
	fsw	sp, fa0, 72 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fabs
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a0, sp, 52 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_param_a.2532
	addi	sp, sp, -92
	lw	ra, sp, 88
	fmv.s	fa1, fa0
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fless
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 976
	bne	a0, a1, be_else.8944
	li	a0, 0 ! 980
	j	be_cont.8945
be_else.8944:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 8 ! 977
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 977
	flw	fa2, sp, 32 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 977
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fabs
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 52 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	o_param_c.2536
	addi	sp, sp, -100
	lw	ra, sp, 96
	fmv.s	fa1, fa0
	flw	fa0, sp, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fless
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 977
	bne	a0, a1, be_else.8946
	li	a0, 0 ! 979
	j	be_cont.8947
be_else.8946:
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 12 ! 978
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fiszero
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 978
	bne	a0, a1, be_else.8948
	li	a0, 1 ! 978
	j	be_cont.8949
be_else.8948:
	li	a0, 0 ! 978
be_cont.8949:
be_cont.8947:
be_cont.8945:
	li	a1, 0 ! 975
	bne	a0, a1, be_else.8950
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 16 ! 983
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa0, fa1, rne ! 983
	flw	fa1, a0, 20 ! 983
	fmul.s	fa0, fa0, fa1, rne ! 983
	lw	a1, sp, 48 ! 0
	flw	fa1, a1, 0 ! 985
	fmul.s	fa1, fa0, fa1, rne ! 985
	flw	fa2, sp, 8 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 985
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fabs
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 52 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_param_a.2532
	addi	sp, sp, -116
	lw	ra, sp, 112
	fmv.s	fa1, fa0
	flw	fa0, sp, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fless
	addi	sp, sp, -116
	lw	ra, sp, 112
	li	a1, 0 ! 985
	bne	a0, a1, be_else.8951
	li	a0, 0 ! 989
	j	be_cont.8952
be_else.8951:
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 4 ! 986
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 986
	flw	fa2, sp, 16 ! 0
	fadd.s	fa0, fa0, fa2, rne ! 986
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fabs
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a0, sp, 52 ! 0
	fsw	sp, fa0, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	o_param_b.2534
	addi	sp, sp, -124
	lw	ra, sp, 120
	fmv.s	fa1, fa0
	flw	fa0, sp, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fless
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a1, 0 ! 986
	bne	a0, a1, be_else.8953
	li	a0, 0 ! 988
	j	be_cont.8954
be_else.8953:
	lw	a0, sp, 24 ! 0
	flw	fa0, a0, 20 ! 987
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fiszero
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a1, 0 ! 987
	bne	a0, a1, be_else.8955
	li	a0, 1 ! 987
	j	be_cont.8956
be_else.8955:
	li	a0, 0 ! 987
be_cont.8956:
be_cont.8954:
be_cont.8952:
	li	a1, 0 ! 984
	bne	a0, a1, be_else.8957
	li	a0, 0 ! 993
	ret ! 993
be_else.8957:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 96 ! 0
	fsw	a0, fa0, 0 ! 991
	li	a0, 3 ! 991
	ret ! 991
be_else.8950:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 72 ! 0
	fsw	a0, fa0, 0 ! 982
	li	a0, 2 ! 982
	ret ! 982
be_else.8943:
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 40 ! 0
	fsw	a0, fa0, 0 ! 973
	li	a0, 1 ! 973
	ret ! 973
solver_surface_fast.2667:
	lw	a0, a21, 4 ! 0
	flw	fa3, a1, 0 ! 998
	sw	sp, a0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a1, 32 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_fisneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 998
	bne	a0, a1, be_else.8959
	li	a0, 0 ! 1002
	ret ! 1002
be_else.8959:
	lw	a0, sp, 32 ! 0
	flw	fa0, a0, 4 ! 1000
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1000
	flw	fa1, a0, 8 ! 1000
	flw	fa2, sp, 16 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	flw	fa1, a0, 12 ! 1000
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1000
	fadd.s	fa0, fa0, fa1, rne ! 1000
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 999
	li	a0, 1 ! 1001
	ret ! 1001
solver_second_fast.2673:
	lw	a2, a21, 4 ! 0
	flw	fa3, a1, 0 ! 1008
	sw	sp, a2, 0 ! 0
	fsw	sp, fa3, 8 ! 0
	sw	sp, a0, 16 ! 0
	fsw	sp, fa2, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a1, 48 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fiszero
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1009
	bne	a0, a1, be_else.8962
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 4 ! 1012
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1012
	flw	fa2, a0, 8 ! 1012
	flw	fa3, sp, 32 ! 0
	fmul.s	fa2, fa2, fa3, rne ! 1012
	fadd.s	fa0, fa0, fa2, rne ! 1012
	flw	fa2, a0, 12 ! 1012
	flw	fa4, sp, 24 ! 0
	fmul.s	fa2, fa2, fa4, rne ! 1012
	fadd.s	fa0, fa0, fa2, rne ! 1012
	lw	a1, sp, 16 ! 0
	fsw	sp, fa0, 56 ! 0
	mv	a0, a1
	fmv.s	fa2, fa4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	quadratic.2637
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_form.2524
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 3 ! 1014
	bne	a0, a1, be_else.8964
	li	a0, l.6003 ! 1014
	flw	fa0, a0, 0 ! 1014
	flw	fa1, sp, 64 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1014
	j	be_cont.8965
be_else.8964:
	flw	fa0, sp, 64 ! 0
be_cont.8965:
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 72 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fsqr
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 1015
	fsub.s	fa0, fa0, fa1, rne ! 1015
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fispos
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1016
	bne	a0, a1, be_else.8966
	li	a0, 0 ! 1022
	ret ! 1022
be_else.8966:
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_isinvert.2528
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1017
	bne	a0, a1, be_else.8967
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_sqrt
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1020
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1020
	fmul.s	fa0, fa0, fa1, rne ! 1020
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1020
	j	be_cont.8968
be_else.8967:
	flw	fa0, sp, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_sqrt
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 56 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1018
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1018
	fmul.s	fa0, fa0, fa1, rne ! 1018
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1018
be_cont.8968:
	li	a0, 1 ! 1021
	ret ! 1021
be_else.8962:
	li	a0, 0 ! 1010
	ret ! 1010
solver_fast.2679:
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a7, a0, 2 ! 1027
	add	t0, a6, a7 ! 1027
	lw	a6, t0, 0 ! 1027
	flw	fa0, a2, 0 ! 1028
	sw	sp, a4, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a5, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a6, 20 ! 0
	sw	sp, a2, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	mv	a0, a6
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_x.2540
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1028
	lw	a0, sp, 24 ! 0
	flw	fa1, a0, 4 ! 1029
	lw	a1, sp, 20 ! 0
	fsw	sp, fa0, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_param_y.2542
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1029
	lw	a0, sp, 24 ! 0
	flw	fa1, a0, 8 ! 1030
	lw	a0, sp, 20 ! 0
	fsw	sp, fa0, 56 ! 0
	fsw	sp, fa1, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_param_z.2544
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1030
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	d_const.2585
	addi	sp, sp, -84
	lw	ra, sp, 80
	lw	a1, sp, 12 ! 0
	slli	a1, a1, 2 ! 1032
	add	t0, a0, a1 ! 1032
	lw	a0, t0, 0 ! 1032
	lw	a1, sp, 20 ! 0
	sw	sp, a0, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	o_form.2524
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 1 ! 1034
	bne	a0, a1, be_else.8970
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	d_vec.2583
	addi	sp, sp, -88
	lw	ra, sp, 84
	mv	a1, a0
	flw	fa0, sp, 40 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 20 ! 0
	lw	a2, sp, 80 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.8970:
	li	a1, 2 ! 1036
	bne	a0, a1, be_else.8971
	flw	fa0, sp, 40 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 80 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.8971:
	flw	fa0, sp, 40 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 80 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solver_surface_fast2.2683:
	lw	a0, a21, 4 ! 0
	flw	fa0, a1, 0 ! 1047
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fisneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1047
	bne	a0, a1, be_else.8972
	li	a0, 0 ! 1050
	ret ! 1050
be_else.8972:
	lw	a0, sp, 8 ! 0
	flw	fa0, a0, 0 ! 1048
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 12 ! 1048
	fmul.s	fa0, fa0, fa1, rne ! 1048
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1048
	li	a0, 1 ! 1049
	ret ! 1049
solver_second_fast2.2690:
	lw	a3, a21, 4 ! 0
	flw	fa3, a1, 0 ! 1056
	sw	sp, a3, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa3, 8 ! 0
	sw	sp, a2, 16 ! 0
	fsw	sp, fa2, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, a1, 48 ! 0
	fmv.s	fa0, fa3
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_fiszero
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1057
	bne	a0, a1, be_else.8974
	lw	a0, sp, 48 ! 0
	flw	fa0, a0, 4 ! 1060
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1060
	flw	fa1, a0, 8 ! 1060
	flw	fa2, sp, 32 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1060
	fadd.s	fa0, fa0, fa1, rne ! 1060
	flw	fa1, a0, 12 ! 1060
	flw	fa2, sp, 24 ! 0
	fmul.s	fa1, fa1, fa2, rne ! 1060
	fadd.s	fa0, fa0, fa1, rne ! 1060
	lw	a1, sp, 16 ! 0
	flw	fa1, a1, 12 ! 1061
	fsw	sp, fa0, 56 ! 0
	fsw	sp, fa1, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fsqr
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 8 ! 0
	fmul.s	fa1, fa2, fa1, rne ! 1062
	fsub.s	fa0, fa0, fa1, rne ! 1062
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fispos
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1063
	bne	a0, a1, be_else.8976
	li	a0, 0 ! 1069
	ret ! 1069
be_else.8976:
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	o_isinvert.2528
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 0 ! 1064
	bne	a0, a1, be_else.8977
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sqrt
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1067
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1067
	fmul.s	fa0, fa0, fa1, rne ! 1067
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1067
	j	be_cont.8978
be_else.8977:
	flw	fa0, sp, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_sqrt
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1065
	lw	a0, sp, 48 ! 0
	flw	fa1, a0, 16 ! 1065
	fmul.s	fa0, fa0, fa1, rne ! 1065
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1065
be_cont.8978:
	li	a0, 1 ! 1068
	ret ! 1068
be_else.8974:
	li	a0, 0 ! 1058
	ret ! 1058
solver_fast2.2697:
	lw	a2, a21, 16 ! 0
	lw	a3, a21, 12 ! 0
	lw	a4, a21, 8 ! 0
	lw	a5, a21, 4 ! 0
	slli	a6, a0, 2 ! 1074
	add	t0, a5, a6 ! 1074
	lw	a5, t0, 0 ! 1074
	sw	sp, a3, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a5, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a1, 20 ! 0
	mv	a0, a5
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	o_param_ctbl.2562
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa0, a0, 0 ! 1076
	flw	fa1, a0, 4 ! 1077
	flw	fa2, a0, 8 ! 1078
	lw	a1, sp, 20 ! 0
	sw	sp, a0, 24 ! 0
	fsw	sp, fa2, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	fsw	sp, fa0, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	d_const.2585
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a1, sp, 16 ! 0
	slli	a1, a1, 2 ! 1080
	add	t0, a0, a1 ! 1080
	lw	a0, t0, 0 ! 1080
	lw	a1, sp, 12 ! 0
	sw	sp, a0, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	o_form.2524
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 1 ! 1082
	bne	a0, a1, be_else.8980
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	d_vec.2583
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a1, a0
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 32 ! 0
	lw	a0, sp, 12 ! 0
	lw	a2, sp, 56 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.8980:
	li	a1, 2 ! 1084
	bne	a0, a1, be_else.8981
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 32 ! 0
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 56 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.8981:
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 32 ! 0
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 56 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
setup_rect_table.2700:
	li	a2, 6 ! 1096
	li	a3, l.6001 ! 1096
	flw	fa0, a3, 0 ! 1096
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 0 ! 1098
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_fiszero
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1098
	bne	a0, a1, be_else.8982
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	o_isinvert.2528
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 0 ! 1102
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fisneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	mv	a1, a0
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	xor.2435
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	o_param_a.2532
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	fneg_cond.2470
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 0 ! 1102
	li	a1, l.6003 ! 1104
	flw	fa0, a1, 0 ! 1104
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 0 ! 1104
	fdiv.s	fa0, fa0, fa1, rne ! 1104
	fsw	a0, fa0, 4 ! 1104
	j	be_cont.8983
be_else.8982:
	li	a0, l.6001 ! 1099
	flw	fa0, a0, 0 ! 1099
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 1099
be_cont.8983:
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 4 ! 1106
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fiszero
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1106
	bne	a0, a1, be_else.8984
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	o_isinvert.2528
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 4 ! 1109
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fisneg
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	xor.2435
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	o_param_b.2534
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	fneg_cond.2470
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 8 ! 1109
	li	a1, l.6003 ! 1110
	flw	fa0, a1, 0 ! 1110
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 4 ! 1110
	fdiv.s	fa0, fa0, fa1, rne ! 1110
	fsw	a0, fa0, 12 ! 1110
	j	be_cont.8985
be_else.8984:
	li	a0, l.6001 ! 1107
	flw	fa0, a0, 0 ! 1107
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 12 ! 1107
be_cont.8985:
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 8 ! 1112
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fiszero
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1112
	bne	a0, a1, be_else.8986
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	o_isinvert.2528
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 8 ! 1115
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fisneg
	addi	sp, sp, -36
	lw	ra, sp, 32
	mv	a1, a0
	lw	a0, sp, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	xor.2435
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	o_param_c.2536
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	fneg_cond.2470
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 16 ! 1115
	li	a1, l.6003 ! 1116
	flw	fa0, a1, 0 ! 1116
	lw	a1, sp, 4 ! 0
	flw	fa1, a1, 8 ! 1116
	fdiv.s	fa0, fa0, fa1, rne ! 1116
	fsw	a0, fa0, 20 ! 1116
	j	be_cont.8987
be_else.8986:
	li	a0, l.6001 ! 1113
	flw	fa0, a0, 0 ! 1113
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 20 ! 1113
be_cont.8987:
	ret ! 1118
setup_surface_table.2703:
	li	a2, 4 ! 1123
	li	a3, l.6001 ! 1123
	flw	fa0, a3, 0 ! 1123
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 0 ! 1125
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	mv	a0, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	o_param_a.2532
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1125
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 1125
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_b.2534
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1125
	flw	fa1, sp, 24 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1125
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 1125
	lw	a0, sp, 0 ! 0
	fsw	sp, fa0, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_param_c.2536
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1125
	flw	fa1, sp, 40 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1125
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fispos
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1127
	bne	a0, a1, be_else.8989
	li	a0, l.6001 ! 1135
	flw	fa0, a0, 0 ! 1135
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 0 ! 1135
	j	be_cont.8990
be_else.8989:
	li	a0, l.6005 ! 1129
	flw	fa0, a0, 0 ! 1129
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1129
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 0 ! 1129
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_a.2532
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1131
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 1131
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_b.2534
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1132
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 8 ! 1132
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_c.2536
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1133
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 12 ! 1133
be_cont.8990:
	ret ! 1136
setup_second_table.2706:
	li	a2, 5 ! 1142
	li	a3, l.6001 ! 1142
	flw	fa0, a3, 0 ! 1142
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 0 ! 1144
	flw	fa1, a1, 4 ! 1144
	flw	fa2, a1, 8 ! 1144
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	quadratic.2637
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 1145
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_param_a.2532
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1145
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fneg
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 1146
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 32 ! 0
	fsw	sp, fa1, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_b.2534
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1146
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fneg
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 8 ! 1147
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 48 ! 0
	fsw	sp, fa1, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_c.2536
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1147
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fneg
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 8 ! 0
	flw	fa1, sp, 16 ! 0
	fsw	a0, fa1, 0 ! 1149
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_isrot.2530
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1153
	bne	a0, a1, be_else.8992
	lw	a0, sp, 8 ! 0
	flw	fa0, sp, 32 ! 0
	fsw	a0, fa0, 4 ! 1158
	flw	fa0, sp, 48 ! 0
	fsw	a0, fa0, 8 ! 1159
	flw	fa0, sp, 64 ! 0
	fsw	a0, fa0, 12 ! 1160
	j	be_cont.8993
be_else.8992:
	lw	a0, sp, 4 ! 0
	flw	fa0, a0, 8 ! 1154
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 72 ! 0
	mv	a0, a1
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	o_param_r2.2558
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1154
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 4 ! 1154
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 80 ! 0
	fsw	sp, fa1, 88 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	o_param_r3.2560
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1154
	flw	fa1, sp, 80 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1154
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fhalf
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1154
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 4 ! 1154
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 8 ! 1155
	lw	a2, sp, 0 ! 0
	fsw	sp, fa0, 96 ! 0
	mv	a0, a2
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	o_param_r1.2556
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1155
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 1155
	lw	a1, sp, 0 ! 0
	fsw	sp, fa0, 104 ! 0
	fsw	sp, fa1, 112 ! 0
	mv	a0, a1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	o_param_r3.2560
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1155
	flw	fa1, sp, 104 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1155
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_fhalf
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 48 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1155
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 8 ! 1155
	lw	a1, sp, 4 ! 0
	flw	fa0, a1, 4 ! 1156
	lw	a2, sp, 0 ! 0
	fsw	sp, fa0, 120 ! 0
	mv	a0, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	o_param_r1.2556
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa1, sp, 120 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1156
	lw	a0, sp, 4 ! 0
	flw	fa1, a0, 0 ! 1156
	lw	a0, sp, 0 ! 0
	fsw	sp, fa0, 128 ! 0
	fsw	sp, fa1, 136 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	o_param_r2.2558
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1156
	flw	fa1, sp, 128 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1156
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fhalf
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 64 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1156
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 12 ! 1156
be_cont.8993:
	flw	fa0, sp, 16 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_fiszero
	addi	sp, sp, -148
	lw	ra, sp, 144
	li	a1, 0 ! 1162
	bne	a0, a1, be_else.8994
	li	a0, l.6003 ! 1163
	flw	fa0, a0, 0 ! 1163
	flw	fa1, sp, 16 ! 0
	fdiv.s	fa0, fa0, fa1, rne ! 1163
	lw	a0, sp, 8 ! 0
	fsw	a0, fa0, 16 ! 1163
	j	be_cont.8995
be_else.8994:
be_cont.8995:
	lw	a0, sp, 8 ! 0
	ret ! 1165
iter_setup_dirvec_constants.2709:
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 1171
	blt	a1, a3, bge_else.8996
	slli	a3, a1, 2 ! 1172
	add	t0, a2, a3 ! 1172
	lw	a2, t0, 0 ! 1172
	sw	sp, a21, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	d_const.2585
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	d_vec.2583
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	o_form.2524
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 1 ! 1176
	bne	a0, a1, be_else.8997
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 8 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	setup_rect_table.2700
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 1177
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 1177
	sw	t0, a0, 0 ! 1177
	j	be_cont.8998
be_else.8997:
	li	a1, 2 ! 1178
	bne	a0, a1, be_else.8999
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 8 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	setup_surface_table.2703
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 1179
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 1179
	sw	t0, a0, 0 ! 1179
	j	be_cont.9000
be_else.8999:
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 8 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	setup_second_table.2706
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 1181
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 1181
	sw	t0, a0, 0 ! 1181
be_cont.9000:
be_cont.8998:
	addi	a1, a1, -1 ! 1183
	lw	a0, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.8996:
	ret ! 1184
setup_dirvec_constants.2712:
	lw	a1, a21, 8 ! 0
	lw	a21, a21, 4 ! 0
	lw	a1, a1, 0 ! 1188
	addi	a1, a1, -1 ! 1188
	lw	a20, a21, 0
	jalr	zero, a20, 0
setup_startp_constants.2714:
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 1196
	blt	a1, a3, bge_else.9002
	slli	a3, a1, 2 ! 1197
	add	t0, a2, a3 ! 1197
	lw	a2, t0, 0 ! 1197
	sw	sp, a21, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a2, 12 ! 0
	mv	a0, a2
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_param_ctbl.2562
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	o_form.2524
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8 ! 0
	flw	fa0, a1, 0 ! 1200
	lw	a2, sp, 12 ! 0
	sw	sp, a0, 20 ! 0
	fsw	sp, fa0, 24 ! 0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_param_x.2540
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1200
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 0 ! 1200
	lw	a1, sp, 8 ! 0
	flw	fa0, a1, 4 ! 1201
	lw	a2, sp, 12 ! 0
	fsw	sp, fa0, 32 ! 0
	mv	a0, a2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_y.2542
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1201
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 4 ! 1201
	lw	a1, sp, 8 ! 0
	flw	fa0, a1, 8 ! 1202
	lw	a2, sp, 12 ! 0
	fsw	sp, fa0, 40 ! 0
	mv	a0, a2
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_z.2544
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1202
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 1202
	li	a1, 2 ! 1203
	lw	a2, sp, 20 ! 0
	bne	a2, a1, be_else.9003
	lw	a1, sp, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_abc.2538
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a1, sp, 16 ! 0
	flw	fa0, a1, 0 ! 1205
	flw	fa1, a1, 4 ! 1205
	flw	fa2, a1, 8 ! 1205
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	veciprod2.2500
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 12 ! 1204
	j	be_cont.9004
be_else.9003:
	li	a1, 2 ! 1206
	blt	a1, a2, bge_else.9005
	j	bge_cont.9006
bge_else.9005:
	flw	fa0, a0, 0 ! 1207
	flw	fa1, a0, 4 ! 1207
	flw	fa2, a0, 8 ! 1207
	lw	a1, sp, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	quadratic.2637
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a0, 3 ! 1208
	lw	a1, sp, 20 ! 0
	bne	a1, a0, be_else.9007
	li	a0, l.6003 ! 1208
	flw	fa1, a0, 0 ! 1208
	fsub.s	fa0, fa0, fa1, rne ! 1208
	j	be_cont.9008
be_else.9007:
be_cont.9008:
	lw	a0, sp, 16 ! 0
	fsw	a0, fa0, 12 ! 1208
bge_cont.9006:
be_cont.9004:
	lw	a0, sp, 4 ! 0
	addi	a1, a0, -1 ! 1210
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9002:
	ret ! 1211
setup_startp.2717:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	veccpy.2486
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	lw	a0, a0, 0 ! 1216
	addi	a1, a0, -1 ! 1216
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
is_rect_outside.2719:
	fsw	sp, fa2, 0 ! 0
	fsw	sp, fa1, 8 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_fabs
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_param_a.2532
	addi	sp, sp, -36
	lw	ra, sp, 32
	fmv.s	fa1, fa0
	flw	fa0, sp, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1228
	bne	a0, a1, be_else.9011
	li	a0, 0 ! 1232
	j	be_cont.9012
be_else.9011:
	flw	fa0, sp, 8 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fabs
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_b.2534
	addi	sp, sp, -44
	lw	ra, sp, 40
	fmv.s	fa1, fa0
	flw	fa0, sp, 32 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fless
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 0 ! 1229
	bne	a0, a1, be_else.9013
	li	a0, 0 ! 1231
	j	be_cont.9014
be_else.9013:
	flw	fa0, sp, 0 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fabs
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_c.2536
	addi	sp, sp, -52
	lw	ra, sp, 48
	fmv.s	fa1, fa0
	flw	fa0, sp, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.9014:
be_cont.9012:
	li	a1, 0 ! 1227
	bne	a0, a1, be_else.9015
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_isinvert.2528
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1233
	bne	a0, a1, be_else.9016
	li	a0, 1 ! 1233
	ret ! 1233
be_else.9016:
	li	a0, 0 ! 1233
	ret ! 1233
be_else.9015:
	lw	a0, sp, 16 ! 0
	j	o_isinvert.2528
is_plane_outside.2724:
	sw	sp, a0, 0 ! 0
	fsw	sp, fa2, 8 ! 0
	fsw	sp, fa1, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_param_abc.2538
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa0, sp, 24 ! 0
	flw	fa1, sp, 16 ! 0
	flw	fa2, sp, 8 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	veciprod2.2500
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 0 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_isinvert.2528
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa0, sp, 32 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_fisneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, a0
	lw	a0, sp, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	xor.2435
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 1239
	bne	a0, a1, be_else.9018
	li	a0, 1 ! 1239
	ret ! 1239
be_else.9018:
	li	a0, 0 ! 1239
	ret ! 1239
is_second_outside.2729:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	quadratic.2637
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_form.2524
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 3 ! 1245
	bne	a0, a1, be_else.9020
	li	a0, l.6003 ! 1245
	flw	fa0, a0, 0 ! 1245
	flw	fa1, sp, 8 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1245
	j	be_cont.9021
be_else.9020:
	flw	fa0, sp, 8 ! 0
be_cont.9021:
	lw	a0, sp, 0 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	o_isinvert.2528
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa0, sp, 16 ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_fisneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	xor.2435
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1246
	bne	a0, a1, be_else.9022
	li	a0, 1 ! 1246
	ret ! 1246
be_else.9022:
	li	a0, 0 ! 1246
	ret ! 1246
is_outside.2734:
	fsw	sp, fa2, 0 ! 0
	fsw	sp, fa1, 8 ! 0
	sw	sp, a0, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_param_x.2540
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1251
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_y.2542
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 8 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1252
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 40 ! 0
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_z.2544
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 0 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1253
	lw	a0, sp, 16 ! 0
	fsw	sp, fa0, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_form.2524
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 1 ! 1255
	bne	a0, a1, be_else.9024
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 48 ! 0
	lw	a0, sp, 16 ! 0
	j	is_rect_outside.2719
be_else.9024:
	li	a1, 2 ! 1257
	bne	a0, a1, be_else.9025
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 48 ! 0
	lw	a0, sp, 16 ! 0
	j	is_plane_outside.2724
be_else.9025:
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 48 ! 0
	lw	a0, sp, 16 ! 0
	j	is_second_outside.2729
check_all_inside.2739:
	lw	a2, a21, 4 ! 0
	slli	a3, a0, 2 ! 1265
	add	t0, a1, a3 ! 1265
	lw	a3, t0, 0 ! 1265
	li	a4, 1 ! 1266
	neg	a4, a4 ! 1266
	bne	a3, a4, be_else.9026
	li	a0, 1 ! 1267
	ret ! 1267
be_else.9026:
	slli	a3, a3, 2 ! 1269
	add	t0, a2, a3 ! 1269
	lw	a2, t0, 0 ! 1269
	fsw	sp, fa2, 0 ! 0
	fsw	sp, fa1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a21, 28 ! 0
	sw	sp, a0, 32 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	is_outside.2734
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1269
	bne	a0, a1, be_else.9027
	lw	a0, sp, 32 ! 0
	addi	a0, a0, 1 ! 1272
	flw	fa0, sp, 16 ! 0
	flw	fa1, sp, 8 ! 0
	flw	fa2, sp, 0 ! 0
	lw	a1, sp, 24 ! 0
	lw	a21, sp, 28 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9027:
	li	a0, 0 ! 1270
	ret ! 1270
shadow_check_and_group.2745:
	lw	a2, a21, 28 ! 0
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	slli	a9, a0, 2 ! 1285
	add	t0, a1, a9 ! 1285
	lw	a9, t0, 0 ! 1285
	li	a10, 1 ! 1285
	neg	a10, a10 ! 1285
	bne	a9, a10, be_else.9028
	li	a0, 0 ! 1286
	ret ! 1286
be_else.9028:
	slli	a9, a0, 2 ! 1288
	add	t0, a1, a9 ! 1288
	lw	a9, t0, 0 ! 1288
	sw	sp, a8, 0 ! 0
	sw	sp, a7, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a21, 16 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, a4, 24 ! 0
	sw	sp, a9, 28 ! 0
	sw	sp, a3, 32 ! 0
	mv	a1, a5
	mv	a0, a9
	mv	a21, a2
	mv	a2, a7
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 32 ! 0
	flw	fa0, a1, 0 ! 1290
	li	a1, 0 ! 1291
	fsw	sp, fa0, 40 ! 0
	bne	a0, a1, be_else.9030
	li	a0, 0 ! 1291
	j	be_cont.9031
be_else.9030:
	li	a0, l.6382 ! 1291
	flw	fa1, a0, 0 ! 1291
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fless
	addi	sp, sp, -52
	lw	ra, sp, 48
be_cont.9031:
	li	a1, 0 ! 1291
	bne	a0, a1, be_else.9032
	lw	a0, sp, 28 ! 0
	slli	a0, a0, 2 ! 1307
	lw	a1, sp, 24 ! 0
	add	t0, a1, a0 ! 1307
	lw	a0, t0, 0 ! 1307
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_isinvert.2528
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1307
	bne	a0, a1, be_else.9033
	li	a0, 0 ! 1310
	ret ! 1310
be_else.9033:
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 1308
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9032:
	li	a0, l.6384 ! 1294
	flw	fa0, a0, 0 ! 1294
	flw	fa1, sp, 40 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1294
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 0 ! 1295
	fmul.s	fa1, fa1, fa0, rne ! 1295
	lw	a1, sp, 4 ! 0
	flw	fa2, a1, 0 ! 1295
	fadd.s	fa1, fa1, fa2, rne ! 1295
	flw	fa2, a0, 4 ! 1296
	fmul.s	fa2, fa2, fa0, rne ! 1296
	flw	fa3, a1, 4 ! 1296
	fadd.s	fa2, fa2, fa3, rne ! 1296
	flw	fa3, a0, 8 ! 1297
	fmul.s	fa0, fa3, fa0, rne ! 1297
	flw	fa3, a1, 8 ! 1297
	fadd.s	fa0, fa0, fa3, rne ! 1297
	li	a0, 0 ! 1298
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	sw	sp, ra, 48
	addi	sp, sp, 52
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 0 ! 1298
	bne	a0, a1, be_else.9034
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 1301
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9034:
	li	a0, 1 ! 1299
	ret ! 1299
shadow_check_one_or_group.2748:
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	slli	a4, a0, 2 ! 1315
	add	t0, a1, a4 ! 1315
	lw	a4, t0, 0 ! 1315
	li	a5, 1 ! 1316
	neg	a5, a5 ! 1316
	bne	a4, a5, be_else.9035
	li	a0, 0 ! 1317
	ret ! 1317
be_else.9035:
	slli	a4, a4, 2 ! 1319
	add	t0, a3, a4 ! 1319
	lw	a3, t0, 0 ! 1319
	li	a4, 0 ! 1320
	sw	sp, a1, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a1, a3
	mv	a0, a4
	mv	a21, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1321
	bne	a0, a1, be_else.9036
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1324
	lw	a1, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9036:
	li	a0, 1 ! 1322
	ret ! 1322
shadow_check_one_or_matrix.2751:
	lw	a2, a21, 20 ! 0
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a7, a0, 2 ! 1330
	add	t0, a1, a7 ! 1330
	lw	a7, t0, 0 ! 1330
	lw	a8, a7, 0 ! 1331
	li	a9, 1 ! 1332
	neg	a9, a9 ! 1332
	bne	a8, a9, be_else.9037
	li	a0, 0 ! 1333
	ret ! 1333
be_else.9037:
	li	a9, 99 ! 1336
	sw	sp, a7, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a21, 12 ! 0
	sw	sp, a0, 16 ! 0
	bne	a8, a9, be_else.9038
	li	a0, 1 ! 1337
	j	be_cont.9039
be_else.9038:
	sw	sp, a3, 20 ! 0
	mv	a1, a5
	mv	a0, a8
	mv	a21, a2
	mv	a2, a6
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 1342
	bne	a0, a1, be_else.9040
	li	a0, 0 ! 1348
	j	be_cont.9041
be_else.9040:
	lw	a0, sp, 20 ! 0
	flw	fa0, a0, 0 ! 1343
	li	a0, l.6398 ! 1343
	flw	fa1, a0, 0 ! 1343
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_fless
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 1343
	bne	a0, a1, be_else.9042
	li	a0, 0 ! 1347
	j	be_cont.9043
be_else.9042:
	li	a0, 1 ! 1344
	lw	a1, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 1344
	bne	a0, a1, be_else.9044
	li	a0, 0 ! 1346
	j	be_cont.9045
be_else.9044:
	li	a0, 1 ! 1345
be_cont.9045:
be_cont.9043:
be_cont.9041:
be_cont.9039:
	li	a1, 0 ! 1335
	bne	a0, a1, be_else.9046
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 1355
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9046:
	li	a0, 1 ! 1350
	lw	a1, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 1350
	bne	a0, a1, be_else.9047
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 1353
	lw	a1, sp, 8 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9047:
	li	a0, 1 ! 1351
	ret ! 1351
solve_each_element.2754:
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	slli	a12, a0, 2 ! 1366
	add	t0, a1, a12 ! 1366
	lw	a12, t0, 0 ! 1366
	li	a13, 1 ! 1367
	neg	a13, a13 ! 1367
	bne	a12, a13, be_else.9048
	ret ! 1367
be_else.9048:
	sw	sp, a8, 0 ! 0
	sw	sp, a10, 4 ! 0
	sw	sp, a9, 8 ! 0
	sw	sp, a11, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a5, 24 ! 0
	sw	sp, a2, 28 ! 0
	sw	sp, a1, 32 ! 0
	sw	sp, a21, 36 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a7, 44 ! 0
	sw	sp, a12, 48 ! 0
	mv	a1, a2
	mv	a0, a12
	mv	a21, a6
	mv	a2, a4
	sw	sp, ra, 52
	addi	sp, sp, 56
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1370
	bne	a0, a1, be_else.9050
	lw	a0, sp, 48 ! 0
	slli	a0, a0, 2 ! 1398
	lw	a1, sp, 44 ! 0
	add	t0, a1, a0 ! 1398
	lw	a0, t0, 0 ! 1398
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	o_isinvert.2528
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1398
	bne	a0, a1, be_else.9051
	ret ! 1400
be_else.9051:
	lw	a0, sp, 40 ! 0
	addi	a0, a0, 1 ! 1399
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 36 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9050:
	lw	a1, sp, 24 ! 0
	flw	fa1, a1, 0 ! 1374
	li	a1, l.6001 ! 1376
	flw	fa0, a1, 0 ! 1376
	sw	sp, a0, 52 ! 0
	fsw	sp, fa1, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1376
	bne	a0, a1, be_else.9053
	j	be_cont.9054
be_else.9053:
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 1377
	flw	fa0, sp, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_fless
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1377
	bne	a0, a1, be_else.9055
	j	be_cont.9056
be_else.9055:
	li	a0, l.6384 ! 1379
	flw	fa0, a0, 0 ! 1379
	flw	fa1, sp, 56 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1379
	lw	a0, sp, 28 ! 0
	flw	fa1, a0, 0 ! 1380
	fmul.s	fa1, fa1, fa0, rne ! 1380
	lw	a1, sp, 16 ! 0
	flw	fa2, a1, 0 ! 1380
	fadd.s	fa1, fa1, fa2, rne ! 1380
	flw	fa2, a0, 4 ! 1381
	fmul.s	fa2, fa2, fa0, rne ! 1381
	flw	fa3, a1, 4 ! 1381
	fadd.s	fa2, fa2, fa3, rne ! 1381
	flw	fa3, a0, 8 ! 1382
	fmul.s	fa3, fa3, fa0, rne ! 1382
	flw	fa4, a1, 8 ! 1382
	fadd.s	fa3, fa3, fa4, rne ! 1382
	li	a1, 0 ! 1383
	lw	a2, sp, 32 ! 0
	lw	a21, sp, 12 ! 0
	fsw	sp, fa3, 64 ! 0
	fsw	sp, fa2, 72 ! 0
	fsw	sp, fa1, 80 ! 0
	fsw	sp, fa0, 88 ! 0
	mv	a0, a1
	mv	a1, a2
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 0 ! 1383
	bne	a0, a1, be_else.9057
	j	be_cont.9058
be_else.9057:
	lw	a0, sp, 20 ! 0
	flw	fa0, sp, 88 ! 0
	fsw	a0, fa0, 0 ! 1385
	flw	fa0, sp, 80 ! 0
	flw	fa1, sp, 72 ! 0
	flw	fa2, sp, 64 ! 0
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	vecset.2476
	addi	sp, sp, -100
	lw	ra, sp, 96
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 48 ! 0
	sw	a0, a1, 0 ! 1387
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 52 ! 0
	sw	a0, a1, 0 ! 1388
be_cont.9058:
be_cont.9056:
be_cont.9054:
	lw	a0, sp, 40 ! 0
	addi	a0, a0, 1 ! 1394
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a21, sp, 36 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network.2758:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a0, 2 ! 1407
	add	t0, a1, a5 ! 1407
	lw	a5, t0, 0 ! 1407
	li	a6, 1 ! 1408
	neg	a6, a6 ! 1408
	bne	a5, a6, be_else.9059
	ret ! 1412
be_else.9059:
	slli	a5, a5, 2 ! 1409
	add	t0, a4, a5 ! 1409
	lw	a4, t0, 0 ! 1409
	li	a5, 0 ! 1410
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a1, a4
	mv	a0, a5
	mv	a21, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12 ! 0
	addi	a0, a0, 1 ! 1411
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix.2762:
	lw	a3, a21, 20 ! 0
	lw	a4, a21, 16 ! 0
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a8, a0, 2 ! 1417
	add	t0, a1, a8 ! 1417
	lw	a8, t0, 0 ! 1417
	lw	a9, a8, 0 ! 1418
	li	a10, 1 ! 1419
	neg	a10, a10 ! 1419
	bne	a9, a10, be_else.9061
	ret ! 1420
be_else.9061:
	li	a10, 99 ! 1422
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a0, 12 ! 0
	bne	a9, a10, be_else.9063
	li	a3, 1 ! 1423
	mv	a1, a8
	mv	a0, a3
	mv	a21, a7
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	be_cont.9064
be_else.9063:
	sw	sp, a8, 16 ! 0
	sw	sp, a7, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a5, 28 ! 0
	mv	a1, a2
	mv	a0, a9
	mv	a21, a6
	mv	a2, a4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1428
	bne	a0, a1, be_else.9065
	j	be_cont.9066
be_else.9065:
	lw	a0, sp, 28 ! 0
	flw	fa0, a0, 0 ! 1429
	lw	a0, sp, 24 ! 0
	flw	fa1, a0, 0 ! 1430
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1430
	bne	a0, a1, be_else.9067
	j	be_cont.9068
be_else.9067:
	li	a0, 1 ! 1431
	lw	a1, sp, 16 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.9068:
be_cont.9066:
be_cont.9064:
	lw	a0, sp, 12 ! 0
	addi	a0, a0, 1 ! 1435
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
judge_intersection.2766:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	li	a4, l.6421 ! 1444
	flw	fa0, a4, 0 ! 1444
	fsw	a2, fa0, 0 ! 1444
	li	a4, 0 ! 1445
	lw	a3, a3, 0 ! 1445
	sw	sp, a2, 0 ! 0
	mv	a2, a0
	mv	a21, a1
	mv	a1, a3
	mv	a0, a4
	sw	sp, ra, 4
	addi	sp, sp, 8
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	flw	fa1, a0, 0 ! 1446
	li	a0, l.6398 ! 1448
	flw	fa0, a0, 0 ! 1448
	fsw	sp, fa1, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 1448
	bne	a0, a1, be_else.9070
	li	a0, 0 ! 1450
	ret ! 1450
be_else.9070:
	li	a0, l.6427 ! 1449
	flw	fa1, a0, 0 ! 1449
	flw	fa0, sp, 8 ! 0
	j	min_caml_fless
solve_each_element_fast.2768:
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	sw	sp, a8, 0 ! 0
	sw	sp, a10, 4 ! 0
	sw	sp, a9, 8 ! 0
	sw	sp, a11, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a6, 24 ! 0
	sw	sp, a21, 28 ! 0
	sw	sp, a7, 32 ! 0
	sw	sp, a2, 36 ! 0
	sw	sp, a5, 40 ! 0
	sw	sp, a1, 44 ! 0
	sw	sp, a0, 48 ! 0
	mv	a0, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	d_vec.2583
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 48 ! 0
	slli	a2, a1, 2 ! 1460
	lw	a3, sp, 44 ! 0
	add	t0, a3, a2 ! 1460
	lw	a2, t0, 0 ! 1460
	li	a4, 1 ! 1461
	neg	a4, a4 ! 1461
	bne	a2, a4, be_else.9071
	ret ! 1461
be_else.9071:
	lw	a4, sp, 36 ! 0
	lw	a21, sp, 40 ! 0
	sw	sp, a0, 52 ! 0
	sw	sp, a2, 56 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1464
	bne	a0, a1, be_else.9073
	lw	a0, sp, 56 ! 0
	slli	a0, a0, 2 ! 1492
	lw	a1, sp, 32 ! 0
	add	t0, a1, a0 ! 1492
	lw	a0, t0, 0 ! 1492
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	o_isinvert.2528
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1492
	bne	a0, a1, be_else.9074
	ret ! 1494
be_else.9074:
	lw	a0, sp, 48 ! 0
	addi	a0, a0, 1 ! 1493
	lw	a1, sp, 44 ! 0
	lw	a2, sp, 36 ! 0
	lw	a21, sp, 28 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9073:
	lw	a1, sp, 24 ! 0
	flw	fa1, a1, 0 ! 1468
	li	a1, l.6001 ! 1470
	flw	fa0, a1, 0 ! 1470
	sw	sp, a0, 60 ! 0
	fsw	sp, fa1, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1470
	bne	a0, a1, be_else.9076
	j	be_cont.9077
be_else.9076:
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 1471
	flw	fa0, sp, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fless
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1471
	bne	a0, a1, be_else.9078
	j	be_cont.9079
be_else.9078:
	li	a0, l.6384 ! 1473
	flw	fa0, a0, 0 ! 1473
	flw	fa1, sp, 64 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1473
	lw	a0, sp, 52 ! 0
	flw	fa1, a0, 0 ! 1474
	fmul.s	fa1, fa1, fa0, rne ! 1474
	lw	a1, sp, 16 ! 0
	flw	fa2, a1, 0 ! 1474
	fadd.s	fa1, fa1, fa2, rne ! 1474
	flw	fa2, a0, 4 ! 1475
	fmul.s	fa2, fa2, fa0, rne ! 1475
	flw	fa3, a1, 4 ! 1475
	fadd.s	fa2, fa2, fa3, rne ! 1475
	flw	fa3, a0, 8 ! 1476
	fmul.s	fa3, fa3, fa0, rne ! 1476
	flw	fa4, a1, 8 ! 1476
	fadd.s	fa3, fa3, fa4, rne ! 1476
	li	a0, 0 ! 1477
	lw	a1, sp, 44 ! 0
	lw	a21, sp, 12 ! 0
	fsw	sp, fa3, 72 ! 0
	fsw	sp, fa2, 80 ! 0
	fsw	sp, fa1, 88 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	sw	sp, ra, 104
	addi	sp, sp, 108
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 0 ! 1477
	bne	a0, a1, be_else.9080
	j	be_cont.9081
be_else.9080:
	lw	a0, sp, 20 ! 0
	flw	fa0, sp, 96 ! 0
	fsw	a0, fa0, 0 ! 1479
	flw	fa0, sp, 88 ! 0
	flw	fa1, sp, 80 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	vecset.2476
	addi	sp, sp, -108
	lw	ra, sp, 104
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 56 ! 0
	sw	a0, a1, 0 ! 1481
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 60 ! 0
	sw	a0, a1, 0 ! 1482
be_cont.9081:
be_cont.9079:
be_cont.9077:
	lw	a0, sp, 48 ! 0
	addi	a0, a0, 1 ! 1488
	lw	a1, sp, 44 ! 0
	lw	a2, sp, 36 ! 0
	lw	a21, sp, 28 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
solve_one_or_network_fast.2772:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	slli	a5, a0, 2 ! 1500
	add	t0, a1, a5 ! 1500
	lw	a5, t0, 0 ! 1500
	li	a6, 1 ! 1501
	neg	a6, a6 ! 1501
	bne	a5, a6, be_else.9082
	ret ! 1505
be_else.9082:
	slli	a5, a5, 2 ! 1502
	add	t0, a4, a5 ! 1502
	lw	a4, t0, 0 ! 1502
	li	a5, 0 ! 1503
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a1, a4
	mv	a0, a5
	mv	a21, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12 ! 0
	addi	a0, a0, 1 ! 1504
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_or_matrix_fast.2776:
	lw	a3, a21, 16 ! 0
	lw	a4, a21, 12 ! 0
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a7, a0, 2 ! 1510
	add	t0, a1, a7 ! 1510
	lw	a7, t0, 0 ! 1510
	lw	a8, a7, 0 ! 1511
	li	a9, 1 ! 1512
	neg	a9, a9 ! 1512
	bne	a8, a9, be_else.9084
	ret ! 1513
be_else.9084:
	li	a9, 99 ! 1515
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a21, 8 ! 0
	sw	sp, a0, 12 ! 0
	bne	a8, a9, be_else.9086
	li	a3, 1 ! 1516
	mv	a1, a7
	mv	a0, a3
	mv	a21, a6
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	j	be_cont.9087
be_else.9086:
	sw	sp, a7, 16 ! 0
	sw	sp, a6, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a5, 28 ! 0
	mv	a1, a2
	mv	a0, a8
	mv	a21, a4
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1521
	bne	a0, a1, be_else.9088
	j	be_cont.9089
be_else.9088:
	lw	a0, sp, 28 ! 0
	flw	fa0, a0, 0 ! 1522
	lw	a0, sp, 24 ! 0
	flw	fa1, a0, 0 ! 1523
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1523
	bne	a0, a1, be_else.9090
	j	be_cont.9091
be_else.9090:
	li	a0, 1 ! 1524
	lw	a1, sp, 16 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 20 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.9091:
be_cont.9089:
be_cont.9087:
	lw	a0, sp, 12 ! 0
	addi	a0, a0, 1 ! 1528
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
judge_intersection_fast.2780:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	li	a4, l.6421 ! 1535
	flw	fa0, a4, 0 ! 1535
	fsw	a2, fa0, 0 ! 1535
	li	a4, 0 ! 1536
	lw	a3, a3, 0 ! 1536
	sw	sp, a2, 0 ! 0
	mv	a2, a0
	mv	a21, a1
	mv	a1, a3
	mv	a0, a4
	sw	sp, ra, 4
	addi	sp, sp, 8
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	flw	fa1, a0, 0 ! 1537
	li	a0, l.6398 ! 1539
	flw	fa0, a0, 0 ! 1539
	fsw	sp, fa1, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 1539
	bne	a0, a1, be_else.9093
	li	a0, 0 ! 1541
	ret ! 1541
be_else.9093:
	li	a0, l.6427 ! 1540
	flw	fa1, a0, 0 ! 1540
	flw	fa0, sp, 8 ! 0
	j	min_caml_fless
get_nvector_rect.2782:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	lw	a2, a2, 0 ! 1555
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	vecbzero.2484
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	addi	a1, a0, -1 ! 1558
	addi	a0, a0, -1 ! 1558
	slli	a0, a0, 2 ! 1558
	lw	a2, sp, 4 ! 0
	add	t0, a2, a0 ! 1558
	flw	fa0, t0, 0 ! 1558
	sw	sp, a1, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	sgn.2468
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fneg
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 1558
	lw	a1, sp, 0 ! 0
	add	t0, a1, a0 ! 1558
	fsw	t0, fa0, 0 ! 1558
	ret ! 1558
get_nvector_plane.2784:
	lw	a1, a21, 4 ! 0
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	o_param_a.2532
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fneg
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 1564
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	o_param_b.2534
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fneg
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 4 ! 1565
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	o_param_c.2536
	addi	sp, sp, -12
	lw	ra, sp, 8
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_fneg
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 8 ! 1566
	ret ! 1566
get_nvector_second.2786:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	flw	fa0, a2, 0 ! 1571
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	o_param_x.2540
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1571
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 4 ! 1572
	lw	a1, sp, 4 ! 0
	fsw	sp, fa0, 24 ! 0
	fsw	sp, fa1, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_y.2542
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1572
	lw	a0, sp, 8 ! 0
	flw	fa1, a0, 8 ! 1573
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_param_z.2544
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1573
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 56 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_a.2532
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1575
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_param_b.2534
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1576
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	o_param_c.2536
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1577
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 80 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_isrot.2530
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 0 ! 1579
	bne	a0, a1, be_else.9097
	lw	a0, sp, 0 ! 0
	flw	fa0, sp, 64 ! 0
	fsw	a0, fa0, 0 ! 1580
	flw	fa0, sp, 72 ! 0
	fsw	a0, fa0, 4 ! 1581
	flw	fa0, sp, 80 ! 0
	fsw	a0, fa0, 8 ! 1582
	j	be_cont.9098
be_else.9097:
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_param_r3.2560
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1584
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	o_param_r2.2558
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1584
	flw	fa2, sp, 88 ! 0
	fadd.s	fa0, fa2, fa0, rne ! 1584
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fhalf
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 64 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1584
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 0 ! 1584
	lw	a1, sp, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	o_param_r3.2560
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1585
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	o_param_r1.2556
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 56 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1585
	flw	fa1, sp, 96 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1585
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fhalf
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 72 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1585
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 4 ! 1585
	lw	a1, sp, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	o_param_r2.2558
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1586
	lw	a0, sp, 4 ! 0
	fsw	sp, fa0, 104 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_param_r1.2556
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1586
	flw	fa1, sp, 104 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1586
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fhalf
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 80 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1586
	lw	a0, sp, 0 ! 0
	fsw	a0, fa0, 8 ! 1586
be_cont.9098:
	lw	a1, sp, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_isinvert.2528
	addi	sp, sp, -116
	lw	ra, sp, 112
	mv	a1, a0
	lw	a0, sp, 0 ! 0
	j	vecunit_sgn.2494
get_nvector.2788:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	o_form.2524
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 1 ! 1594
	bne	a0, a1, be_else.9099
	lw	a0, sp, 12 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9099:
	li	a1, 2 ! 1596
	bne	a0, a1, be_else.9100
	lw	a0, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9100:
	lw	a0, sp, 4 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
utexture.2791:
	lw	a2, a21, 4 ! 0
	sw	sp, a1, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	o_texturetype.2522
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_color_red.2550
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 0 ! 1611
	lw	a1, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_color_green.2552
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 4 ! 1612
	lw	a1, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_color_blue.2554
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 8 ! 1613
	li	a1, 1 ! 1614
	lw	a2, sp, 12 ! 0
	bne	a2, a1, be_else.9101
	lw	a1, sp, 0 ! 0
	flw	fa0, a1, 0 ! 1617
	lw	a2, sp, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	mv	a0, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	o_param_x.2540
	addi	sp, sp, -28
	lw	ra, sp, 24
	flw	fa1, sp, 16 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1617
	li	a0, l.6519 ! 1619
	flw	fa1, a0, 0 ! 1619
	fmul.s	fa1, fa0, fa1, rne ! 1619
	fsw	sp, fa0, 24 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_floor
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a0, l.6521 ! 1619
	flw	fa1, a0, 0 ! 1619
	fmul.s	fa0, fa0, fa1, rne ! 1619
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1620
	li	a0, l.6502 ! 1620
	flw	fa1, a0, 0 ! 1620
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fless
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 0 ! 0
	flw	fa0, a1, 8 ! 1622
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 32 ! 0
	fsw	sp, fa0, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	o_param_z.2544
	addi	sp, sp, -52
	lw	ra, sp, 48
	flw	fa1, sp, 40 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1622
	li	a0, l.6519 ! 1624
	flw	fa1, a0, 0 ! 1624
	fmul.s	fa1, fa0, fa1, rne ! 1624
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_floor
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a0, l.6521 ! 1624
	flw	fa1, a0, 0 ! 1624
	fmul.s	fa0, fa0, fa1, rne ! 1624
	flw	fa1, sp, 48 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1625
	li	a0, l.6502 ! 1625
	flw	fa1, a0, 0 ! 1625
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fless
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 1628
	lw	a2, sp, 32 ! 0
	bne	a2, a1, be_else.9103
	li	a1, 0 ! 1630
	bne	a0, a1, be_else.9105
	li	a0, l.6495 ! 1630
	flw	fa0, a0, 0 ! 1630
	j	be_cont.9106
be_else.9105:
	li	a0, l.6001 ! 1630
	flw	fa0, a0, 0 ! 1630
be_cont.9106:
	j	be_cont.9104
be_else.9103:
	li	a1, 0 ! 1629
	bne	a0, a1, be_else.9107
	li	a0, l.6001 ! 1629
	flw	fa0, a0, 0 ! 1629
	j	be_cont.9108
be_else.9107:
	li	a0, l.6495 ! 1629
	flw	fa0, a0, 0 ! 1629
be_cont.9108:
be_cont.9104:
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 4 ! 1627
	ret ! 1627
be_else.9101:
	li	a1, 2 ! 1632
	bne	a2, a1, be_else.9110
	lw	a1, sp, 0 ! 0
	flw	fa0, a1, 4 ! 1635
	li	a1, l.6511 ! 1635
	flw	fa1, a1, 0 ! 1635
	fmul.s	fa0, fa0, fa1, rne ! 1635
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_sin
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fsqr
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a0, l.6495 ! 1636
	flw	fa1, a0, 0 ! 1636
	fmul.s	fa1, fa1, fa0, rne ! 1636
	lw	a0, sp, 4 ! 0
	fsw	a0, fa1, 0 ! 1636
	li	a1, l.6495 ! 1637
	flw	fa1, a1, 0 ! 1637
	li	a1, l.6003 ! 1637
	flw	fa2, a1, 0 ! 1637
	fsub.s	fa0, fa2, fa0, rne ! 1637
	fmul.s	fa0, fa1, fa0, rne ! 1637
	fsw	a0, fa0, 4 ! 1637
	ret ! 1637
be_else.9110:
	li	a1, 3 ! 1639
	bne	a2, a1, be_else.9112
	lw	a1, sp, 0 ! 0
	flw	fa0, a1, 0 ! 1642
	lw	a2, sp, 8 ! 0
	fsw	sp, fa0, 56 ! 0
	mv	a0, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	o_param_x.2540
	addi	sp, sp, -68
	lw	ra, sp, 64
	flw	fa1, sp, 56 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1642
	lw	a0, sp, 0 ! 0
	flw	fa1, a0, 8 ! 1643
	lw	a0, sp, 8 ! 0
	fsw	sp, fa0, 64 ! 0
	fsw	sp, fa1, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	o_param_z.2544
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1643
	flw	fa1, sp, 64 ! 0
	fsw	sp, fa0, 80 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fsqr
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fsw	sp, fa0, 88 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_fsqr
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1644
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_sqrt
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a0, l.6502 ! 1644
	flw	fa1, a0, 0 ! 1644
	fdiv.s	fa0, fa0, fa1, rne ! 1644
	fsw	sp, fa0, 96 ! 0
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_floor
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 96 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1645
	li	a0, l.6482 ! 1645
	flw	fa1, a0, 0 ! 1645
	fmul.s	fa0, fa0, fa1, rne ! 1645
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_cos
	addi	sp, sp, -108
	lw	ra, sp, 104
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fsqr
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a0, l.6495 ! 1647
	flw	fa1, a0, 0 ! 1647
	fmul.s	fa1, fa0, fa1, rne ! 1647
	lw	a0, sp, 4 ! 0
	fsw	a0, fa1, 4 ! 1647
	li	a1, l.6003 ! 1648
	flw	fa1, a1, 0 ! 1648
	fsub.s	fa0, fa1, fa0, rne ! 1648
	li	a1, l.6495 ! 1648
	flw	fa1, a1, 0 ! 1648
	fmul.s	fa0, fa0, fa1, rne ! 1648
	fsw	a0, fa0, 8 ! 1648
	ret ! 1648
be_else.9112:
	li	a1, 4 ! 1650
	bne	a2, a1, be_else.9114
	lw	a1, sp, 0 ! 0
	flw	fa0, a1, 0 ! 1652
	lw	a2, sp, 8 ! 0
	fsw	sp, fa0, 104 ! 0
	mv	a0, a2
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	o_param_x.2540
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa1, sp, 104 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1652
	lw	a0, sp, 8 ! 0
	fsw	sp, fa0, 112 ! 0
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	o_param_a.2532
	addi	sp, sp, -124
	lw	ra, sp, 120
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_sqrt
	addi	sp, sp, -124
	lw	ra, sp, 120
	flw	fa1, sp, 112 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1652
	lw	a0, sp, 0 ! 0
	flw	fa1, a0, 8 ! 1653
	lw	a1, sp, 8 ! 0
	fsw	sp, fa0, 120 ! 0
	fsw	sp, fa1, 128 ! 0
	mv	a0, a1
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	o_param_z.2544
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1653
	lw	a0, sp, 8 ! 0
	fsw	sp, fa0, 136 ! 0
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	o_param_c.2536
	addi	sp, sp, -148
	lw	ra, sp, 144
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	min_caml_sqrt
	addi	sp, sp, -148
	lw	ra, sp, 144
	flw	fa1, sp, 136 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1653
	flw	fa1, sp, 120 ! 0
	fsw	sp, fa0, 144 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 152
	addi	sp, sp, 156
	jal	min_caml_fsqr
	addi	sp, sp, -156
	lw	ra, sp, 152
	flw	fa1, sp, 144 ! 0
	fsw	sp, fa0, 152 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	min_caml_fsqr
	addi	sp, sp, -164
	lw	ra, sp, 160
	flw	fa1, sp, 152 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 1654
	flw	fa1, sp, 120 ! 0
	fsw	sp, fa0, 160 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fabs
	addi	sp, sp, -172
	lw	ra, sp, 168
	li	a0, l.6476 ! 1656
	flw	fa1, a0, 0 ! 1656
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fless
	addi	sp, sp, -172
	lw	ra, sp, 168
	li	a1, 0 ! 1656
	bne	a0, a1, be_else.9115
	flw	fa0, sp, 120 ! 0
	flw	fa1, sp, 144 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1659
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_fabs
	addi	sp, sp, -172
	lw	ra, sp, 168
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	min_caml_atan
	addi	sp, sp, -172
	lw	ra, sp, 168
	li	a0, l.6480 ! 1661
	flw	fa1, a0, 0 ! 1661
	fmul.s	fa0, fa0, fa1, rne ! 1661
	li	a0, l.6482 ! 1661
	flw	fa1, a0, 0 ! 1661
	fdiv.s	fa0, fa0, fa1, rne ! 1661
	j	be_cont.9116
be_else.9115:
	li	a0, l.6478 ! 1657
	flw	fa0, a0, 0 ! 1657
be_cont.9116:
	fsw	sp, fa0, 168 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	min_caml_floor
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1663
	lw	a0, sp, 0 ! 0
	flw	fa1, a0, 4 ! 1665
	lw	a0, sp, 8 ! 0
	fsw	sp, fa0, 176 ! 0
	fsw	sp, fa1, 184 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	o_param_y.2542
	addi	sp, sp, -196
	lw	ra, sp, 192
	flw	fa1, sp, 184 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1665
	lw	a0, sp, 8 ! 0
	fsw	sp, fa0, 192 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	o_param_b.2534
	addi	sp, sp, -204
	lw	ra, sp, 200
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	min_caml_sqrt
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 192 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1665
	flw	fa1, sp, 160 ! 0
	fsw	sp, fa0, 200 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fabs
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a0, l.6476 ! 1667
	flw	fa1, a0, 0 ! 1667
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fless
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a1, 0 ! 1667
	bne	a0, a1, be_else.9117
	flw	fa0, sp, 160 ! 0
	flw	fa1, sp, 200 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1670
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_fabs
	addi	sp, sp, -212
	lw	ra, sp, 208
	sw	sp, ra, 208
	addi	sp, sp, 212
	jal	min_caml_atan
	addi	sp, sp, -212
	lw	ra, sp, 208
	li	a0, l.6480 ! 1671
	flw	fa1, a0, 0 ! 1671
	fmul.s	fa0, fa0, fa1, rne ! 1671
	li	a0, l.6482 ! 1671
	flw	fa1, a0, 0 ! 1671
	fdiv.s	fa0, fa0, fa1, rne ! 1671
	j	be_cont.9118
be_else.9117:
	li	a0, l.6478 ! 1668
	flw	fa0, a0, 0 ! 1668
be_cont.9118:
	fsw	sp, fa0, 208 ! 0
	sw	sp, ra, 216
	addi	sp, sp, 220
	jal	min_caml_floor
	addi	sp, sp, -220
	lw	ra, sp, 216
	flw	fa1, sp, 208 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1673
	li	a0, l.6489 ! 1674
	flw	fa1, a0, 0 ! 1674
	li	a0, l.6491 ! 1674
	flw	fa2, a0, 0 ! 1674
	flw	fa3, sp, 176 ! 0
	fsub.s	fa2, fa2, fa3, rne ! 1674
	fsw	sp, fa0, 216 ! 0
	fsw	sp, fa1, 224 ! 0
	fmv.s	fa0, fa2
	sw	sp, ra, 232
	addi	sp, sp, 236
	jal	min_caml_fsqr
	addi	sp, sp, -236
	lw	ra, sp, 232
	flw	fa1, sp, 224 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1674
	li	a0, l.6491 ! 1674
	flw	fa1, a0, 0 ! 1674
	flw	fa2, sp, 216 ! 0
	fsub.s	fa1, fa1, fa2, rne ! 1674
	fsw	sp, fa0, 232 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 240
	addi	sp, sp, 244
	jal	min_caml_fsqr
	addi	sp, sp, -244
	lw	ra, sp, 240
	flw	fa1, sp, 232 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1674
	fsw	sp, fa0, 240 ! 0
	sw	sp, ra, 248
	addi	sp, sp, 252
	jal	min_caml_fisneg
	addi	sp, sp, -252
	lw	ra, sp, 248
	li	a1, 0 ! 1675
	bne	a0, a1, be_else.9119
	flw	fa0, sp, 240 ! 0
	j	be_cont.9120
be_else.9119:
	li	a0, l.6001 ! 1675
	flw	fa0, a0, 0 ! 1675
be_cont.9120:
	li	a0, l.6495 ! 1676
	flw	fa1, a0, 0 ! 1676
	fmul.s	fa0, fa1, fa0, rne ! 1676
	li	a0, l.6497 ! 1676
	flw	fa1, a0, 0 ! 1676
	fdiv.s	fa0, fa0, fa1, rne ! 1676
	lw	a0, sp, 4 ! 0
	fsw	a0, fa0, 8 ! 1676
	ret ! 1676
be_else.9114:
	ret ! 1678
add_light.2794:
	lw	a0, a21, 8 ! 0
	lw	a1, a21, 4 ! 0
	fsw	sp, fa2, 0 ! 0
	fsw	sp, fa1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, a1, 28 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fispos
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1689
	bne	a0, a1, be_else.9123
	j	be_cont.9124
be_else.9123:
	flw	fa0, sp, 16 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	vecaccum.2505
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.9124:
	flw	fa0, sp, 8 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fispos
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1694
	bne	a0, a1, be_else.9125
	ret ! 1699
be_else.9125:
	flw	fa0, sp, 8 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fsqr
	addi	sp, sp, -36
	lw	ra, sp, 32
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fsqr
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1695
	lw	a0, sp, 28 ! 0
	flw	fa1, a0, 0 ! 1696
	fadd.s	fa1, fa1, fa0, rne ! 1696
	fsw	a0, fa1, 0 ! 1696
	flw	fa1, a0, 4 ! 1697
	fadd.s	fa1, fa1, fa0, rne ! 1697
	fsw	a0, fa1, 4 ! 1697
	flw	fa1, a0, 8 ! 1698
	fadd.s	fa0, fa1, fa0, rne ! 1698
	fsw	a0, fa0, 8 ! 1698
	ret ! 1698
trace_reflections.2798:
	lw	a2, a21, 32 ! 0
	lw	a3, a21, 28 ! 0
	lw	a4, a21, 24 ! 0
	lw	a5, a21, 20 ! 0
	lw	a6, a21, 16 ! 0
	lw	a7, a21, 12 ! 0
	lw	a8, a21, 8 ! 0
	lw	a9, a21, 4 ! 0
	li	a10, 0 ! 1705
	blt	a0, a10, bge_else.9128
	slli	a10, a0, 2 ! 1706
	add	t0, a3, a10 ! 1706
	lw	a3, t0, 0 ! 1706
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa1, 8 ! 0
	sw	sp, a9, 16 ! 0
	sw	sp, a1, 20 ! 0
	fsw	sp, fa0, 24 ! 0
	sw	sp, a5, 32 ! 0
	sw	sp, a2, 36 ! 0
	sw	sp, a4, 40 ! 0
	sw	sp, a3, 44 ! 0
	sw	sp, a7, 48 ! 0
	sw	sp, a8, 52 ! 0
	sw	sp, a6, 56 ! 0
	mv	a0, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	r_dvec.2589
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a21, sp, 56 ! 0
	sw	sp, a0, 60 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 0 ! 1710
	bne	a0, a1, be_else.9129
	j	be_cont.9130
be_else.9129:
	lw	a0, sp, 52 ! 0
	lw	a0, a0, 0 ! 1711
	li	a1, 4 ! 1711
	mul	a0, a0, a1 ! 1711
	lw	a1, sp, 48 ! 0
	lw	a1, a1, 0 ! 1711
	add	a0, a0, a1 ! 1711
	lw	a1, sp, 44 ! 0
	sw	sp, a0, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	r_surface_id.2587
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 64 ! 0
	bne	a1, a0, be_else.9131
	li	a0, 0 ! 1714
	lw	a1, sp, 40 ! 0
	lw	a1, a1, 0 ! 1714
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1714
	bne	a0, a1, be_else.9133
	lw	a0, sp, 60 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	d_vec.2583
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	veciprod.2497
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 44 ! 0
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	r_bright.2591
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 24 ! 0
	fmul.s	fa2, fa0, fa1, rne ! 1718
	flw	fa3, sp, 72 ! 0
	fmul.s	fa2, fa2, fa3, rne ! 1718
	lw	a0, sp, 60 ! 0
	fsw	sp, fa2, 80 ! 0
	fsw	sp, fa0, 88 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	d_vec.2583
	addi	sp, sp, -100
	lw	ra, sp, 96
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	veciprod.2497
	addi	sp, sp, -100
	lw	ra, sp, 96
	flw	fa1, sp, 88 ! 0
	fmul.s	fa1, fa1, fa0, rne ! 1719
	flw	fa0, sp, 80 ! 0
	flw	fa2, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 96
	addi	sp, sp, 100
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -100
	lw	ra, sp, 96
	j	be_cont.9134
be_else.9133:
be_cont.9134:
	j	be_cont.9132
be_else.9131:
be_cont.9132:
be_cont.9130:
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 1724
	flw	fa0, sp, 24 ! 0
	flw	fa1, sp, 8 ! 0
	lw	a1, sp, 20 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9128:
	ret ! 1725
trace_ray.2803:
	lw	a3, a21, 80 ! 0
	lw	a4, a21, 76 ! 0
	lw	a5, a21, 72 ! 0
	lw	a6, a21, 68 ! 0
	lw	a7, a21, 64 ! 0
	lw	a8, a21, 60 ! 0
	lw	a9, a21, 56 ! 0
	lw	a10, a21, 52 ! 0
	lw	a11, a21, 48 ! 0
	lw	a12, a21, 44 ! 0
	lw	a13, a21, 40 ! 0
	lw	a14, a21, 36 ! 0
	lw	a15, a21, 32 ! 0
	lw	a16, a21, 28 ! 0
	lw	a17, a21, 24 ! 0
	lw	a18, a21, 20 ! 0
	lw	a19, a21, 16 ! 0
	lw	a20, a21, 12 ! 0
	sw	sp, a5, 0 ! 0
	lw	a5, a21, 8 ! 0
	sw	sp, a21, 4 ! 0
	lw	a21, a21, 4 ! 0
	sw	sp, a4, 8 ! 0
	li	a4, 4 ! 1733
	blt	a4, a0, bge_else.9137
	fsw	sp, fa1, 16 ! 0
	sw	sp, a14, 24 ! 0
	sw	sp, a9, 28 ! 0
	sw	sp, a21, 32 ! 0
	sw	sp, a8, 36 ! 0
	sw	sp, a11, 40 ! 0
	sw	sp, a13, 44 ! 0
	sw	sp, a6, 48 ! 0
	sw	sp, a2, 52 ! 0
	sw	sp, a17, 56 ! 0
	sw	sp, a3, 60 ! 0
	sw	sp, a18, 64 ! 0
	sw	sp, a7, 68 ! 0
	sw	sp, a20, 72 ! 0
	sw	sp, a12, 76 ! 0
	sw	sp, a19, 80 ! 0
	sw	sp, a10, 84 ! 0
	sw	sp, a5, 88 ! 0
	fsw	sp, fa0, 96 ! 0
	sw	sp, a15, 104 ! 0
	sw	sp, a0, 108 ! 0
	sw	sp, a1, 112 ! 0
	sw	sp, a16, 116 ! 0
	mv	a0, a2
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	p_surface_ids.2568
	addi	sp, sp, -124
	lw	ra, sp, 120
	lw	a1, sp, 112 ! 0
	lw	a21, sp, 116 ! 0
	sw	sp, a0, 120 ! 0
	mv	a0, a1
	sw	sp, ra, 124
	addi	sp, sp, 128
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a1, 0 ! 1735
	bne	a0, a1, be_else.9140
	li	a0, 1 ! 1798
	neg	a0, a0 ! 1798
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1798
	lw	a3, sp, 120 ! 0
	add	t0, a3, a2 ! 1798
	sw	t0, a0, 0 ! 1798
	li	a0, 0 ! 1800
	bne	a1, a0, be_else.9141
	ret ! 1812
be_else.9141:
	lw	a0, sp, 112 ! 0
	lw	a1, sp, 104 ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	veciprod.2497
	addi	sp, sp, -128
	lw	ra, sp, 124
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_fneg
	addi	sp, sp, -128
	lw	ra, sp, 124
	fsw	sp, fa0, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fispos
	addi	sp, sp, -140
	lw	ra, sp, 136
	li	a1, 0 ! 1803
	bne	a0, a1, be_else.9144
	ret ! 1811
be_else.9144:
	flw	fa0, sp, 128 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_fsqr
	addi	sp, sp, -140
	lw	ra, sp, 136
	flw	fa1, sp, 128 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1806
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1806
	lw	a0, sp, 88 ! 0
	flw	fa1, a0, 0 ! 1806
	fmul.s	fa0, fa0, fa1, rne ! 1806
	lw	a0, sp, 84 ! 0
	flw	fa1, a0, 0 ! 1807
	fadd.s	fa1, fa1, fa0, rne ! 1807
	fsw	a0, fa1, 0 ! 1807
	flw	fa1, a0, 4 ! 1808
	fadd.s	fa1, fa1, fa0, rne ! 1808
	fsw	a0, fa1, 4 ! 1808
	flw	fa1, a0, 8 ! 1809
	fadd.s	fa0, fa1, fa0, rne ! 1809
	fsw	a0, fa0, 8 ! 1809
	ret ! 1809
be_else.9140:
	lw	a0, sp, 80 ! 0
	lw	a0, a0, 0 ! 1737
	slli	a1, a0, 2 ! 1738
	lw	a2, sp, 76 ! 0
	add	t0, a2, a1 ! 1738
	lw	a1, t0, 0 ! 1738
	sw	sp, a0, 136 ! 0
	sw	sp, a1, 140 ! 0
	mv	a0, a1
	sw	sp, ra, 144
	addi	sp, sp, 148
	jal	o_reflectiontype.2526
	addi	sp, sp, -148
	lw	ra, sp, 144
	lw	a1, sp, 140 ! 0
	sw	sp, a0, 144 ! 0
	mv	a0, a1
	sw	sp, ra, 148
	addi	sp, sp, 152
	jal	o_diffuse.2546
	addi	sp, sp, -152
	lw	ra, sp, 148
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1740
	lw	a0, sp, 140 ! 0
	lw	a1, sp, 112 ! 0
	lw	a21, sp, 72 ! 0
	fsw	sp, fa0, 152 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a0, sp, 68 ! 0
	lw	a1, sp, 64 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	veccpy.2486
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a0, sp, 140 ! 0
	lw	a1, sp, 64 ! 0
	lw	a21, sp, 60 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -164
	lw	ra, sp, 160
	li	a0, 4 ! 1747
	lw	a1, sp, 136 ! 0
	mul	a0, a1, a0 ! 1747
	lw	a1, sp, 56 ! 0
	lw	a1, a1, 0 ! 1747
	add	a0, a0, a1 ! 1747
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1747
	lw	a3, sp, 120 ! 0
	add	t0, a3, a2 ! 1747
	sw	t0, a0, 0 ! 1747
	lw	a0, sp, 52 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	p_intersection_points.2566
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1749
	add	t0, a0, a2 ! 1749
	lw	a0, t0, 0 ! 1749
	lw	a2, sp, 64 ! 0
	mv	a1, a2
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	veccpy.2486
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a0, sp, 52 ! 0
	sw	sp, ra, 160
	addi	sp, sp, 164
	jal	p_calc_diffuse.2570
	addi	sp, sp, -164
	lw	ra, sp, 160
	lw	a1, sp, 140 ! 0
	sw	sp, a0, 160 ! 0
	mv	a0, a1
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	o_diffuse.2546
	addi	sp, sp, -168
	lw	ra, sp, 164
	li	a0, l.6491 ! 1753
	flw	fa1, a0, 0 ! 1753
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	min_caml_fless
	addi	sp, sp, -168
	lw	ra, sp, 164
	li	a1, 0 ! 1753
	bne	a0, a1, be_else.9148
	li	a0, 1 ! 1756
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1756
	lw	a3, sp, 160 ! 0
	add	t0, a3, a2 ! 1756
	sw	t0, a0, 0 ! 1756
	lw	a0, sp, 52 ! 0
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	p_energy.2572
	addi	sp, sp, -168
	lw	ra, sp, 164
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1758
	add	t0, a0, a2 ! 1758
	lw	a2, t0, 0 ! 1758
	lw	a3, sp, 48 ! 0
	sw	sp, a0, 164 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	veccpy.2486
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a0, sp, 108 ! 0
	slli	a1, a0, 2 ! 1759
	lw	a2, sp, 164 ! 0
	add	t0, a2, a1 ! 1759
	lw	a1, t0, 0 ! 1759
	li	a2, l.6003 ! 1759
	flw	fa0, a2, 0 ! 1759
	li	a2, l.6554 ! 1759
	flw	fa1, a2, 0 ! 1759
	fdiv.s	fa0, fa0, fa1, rne ! 1759
	flw	fa1, sp, 152 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1759
	mv	a0, a1
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	vecscale.2515
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a0, sp, 52 ! 0
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	p_nvectors.2581
	addi	sp, sp, -172
	lw	ra, sp, 168
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1761
	add	t0, a0, a2 ! 1761
	lw	a0, t0, 0 ! 1761
	lw	a2, sp, 44 ! 0
	mv	a1, a2
	sw	sp, ra, 168
	addi	sp, sp, 172
	jal	veccpy.2486
	addi	sp, sp, -172
	lw	ra, sp, 168
	j	be_cont.9149
be_else.9148:
	li	a0, 0 ! 1754
	lw	a1, sp, 108 ! 0
	slli	a2, a1, 2 ! 1754
	lw	a3, sp, 160 ! 0
	add	t0, a3, a2 ! 1754
	sw	t0, a0, 0 ! 1754
be_cont.9149:
	li	a0, l.6557 ! 1764
	flw	fa0, a0, 0 ! 1764
	lw	a0, sp, 112 ! 0
	lw	a1, sp, 44 ! 0
	fsw	sp, fa0, 168 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	veciprod.2497
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 168 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1764
	lw	a0, sp, 112 ! 0
	lw	a1, sp, 44 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	vecaccum.2505
	addi	sp, sp, -180
	lw	ra, sp, 176
	lw	a0, sp, 140 ! 0
	sw	sp, ra, 176
	addi	sp, sp, 180
	jal	o_hilight.2548
	addi	sp, sp, -180
	lw	ra, sp, 176
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1768
	li	a0, 0 ! 1771
	lw	a1, sp, 40 ! 0
	lw	a1, a1, 0 ! 1771
	lw	a21, sp, 36 ! 0
	fsw	sp, fa0, 176 ! 0
	sw	sp, ra, 184
	addi	sp, sp, 188
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -188
	lw	ra, sp, 184
	li	a1, 0 ! 1771
	bne	a0, a1, be_else.9150
	lw	a0, sp, 44 ! 0
	lw	a1, sp, 104 ! 0
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	veciprod.2497
	addi	sp, sp, -188
	lw	ra, sp, 184
	sw	sp, ra, 184
	addi	sp, sp, 188
	jal	min_caml_fneg
	addi	sp, sp, -188
	lw	ra, sp, 184
	flw	fa1, sp, 152 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 1772
	lw	a0, sp, 112 ! 0
	lw	a1, sp, 104 ! 0
	fsw	sp, fa0, 184 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	veciprod.2497
	addi	sp, sp, -196
	lw	ra, sp, 192
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fneg
	addi	sp, sp, -196
	lw	ra, sp, 192
	fmv.s	fa1, fa0
	flw	fa0, sp, 184 ! 0
	flw	fa2, sp, 176 ! 0
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	j	be_cont.9151
be_else.9150:
be_cont.9151:
	lw	a0, sp, 64 ! 0
	lw	a21, sp, 28 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	lw	a0, sp, 24 ! 0
	lw	a0, a0, 0 ! 1779
	addi	a0, a0, -1 ! 1779
	flw	fa0, sp, 152 ! 0
	flw	fa1, sp, 176 ! 0
	lw	a1, sp, 112 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -196
	lw	ra, sp, 192
	li	a0, l.6561 ! 1782
	flw	fa0, a0, 0 ! 1782
	flw	fa1, sp, 96 ! 0
	sw	sp, ra, 192
	addi	sp, sp, 196
	jal	min_caml_fless
	addi	sp, sp, -196
	lw	ra, sp, 192
	li	a1, 0 ! 1782
	bne	a0, a1, be_else.9152
	ret ! 1793
be_else.9152:
	li	a0, 4 ! 1784
	lw	a1, sp, 108 ! 0
	blt	a1, a0, bge_else.9154
	j	bge_cont.9155
bge_else.9154:
	addi	a0, a1, 1 ! 1785
	li	a2, 1 ! 1785
	neg	a2, a2 ! 1785
	slli	a0, a0, 2 ! 1785
	lw	a3, sp, 120 ! 0
	add	t0, a3, a0 ! 1785
	sw	t0, a2, 0 ! 1785
bge_cont.9155:
	li	a0, 2 ! 1788
	lw	a2, sp, 144 ! 0
	bne	a2, a0, be_else.9156
	li	a0, l.6003 ! 1789
	flw	fa0, a0, 0 ! 1789
	lw	a0, sp, 140 ! 0
	fsw	sp, fa0, 192 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	jal	o_diffuse.2546
	addi	sp, sp, -204
	lw	ra, sp, 200
	flw	fa1, sp, 192 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 1789
	flw	fa1, sp, 96 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1789
	lw	a0, sp, 108 ! 0
	addi	a0, a0, 1 ! 1790
	lw	a1, sp, 0 ! 0
	flw	fa1, a1, 0 ! 1790
	flw	fa2, sp, 16 ! 0
	fadd.s	fa1, fa2, fa1, rne ! 1790
	lw	a1, sp, 112 ! 0
	lw	a2, sp, 52 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 200
	addi	sp, sp, 204
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -204
	lw	ra, sp, 200
	j	be_cont.9157
be_else.9156:
be_cont.9157:
	ret ! 1788
bge_else.9137:
	ret ! 1814
trace_diffuse_ray.2809:
	lw	a1, a21, 48 ! 0
	lw	a2, a21, 44 ! 0
	lw	a3, a21, 40 ! 0
	lw	a4, a21, 36 ! 0
	lw	a5, a21, 32 ! 0
	lw	a6, a21, 28 ! 0
	lw	a7, a21, 24 ! 0
	lw	a8, a21, 20 ! 0
	lw	a9, a21, 16 ! 0
	lw	a10, a21, 12 ! 0
	lw	a11, a21, 8 ! 0
	lw	a12, a21, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a12, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a7, 16 ! 0
	sw	sp, a6, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a4, 28 ! 0
	sw	sp, a9, 32 ! 0
	sw	sp, a1, 36 ! 0
	sw	sp, a11, 40 ! 0
	sw	sp, a0, 44 ! 0
	sw	sp, a5, 48 ! 0
	sw	sp, a10, 52 ! 0
	mv	a21, a8
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 0 ! 1828
	bne	a0, a1, be_else.9160
	ret ! 1839
be_else.9160:
	lw	a0, sp, 52 ! 0
	lw	a0, a0, 0 ! 1829
	slli	a0, a0, 2 ! 1829
	lw	a1, sp, 48 ! 0
	add	t0, a1, a0 ! 1829
	lw	a0, t0, 0 ! 1829
	lw	a1, sp, 44 ! 0
	sw	sp, a0, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	d_vec.2583
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a1, a0
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 40 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0
	lw	a1, sp, 32 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, 0 ! 1834
	lw	a1, sp, 28 ! 0
	lw	a1, a1, 0 ! 1834
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 1834
	bne	a0, a1, be_else.9162
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 16 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	veciprod.2497
	addi	sp, sp, -64
	lw	ra, sp, 60
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_fneg
	addi	sp, sp, -64
	lw	ra, sp, 60
	fsw	sp, fa0, 64 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_fispos
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 0 ! 1836
	bne	a0, a1, be_else.9164
	li	a0, l.6001 ! 1836
	flw	fa0, a0, 0 ! 1836
	j	be_cont.9165
be_else.9164:
	flw	fa0, sp, 64 ! 0
be_cont.9165:
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1837
	lw	a0, sp, 56 ! 0
	fsw	sp, fa0, 72 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	o_diffuse.2546
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 72 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 1837
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 0 ! 0
	j	vecaccum.2505
be_else.9162:
	ret ! 1838
iter_trace_diffuse_rays.2812:
	lw	a4, a21, 4 ! 0
	li	a5, 0 ! 1845
	blt	a3, a5, bge_else.9167
	slli	a5, a3, 2 ! 1846
	add	t0, a0, a5 ! 1846
	lw	a5, t0, 0 ! 1846
	sw	sp, a2, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a1, 20 ! 0
	mv	a0, a5
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	d_vec.2583
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	veciprod.2497
	addi	sp, sp, -28
	lw	ra, sp, 24
	fsw	sp, fa0, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fisneg
	addi	sp, sp, -36
	lw	ra, sp, 32
	li	a1, 0 ! 1850
	bne	a0, a1, be_else.9168
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 1853
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 1853
	lw	a1, t0, 0 ! 1853
	li	a3, l.6583 ! 1853
	flw	fa0, a3, 0 ! 1853
	flw	fa1, sp, 24 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1853
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	j	be_cont.9169
be_else.9168:
	lw	a0, sp, 16 ! 0
	addi	a1, a0, 1 ! 1851
	slli	a1, a1, 2 ! 1851
	lw	a2, sp, 12 ! 0
	add	t0, a2, a1 ! 1851
	lw	a1, t0, 0 ! 1851
	li	a3, l.6580 ! 1851
	flw	fa0, a3, 0 ! 1851
	flw	fa1, sp, 24 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 1851
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.9169:
	lw	a0, sp, 16 ! 0
	addi	a3, a0, -2 ! 1855
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9167:
	ret ! 1856
trace_diffuse_rays.2817:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a4, 12 ! 0
	mv	a0, a2
	mv	a21, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a3, 118 ! 1865
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 12 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
trace_diffuse_ray_80percent.2821:
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	li	a5, 0 ! 1872
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a0, 16 ! 0
	bne	a0, a5, be_else.9171
	j	be_cont.9172
be_else.9171:
	lw	a5, a4, 0 ! 1873
	mv	a0, a5
	mv	a21, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.9172:
	li	a0, 1 ! 1876
	lw	a1, sp, 16 ! 0
	bne	a1, a0, be_else.9173
	j	be_cont.9174
be_else.9173:
	lw	a0, sp, 12 ! 0
	lw	a2, a0, 4 ! 1877
	lw	a3, sp, 4 ! 0
	lw	a4, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.9174:
	li	a0, 2 ! 1880
	lw	a1, sp, 16 ! 0
	bne	a1, a0, be_else.9175
	j	be_cont.9176
be_else.9175:
	lw	a0, sp, 12 ! 0
	lw	a2, a0, 8 ! 1881
	lw	a3, sp, 4 ! 0
	lw	a4, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.9176:
	li	a0, 3 ! 1884
	lw	a1, sp, 16 ! 0
	bne	a1, a0, be_else.9177
	j	be_cont.9178
be_else.9177:
	lw	a0, sp, 12 ! 0
	lw	a2, a0, 12 ! 1885
	lw	a3, sp, 4 ! 0
	lw	a4, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.9178:
	li	a0, 4 ! 1888
	lw	a1, sp, 16 ! 0
	bne	a1, a0, be_else.9179
	ret ! 1890
be_else.9179:
	lw	a0, sp, 12 ! 0
	lw	a0, a0, 16 ! 1889
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_diffuse_using_1point.2825:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	sw	sp, a3, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	p_nvectors.2581
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 16 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	p_intersection_points.2566
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 16 ! 0
	sw	sp, a0, 28 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	p_energy.2572
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 1903
	lw	a3, sp, 20 ! 0
	add	t0, a3, a2 ! 1903
	lw	a2, t0, 0 ! 1903
	lw	a3, sp, 8 ! 0
	sw	sp, a0, 32 ! 0
	mv	a1, a2
	mv	a0, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	veccpy.2486
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	p_group_id.2576
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 1906
	lw	a3, sp, 24 ! 0
	add	t0, a3, a2 ! 1906
	lw	a2, t0, 0 ! 1906
	slli	a3, a1, 2 ! 1907
	lw	a4, sp, 28 ! 0
	add	t0, a4, a3 ! 1907
	lw	a3, t0, 0 ! 1907
	lw	a21, sp, 4 ! 0
	mv	a1, a2
	mv	a2, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 1908
	lw	a1, sp, 32 ! 0
	add	t0, a1, a0 ! 1908
	lw	a1, t0, 0 ! 1908
	lw	a0, sp, 0 ! 0
	lw	a2, sp, 8 ! 0
	j	vecaccumv.2518
calc_diffuse_using_5points.2828:
	lw	a5, a21, 8 ! 0
	lw	a6, a21, 4 ! 0
	slli	a7, a0, 2 ! 1917
	add	t0, a1, a7 ! 1917
	lw	a1, t0, 0 ! 1917
	sw	sp, a5, 0 ! 0
	sw	sp, a6, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a3, 12 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	addi	a2, a1, -1 ! 1918
	slli	a2, a2, 2 ! 1918
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 1918
	lw	a2, t0, 0 ! 1918
	sw	sp, a0, 24 ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 1919
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 1919
	lw	a2, t0, 0 ! 1919
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 20 ! 0
	addi	a2, a1, 1 ! 1920
	slli	a2, a2, 2 ! 1920
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 1920
	lw	a2, t0, 0 ! 1920
	sw	sp, a0, 32 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 1921
	lw	a3, sp, 12 ! 0
	add	t0, a3, a2 ! 1921
	lw	a2, t0, 0 ! 1921
	sw	sp, a0, 36 ! 0
	mv	a0, a2
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 1923
	lw	a3, sp, 24 ! 0
	add	t0, a3, a2 ! 1923
	lw	a2, t0, 0 ! 1923
	lw	a3, sp, 4 ! 0
	sw	sp, a0, 40 ! 0
	mv	a1, a2
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	veccpy.2486
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 1924
	lw	a2, sp, 28 ! 0
	add	t0, a2, a1 ! 1924
	lw	a1, t0, 0 ! 1924
	lw	a2, sp, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	vecadd.2509
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 1925
	lw	a2, sp, 32 ! 0
	add	t0, a2, a1 ! 1925
	lw	a1, t0, 0 ! 1925
	lw	a2, sp, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	vecadd.2509
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 1926
	lw	a2, sp, 36 ! 0
	add	t0, a2, a1 ! 1926
	lw	a1, t0, 0 ! 1926
	lw	a2, sp, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	vecadd.2509
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 2 ! 1927
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 1927
	lw	a1, t0, 0 ! 1927
	lw	a2, sp, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	vecadd.2509
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 20 ! 0
	slli	a0, a0, 2 ! 1929
	lw	a1, sp, 16 ! 0
	add	t0, a1, a0 ! 1929
	lw	a0, t0, 0 ! 1929
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	p_energy.2572
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 8 ! 0
	slli	a1, a1, 2 ! 1930
	add	t0, a0, a1 ! 1930
	lw	a1, t0, 0 ! 1930
	lw	a0, sp, 0 ! 0
	lw	a2, sp, 4 ! 0
	j	vecaccumv.2518
do_without_neighbors.2834:
	lw	a2, a21, 4 ! 0
	li	a3, 4 ! 1936
	blt	a3, a1, bge_else.9181
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	p_surface_ids.2568
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 1939
	lw	a2, sp, 12 ! 0
	slli	a3, a2, 2 ! 1939
	add	t0, a0, a3 ! 1939
	lw	a0, t0, 0 ! 1939
	blt	a0, a1, bge_else.9182
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	p_calc_diffuse.2570
	addi	sp, sp, -20
	lw	ra, sp, 16
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 1941
	add	t0, a0, a2 ! 1941
	lw	a0, t0, 0 ! 1941
	li	a2, 0 ! 1941
	bne	a0, a2, be_else.9183
	j	be_cont.9184
be_else.9183:
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -20
	lw	ra, sp, 16
be_cont.9184:
	lw	a0, sp, 12 ! 0
	addi	a1, a0, 1 ! 1944
	lw	a0, sp, 8 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9182:
	ret ! 1945
bge_else.9181:
	ret ! 1946
neighbors_exist.2837:
	lw	a2, a21, 4 ! 0
	lw	a3, a2, 4 ! 1951
	addi	a4, a1, 1 ! 1951
	blt	a4, a3, bge_else.9187
	li	a0, 0 ! 1959
	ret ! 1959
bge_else.9187:
	li	a3, 0 ! 1952
	blt	a3, a1, bge_else.9188
	li	a0, 0 ! 1958
	ret ! 1958
bge_else.9188:
	lw	a1, a2, 0 ! 1953
	addi	a2, a0, 1 ! 1953
	blt	a2, a1, bge_else.9189
	li	a0, 0 ! 1957
	ret ! 1957
bge_else.9189:
	li	a1, 0 ! 1954
	blt	a1, a0, bge_else.9190
	li	a0, 0 ! 1956
	ret ! 1956
bge_else.9190:
	li	a0, 1 ! 1955
	ret ! 1955
get_surface_id.2841:
	sw	sp, a1, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	p_surface_ids.2568
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 1964
	add	t0, a0, a1 ! 1964
	lw	a0, t0, 0 ! 1964
	ret ! 1964
neighbors_are_available.2844:
	slli	a5, a0, 2 ! 1970
	add	t0, a2, a5 ! 1970
	lw	a5, t0, 0 ! 1970
	sw	sp, a2, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a1, a4
	mv	a0, a5
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	get_surface_id.2841
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1972
	lw	a3, sp, 12 ! 0
	add	t0, a3, a2 ! 1972
	lw	a2, t0, 0 ! 1972
	lw	a3, sp, 8 ! 0
	sw	sp, a0, 20 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	get_surface_id.2841
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.9191
	lw	a0, sp, 16 ! 0
	slli	a2, a0, 2 ! 1973
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 1973
	lw	a2, t0, 0 ! 1973
	lw	a3, sp, 8 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	get_surface_id.2841
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.9192
	lw	a0, sp, 16 ! 0
	addi	a2, a0, -1 ! 1974
	slli	a2, a2, 2 ! 1974
	lw	a3, sp, 0 ! 0
	add	t0, a3, a2 ! 1974
	lw	a2, t0, 0 ! 1974
	lw	a4, sp, 8 ! 0
	mv	a1, a4
	mv	a0, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	get_surface_id.2841
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.9193
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 1975
	slli	a0, a0, 2 ! 1975
	lw	a2, sp, 0 ! 0
	add	t0, a2, a0 ! 1975
	lw	a0, t0, 0 ! 1975
	lw	a2, sp, 8 ! 0
	mv	a1, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	get_surface_id.2841
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.9194
	li	a0, 1 ! 1976
	ret ! 1976
be_else.9194:
	li	a0, 0 ! 1977
	ret ! 1977
be_else.9193:
	li	a0, 0 ! 1978
	ret ! 1978
be_else.9192:
	li	a0, 0 ! 1979
	ret ! 1979
be_else.9191:
	li	a0, 0 ! 1980
	ret ! 1980
try_exploit_neighbors.2850:
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	slli	a8, a0, 2 ! 1988
	add	t0, a3, a8 ! 1988
	lw	a8, t0, 0 ! 1988
	li	a9, 4 ! 1989
	blt	a9, a5, bge_else.9195
	li	a9, 0 ! 1992
	sw	sp, a1, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a7, 8 ! 0
	sw	sp, a8, 12 ! 0
	sw	sp, a6, 16 ! 0
	sw	sp, a5, 20 ! 0
	sw	sp, a4, 24 ! 0
	sw	sp, a3, 28 ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a0, 36 ! 0
	sw	sp, a9, 40 ! 0
	mv	a1, a5
	mv	a0, a8
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	get_surface_id.2841
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 40 ! 0
	blt	a0, a1, bge_else.9196
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a3, sp, 24 ! 0
	lw	a4, sp, 20 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	neighbors_are_available.2844
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 1994
	bne	a0, a1, be_else.9197
	lw	a0, sp, 36 ! 0
	slli	a0, a0, 2 ! 2006
	lw	a1, sp, 28 ! 0
	add	t0, a1, a0 ! 2006
	lw	a0, t0, 0 ! 2006
	lw	a1, sp, 20 ! 0
	lw	a21, sp, 16 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9197:
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	p_calc_diffuse.2570
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a4, sp, 20 ! 0
	slli	a1, a4, 2 ! 1998
	add	t0, a0, a1 ! 1998
	lw	a0, t0, 0 ! 1998
	li	a1, 0 ! 1998
	bne	a0, a1, be_else.9198
	j	be_cont.9199
be_else.9198:
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 32 ! 0
	lw	a2, sp, 28 ! 0
	lw	a3, sp, 24 ! 0
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
be_cont.9199:
	lw	a0, sp, 20 ! 0
	addi	a5, a0, 1 ! 2003
	lw	a0, sp, 36 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 32 ! 0
	lw	a3, sp, 28 ! 0
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9196:
	ret ! 2007
bge_else.9195:
	ret ! 2008
write_ppm_header.2857:
	lw	a0, a21, 4 ! 0
	li	a1, 80 ! 2016
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 48 ! 2017
	addi	a0, a0, 3 ! 2017
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 2018
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	lw	a1, a0, 0 ! 2019
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2020
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	lw	a0, a0, 4 ! 2021
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2022
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 255 ! 2023
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 2024
	j	min_caml_print_char
write_rgb_element.2859:
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_int_of_float
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 255 ! 2030
	blt	a1, a0, bge_else.9202
	li	a1, 0 ! 2030
	blt	a0, a1, bge_else.9204
	j	bge_cont.9205
bge_else.9204:
	li	a0, 0 ! 2030
bge_cont.9205:
	j	bge_cont.9203
bge_else.9202:
	li	a0, 255 ! 2030
bge_cont.9203:
	j	min_caml_print_int
write_rgb.2861:
	lw	a0, a21, 4 ! 0
	flw	fa0, a0, 0 ! 2035
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	write_rgb_element.2859
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2036
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	flw	fa0, a0, 4 ! 2037
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	write_rgb_element.2859
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 2038
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	flw	fa0, a0, 8 ! 2039
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	write_rgb_element.2859
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 2040
	j	min_caml_print_char
pretrace_diffuse_rays.2863:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	li	a5, 4 ! 2052
	blt	a5, a1, bge_else.9206
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	get_surface_id.2841
	addi	sp, sp, -28
	lw	ra, sp, 24
	li	a1, 0 ! 2056
	blt	a0, a1, bge_else.9207
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	p_calc_diffuse.2570
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 2059
	add	t0, a0, a2 ! 2059
	lw	a0, t0, 0 ! 2059
	li	a2, 0 ! 2059
	bne	a0, a2, be_else.9208
	j	be_cont.9209
be_else.9208:
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	p_group_id.2576
	addi	sp, sp, -28
	lw	ra, sp, 24
	lw	a1, sp, 12 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	vecbzero.2484
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	p_nvectors.2581
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20 ! 0
	sw	sp, a0, 28 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	p_intersection_points.2566
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 24 ! 0
	slli	a1, a1, 2 ! 2068
	lw	a2, sp, 8 ! 0
	add	t0, a2, a1 ! 2068
	lw	a1, t0, 0 ! 2068
	lw	a2, sp, 16 ! 0
	slli	a3, a2, 2 ! 2069
	lw	a4, sp, 28 ! 0
	add	t0, a4, a3 ! 2069
	lw	a3, t0, 0 ! 2069
	slli	a4, a2, 2 ! 2070
	add	t0, a0, a4 ! 2070
	lw	a0, t0, 0 ! 2070
	lw	a21, sp, 4 ! 0
	mv	a2, a0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	p_received_ray_20percent.2574
	addi	sp, sp, -36
	lw	ra, sp, 32
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 2072
	add	t0, a0, a2 ! 2072
	lw	a0, t0, 0 ! 2072
	lw	a2, sp, 12 ! 0
	mv	a1, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	veccpy.2486
	addi	sp, sp, -36
	lw	ra, sp, 32
be_cont.9209:
	lw	a0, sp, 16 ! 0
	addi	a1, a0, 1 ! 2074
	lw	a0, sp, 20 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9207:
	ret ! 2075
bge_else.9206:
	ret ! 2076
pretrace_pixels.2866:
	lw	a3, a21, 36 ! 0
	lw	a4, a21, 32 ! 0
	lw	a5, a21, 28 ! 0
	lw	a6, a21, 24 ! 0
	lw	a7, a21, 20 ! 0
	lw	a8, a21, 16 ! 0
	lw	a9, a21, 12 ! 0
	lw	a10, a21, 8 ! 0
	lw	a11, a21, 4 ! 0
	li	a12, 0 ! 2082
	blt	a1, a12, bge_else.9212
	flw	fa3, a7, 0 ! 2084
	lw	a7, a11, 0 ! 2084
	sub	a7, a1, a7 ! 2084
	sw	sp, a21, 0 ! 0
	sw	sp, a10, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a5, 28 ! 0
	sw	sp, a8, 32 ! 0
	fsw	sp, fa2, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	sw	sp, a9, 56 ! 0
	fsw	sp, fa0, 64 ! 0
	sw	sp, a6, 72 ! 0
	fsw	sp, fa3, 80 ! 0
	mv	a0, a7
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_float_of_int
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2084
	lw	a0, sp, 72 ! 0
	flw	fa1, a0, 0 ! 2085
	fmul.s	fa1, fa0, fa1, rne ! 2085
	flw	fa2, sp, 64 ! 0
	fadd.s	fa1, fa1, fa2, rne ! 2085
	lw	a1, sp, 56 ! 0
	fsw	a1, fa1, 0 ! 2085
	flw	fa1, a0, 4 ! 2086
	fmul.s	fa1, fa0, fa1, rne ! 2086
	flw	fa3, sp, 48 ! 0
	fadd.s	fa1, fa1, fa3, rne ! 2086
	fsw	a1, fa1, 4 ! 2086
	flw	fa1, a0, 8 ! 2087
	fmul.s	fa0, fa0, fa1, rne ! 2087
	flw	fa1, sp, 40 ! 0
	fadd.s	fa0, fa0, fa1, rne ! 2087
	fsw	a1, fa0, 8 ! 2087
	li	a0, 0 ! 2088
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	vecunit_sgn.2494
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	vecbzero.2484
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	veccpy.2486
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a0, 0 ! 2093
	li	a1, l.6003 ! 2093
	flw	fa0, a1, 0 ! 2093
	lw	a1, sp, 20 ! 0
	slli	a2, a1, 2 ! 2093
	lw	a3, sp, 16 ! 0
	add	t0, a3, a2 ! 2093
	lw	a2, t0, 0 ! 2093
	li	a4, l.6001 ! 2093
	flw	fa1, a4, 0 ! 2093
	lw	a4, sp, 56 ! 0
	lw	a21, sp, 12 ! 0
	mv	a1, a4
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 2094
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 2094
	lw	a1, t0, 0 ! 2094
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	p_rgb.2564
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a1, sp, 32 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	veccpy.2486
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 2095
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 2095
	lw	a1, t0, 0 ! 2095
	lw	a3, sp, 8 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	p_set_group_id.2578
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 2098
	lw	a2, sp, 16 ! 0
	add	t0, a2, a1 ! 2098
	lw	a1, t0, 0 ! 2098
	li	a3, 0 ! 2098
	lw	a21, sp, 4 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 20 ! 0
	addi	a0, a0, -1 ! 2100
	li	a1, 1 ! 2100
	lw	a2, sp, 8 ! 0
	sw	sp, a0, 88 ! 0
	mv	a0, a2
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	add_mod5.2473
	addi	sp, sp, -96
	lw	ra, sp, 92
	mv	a2, a0
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 48 ! 0
	flw	fa2, sp, 40 ! 0
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 88 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9212:
	ret ! 2102
pretrace_line.2873:
	lw	a3, a21, 24 ! 0
	lw	a4, a21, 20 ! 0
	lw	a5, a21, 16 ! 0
	lw	a6, a21, 12 ! 0
	lw	a7, a21, 8 ! 0
	lw	a8, a21, 4 ! 0
	flw	fa0, a5, 0 ! 2107
	lw	a5, a8, 4 ! 2107
	sub	a1, a1, a5 ! 2107
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a6, 8 ! 0
	sw	sp, a7, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a4, 20 ! 0
	fsw	sp, fa0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_float_of_int
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2107
	lw	a0, sp, 20 ! 0
	flw	fa1, a0, 0 ! 2110
	fmul.s	fa1, fa0, fa1, rne ! 2110
	lw	a1, sp, 16 ! 0
	flw	fa2, a1, 0 ! 2110
	fadd.s	fa1, fa1, fa2, rne ! 2110
	flw	fa2, a0, 4 ! 2111
	fmul.s	fa2, fa0, fa2, rne ! 2111
	flw	fa3, a1, 4 ! 2111
	fadd.s	fa2, fa2, fa3, rne ! 2111
	flw	fa3, a0, 8 ! 2112
	fmul.s	fa0, fa0, fa3, rne ! 2112
	flw	fa3, a1, 8 ! 2112
	fadd.s	fa0, fa0, fa3, rne ! 2112
	lw	a0, sp, 12 ! 0
	lw	a0, a0, 0 ! 2113
	addi	a1, a0, -1 ! 2113
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 8 ! 0
	fmv.s	fa26, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa26
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_pixel.2877:
	lw	a5, a21, 24 ! 0
	lw	a6, a21, 20 ! 0
	lw	a7, a21, 16 ! 0
	lw	a8, a21, 12 ! 0
	lw	a9, a21, 8 ! 0
	lw	a10, a21, 4 ! 0
	lw	a9, a9, 0 ! 2123
	blt	a0, a9, bge_else.9217
	ret ! 2138
bge_else.9217:
	slli	a9, a0, 2 ! 2126
	add	t0, a3, a9 ! 2126
	lw	a9, t0, 0 ! 2126
	sw	sp, a21, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a6, 12 ! 0
	sw	sp, a10, 16 ! 0
	sw	sp, a3, 20 ! 0
	sw	sp, a4, 24 ! 0
	sw	sp, a1, 28 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, a8, 36 ! 0
	sw	sp, a7, 40 ! 0
	mv	a0, a9
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	p_rgb.2564
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, a0
	lw	a0, sp, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	veccpy.2486
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 24 ! 0
	lw	a21, sp, 36 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 2129
	bne	a0, a1, be_else.9219
	lw	a0, sp, 32 ! 0
	slli	a1, a0, 2 ! 2132
	lw	a2, sp, 20 ! 0
	add	t0, a2, a1 ! 2132
	lw	a1, t0, 0 ! 2132
	li	a3, 0 ! 2132
	lw	a21, sp, 16 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	j	be_cont.9220
be_else.9219:
	li	a5, 0 ! 2130
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 8 ! 0
	lw	a3, sp, 20 ! 0
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
be_cont.9220:
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 32 ! 0
	addi	a0, a0, 1 ! 2137
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 8 ! 0
	lw	a3, sp, 20 ! 0
	lw	a4, sp, 24 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
scan_line.2883:
	lw	a5, a21, 12 ! 0
	lw	a6, a21, 8 ! 0
	lw	a7, a21, 4 ! 0
	lw	a8, a7, 4 ! 2144
	blt	a0, a8, bge_else.9221
	ret ! 2151
bge_else.9221:
	lw	a7, a7, 4 ! 2146
	addi	a7, a7, -1 ! 2146
	sw	sp, a21, 0 ! 0
	sw	sp, a4, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a2, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, a5, 24 ! 0
	blt	a0, a7, bge_else.9223
	j	bge_cont.9224
bge_else.9223:
	addi	a7, a0, 1 ! 2147
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	a21, a6
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
bge_cont.9224:
	li	a0, 0 ! 2149
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 16 ! 0
	lw	a3, sp, 12 ! 0
	lw	a4, sp, 8 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 2150
	li	a1, 2 ! 2150
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	add_mod5.2473
	addi	sp, sp, -36
	lw	ra, sp, 32
	mv	a4, a0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 8 ! 0
	lw	a3, sp, 16 ! 0
	lw	a21, sp, 0 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -36
	lw	ra, sp, 32
	ret ! 2150
create_float5x3array.2889:
	li	a0, 3 ! 2161
	li	a1, l.6001 ! 2161
	flw	fa0, a1, 0 ! 2161
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_float_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	mv	a1, a0
	li	a0, 5 ! 2162
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 3 ! 2163
	li	a2, l.6001 ! 2163
	flw	fa0, a2, 0 ! 2163
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 4 ! 2163
	li	a0, 3 ! 2164
	li	a2, l.6001 ! 2164
	flw	fa0, a2, 0 ! 2164
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 8 ! 2164
	li	a0, 3 ! 2165
	li	a2, l.6001 ! 2165
	flw	fa0, a2, 0 ! 2165
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 12 ! 2165
	li	a0, 3 ! 2166
	li	a2, l.6001 ! 2166
	flw	fa0, a2, 0 ! 2166
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 16 ! 2166
	mv	a0, a1 ! 2167
	ret ! 2167
create_pixel.2891:
	li	a0, 3 ! 2173
	li	a1, l.6001 ! 2173
	flw	fa0, a1, 0 ! 2173
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_float_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	create_float5x3array.2889
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 5 ! 2175
	li	a2, 0 ! 2175
	sw	sp, a0, 4 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 5 ! 2176
	li	a2, 0 ! 2176
	sw	sp, a0, 8 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	create_float5x3array.2889
	addi	sp, sp, -20
	lw	ra, sp, 16
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	create_float5x3array.2889
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 1 ! 2179
	li	a2, 0 ! 2179
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	min_caml_create_array
	addi	sp, sp, -28
	lw	ra, sp, 24
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	create_float5x3array.2889
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, hp ! 2181
	addi	hp, hp, 32 ! 2181
	sw	a1, a0, 28 ! 2181
	lw	a0, sp, 24 ! 0
	sw	a1, a0, 24 ! 2181
	lw	a0, sp, 20 ! 0
	sw	a1, a0, 20 ! 2181
	lw	a0, sp, 16 ! 0
	sw	a1, a0, 16 ! 2181
	lw	a0, sp, 12 ! 0
	sw	a1, a0, 12 ! 2181
	lw	a0, sp, 8 ! 0
	sw	a1, a0, 8 ! 2181
	lw	a0, sp, 4 ! 0
	sw	a1, a0, 4 ! 2181
	lw	a0, sp, 0 ! 0
	sw	a1, a0, 0 ! 2181
	mv	a0, a1 ! 2181
	ret ! 2181
init_line_elements.2893:
	li	a2, 0 ! 2186
	blt	a1, a2, bge_else.9226
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	create_pixel.2891
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 2187
	lw	a3, sp, 0 ! 0
	add	t0, a3, a2 ! 2187
	sw	t0, a0, 0 ! 2187
	addi	a1, a1, -1 ! 2188
	mv	a0, a3
	j	init_line_elements.2893
bge_else.9226:
	ret ! 2190
create_pixelline.2896:
	lw	a0, a21, 4 ! 0
	lw	a1, a0, 0 ! 2195
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	create_pixel.2891
	addi	sp, sp, -12
	lw	ra, sp, 8
	mv	a1, a0
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a1, sp, 0 ! 0
	lw	a1, a1, 0 ! 2196
	addi	a1, a1, -2 ! 2196
	j	init_line_elements.2893
tan.2898:
	fsw	sp, fa0, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_sin
	addi	sp, sp, -12
	lw	ra, sp, 8
	flw	fa1, sp, 0 ! 0
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_cos
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 2209
	ret ! 2209
adjust_position.2900:
	fmul.s	fa0, fa0, fa0, rne ! 2214
	li	a0, l.6561 ! 2214
	flw	fa2, a0, 0 ! 2214
	fadd.s	fa0, fa0, fa2, rne ! 2214
	fsw	sp, fa1, 0 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_sqrt
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, l.6003 ! 2215
	flw	fa1, a0, 0 ! 2215
	fdiv.s	fa1, fa1, fa0, rne ! 2215
	fsw	sp, fa0, 8 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_atan
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 0 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2217
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	tan.2898
	addi	sp, sp, -20
	lw	ra, sp, 16
	flw	fa1, sp, 8 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2218
	ret ! 2218
calc_dirvec.2903:
	lw	a3, a21, 4 ! 0
	li	a4, 5 ! 2223
	blt	a0, a4, bge_else.9227
	sw	sp, a2, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	fsw	sp, fa1, 24 ! 0
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	min_caml_fsqr
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fsqr
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 32 ! 0
	fadd.s	fa0, fa1, fa0, rne ! 2224
	li	a0, l.6003 ! 2224
	flw	fa1, a0, 0 ! 2224
	fadd.s	fa0, fa0, fa1, rne ! 2224
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_sqrt
	addi	sp, sp, -44
	lw	ra, sp, 40
	flw	fa1, sp, 16 ! 0
	fdiv.s	fa1, fa1, fa0, rne ! 2225
	flw	fa2, sp, 24 ! 0
	fdiv.s	fa2, fa2, fa0, rne ! 2226
	li	a0, l.6003 ! 2227
	flw	fa3, a0, 0 ! 2227
	fdiv.s	fa0, fa3, fa0, rne ! 2227
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 2 ! 2230
	lw	a1, sp, 4 ! 0
	add	t0, a1, a0 ! 2230
	lw	a0, t0, 0 ! 2230
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 2231
	add	t0, a0, a2 ! 2231
	lw	a2, t0, 0 ! 2231
	sw	sp, a0, 40 ! 0
	fsw	sp, fa0, 48 ! 0
	fsw	sp, fa2, 56 ! 0
	fsw	sp, fa1, 64 ! 0
	mv	a0, a2
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	d_vec.2583
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 48 ! 0
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	vecset.2476
	addi	sp, sp, -76
	lw	ra, sp, 72
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 40 ! 2232
	slli	a1, a1, 2 ! 2232
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 2232
	lw	a1, t0, 0 ! 2232
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	d_vec.2583
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa0, sp, 56 ! 0
	sw	sp, a0, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	fmv.s	fa2, fa0
	flw	fa0, sp, 64 ! 0
	flw	fa1, sp, 48 ! 0
	lw	a0, sp, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	vecset.2476
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 80 ! 2233
	slli	a1, a1, 2 ! 2233
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 2233
	lw	a1, t0, 0 ! 2233
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	d_vec.2583
	addi	sp, sp, -80
	lw	ra, sp, 76
	flw	fa0, sp, 64 ! 0
	sw	sp, a0, 76 ! 0
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_fneg
	addi	sp, sp, -84
	lw	ra, sp, 80
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 80 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_fneg
	addi	sp, sp, -92
	lw	ra, sp, 88
	fmv.s	fa2, fa0
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 80 ! 0
	lw	a0, sp, 76 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	vecset.2476
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 1 ! 2234
	slli	a1, a1, 2 ! 2234
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 2234
	lw	a1, t0, 0 ! 2234
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	d_vec.2583
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa0, sp, 64 ! 0
	sw	sp, a0, 88 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_fneg
	addi	sp, sp, -96
	lw	ra, sp, 92
	flw	fa1, sp, 56 ! 0
	fsw	sp, fa0, 96 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_fneg
	addi	sp, sp, -108
	lw	ra, sp, 104
	flw	fa1, sp, 48 ! 0
	fsw	sp, fa0, 104 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_fneg
	addi	sp, sp, -116
	lw	ra, sp, 112
	fmv.s	fa2, fa0
	flw	fa0, sp, 96 ! 0
	flw	fa1, sp, 104 ! 0
	lw	a0, sp, 88 ! 0
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	vecset.2476
	addi	sp, sp, -116
	lw	ra, sp, 112
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 41 ! 2235
	slli	a1, a1, 2 ! 2235
	lw	a2, sp, 40 ! 0
	add	t0, a2, a1 ! 2235
	lw	a1, t0, 0 ! 2235
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	d_vec.2583
	addi	sp, sp, -116
	lw	ra, sp, 112
	flw	fa0, sp, 64 ! 0
	sw	sp, a0, 112 ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_fneg
	addi	sp, sp, -120
	lw	ra, sp, 116
	flw	fa1, sp, 48 ! 0
	fsw	sp, fa0, 120 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_fneg
	addi	sp, sp, -132
	lw	ra, sp, 128
	fmv.s	fa1, fa0
	flw	fa0, sp, 120 ! 0
	flw	fa2, sp, 56 ! 0
	lw	a0, sp, 112 ! 0
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	vecset.2476
	addi	sp, sp, -132
	lw	ra, sp, 128
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 81 ! 2236
	slli	a0, a0, 2 ! 2236
	lw	a1, sp, 40 ! 0
	add	t0, a1, a0 ! 2236
	lw	a0, t0, 0 ! 2236
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	d_vec.2583
	addi	sp, sp, -132
	lw	ra, sp, 128
	flw	fa0, sp, 48 ! 0
	sw	sp, a0, 128 ! 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	min_caml_fneg
	addi	sp, sp, -136
	lw	ra, sp, 132
	flw	fa1, sp, 64 ! 0
	flw	fa2, sp, 56 ! 0
	lw	a0, sp, 128 ! 0
	j	vecset.2476
bge_else.9227:
	fsw	sp, fa2, 136 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a21, 144 ! 0
	fsw	sp, fa3, 152 ! 0
	sw	sp, a0, 160 ! 0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	sw	sp, ra, 164
	addi	sp, sp, 168
	jal	adjust_position.2900
	addi	sp, sp, -168
	lw	ra, sp, 164
	lw	a0, sp, 160 ! 0
	addi	a0, a0, 1 ! 2239
	flw	fa1, sp, 152 ! 0
	fsw	sp, fa0, 168 ! 0
	sw	sp, a0, 176 ! 0
	sw	sp, ra, 180
	addi	sp, sp, 184
	jal	adjust_position.2900
	addi	sp, sp, -184
	lw	ra, sp, 180
	fmv.s	fa1, fa0
	flw	fa0, sp, 168 ! 0
	flw	fa2, sp, 136 ! 0
	flw	fa3, sp, 152 ! 0
	lw	a0, sp, 176 ! 0
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 0 ! 0
	lw	a21, sp, 144 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
calc_dirvecs.2911:
	lw	a3, a21, 4 ! 0
	li	a4, 0 ! 2244
	blt	a0, a4, bge_else.9235
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	fsw	sp, fa0, 8 ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.6690 ! 2246
	flw	fa1, a0, 0 ! 2246
	fmul.s	fa0, fa0, fa1, rne ! 2246
	li	a0, l.6692 ! 2246
	flw	fa1, a0, 0 ! 2246
	fsub.s	fa2, fa0, fa1, rne ! 2246
	li	a0, 0 ! 2247
	li	a1, l.6001 ! 2247
	flw	fa0, a1, 0 ! 2247
	li	a1, l.6001 ! 2247
	flw	fa1, a1, 0 ! 2247
	flw	fa3, sp, 8 ! 0
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 16 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.6690 ! 2249
	flw	fa1, a0, 0 ! 2249
	fmul.s	fa0, fa0, fa1, rne ! 2249
	li	a0, l.6561 ! 2249
	flw	fa1, a0, 0 ! 2249
	fadd.s	fa2, fa0, fa1, rne ! 2249
	li	a0, 0 ! 2250
	li	a1, l.6001 ! 2250
	flw	fa0, a1, 0 ! 2250
	li	a1, l.6001 ! 2250
	flw	fa1, a1, 0 ! 2250
	lw	a1, sp, 16 ! 0
	addi	a2, a1, 2 ! 2250
	flw	fa3, sp, 8 ! 0
	lw	a3, sp, 20 ! 0
	lw	a21, sp, 24 ! 0
	mv	a1, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 2252
	li	a1, 1 ! 2252
	lw	a2, sp, 20 ! 0
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	add_mod5.2473
	addi	sp, sp, -36
	lw	ra, sp, 32
	mv	a1, a0
	flw	fa0, sp, 8 ! 0
	lw	a0, sp, 28 ! 0
	lw	a2, sp, 16 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9235:
	ret ! 2253
calc_dirvec_rows.2916:
	lw	a3, a21, 4 ! 0
	li	a4, 0 ! 2258
	blt	a0, a4, bge_else.9237
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_float_of_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, l.6690 ! 2259
	flw	fa1, a0, 0 ! 2259
	fmul.s	fa0, fa0, fa1, rne ! 2259
	li	a0, l.6692 ! 2259
	flw	fa1, a0, 0 ! 2259
	fsub.s	fa0, fa0, fa1, rne ! 2259
	li	a0, 4 ! 2260
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 8 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 2261
	li	a1, 2 ! 2261
	lw	a2, sp, 12 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a2
	sw	sp, ra, 24
	addi	sp, sp, 28
	jal	add_mod5.2473
	addi	sp, sp, -28
	lw	ra, sp, 24
	mv	a1, a0
	lw	a0, sp, 8 ! 0
	addi	a2, a0, 4 ! 2261
	lw	a0, sp, 20 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9237:
	ret ! 2262
create_dirvec.2920:
	lw	a0, a21, 4 ! 0
	li	a1, 3 ! 2271
	li	a2, l.6001 ! 2271
	flw	fa0, a2, 0 ! 2271
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	lw	a0, sp, 0 ! 0
	lw	a0, a0, 0 ! 2272
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	mv	a1, hp ! 2273
	addi	hp, hp, 8 ! 2273
	sw	a1, a0, 4 ! 2273
	lw	a0, sp, 4 ! 0
	sw	a1, a0, 0 ! 2273
	mv	a0, a1 ! 2273
	ret ! 2273
create_dirvec_elements.2922:
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 2277
	blt	a1, a3, bge_else.9239
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	mv	a21, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 2278
	lw	a3, sp, 4 ! 0
	add	t0, a3, a2 ! 2278
	sw	t0, a0, 0 ! 2278
	addi	a1, a1, -1 ! 2279
	lw	a21, sp, 0 ! 0
	mv	a0, a3
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9239:
	ret ! 2280
create_dirvecs.2925:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	li	a4, 0 ! 2284
	blt	a0, a4, bge_else.9241
	li	a4, 120 ! 2285
	sw	sp, a21, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a4, 16 ! 0
	mv	a21, a3
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 2285
	lw	a3, sp, 8 ! 0
	add	t0, a3, a2 ! 2285
	sw	t0, a0, 0 ! 2285
	slli	a0, a1, 2 ! 2286
	add	t0, a3, a0 ! 2286
	lw	a0, t0, 0 ! 2286
	li	a2, 118 ! 2286
	lw	a21, sp, 4 ! 0
	mv	a1, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	addi	a0, a0, -1 ! 2287
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9241:
	ret ! 2288
init_dirvec_constants.2927:
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 2296
	blt	a1, a3, bge_else.9243
	slli	a3, a1, 2 ! 2297
	add	t0, a0, a3 ! 2297
	lw	a3, t0, 0 ! 2297
	sw	sp, a0, 0 ! 0
	sw	sp, a21, 4 ! 0
	sw	sp, a1, 8 ! 0
	mv	a0, a3
	mv	a21, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	addi	a1, a0, -1 ! 2298
	lw	a0, sp, 0 ! 0
	lw	a21, sp, 4 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9243:
	ret ! 2299
init_vecset_constants.2930:
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	li	a3, 0 ! 2303
	blt	a0, a3, bge_else.9245
	slli	a3, a0, 2 ! 2304
	add	t0, a2, a3 ! 2304
	lw	a2, t0, 0 ! 2304
	li	a3, 119 ! 2304
	sw	sp, a21, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	mv	a21, a1
	mv	a1, a3
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 2305
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
bge_else.9245:
	ret ! 2306
init_dirvecs.2932:
	lw	a0, a21, 12 ! 0
	lw	a1, a21, 8 ! 0
	lw	a2, a21, 4 ! 0
	li	a3, 4 ! 2310
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	mv	a0, a3
	mv	a21, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, 9 ! 2311
	li	a1, 0 ! 2311
	li	a2, 0 ! 2311
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 8
	addi	sp, sp, 12
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a0, 4 ! 2312
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
add_reflection.2934:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a21, a21, 4 ! 0
	sw	sp, a3, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	fsw	sp, fa0, 16 ! 0
	sw	sp, a2, 24 ! 0
	fsw	sp, fa3, 32 ! 0
	fsw	sp, fa2, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	sw	sp, a0, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	d_vec.2583
	addi	sp, sp, -64
	lw	ra, sp, 60
	flw	fa0, sp, 48 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 32 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	vecset.2476
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 56 ! 0
	lw	a21, sp, 24 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a0, hp ! 2325
	addi	hp, hp, 12 ! 2325
	flw	fa0, sp, 16 ! 0
	fsw	a0, fa0, 8 ! 2325
	lw	a1, sp, 56 ! 0
	sw	a0, a1, 4 ! 2325
	lw	a1, sp, 8 ! 0
	sw	a0, a1, 0 ! 2325
	lw	a1, sp, 4 ! 0
	slli	a1, a1, 2 ! 2325
	lw	a2, sp, 0 ! 0
	add	t0, a2, a1 ! 2325
	sw	t0, a0, 0 ! 2325
	ret ! 2325
setup_rect_reflection.2941:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	li	a5, 4 ! 2330
	mul	a0, a0, a5 ! 2330
	lw	a5, a2, 0 ! 2331
	li	a6, l.6003 ! 2332
	flw	fa0, a6, 0 ! 2332
	sw	sp, a2, 0 ! 0
	sw	sp, a5, 4 ! 0
	sw	sp, a4, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a3, 16 ! 0
	fsw	sp, fa0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_diffuse.2546
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 2332
	lw	a0, sp, 16 ! 0
	flw	fa1, a0, 0 ! 2333
	fsw	sp, fa0, 32 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_fneg
	addi	sp, sp, -44
	lw	ra, sp, 40
	lw	a0, sp, 16 ! 0
	flw	fa1, a0, 4 ! 2334
	fsw	sp, fa0, 40 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_fneg
	addi	sp, sp, -52
	lw	ra, sp, 48
	lw	a0, sp, 16 ! 0
	flw	fa1, a0, 8 ! 2335
	fsw	sp, fa0, 48 ! 0
	fmv.s	fa0, fa1
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_fneg
	addi	sp, sp, -60
	lw	ra, sp, 56
	fmv.s	fa3, fa0
	lw	a0, sp, 12 ! 0
	addi	a1, a0, 1 ! 2336
	lw	a2, sp, 16 ! 0
	flw	fa1, a2, 0 ! 2336
	flw	fa0, sp, 32 ! 0
	flw	fa2, sp, 48 ! 0
	lw	a3, sp, 4 ! 0
	lw	a21, sp, 8 ! 0
	fsw	sp, fa3, 56 ! 0
	mv	a0, a3
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 4 ! 0
	addi	a1, a0, 1 ! 2337
	lw	a2, sp, 12 ! 0
	addi	a3, a2, 2 ! 2337
	lw	a4, sp, 16 ! 0
	flw	fa2, a4, 4 ! 2337
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa3, sp, 56 ! 0
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 4 ! 0
	addi	a1, a0, 2 ! 2338
	lw	a2, sp, 12 ! 0
	addi	a2, a2, 3 ! 2338
	lw	a3, sp, 16 ! 0
	flw	fa3, a3, 8 ! 2338
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 40 ! 0
	flw	fa2, sp, 48 ! 0
	lw	a21, sp, 8 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a0, sp, 4 ! 0
	addi	a0, a0, 3 ! 2339
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 0 ! 2339
	ret ! 2339
setup_surface_reflection.2944:
	lw	a2, a21, 12 ! 0
	lw	a3, a21, 8 ! 0
	lw	a4, a21, 4 ! 0
	li	a5, 4 ! 2344
	mul	a0, a0, a5 ! 2344
	addi	a0, a0, 1 ! 2344
	lw	a5, a2, 0 ! 2345
	li	a6, l.6003 ! 2346
	flw	fa0, a6, 0 ! 2346
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a5, 8 ! 0
	sw	sp, a4, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a1, 20 ! 0
	fsw	sp, fa0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 32
	addi	sp, sp, 36
	jal	o_diffuse.2546
	addi	sp, sp, -36
	lw	ra, sp, 32
	flw	fa1, sp, 24 ! 0
	fsub.s	fa0, fa1, fa0, rne ! 2346
	lw	a0, sp, 20 ! 0
	fsw	sp, fa0, 32 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	o_param_abc.2538
	addi	sp, sp, -44
	lw	ra, sp, 40
	mv	a1, a0
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	veciprod.2497
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a0, l.6163 ! 2350
	flw	fa1, a0, 0 ! 2350
	lw	a0, sp, 20 ! 0
	fsw	sp, fa0, 40 ! 0
	fsw	sp, fa1, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	o_param_a.2532
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2350
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2350
	lw	a0, sp, 16 ! 0
	flw	fa2, a0, 0 ! 2350
	fsub.s	fa0, fa0, fa2, rne ! 2350
	li	a1, l.6163 ! 2351
	flw	fa2, a1, 0 ! 2351
	lw	a1, sp, 20 ! 0
	fsw	sp, fa0, 56 ! 0
	fsw	sp, fa2, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	o_param_b.2534
	addi	sp, sp, -76
	lw	ra, sp, 72
	flw	fa1, sp, 64 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2351
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2351
	lw	a0, sp, 16 ! 0
	flw	fa2, a0, 4 ! 2351
	fsub.s	fa0, fa0, fa2, rne ! 2351
	li	a1, l.6163 ! 2352
	flw	fa2, a1, 0 ! 2352
	lw	a1, sp, 20 ! 0
	fsw	sp, fa0, 72 ! 0
	fsw	sp, fa2, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	o_param_c.2536
	addi	sp, sp, -92
	lw	ra, sp, 88
	flw	fa1, sp, 80 ! 0
	fmul.s	fa0, fa1, fa0, rne ! 2352
	flw	fa1, sp, 40 ! 0
	fmul.s	fa0, fa0, fa1, rne ! 2352
	lw	a0, sp, 16 ! 0
	flw	fa1, a0, 8 ! 2352
	fsub.s	fa3, fa0, fa1, rne ! 2352
	flw	fa0, sp, 32 ! 0
	flw	fa1, sp, 56 ! 0
	flw	fa2, sp, 72 ! 0
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 4 ! 0
	lw	a21, sp, 12 ! 0
	sw	sp, ra, 88
	addi	sp, sp, 92
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -92
	lw	ra, sp, 88
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 2353
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 0 ! 2353
	ret ! 2353
setup_reflections.2947:
	lw	a1, a21, 12 ! 0
	lw	a2, a21, 8 ! 0
	lw	a3, a21, 4 ! 0
	li	a4, 0 ! 2359
	blt	a0, a4, bge_else.9253
	slli	a4, a0, 2 ! 2360
	add	t0, a3, a4 ! 2360
	lw	a3, t0, 0 ! 2360
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a3, 12 ! 0
	mv	a0, a3
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_reflectiontype.2526
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 2 ! 2361
	bne	a0, a1, be_else.9254
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_diffuse.2546
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a0, l.6003 ! 2362
	flw	fa1, a0, 0 ! 2362
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_fless
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 0 ! 2362
	bne	a0, a1, be_else.9255
	ret ! 2370
be_else.9255:
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	o_form.2524
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 1 ! 2365
	bne	a0, a1, be_else.9257
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 8 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9257:
	li	a1, 2 ! 2367
	bne	a0, a1, be_else.9258
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 12 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
be_else.9258:
	ret ! 2369
be_else.9254:
	ret ! 2371
bge_else.9253:
	ret ! 2372
rt.2949:
	lw	a2, a21, 56 ! 0
	lw	a3, a21, 52 ! 0
	lw	a4, a21, 48 ! 0
	lw	a5, a21, 44 ! 0
	lw	a6, a21, 40 ! 0
	lw	a7, a21, 36 ! 0
	lw	a8, a21, 32 ! 0
	lw	a9, a21, 28 ! 0
	lw	a10, a21, 24 ! 0
	lw	a11, a21, 20 ! 0
	lw	a12, a21, 16 ! 0
	lw	a13, a21, 12 ! 0
	lw	a14, a21, 8 ! 0
	lw	a15, a21, 4 ! 0
	sw	a13, a0, 0 ! 2382
	sw	a13, a1, 4 ! 2383
	li	a13, 2 ! 2384
	div	a13, a0, a13 ! 2384
	sw	a14, a13, 0 ! 2384
	li	a13, 2 ! 2385
	div	a1, a1, a13 ! 2385
	sw	a14, a1, 4 ! 2385
	li	a1, l.6741 ! 2386
	flw	fa0, a1, 0 ! 2386
	sw	sp, a6, 0 ! 0
	sw	sp, a8, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a9, 12 ! 0
	sw	sp, a4, 16 ! 0
	sw	sp, a11, 20 ! 0
	sw	sp, a10, 24 ! 0
	sw	sp, a12, 28 ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a7, 36 ! 0
	sw	sp, a15, 40 ! 0
	sw	sp, a5, 44 ! 0
	fsw	sp, fa0, 48 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_float_of_int
	addi	sp, sp, -60
	lw	ra, sp, 56
	flw	fa1, sp, 48 ! 0
	fdiv.s	fa0, fa1, fa0, rne ! 2386
	lw	a0, sp, 44 ! 0
	fsw	a0, fa0, 0 ! 2386
	lw	a21, sp, 40 ! 0
	sw	sp, ra, 56
	addi	sp, sp, 60
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -60
	lw	ra, sp, 56
	lw	a21, sp, 40 ! 0
	sw	sp, a0, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a21, sp, 40 ! 0
	sw	sp, a0, 60 ! 0
	sw	sp, ra, 64
	addi	sp, sp, 68
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -68
	lw	ra, sp, 64
	lw	a21, sp, 36 ! 0
	sw	sp, a0, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a21, sp, 32 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a21, sp, 28 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	d_vec.2583
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 20 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	veccpy.2486
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 24 ! 0
	lw	a21, sp, 16 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 12 ! 0
	lw	a0, a0, 0 ! 2395
	addi	a0, a0, -1 ! 2395
	lw	a21, sp, 8 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 2396
	li	a2, 0 ! 2396
	lw	a0, sp, 60 ! 0
	lw	a21, sp, 4 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a0, 0 ! 2397
	li	a4, 2 ! 2397
	lw	a1, sp, 56 ! 0
	lw	a2, sp, 60 ! 0
	lw	a3, sp, 64 ! 0
	lw	a21, sp, 0 ! 0
	lw	a20, a21, 0
	jalr	zero, a20, 0
min_caml_start:
	li	a0, 1 ! 23
	li	a1, 0 ! 23
	sw	sp, ra, 0
	addi	sp, sp, 4
	jal	min_caml_create_array
	addi	sp, sp, -4
	lw	ra, sp, 0
	li	a1, 0 ! 27
	li	a2, l.6001 ! 27
	flw	fa0, a2, 0 ! 27
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 60 ! 28
	li	a2, 0 ! 28
	li	a3, 0 ! 28
	li	a4, 0 ! 28
	li	a5, 0 ! 28
	li	a6, 0 ! 28
	mv	a7, hp ! 28
	addi	hp, hp, 44 ! 28
	sw	a7, a0, 40 ! 28
	sw	a7, a0, 36 ! 28
	sw	a7, a0, 32 ! 28
	sw	a7, a0, 28 ! 28
	sw	a7, a6, 24 ! 28
	sw	a7, a0, 20 ! 28
	sw	a7, a0, 16 ! 28
	sw	a7, a5, 12 ! 28
	sw	a7, a4, 8 ! 28
	sw	a7, a3, 4 ! 28
	sw	a7, a2, 0 ! 28
	mv	a0, a7 ! 28
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 4
	addi	sp, sp, 8
	jal	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 3 ! 31
	li	a2, l.6001 ! 31
	flw	fa0, a2, 0 ! 31
	sw	sp, a0, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 8
	addi	sp, sp, 12
	jal	min_caml_create_float_array
	addi	sp, sp, -12
	lw	ra, sp, 8
	li	a1, 3 ! 33
	li	a2, l.6001 ! 33
	flw	fa0, a2, 0 ! 33
	sw	sp, a0, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	jal	min_caml_create_float_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 3 ! 35
	li	a2, l.6001 ! 35
	flw	fa0, a2, 0 ! 35
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 16
	addi	sp, sp, 20
	jal	min_caml_create_float_array
	addi	sp, sp, -20
	lw	ra, sp, 16
	li	a1, 1 ! 37
	li	a2, l.6495 ! 37
	flw	fa0, a2, 0 ! 37
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	jal	min_caml_create_float_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 50 ! 39
	li	a2, 1 ! 39
	li	a3, 1 ! 39
	neg	a3, a3 ! 39
	sw	sp, a0, 20 ! 0
	sw	sp, a1, 24 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	jal	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 1 ! 41
	li	a2, 1 ! 41
	lw	a3, a0, 0 ! 41
	sw	sp, a0, 28 ! 0
	sw	sp, a1, 32 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	jal	min_caml_create_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 1 ! 45
	li	a2, l.6001 ! 45
	flw	fa0, a2, 0 ! 45
	sw	sp, a0, 36 ! 0
	mv	a0, a1
	sw	sp, ra, 40
	addi	sp, sp, 44
	jal	min_caml_create_float_array
	addi	sp, sp, -44
	lw	ra, sp, 40
	li	a1, 1 ! 47
	li	a2, 0 ! 47
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	jal	min_caml_create_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 1 ! 49
	li	a2, l.6421 ! 49
	flw	fa0, a2, 0 ! 49
	sw	sp, a0, 44 ! 0
	mv	a0, a1
	sw	sp, ra, 48
	addi	sp, sp, 52
	jal	min_caml_create_float_array
	addi	sp, sp, -52
	lw	ra, sp, 48
	li	a1, 3 ! 51
	li	a2, l.6001 ! 51
	flw	fa0, a2, 0 ! 51
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	jal	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 1 ! 53
	li	a2, 0 ! 53
	sw	sp, a0, 52 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 56
	addi	sp, sp, 60
	jal	min_caml_create_array
	addi	sp, sp, -60
	lw	ra, sp, 56
	li	a1, 3 ! 55
	li	a2, l.6001 ! 55
	flw	fa0, a2, 0 ! 55
	sw	sp, a0, 56 ! 0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	jal	min_caml_create_float_array
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 3 ! 57
	li	a2, l.6001 ! 57
	flw	fa0, a2, 0 ! 57
	sw	sp, a0, 60 ! 0
	mv	a0, a1
	sw	sp, ra, 64
	addi	sp, sp, 68
	jal	min_caml_create_float_array
	addi	sp, sp, -68
	lw	ra, sp, 64
	li	a1, 3 ! 60
	li	a2, l.6001 ! 60
	flw	fa0, a2, 0 ! 60
	sw	sp, a0, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	jal	min_caml_create_float_array
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 3 ! 62
	li	a2, l.6001 ! 62
	flw	fa0, a2, 0 ! 62
	sw	sp, a0, 68 ! 0
	mv	a0, a1
	sw	sp, ra, 72
	addi	sp, sp, 76
	jal	min_caml_create_float_array
	addi	sp, sp, -76
	lw	ra, sp, 72
	li	a1, 2 ! 65
	li	a2, 0 ! 65
	sw	sp, a0, 72 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 76
	addi	sp, sp, 80
	jal	min_caml_create_array
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 2 ! 67
	li	a2, 0 ! 67
	sw	sp, a0, 76 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 80
	addi	sp, sp, 84
	jal	min_caml_create_array
	addi	sp, sp, -84
	lw	ra, sp, 80
	li	a1, 1 ! 69
	li	a2, l.6001 ! 69
	flw	fa0, a2, 0 ! 69
	sw	sp, a0, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	jal	min_caml_create_float_array
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 3 ! 72
	li	a2, l.6001 ! 72
	flw	fa0, a2, 0 ! 72
	sw	sp, a0, 84 ! 0
	mv	a0, a1
	sw	sp, ra, 88
	addi	sp, sp, 92
	jal	min_caml_create_float_array
	addi	sp, sp, -92
	lw	ra, sp, 88
	li	a1, 3 ! 74
	li	a2, l.6001 ! 74
	flw	fa0, a2, 0 ! 74
	sw	sp, a0, 88 ! 0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	jal	min_caml_create_float_array
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 3 ! 77
	li	a2, l.6001 ! 77
	flw	fa0, a2, 0 ! 77
	sw	sp, a0, 92 ! 0
	mv	a0, a1
	sw	sp, ra, 96
	addi	sp, sp, 100
	jal	min_caml_create_float_array
	addi	sp, sp, -100
	lw	ra, sp, 96
	li	a1, 3 ! 78
	li	a2, l.6001 ! 78
	flw	fa0, a2, 0 ! 78
	sw	sp, a0, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	jal	min_caml_create_float_array
	addi	sp, sp, -104
	lw	ra, sp, 100
	li	a1, 3 ! 79
	li	a2, l.6001 ! 79
	flw	fa0, a2, 0 ! 79
	sw	sp, a0, 100 ! 0
	mv	a0, a1
	sw	sp, ra, 104
	addi	sp, sp, 108
	jal	min_caml_create_float_array
	addi	sp, sp, -108
	lw	ra, sp, 104
	li	a1, 3 ! 82
	li	a2, l.6001 ! 82
	flw	fa0, a2, 0 ! 82
	sw	sp, a0, 104 ! 0
	mv	a0, a1
	sw	sp, ra, 108
	addi	sp, sp, 112
	jal	min_caml_create_float_array
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 86
	li	a2, l.6001 ! 86
	flw	fa0, a2, 0 ! 86
	sw	sp, a0, 108 ! 0
	mv	a0, a1
	sw	sp, ra, 112
	addi	sp, sp, 116
	jal	min_caml_create_float_array
	addi	sp, sp, -116
	lw	ra, sp, 112
	mv	a1, a0
	li	a0, 0 ! 87
	sw	sp, a1, 112 ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 88
	mv	a2, hp ! 88
	addi	hp, hp, 8 ! 88
	sw	a2, a0, 4 ! 88
	lw	a0, sp, 112 ! 0
	sw	a2, a0, 0 ! 88
	mv	a0, a2 ! 88
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	mv	a1, a0
	li	a0, 5 ! 89
	sw	sp, ra, 116
	addi	sp, sp, 120
	jal	min_caml_create_array
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 93
	li	a2, l.6001 ! 93
	flw	fa0, a2, 0 ! 93
	sw	sp, a0, 116 ! 0
	mv	a0, a1
	sw	sp, ra, 120
	addi	sp, sp, 124
	jal	min_caml_create_float_array
	addi	sp, sp, -124
	lw	ra, sp, 120
	li	a1, 3 ! 94
	li	a2, l.6001 ! 94
	flw	fa0, a2, 0 ! 94
	sw	sp, a0, 120 ! 0
	mv	a0, a1
	sw	sp, ra, 124
	addi	sp, sp, 128
	jal	min_caml_create_float_array
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a1, 60 ! 95
	lw	a2, sp, 120 ! 0
	sw	sp, a0, 124 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 128
	addi	sp, sp, 132
	jal	min_caml_create_array
	addi	sp, sp, -132
	lw	ra, sp, 128
	mv	a1, hp ! 96
	addi	hp, hp, 8 ! 96
	sw	a1, a0, 4 ! 96
	lw	a0, sp, 124 ! 0
	sw	a1, a0, 0 ! 96
	mv	a0, a1 ! 96
	li	a1, 0 ! 100
	li	a2, l.6001 ! 100
	flw	fa0, a2, 0 ! 100
	sw	sp, a0, 128 ! 0
	mv	a0, a1
	sw	sp, ra, 132
	addi	sp, sp, 136
	jal	min_caml_create_float_array
	addi	sp, sp, -136
	lw	ra, sp, 132
	mv	a1, a0
	li	a0, 0 ! 101
	sw	sp, a1, 132 ! 0
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_create_array
	addi	sp, sp, -140
	lw	ra, sp, 136
	mv	a1, hp ! 102
	addi	hp, hp, 8 ! 102
	sw	a1, a0, 4 ! 102
	lw	a0, sp, 132 ! 0
	sw	a1, a0, 0 ! 102
	mv	a0, a1 ! 102
	li	a1, 180 ! 103
	li	a2, 0 ! 103
	li	a3, l.6001 ! 103
	flw	fa0, a3, 0 ! 103
	mv	a3, hp ! 103
	addi	hp, hp, 12 ! 103
	fsw	a3, fa0, 8 ! 103
	sw	a3, a0, 4 ! 103
	sw	a3, a2, 0 ! 103
	mv	a0, a3 ! 103
	mv	a20, a1
	mv	a1, a0
	mv	a0, a20
	sw	sp, ra, 136
	addi	sp, sp, 140
	jal	min_caml_create_array
	addi	sp, sp, -140
	lw	ra, sp, 136
	li	a1, 1 ! 107
	li	a2, 0 ! 107
	sw	sp, a0, 136 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 140
	addi	sp, sp, 144
	jal	min_caml_create_array
	addi	sp, sp, -144
	lw	ra, sp, 140
	mv	a1, hp ! 580
	addi	hp, hp, 24 ! 580
	li	a2, read_screen_settings.2595 ! 580
	sw	a1, a2, 0 ! 580
	lw	a2, sp, 12 ! 0
	sw	a1, a2, 20 ! 580
	lw	a3, sp, 104 ! 0
	sw	a1, a3, 16 ! 580
	lw	a4, sp, 100 ! 0
	sw	a1, a4, 12 ! 580
	lw	a5, sp, 96 ! 0
	sw	a1, a5, 8 ! 580
	lw	a6, sp, 8 ! 0
	sw	a1, a6, 4 ! 580
	mv	a6, hp ! 613
	addi	hp, hp, 12 ! 613
	li	a7, read_light.2597 ! 613
	sw	a6, a7, 0 ! 613
	lw	a7, sp, 16 ! 0
	sw	a6, a7, 8 ! 613
	lw	a8, sp, 20 ! 0
	sw	a6, a8, 4 ! 613
	mv	a9, hp ! 676
	addi	hp, hp, 8 ! 676
	li	a10, read_nth_object.2602 ! 676
	sw	a9, a10, 0 ! 676
	lw	a10, sp, 4 ! 0
	sw	a9, a10, 4 ! 676
	mv	a11, hp ! 759
	addi	hp, hp, 12 ! 759
	li	a12, read_object.2604 ! 759
	sw	a11, a12, 0 ! 759
	sw	a11, a9, 8 ! 759
	lw	a9, sp, 0 ! 0
	sw	a11, a9, 4 ! 759
	mv	a12, hp ! 768
	addi	hp, hp, 8 ! 768
	li	a13, read_all_object.2606 ! 768
	sw	a12, a13, 0 ! 768
	sw	a12, a11, 4 ! 768
	mv	a11, hp ! 792
	addi	hp, hp, 8 ! 792
	li	a13, read_and_network.2612 ! 792
	sw	a11, a13, 0 ! 792
	lw	a13, sp, 28 ! 0
	sw	a11, a13, 4 ! 792
	mv	a14, hp ! 801
	addi	hp, hp, 24 ! 801
	li	a15, read_parameter.2614 ! 801
	sw	a14, a15, 0 ! 801
	sw	a14, a1, 20 ! 801
	sw	a14, a6, 16 ! 801
	sw	a14, a11, 12 ! 801
	sw	a14, a12, 8 ! 801
	lw	a1, sp, 36 ! 0
	sw	a14, a1, 4 ! 801
	mv	a6, hp ! 827
	addi	hp, hp, 8 ! 827
	li	a11, solver_rect_surface.2616 ! 827
	sw	a6, a11, 0 ! 827
	lw	a11, sp, 40 ! 0
	sw	a6, a11, 4 ! 827
	mv	a12, hp ! 842
	addi	hp, hp, 8 ! 842
	li	a15, solver_rect.2625 ! 842
	sw	a12, a15, 0 ! 842
	sw	a12, a6, 4 ! 842
	mv	a6, hp ! 851
	addi	hp, hp, 8 ! 851
	li	a15, solver_surface.2631 ! 851
	sw	a6, a15, 0 ! 851
	sw	a6, a11, 4 ! 851
	mv	a15, hp ! 903
	addi	hp, hp, 8 ! 903
	li	a16, solver_second.2650 ! 903
	sw	a15, a16, 0 ! 903
	sw	a15, a11, 4 ! 903
	mv	a16, hp ! 932
	addi	hp, hp, 20 ! 932
	li	a17, solver.2656 ! 932
	sw	a16, a17, 0 ! 932
	sw	a16, a6, 16 ! 932
	sw	a16, a15, 12 ! 932
	sw	a16, a12, 8 ! 932
	sw	a16, a10, 4 ! 932
	mv	a6, hp ! 964
	addi	hp, hp, 8 ! 964
	li	a12, solver_rect_fast.2660 ! 964
	sw	a6, a12, 0 ! 964
	sw	a6, a11, 4 ! 964
	mv	a12, hp ! 997
	addi	hp, hp, 8 ! 997
	li	a15, solver_surface_fast.2667 ! 997
	sw	a12, a15, 0 ! 997
	sw	a12, a11, 4 ! 997
	mv	a15, hp ! 1006
	addi	hp, hp, 8 ! 1006
	li	a17, solver_second_fast.2673 ! 1006
	sw	a15, a17, 0 ! 1006
	sw	a15, a11, 4 ! 1006
	mv	a17, hp ! 1026
	addi	hp, hp, 20 ! 1026
	li	a18, solver_fast.2679 ! 1026
	sw	a17, a18, 0 ! 1026
	sw	a17, a12, 16 ! 1026
	sw	a17, a15, 12 ! 1026
	sw	a17, a6, 8 ! 1026
	sw	a17, a10, 4 ! 1026
	mv	a12, hp ! 1046
	addi	hp, hp, 8 ! 1046
	li	a15, solver_surface_fast2.2683 ! 1046
	sw	a12, a15, 0 ! 1046
	sw	a12, a11, 4 ! 1046
	mv	a15, hp ! 1054
	addi	hp, hp, 8 ! 1054
	li	a18, solver_second_fast2.2690 ! 1054
	sw	a15, a18, 0 ! 1054
	sw	a15, a11, 4 ! 1054
	mv	a18, hp ! 1073
	addi	hp, hp, 20 ! 1073
	li	a19, solver_fast2.2697 ! 1073
	sw	a18, a19, 0 ! 1073
	sw	a18, a12, 16 ! 1073
	sw	a18, a15, 12 ! 1073
	sw	a18, a6, 8 ! 1073
	sw	a18, a10, 4 ! 1073
	mv	a6, hp ! 1170
	addi	hp, hp, 8 ! 1170
	li	a12, iter_setup_dirvec_constants.2709 ! 1170
	sw	a6, a12, 0 ! 1170
	sw	a6, a10, 4 ! 1170
	mv	a12, hp ! 1187
	addi	hp, hp, 12 ! 1187
	li	a15, setup_dirvec_constants.2712 ! 1187
	sw	a12, a15, 0 ! 1187
	sw	a12, a9, 8 ! 1187
	sw	a12, a6, 4 ! 1187
	mv	a6, hp ! 1195
	addi	hp, hp, 8 ! 1195
	li	a15, setup_startp_constants.2714 ! 1195
	sw	a6, a15, 0 ! 1195
	sw	a6, a10, 4 ! 1195
	mv	a15, hp ! 1214
	addi	hp, hp, 16 ! 1214
	li	a19, setup_startp.2717 ! 1214
	sw	a15, a19, 0 ! 1214
	lw	a19, sp, 92 ! 0
	sw	a15, a19, 12 ! 1214
	sw	a15, a6, 8 ! 1214
	sw	a15, a9, 4 ! 1214
	mv	a6, hp ! 1264
	addi	hp, hp, 8 ! 1264
	li	a20, check_all_inside.2739 ! 1264
	sw	a6, a20, 0 ! 1264
	sw	a6, a10, 4 ! 1264
	mv	a20, hp ! 1284
	addi	hp, hp, 32 ! 1284
	li	a21, shadow_check_and_group.2745 ! 1284
	sw	a20, a21, 0 ! 1284
	sw	a20, a17, 28 ! 1284
	sw	a20, a11, 24 ! 1284
	sw	a20, a10, 20 ! 1284
	lw	a21, sp, 128 ! 0
	sw	a20, a21, 16 ! 1284
	sw	a20, a7, 12 ! 1284
	sw	sp, a14, 140 ! 0
	lw	a14, sp, 52 ! 0
	sw	a20, a14, 8 ! 1284
	sw	a20, a6, 4 ! 1284
	sw	sp, a12, 144 ! 0
	mv	a12, hp ! 1314
	addi	hp, hp, 12 ! 1314
	li	a9, shadow_check_one_or_group.2748 ! 1314
	sw	a12, a9, 0 ! 1314
	sw	a12, a20, 8 ! 1314
	sw	a12, a13, 4 ! 1314
	mv	a9, hp ! 1329
	addi	hp, hp, 24 ! 1329
	li	a20, shadow_check_one_or_matrix.2751 ! 1329
	sw	a9, a20, 0 ! 1329
	sw	a9, a17, 20 ! 1329
	sw	a9, a11, 16 ! 1329
	sw	a9, a12, 12 ! 1329
	sw	a9, a21, 8 ! 1329
	sw	a9, a14, 4 ! 1329
	mv	a12, hp ! 1365
	addi	hp, hp, 40 ! 1365
	li	a17, solve_each_element.2754 ! 1365
	sw	a12, a17, 0 ! 1365
	lw	a17, sp, 48 ! 0
	sw	a12, a17, 36 ! 1365
	lw	a20, sp, 88 ! 0
	sw	a12, a20, 32 ! 1365
	sw	a12, a11, 28 ! 1365
	sw	a12, a16, 24 ! 1365
	sw	a12, a10, 20 ! 1365
	lw	a21, sp, 44 ! 0
	sw	a12, a21, 16 ! 1365
	sw	a12, a14, 12 ! 1365
	lw	a4, sp, 56 ! 0
	sw	a12, a4, 8 ! 1365
	sw	a12, a6, 4 ! 1365
	mv	a3, hp ! 1406
	addi	hp, hp, 12 ! 1406
	li	a5, solve_one_or_network.2758 ! 1406
	sw	a3, a5, 0 ! 1406
	sw	a3, a12, 8 ! 1406
	sw	a3, a13, 4 ! 1406
	mv	a5, hp ! 1416
	addi	hp, hp, 24 ! 1416
	li	a12, trace_or_matrix.2762 ! 1416
	sw	a5, a12, 0 ! 1416
	sw	a5, a17, 20 ! 1416
	sw	a5, a20, 16 ! 1416
	sw	a5, a11, 12 ! 1416
	sw	a5, a16, 8 ! 1416
	sw	a5, a3, 4 ! 1416
	mv	a3, hp ! 1443
	addi	hp, hp, 16 ! 1443
	li	a12, judge_intersection.2766 ! 1443
	sw	a3, a12, 0 ! 1443
	sw	a3, a5, 12 ! 1443
	sw	a3, a17, 8 ! 1443
	sw	a3, a1, 4 ! 1443
	mv	a5, hp ! 1458
	addi	hp, hp, 40 ! 1458
	li	a12, solve_each_element_fast.2768 ! 1458
	sw	a5, a12, 0 ! 1458
	sw	a5, a17, 36 ! 1458
	sw	a5, a19, 32 ! 1458
	sw	a5, a18, 28 ! 1458
	sw	a5, a11, 24 ! 1458
	sw	a5, a10, 20 ! 1458
	sw	a5, a21, 16 ! 1458
	sw	a5, a14, 12 ! 1458
	sw	a5, a4, 8 ! 1458
	sw	a5, a6, 4 ! 1458
	mv	a6, hp ! 1499
	addi	hp, hp, 12 ! 1499
	li	a12, solve_one_or_network_fast.2772 ! 1499
	sw	a6, a12, 0 ! 1499
	sw	a6, a5, 8 ! 1499
	sw	a6, a13, 4 ! 1499
	mv	a5, hp ! 1509
	addi	hp, hp, 20 ! 1509
	li	a12, trace_or_matrix_fast.2776 ! 1509
	sw	a5, a12, 0 ! 1509
	sw	a5, a17, 16 ! 1509
	sw	a5, a18, 12 ! 1509
	sw	a5, a11, 8 ! 1509
	sw	a5, a6, 4 ! 1509
	mv	a6, hp ! 1533
	addi	hp, hp, 16 ! 1533
	li	a11, judge_intersection_fast.2780 ! 1533
	sw	a6, a11, 0 ! 1533
	sw	a6, a5, 12 ! 1533
	sw	a6, a17, 8 ! 1533
	sw	a6, a1, 4 ! 1533
	mv	a5, hp ! 1554
	addi	hp, hp, 12 ! 1554
	li	a11, get_nvector_rect.2782 ! 1554
	sw	a5, a11, 0 ! 1554
	lw	a11, sp, 60 ! 0
	sw	a5, a11, 8 ! 1554
	sw	a5, a21, 4 ! 1554
	mv	a12, hp ! 1562
	addi	hp, hp, 8 ! 1562
	li	a13, get_nvector_plane.2784 ! 1562
	sw	a12, a13, 0 ! 1562
	sw	a12, a11, 4 ! 1562
	mv	a13, hp ! 1570
	addi	hp, hp, 12 ! 1570
	li	a16, get_nvector_second.2786 ! 1570
	sw	a13, a16, 0 ! 1570
	sw	a13, a11, 8 ! 1570
	sw	a13, a14, 4 ! 1570
	mv	a16, hp ! 1592
	addi	hp, hp, 16 ! 1592
	li	a18, get_nvector.2788 ! 1592
	sw	a16, a18, 0 ! 1592
	sw	a16, a13, 12 ! 1592
	sw	a16, a5, 8 ! 1592
	sw	a16, a12, 4 ! 1592
	mv	a5, hp ! 1608
	addi	hp, hp, 8 ! 1608
	li	a12, utexture.2791 ! 1608
	sw	a5, a12, 0 ! 1608
	lw	a12, sp, 64 ! 0
	sw	a5, a12, 4 ! 1608
	mv	a13, hp ! 1686
	addi	hp, hp, 12 ! 1686
	li	a18, add_light.2794 ! 1686
	sw	a13, a18, 0 ! 1686
	sw	a13, a12, 8 ! 1686
	lw	a18, sp, 72 ! 0
	sw	a13, a18, 4 ! 1686
	mv	a19, hp ! 1703
	addi	hp, hp, 36 ! 1703
	li	a2, trace_reflections.2798 ! 1703
	sw	a19, a2, 0 ! 1703
	sw	a19, a9, 32 ! 1703
	lw	a2, sp, 136 ! 0
	sw	a19, a2, 28 ! 1703
	sw	a19, a1, 24 ! 1703
	sw	a19, a11, 20 ! 1703
	sw	a19, a6, 16 ! 1703
	sw	a19, a21, 12 ! 1703
	sw	a19, a4, 8 ! 1703
	sw	a19, a13, 4 ! 1703
	mv	a2, hp ! 1732
	addi	hp, hp, 84 ! 1732
	sw	sp, a6, 148 ! 0
	li	a6, trace_ray.2803 ! 1732
	sw	a2, a6, 0 ! 1732
	sw	a2, a5, 80 ! 1732
	sw	a2, a19, 76 ! 1732
	sw	a2, a17, 72 ! 1732
	sw	a2, a12, 68 ! 1732
	sw	a2, a20, 64 ! 1732
	sw	a2, a9, 60 ! 1732
	sw	a2, a15, 56 ! 1732
	sw	a2, a18, 52 ! 1732
	sw	a2, a1, 48 ! 1732
	sw	a2, a10, 44 ! 1732
	sw	a2, a11, 40 ! 1732
	sw	a2, a0, 36 ! 1732
	sw	a2, a7, 32 ! 1732
	sw	a2, a3, 28 ! 1732
	sw	a2, a21, 24 ! 1732
	sw	a2, a14, 20 ! 1732
	sw	a2, a4, 16 ! 1732
	sw	a2, a16, 12 ! 1732
	sw	a2, a8, 8 ! 1732
	sw	a2, a13, 4 ! 1732
	mv	a3, hp ! 1825
	addi	hp, hp, 52 ! 1825
	li	a6, trace_diffuse_ray.2809 ! 1825
	sw	a3, a6, 0 ! 1825
	sw	a3, a5, 48 ! 1825
	sw	a3, a12, 44 ! 1825
	sw	a3, a9, 40 ! 1825
	sw	a3, a1, 36 ! 1825
	sw	a3, a10, 32 ! 1825
	sw	a3, a11, 28 ! 1825
	sw	a3, a7, 24 ! 1825
	lw	a1, sp, 148 ! 0
	sw	a3, a1, 20 ! 1825
	sw	a3, a14, 16 ! 1825
	sw	a3, a4, 12 ! 1825
	sw	a3, a16, 8 ! 1825
	lw	a1, sp, 68 ! 0
	sw	a3, a1, 4 ! 1825
	mv	a4, hp ! 1844
	addi	hp, hp, 8 ! 1844
	li	a5, iter_trace_diffuse_rays.2812 ! 1844
	sw	a4, a5, 0 ! 1844
	sw	a4, a3, 4 ! 1844
	mv	a3, hp ! 1860
	addi	hp, hp, 12 ! 1860
	li	a5, trace_diffuse_rays.2817 ! 1860
	sw	a3, a5, 0 ! 1860
	sw	a3, a15, 8 ! 1860
	sw	a3, a4, 4 ! 1860
	mv	a4, hp ! 1870
	addi	hp, hp, 12 ! 1870
	li	a5, trace_diffuse_ray_80percent.2821 ! 1870
	sw	a4, a5, 0 ! 1870
	sw	a4, a3, 8 ! 1870
	lw	a5, sp, 116 ! 0
	sw	a4, a5, 4 ! 1870
	mv	a6, hp ! 1896
	addi	hp, hp, 16 ! 1896
	li	a8, calc_diffuse_using_1point.2825 ! 1896
	sw	a6, a8, 0 ! 1896
	sw	a6, a4, 12 ! 1896
	sw	a6, a18, 8 ! 1896
	sw	a6, a1, 4 ! 1896
	mv	a4, hp ! 1915
	addi	hp, hp, 12 ! 1915
	li	a8, calc_diffuse_using_5points.2828 ! 1915
	sw	a4, a8, 0 ! 1915
	sw	a4, a18, 8 ! 1915
	sw	a4, a1, 4 ! 1915
	mv	a8, hp ! 1935
	addi	hp, hp, 8 ! 1935
	li	a9, do_without_neighbors.2834 ! 1935
	sw	a8, a9, 0 ! 1935
	sw	a8, a6, 4 ! 1935
	mv	a6, hp ! 1950
	addi	hp, hp, 8 ! 1950
	li	a9, neighbors_exist.2837 ! 1950
	sw	a6, a9, 0 ! 1950
	lw	a9, sp, 76 ! 0
	sw	a6, a9, 4 ! 1950
	mv	a11, hp ! 1987
	addi	hp, hp, 12 ! 1987
	li	a12, try_exploit_neighbors.2850 ! 1987
	sw	a11, a12, 0 ! 1987
	sw	a11, a8, 8 ! 1987
	sw	a11, a4, 4 ! 1987
	mv	a4, hp ! 2014
	addi	hp, hp, 8 ! 2014
	li	a12, write_ppm_header.2857 ! 2014
	sw	a4, a12, 0 ! 2014
	sw	a4, a9, 4 ! 2014
	mv	a12, hp ! 2034
	addi	hp, hp, 8 ! 2034
	li	a13, write_rgb.2861 ! 2034
	sw	a12, a13, 0 ! 2034
	sw	a12, a18, 4 ! 2034
	mv	a13, hp ! 2051
	addi	hp, hp, 16 ! 2051
	li	a14, pretrace_diffuse_rays.2863 ! 2051
	sw	a13, a14, 0 ! 2051
	sw	a13, a3, 12 ! 2051
	sw	a13, a5, 8 ! 2051
	sw	a13, a1, 4 ! 2051
	mv	a1, hp ! 2081
	addi	hp, hp, 40 ! 2081
	li	a3, pretrace_pixels.2866 ! 2081
	sw	a1, a3, 0 ! 2081
	lw	a3, sp, 12 ! 0
	sw	a1, a3, 36 ! 2081
	sw	a1, a2, 32 ! 2081
	sw	a1, a20, 28 ! 2081
	lw	a2, sp, 96 ! 0
	sw	a1, a2, 24 ! 2081
	lw	a2, sp, 84 ! 0
	sw	a1, a2, 20 ! 2081
	sw	a1, a18, 16 ! 2081
	lw	a3, sp, 108 ! 0
	sw	a1, a3, 12 ! 2081
	sw	a1, a13, 8 ! 2081
	lw	a3, sp, 80 ! 0
	sw	a1, a3, 4 ! 2081
	mv	a13, hp ! 2106
	addi	hp, hp, 28 ! 2106
	li	a14, pretrace_line.2873 ! 2106
	sw	a13, a14, 0 ! 2106
	lw	a14, sp, 104 ! 0
	sw	a13, a14, 24 ! 2106
	lw	a14, sp, 100 ! 0
	sw	a13, a14, 20 ! 2106
	sw	a13, a2, 16 ! 2106
	sw	a13, a1, 12 ! 2106
	sw	a13, a9, 8 ! 2106
	sw	a13, a3, 4 ! 2106
	mv	a1, hp ! 2122
	addi	hp, hp, 28 ! 2122
	li	a14, scan_pixel.2877 ! 2122
	sw	a1, a14, 0 ! 2122
	sw	a1, a12, 24 ! 2122
	sw	a1, a11, 20 ! 2122
	sw	a1, a18, 16 ! 2122
	sw	a1, a6, 12 ! 2122
	sw	a1, a9, 8 ! 2122
	sw	a1, a8, 4 ! 2122
	mv	a6, hp ! 2142
	addi	hp, hp, 16 ! 2142
	li	a8, scan_line.2883 ! 2142
	sw	a6, a8, 0 ! 2142
	sw	a6, a1, 12 ! 2142
	sw	a6, a13, 8 ! 2142
	sw	a6, a9, 4 ! 2142
	mv	a1, hp ! 2194
	addi	hp, hp, 8 ! 2194
	li	a8, create_pixelline.2896 ! 2194
	sw	a1, a8, 0 ! 2194
	sw	a1, a9, 4 ! 2194
	mv	a8, hp ! 2222
	addi	hp, hp, 8 ! 2222
	li	a11, calc_dirvec.2903 ! 2222
	sw	a8, a11, 0 ! 2222
	sw	a8, a5, 4 ! 2222
	mv	a11, hp ! 2243
	addi	hp, hp, 8 ! 2243
	li	a12, calc_dirvecs.2911 ! 2243
	sw	a11, a12, 0 ! 2243
	sw	a11, a8, 4 ! 2243
	mv	a8, hp ! 2257
	addi	hp, hp, 8 ! 2257
	li	a12, calc_dirvec_rows.2916 ! 2257
	sw	a8, a12, 0 ! 2257
	sw	a8, a11, 4 ! 2257
	mv	a11, hp ! 2270
	addi	hp, hp, 8 ! 2270
	li	a12, create_dirvec.2920 ! 2270
	sw	a11, a12, 0 ! 2270
	lw	a12, sp, 0 ! 0
	sw	a11, a12, 4 ! 2270
	mv	a14, hp ! 2276
	addi	hp, hp, 8 ! 2276
	li	a15, create_dirvec_elements.2922 ! 2276
	sw	a14, a15, 0 ! 2276
	sw	a14, a11, 4 ! 2276
	mv	a15, hp ! 2283
	addi	hp, hp, 16 ! 2283
	li	a16, create_dirvecs.2925 ! 2283
	sw	a15, a16, 0 ! 2283
	sw	a15, a5, 12 ! 2283
	sw	a15, a14, 8 ! 2283
	sw	a15, a11, 4 ! 2283
	mv	a14, hp ! 2295
	addi	hp, hp, 8 ! 2295
	li	a16, init_dirvec_constants.2927 ! 2295
	sw	a14, a16, 0 ! 2295
	lw	a16, sp, 144 ! 0
	sw	a14, a16, 4 ! 2295
	mv	a17, hp ! 2302
	addi	hp, hp, 12 ! 2302
	li	a18, init_vecset_constants.2930 ! 2302
	sw	a17, a18, 0 ! 2302
	sw	a17, a14, 8 ! 2302
	sw	a17, a5, 4 ! 2302
	mv	a5, hp ! 2309
	addi	hp, hp, 16 ! 2309
	li	a14, init_dirvecs.2932 ! 2309
	sw	a5, a14, 0 ! 2309
	sw	a5, a17, 12 ! 2309
	sw	a5, a15, 8 ! 2309
	sw	a5, a8, 4 ! 2309
	mv	a8, hp ! 2320
	addi	hp, hp, 16 ! 2320
	li	a14, add_reflection.2934 ! 2320
	sw	a8, a14, 0 ! 2320
	sw	a8, a16, 12 ! 2320
	lw	a14, sp, 136 ! 0
	sw	a8, a14, 8 ! 2320
	sw	a8, a11, 4 ! 2320
	mv	a11, hp ! 2329
	addi	hp, hp, 16 ! 2329
	li	a14, setup_rect_reflection.2941 ! 2329
	sw	a11, a14, 0 ! 2329
	sw	a11, a0, 12 ! 2329
	sw	a11, a7, 8 ! 2329
	sw	a11, a8, 4 ! 2329
	mv	a14, hp ! 2343
	addi	hp, hp, 16 ! 2343
	li	a15, setup_surface_reflection.2944 ! 2343
	sw	a14, a15, 0 ! 2343
	sw	a14, a0, 12 ! 2343
	sw	a14, a7, 8 ! 2343
	sw	a14, a8, 4 ! 2343
	mv	a0, hp ! 2358
	addi	hp, hp, 16 ! 2358
	li	a8, setup_reflections.2947 ! 2358
	sw	a0, a8, 0 ! 2358
	sw	a0, a14, 12 ! 2358
	sw	a0, a11, 8 ! 2358
	sw	a0, a10, 4 ! 2358
	mv	a21, hp ! 2380
	addi	hp, hp, 60 ! 2380
	li	a8, rt.2949 ! 2380
	sw	a21, a8, 0 ! 2380
	sw	a21, a4, 56 ! 2380
	sw	a21, a0, 52 ! 2380
	sw	a21, a16, 48 ! 2380
	sw	a21, a2, 44 ! 2380
	sw	a21, a6, 40 ! 2380
	lw	a0, sp, 140 ! 0
	sw	a21, a0, 36 ! 2380
	sw	a21, a13, 32 ! 2380
	sw	a21, a12, 28 ! 2380
	lw	a0, sp, 128 ! 0
	sw	a21, a0, 24 ! 2380
	sw	a21, a7, 20 ! 2380
	sw	a21, a5, 16 ! 2380
	sw	a21, a9, 12 ! 2380
	sw	a21, a3, 8 ! 2380
	sw	a21, a1, 4 ! 2380
	li	a0, 128 ! 2402
	li	a1, 128 ! 2402
	sw	sp, ra, 152
	addi	sp, sp, 156
	lw	a20, a21, 0
	jalr	ra, a20, 0
	addi	sp, sp, -156
	lw	ra, sp, 152
	li	zero, 0 ! 2404
	fin	0
