.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel _nsqrtf
/* 35B60 80034F60 03E00008 */  jr         $ra
/* 35B64 80034F64 46006004 */   sqrt.s    $f0, $f12
/* 35B68 80034F68 00000000 */  nop
/* 35B6C 80034F6C 00000000 */  nop
