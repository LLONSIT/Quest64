.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSynStartVoice
/* 45360 80044760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 45364 80044764 AFBF0014 */  sw         $ra, 0x14($sp)
/* 45368 80044768 AFA40018 */  sw         $a0, 0x18($sp)
/* 4536C 8004476C AFA60020 */  sw         $a2, 0x20($sp)
/* 45370 80044770 8CAE0008 */  lw         $t6, 0x8($a1)
/* 45374 80044774 51C0001A */  beql       $t6, $zero, .L800447E0
/* 45378 80044778 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4537C 8004477C 0C00DA8C */  jal        __allocParam
/* 45380 80044780 AFA5001C */   sw        $a1, 0x1C($sp)
/* 45384 80044784 8FA7001C */  lw         $a3, 0x1C($sp)
/* 45388 80044788 10400014 */  beqz       $v0, .L800447DC
/* 4538C 8004478C 00403025 */   or        $a2, $v0, $zero
/* 45390 80044790 8FAF0018 */  lw         $t7, 0x18($sp)
/* 45394 80044794 8CF90008 */  lw         $t9, 0x8($a3)
/* 45398 80044798 240A000E */  addiu      $t2, $zero, 0xE
/* 4539C 8004479C 8DF8001C */  lw         $t8, 0x1C($t7)
/* 453A0 800447A0 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 453A4 800447A4 A44A0008 */  sh         $t2, 0x8($v0)
/* 453A8 800447A8 24050003 */  addiu      $a1, $zero, 0x3
/* 453AC 800447AC 03084821 */  addu       $t1, $t8, $t0
/* 453B0 800447B0 AC490004 */  sw         $t1, 0x4($v0)
/* 453B4 800447B4 8FAB0020 */  lw         $t3, 0x20($sp)
/* 453B8 800447B8 AC400000 */  sw         $zero, 0x0($v0)
/* 453BC 800447BC AC4B000C */  sw         $t3, 0xC($v0)
/* 453C0 800447C0 84EC001A */  lh         $t4, 0x1A($a3)
/* 453C4 800447C4 A44C000A */  sh         $t4, 0xA($v0)
/* 453C8 800447C8 8CED0008 */  lw         $t5, 0x8($a3)
/* 453CC 800447CC 8DA4000C */  lw         $a0, 0xC($t5)
/* 453D0 800447D0 8C990008 */  lw         $t9, 0x8($a0)
/* 453D4 800447D4 0320F809 */  jalr       $t9
/* 453D8 800447D8 00000000 */   nop
.L800447DC:
/* 453DC 800447DC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800447E0:
/* 453E0 800447E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 453E4 800447E4 03E00008 */  jr         $ra
/* 453E8 800447E8 00000000 */   nop
/* 453EC 800447EC 00000000 */  nop
