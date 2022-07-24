.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel osWritebackDCache
/* 35A50 80034E50 18A00011 */  blez       $a1, .L80034E98
/* 35A54 80034E54 00000000 */   nop
/* 35A58 80034E58 240B2000 */  addiu      $t3, $zero, 0x2000
/* 35A5C 80034E5C 00AB082B */  sltu       $at, $a1, $t3
/* 35A60 80034E60 1020000F */  beqz       $at, .L80034EA0
/* 35A64 80034E64 00000000 */   nop
/* 35A68 80034E68 00804025 */  or         $t0, $a0, $zero
/* 35A6C 80034E6C 00854821 */  addu       $t1, $a0, $a1
/* 35A70 80034E70 0109082B */  sltu       $at, $t0, $t1
/* 35A74 80034E74 10200008 */  beqz       $at, .L80034E98
/* 35A78 80034E78 00000000 */   nop
/* 35A7C 80034E7C 310A000F */  andi       $t2, $t0, 0xF
/* 35A80 80034E80 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 35A84 80034E84 010A4023 */  subu       $t0, $t0, $t2
.L80034E88:
/* 35A88 80034E88 BD190000 */  cache      0x19, 0x0($t0)
/* 35A8C 80034E8C 0109082B */  sltu       $at, $t0, $t1
/* 35A90 80034E90 1420FFFD */  bnez       $at, .L80034E88
/* 35A94 80034E94 25080010 */   addiu     $t0, $t0, 0x10
.L80034E98:
/* 35A98 80034E98 03E00008 */  jr         $ra
/* 35A9C 80034E9C 00000000 */   nop
.L80034EA0:
/* 35AA0 80034EA0 3C088000 */  lui        $t0, 0x8000
/* 35AA4 80034EA4 010B4821 */  addu       $t1, $t0, $t3
/* 35AA8 80034EA8 2529FFF0 */  addiu      $t1, $t1, -0x10
.L80034EAC:
/* 35AAC 80034EAC BD010000 */  cache      0x01, 0x0($t0)
/* 35AB0 80034EB0 0109082B */  sltu       $at, $t0, $t1
/* 35AB4 80034EB4 1420FFFD */  bnez       $at, .L80034EAC
/* 35AB8 80034EB8 25080010 */   addiu     $t0, $t0, 0x10
/* 35ABC 80034EBC 03E00008 */  jr         $ra
/* 35AC0 80034EC0 00000000 */   nop
/* 35AC4 80034EC4 00000000 */  nop
/* 35AC8 80034EC8 00000000 */  nop
/* 35ACC 80034ECC 00000000 */  nop
