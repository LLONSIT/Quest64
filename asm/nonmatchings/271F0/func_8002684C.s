glabel func_8002684C
/* 2744C 8002684C AFA60008 */  sw         $a2, 0x8($sp)
/* 27450 80026850 30C7FFFF */  andi       $a3, $a2, 0xFFFF
/* 27454 80026854 3C028005 */  lui        $v0, %hi(D_80053B00)
/* 27458 80026858 24423B00 */  addiu      $v0, $v0, %lo(D_80053B00)
/* 2745C 8002685C 24030046 */  addiu      $v1, $zero, 0x46
/* 27460 80026860 2408FFFF */  addiu      $t0, $zero, -0x1
.L80026864:
/* 27464 80026864 844E0000 */  lh         $t6, 0x0($v0)
/* 27468 80026868 548E0007 */  bnel       $a0, $t6, .L80026888
/* 2746C 8002686C 2463FFFF */   addiu     $v1, $v1, -0x1
/* 27470 80026870 84460002 */  lh         $a2, 0x2($v0)
/* 27474 80026874 10A60006 */  beq        $a1, $a2, .L80026890
/* 27478 80026878 00000000 */   nop
/* 2747C 8002687C 11060004 */  beq        $t0, $a2, .L80026890
/* 27480 80026880 00000000 */   nop
/* 27484 80026884 2463FFFF */  addiu      $v1, $v1, -0x1
.L80026888:
/* 27488 80026888 1460FFF6 */  bnez       $v1, .L80026864
/* 2748C 8002688C 24420006 */   addiu     $v0, $v0, 0x6
.L80026890:
/* 27490 80026890 1060000E */  beqz       $v1, .L800268CC
/* 27494 80026894 3C048009 */   lui       $a0, %hi(D_8008FCC1)
/* 27498 80026898 2484FCC1 */  addiu      $a0, $a0, %lo(D_8008FCC1)
/* 2749C 8002689C 808F0000 */  lb         $t7, 0x0($a0)
/* 274A0 800268A0 80430004 */  lb         $v1, 0x4($v0)
/* 274A4 800268A4 3C028009 */  lui        $v0, %hi(D_8008FCC2)
/* 274A8 800268A8 2442FCC2 */  addiu      $v0, $v0, %lo(D_8008FCC2)
/* 274AC 800268AC 106F0007 */  beq        $v1, $t7, .L800268CC
/* 274B0 800268B0 00000000 */   nop
/* 274B4 800268B4 94580000 */  lhu        $t8, 0x0($v0)
/* 274B8 800268B8 A0830000 */  sb         $v1, 0x0($a0)
/* 274BC 800268BC 3C018009 */  lui        $at, %hi(D_8008FCC4)
/* 274C0 800268C0 37190001 */  ori        $t9, $t8, 0x1
/* 274C4 800268C4 A4590000 */  sh         $t9, 0x0($v0)
/* 274C8 800268C8 A427FCC4 */  sh         $a3, %lo(D_8008FCC4)($at)
.L800268CC:
/* 274CC 800268CC 03E00008 */  jr         $ra
/* 274D0 800268D0 00000000 */   nop
