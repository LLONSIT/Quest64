.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynFreeVoice
/* 44CE0 800440E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 44CE4 800440E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44CE8 800440E8 8CA60008 */  lw         $a2, 0x8($a1)
/* 44CEC 800440EC 00804025 */  or         $t0, $a0, $zero
/* 44CF0 800440F0 00A03825 */  or         $a3, $a1, $zero
/* 44CF4 800440F4 50C00023 */  beql       $a2, $zero, .L80044184
/* 44CF8 800440F8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 44CFC 800440FC 8CCE00D8 */  lw         $t6, 0xD8($a2)
/* 44D00 80044100 51C0001A */  beql       $t6, $zero, .L8004416C
/* 44D04 80044104 01002025 */   or        $a0, $t0, $zero
/* 44D08 80044108 AFA5001C */  sw         $a1, 0x1C($sp)
/* 44D0C 8004410C 0C00DA8C */  jal        __allocParam
/* 44D10 80044110 AFA40018 */   sw        $a0, 0x18($sp)
/* 44D14 80044114 8FA7001C */  lw         $a3, 0x1C($sp)
/* 44D18 80044118 8FA80018 */  lw         $t0, 0x18($sp)
/* 44D1C 8004411C 10400018 */  beqz       $v0, .L80044180
/* 44D20 80044120 00403025 */   or        $a2, $v0, $zero
/* 44D24 80044124 8CF80008 */  lw         $t8, 0x8($a3)
/* 44D28 80044128 8D0F001C */  lw         $t7, 0x1C($t0)
/* 44D2C 8004412C 24050003 */  addiu      $a1, $zero, 0x3
/* 44D30 80044130 8F1900D8 */  lw         $t9, 0xD8($t8)
/* 44D34 80044134 A4400008 */  sh         $zero, 0x8($v0)
/* 44D38 80044138 01F94821 */  addu       $t1, $t7, $t9
/* 44D3C 8004413C AC490004 */  sw         $t1, 0x4($v0)
/* 44D40 80044140 8CEA0008 */  lw         $t2, 0x8($a3)
/* 44D44 80044144 AC4A000C */  sw         $t2, 0xC($v0)
/* 44D48 80044148 8CEB0008 */  lw         $t3, 0x8($a3)
/* 44D4C 8004414C 8D64000C */  lw         $a0, 0xC($t3)
/* 44D50 80044150 AFA7001C */  sw         $a3, 0x1C($sp)
/* 44D54 80044154 8C990008 */  lw         $t9, 0x8($a0)
/* 44D58 80044158 0320F809 */  jalr       $t9
/* 44D5C 8004415C 00000000 */   nop
/* 44D60 80044160 10000006 */  b          .L8004417C
/* 44D64 80044164 8FA7001C */   lw        $a3, 0x1C($sp)
/* 44D68 80044168 01002025 */  or         $a0, $t0, $zero
.L8004416C:
/* 44D6C 8004416C 00C02825 */  or         $a1, $a2, $zero
/* 44D70 80044170 0C00DA60 */  jal        _freePVoice
/* 44D74 80044174 AFA7001C */   sw        $a3, 0x1C($sp)
/* 44D78 80044178 8FA7001C */  lw         $a3, 0x1C($sp)
.L8004417C:
/* 44D7C 8004417C ACE00008 */  sw         $zero, 0x8($a3)
.L80044180:
/* 44D80 80044180 8FBF0014 */  lw         $ra, 0x14($sp)
.L80044184:
/* 44D84 80044184 27BD0018 */  addiu      $sp, $sp, 0x18
/* 44D88 80044188 03E00008 */  jr         $ra
/* 44D8C 8004418C 00000000 */   nop
