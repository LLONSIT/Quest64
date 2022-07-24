.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSetMode
/* 357A0 80034BA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 357A4 80034BA4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 357A8 80034BA8 AFA40028 */  sw         $a0, 0x28($sp)
/* 357AC 80034BAC 0C00F534 */  jal        __osDisableInt
/* 357B0 80034BB0 AFB00018 */   sw        $s0, 0x18($sp)
/* 357B4 80034BB4 3C0F8007 */  lui        $t7, %hi(D_80070A84)
/* 357B8 80034BB8 8DEF0A84 */  lw         $t7, %lo(D_80070A84)($t7)
/* 357BC 80034BBC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 357C0 80034BC0 3C198007 */  lui        $t9, %hi(D_80070A84)
/* 357C4 80034BC4 24180001 */  addiu      $t8, $zero, 0x1
/* 357C8 80034BC8 ADEE0008 */  sw         $t6, 0x8($t7)
/* 357CC 80034BCC 8F390A84 */  lw         $t9, %lo(D_80070A84)($t9)
/* 357D0 80034BD0 3C088007 */  lui        $t0, %hi(D_80070A84)
/* 357D4 80034BD4 00408025 */  or         $s0, $v0, $zero
/* 357D8 80034BD8 A7380000 */  sh         $t8, 0x0($t9)
/* 357DC 80034BDC 8D080A84 */  lw         $t0, %lo(D_80070A84)($t0)
/* 357E0 80034BE0 02002025 */  or         $a0, $s0, $zero
/* 357E4 80034BE4 8D090008 */  lw         $t1, 0x8($t0)
/* 357E8 80034BE8 8D2A0004 */  lw         $t2, 0x4($t1)
/* 357EC 80034BEC 0C00F53C */  jal        __osRestoreInt
/* 357F0 80034BF0 AD0A000C */   sw        $t2, 0xC($t0)
/* 357F4 80034BF4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 357F8 80034BF8 8FB00018 */  lw         $s0, 0x18($sp)
/* 357FC 80034BFC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 35800 80034C00 03E00008 */  jr         $ra
/* 35804 80034C04 00000000 */   nop
/* 35808 80034C08 00000000 */  nop
/* 3580C 80034C0C 00000000 */  nop
