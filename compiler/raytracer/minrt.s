	j	min_caml_start
xor.2606:
	li	a2, 0 ! 22
	bne	a0, a2, be_else.8492
	mv	a0, a1 ! 22
	ret ! 22
be_else.8492:
	li	a0, 0 ! 22
	bne	a1, a0, be_else.8493
	li	a0, 1 ! 22
	ret ! 22
be_else.8493:
	li	a0, 0 ! 22
	ret ! 22
sgn.2609:
	std	%f0, [sp + 0] ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fiszero
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 30
	bne	a0, a1, be_else.8494
	ldd	[sp + 0], %f0 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fispos
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 31
	bne	a0, a1, be_else.8495
	li	a0, l.6309 ! 32
	ldd	[a0 + 0], %f0 ! 32
	ret ! 32
be_else.8495:
	li	a0, l.6307 ! 31
	ldd	[a0 + 0], %f0 ! 31
	ret ! 31
be_else.8494:
	li	a0, l.6305 ! 30
	ldd	[a0 + 0], %f0 ! 30
	ret ! 30
fneg_cond.2611:
	li	a1, 0 ! 37
	bne	a0, a1, be_else.8496
	j	min_caml_fneg
be_else.8496:
	ret ! 37
add_mod5.2614:
	add	a0, a0, a1 ! 42
	li	a1, 5 ! 43
	bg	a0, a1, ble_else.8497
	addi	a0, a0, -5 ! 43
	ret ! 43
ble_else.8497:
	ret ! 43
vecset.2617:
	std	%f0, [a0 + 0] ! 58
	std	%f2, [a0 + 8] ! 59
	std	%f4, [a0 + 16] ! 60
	ret ! 60
vecfill.2622:
	std	%f0, [a0 + 0] ! 65
	std	%f0, [a0 + 8] ! 66
	std	%f0, [a0 + 16] ! 67
	ret ! 67
vecbzero.2625:
	li	a1, l.6305 ! 72
	ldd	[a1 + 0], %f0 ! 72
	j	vecfill.2622
veccpy.2627:
	ldd	[a1 + 0], %f0 ! 77
	std	%f0, [a0 + 0] ! 77
	ldd	[a1 + 8], %f0 ! 78
	std	%f0, [a0 + 8] ! 78
	ldd	[a1 + 16], %f0 ! 79
	std	%f0, [a0 + 16] ! 79
	ret ! 79
vecunit_sgn.2635:
	ldd	[a0 + 0], %f0 ! 97
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fsqr
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 8], %f2 ! 97
	std	%f0, [sp + 8] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fsqr
	addi	sp, sp, -24
	lw	ra, sp, 20
	ldd	[sp + 8], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 97
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 16], %f2 ! 97
	std	%f0, [sp + 16] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 97
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_sqrt
	addi	sp, sp, -32
	lw	ra, sp, 28
	std	%f0, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fiszero
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 98
	bne	a0, a1, be_else.8501
	li	a0, 0 ! 98
	lw	a1, sp, 0 ! 0
	bne	a1, a0, be_else.8503
	li	a0, l.6307 ! 98
	ldd	[a0 + 0], %f0 ! 98
	ldd	[sp + 24], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 98
	b	be_cont.8504
be_else.8503:
	li	a0, l.6309 ! 98
	ldd	[a0 + 0], %f0 ! 98
	ldd	[sp + 24], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 98
be_cont.8504:
	b	be_cont.8502
be_else.8501:
	li	a0, l.6307 ! 98
	ldd	[a0 + 0], %f0 ! 98
be_cont.8502:
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 0], %f2 ! 99
	fmul.s	%f2, %f2, %f0 ! 99
	std	%f2, [a0 + 0] ! 99
	ldd	[a0 + 8], %f2 ! 100
	fmul.s	%f2, %f2, %f0 ! 100
	std	%f2, [a0 + 8] ! 100
	ldd	[a0 + 16], %f2 ! 101
	fmul.s	%f0, %f2, %f0 ! 101
	std	%f0, [a0 + 16] ! 101
	ret ! 101
veciprod.2638:
	ldd	[a0 + 0], %f0 ! 106
	ldd	[a1 + 0], %f2 ! 106
	fmul.s	%f0, %f0, %f2 ! 106
	ldd	[a0 + 8], %f2 ! 106
	ldd	[a1 + 8], %f4 ! 106
	fmul.s	%f2, %f2, %f4 ! 106
	fadd.s	%f0, %f0, %f2 ! 106
	ldd	[a0 + 16], %f2 ! 106
	ldd	[a1 + 16], %f4 ! 106
	fmul.s	%f2, %f2, %f4 ! 106
	fadd.s	%f0, %f0, %f2 ! 106
	ret ! 106
veciprod2.2641:
	ldd	[a0 + 0], %f6 ! 111
	fmul.s	%f0, %f6, %f0 ! 111
	ldd	[a0 + 8], %f6 ! 111
	fmul.s	%f2, %f6, %f2 ! 111
	fadd.s	%f0, %f0, %f2 ! 111
	ldd	[a0 + 16], %f2 ! 111
	fmul.s	%f2, %f2, %f4 ! 111
	fadd.s	%f0, %f0, %f2 ! 111
	ret ! 111
vecaccum.2646:
	ldd	[a0 + 0], %f2 ! 116
	ldd	[a1 + 0], %f4 ! 116
	fmul.s	%f4, %f0, %f4 ! 116
	fadd.s	%f2, %f2, %f4 ! 116
	std	%f2, [a0 + 0] ! 116
	ldd	[a0 + 8], %f2 ! 117
	ldd	[a1 + 8], %f4 ! 117
	fmul.s	%f4, %f0, %f4 ! 117
	fadd.s	%f2, %f2, %f4 ! 117
	std	%f2, [a0 + 8] ! 117
	ldd	[a0 + 16], %f2 ! 118
	ldd	[a1 + 16], %f4 ! 118
	fmul.s	%f0, %f0, %f4 ! 118
	fadd.s	%f0, %f2, %f0 ! 118
	std	%f0, [a0 + 16] ! 118
	ret ! 118
vecadd.2650:
	ldd	[a0 + 0], %f0 ! 123
	ldd	[a1 + 0], %f2 ! 123
	fadd.s	%f0, %f0, %f2 ! 123
	std	%f0, [a0 + 0] ! 123
	ldd	[a0 + 8], %f0 ! 124
	ldd	[a1 + 8], %f2 ! 124
	fadd.s	%f0, %f0, %f2 ! 124
	std	%f0, [a0 + 8] ! 124
	ldd	[a0 + 16], %f0 ! 125
	ldd	[a1 + 16], %f2 ! 125
	fadd.s	%f0, %f0, %f2 ! 125
	std	%f0, [a0 + 16] ! 125
	ret ! 125
vecscale.2656:
	ldd	[a0 + 0], %f2 ! 137
	fmul.s	%f2, %f2, %f0 ! 137
	std	%f2, [a0 + 0] ! 137
	ldd	[a0 + 8], %f2 ! 138
	fmul.s	%f2, %f2, %f0 ! 138
	std	%f2, [a0 + 8] ! 138
	ldd	[a0 + 16], %f2 ! 139
	fmul.s	%f0, %f2, %f0 ! 139
	std	%f0, [a0 + 16] ! 139
	ret ! 139
vecaccumv.2659:
	ldd	[a0 + 0], %f0 ! 144
	ldd	[a1 + 0], %f2 ! 144
	ldd	[a2 + 0], %f4 ! 144
	fmul.s	%f2, %f2, %f4 ! 144
	fadd.s	%f0, %f0, %f2 ! 144
	std	%f0, [a0 + 0] ! 144
	ldd	[a0 + 8], %f0 ! 145
	ldd	[a1 + 8], %f2 ! 145
	ldd	[a2 + 8], %f4 ! 145
	fmul.s	%f2, %f2, %f4 ! 145
	fadd.s	%f0, %f0, %f2 ! 145
	std	%f0, [a0 + 8] ! 145
	ldd	[a0 + 16], %f0 ! 146
	ldd	[a1 + 16], %f2 ! 146
	ldd	[a2 + 16], %f4 ! 146
	fmul.s	%f2, %f2, %f4 ! 146
	fadd.s	%f0, %f0, %f2 ! 146
	std	%f0, [a0 + 16] ! 146
	ret ! 146
o_texturetype.2663:
	lw	a0, a0, 0 ! 155
	ret ! 160
o_form.2665:
	lw	a0, a0, 4 ! 165
	ret ! 170
o_reflectiontype.2667:
	lw	a0, a0, 8 ! 175
	ret ! 180
o_isinvert.2669:
	lw	a0, a0, 24 ! 185
	ret ! 189
o_isrot.2671:
	lw	a0, a0, 12 ! 194
	ret ! 198
o_param_a.2673:
	lw	a0, a0, 16 ! 203
	ldd	[a0 + 0], %f0 ! 208
	ret ! 208
o_param_b.2675:
	lw	a0, a0, 16 ! 213
	ldd	[a0 + 8], %f0 ! 218
	ret ! 218
o_param_c.2677:
	lw	a0, a0, 16 ! 223
	ldd	[a0 + 16], %f0 ! 228
	ret ! 228
o_param_abc.2679:
	lw	a0, a0, 16 ! 233
	ret ! 238
o_param_x.2681:
	lw	a0, a0, 20 ! 243
	ldd	[a0 + 0], %f0 ! 248
	ret ! 248
o_param_y.2683:
	lw	a0, a0, 20 ! 253
	ldd	[a0 + 8], %f0 ! 258
	ret ! 258
o_param_z.2685:
	lw	a0, a0, 20 ! 263
	ldd	[a0 + 16], %f0 ! 268
	ret ! 268
o_diffuse.2687:
	lw	a0, a0, 28 ! 273
	ldd	[a0 + 0], %f0 ! 278
	ret ! 278
o_hilight.2689:
	lw	a0, a0, 28 ! 283
	ldd	[a0 + 8], %f0 ! 288
	ret ! 288
o_color_red.2691:
	lw	a0, a0, 32 ! 293
	ldd	[a0 + 0], %f0 ! 298
	ret ! 298
o_color_green.2693:
	lw	a0, a0, 32 ! 303
	ldd	[a0 + 8], %f0 ! 308
	ret ! 308
o_color_blue.2695:
	lw	a0, a0, 32 ! 313
	ldd	[a0 + 16], %f0 ! 318
	ret ! 318
o_param_r1.2697:
	lw	a0, a0, 36 ! 323
	ldd	[a0 + 0], %f0 ! 328
	ret ! 328
o_param_r2.2699:
	lw	a0, a0, 36 ! 333
	ldd	[a0 + 8], %f0 ! 338
	ret ! 338
o_param_r3.2701:
	lw	a0, a0, 36 ! 343
	ldd	[a0 + 16], %f0 ! 348
	ret ! 348
o_param_ctbl.2703:
	lw	a0, a0, 40 ! 360
	ret ! 365
p_rgb.2705:
	lw	a0, a0, 0 ! 374
	ret ! 376
p_intersection_points.2707:
	lw	a0, a0, 4 ! 381
	ret ! 383
p_surface_ids.2709:
	lw	a0, a0, 8 ! 389
	ret ! 391
p_calc_diffuse.2711:
	lw	a0, a0, 12 ! 396
	ret ! 398
p_energy.2713:
	lw	a0, a0, 16 ! 403
	ret ! 405
p_received_ray_20percent.2715:
	lw	a0, a0, 20 ! 410
	ret ! 412
p_group_id.2717:
	lw	a0, a0, 24 ! 426
	lw	a0, a0, 0 ! 428
	ret ! 428
p_set_group_id.2719:
	lw	a0, a0, 24 ! 433
	sw	a0, a1, 0 ! 435
	ret ! 435
p_nvectors.2722:
	lw	a0, a0, 28 ! 440
	ret ! 442
d_vec.2724:
	lw	a0, a0, 0 ! 451
	ret ! 452
d_const.2726:
	lw	a0, a0, 4 ! 457
	ret ! 458
r_surface_id.2728:
	lw	a0, a0, 0 ! 467
	ret ! 468
r_dvec.2730:
	lw	a0, a0, 4 ! 473
	ret ! 474
r_bright.2732:
	ldd	[a0 + 8], %f0 ! 479
	ret ! 480
rad.2734:
	li	a0, l.6397 ! 489
	ldd	[a0 + 0], %f2 ! 489
	fmul.s	%f0, %f0, %f2 ! 489
	ret ! 489
read_screen_settings.2736:
	li	a0, min_caml_screen ! 496
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_read_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	std	%f0, [a0 + 0] ! 496
	li	a0, min_caml_screen ! 497
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	std	%f0, [a0 + 8] ! 497
	li	a0, min_caml_screen ! 498
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 16] ! 498
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	rad.2734
	addi	sp, sp, -16
	lw	ra, sp, 12
	std	%f0, [sp + 16] ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_cos
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	std	%f0, [sp + 24] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_sin
	addi	sp, sp, -40
	lw	ra, sp, 36
	std	%f0, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	rad.2734
	addi	sp, sp, -48
	lw	ra, sp, 44
	std	%f0, [sp + 40] ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_cos
	addi	sp, sp, -56
	lw	ra, sp, 52
	ldd	[sp + 40], %f2 ! 0
	std	%f0, [sp + 48] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	min_caml_sin
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, min_caml_screenz_dir ! 507
	ldd	[sp + 24], %f2 ! 0
	fmul.s	%f4, %f2, %f0 ! 507
	li	a1, l.6402 ! 507
	ldd	[a1 + 0], %f6 ! 507
	fmul.s	%f4, %f4, %f6 ! 507
	std	%f4, [a0 + 0] ! 507
	li	a0, min_caml_screenz_dir ! 508
	li	a1, l.6405 ! 508
	ldd	[a1 + 0], %f4 ! 508
	ldd	[sp + 32], %f6 ! 0
	fmul.s	%f4, %f6, %f4 ! 508
	std	%f4, [a0 + 8] ! 508
	li	a0, min_caml_screenz_dir ! 509
	ldd	[sp + 48], %f4 ! 0
	fmul.s	%f8, %f2, %f4 ! 509
	li	a1, l.6402 ! 509
	ldd	[a1 + 0], %f10 ! 509
	fmul.s	%f8, %f8, %f10 ! 509
	std	%f8, [a0 + 16] ! 509
	li	a0, min_caml_screenx_dir ! 511
	std	%f4, [a0 + 0] ! 511
	li	a0, min_caml_screenx_dir ! 512
	li	a1, l.6305 ! 512
	ldd	[a1 + 0], %f8 ! 512
	std	%f8, [a0 + 8] ! 512
	li	a0, min_caml_screenx_dir ! 513
	std	%f0, [sp + 56] ! 0
	sw	sp, a0, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 64 ! 0
	std	%f0, [a0 + 16] ! 513
	li	a0, min_caml_screeny_dir ! 515
	ldd	[sp + 32], %f0 ! 0
	sw	sp, a0, 68 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 56], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 515
	lw	a0, sp, 68 ! 0
	std	%f0, [a0 + 0] ! 515
	li	a0, min_caml_screeny_dir ! 516
	ldd	[sp + 24], %f0 ! 0
	sw	sp, a0, 72 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 72 ! 0
	std	%f0, [a0 + 8] ! 516
	li	a0, min_caml_screeny_dir ! 517
	ldd	[sp + 32], %f0 ! 0
	sw	sp, a0, 76 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fneg
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 517
	lw	a0, sp, 76 ! 0
	std	%f0, [a0 + 16] ! 517
	li	a0, min_caml_viewpoint ! 519
	li	a1, min_caml_screen ! 519
	ldd	[a1 + 0], %f0 ! 519
	li	a1, min_caml_screenz_dir ! 519
	ldd	[a1 + 0], %f2 ! 519
	fsub.s	%f0, %f0, %f2 ! 519
	std	%f0, [a0 + 0] ! 519
	li	a0, min_caml_viewpoint ! 520
	li	a1, min_caml_screen ! 520
	ldd	[a1 + 8], %f0 ! 520
	li	a1, min_caml_screenz_dir ! 520
	ldd	[a1 + 8], %f2 ! 520
	fsub.s	%f0, %f0, %f2 ! 520
	std	%f0, [a0 + 8] ! 520
	li	a0, min_caml_viewpoint ! 521
	li	a1, min_caml_screen ! 521
	ldd	[a1 + 16], %f0 ! 521
	li	a1, min_caml_screenz_dir ! 521
	ldd	[a1 + 16], %f2 ! 521
	fsub.s	%f0, %f0, %f2 ! 521
	std	%f0, [a0 + 16] ! 521
	ret ! 521
read_light.2738:
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_read_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	rad.2734
	addi	sp, sp, -8
	lw	ra, sp, 4
	std	%f0, [sp + 0] ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_sin
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, min_caml_light ! 533
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 8] ! 533
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_read_float
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	rad.2734
	addi	sp, sp, -16
	lw	ra, sp, 12
	ldd	[sp + 0], %f2 ! 0
	std	%f0, [sp + 16] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_cos
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	std	%f0, [sp + 24] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_sin
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_light ! 537
	ldd	[sp + 24], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 537
	std	%f0, [a0 + 0] ! 537
	ldd	[sp + 16], %f0 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_cos
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_light ! 539
	ldd	[sp + 24], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 539
	std	%f0, [a0 + 16] ! 539
	li	a0, min_caml_beam ! 540
	sw	sp, a0, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_read_float
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0
	std	%f0, [a0 + 0] ! 540
	ret ! 540
rotate_quadratic_matrix.2740:
	ldd	[a1 + 0], %f0 ! 550
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_cos
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 0], %f2 ! 551
	std	%f0, [sp + 8] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_sin
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 8], %f2 ! 552
	std	%f0, [sp + 16] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_cos
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 8], %f2 ! 553
	std	%f0, [sp + 24] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_sin
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 16], %f2 ! 554
	std	%f0, [sp + 32] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_cos
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 16], %f2 ! 555
	std	%f0, [sp + 40] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_sin
	addi	sp, sp, -56
	lw	ra, sp, 52
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 24], %f4 ! 0
	fmul.s	%f6, %f4, %f2 ! 557
	ldd	[sp + 32], %f8 ! 0
	ldd	[sp + 16], %f10 ! 0
	fmul.s	%f12, %f10, %f8 ! 558
	fmul.s	%f12, %f12, %f2 ! 558
	ldd	[sp + 8], %f14 ! 0
	fmul.s	%f16, %f14, %f0 ! 558
	fsub.s	%f12, %f12, %f16 ! 558
	fmul.s	%f16, %f14, %f8 ! 559
	fmul.s	%f16, %f16, %f2 ! 559
	fmul.s	%f18, %f10, %f0 ! 559
	fadd.s	%f16, %f16, %f18 ! 559
	fmul.s	%f18, %f4, %f0 ! 561
	fmul.s	%f20, %f10, %f8 ! 562
	fmul.s	%f20, %f20, %f0 ! 562
	fmul.s	%f22, %f14, %f2 ! 562
	fadd.s	%f20, %f20, %f22 ! 562
	fmul.s	%f22, %f14, %f8 ! 563
	fmul.s	%f0, %f22, %f0 ! 563
	fmul.s	%f2, %f10, %f2 ! 563
	fsub.s	%f0, %f0, %f2 ! 563
	std	%f0, [sp + 48] ! 0
	std	%f16, [sp + 56] ! 0
	std	%f20, [sp + 64] ! 0
	std	%f12, [sp + 72] ! 0
	std	%f18, [sp + 80] ! 0
	std	%f6, [sp + 88] ! 0
	fmv.s	%f0, %f8
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	min_caml_fneg
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 24], %f2 ! 0
	ldd	[sp + 16], %f4 ! 0
	fmul.s	%f4, %f4, %f2 ! 566
	ldd	[sp + 8], %f6 ! 0
	fmul.s	%f2, %f6, %f2 ! 567
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 0], %f6 ! 570
	ldd	[a0 + 8], %f8 ! 571
	ldd	[a0 + 16], %f10 ! 572
	ldd	[sp + 88], %f12 ! 0
	std	%f2, [sp + 96] ! 0
	std	%f4, [sp + 104] ! 0
	std	%f10, [sp + 112] ! 0
	std	%f0, [sp + 120] ! 0
	std	%f8, [sp + 128] ! 0
	std	%f6, [sp + 136] ! 0
	fmv.s	%f0, %f12
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	min_caml_fsqr
	addi	sp, sp, -152
	lw	ra, sp, 148
	ldd	[sp + 136], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 577
	ldd	[sp + 80], %f4 ! 0
	std	%f0, [sp + 144] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 156
	addi	sp, sp, 160
	call	min_caml_fsqr
	addi	sp, sp, -160
	lw	ra, sp, 156
	ldd	[sp + 128], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 577
	ldd	[sp + 144], %f4 ! 0
	fadd.s	%f0, %f4, %f0 ! 577
	ldd	[sp + 120], %f4 ! 0
	std	%f0, [sp + 152] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 164
	addi	sp, sp, 168
	call	min_caml_fsqr
	addi	sp, sp, -168
	lw	ra, sp, 164
	ldd	[sp + 112], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 577
	ldd	[sp + 152], %f4 ! 0
	fadd.s	%f0, %f4, %f0 ! 577
	lw	a0, sp, 0 ! 0
	std	%f0, [a0 + 0] ! 577
	ldd	[sp + 72], %f0 ! 0
	sw	sp, ra, 164
	addi	sp, sp, 168
	call	min_caml_fsqr
	addi	sp, sp, -168
	lw	ra, sp, 164
	ldd	[sp + 136], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 578
	ldd	[sp + 64], %f4 ! 0
	std	%f0, [sp + 160] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 172
	addi	sp, sp, 176
	call	min_caml_fsqr
	addi	sp, sp, -176
	lw	ra, sp, 172
	ldd	[sp + 128], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 578
	ldd	[sp + 160], %f4 ! 0
	fadd.s	%f0, %f4, %f0 ! 578
	ldd	[sp + 104], %f4 ! 0
	std	%f0, [sp + 168] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 180
	addi	sp, sp, 184
	call	min_caml_fsqr
	addi	sp, sp, -184
	lw	ra, sp, 180
	ldd	[sp + 112], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 578
	ldd	[sp + 168], %f4 ! 0
	fadd.s	%f0, %f4, %f0 ! 578
	lw	a0, sp, 0 ! 0
	std	%f0, [a0 + 8] ! 578
	ldd	[sp + 56], %f0 ! 0
	sw	sp, ra, 180
	addi	sp, sp, 184
	call	min_caml_fsqr
	addi	sp, sp, -184
	lw	ra, sp, 180
	ldd	[sp + 136], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 579
	ldd	[sp + 48], %f4 ! 0
	std	%f0, [sp + 176] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 188
	addi	sp, sp, 192
	call	min_caml_fsqr
	addi	sp, sp, -192
	lw	ra, sp, 188
	ldd	[sp + 128], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 579
	ldd	[sp + 176], %f4 ! 0
	fadd.s	%f0, %f4, %f0 ! 579
	ldd	[sp + 96], %f4 ! 0
	std	%f0, [sp + 184] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 196
	addi	sp, sp, 200
	call	min_caml_fsqr
	addi	sp, sp, -200
	lw	ra, sp, 196
	ldd	[sp + 112], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 579
	ldd	[sp + 184], %f4 ! 0
	fadd.s	%f0, %f4, %f0 ! 579
	lw	a0, sp, 0 ! 0
	std	%f0, [a0 + 16] ! 579
	li	a0, l.6442 ! 582
	ldd	[a0 + 0], %f0 ! 582
	ldd	[sp + 72], %f4 ! 0
	ldd	[sp + 136], %f6 ! 0
	fmul.s	%f8, %f6, %f4 ! 582
	ldd	[sp + 56], %f10 ! 0
	fmul.s	%f8, %f8, %f10 ! 582
	ldd	[sp + 64], %f12 ! 0
	ldd	[sp + 128], %f14 ! 0
	fmul.s	%f16, %f14, %f12 ! 582
	ldd	[sp + 48], %f18 ! 0
	fmul.s	%f16, %f16, %f18 ! 582
	fadd.s	%f8, %f8, %f16 ! 582
	ldd	[sp + 104], %f16 ! 0
	fmul.s	%f20, %f2, %f16 ! 582
	ldd	[sp + 96], %f22 ! 0
	fmul.s	%f20, %f20, %f22 ! 582
	fadd.s	%f8, %f8, %f20 ! 582
	fmul.s	%f0, %f0, %f8 ! 582
	lw	a0, sp, 4 ! 0
	std	%f0, [a0 + 0] ! 582
	li	a1, l.6442 ! 583
	ldd	[a1 + 0], %f0 ! 583
	ldd	[sp + 88], %f8 ! 0
	fmul.s	%f20, %f6, %f8 ! 583
	fmul.s	%f10, %f20, %f10 ! 583
	ldd	[sp + 80], %f20 ! 0
	fmul.s	%f24, %f14, %f20 ! 583
	fmul.s	%f18, %f24, %f18 ! 583
	fadd.s	%f10, %f10, %f18 ! 583
	ldd	[sp + 120], %f18 ! 0
	fmul.s	%f24, %f2, %f18 ! 583
	fmul.s	%f22, %f24, %f22 ! 583
	fadd.s	%f10, %f10, %f22 ! 583
	fmul.s	%f0, %f0, %f10 ! 583
	std	%f0, [a0 + 8] ! 583
	li	a1, l.6442 ! 584
	ldd	[a1 + 0], %f0 ! 584
	fmul.s	%f6, %f6, %f8 ! 584
	fmul.s	%f4, %f6, %f4 ! 584
	fmul.s	%f6, %f14, %f20 ! 584
	fmul.s	%f6, %f6, %f12 ! 584
	fadd.s	%f4, %f4, %f6 ! 584
	fmul.s	%f2, %f2, %f18 ! 584
	fmul.s	%f2, %f2, %f16 ! 584
	fadd.s	%f2, %f4, %f2 ! 584
	fmul.s	%f0, %f0, %f2 ! 584
	std	%f0, [a0 + 16] ! 584
	ret ! 584
read_nth_object.2743:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 592
	bne	a0, a1, be_else.8516
	li	a0, 0 ! 668
	ret ! 668
be_else.8516:
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_read_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_read_int
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 3 ! 598
	li	a2, l.6305 ! 598
	ldd	[a2 + 0], %f0 ! 598
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_create_float_array
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20 ! 0
	std	%f0, [a0 + 0] ! 599
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20 ! 0
	std	%f0, [a0 + 8] ! 600
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20 ! 0
	std	%f0, [a0 + 16] ! 601
	li	a1, 3 ! 603
	li	a2, l.6305 ! 603
	ldd	[a2 + 0], %f0 ! 603
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_float_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	std	%f0, [a0 + 0] ! 604
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	std	%f0, [a0 + 8] ! 605
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	std	%f0, [a0 + 16] ! 606
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_read_float
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fisneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 2 ! 610
	li	a2, l.6305 ! 610
	ldd	[a2 + 0], %f0 ! 610
	sw	sp, a0, 28 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_read_float
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0
	std	%f0, [a0 + 0] ! 611
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_read_float
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0
	std	%f0, [a0 + 8] ! 612
	li	a1, 3 ! 614
	li	a2, l.6305 ! 614
	ldd	[a2 + 0], %f0 ! 614
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_create_float_array
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 36 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 36 ! 0
	std	%f0, [a0 + 0] ! 615
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 36 ! 0
	std	%f0, [a0 + 8] ! 616
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 36 ! 0
	std	%f0, [a0 + 16] ! 617
	li	a1, 3 ! 619
	li	a2, l.6305 ! 619
	ldd	[a2 + 0], %f0 ! 619
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_create_float_array
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 620
	lw	a2, sp, 16 ! 0
	bne	a2, a1, be_else.8517
	b	be_cont.8518
be_else.8517:
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	rad.2734
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	std	%f0, [a0 + 0] ! 622
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	rad.2734
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	std	%f0, [a0 + 8] ! 623
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_read_float
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	rad.2734
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	std	%f0, [a0 + 16] ! 624
be_cont.8518:
	li	a1, 2 ! 631
	lw	a2, sp, 8 ! 0
	bne	a2, a1, be_else.8519
	li	a1, 1 ! 631
	b	be_cont.8520
be_else.8519:
	lw	a1, sp, 28 ! 0
be_cont.8520:
	li	a3, 4 ! 632
	li	%l0, l.6305 ! 632
	ldd	[%l0 + 0], %f0 ! 632
	sw	sp, a1, 44 ! 0
	sw	sp, a0, 40 ! 0
	mv	a0, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_create_float_array
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, %i1 ! 635
	addi	%i1, %i1, 48 ! 635
	sw	a1, a0, 40 ! 635
	lw	a0, sp, 40 ! 0
	sw	a1, a0, 36 ! 635
	lw	a2, sp, 36 ! 0
	sw	a1, a2, 32 ! 635
	lw	a2, sp, 32 ! 0
	sw	a1, a2, 28 ! 635
	lw	a2, sp, 44 ! 0
	sw	a1, a2, 24 ! 635
	lw	a2, sp, 24 ! 0
	sw	a1, a2, 20 ! 635
	lw	a2, sp, 20 ! 0
	sw	a1, a2, 16 ! 635
	lw	a3, sp, 16 ! 0
	sw	a1, a3, 12 ! 635
	lw	%l0, sp, 12 ! 0
	sw	a1, %l0, 8 ! 635
	lw	%l0, sp, 8 ! 0
	sw	a1, %l0, 4 ! 635
	lw	%l1, sp, 4 ! 0
	sw	a1, %l1, 0 ! 635
	li	%l1, min_caml_objects ! 643
	lw	%l2, sp, 0 ! 0
	slli	%l2, %l2, 2 ! 643
! later
	li	a1, 3 ! 645
	bne	%l0, a1, be_else.8521
	ldd	[a2 + 0], %f0 ! 648
	std	%f0, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	min_caml_fiszero
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 649
	bne	a0, a1, be_else.8523
	ldd	[sp + 48], %f0 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	sgn.2609
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	std	%f0, [sp + 56] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fsqr
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 649
	b	be_cont.8524
be_else.8523:
	li	a0, l.6305 ! 649
	ldd	[a0 + 0], %f0 ! 649
be_cont.8524:
	lw	a0, sp, 20 ! 0
	std	%f0, [a0 + 0] ! 649
	ldd	[a0 + 8], %f0 ! 650
	std	%f0, [sp + 64] ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fiszero
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 651
	bne	a0, a1, be_else.8525
	ldd	[sp + 64], %f0 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	sgn.2609
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 64], %f2 ! 0
	std	%f0, [sp + 72] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fsqr
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 72], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 651
	b	be_cont.8526
be_else.8525:
	li	a0, l.6305 ! 651
	ldd	[a0 + 0], %f0 ! 651
be_cont.8526:
	lw	a0, sp, 20 ! 0
	std	%f0, [a0 + 8] ! 651
	ldd	[a0 + 16], %f0 ! 652
	std	%f0, [sp + 80] ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	min_caml_fiszero
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 653
	bne	a0, a1, be_else.8527
	ldd	[sp + 80], %f0 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	sgn.2609
	addi	sp, sp, -96
	lw	ra, sp, 92
	ldd	[sp + 80], %f2 ! 0
	std	%f0, [sp + 88] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	min_caml_fsqr
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 88], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 653
	b	be_cont.8528
be_else.8527:
	li	a0, l.6305 ! 653
	ldd	[a0 + 0], %f0 ! 653
be_cont.8528:
	lw	a0, sp, 20 ! 0
	std	%f0, [a0 + 16] ! 653
	b	be_cont.8522
be_else.8521:
	li	a1, 2 ! 655
	bne	%l0, a1, be_else.8529
	li	a1, 0 ! 657
	lw	%l0, sp, 28 ! 0
	bne	%l0, a1, be_else.8531
	li	a1, 1 ! 657
	b	be_cont.8532
be_else.8531:
	li	a1, 0 ! 657
be_cont.8532:
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	vecunit_sgn.2635
	addi	sp, sp, -104
	lw	ra, sp, 100
	b	be_cont.8530
be_else.8529:
be_cont.8530:
be_cont.8522:
	li	a0, 0 ! 661
	lw	a1, sp, 16 ! 0
	bne	a1, a0, be_else.8533
	b	be_cont.8534
be_else.8533:
	lw	a0, sp, 20 ! 0
	lw	a1, sp, 40 ! 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	rotate_quadratic_matrix.2740
	addi	sp, sp, -104
	lw	ra, sp, 100
be_cont.8534:
	li	a0, 1 ! 665
	ret ! 665
read_object.2745:
	li	a1, 60 ! 673
	bg	a0, a1, ble_else.8535
	ret ! 678
ble_else.8535:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_nth_object.2743
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 0 ! 674
	bne	a0, a1, be_else.8537
	li	a0, min_caml_n_objects ! 677
	lw	a1, sp, 0 ! 0
	sw	a0, a1, 0 ! 677
	ret ! 677
be_else.8537:
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 1 ! 675
	j	read_object.2745
read_all_object.2747:
	li	a0, 0 ! 682
	j	read_object.2745
read_net_item.2749:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_read_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, -1 ! 690
	bne	a0, a1, be_else.8539
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 1 ! 690
	li	a1, -1 ! 690
	j	min_caml_create_array
be_else.8539:
	lw	a1, sp, 0 ! 0
	addi	a2, a1, 1 ! 692
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	read_net_item.2749
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 693
	lw	a2, sp, 4 ! 0
! later
	ret ! 693
read_or_network.2751:
	li	a1, 0 ! 697
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_net_item.2749
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	lw	a0, a1, 0 ! 698
	li	a2, -1 ! 698
	bne	a0, a2, be_else.8540
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 1 ! 699
	j	min_caml_create_array
be_else.8540:
	lw	a0, sp, 0 ! 0
	addi	a2, a0, 1 ! 701
	sw	sp, a1, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	read_or_network.2751
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 702
	lw	a2, sp, 4 ! 0
! later
	ret ! 702
read_and_network.2753:
	li	a1, 0 ! 706
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_net_item.2749
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, a0, 0 ! 707
	li	a2, -1 ! 707
	bne	a1, a2, be_else.8541
	ret ! 707
be_else.8541:
	li	a1, min_caml_and_net ! 709
	lw	a2, sp, 0 ! 0
	slli	a3, a2, 2 ! 709
! later
	addi	a0, a2, 1 ! 710
	j	read_and_network.2753
read_parameter.2755:
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_screen_settings.2736
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_light.2738
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_all_object.2747
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 0 ! 719
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_and_network.2753
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_or_net ! 720
	li	a1, 0 ! 720
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	read_or_network.2751
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 0 ! 720
	ret ! 720
solver_rect_surface.2757:
	slli	%l1, a2, 3 ! 741
	ldd	[a1 + %l1], %f6 ! 741
	std	%f4, [sp + 0] ! 0
	sw	sp, %l0, 8 ! 0
	std	%f2, [sp + 16] ! 0
	sw	sp, a3, 24 ! 0
	std	%f0, [sp + 32] ! 0
	sw	sp, a1, 40 ! 0
	sw	sp, a2, 44 ! 0
	sw	sp, a0, 48 ! 0
	fmv.s	%f0, %f6
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_fiszero
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 741
	bne	a0, a1, be_else.8546
	lw	a0, sp, 48 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_param_abc.2679
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 48 ! 0
	sw	sp, a0, 52 ! 0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_isinvert.2669
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 44 ! 0
	slli	a2, a1, 3 ! 743
	lw	a3, sp, 40 ! 0
	ldd	[a3 + a2], %f0 ! 743
	sw	sp, a0, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	min_caml_fisneg
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a1, a0
	lw	a0, sp, 56 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	xor.2606
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a1, sp, 44 ! 0
	slli	a2, a1, 3 ! 743
	lw	a3, sp, 52 ! 0
	ldd	[a3 + a2], %f0 ! 743
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	fneg_cond.2611
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 32], %f2 ! 0
	fsub.s	%f0, %f0, %f2 ! 745
	lw	a0, sp, 44 ! 0
	slli	a0, a0, 3 ! 745
	lw	a1, sp, 40 ! 0
	ldd	[a1 + a0], %f2 ! 745
	fdiv.s	%f0, %f0, %f2 ! 745
	lw	a0, sp, 24 ! 0
	slli	a2, a0, 3 ! 746
	ldd	[a1 + a2], %f2 ! 746
	fmul.s	%f2, %f0, %f2 ! 746
	ldd	[sp + 16], %f4 ! 0
	fadd.s	%f2, %f2, %f4 ! 746
	std	%f0, [sp + 64] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fabs
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 24 ! 0
	slli	a0, a0, 3 ! 746
	lw	a1, sp, 52 ! 0
	ldd	[a1 + a0], %f2 ! 746
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fless
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 746
	bne	a0, a1, be_else.8548
	li	a0, 0 ! 750
	ret ! 750
be_else.8548:
	lw	a0, sp, 8 ! 0
	slli	a1, a0, 3 ! 747
	lw	a2, sp, 40 ! 0
	ldd	[a2 + a1], %f0 ! 747
	ldd	[sp + 64], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 747
	ldd	[sp + 0], %f4 ! 0
	fadd.s	%f0, %f0, %f4 ! 747
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fabs
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 8 ! 0
	slli	a0, a0, 3 ! 747
	lw	a1, sp, 52 ! 0
	ldd	[a1 + a0], %f2 ! 747
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fless
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 747
	bne	a0, a1, be_else.8549
	li	a0, 0 ! 749
	ret ! 749
be_else.8549:
	li	a0, min_caml_solver_dist ! 748
	ldd	[sp + 64], %f0 ! 0
	std	%f0, [a0 + 0] ! 748
	li	a0, 1 ! 748
	ret ! 748
be_else.8546:
	li	a0, 0 ! 741
	ret ! 741
solver_rect.2766:
	li	a2, 0 ! 756
	li	a3, 1 ! 756
	li	%l0, 2 ! 756
	std	%f0, [sp + 0] ! 0
	std	%f4, [sp + 8] ! 0
	std	%f2, [sp + 16] ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	solver_rect_surface.2757
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 756
	bne	a0, a1, be_else.8550
	li	a2, 1 ! 757
	li	a3, 2 ! 757
	li	%l0, 0 ! 757
	ldd	[sp + 16], %f0 ! 0
	ldd	[sp + 8], %f2 ! 0
	ldd	[sp + 0], %f4 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	solver_rect_surface.2757
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 757
	bne	a0, a1, be_else.8551
	li	a2, 2 ! 758
	li	a3, 0 ! 758
	li	%l0, 1 ! 758
	ldd	[sp + 8], %f0 ! 0
	ldd	[sp + 0], %f2 ! 0
	ldd	[sp + 16], %f4 ! 0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	solver_rect_surface.2757
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 758
	bne	a0, a1, be_else.8552
	li	a0, 0 ! 759
	ret ! 759
be_else.8552:
	li	a0, 3 ! 758
	ret ! 758
be_else.8551:
	li	a0, 2 ! 757
	ret ! 757
be_else.8550:
	li	a0, 1 ! 756
	ret ! 756
solver_surface.2772:
	std	%f4, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_param_abc.2679
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 24 ! 0
	sw	sp, a1, 28 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	veciprod.2638
	addi	sp, sp, -40
	lw	ra, sp, 36
	std	%f0, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fispos
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 769
	bne	a0, a1, be_else.8553
	li	a0, 0 ! 772
	ret ! 772
be_else.8553:
	li	a0, min_caml_solver_dist ! 770
	ldd	[sp + 16], %f0 ! 0
	ldd	[sp + 8], %f2 ! 0
	ldd	[sp + 0], %f4 ! 0
	lw	a1, sp, 28 ! 0
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	veciprod2.2641
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 770
	lw	a0, sp, 40 ! 0
	std	%f0, [a0 + 0] ! 770
	li	a0, 1 ! 771
	ret ! 771
quadratic.2778:
	std	%f0, [sp + 0] ! 0
	std	%f4, [sp + 8] ! 0
	std	%f2, [sp + 16] ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_param_a.2673
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 780
	ldd	[sp + 16], %f2 ! 0
	std	%f0, [sp + 40] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_fsqr
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_b.2675
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 780
	ldd	[sp + 40], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 780
	ldd	[sp + 8], %f2 ! 0
	std	%f0, [sp + 56] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fsqr
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 64] ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	o_param_c.2677
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 64], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 780
	ldd	[sp + 56], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 780
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_isrot.2671
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 782
	bne	a0, a1, be_else.8555
	ldd	[sp + 72], %f0 ! 0
	ret ! 783
be_else.8555:
	ldd	[sp + 8], %f0 ! 0
	ldd	[sp + 16], %f2 ! 0
	fmul.s	%f4, %f2, %f0 ! 786
	lw	a0, sp, 24 ! 0
	std	%f4, [sp + 80] ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	o_param_r1.2697
	addi	sp, sp, -96
	lw	ra, sp, 92
	ldd	[sp + 80], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 786
	ldd	[sp + 72], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 785
	ldd	[sp + 0], %f2 ! 0
	ldd	[sp + 8], %f4 ! 0
	fmul.s	%f4, %f4, %f2 ! 787
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 88] ! 0
	std	%f4, [sp + 96] ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	o_param_r2.2699
	addi	sp, sp, -112
	lw	ra, sp, 108
	ldd	[sp + 96], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 787
	ldd	[sp + 88], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 785
	ldd	[sp + 16], %f2 ! 0
	ldd	[sp + 0], %f4 ! 0
	fmul.s	%f2, %f4, %f2 ! 788
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 104] ! 0
	std	%f2, [sp + 112] ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	o_param_r3.2701
	addi	sp, sp, -128
	lw	ra, sp, 124
	ldd	[sp + 112], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 788
	ldd	[sp + 104], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 785
	ret ! 785
bilinear.2783:
	fmul.s	%f12, %f0, %f6 ! 795
	std	%f6, [sp + 0] ! 0
	std	%f0, [sp + 8] ! 0
	std	%f10, [sp + 16] ! 0
	std	%f4, [sp + 24] ! 0
	sw	sp, a0, 32 ! 0
	std	%f8, [sp + 40] ! 0
	std	%f2, [sp + 48] ! 0
	std	%f12, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_param_a.2673
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 795
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 48], %f4 ! 0
	fmul.s	%f6, %f4, %f2 ! 796
	lw	a0, sp, 32 ! 0
	std	%f0, [sp + 64] ! 0
	std	%f6, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_param_b.2675
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 72], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 796
	ldd	[sp + 64], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 795
	ldd	[sp + 16], %f2 ! 0
	ldd	[sp + 24], %f4 ! 0
	fmul.s	%f6, %f4, %f2 ! 797
	lw	a0, sp, 32 ! 0
	std	%f0, [sp + 80] ! 0
	std	%f6, [sp + 88] ! 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	o_param_c.2677
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 88], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 797
	ldd	[sp + 80], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 795
	lw	a0, sp, 32 ! 0
	std	%f0, [sp + 96] ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	o_isrot.2671
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 799
	bne	a0, a1, be_else.8557
	ldd	[sp + 96], %f0 ! 0
	ret ! 800
be_else.8557:
	ldd	[sp + 40], %f0 ! 0
	ldd	[sp + 24], %f2 ! 0
	fmul.s	%f4, %f2, %f0 ! 803
	ldd	[sp + 16], %f6 ! 0
	ldd	[sp + 48], %f8 ! 0
	fmul.s	%f10, %f8, %f6 ! 803
	fadd.s	%f4, %f4, %f10 ! 803
	lw	a0, sp, 32 ! 0
	std	%f4, [sp + 104] ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	o_param_r1.2697
	addi	sp, sp, -120
	lw	ra, sp, 116
	ldd	[sp + 104], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 803
	ldd	[sp + 16], %f2 ! 0
	ldd	[sp + 8], %f4 ! 0
	fmul.s	%f2, %f4, %f2 ! 804
	ldd	[sp + 0], %f6 ! 0
	ldd	[sp + 24], %f8 ! 0
	fmul.s	%f8, %f8, %f6 ! 804
	fadd.s	%f2, %f2, %f8 ! 804
	lw	a0, sp, 32 ! 0
	std	%f0, [sp + 112] ! 0
	std	%f2, [sp + 120] ! 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	o_param_r2.2699
	addi	sp, sp, -136
	lw	ra, sp, 132
	ldd	[sp + 120], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 804
	ldd	[sp + 112], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 803
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 8], %f4 ! 0
	fmul.s	%f2, %f4, %f2 ! 805
	ldd	[sp + 0], %f4 ! 0
	ldd	[sp + 48], %f6 ! 0
	fmul.s	%f4, %f6, %f4 ! 805
	fadd.s	%f2, %f2, %f4 ! 805
	lw	a0, sp, 32 ! 0
	std	%f0, [sp + 128] ! 0
	std	%f2, [sp + 136] ! 0
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	o_param_r3.2701
	addi	sp, sp, -152
	lw	ra, sp, 148
	ldd	[sp + 136], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 805
	ldd	[sp + 128], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 803
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	min_caml_fhalf
	addi	sp, sp, -152
	lw	ra, sp, 148
	ldd	[sp + 96], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 802
	ret ! 802
solver_second.2791:
	ldd	[a1 + 0], %f6 ! 820
	ldd	[a1 + 8], %f8 ! 820
	ldd	[a1 + 16], %f10 ! 820
	std	%f4, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, a1, 28 ! 0
	fmv.s	%f4, %f10
	fmv.s	%f2, %f8
	fmv.s	%f0, %f6
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	quadratic.2778
	addi	sp, sp, -40
	lw	ra, sp, 36
	std	%f0, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fiszero
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 822
	bne	a0, a1, be_else.8558
	lw	a0, sp, 28 ! 0
	ldd	[a0 + 0], %f0 ! 827
	ldd	[a0 + 8], %f2 ! 827
	ldd	[a0 + 16], %f4 ! 827
	ldd	[sp + 16], %f6 ! 0
	ldd	[sp + 8], %f8 ! 0
	ldd	[sp + 0], %f10 ! 0
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	bilinear.2783
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 16], %f2 ! 0
	ldd	[sp + 8], %f4 ! 0
	ldd	[sp + 0], %f6 ! 0
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 40] ! 0
	fmv.s	%f0, %f2
	fmv.s	%f4, %f6
	fmv.s	%f2, %f4
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	quadratic.2778
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_form.2665
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 3 ! 830
	bne	a0, a1, be_else.8559
	li	a0, l.6307 ! 830
	ldd	[a0 + 0], %f0 ! 830
	ldd	[sp + 48], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 830
	b	be_cont.8560
be_else.8559:
	ldd	[sp + 48], %f0 ! 0
be_cont.8560:
	ldd	[sp + 40], %f2 ! 0
	std	%f0, [sp + 56] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fsqr
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	ldd	[sp + 32], %f4 ! 0
	fmul.s	%f2, %f4, %f2 ! 832
	fsub.s	%f0, %f0, %f2 ! 832
	std	%f0, [sp + 64] ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fispos
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 834
	bne	a0, a1, be_else.8561
	li	a0, 0 ! 840
	ret ! 840
be_else.8561:
	ldd	[sp + 64], %f0 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_sqrt
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 24 ! 0
	std	%f0, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_isinvert.2669
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 836
	bne	a0, a1, be_else.8562
	ldd	[sp + 72], %f0 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fneg
	addi	sp, sp, -88
	lw	ra, sp, 84
	b	be_cont.8563
be_else.8562:
	ldd	[sp + 72], %f0 ! 0
be_cont.8563:
	li	a0, min_caml_solver_dist ! 837
	ldd	[sp + 40], %f2 ! 0
	fsub.s	%f0, %f0, %f2 ! 837
	ldd	[sp + 32], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 837
	std	%f0, [a0 + 0] ! 837
	li	a0, 1 ! 837
	ret ! 837
be_else.8558:
	li	a0, 0 ! 823
	ret ! 823
solver.2797:
	li	a3, min_caml_objects ! 846
	slli	a0, a0, 2 ! 846
! later
	ldd	[a2 + 0], %f0 ! 848
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_param_x.2681
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 848
	lw	a0, sp, 8 ! 0
	ldd	[a0 + 8], %f2 ! 849
	lw	a1, sp, 4 ! 0
	std	%f0, [sp + 24] ! 0
	std	%f2, [sp + 32] ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_param_y.2683
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 849
	lw	a0, sp, 8 ! 0
	ldd	[a0 + 16], %f2 ! 850
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 40] ! 0
	std	%f2, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_z.2685
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 850
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_form.2665
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 1 ! 853
	bne	a0, a1, be_else.8565
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 56], %f4 ! 0
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 0 ! 0
	j	solver_rect.2766
be_else.8565:
	li	a1, 2 ! 854
	bne	a0, a1, be_else.8566
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 56], %f4 ! 0
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 0 ! 0
	j	solver_surface.2772
be_else.8566:
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 56], %f4 ! 0
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 0 ! 0
	j	solver_second.2791
solver_rect_fast.2801:
	ldd	[a2 + 0], %f6 ! 878
	fsub.s	%f6, %f6, %f0 ! 878
	ldd	[a2 + 8], %f8 ! 878
	fmul.s	%f6, %f6, %f8 ! 878
	ldd	[a1 + 8], %f8 ! 880
	fmul.s	%f8, %f6, %f8 ! 880
	fadd.s	%f8, %f8, %f2 ! 880
	std	%f0, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	sw	sp, a2, 16 ! 0
	std	%f4, [sp + 24] ! 0
	std	%f6, [sp + 32] ! 0
	sw	sp, a1, 40 ! 0
	sw	sp, a0, 44 ! 0
	fmv.s	%f0, %f8
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_fabs
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_b.2675
	addi	sp, sp, -64
	lw	ra, sp, 60
	fmv.s	%f2, %f0
	ldd	[sp + 48], %f0 ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	min_caml_fless
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 0 ! 880
	bne	a0, a1, be_else.8568
	li	a0, 0 ! 884
	b	be_cont.8569
be_else.8568:
	lw	a0, sp, 40 ! 0
	ldd	[a0 + 16], %f0 ! 881
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 881
	ldd	[sp + 24], %f4 ! 0
	fadd.s	%f0, %f0, %f4 ! 881
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	min_caml_fabs
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_param_c.2677
	addi	sp, sp, -72
	lw	ra, sp, 68
	fmv.s	%f2, %f0
	ldd	[sp + 56], %f0 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fless
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 881
	bne	a0, a1, be_else.8570
	li	a0, 0 ! 883
	b	be_cont.8571
be_else.8570:
	lw	a0, sp, 16 ! 0
	ldd	[a0 + 8], %f0 ! 882
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fiszero
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 882
	bne	a0, a1, be_else.8572
	li	a0, 1 ! 882
	b	be_cont.8573
be_else.8572:
	li	a0, 0 ! 882
be_cont.8573:
be_cont.8571:
be_cont.8569:
	li	a1, 0 ! 879
	bne	a0, a1, be_else.8574
	lw	a0, sp, 16 ! 0
	ldd	[a0 + 16], %f0 ! 887
	ldd	[sp + 8], %f2 ! 0
	fsub.s	%f0, %f0, %f2 ! 887
	ldd	[a0 + 24], %f4 ! 887
	fmul.s	%f0, %f0, %f4 ! 887
	lw	a1, sp, 40 ! 0
	ldd	[a1 + 0], %f4 ! 889
	fmul.s	%f4, %f0, %f4 ! 889
	ldd	[sp + 0], %f6 ! 0
	fadd.s	%f4, %f4, %f6 ! 889
	std	%f0, [sp + 64] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fabs
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_param_a.2673
	addi	sp, sp, -88
	lw	ra, sp, 84
	fmv.s	%f2, %f0
	ldd	[sp + 72], %f0 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fless
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 889
	bne	a0, a1, be_else.8575
	li	a0, 0 ! 893
	b	be_cont.8576
be_else.8575:
	lw	a0, sp, 40 ! 0
	ldd	[a0 + 16], %f0 ! 890
	ldd	[sp + 64], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 890
	ldd	[sp + 24], %f4 ! 0
	fadd.s	%f0, %f0, %f4 ! 890
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fabs
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 80] ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	o_param_c.2677
	addi	sp, sp, -96
	lw	ra, sp, 92
	fmv.s	%f2, %f0
	ldd	[sp + 80], %f0 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	min_caml_fless
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 890
	bne	a0, a1, be_else.8577
	li	a0, 0 ! 892
	b	be_cont.8578
be_else.8577:
	lw	a0, sp, 16 ! 0
	ldd	[a0 + 24], %f0 ! 891
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	min_caml_fiszero
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 891
	bne	a0, a1, be_else.8579
	li	a0, 1 ! 891
	b	be_cont.8580
be_else.8579:
	li	a0, 0 ! 891
be_cont.8580:
be_cont.8578:
be_cont.8576:
	li	a1, 0 ! 888
	bne	a0, a1, be_else.8581
	lw	a0, sp, 16 ! 0
	ldd	[a0 + 32], %f0 ! 896
	ldd	[sp + 24], %f2 ! 0
	fsub.s	%f0, %f0, %f2 ! 896
	ldd	[a0 + 40], %f2 ! 896
	fmul.s	%f0, %f0, %f2 ! 896
	lw	a1, sp, 40 ! 0
	ldd	[a1 + 0], %f2 ! 898
	fmul.s	%f2, %f0, %f2 ! 898
	ldd	[sp + 0], %f4 ! 0
	fadd.s	%f2, %f2, %f4 ! 898
	std	%f0, [sp + 88] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	min_caml_fabs
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 96] ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	o_param_a.2673
	addi	sp, sp, -112
	lw	ra, sp, 108
	fmv.s	%f2, %f0
	ldd	[sp + 96], %f0 ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	min_caml_fless
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a1, 0 ! 898
	bne	a0, a1, be_else.8582
	li	a0, 0 ! 902
	b	be_cont.8583
be_else.8582:
	lw	a0, sp, 40 ! 0
	ldd	[a0 + 8], %f0 ! 899
	ldd	[sp + 88], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 899
	ldd	[sp + 8], %f4 ! 0
	fadd.s	%f0, %f0, %f4 ! 899
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	min_caml_fabs
	addi	sp, sp, -112
	lw	ra, sp, 108
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 104] ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	o_param_b.2675
	addi	sp, sp, -120
	lw	ra, sp, 116
	fmv.s	%f2, %f0
	ldd	[sp + 104], %f0 ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	min_caml_fless
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 899
	bne	a0, a1, be_else.8584
	li	a0, 0 ! 901
	b	be_cont.8585
be_else.8584:
	lw	a0, sp, 16 ! 0
	ldd	[a0 + 40], %f0 ! 900
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	min_caml_fiszero
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 900
	bne	a0, a1, be_else.8586
	li	a0, 1 ! 900
	b	be_cont.8587
be_else.8586:
	li	a0, 0 ! 900
be_cont.8587:
be_cont.8585:
be_cont.8583:
	li	a1, 0 ! 897
	bne	a0, a1, be_else.8588
	li	a0, 0 ! 906
	ret ! 906
be_else.8588:
	li	a0, min_caml_solver_dist ! 904
	ldd	[sp + 88], %f0 ! 0
	std	%f0, [a0 + 0] ! 904
	li	a0, 3 ! 904
	ret ! 904
be_else.8581:
	li	a0, min_caml_solver_dist ! 895
	ldd	[sp + 64], %f0 ! 0
	std	%f0, [a0 + 0] ! 895
	li	a0, 2 ! 895
	ret ! 895
be_else.8574:
	li	a0, min_caml_solver_dist ! 886
	ldd	[sp + 32], %f0 ! 0
	std	%f0, [a0 + 0] ! 886
	li	a0, 1 ! 886
	ret ! 886
solver_surface_fast.2808:
	ldd	[a1 + 0], %f6 ! 911
	std	%f4, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, a1, 24 ! 0
	fmv.s	%f0, %f6
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fisneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 911
	bne	a0, a1, be_else.8589
	li	a0, 0 ! 915
	ret ! 915
be_else.8589:
	li	a0, min_caml_solver_dist ! 912
	lw	a1, sp, 24 ! 0
	ldd	[a1 + 8], %f0 ! 913
	ldd	[sp + 16], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 913
	ldd	[a1 + 16], %f2 ! 913
	ldd	[sp + 8], %f4 ! 0
	fmul.s	%f2, %f2, %f4 ! 913
	fadd.s	%f0, %f0, %f2 ! 913
	ldd	[a1 + 24], %f2 ! 913
	ldd	[sp + 0], %f4 ! 0
	fmul.s	%f2, %f2, %f4 ! 913
	fadd.s	%f0, %f0, %f2 ! 913
	std	%f0, [a0 + 0] ! 912
	li	a0, 1 ! 914
	ret ! 914
solver_second_fast.2814:
	ldd	[a1 + 0], %f6 ! 921
	std	%f6, [sp + 0] ! 0
	sw	sp, a0, 8 ! 0
	std	%f4, [sp + 16] ! 0
	std	%f2, [sp + 24] ! 0
	std	%f0, [sp + 32] ! 0
	sw	sp, a1, 40 ! 0
	fmv.s	%f0, %f6
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fiszero
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 922
	bne	a0, a1, be_else.8591
	lw	a0, sp, 40 ! 0
	ldd	[a0 + 8], %f0 ! 925
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 925
	ldd	[a0 + 16], %f4 ! 925
	ldd	[sp + 24], %f6 ! 0
	fmul.s	%f4, %f4, %f6 ! 925
	fadd.s	%f0, %f0, %f4 ! 925
	ldd	[a0 + 24], %f4 ! 925
	ldd	[sp + 16], %f8 ! 0
	fmul.s	%f4, %f4, %f8 ! 925
	fadd.s	%f0, %f0, %f4 ! 925
	lw	a1, sp, 8 ! 0
	std	%f0, [sp + 48] ! 0
	mv	a0, a1
	fmv.s	%f4, %f8
	fmv.s	%f0, %f2
	fmv.s	%f2, %f6
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	quadratic.2778
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 8 ! 0
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_form.2665
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 3 ! 927
	bne	a0, a1, be_else.8593
	li	a0, l.6307 ! 927
	ldd	[a0 + 0], %f0 ! 927
	ldd	[sp + 56], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 927
	b	be_cont.8594
be_else.8593:
	ldd	[sp + 56], %f0 ! 0
be_cont.8594:
	ldd	[sp + 48], %f2 ! 0
	std	%f0, [sp + 64] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fsqr
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 64], %f2 ! 0
	ldd	[sp + 0], %f4 ! 0
	fmul.s	%f2, %f4, %f2 ! 928
	fsub.s	%f0, %f0, %f2 ! 928
	std	%f0, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fispos
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 929
	bne	a0, a1, be_else.8595
	li	a0, 0 ! 935
	ret ! 935
be_else.8595:
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_isinvert.2669
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 930
	bne	a0, a1, be_else.8596
	li	a0, min_caml_solver_dist ! 933
	ldd	[sp + 72], %f0 ! 0
	sw	sp, a0, 80 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_sqrt
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 48], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 933
	lw	a0, sp, 40 ! 0
	ldd	[a0 + 32], %f2 ! 933
	fmul.s	%f0, %f0, %f2 ! 933
	lw	a0, sp, 80 ! 0
	std	%f0, [a0 + 0] ! 933
	b	be_cont.8597
be_else.8596:
	li	a0, min_caml_solver_dist ! 931
	ldd	[sp + 72], %f0 ! 0
	sw	sp, a0, 84 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	min_caml_sqrt
	addi	sp, sp, -96
	lw	ra, sp, 92
	ldd	[sp + 48], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 931
	lw	a0, sp, 40 ! 0
	ldd	[a0 + 32], %f2 ! 931
	fmul.s	%f0, %f0, %f2 ! 931
	lw	a0, sp, 84 ! 0
	std	%f0, [a0 + 0] ! 931
be_cont.8597:
	li	a0, 1 ! 934
	ret ! 934
be_else.8591:
	li	a0, 0 ! 923
	ret ! 923
solver_fast.2820:
	li	a3, min_caml_objects ! 940
	slli	%l0, a0, 2 ! 940
! later
	ldd	[a2 + 0], %f0 ! 941
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a2, 12 ! 0
	std	%f0, [sp + 16] ! 0
	mv	a0, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_param_x.2681
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 941
	lw	a0, sp, 12 ! 0
	ldd	[a0 + 8], %f2 ! 942
	lw	a1, sp, 8 ! 0
	std	%f0, [sp + 24] ! 0
	std	%f2, [sp + 32] ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_param_y.2683
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 942
	lw	a0, sp, 12 ! 0
	ldd	[a0 + 16], %f2 ! 943
	lw	a0, sp, 8 ! 0
	std	%f0, [sp + 40] ! 0
	std	%f2, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_z.2685
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 943
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	d_const.2726
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 945
! later
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 64 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_form.2665
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 1 ! 947
	bne	a0, a1, be_else.8598
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	d_vec.2724
	addi	sp, sp, -72
	lw	ra, sp, 68
	mv	a1, a0
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 56], %f4 ! 0
	lw	a0, sp, 8 ! 0
	lw	a2, sp, 64 ! 0
	j	solver_rect_fast.2801
be_else.8598:
	li	a1, 2 ! 949
	bne	a0, a1, be_else.8599
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 56], %f4 ! 0
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 64 ! 0
	j	solver_surface_fast.2808
be_else.8599:
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 56], %f4 ! 0
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 64 ! 0
	j	solver_second_fast.2814
solver_surface_fast2.2824:
	ldd	[a1 + 0], %f0 ! 960
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fisneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 960
	bne	a0, a1, be_else.8600
	li	a0, 0 ! 963
	ret ! 963
be_else.8600:
	li	a0, min_caml_solver_dist ! 961
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 0], %f0 ! 961
	lw	a1, sp, 0 ! 0
	ldd	[a1 + 24], %f2 ! 961
	fmul.s	%f0, %f0, %f2 ! 961
	std	%f0, [a0 + 0] ! 961
	li	a0, 1 ! 962
	ret ! 962
solver_second_fast2.2831:
	ldd	[a1 + 0], %f6 ! 969
	sw	sp, a0, 0 ! 0
	std	%f6, [sp + 8] ! 0
	sw	sp, a2, 16 ! 0
	std	%f4, [sp + 24] ! 0
	std	%f2, [sp + 32] ! 0
	std	%f0, [sp + 40] ! 0
	sw	sp, a1, 48 ! 0
	fmv.s	%f0, %f6
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_fiszero
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 970
	bne	a0, a1, be_else.8603
	lw	a0, sp, 48 ! 0
	ldd	[a0 + 8], %f0 ! 973
	ldd	[sp + 40], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 973
	ldd	[a0 + 16], %f2 ! 973
	ldd	[sp + 32], %f4 ! 0
	fmul.s	%f2, %f2, %f4 ! 973
	fadd.s	%f0, %f0, %f2 ! 973
	ldd	[a0 + 24], %f2 ! 973
	ldd	[sp + 24], %f4 ! 0
	fmul.s	%f2, %f2, %f4 ! 973
	fadd.s	%f0, %f0, %f2 ! 973
	lw	a1, sp, 16 ! 0
	ldd	[a1 + 24], %f2 ! 974
	std	%f0, [sp + 56] ! 0
	std	%f2, [sp + 64] ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fsqr
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 64], %f2 ! 0
	ldd	[sp + 8], %f4 ! 0
	fmul.s	%f2, %f4, %f2 ! 975
	fsub.s	%f0, %f0, %f2 ! 975
	std	%f0, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fispos
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 976
	bne	a0, a1, be_else.8605
	li	a0, 0 ! 982
	ret ! 982
be_else.8605:
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_isinvert.2669
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 977
	bne	a0, a1, be_else.8606
	li	a0, min_caml_solver_dist ! 980
	ldd	[sp + 72], %f0 ! 0
	sw	sp, a0, 80 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_sqrt
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 56], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 980
	lw	a0, sp, 48 ! 0
	ldd	[a0 + 32], %f2 ! 980
	fmul.s	%f0, %f0, %f2 ! 980
	lw	a0, sp, 80 ! 0
	std	%f0, [a0 + 0] ! 980
	b	be_cont.8607
be_else.8606:
	li	a0, min_caml_solver_dist ! 978
	ldd	[sp + 72], %f0 ! 0
	sw	sp, a0, 84 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	min_caml_sqrt
	addi	sp, sp, -96
	lw	ra, sp, 92
	ldd	[sp + 56], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 978
	lw	a0, sp, 48 ! 0
	ldd	[a0 + 32], %f2 ! 978
	fmul.s	%f0, %f0, %f2 ! 978
	lw	a0, sp, 84 ! 0
	std	%f0, [a0 + 0] ! 978
be_cont.8607:
	li	a0, 1 ! 981
	ret ! 981
be_else.8603:
	li	a0, 0 ! 971
	ret ! 971
solver_fast2.2838:
	li	a2, min_caml_objects ! 987
	slli	a3, a0, 2 ! 987
! later
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a1, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_param_ctbl.2703
	addi	sp, sp, -16
	lw	ra, sp, 12
	ldd	[a0 + 0], %f0 ! 989
	ldd	[a0 + 8], %f2 ! 990
	ldd	[a0 + 16], %f4 ! 991
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 12 ! 0
	std	%f4, [sp + 16] ! 0
	std	%f2, [sp + 24] ! 0
	std	%f0, [sp + 32] ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	d_const.2726
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 4 ! 0
	slli	a1, a1, 2 ! 993
! later
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 40 ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_form.2665
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 1 ! 995
	bne	a0, a1, be_else.8608
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	d_vec.2724
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, a0
	ldd	[sp + 32], %f0 ! 0
	ldd	[sp + 24], %f2 ! 0
	ldd	[sp + 16], %f4 ! 0
	lw	a0, sp, 0 ! 0
	lw	a2, sp, 40 ! 0
	j	solver_rect_fast.2801
be_else.8608:
	li	a1, 2 ! 997
	bne	a0, a1, be_else.8609
	ldd	[sp + 32], %f0 ! 0
	ldd	[sp + 24], %f2 ! 0
	ldd	[sp + 16], %f4 ! 0
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 40 ! 0
	lw	a2, sp, 12 ! 0
	j	solver_surface_fast2.2824
be_else.8609:
	ldd	[sp + 32], %f0 ! 0
	ldd	[sp + 24], %f2 ! 0
	ldd	[sp + 16], %f4 ! 0
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 40 ! 0
	lw	a2, sp, 12 ! 0
	j	solver_second_fast2.2831
setup_rect_table.2841:
	li	a2, 6 ! 1009
	li	a3, l.6305 ! 1009
	ldd	[a3 + 0], %f0 ! 1009
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_float_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 0], %f0 ! 1011
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fiszero
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1011
	bne	a0, a1, be_else.8610
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_isinvert.2669
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 0], %f0 ! 1015
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fisneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	xor.2606
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_param_a.2673
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	fneg_cond.2611
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 0] ! 1015
	li	a1, l.6307 ! 1017
	ldd	[a1 + 0], %f0 ! 1017
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 0], %f2 ! 1017
	fdiv.s	%f0, %f0, %f2 ! 1017
	std	%f0, [a0 + 8] ! 1017
	b	be_cont.8611
be_else.8610:
	li	a0, l.6305 ! 1012
	ldd	[a0 + 0], %f0 ! 1012
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 8] ! 1012
be_cont.8611:
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 8], %f0 ! 1019
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fiszero
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1019
	bne	a0, a1, be_else.8612
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_isinvert.2669
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 8], %f0 ! 1022
	sw	sp, a0, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fisneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	xor.2606
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_param_b.2675
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	fneg_cond.2611
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 16] ! 1022
	li	a1, l.6307 ! 1023
	ldd	[a1 + 0], %f0 ! 1023
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 8], %f2 ! 1023
	fdiv.s	%f0, %f0, %f2 ! 1023
	std	%f0, [a0 + 24] ! 1023
	b	be_cont.8613
be_else.8612:
	li	a0, l.6305 ! 1020
	ldd	[a0 + 0], %f0 ! 1020
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 24] ! 1020
be_cont.8613:
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 16], %f0 ! 1025
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fiszero
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1025
	bne	a0, a1, be_else.8614
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_isinvert.2669
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 16], %f0 ! 1028
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fisneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 28 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	xor.2606
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_c.2677
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	fneg_cond.2611
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 32] ! 1028
	li	a1, l.6307 ! 1029
	ldd	[a1 + 0], %f0 ! 1029
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 16], %f2 ! 1029
	fdiv.s	%f0, %f0, %f2 ! 1029
	std	%f0, [a0 + 40] ! 1029
	b	be_cont.8615
be_else.8614:
	li	a0, l.6305 ! 1026
	ldd	[a0 + 0], %f0 ! 1026
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 40] ! 1026
be_cont.8615:
	ret ! 1031
setup_surface_table.2844:
	li	a2, 4 ! 1036
	li	a3, l.6305 ! 1036
	ldd	[a3 + 0], %f0 ! 1036
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_float_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 0], %f0 ! 1038
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	std	%f0, [sp + 16] ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_param_a.2673
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1038
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 8], %f2 ! 1038
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 24] ! 0
	std	%f2, [sp + 32] ! 0
	mv	a0, a1
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_param_b.2675
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1038
	ldd	[sp + 24], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1038
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 16], %f2 ! 1038
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 40] ! 0
	std	%f2, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_c.2677
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1038
	ldd	[sp + 40], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1038
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fispos
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1040
	bne	a0, a1, be_else.8617
	li	a0, l.6305 ! 1048
	ldd	[a0 + 0], %f0 ! 1048
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 0] ! 1048
	b	be_cont.8618
be_else.8617:
	li	a0, l.6309 ! 1042
	ldd	[a0 + 0], %f0 ! 1042
	ldd	[sp + 56], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 1042
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 0] ! 1042
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_param_a.2673
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 1044
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 8] ! 1044
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_param_b.2675
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 1045
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 16] ! 1045
	lw	a1, sp, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_param_c.2677
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 1046
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 24] ! 1046
be_cont.8618:
	ret ! 1049
setup_second_table.2847:
	li	a2, 5 ! 1055
	li	a3, l.6305 ! 1055
	ldd	[a3 + 0], %f0 ! 1055
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_float_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 0], %f0 ! 1057
	ldd	[a1 + 8], %f2 ! 1057
	ldd	[a1 + 16], %f4 ! 1057
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	quadratic.2778
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 0], %f2 ! 1058
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 16] ! 0
	std	%f2, [sp + 24] ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_a.2673
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 24], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1058
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 8], %f2 ! 1059
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 32] ! 0
	std	%f2, [sp + 40] ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_param_b.2675
	addi	sp, sp, -56
	lw	ra, sp, 52
	ldd	[sp + 40], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1059
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_fneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 16], %f2 ! 1060
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 48] ! 0
	std	%f2, [sp + 56] ! 0
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_param_c.2677
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1060
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 8 ! 0
	ldd	[sp + 16], %f2 ! 0
	std	%f2, [a0 + 0] ! 1062
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 64] ! 0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	o_isrot.2671
	addi	sp, sp, -80
	lw	ra, sp, 76
	li	a1, 0 ! 1066
	bne	a0, a1, be_else.8620
	lw	a0, sp, 8 ! 0
	ldd	[sp + 32], %f0 ! 0
	std	%f0, [a0 + 8] ! 1071
	ldd	[sp + 48], %f0 ! 0
	std	%f0, [a0 + 16] ! 1072
	ldd	[sp + 64], %f0 ! 0
	std	%f0, [a0 + 24] ! 1073
	b	be_cont.8621
be_else.8620:
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 16], %f0 ! 1067
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 72] ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_param_r2.2699
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 72], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1067
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 8], %f2 ! 1067
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 80] ! 0
	std	%f2, [sp + 88] ! 0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	o_param_r3.2701
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 88], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1067
	ldd	[sp + 80], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1067
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	min_caml_fhalf
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 32], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1067
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 8] ! 1067
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 16], %f0 ! 1068
	lw	a2, sp, 0 ! 0
	std	%f0, [sp + 96] ! 0
	mv	a0, a2
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	o_param_r1.2697
	addi	sp, sp, -112
	lw	ra, sp, 108
	ldd	[sp + 96], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1068
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 0], %f2 ! 1068
	lw	a1, sp, 0 ! 0
	std	%f0, [sp + 104] ! 0
	std	%f2, [sp + 112] ! 0
	mv	a0, a1
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	o_param_r3.2701
	addi	sp, sp, -128
	lw	ra, sp, 124
	ldd	[sp + 112], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1068
	ldd	[sp + 104], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1068
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	min_caml_fhalf
	addi	sp, sp, -128
	lw	ra, sp, 124
	ldd	[sp + 48], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1068
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 16] ! 1068
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 8], %f0 ! 1069
	lw	a2, sp, 0 ! 0
	std	%f0, [sp + 120] ! 0
	mv	a0, a2
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	o_param_r1.2697
	addi	sp, sp, -136
	lw	ra, sp, 132
	ldd	[sp + 120], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1069
	lw	a0, sp, 4 ! 0
	ldd	[a0 + 0], %f2 ! 1069
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 128] ! 0
	std	%f2, [sp + 136] ! 0
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	o_param_r2.2699
	addi	sp, sp, -152
	lw	ra, sp, 148
	ldd	[sp + 136], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1069
	ldd	[sp + 128], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1069
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	min_caml_fhalf
	addi	sp, sp, -152
	lw	ra, sp, 148
	ldd	[sp + 64], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1069
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 24] ! 1069
be_cont.8621:
	ldd	[sp + 16], %f0 ! 0
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	min_caml_fiszero
	addi	sp, sp, -152
	lw	ra, sp, 148
	li	a1, 0 ! 1075
	bne	a0, a1, be_else.8622
	li	a0, l.6307 ! 1076
	ldd	[a0 + 0], %f0 ! 1076
	ldd	[sp + 16], %f2 ! 0
	fdiv.s	%f0, %f0, %f2 ! 1076
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 32] ! 1076
	b	be_cont.8623
be_else.8622:
be_cont.8623:
	lw	a0, sp, 8 ! 0
	ret ! 1078
iter_setup_dirvec_constants.2850:
	li	a2, 0 ! 1084
	bg	a1, a2, ble_else.8624
	li	a2, min_caml_objects ! 1085
	slli	a3, a1, 2 ! 1085
! later
	sw	sp, a1, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	d_const.2726
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	d_vec.2724
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_form.2665
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 1 ! 1089
	bne	a0, a1, be_else.8625
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	setup_rect_table.2841
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 1090
	lw	a3, sp, 12 ! 0
! later
	b	be_cont.8626
be_else.8625:
	li	a1, 2 ! 1091
	bne	a0, a1, be_else.8627
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	setup_surface_table.2844
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 1092
	lw	a3, sp, 12 ! 0
! later
	b	be_cont.8628
be_else.8627:
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 4 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	setup_second_table.2847
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 1094
	lw	a3, sp, 12 ! 0
! later
be_cont.8628:
be_cont.8626:
	addi	a1, a1, -1 ! 1096
	lw	a0, sp, 8 ! 0
	j	iter_setup_dirvec_constants.2850
ble_else.8624:
	ret ! 1097
setup_dirvec_constants.2853:
	li	a1, min_caml_n_objects ! 1101
	lw	a1, a1, 0 ! 1101
	addi	a1, a1, -1 ! 1101
	j	iter_setup_dirvec_constants.2850
setup_startp_constants.2855:
	li	a2, 0 ! 1109
	bg	a1, a2, ble_else.8630
	li	a2, min_caml_objects ! 1110
	slli	a3, a1, 2 ! 1110
! later
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_param_ctbl.2703
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_form.2665
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 0], %f0 ! 1113
	lw	a2, sp, 8 ! 0
	sw	sp, a0, 16 ! 0
	std	%f0, [sp + 24] ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_x.2681
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 24], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1113
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 0] ! 1113
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 8], %f0 ! 1114
	lw	a2, sp, 8 ! 0
	std	%f0, [sp + 32] ! 0
	mv	a0, a2
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_param_y.2683
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1114
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 8] ! 1114
	lw	a1, sp, 4 ! 0
	ldd	[a1 + 16], %f0 ! 1115
	lw	a2, sp, 8 ! 0
	std	%f0, [sp + 40] ! 0
	mv	a0, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_param_z.2685
	addi	sp, sp, -56
	lw	ra, sp, 52
	ldd	[sp + 40], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1115
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 16] ! 1115
	li	a1, 2 ! 1116
	lw	a2, sp, 16 ! 0
	bne	a2, a1, be_else.8632
	lw	a1, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_param_abc.2679
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 12 ! 0
	ldd	[a1 + 0], %f0 ! 1118
	ldd	[a1 + 8], %f2 ! 1118
	ldd	[a1 + 16], %f4 ! 1118
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	veciprod2.2641
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 24] ! 1117
	b	be_cont.8633
be_else.8632:
	li	a1, 2 ! 1119
	bg	a2, a1, ble_else.8634
	b	ble_cont.8635
ble_else.8634:
	ldd	[a0 + 0], %f0 ! 1120
	ldd	[a0 + 8], %f2 ! 1120
	ldd	[a0 + 16], %f4 ! 1120
	lw	a1, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	quadratic.2778
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, 3 ! 1121
	lw	a1, sp, 16 ! 0
	bne	a1, a0, be_else.8636
	li	a0, l.6307 ! 1121
	ldd	[a0 + 0], %f2 ! 1121
	fsub.s	%f0, %f0, %f2 ! 1121
	b	be_cont.8637
be_else.8636:
be_cont.8637:
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 24] ! 1121
ble_cont.8635:
be_cont.8633:
	lw	a0, sp, 0 ! 0
	addi	a1, a0, -1 ! 1123
	lw	a0, sp, 4 ! 0
	j	setup_startp_constants.2855
ble_else.8630:
	ret ! 1124
setup_startp.2858:
	li	a1, min_caml_startp_fast ! 1128
	sw	sp, a0, 0 ! 0
	mv	t1, a1
	mv	a1, a0
	mv	a0, t1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	veccpy.2627
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_n_objects ! 1129
	lw	a0, a0, 0 ! 1129
	addi	a1, a0, -1 ! 1129
	lw	a0, sp, 0 ! 0
	j	setup_startp_constants.2855
is_rect_outside.2860:
	std	%f4, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fabs
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	std	%f0, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_a.2673
	addi	sp, sp, -40
	lw	ra, sp, 36
	fmv.s	%f2, %f0
	ldd	[sp + 24], %f0 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1141
	bne	a0, a1, be_else.8640
	li	a0, 0 ! 1145
	b	be_cont.8641
be_else.8640:
	ldd	[sp + 8], %f0 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fabs
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 16 ! 0
	std	%f0, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_param_b.2675
	addi	sp, sp, -48
	lw	ra, sp, 44
	fmv.s	%f2, %f0
	ldd	[sp + 32], %f0 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fless
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 1142
	bne	a0, a1, be_else.8642
	li	a0, 0 ! 1144
	b	be_cont.8643
be_else.8642:
	ldd	[sp + 0], %f0 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fabs
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 16 ! 0
	std	%f0, [sp + 40] ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_param_c.2677
	addi	sp, sp, -56
	lw	ra, sp, 52
	fmv.s	%f2, %f0
	ldd	[sp + 40], %f0 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_fless
	addi	sp, sp, -56
	lw	ra, sp, 52
be_cont.8643:
be_cont.8641:
	li	a1, 0 ! 1140
	bne	a0, a1, be_else.8644
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_isinvert.2669
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1146
	bne	a0, a1, be_else.8645
	li	a0, 1 ! 1146
	ret ! 1146
be_else.8645:
	li	a0, 0 ! 1146
	ret ! 1146
be_else.8644:
	lw	a0, sp, 16 ! 0
	j	o_isinvert.2669
is_plane_outside.2865:
	sw	sp, a0, 0 ! 0
	std	%f4, [sp + 8] ! 0
	std	%f2, [sp + 16] ! 0
	std	%f0, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_abc.2679
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 16], %f2 ! 0
	ldd	[sp + 8], %f4 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	veciprod2.2641
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_isinvert.2669
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f0 ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fisneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	mv	a1, a0
	lw	a0, sp, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	xor.2606
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 1152
	bne	a0, a1, be_else.8647
	li	a0, 1 ! 1152
	ret ! 1152
be_else.8647:
	li	a0, 0 ! 1152
	ret ! 1152
is_second_outside.2870:
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	quadratic.2778
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 8] ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_form.2665
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 3 ! 1158
	bne	a0, a1, be_else.8649
	li	a0, l.6307 ! 1158
	ldd	[a0 + 0], %f0 ! 1158
	ldd	[sp + 8], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1158
	b	be_cont.8650
be_else.8649:
	ldd	[sp + 8], %f0 ! 0
be_cont.8650:
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_isinvert.2669
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f0 ! 0
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fisneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	xor.2606
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1159
	bne	a0, a1, be_else.8651
	li	a0, 1 ! 1159
	ret ! 1159
be_else.8651:
	li	a0, 0 ! 1159
	ret ! 1159
is_outside.2875:
	std	%f4, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	sw	sp, a0, 16 ! 0
	std	%f0, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_x.2681
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 24], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1164
	lw	a0, sp, 16 ! 0
	std	%f0, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	o_param_y.2683
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 8], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1165
	lw	a0, sp, 16 ! 0
	std	%f0, [sp + 40] ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_param_z.2685
	addi	sp, sp, -56
	lw	ra, sp, 52
	ldd	[sp + 0], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1166
	lw	a0, sp, 16 ! 0
	std	%f0, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_form.2665
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, 1 ! 1168
	bne	a0, a1, be_else.8653
	ldd	[sp + 32], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 48], %f4 ! 0
	lw	a0, sp, 16 ! 0
	j	is_rect_outside.2860
be_else.8653:
	li	a1, 2 ! 1170
	bne	a0, a1, be_else.8654
	ldd	[sp + 32], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 48], %f4 ! 0
	lw	a0, sp, 16 ! 0
	j	is_plane_outside.2865
be_else.8654:
	ldd	[sp + 32], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 48], %f4 ! 0
	lw	a0, sp, 16 ! 0
	j	is_second_outside.2870
check_all_inside.2880:
	slli	a2, a0, 2 ! 1178
! later
	li	a3, -1 ! 1179
	bne	a2, a3, be_else.8655
	li	a0, 1 ! 1180
	ret ! 1180
be_else.8655:
	li	a3, min_caml_objects ! 1182
	slli	a2, a2, 2 ! 1182
! later
	std	%f4, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	is_outside.2875
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1182
	bne	a0, a1, be_else.8656
	lw	a0, sp, 28 ! 0
	addi	a0, a0, 1 ! 1185
	ldd	[sp + 16], %f0 ! 0
	ldd	[sp + 8], %f2 ! 0
	ldd	[sp + 0], %f4 ! 0
	lw	a1, sp, 24 ! 0
	j	check_all_inside.2880
be_else.8656:
	li	a0, 0 ! 1183
	ret ! 1183
shadow_check_and_group.2886:
	lw	a2, t2, 4 ! 0
	slli	a3, a0, 2 ! 1198
! later
	li	%l0, -1 ! 1198
	bne	a3, %l0, be_else.8657
	li	a0, 0 ! 1199
	ret ! 1199
be_else.8657:
	slli	a3, a0, 2 ! 1201
! later
	li	%l0, min_caml_intersection_point ! 1202
	sw	sp, a1, 0 ! 0
	sw	sp, t2, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a3, 12 ! 0
	mv	a1, a2
	mv	a0, a3
	mv	a2, %l0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solver_fast.2820
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, min_caml_solver_dist ! 1203
	ldd	[a1 + 0], %f0 ! 1203
	li	a1, 0 ! 1204
	std	%f0, [sp + 16] ! 0
	bne	a0, a1, be_else.8658
	li	a0, 0 ! 1204
	b	be_cont.8659
be_else.8658:
	li	a0, l.6661 ! 1204
	ldd	[a0 + 0], %f2 ! 1204
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fless
	addi	sp, sp, -32
	lw	ra, sp, 28
be_cont.8659:
	li	a1, 0 ! 1204
	bne	a0, a1, be_else.8660
	li	a0, min_caml_objects ! 1220
	lw	a1, sp, 12 ! 0
	slli	a1, a1, 2 ! 1220
! later
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_isinvert.2669
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1220
	bne	a0, a1, be_else.8661
	li	a0, 0 ! 1223
	ret ! 1223
be_else.8661:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1221
	lw	a1, sp, 0 ! 0
	lw	t2, sp, 4 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
be_else.8660:
	li	a0, l.6663 ! 1207
	ldd	[a0 + 0], %f0 ! 1207
	ldd	[sp + 16], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1207
	li	a0, min_caml_light ! 1208
	ldd	[a0 + 0], %f2 ! 1208
	fmul.s	%f2, %f2, %f0 ! 1208
	li	a0, min_caml_intersection_point ! 1208
	ldd	[a0 + 0], %f4 ! 1208
	fadd.s	%f2, %f2, %f4 ! 1208
	li	a0, min_caml_light ! 1209
	ldd	[a0 + 8], %f4 ! 1209
	fmul.s	%f4, %f4, %f0 ! 1209
	li	a0, min_caml_intersection_point ! 1209
	ldd	[a0 + 8], %f6 ! 1209
	fadd.s	%f4, %f4, %f6 ! 1209
	li	a0, min_caml_light ! 1210
	ldd	[a0 + 16], %f6 ! 1210
	fmul.s	%f0, %f6, %f0 ! 1210
	li	a0, min_caml_intersection_point ! 1210
	ldd	[a0 + 16], %f6 ! 1210
	fadd.s	%f0, %f0, %f6 ! 1210
	li	a0, 0 ! 1211
	lw	a1, sp, 0 ! 0
	fmv.s	%f30, %f4
	fmv.s	%f4, %f0
	fmv.s	%f0, %f2
	fmv.s	%f2, %f30
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	check_all_inside.2880
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1211
	bne	a0, a1, be_else.8662
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1214
	lw	a1, sp, 0 ! 0
	lw	t2, sp, 4 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
be_else.8662:
	li	a0, 1 ! 1212
	ret ! 1212
shadow_check_one_or_group.2889:
	lw	a2, t2, 4 ! 0
	slli	a3, a0, 2 ! 1228
! later
	li	%l0, -1 ! 1229
	bne	a3, %l0, be_else.8663
	li	a0, 0 ! 1230
	ret ! 1230
be_else.8663:
	li	%l0, min_caml_and_net ! 1232
	slli	a3, a3, 2 ! 1232
! later
	li	%l0, 0 ! 1233
	sw	sp, a1, 0 ! 0
	sw	sp, t2, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a1, a3
	mv	a0, %l0
	mv	a2, t2
	sw	sp, ra, 12
	lw	t1, t2, 0
	addi	sp, sp, 16
	jalr	ra, t1, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1234
	bne	a0, a1, be_else.8664
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1237
	lw	a1, sp, 0 ! 0
	lw	t2, sp, 4 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
be_else.8664:
	li	a0, 1 ! 1235
	ret ! 1235
shadow_check_one_or_matrix.2892:
	lw	a2, t2, 8 ! 0
	lw	a3, t2, 4 ! 0
	slli	%l0, a0, 2 ! 1243
! later
	lw	%l1, %l0, 0 ! 1244
	li	%l2, -1 ! 1245
	bne	%l1, %l2, be_else.8665
	li	a0, 0 ! 1246
	ret ! 1246
be_else.8665:
	li	%l2, 99 ! 1249
	sw	sp, %l0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, t2, 12 ! 0
	sw	sp, a0, 16 ! 0
	bne	%l1, %l2, be_else.8666
	li	a0, 1 ! 1250
	b	be_cont.8667
be_else.8666:
	li	%l2, min_caml_intersection_point ! 1252
	mv	a2, %l2
	mv	a1, a3
	mv	a0, %l1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solver_fast.2820
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1255
	bne	a0, a1, be_else.8668
	li	a0, 0 ! 1261
	b	be_cont.8669
be_else.8668:
	li	a0, min_caml_solver_dist ! 1256
	ldd	[a0 + 0], %f0 ! 1256
	li	a0, l.6677 ! 1256
	ldd	[a0 + 0], %f2 ! 1256
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fless
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1256
	bne	a0, a1, be_else.8670
	li	a0, 0 ! 1260
	b	be_cont.8671
be_else.8670:
	li	a0, 1 ! 1257
	lw	a1, sp, 0 ! 0
	lw	t2, sp, 4 ! 0
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1257
	bne	a0, a1, be_else.8672
	li	a0, 0 ! 1259
	b	be_cont.8673
be_else.8672:
	li	a0, 1 ! 1258
be_cont.8673:
be_cont.8671:
be_cont.8669:
be_cont.8667:
	li	a1, 0 ! 1248
	bne	a0, a1, be_else.8674
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 1268
	lw	a1, sp, 8 ! 0
	lw	t2, sp, 12 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
be_else.8674:
	li	a0, 1 ! 1263
	lw	a1, sp, 0 ! 0
	lw	t2, sp, 4 ! 0
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1263
	bne	a0, a1, be_else.8675
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 1266
	lw	a1, sp, 8 ! 0
	lw	t2, sp, 12 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
be_else.8675:
	li	a0, 1 ! 1264
	ret ! 1264
solve_each_element.2895:
	slli	a3, a0, 2 ! 1279
! later
	li	%l0, -1 ! 1280
	bne	a3, %l0, be_else.8676
	ret ! 1280
be_else.8676:
	li	%l0, min_caml_startp ! 1282
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a3, 12 ! 0
	mv	a1, a2
	mv	a0, a3
	mv	a2, %l0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solver.2797
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1283
	bne	a0, a1, be_else.8678
	li	a0, min_caml_objects ! 1311
	lw	a1, sp, 12 ! 0
	slli	a1, a1, 2 ! 1311
! later
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_isinvert.2669
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1311
	bne	a0, a1, be_else.8679
	ret ! 1313
be_else.8679:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1312
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	solve_each_element.2895
be_else.8678:
	li	a1, min_caml_solver_dist ! 1287
	ldd	[a1 + 0], %f2 ! 1287
	li	a1, l.6305 ! 1289
	ldd	[a1 + 0], %f0 ! 1289
	sw	sp, a0, 16 ! 0
	std	%f2, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1289
	bne	a0, a1, be_else.8682
	b	be_cont.8683
be_else.8682:
	li	a0, min_caml_tmin ! 1290
	ldd	[a0 + 0], %f2 ! 1290
	ldd	[sp + 24], %f0 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1290
	bne	a0, a1, be_else.8684
	b	be_cont.8685
be_else.8684:
	li	a0, l.6663 ! 1292
	ldd	[a0 + 0], %f0 ! 1292
	ldd	[sp + 24], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1292
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 0], %f2 ! 1293
	fmul.s	%f2, %f2, %f0 ! 1293
	li	a1, min_caml_startp ! 1293
	ldd	[a1 + 0], %f4 ! 1293
	fadd.s	%f2, %f2, %f4 ! 1293
	ldd	[a0 + 8], %f4 ! 1294
	fmul.s	%f4, %f4, %f0 ! 1294
	li	a1, min_caml_startp ! 1294
	ldd	[a1 + 8], %f6 ! 1294
	fadd.s	%f4, %f4, %f6 ! 1294
	ldd	[a0 + 16], %f6 ! 1295
	fmul.s	%f6, %f6, %f0 ! 1295
	li	a1, min_caml_startp ! 1295
	ldd	[a1 + 16], %f8 ! 1295
	fadd.s	%f6, %f6, %f8 ! 1295
	li	a1, 0 ! 1296
	lw	a2, sp, 4 ! 0
	std	%f6, [sp + 32] ! 0
	std	%f4, [sp + 40] ! 0
	std	%f2, [sp + 48] ! 0
	std	%f0, [sp + 56] ! 0
	mv	a0, a1
	mv	a1, a2
	fmv.s	%f0, %f2
	fmv.s	%f4, %f6
	fmv.s	%f2, %f4
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	check_all_inside.2880
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1296
	bne	a0, a1, be_else.8686
	b	be_cont.8687
be_else.8686:
	li	a0, min_caml_tmin ! 1298
	ldd	[sp + 56], %f0 ! 0
	std	%f0, [a0 + 0] ! 1298
	li	a0, min_caml_intersection_point ! 1299
	ldd	[sp + 48], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 32], %f4 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	vecset.2617
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a0, min_caml_intersected_object_id ! 1300
	lw	a1, sp, 12 ! 0
	sw	a0, a1, 0 ! 1300
	li	a0, min_caml_intsec_rectside ! 1301
	lw	a1, sp, 16 ! 0
	sw	a0, a1, 0 ! 1301
be_cont.8687:
be_cont.8685:
be_cont.8683:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1307
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	solve_each_element.2895
solve_one_or_network.2899:
	slli	a3, a0, 2 ! 1320
! later
	li	%l0, -1 ! 1321
	bne	a3, %l0, be_else.8688
	ret ! 1325
be_else.8688:
	li	%l0, min_caml_and_net ! 1322
	slli	a3, a3, 2 ! 1322
! later
	li	%l0, 0 ! 1323
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a1, a3
	mv	a0, %l0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	solve_each_element.2895
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1324
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	solve_one_or_network.2899
trace_or_matrix.2903:
	slli	a3, a0, 2 ! 1330
! later
	lw	%l0, a3, 0 ! 1331
	li	%l1, -1 ! 1332
	bne	%l0, %l1, be_else.8690
	ret ! 1333
be_else.8690:
	li	%l1, 99 ! 1335
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	bne	%l0, %l1, be_else.8692
	li	%l0, 1 ! 1336
	mv	a1, a3
	mv	a0, %l0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	solve_one_or_network.2899
	addi	sp, sp, -16
	lw	ra, sp, 12
	b	be_cont.8693
be_else.8692:
	li	%l1, min_caml_startp ! 1340
	sw	sp, a3, 12 ! 0
	mv	a1, a2
	mv	a0, %l0
	mv	a2, %l1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solver.2797
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1341
	bne	a0, a1, be_else.8694
	b	be_cont.8695
be_else.8694:
	li	a0, min_caml_solver_dist ! 1342
	ldd	[a0 + 0], %f0 ! 1342
	li	a0, min_caml_tmin ! 1343
	ldd	[a0 + 0], %f2 ! 1343
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fless
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1343
	bne	a0, a1, be_else.8696
	b	be_cont.8697
be_else.8696:
	li	a0, 1 ! 1344
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 0 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solve_one_or_network.2899
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.8697:
be_cont.8695:
be_cont.8693:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1348
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	trace_or_matrix.2903
judge_intersection.2907:
	li	a1, min_caml_tmin ! 1357
	li	a2, l.6700 ! 1357
	ldd	[a2 + 0], %f0 ! 1357
	std	%f0, [a1 + 0] ! 1357
	li	a1, 0 ! 1358
	li	a2, min_caml_or_net ! 1358
	lw	a2, a2, 0 ! 1358
	mv	t1, a2
	mv	a2, a0
	mv	a0, a1
	mv	a1, t1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	trace_or_matrix.2903
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_tmin ! 1359
	ldd	[a0 + 0], %f2 ! 1359
	li	a0, l.6677 ! 1361
	ldd	[a0 + 0], %f0 ! 1361
	std	%f2, [sp + 0] ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fless
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1361
	bne	a0, a1, be_else.8698
	li	a0, 0 ! 1363
	ret ! 1363
be_else.8698:
	li	a0, l.6706 ! 1362
	ldd	[a0 + 0], %f2 ! 1362
	ldd	[sp + 0], %f0 ! 0
	j	min_caml_fless
solve_each_element_fast.2909:
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	d_vec.2724
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 1373
	lw	a3, sp, 4 ! 0
! later
	li	%l0, -1 ! 1374
	bne	a2, %l0, be_else.8699
	ret ! 1374
be_else.8699:
	lw	%l0, sp, 0 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a2, 16 ! 0
	mv	a1, %l0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solver_fast2.2838
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1377
	bne	a0, a1, be_else.8701
	li	a0, min_caml_objects ! 1405
	lw	a1, sp, 16 ! 0
	slli	a1, a1, 2 ! 1405
! later
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_isinvert.2669
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1405
	bne	a0, a1, be_else.8702
	ret ! 1407
be_else.8702:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1406
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	solve_each_element_fast.2909
be_else.8701:
	li	a1, min_caml_solver_dist ! 1381
	ldd	[a1 + 0], %f2 ! 1381
	li	a1, l.6305 ! 1383
	ldd	[a1 + 0], %f0 ! 1383
	sw	sp, a0, 20 ! 0
	std	%f2, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1383
	bne	a0, a1, be_else.8704
	b	be_cont.8705
be_else.8704:
	li	a0, min_caml_tmin ! 1384
	ldd	[a0 + 0], %f2 ! 1384
	ldd	[sp + 24], %f0 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fless
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1384
	bne	a0, a1, be_else.8706
	b	be_cont.8707
be_else.8706:
	li	a0, l.6663 ! 1386
	ldd	[a0 + 0], %f0 ! 1386
	ldd	[sp + 24], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1386
	lw	a0, sp, 12 ! 0
	ldd	[a0 + 0], %f2 ! 1387
	fmul.s	%f2, %f2, %f0 ! 1387
	li	a1, min_caml_startp_fast ! 1387
	ldd	[a1 + 0], %f4 ! 1387
	fadd.s	%f2, %f2, %f4 ! 1387
	ldd	[a0 + 8], %f4 ! 1388
	fmul.s	%f4, %f4, %f0 ! 1388
	li	a1, min_caml_startp_fast ! 1388
	ldd	[a1 + 8], %f6 ! 1388
	fadd.s	%f4, %f4, %f6 ! 1388
	ldd	[a0 + 16], %f6 ! 1389
	fmul.s	%f6, %f6, %f0 ! 1389
	li	a0, min_caml_startp_fast ! 1389
	ldd	[a0 + 16], %f8 ! 1389
	fadd.s	%f6, %f6, %f8 ! 1389
	li	a0, 0 ! 1390
	lw	a1, sp, 4 ! 0
	std	%f6, [sp + 32] ! 0
	std	%f4, [sp + 40] ! 0
	std	%f2, [sp + 48] ! 0
	std	%f0, [sp + 56] ! 0
	fmv.s	%f0, %f2
	fmv.s	%f4, %f6
	fmv.s	%f2, %f4
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	check_all_inside.2880
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1390
	bne	a0, a1, be_else.8708
	b	be_cont.8709
be_else.8708:
	li	a0, min_caml_tmin ! 1392
	ldd	[sp + 56], %f0 ! 0
	std	%f0, [a0 + 0] ! 1392
	li	a0, min_caml_intersection_point ! 1393
	ldd	[sp + 48], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	ldd	[sp + 32], %f4 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	vecset.2617
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a0, min_caml_intersected_object_id ! 1394
	lw	a1, sp, 16 ! 0
	sw	a0, a1, 0 ! 1394
	li	a0, min_caml_intsec_rectside ! 1395
	lw	a1, sp, 20 ! 0
	sw	a0, a1, 0 ! 1395
be_cont.8709:
be_cont.8707:
be_cont.8705:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1401
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	solve_each_element_fast.2909
solve_one_or_network_fast.2913:
	slli	a3, a0, 2 ! 1413
! later
	li	%l0, -1 ! 1414
	bne	a3, %l0, be_else.8710
	ret ! 1418
be_else.8710:
	li	%l0, min_caml_and_net ! 1415
	slli	a3, a3, 2 ! 1415
! later
	li	%l0, 0 ! 1416
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	mv	a1, a3
	mv	a0, %l0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	solve_each_element_fast.2909
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1417
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	solve_one_or_network_fast.2913
trace_or_matrix_fast.2917:
	slli	a3, a0, 2 ! 1423
! later
	lw	%l0, a3, 0 ! 1424
	li	%l1, -1 ! 1425
	bne	%l0, %l1, be_else.8712
	ret ! 1426
be_else.8712:
	li	%l1, 99 ! 1428
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	bne	%l0, %l1, be_else.8714
	li	%l0, 1 ! 1429
	mv	a1, a3
	mv	a0, %l0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	solve_one_or_network_fast.2913
	addi	sp, sp, -16
	lw	ra, sp, 12
	b	be_cont.8715
be_else.8714:
	sw	sp, a3, 12 ! 0
	mv	a1, a2
	mv	a0, %l0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solver_fast2.2838
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1434
	bne	a0, a1, be_else.8716
	b	be_cont.8717
be_else.8716:
	li	a0, min_caml_solver_dist ! 1435
	ldd	[a0 + 0], %f0 ! 1435
	li	a0, min_caml_tmin ! 1436
	ldd	[a0 + 0], %f2 ! 1436
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fless
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1436
	bne	a0, a1, be_else.8718
	b	be_cont.8719
be_else.8718:
	li	a0, 1 ! 1437
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 0 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	solve_one_or_network_fast.2913
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.8719:
be_cont.8717:
be_cont.8715:
	lw	a0, sp, 8 ! 0
	addi	a0, a0, 1 ! 1441
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	trace_or_matrix_fast.2917
judge_intersection_fast.2921:
	li	a1, min_caml_tmin ! 1448
	li	a2, l.6700 ! 1448
	ldd	[a2 + 0], %f0 ! 1448
	std	%f0, [a1 + 0] ! 1448
	li	a1, 0 ! 1449
	li	a2, min_caml_or_net ! 1449
	lw	a2, a2, 0 ! 1449
	mv	t1, a2
	mv	a2, a0
	mv	a0, a1
	mv	a1, t1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	trace_or_matrix_fast.2917
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_tmin ! 1450
	ldd	[a0 + 0], %f2 ! 1450
	li	a0, l.6677 ! 1452
	ldd	[a0 + 0], %f0 ! 1452
	std	%f2, [sp + 0] ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fless
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 1452
	bne	a0, a1, be_else.8720
	li	a0, 0 ! 1454
	ret ! 1454
be_else.8720:
	li	a0, l.6706 ! 1453
	ldd	[a0 + 0], %f2 ! 1453
	ldd	[sp + 0], %f0 ! 0
	j	min_caml_fless
get_nvector_rect.2923:
	li	a1, min_caml_intsec_rectside ! 1468
	lw	a1, a1, 0 ! 1468
	li	a2, min_caml_nvector ! 1470
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	vecbzero.2625
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, min_caml_nvector ! 1471
	lw	a1, sp, 4 ! 0
	addi	a2, a1, -1 ! 1471
	addi	a1, a1, -1 ! 1471
	slli	a1, a1, 3 ! 1471
	lw	a3, sp, 0 ! 0
	ldd	[a3 + a1], %f0 ! 1471
	sw	sp, a0, 8 ! 0
	sw	sp, a2, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	sgn.2609
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 3 ! 1471
	lw	a1, sp, 8 ! 0
	std	%f0, [a1 + a0] ! 1471
	ret ! 1471
get_nvector_plane.2925:
	li	a1, min_caml_nvector ! 1477
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_param_a.2673
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	std	%f0, [a0 + 0] ! 1477
	li	a0, min_caml_nvector ! 1478
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_param_b.2675
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fneg
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 8 ! 0
	std	%f0, [a0 + 8] ! 1478
	li	a0, min_caml_nvector ! 1479
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_param_c.2677
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 16] ! 1479
	ret ! 1479
get_nvector_second.2927:
	li	a1, min_caml_intersection_point ! 1484
	ldd	[a1 + 0], %f0 ! 1484
	sw	sp, a0, 0 ! 0
	std	%f0, [sp + 8] ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_param_x.2681
	addi	sp, sp, -24
	lw	ra, sp, 20
	ldd	[sp + 8], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1484
	li	a0, min_caml_intersection_point ! 1485
	ldd	[a0 + 8], %f2 ! 1485
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 16] ! 0
	std	%f2, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_y.2683
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 24], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1485
	li	a0, min_caml_intersection_point ! 1486
	ldd	[a0 + 16], %f2 ! 1486
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 32] ! 0
	std	%f2, [sp + 40] ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_param_z.2685
	addi	sp, sp, -56
	lw	ra, sp, 52
	ldd	[sp + 40], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1486
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_a.2673
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 16], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1488
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	o_param_b.2675
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1489
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 64] ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	o_param_c.2677
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1490
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_isrot.2671
	addi	sp, sp, -88
	lw	ra, sp, 84
	li	a1, 0 ! 1492
	bne	a0, a1, be_else.8724
	li	a0, min_caml_nvector ! 1493
	ldd	[sp + 56], %f0 ! 0
	std	%f0, [a0 + 0] ! 1493
	li	a0, min_caml_nvector ! 1494
	ldd	[sp + 64], %f0 ! 0
	std	%f0, [a0 + 8] ! 1494
	li	a0, min_caml_nvector ! 1495
	ldd	[sp + 72], %f0 ! 0
	std	%f0, [a0 + 16] ! 1495
	b	be_cont.8725
be_else.8724:
	li	a0, min_caml_nvector ! 1497
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 80 ! 0
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	o_param_r3.2701
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1497
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 88] ! 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	o_param_r2.2699
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1497
	ldd	[sp + 88], %f4 ! 0
	fadd.s	%f0, %f4, %f0 ! 1497
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	min_caml_fhalf
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 56], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1497
	lw	a0, sp, 80 ! 0
	std	%f0, [a0 + 0] ! 1497
	li	a0, min_caml_nvector ! 1498
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 96 ! 0
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	o_param_r3.2701
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 16], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1498
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 104] ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	o_param_r1.2697
	addi	sp, sp, -120
	lw	ra, sp, 116
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1498
	ldd	[sp + 104], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1498
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	min_caml_fhalf
	addi	sp, sp, -120
	lw	ra, sp, 116
	ldd	[sp + 64], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1498
	lw	a0, sp, 96 ! 0
	std	%f0, [a0 + 8] ! 1498
	li	a0, min_caml_nvector ! 1499
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 112 ! 0
	mv	a0, a1
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	o_param_r2.2699
	addi	sp, sp, -120
	lw	ra, sp, 116
	ldd	[sp + 16], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1499
	lw	a0, sp, 0 ! 0
	std	%f0, [sp + 120] ! 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	o_param_r1.2697
	addi	sp, sp, -136
	lw	ra, sp, 132
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1499
	ldd	[sp + 120], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1499
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	min_caml_fhalf
	addi	sp, sp, -136
	lw	ra, sp, 132
	ldd	[sp + 72], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1499
	lw	a0, sp, 112 ! 0
	std	%f0, [a0 + 16] ! 1499
be_cont.8725:
	li	a0, min_caml_nvector ! 1501
	lw	a1, sp, 0 ! 0
	sw	sp, a0, 128 ! 0
	mv	a0, a1
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	o_isinvert.2669
	addi	sp, sp, -136
	lw	ra, sp, 132
	mv	a1, a0
	lw	a0, sp, 128 ! 0
	j	vecunit_sgn.2635
get_nvector.2929:
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_form.2665
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 1 ! 1507
	bne	a0, a1, be_else.8729
	lw	a0, sp, 4 ! 0
	j	get_nvector_rect.2923
be_else.8729:
	li	a1, 2 ! 1509
	bne	a0, a1, be_else.8730
	lw	a0, sp, 0 ! 0
	j	get_nvector_plane.2925
be_else.8730:
	lw	a0, sp, 0 ! 0
	j	get_nvector_second.2927
utexture.2932:
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_texturetype.2663
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, min_caml_texture_color ! 1524
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_color_red.2691
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 0] ! 1524
	li	a0, min_caml_texture_color ! 1525
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_color_green.2693
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 16 ! 0
	std	%f0, [a0 + 8] ! 1525
	li	a0, min_caml_texture_color ! 1526
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_color_blue.2695
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20 ! 0
	std	%f0, [a0 + 16] ! 1526
	li	a0, 1 ! 1527
	lw	a1, sp, 8 ! 0
	bne	a1, a0, be_else.8731
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 0], %f0 ! 1530
	lw	a1, sp, 4 ! 0
	std	%f0, [sp + 24] ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_x.2681
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 24], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1530
	li	a0, l.6798 ! 1532
	ldd	[a0 + 0], %f2 ! 1532
	fmul.s	%f2, %f0, %f2 ! 1532
	std	%f0, [sp + 32] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_floor
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a0, l.6800 ! 1532
	ldd	[a0 + 0], %f2 ! 1532
	fmul.s	%f0, %f0, %f2 ! 1532
	ldd	[sp + 32], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1533
	li	a0, l.6781 ! 1533
	ldd	[a0 + 0], %f2 ! 1533
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fless
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 0 ! 0
	ldd	[a1 + 16], %f0 ! 1535
	lw	a1, sp, 4 ! 0
	sw	sp, a0, 40 ! 0
	std	%f0, [sp + 48] ! 0
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_z.2685
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1535
	li	a0, l.6798 ! 1537
	ldd	[a0 + 0], %f2 ! 1537
	fmul.s	%f2, %f0, %f2 ! 1537
	std	%f0, [sp + 56] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_floor
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a0, l.6800 ! 1537
	ldd	[a0 + 0], %f2 ! 1537
	fmul.s	%f0, %f0, %f2 ! 1537
	ldd	[sp + 56], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1538
	li	a0, l.6781 ! 1538
	ldd	[a0 + 0], %f2 ! 1538
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fless
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, min_caml_texture_color ! 1540
	li	a2, 0 ! 1541
	lw	a3, sp, 40 ! 0
	bne	a3, a2, be_else.8733
	li	a2, 0 ! 1543
	bne	a0, a2, be_else.8735
	li	a0, l.6774 ! 1543
	ldd	[a0 + 0], %f0 ! 1543
	b	be_cont.8736
be_else.8735:
	li	a0, l.6305 ! 1543
	ldd	[a0 + 0], %f0 ! 1543
be_cont.8736:
	b	be_cont.8734
be_else.8733:
	li	a2, 0 ! 1542
	bne	a0, a2, be_else.8737
	li	a0, l.6305 ! 1542
	ldd	[a0 + 0], %f0 ! 1542
	b	be_cont.8738
be_else.8737:
	li	a0, l.6774 ! 1542
	ldd	[a0 + 0], %f0 ! 1542
be_cont.8738:
be_cont.8734:
	std	%f0, [a1 + 8] ! 1540
	ret ! 1540
be_else.8731:
	li	a0, 2 ! 1545
	bne	a1, a0, be_else.8740
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 8], %f0 ! 1548
	li	a0, l.6790 ! 1548
	ldd	[a0 + 0], %f2 ! 1548
	fmul.s	%f0, %f0, %f2 ! 1548
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_sin
	addi	sp, sp, -72
	lw	ra, sp, 68
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fsqr
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a0, min_caml_texture_color ! 1549
	li	a1, l.6774 ! 1549
	ldd	[a1 + 0], %f2 ! 1549
	fmul.s	%f2, %f2, %f0 ! 1549
	std	%f2, [a0 + 0] ! 1549
	li	a0, min_caml_texture_color ! 1550
	li	a1, l.6774 ! 1550
	ldd	[a1 + 0], %f2 ! 1550
	li	a1, l.6307 ! 1550
	ldd	[a1 + 0], %f4 ! 1550
	fsub.s	%f0, %f4, %f0 ! 1550
	fmul.s	%f0, %f2, %f0 ! 1550
	std	%f0, [a0 + 8] ! 1550
	ret ! 1550
be_else.8740:
	li	a0, 3 ! 1552
	bne	a1, a0, be_else.8742
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 0], %f0 ! 1555
	lw	a1, sp, 4 ! 0
	std	%f0, [sp + 64] ! 0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	o_param_x.2681
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 64], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1555
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 16], %f2 ! 1556
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 72] ! 0
	std	%f2, [sp + 80] ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	o_param_z.2685
	addi	sp, sp, -96
	lw	ra, sp, 92
	ldd	[sp + 80], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1556
	ldd	[sp + 72], %f2 ! 0
	std	%f0, [sp + 88] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	min_caml_fsqr
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 88], %f2 ! 0
	std	%f0, [sp + 96] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	min_caml_fsqr
	addi	sp, sp, -112
	lw	ra, sp, 108
	ldd	[sp + 96], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1557
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	min_caml_sqrt
	addi	sp, sp, -112
	lw	ra, sp, 108
	li	a0, l.6781 ! 1557
	ldd	[a0 + 0], %f2 ! 1557
	fdiv.s	%f0, %f0, %f2 ! 1557
	std	%f0, [sp + 104] ! 0
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	min_caml_floor
	addi	sp, sp, -120
	lw	ra, sp, 116
	ldd	[sp + 104], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1558
	li	a0, l.6761 ! 1558
	ldd	[a0 + 0], %f2 ! 1558
	fmul.s	%f0, %f0, %f2 ! 1558
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	min_caml_cos
	addi	sp, sp, -120
	lw	ra, sp, 116
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	min_caml_fsqr
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a0, min_caml_texture_color ! 1560
	li	a1, l.6774 ! 1560
	ldd	[a1 + 0], %f2 ! 1560
	fmul.s	%f2, %f0, %f2 ! 1560
	std	%f2, [a0 + 8] ! 1560
	li	a0, min_caml_texture_color ! 1561
	li	a1, l.6307 ! 1561
	ldd	[a1 + 0], %f2 ! 1561
	fsub.s	%f0, %f2, %f0 ! 1561
	li	a1, l.6774 ! 1561
	ldd	[a1 + 0], %f2 ! 1561
	fmul.s	%f0, %f0, %f2 ! 1561
	std	%f0, [a0 + 16] ! 1561
	ret ! 1561
be_else.8742:
	li	a0, 4 ! 1563
	bne	a1, a0, be_else.8744
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 0], %f0 ! 1565
	lw	a1, sp, 4 ! 0
	std	%f0, [sp + 112] ! 0
	mv	a0, a1
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	o_param_x.2681
	addi	sp, sp, -128
	lw	ra, sp, 124
	ldd	[sp + 112], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1565
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 120] ! 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	o_param_a.2673
	addi	sp, sp, -136
	lw	ra, sp, 132
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	min_caml_sqrt
	addi	sp, sp, -136
	lw	ra, sp, 132
	ldd	[sp + 120], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1565
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 16], %f2 ! 1566
	lw	a1, sp, 4 ! 0
	std	%f0, [sp + 128] ! 0
	std	%f2, [sp + 136] ! 0
	mv	a0, a1
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	o_param_z.2685
	addi	sp, sp, -152
	lw	ra, sp, 148
	ldd	[sp + 136], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1566
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 144] ! 0
	sw	sp, ra, 156
	addi	sp, sp, 160
	call	o_param_c.2677
	addi	sp, sp, -160
	lw	ra, sp, 156
	sw	sp, ra, 156
	addi	sp, sp, 160
	call	min_caml_sqrt
	addi	sp, sp, -160
	lw	ra, sp, 156
	ldd	[sp + 144], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1566
	ldd	[sp + 128], %f2 ! 0
	std	%f0, [sp + 152] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 164
	addi	sp, sp, 168
	call	min_caml_fsqr
	addi	sp, sp, -168
	lw	ra, sp, 164
	ldd	[sp + 152], %f2 ! 0
	std	%f0, [sp + 160] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 172
	addi	sp, sp, 176
	call	min_caml_fsqr
	addi	sp, sp, -176
	lw	ra, sp, 172
	ldd	[sp + 160], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 1567
	ldd	[sp + 128], %f2 ! 0
	std	%f0, [sp + 168] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 180
	addi	sp, sp, 184
	call	min_caml_fabs
	addi	sp, sp, -184
	lw	ra, sp, 180
	li	a0, l.6755 ! 1569
	ldd	[a0 + 0], %f2 ! 1569
	sw	sp, ra, 180
	addi	sp, sp, 184
	call	min_caml_fless
	addi	sp, sp, -184
	lw	ra, sp, 180
	li	a1, 0 ! 1569
	bne	a0, a1, be_else.8745
	ldd	[sp + 128], %f0 ! 0
	ldd	[sp + 152], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 1572
	sw	sp, ra, 180
	addi	sp, sp, 184
	call	min_caml_fabs
	addi	sp, sp, -184
	lw	ra, sp, 180
	sw	sp, ra, 180
	addi	sp, sp, 184
	call	min_caml_atan
	addi	sp, sp, -184
	lw	ra, sp, 180
	li	a0, l.6759 ! 1574
	ldd	[a0 + 0], %f2 ! 1574
	fmul.s	%f0, %f0, %f2 ! 1574
	li	a0, l.6761 ! 1574
	ldd	[a0 + 0], %f2 ! 1574
	fdiv.s	%f0, %f0, %f2 ! 1574
	b	be_cont.8746
be_else.8745:
	li	a0, l.6757 ! 1570
	ldd	[a0 + 0], %f0 ! 1570
be_cont.8746:
	std	%f0, [sp + 176] ! 0
	sw	sp, ra, 188
	addi	sp, sp, 192
	call	min_caml_floor
	addi	sp, sp, -192
	lw	ra, sp, 188
	ldd	[sp + 176], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1576
	lw	a0, sp, 0 ! 0
	ldd	[a0 + 8], %f2 ! 1578
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 184] ! 0
	std	%f2, [sp + 192] ! 0
	sw	sp, ra, 204
	addi	sp, sp, 208
	call	o_param_y.2683
	addi	sp, sp, -208
	lw	ra, sp, 204
	ldd	[sp + 192], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1578
	lw	a0, sp, 4 ! 0
	std	%f0, [sp + 200] ! 0
	sw	sp, ra, 212
	addi	sp, sp, 216
	call	o_param_b.2675
	addi	sp, sp, -216
	lw	ra, sp, 212
	sw	sp, ra, 212
	addi	sp, sp, 216
	call	min_caml_sqrt
	addi	sp, sp, -216
	lw	ra, sp, 212
	ldd	[sp + 200], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1578
	ldd	[sp + 168], %f2 ! 0
	std	%f0, [sp + 208] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 220
	addi	sp, sp, 224
	call	min_caml_fabs
	addi	sp, sp, -224
	lw	ra, sp, 220
	li	a0, l.6755 ! 1580
	ldd	[a0 + 0], %f2 ! 1580
	sw	sp, ra, 220
	addi	sp, sp, 224
	call	min_caml_fless
	addi	sp, sp, -224
	lw	ra, sp, 220
	li	a1, 0 ! 1580
	bne	a0, a1, be_else.8747
	ldd	[sp + 168], %f0 ! 0
	ldd	[sp + 208], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 1583
	sw	sp, ra, 220
	addi	sp, sp, 224
	call	min_caml_fabs
	addi	sp, sp, -224
	lw	ra, sp, 220
	sw	sp, ra, 220
	addi	sp, sp, 224
	call	min_caml_atan
	addi	sp, sp, -224
	lw	ra, sp, 220
	li	a0, l.6759 ! 1584
	ldd	[a0 + 0], %f2 ! 1584
	fmul.s	%f0, %f0, %f2 ! 1584
	li	a0, l.6761 ! 1584
	ldd	[a0 + 0], %f2 ! 1584
	fdiv.s	%f0, %f0, %f2 ! 1584
	b	be_cont.8748
be_else.8747:
	li	a0, l.6757 ! 1581
	ldd	[a0 + 0], %f0 ! 1581
be_cont.8748:
	std	%f0, [sp + 216] ! 0
	sw	sp, ra, 228
	addi	sp, sp, 232
	call	min_caml_floor
	addi	sp, sp, -232
	lw	ra, sp, 228
	ldd	[sp + 216], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1586
	li	a0, l.6768 ! 1587
	ldd	[a0 + 0], %f2 ! 1587
	li	a0, l.6770 ! 1587
	ldd	[a0 + 0], %f4 ! 1587
	ldd	[sp + 184], %f6 ! 0
	fsub.s	%f4, %f4, %f6 ! 1587
	std	%f0, [sp + 224] ! 0
	std	%f2, [sp + 232] ! 0
	fmv.s	%f0, %f4
	sw	sp, ra, 244
	addi	sp, sp, 248
	call	min_caml_fsqr
	addi	sp, sp, -248
	lw	ra, sp, 244
	ldd	[sp + 232], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1587
	li	a0, l.6770 ! 1587
	ldd	[a0 + 0], %f2 ! 1587
	ldd	[sp + 224], %f4 ! 0
	fsub.s	%f2, %f2, %f4 ! 1587
	std	%f0, [sp + 240] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 252
	addi	sp, sp, 256
	call	min_caml_fsqr
	addi	sp, sp, -256
	lw	ra, sp, 252
	ldd	[sp + 240], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1587
	std	%f0, [sp + 248] ! 0
	sw	sp, ra, 260
	addi	sp, sp, 264
	call	min_caml_fisneg
	addi	sp, sp, -264
	lw	ra, sp, 260
	li	a1, 0 ! 1588
	bne	a0, a1, be_else.8749
	ldd	[sp + 248], %f0 ! 0
	b	be_cont.8750
be_else.8749:
	li	a0, l.6305 ! 1588
	ldd	[a0 + 0], %f0 ! 1588
be_cont.8750:
	li	a0, min_caml_texture_color ! 1589
	li	a1, l.6774 ! 1589
	ldd	[a1 + 0], %f2 ! 1589
	fmul.s	%f0, %f2, %f0 ! 1589
	li	a1, l.6776 ! 1589
	ldd	[a1 + 0], %f2 ! 1589
	fdiv.s	%f0, %f0, %f2 ! 1589
	std	%f0, [a0 + 16] ! 1589
	ret ! 1589
be_else.8744:
	ret ! 1591
add_light.2935:
	std	%f4, [sp + 0] ! 0
	std	%f2, [sp + 8] ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fispos
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1602
	bne	a0, a1, be_else.8753
	b	be_cont.8754
be_else.8753:
	li	a0, min_caml_rgb ! 1603
	li	a1, min_caml_texture_color ! 1603
	ldd	[sp + 16], %f0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	vecaccum.2646
	addi	sp, sp, -32
	lw	ra, sp, 28
be_cont.8754:
	ldd	[sp + 8], %f0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fispos
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, 0 ! 1607
	bne	a0, a1, be_else.8755
	ret ! 1612
be_else.8755:
	ldd	[sp + 8], %f0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 0], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 1608
	li	a0, min_caml_rgb ! 1609
	li	a1, min_caml_rgb ! 1609
	ldd	[a1 + 0], %f2 ! 1609
	fadd.s	%f2, %f2, %f0 ! 1609
	std	%f2, [a0 + 0] ! 1609
	li	a0, min_caml_rgb ! 1610
	li	a1, min_caml_rgb ! 1610
	ldd	[a1 + 8], %f2 ! 1610
	fadd.s	%f2, %f2, %f0 ! 1610
	std	%f2, [a0 + 8] ! 1610
	li	a0, min_caml_rgb ! 1611
	li	a1, min_caml_rgb ! 1611
	ldd	[a1 + 16], %f2 ! 1611
	fadd.s	%f0, %f2, %f0 ! 1611
	std	%f0, [a0 + 16] ! 1611
	ret ! 1611
trace_reflections.2939:
	lw	a2, t2, 4 ! 0
	li	a3, 0 ! 1618
	bg	a0, a3, ble_else.8758
	li	a3, min_caml_reflections ! 1619
	slli	%l0, a0, 2 ! 1619
! later
	sw	sp, t2, 0 ! 0
	sw	sp, a0, 4 ! 0
	std	%f2, [sp + 8] ! 0
	sw	sp, a1, 16 ! 0
	std	%f0, [sp + 24] ! 0
	sw	sp, a2, 32 ! 0
	sw	sp, a3, 36 ! 0
	mv	a0, a3
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	r_dvec.2730
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	judge_intersection_fast.2921
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 1623
	bne	a0, a1, be_else.8760
	b	be_cont.8761
be_else.8760:
	li	a0, min_caml_intersected_object_id ! 1624
	lw	a0, a0, 0 ! 1624
	li	a1, 4 ! 1624
	mul	a0, a0, a1 ! 1624
	li	a1, min_caml_intsec_rectside ! 1624
	lw	a1, a1, 0 ! 1624
	add	a0, a0, a1 ! 1624
	lw	a1, sp, 36 ! 0
	sw	sp, a0, 44 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	r_surface_id.2728
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 44 ! 0
	bne	a1, a0, be_else.8762
	li	a0, 0 ! 1627
	li	a1, min_caml_or_net ! 1627
	lw	a1, a1, 0 ! 1627
	lw	t2, sp, 32 ! 0
	sw	sp, ra, 52
	lw	t1, t2, 0
	addi	sp, sp, 56
	jalr	ra, t1, 0
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1627
	bne	a0, a1, be_else.8764
	li	a0, min_caml_nvector ! 1629
	lw	a1, sp, 40 ! 0
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	d_vec.2724
	addi	sp, sp, -56
	lw	ra, sp, 52
	mv	a1, a0
	lw	a0, sp, 48 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	veciprod.2638
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 36 ! 0
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	r_bright.2732
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 24], %f2 ! 0
	fmul.s	%f4, %f0, %f2 ! 1631
	ldd	[sp + 56], %f6 ! 0
	fmul.s	%f4, %f4, %f6 ! 1631
	lw	a0, sp, 40 ! 0
	std	%f4, [sp + 64] ! 0
	std	%f0, [sp + 72] ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	d_vec.2724
	addi	sp, sp, -88
	lw	ra, sp, 84
	mv	a1, a0
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	veciprod.2638
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 72], %f2 ! 0
	fmul.s	%f2, %f2, %f0 ! 1632
	ldd	[sp + 64], %f0 ! 0
	ldd	[sp + 8], %f4 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	add_light.2935
	addi	sp, sp, -88
	lw	ra, sp, 84
	b	be_cont.8765
be_else.8764:
be_cont.8765:
	b	be_cont.8763
be_else.8762:
be_cont.8763:
be_cont.8761:
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 1637
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 8], %f2 ! 0
	lw	a1, sp, 16 ! 0
	lw	t2, sp, 0 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
ble_else.8758:
	ret ! 1638
trace_ray.2944:
	lw	a3, t2, 8 ! 0
	lw	%l0, t2, 4 ! 0
	li	%l1, 4 ! 1646
	bg	%l1, a0, ble_else.8768
	sw	sp, t2, 0 ! 0
	std	%f2, [sp + 8] ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, %l0, 20 ! 0
	sw	sp, a2, 24 ! 0
	std	%f0, [sp + 32] ! 0
	sw	sp, a0, 40 ! 0
	sw	sp, a1, 44 ! 0
	mv	a0, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	p_surface_ids.2709
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a1, sp, 44 ! 0
	sw	sp, a0, 48 ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	judge_intersection.2907
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a1, 0 ! 1648
	bne	a0, a1, be_else.8771
	li	a0, -1 ! 1711
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1711
	lw	a3, sp, 48 ! 0
! later
	li	a0, 0 ! 1713
	bne	a1, a0, be_else.8772
	ret ! 1725
be_else.8772:
	li	a1, min_caml_light ! 1714
	lw	a0, sp, 44 ! 0
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	veciprod.2638
	addi	sp, sp, -56
	lw	ra, sp, 52
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	min_caml_fneg
	addi	sp, sp, -56
	lw	ra, sp, 52
	std	%f0, [sp + 56] ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fispos
	addi	sp, sp, -72
	lw	ra, sp, 68
	li	a1, 0 ! 1716
	bne	a0, a1, be_else.8775
	ret ! 1724
be_else.8775:
	ldd	[sp + 56], %f0 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fsqr
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 1719
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 1719
	li	a0, min_caml_beam ! 1719
	ldd	[a0 + 0], %f2 ! 1719
	fmul.s	%f0, %f0, %f2 ! 1719
	li	a0, min_caml_rgb ! 1720
	li	a1, min_caml_rgb ! 1720
	ldd	[a1 + 0], %f2 ! 1720
	fadd.s	%f2, %f2, %f0 ! 1720
	std	%f2, [a0 + 0] ! 1720
	li	a0, min_caml_rgb ! 1721
	li	a1, min_caml_rgb ! 1721
	ldd	[a1 + 8], %f2 ! 1721
	fadd.s	%f2, %f2, %f0 ! 1721
	std	%f2, [a0 + 8] ! 1721
	li	a0, min_caml_rgb ! 1722
	li	a1, min_caml_rgb ! 1722
	ldd	[a1 + 16], %f2 ! 1722
	fadd.s	%f0, %f2, %f0 ! 1722
	std	%f0, [a0 + 16] ! 1722
	ret ! 1722
be_else.8771:
	li	a0, min_caml_intersected_object_id ! 1650
	lw	a0, a0, 0 ! 1650
	li	a1, min_caml_objects ! 1651
	slli	a2, a0, 2 ! 1651
! later
	sw	sp, a0, 64 ! 0
	sw	sp, a1, 68 ! 0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	o_reflectiontype.2667
	addi	sp, sp, -80
	lw	ra, sp, 76
	lw	a1, sp, 68 ! 0
	sw	sp, a0, 72 ! 0
	mv	a0, a1
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	o_diffuse.2687
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 1653
	lw	a0, sp, 68 ! 0
	lw	a1, sp, 44 ! 0
	std	%f0, [sp + 80] ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	get_nvector.2929
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a0, min_caml_startp ! 1656
	li	a1, min_caml_intersection_point ! 1656
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	veccpy.2627
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, min_caml_intersection_point ! 1657
	lw	a0, sp, 68 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	utexture.2932
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a0, 4 ! 1660
	lw	a1, sp, 64 ! 0
	mul	a0, a1, a0 ! 1660
	li	a1, min_caml_intsec_rectside ! 1660
	lw	a1, a1, 0 ! 1660
	add	a0, a0, a1 ! 1660
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1660
	lw	a3, sp, 48 ! 0
! later
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	p_intersection_points.2707
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1662
! later
	li	a2, min_caml_intersection_point ! 1662
	mv	a1, a2
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	veccpy.2627
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	p_calc_diffuse.2711
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a1, sp, 68 ! 0
	sw	sp, a0, 88 ! 0
	mv	a0, a1
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	o_diffuse.2687
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a0, l.6770 ! 1666
	ldd	[a0 + 0], %f2 ! 1666
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	min_caml_fless
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a1, 0 ! 1666
	bne	a0, a1, be_else.8779
	li	a0, 1 ! 1669
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1669
	lw	a3, sp, 88 ! 0
! later
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	p_energy.2713
	addi	sp, sp, -96
	lw	ra, sp, 92
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1671
! later
	li	a3, min_caml_texture_color ! 1671
	sw	sp, a0, 92 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	veccpy.2627
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 40 ! 0
	slli	a1, a0, 2 ! 1672
	lw	a2, sp, 92 ! 0
! later
	li	a2, l.6832 ! 1672
	ldd	[a2 + 0], %f0 ! 1672
	ldd	[sp + 80], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 1672
	mv	a0, a1
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	vecscale.2656
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a0, sp, 24 ! 0
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	p_nvectors.2722
	addi	sp, sp, -104
	lw	ra, sp, 100
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1674
! later
	li	a2, min_caml_nvector ! 1674
	mv	a1, a2
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	veccpy.2627
	addi	sp, sp, -104
	lw	ra, sp, 100
	b	be_cont.8780
be_else.8779:
	li	a0, 0 ! 1667
	lw	a1, sp, 40 ! 0
	slli	a2, a1, 2 ! 1667
	lw	a3, sp, 88 ! 0
! later
be_cont.8780:
	li	a0, l.6835 ! 1677
	ldd	[a0 + 0], %f0 ! 1677
	li	a1, min_caml_nvector ! 1677
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 96] ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	veciprod.2638
	addi	sp, sp, -112
	lw	ra, sp, 108
	ldd	[sp + 96], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1677
	li	a1, min_caml_nvector ! 1679
	lw	a0, sp, 44 ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	vecaccum.2646
	addi	sp, sp, -112
	lw	ra, sp, 108
	lw	a0, sp, 68 ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	o_hilight.2689
	addi	sp, sp, -112
	lw	ra, sp, 108
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1681
	li	a0, 0 ! 1684
	li	a1, min_caml_or_net ! 1684
	lw	a1, a1, 0 ! 1684
	lw	t2, sp, 20 ! 0
	std	%f0, [sp + 104] ! 0
	sw	sp, ra, 116
	lw	t1, t2, 0
	addi	sp, sp, 120
	jalr	ra, t1, 0
	addi	sp, sp, -120
	lw	ra, sp, 116
	li	a1, 0 ! 1684
	bne	a0, a1, be_else.8781
	li	a0, min_caml_nvector ! 1685
	li	a1, min_caml_light ! 1685
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	veciprod.2638
	addi	sp, sp, -120
	lw	ra, sp, 116
	sw	sp, ra, 116
	addi	sp, sp, 120
	call	min_caml_fneg
	addi	sp, sp, -120
	lw	ra, sp, 116
	ldd	[sp + 80], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 1685
	li	a1, min_caml_light ! 1686
	lw	a0, sp, 44 ! 0
	std	%f0, [sp + 112] ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	veciprod.2638
	addi	sp, sp, -128
	lw	ra, sp, 124
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	min_caml_fneg
	addi	sp, sp, -128
	lw	ra, sp, 124
	fmv.s	%f2, %f0
	ldd	[sp + 112], %f0 ! 0
	ldd	[sp + 104], %f4 ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	add_light.2935
	addi	sp, sp, -128
	lw	ra, sp, 124
	b	be_cont.8782
be_else.8781:
be_cont.8782:
	li	a0, min_caml_intersection_point ! 1691
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	setup_startp.2858
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a0, min_caml_n_reflections ! 1692
	lw	a0, a0, 0 ! 1692
	addi	a0, a0, -1 ! 1692
	ldd	[sp + 80], %f0 ! 0
	ldd	[sp + 104], %f2 ! 0
	lw	a1, sp, 44 ! 0
	lw	t2, sp, 16 ! 0
	sw	sp, ra, 124
	lw	t1, t2, 0
	addi	sp, sp, 128
	jalr	ra, t1, 0
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a0, l.6839 ! 1695
	ldd	[a0 + 0], %f0 ! 1695
	ldd	[sp + 32], %f2 ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	min_caml_fless
	addi	sp, sp, -128
	lw	ra, sp, 124
	li	a1, 0 ! 1695
	bne	a0, a1, be_else.8783
	ret ! 1706
be_else.8783:
	li	a0, 4 ! 1697
	lw	a1, sp, 40 ! 0
	bg	a0, a1, ble_else.8785
	b	ble_cont.8786
ble_else.8785:
	addi	a0, a1, 1 ! 1698
	li	a2, -1 ! 1698
	slli	a0, a0, 2 ! 1698
	lw	a3, sp, 48 ! 0
! later
ble_cont.8786:
	li	a0, 2 ! 1701
	lw	a2, sp, 72 ! 0
	bne	a2, a0, be_else.8787
	li	a0, l.6307 ! 1702
	ldd	[a0 + 0], %f0 ! 1702
	lw	a0, sp, 68 ! 0
	std	%f0, [sp + 120] ! 0
	sw	sp, ra, 132
	addi	sp, sp, 136
	call	o_diffuse.2687
	addi	sp, sp, -136
	lw	ra, sp, 132
	ldd	[sp + 120], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 1702
	ldd	[sp + 32], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1702
	lw	a0, sp, 40 ! 0
	addi	a0, a0, 1 ! 1703
	li	a1, min_caml_tmin ! 1703
	ldd	[a1 + 0], %f2 ! 1703
	ldd	[sp + 8], %f4 ! 0
	fadd.s	%f2, %f4, %f2 ! 1703
	lw	a1, sp, 44 ! 0
	lw	a2, sp, 24 ! 0
	lw	t2, sp, 0 ! 0
	sw	sp, ra, 132
	lw	t1, t2, 0
	addi	sp, sp, 136
	jalr	ra, t1, 0
	addi	sp, sp, -136
	lw	ra, sp, 132
	b	be_cont.8788
be_else.8787:
be_cont.8788:
	ret ! 1701
ble_else.8768:
	ret ! 1727
trace_diffuse_ray.2950:
	lw	a1, t2, 4 ! 0
	std	%f0, [sp + 0] ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	judge_intersection_fast.2921
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1741
	bne	a0, a1, be_else.8791
	ret ! 1752
be_else.8791:
	li	a0, min_caml_objects ! 1742
	li	a1, min_caml_intersected_object_id ! 1742
	lw	a1, a1, 0 ! 1742
	slli	a1, a1, 2 ! 1742
! later
	lw	a1, sp, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	d_vec.2724
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	get_nvector.2929
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, min_caml_intersection_point ! 1744
	lw	a0, sp, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	utexture.2932
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a0, 0 ! 1747
	li	a1, min_caml_or_net ! 1747
	lw	a1, a1, 0 ! 1747
	lw	t2, sp, 8 ! 0
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1747
	bne	a0, a1, be_else.8793
	li	a0, min_caml_nvector ! 1748
	li	a1, min_caml_light ! 1748
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	veciprod.2638
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_fneg
	addi	sp, sp, -24
	lw	ra, sp, 20
	std	%f0, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fispos
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1749
	bne	a0, a1, be_else.8795
	li	a0, l.6305 ! 1749
	ldd	[a0 + 0], %f0 ! 1749
	b	be_cont.8796
be_else.8795:
	ldd	[sp + 24], %f0 ! 0
be_cont.8796:
	li	a0, min_caml_diffuse_ray ! 1750
	ldd	[sp + 0], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1750
	lw	a1, sp, 16 ! 0
	sw	sp, a0, 32 ! 0
	std	%f0, [sp + 40] ! 0
	mv	a0, a1
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	o_diffuse.2687
	addi	sp, sp, -56
	lw	ra, sp, 52
	ldd	[sp + 40], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1750
	li	a1, min_caml_texture_color ! 1750
	lw	a0, sp, 32 ! 0
	j	vecaccum.2646
be_else.8793:
	ret ! 1751
iter_trace_diffuse_rays.2953:
	lw	%l0, t2, 4 ! 0
	li	%l1, 0 ! 1758
	bg	a3, %l1, ble_else.8799
	slli	%l1, a3, 2 ! 1759
! later
	sw	sp, a2, 0 ! 0
	sw	sp, t2, 4 ! 0
	sw	sp, %l0, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, a1, 20 ! 0
	mv	a0, %l1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	d_vec.2724
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	veciprod.2638
	addi	sp, sp, -32
	lw	ra, sp, 28
	std	%f0, [sp + 24] ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fisneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 1763
	bne	a0, a1, be_else.8800
	lw	a0, sp, 16 ! 0
	slli	a1, a0, 2 ! 1766
	lw	a2, sp, 12 ! 0
! later
	li	a3, l.6861 ! 1766
	ldd	[a3 + 0], %f0 ! 1766
	ldd	[sp + 24], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 1766
	lw	t2, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	lw	t1, t2, 0
	addi	sp, sp, 40
	jalr	ra, t1, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	b	be_cont.8801
be_else.8800:
	lw	a0, sp, 16 ! 0
	addi	a1, a0, 1 ! 1764
	slli	a1, a1, 2 ! 1764
	lw	a2, sp, 12 ! 0
! later
	li	a3, l.6858 ! 1764
	ldd	[a3 + 0], %f0 ! 1764
	ldd	[sp + 24], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 1764
	lw	t2, sp, 8 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	lw	t1, t2, 0
	addi	sp, sp, 40
	jalr	ra, t1, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
be_cont.8801:
	lw	a0, sp, 16 ! 0
	addi	a3, a0, -2 ! 1768
	lw	a0, sp, 12 ! 0
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 0 ! 0
	lw	t2, sp, 4 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
ble_else.8799:
	ret ! 1769
trace_diffuse_rays.2958:
	lw	a3, t2, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a3, 12 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	setup_startp.2858
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a3, 118 ! 1778
	lw	a0, sp, 8 ! 0
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	t2, sp, 12 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
trace_diffuse_ray_80percent.2962:
	lw	t2, t2, 4 ! 0
	li	a3, 0 ! 1785
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, t2, 8 ! 0
	sw	sp, a0, 12 ! 0
	bne	a0, a3, be_else.8803
	b	be_cont.8804
be_else.8803:
	li	a3, min_caml_dirvecs ! 1786
	lw	a3, a3, 0 ! 1786
	mv	a0, a3
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.8804:
	li	a0, 1 ! 1789
	lw	a1, sp, 12 ! 0
	bne	a1, a0, be_else.8805
	b	be_cont.8806
be_else.8805:
	li	a0, min_caml_dirvecs ! 1790
	lw	a0, a0, 4 ! 1790
	lw	a2, sp, 4 ! 0
	lw	a3, sp, 0 ! 0
	lw	t2, sp, 8 ! 0
	mv	a1, a2
	mv	a2, a3
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.8806:
	li	a0, 2 ! 1793
	lw	a1, sp, 12 ! 0
	bne	a1, a0, be_else.8807
	b	be_cont.8808
be_else.8807:
	li	a0, min_caml_dirvecs ! 1794
	lw	a0, a0, 8 ! 1794
	lw	a2, sp, 4 ! 0
	lw	a3, sp, 0 ! 0
	lw	t2, sp, 8 ! 0
	mv	a1, a2
	mv	a2, a3
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.8808:
	li	a0, 3 ! 1797
	lw	a1, sp, 12 ! 0
	bne	a1, a0, be_else.8809
	b	be_cont.8810
be_else.8809:
	li	a0, min_caml_dirvecs ! 1798
	lw	a0, a0, 12 ! 1798
	lw	a2, sp, 4 ! 0
	lw	a3, sp, 0 ! 0
	lw	t2, sp, 8 ! 0
	mv	a1, a2
	mv	a2, a3
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.8810:
	li	a0, 4 ! 1801
	lw	a1, sp, 12 ! 0
	bne	a1, a0, be_else.8811
	ret ! 1803
be_else.8811:
	li	a0, min_caml_dirvecs ! 1802
	lw	a0, a0, 16 ! 1802
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	t2, sp, 8 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
calc_diffuse_using_1point.2966:
	lw	a2, t2, 4 ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	p_received_ray_20percent.2715
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_nvectors.2722
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_intersection_points.2707
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	p_energy.2713
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, min_caml_diffuse_ray ! 1816
	lw	a2, sp, 4 ! 0
	slli	a3, a2, 2 ! 1816
	lw	%l0, sp, 12 ! 0
! later
	sw	sp, a0, 24 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	veccpy.2627
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	p_group_id.2717
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 1819
	lw	a3, sp, 16 ! 0
! later
	slli	a3, a1, 2 ! 1820
	lw	%l0, sp, 20 ! 0
! later
	lw	t2, sp, 0 ! 0
	mv	a1, a2
	mv	a2, a3
	sw	sp, ra, 28
	lw	t1, t2, 0
	addi	sp, sp, 32
	jalr	ra, t1, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, min_caml_rgb ! 1821
	lw	a1, sp, 4 ! 0
	slli	a1, a1, 2 ! 1821
	lw	a2, sp, 24 ! 0
! later
	li	a2, min_caml_diffuse_ray ! 1821
	j	vecaccumv.2659
calc_diffuse_using_5points.2969:
	slli	%l1, a0, 2 ! 1830
! later
	sw	sp, %l0, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_received_ray_20percent.2715
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	addi	a2, a1, -1 ! 1831
	slli	a2, a2, 2 ! 1831
	lw	a3, sp, 8 ! 0
! later
	sw	sp, a0, 16 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_received_ray_20percent.2715
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 1832
	lw	a3, sp, 8 ! 0
! later
	sw	sp, a0, 20 ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	p_received_ray_20percent.2715
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 12 ! 0
	addi	a2, a1, 1 ! 1833
	slli	a2, a2, 2 ! 1833
	lw	a3, sp, 8 ! 0
! later
	sw	sp, a0, 24 ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	p_received_ray_20percent.2715
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 1834
	lw	a3, sp, 4 ! 0
! later
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	p_received_ray_20percent.2715
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, min_caml_diffuse_ray ! 1836
	lw	a2, sp, 0 ! 0
	slli	a3, a2, 2 ! 1836
	lw	%l0, sp, 16 ! 0
! later
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	veccpy.2627
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_diffuse_ray ! 1837
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 1837
	lw	a3, sp, 20 ! 0
! later
	mv	a1, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	vecadd.2650
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_diffuse_ray ! 1838
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 1838
	lw	a3, sp, 24 ! 0
! later
	mv	a1, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	vecadd.2650
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_diffuse_ray ! 1839
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 1839
	lw	a3, sp, 28 ! 0
! later
	mv	a1, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	vecadd.2650
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_diffuse_ray ! 1840
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 1840
	lw	a3, sp, 32 ! 0
! later
	mv	a1, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	vecadd.2650
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 12 ! 0
	slli	a0, a0, 2 ! 1842
	lw	a1, sp, 8 ! 0
! later
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	p_energy.2713
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, min_caml_rgb ! 1843
	lw	a2, sp, 0 ! 0
	slli	a2, a2, 2 ! 1843
! later
	li	a2, min_caml_diffuse_ray ! 1843
	mv	t1, a1
	mv	a1, a0
	mv	a0, t1
	j	vecaccumv.2659
do_without_neighbors.2975:
	lw	a2, t2, 4 ! 0
	li	a3, 4 ! 1849
	bg	a3, a1, ble_else.8813
	sw	sp, t2, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a0, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_surface_ids.2709
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1852
	lw	a2, sp, 12 ! 0
	slli	a3, a2, 2 ! 1852
! later
	bg	a0, a1, ble_else.8814
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_calc_diffuse.2711
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	slli	a2, a1, 2 ! 1854
! later
	li	a2, 0 ! 1854
	bne	a0, a2, be_else.8815
	b	be_cont.8816
be_else.8815:
	lw	a0, sp, 8 ! 0
	lw	t2, sp, 4 ! 0
	sw	sp, ra, 20
	lw	t1, t2, 0
	addi	sp, sp, 24
	jalr	ra, t1, 0
	addi	sp, sp, -24
	lw	ra, sp, 20
be_cont.8816:
	lw	a0, sp, 12 ! 0
	addi	a1, a0, 1 ! 1857
	lw	a0, sp, 8 ! 0
	lw	t2, sp, 0 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
ble_else.8814:
	ret ! 1858
ble_else.8813:
	ret ! 1859
neighbors_exist.2978:
	li	a2, min_caml_image_size ! 1864
	lw	a2, a2, 4 ! 1864
	addi	a3, a1, 1 ! 1864
	bg	a3, a2, ble_else.8819
	li	a0, 0 ! 1872
	ret ! 1872
ble_else.8819:
	li	a2, 0 ! 1865
	bg	a2, a1, ble_else.8820
	li	a0, 0 ! 1871
	ret ! 1871
ble_else.8820:
	li	a1, min_caml_image_size ! 1866
	lw	a1, a1, 0 ! 1866
	addi	a2, a0, 1 ! 1866
	bg	a2, a1, ble_else.8821
	li	a0, 0 ! 1870
	ret ! 1870
ble_else.8821:
	li	a1, 0 ! 1867
	bg	a1, a0, ble_else.8822
	li	a0, 0 ! 1869
	ret ! 1869
ble_else.8822:
	li	a0, 1 ! 1868
	ret ! 1868
get_surface_id.2982:
	sw	sp, a1, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	p_surface_ids.2709
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	slli	a1, a1, 2 ! 1877
! later
	ret ! 1877
neighbors_are_available.2985:
	slli	%l1, a0, 2 ! 1883
! later
	sw	sp, a2, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, %l0, 8 ! 0
	sw	sp, a1, 12 ! 0
	sw	sp, a0, 16 ! 0
	mv	a1, %l0
	mv	a0, %l1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	get_surface_id.2982
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 16 ! 0
	slli	a2, a1, 2 ! 1885
	lw	a3, sp, 12 ! 0
! later
	lw	a3, sp, 8 ! 0
	sw	sp, a0, 20 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	get_surface_id.2982
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.8823
	lw	a0, sp, 16 ! 0
	slli	a2, a0, 2 ! 1886
	lw	a3, sp, 4 ! 0
! later
	lw	a3, sp, 8 ! 0
	mv	a1, a3
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	get_surface_id.2982
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.8824
	lw	a0, sp, 16 ! 0
	addi	a2, a0, -1 ! 1887
	slli	a2, a2, 2 ! 1887
	lw	a3, sp, 0 ! 0
! later
	lw	%l0, sp, 8 ! 0
	mv	a1, %l0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	get_surface_id.2982
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.8825
	lw	a0, sp, 16 ! 0
	addi	a0, a0, 1 ! 1888
	slli	a0, a0, 2 ! 1888
	lw	a2, sp, 0 ! 0
! later
	lw	a2, sp, 8 ! 0
	mv	a1, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	get_surface_id.2982
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 20 ! 0
	bne	a0, a1, be_else.8826
	li	a0, 1 ! 1889
	ret ! 1889
be_else.8826:
	li	a0, 0 ! 1890
	ret ! 1890
be_else.8825:
	li	a0, 0 ! 1891
	ret ! 1891
be_else.8824:
	li	a0, 0 ! 1892
	ret ! 1892
be_else.8823:
	li	a0, 0 ! 1893
	ret ! 1893
try_exploit_neighbors.2991:
	lw	%l2, t2, 4 ! 0
	slli	%l3, a0, 2 ! 1901
! later
	li	%l4, 4 ! 1902
	bg	%l4, %l1, ble_else.8827
	li	%l4, 0 ! 1905
	sw	sp, a1, 0 ! 0
	sw	sp, t2, 4 ! 0
	sw	sp, %l3, 8 ! 0
	sw	sp, %l2, 12 ! 0
	sw	sp, %l1, 16 ! 0
	sw	sp, %l0, 20 ! 0
	sw	sp, a3, 24 ! 0
	sw	sp, a2, 28 ! 0
	sw	sp, a0, 32 ! 0
	sw	sp, %l4, 36 ! 0
	mv	a1, %l1
	mv	a0, %l3
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	get_surface_id.2982
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a1, sp, 36 ! 0
	bg	a0, a1, ble_else.8828
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 24 ! 0
	lw	a3, sp, 20 ! 0
	lw	%l0, sp, 16 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	neighbors_are_available.2985
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a1, 0 ! 1907
	bne	a0, a1, be_else.8829
	lw	a0, sp, 32 ! 0
	slli	a0, a0, 2 ! 1919
	lw	a1, sp, 24 ! 0
! later
	lw	a1, sp, 16 ! 0
	lw	t2, sp, 12 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
be_else.8829:
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	p_calc_diffuse.2711
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	%l0, sp, 16 ! 0
	slli	a1, %l0, 2 ! 1911
! later
	li	a1, 0 ! 1911
	bne	a0, a1, be_else.8830
	b	be_cont.8831
be_else.8830:
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 28 ! 0
	lw	a2, sp, 24 ! 0
	lw	a3, sp, 20 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	calc_diffuse_using_5points.2969
	addi	sp, sp, -48
	lw	ra, sp, 44
be_cont.8831:
	lw	a0, sp, 16 ! 0
	addi	%l1, a0, 1 ! 1916
	lw	a0, sp, 32 ! 0
	lw	a1, sp, 0 ! 0
	lw	a2, sp, 28 ! 0
	lw	a3, sp, 24 ! 0
	lw	%l0, sp, 20 ! 0
	lw	t2, sp, 4 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
ble_else.8828:
	ret ! 1920
ble_else.8827:
	ret ! 1921
write_ppm_header.2998:
	li	a0, 80 ! 1929
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 51 ! 1930
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 1931
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_image_size ! 1932
	lw	a0, a0, 0 ! 1932
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 1933
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_image_size ! 1934
	lw	a0, a0, 4 ! 1934
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 1935
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 255 ! 1936
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_int
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 1937
	j	min_caml_print_char
write_rgb_element.3000:
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_int_of_float
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 255 ! 1943
	bg	a0, a1, ble_else.8834
	li	a1, 0 ! 1943
	bg	a1, a0, ble_else.8836
	b	ble_cont.8837
ble_else.8836:
	li	a0, 0 ! 1943
ble_cont.8837:
	b	ble_cont.8835
ble_else.8834:
	li	a0, 255 ! 1943
ble_cont.8835:
	j	min_caml_print_int
write_rgb.3002:
	li	a0, min_caml_rgb ! 1948
	ldd	[a0 + 0], %f0 ! 1948
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	write_rgb_element.3000
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 1949
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_rgb ! 1950
	ldd	[a0 + 8], %f0 ! 1950
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	write_rgb_element.3000
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 32 ! 1951
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_print_char
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, min_caml_rgb ! 1952
	ldd	[a0 + 16], %f0 ! 1952
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	write_rgb_element.3000
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 10 ! 1953
	j	min_caml_print_char
pretrace_diffuse_rays.3004:
	lw	a2, t2, 4 ! 0
	li	a3, 4 ! 1965
	bg	a3, a1, ble_else.8838
	sw	sp, t2, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	get_surface_id.2982
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 0 ! 1969
	bg	a0, a1, ble_else.8839
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_calc_diffuse.2711
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 1972
! later
	li	a2, 0 ! 1972
	bne	a0, a2, be_else.8840
	b	be_cont.8841
be_else.8840:
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_group_id.2717
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, min_caml_diffuse_ray ! 1974
	sw	sp, a0, 16 ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	vecbzero.2625
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	p_nvectors.2722
	addi	sp, sp, -24
	lw	ra, sp, 20
	lw	a1, sp, 12 ! 0
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	p_intersection_points.2707
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a1, min_caml_dirvecs ! 1981
	lw	a2, sp, 16 ! 0
	slli	a2, a2, 2 ! 1981
! later
	lw	a2, sp, 8 ! 0
	slli	a3, a2, 2 ! 1982
	lw	%l0, sp, 20 ! 0
! later
	slli	%l0, a2, 2 ! 1983
! later
	lw	t2, sp, 4 ! 0
	mv	a2, a0
	mv	a1, a3
	mv	a0, a1
	sw	sp, ra, 28
	lw	t1, t2, 0
	addi	sp, sp, 32
	jalr	ra, t1, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 12 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	p_received_ray_20percent.2715
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a1, sp, 8 ! 0
	slli	a2, a1, 2 ! 1985
! later
	li	a2, min_caml_diffuse_ray ! 1985
	mv	a1, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	veccpy.2627
	addi	sp, sp, -32
	lw	ra, sp, 28
be_cont.8841:
	lw	a0, sp, 8 ! 0
	addi	a1, a0, 1 ! 1987
	lw	a0, sp, 12 ! 0
	lw	t2, sp, 0 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
ble_else.8839:
	ret ! 1988
ble_else.8838:
	ret ! 1989
pretrace_pixels.3007:
	lw	a3, t2, 8 ! 0
	lw	%l0, t2, 4 ! 0
	li	%l1, 0 ! 1995
	bg	a1, %l1, ble_else.8844
	li	%l1, min_caml_scan_pitch ! 1997
	ldd	[%l1 + 0], %f6 ! 1997
	li	%l1, min_caml_image_center ! 1997
	lw	%l1, %l1, 0 ! 1997
	sub	%l1, a1, %l1 ! 1997
	sw	sp, t2, 0 ! 0
	sw	sp, %l0, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, a3, 12 ! 0
	sw	sp, a0, 16 ! 0
	sw	sp, a1, 20 ! 0
	std	%f4, [sp + 24] ! 0
	std	%f2, [sp + 32] ! 0
	std	%f0, [sp + 40] ! 0
	std	%f6, [sp + 48] ! 0
	mv	a0, %l1
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	min_caml_float_of_int
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 1997
	li	a0, min_caml_ptrace_dirvec ! 1998
	li	a1, min_caml_screenx_dir ! 1998
	ldd	[a1 + 0], %f2 ! 1998
	fmul.s	%f2, %f0, %f2 ! 1998
	ldd	[sp + 40], %f4 ! 0
	fadd.s	%f2, %f2, %f4 ! 1998
	std	%f2, [a0 + 0] ! 1998
	li	a0, min_caml_ptrace_dirvec ! 1999
	li	a1, min_caml_screenx_dir ! 1999
	ldd	[a1 + 8], %f2 ! 1999
	fmul.s	%f2, %f0, %f2 ! 1999
	ldd	[sp + 32], %f6 ! 0
	fadd.s	%f2, %f2, %f6 ! 1999
	std	%f2, [a0 + 8] ! 1999
	li	a0, min_caml_ptrace_dirvec ! 2000
	li	a1, min_caml_screenx_dir ! 2000
	ldd	[a1 + 16], %f2 ! 2000
	fmul.s	%f0, %f0, %f2 ! 2000
	ldd	[sp + 24], %f2 ! 0
	fadd.s	%f0, %f0, %f2 ! 2000
	std	%f0, [a0 + 16] ! 2000
	li	a0, min_caml_ptrace_dirvec ! 2001
	li	a1, 0 ! 2001
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	vecunit_sgn.2635
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, min_caml_rgb ! 2002
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	vecbzero.2625
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, min_caml_startp ! 2003
	li	a1, min_caml_viewpoint ! 2003
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	veccpy.2627
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a0, 0 ! 2006
	li	a1, l.6307 ! 2006
	ldd	[a1 + 0], %f0 ! 2006
	li	a1, min_caml_ptrace_dirvec ! 2006
	lw	a2, sp, 20 ! 0
	slli	a3, a2, 2 ! 2006
	lw	%l0, sp, 16 ! 0
! later
	li	%l1, l.6305 ! 2006
	ldd	[%l1 + 0], %f2 ! 2006
	lw	t2, sp, 12 ! 0
	mv	a2, a3
	sw	sp, ra, 60
	lw	t1, t2, 0
	addi	sp, sp, 64
	jalr	ra, t1, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 2007
	lw	a2, sp, 16 ! 0
! later
	mv	a0, a1
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	p_rgb.2705
	addi	sp, sp, -64
	lw	ra, sp, 60
	li	a1, min_caml_rgb ! 2007
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	veccpy.2627
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 2008
	lw	a2, sp, 16 ! 0
! later
	lw	a3, sp, 8 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	p_set_group_id.2719
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	slli	a1, a0, 2 ! 2011
	lw	a2, sp, 16 ! 0
! later
	li	a3, 0 ! 2011
	lw	t2, sp, 4 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 60
	lw	t1, t2, 0
	addi	sp, sp, 64
	jalr	ra, t1, 0
	addi	sp, sp, -64
	lw	ra, sp, 60
	lw	a0, sp, 20 ! 0
	addi	a0, a0, -1 ! 2013
	li	a1, 1 ! 2013
	lw	a2, sp, 8 ! 0
	sw	sp, a0, 56 ! 0
	mv	a0, a2
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	add_mod5.2614
	addi	sp, sp, -64
	lw	ra, sp, 60
	mv	a2, a0
	ldd	[sp + 40], %f0 ! 0
	ldd	[sp + 32], %f2 ! 0
	ldd	[sp + 24], %f4 ! 0
	lw	a0, sp, 16 ! 0
	lw	a1, sp, 56 ! 0
	lw	t2, sp, 0 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
ble_else.8844:
	ret ! 2015
pretrace_line.3014:
	lw	a3, t2, 4 ! 0
	li	%l0, min_caml_scan_pitch ! 2020
	ldd	[%l0 + 0], %f0 ! 2020
	li	%l0, min_caml_image_center ! 2020
	lw	%l0, %l0, 4 ! 2020
	sub	a1, a1, %l0 ! 2020
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a3, 8 ! 0
	std	%f0, [sp + 16] ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 2020
	li	a0, min_caml_screeny_dir ! 2023
	ldd	[a0 + 0], %f2 ! 2023
	fmul.s	%f2, %f0, %f2 ! 2023
	li	a0, min_caml_screenz_dir ! 2023
	ldd	[a0 + 0], %f4 ! 2023
	fadd.s	%f2, %f2, %f4 ! 2023
	li	a0, min_caml_screeny_dir ! 2024
	ldd	[a0 + 8], %f4 ! 2024
	fmul.s	%f4, %f0, %f4 ! 2024
	li	a0, min_caml_screenz_dir ! 2024
	ldd	[a0 + 8], %f6 ! 2024
	fadd.s	%f4, %f4, %f6 ! 2024
	li	a0, min_caml_screeny_dir ! 2025
	ldd	[a0 + 16], %f6 ! 2025
	fmul.s	%f0, %f0, %f6 ! 2025
	li	a0, min_caml_screenz_dir ! 2025
	ldd	[a0 + 16], %f6 ! 2025
	fadd.s	%f0, %f0, %f6 ! 2025
	li	a0, min_caml_image_size ! 2026
	lw	a0, a0, 0 ! 2026
	addi	a1, a0, -1 ! 2026
	lw	a0, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	lw	t2, sp, 8 ! 0
	fmv.s	%f30, %f4
	fmv.s	%f4, %f0
	fmv.s	%f0, %f2
	fmv.s	%f2, %f30
	lw	 t1, t2, 0
	jalr	zero, t1, 0
scan_pixel.3018:
	lw	%l1, t2, 8 ! 0
	lw	%l2, t2, 4 ! 0
	li	%l3, min_caml_image_size ! 2036
	lw	%l3, %l3, 0 ! 2036
	bg	a0, %l3, ble_else.8847
	ret ! 2051
ble_else.8847:
	li	%l3, min_caml_rgb ! 2039
	slli	%l4, a0, 2 ! 2039
! later
	sw	sp, t2, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, %l1, 8 ! 0
	sw	sp, %l2, 12 ! 0
	sw	sp, a3, 16 ! 0
	sw	sp, %l0, 20 ! 0
	sw	sp, a1, 24 ! 0
	sw	sp, a0, 28 ! 0
	sw	sp, %l3, 32 ! 0
	mv	a0, %l4
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	p_rgb.2705
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	veccpy.2627
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 20 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	neighbors_exist.2978
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 2042
	bne	a0, a1, be_else.8849
	lw	a0, sp, 28 ! 0
	slli	a1, a0, 2 ! 2045
	lw	a2, sp, 16 ! 0
! later
	li	a3, 0 ! 2045
	lw	t2, sp, 12 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 36
	lw	t1, t2, 0
	addi	sp, sp, 40
	jalr	ra, t1, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	b	be_cont.8850
be_else.8849:
	li	%l1, 0 ! 2043
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 4 ! 0
	lw	a3, sp, 16 ! 0
	lw	%l0, sp, 20 ! 0
	lw	t2, sp, 8 ! 0
	sw	sp, ra, 36
	lw	t1, t2, 0
	addi	sp, sp, 40
	jalr	ra, t1, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
be_cont.8850:
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	write_rgb.3002
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 28 ! 0
	addi	a0, a0, 1 ! 2050
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 4 ! 0
	lw	a3, sp, 16 ! 0
	lw	%l0, sp, 20 ! 0
	lw	t2, sp, 0 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
scan_line.3024:
	lw	%l1, t2, 8 ! 0
	lw	%l2, t2, 4 ! 0
	li	%l3, min_caml_image_size ! 2057
	lw	%l3, %l3, 4 ! 2057
	bg	a0, %l3, ble_else.8851
	ret ! 2064
ble_else.8851:
	li	%l3, min_caml_image_size ! 2059
	lw	%l3, %l3, 4 ! 2059
	addi	%l3, %l3, -1 ! 2059
	sw	sp, t2, 0 ! 0
	sw	sp, %l0, 4 ! 0
	sw	sp, a3, 8 ! 0
	sw	sp, a2, 12 ! 0
	sw	sp, a1, 16 ! 0
	sw	sp, a0, 20 ! 0
	sw	sp, %l1, 24 ! 0
	bg	%l3, a0, ble_else.8853
	b	ble_cont.8854
ble_else.8853:
	addi	%l3, a0, 1 ! 2060
	mv	a2, %l0
	mv	a1, %l3
	mv	a0, a3
	mv	%l2, t2
	sw	sp, ra, 28
	lw	t1, t2, 0
	addi	sp, sp, 32
	jalr	ra, t1, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
ble_cont.8854:
	li	a0, 0 ! 2062
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 16 ! 0
	lw	a3, sp, 12 ! 0
	lw	%l0, sp, 8 ! 0
	lw	t2, sp, 24 ! 0
	sw	sp, ra, 28
	lw	t1, t2, 0
	addi	sp, sp, 32
	jalr	ra, t1, 0
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 20 ! 0
	addi	a0, a0, 1 ! 2063
	li	a1, 2 ! 2063
	lw	a2, sp, 4 ! 0
	sw	sp, a0, 28 ! 0
	mv	a0, a2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	add_mod5.2614
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	%l0, a0
	lw	a0, sp, 28 ! 0
	lw	a1, sp, 12 ! 0
	lw	a2, sp, 8 ! 0
	lw	a3, sp, 16 ! 0
	lw	t2, sp, 0 ! 0
	sw	sp, ra, 36
	lw	t1, t2, 0
	addi	sp, sp, 40
	jalr	ra, t1, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	ret ! 2063
create_float5x3array.3030:
	li	a0, 3 ! 2074
	li	a1, l.6305 ! 2074
	ldd	[a1 + 0], %f0 ! 2074
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	li	a0, 5 ! 2075
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 3 ! 2076
	li	a2, l.6305 ! 2076
	ldd	[a2 + 0], %f0 ! 2076
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 4 ! 2076
	li	a0, 3 ! 2077
	li	a2, l.6305 ! 2077
	ldd	[a2 + 0], %f0 ! 2077
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 8 ! 2077
	li	a0, 3 ! 2078
	li	a2, l.6305 ! 2078
	ldd	[a2 + 0], %f0 ! 2078
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 12 ! 2078
	li	a0, 3 ! 2079
	li	a2, l.6305 ! 2079
	ldd	[a2 + 0], %f0 ! 2079
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a1, sp, 0 ! 0
	sw	a1, a0, 16 ! 2079
	mv	a0, a1 ! 2080
	ret ! 2080
create_pixel.3032:
	li	a0, 3 ! 2086
	li	a1, l.6305 ! 2086
	ldd	[a1 + 0], %f0 ! 2086
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	create_float5x3array.3030
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 5 ! 2088
	li	a2, 0 ! 2088
	sw	sp, a0, 4 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 5 ! 2089
	li	a2, 0 ! 2089
	sw	sp, a0, 8 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	sw	sp, a0, 12 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	create_float5x3array.3030
	addi	sp, sp, -24
	lw	ra, sp, 20
	sw	sp, a0, 16 ! 0
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	create_float5x3array.3030
	addi	sp, sp, -24
	lw	ra, sp, 20
	li	a1, 1 ! 2092
	li	a2, 0 ! 2092
	sw	sp, a0, 20 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_create_array
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	create_float5x3array.3030
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, %i1 ! 2094
	addi	%i1, %i1, 32 ! 2094
	sw	a1, a0, 28 ! 2094
	lw	a0, sp, 24 ! 0
	sw	a1, a0, 24 ! 2094
	lw	a0, sp, 20 ! 0
	sw	a1, a0, 20 ! 2094
	lw	a0, sp, 16 ! 0
	sw	a1, a0, 16 ! 2094
	lw	a0, sp, 12 ! 0
	sw	a1, a0, 12 ! 2094
	lw	a0, sp, 8 ! 0
	sw	a1, a0, 8 ! 2094
	lw	a0, sp, 4 ! 0
	sw	a1, a0, 4 ! 2094
	lw	a0, sp, 0 ! 0
	sw	a1, a0, 0 ! 2094
	mv	a0, a1 ! 2094
	ret ! 2094
init_line_elements.3034:
	li	a2, 0 ! 2099
	bg	a1, a2, ble_else.8856
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	create_pixel.3032
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 2100
	lw	a3, sp, 0 ! 0
! later
	addi	a1, a1, -1 ! 2101
	mv	a0, a3
	j	init_line_elements.3034
ble_else.8856:
	ret ! 2103
create_pixelline.3037:
	li	a0, min_caml_image_size ! 2108
	lw	a0, a0, 0 ! 2108
	sw	sp, a0, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	create_pixel.3032
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, min_caml_image_size ! 2109
	lw	a1, a1, 0 ! 2109
	addi	a1, a1, -2 ! 2109
	j	init_line_elements.3034
tan.3039:
	std	%f0, [sp + 0] ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_sin
	addi	sp, sp, -16
	lw	ra, sp, 12
	ldd	[sp + 0], %f2 ! 0
	std	%f0, [sp + 8] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_cos
	addi	sp, sp, -24
	lw	ra, sp, 20
	ldd	[sp + 8], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 2122
	ret ! 2122
adjust_position.3041:
	fmul.s	%f0, %f0, %f0 ! 2127
	li	a0, l.6839 ! 2127
	ldd	[a0 + 0], %f4 ! 2127
	fadd.s	%f0, %f0, %f4 ! 2127
	std	%f2, [sp + 0] ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_sqrt
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.6307 ! 2128
	ldd	[a0 + 0], %f2 ! 2128
	fdiv.s	%f2, %f2, %f0 ! 2128
	std	%f0, [sp + 8] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	min_caml_atan
	addi	sp, sp, -24
	lw	ra, sp, 20
	ldd	[sp + 0], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 2130
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	tan.3039
	addi	sp, sp, -24
	lw	ra, sp, 20
	ldd	[sp + 8], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 2131
	ret ! 2131
calc_dirvec.3044:
	li	a3, 5 ! 2136
	bg	a0, a3, ble_else.8857
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	std	%f0, [sp + 8] ! 0
	std	%f2, [sp + 16] ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fsqr
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	std	%f0, [sp + 24] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fsqr
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 24], %f2 ! 0
	fadd.s	%f0, %f2, %f0 ! 2137
	li	a0, l.6307 ! 2137
	ldd	[a0 + 0], %f2 ! 2137
	fadd.s	%f0, %f0, %f2 ! 2137
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_sqrt
	addi	sp, sp, -40
	lw	ra, sp, 36
	ldd	[sp + 8], %f2 ! 0
	fdiv.s	%f2, %f2, %f0 ! 2138
	ldd	[sp + 16], %f4 ! 0
	fdiv.s	%f4, %f4, %f0 ! 2139
	li	a0, l.6307 ! 2140
	ldd	[a0 + 0], %f6 ! 2140
	fdiv.s	%f0, %f6, %f0 ! 2140
	li	a0, min_caml_dirvecs ! 2143
	lw	a1, sp, 4 ! 0
	slli	a1, a1, 2 ! 2143
! later
	lw	a1, sp, 0 ! 0
	slli	a2, a1, 2 ! 2144
! later
	sw	sp, a0, 32 ! 0
	std	%f0, [sp + 40] ! 0
	std	%f4, [sp + 48] ! 0
	std	%f2, [sp + 56] ! 0
	mv	a0, a2
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	d_vec.2724
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f0 ! 0
	ldd	[sp + 48], %f2 ! 0
	ldd	[sp + 40], %f4 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	vecset.2617
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 40 ! 2145
	slli	a1, a1, 2 ! 2145
	lw	a2, sp, 32 ! 0
! later
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	d_vec.2724
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 48], %f0 ! 0
	sw	sp, a0, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	min_caml_fneg
	addi	sp, sp, -72
	lw	ra, sp, 68
	fmv.s	%f4, %f0
	ldd	[sp + 56], %f0 ! 0
	ldd	[sp + 40], %f2 ! 0
	lw	a0, sp, 64 ! 0
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	vecset.2617
	addi	sp, sp, -72
	lw	ra, sp, 68
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 80 ! 2146
	slli	a1, a1, 2 ! 2146
	lw	a2, sp, 32 ! 0
! later
	mv	a0, a1
	sw	sp, ra, 68
	addi	sp, sp, 72
	call	d_vec.2724
	addi	sp, sp, -72
	lw	ra, sp, 68
	ldd	[sp + 56], %f0 ! 0
	sw	sp, a0, 68 ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	min_caml_fneg
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 48], %f2 ! 0
	std	%f0, [sp + 72] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fneg
	addi	sp, sp, -88
	lw	ra, sp, 84
	fmv.s	%f4, %f0
	ldd	[sp + 40], %f0 ! 0
	ldd	[sp + 72], %f2 ! 0
	lw	a0, sp, 68 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	vecset.2617
	addi	sp, sp, -88
	lw	ra, sp, 84
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 1 ! 2147
	slli	a1, a1, 2 ! 2147
	lw	a2, sp, 32 ! 0
! later
	mv	a0, a1
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	d_vec.2724
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 56], %f0 ! 0
	sw	sp, a0, 80 ! 0
	sw	sp, ra, 84
	addi	sp, sp, 88
	call	min_caml_fneg
	addi	sp, sp, -88
	lw	ra, sp, 84
	ldd	[sp + 48], %f2 ! 0
	std	%f0, [sp + 88] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 100
	addi	sp, sp, 104
	call	min_caml_fneg
	addi	sp, sp, -104
	lw	ra, sp, 100
	ldd	[sp + 40], %f2 ! 0
	std	%f0, [sp + 96] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	min_caml_fneg
	addi	sp, sp, -112
	lw	ra, sp, 108
	fmv.s	%f4, %f0
	ldd	[sp + 88], %f0 ! 0
	ldd	[sp + 96], %f2 ! 0
	lw	a0, sp, 80 ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	vecset.2617
	addi	sp, sp, -112
	lw	ra, sp, 108
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 41 ! 2148
	slli	a1, a1, 2 ! 2148
	lw	a2, sp, 32 ! 0
! later
	mv	a0, a1
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	d_vec.2724
	addi	sp, sp, -112
	lw	ra, sp, 108
	ldd	[sp + 56], %f0 ! 0
	sw	sp, a0, 104 ! 0
	sw	sp, ra, 108
	addi	sp, sp, 112
	call	min_caml_fneg
	addi	sp, sp, -112
	lw	ra, sp, 108
	ldd	[sp + 40], %f2 ! 0
	std	%f0, [sp + 112] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	min_caml_fneg
	addi	sp, sp, -128
	lw	ra, sp, 124
	fmv.s	%f2, %f0
	ldd	[sp + 112], %f0 ! 0
	ldd	[sp + 48], %f4 ! 0
	lw	a0, sp, 104 ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	vecset.2617
	addi	sp, sp, -128
	lw	ra, sp, 124
	lw	a0, sp, 0 ! 0
	addi	a0, a0, 81 ! 2149
	slli	a0, a0, 2 ! 2149
	lw	a1, sp, 32 ! 0
! later
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	d_vec.2724
	addi	sp, sp, -128
	lw	ra, sp, 124
	ldd	[sp + 40], %f0 ! 0
	sw	sp, a0, 120 ! 0
	sw	sp, ra, 124
	addi	sp, sp, 128
	call	min_caml_fneg
	addi	sp, sp, -128
	lw	ra, sp, 124
	ldd	[sp + 56], %f2 ! 0
	ldd	[sp + 48], %f4 ! 0
	lw	a0, sp, 120 ! 0
	j	vecset.2617
ble_else.8857:
	std	%f4, [sp + 128] ! 0
	sw	sp, a2, 0 ! 0
	sw	sp, a1, 4 ! 0
	std	%f6, [sp + 136] ! 0
	sw	sp, a0, 144 ! 0
	fmv.s	%f0, %f2
	fmv.s	%f2, %f4
	sw	sp, ra, 148
	addi	sp, sp, 152
	call	adjust_position.3041
	addi	sp, sp, -152
	lw	ra, sp, 148
	lw	a0, sp, 144 ! 0
	addi	a0, a0, 1 ! 2152
	ldd	[sp + 136], %f2 ! 0
	std	%f0, [sp + 152] ! 0
	sw	sp, a0, 160 ! 0
	sw	sp, ra, 164
	addi	sp, sp, 168
	call	adjust_position.3041
	addi	sp, sp, -168
	lw	ra, sp, 164
	fmv.s	%f2, %f0
	ldd	[sp + 152], %f0 ! 0
	ldd	[sp + 128], %f4 ! 0
	ldd	[sp + 136], %f6 ! 0
	lw	a0, sp, 160 ! 0
	lw	a1, sp, 4 ! 0
	lw	a2, sp, 0 ! 0
	j	calc_dirvec.3044
calc_dirvecs.3052:
	li	a3, 0 ! 2157
	bg	a0, a3, ble_else.8863
	sw	sp, a0, 0 ! 0
	std	%f0, [sp + 8] ! 0
	sw	sp, a2, 16 ! 0
	sw	sp, a1, 20 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.6968 ! 2159
	ldd	[a0 + 0], %f2 ! 2159
	fmul.s	%f0, %f0, %f2 ! 2159
	li	a0, l.6970 ! 2159
	ldd	[a0 + 0], %f2 ! 2159
	fsub.s	%f4, %f0, %f2 ! 2159
	li	a0, 0 ! 2160
	li	a1, l.6305 ! 2160
	ldd	[a1 + 0], %f0 ! 2160
	li	a1, l.6305 ! 2160
	ldd	[a1 + 0], %f2 ! 2160
	ldd	[sp + 8], %f6 ! 0
	lw	a1, sp, 20 ! 0
	lw	a2, sp, 16 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	calc_dirvec.3044
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 0 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, l.6968 ! 2162
	ldd	[a0 + 0], %f2 ! 2162
	fmul.s	%f0, %f0, %f2 ! 2162
	li	a0, l.6839 ! 2162
	ldd	[a0 + 0], %f2 ! 2162
	fadd.s	%f4, %f0, %f2 ! 2162
	li	a0, 0 ! 2163
	li	a1, l.6305 ! 2163
	ldd	[a1 + 0], %f0 ! 2163
	li	a1, l.6305 ! 2163
	ldd	[a1 + 0], %f2 ! 2163
	lw	a1, sp, 16 ! 0
	addi	a2, a1, 2 ! 2163
	ldd	[sp + 8], %f6 ! 0
	lw	a3, sp, 20 ! 0
	mv	a1, a3
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	calc_dirvec.3044
	addi	sp, sp, -32
	lw	ra, sp, 28
	lw	a0, sp, 0 ! 0
	addi	a0, a0, -1 ! 2165
	li	a1, 1 ! 2165
	lw	a2, sp, 20 ! 0
	sw	sp, a0, 24 ! 0
	mv	a0, a2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	add_mod5.2614
	addi	sp, sp, -32
	lw	ra, sp, 28
	mv	a1, a0
	ldd	[sp + 8], %f0 ! 0
	lw	a0, sp, 24 ! 0
	lw	a2, sp, 16 ! 0
	j	calc_dirvecs.3052
ble_else.8863:
	ret ! 2166
calc_dirvec_rows.3057:
	li	a3, 0 ! 2171
	bg	a0, a3, ble_else.8866
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a1, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_float_of_int
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.6968 ! 2172
	ldd	[a0 + 0], %f2 ! 2172
	fmul.s	%f0, %f0, %f2 ! 2172
	li	a0, l.6970 ! 2172
	ldd	[a0 + 0], %f2 ! 2172
	fsub.s	%f0, %f0, %f2 ! 2172
	li	a0, 4 ! 2173
	lw	a1, sp, 8 ! 0
	lw	a2, sp, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	calc_dirvecs.3052
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 0 ! 0
	addi	a0, a0, -1 ! 2174
	li	a1, 2 ! 2174
	lw	a2, sp, 8 ! 0
	sw	sp, a0, 12 ! 0
	mv	a0, a2
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	add_mod5.2614
	addi	sp, sp, -24
	lw	ra, sp, 20
	mv	a1, a0
	lw	a0, sp, 4 ! 0
	addi	a2, a0, 4 ! 2174
	lw	a0, sp, 12 ! 0
	j	calc_dirvec_rows.3057
ble_else.8866:
	ret ! 2175
create_dirvec.3061:
	li	a0, 3 ! 2184
	li	a1, l.6305 ! 2184
	ldd	[a1 + 0], %f0 ! 2184
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, a0
	li	a0, min_caml_n_objects ! 2185
	lw	a0, a0, 0 ! 2185
	sw	sp, a1, 0 ! 0
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	mv	a1, %i1 ! 2186
	addi	%i1, %i1, 8 ! 2186
	sw	a1, a0, 4 ! 2186
	lw	a0, sp, 0 ! 0
	sw	a1, a0, 0 ! 2186
	mv	a0, a1 ! 2186
	ret ! 2186
create_dirvec_elements.3063:
	li	a2, 0 ! 2190
	bg	a1, a2, ble_else.8868
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	create_dirvec.3061
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 2191
	lw	a3, sp, 0 ! 0
! later
	addi	a1, a1, -1 ! 2192
	mv	a0, a3
	j	create_dirvec_elements.3063
ble_else.8868:
	ret ! 2193
create_dirvecs.3066:
	li	a1, 0 ! 2197
	bg	a0, a1, ble_else.8870
	li	a1, min_caml_dirvecs ! 2198
	li	a2, 120 ! 2198
	sw	sp, a1, 0 ! 0
	sw	sp, a0, 4 ! 0
	sw	sp, a2, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	create_dirvec.3061
	addi	sp, sp, -16
	lw	ra, sp, 12
	mv	a1, a0
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a1, sp, 4 ! 0
	slli	a2, a1, 2 ! 2198
	lw	a3, sp, 0 ! 0
! later
	li	a0, min_caml_dirvecs ! 2199
	slli	a2, a1, 2 ! 2199
! later
	li	a2, 118 ! 2199
	mv	a1, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	create_dirvec_elements.3063
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	addi	a0, a0, -1 ! 2200
	j	create_dirvecs.3066
ble_else.8870:
	ret ! 2201
init_dirvec_constants.3068:
	li	a2, 0 ! 2209
	bg	a1, a2, ble_else.8872
	slli	a2, a1, 2 ! 2210
! later
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	mv	a0, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	setup_dirvec_constants.2853
	addi	sp, sp, -16
	lw	ra, sp, 12
	lw	a0, sp, 4 ! 0
	addi	a1, a0, -1 ! 2211
	lw	a0, sp, 0 ! 0
	j	init_dirvec_constants.3068
ble_else.8872:
	ret ! 2212
init_vecset_constants.3071:
	li	a1, 0 ! 2216
	bg	a0, a1, ble_else.8874
	li	a1, min_caml_dirvecs ! 2217
	slli	a2, a0, 2 ! 2217
! later
	li	a2, 119 ! 2217
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	init_dirvec_constants.3068
	addi	sp, sp, -8
	lw	ra, sp, 4
	lw	a0, sp, 0 ! 0
	addi	a0, a0, -1 ! 2218
	j	init_vecset_constants.3071
ble_else.8874:
	ret ! 2219
init_dirvecs.3073:
	li	a0, 4 ! 2223
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	create_dirvecs.3066
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 9 ! 2224
	li	a1, 0 ! 2224
	li	a2, 0 ! 2224
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	calc_dirvec_rows.3057
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a0, 4 ! 2225
	j	init_vecset_constants.3071
add_reflection.3075:
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	std	%f0, [sp + 8] ! 0
	std	%f6, [sp + 16] ! 0
	std	%f4, [sp + 24] ! 0
	std	%f2, [sp + 32] ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	create_dirvec.3061
	addi	sp, sp, -48
	lw	ra, sp, 44
	sw	sp, a0, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	d_vec.2724
	addi	sp, sp, -48
	lw	ra, sp, 44
	ldd	[sp + 32], %f0 ! 0
	ldd	[sp + 24], %f2 ! 0
	ldd	[sp + 16], %f4 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	vecset.2617
	addi	sp, sp, -48
	lw	ra, sp, 44
	lw	a0, sp, 40 ! 0
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	setup_dirvec_constants.2853
	addi	sp, sp, -48
	lw	ra, sp, 44
	li	a0, min_caml_reflections ! 2238
	mv	a1, %i1 ! 2238
	addi	%i1, %i1, 16 ! 2238
	ldd	[sp + 8], %f0 ! 0
	std	%f0, [a1 + 8] ! 2238
	lw	a2, sp, 40 ! 0
	sw	a1, a2, 4 ! 2238
	lw	a2, sp, 4 ! 0
	sw	a1, a2, 0 ! 2238
	lw	a2, sp, 0 ! 0
	slli	a2, a2, 2 ! 2238
! later
	ret ! 2238
setup_rect_reflection.3082:
	li	a2, 4 ! 2243
	mul	a0, a0, a2 ! 2243
	li	a2, min_caml_n_reflections ! 2244
	lw	a2, a2, 0 ! 2244
	li	a3, l.6307 ! 2245
	ldd	[a3 + 0], %f0 ! 2245
	sw	sp, a2, 0 ! 0
	sw	sp, a0, 4 ! 0
	std	%f0, [sp + 8] ! 0
	mv	a0, a1
	sw	sp, ra, 20
	addi	sp, sp, 24
	call	o_diffuse.2687
	addi	sp, sp, -24
	lw	ra, sp, 20
	ldd	[sp + 8], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 2245
	li	a0, min_caml_light ! 2246
	ldd	[a0 + 0], %f2 ! 2246
	std	%f0, [sp + 16] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_fneg
	addi	sp, sp, -32
	lw	ra, sp, 28
	li	a0, min_caml_light ! 2247
	ldd	[a0 + 8], %f2 ! 2247
	std	%f0, [sp + 24] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	min_caml_fneg
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_light ! 2248
	ldd	[a0 + 16], %f2 ! 2248
	std	%f0, [sp + 32] ! 0
	fmv.s	%f0, %f2
	sw	sp, ra, 44
	addi	sp, sp, 48
	call	min_caml_fneg
	addi	sp, sp, -48
	lw	ra, sp, 44
	fmv.s	%f6, %f0
	lw	a0, sp, 4 ! 0
	addi	a1, a0, 1 ! 2249
	li	a2, min_caml_light ! 2249
	ldd	[a2 + 0], %f2 ! 2249
	ldd	[sp + 16], %f0 ! 0
	ldd	[sp + 32], %f4 ! 0
	lw	a2, sp, 0 ! 0
	std	%f6, [sp + 40] ! 0
	mv	a0, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	add_reflection.3075
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 1 ! 2250
	lw	a2, sp, 4 ! 0
	addi	a3, a2, 2 ! 2250
	li	%l0, min_caml_light ! 2250
	ldd	[%l0 + 8], %f4 ! 2250
	ldd	[sp + 16], %f0 ! 0
	ldd	[sp + 24], %f2 ! 0
	ldd	[sp + 40], %f6 ! 0
	mv	a0, a1
	mv	a1, a3
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	add_reflection.3075
	addi	sp, sp, -56
	lw	ra, sp, 52
	lw	a0, sp, 0 ! 0
	addi	a1, a0, 2 ! 2251
	lw	a2, sp, 4 ! 0
	addi	a2, a2, 3 ! 2251
	li	a3, min_caml_light ! 2251
	ldd	[a3 + 16], %f6 ! 2251
	ldd	[sp + 16], %f0 ! 0
	ldd	[sp + 24], %f2 ! 0
	ldd	[sp + 32], %f4 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 52
	addi	sp, sp, 56
	call	add_reflection.3075
	addi	sp, sp, -56
	lw	ra, sp, 52
	li	a0, min_caml_n_reflections ! 2252
	lw	a1, sp, 0 ! 0
	addi	a1, a1, 3 ! 2252
	sw	a0, a1, 0 ! 2252
	ret ! 2252
setup_surface_reflection.3085:
	li	a2, 4 ! 2257
	mul	a0, a0, a2 ! 2257
	addi	a0, a0, 1 ! 2257
	li	a2, min_caml_n_reflections ! 2258
	lw	a2, a2, 0 ! 2258
	li	a3, l.6307 ! 2259
	ldd	[a3 + 0], %f0 ! 2259
	sw	sp, a0, 0 ! 0
	sw	sp, a2, 4 ! 0
	sw	sp, a1, 8 ! 0
	std	%f0, [sp + 16] ! 0
	mv	a0, a1
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	o_diffuse.2687
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	fsub.s	%f0, %f2, %f0 ! 2259
	li	a0, min_caml_light ! 2260
	lw	a1, sp, 8 ! 0
	std	%f0, [sp + 24] ! 0
	sw	sp, a0, 32 ! 0
	mv	a0, a1
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	o_param_abc.2679
	addi	sp, sp, -40
	lw	ra, sp, 36
	mv	a1, a0
	lw	a0, sp, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	veciprod.2638
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, l.6442 ! 2263
	ldd	[a0 + 0], %f2 ! 2263
	lw	a0, sp, 8 ! 0
	std	%f0, [sp + 40] ! 0
	std	%f2, [sp + 48] ! 0
	sw	sp, ra, 60
	addi	sp, sp, 64
	call	o_param_a.2673
	addi	sp, sp, -64
	lw	ra, sp, 60
	ldd	[sp + 48], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 2263
	ldd	[sp + 40], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 2263
	li	a0, min_caml_light ! 2263
	ldd	[a0 + 0], %f4 ! 2263
	fsub.s	%f0, %f0, %f4 ! 2263
	li	a0, l.6442 ! 2264
	ldd	[a0 + 0], %f4 ! 2264
	lw	a0, sp, 8 ! 0
	std	%f0, [sp + 56] ! 0
	std	%f4, [sp + 64] ! 0
	sw	sp, ra, 76
	addi	sp, sp, 80
	call	o_param_b.2675
	addi	sp, sp, -80
	lw	ra, sp, 76
	ldd	[sp + 64], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 2264
	ldd	[sp + 40], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 2264
	li	a0, min_caml_light ! 2264
	ldd	[a0 + 8], %f4 ! 2264
	fsub.s	%f0, %f0, %f4 ! 2264
	li	a0, l.6442 ! 2265
	ldd	[a0 + 0], %f4 ! 2265
	lw	a0, sp, 8 ! 0
	std	%f0, [sp + 72] ! 0
	std	%f4, [sp + 80] ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	o_param_c.2677
	addi	sp, sp, -96
	lw	ra, sp, 92
	ldd	[sp + 80], %f2 ! 0
	fmul.s	%f0, %f2, %f0 ! 2265
	ldd	[sp + 40], %f2 ! 0
	fmul.s	%f0, %f0, %f2 ! 2265
	li	a0, min_caml_light ! 2265
	ldd	[a0 + 16], %f2 ! 2265
	fsub.s	%f6, %f0, %f2 ! 2265
	ldd	[sp + 24], %f0 ! 0
	ldd	[sp + 56], %f2 ! 0
	ldd	[sp + 72], %f4 ! 0
	lw	a0, sp, 4 ! 0
	lw	a1, sp, 0 ! 0
	sw	sp, ra, 92
	addi	sp, sp, 96
	call	add_reflection.3075
	addi	sp, sp, -96
	lw	ra, sp, 92
	li	a0, min_caml_n_reflections ! 2266
	lw	a1, sp, 4 ! 0
	addi	a1, a1, 1 ! 2266
	sw	a0, a1, 0 ! 2266
	ret ! 2266
setup_reflections.3088:
	li	a1, 0 ! 2272
	bg	a0, a1, ble_else.8881
	li	a1, min_caml_objects ! 2273
	slli	a2, a0, 2 ! 2273
! later
	sw	sp, a0, 0 ! 0
	sw	sp, a1, 4 ! 0
	mv	a0, a1
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_reflectiontype.2667
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 2 ! 2274
	bne	a0, a1, be_else.8882
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_diffuse.2687
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a0, l.6307 ! 2275
	ldd	[a0 + 0], %f2 ! 2275
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_fless
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 0 ! 2275
	bne	a0, a1, be_else.8883
	ret ! 2283
be_else.8883:
	lw	a0, sp, 4 ! 0
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	o_form.2665
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	a1, 1 ! 2278
	bne	a0, a1, be_else.8885
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 4 ! 0
	j	setup_rect_reflection.3082
be_else.8885:
	li	a1, 2 ! 2280
	bne	a0, a1, be_else.8886
	lw	a0, sp, 0 ! 0
	lw	a1, sp, 4 ! 0
	j	setup_surface_reflection.3085
be_else.8886:
	ret ! 2282
be_else.8882:
	ret ! 2284
ble_else.8881:
	ret ! 2285
rt.3090:
	lw	a2, t2, 12 ! 0
	lw	a3, t2, 8 ! 0
	lw	%l0, t2, 4 ! 0
	li	%l1, min_caml_image_size ! 2295
	sw	%l1, a0, 0 ! 2295
	li	%l1, min_caml_image_size ! 2296
	sw	%l1, a1, 4 ! 2296
	li	%l1, min_caml_image_center ! 2297
	li	%l2, 2 ! 2297
	div	%l2, a0, %l2 ! 2297
	sw	%l1, %l2, 0 ! 2297
	li	%l1, min_caml_image_center ! 2298
	li	%l2, 2 ! 2298
	div	a1, a1, %l2 ! 2298
	sw	%l1, a1, 4 ! 2298
	li	a1, min_caml_scan_pitch ! 2299
	li	%l1, l.7019 ! 2299
	ldd	[%l1 + 0], %f0 ! 2299
	sw	sp, a2, 0 ! 0
	sw	sp, a3, 4 ! 0
	sw	sp, %l0, 8 ! 0
	sw	sp, a1, 12 ! 0
	std	%f0, [sp + 16] ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	min_caml_float_of_int
	addi	sp, sp, -32
	lw	ra, sp, 28
	ldd	[sp + 16], %f2 ! 0
	fdiv.s	%f0, %f2, %f0 ! 2299
	lw	a0, sp, 12 ! 0
	std	%f0, [a0 + 0] ! 2299
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	create_pixelline.3037
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 24 ! 0
	sw	sp, ra, 28
	addi	sp, sp, 32
	call	create_pixelline.3037
	addi	sp, sp, -32
	lw	ra, sp, 28
	sw	sp, a0, 28 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	create_pixelline.3037
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, a0, 32 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	read_parameter.2755
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	write_ppm_header.2998
	addi	sp, sp, -40
	lw	ra, sp, 36
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	init_dirvecs.3073
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	d_vec.2724
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, min_caml_light ! 2306
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	veccpy.2627
	addi	sp, sp, -40
	lw	ra, sp, 36
	lw	a0, sp, 8 ! 0
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	setup_dirvec_constants.2853
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, min_caml_n_objects ! 2308
	lw	a0, a0, 0 ! 2308
	addi	a0, a0, -1 ! 2308
	sw	sp, ra, 36
	addi	sp, sp, 40
	call	setup_reflections.3088
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a1, 0 ! 2309
	li	a2, 0 ! 2309
	lw	a0, sp, 28 ! 0
	lw	t2, sp, 4 ! 0
	sw	sp, ra, 36
	lw	t1, t2, 0
	addi	sp, sp, 40
	jalr	ra, t1, 0
	addi	sp, sp, -40
	lw	ra, sp, 36
	li	a0, 0 ! 2310
	li	%l0, 2 ! 2310
	lw	a1, sp, 24 ! 0
	lw	a2, sp, 28 ! 0
	lw	a3, sp, 32 ! 0
	lw	t2, sp, 0 ! 0
	lw	 t1, t2, 0
	jalr	zero, t1, 0
min_caml_start:
	li	a0, 0 ! 18
	li	a1, l.6305 ! 18
	ldd	[a1 + 0], %f0 ! 18
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 3 ! 19
	li	a2, l.6305 ! 19
	ldd	[a2 + 0], %f0 ! 19
	sw	sp, a0, 0 ! 0
	mv	a0, a1
	sw	sp, ra, 4
	addi	sp, sp, 8
	call	min_caml_create_float_array
	addi	sp, sp, -8
	lw	ra, sp, 4
	li	a1, 60 ! 20
	lw	a2, sp, 0 ! 0
	sw	sp, a0, 4 ! 0
	mv	a0, a1
	mv	a1, a2
	sw	sp, ra, 12
	addi	sp, sp, 16
	call	min_caml_create_array
	addi	sp, sp, -16
	lw	ra, sp, 12
	mv	a1, %i1 ! 21
	addi	%i1, %i1, 8 ! 21
	sw	a1, a0, 4 ! 21
	lw	a0, sp, 4 ! 0
	sw	a1, a0, 0 ! 21
	mv	a0, a1 ! 21
	mv	a1, %i1 ! 1197
	addi	%i1, %i1, 8 ! 1197
	li	a2, shadow_check_and_group.2886 ! 1197
	sw	a1, a2, 0 ! 1197
	sw	a1, a0, 4 ! 1197
	mv	a2, %i1 ! 1227
	addi	%i1, %i1, 8 ! 1227
	li	a3, shadow_check_one_or_group.2889 ! 1227
	sw	a2, a3, 0 ! 1227
	sw	a2, a1, 4 ! 1227
	mv	a1, %i1 ! 1242
	addi	%i1, %i1, 16 ! 1242
	li	a3, shadow_check_one_or_matrix.2892 ! 1242
	sw	a1, a3, 0 ! 1242
	sw	a1, a2, 8 ! 1242
	sw	a1, a0, 4 ! 1242
	mv	a2, %i1 ! 1616
	addi	%i1, %i1, 8 ! 1616
	li	a3, trace_reflections.2939 ! 1616
	sw	a2, a3, 0 ! 1616
	sw	a2, a1, 4 ! 1616
	mv	a3, %i1 ! 1645
	addi	%i1, %i1, 16 ! 1645
	li	%l0, trace_ray.2944 ! 1645
	sw	a3, %l0, 0 ! 1645
	sw	a3, a2, 8 ! 1645
	sw	a3, a1, 4 ! 1645
	mv	a2, %i1 ! 1738
	addi	%i1, %i1, 8 ! 1738
	li	%l0, trace_diffuse_ray.2950 ! 1738
	sw	a2, %l0, 0 ! 1738
	sw	a2, a1, 4 ! 1738
	mv	a1, %i1 ! 1757
	addi	%i1, %i1, 8 ! 1757
	li	%l0, iter_trace_diffuse_rays.2953 ! 1757
	sw	a1, %l0, 0 ! 1757
	sw	a1, a2, 4 ! 1757
	mv	a2, %i1 ! 1773
	addi	%i1, %i1, 8 ! 1773
	li	%l0, trace_diffuse_rays.2958 ! 1773
	sw	a2, %l0, 0 ! 1773
	sw	a2, a1, 4 ! 1773
	mv	a1, %i1 ! 1783
	addi	%i1, %i1, 8 ! 1783
	li	%l0, trace_diffuse_ray_80percent.2962 ! 1783
	sw	a1, %l0, 0 ! 1783
	sw	a1, a2, 4 ! 1783
	mv	%l0, %i1 ! 1809
	addi	%i1, %i1, 8 ! 1809
	li	%l1, calc_diffuse_using_1point.2966 ! 1809
	sw	%l0, %l1, 0 ! 1809
	sw	%l0, a1, 4 ! 1809
	mv	a1, %i1 ! 1848
	addi	%i1, %i1, 8 ! 1848
	li	%l1, do_without_neighbors.2975 ! 1848
	sw	a1, %l1, 0 ! 1848
	sw	a1, %l0, 4 ! 1848
	mv	%l0, %i1 ! 1900
	addi	%i1, %i1, 8 ! 1900
	li	%l1, try_exploit_neighbors.2991 ! 1900
	sw	%l0, %l1, 0 ! 1900
	sw	%l0, a1, 4 ! 1900
	mv	%l1, %i1 ! 1964
	addi	%i1, %i1, 8 ! 1964
	li	%l2, pretrace_diffuse_rays.3004 ! 1964
	sw	%l1, %l2, 0 ! 1964
	sw	%l1, a2, 4 ! 1964
	mv	a2, %i1 ! 1994
	addi	%i1, %i1, 16 ! 1994
	li	%l2, pretrace_pixels.3007 ! 1994
	sw	a2, %l2, 0 ! 1994
	sw	a2, a3, 8 ! 1994
	sw	a2, %l1, 4 ! 1994
	mv	a3, %i1 ! 2019
	addi	%i1, %i1, 8 ! 2019
	li	%l1, pretrace_line.3014 ! 2019
	sw	a3, %l1, 0 ! 2019
	sw	a3, a2, 4 ! 2019
	mv	a2, %i1 ! 2035
	addi	%i1, %i1, 16 ! 2035
	li	%l1, scan_pixel.3018 ! 2035
	sw	a2, %l1, 0 ! 2035
	sw	a2, %l0, 8 ! 2035
	sw	a2, a1, 4 ! 2035
	mv	a1, %i1 ! 2055
	addi	%i1, %i1, 16 ! 2055
	li	%l0, scan_line.3024 ! 2055
	sw	a1, %l0, 0 ! 2055
	sw	a1, a2, 8 ! 2055
	sw	a1, a3, 4 ! 2055
	mv	t2, %i1 ! 2293
	addi	%i1, %i1, 16 ! 2293
	li	a2, rt.3090 ! 2293
	sw	t2, a2, 0 ! 2293
	sw	t2, a1, 12 ! 2293
	sw	t2, a3, 8 ! 2293
	sw	t2, a0, 4 ! 2293
	li	a0, 512 ! 2314
	li	a1, 512 ! 2314
	sw	sp, ra, 12
	lw	t1, t2, 0
	addi	sp, sp, 16
	jalr	ra, t1, 0
	addi	sp, sp, -16
	lw	ra, sp, 12
	li	zero, 0 ! 2316
