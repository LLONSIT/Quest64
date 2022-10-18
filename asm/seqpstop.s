.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSeqpStop
/* 39CC0 800390C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 39CC4 800390C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 39CC8 800390C8 240E0011 */  addiu      $t6, $zero, 0x11
/* 39CCC 800390CC A7AE0018 */  sh         $t6, 0x18($sp)
/* 39CD0 800390D0 27A50018 */  addiu      $a1, $sp, 0x18
/* 39CD4 800390D4 24840048 */  addiu      $a0, $a0, 0x48
/* 39CD8 800390D8 0C00FF9B */  jal        alEvtqPostEvent
/* 39CDC 800390DC 00003025 */   or        $a2, $zero, $zero
/* 39CE0 800390E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 39CE4 800390E4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 39CE8 800390E8 03E00008 */  jr         $ra
/* 39CEC 800390EC 00000000 */   nop
