.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSwapBuffer
/* 35350 80034750 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35354 80034754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 35358 80034758 0C00F534 */  jal        __osDisableInt
/* 3535C 8003475C AFA40020 */   sw        $a0, 0x20($sp)
/* 35360 80034760 3C0F8007 */  lui        $t7, %hi(D_80070A84)
/* 35364 80034764 8DEF0A84 */  lw         $t7, %lo(D_80070A84)($t7)
/* 35368 80034768 8FAE0020 */  lw         $t6, 0x20($sp)
/* 3536C 8003476C AFA2001C */  sw         $v0, 0x1C($sp)
/* 35370 80034770 3C188007 */  lui        $t8, %hi(D_80070A84)
/* 35374 80034774 ADEE0004 */  sw         $t6, 0x4($t7)
/* 35378 80034778 8F180A84 */  lw         $t8, %lo(D_80070A84)($t8)
/* 3537C 8003477C 97190000 */  lhu        $t9, 0x0($t8)
/* 35380 80034780 37280010 */  ori        $t0, $t9, 0x10
/* 35384 80034784 A7080000 */  sh         $t0, 0x0($t8)
/* 35388 80034788 0C00F53C */  jal        __osRestoreInt
/* 3538C 8003478C 8FA4001C */   lw        $a0, 0x1C($sp)
/* 35390 80034790 8FBF0014 */  lw         $ra, 0x14($sp)
/* 35394 80034794 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35398 80034798 03E00008 */  jr         $ra
/* 3539C 8003479C 00000000 */   nop
