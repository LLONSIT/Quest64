.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel __osSetCompare
/* 488D0 80047CD0 40845800 */  mtc0       $a0, $11
/* 488D4 80047CD4 03E00008 */  jr         $ra
/* 488D8 80047CD8 00000000 */   nop
/* 488DC 80047CDC 00000000 */  nop
