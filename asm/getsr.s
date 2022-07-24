.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel __osGetSR
/* 3D5A0 8003C9A0 40026000 */  mfc0       $v0, $12
/* 3D5A4 8003C9A4 03E00008 */  jr         $ra
/* 3D5A8 8003C9A8 00000000 */   nop
/* 3D5AC 8003C9AC 00000000 */  nop
