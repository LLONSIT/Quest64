glabel func_80014720
/* 15320 80014720 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 15324 80014724 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 15328 80014728 AFB30038 */  sw         $s3, 0x38($sp)
/* 1532C 8001472C 4485C000 */  mtc1       $a1, $f24
/* 15330 80014730 00809825 */  or         $s3, $a0, $zero
/* 15334 80014734 AFBF003C */  sw         $ra, 0x3C($sp)
/* 15338 80014738 AFB20034 */  sw         $s2, 0x34($sp)
/* 1533C 8001473C AFB10030 */  sw         $s1, 0x30($sp)
/* 15340 80014740 AFB0002C */  sw         $s0, 0x2C($sp)
/* 15344 80014744 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 15348 80014748 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1534C 8001474C 3C028008 */  lui        $v0, %hi(D_8007BCE8)
/* 15350 80014750 8C42BCE8 */  lw         $v0, %lo(D_8007BCE8)($v0)
/* 15354 80014754 3C128008 */  lui        $s2, %hi(D_8007BCF0)
/* 15358 80014758 1040002B */  beqz       $v0, .L80014808
/* 1535C 8001475C 00408825 */   or        $s1, $v0, $zero
/* 15360 80014760 10400029 */  beqz       $v0, .L80014808
/* 15364 80014764 2652BCF0 */   addiu     $s2, $s2, %lo(D_8007BCF0)
/* 15368 80014768 3C014034 */  lui        $at, (0x40340000 >> 16)
/* 1536C 8001476C 4481B800 */  mtc1       $at, $f23
/* 15370 80014770 3C01403E */  lui        $at, (0x403E0000 >> 16)
/* 15374 80014774 4481A800 */  mtc1       $at, $f21
/* 15378 80014778 4480B000 */  mtc1       $zero, $f22
/* 1537C 8001477C 4480A000 */  mtc1       $zero, $f20
/* 15380 80014780 00000000 */  nop
/* 15384 80014784 8E500000 */  lw         $s0, 0x0($s2)
.L80014788:
/* 15388 80014788 26520004 */  addiu      $s2, $s2, 0x4
/* 1538C 8001478C C6040004 */  lwc1       $f4, 0x4($s0)
/* 15390 80014790 46182081 */  sub.s      $f2, $f4, $f24
/* 15394 80014794 460011A1 */  cvt.d.s    $f6, $f2
/* 15398 80014798 4636303C */  c.lt.d     $f6, $f22
/* 1539C 8001479C 00000000 */  nop
/* 153A0 800147A0 45020017 */  bc1fl      .L80014800
/* 153A4 800147A4 2631FFFF */   addiu     $s1, $s1, -0x1
/* 153A8 800147A8 C6080000 */  lwc1       $f8, 0x0($s0)
/* 153AC 800147AC C66A000C */  lwc1       $f10, 0xC($s3)
/* 153B0 800147B0 C6100008 */  lwc1       $f16, 0x8($s0)
/* 153B4 800147B4 C6720014 */  lwc1       $f18, 0x14($s3)
/* 153B8 800147B8 460A4081 */  sub.s      $f2, $f8, $f10
/* 153BC 800147BC 46128001 */  sub.s      $f0, $f16, $f18
/* 153C0 800147C0 46021102 */  mul.s      $f4, $f2, $f2
/* 153C4 800147C4 00000000 */  nop
/* 153C8 800147C8 46000182 */  mul.s      $f6, $f0, $f0
/* 153CC 800147CC 0C00D3D8 */  jal        _nsqrtf
/* 153D0 800147D0 46062300 */   add.s     $f12, $f4, $f6
/* 153D4 800147D4 46000221 */  cvt.d.s    $f8, $f0
/* 153D8 800147D8 4634403C */  c.lt.d     $f8, $f20
/* 153DC 800147DC 00000000 */  nop
/* 153E0 800147E0 45020007 */  bc1fl      .L80014800
/* 153E4 800147E4 2631FFFF */   addiu     $s1, $s1, -0x1
/* 153E8 800147E8 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 153EC 800147EC 46005421 */  cvt.d.s    $f16, $f10
/* 153F0 800147F0 46348480 */  add.d      $f18, $f16, $f20
/* 153F4 800147F4 10000004 */  b          .L80014808
/* 153F8 800147F8 46209620 */   cvt.s.d   $f24, $f18
/* 153FC 800147FC 2631FFFF */  addiu      $s1, $s1, -0x1
.L80014800:
/* 15400 80014800 5620FFE1 */  bnel       $s1, $zero, .L80014788
/* 15404 80014804 8E500000 */   lw        $s0, 0x0($s2)
.L80014808:
/* 15408 80014808 4600C006 */  mov.s      $f0, $f24
/* 1540C 8001480C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 15410 80014810 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 15414 80014814 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 15418 80014818 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 1541C 8001481C 8FB0002C */  lw         $s0, 0x2C($sp)
/* 15420 80014820 8FB10030 */  lw         $s1, 0x30($sp)
/* 15424 80014824 8FB20034 */  lw         $s2, 0x34($sp)
/* 15428 80014828 8FB30038 */  lw         $s3, 0x38($sp)
/* 1542C 8001482C 03E00008 */  jr         $ra
/* 15430 80014830 27BD0040 */   addiu     $sp, $sp, 0x40
/* 15434 80014834 00000000 */  nop
/* 15438 80014838 00000000 */  nop
/* 1543C 8001483C 00000000 */  nop