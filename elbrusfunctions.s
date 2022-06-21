	.file	"elbrusfunctions.cpp"
	.ignore	ld_st_style
	.ignore	strict_delay
	.text
	.global	_Z9MulKernelPfS_S_ii
	.type	_Z9MulKernelPfS_S_ii, #function
	.align	8
_Z9MulKernelPfS_S_ii:
	.cfi_startproc
	{
	  setwd	wsz = 0x15, nfx = 0x0, dbl = 0x1
	  return	%ctpr3
	  qppackdl,1	0x0, 0x0, %r40
	  subs,2,sm	%r3, 0x1, %g16
	}
	{
	  cmplsb,0	0x0, %r3, %pred0
	  qpfhadds,1,sm	%r40, %r40, %g17
	  shrs,2,sm	%g16, 0x2, %g16
	}
	{
	  adds,1,sm	%g16, 0x1, %g16
	}
	{
	  merges,0,sm	0x1, %g16, %r31, %pred0
	}
	{
	  shrs,0,sm	%r31, 0x1, %r22
	  qpor,1,sm	%r40, %r40, %r20 ? %pred0
	  qpor,3,sm	%r40, %r40, %r21 ? %pred0
	  qpor,4,sm	%r40, %r40, %r34 ? %pred0
	}
	{
	  cmpesb,0,sm	%r22, 0x0, %pred1
	  sxt,1,sm	0x2, %r4, %g17
	  qpfhadds,2,sm	%g17, %g17, %g16
	  adds,3,sm	0x0, %r4, %r32
	  addd,4,sm	0x0, %r1, %r7
	  sxt,5,sm	0x2, %r3, %g18
	}
	{
	  addd,0,sm	0x0, %r2, %r33
	  addd,1,sm	0x0, %r0, %r3
	  shld,2,sm	%g17, 0x2, %g17
	  shld,3,sm	%g18, 0x3, %r25
	  qpor,4,sm	%r40, %r40, %r35 ? %pred0
	  shld,5,sm	%g18, 0x2, %r24
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred2
	  landp	@p0, ~@p1, @p5
	  pass	@p5, %pred1
	}
	{
	  qpor,0,sm	%r40, %r40, %r36 ? %pred0
	  qpor,1,sm	%r40, %r40, %r37 ? %pred0
	  qpor,3,sm	%r40, %r40, %r38 ? %pred0
	  qpor,4,sm	%r40, %r40, %r39 ? %pred0
	  addd,5,sm	%r25, %r24, %r23
	}
	{
	  qpor,0	%r40, %r40, %r13 ? %pred1
	  qpor,1	%r40, %r40, %r16 ? %pred1
	  qppackdl,3	0x0, 0x0, %r17 ? %pred1
	  qppackdl,4	0x0, 0x0, %r18 ? %pred1
	}
	{
	  ibranch	.L1646 ? %pred2
	  qppackdl,0	0x0, 0x0, %r19 ? %pred1
	  qppackdl,1	0x0, 0x0, %r30 ? %pred1
	  stqp,2	%r2, 0x0, %g16 ? ~%pred0
	  qppackdl,3	0x0, 0x0, %r14 ? %pred1
	  qppackdl,4	0x0, 0x0, %r15 ? %pred1
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  qppackdl,0	0x0, 0x0, %r10 ? %pred1
	  qppackdl,1	0x0, 0x0, %r29 ? %pred1
	  stqp,2	%r2, %g17, %g16 ? ~%pred0
	  qppackdl,3	0x0, 0x0, %r11 ? %pred1
	  qppackdl,4	0x0, 0x0, %r12 ? %pred1
	}
	{
	  qppackdl,0	0x0, 0x0, %r26 ? %pred1
	  qppackdl,1	0x0, 0x0, %r27 ? %pred1
	  qppackdl,3	0x0, 0x0, %r28 ? %pred1
	  qppackdl,4	0x0, 0x0, %r9 ? %pred1
	}
	{
	  ldisp	%ctpr2, .L1529
	  cmplsb,0	0x0, %r22, %pred0
	  addd,1	0x0, _f64,_lts0 0xff2000000000, %g16
	  addd,2,sm	%r23, %r7, %g17
	  addd,3,sm	%r25, %r7, %g18
	  addd,4,sm	%r24, %r7, %g19
	  addd,5,sm	%r24, %r3, %g20
	}
	{
	  disp	%ctpr1, .L84
	  addd,0,sm	%r3, 0x0, %g22
	  addd,1,sm	%r7, 0x0, %g24
	  addd,2,sm	%g17, 0x0, %g26
	  addd,3,sm	%g18, 0x0, %g28
	  addd,4,sm	%g19, 0x0, %g30
	  addd,5,sm	%g20, 0x0, %r34
	}
	{
	  merges,0	0x1, %r22, %g21, %pred0
	  addd,1,sm	0x0, 0x0, %g29
	  addd,2,sm	0x0, 0x0, %g27
	  addd,3,sm	0x0, 0x0, %g23
	  addd,4,sm	0x0, 0x0, %r35
	  addd,5,sm	0x0, 0x0, %g25
	}
	{
	  addd,0,sm	0x0, 0x0, %g31
	  adds,1	0x2, 0x0, %r36
	  addd,2,sm	%g22, _f16s,_lts0lo 0x40, %g22
	  addd,3,sm	%g24, _f16s,_lts0lo 0x40, %g24
	  addd,4,sm	%g26, _f16s,_lts0lo 0x40, %g26
	  addd,5,sm	%g28, _f16s,_lts0lo 0x40, %g28
	}
	{
	  ldqp,0,sm	%r1, _f16s,_lts0lo 0x10, %r1
	  addd,1,sm	%g30, _f16s,_lts0hi 0x40, %g30
	  aaurw,2	%r36, %aaincr1
	  qpor,3,sm	%r26, %r26, %r2
	  addd,4,sm	%r34, _f16s,_lts0hi 0x40, %r34
	  ldqp,5,sm	%r0, _f16s,_lts0lo 0x10, %r36
	}
	{
	  qpor,0,sm	%r27, %r27, %r4
	  qpor,1,sm	%r28, %r28, %r6
	  aaurwq,2	%g22, %aad5
	  qpor,3,sm	%r9, %r9, %r9
	  qpor,4,sm	%r11, %r11, %r11
	}
	{
	  qpor,0,sm	%r12, %r12, %r12
	  insfd,1	%g16, _f32s,_lts0 0x8800, %g21, %g16
	  aaurwq,2	%g24, %aad3
	  qpor,3,sm	%r14, %r14, %r14
	  qpor,4,sm	%r15, %r15, %r15
	}
	{
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts0 0xffffffff, %g16
	  aaurwq,2	%g26, %aad0
	  qpor,3,sm	%r17, %r17, %r17
	  qpor,4,sm	%r18, %r18, %r18
	}
	{
	  rwd,0	%g21, %lsr1
	  qpor,1,sm	%r19, %r19, %r19
	  aaurwq,2	%g28, %aad1
	  qpor,3,sm	%r13, %r13, %r20
	  qpor,4,sm	%r16, %r16, %r21
	}
	{
	  qpor,1,sm	%r30, %r30, %r13
	  aaurwq,2	%g30, %aad2
	  qpor,3,sm	%r10, %r10, %r16
	  qpor,4,sm	%r29, %r29, %r10
	}
	{
	  shld,0	%g16, 0x3, %r0
	  aaurwq,2	%r34, %aad4
	}
	{
	  bap
	  ldqp,0,sm	%g17, _f16s,_lts0lo 0x10, %g16
	  ldqp,2,sm	%g18, _f16s,_lts0lo 0x10, %g21
	  ldqp,3,sm	%g19, _f16s,_lts0lo 0x10, %g22
	  ldqp,5,sm	%g20, _f16s,_lts0lo 0x10, %g23
	}
	{
	  setwd	wsz = 0x2a, nfx = 0x0, dbl = 0x1
	  setbn	rsz = 0x14, rbs = 0x15, rcur = 0x0
	}
	{
	  ldqp,0,sm	%r7, _f16s,_lts0lo 0x20, %b[24]
	  qpor,1,sm	%r1, %r1, %b[14]
	  ldqp,2,sm	%r7, _f16s,_lts0hi 0x30, %b[12]
	  ldqp,3,sm	%g19, _f16s,_lts0hi 0x30, %b[13]
	  qpor,4,sm	%r36, %r36, %b[18]
	  ldqp,5,sm	%g20, _f16s,_lts0hi 0x30, %b[27]
	}
	{
	  ldqp,0,sm	%g18, _f16s,_lts0lo 0x20, %b[6]
	  qpor,1,sm	%g21, %g21, %b[22]
	  ldqp,2,sm	%g18, _f16s,_lts0hi 0x30, %b[20]
	  ldqp,3,sm	%g17, _f16s,_lts0lo 0x20, %b[3]
	  qpor,4,sm	%g22, %g22, %b[15]
	  ldqp,5,sm	%g17, _f16s,_lts0hi 0x30, %b[17]
	}
	{
	  ldqp,0,sm	%r3, _f16s,_lts0lo 0x20, %b[7]
	  qpor,1,sm	%g23, %g23, %b[29]
	  ldqp,2,sm	%r3, _f16s,_lts0hi 0x30, %b[16]
	  ldqp,3,sm	%g19, _f16s,_lts0lo 0x20, %b[21]
	  qpor,4,sm	%g16, %g16, %b[19]
	  ldqp,5,sm	%g20, _f16s,_lts0lo 0x20, %b[2]
	}
	{
	  ldqp,0,sm	%r3, 0x0, %b[9]
	  qpfmuls,1,sm	%g23, %r1, %b[28]
	  ldqp,2,sm	%g18, 0x0, %b[8]
	  ldqp,3,sm	%g17, 0x0, %b[5]
	  qpfmuls,4,sm	%g23, %g22, %b[25]
	  ldqp,5,sm	%r7, 0x0, %b[26]
	}
	{
	  nop 7
	  ldqp,0,sm	%g19, 0x0, %b[23]
	  qpfmuls,1,sm	%r36, %g21, %b[11]
	  ldqp,2,sm	%g20, 0x0, %b[4]
	  qpfmuls,3,sm	%r36, %g16, %b[10]
	}
	{
	  nop 1
	}
.L84:
	{
	  loop_mode
	  qpfmuls,0,sm	%b[29], %b[22], %b[35]
	  qpfmuls,1,sm	%b[29], %b[19], %b[34]
	  qpfmuls,2,sm	%b[4], %b[26], %b[30]
	  qpfmuls,3,sm	%b[4], %b[23], %b[33]
	  qpfmuls,4,sm	%b[4], %b[8], %b[32]
	  qpfmuls,5,sm	%b[4], %b[5], %b[31]
	  movaqp,1	area=2, ind=0, am=0, be=0, %b[0]
	}
	{
	  loop_mode
	  qpfmuls,0,sm	%b[18], %b[14], %b[40]
	  qpfmuls,1,sm	%b[18], %b[15], %b[39]
	  qpfmuls,2,sm	%b[9], %b[26], %b[38]
	  qpfmuls,3,sm	%b[9], %b[23], %b[37]
	  qpfmuls,4,sm	%b[9], %b[8], %b[36]
	  qpfmuls,5,sm	%b[9], %b[5], %b[29]
	  movaqp,0	area=1, ind=0, am=0, be=0, %b[19]
	  movaqp,1	area=0, ind=0, am=0, be=0, %b[1]
	  movaqp,2	area=1, ind=0, am=0, be=0, %b[22]
	  movaqp,3	area=0, ind=0, am=0, be=0, %b[4]
	}
	{
	  loop_mode
	  qpfmuls,4,sm	%b[16], %b[20], %b[9]
	  qpfmuls,5,sm	%b[16], %b[17], %b[8]
	  movaqp,3	area=2, ind=0, am=0, be=0, %b[5]
	}
	{
	  loop_mode
	  qpfmuls,0,sm	%b[27], %b[12], %b[26]
	  qpfmuls,1,sm	%b[27], %b[13], %b[23]
	  qpfadds,2,sm	%b[11], %r14, %r14
	  qpfadds,3,sm	%b[10], %r6, %r6
	  qpfadds,4,sm	%b[28], %r16, %r16
	  qpfadds,5,sm	%b[25], %r2, %r2
	  movaqp,1	area=0, ind=16, am=1, be=0, %b[15]
	  movaqp,2	area=0, ind=16, am=1, be=0, %b[18]
	  movaqp,3	area=2, ind=16, am=1, be=0, %b[14]
	}
	{
	  loop_mode
	  qpfadds,0,sm	%b[35], %r12, %r12
	  qpfadds,1,sm	%b[34], %r10, %r10
	  qpfadds,2,sm	%b[30], %r17, %r17
	  qpfadds,3,sm	%b[33], %r4, %r4
	  qpfadds,4,sm	%b[32], %r13, %r13
	  qpfadds,5,sm	%b[31], %r11, %r11
	  movaqp,0	area=2, ind=16, am=1, be=0, %b[25]
	  movaqp,1	area=1, ind=16, am=1, be=0, %b[11]
	  movaqp,3	area=1, ind=16, am=1, be=0, %b[10]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  qpfadds,0,sm	%b[40], %r20, %r20
	  qpfadds,1,sm	%b[39], %r18, %r18
	  qpfadds,2,sm	%b[38], %r21, %r21
	  qpfadds,3,sm	%b[37], %r19, %r19
	  qpfadds,4,sm	%b[36], %r15, %r15
	  qpfadds,5,sm	%b[29], %r9, %r9
	}
	{
	  setwd	wsz = 0x15, nfx = 0x0, dbl = 0x1
	  return	%ctpr3
	}
	{
	  shld,0,sm	%r0, 0x2, %g16
	  shls,1	%r22, 0x1, %g17
	  sxt,2	0x2, %r32, %g18
	  adds,3	0x0, 0x0, %g19
	}
	{
	  addd,0,sm	%r7, %g16, %g24
	  qpfadd_adds,1	%r11, %r10, %r40, %g23
	  addd,2,sm	%r3, %g16, %g25
	  qpfadd_adds,3	%r4, %r2, %r40, %g20
	  qpfadd_adds,4	%r17, %r16, %r40, %g21
	  qpfadd_adds,5	%r13, %r12, %r40, %g22
	}
	{
	  qpfadd_adds,0	%r19, %r18, %r40, %g29
	  qpfadd_adds,1	%r21, %r20, %r40, %g28
	  ldqp,2,sm	%r7, %g16, %g30
	  qpfadd_adds,3	%r15, %r14, %r40, %g27
	  qpfadd_adds,4	%r9, %r6, %r40, %g26
	  ldqp,5,sm	%r3, %g16, %g16
	}
	{
	  ldqp,0,sm	%g24, %r25, %r0
	  cmpesb,1	%g17, %r31, %pred0
	  ldqp,2,sm	%g24, %r23, %g31
	  ldqp,3,sm	%g25, %r24, %g25
	  shld,4	%g18, 0x2, %g17
	  ldqp,5,sm	%g24, %r24, %g24
	}
	{
	  nop 4
	  disp	%ctpr2, disp=0x0
	  aaurw,2	%g19, %aabf0
	}
	{
	  qpfmul_adds,0	%g25, %g31, %g23, %g23 ? ~%pred0
	  qpfmul_adds,3	%g25, %r0, %g22, %g22 ? ~%pred0
	  qpfmul_adds,4	%g25, %g24, %g20, %g20 ? ~%pred0
	  qpfmul_adds,5	%g25, %g30, %g21, %g21 ? ~%pred0
	}
	{
	  nop 6
	  qpfmul_adds,0	%g16, %g24, %g29, %g29 ? ~%pred0
	  qpfmul_adds,1	%g16, %g30, %g28, %g28 ? ~%pred0
	  qpfmul_adds,3	%g16, %g31, %g26, %g26 ? ~%pred0
	  qpfmul_adds,4	%g16, %r0, %g27, %g27 ? ~%pred0
	}
	{
	  qpfhadds,3	%g21, %g20, %g16
	}
	{
	  qpfhadds,0	%g28, %g29, %g19
	  qpfhadds,3	%g27, %g26, %g18
	}
	{
	  nop 3
	  qpfhadds,0	%g22, %g23, %g20
	}
	{
	  qpfhadds,0	%g16, %g20, %g16
	}
	{
	  nop 3
	  qpfhadds,0	%g19, %g18, %g18
	}
	{
	  stqp,2	%r33, 0x0, %g18
	}
	{
	  ct	%ctpr3
	  stqp,2	%r33, %g17, %g16
	}
.L1646:
	{
	  disp	%ctpr3, .L1662
	  ands,0	%r31, _f16s,_lts0lo 0xfffe, %g16
	}
	{
	  nop 3
	  cmpesb,0	%g16, %r31, %pred0
	}
	{
	  ct	%ctpr3 ? %pred0
	}
	{
	  ldqp,0	%r3, %r24, %g16
	  ldqp,2	%r7, %r23, %g17
	  ldqp,3	%r3, 0x0, %g18
	  ldqp,5	%r7, %r25, %g19
	}
	{
	  nop 1
	  ldqp,0	%r7, %r24, %g20
	  ldqp,2	%r7, 0x0, %g21
	}
	{
	  qpfmul_adds,0	%g16, %g17, %r40, %r34
	  qpfmul_adds,3	%g18, %g19, %r40, %r37
	}
	{
	  qpfmul_adds,0	%g18, %g17, %r40, %r20
	  qpfmul_adds,1	%g16, %g19, %r40, %r21
	  qpfmul_adds,2	%g16, %g20, %r40, %r35
	}
	{
	  nop 7
	  qpfmul_adds,0	%g18, %g20, %r40, %r38
	  qpfmul_adds,1	%g16, %g21, %r40, %r36
	  qpfmul_adds,2	%g18, %g21, %r40, %r39
	}
.L1662:
	{
	  return	%ctpr3
	  qpfhadds,0	%r21, %r34, %g16
	  qpfhadds,1	%r36, %r35, %g17
	  qpfhadds,2	%r37, %r20, %g18
	  sxt,3	0x2, %r32, %g19
	}
	{
	  nop 2
	  qpfhadds,0	%r39, %r38, %g20
	  shld,3	%g19, 0x2, %g19
	}
	{
	  qpfhadds,0	%g17, %g16, %g16
	}
	{
	  nop 3
	  qpfhadds,0	%g20, %g18, %g17
	}
	{
	  stqp,2	%r33, 0x0, %g17
	}
	{
	  ct	%ctpr3
	  stqp,2	%r33, %g19, %g16
	}
	.section .text.async_prefetch_code, "ax", @progbits

	.align	8
.L1529:
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=0, d=0, incr=1, ind=0, asz=3, abs=0, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=0, d=1, incr=1, ind=0, asz=3, abs=0, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=0, d=2, incr=1, ind=0, asz=3, abs=8, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=0, d=3, incr=1, ind=0, asz=3, abs=8, disp=0
	}
	{
	  fapb	ct=1, dcd=0, fmt=5, mrng=0, d=4, incr=1, ind=0, asz=4, abs=16, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=0, d=5, incr=1, ind=0, asz=4, abs=16, disp=0
	}
.previous

	.cfi_endproc
	.size	_Z9MulKernelPfS_S_ii, .- _Z9MulKernelPfS_S_ii
	.global	_Z11MulKernel48PfS_S_ii
	.type	_Z11MulKernel48PfS_S_ii, #function
	.align	8
_Z11MulKernel48PfS_S_ii:
	.cfi_startproc
	{
	  setwd	wsz = 0x20, nfx = 0x0, dbl = 0x0
	  return	%ctpr3
	  getsp,0	_f32s,_lts1 0xfffffd10, %r6
	  qppackdl,1	0x0, 0x0, %g16
	}
	{
	  qpfhadds,0,sm	%g16, %g16, %g17
	}
	{
	  nop 2
	  addd,0	%r6, _f64,_lts0 0x2f0, %r5
	}
	{
	  sxt,0,sm	0x2, %r4, %g18
	  sxt,1	0x2, %r3, %g19
	  qpfhadds,2,sm	%g17, %g17, %g17
	  adds,3,sm	0x0, %r4, %r52
	  addd,4,sm	0x0, %r2, %r53
	}
	{
	  cmpldb,0	0x0, %g19, %pred0
	  shld,1,sm	%g18, 0x4, %g20
	  shld,2,sm	%g18, 0x2, %g21
	}
	{
	  shld,0,sm	%g18, 0x3, %g18
	  addd,1,sm	%g20, %g21, %g22
	  shld,3,sm	%g19, 0x1, %g23
	  shld,4,sm	%g19, 0x2, %g24
	}
	{
	  addd,0,sm	%g18, %g21, %g25
	  addd,1,sm	%r2, %g18, %g28
	  addd,2,sm	%r2, %g20, %g26
	  addd,3,sm	%g24, %g23, %g23
	  qpor,4,sm	%g16, %g16, %g24 ? %pred0
	  addd,5,sm	%r2, %g21, %g27
	}
	{
	  addd,0,sm	%r2, %g22, %g29
	  qpor,1,sm	%g16, %g16, %g31 ? %pred0
	  addd,2,sm	%r2, %g25, %g30
	  qpor,3,sm	%g16, %g16, %r6 ? %pred0
	  qpor,4,sm	%g16, %g16, %r54 ? %pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %r55 ? %pred0
	  qpor,1,sm	%g16, %g16, %r56 ? %pred0
	  stqp,2	0x10, %r2, %g17 ? ~%pred0
	  qpor,3,sm	%g16, %g16, %r57 ? %pred0
	  qpor,4,sm	%g16, %g16, %r58 ? %pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %g27 ? %pred0
	  qpor,1,sm	%g16, %g16, %r59 ? %pred0
	  stqp,2	%r2, 0x0, %g17 ? ~%pred0
	  qpor,3,sm	%g16, %g16, %r60 ? %pred0
	  qpor,4,sm	%g16, %g16, %r61 ? %pred0
	  stqp,5	0x10, %g27, %g17 ? ~%pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %g21 ? %pred0
	  qpor,1,sm	%g16, %g16, %g28 ? %pred0
	  stqp,2	%r2, %g21, %g17 ? ~%pred0
	  qpor,3,sm	%g16, %g16, %r62 ? %pred0
	  qpor,4,sm	%g16, %g16, %r63 ? %pred0
	  stqp,5	0x10, %g28, %g17 ? ~%pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %g18 ? %pred0
	  qpor,1,sm	%g16, %g16, %g30 ? %pred0
	  stqp,2	%r2, %g18, %g17 ? ~%pred0
	  stqp,5	0x10, %g30, %g17 ? ~%pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %g25 ? %pred0
	  qpor,1,sm	%g16, %g16, %g26 ? %pred0
	  stqp,2	%r2, %g25, %g17 ? ~%pred0
	  stqp,5	0x10, %g26, %g17 ? ~%pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %g20 ? %pred0
	  qpor,1,sm	%g16, %g16, %g29 ? %pred0
	  stqp,2	%r2, %g20, %g17 ? ~%pred0
	  stqp,5	0x10, %g29, %g17 ? ~%pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  qpor,0,sm	%g16, %g16, %g17 ? %pred0
	  qpor,1,sm	%g16, %g16, %g22 ? %pred0
	  stqp,2	%r2, %g22, %g17 ? ~%pred0
	  qpor,3,sm	%g16, %g16, %r53 ? %pred0
	  std,5,sm	%r5, _f16s,_lts0lo 0xfdf8, %r53
	}
	{
	  setwd	wsz = 0x2b, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0xa, rbs = 0x20, rcur = 0x0
	  ldisp	%ctpr2, .L6686
	  addd,0	0x0, _f64,_lts2 0x1ff2100000000, %r52
	  qpor,1,sm	%g27, %g27, %r2
	  subd,2	%g19, 0x1, %g16
	  qpor,3,sm	%r60, %r60, %r3
	  qpor,4,sm	%r61, %r61, %r4
	  stw,5,sm	%r5, _f16s,_lts1lo 0xfdf0, %r52
	}
	{
	  disp	%ctpr1, .L1878
	  cmpldb,0	0x0, %g19, %pred1
	  shld,1	%g19, 0x3, %g19
	  shrd,2	%g16, 0x2, %g16
	  shld,3	%g19, 0x5, %g27
	  shld,4	%g19, 0x4, %r61
	  shld,5	%g19, 0x2, %r60
	}
	{
	  addd,0	%g16, 0x1, %g16
	  shl_addd,1,sm	%g23, 0x2, %r1, %r2
	  stqp,2,sm	%r5, _f16s,_lts0lo 0xfdd0, %r2
	  addd,3	%r61, %r60, %g23
	  addd,4	0x0, 0x0, %r3
	  stqp,5,sm	%r5, _f16s,_lts0hi 0xfdc0, %r3
	}
	{
	  merged,0	0x1, %g16, %g16, %pred1
	  sub_addd,1,sm	%g27, %r60, %r1, %r62
	  stqp,2,sm	%r5, _f16s,_lts0lo 0xfdb0, %r62
	  addd,3	%g19, %r60, %g27
	  addd,4	0x0, 0x0, %r63
	  stqp,5,sm	%r5, _f16s,_lts0hi 0xfde0, %r63
	}
	{
	  insfd,0	%r52, _f32s,_lts0 0x8800, %g16, %r2
	  qpor,1,sm	%r56, %r56, %r7
	  aaurwq,2	%r2, %aad1
	  qpor,3,sm	%r57, %r57, %r9
	  qpor,4,sm	%g24, %g24, %r10
	}
	{
	  rwd,0	%r2, %lsr
	  addd,1	0x0, 0x0, %r3
	  aaurwq,2	%r62, %aad0
	  addd,3	0x0, 0x0, %r57
	  addd,4	0x0, 0x0, %r63
	}
	{
	  rwd,0	%g16, %lsr1
	  addd,1	0x0, 0x0, %r59
	  stqp,2,sm	%r5, _f16s,_lts0lo 0xfda0, %r58
	  addd,3,sm	%r61, %r1, %r56
	  addd,4,sm	%g19, %r1, %r58
	  stqp,5,sm	%r5, _f16s,_lts0hi 0xfd90, %r59
	}
	{
	  addd,1	0x0, 0x0, %r57
	  aaurwq,2	%r56, %aad3
	  addd,3,sm	%r60, %r1, %r56
	  addd,4,sm	%g23, %r1, %r2
	}
	{
	  addd,0,sm	0x0, %r1, %r58
	  addd,1	0x0, 0x0, %r59
	  aaurwq,2	%r58, %aad5
	  addd,3,sm	%g27, %r1, %r62
	  qpor,4,sm	%g31, %g31, %r11
	}
	{
	  addd,0	0x0, 0x0, %r3
	  addd,1,sm	%g23, %r0, %r2
	  aaurwq,2	%r2, %aad2
	  qpor,3,sm	%r54, %r54, %r12
	  qpor,4,sm	%r55, %r55, %r15
	}
	{
	  addd,0	0x0, 0x0, %r55
	  addd,1	0x0, 0x0, %r57
	  aaurwq,2	%r56, %aad6
	  addd,3,sm	%r61, %r0, %r54
	  addd,4,sm	%g27, %r0, %r56
	}
	{
	  addd,0	0x0, 0x0, %r59
	  addd,1,sm	%r60, %r0, %r60
	  aaurwq,2	%r58, %aad7
	  addd,3,sm	%g19, %r0, %r58
	  qpor,4,sm	%r6, %r6, %r24
	}
	{
	  addd,0	0x0, 0x0, %r61
	  addd,1,sm	0x0, %r0, %r62
	  aaurwq,2	%r62, %aad4
	  addd,3	0x0, 0x0, %r63
	  qppackdl,4	0x0, 0x0, %g16
	}
	{
	  qpor,0,sm	%g16, %g16, %g23 ? %pred0
	  qpor,1,sm	%g16, %g16, %g24 ? %pred0
	  aaurwq,2	%r2, %aad8
	  qpor,3,sm	%g16, %g16, %g19 ? %pred0
	  qpor,4,sm	%g16, %g16, %g27 ? %pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %g31 ? %pred0
	  qpor,1,sm	%g16, %g16, %r1 ? %pred0
	  aaurwq,2	%r54, %aad9
	  qpor,3,sm	%g16, %g16, %r2 ? %pred0
	  qpor,4,sm	%g16, %g16, %r3 ? %pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %r6 ? %pred0
	  qpor,1,sm	%g16, %g16, %r52 ? %pred0
	  aaurwq,2	%r56, %aad10
	  qpor,3,sm	%g16, %g16, %r54 ? %pred0
	  qpor,4,sm	%g16, %g16, %r55 ? %pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %r56 ? %pred0
	  qpor,1,sm	%g16, %g16, %r57 ? %pred0
	  stqp,2,sm	%r5, _f16s,_lts0lo 0xfd60, %r24
	  qpor,3,sm	%g16, %g16, %r24 ? %pred0
	  qpor,4,sm	%g16, %g16, %r15 ? %pred0
	  stqp,5,sm	%r5, _f16s,_lts0hi 0xfd50, %r15
	}
	{
	  qpor,0,sm	%g16, %g16, %r12 ? %pred0
	  qpor,1,sm	%g16, %g16, %r11 ? %pred0
	  stqp,2,sm	%r5, _f16s,_lts0lo 0xfd40, %r12
	  qpor,3,sm	%g20, %g20, %r42
	  qpor,4,sm	%g29, %g29, %r43
	  stqp,5,sm	%r5, _f16s,_lts0hi 0xfd30, %r11
	}
	{
	  qpor,0,sm	%g16, %g16, %g20 ? %pred0
	  qpor,1,sm	%g16, %g16, %g29 ? %pred0
	  stqp,2,sm	%r5, _f16s,_lts0lo 0xfd20, %r43
	  qpor,3,sm	%g16, %g16, %r43 ? %pred0
	  qpor,4,sm	%g16, %g16, %r42 ? %pred0
	  stqp,5,sm	%r5, _f16s,_lts0hi 0xfd10, %r42
	}
	{
	  qpor,0,sm	%g16, %g16, %g16 ? %pred0
	  qpor,1,sm	%g18, %g18, %r46
	  aaurwq,2	%r58, %aad11
	  qpor,3,sm	%g30, %g30, %r47
	  qpor,4,sm	%g25, %g25, %r48
	}
	{
	  qpor,0,sm	%g26, %g26, %r49
	  qpor,1,sm	%g21, %g21, %r50
	  aaurwq,2	%r60, %aad12
	  qpor,3,sm	%g28, %g28, %r51
	  qpor,4,sm	%g17, %g17, %r44
	}
	{
	  qpor,0,sm	%g22, %g22, %r45
	  qpor,1,sm	%r53, %r53, %r38
	  aaurwq,2	%r62, %aad13
	  qpor,3,sm	%g19, %g19, %r39
	  qpor,4,sm	%g23, %g23, %r40
	}
	{
	  bap
	  qpor,0,sm	%g24, %g24, %r41
	  qpor,1,sm	%g27, %g27, %r34
	  ldqp,2	%r5, _f16s,_lts0lo 0xfdb0, %g17, mas=0x4
	  qpor,3,sm	%g31, %g31, %r35
	  qpor,4,sm	%r1, %r1, %r36
	  ldqp,5	%r5, _f16s,_lts0hi 0xfd90, %g18, mas=0x4
	}
	{
	  qpor,0,sm	%r2, %r2, %r37
	  qpor,1,sm	%r3, %r3, %r30
	  qpor,3,sm	%r6, %r6, %r31
	  qpor,4,sm	%r52, %r52, %r32
	}
	{
	  qpor,0,sm	%r54, %r54, %r33
	  qpor,1,sm	%r55, %r55, %r27
	  qpor,3,sm	%r56, %r56, %r28
	  qpor,4,sm	%r57, %r57, %r29
	}
	{
	  qpor,0,sm	%g17, %g17, %r13
	  qpor,1,sm	%r24, %r24, %r22
	  ldqp,2	%r5, _f16s,_lts0lo 0xfda0, %g17, mas=0x4
	  qpor,3,sm	%g18, %g18, %r14
	  qpor,4,sm	%r15, %r15, %r23
	  ldqp,5	%r5, _f16s,_lts0hi 0xfde0, %g18, mas=0x4
	}
	{
	  qpor,0,sm	%r12, %r12, %r25
	  qpor,1,sm	%r11, %r11, %r26
	  qpor,3,sm	%g20, %g20, %r19
	  qpor,4,sm	%g29, %g29, %r20
	}
	{
	  qpor,0,sm	%r43, %r43, %r21
	  qpor,1,sm	%r42, %r42, %r17
	  qpor,3,sm	%g16, %g16, %r18
	}
	{
	  nop 7
	  qpor,0,sm	%g17, %g17, %r16
	  qpor,3,sm	%g18, %g18, %r0
	}
	nop
	{
	  ldqp,0	%r5, _f16s,_lts0lo 0xfd10, %r42, mas=0x4
	  ldqp,2	%r5, _f16s,_lts0hi 0xfd20, %r43, mas=0x4
	  ldqp,3	%r5, _f16s,_lts1lo 0xfd30, %r11, mas=0x4
	  ldqp,5	%r5, _f16s,_lts1hi 0xfd40, %r12, mas=0x4
	}
	{
	  ldqp,0	%r5, _f16s,_lts0lo 0xfd50, %r15, mas=0x4
	  ldqp,2	%r5, _f16s,_lts0hi 0xfd60, %r24, mas=0x4
	  ldqp,3	%r5, _f16s,_lts1lo 0xfdc0, %r3, mas=0x4
	  ldqp,5	%r5, _f16s,_lts1hi 0xfdd0, %r2, mas=0x4
	}
	{
	  ldw,0	%r5, _f16s,_lts0lo 0xfdf0, %r52, mas=0x4
	  ldd,2	%r5, _f16s,_lts0hi 0xfdf8, %r53, mas=0x4
	}
.L1878:
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[20], %b[3], %r49, %r49 ? %pcnt0
	  qpfmul_adds,1,sm	%b[20], %b[2], %r48, %r48 ? %pcnt0
	  qpfmul_adds,2,sm	%b[20], %b[11], %r47, %r47 ? %pcnt0
	  qpfmul_adds,3,sm	%b[20], %b[10], %r46, %r46 ? %pcnt0
	  qpfmul_adds,4,sm	%b[20], %b[7], %r45, %r45 ? %pcnt0
	  qpfmul_adds,5,sm	%b[20], %b[6], %r44, %r44 ? %pcnt0
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[20], %b[15], %r43, %r43 ? %pcnt0
	  qpfmul_adds,1,sm	%b[20], %b[14], %r42, %r42 ? %pcnt0
	  qpfmul_adds,2,sm	%b[21], %b[3], %r41, %r41 ? %pcnt0
	  qpfmul_adds,3,sm	%b[21], %b[2], %r40, %r40 ? %pcnt0
	  qpfmul_adds,4,sm	%b[21], %b[11], %r39, %r39 ? %pcnt0
	  qpfmul_adds,5,sm	%b[21], %b[10], %r38, %r38 ? %pcnt0
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[21], %b[7], %r37, %r37 ? %pcnt0
	  qpfmul_adds,1,sm	%b[21], %b[6], %r36, %r36 ? %pcnt0
	  qpfmul_adds,2,sm	%b[21], %b[15], %r35, %r35 ? %pcnt0
	  qpfmul_adds,3,sm	%b[21], %b[14], %r34, %r34 ? %pcnt0
	  qpfmul_adds,4,sm	%b[19], %b[3], %r33, %r33 ? %pcnt0
	  qpfmul_adds,5,sm	%b[19], %b[2], %r32, %r32 ? %pcnt0
	  movaqp,1	area=3, ind=0, am=1, be=0, %b[0]
	  movaqp,2	area=3, ind=0, am=1, be=0, %b[1]
	  movaqp,3	area=5, ind=0, am=1, be=0, %b[18]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[19], %b[11], %r31, %r31 ? %pcnt0
	  qpfmul_adds,1,sm	%b[19], %b[10], %r30, %r30 ? %pcnt0
	  qpfmul_adds,2,sm	%b[19], %b[7], %r29, %r29 ? %pcnt0
	  qpfmul_adds,3,sm	%b[19], %b[6], %r28, %r28 ? %pcnt0
	  qpfmul_adds,4,sm	%b[19], %b[15], %r27, %r27 ? %pcnt0
	  qpfmul_adds,5,sm	%b[19], %b[14], %r26, %r26 ? %pcnt0
	  movaqp,0	area=2, ind=0, am=1, be=0, %b[8]
	  movaqp,1	area=1, ind=0, am=1, be=0, %b[4]
	  movaqp,2	area=2, ind=0, am=1, be=0, %b[9]
	  movaqp,3	area=1, ind=0, am=1, be=0, %b[5]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[17], %b[3], %r25, %r25 ? %pcnt0
	  qpfmul_adds,1,sm	%b[17], %b[2], %r23, %r23 ? %pcnt0
	  qpfmul_adds,2,sm	%b[17], %b[11], %r22, %r22 ? %pcnt0
	  qpfmul_adds,3,sm	%b[17], %b[10], %r21, %r21 ? %pcnt0
	  qpfmul_adds,4,sm	%b[17], %b[7], %r20, %r20 ? %pcnt0
	  qpfmul_adds,5,sm	%b[17], %b[6], %r19, %r19 ? %pcnt0
	  movaqp,0	area=0, ind=0, am=1, be=0, %b[12]
	  movaqp,1	area=5, ind=0, am=1, be=0, %b[19]
	  movaqp,3	area=0, ind=0, am=1, be=0, %b[13]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[17], %b[15], %r18, %r18 ? %pcnt0
	  qpfmul_adds,1,sm	%b[17], %b[14], %r17, %r17 ? %pcnt0
	  qpfmul_adds,2,sm	%b[16], %b[2], %r24, %r24 ? %pcnt0
	  qpfmul_adds,3,sm	%b[16], %b[7], %r16, %r16 ? %pcnt0
	  qpfmul_adds,4,sm	%b[16], %b[14], %r15, %r15 ? %pcnt0
	  qpfmul_adds,5,sm	%b[16], %b[3], %r12, %r12 ? %pcnt0
	  movaqp,3	area=4, ind=0, am=1, be=0, %b[17]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[16], %b[11], %r11, %r11 ? %pcnt0
	  qpfmul_adds,1,sm	%b[16], %b[10], %r10, %r10 ? %pcnt0
	  qpfmul_adds,2,sm	%b[16], %b[6], %r9, %r9 ? %pcnt0
	  qpfmul_adds,3,sm	%b[16], %b[15], %r7, %r7 ? %pcnt0
	  qpfmul_adds,4,sm	%g16, %b[15], %r51, %r51 ? %pcnt0
	  qpfmul_adds,5,sm	%g16, %b[14], %r50, %r50 ? %pcnt0
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  qpfmul_adds,0,sm	%g16, %b[11], %r14, %r14 ? %pcnt0
	  qpfmul_adds,1,sm	%g16, %b[6], %r13, %r13 ? %pcnt0
	  qpfmul_adds,2,sm	%g16, %b[3], %r4, %r4 ? %pcnt0
	  qpfmul_adds,3,sm	%g16, %b[2], %r3, %r3 ? %pcnt0
	  qpfmul_adds,4,sm	%g16, %b[10], %r2, %r2 ? %pcnt0
	  qpfmul_adds,5,sm	%g16, %b[7], %r0, %r0 ? %pcnt0
	  movaqp,0	area=6, ind=0, am=1, be=0, %g16
	  movaqp,1	area=4, ind=0, am=1, be=0, %b[15]
	  movaqp,3	area=6, ind=0, am=1, be=0, %b[14]
	}
	{
	  setwd	wsz = 0x20, nfx = 0x0, dbl = 0x0
	  return	%ctpr3
	  qpfhadds,0	%r49, %r48, %g17
	  qpfhadds,3	%r45, %r44, %g16
	}
	{
	  qpfhadds,0	%r43, %r42, %g18
	  sxt,1	0x2, %r52, %g21
	  adds,2	0x0, 0x0, %g22
	  qpfhadds,3	%r39, %r38, %g19
	  qpfhadds,4	%r41, %r40, %g20
	}
	{
	  qpfhadds,0	%r47, %r46, %g23
	  qpfhadds,1	%r35, %r34, %g25
	  qpfhadds,2	%r37, %r36, %g26
	  qpfhadds,3	%r33, %r32, %g24
	}
	{
	  qpfhadds,0	%r31, %r30, %g27
	  shld,1	%g21, 0x4, %g30
	  shld,2	%g21, 0x2, %g31
	  qpfhadds,3	%r27, %r26, %g28
	  qpfhadds,4	%r29, %r28, %g29
	  shld,5	%g21, 0x3, %g21
	}
	{
	  disp	%ctpr2, disp=0x0
	  qpfhadds,0	%r25, %r23, %r19
	  aaurw,2	%g22, %aabf0
	  qpfhadds,3	%r20, %r19, %r1
	  qpfhadds,4	%r22, %r21, %r6
	  addd,5	%r53, %g21, %r20
	}
	{
	  qpfhadds,0	%r12, %r24, %g22
	  qpfhadds,1	%r18, %r17, %r12
	  addd,2	%g30, %g31, %r17
	  qpfhadds,3	%g20, %g19, %g19
	  addd,5	%g21, %g31, %g20
	}
	{
	  qpfhadds,0	%r11, %r10, %r10
	  qpfhadds,1	%g16, %g18, %g16
	  qpfhadds,2	%g17, %g23, %g17
	  qpfhadds,3	%r7, %r15, %r7
	  qpfhadds,4	%r51, %r50, %r11
	  addd,5	%r53, %g20, %g18
	}
	{
	  qpfhadds,0	%r14, %r2, %g23
	  qpfhadds,1	%r4, %r3, %r2
	  qpfhadds,2	%r16, %r9, %r3
	  qpfhadds,3	%r0, %r13, %r0
	  qpfhadds,4	%g29, %g28, %g28
	  addd,5	%r53, %g30, %g29
	}
	{
	  qpfhadds,0	%g26, %g25, %g25
	  qpfhadds,1	%g24, %g27, %g24
	  addd,5	%r53, %g31, %g26
	}
	{
	  addd,5	%r53, %r17, %g27
	}
	{
	  qpfhadds,0	%r19, %r6, %r4
	  qpfhadds,1	%r1, %r12, %r1
	  qpfhadds,2	%g22, %r10, %g22
	}
	{
	  qpfhadds,0	%r2, %g23, %g23
	  qpfhadds,3	%r0, %r11, %r0
	}
	{
	  nop 1
	  qpfhadds,0	%r3, %r7, %r2
	}
	{
	  nop 1
	  stqp,2	%r53, 0x0, %g22
	}
	{
	  stqp,2	0x10, %r53, %r2
	  stqp,5	0x10, %g26, %r0
	}
	{
	  stqp,2	%r53, %g31, %g23
	  stqp,5	%r53, %g21, %g17
	}
	{
	  stqp,2	0x10, %r20, %g16
	  stqp,5	%r53, %g20, %g19
	}
	{
	  stqp,2	0x10, %g18, %g25
	  stqp,5	%r53, %g30, %g24
	}
	{
	  stqp,2	0x10, %g29, %g28
	  stqp,5	%r53, %r17, %r4
	}
	{
	  ct	%ctpr3
	  stqp,2	0x10, %g27, %r1
	}
	.section .text.async_prefetch_code, "ax", @progbits

.L6686:
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=0, incr=0, ind=0, asz=2, abs=0, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=1, incr=0, ind=0, asz=2, abs=0, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=2, incr=0, ind=0, asz=2, abs=4, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=3, incr=0, ind=0, asz=2, abs=4, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=4, incr=0, ind=0, asz=2, abs=8, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=5, incr=0, ind=0, asz=2, abs=8, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=6, incr=0, ind=0, asz=2, abs=12, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=7, incr=0, ind=0, asz=2, abs=12, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=8, incr=0, ind=0, asz=2, abs=16, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=9, incr=0, ind=0, asz=2, abs=16, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=10, incr=0, ind=0, asz=2, abs=20, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=11, incr=0, ind=0, asz=2, abs=20, disp=0
	}
	{
	  fapb	ct=1, dcd=0, fmt=5, mrng=16, d=12, incr=0, ind=0, asz=3, abs=24, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=13, incr=0, ind=0, asz=3, abs=24, disp=0
	}
.previous

	.cfi_endproc
	.size	_Z11MulKernel48PfS_S_ii, .- _Z11MulKernel48PfS_S_ii
	.global	_Z15MulKernel48BiasPfS_S_S_ii
	.type	_Z15MulKernel48BiasPfS_S_S_ii, #function
	.align	8
_Z15MulKernel48BiasPfS_S_S_ii:
	.cfi_startproc
	{
	  setwd	wsz = 0x36, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x15, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L11746
	  getsp,0	_f32s,_lts1 0xfffffde0, %r7
	  qppackdl,1	0x0, 0x0, %g16
	  ldqp,3,sm	%r2, 0x0, %g17
	  ldqp,5,sm	0x10, %r2, %g18
	}
	{
	  return	%ctpr3
	  sxt,0	0x2, %r4, %b[42]
	  qpfhadds,1,sm	%g16, %g16, %g19
	}
	{
	  nop 1
	  cmpldb,0	0x0, %b[42], %pred0
	  shld,1,sm	%b[42], 0x1, %g20
	  shld,2,sm	%b[42], 0x2, %g21
	}
	{
	  qpor,0,sm	%g16, %g16, %r9 ? %pred0
	  qpor,1,sm	%g16, %g16, %r10 ? %pred0
	  addd,3	%r7, _f64,_lts0 0x220, %r6
	  qpor,4,sm	%g16, %g16, %r50 ? %pred0
	}
	{
	  addd,0,sm	0x0, %r3, %g23
	  addd,1,sm	0x0, %r1, %b[43]
	  addd,2,sm	0x0, %r0, %b[41]
	  qpor,3,sm	%g16, %g16, %r11 ? %pred0
	  qpor,4,sm	%g16, %g16, %r12 ? %pred0
	  adds,5,sm	0x0, %r5, %g22
	}
	{
	  qpor,0,sm	%g16, %g16, %r51 ? %pred0
	  qpor,1,sm	%g16, %g16, %r52 ? %pred0
	  stw,2,sm	%r6, _f16s,_lts0lo 0xfdf8, %g22
	  qpor,3,sm	%g16, %g16, %r53 ? %pred0
	  qpor,4,sm	%g16, %g16, %r54 ? %pred0
	  std,5,sm	%r6, _f16s,_lts0hi 0xfdf0, %g23
	}
	{
	  qpor,0,sm	%g16, %g16, %r55 ? %pred0
	  qpor,1,sm	%g16, %g16, %r56 ? %pred0
	  std,2,sm	%r6, _f16s,_lts0lo 0xfde8, %r2
	  qpor,3,sm	%g16, %g16, %r13 ? %pred0
	  qpor,4,sm	%g16, %g16, %r57 ? %pred0
	  addd,5,sm	%g21, %g20, %r0
	}
	{
	  qpor,0,sm	%g16, %g16, %r58 ? %pred0
	  qpor,1,sm	%g16, %g16, %r59 ? %pred0
	  qpfhadds,2,sm	%g19, %g19, %g19
	  qpor,3,sm	%g16, %g16, %r14 ? %pred0
	  qpor,4,sm	%g16, %g16, %r15 ? %pred0
	  sxt,5,sm	0x2, %r5, %g20
	}
	{
	  qpor,0,sm	%g16, %g16, %r16 ? %pred0
	  qpor,1,sm	%g16, %g16, %r17 ? %pred0
	  qpor,3,sm	%g16, %g16, %r18 ? %pred0
	  qpor,4,sm	%g16, %g16, %r19 ? %pred0
	  shld,5,sm	%g20, 0x4, %g21
	}
	{
	  qpor,0,sm	%g16, %g16, %r20 ? %pred0
	  qpor,1,sm	%g16, %g16, %r21 ? %pred0
	  qpor,3,sm	%g16, %g16, %r22 ? %pred0
	  qpor,4,sm	%g16, %g16, %r23 ? %pred0
	  shld,5,sm	%g20, 0x3, %g22
	}
	{
	  qpor,0,sm	%g16, %g16, %r24 ? %pred0
	  qpor,1,sm	%g16, %g16, %r25 ? %pred0
	  shld,2,sm	%g20, 0x2, %g20
	  qpor,3,sm	%g16, %g16, %r26 ? %pred0
	  qpor,4,sm	%g16, %g16, %r27 ? %pred0
	  addd,5,sm	%r3, %g21, %g23
	}
	{
	  qpor,0,sm	%g16, %g16, %r28 ? %pred0
	  qpor,1,sm	%g16, %g16, %r29 ? %pred0
	  qpfadds,2,sm	%g19, %g18, %g18
	  qpor,3,sm	%g16, %g16, %r60 ? %pred0
	  qpor,4,sm	%g16, %g16, %r30 ? %pred0
	  addd,5,sm	%r3, %g22, %g24
	}
	{
	  qpor,0,sm	%g16, %g16, %r31 ? %pred0
	  qpor,1,sm	%g16, %g16, %r32 ? %pred0
	  qpfadds,2,sm	%g19, %g17, %g17
	  qpor,3,sm	%g16, %g16, %r61 ? %pred0
	  qpor,4,sm	%g16, %g16, %r62 ? %pred0
	  addd,5,sm	%g21, %g20, %g19
	}
	{
	  qpor,0,sm	%g16, %g16, %r63 ? %pred0
	  qpor,1,sm	%g16, %g16, %b[31] ? %pred0
	  qpor,3,sm	%g16, %g16, %b[32] ? %pred0
	  qpor,4,sm	%g16, %g16, %b[33] ? %pred0
	  addd,5,sm	%g22, %g20, %g25
	}
	{
	  qpor,0,sm	%g16, %g16, %b[34] ? %pred0
	  qpor,1,sm	%g16, %g16, %b[35] ? %pred0
	  qpor,3,sm	%g16, %g16, %b[36] ? %pred0
	  qpor,4,sm	%g16, %g16, %b[37] ? %pred0
	  addd,5,sm	%r3, %g20, %g26
	}
	{
	  ct	%ctpr1 ? %pred0
	  qpor,0,sm	%g16, %g16, %b[38] ? %pred0
	  qpor,1,sm	%g16, %g16, %b[39] ? %pred0
	  addd,2,sm	%r3, %g25, %g27
	  qpor,3,sm	%g16, %g16, %b[40] ? %pred0
	  addd,4,sm	%r3, %g19, %g16
	}
	{
	  stqp,2	%r3, 0x0, %g17 ? ~%pred0
	}
	{
	  stqp,2	0x10, %r3, %g18 ? ~%pred0
	  stqp,5	0x10, %g26, %g18 ? ~%pred0
	}
	{
	  stqp,2	%r3, %g20, %g17 ? ~%pred0
	  stqp,5	%r3, %g22, %g17 ? ~%pred0
	}
	{
	  stqp,2	0x10, %g24, %g18 ? ~%pred0
	  stqp,5	%r3, %g25, %g17 ? ~%pred0
	}
	{
	  stqp,2	0x10, %g27, %g18 ? ~%pred0
	  stqp,5	%r3, %g21, %g17 ? ~%pred0
	}
	{
	  stqp,2	0x10, %g23, %g18 ? ~%pred0
	  stqp,5	%r3, %g19, %g17 ? ~%pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  stqp,2	0x10, %g16, %g18 ? ~%pred0
	}
.L11746:
	{
	  ldisp	%ctpr2, .L12066
	  cmpldb,0	0x0, %b[42], %pred0
	  addd,1	0x0, _f64,_lts0 0x1ff2100000000, %g17
	  subd,2	%b[42], 0x1, %g16
	  shld,3	%b[42], 0x5, %g18
	  shld,4	%b[42], 0x4, %g20
	  shld,5	%b[42], 0x2, %g19
	}
	{
	  disp	%ctpr1, .L6902
	  shrd,0	%g16, 0x2, %g16
	  shl_addd,1,sm	%r0, 0x2, %b[43], %g22
	  shld,2	%b[42], 0x3, %g21
	  addd,3	%g20, %g19, %g18
	  sub_addd,4,sm	%g18, %g19, %b[43], %g24
	  addd,5	0x0, 0x0, %g25
	}
	{
	  addd,0	%g16, 0x1, %g16
	  addd,1	%g21, %g19, %g26
	  addd,2	0x0, 0x0, %g23
	  addd,3	0x0, 0x0, %g29
	  addd,4	0x0, 0x0, %g31
	  addd,5	0x0, 0x0, %b[1]
	}
	{
	  merged,0	0x1, %g16, %g16, %pred0
	  addd,1	0x0, 0x0, %g25
	  aaurwq,2	%g24, %aad0
	  addd,3	0x0, 0x0, %b[3]
	  addd,4,sm	0x0, %b[43], %b[4]
	}
	{
	  insfd,0	%g17, _f32s,_lts0 0x8800, %g16, %g17
	  addd,1	0x0, 0x0, %b[5]
	  aaurwq,2	%g22, %aad1
	  addd,3	0x0, 0x0, %g23
	  addd,4	0x0, 0x0, %b[7]
	}
	{
	  rwd,0	%g17, %lsr
	  addd,1	0x0, 0x0, %b[5]
	  aaurwq,2	%b[4], %aad7
	  addd,3	0x0, 0x0, %b[9]
	  addd,4	0x0, 0x0, %b[11]
	}
	{
	  rwd,0	%g16, %lsr1
	  addd,1,sm	0x0, %b[41], %b[12]
	  addd,2	0x0, 0x0, %b[13]
	  addd,3,sm	%g19, %b[43], %b[2]
	  addd,4,sm	%g19, %b[41], %b[10]
	  addd,5,sm	%g20, %b[43], %g30
	}
	{
	  addd,1,sm	%g20, %b[41], %b[6]
	  aaurwq,2	%b[12], %aad13
	  addd,3,sm	%g21, %b[43], %g24
	  addd,4,sm	%g21, %b[41], %b[8]
	}
	{
	  addd,0,sm	%g18, %b[43], %g28
	  addd,1,sm	%g18, %b[41], %g22
	  aaurwq,2	%b[2], %aad6
	  addd,3,sm	%g26, %b[43], %b[0]
	  addd,4,sm	%g26, %b[41], %b[4]
	}
	{
	  qpor,0,sm	%r59, %r59, %r1
	  qpor,1,sm	%r55, %r55, %r2
	  aaurwq,2	%b[10], %aad12
	  qpor,3,sm	%r56, %r56, %r3
	  qpor,4,sm	%r51, %r51, %r4
	}
	{
	  qpor,0,sm	%r52, %r52, %r5
	  qpor,1,sm	%r50, %r50, %r7
	  aaurwq,2	%g30, %aad3
	  qpor,3,sm	%r30, %r30, %r30
	  qpor,4,sm	%r31, %r31, %r31
	}
	{
	  qpor,0,sm	%r32, %r32, %r32
	  qpor,1,sm	%r26, %r26, %r33
	  aaurwq,2	%b[6], %aad9
	  qpor,3,sm	%r27, %r27, %r34
	  qpor,4,sm	%r28, %r28, %r35
	}
	{
	  qpor,0,sm	%r29, %r29, %r36
	  qpor,1,sm	%r22, %r22, %r37
	  aaurwq,2	%g24, %aad5
	  qpor,3,sm	%r23, %r23, %r38
	  qpor,4,sm	%r24, %r24, %r39
	}
	{
	  qpor,0,sm	%r25, %r25, %r40
	  qpor,1,sm	%r18, %r18, %r41
	  aaurwq,2	%b[8], %aad11
	  qpor,3,sm	%r19, %r19, %r42
	  qpor,4,sm	%r20, %r20, %r43
	}
	{
	  qpor,0,sm	%r21, %r21, %r44
	  qpor,1,sm	%r14, %r14, %r45
	  aaurwq,2	%g28, %aad2
	  qpor,3,sm	%r15, %r15, %r46
	  qpor,4,sm	%r16, %r16, %r47
	}
	{
	  qpor,0,sm	%r17, %r17, %r48
	  qpor,1,sm	%r13, %r13, %r49
	  aaurwq,2	%g22, %aad8
	  qpor,3,sm	%r58, %r58, %r0
	  qpor,4,sm	%r62, %r62, %r26
	}
	{
	  qpor,0,sm	%r63, %r63, %r27
	  qpor,1,sm	%b[31], %b[31], %r28
	  aaurwq,2	%b[0], %aad4
	  qpor,3,sm	%r60, %r60, %r29
	  qpor,4,sm	%b[33], %b[33], %r22
	}
	{
	  qpor,0,sm	%b[34], %b[34], %r23
	  qpor,1,sm	%b[35], %b[35], %r24
	  aaurwq,2	%b[4], %aad10
	  qpor,3,sm	%r61, %r61, %r25
	  qpor,4,sm	%b[36], %b[36], %r18
	}
	{
	  bap
	  qpor,0,sm	%b[37], %b[37], %r19
	  qpor,1,sm	%b[38], %b[38], %r20
	  qpor,3,sm	%b[32], %b[32], %r21
	  qpor,4,sm	%r9, %r9, %r14
	}
	{
	  qpor,0,sm	%r10, %r10, %r15
	  qpor,1,sm	%b[39], %b[39], %r16
	  qpor,3,sm	%b[40], %b[40], %r17
	  qpor,4,sm	%r12, %r12, %r13
	}
	{
	  qpor,0,sm	%r57, %r57, %r9
	  qpor,1,sm	%r53, %r53, %r10
	  qpor,3,sm	%r11, %r11, %r12
	  qpor,4,sm	%r54, %r54, %r11
	}
	{
	  nop 7
	  setwd	wsz = 0x36, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0xa, rbs = 0x20, rcur = 0x0
	}
	{
	  nop 4
	}
.L6902:
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[20], %b[3], %r47, %r47 ? %pcnt0
	  qpfmul_adds,1,sm	%b[20], %b[2], %r46, %r46 ? %pcnt0
	  qpfmul_adds,2,sm	%b[20], %b[11], %r45, %r45 ? %pcnt0
	  qpfmul_adds,3,sm	%b[20], %b[10], %r44, %r44 ? %pcnt0
	  qpfmul_adds,4,sm	%b[20], %b[7], %r43, %r43 ? %pcnt0
	  qpfmul_adds,5,sm	%b[20], %b[6], %r42, %r42 ? %pcnt0
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[20], %b[15], %r41, %r41 ? %pcnt0
	  qpfmul_adds,1,sm	%b[20], %b[14], %r40, %r40 ? %pcnt0
	  qpfmul_adds,2,sm	%b[21], %b[3], %r39, %r39 ? %pcnt0
	  qpfmul_adds,3,sm	%b[21], %b[2], %r38, %r38 ? %pcnt0
	  qpfmul_adds,4,sm	%b[21], %b[11], %r37, %r37 ? %pcnt0
	  qpfmul_adds,5,sm	%b[21], %b[10], %r36, %r36 ? %pcnt0
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[21], %b[7], %r35, %r35 ? %pcnt0
	  qpfmul_adds,1,sm	%b[21], %b[6], %r34, %r34 ? %pcnt0
	  qpfmul_adds,2,sm	%b[21], %b[15], %r33, %r33 ? %pcnt0
	  qpfmul_adds,3,sm	%b[21], %b[14], %r32, %r32 ? %pcnt0
	  qpfmul_adds,4,sm	%b[19], %b[3], %r31, %r31 ? %pcnt0
	  qpfmul_adds,5,sm	%b[19], %b[2], %r30, %r30 ? %pcnt0
	  movaqp,1	area=3, ind=0, am=1, be=0, %b[0]
	  movaqp,2	area=3, ind=0, am=1, be=0, %b[1]
	  movaqp,3	area=5, ind=0, am=1, be=0, %b[18]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[19], %b[11], %r29, %r29 ? %pcnt0
	  qpfmul_adds,1,sm	%b[19], %b[10], %r28, %r28 ? %pcnt0
	  qpfmul_adds,2,sm	%b[19], %b[7], %r27, %r27 ? %pcnt0
	  qpfmul_adds,3,sm	%b[19], %b[6], %r26, %r26 ? %pcnt0
	  qpfmul_adds,4,sm	%b[19], %b[15], %r25, %r25 ? %pcnt0
	  qpfmul_adds,5,sm	%b[19], %b[14], %r24, %r24 ? %pcnt0
	  movaqp,0	area=2, ind=0, am=1, be=0, %b[8]
	  movaqp,1	area=1, ind=0, am=1, be=0, %b[4]
	  movaqp,2	area=2, ind=0, am=1, be=0, %b[9]
	  movaqp,3	area=1, ind=0, am=1, be=0, %b[5]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[17], %b[3], %r23, %r23 ? %pcnt0
	  qpfmul_adds,1,sm	%b[17], %b[2], %r22, %r22 ? %pcnt0
	  qpfmul_adds,2,sm	%b[17], %b[11], %r21, %r21 ? %pcnt0
	  qpfmul_adds,3,sm	%b[17], %b[10], %r20, %r20 ? %pcnt0
	  qpfmul_adds,4,sm	%b[17], %b[7], %r19, %r19 ? %pcnt0
	  qpfmul_adds,5,sm	%b[17], %b[6], %r18, %r18 ? %pcnt0
	  movaqp,0	area=0, ind=0, am=1, be=0, %b[12]
	  movaqp,1	area=5, ind=0, am=1, be=0, %b[19]
	  movaqp,3	area=0, ind=0, am=1, be=0, %b[13]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[17], %b[15], %r17, %r17 ? %pcnt0
	  qpfmul_adds,1,sm	%b[17], %b[14], %r16, %r16 ? %pcnt0
	  qpfmul_adds,2,sm	%b[16], %b[2], %r15, %r15 ? %pcnt0
	  qpfmul_adds,3,sm	%b[16], %b[11], %r14, %r14 ? %pcnt0
	  qpfmul_adds,4,sm	%b[16], %b[6], %r13, %r13 ? %pcnt0
	  qpfmul_adds,5,sm	%b[16], %b[15], %r12, %r12 ? %pcnt0
	  movaqp,3	area=4, ind=0, am=1, be=0, %b[17]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[16], %b[3], %r7, %r7 ? %pcnt0
	  qpfmul_adds,1,sm	%b[16], %b[10], %r5, %r5 ? %pcnt0
	  qpfmul_adds,2,sm	%b[16], %b[7], %r4, %r4 ? %pcnt0
	  qpfmul_adds,3,sm	%b[16], %b[14], %r3, %r3 ? %pcnt0
	  qpfmul_adds,4,sm	%g16, %b[15], %r49, %r49 ? %pcnt0
	  qpfmul_adds,5,sm	%g16, %b[14], %r48, %r48 ? %pcnt0
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  qpfmul_adds,0,sm	%g16, %b[2], %r11, %r11 ? %pcnt0
	  qpfmul_adds,1,sm	%g16, %b[11], %r10, %r10 ? %pcnt0
	  qpfmul_adds,2,sm	%g16, %b[6], %r9, %r9 ? %pcnt0
	  qpfmul_adds,3,sm	%g16, %b[3], %r2, %r2 ? %pcnt0
	  qpfmul_adds,4,sm	%g16, %b[10], %r1, %r1 ? %pcnt0
	  qpfmul_adds,5,sm	%g16, %b[7], %r0, %r0 ? %pcnt0
	  movaqp,0	area=6, ind=0, am=1, be=0, %g16
	  movaqp,1	area=4, ind=0, am=1, be=0, %b[15]
	  movaqp,3	area=6, ind=0, am=1, be=0, %b[14]
	}
	{
	  setwd	wsz = 0x36, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x15, rbs = 0x20, rcur = 0x0
	  return	%ctpr3
	  qpfhadds,0	%r47, %r46, %g17
	  qpfhadds,3	%r43, %r42, %g16
	}
	{
	  ldw,0	%r6, _f16s,_lts0hi 0xfdf8, %g22, mas=0x4
	  qpfhadds,1	%r41, %r40, %g18
	  adds,2	0x0, 0x0, %g23
	  qpfhadds,3	%r39, %r38, %g20
	  qpfhadds,4	%r37, %r36, %g19
	  ldd,5	%r6, _f16s,_lts0lo 0xfde8, %g21, mas=0x4
	}
	{
	  qpfhadds,0	%r45, %r44, %g24
	  qpfhadds,1	%r33, %r32, %g26
	  qpfhadds,2	%r35, %r34, %g27
	  qpfhadds,3	%r31, %r30, %g25
	}
	{
	  disp	%ctpr2, disp=0x0
	  qpfhadds,0	%r29, %r28, %g28
	  aaurw,2	%g23, %aabf0
	  qpfhadds,3	%r25, %r24, %g29
	  qpfhadds,4	%r27, %r26, %g30
	}
	{
	  qpfhadds,0	%r23, %r22, %r19
	  qpfhadds,3	%r19, %r18, %g31
	  qpfhadds,4	%r21, %r20, %r18
	  ldqp,5	%g21, 0x0, %g23
	}
	{
	  qpfhadds,0	%r17, %r16, %r16
	  sxt,1	0x2, %g22, %g22
	  ldqp,2	0x10, %g21, %g21
	  qpfhadds,3	%g20, %g19, %g19
	}
	{
	  qpfhadds,0	%r14, %r5, %r4
	  qpfhadds,1	%r7, %r15, %r5
	  qpfhadds,2	%g16, %g18, %g16
	  qpfhadds,3	%r12, %r3, %g20
	  qpfhadds,4	%r4, %r13, %r3
	  qpfhadds,5	%r49, %r48, %r7
	}
	{
	  qpfhadds,0	%g17, %g24, %g17
	  qpfhadds,1	%g27, %g26, %g18
	  shld,2	%g22, 0x3, %g27
	  qpfhadds,3	%g30, %g29, %g24
	  shld,4	%g22, 0x4, %g26
	  shld,5	%g22, 0x2, %g22
	}
	{
	  qpfhadds,0	%g25, %g28, %g25
	}
	{
	  qpfhadds,0	%r10, %r1, %g28
	  qpfhadds,1	%r2, %r11, %g29
	  qpfhadds,2	%r0, %r9, %g30
	  qpfadds,3	%g19, %g23, %g19
	  addd,4	%g27, %g22, %r0
	  addd,5	%g26, %g22, %r1
	}
	{
	  qpfhadds,0	%r19, %r18, %r2
	  qpfhadds,1	%g31, %r16, %g31
	  qpfhadds,2	%r5, %r4, %r3
	  qpfhadds,3	%r3, %g20, %g20
	  ldd,5	%r6, _f16s,_lts0lo 0xfdf0, %r4, mas=0x4
	}
	{
	  qpfadds,0	%g16, %g21, %g16
	  qpfadds,1	%g17, %g23, %g17
	  qpfadds,2	%g18, %g21, %g18
	  qpfadds,3	%g24, %g21, %g24
	}
	{
	  qpfadds,0	%g25, %g23, %g25
	}
	{
	  qpfhadds,0	%g29, %g28, %g28
	  qpfhadds,1	%g30, %r7, %g29
	  addd,4	%r4, %g26, %r5
	  addd,5	%r4, %g27, %r9
	}
	{
	  qpfadds,0	%g31, %g21, %g31
	  addd,1	%r4, %g22, %g30
	  addd,2	%r4, %r0, %r7
	  addd,3	%r4, %r1, %r10
	  qpfadds,4	%g20, %g21, %g20
	}
	{
	  nop 1
	  qpfadds,0	%r2, %g23, %r2
	  qpfadds,1	%r3, %g23, %r3
	}
	{
	  qpfadds,0	%g28, %g23, %g23
	  qpfadds,1	%g29, %g21, %g21
	}
	{
	  stqp,5	0x10, %r4, %g20
	}
	{
	  nop 1
	  stqp,2	%r4, 0x0, %r3
	}
	{
	  stqp,2	%r4, %g22, %g23
	}
	{
	  stqp,2	0x10, %g30, %g21
	  stqp,5	%r4, %g27, %g17
	}
	{
	  stqp,2	0x10, %r9, %g16
	  stqp,5	%r4, %r0, %g19
	}
	{
	  stqp,2	0x10, %r7, %g18
	  stqp,5	%r4, %g26, %g25
	}
	{
	  stqp,2	0x10, %r5, %g24
	  stqp,5	%r4, %r1, %r2
	}
	{
	  ct	%ctpr3
	  stqp,2	0x10, %r10, %g31
	}
	.section .text.async_prefetch_code, "ax", @progbits

.L12066:
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=0, incr=0, ind=0, asz=2, abs=0, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=1, incr=0, ind=0, asz=2, abs=0, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=2, incr=0, ind=0, asz=2, abs=4, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=3, incr=0, ind=0, asz=2, abs=4, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=4, incr=0, ind=0, asz=2, abs=8, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=5, incr=0, ind=0, asz=2, abs=8, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=6, incr=0, ind=0, asz=2, abs=12, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=7, incr=0, ind=0, asz=2, abs=12, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=8, incr=0, ind=0, asz=2, abs=16, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=9, incr=0, ind=0, asz=2, abs=16, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=10, incr=0, ind=0, asz=2, abs=20, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=11, incr=0, ind=0, asz=2, abs=20, disp=0
	}
	{
	  fapb	ct=1, dcd=0, fmt=5, mrng=16, d=12, incr=0, ind=0, asz=3, abs=24, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=13, incr=0, ind=0, asz=3, abs=24, disp=0
	}
.previous

	.cfi_endproc
	.size	_Z15MulKernel48BiasPfS_S_S_ii, .- _Z15MulKernel48BiasPfS_S_S_ii
	.global	_Z15MulKernel48ReluPfS_S_S_ii
	.type	_Z15MulKernel48ReluPfS_S_S_ii, #function
	.align	8
_Z15MulKernel48ReluPfS_S_S_ii:
	.cfi_startproc
	{
	  setwd	wsz = 0x36, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x15, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L17471
	  getsp,0	_f32s,_lts1 0xfffffdd0, %r7
	  qppackdl,1	0x0, 0x0, %g16
	  ldqp,3,sm	%r2, 0x0, %g17
	  ldqp,5,sm	0x10, %r2, %g18
	}
	{
	  return	%ctpr3
	  sxt,0	0x2, %r4, %b[42]
	  qpfhadds,1,sm	%g16, %g16, %g19
	}
	{
	  nop 1
	  cmpldb,0	0x0, %b[42], %pred0
	  shld,1,sm	%b[42], 0x1, %g20
	  shld,2,sm	%b[42], 0x2, %g21
	}
	{
	  qpor,0,sm	%g16, %g16, %r50 ? %pred0
	  qpor,1,sm	%g16, %g16, %r9 ? %pred0
	  addd,3	%r7, _f64,_lts0 0x230, %r6
	  qpor,4,sm	%g16, %g16, %r10 ? %pred0
	}
	{
	  adds,0,sm	0x0, %r5, %g22
	  addd,1,sm	0x0, %r3, %g23
	  addd,2,sm	0x0, %r0, %b[41]
	  addd,3,sm	0x0, %r1, %b[43]
	  qpor,4,sm	%g16, %g16, %r11 ? %pred0
	  stqp,5	%r6, _f16s,_lts0lo 0xfdf0, %g16
	}
	{
	  qpor,0,sm	%g16, %g16, %r12 ? %pred0
	  qpor,1,sm	%g16, %g16, %r13 ? %pred0
	  stw,2,sm	%r6, _f16s,_lts0lo 0xfde8, %g22
	  qpor,3,sm	%g16, %g16, %r51 ? %pred0
	  qpor,4,sm	%g16, %g16, %r52 ? %pred0
	  std,5,sm	%r6, _f16s,_lts0hi 0xfde0, %g23
	}
	{
	  qpor,0,sm	%g16, %g16, %r53 ? %pred0
	  qpor,1,sm	%g16, %g16, %r54 ? %pred0
	  std,2,sm	%r6, _f16s,_lts0lo 0xfdd8, %r2
	  qpor,3,sm	%g16, %g16, %r55 ? %pred0
	  qpor,4,sm	%g16, %g16, %r14 ? %pred0
	  addd,5,sm	%g21, %g20, %r0
	}
	{
	  qpor,0,sm	%g16, %g16, %r56 ? %pred0
	  qpor,1,sm	%g16, %g16, %r57 ? %pred0
	  qpfhadds,2,sm	%g19, %g19, %g19
	  qpor,3,sm	%g16, %g16, %r58 ? %pred0
	  qpor,4,sm	%g16, %g16, %r15 ? %pred0
	  ldqp,5,sm	%r6, _f16s,_lts0lo 0xfdf0, %g20
	}
	{
	  qpor,0,sm	%g16, %g16, %r16 ? %pred0
	  qpor,1,sm	%g16, %g16, %r17 ? %pred0
	  sxt,2,sm	0x2, %r5, %g21
	  qpor,3,sm	%g16, %g16, %r18 ? %pred0
	  qpor,4,sm	%g16, %g16, %r19 ? %pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %r20 ? %pred0
	  qpor,1,sm	%g16, %g16, %r21 ? %pred0
	  qpor,3,sm	%g16, %g16, %r22 ? %pred0
	  qpor,4,sm	%g16, %g16, %r23 ? %pred0
	}
	{
	  qpor,0,sm	%g16, %g16, %r24 ? %pred0
	  qpor,1,sm	%g16, %g16, %r25 ? %pred0
	  shld,2,sm	%g21, 0x4, %g22
	  qpor,3,sm	%g16, %g16, %r26 ? %pred0
	  qpor,4,sm	%g16, %g16, %r27 ? %pred0
	  shld,5,sm	%g21, 0x2, %g23
	}
	{
	  qpor,0,sm	%g16, %g16, %r28 ? %pred0
	  qpor,1,sm	%g16, %g16, %r29 ? %pred0
	  qpfadds,2,sm	%g19, %g18, %g18
	  qpor,3,sm	%g16, %g16, %r30 ? %pred0
	  qpor,4,sm	%g16, %g16, %r59 ? %pred0
	  shld,5,sm	%g21, 0x3, %g21
	}
	{
	  qpor,0,sm	%g16, %g16, %r60 ? %pred0
	  qpor,1,sm	%g16, %g16, %r31 ? %pred0
	  qpfadds,2,sm	%g19, %g17, %g17
	  qpor,3,sm	%g16, %g16, %r32 ? %pred0
	  qpor,4,sm	%g16, %g16, %r61 ? %pred0
	  addd,5,sm	%g22, %g23, %g19
	}
	{
	  qpor,0,sm	%g16, %g16, %r62 ? %pred0
	  qpor,1,sm	%g16, %g16, %r63 ? %pred0
	  qpor,3,sm	%g16, %g16, %b[31] ? %pred0
	  qpor,4,sm	%g16, %g16, %b[32] ? %pred0
	  addd,5,sm	%g21, %g23, %g24
	}
	{
	  qpor,0,sm	%g16, %g16, %b[33] ? %pred0
	  qpor,1,sm	%g16, %g16, %b[34] ? %pred0
	  qpor,3,sm	%g16, %g16, %b[35] ? %pred0
	  qpor,4,sm	%g16, %g16, %b[36] ? %pred0
	  addd,5,sm	%r3, %g22, %g25
	}
	{
	  ct	%ctpr1 ? %pred0
	  qpor,0,sm	%g16, %g16, %b[37] ? %pred0
	  qpor,1,sm	%g16, %g16, %b[38] ? %pred0
	  addd,2,sm	%r3, %g23, %g16
	  qpor,3,sm	%g16, %g16, %b[39] ? %pred0
	  qpor,4,sm	%g16, %g16, %b[40] ? %pred0
	  addd,5,sm	%r3, %g21, %g26
	}
	{
	  nop 1
	  qpfmaxs,0,sm	%g20, %g18, %g18
	  qpfmaxs,1,sm	%g20, %g17, %g17
	  addd,2,sm	%r3, %g19, %g20
	  addd,3,sm	%r3, %g24, %g27
	}
	{
	  stqp,2	0x10, %r3, %g18 ? ~%pred0
	}
	{
	  stqp,2	%r3, 0x0, %g17 ? ~%pred0
	  stqp,5	0x10, %g16, %g18 ? ~%pred0
	}
	{
	  stqp,2	%r3, %g23, %g17 ? ~%pred0
	  stqp,5	0x10, %g26, %g18 ? ~%pred0
	}
	{
	  stqp,2	%r3, %g21, %g17 ? ~%pred0
	  stqp,5	0x10, %g27, %g18 ? ~%pred0
	}
	{
	  stqp,2	%r3, %g24, %g17 ? ~%pred0
	  stqp,5	0x10, %g25, %g18 ? ~%pred0
	}
	{
	  stqp,2	%r3, %g22, %g17 ? ~%pred0
	  stqp,5	0x10, %g20, %g18 ? ~%pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  stqp,2	%r3, %g19, %g17 ? ~%pred0
	}
.L17471:
	{
	  ldisp	%ctpr2, .L17791
	  cmpldb,0	0x0, %b[42], %pred0
	  addd,1	0x0, _f64,_lts0 0x1ff2100000000, %g17
	  subd,2	%b[42], 0x1, %g16
	  shld,3	%b[42], 0x5, %g18
	  shld,4	%b[42], 0x4, %g20
	  shld,5	%b[42], 0x2, %g19
	}
	{
	  disp	%ctpr1, .L12286
	  shrd,0	%g16, 0x2, %g16
	  shl_addd,1,sm	%r0, 0x2, %b[43], %g22
	  shld,2	%b[42], 0x3, %g21
	  addd,3	%g20, %g19, %g18
	  sub_addd,4,sm	%g18, %g19, %b[43], %g24
	  addd,5	0x0, 0x0, %g25
	}
	{
	  addd,0	%g16, 0x1, %g16
	  addd,1	%g21, %g19, %g26
	  addd,2	0x0, 0x0, %g23
	  addd,3	0x0, 0x0, %g29
	  addd,4	0x0, 0x0, %g31
	  addd,5	0x0, 0x0, %b[1]
	}
	{
	  merged,0	0x1, %g16, %g16, %pred0
	  addd,1	0x0, 0x0, %g25
	  aaurwq,2	%g24, %aad0
	  addd,3	0x0, 0x0, %b[3]
	  addd,4,sm	0x0, %b[43], %b[4]
	}
	{
	  insfd,0	%g17, _f32s,_lts0 0x8800, %g16, %g17
	  addd,1	0x0, 0x0, %b[5]
	  aaurwq,2	%g22, %aad1
	  addd,3	0x0, 0x0, %g23
	  addd,4	0x0, 0x0, %b[7]
	}
	{
	  rwd,0	%g17, %lsr
	  addd,1	0x0, 0x0, %b[5]
	  aaurwq,2	%b[4], %aad7
	  addd,3	0x0, 0x0, %b[9]
	  addd,4	0x0, 0x0, %b[11]
	}
	{
	  rwd,0	%g16, %lsr1
	  addd,1,sm	0x0, %b[41], %b[12]
	  addd,2	0x0, 0x0, %b[13]
	  addd,3,sm	%g19, %b[43], %b[2]
	  addd,4,sm	%g19, %b[41], %b[10]
	  addd,5,sm	%g20, %b[43], %g30
	}
	{
	  addd,1,sm	%g20, %b[41], %b[6]
	  aaurwq,2	%b[12], %aad13
	  addd,3,sm	%g21, %b[43], %g24
	  addd,4,sm	%g21, %b[41], %b[8]
	}
	{
	  addd,0,sm	%g18, %b[43], %g28
	  addd,1,sm	%g18, %b[41], %g22
	  aaurwq,2	%b[2], %aad6
	  addd,3,sm	%g26, %b[43], %b[0]
	  addd,4,sm	%g26, %b[41], %b[4]
	}
	{
	  qpor,0,sm	%r57, %r57, %r1
	  qpor,1,sm	%r54, %r54, %r2
	  aaurwq,2	%b[10], %aad12
	  qpor,3,sm	%r55, %r55, %r3
	  qpor,4,sm	%r51, %r51, %r4
	}
	{
	  qpor,0,sm	%r50, %r50, %r5
	  qpor,1,sm	%r58, %r58, %r7
	  aaurwq,2	%g30, %aad3
	  qpor,3,sm	%r11, %r11, %r11
	  qpor,4,sm	%r12, %r12, %r12
	}
	{
	  qpor,0,sm	%r13, %r13, %r13
	  qpor,1,sm	%r31, %r31, %r31
	  aaurwq,2	%b[6], %aad9
	  qpor,3,sm	%r32, %r32, %r32
	  qpor,4,sm	%r27, %r27, %r33
	}
	{
	  qpor,0,sm	%r28, %r28, %r34
	  qpor,1,sm	%r29, %r29, %r35
	  aaurwq,2	%g24, %aad5
	  qpor,3,sm	%r30, %r30, %r36
	  qpor,4,sm	%r23, %r23, %r37
	}
	{
	  qpor,0,sm	%r24, %r24, %r38
	  qpor,1,sm	%r25, %r25, %r39
	  aaurwq,2	%b[8], %aad11
	  qpor,3,sm	%r26, %r26, %r40
	  qpor,4,sm	%r19, %r19, %r41
	}
	{
	  qpor,0,sm	%r20, %r20, %r42
	  qpor,1,sm	%r21, %r21, %r43
	  aaurwq,2	%g28, %aad2
	  qpor,3,sm	%r22, %r22, %r44
	  qpor,4,sm	%r15, %r15, %r45
	}
	{
	  qpor,0,sm	%r16, %r16, %r46
	  qpor,1,sm	%r17, %r17, %r47
	  aaurwq,2	%g22, %aad8
	  qpor,3,sm	%r18, %r18, %r48
	  qpor,4,sm	%r14, %r14, %r49
	}
	{
	  qpor,0,sm	%r56, %r56, %r0
	  qpor,1,sm	%r63, %r63, %r27
	  aaurwq,2	%b[0], %aad4
	  qpor,3,sm	%b[31], %b[31], %r28
	  qpor,4,sm	%r59, %r59, %r29
	}
	{
	  qpor,0,sm	%r60, %r60, %r30
	  qpor,1,sm	%b[34], %b[34], %r23
	  aaurwq,2	%b[4], %aad10
	  qpor,3,sm	%b[35], %b[35], %r24
	  qpor,4,sm	%r61, %r61, %r25
	}
	{
	  bap
	  qpor,0,sm	%r62, %r62, %r26
	  qpor,1,sm	%b[37], %b[37], %r19
	  qpor,3,sm	%b[38], %b[38], %r20
	  qpor,4,sm	%b[32], %b[32], %r21
	}
	{
	  qpor,0,sm	%b[33], %b[33], %r22
	  qpor,1,sm	%r10, %r10, %r15
	  qpor,3,sm	%b[39], %b[39], %r16
	  qpor,4,sm	%b[40], %b[40], %r17
	}
	{
	  qpor,0,sm	%b[36], %b[36], %r18
	  qpor,1,sm	%r9, %r9, %r14
	  qpor,3,sm	%r53, %r53, %r10
	  qpor,4,sm	%r52, %r52, %r9
	}
	{
	  nop 7
	  setwd	wsz = 0x36, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0xa, rbs = 0x20, rcur = 0x0
	}
	{
	  nop 4
	}
.L12286:
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[20], %b[3], %r47, %r47 ? %pcnt0
	  qpfmul_adds,1,sm	%b[20], %b[2], %r46, %r46 ? %pcnt0
	  qpfmul_adds,2,sm	%b[20], %b[11], %r45, %r45 ? %pcnt0
	  qpfmul_adds,3,sm	%b[20], %b[10], %r44, %r44 ? %pcnt0
	  qpfmul_adds,4,sm	%b[20], %b[7], %r43, %r43 ? %pcnt0
	  qpfmul_adds,5,sm	%b[20], %b[6], %r42, %r42 ? %pcnt0
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[20], %b[15], %r41, %r41 ? %pcnt0
	  qpfmul_adds,1,sm	%b[20], %b[14], %r40, %r40 ? %pcnt0
	  qpfmul_adds,2,sm	%b[21], %b[3], %r39, %r39 ? %pcnt0
	  qpfmul_adds,3,sm	%b[21], %b[2], %r38, %r38 ? %pcnt0
	  qpfmul_adds,4,sm	%b[21], %b[11], %r37, %r37 ? %pcnt0
	  qpfmul_adds,5,sm	%b[21], %b[10], %r36, %r36 ? %pcnt0
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[21], %b[7], %r35, %r35 ? %pcnt0
	  qpfmul_adds,1,sm	%b[21], %b[6], %r34, %r34 ? %pcnt0
	  qpfmul_adds,2,sm	%b[21], %b[15], %r33, %r33 ? %pcnt0
	  qpfmul_adds,3,sm	%b[21], %b[14], %r32, %r32 ? %pcnt0
	  qpfmul_adds,4,sm	%b[19], %b[3], %r31, %r31 ? %pcnt0
	  qpfmul_adds,5,sm	%b[19], %b[2], %r30, %r30 ? %pcnt0
	  movaqp,1	area=3, ind=0, am=1, be=0, %b[0]
	  movaqp,2	area=3, ind=0, am=1, be=0, %b[1]
	  movaqp,3	area=5, ind=0, am=1, be=0, %b[18]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[19], %b[11], %r29, %r29 ? %pcnt0
	  qpfmul_adds,1,sm	%b[19], %b[10], %r28, %r28 ? %pcnt0
	  qpfmul_adds,2,sm	%b[19], %b[7], %r27, %r27 ? %pcnt0
	  qpfmul_adds,3,sm	%b[19], %b[6], %r26, %r26 ? %pcnt0
	  qpfmul_adds,4,sm	%b[19], %b[15], %r25, %r25 ? %pcnt0
	  qpfmul_adds,5,sm	%b[19], %b[14], %r24, %r24 ? %pcnt0
	  movaqp,0	area=2, ind=0, am=1, be=0, %b[8]
	  movaqp,1	area=1, ind=0, am=1, be=0, %b[4]
	  movaqp,2	area=2, ind=0, am=1, be=0, %b[9]
	  movaqp,3	area=1, ind=0, am=1, be=0, %b[5]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[17], %b[3], %r23, %r23 ? %pcnt0
	  qpfmul_adds,1,sm	%b[17], %b[2], %r22, %r22 ? %pcnt0
	  qpfmul_adds,2,sm	%b[17], %b[11], %r21, %r21 ? %pcnt0
	  qpfmul_adds,3,sm	%b[17], %b[10], %r20, %r20 ? %pcnt0
	  qpfmul_adds,4,sm	%b[17], %b[7], %r19, %r19 ? %pcnt0
	  qpfmul_adds,5,sm	%b[17], %b[6], %r18, %r18 ? %pcnt0
	  movaqp,0	area=0, ind=0, am=1, be=0, %b[12]
	  movaqp,1	area=5, ind=0, am=1, be=0, %b[19]
	  movaqp,3	area=0, ind=0, am=1, be=0, %b[13]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[17], %b[15], %r17, %r17 ? %pcnt0
	  qpfmul_adds,1,sm	%b[17], %b[14], %r16, %r16 ? %pcnt0
	  qpfmul_adds,2,sm	%b[16], %b[3], %r15, %r15 ? %pcnt0
	  qpfmul_adds,3,sm	%b[16], %b[2], %r14, %r14 ? %pcnt0
	  qpfmul_adds,4,sm	%b[16], %b[7], %r13, %r13 ? %pcnt0
	  qpfmul_adds,5,sm	%b[16], %b[6], %r12, %r12 ? %pcnt0
	  movaqp,3	area=4, ind=0, am=1, be=0, %b[17]
	}
	{
	  loop_mode
	  qpfmul_adds,0,sm	%b[16], %b[15], %r11, %r11 ? %pcnt0
	  qpfmul_adds,1,sm	%b[16], %b[11], %r5, %r5 ? %pcnt0
	  qpfmul_adds,2,sm	%b[16], %b[10], %r4, %r4 ? %pcnt0
	  qpfmul_adds,3,sm	%b[16], %b[14], %r3, %r3 ? %pcnt0
	  qpfmul_adds,4,sm	%g16, %b[15], %r49, %r49 ? %pcnt0
	  qpfmul_adds,5,sm	%g16, %b[14], %r48, %r48 ? %pcnt0
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  qpfmul_adds,0,sm	%g16, %b[2], %r10, %r10 ? %pcnt0
	  qpfmul_adds,1,sm	%g16, %b[11], %r9, %r9 ? %pcnt0
	  qpfmul_adds,2,sm	%g16, %b[10], %r7, %r7 ? %pcnt0
	  qpfmul_adds,3,sm	%g16, %b[3], %r2, %r2 ? %pcnt0
	  qpfmul_adds,4,sm	%g16, %b[7], %r1, %r1 ? %pcnt0
	  qpfmul_adds,5,sm	%g16, %b[6], %r0, %r0 ? %pcnt0
	  movaqp,0	area=6, ind=0, am=1, be=0, %g16
	  movaqp,1	area=4, ind=0, am=1, be=0, %b[15]
	  movaqp,3	area=6, ind=0, am=1, be=0, %b[14]
	}
	{
	  setwd	wsz = 0x36, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x15, rbs = 0x20, rcur = 0x0
	  return	%ctpr3
	  qpfhadds,0	%r47, %r46, %g17
	  qpfhadds,3	%r43, %r42, %g16
	}
	{
	  ldqp,0	%r6, _f16s,_lts0lo 0xfdf0, %g22
	  qpfhadds,1	%r41, %r40, %g18
	  ldw,2	%r6, _f16s,_lts1lo 0xfde8, %g23, mas=0x4
	  qpfhadds,3	%r39, %r38, %g20
	  qpfhadds,4	%r37, %r36, %g19
	  ldd,5	%r6, _f16s,_lts0hi 0xfdd8, %g21, mas=0x4
	}
	{
	  qpfhadds,0	%r45, %r44, %g24
	  qpfhadds,1	%r33, %r32, %g26
	  qpfhadds,2	%r35, %r34, %g27
	  qpfhadds,3	%r31, %r30, %g25
	  adds,4	0x0, 0x0, %g28
	}
	{
	  disp	%ctpr2, disp=0x0
	  qpfhadds,0	%r29, %r28, %g29
	  aaurw,2	%g28, %aabf0
	  qpfhadds,3	%r25, %r24, %g30
	  qpfhadds,4	%r27, %r26, %g31
	}
	{
	  qpfhadds,0	%r23, %r22, %r20
	  qpfhadds,3	%r19, %r18, %r18
	  qpfhadds,4	%r21, %r20, %r19
	  ldqp,5	%g21, 0x0, %g28
	}
	{
	  qpfhadds,0	%r17, %r16, %r14
	  sxt,1	0x2, %g23, %g23
	  ldqp,2	0x10, %g21, %g21
	  qpfhadds,3	%r13, %r12, %r12
	  qpfhadds,4	%r15, %r14, %r13
	  qpfhadds,5	%g20, %g19, %g19
	}
	{
	  qpfhadds,0	%r11, %r3, %g20
	  qpfhadds,1	%r5, %r4, %r3
	  qpfhadds,2	%g16, %g18, %g16
	  qpfhadds,3	%r49, %r48, %r4
	}
	{
	  qpfhadds,0	%r9, %r7, %g18
	  qpfhadds,1	%g17, %g24, %g17
	  qpfhadds,2	%g27, %g26, %g24
	  qpfhadds,3	%r1, %r0, %r0
	  qpfhadds,4	%g31, %g30, %g26
	}
	{
	  qpfhadds,0	%g25, %g29, %g25
	  shld,4	%g23, 0x4, %g27
	  shld,5	%g23, 0x2, %g29
	}
	{
	  qpfhadds,0	%r2, %r10, %g30
	  qpfadds,3	%g19, %g28, %g19
	  shld,5	%g23, 0x3, %g23
	}
	{
	  qpfhadds,0	%r20, %r19, %g31
	  qpfhadds,1	%r18, %r14, %r1
	  qpfadds,2	%g16, %g21, %g16
	  addd,3	%g27, %g29, %r2
	  addd,4	%g23, %g29, %r5
	  ldd,5	%r6, _f16s,_lts0lo 0xfde0, %r7, mas=0x4
	}
	{
	  qpfhadds,0	%r12, %g20, %g20
	  qpfhadds,1	%r13, %r3, %r3
	  qpfadds,2	%g17, %g28, %g17
	  qpfhadds,3	%r0, %r4, %r0
	  qpfadds,4	%g26, %g21, %g26
	}
	{
	  qpfadds,0	%g24, %g21, %g24
	  qpfadds,1	%g25, %g28, %g25
	}
	{
	  qpfhadds,2	%g30, %g18, %g18
	  addd,5	%r7, %g27, %r4
	}
	{
	  qpfadds,0	%g31, %g28, %g31
	  qpfadds,1	%r1, %g21, %r1
	  addd,2	%r7, %g29, %g30
	  addd,3	%r7, %r2, %r10
	  addd,4	%r7, %r5, %r11
	  addd,5	%r7, %g23, %r9
	}
	{
	  nop 1
	  qpfadds,0	%r3, %g28, %r3
	  qpfmaxs,1	%g22, %g16, %g16
	  qpfadds,2	%g20, %g21, %g20
	  qpfmaxs,3	%g22, %g19, %g19
	  qpfmaxs,4	%g22, %g26, %g26
	  qpfadds,5	%r0, %g21, %g21
	}
	{
	  qpfmaxs,1	%g22, %g17, %g17
	  qpfadds,2	%g18, %g28, %g18
	}
	{
	  qpfmaxs,0	%g22, %g24, %g24
	  qpfmaxs,1	%g22, %g25, %g25
	}
	{
	  qpfmaxs,0	%g22, %g31, %g28
	  qpfmaxs,1	%g22, %r1, %g31
	  qpfmaxs,3	%g22, %g21, %g21
	}
	{
	  qpfmaxs,0	%g22, %g20, %g20
	  qpfmaxs,1	%g22, %r3, %r0
	}
	{
	  qpfmaxs,0	%g22, %g18, %g18
	}
	{
	  stqp,2	%r7, 0x0, %r0
	}
	{
	  stqp,2	0x10, %r7, %g20
	  stqp,5	0x10, %g30, %g21
	}
	{
	  stqp,2	%r7, %g29, %g18
	  stqp,5	%r7, %g23, %g17
	}
	{
	  stqp,2	0x10, %r9, %g16
	  stqp,5	%r7, %r5, %g19
	}
	{
	  stqp,2	0x10, %r11, %g24
	  stqp,5	%r7, %g27, %g25
	}
	{
	  stqp,2	0x10, %r4, %g26
	  stqp,5	%r7, %r2, %g28
	}
	{
	  ct	%ctpr3
	  stqp,2	0x10, %r10, %g31
	}
	.section .text.async_prefetch_code, "ax", @progbits

.L17791:
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=0, incr=0, ind=0, asz=2, abs=0, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=1, incr=0, ind=0, asz=2, abs=0, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=2, incr=0, ind=0, asz=2, abs=4, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=3, incr=0, ind=0, asz=2, abs=4, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=4, incr=0, ind=0, asz=2, abs=8, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=5, incr=0, ind=0, asz=2, abs=8, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=6, incr=0, ind=0, asz=2, abs=12, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=7, incr=0, ind=0, asz=2, abs=12, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=8, incr=0, ind=0, asz=2, abs=16, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=9, incr=0, ind=0, asz=2, abs=16, disp=0
	}
	{
	  fapb	ct=0, dcd=0, fmt=5, mrng=16, d=10, incr=0, ind=0, asz=2, abs=20, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=11, incr=0, ind=0, asz=2, abs=20, disp=0
	}
	{
	  fapb	ct=1, dcd=0, fmt=5, mrng=16, d=12, incr=0, ind=0, asz=3, abs=24, disp=0
	  fapb	dpl=0, dcd=0, fmt=5, mrng=16, d=13, incr=0, ind=0, asz=3, abs=24, disp=0
	}
.previous

	.cfi_endproc
	.size	_Z15MulKernel48ReluPfS_S_S_ii, .- _Z15MulKernel48ReluPfS_S_S_ii
	.global	_Z15ElbrusMatrixMulPfS_S_lll
	.type	_Z15ElbrusMatrixMulPfS_S_lll, #function
	.align	8
_Z15ElbrusMatrixMulPfS_S_lll:
	.cfi_startproc
	{
	  setwd	wsz = 0x13, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0xf, rcur = 0x0
	  disp	%ctpr2, clock_gettime
	  getsp,0	_f32s,_lts1 0xffffffb0, %r7
	  addd,1	0x0, 0x0, %r19
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.1 ], %r9
	}
	{
	  nop 2
	  addd,3,sm	0x3, 0x0, %b[0]
	}
	{
	  cmpldb,0,sm	0x0, %r5, %pred0
	  cmpldb,1	0x0, %r3, %pred1
	  addd,5	%r7, _f64,_lts0 0x50, %r6
	}
	{
	  shld,0,sm	%r4, 0x4, %r10
	  shld,1,sm	%r4, 0x5, %r16
	  addd,2,sm	0x0, %r4, %r11
	  subd,3	%r6, _f16s,_lts0lo 0x10, %b[1]
	  addd,4,sm	0x0, %r5, %r14
	  shld,5,sm	%r5, 0x3, %r15
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred0
	}
	{
	  call	%ctpr2, wbs = 0xf
	  shld,0,sm	%r5, 0x4, %r27
	  shld,1,sm	%r4, 0x3, %r28
	  addd,2,sm	%r2, _f16s,_lts0lo 0x20, %r23
	  addd,3,sm	0x0, %r0, %r24
	  addd,5,sm	0x0, %r4, %r26
	}
	{
	  disp	%ctpr1, .L18009
	  shld,1,sm	%r4, 0x6, %r25
	  addd,2,sm	%r1, %r16, %r22
	  sxt,3,sm	0x2, %r11, %r13
	  sxt,4,sm	0x2, %r14, %r12
	  addd,5,sm	0x0, 0x0, %r17 ? %pred0
	}
	{
	  disp	%ctpr3, clock_gettime
	  addd,0,sm	%r10, %r28, %r21
	  muld,1,sm	%r3, %r4, %r4
	  addd,2,sm	0x0, 0x0, %r18 ? %pred0
	  addd,3,sm	%r6, _f16s,_lts0lo 0xffe0, %r10
	  addd,4,sm	0x3, 0x0, %b[0] ? ~%pred0
	  addd,5,sm	%r27, %r15, %r20
	}
	{
	  ct	%ctpr1 ? %pred0
	  addd,3,sm	0x0, %r10, %b[1] ? ~%pred0
	}
	{
	  nop 1
	}
	{
	  muld,0,sm	%r4, %r5, %r1
	}
	{
	  call	%ctpr3, wbs = 0xf ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z4diff8timespecS_
	  ldqp,2,sm	%r6, _f16s,_lts0lo 0xffe0, %r2
	  ldqp,3,sm	%r6, _f16s,_lts0hi 0xfff0, %r3
	}
	{
	  nop 1
	  qpswitchd,0,sm	%r2, %b[3] ? ~%pred0
	  addd,1,sm	0x0, %r2, %b[2] ? ~%pred0
	  qpswitchd,3,sm	%r3, %b[1] ? ~%pred0
	  addd,4,sm	0x0, %r3, %b[0] ? ~%pred0
	}
.LCS.1:
	{
	  call	%ctpr2, wbs = 0xf ? ~%pred0
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0] ? ~%pred0
	  std,2	%r7, 0x0, %r9 ? ~%pred0
	  qppackdl,3,sm	%b[1], %b[0], %r2
	  idtofd,4,sm	%r1, %r1
	}
	{
	  qpswitchd,3,sm	%r2, %r3
	  idtofd,4,sm	%r2, %r2
	}
	{
	  nop 1
	  idtofd,3,sm	%r3, %r3
	}
	{
	  nop 1
	  fmuld,3,sm	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r3, _f64,_lts0 0x3e112e0be826d695, %r3
	}
	{
	  nop 3
	  faddd,3,sm	%r2, %r3, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r7, 0x8, %r1 ? ~%pred0
	}
	{
	  addd,0,sm	0x0, %r1, %b[1] ? ~%pred0
	}
	{
	  call	%ctpr1, wbs = 0xf ? ~%pred0
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0 ? ~%pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
.L18009:
	{
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	  addd,0,sm	%r24, %r18, %r15
	  cmpldb,1	0x8, %r5, %pred1
	  addd,2,sm	%r19, 0x6, %r0
	  addd,3,sm	0x0, %r1, %b[1]
	  addd,4,sm	0x0, %r12, %b[4]
	  addd,5	%r2, %r17, %r14
	}
	{
	  cmpldb,0,sm	%r0, %r3, %pred2
	  addd,1,sm	0x0, %r15, %b[0]
	  addd,2,sm	0x0, %r13, %b[3]
	  cmpldb,3,sm	0x10, %r5, %pred0
	  addd,4,sm	%r23, %r17, %r9
	  addd,5,sm	0x0, %r14, %b[2]
	}
	{
	  nop 2
	  addd,0,sm	0x0, %r22, %r10
	  addd,1,sm	0x10, 0x0, %r11
	  addd,2,sm	%r21, %r18, %r18 ? ~%pred1
	  addd,3	0x0, %r0, %r19 ? ~%pred1
	  addd,4,sm	%r20, %r17, %r17 ? ~%pred1
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  call	%ctpr2, wbs = 0xf
	}
	{
	  disp	%ctpr2, .L18009
	}
	{
	  disp	%ctpr1, .L18195
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  ct	%ctpr1 ? %pred2
	}
	{
	  nop 2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	}
	{
	  scld,0,sm	0x1, 0x6, %r0
	  addd,1,sm	0x0, %r25, %r4
	}
.L18140:
	{
	  addd,0,sm	0x0, %r12, %b[4]
	  addd,1,sm	0x0, %r13, %b[3]
	  addd,2,sm	0x0, %r9, %b[2]
	  addd,3,sm	0x0, %r10, %b[1]
	  addd,4,sm	0x0, %r15, %b[0]
	  addd,5,sm	%r11, 0x8, %r11
	}
	{
	  addd,0,sm	%r14, %r0, %r9
	  addd,1,sm	%r1, %r4, %r10
	  cmpldb,3,sm	%r11, %r5, %pred1
	}
	{
	  call	%ctpr2, wbs = 0xf
	}
	{
	  disp	%ctpr1, .L18189
	}
	{
	  disp	%ctpr3, .L18140
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	  addd,0,sm	%r0, _f16s,_lts0lo 0x20, %r0
	  addd,1,sm	%r16, %r4, %r4
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L18189:
	{
	  disp	%ctpr1, .L18009
	  addd,0	%r19, 0x6, %r19
	  addd,1,sm	%r20, %r17, %r17
	  addd,2,sm	%r21, %r18, %r18
	}
	{
	  nop 3
	  cmpldb,0	%r19, %r3, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  disp	%ctpr1, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r6, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r3, %r26, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r5, %r1
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r6, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r6, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r7, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r7, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L18195:
	{
	  nop 3
	  disp	%ctpr1, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r6, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r3, %r26, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r5, %r1
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r6, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r6, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r7, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r7, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.LCS.2:
	.cfi_endproc
	.size	_Z15ElbrusMatrixMulPfS_S_lll, .- _Z15ElbrusMatrixMulPfS_S_lll
	.global	_Z23ElbrusMatrixMulParallelPfS_S_lll
	.type	_Z23ElbrusMatrixMulParallelPfS_S_lll, #function
	.align	8
_Z23ElbrusMatrixMulParallelPfS_S_lll:
	.cfi_startproc
	{
	  setwd	wsz = 0x13, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0xf, rcur = 0x0
	  disp	%ctpr2, omp_set_num_threads
	  getsp,0	_f32s,_lts1 0xffffffb0, %r7
	}
	{
	  addd,2	0x10, 0x0, %b[0]
	}
	{
	  nop 2
	  addd,2	%r7, _f64,_lts0 0x50, %r6
	}
.LCS.3:
	{
	  call	%ctpr2, wbs = 0xf
	  cmpldb,0	%r3, %r5, %pred0
	  addd,1,sm	0x0, %r2, %r21
	  addd,4,sm	0x0, %r5, %r9
	  addd,5,sm	0x0, %r4, %r27
	}
	{
	  disp	%ctpr1, .L18301
	  cmpldb,0,sm	0x0, %r5, %pred1
	  cmpldb,1,sm	0x0, %r3, %pred2
	  addd,2,sm	0x0, %r4, %r10
	  addd,3,sm	%r6, _f16s,_lts0hi 0xffe0, %r14
	  shld,4,sm	%r4, 0x3, %r15
	  subd,5,sm	%r6, _f16s,_lts0lo 0x10, %r11
	}
	{
	  disp	%ctpr2, clock_gettime
	  addd,0,sm	0x3, 0x0, %b[0] ? ~%pred0
	  shld,1,sm	%r4, 0x4, %r11
	  shld,2,sm	%r4, 0x5, %r16
	  addd,3,sm	0x0, %r11, %b[1] ? ~%pred0
	  shld,4,sm	%r5, 0x3, %r26
	  shld,5,sm	%r5, 0x4, %r28
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	  pass	%pred0, @p2
	  landp	~@p2, ~@p4, @p5
	  pass	@p5, %pred4
	  landp	~@p2, @p0, @p6
	  pass	@p6, %pred2
	}
	{
	  disp	%ctpr3, clock_gettime
	  shld,0,sm	%r4, 0x6, %r25
	  addd,1,sm	%r2, _f16s,_lts0lo 0x20, %r24
	  sxt,2,sm	0x2, %r9, %r12
	  sxt,3,sm	0x2, %r10, %r13
	  addd,4,sm	%r28, %r26, %r22
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	}
	{
	  addd,0,sm	%r11, %r15, %r20
	  addd,1,sm	%r1, %r16, %r23
	}
	{
	  addd,0,sm	0x0, 0x0, %r18 ? %pred1
	  addd,1,sm	0x0, 0x0, %r19 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  call	%ctpr2, wbs = 0xf ? ~%pred0
	}
	{
	  nop 1
	  disp	%ctpr1, clock_gettime
	  addd,0,sm	0x0, %r14, %b[1] ? %pred4
	  addd,1,sm	0x3, 0x0, %b[0] ? %pred4
	  addd,2	0x0, 0x0, %r17 ? ~%pred0
	}
	{
	  call	%ctpr1, wbs = 0xf ? %pred4
	}
	{
	  nop 1
	  disp	%ctpr1, .L18390
	}
	{
	  ct	%ctpr1 ? %pred4
	}
	{
	  nop 2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	}
.L18541:
	{
	  addd,0,sm	%r0, %r19, %r15
	  cmpldb,1	0x8, %r5, %pred1
	  addd,2,sm	%r17, 0x6, %r2
	  addd,3,sm	0x0, %r12, %b[4]
	  addd,4,sm	0x0, %r13, %b[3]
	  addd,5	%r21, %r18, %r14
	}
	{
	  cmpldb,0,sm	%r2, %r3, %pred2
	  addd,1,sm	0x0, %r15, %b[0]
	  addd,2,sm	0x0, %r1, %b[1]
	  cmpldb,3,sm	0x10, %r5, %pred0
	  addd,4,sm	0x0, %r23, %r10
	  addd,5,sm	0x0, %r14, %b[2]
	}
	{
	  call	%ctpr2, wbs = 0xf
	  addd,0,sm	0x10, 0x0, %r11
	  addd,1,sm	%r24, %r18, %r9
	  addd,2,sm	%r20, %r19, %r19 ? ~%pred1
	  addd,3	0x0, %r2, %r17 ? ~%pred1
	  addd,4,sm	%r22, %r18, %r18 ? ~%pred1
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  disp	%ctpr3, .L18929
	}
	{
	  disp	%ctpr1, .L18541
	}
	{
	  ct	%ctpr3 ? %pred2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	}
	nop
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  nop 2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	}
	{
	  scld,0,sm	0x1, 0x6, %r2
	  addd,1,sm	0x0, %r25, %r4
	}
.L18848:
	{
	  addd,0,sm	0x0, %r12, %b[4]
	  addd,1,sm	0x0, %r13, %b[3]
	  addd,2,sm	0x0, %r9, %b[2]
	  addd,3,sm	0x0, %r10, %b[1]
	  addd,4,sm	0x0, %r15, %b[0]
	  addd,5,sm	%r11, 0x8, %r11
	}
	{
	  addd,0,sm	%r14, %r2, %r9
	  addd,1,sm	%r1, %r4, %r10
	  cmpldb,3,sm	%r11, %r5, %pred1
	}
	{
	  call	%ctpr2, wbs = 0xf
	}
	{
	  disp	%ctpr1, .L18918
	}
	{
	  disp	%ctpr3, .L18848
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	  addd,0,sm	%r2, _f16s,_lts0lo 0x20, %r2
	  addd,1,sm	%r16, %r4, %r4
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L18918:
	{
	  disp	%ctpr1, .L18541
	  addd,0	%r17, 0x6, %r17
	  addd,1,sm	%r22, %r18, %r18
	  addd,2,sm	%r20, %r19, %r19
	}
	{
	  nop 3
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	  cmpldb,0	%r17, %r3, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L18929:
	{
	  nop 3
	  disp	%ctpr2, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r6, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r3, %r27, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r5, %r1
	}
	{
	  call	%ctpr2, wbs = 0xf
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r6, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r6, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r7, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r7, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L18301:
	{
	  cmpldb,0,sm	0x0, %r3, %pred0
	  cmpldb,1	0x0, %r5, %pred1
	  addd,2,sm	0x3, 0x0, %b[0]
	  subd,3	%r6, _f16s,_lts0lo 0x10, %b[1]
	  shld,4,sm	%r5, 0x4, %r2
	  shld,5,sm	%r5, 0x3, %r4
	}
	{
	  call	%ctpr3, wbs = 0xf
	  shld,0,sm	%r27, 0x3, %r11
	  shld,1,sm	%r27, 0x4, %r14
	  shld,2,sm	%r5, 0x5, %r15
	  shld,3,sm	%r27, 0x5, %r22
	  addd,4,sm	%r2, %r4, %r17
	  addd,5	0x0, 0x0, %r20
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred0
	}
	{
	  disp	%ctpr1, .L18598
	  addd,0,sm	%r14, %r11, %r16
	  sxt,1,sm	0x2, %r10, %r13
	  sxt,2,sm	0x2, %r9, %r12
	  addd,3,sm	%r17, %r21, %r23
	  addd,4,sm	%r6, _f16s,_lts0lo 0xffe0, %r4
	}
	{
	  disp	%ctpr2, clock_gettime
	  addd,0,sm	%r15, %r2, %r25
	  addd,1,sm	0x0, 0x0, %r18 ? %pred0
	  addd,2,sm	0x0, 0x0, %r19 ? %pred0
	  addd,3,sm	%r22, %r14, %r26
	  addd,4,sm	0x3, 0x0, %b[0] ? ~%pred0
	  addd,5,sm	0x0, %r4, %b[1] ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	  addd,0,sm	%r0, %r16, %r24
	}
	{
	  nop 2
	}
	{
	  call	%ctpr2, wbs = 0xf ? ~%pred0
	}
.L18390:
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r4
	  ldqp,2	%r6, _f16s,_lts0lo 0xffe0, %r1
	  muld,3	%r3, %r27, %r3
	  ldqp,5	%r6, _f16s,_lts0hi 0xfff0, %r2
	}
	{
	  qpswitchd,0	%r1, %b[3]
	  addd,1,sm	0x0, %r1, %b[2]
	  qpswitchd,3	%r2, %b[1]
	  addd,4,sm	0x0, %r2, %b[0]
	}
	{
	  muld,3	%r3, %r5, %r1
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r7, 0x0, %r4
	  qppackdl,4	%b[1], %b[0], %r2
	}
	{
	  qpswitchd,3	%r2, %r3
	  idtofd,4	%r2, %r2
	}
	{
	  nop 3
	  idtofd,3,sm	%r3, %r3
	  idtofd,4	%r1, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r3, _f64,_lts0 0x3e112e0be826d695, %r3
	  fmuld,4	%r1, _f64,_lts2 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  faddd,3,sm	%r2, %r3, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r7, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L18598:
	{
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	  addd,0,sm	%r21, %r18, %r15
	  cmpldb,1	0x6, %r3, %pred1
	  addd,2,sm	%r20, 0x8, %r2
	  addd,3,sm	0x0, %r12, %b[4]
	  addd,4,sm	0x0, %r13, %b[3]
	  addd,5,sm	%r1, %r19, %r14
	}
	{
	  cmpldb,0,sm	%r2, %r5, %pred2
	  addd,1,sm	0x0, %r15, %b[2]
	  addd,2,sm	0x0, %r0, %b[0]
	  cmpldb,3,sm	0xc, %r3, %pred0
	  addd,4,sm	0x0, %r24, %r10
	  addd,5,sm	0x0, %r14, %b[1]
	}
	{
	  nop 2
	  addd,0,sm	0xc, 0x0, %r11
	  addd,1,sm	%r23, %r18, %r9
	  addd,2	0x0, %r2, %r20 ? ~%pred1
	  addd,3,sm	%r22, %r19, %r19 ? ~%pred1
	  addd,4,sm	%r18, _f16s,_lts0lo 0x20, %r18 ? ~%pred1
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  call	%ctpr2, wbs = 0xf
	}
	{
	  disp	%ctpr3, .L18924
	}
	{
	  disp	%ctpr1, .L18598
	}
	{
	  ct	%ctpr3 ? %pred2
	}
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  nop 2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	}
	{
	  addd,0,sm	0x0, %r26, %r2
	  addd,1,sm	0x0, %r25, %r4
	}
.L18748:
	{
	  addd,0,sm	0x0, %r12, %b[4]
	  addd,1,sm	0x0, %r13, %b[3]
	  addd,2,sm	0x0, %r9, %b[2]
	  addd,3,sm	0x0, %r14, %b[1]
	  addd,4,sm	0x0, %r10, %b[0]
	  addd,5,sm	%r11, 0x6, %r11
	}
	{
	  addd,0,sm	%r15, %r4, %r9
	  addd,1,sm	%r0, %r2, %r10
	  cmpldb,3,sm	%r11, %r3, %pred1
	}
	{
	  call	%ctpr2, wbs = 0xf
	}
	{
	  disp	%ctpr1, .L18912
	}
	{
	  disp	%ctpr3, .L18748
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z11MulKernel48PfS_S_ii
	  addd,0,sm	%r16, %r2, %r2
	  addd,1,sm	%r17, %r4, %r4
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L18912:
	{
	  disp	%ctpr1, .L18598
	  addd,0	%r20, 0x8, %r20
	  addd,1,sm	%r18, _f16s,_lts0lo 0x20, %r18
	  addd,2,sm	%r22, %r19, %r19
	}
	{
	  nop 3
	  cmpldb,0	%r20, %r5, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L18924:
	{
	  nop 3
	  disp	%ctpr2, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r6, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r3, %r27, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r5, %r1
	}
	{
	  call	%ctpr2, wbs = 0xf
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r6, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r6, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r7, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r7, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0xf
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.LCS.4:
	.cfi_endproc
	.size	_Z23ElbrusMatrixMulParallelPfS_S_lll, .- _Z23ElbrusMatrixMulParallelPfS_S_lll
	.global	_Z19ElbrusMatrixMulBiasPfS_S_S_lll
	.type	_Z19ElbrusMatrixMulBiasPfS_S_S_lll, #function
	.align	8
_Z19ElbrusMatrixMulBiasPfS_S_S_lll:
	.cfi_startproc
	{
	  setwd	wsz = 0x14, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x10, rcur = 0x0
	  disp	%ctpr2, omp_set_num_threads
	  getsp,0	_f32s,_lts1 0xffffffb0, %r8
	}
	{
	  addd,2	0x10, 0x0, %b[0]
	}
	{
	  nop 2
	  addd,2	%r8, _f64,_lts0 0x50, %r7
	}
.LCS.5:
	{
	  call	%ctpr2, wbs = 0x10
	  cmpldb,0	%r4, %r6, %pred0
	  addd,1,sm	0x0, %r3, %r23
	  addd,3,sm	0x0, %r6, %r10
	  addd,4,sm	0x0, %r5, %r11
	  addd,5,sm	0x0, %r5, %r29
	}
	{
	  disp	%ctpr1, .L19040
	  cmpldb,0,sm	0x0, %r6, %pred1
	  cmpldb,1,sm	0x0, %r4, %pred2
	  subd,2,sm	%r7, _f16s,_lts0lo 0x10, %r12
	  addd,3,sm	%r7, _f16s,_lts0hi 0xffe0, %r13
	  shld,4,sm	%r5, 0x5, %r18
	  shld,5,sm	%r6, 0x3, %r16
	}
	{
	  disp	%ctpr2, clock_gettime
	  addd,0,sm	0x3, 0x0, %b[0] ? ~%pred0
	  addd,1,sm	0x0, %r12, %b[1] ? ~%pred0
	  shld,2,sm	%r6, 0x4, %r12
	  shld,3,sm	%r5, 0x3, %r17
	  shld,4,sm	%r5, 0x4, %r30
	  shld,5,sm	%r5, 0x6, %r28
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	  pass	%pred0, @p2
	  landp	~@p2, ~@p4, @p5
	  pass	@p5, %pred4
	  landp	~@p2, @p0, @p6
	  pass	@p6, %pred2
	}
	{
	  disp	%ctpr3, clock_gettime
	  addd,0,sm	%r2, _f16s,_lts0lo 0x20, %r26
	  addd,1,sm	%r3, _f16s,_lts0lo 0x20, %r27
	  sxt,2,sm	0x2, %r10, %r15
	  sxt,3,sm	0x2, %r11, %r14
	  addd,4,sm	%r1, %r18, %r25
	  addd,5,sm	%r30, %r17, %r24
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	}
	{
	  addd,0,sm	%r12, %r16, %r22
	}
	{
	  addd,0,sm	0x0, 0x0, %r20 ? %pred1
	  addd,1,sm	0x0, 0x0, %r21 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  call	%ctpr2, wbs = 0x10 ? ~%pred0
	}
	{
	  nop 1
	  disp	%ctpr1, clock_gettime
	  addd,0,sm	0x0, %r13, %b[1] ? %pred4
	  addd,1,sm	0x3, 0x0, %b[0] ? %pred4
	  addd,2	0x0, 0x0, %r19 ? ~%pred0
	}
	{
	  call	%ctpr1, wbs = 0x10 ? %pred4
	}
	{
	  nop 1
	  disp	%ctpr1, .L19134
	}
	{
	  ct	%ctpr1 ? %pred4
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
.L19287:
	{
	  addd,0,sm	%r0, %r21, %r17
	  cmpldb,1	0x8, %r6, %pred1
	  addd,2,sm	%r19, 0x6, %r3
	  addd,3,sm	0x0, %r15, %b[5]
	  addd,4,sm	0x0, %r14, %b[4]
	  addd,5	%r23, %r20, %r16
	}
	{
	  cmpldb,0,sm	%r3, %r4, %pred2
	  addd,1,sm	0x0, %r17, %b[0]
	  addd,2,sm	0x0, %r2, %b[2]
	  addd,3,sm	0x0, %r16, %b[3]
	  cmpldb,4,sm	0x10, %r6, %pred0
	  addd,5,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x10
	  addd,0,sm	0x10, 0x0, %r12
	  addd,1,sm	%r27, %r20, %r13
	  addd,2,sm	0x0, %r25, %r10
	  addd,3,sm	0x0, %r26, %r11
	  addd,4,sm	%r24, %r21, %r21 ? ~%pred1
	  addd,5	0x0, %r3, %r19 ? ~%pred1
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  disp	%ctpr1, .L19287
	  addd,3,sm	%r22, %r20, %r20 ? ~%pred1
	}
	{
	  disp	%ctpr3, .L19685
	}
	{
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
	{
	  ct	%ctpr3 ? %pred2
	}
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
	{
	  scld,0,sm	0x1, 0x6, %r3
	  addd,1,sm	0x0, %r28, %r5
	}
.L19599:
	{
	  addd,0,sm	0x0, %r15, %b[5]
	  addd,1,sm	0x0, %r14, %b[4]
	  addd,2,sm	0x0, %r13, %b[3]
	  addd,3,sm	0x0, %r11, %b[2]
	  addd,4,sm	0x0, %r10, %b[1]
	  addd,5,sm	0x0, %r17, %b[0]
	}
	{
	  addd,0,sm	%r12, 0x8, %r12
	  addd,1,sm	%r16, %r3, %r13
	  addd,2,sm	%r2, %r3, %r11
	  addd,3,sm	%r1, %r5, %r10
	}
	{
	  call	%ctpr2, wbs = 0x10
	  cmpldb,0,sm	%r12, %r6, %pred1
	}
	{
	  disp	%ctpr1, .L19674
	}
	{
	  disp	%ctpr3, .L19599
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  addd,0,sm	%r3, _f16s,_lts0lo 0x20, %r3
	  addd,1,sm	%r18, %r5, %r5
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L19674:
	{
	  disp	%ctpr1, .L19287
	  addd,0	%r19, 0x6, %r19
	  addd,1,sm	%r22, %r20, %r20
	  addd,2,sm	%r24, %r21, %r21
	}
	{
	  nop 3
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  cmpldb,0	%r19, %r4, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L19685:
	{
	  nop 3
	  disp	%ctpr2, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r7, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r4, %r29, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r6, %r1
	}
	{
	  call	%ctpr2, wbs = 0x10
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r7, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r7, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r8, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r8, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L19040:
	{
	  cmpldb,0,sm	0x0, %r4, %pred0
	  cmpldb,1	0x0, %r6, %pred1
	  addd,2,sm	0x3, 0x0, %b[0]
	  subd,3	%r7, _f16s,_lts0lo 0x10, %b[1]
	  shld,4,sm	%r6, 0x4, %r3
	  shld,5,sm	%r6, 0x3, %r5
	}
	{
	  call	%ctpr3, wbs = 0x10
	  shld,0,sm	%r29, 0x3, %r12
	  shld,1,sm	%r29, 0x4, %r15
	  shld,2,sm	%r6, 0x5, %r16
	  shld,3,sm	%r29, 0x5, %r24
	  addd,4,sm	%r3, %r5, %r19
	  addd,5	0x0, 0x0, %r22
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred0
	}
	{
	  disp	%ctpr1, .L19345
	  addd,0,sm	%r15, %r12, %r18
	  sxt,1,sm	0x2, %r11, %r14
	  sxt,2,sm	0x2, %r10, %r13
	  addd,3,sm	%r19, %r23, %r25
	  addd,4,sm	%r7, _f16s,_lts0lo 0xffe0, %r5
	}
	{
	  disp	%ctpr2, clock_gettime
	  addd,0,sm	%r16, %r3, %r27
	  addd,1,sm	0x0, 0x0, %r20 ? %pred0
	  addd,2,sm	0x0, 0x0, %r21 ? %pred0
	  addd,3,sm	%r24, %r15, %r28
	  addd,4,sm	0x3, 0x0, %b[0] ? ~%pred0
	  addd,5,sm	0x0, %r5, %b[1] ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	  addd,0,sm	%r0, %r18, %r26
	}
	{
	  nop 2
	}
	{
	  call	%ctpr2, wbs = 0x10 ? ~%pred0
	}
.L19134:
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r4
	  ldqp,2	%r7, _f16s,_lts0lo 0xffe0, %r1
	  muld,3	%r4, %r29, %r3
	  ldqp,5	%r7, _f16s,_lts0hi 0xfff0, %r2
	}
	{
	  qpswitchd,0	%r1, %b[3]
	  addd,1,sm	0x0, %r1, %b[2]
	  qpswitchd,3	%r2, %b[1]
	  addd,4,sm	0x0, %r2, %b[0]
	}
	{
	  muld,3	%r3, %r6, %r1
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r8, 0x0, %r4
	  qppackdl,4	%b[1], %b[0], %r2
	}
	{
	  qpswitchd,3	%r2, %r3
	  idtofd,4	%r2, %r2
	}
	{
	  nop 3
	  idtofd,3,sm	%r3, %r3
	  idtofd,4	%r1, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r3, _f64,_lts0 0x3e112e0be826d695, %r3
	  fmuld,4	%r1, _f64,_lts2 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  faddd,3,sm	%r2, %r3, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r8, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L19345:
	{
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  addd,0,sm	%r2, %r20, %r16
	  addd,1,sm	%r23, %r20, %r17
	  addd,2,sm	%r22, 0x8, %r3
	  cmpldb,3	0x6, %r4, %pred1
	  addd,4,sm	0x0, %r13, %b[5]
	  addd,5,sm	%r1, %r21, %r15
	}
	{
	  cmpldb,0,sm	%r3, %r6, %pred2
	  addd,1,sm	0x0, %r16, %b[2]
	  addd,2,sm	0x0, %r14, %b[4]
	  addd,3,sm	0x0, %r15, %b[1]
	  cmpldb,4,sm	0xc, %r4, %pred0
	  addd,5,sm	0x0, %r0, %b[0]
	}
	{
	  addd,0,sm	0x0, %r17, %b[3]
	  addd,1,sm	%r25, %r20, %r12
	  addd,2,sm	0x0, %r26, %r10
	  addd,3,sm	0xc, 0x0, %r11
	  addd,4,sm	%r24, %r21, %r21 ? ~%pred1
	  addd,5	0x0, %r3, %r22 ? ~%pred1
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  nop 1
	  addd,0,sm	%r20, _f16s,_lts0lo 0x20, %r20 ? ~%pred1
	}
	{
	  call	%ctpr2, wbs = 0x10
	}
	{
	  disp	%ctpr3, .L19680
	}
	{
	  disp	%ctpr1, .L19345
	}
	{
	  ct	%ctpr3 ? %pred2
	}
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
	{
	  addd,0,sm	0x0, %r28, %r3
	  addd,1,sm	0x0, %r27, %r5
	}
.L19496:
	{
	  addd,0,sm	0x0, %r13, %b[5]
	  addd,1,sm	0x0, %r14, %b[4]
	  addd,2,sm	0x0, %r12, %b[3]
	  addd,3,sm	0x0, %r16, %b[2]
	  addd,4,sm	0x0, %r15, %b[1]
	  addd,5,sm	0x0, %r10, %b[0]
	}
	{
	  addd,0,sm	%r11, 0x6, %r11
	  addd,1,sm	%r17, %r5, %r12
	  addd,2,sm	%r0, %r3, %r10
	}
	{
	  call	%ctpr2, wbs = 0x10
	  cmpldb,0,sm	%r11, %r4, %pred1
	}
	{
	  disp	%ctpr1, .L19668
	}
	{
	  disp	%ctpr3, .L19496
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  addd,0,sm	%r18, %r3, %r3
	  addd,1,sm	%r19, %r5, %r5
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L19668:
	{
	  disp	%ctpr1, .L19345
	  addd,0	%r22, 0x8, %r22
	  addd,1,sm	%r20, _f16s,_lts0lo 0x20, %r20
	  addd,2,sm	%r24, %r21, %r21
	}
	{
	  nop 3
	  cmpldb,0	%r22, %r6, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L19680:
	{
	  nop 3
	  disp	%ctpr2, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r7, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r4, %r29, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r6, %r1
	}
	{
	  call	%ctpr2, wbs = 0x10
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r7, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r7, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r8, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r8, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.LCS.6:
	.cfi_endproc
	.size	_Z19ElbrusMatrixMulBiasPfS_S_S_lll, .- _Z19ElbrusMatrixMulBiasPfS_S_S_lll
	.global	_Z19ElbrusMatrixMulReluPfS_S_S_lll
	.type	_Z19ElbrusMatrixMulReluPfS_S_S_lll, #function
	.align	8
_Z19ElbrusMatrixMulReluPfS_S_S_lll:
	.cfi_startproc
	{
	  setwd	wsz = 0x14, nfx = 0x0, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x10, rcur = 0x0
	  disp	%ctpr2, omp_set_num_threads
	  getsp,0	_f32s,_lts1 0xffffffb0, %r8
	}
	{
	  addd,2	0x10, 0x0, %b[0]
	}
	{
	  nop 2
	  addd,2	%r8, _f64,_lts0 0x50, %r7
	}
.LCS.7:
	{
	  call	%ctpr2, wbs = 0x10
	  cmpldb,0	%r4, %r6, %pred0
	  addd,1,sm	0x0, %r3, %r23
	  addd,3,sm	0x0, %r6, %r10
	  addd,4,sm	0x0, %r5, %r11
	  addd,5,sm	0x0, %r5, %r29
	}
	{
	  disp	%ctpr1, .L19796
	  cmpldb,0,sm	0x0, %r6, %pred1
	  cmpldb,1,sm	0x0, %r4, %pred2
	  subd,2,sm	%r7, _f16s,_lts0lo 0x10, %r12
	  addd,3,sm	%r7, _f16s,_lts0hi 0xffe0, %r13
	  shld,4,sm	%r5, 0x5, %r18
	  shld,5,sm	%r6, 0x3, %r16
	}
	{
	  disp	%ctpr2, clock_gettime
	  addd,0,sm	0x3, 0x0, %b[0] ? ~%pred0
	  addd,1,sm	0x0, %r12, %b[1] ? ~%pred0
	  shld,2,sm	%r6, 0x4, %r12
	  shld,3,sm	%r5, 0x3, %r17
	  shld,4,sm	%r5, 0x4, %r30
	  shld,5,sm	%r5, 0x6, %r28
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	  pass	%pred0, @p2
	  landp	~@p2, ~@p4, @p5
	  pass	@p5, %pred4
	  landp	~@p2, @p0, @p6
	  pass	@p6, %pred2
	}
	{
	  disp	%ctpr3, clock_gettime
	  addd,0,sm	%r2, _f16s,_lts0lo 0x20, %r26
	  addd,1,sm	%r3, _f16s,_lts0lo 0x20, %r27
	  sxt,2,sm	0x2, %r10, %r15
	  sxt,3,sm	0x2, %r11, %r14
	  addd,4,sm	%r1, %r18, %r25
	  addd,5,sm	%r30, %r17, %r24
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	}
	{
	  addd,0,sm	%r12, %r16, %r22
	}
	{
	  addd,0,sm	0x0, 0x0, %r20 ? %pred1
	  addd,1,sm	0x0, 0x0, %r21 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  call	%ctpr2, wbs = 0x10 ? ~%pred0
	}
	{
	  nop 1
	  disp	%ctpr1, clock_gettime
	  addd,0,sm	0x0, %r13, %b[1] ? %pred4
	  addd,1,sm	0x3, 0x0, %b[0] ? %pred4
	  addd,2	0x0, 0x0, %r19 ? ~%pred0
	}
	{
	  call	%ctpr1, wbs = 0x10 ? %pred4
	}
	{
	  nop 1
	  disp	%ctpr1, .L19890
	}
	{
	  ct	%ctpr1 ? %pred4
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
.L20043:
	{
	  addd,0,sm	%r0, %r21, %r17
	  cmpldb,1	0x8, %r6, %pred1
	  addd,2,sm	%r19, 0x6, %r3
	  addd,3,sm	0x0, %r15, %b[5]
	  addd,4,sm	0x0, %r14, %b[4]
	  addd,5	%r23, %r20, %r16
	}
	{
	  cmpldb,0,sm	%r3, %r4, %pred2
	  addd,1,sm	0x0, %r17, %b[0]
	  addd,2,sm	0x0, %r2, %b[2]
	  addd,3,sm	0x0, %r16, %b[3]
	  cmpldb,4,sm	0x10, %r6, %pred0
	  addd,5,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr2, wbs = 0x10
	  addd,0,sm	0x10, 0x0, %r12
	  addd,1,sm	%r27, %r20, %r13
	  addd,2,sm	0x0, %r25, %r10
	  addd,3,sm	0x0, %r26, %r11
	  addd,4,sm	%r24, %r21, %r21 ? ~%pred1
	  addd,5	0x0, %r3, %r19 ? ~%pred1
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  disp	%ctpr1, .L20043
	  addd,3,sm	%r22, %r20, %r20 ? ~%pred1
	}
	{
	  disp	%ctpr3, .L20441
	}
	{
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
	{
	  ct	%ctpr3 ? %pred2
	}
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
	{
	  scld,0,sm	0x1, 0x6, %r3
	  addd,1,sm	0x0, %r28, %r5
	}
.L20355:
	{
	  addd,0,sm	0x0, %r15, %b[5]
	  addd,1,sm	0x0, %r14, %b[4]
	  addd,2,sm	0x0, %r13, %b[3]
	  addd,3,sm	0x0, %r11, %b[2]
	  addd,4,sm	0x0, %r10, %b[1]
	  addd,5,sm	0x0, %r17, %b[0]
	}
	{
	  addd,0,sm	%r12, 0x8, %r12
	  addd,1,sm	%r16, %r3, %r13
	  addd,2,sm	%r2, %r3, %r11
	  addd,3,sm	%r1, %r5, %r10
	}
	{
	  call	%ctpr2, wbs = 0x10
	  cmpldb,0,sm	%r12, %r6, %pred1
	}
	{
	  disp	%ctpr1, .L20430
	}
	{
	  disp	%ctpr3, .L20355
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  addd,0,sm	%r3, _f16s,_lts0lo 0x20, %r3
	  addd,1,sm	%r18, %r5, %r5
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L20430:
	{
	  disp	%ctpr1, .L20043
	  addd,0	%r19, 0x6, %r19
	  addd,1,sm	%r22, %r20, %r20
	  addd,2,sm	%r24, %r21, %r21
	}
	{
	  nop 3
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  cmpldb,0	%r19, %r4, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L20441:
	{
	  nop 3
	  disp	%ctpr2, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r7, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r4, %r29, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r6, %r1
	}
	{
	  call	%ctpr2, wbs = 0x10
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r7, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r7, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r8, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r8, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L19796:
	{
	  cmpldb,0,sm	0x0, %r4, %pred0
	  cmpldb,1	0x0, %r6, %pred1
	  addd,2,sm	0x3, 0x0, %b[0]
	  subd,3	%r7, _f16s,_lts0lo 0x10, %b[1]
	  shld,4,sm	%r6, 0x4, %r3
	  shld,5,sm	%r6, 0x3, %r5
	}
	{
	  call	%ctpr3, wbs = 0x10
	  shld,0,sm	%r29, 0x3, %r12
	  shld,1,sm	%r29, 0x4, %r15
	  shld,2,sm	%r6, 0x5, %r16
	  shld,3,sm	%r29, 0x5, %r24
	  addd,4,sm	%r3, %r5, %r19
	  addd,5	0x0, 0x0, %r22
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred0
	}
	{
	  disp	%ctpr1, .L20101
	  addd,0,sm	%r15, %r12, %r18
	  sxt,1,sm	0x2, %r11, %r14
	  sxt,2,sm	0x2, %r10, %r13
	  addd,3,sm	%r19, %r23, %r25
	  addd,4,sm	%r7, _f16s,_lts0lo 0xffe0, %r5
	}
	{
	  disp	%ctpr2, clock_gettime
	  addd,0,sm	%r16, %r3, %r27
	  addd,1,sm	0x0, 0x0, %r20 ? %pred0
	  addd,2,sm	0x0, 0x0, %r21 ? %pred0
	  addd,3,sm	%r24, %r15, %r28
	  addd,4,sm	0x3, 0x0, %b[0] ? ~%pred0
	  addd,5,sm	0x0, %r5, %b[1] ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	  addd,0,sm	%r0, %r18, %r26
	}
	{
	  nop 2
	}
	{
	  call	%ctpr2, wbs = 0x10 ? ~%pred0
	}
.L19890:
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r4
	  ldqp,2	%r7, _f16s,_lts0lo 0xffe0, %r1
	  muld,3	%r4, %r29, %r3
	  ldqp,5	%r7, _f16s,_lts0hi 0xfff0, %r2
	}
	{
	  qpswitchd,0	%r1, %b[3]
	  addd,1,sm	0x0, %r1, %b[2]
	  qpswitchd,3	%r2, %b[1]
	  addd,4,sm	0x0, %r2, %b[0]
	}
	{
	  muld,3	%r3, %r6, %r1
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r8, 0x0, %r4
	  qppackdl,4	%b[1], %b[0], %r2
	}
	{
	  qpswitchd,3	%r2, %r3
	  idtofd,4	%r2, %r2
	}
	{
	  nop 3
	  idtofd,3,sm	%r3, %r3
	  idtofd,4	%r1, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r3, _f64,_lts0 0x3e112e0be826d695, %r3
	  fmuld,4	%r1, _f64,_lts2 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  faddd,3,sm	%r2, %r3, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r8, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L20101:
	{
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  addd,0,sm	%r2, %r20, %r16
	  addd,1,sm	%r23, %r20, %r17
	  addd,2,sm	%r22, 0x8, %r3
	  cmpldb,3	0x6, %r4, %pred1
	  addd,4,sm	0x0, %r13, %b[5]
	  addd,5,sm	%r1, %r21, %r15
	}
	{
	  cmpldb,0,sm	%r3, %r6, %pred2
	  addd,1,sm	0x0, %r16, %b[2]
	  addd,2,sm	0x0, %r14, %b[4]
	  addd,3,sm	0x0, %r15, %b[1]
	  cmpldb,4,sm	0xc, %r4, %pred0
	  addd,5,sm	0x0, %r0, %b[0]
	}
	{
	  addd,0,sm	0x0, %r17, %b[3]
	  addd,1,sm	%r25, %r20, %r12
	  addd,2,sm	0x0, %r26, %r10
	  addd,3,sm	0xc, 0x0, %r11
	  addd,4,sm	%r24, %r21, %r21 ? ~%pred1
	  addd,5	0x0, %r3, %r22 ? ~%pred1
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  nop 1
	  addd,0,sm	%r20, _f16s,_lts0lo 0x20, %r20 ? ~%pred1
	}
	{
	  call	%ctpr2, wbs = 0x10
	}
	{
	  disp	%ctpr3, .L20436
	}
	{
	  disp	%ctpr1, .L20101
	}
	{
	  ct	%ctpr3 ? %pred2
	}
	{
	  ct	%ctpr1 ? %pred3
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	}
	{
	  addd,0,sm	0x0, %r28, %r3
	  addd,1,sm	0x0, %r27, %r5
	}
.L20252:
	{
	  addd,0,sm	0x0, %r13, %b[5]
	  addd,1,sm	0x0, %r14, %b[4]
	  addd,2,sm	0x0, %r12, %b[3]
	  addd,3,sm	0x0, %r16, %b[2]
	  addd,4,sm	0x0, %r15, %b[1]
	  addd,5,sm	0x0, %r10, %b[0]
	}
	{
	  addd,0,sm	%r11, 0x6, %r11
	  addd,1,sm	%r17, %r5, %r12
	  addd,2,sm	%r0, %r3, %r10
	}
	{
	  call	%ctpr2, wbs = 0x10
	  cmpldb,0,sm	%r11, %r4, %pred1
	}
	{
	  disp	%ctpr1, .L20424
	}
	{
	  disp	%ctpr3, .L20252
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr2, _Z15MulKernel48BiasPfS_S_S_ii
	  addd,0,sm	%r18, %r3, %r3
	  addd,1,sm	%r19, %r5, %r5
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L20424:
	{
	  disp	%ctpr1, .L20101
	  addd,0	%r22, 0x8, %r22
	  addd,1,sm	%r20, _f16s,_lts0lo 0x20, %r20
	  addd,2,sm	%r24, %r21, %r21
	}
	{
	  nop 3
	  cmpldb,0	%r22, %r6, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L20436:
	{
	  nop 3
	  disp	%ctpr2, clock_gettime
	  addd,0	0x0, [ _f64,_lts1 .LC.1 ], %r2
	  addd,3	%r7, _f16s,_lts0lo 0xffe0, %b[1]
	  muld,4	%r4, %r29, %r1
	  addd,5,sm	0x3, 0x0, %b[0]
	}
	{
	  muld,3	%r1, %r6, %r1
	}
	{
	  call	%ctpr2, wbs = 0x10
	}
	{
	  nop 2
	  disp	%ctpr1, _Z4diff8timespecS_
	  ldqp,0	%r7, _f16s,_lts0lo 0xffe0, %r3
	  ldqp,5	%r7, _f16s,_lts0hi 0xfff0, %r4
	}
	{
	  nop 1
	  qpswitchd,0	%r3, %b[3]
	  addd,1,sm	0x0, %r3, %b[2]
	  qpswitchd,3	%r4, %b[1]
	  addd,4,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  disp	%ctpr1, printf
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.1 ], %b[0]
	  std,2	%r8, 0x0, %r2
	  qppackdl,3	%b[1], %b[0], %r3
	  idtofd,4	%r1, %r1
	}
	{
	  qpswitchd,3	%r3, %r2
	  idtofd,4	%r3, %r3
	}
	{
	  nop 1
	  idtofd,3,sm	%r2, %r2
	}
	{
	  nop 1
	  fmuld,3	%r1, _f64,_lts0 0x3dbe8abfd59a6108, %r1
	}
	{
	  nop 3
	  fmuld,3,sm	%r2, _f64,_lts0 0x3e112e0be826d695, %r2
	}
	{
	  nop 3
	  faddd,3,sm	%r3, %r2, %r2
	}
	{
	  nop 7
	  fdivd,5,sm	%r1, %r2, %r1
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fmuld,3,sm	%r1, _f64,_lts0 0x4059000000000000, %r1
	}
	{
	  nop 1
	  std,5	%r8, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x10
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,3	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.LCS.8:
	.cfi_endproc
	.size	_Z19ElbrusMatrixMulReluPfS_S_S_lll, .- _Z19ElbrusMatrixMulReluPfS_S_S_lll
	.section .rodata
	.align	8
.LC.1:
	.ascii	"%f%\n\000"
	.local	.LCO.1
	.type	.LCO.1, #object
	.size	.LCO.1, 0x10
	.align	16
.LCO.1:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.2
	.type	.LCO.2, #object
	.size	.LCO.2, 0x10
	.align	16
.LCO.2:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.3
	.type	.LCO.3, #object
	.size	.LCO.3, 0x10
	.align	16
.LCO.3:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.4
	.type	.LCO.4, #object
	.size	.LCO.4, 0x10
	.align	16
.LCO.4:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.5
	.type	.LCO.5, #object
	.size	.LCO.5, 0x10
	.align	16
.LCO.5:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.6
	.type	.LCO.6, #object
	.size	.LCO.6, 0x10
	.align	16
.LCO.6:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.7
	.type	.LCO.7, #object
	.size	.LCO.7, 0x10
	.align	16
.LCO.7:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.8
	.type	.LCO.8, #object
	.size	.LCO.8, 0x10
	.align	16
.LCO.8:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.9
	.type	.LCO.9, #object
	.size	.LCO.9, 0x10
	.align	16
.LCO.9:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.10
	.type	.LCO.10, #object
	.size	.LCO.10, 0x10
	.align	16
.LCO.10:
	.uadword	0x0
	.uadword	0x0
	.local	.LCO.11
	.type	.LCO.11, #object
	.size	.LCO.11, 0x10
	.align	16
.LCO.11:
	.uadword	0x0
	.uadword	0x0
	.weak	elbrus_optimizing_compiler_v1.25.14_Feb_13_2021
	elbrus_optimizing_compiler_v1.25.14_Feb_13_2021 = 0x0
