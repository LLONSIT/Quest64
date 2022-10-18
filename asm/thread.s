.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osDequeueThread
/* 3E110 8003D510 00803025 */  or         $a2, $a0, $zero
/* 3E114 8003D514 8CC70000 */  lw         $a3, 0x0($a2)
/* 3E118 8003D518 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3E11C 8003D51C 10E0000A */  beqz       $a3, .L8003D548
/* 3E120 8003D520 00000000 */   nop
.L8003D524:
/* 3E124 8003D524 14E50004 */  bne        $a3, $a1, .L8003D538
/* 3E128 8003D528 00000000 */   nop
/* 3E12C 8003D52C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 3E130 8003D530 10000005 */  b          .L8003D548
/* 3E134 8003D534 ACCE0000 */   sw        $t6, 0x0($a2)
.L8003D538:
/* 3E138 8003D538 00E03025 */  or         $a2, $a3, $zero
/* 3E13C 8003D53C 8CC70000 */  lw         $a3, 0x0($a2)
/* 3E140 8003D540 14E0FFF8 */  bnez       $a3, .L8003D524
/* 3E144 8003D544 00000000 */   nop
.L8003D548:
/* 3E148 8003D548 03E00008 */  jr         $ra
/* 3E14C 8003D54C 27BD0008 */   addiu     $sp, $sp, 0x8
