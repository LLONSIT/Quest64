glabel func_80012358
/* 12F58 80012358 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 12F5C 8001235C AFB2003C */  sw         $s2, 0x3C($sp)
/* 12F60 80012360 00809025 */  or         $s2, $a0, $zero
/* 12F64 80012364 AFBF0044 */  sw         $ra, 0x44($sp)
/* 12F68 80012368 AFB30040 */  sw         $s3, 0x40($sp)
/* 12F6C 8001236C AFB10038 */  sw         $s1, 0x38($sp)
/* 12F70 80012370 AFB00034 */  sw         $s0, 0x34($sp)
/* 12F74 80012374 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 12F78 80012378 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 12F7C 8001237C F7B60018 */  sdc1       $f22, 0x18($sp)
/* 12F80 80012380 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 12F84 80012384 3C118008 */  lui        $s1, %hi(D_80086A00)
/* 12F88 80012388 8E316A00 */  lw         $s1, %lo(D_80086A00)($s1)
/* 12F8C 8001238C 3C108008 */  lui        $s0, %hi(D_80086A08)
/* 12F90 80012390 AFA0005C */  sw         $zero, 0x5C($sp)
/* 12F94 80012394 12200035 */  beqz       $s1, .L8001246C
/* 12F98 80012398 26106A08 */   addiu     $s0, $s0, %lo(D_80086A08)
/* 12F9C 8001239C 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
/* 12FA0 800123A0 4481C000 */  mtc1       $at, $f24
/* 12FA4 800123A4 3C014014 */  lui        $at, (0x40140000 >> 16)
/* 12FA8 800123A8 4481B800 */  mtc1       $at, $f23
/* 12FAC 800123AC 3C01C014 */  lui        $at, (0xC0140000 >> 16)
/* 12FB0 800123B0 4481A800 */  mtc1       $at, $f21
/* 12FB4 800123B4 4480D000 */  mtc1       $zero, $f26
/* 12FB8 800123B8 4480B000 */  mtc1       $zero, $f22
/* 12FBC 800123BC 4480A000 */  mtc1       $zero, $f20
/* 12FC0 800123C0 27B30050 */  addiu      $s3, $sp, 0x50
.L800123C4:
/* 12FC4 800123C4 960E0010 */  lhu        $t6, 0x10($s0)
/* 12FC8 800123C8 55C00026 */  bnel       $t6, $zero, .L80012464
/* 12FCC 800123CC 2631FFFF */   addiu     $s1, $s1, -0x1
/* 12FD0 800123D0 C6040000 */  lwc1       $f4, 0x0($s0)
/* 12FD4 800123D4 C6460000 */  lwc1       $f6, 0x0($s2)
/* 12FD8 800123D8 C6080008 */  lwc1       $f8, 0x8($s0)
/* 12FDC 800123DC C64A0008 */  lwc1       $f10, 0x8($s2)
/* 12FE0 800123E0 46062001 */  sub.s      $f0, $f4, $f6
/* 12FE4 800123E4 02602825 */  or         $a1, $s3, $zero
/* 12FE8 800123E8 460A4081 */  sub.s      $f2, $f8, $f10
/* 12FEC 800123EC 46000402 */  mul.s      $f16, $f0, $f0
/* 12FF0 800123F0 00000000 */  nop
/* 12FF4 800123F4 46021482 */  mul.s      $f18, $f2, $f2
/* 12FF8 800123F8 46128100 */  add.s      $f4, $f16, $f18
/* 12FFC 800123FC 4618203C */  c.lt.s     $f4, $f24
/* 13000 80012400 00000000 */  nop
/* 13004 80012404 45000016 */  bc1f       .L80012460
/* 13008 80012408 00000000 */   nop
/* 1300C 8001240C E7A00050 */  swc1       $f0, 0x50($sp)
/* 13010 80012410 E7A20054 */  swc1       $f2, 0x54($sp)
/* 13014 80012414 0C008CBD */  jal        func_800232F4
/* 13018 80012418 C64C0010 */   lwc1      $f12, 0x10($s2)
/* 1301C 8001241C C7A60054 */  lwc1       $f6, 0x54($sp)
/* 13020 80012420 C7A80050 */  lwc1       $f8, 0x50($sp)
/* 13024 80012424 4606D03E */  c.le.s     $f26, $f6
/* 13028 80012428 00000000 */  nop
/* 1302C 8001242C 4502000D */  bc1fl      .L80012464
/* 13030 80012430 2631FFFF */   addiu     $s1, $s1, -0x1
/* 13034 80012434 46004021 */  cvt.d.s    $f0, $f8
/* 13038 80012438 4620A03C */  c.lt.d     $f20, $f0
/* 1303C 8001243C 00000000 */  nop
/* 13040 80012440 45020008 */  bc1fl      .L80012464
/* 13044 80012444 2631FFFF */   addiu     $s1, $s1, -0x1
/* 13048 80012448 4636003C */  c.lt.d     $f0, $f22
/* 1304C 8001244C 00000000 */  nop
/* 13050 80012450 45020004 */  bc1fl      .L80012464
/* 13054 80012454 2631FFFF */   addiu     $s1, $s1, -0x1
/* 13058 80012458 10000004 */  b          .L8001246C
/* 1305C 8001245C AFB0005C */   sw        $s0, 0x5C($sp)
.L80012460:
/* 13060 80012460 2631FFFF */  addiu      $s1, $s1, -0x1
.L80012464:
/* 13064 80012464 1620FFD7 */  bnez       $s1, .L800123C4
/* 13068 80012468 26100018 */   addiu     $s0, $s0, 0x18
.L8001246C:
/* 1306C 8001246C 8FA2005C */  lw         $v0, 0x5C($sp)
/* 13070 80012470 8FBF0044 */  lw         $ra, 0x44($sp)
/* 13074 80012474 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 13078 80012478 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1307C 8001247C D7B80020 */  ldc1       $f24, 0x20($sp)
/* 13080 80012480 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 13084 80012484 8FB00034 */  lw         $s0, 0x34($sp)
/* 13088 80012488 8FB10038 */  lw         $s1, 0x38($sp)
/* 1308C 8001248C 8FB2003C */  lw         $s2, 0x3C($sp)
/* 13090 80012490 8FB30040 */  lw         $s3, 0x40($sp)
/* 13094 80012494 03E00008 */  jr         $ra
/* 13098 80012498 27BD0070 */   addiu     $sp, $sp, 0x70
