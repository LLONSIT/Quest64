.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpRawWriteIo
/* 3D610 8003CA10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3D614 8003CA14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D618 8003CA18 AFA40018 */  sw         $a0, 0x18($sp)
/* 3D61C 8003CA1C 0C011C60 */  jal        __osSiDeviceBusy
/* 3D620 8003CA20 AFA5001C */   sw        $a1, 0x1C($sp)
/* 3D624 8003CA24 10400003 */  beqz       $v0, .L8003CA34
/* 3D628 8003CA28 00000000 */   nop
/* 3D62C 8003CA2C 10000007 */  b          .L8003CA4C
/* 3D630 8003CA30 2402FFFF */   addiu     $v0, $zero, -0x1
.L8003CA34:
/* 3D634 8003CA34 8FAF0018 */  lw         $t7, 0x18($sp)
/* 3D638 8003CA38 8FAE001C */  lw         $t6, 0x1C($sp)
/* 3D63C 8003CA3C 3C01A000 */  lui        $at, (0xA0000000 >> 16)
/* 3D640 8003CA40 01E1C025 */  or         $t8, $t7, $at
/* 3D644 8003CA44 00001025 */  or         $v0, $zero, $zero
/* 3D648 8003CA48 AF0E0000 */  sw         $t6, 0x0($t8)
.L8003CA4C:
/* 3D64C 8003CA4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D650 8003CA50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3D654 8003CA54 03E00008 */  jr         $ra
/* 3D658 8003CA58 00000000 */   nop
/* 3D65C 8003CA5C 00000000 */  nop
