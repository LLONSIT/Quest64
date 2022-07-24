.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynSetFXMix
/* 452C0 800446C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 452C4 800446C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 452C8 800446C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 452CC 800446CC AFA60020 */  sw         $a2, 0x20($sp)
/* 452D0 800446D0 8CAE0008 */  lw         $t6, 0x8($a1)
/* 452D4 800446D4 51C0001C */  beql       $t6, $zero, .L80044748
/* 452D8 800446D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 452DC 800446DC 0C00DA8C */  jal        __allocParam
/* 452E0 800446E0 AFA5001C */   sw        $a1, 0x1C($sp)
/* 452E4 800446E4 8FA7001C */  lw         $a3, 0x1C($sp)
/* 452E8 800446E8 10400016 */  beqz       $v0, .L80044744
/* 452EC 800446EC 00403025 */   or        $a2, $v0, $zero
/* 452F0 800446F0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 452F4 800446F4 8CF90008 */  lw         $t9, 0x8($a3)
/* 452F8 800446F8 240A0010 */  addiu      $t2, $zero, 0x10
/* 452FC 800446FC 8DF8001C */  lw         $t8, 0x1C($t7)
/* 45300 80044700 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 45304 80044704 A44A0008 */  sh         $t2, 0x8($v0)
/* 45308 80044708 03084821 */  addu       $t1, $t8, $t0
/* 4530C 8004470C AC490004 */  sw         $t1, 0x4($v0)
/* 45310 80044710 93A30023 */  lbu        $v1, 0x23($sp)
/* 45314 80044714 04610003 */  bgez       $v1, .L80044724
/* 45318 80044718 00035823 */   negu      $t3, $v1
/* 4531C 8004471C 10000002 */  b          .L80044728
/* 45320 80044720 AC4B000C */   sw        $t3, 0xC($v0)
.L80044724:
/* 45324 80044724 AC43000C */  sw         $v1, 0xC($v0)
.L80044728:
/* 45328 80044728 ACC00000 */  sw         $zero, 0x0($a2)
/* 4532C 8004472C 8CEC0008 */  lw         $t4, 0x8($a3)
/* 45330 80044730 24050003 */  addiu      $a1, $zero, 0x3
/* 45334 80044734 8D84000C */  lw         $a0, 0xC($t4)
/* 45338 80044738 8C990008 */  lw         $t9, 0x8($a0)
/* 4533C 8004473C 0320F809 */  jalr       $t9
/* 45340 80044740 00000000 */   nop
.L80044744:
/* 45344 80044744 8FBF0014 */  lw         $ra, 0x14($sp)
.L80044748:
/* 45348 80044748 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4534C 8004474C 03E00008 */  jr         $ra
/* 45350 80044750 00000000 */   nop
/* 45354 80044754 00000000 */  nop
/* 45358 80044758 00000000 */  nop
/* 4535C 8004475C 00000000 */  nop
