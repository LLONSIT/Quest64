glabel func_80018DF4
/* 199F4 80018DF4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 199F8 80018DF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 199FC 80018DFC 00808025 */  or         $s0, $a0, $zero
/* 19A00 80018E00 AFBF001C */  sw         $ra, 0x1C($sp)
/* 19A04 80018E04 AFA60038 */  sw         $a2, 0x38($sp)
/* 19A08 80018E08 3C0E8008 */  lui        $t6, %hi(D_800873DC)
/* 19A0C 80018E0C 95CE73DC */  lhu        $t6, %lo(D_800873DC)($t6)
/* 19A10 80018E10 3C088008 */  lui        $t0, %hi(D_800873D0)
/* 19A14 80018E14 24070009 */  addiu      $a3, $zero, 0x9
/* 19A18 80018E18 11C00007 */  beqz       $t6, .L80018E38
/* 19A1C 80018E1C 250873D0 */   addiu     $t0, $t0, %lo(D_800873D0)
/* 19A20 80018E20 24E7FFFF */  addiu      $a3, $a3, -0x1
.L80018E24:
/* 19A24 80018E24 10E00004 */  beqz       $a3, .L80018E38
/* 19A28 80018E28 2508001C */   addiu     $t0, $t0, 0x1C
/* 19A2C 80018E2C 950F000C */  lhu        $t7, 0xC($t0)
/* 19A30 80018E30 55E0FFFC */  bnel       $t7, $zero, .L80018E24
/* 19A34 80018E34 24E7FFFF */   addiu     $a3, $a3, -0x1
.L80018E38:
/* 19A38 80018E38 2418002D */  addiu      $t8, $zero, 0x2D
/* 19A3C 80018E3C A518000C */  sh         $t8, 0xC($t0)
/* 19A40 80018E40 AD100000 */  sw         $s0, 0x0($t0)
/* 19A44 80018E44 AD050010 */  sw         $a1, 0x10($t0)
/* 19A48 80018E48 8FB90038 */  lw         $t9, 0x38($sp)
/* 19A4C 80018E4C 25050004 */  addiu      $a1, $t0, 0x4
/* 19A50 80018E50 24060001 */  addiu      $a2, $zero, 0x1
/* 19A54 80018E54 07210002 */  bgez       $t9, .L80018E60
/* 19A58 80018E58 00194823 */   negu      $t1, $t9
/* 19A5C 80018E5C AFA90038 */  sw         $t1, 0x38($sp)
.L80018E60:
/* 19A60 80018E60 8FA40038 */  lw         $a0, 0x38($sp)
/* 19A64 80018E64 0C0090CC */  jal        func_80024330
/* 19A68 80018E68 AFA80024 */   sw        $t0, 0x24($sp)
/* 19A6C 80018E6C 8FA80024 */  lw         $t0, 0x24($sp)
/* 19A70 80018E70 3C0A8008 */  lui        $t2, %hi(D_800873DC)
/* 19A74 80018E74 00001825 */  or         $v1, $zero, $zero
/* 19A78 80018E78 AD020014 */  sw         $v0, 0x14($t0)
/* 19A7C 80018E7C 954A73DC */  lhu        $t2, %lo(D_800873DC)($t2)
/* 19A80 80018E80 3C028008 */  lui        $v0, %hi(D_80087408)
/* 19A84 80018E84 24427408 */  addiu      $v0, $v0, %lo(D_80087408)
/* 19A88 80018E88 11400006 */  beqz       $t2, .L80018EA4
/* 19A8C 80018E8C 3C0C8008 */   lui       $t4, %hi(D_800873F8)
/* 19A90 80018E90 3C0B8008 */  lui        $t3, %hi(D_800873D0)
/* 19A94 80018E94 8D6B73D0 */  lw         $t3, %lo(D_800873D0)($t3)
/* 19A98 80018E98 160B0002 */  bne        $s0, $t3, .L80018EA4
/* 19A9C 80018E9C 00000000 */   nop
/* 19AA0 80018EA0 24030001 */  addiu      $v1, $zero, 0x1
.L80018EA4:
/* 19AA4 80018EA4 958C73F8 */  lhu        $t4, %lo(D_800873F8)($t4)
/* 19AA8 80018EA8 3C048008 */  lui        $a0, %hi(D_800874E8)
/* 19AAC 80018EAC 248474E8 */  addiu      $a0, $a0, %lo(D_800874E8)
/* 19AB0 80018EB0 11800005 */  beqz       $t4, .L80018EC8
/* 19AB4 80018EB4 3C0D8008 */   lui       $t5, %hi(D_800873EC)
/* 19AB8 80018EB8 8DAD73EC */  lw         $t5, %lo(D_800873EC)($t5)
/* 19ABC 80018EBC 160D0002 */  bne        $s0, $t5, .L80018EC8
/* 19AC0 80018EC0 00000000 */   nop
/* 19AC4 80018EC4 24630001 */  addiu      $v1, $v1, 0x1
.L80018EC8:
/* 19AC8 80018EC8 944E000C */  lhu        $t6, 0xC($v0)
.L80018ECC:
/* 19ACC 80018ECC 51C00006 */  beql       $t6, $zero, .L80018EE8
/* 19AD0 80018ED0 94580028 */   lhu       $t8, 0x28($v0)
/* 19AD4 80018ED4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 19AD8 80018ED8 560F0003 */  bnel       $s0, $t7, .L80018EE8
/* 19ADC 80018EDC 94580028 */   lhu       $t8, 0x28($v0)
/* 19AE0 80018EE0 24630001 */  addiu      $v1, $v1, 0x1
/* 19AE4 80018EE4 94580028 */  lhu        $t8, 0x28($v0)
.L80018EE8:
/* 19AE8 80018EE8 53000006 */  beql       $t8, $zero, .L80018F04
/* 19AEC 80018EEC 94490044 */   lhu       $t1, 0x44($v0)
/* 19AF0 80018EF0 8C59001C */  lw         $t9, 0x1C($v0)
/* 19AF4 80018EF4 56190003 */  bnel       $s0, $t9, .L80018F04
/* 19AF8 80018EF8 94490044 */   lhu       $t1, 0x44($v0)
/* 19AFC 80018EFC 24630001 */  addiu      $v1, $v1, 0x1
/* 19B00 80018F00 94490044 */  lhu        $t1, 0x44($v0)
.L80018F04:
/* 19B04 80018F04 51200006 */  beql       $t1, $zero, .L80018F20
/* 19B08 80018F08 944B0060 */   lhu       $t3, 0x60($v0)
/* 19B0C 80018F0C 8C4A0038 */  lw         $t2, 0x38($v0)
/* 19B10 80018F10 560A0003 */  bnel       $s0, $t2, .L80018F20
/* 19B14 80018F14 944B0060 */   lhu       $t3, 0x60($v0)
/* 19B18 80018F18 24630001 */  addiu      $v1, $v1, 0x1
/* 19B1C 80018F1C 944B0060 */  lhu        $t3, 0x60($v0)
.L80018F20:
/* 19B20 80018F20 51600006 */  beql       $t3, $zero, .L80018F3C
/* 19B24 80018F24 24420070 */   addiu     $v0, $v0, 0x70
/* 19B28 80018F28 8C4C0054 */  lw         $t4, 0x54($v0)
/* 19B2C 80018F2C 560C0003 */  bnel       $s0, $t4, .L80018F3C
/* 19B30 80018F30 24420070 */   addiu     $v0, $v0, 0x70
/* 19B34 80018F34 24630001 */  addiu      $v1, $v1, 0x1
/* 19B38 80018F38 24420070 */  addiu      $v0, $v0, 0x70
.L80018F3C:
/* 19B3C 80018F3C 5444FFE3 */  bnel       $v0, $a0, .L80018ECC
/* 19B40 80018F40 944E000C */   lhu       $t6, 0xC($v0)
/* 19B44 80018F44 246DFFFF */  addiu      $t5, $v1, -0x1
/* 19B48 80018F48 AD0D0018 */  sw         $t5, 0x18($t0)
/* 19B4C 80018F4C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 19B50 80018F50 8FB00018 */  lw         $s0, 0x18($sp)
/* 19B54 80018F54 27BD0030 */  addiu      $sp, $sp, 0x30
/* 19B58 80018F58 03E00008 */  jr         $ra
/* 19B5C 80018F5C 00000000 */   nop
