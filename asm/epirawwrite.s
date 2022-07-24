.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osEPiRawWriteIo
/* 48790 80047B90 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 48794 80047B94 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* 48798 80047B98 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 4879C 80047B9C 30EF0003 */  andi       $t7, $a3, 0x3
/* 487A0 80047BA0 11E00006 */  beqz       $t7, .L80047BBC
/* 487A4 80047BA4 00000000 */   nop
.L80047BA8:
/* 487A8 80047BA8 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 487AC 80047BAC 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* 487B0 80047BB0 30F90003 */  andi       $t9, $a3, 0x3
/* 487B4 80047BB4 1720FFFC */  bnez       $t9, .L80047BA8
/* 487B8 80047BB8 00000000 */   nop
.L80047BBC:
/* 487BC 80047BBC 8C88000C */  lw         $t0, 0xC($a0)
/* 487C0 80047BC0 3C01A000 */  lui        $at, (0xA0000000 >> 16)
/* 487C4 80047BC4 27BD0008 */  addiu      $sp, $sp, 0x8
/* 487C8 80047BC8 01054825 */  or         $t1, $t0, $a1
/* 487CC 80047BCC 01215025 */  or         $t2, $t1, $at
/* 487D0 80047BD0 AD460000 */  sw         $a2, 0x0($t2)
/* 487D4 80047BD4 03E00008 */  jr         $ra
/* 487D8 80047BD8 00001025 */   or        $v0, $zero, $zero
/* 487DC 80047BDC 00000000 */  nop
