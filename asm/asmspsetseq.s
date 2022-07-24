.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alCSPSetSeq
/* 39C50 80039050 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 39C54 80039054 AFBF0014 */  sw         $ra, 0x14($sp)
/* 39C58 80039058 240E000D */  addiu      $t6, $zero, 0xD
/* 39C5C 8003905C AFA5001C */  sw         $a1, 0x1C($sp)
/* 39C60 80039060 A7AE0018 */  sh         $t6, 0x18($sp)
/* 39C64 80039064 27A50018 */  addiu      $a1, $sp, 0x18
/* 39C68 80039068 24840048 */  addiu      $a0, $a0, 0x48
/* 39C6C 8003906C 0C00FF9B */  jal        alEvtqPostEvent
/* 39C70 80039070 00003025 */   or        $a2, $zero, $zero
/* 39C74 80039074 8FBF0014 */  lw         $ra, 0x14($sp)
/* 39C78 80039078 27BD0028 */  addiu      $sp, $sp, 0x28
/* 39C7C 8003907C 03E00008 */  jr         $ra
/* 39C80 80039080 00000000 */   nop
/* 39C84 80039084 00000000 */  nop
/* 39C88 80039088 00000000 */  nop
/* 39C8C 8003908C 00000000 */  nop