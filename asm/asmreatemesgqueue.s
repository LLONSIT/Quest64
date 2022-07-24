.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osCreateMesgQueue
/* 34B10 80033F10 3C0E8007 */  lui        $t6, %hi(D_800709F0)
/* 34B14 80033F14 3C0F8007 */  lui        $t7, %hi(D_800709F0)
/* 34B18 80033F18 25CE09F0 */  addiu      $t6, $t6, %lo(D_800709F0)
/* 34B1C 80033F1C 25EF09F0 */  addiu      $t7, $t7, %lo(D_800709F0)
/* 34B20 80033F20 AC8E0000 */  sw         $t6, 0x0($a0)
/* 34B24 80033F24 AC8F0004 */  sw         $t7, 0x4($a0)
/* 34B28 80033F28 AC800008 */  sw         $zero, 0x8($a0)
/* 34B2C 80033F2C AC80000C */  sw         $zero, 0xC($a0)
/* 34B30 80033F30 AC860010 */  sw         $a2, 0x10($a0)
/* 34B34 80033F34 03E00008 */  jr         $ra
/* 34B38 80033F38 AC850014 */   sw        $a1, 0x14($a0)
/* 34B3C 80033F3C 00000000 */  nop