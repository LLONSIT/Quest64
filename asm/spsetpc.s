.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpSetPc
/* 3F120 8003E520 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 3F124 8003E524 8DC50010 */  lw         $a1, %lo(D_A4040010)($t6)
/* 3F128 8003E528 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3F12C 8003E52C 30AF0001 */  andi       $t7, $a1, 0x1
/* 3F130 8003E530 15E00003 */  bnez       $t7, .L8003E540
/* 3F134 8003E534 00000000 */   nop
/* 3F138 8003E538 10000004 */  b          .L8003E54C
/* 3F13C 8003E53C 2402FFFF */   addiu     $v0, $zero, -0x1
.L8003E540:
/* 3F140 8003E540 3C18A408 */  lui        $t8, %hi(D_A4080000)
/* 3F144 8003E544 AF040000 */  sw         $a0, %lo(D_A4080000)($t8)
/* 3F148 8003E548 00001025 */  or         $v0, $zero, $zero
.L8003E54C:
/* 3F14C 8003E54C 03E00008 */  jr         $ra
/* 3F150 8003E550 27BD0008 */   addiu     $sp, $sp, 0x8
/* 3F154 8003E554 00000000 */  nop
/* 3F158 8003E558 00000000 */  nop
/* 3F15C 8003E55C 00000000 */  nop