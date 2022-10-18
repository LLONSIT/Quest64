.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osSetEventMesg
/* 34BB0 80033FB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 34BB4 80033FB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 34BB8 80033FB8 AFA40028 */  sw         $a0, 0x28($sp)
/* 34BBC 80033FBC AFA5002C */  sw         $a1, 0x2C($sp)
/* 34BC0 80033FC0 AFA60030 */  sw         $a2, 0x30($sp)
/* 34BC4 80033FC4 0C00F534 */  jal        __osDisableInt
/* 34BC8 80033FC8 AFB00018 */   sw        $s0, 0x18($sp)
/* 34BCC 80033FCC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 34BD0 80033FD0 3C188009 */  lui        $t8, %hi(D_80093F20)
/* 34BD4 80033FD4 8FA8002C */  lw         $t0, 0x2C($sp)
/* 34BD8 80033FD8 27183F20 */  addiu      $t8, $t8, %lo(D_80093F20)
/* 34BDC 80033FDC 000E78C0 */  sll        $t7, $t6, 3
/* 34BE0 80033FE0 01F8C821 */  addu       $t9, $t7, $t8
/* 34BE4 80033FE4 AFB90020 */  sw         $t9, 0x20($sp)
/* 34BE8 80033FE8 AF280000 */  sw         $t0, 0x0($t9)
/* 34BEC 80033FEC 8FAA0020 */  lw         $t2, 0x20($sp)
/* 34BF0 80033FF0 8FA90030 */  lw         $t1, 0x30($sp)
/* 34BF4 80033FF4 00408025 */  or         $s0, $v0, $zero
/* 34BF8 80033FF8 02002025 */  or         $a0, $s0, $zero
/* 34BFC 80033FFC 0C00F53C */  jal        __osRestoreInt
/* 34C00 80034000 AD490004 */   sw        $t1, 0x4($t2)
/* 34C04 80034004 8FBF001C */  lw         $ra, 0x1C($sp)
/* 34C08 80034008 8FB00018 */  lw         $s0, 0x18($sp)
/* 34C0C 8003400C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 34C10 80034010 03E00008 */  jr         $ra
/* 34C14 80034014 00000000 */   nop
/* 34C18 80034018 00000000 */  nop
/* 34C1C 8003401C 00000000 */  nop
