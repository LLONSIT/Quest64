.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.10.1 */

glabel _allocatePVoice
/* 44EC0 800442C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 44EC4 800442C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44EC8 800442C8 AFA60030 */  sw         $a2, 0x30($sp)
/* 44ECC 800442CC 8C870014 */  lw         $a3, 0x14($a0)
/* 44ED0 800442D0 00067400 */  sll        $t6, $a2, 16
/* 44ED4 800442D4 000E3403 */  sra        $a2, $t6, 16
/* 44ED8 800442D8 00804025 */  or         $t0, $a0, $zero
/* 44EDC 800442DC 10E0000D */  beqz       $a3, .L80044314
/* 44EE0 800442E0 00001825 */   or        $v1, $zero, $zero
/* 44EE4 800442E4 ACA70000 */  sw         $a3, 0x0($a1)
/* 44EE8 800442E8 AFA80028 */  sw         $t0, 0x28($sp)
/* 44EEC 800442EC AFA70024 */  sw         $a3, 0x24($sp)
/* 44EF0 800442F0 AFA0001C */  sw         $zero, 0x1C($sp)
/* 44EF4 800442F4 0C00DA08 */  jal        alUnlink
/* 44EF8 800442F8 00E02025 */   or        $a0, $a3, $zero
/* 44EFC 800442FC 8FA80028 */  lw         $t0, 0x28($sp)
/* 44F00 80044300 8FA40024 */  lw         $a0, 0x24($sp)
/* 44F04 80044304 0C00DA14 */  jal        alLink
/* 44F08 80044308 2505000C */   addiu     $a1, $t0, 0xC
/* 44F0C 8004430C 10000021 */  b          .L80044394
/* 44F10 80044310 8FA3001C */   lw        $v1, 0x1C($sp)
.L80044314:
/* 44F14 80044314 8D070004 */  lw         $a3, 0x4($t0)
/* 44F18 80044318 10E0000C */  beqz       $a3, .L8004434C
/* 44F1C 8004431C 00E02025 */   or        $a0, $a3, $zero
/* 44F20 80044320 ACA70000 */  sw         $a3, 0x0($a1)
/* 44F24 80044324 AFA80028 */  sw         $t0, 0x28($sp)
/* 44F28 80044328 AFA70024 */  sw         $a3, 0x24($sp)
/* 44F2C 8004432C 0C00DA08 */  jal        alUnlink
/* 44F30 80044330 AFA3001C */   sw        $v1, 0x1C($sp)
/* 44F34 80044334 8FA80028 */  lw         $t0, 0x28($sp)
/* 44F38 80044338 8FA40024 */  lw         $a0, 0x24($sp)
/* 44F3C 8004433C 0C00DA14 */  jal        alLink
/* 44F40 80044340 2505000C */   addiu     $a1, $t0, 0xC
/* 44F44 80044344 10000013 */  b          .L80044394
/* 44F48 80044348 8FA3001C */   lw        $v1, 0x1C($sp)
.L8004434C:
/* 44F4C 8004434C 8D07000C */  lw         $a3, 0xC($t0)
/* 44F50 80044350 50E00011 */  beql       $a3, $zero, .L80044398
/* 44F54 80044354 8FBF0014 */   lw        $ra, 0x14($sp)
/* 44F58 80044358 8CF80008 */  lw         $t8, 0x8($a3)
.L8004435C:
/* 44F5C 8004435C 87190016 */  lh         $t9, 0x16($t8)
/* 44F60 80044360 00D9082A */  slt        $at, $a2, $t9
/* 44F64 80044364 54200009 */  bnel       $at, $zero, .L8004438C
/* 44F68 80044368 8CE70000 */   lw        $a3, 0x0($a3)
/* 44F6C 8004436C 8CE900D8 */  lw         $t1, 0xD8($a3)
/* 44F70 80044370 55200006 */  bnel       $t1, $zero, .L8004438C
/* 44F74 80044374 8CE70000 */   lw        $a3, 0x0($a3)
/* 44F78 80044378 ACA70000 */  sw         $a3, 0x0($a1)
/* 44F7C 8004437C 8CEA0008 */  lw         $t2, 0x8($a3)
/* 44F80 80044380 24030001 */  addiu      $v1, $zero, 0x1
/* 44F84 80044384 85460016 */  lh         $a2, 0x16($t2)
/* 44F88 80044388 8CE70000 */  lw         $a3, 0x0($a3)
.L8004438C:
/* 44F8C 8004438C 54E0FFF3 */  bnel       $a3, $zero, .L8004435C
/* 44F90 80044390 8CF80008 */   lw        $t8, 0x8($a3)
.L80044394:
/* 44F94 80044394 8FBF0014 */  lw         $ra, 0x14($sp)
.L80044398:
/* 44F98 80044398 27BD0028 */  addiu      $sp, $sp, 0x28
/* 44F9C 8004439C 00601025 */  or         $v0, $v1, $zero
/* 44FA0 800443A0 03E00008 */  jr         $ra
/* 44FA4 800443A4 00000000 */   nop

glabel alSynAllocVoice
/* 44FA8 800443A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 44FAC 800443AC AFBF001C */  sw         $ra, 0x1C($sp)
/* 44FB0 800443B0 AFB00018 */  sw         $s0, 0x18($sp)
/* 44FB4 800443B4 AFA40030 */  sw         $a0, 0x30($sp)
/* 44FB8 800443B8 AFA0002C */  sw         $zero, 0x2C($sp)
/* 44FBC 800443BC 84CE0000 */  lh         $t6, 0x0($a2)
/* 44FC0 800443C0 00A08025 */  or         $s0, $a1, $zero
/* 44FC4 800443C4 A4AE0016 */  sh         $t6, 0x16($a1)
/* 44FC8 800443C8 90CF0004 */  lbu        $t7, 0x4($a2)
/* 44FCC 800443CC ACA0000C */  sw         $zero, 0xC($a1)
/* 44FD0 800443D0 A4AF001A */  sh         $t7, 0x1A($a1)
/* 44FD4 800443D4 84D80002 */  lh         $t8, 0x2($a2)
/* 44FD8 800443D8 A4A00014 */  sh         $zero, 0x14($a1)
/* 44FDC 800443DC ACA00008 */  sw         $zero, 0x8($a1)
/* 44FE0 800443E0 A4B80018 */  sh         $t8, 0x18($a1)
/* 44FE4 800443E4 84C60000 */  lh         $a2, 0x0($a2)
/* 44FE8 800443E8 8FA40030 */  lw         $a0, 0x30($sp)
/* 44FEC 800443EC 0C0110B0 */  jal        _allocatePVoice
/* 44FF0 800443F0 27A5002C */   addiu     $a1, $sp, 0x2C
/* 44FF4 800443F4 8FB9002C */  lw         $t9, 0x2C($sp)
/* 44FF8 800443F8 53200035 */  beql       $t9, $zero, .L800444D0
/* 44FFC 800443FC 8FA2002C */   lw        $v0, 0x2C($sp)
/* 45000 80044400 1040002C */  beqz       $v0, .L800444B4
/* 45004 80044404 8F24000C */   lw        $a0, 0xC($t9)
/* 45008 80044408 24080200 */  addiu      $t0, $zero, 0x200
/* 4500C 8004440C AF2800D8 */  sw         $t0, 0xD8($t9)
/* 45010 80044410 8FA9002C */  lw         $t1, 0x2C($sp)
/* 45014 80044414 8D2A0008 */  lw         $t2, 0x8($t1)
/* 45018 80044418 AD400008 */  sw         $zero, 0x8($t2)
/* 4501C 8004441C 0C00DA8C */  jal        __allocParam
/* 45020 80044420 AFA40028 */   sw        $a0, 0x28($sp)
/* 45024 80044424 8FAB0030 */  lw         $t3, 0x30($sp)
/* 45028 80044428 8FA40028 */  lw         $a0, 0x28($sp)
/* 4502C 8004442C 240D000B */  addiu      $t5, $zero, 0xB
/* 45030 80044430 8D6C001C */  lw         $t4, 0x1C($t3)
/* 45034 80044434 A44D0008 */  sh         $t5, 0x8($v0)
/* 45038 80044438 AC40000C */  sw         $zero, 0xC($v0)
/* 4503C 8004443C AC4C0004 */  sw         $t4, 0x4($v0)
/* 45040 80044440 8FAE002C */  lw         $t6, 0x2C($sp)
/* 45044 80044444 24050003 */  addiu      $a1, $zero, 0x3
/* 45048 80044448 00403025 */  or         $a2, $v0, $zero
/* 4504C 8004444C 8DCF00D8 */  lw         $t7, 0xD8($t6)
/* 45050 80044450 25F8FFC0 */  addiu      $t8, $t7, -0x40
/* 45054 80044454 AC580010 */  sw         $t8, 0x10($v0)
/* 45058 80044458 8C990008 */  lw         $t9, 0x8($a0)
/* 4505C 8004445C 0320F809 */  jalr       $t9
/* 45060 80044460 00000000 */   nop
/* 45064 80044464 0C00DA8C */  jal        __allocParam
/* 45068 80044468 00000000 */   nop
/* 4506C 8004446C 8FA40028 */  lw         $a0, 0x28($sp)
/* 45070 80044470 10400012 */  beqz       $v0, .L800444BC
/* 45074 80044474 00403025 */   or        $a2, $v0, $zero
/* 45078 80044478 8FA80030 */  lw         $t0, 0x30($sp)
/* 4507C 8004447C 8FAA002C */  lw         $t2, 0x2C($sp)
/* 45080 80044480 240D000F */  addiu      $t5, $zero, 0xF
/* 45084 80044484 8D09001C */  lw         $t1, 0x1C($t0)
/* 45088 80044488 8D4B00D8 */  lw         $t3, 0xD8($t2)
/* 4508C 8004448C A44D0008 */  sh         $t5, 0x8($v0)
/* 45090 80044490 AC400000 */  sw         $zero, 0x0($v0)
/* 45094 80044494 012B6021 */  addu       $t4, $t1, $t3
/* 45098 80044498 AC4C0004 */  sw         $t4, 0x4($v0)
/* 4509C 8004449C 8C990008 */  lw         $t9, 0x8($a0)
/* 450A0 800444A0 24050003 */  addiu      $a1, $zero, 0x3
/* 450A4 800444A4 0320F809 */  jalr       $t9
/* 450A8 800444A8 00000000 */   nop
/* 450AC 800444AC 10000004 */  b          .L800444C0
/* 450B0 800444B0 8FAF002C */   lw        $t7, 0x2C($sp)
.L800444B4:
/* 450B4 800444B4 8FAE002C */  lw         $t6, 0x2C($sp)
/* 450B8 800444B8 ADC000D8 */  sw         $zero, 0xD8($t6)
.L800444BC:
/* 450BC 800444BC 8FAF002C */  lw         $t7, 0x2C($sp)
.L800444C0:
/* 450C0 800444C0 ADF00008 */  sw         $s0, 0x8($t7)
/* 450C4 800444C4 8FB8002C */  lw         $t8, 0x2C($sp)
/* 450C8 800444C8 AE180008 */  sw         $t8, 0x8($s0)
/* 450CC 800444CC 8FA2002C */  lw         $v0, 0x2C($sp)
.L800444D0:
/* 450D0 800444D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 450D4 800444D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 450D8 800444D8 0002402B */  sltu       $t0, $zero, $v0
/* 450DC 800444DC 01001025 */  or         $v0, $t0, $zero
/* 450E0 800444E0 03E00008 */  jr         $ra
/* 450E4 800444E4 27BD0030 */   addiu     $sp, $sp, 0x30
/* 450E8 800444E8 00000000 */  nop
/* 450EC 800444EC 00000000 */  nop
