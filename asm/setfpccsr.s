.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osSetFpcCsr
/* 3D5B0 8003C9B0 4442F800 */  cfc1       $v0, $31
/* 3D5B4 8003C9B4 44C4F800 */  ctc1       $a0, $31
/* 3D5B8 8003C9B8 03E00008 */  jr         $ra
/* 3D5BC 8003C9BC 00000000 */   nop
