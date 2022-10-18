.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSndpPlay
/* 3A4F0 800398F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3A4F4 800398F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A4F8 800398F8 8C8E003C */  lw         $t6, 0x3C($a0)
/* 3A4FC 800398FC 24030030 */  addiu      $v1, $zero, 0x30
/* 3A500 80039900 8C820040 */  lw         $v0, 0x40($a0)
/* 3A504 80039904 01C30019 */  multu      $t6, $v1
/* 3A508 80039908 00007812 */  mflo       $t7
/* 3A50C 8003990C 01E2C021 */  addu       $t8, $t7, $v0
/* 3A510 80039910 8F190028 */  lw         $t9, 0x28($t8)
/* 3A514 80039914 5720000C */  bnel       $t9, $zero, .L80039948
/* 3A518 80039918 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3A51C 8003991C A7A00020 */  sh         $zero, 0x20($sp)
/* 3A520 80039920 8C88003C */  lw         $t0, 0x3C($a0)
/* 3A524 80039924 24840014 */  addiu      $a0, $a0, 0x14
/* 3A528 80039928 27A50020 */  addiu      $a1, $sp, 0x20
/* 3A52C 8003992C 01030019 */  multu      $t0, $v1
/* 3A530 80039930 00003025 */  or         $a2, $zero, $zero
/* 3A534 80039934 00004812 */  mflo       $t1
/* 3A538 80039938 01225021 */  addu       $t2, $t1, $v0
/* 3A53C 8003993C 0C00FF9B */  jal        alEvtqPostEvent
/* 3A540 80039940 AFAA0024 */   sw        $t2, 0x24($sp)
/* 3A544 80039944 8FBF0014 */  lw         $ra, 0x14($sp)
.L80039948:
/* 3A548 80039948 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3A54C 8003994C 03E00008 */  jr         $ra
/* 3A550 80039950 00000000 */   nop
/* 3A554 80039954 00000000 */  nop
/* 3A558 80039958 00000000 */  nop
/* 3A55C 8003995C 00000000 */  nop
