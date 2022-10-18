.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSndpSetPan
/* 3A670 80039A70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3A674 80039A74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A678 80039A78 AFA50034 */  sw         $a1, 0x34($sp)
/* 3A67C 80039A7C 8C820040 */  lw         $v0, 0x40($a0)
/* 3A680 80039A80 00A04025 */  or         $t0, $a1, $zero
/* 3A684 80039A84 240E0002 */  addiu      $t6, $zero, 0x2
/* 3A688 80039A88 A7AE0020 */  sh         $t6, 0x20($sp)
/* 3A68C 80039A8C A3A80028 */  sb         $t0, 0x28($sp)
/* 3A690 80039A90 8C8F003C */  lw         $t7, 0x3C($a0)
/* 3A694 80039A94 27A50020 */  addiu      $a1, $sp, 0x20
/* 3A698 80039A98 24840014 */  addiu      $a0, $a0, 0x14
/* 3A69C 80039A9C 000FC080 */  sll        $t8, $t7, 2
/* 3A6A0 80039AA0 030FC023 */  subu       $t8, $t8, $t7
/* 3A6A4 80039AA4 0018C100 */  sll        $t8, $t8, 4
/* 3A6A8 80039AA8 0302C821 */  addu       $t9, $t8, $v0
/* 3A6AC 80039AAC AFB90024 */  sw         $t9, 0x24($sp)
/* 3A6B0 80039AB0 0C00FF9B */  jal        alEvtqPostEvent
/* 3A6B4 80039AB4 00003025 */   or        $a2, $zero, $zero
/* 3A6B8 80039AB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A6BC 80039ABC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3A6C0 80039AC0 03E00008 */  jr         $ra
/* 3A6C4 80039AC4 00000000 */   nop
/* 3A6C8 80039AC8 00000000 */  nop
/* 3A6CC 80039ACC 00000000 */  nop
