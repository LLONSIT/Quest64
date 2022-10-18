.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSynStartVoiceParams
/* 45140 80044540 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 45144 80044544 AFBF0014 */  sw         $ra, 0x14($sp)
/* 45148 80044548 AFA50024 */  sw         $a1, 0x24($sp)
/* 4514C 8004454C AFA60028 */  sw         $a2, 0x28($sp)
/* 45150 80044550 AFA7002C */  sw         $a3, 0x2C($sp)
/* 45154 80044554 8CAE0008 */  lw         $t6, 0x8($a1)
/* 45158 80044558 51C0002F */  beql       $t6, $zero, .L80044618
/* 4515C 8004455C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 45160 80044560 AFA40020 */  sw         $a0, 0x20($sp)
/* 45164 80044564 0C00DA8C */  jal        __allocParam
/* 45168 80044568 AFA50024 */   sw        $a1, 0x24($sp)
/* 4516C 8004456C 8FA40020 */  lw         $a0, 0x20($sp)
/* 45170 80044570 8FA70024 */  lw         $a3, 0x24($sp)
/* 45174 80044574 10400027 */  beqz       $v0, .L80044614
/* 45178 80044578 00403025 */   or        $a2, $v0, $zero
/* 4517C 8004457C 93A3003B */  lbu        $v1, 0x3B($sp)
/* 45180 80044580 04610004 */  bgez       $v1, .L80044594
/* 45184 80044584 00601025 */   or        $v0, $v1, $zero
/* 45188 80044588 00021823 */  negu       $v1, $v0
/* 4518C 8004458C 306F00FF */  andi       $t7, $v1, 0xFF
/* 45190 80044590 01E01825 */  or         $v1, $t7, $zero
.L80044594:
/* 45194 80044594 8CF90008 */  lw         $t9, 0x8($a3)
/* 45198 80044598 8C98001C */  lw         $t8, 0x1C($a0)
/* 4519C 8004459C 240A000D */  addiu      $t2, $zero, 0xD
/* 451A0 800445A0 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 451A4 800445A4 ACC00000 */  sw         $zero, 0x0($a2)
/* 451A8 800445A8 A4CA0008 */  sh         $t2, 0x8($a2)
/* 451AC 800445AC 03084821 */  addu       $t1, $t8, $t0
/* 451B0 800445B0 ACC90004 */  sw         $t1, 0x4($a2)
/* 451B4 800445B4 84EB001A */  lh         $t3, 0x1A($a3)
/* 451B8 800445B8 A4CB000A */  sh         $t3, 0xA($a2)
/* 451BC 800445BC 93AC0037 */  lbu        $t4, 0x37($sp)
/* 451C0 800445C0 A0CC0012 */  sb         $t4, 0x12($a2)
/* 451C4 800445C4 87AD0032 */  lh         $t5, 0x32($sp)
/* 451C8 800445C8 A0C30013 */  sb         $v1, 0x13($a2)
/* 451CC 800445CC A4CD0010 */  sh         $t5, 0x10($a2)
/* 451D0 800445D0 C7A4002C */  lwc1       $f4, 0x2C($sp)
/* 451D4 800445D4 E4C4000C */  swc1       $f4, 0xC($a2)
/* 451D8 800445D8 AFA70024 */  sw         $a3, 0x24($sp)
/* 451DC 800445DC AFA6001C */  sw         $a2, 0x1C($sp)
/* 451E0 800445E0 0C00DA4A */  jal        _timeToSamplesNoRound
/* 451E4 800445E4 8FA5003C */   lw        $a1, 0x3C($sp)
/* 451E8 800445E8 8FA6001C */  lw         $a2, 0x1C($sp)
/* 451EC 800445EC 8FA70024 */  lw         $a3, 0x24($sp)
/* 451F0 800445F0 24050003 */  addiu      $a1, $zero, 0x3
/* 451F4 800445F4 ACC20014 */  sw         $v0, 0x14($a2)
/* 451F8 800445F8 8FAE0028 */  lw         $t6, 0x28($sp)
/* 451FC 800445FC ACCE0018 */  sw         $t6, 0x18($a2)
/* 45200 80044600 8CEF0008 */  lw         $t7, 0x8($a3)
/* 45204 80044604 8DE4000C */  lw         $a0, 0xC($t7)
/* 45208 80044608 8C990008 */  lw         $t9, 0x8($a0)
/* 4520C 8004460C 0320F809 */  jalr       $t9
/* 45210 80044610 00000000 */   nop
.L80044614:
/* 45214 80044614 8FBF0014 */  lw         $ra, 0x14($sp)
.L80044618:
/* 45218 80044618 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4521C 8004461C 03E00008 */  jr         $ra
/* 45220 80044620 00000000 */   nop
/* 45224 80044624 00000000 */  nop
/* 45228 80044628 00000000 */  nop
/* 4522C 8004462C 00000000 */  nop
