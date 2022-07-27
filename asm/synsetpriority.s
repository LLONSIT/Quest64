.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynSetPriority
/* 4A950 80049D50 AFA40000 */  sw         $a0, 0x0($sp)
/* 4A954 80049D54 AFA60008 */  sw         $a2, 0x8($sp)
/* 4A958 80049D58 03E00008 */  jr         $ra
/* 4A95C 80049D5C A4A60016 */   sh        $a2, 0x16($a1)

glabel func_80049D60
/* 4A960 80049D60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4A964 80049D64 AFA40030 */  sw         $a0, 0x30($sp)
/* 4A968 80049D68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4A96C 80049D6C AFA60038 */  sw         $a2, 0x38($sp)
/* 4A970 80049D70 AFA7003C */  sw         $a3, 0x3C($sp)
/* 4A974 80049D74 00C02025 */  or         $a0, $a2, $zero
/* 4A978 80049D78 00E02825 */  or         $a1, $a3, $zero
/* 4A97C 80049D7C 8FA70044 */  lw         $a3, 0x44($sp)
/* 4A980 80049D80 0C00E6F7 */  jal        func_80039BDC
/* 4A984 80049D84 8FA60040 */   lw        $a2, 0x40($sp)
/* 4A988 80049D88 AFA20020 */  sw         $v0, 0x20($sp)
/* 4A98C 80049D8C AFA30024 */  sw         $v1, 0x24($sp)
/* 4A990 80049D90 8FA40040 */  lw         $a0, 0x40($sp)
/* 4A994 80049D94 8FA50044 */  lw         $a1, 0x44($sp)
/* 4A998 80049D98 00403025 */  or         $a2, $v0, $zero
/* 4A99C 80049D9C 0C00E70E */  jal        __ll_mul
/* 4A9A0 80049DA0 00603825 */   or        $a3, $v1, $zero
/* 4A9A4 80049DA4 8FAE0038 */  lw         $t6, 0x38($sp)
/* 4A9A8 80049DA8 8FAF003C */  lw         $t7, 0x3C($sp)
/* 4A9AC 80049DAC 8FA80020 */  lw         $t0, 0x20($sp)
/* 4A9B0 80049DB0 01C2C023 */  subu       $t8, $t6, $v0
/* 4A9B4 80049DB4 01E3082B */  sltu       $at, $t7, $v1
/* 4A9B8 80049DB8 0301C023 */  subu       $t8, $t8, $at
/* 4A9BC 80049DBC 01E3C823 */  subu       $t9, $t7, $v1
/* 4A9C0 80049DC0 AFB9002C */  sw         $t9, 0x2C($sp)
/* 4A9C4 80049DC4 AFB80028 */  sw         $t8, 0x28($sp)
/* 4A9C8 80049DC8 1D000017 */  bgtz       $t0, .L80049E28
/* 4A9CC 80049DCC 8FA90024 */   lw        $t1, 0x24($sp)
/* 4A9D0 80049DD0 05000003 */  bltz       $t0, .L80049DE0
/* 4A9D4 80049DD4 00000000 */   nop
/* 4A9D8 80049DD8 10000014 */  b          .L80049E2C
/* 4A9DC 80049DDC 27A80020 */   addiu     $t0, $sp, 0x20
.L80049DE0:
/* 4A9E0 80049DE0 07020012 */  bltzl      $t8, .L80049E2C
/* 4A9E4 80049DE4 27A80020 */   addiu     $t0, $sp, 0x20
/* 4A9E8 80049DE8 1F000003 */  bgtz       $t8, .L80049DF8
/* 4A9EC 80049DEC 252B0001 */   addiu     $t3, $t1, 0x1
/* 4A9F0 80049DF0 5320000E */  beql       $t9, $zero, .L80049E2C
/* 4A9F4 80049DF4 27A80020 */   addiu     $t0, $sp, 0x20
.L80049DF8:
/* 4A9F8 80049DF8 8FAC0040 */  lw         $t4, 0x40($sp)
/* 4A9FC 80049DFC 8FAD0044 */  lw         $t5, 0x44($sp)
/* 4AA00 80049E00 2D610001 */  sltiu      $at, $t3, 0x1
/* 4AA04 80049E04 01015021 */  addu       $t2, $t0, $at
/* 4AA08 80049E08 030C7023 */  subu       $t6, $t8, $t4
/* 4AA0C 80049E0C 032D082B */  sltu       $at, $t9, $t5
/* 4AA10 80049E10 01C17023 */  subu       $t6, $t6, $at
/* 4AA14 80049E14 032D7823 */  subu       $t7, $t9, $t5
/* 4AA18 80049E18 AFAA0020 */  sw         $t2, 0x20($sp)
/* 4AA1C 80049E1C AFAB0024 */  sw         $t3, 0x24($sp)
/* 4AA20 80049E20 AFAF002C */  sw         $t7, 0x2C($sp)
/* 4AA24 80049E24 AFAE0028 */  sw         $t6, 0x28($sp)
.L80049E28:
/* 4AA28 80049E28 27A80020 */  addiu      $t0, $sp, 0x20
.L80049E2C:
/* 4AA2C 80049E2C 8FA20030 */  lw         $v0, 0x30($sp)
/* 4AA30 80049E30 8D010000 */  lw         $at, 0x0($t0)
/* 4AA34 80049E34 AC410000 */  sw         $at, 0x0($v0)
/* 4AA38 80049E38 8D0B0004 */  lw         $t3, 0x4($t0)
/* 4AA3C 80049E3C AC4B0004 */  sw         $t3, 0x4($v0)
/* 4AA40 80049E40 8D010008 */  lw         $at, 0x8($t0)
/* 4AA44 80049E44 AC410008 */  sw         $at, 0x8($v0)
/* 4AA48 80049E48 8D0B000C */  lw         $t3, 0xC($t0)
/* 4AA4C 80049E4C AC4B000C */  sw         $t3, 0xC($v0)
/* 4AA50 80049E50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4AA54 80049E54 27BD0030 */  addiu      $sp, $sp, 0x30
/* 4AA58 80049E58 03E00008 */  jr         $ra
/* 4AA5C 80049E5C 00000000 */   nop

glabel ldiv
/* 4AA60 80049E60 00A6001A */  div        $zero, $a1, $a2
/* 4AA64 80049E64 00001012 */  mflo       $v0
/* 4AA68 80049E68 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 4AA6C 80049E6C 14C00002 */  bnez       $a2, .L80049E78
/* 4AA70 80049E70 00000000 */   nop
/* 4AA74 80049E74 0007000D */  break      7
.L80049E78:
/* 4AA78 80049E78 2401FFFF */  addiu      $at, $zero, -0x1
/* 4AA7C 80049E7C 14C10004 */  bne        $a2, $at, .L80049E90
/* 4AA80 80049E80 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4AA84 80049E84 14A10002 */  bne        $a1, $at, .L80049E90
/* 4AA88 80049E88 00000000 */   nop
/* 4AA8C 80049E8C 0006000D */  break      6
.L80049E90:
/* 4AA90 80049E90 00C20019 */  multu      $a2, $v0
/* 4AA94 80049E94 AFA20000 */  sw         $v0, 0x0($sp)
/* 4AA98 80049E98 27AF0000 */  addiu      $t7, $sp, 0x0
/* 4AA9C 80049E9C 00007012 */  mflo       $t6
/* 4AAA0 80049EA0 00AE1823 */  subu       $v1, $a1, $t6
/* 4AAA4 80049EA4 04410008 */  bgez       $v0, .L80049EC8
/* 4AAA8 80049EA8 AFA30004 */   sw        $v1, 0x4($sp)
/* 4AAAC 80049EAC AFA20000 */  sw         $v0, 0x0($sp)
/* 4AAB0 80049EB0 18600005 */  blez       $v1, .L80049EC8
/* 4AAB4 80049EB4 AFA30004 */   sw        $v1, 0x4($sp)
/* 4AAB8 80049EB8 24420001 */  addiu      $v0, $v0, 0x1
/* 4AABC 80049EBC 00661823 */  subu       $v1, $v1, $a2
/* 4AAC0 80049EC0 AFA30004 */  sw         $v1, 0x4($sp)
/* 4AAC4 80049EC4 AFA20000 */  sw         $v0, 0x0($sp)
.L80049EC8:
/* 4AAC8 80049EC8 8DE10000 */  lw         $at, 0x0($t7)
/* 4AACC 80049ECC 00801025 */  or         $v0, $a0, $zero
/* 4AAD0 80049ED0 AC810000 */  sw         $at, 0x0($a0)
/* 4AAD4 80049ED4 8DE80004 */  lw         $t0, 0x4($t7)
/* 4AAD8 80049ED8 27BD0008 */  addiu      $sp, $sp, 0x8
/* 4AADC 80049EDC 03E00008 */  jr         $ra
/* 4AAE0 80049EE0 AC880004 */   sw        $t0, 0x4($a0)
/* 4AAE4 80049EE4 00000000 */  nop
/* 4AAE8 80049EE8 00000000 */  nop
/* 4AAEC 80049EEC 00000000 */  nop
