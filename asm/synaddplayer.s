.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynAddPlayer
/* 44C10 80044010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 44C14 80044014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44C18 80044018 00803025 */  or         $a2, $a0, $zero
/* 44C1C 8004401C AFA60018 */  sw         $a2, 0x18($sp)
/* 44C20 80044020 24040001 */  addiu      $a0, $zero, 0x1
/* 44C24 80044024 0C00D058 */  jal        osSetIntMask
/* 44C28 80044028 AFA5001C */   sw        $a1, 0x1C($sp)
/* 44C2C 8004402C 8FA60018 */  lw         $a2, 0x18($sp)
/* 44C30 80044030 8FA5001C */  lw         $a1, 0x1C($sp)
/* 44C34 80044034 00402025 */  or         $a0, $v0, $zero
/* 44C38 80044038 8CCE0020 */  lw         $t6, 0x20($a2)
/* 44C3C 8004403C ACAE0010 */  sw         $t6, 0x10($a1)
/* 44C40 80044040 8CCF0000 */  lw         $t7, 0x0($a2)
/* 44C44 80044044 ACAF0000 */  sw         $t7, 0x0($a1)
/* 44C48 80044048 0C00D058 */  jal        osSetIntMask
/* 44C4C 8004404C ACC50000 */   sw        $a1, 0x0($a2)
/* 44C50 80044050 8FBF0014 */  lw         $ra, 0x14($sp)
/* 44C54 80044054 27BD0018 */  addiu      $sp, $sp, 0x18
/* 44C58 80044058 03E00008 */  jr         $ra
/* 44C5C 8004405C 00000000 */   nop
