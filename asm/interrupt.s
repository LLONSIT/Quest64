.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel __osDisableInt
/* 3E0D0 8003D4D0 40086000 */  mfc0       $t0, $12
/* 3E0D4 8003D4D4 2401FFFE */  addiu      $at, $zero, -0x2
/* 3E0D8 8003D4D8 01014824 */  and        $t1, $t0, $at
/* 3E0DC 8003D4DC 40896000 */  mtc0       $t1, $12
/* 3E0E0 8003D4E0 31020001 */  andi       $v0, $t0, 0x1
/* 3E0E4 8003D4E4 00000000 */  nop
/* 3E0E8 8003D4E8 03E00008 */  jr         $ra
/* 3E0EC 8003D4EC 00000000 */   nop

# Handwritten function
glabel __osRestoreInt
/* 3E0F0 8003D4F0 40086000 */  mfc0       $t0, $12
/* 3E0F4 8003D4F4 01044025 */  or         $t0, $t0, $a0
/* 3E0F8 8003D4F8 40886000 */  mtc0       $t0, $12
/* 3E0FC 8003D4FC 00000000 */  nop
/* 3E100 8003D500 00000000 */  nop
/* 3E104 8003D504 03E00008 */  jr         $ra
/* 3E108 8003D508 00000000 */   nop
/* 3E10C 8003D50C 00000000 */  nop
