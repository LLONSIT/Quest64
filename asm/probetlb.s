.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel __osProbeTLB
/* 3F9A0 8003EDA0 40085000 */  mfc0       $t0, $10
/* 3F9A4 8003EDA4 310900FF */  andi       $t1, $t0, 0xFF
/* 3F9A8 8003EDA8 2401E000 */  addiu      $at, $zero, -0x2000
/* 3F9AC 8003EDAC 00815024 */  and        $t2, $a0, $at
/* 3F9B0 8003EDB0 012A4825 */  or         $t1, $t1, $t2
/* 3F9B4 8003EDB4 40895000 */  mtc0       $t1, $10
/* 3F9B8 8003EDB8 00000000 */  nop
/* 3F9BC 8003EDBC 00000000 */  nop
/* 3F9C0 8003EDC0 00000000 */  nop
/* 3F9C4 8003EDC4 42000008 */  tlbp
/* 3F9C8 8003EDC8 00000000 */  nop
/* 3F9CC 8003EDCC 00000000 */  nop
/* 3F9D0 8003EDD0 400B0000 */  mfc0       $t3, $0
/* 3F9D4 8003EDD4 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 3F9D8 8003EDD8 01615824 */  and        $t3, $t3, $at
/* 3F9DC 8003EDDC 1560001A */  bnez       $t3, .L8003EE48
/* 3F9E0 8003EDE0 00000000 */   nop
/* 3F9E4 8003EDE4 42000001 */  tlbr
/* 3F9E8 8003EDE8 00000000 */  nop
/* 3F9EC 8003EDEC 00000000 */  nop
/* 3F9F0 8003EDF0 00000000 */  nop
/* 3F9F4 8003EDF4 400B2800 */  mfc0       $t3, $5
/* 3F9F8 8003EDF8 216B2000 */  addi       $t3, $t3, 0x2000
/* 3F9FC 8003EDFC 000B5842 */  srl        $t3, $t3, 1
/* 3FA00 8003EE00 01646024 */  and        $t4, $t3, $a0
/* 3FA04 8003EE04 15800004 */  bnez       $t4, .L8003EE18
/* 3FA08 8003EE08 216BFFFF */   addi      $t3, $t3, -0x1
/* 3FA0C 8003EE0C 40021000 */  mfc0       $v0, $2
/* 3FA10 8003EE10 10000002 */  b          .L8003EE1C
/* 3FA14 8003EE14 00000000 */   nop
.L8003EE18:
/* 3FA18 8003EE18 40021800 */  mfc0       $v0, $3
.L8003EE1C:
/* 3FA1C 8003EE1C 304D0002 */  andi       $t5, $v0, 0x2
/* 3FA20 8003EE20 11A00009 */  beqz       $t5, .L8003EE48
/* 3FA24 8003EE24 00000000 */   nop
/* 3FA28 8003EE28 3C013FFF */  lui        $at, (0x3FFFFFC0 >> 16)
/* 3FA2C 8003EE2C 3421FFC0 */  ori        $at, $at, (0x3FFFFFC0 & 0xFFFF)
/* 3FA30 8003EE30 00411024 */  and        $v0, $v0, $at
/* 3FA34 8003EE34 00021180 */  sll        $v0, $v0, 6
/* 3FA38 8003EE38 008B6824 */  and        $t5, $a0, $t3
/* 3FA3C 8003EE3C 004D1020 */  add        $v0, $v0, $t5
/* 3FA40 8003EE40 10000002 */  b          .L8003EE4C
/* 3FA44 8003EE44 00000000 */   nop
.L8003EE48:
/* 3FA48 8003EE48 2402FFFF */  addiu      $v0, $zero, -0x1
.L8003EE4C:
/* 3FA4C 8003EE4C 40885000 */  mtc0       $t0, $10
/* 3FA50 8003EE50 03E00008 */  jr         $ra
/* 3FA54 8003EE54 00000000 */   nop
/* 3FA58 8003EE58 00000000 */  nop
/* 3FA5C 8003EE5C 00000000 */  nop
