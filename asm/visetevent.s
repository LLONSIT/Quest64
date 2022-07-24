.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSetEvent
/* 34B40 80033F40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 34B44 80033F44 AFBF001C */  sw         $ra, 0x1C($sp)
/* 34B48 80033F48 AFA40028 */  sw         $a0, 0x28($sp)
/* 34B4C 80033F4C AFA5002C */  sw         $a1, 0x2C($sp)
/* 34B50 80033F50 AFA60030 */  sw         $a2, 0x30($sp)
/* 34B54 80033F54 0C00F534 */  jal        __osDisableInt
/* 34B58 80033F58 AFB00018 */   sw        $s0, 0x18($sp)
/* 34B5C 80033F5C 3C0F8007 */  lui        $t7, %hi(D_80070A84)
/* 34B60 80033F60 8DEF0A84 */  lw         $t7, %lo(D_80070A84)($t7)
/* 34B64 80033F64 8FAE0028 */  lw         $t6, 0x28($sp)
/* 34B68 80033F68 3C198007 */  lui        $t9, %hi(D_80070A84)
/* 34B6C 80033F6C 3C098007 */  lui        $t1, %hi(D_80070A84)
/* 34B70 80033F70 ADEE0010 */  sw         $t6, 0x10($t7)
/* 34B74 80033F74 8F390A84 */  lw         $t9, %lo(D_80070A84)($t9)
/* 34B78 80033F78 8FB8002C */  lw         $t8, 0x2C($sp)
/* 34B7C 80033F7C 00408025 */  or         $s0, $v0, $zero
/* 34B80 80033F80 02002025 */  or         $a0, $s0, $zero
/* 34B84 80033F84 AF380014 */  sw         $t8, 0x14($t9)
/* 34B88 80033F88 8D290A84 */  lw         $t1, %lo(D_80070A84)($t1)
/* 34B8C 80033F8C 8FA80030 */  lw         $t0, 0x30($sp)
/* 34B90 80033F90 0C00F53C */  jal        __osRestoreInt
/* 34B94 80033F94 A5280002 */   sh        $t0, 0x2($t1)
/* 34B98 80033F98 8FBF001C */  lw         $ra, 0x1C($sp)
/* 34B9C 80033F9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 34BA0 80033FA0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 34BA4 80033FA4 03E00008 */  jr         $ra
/* 34BA8 80033FA8 00000000 */   nop
/* 34BAC 80033FAC 00000000 */  nop
