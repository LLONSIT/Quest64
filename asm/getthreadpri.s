.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osGetThreadPri
/* 3E410 8003D810 14800003 */  bnez       $a0, .L8003D820
/* 3E414 8003D814 00000000 */   nop
/* 3E418 8003D818 3C048007 */  lui        $a0, %hi(D_80070A00)
/* 3E41C 8003D81C 8C840A00 */  lw         $a0, %lo(D_80070A00)($a0)
.L8003D820:
/* 3E420 8003D820 03E00008 */  jr         $ra
/* 3E424 8003D824 8C820004 */   lw        $v0, 0x4($a0)
/* 3E428 8003D828 00000000 */  nop
/* 3E42C 8003D82C 00000000 */  nop
