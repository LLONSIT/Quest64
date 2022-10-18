.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alFilterNew
/* 496C0 80048AC0 AC800000 */  sw         $zero, 0x0($a0)
/* 496C4 80048AC4 AC850004 */  sw         $a1, 0x4($a0)
/* 496C8 80048AC8 AC860008 */  sw         $a2, 0x8($a0)
/* 496CC 80048ACC A480000C */  sh         $zero, 0xC($a0)
/* 496D0 80048AD0 A480000E */  sh         $zero, 0xE($a0)
/* 496D4 80048AD4 03E00008 */  jr         $ra
/* 496D8 80048AD8 AC870010 */   sw        $a3, 0x10($a0)
/* 496DC 80048ADC 00000000 */  nop
