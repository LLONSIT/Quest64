glabel func_80023028
/* 23C28 80023028 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 23C2C 8002302C 44817000 */  mtc1       $at, $f14
/* 23C30 80023030 2403000C */  addiu      $v1, $zero, 0xC
/* 23C34 80023034 460C703C */  c.lt.s     $f14, $f12
/* 23C38 80023038 44801000 */  mtc1       $zero, $f2
/* 23C3C 8002303C 24040019 */  addiu      $a0, $zero, 0x19
/* 23C40 80023040 24060017 */  addiu      $a2, $zero, 0x17
/* 23C44 80023044 45000004 */  bc1f       .L80023058
/* 23C48 80023048 24080015 */   addiu     $t0, $zero, 0x15
/* 23C4C 8002304C 24020001 */  addiu      $v0, $zero, 0x1
/* 23C50 80023050 1000000B */  b          .L80023080
/* 23C54 80023054 460C7303 */   div.s     $f12, $f14, $f12
.L80023058:
/* 23C58 80023058 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 23C5C 8002305C 44812000 */  mtc1       $at, $f4
/* 23C60 80023060 00001025 */  or         $v0, $zero, $zero
/* 23C64 80023064 4604603C */  c.lt.s     $f12, $f4
/* 23C68 80023068 00000000 */  nop
/* 23C6C 8002306C 45000004 */  bc1f       .L80023080
/* 23C70 80023070 00000000 */   nop
/* 23C74 80023074 2402FFFF */  addiu      $v0, $zero, -0x1
/* 23C78 80023078 10000001 */  b          .L80023080
/* 23C7C 8002307C 460C7303 */   div.s     $f12, $f14, $f12
.L80023080:
/* 23C80 80023080 240A0013 */  addiu      $t2, $zero, 0x13
.L80023084:
/* 23C84 80023084 00630019 */  multu      $v1, $v1
/* 23C88 80023088 44849000 */  mtc1       $a0, $f18
/* 23C8C 8002308C 2465FFFF */  addiu      $a1, $v1, -0x1
/* 23C90 80023090 2467FFFE */  addiu      $a3, $v1, -0x2
/* 23C94 80023094 46809120 */  cvt.s.w    $f4, $f18
/* 23C98 80023098 2469FFFD */  addiu      $t1, $v1, -0x3
/* 23C9C 8002309C 2463FFFC */  addiu      $v1, $v1, -0x4
/* 23CA0 800230A0 2484FFF8 */  addiu      $a0, $a0, -0x8
/* 23CA4 800230A4 00007012 */  mflo       $t6
/* 23CA8 800230A8 448E3000 */  mtc1       $t6, $f6
/* 23CAC 800230AC 00000000 */  nop
/* 23CB0 800230B0 00A50019 */  multu      $a1, $a1
/* 23CB4 800230B4 46803220 */  cvt.s.w    $f8, $f6
/* 23CB8 800230B8 46022180 */  add.s      $f6, $f4, $f2
/* 23CBC 800230BC 460C4282 */  mul.s      $f10, $f8, $f12
/* 23CC0 800230C0 00007812 */  mflo       $t7
/* 23CC4 800230C4 448F4000 */  mtc1       $t7, $f8
/* 23CC8 800230C8 00000000 */  nop
/* 23CCC 800230CC 00E70019 */  multu      $a3, $a3
/* 23CD0 800230D0 460C5402 */  mul.s      $f16, $f10, $f12
/* 23CD4 800230D4 468042A0 */  cvt.s.w    $f10, $f8
/* 23CD8 800230D8 0000C012 */  mflo       $t8
/* 23CDC 800230DC 46068083 */  div.s      $f2, $f16, $f6
/* 23CE0 800230E0 44868000 */  mtc1       $a2, $f16
/* 23CE4 800230E4 01290019 */  multu      $t1, $t1
/* 23CE8 800230E8 24C6FFF8 */  addiu      $a2, $a2, -0x8
/* 23CEC 800230EC 460C5482 */  mul.s      $f18, $f10, $f12
/* 23CF0 800230F0 44985000 */  mtc1       $t8, $f10
/* 23CF4 800230F4 468081A0 */  cvt.s.w    $f6, $f16
/* 23CF8 800230F8 0000C812 */  mflo       $t9
/* 23CFC 800230FC 460C9102 */  mul.s      $f4, $f18, $f12
/* 23D00 80023100 46023200 */  add.s      $f8, $f6, $f2
/* 23D04 80023104 468054A0 */  cvt.s.w    $f18, $f10
/* 23D08 80023108 46082083 */  div.s      $f2, $f4, $f8
/* 23D0C 8002310C 44882000 */  mtc1       $t0, $f4
/* 23D10 80023110 2508FFF8 */  addiu      $t0, $t0, -0x8
/* 23D14 80023114 460C9402 */  mul.s      $f16, $f18, $f12
/* 23D18 80023118 44999000 */  mtc1       $t9, $f18
/* 23D1C 8002311C 46802220 */  cvt.s.w    $f8, $f4
/* 23D20 80023120 460C8182 */  mul.s      $f6, $f16, $f12
/* 23D24 80023124 46024280 */  add.s      $f10, $f8, $f2
/* 23D28 80023128 46809420 */  cvt.s.w    $f16, $f18
/* 23D2C 8002312C 460A3083 */  div.s      $f2, $f6, $f10
/* 23D30 80023130 448A3000 */  mtc1       $t2, $f6
/* 23D34 80023134 254AFFF8 */  addiu      $t2, $t2, -0x8
/* 23D38 80023138 460C8102 */  mul.s      $f4, $f16, $f12
/* 23D3C 8002313C 468032A0 */  cvt.s.w    $f10, $f6
/* 23D40 80023140 460C2202 */  mul.s      $f8, $f4, $f12
/* 23D44 80023144 46025480 */  add.s      $f18, $f10, $f2
/* 23D48 80023148 1460FFCE */  bnez       $v1, .L80023084
/* 23D4C 8002314C 46124083 */   div.s     $f2, $f8, $f18
/* 23D50 80023150 18400009 */  blez       $v0, .L80023178
/* 23D54 80023154 00000000 */   nop
/* 23D58 80023158 46027100 */  add.s      $f4, $f14, $f2
/* 23D5C 8002315C 3C018007 */  lui        $at, %hi(D_800716D0)
/* 23D60 80023160 D43016D0 */  ldc1       $f16, %lo(D_800716D0)($at)
/* 23D64 80023164 46046183 */  div.s      $f6, $f12, $f4
/* 23D68 80023168 460032A1 */  cvt.d.s    $f10, $f6
/* 23D6C 8002316C 462A8201 */  sub.d      $f8, $f16, $f10
/* 23D70 80023170 03E00008 */  jr         $ra
/* 23D74 80023174 46204020 */   cvt.s.d   $f0, $f8
.L80023178:
/* 23D78 80023178 0443000A */  bgezl      $v0, .L800231A4
/* 23D7C 8002317C 46027200 */   add.s     $f8, $f14, $f2
/* 23D80 80023180 46027100 */  add.s      $f4, $f14, $f2
/* 23D84 80023184 3C018007 */  lui        $at, %hi(D_800716D8)
/* 23D88 80023188 D43216D8 */  ldc1       $f18, %lo(D_800716D8)($at)
/* 23D8C 8002318C 46046183 */  div.s      $f6, $f12, $f4
/* 23D90 80023190 46003421 */  cvt.d.s    $f16, $f6
/* 23D94 80023194 46309281 */  sub.d      $f10, $f18, $f16
/* 23D98 80023198 03E00008 */  jr         $ra
/* 23D9C 8002319C 46205020 */   cvt.s.d   $f0, $f10
/* 23DA0 800231A0 46027200 */  add.s      $f8, $f14, $f2
.L800231A4:
/* 23DA4 800231A4 46086003 */  div.s      $f0, $f12, $f8
/* 23DA8 800231A8 03E00008 */  jr         $ra
/* 23DAC 800231AC 00000000 */   nop