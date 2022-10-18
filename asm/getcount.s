.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel osGetCount
/* 3F990 8003ED90 40024800 */  mfc0       $v0, $9
/* 3F994 8003ED94 03E00008 */  jr         $ra
/* 3F998 8003ED98 00000000 */   nop
/* 3F99C 8003ED9C 00000000 */  nop
