.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSaveNew
/* 40C90 80040090 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40C94 80040094 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40C98 80040098 3C058004 */  lui        $a1, %hi(alSavePull)
/* 40C9C 8004009C 3C068004 */  lui        $a2, %hi(alSaveParam)
/* 40CA0 800400A0 24C625E0 */  addiu      $a2, $a2, %lo(alSaveParam)
/* 40CA4 800400A4 24A52614 */  addiu      $a1, $a1, %lo(alSavePull)
/* 40CA8 800400A8 AFA40018 */  sw         $a0, 0x18($sp)
/* 40CAC 800400AC 0C0122B0 */  jal        alFilterNew
/* 40CB0 800400B0 24070003 */   addiu     $a3, $zero, 0x3
/* 40CB4 800400B4 8FA40018 */  lw         $a0, 0x18($sp)
/* 40CB8 800400B8 240E0001 */  addiu      $t6, $zero, 0x1
/* 40CBC 800400BC AC800014 */  sw         $zero, 0x14($a0)
/* 40CC0 800400C0 AC8E0018 */  sw         $t6, 0x18($a0)
/* 40CC4 800400C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40CC8 800400C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40CCC 800400CC 03E00008 */  jr         $ra
/* 40CD0 800400D0 00000000 */   nop

glabel alMainBusNew
/* 40CD4 800400D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40CD8 800400D8 AFA5001C */  sw         $a1, 0x1C($sp)
/* 40CDC 800400DC AFA60020 */  sw         $a2, 0x20($sp)
/* 40CE0 800400E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40CE4 800400E4 3C068004 */  lui        $a2, %hi(alMainBusParam)
/* 40CE8 800400E8 3C058004 */  lui        $a1, %hi(alMainBusPull)
/* 40CEC 800400EC 24A50900 */  addiu      $a1, $a1, %lo(alMainBusPull)
/* 40CF0 800400F0 24C608D0 */  addiu      $a2, $a2, %lo(alMainBusParam)
/* 40CF4 800400F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 40CF8 800400F8 0C0122B0 */  jal        alFilterNew
/* 40CFC 800400FC 24070007 */   addiu     $a3, $zero, 0x7
/* 40D00 80040100 8FA40018 */  lw         $a0, 0x18($sp)
/* 40D04 80040104 AC800014 */  sw         $zero, 0x14($a0)
/* 40D08 80040108 8FAE0020 */  lw         $t6, 0x20($sp)
/* 40D0C 8004010C AC8E0018 */  sw         $t6, 0x18($a0)
/* 40D10 80040110 8FAF001C */  lw         $t7, 0x1C($sp)
/* 40D14 80040114 AC8F001C */  sw         $t7, 0x1C($a0)
/* 40D18 80040118 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40D1C 8004011C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40D20 80040120 03E00008 */  jr         $ra
/* 40D24 80040124 00000000 */   nop

glabel alAuxBusNew
/* 40D28 80040128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40D2C 8004012C AFA5001C */  sw         $a1, 0x1C($sp)
/* 40D30 80040130 AFA60020 */  sw         $a2, 0x20($sp)
/* 40D34 80040134 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40D38 80040138 3C068004 */  lui        $a2, %hi(alAuxBusParam)
/* 40D3C 8004013C 3C058004 */  lui        $a1, %hi(alAuxBusPull)
/* 40D40 80040140 24A52500 */  addiu      $a1, $a1, %lo(alAuxBusPull)
/* 40D44 80040144 24C624D0 */  addiu      $a2, $a2, %lo(alAuxBusParam)
/* 40D48 80040148 AFA40018 */  sw         $a0, 0x18($sp)
/* 40D4C 8004014C 0C0122B0 */  jal        alFilterNew
/* 40D50 80040150 24070006 */   addiu     $a3, $zero, 0x6
/* 40D54 80040154 8FA40018 */  lw         $a0, 0x18($sp)
/* 40D58 80040158 AC800014 */  sw         $zero, 0x14($a0)
/* 40D5C 8004015C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 40D60 80040160 AC8E0018 */  sw         $t6, 0x18($a0)
/* 40D64 80040164 8FAF001C */  lw         $t7, 0x1C($sp)
/* 40D68 80040168 AC8F001C */  sw         $t7, 0x1C($a0)
/* 40D6C 8004016C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40D70 80040170 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40D74 80040174 03E00008 */  jr         $ra
/* 40D78 80040178 00000000 */   nop

glabel alResampleNew
/* 40D7C 8004017C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40D80 80040180 AFA50024 */  sw         $a1, 0x24($sp)
/* 40D84 80040184 AFBF001C */  sw         $ra, 0x1C($sp)
/* 40D88 80040188 3C058004 */  lui        $a1, %hi(alResamplePull)
/* 40D8C 8004018C 3C068004 */  lui        $a2, %hi(alResampleParam)
/* 40D90 80040190 24C61570 */  addiu      $a2, $a2, %lo(alResampleParam)
/* 40D94 80040194 24A5165C */  addiu      $a1, $a1, %lo(alResamplePull)
/* 40D98 80040198 AFA40020 */  sw         $a0, 0x20($sp)
/* 40D9C 8004019C 0C0122B0 */  jal        alFilterNew
/* 40DA0 800401A0 24070001 */   addiu     $a3, $zero, 0x1
/* 40DA4 800401A4 240E0020 */  addiu      $t6, $zero, 0x20
/* 40DA8 800401A8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 40DAC 800401AC 00002025 */  or         $a0, $zero, $zero
/* 40DB0 800401B0 00002825 */  or         $a1, $zero, $zero
/* 40DB4 800401B4 8FA60024 */  lw         $a2, 0x24($sp)
/* 40DB8 800401B8 0C00D998 */  jal        alHeapDBAlloc
/* 40DBC 800401BC 24070001 */   addiu     $a3, $zero, 0x1
/* 40DC0 800401C0 8FA80020 */  lw         $t0, 0x20($sp)
/* 40DC4 800401C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 40DC8 800401C8 44802000 */  mtc1       $zero, $f4
/* 40DCC 800401CC 44813000 */  mtc1       $at, $f6
/* 40DD0 800401D0 240F0001 */  addiu      $t7, $zero, 0x1
/* 40DD4 800401D4 AD020014 */  sw         $v0, 0x14($t0)
/* 40DD8 800401D8 AD0F0024 */  sw         $t7, 0x24($t0)
/* 40DDC 800401DC AD000030 */  sw         $zero, 0x30($t0)
/* 40DE0 800401E0 AD00001C */  sw         $zero, 0x1C($t0)
/* 40DE4 800401E4 AD000028 */  sw         $zero, 0x28($t0)
/* 40DE8 800401E8 AD00002C */  sw         $zero, 0x2C($t0)
/* 40DEC 800401EC E5040020 */  swc1       $f4, 0x20($t0)
/* 40DF0 800401F0 E5060018 */  swc1       $f6, 0x18($t0)
/* 40DF4 800401F4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 40DF8 800401F8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40DFC 800401FC 03E00008 */  jr         $ra
/* 40E00 80040200 00000000 */   nop

glabel alLoadNew
/* 40E04 80040204 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 40E08 80040208 AFA5002C */  sw         $a1, 0x2C($sp)
/* 40E0C 8004020C AFA60030 */  sw         $a2, 0x30($sp)
/* 40E10 80040210 AFBF0024 */  sw         $ra, 0x24($sp)
/* 40E14 80040214 AFB00020 */  sw         $s0, 0x20($sp)
/* 40E18 80040218 3C068004 */  lui        $a2, %hi(alLoadParam)
/* 40E1C 8004021C 3C058004 */  lui        $a1, %hi(alAdpcmPull)
/* 40E20 80040220 00808025 */  or         $s0, $a0, $zero
/* 40E24 80040224 24A510CC */  addiu      $a1, $a1, %lo(alAdpcmPull)
/* 40E28 80040228 24C60A20 */  addiu      $a2, $a2, %lo(alLoadParam)
/* 40E2C 8004022C 0C0122B0 */  jal        alFilterNew
/* 40E30 80040230 00003825 */   or        $a3, $zero, $zero
/* 40E34 80040234 240E0020 */  addiu      $t6, $zero, 0x20
/* 40E38 80040238 AFAE0010 */  sw         $t6, 0x10($sp)
/* 40E3C 8004023C 00002025 */  or         $a0, $zero, $zero
/* 40E40 80040240 00002825 */  or         $a1, $zero, $zero
/* 40E44 80040244 8FA60030 */  lw         $a2, 0x30($sp)
/* 40E48 80040248 0C00D998 */  jal        alHeapDBAlloc
/* 40E4C 8004024C 24070001 */   addiu     $a3, $zero, 0x1
/* 40E50 80040250 AE020014 */  sw         $v0, 0x14($s0)
/* 40E54 80040254 240F0020 */  addiu      $t7, $zero, 0x20
/* 40E58 80040258 AFAF0010 */  sw         $t7, 0x10($sp)
/* 40E5C 8004025C 8FA60030 */  lw         $a2, 0x30($sp)
/* 40E60 80040260 00002025 */  or         $a0, $zero, $zero
/* 40E64 80040264 00002825 */  or         $a1, $zero, $zero
/* 40E68 80040268 0C00D998 */  jal        alHeapDBAlloc
/* 40E6C 8004026C 24070001 */   addiu     $a3, $zero, 0x1
/* 40E70 80040270 AE020018 */  sw         $v0, 0x18($s0)
/* 40E74 80040274 8FB9002C */  lw         $t9, 0x2C($sp)
/* 40E78 80040278 26040034 */  addiu      $a0, $s0, 0x34
/* 40E7C 8004027C 0320F809 */  jalr       $t9
/* 40E80 80040280 00000000 */   nop
/* 40E84 80040284 24180001 */  addiu      $t8, $zero, 0x1
/* 40E88 80040288 AE020030 */  sw         $v0, 0x30($s0)
/* 40E8C 8004028C AE00003C */  sw         $zero, 0x3C($s0)
/* 40E90 80040290 AE180040 */  sw         $t8, 0x40($s0)
/* 40E94 80040294 AE000044 */  sw         $zero, 0x44($s0)
/* 40E98 80040298 8FBF0024 */  lw         $ra, 0x24($sp)
/* 40E9C 8004029C 8FB00020 */  lw         $s0, 0x20($sp)
/* 40EA0 800402A0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 40EA4 800402A4 03E00008 */  jr         $ra
/* 40EA8 800402A8 00000000 */   nop

glabel alEnvmixerNew
/* 40EAC 800402AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40EB0 800402B0 AFA50024 */  sw         $a1, 0x24($sp)
/* 40EB4 800402B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 40EB8 800402B8 3C058004 */  lui        $a1, %hi(alEnvmixerPull)
/* 40EBC 800402BC 3C068004 */  lui        $a2, %hi(alEnvmixerParam)
/* 40EC0 800402C0 24C61984 */  addiu      $a2, $a2, %lo(alEnvmixerParam)
/* 40EC4 800402C4 24A51F7C */  addiu      $a1, $a1, %lo(alEnvmixerPull)
/* 40EC8 800402C8 AFA40020 */  sw         $a0, 0x20($sp)
/* 40ECC 800402CC 0C0122B0 */  jal        alFilterNew
/* 40ED0 800402D0 24070004 */   addiu     $a3, $zero, 0x4
/* 40ED4 800402D4 240E0050 */  addiu      $t6, $zero, 0x50
/* 40ED8 800402D8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 40EDC 800402DC 00002025 */  or         $a0, $zero, $zero
/* 40EE0 800402E0 00002825 */  or         $a1, $zero, $zero
/* 40EE4 800402E4 8FA60024 */  lw         $a2, 0x24($sp)
/* 40EE8 800402E8 0C00D998 */  jal        alHeapDBAlloc
/* 40EEC 800402EC 24070001 */   addiu     $a3, $zero, 0x1
/* 40EF0 800402F0 8FA80020 */  lw         $t0, 0x20($sp)
/* 40EF4 800402F4 24030001 */  addiu      $v1, $zero, 0x1
/* 40EF8 800402F8 AD020014 */  sw         $v0, 0x14($t0)
/* 40EFC 800402FC AD030038 */  sw         $v1, 0x38($t0)
/* 40F00 80040300 AD000048 */  sw         $zero, 0x48($t0)
/* 40F04 80040304 A503001A */  sh         $v1, 0x1A($t0)
/* 40F08 80040308 A5030028 */  sh         $v1, 0x28($t0)
/* 40F0C 8004030C A503002E */  sh         $v1, 0x2E($t0)
/* 40F10 80040310 A503001C */  sh         $v1, 0x1C($t0)
/* 40F14 80040314 A503001E */  sh         $v1, 0x1E($t0)
/* 40F18 80040318 A5000020 */  sh         $zero, 0x20($t0)
/* 40F1C 8004031C A5000022 */  sh         $zero, 0x22($t0)
/* 40F20 80040320 A5030026 */  sh         $v1, 0x26($t0)
/* 40F24 80040324 A5000024 */  sh         $zero, 0x24($t0)
/* 40F28 80040328 AD000030 */  sw         $zero, 0x30($t0)
/* 40F2C 8004032C AD000034 */  sw         $zero, 0x34($t0)
/* 40F30 80040330 A5000018 */  sh         $zero, 0x18($t0)
/* 40F34 80040334 AD00003C */  sw         $zero, 0x3C($t0)
/* 40F38 80040338 AD000040 */  sw         $zero, 0x40($t0)
/* 40F3C 8004033C AD000044 */  sw         $zero, 0x44($t0)
/* 40F40 80040340 8FBF001C */  lw         $ra, 0x1C($sp)
/* 40F44 80040344 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40F48 80040348 03E00008 */  jr         $ra
/* 40F4C 8004034C 00000000 */   nop

glabel init_lpfilter
/* 40F50 80040350 84820000 */  lh         $v0, 0x0($a0)
/* 40F54 80040354 24194000 */  addiu      $t9, $zero, 0x4000
/* 40F58 80040358 24090001 */  addiu      $t1, $zero, 0x1
/* 40F5C 8004035C 00027380 */  sll        $t6, $v0, 14
/* 40F60 80040360 000E1BC3 */  sra        $v1, $t6, 15
/* 40F64 80040364 00037C00 */  sll        $t7, $v1, 16
/* 40F68 80040368 000F1C03 */  sra        $v1, $t7, 16
/* 40F6C 8004036C 03234023 */  subu       $t0, $t9, $v1
/* 40F70 80040370 A4880002 */  sh         $t0, 0x2($a0)
/* 40F74 80040374 AC89002C */  sw         $t1, 0x2C($a0)
/* 40F78 80040378 00002825 */  or         $a1, $zero, $zero
/* 40F7C 8004037C 00803025 */  or         $a2, $a0, $zero
.L80040380:
/* 40F80 80040380 24A50001 */  addiu      $a1, $a1, 0x1
/* 40F84 80040384 28A10008 */  slti       $at, $a1, 0x8
/* 40F88 80040388 24C60002 */  addiu      $a2, $a2, 0x2
/* 40F8C 8004038C 1420FFFC */  bnez       $at, .L80040380
/* 40F90 80040390 A4C00006 */   sh        $zero, 0x6($a2)
/* 40F94 80040394 44832000 */  mtc1       $v1, $f4
/* 40F98 80040398 3C0140D0 */  lui        $at, (0x40D00000 >> 16)
/* 40F9C 8004039C 44816800 */  mtc1       $at, $f13
/* 40FA0 800403A0 468021A1 */  cvt.d.w    $f6, $f4
/* 40FA4 800403A4 44806000 */  mtc1       $zero, $f12
/* 40FA8 800403A8 24A50001 */  addiu      $a1, $a1, 0x1
/* 40FAC 800403AC 28A10010 */  slti       $at, $a1, 0x10
/* 40FB0 800403B0 A4C30008 */  sh         $v1, 0x8($a2)
/* 40FB4 800403B4 462C3083 */  div.d      $f2, $f6, $f12
/* 40FB8 800403B8 24C60002 */  addiu      $a2, $a2, 0x2
/* 40FBC 800403BC 1020000A */  beqz       $at, .L800403E8
/* 40FC0 800403C0 46201006 */   mov.d     $f0, $f2
.L800403C4:
/* 40FC4 800403C4 46220002 */  mul.d      $f0, $f0, $f2
/* 40FC8 800403C8 24A50001 */  addiu      $a1, $a1, 0x1
/* 40FCC 800403CC 28A10010 */  slti       $at, $a1, 0x10
/* 40FD0 800403D0 24C60002 */  addiu      $a2, $a2, 0x2
/* 40FD4 800403D4 462C0202 */  mul.d      $f8, $f0, $f12
/* 40FD8 800403D8 4620428D */  trunc.w.d  $f10, $f8
/* 40FDC 800403DC 440B5000 */  mfc1       $t3, $f10
/* 40FE0 800403E0 1420FFF8 */  bnez       $at, .L800403C4
/* 40FE4 800403E4 A4CB0006 */   sh        $t3, 0x6($a2)
.L800403E8:
/* 40FE8 800403E8 03E00008 */  jr         $ra
/* 40FEC 800403EC 00000000 */   nop

glabel alFxNew
/* 40FF0 800403F0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 40FF4 800403F4 AFB60058 */  sw         $s6, 0x58($sp)
/* 40FF8 800403F8 00C0B025 */  or         $s6, $a2, $zero
/* 40FFC 800403FC AFBF0064 */  sw         $ra, 0x64($sp)
/* 41000 80040400 AFB50054 */  sw         $s5, 0x54($sp)
/* 41004 80040404 AFA5006C */  sw         $a1, 0x6C($sp)
/* 41008 80040408 3C068005 */  lui        $a2, %hi(alFxParam)
/* 4100C 8004040C 0080A825 */  or         $s5, $a0, $zero
/* 41010 80040410 AFBE0060 */  sw         $fp, 0x60($sp)
/* 41014 80040414 AFB7005C */  sw         $s7, 0x5C($sp)
/* 41018 80040418 AFB40050 */  sw         $s4, 0x50($sp)
/* 4101C 8004041C AFB3004C */  sw         $s3, 0x4C($sp)
/* 41020 80040420 AFB20048 */  sw         $s2, 0x48($sp)
/* 41024 80040424 AFB10044 */  sw         $s1, 0x44($sp)
/* 41028 80040428 AFB00040 */  sw         $s0, 0x40($sp)
/* 4102C 8004042C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 41030 80040430 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 41034 80040434 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 41038 80040438 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4103C 8004043C 24C693D4 */  addiu      $a2, $a2, %lo(alFxParam)
/* 41040 80040440 00002825 */  or         $a1, $zero, $zero
/* 41044 80040444 0C0122B0 */  jal        alFilterNew
/* 41048 80040448 24070005 */   addiu     $a3, $zero, 0x5
/* 4104C 8004044C 8FA2006C */  lw         $v0, 0x6C($sp)
/* 41050 80040450 3C0E8005 */  lui        $t6, %hi(alFxPull)
/* 41054 80040454 3C0F8005 */  lui        $t7, %hi(func_80049178)
/* 41058 80040458 25CE93EC */  addiu      $t6, $t6, %lo(alFxPull)
/* 4105C 8004045C 25EF9178 */  addiu      $t7, $t7, %lo(func_80049178)
/* 41060 80040460 AEAE0004 */  sw         $t6, 0x4($s5)
/* 41064 80040464 AEAF0028 */  sw         $t7, 0x28($s5)
/* 41068 80040468 9058001C */  lbu        $t8, 0x1C($v0)
/* 4106C 8004046C 3C138007 */  lui        $s3, %hi(D_80070C58)
/* 41070 80040470 26730C58 */  addiu      $s3, $s3, %lo(D_80070C58)
/* 41074 80040474 2719FFFF */  addiu      $t9, $t8, -0x1
/* 41078 80040478 2F210006 */  sltiu      $at, $t9, 0x6
/* 4107C 8004047C 10200017 */  beqz       $at, .L800404DC
/* 41080 80040480 0019C880 */   sll       $t9, $t9, 2
/* 41084 80040484 3C018007 */  lui        $at, %hi(jtbl_80072020_main)
/* 41088 80040488 00390821 */  addu       $at, $at, $t9
/* 4108C 8004048C 8C392020 */  lw         $t9, %lo(jtbl_80072020_main)($at)
/* 41090 80040490 03200008 */  jr         $t9
/* 41094 80040494 00000000 */   nop
glabel L80040498
/* 41098 80040498 3C138007 */  lui        $s3, %hi(D_80070AF0)
/* 4109C 8004049C 1000000F */  b          .L800404DC
/* 410A0 800404A0 26730AF0 */   addiu     $s3, $s3, %lo(D_80070AF0)
glabel L800404A4
/* 410A4 800404A4 3C138007 */  lui        $s3, %hi(D_80070B58)
/* 410A8 800404A8 1000000C */  b          .L800404DC
/* 410AC 800404AC 26730B58 */   addiu     $s3, $s3, %lo(D_80070B58)
glabel L800404B0
/* 410B0 800404B0 3C138007 */  lui        $s3, %hi(D_80070BE0)
/* 410B4 800404B4 10000009 */  b          .L800404DC
/* 410B8 800404B8 26730BE0 */   addiu     $s3, $s3, %lo(D_80070BE0)
glabel L800404BC
/* 410BC 800404BC 3C138007 */  lui        $s3, %hi(D_80070C08)
/* 410C0 800404C0 10000006 */  b          .L800404DC
/* 410C4 800404C4 26730C08 */   addiu     $s3, $s3, %lo(D_80070C08)
glabel L800404C8
/* 410C8 800404C8 3C138007 */  lui        $s3, %hi(D_80070C30)
/* 410CC 800404CC 10000003 */  b          .L800404DC
/* 410D0 800404D0 26730C30 */   addiu     $s3, $s3, %lo(D_80070C30)
glabel L800404D4
/* 410D4 800404D4 10000001 */  b          .L800404DC
/* 410D8 800404D8 8C530020 */   lw        $s3, 0x20($v0)
.L800404DC:
/* 410DC 800404DC 8E680000 */  lw         $t0, 0x0($s3)
/* 410E0 800404E0 240A0028 */  addiu      $t2, $zero, 0x28
/* 410E4 800404E4 24110002 */  addiu      $s1, $zero, 0x2
/* 410E8 800404E8 A2A80024 */  sb         $t0, 0x24($s5)
/* 410EC 800404EC 8E690004 */  lw         $t1, 0x4($s3)
/* 410F0 800404F0 00002025 */  or         $a0, $zero, $zero
/* 410F4 800404F4 00002825 */  or         $a1, $zero, $zero
/* 410F8 800404F8 AEA9001C */  sw         $t1, 0x1C($s5)
/* 410FC 800404FC AFAA0010 */  sw         $t2, 0x10($sp)
/* 41100 80040500 02C03025 */  or         $a2, $s6, $zero
/* 41104 80040504 0C00D998 */  jal        alHeapDBAlloc
/* 41108 80040508 310700FF */   andi      $a3, $t0, 0xFF
/* 4110C 8004050C AEA20020 */  sw         $v0, 0x20($s5)
/* 41110 80040510 8EA7001C */  lw         $a3, 0x1C($s5)
/* 41114 80040514 240B0002 */  addiu      $t3, $zero, 0x2
/* 41118 80040518 AFAB0010 */  sw         $t3, 0x10($sp)
/* 4111C 8004051C 00002025 */  or         $a0, $zero, $zero
/* 41120 80040520 00002825 */  or         $a1, $zero, $zero
/* 41124 80040524 0C00D998 */  jal        alHeapDBAlloc
/* 41128 80040528 02C03025 */   or        $a2, $s6, $zero
/* 4112C 8004052C 8EAC001C */  lw         $t4, 0x1C($s5)
/* 41130 80040530 AEA20014 */  sw         $v0, 0x14($s5)
/* 41134 80040534 AEA20018 */  sw         $v0, 0x18($s5)
/* 41138 80040538 1180000C */  beqz       $t4, .L8004056C
/* 4113C 8004053C 00001825 */   or        $v1, $zero, $zero
/* 41140 80040540 8EAD0014 */  lw         $t5, 0x14($s5)
.L80040544:
/* 41144 80040544 00037040 */  sll        $t6, $v1, 1
/* 41148 80040548 24630001 */  addiu      $v1, $v1, 0x1
/* 4114C 8004054C 01AE7821 */  addu       $t7, $t5, $t6
/* 41150 80040550 A5E00000 */  sh         $zero, 0x0($t7)
/* 41154 80040554 8EB9001C */  lw         $t9, 0x1C($s5)
/* 41158 80040558 3078FFFF */  andi       $t8, $v1, 0xFFFF
/* 4115C 8004055C 03001825 */  or         $v1, $t8, $zero
/* 41160 80040560 0319082B */  sltu       $at, $t8, $t9
/* 41164 80040564 5420FFF7 */  bnel       $at, $zero, .L80040544
/* 41168 80040568 8EAD0014 */   lw        $t5, 0x14($s5)
.L8004056C:
/* 4116C 8004056C 92A80024 */  lbu        $t0, 0x24($s5)
/* 41170 80040570 0000A025 */  or         $s4, $zero, $zero
/* 41174 80040574 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 41178 80040578 1900009C */  blez       $t0, .L800407EC
/* 4117C 8004057C 241E0001 */   addiu     $fp, $zero, 0x1
/* 41180 80040580 4481C000 */  mtc1       $at, $f24
/* 41184 80040584 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 41188 80040588 4481B000 */  mtc1       $at, $f22
/* 4118C 8004058C 3C018007 */  lui        $at, %hi(D_80072038)
/* 41190 80040590 4480D000 */  mtc1       $zero, $f26
/* 41194 80040594 D4342038 */  ldc1       $f20, %lo(D_80072038)($at)
/* 41198 80040598 24170028 */  addiu      $s7, $zero, 0x28
.L8004059C:
/* 4119C 8004059C 02970019 */  multu      $s4, $s7
/* 411A0 800405A0 00115880 */  sll        $t3, $s1, 2
/* 411A4 800405A4 8EA90020 */  lw         $t1, 0x20($s5)
/* 411A8 800405A8 026B6021 */  addu       $t4, $s3, $t3
/* 411AC 800405AC 8D8D0000 */  lw         $t5, 0x0($t4)
/* 411B0 800405B0 26310001 */  addiu      $s1, $s1, 0x1
/* 411B4 800405B4 322EFFFF */  andi       $t6, $s1, 0xFFFF
/* 411B8 800405B8 000E7880 */  sll        $t7, $t6, 2
/* 411BC 800405BC 026FC021 */  addu       $t8, $s3, $t7
/* 411C0 800405C0 25D10001 */  addiu      $s1, $t6, 0x1
/* 411C4 800405C4 00005012 */  mflo       $t2
/* 411C8 800405C8 012A8021 */  addu       $s0, $t1, $t2
/* 411CC 800405CC AE0D0000 */  sw         $t5, 0x0($s0)
/* 411D0 800405D0 8F190000 */  lw         $t9, 0x0($t8)
/* 411D4 800405D4 3228FFFF */  andi       $t0, $s1, 0xFFFF
/* 411D8 800405D8 00084880 */  sll        $t1, $t0, 2
/* 411DC 800405DC 02695021 */  addu       $t2, $s3, $t1
/* 411E0 800405E0 AE190004 */  sw         $t9, 0x4($s0)
/* 411E4 800405E4 8D4B0000 */  lw         $t3, 0x0($t2)
/* 411E8 800405E8 25110001 */  addiu      $s1, $t0, 0x1
/* 411EC 800405EC 322CFFFF */  andi       $t4, $s1, 0xFFFF
/* 411F0 800405F0 000C6880 */  sll        $t5, $t4, 2
/* 411F4 800405F4 026D7021 */  addu       $t6, $s3, $t5
/* 411F8 800405F8 A60B000A */  sh         $t3, 0xA($s0)
/* 411FC 800405FC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 41200 80040600 25910001 */  addiu      $s1, $t4, 0x1
/* 41204 80040604 3238FFFF */  andi       $t8, $s1, 0xFFFF
/* 41208 80040608 0018C880 */  sll        $t9, $t8, 2
/* 4120C 8004060C 02794021 */  addu       $t0, $s3, $t9
/* 41210 80040610 A60F0008 */  sh         $t7, 0x8($s0)
/* 41214 80040614 8D090000 */  lw         $t1, 0x0($t0)
/* 41218 80040618 27110001 */  addiu      $s1, $t8, 0x1
/* 4121C 8004061C 322AFFFF */  andi       $t2, $s1, 0xFFFF
/* 41220 80040620 000A5880 */  sll        $t3, $t2, 2
/* 41224 80040624 026B6021 */  addu       $t4, $s3, $t3
/* 41228 80040628 A609000C */  sh         $t1, 0xC($s0)
/* 4122C 8004062C 8D820000 */  lw         $v0, 0x0($t4)
/* 41230 80040630 01408825 */  or         $s1, $t2, $zero
/* 41234 80040634 02204025 */  or         $t0, $s1, $zero
/* 41238 80040638 10400040 */  beqz       $v0, .L8004073C
/* 4123C 8004063C 25110002 */   addiu     $s1, $t0, 0x2
/* 41240 80040640 44822000 */  mtc1       $v0, $f4
/* 41244 80040644 8FAD006C */  lw         $t5, 0x6C($sp)
/* 41248 80040648 8E180004 */  lw         $t8, 0x4($s0)
/* 4124C 8004064C 468021A0 */  cvt.s.w    $f6, $f4
/* 41250 80040650 8DAE0018 */  lw         $t6, 0x18($t5)
/* 41254 80040654 8E190000 */  lw         $t9, 0x0($s0)
/* 41258 80040658 25510001 */  addiu      $s1, $t2, 0x1
/* 4125C 8004065C 448E8000 */  mtc1       $t6, $f16
/* 41260 80040660 322FFFFF */  andi       $t7, $s1, 0xFFFF
/* 41264 80040664 46163203 */  div.s      $f8, $f6, $f22
/* 41268 80040668 03194023 */  subu       $t0, $t8, $t9
/* 4126C 8004066C 01E08825 */  or         $s1, $t7, $zero
/* 41270 80040670 00114880 */  sll        $t1, $s1, 2
/* 41274 80040674 468084A1 */  cvt.d.w    $f18, $f16
/* 41278 80040678 02695021 */  addu       $t2, $s3, $t1
/* 4127C 8004067C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 41280 80040680 46004021 */  cvt.d.s    $f0, $f8
/* 41284 80040684 44884000 */  mtc1       $t0, $f8
/* 41288 80040688 46200280 */  add.d      $f10, $f0, $f0
/* 4128C 8004068C 46804421 */  cvt.d.w    $f16, $f8
/* 41290 80040690 46325103 */  div.d      $f4, $f10, $f18
/* 41294 80040694 462021A0 */  cvt.s.d    $f6, $f4
/* 41298 80040698 05010005 */  bgez       $t0, .L800406B0
/* 4129C 8004069C E6060010 */   swc1      $f6, 0x10($s0)
/* 412A0 800406A0 44815800 */  mtc1       $at, $f11
/* 412A4 800406A4 44805000 */  mtc1       $zero, $f10
/* 412A8 800406A8 00000000 */  nop
/* 412AC 800406AC 462A8400 */  add.d      $f16, $f16, $f10
.L800406B0:
/* 412B0 800406B0 8D4B0000 */  lw         $t3, 0x0($t2)
/* 412B4 800406B4 26310001 */  addiu      $s1, $s1, 0x1
/* 412B8 800406B8 322CFFFF */  andi       $t4, $s1, 0xFFFF
/* 412BC 800406BC 448B9000 */  mtc1       $t3, $f18
/* 412C0 800406C0 E6180014 */  swc1       $f24, 0x14($s0)
/* 412C4 800406C4 AE000018 */  sw         $zero, 0x18($s0)
/* 412C8 800406C8 46809120 */  cvt.s.w    $f4, $f18
/* 412CC 800406CC 240D0034 */  addiu      $t5, $zero, 0x34
/* 412D0 800406D0 01808825 */  or         $s1, $t4, $zero
/* 412D4 800406D4 00002025 */  or         $a0, $zero, $zero
/* 412D8 800406D8 00002825 */  or         $a1, $zero, $zero
/* 412DC 800406DC 02C03025 */  or         $a2, $s6, $zero
/* 412E0 800406E0 460021A1 */  cvt.d.s    $f6, $f4
/* 412E4 800406E4 03C03825 */  or         $a3, $fp, $zero
/* 412E8 800406E8 46343203 */  div.d      $f8, $f6, $f20
/* 412EC 800406EC 46304282 */  mul.d      $f10, $f8, $f16
/* 412F0 800406F0 462054A0 */  cvt.s.d    $f18, $f10
/* 412F4 800406F4 E612001C */  swc1       $f18, 0x1C($s0)
/* 412F8 800406F8 0C00D998 */  jal        alHeapDBAlloc
/* 412FC 800406FC AFAD0010 */   sw        $t5, 0x10($sp)
/* 41300 80040700 AE020024 */  sw         $v0, 0x24($s0)
/* 41304 80040704 240E0020 */  addiu      $t6, $zero, 0x20
/* 41308 80040708 AFAE0010 */  sw         $t6, 0x10($sp)
/* 4130C 8004070C 00002025 */  or         $a0, $zero, $zero
/* 41310 80040710 00002825 */  or         $a1, $zero, $zero
/* 41314 80040714 02C03025 */  or         $a2, $s6, $zero
/* 41318 80040718 0C00D998 */  jal        alHeapDBAlloc
/* 4131C 8004071C 03C03825 */   or        $a3, $fp, $zero
/* 41320 80040720 8E0F0024 */  lw         $t7, 0x24($s0)
/* 41324 80040724 ADE20014 */  sw         $v0, 0x14($t7)
/* 41328 80040728 8E180024 */  lw         $t8, 0x24($s0)
/* 4132C 8004072C E71A0020 */  swc1       $f26, 0x20($t8)
/* 41330 80040730 8E190024 */  lw         $t9, 0x24($s0)
/* 41334 80040734 10000004 */  b          .L80040748
/* 41338 80040738 AF3E0024 */   sw        $fp, 0x24($t9)
.L8004073C:
/* 4133C 8004073C 3229FFFF */  andi       $t1, $s1, 0xFFFF
/* 41340 80040740 AE000024 */  sw         $zero, 0x24($s0)
/* 41344 80040744 01208825 */  or         $s1, $t1, $zero
.L80040748:
/* 41348 80040748 00115080 */  sll        $t2, $s1, 2
/* 4134C 8004074C 026A9021 */  addu       $s2, $s3, $t2
/* 41350 80040750 8E4B0000 */  lw         $t3, 0x0($s2)
/* 41354 80040754 00002025 */  or         $a0, $zero, $zero
/* 41358 80040758 00002825 */  or         $a1, $zero, $zero
/* 4135C 8004075C 11600019 */  beqz       $t3, .L800407C4
/* 41360 80040760 02C03025 */   or        $a2, $s6, $zero
/* 41364 80040764 240C0030 */  addiu      $t4, $zero, 0x30
/* 41368 80040768 AFAC0010 */  sw         $t4, 0x10($sp)
/* 4136C 8004076C 0C00D998 */  jal        alHeapDBAlloc
/* 41370 80040770 03C03825 */   or        $a3, $fp, $zero
/* 41374 80040774 AE020020 */  sw         $v0, 0x20($s0)
/* 41378 80040778 240D0008 */  addiu      $t5, $zero, 0x8
/* 4137C 8004077C AFAD0010 */  sw         $t5, 0x10($sp)
/* 41380 80040780 00002025 */  or         $a0, $zero, $zero
/* 41384 80040784 00002825 */  or         $a1, $zero, $zero
/* 41388 80040788 02C03025 */  or         $a2, $s6, $zero
/* 4138C 8004078C 0C00D998 */  jal        alHeapDBAlloc
/* 41390 80040790 03C03825 */   or        $a3, $fp, $zero
/* 41394 80040794 8E0E0020 */  lw         $t6, 0x20($s0)
/* 41398 80040798 26310001 */  addiu      $s1, $s1, 0x1
/* 4139C 8004079C 3239FFFF */  andi       $t9, $s1, 0xFFFF
/* 413A0 800407A0 ADC20028 */  sw         $v0, 0x28($t6)
/* 413A4 800407A4 8E180020 */  lw         $t8, 0x20($s0)
/* 413A8 800407A8 8E4F0000 */  lw         $t7, 0x0($s2)
/* 413AC 800407AC 03208825 */  or         $s1, $t9, $zero
/* 413B0 800407B0 A70F0000 */  sh         $t7, 0x0($t8)
/* 413B4 800407B4 0C0100D4 */  jal        init_lpfilter
/* 413B8 800407B8 8E040020 */   lw        $a0, 0x20($s0)
/* 413BC 800407BC 10000006 */  b          .L800407D8
/* 413C0 800407C0 92AA0024 */   lbu       $t2, 0x24($s5)
.L800407C4:
/* 413C4 800407C4 26310001 */  addiu      $s1, $s1, 0x1
/* 413C8 800407C8 3228FFFF */  andi       $t0, $s1, 0xFFFF
/* 413CC 800407CC AE000020 */  sw         $zero, 0x20($s0)
/* 413D0 800407D0 01008825 */  or         $s1, $t0, $zero
/* 413D4 800407D4 92AA0024 */  lbu        $t2, 0x24($s5)
.L800407D8:
/* 413D8 800407D8 26940001 */  addiu      $s4, $s4, 0x1
/* 413DC 800407DC 3289FFFF */  andi       $t1, $s4, 0xFFFF
/* 413E0 800407E0 012A082A */  slt        $at, $t1, $t2
/* 413E4 800407E4 1420FF6D */  bnez       $at, .L8004059C
/* 413E8 800407E8 0120A025 */   or        $s4, $t1, $zero
.L800407EC:
/* 413EC 800407EC 8FBF0064 */  lw         $ra, 0x64($sp)
/* 413F0 800407F0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 413F4 800407F4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 413F8 800407F8 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 413FC 800407FC D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 41400 80040800 8FB00040 */  lw         $s0, 0x40($sp)
/* 41404 80040804 8FB10044 */  lw         $s1, 0x44($sp)
/* 41408 80040808 8FB20048 */  lw         $s2, 0x48($sp)
/* 4140C 8004080C 8FB3004C */  lw         $s3, 0x4C($sp)
/* 41410 80040810 8FB40050 */  lw         $s4, 0x50($sp)
/* 41414 80040814 8FB50054 */  lw         $s5, 0x54($sp)
/* 41418 80040818 8FB60058 */  lw         $s6, 0x58($sp)
/* 4141C 8004081C 8FB7005C */  lw         $s7, 0x5C($sp)
/* 41420 80040820 8FBE0060 */  lw         $fp, 0x60($sp)
/* 41424 80040824 03E00008 */  jr         $ra
/* 41428 80040828 27BD0068 */   addiu     $sp, $sp, 0x68
/* 4142C 8004082C 00000000 */  nop