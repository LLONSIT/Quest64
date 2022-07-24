.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel memcpy
/* 40720 8003FB20 00801025 */  or         $v0, $a0, $zero
/* 40724 8003FB24 10C00007 */  beqz       $a2, .L8003FB44
/* 40728 8003FB28 00A01825 */   or        $v1, $a1, $zero
.L8003FB2C:
/* 4072C 8003FB2C 906E0000 */  lbu        $t6, 0x0($v1)
/* 40730 8003FB30 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 40734 8003FB34 24420001 */  addiu      $v0, $v0, 0x1
/* 40738 8003FB38 24630001 */  addiu      $v1, $v1, 0x1
/* 4073C 8003FB3C 14C0FFFB */  bnez       $a2, .L8003FB2C
/* 40740 8003FB40 A04EFFFF */   sb        $t6, -0x1($v0)
.L8003FB44:
/* 40744 8003FB44 03E00008 */  jr         $ra
/* 40748 8003FB48 00801025 */   or        $v0, $a0, $zero

glabel strlen
/* 4074C 8003FB4C 908E0000 */  lbu        $t6, 0x0($a0)
/* 40750 8003FB50 00801825 */  or         $v1, $a0, $zero
/* 40754 8003FB54 11C00005 */  beqz       $t6, .L8003FB6C
/* 40758 8003FB58 00000000 */   nop
/* 4075C 8003FB5C 906F0001 */  lbu        $t7, 0x1($v1)
.L8003FB60:
/* 40760 8003FB60 24630001 */  addiu      $v1, $v1, 0x1
/* 40764 8003FB64 55E0FFFE */  bnel       $t7, $zero, .L8003FB60
/* 40768 8003FB68 906F0001 */   lbu       $t7, 0x1($v1)
.L8003FB6C:
/* 4076C 8003FB6C 03E00008 */  jr         $ra
/* 40770 8003FB70 00641023 */   subu      $v0, $v1, $a0

glabel strchr
/* 40774 8003FB74 90830000 */  lbu        $v1, 0x0($a0)
/* 40778 8003FB78 30AE00FF */  andi       $t6, $a1, 0xFF
/* 4077C 8003FB7C 30A200FF */  andi       $v0, $a1, 0xFF
/* 40780 8003FB80 51C3000A */  beql       $t6, $v1, .L8003FBAC
/* 40784 8003FB84 00801025 */   or        $v0, $a0, $zero
.L8003FB88:
/* 40788 8003FB88 54600004 */  bnel       $v1, $zero, .L8003FB9C
/* 4078C 8003FB8C 90830001 */   lbu       $v1, 0x1($a0)
/* 40790 8003FB90 03E00008 */  jr         $ra
/* 40794 8003FB94 00001025 */   or        $v0, $zero, $zero
/* 40798 8003FB98 90830001 */  lbu        $v1, 0x1($a0)
.L8003FB9C:
/* 4079C 8003FB9C 24840001 */  addiu      $a0, $a0, 0x1
/* 407A0 8003FBA0 1443FFF9 */  bne        $v0, $v1, .L8003FB88
/* 407A4 8003FBA4 00000000 */   nop
/* 407A8 8003FBA8 00801025 */  or         $v0, $a0, $zero
.L8003FBAC:
/* 407AC 8003FBAC 03E00008 */  jr         $ra
/* 407B0 8003FBB0 00000000 */   nop
/* 407B4 8003FBB4 00000000 */  nop
/* 407B8 8003FBB8 00000000 */  nop
/* 407BC 8003FBBC 00000000 */  nop
