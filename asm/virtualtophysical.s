.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osVirtualToPhysical
/* 359D0 80034DD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 359D4 80034DD4 AFA40018 */  sw         $a0, 0x18($sp)
/* 359D8 80034DD8 8FAE0018 */  lw         $t6, 0x18($sp)
/* 359DC 80034DDC 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 359E0 80034DE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 359E4 80034DE4 01C1082B */  sltu       $at, $t6, $at
/* 359E8 80034DE8 14200007 */  bnez       $at, .L80034E08
/* 359EC 80034DEC 3C01A000 */   lui       $at, (0xA0000000 >> 16)
/* 359F0 80034DF0 01C1082B */  sltu       $at, $t6, $at
/* 359F4 80034DF4 10200004 */  beqz       $at, .L80034E08
/* 359F8 80034DF8 3C011FFF */   lui       $at, (0x1FFFFFFF >> 16)
/* 359FC 80034DFC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 35A00 80034E00 1000000E */  b          .L80034E3C
/* 35A04 80034E04 01C11024 */   and       $v0, $t6, $at
.L80034E08:
/* 35A08 80034E08 8FAF0018 */  lw         $t7, 0x18($sp)
/* 35A0C 80034E0C 3C01A000 */  lui        $at, (0xA0000000 >> 16)
/* 35A10 80034E10 01E1082B */  sltu       $at, $t7, $at
/* 35A14 80034E14 14200007 */  bnez       $at, .L80034E34
/* 35A18 80034E18 3C01C000 */   lui       $at, (0xC0000000 >> 16)
/* 35A1C 80034E1C 01E1082B */  sltu       $at, $t7, $at
/* 35A20 80034E20 10200004 */  beqz       $at, .L80034E34
/* 35A24 80034E24 3C011FFF */   lui       $at, (0x1FFFFFFF >> 16)
/* 35A28 80034E28 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 35A2C 80034E2C 10000003 */  b          .L80034E3C
/* 35A30 80034E30 01E11024 */   and       $v0, $t7, $at
.L80034E34:
/* 35A34 80034E34 0C00FB68 */  jal        __osProbeTLB
/* 35A38 80034E38 8FA40018 */   lw        $a0, 0x18($sp)
.L80034E3C:
/* 35A3C 80034E3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 35A40 80034E40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 35A44 80034E44 03E00008 */  jr         $ra
/* 35A48 80034E48 00000000 */   nop
/* 35A4C 80034E4C 00000000 */  nop
