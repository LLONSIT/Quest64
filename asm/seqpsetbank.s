.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSeqpSetBank
/* 39150 80038550 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 39154 80038554 AFBF0014 */  sw         $ra, 0x14($sp)
/* 39158 80038558 240E000E */  addiu      $t6, $zero, 0xE
/* 3915C 8003855C AFA5001C */  sw         $a1, 0x1C($sp)
/* 39160 80038560 A7AE0018 */  sh         $t6, 0x18($sp)
/* 39164 80038564 27A50018 */  addiu      $a1, $sp, 0x18
/* 39168 80038568 24840048 */  addiu      $a0, $a0, 0x48
/* 3916C 8003856C 0C00FF9B */  jal        alEvtqPostEvent
/* 39170 80038570 00003025 */   or        $a2, $zero, $zero
/* 39174 80038574 8FBF0014 */  lw         $ra, 0x14($sp)
/* 39178 80038578 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3917C 8003857C 03E00008 */  jr         $ra
/* 39180 80038580 00000000 */   nop
/* 39184 80038584 00000000 */  nop
/* 39188 80038588 00000000 */  nop
/* 3918C 8003858C 00000000 */  nop
