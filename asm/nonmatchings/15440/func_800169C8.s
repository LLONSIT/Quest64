glabel func_800169C8
/* 175C8 800169C8 AFA40000 */  sw         $a0, 0x0($sp)
/* 175CC 800169CC AFA50004 */  sw         $a1, 0x4($sp)
/* 175D0 800169D0 3C0E8008 */  lui        $t6, %hi(D_80084EE0)
/* 175D4 800169D4 95CE4EE0 */  lhu        $t6, %lo(D_80084EE0)($t6)
/* 175D8 800169D8 24010004 */  addiu      $at, $zero, 0x4
/* 175DC 800169DC 3C028008 */  lui        $v0, %hi(D_80084EF8)
/* 175E0 800169E0 15C10026 */  bne        $t6, $at, .L80016A7C
/* 175E4 800169E4 00000000 */   nop
/* 175E8 800169E8 8C424EF8 */  lw         $v0, %lo(D_80084EF8)($v0)
/* 175EC 800169EC 2401FFFF */  addiu      $at, $zero, -0x1
/* 175F0 800169F0 3C0F8008 */  lui        $t7, %hi(D_80084F1C)
/* 175F4 800169F4 10410021 */  beq        $v0, $at, .L80016A7C
/* 175F8 800169F8 00000000 */   nop
/* 175FC 800169FC 8DEF4F1C */  lw         $t7, %lo(D_80084F1C)($t7)
/* 17600 80016A00 3C048008 */  lui        $a0, %hi(D_80085368)
/* 17604 80016A04 24845368 */  addiu      $a0, $a0, %lo(D_80085368)
/* 17608 80016A08 95F80014 */  lhu        $t8, 0x14($t7)
/* 1760C 80016A0C 3C058008 */  lui        $a1, %hi(D_8007BAB8)
/* 17610 80016A10 3C088008 */  lui        $t0, %hi(D_80084EFC)
/* 17614 80016A14 33190004 */  andi       $t9, $t8, 0x4
/* 17618 80016A18 17200018 */  bnez       $t9, .L80016A7C
/* 1761C 80016A1C 00000000 */   nop
/* 17620 80016A20 AC820000 */  sw         $v0, 0x0($a0)
/* 17624 80016A24 8D084EFC */  lw         $t0, %lo(D_80084EFC)($t0)
/* 17628 80016A28 3C098008 */  lui        $t1, %hi(D_80084F00)
/* 1762C 80016A2C 240A0108 */  addiu      $t2, $zero, 0x108
/* 17630 80016A30 AC880004 */  sw         $t0, 0x4($a0)
/* 17634 80016A34 8D294F00 */  lw         $t1, %lo(D_80084F00)($t1)
/* 17638 80016A38 3C018008 */  lui        $at, %hi(D_8007BA4C)
/* 1763C 80016A3C 24A5BAB8 */  addiu      $a1, $a1, %lo(D_8007BAB8)
/* 17640 80016A40 AC890008 */  sw         $t1, 0x8($a0)
/* 17644 80016A44 AC2ABA4C */  sw         $t2, %lo(D_8007BA4C)($at)
/* 17648 80016A48 8CA30010 */  lw         $v1, 0x10($a1)
/* 1764C 80016A4C A4A00006 */  sh         $zero, 0x6($a1)
/* 17650 80016A50 3C068008 */  lui        $a2, %hi(D_8007B2E4)
/* 17654 80016A54 946B002A */  lhu        $t3, 0x2A($v1)
/* 17658 80016A58 24C6B2E4 */  addiu      $a2, $a2, %lo(D_8007B2E4)
/* 1765C 80016A5C 3C018008 */  lui        $at, %hi(D_8007B2EC)
/* 17660 80016A60 256C0001 */  addiu      $t4, $t3, 0x1
/* 17664 80016A64 A46C002A */  sh         $t4, 0x2A($v1)
/* 17668 80016A68 8CCD0000 */  lw         $t5, 0x0($a2)
/* 1766C 80016A6C 240F001E */  addiu      $t7, $zero, 0x1E
/* 17670 80016A70 35AE0080 */  ori        $t6, $t5, 0x80
/* 17674 80016A74 ACCE0000 */  sw         $t6, 0x0($a2)
/* 17678 80016A78 AC2FB2EC */  sw         $t7, %lo(D_8007B2EC)($at)
.L80016A7C:
/* 1767C 80016A7C 03E00008 */  jr         $ra
/* 17680 80016A80 00000000 */   nop
