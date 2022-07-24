.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSetGlobalIntMask
/* 48830 80047C30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 48834 80047C34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 48838 80047C38 AFA40028 */  sw         $a0, 0x28($sp)
/* 4883C 80047C3C 0C00F534 */  jal        __osDisableInt
/* 48840 80047C40 AFB00018 */   sw        $s0, 0x18($sp)
/* 48844 80047C44 3C0E8007 */  lui        $t6, %hi(D_8006F410)
/* 48848 80047C48 8DCEF410 */  lw         $t6, %lo(D_8006F410)($t6)
/* 4884C 80047C4C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 48850 80047C50 00408025 */  or         $s0, $v0, $zero
/* 48854 80047C54 3C018007 */  lui        $at, %hi(D_8006F410)
/* 48858 80047C58 01CFC025 */  or         $t8, $t6, $t7
/* 4885C 80047C5C AC38F410 */  sw         $t8, %lo(D_8006F410)($at)
/* 48860 80047C60 0C00F53C */  jal        __osRestoreInt
/* 48864 80047C64 02002025 */   or        $a0, $s0, $zero
/* 48868 80047C68 8FBF001C */  lw         $ra, 0x1C($sp)
/* 4886C 80047C6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 48870 80047C70 27BD0028 */  addiu      $sp, $sp, 0x28
/* 48874 80047C74 03E00008 */  jr         $ra
/* 48878 80047C78 00000000 */   nop
/* 4887C 80047C7C 00000000 */  nop