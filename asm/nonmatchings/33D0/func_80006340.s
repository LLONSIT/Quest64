glabel func_80006340
/* 6F40 80006340 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 6F44 80006344 AFB10024 */  sw         $s1, 0x24($sp)
/* 6F48 80006348 AFB00020 */  sw         $s0, 0x20($sp)
/* 6F4C 8000634C 3C028008 */  lui        $v0, %hi(D_80085368)
/* 6F50 80006350 24425368 */  addiu      $v0, $v0, %lo(D_80085368)
/* 6F54 80006354 00A08025 */  or         $s0, $a1, $zero
/* 6F58 80006358 00808825 */  or         $s1, $a0, $zero
/* 6F5C 8000635C AFBF002C */  sw         $ra, 0x2C($sp)
/* 6F60 80006360 AFB20028 */  sw         $s2, 0x28($sp)
/* 6F64 80006364 8C4E0010 */  lw         $t6, 0x10($v0)
/* 6F68 80006368 3C188008 */  lui        $t8, %hi(D_80084F24)
/* 6F6C 8000636C 8F184F24 */  lw         $t8, %lo(D_80084F24)($t8)
/* 6F70 80006370 000E7880 */  sll        $t7, $t6, 2
/* 6F74 80006374 01EE7823 */  subu       $t7, $t7, $t6
/* 6F78 80006378 000F78C0 */  sll        $t7, $t7, 3
/* 6F7C 8000637C 01F89021 */  addu       $s2, $t7, $t8
/* 6F80 80006380 02403825 */  or         $a3, $s2, $zero
/* 6F84 80006384 00002025 */  or         $a0, $zero, $zero
/* 6F88 80006388 00002825 */  or         $a1, $zero, $zero
/* 6F8C 8000638C 0C0036DF */  jal        func_8000DB7C
/* 6F90 80006390 9446000C */   lhu       $a2, 0xC($v0)
/* 6F94 80006394 3C028008 */  lui        $v0, %hi(D_80085374)
/* 6F98 80006398 94425374 */  lhu        $v0, %lo(D_80085374)($v0)
/* 6F9C 8000639C 24010003 */  addiu      $at, $zero, 0x3
/* 6FA0 800063A0 240E0009 */  addiu      $t6, $zero, 0x9
/* 6FA4 800063A4 00024203 */  sra        $t0, $v0, 8
/* 6FA8 800063A8 3109000F */  andi       $t1, $t0, 0xF
/* 6FAC 800063AC 1521001A */  bne        $t1, $at, .L80006418
/* 6FB0 800063B0 240F0008 */   addiu     $t7, $zero, 0x8
/* 6FB4 800063B4 A6200006 */  sh         $zero, 0x6($s1)
/* 6FB8 800063B8 240A000A */  addiu      $t2, $zero, 0xA
/* 6FBC 800063BC 240B0001 */  addiu      $t3, $zero, 0x1
/* 6FC0 800063C0 AFAB0014 */  sw         $t3, 0x14($sp)
/* 6FC4 800063C4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 6FC8 800063C8 02002025 */  or         $a0, $s0, $zero
/* 6FCC 800063CC 2405001A */  addiu      $a1, $zero, 0x1A
/* 6FD0 800063D0 24060001 */  addiu      $a2, $zero, 0x1
/* 6FD4 800063D4 0C00762C */  jal        func_8001D8B0
/* 6FD8 800063D8 24070001 */   addiu     $a3, $zero, 0x1
/* 6FDC 800063DC 44800000 */  mtc1       $zero, $f0
/* 6FE0 800063E0 240C0003 */  addiu      $t4, $zero, 0x3
/* 6FE4 800063E4 240D004B */  addiu      $t5, $zero, 0x4B
/* 6FE8 800063E8 A62C0000 */  sh         $t4, 0x0($s1)
/* 6FEC 800063EC A62D0004 */  sh         $t5, 0x4($s1)
/* 6FF0 800063F0 2404001E */  addiu      $a0, $zero, 0x1E
/* 6FF4 800063F4 24050009 */  addiu      $a1, $zero, 0x9
/* 6FF8 800063F8 240600FF */  addiu      $a2, $zero, 0xFF
/* 6FFC 800063FC E600000C */  swc1       $f0, 0xC($s0)
/* 7000 80006400 E6000014 */  swc1       $f0, 0x14($s0)
/* 7004 80006404 E6000018 */  swc1       $f0, 0x18($s0)
/* 7008 80006408 0C009A35 */  jal        func_800268D4
/* 700C 8000640C E6000020 */   swc1      $f0, 0x20($s0)
/* 7010 80006410 10000074 */  b          .L800065E4
/* 7014 80006414 960B0060 */   lhu       $t3, 0x60($s0)
.L80006418:
/* 7018 80006418 A62E0000 */  sh         $t6, 0x0($s1)
/* 701C 8000641C A62F0004 */  sh         $t7, 0x4($s1)
/* 7020 80006420 2418000A */  addiu      $t8, $zero, 0xA
/* 7024 80006424 24190001 */  addiu      $t9, $zero, 0x1
/* 7028 80006428 AFB90014 */  sw         $t9, 0x14($sp)
/* 702C 8000642C AFB80010 */  sw         $t8, 0x10($sp)
/* 7030 80006430 02002025 */  or         $a0, $s0, $zero
/* 7034 80006434 24050001 */  addiu      $a1, $zero, 0x1
/* 7038 80006438 2406000A */  addiu      $a2, $zero, 0xA
/* 703C 8000643C 0C00762C */  jal        func_8001D8B0
/* 7040 80006440 24070001 */   addiu     $a3, $zero, 0x1
/* 7044 80006444 3C088008 */  lui        $t0, %hi(D_80085374)
/* 7048 80006448 95085374 */  lhu        $t0, %lo(D_80085374)($t0)
/* 704C 8000644C 3C058008 */  lui        $a1, %hi(D_8007BC30)
/* 7050 80006450 24A5BC30 */  addiu      $a1, $a1, %lo(D_8007BC30)
/* 7054 80006454 31090001 */  andi       $t1, $t0, 0x1
/* 7058 80006458 1120000E */  beqz       $t1, .L80006494
/* 705C 8000645C 24020014 */   addiu     $v0, $zero, 0x14
/* 7060 80006460 3C01C305 */  lui        $at, (0xC3050000 >> 16)
/* 7064 80006464 44812000 */  mtc1       $at, $f4
/* 7068 80006468 3C01C2B8 */  lui        $at, (0xC2B80000 >> 16)
/* 706C 8000646C 44813000 */  mtc1       $at, $f6
/* 7070 80006470 3C058008 */  lui        $a1, %hi(D_8007BC30)
/* 7074 80006474 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 7078 80006478 44814000 */  mtc1       $at, $f8
/* 707C 8000647C 24A5BC30 */  addiu      $a1, $a1, %lo(D_8007BC30)
/* 7080 80006480 24020015 */  addiu      $v0, $zero, 0x15
/* 7084 80006484 E4A40000 */  swc1       $f4, 0x0($a1)
/* 7088 80006488 E4A60004 */  swc1       $f6, 0x4($a1)
/* 708C 8000648C 1000000A */  b          .L800064B8
/* 7090 80006490 E4A80008 */   swc1      $f8, 0x8($a1)
.L80006494:
/* 7094 80006494 3C01C2EE */  lui        $at, (0xC2EE0000 >> 16)
/* 7098 80006498 44815000 */  mtc1       $at, $f10
/* 709C 8000649C 3C0142FA */  lui        $at, (0x42FA0000 >> 16)
/* 70A0 800064A0 44818000 */  mtc1       $at, $f16
/* 70A4 800064A4 3C014322 */  lui        $at, (0x43220000 >> 16)
/* 70A8 800064A8 44819000 */  mtc1       $at, $f18
/* 70AC 800064AC E4AA0000 */  swc1       $f10, 0x0($a1)
/* 70B0 800064B0 E4B00004 */  swc1       $f16, 0x4($a1)
/* 70B4 800064B4 E4B20008 */  swc1       $f18, 0x8($a1)
.L800064B8:
/* 70B8 800064B8 A6220006 */  sh         $v0, 0x6($s1)
/* 70BC 800064BC C644000C */  lwc1       $f4, 0xC($s2)
/* 70C0 800064C0 3C018007 */  lui        $at, %hi(D_800710C8)
/* 70C4 800064C4 D42810C8 */  ldc1       $f8, %lo(D_800710C8)($at)
/* 70C8 800064C8 460021A1 */  cvt.d.s    $f6, $f4
/* 70CC 800064CC 46283282 */  mul.d      $f10, $f6, $f8
/* 70D0 800064D0 462050A0 */  cvt.s.d    $f2, $f10
/* 70D4 800064D4 46001307 */  neg.s      $f12, $f2
/* 70D8 800064D8 0C008CBD */  jal        func_800232F4
/* 70DC 800064DC E7A20034 */   swc1      $f2, 0x34($sp)
/* 70E0 800064E0 962A0004 */  lhu        $t2, 0x4($s1)
/* 70E4 800064E4 3C058008 */  lui        $a1, %hi(D_8007BC30)
/* 70E8 800064E8 24A5BC30 */  addiu      $a1, $a1, %lo(D_8007BC30)
/* 70EC 800064EC 448A8000 */  mtc1       $t2, $f16
/* 70F0 800064F0 C7A20034 */  lwc1       $f2, 0x34($sp)
/* 70F4 800064F4 05410005 */  bgez       $t2, .L8000650C
/* 70F8 800064F8 46808320 */   cvt.s.w   $f12, $f16
/* 70FC 800064FC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 7100 80006500 44819000 */  mtc1       $at, $f18
/* 7104 80006504 00000000 */  nop
/* 7108 80006508 46126300 */  add.s      $f12, $f12, $f18
.L8000650C:
/* 710C 8000650C C4A40000 */  lwc1       $f4, 0x0($a1)
/* 7110 80006510 C6060024 */  lwc1       $f6, 0x24($s0)
/* 7114 80006514 C64A0000 */  lwc1       $f10, 0x0($s2)
/* 7118 80006518 C6120000 */  lwc1       $f18, 0x0($s0)
/* 711C 8000651C 46062202 */  mul.s      $f8, $f4, $f6
/* 7120 80006520 3C018007 */  lui        $at, %hi(D_800710D0)
/* 7124 80006524 46085401 */  sub.s      $f16, $f10, $f8
/* 7128 80006528 46128101 */  sub.s      $f4, $f16, $f18
/* 712C 8000652C 460C2183 */  div.s      $f6, $f4, $f12
/* 7130 80006530 E6260128 */  swc1       $f6, 0x128($s1)
/* 7134 80006534 C6080024 */  lwc1       $f8, 0x24($s0)
/* 7138 80006538 C4AA0004 */  lwc1       $f10, 0x4($a1)
/* 713C 8000653C C6520008 */  lwc1       $f18, 0x8($s2)
/* 7140 80006540 C6060008 */  lwc1       $f6, 0x8($s0)
/* 7144 80006544 46085402 */  mul.s      $f16, $f10, $f8
/* 7148 80006548 E6220134 */  swc1       $f2, 0x134($s1)
/* 714C 8000654C 46109100 */  add.s      $f4, $f18, $f16
/* 7150 80006550 46062281 */  sub.s      $f10, $f4, $f6
/* 7154 80006554 460C5203 */  div.s      $f8, $f10, $f12
/* 7158 80006558 460012A1 */  cvt.d.s    $f10, $f2
/* 715C 8000655C E628012C */  swc1       $f8, 0x12C($s1)
/* 7160 80006560 C4B20008 */  lwc1       $f18, 0x8($a1)
/* 7164 80006564 D42410D0 */  ldc1       $f4, %lo(D_800710D0)($at)
/* 7168 80006568 3C018007 */  lui        $at, %hi(D_800710D8)
/* 716C 8000656C 46009421 */  cvt.d.s    $f16, $f18
/* 7170 80006570 D43210D8 */  ldc1       $f18, %lo(D_800710D8)($at)
/* 7174 80006574 46248182 */  mul.d      $f6, $f16, $f4
/* 7178 80006578 3C018007 */  lui        $at, %hi(D_800710E8)
/* 717C 8000657C 46265200 */  add.d      $f8, $f10, $f6
/* 7180 80006580 462040A0 */  cvt.s.d    $f2, $f8
/* 7184 80006584 46001021 */  cvt.d.s    $f0, $f2
/* 7188 80006588 4620903C */  c.lt.d     $f18, $f0
/* 718C 8000658C 00000000 */  nop
/* 7190 80006590 45000006 */  bc1f       .L800065AC
/* 7194 80006594 00000000 */   nop
/* 7198 80006598 3C018007 */  lui        $at, %hi(D_800710E0)
/* 719C 8000659C D43010E0 */  ldc1       $f16, %lo(D_800710E0)($at)
/* 71A0 800065A0 46300101 */  sub.d      $f4, $f0, $f16
/* 71A4 800065A4 1000000A */  b          .L800065D0
/* 71A8 800065A8 462020A0 */   cvt.s.d   $f2, $f4
.L800065AC:
/* 71AC 800065AC D42A10E8 */  ldc1       $f10, %lo(D_800710E8)($at)
/* 71B0 800065B0 3C018007 */  lui        $at, %hi(D_800710F0)
/* 71B4 800065B4 462A003C */  c.lt.d     $f0, $f10
/* 71B8 800065B8 00000000 */  nop
/* 71BC 800065BC 45020005 */  bc1fl      .L800065D4
/* 71C0 800065C0 44800000 */   mtc1      $zero, $f0
/* 71C4 800065C4 D42610F0 */  ldc1       $f6, %lo(D_800710F0)($at)
/* 71C8 800065C8 46260200 */  add.d      $f8, $f0, $f6
/* 71CC 800065CC 462040A0 */  cvt.s.d    $f2, $f8
.L800065D0:
/* 71D0 800065D0 44800000 */  mtc1       $zero, $f0
.L800065D4:
/* 71D4 800065D4 E6220130 */  swc1       $f2, 0x130($s1)
/* 71D8 800065D8 E600000C */  swc1       $f0, 0xC($s0)
/* 71DC 800065DC E6000014 */  swc1       $f0, 0x14($s0)
/* 71E0 800065E0 960B0060 */  lhu        $t3, 0x60($s0)
.L800065E4:
/* 71E4 800065E4 356C0001 */  ori        $t4, $t3, 0x1
/* 71E8 800065E8 A60C0060 */  sh         $t4, 0x60($s0)
/* 71EC 800065EC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 71F0 800065F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 71F4 800065F4 8FB10024 */  lw         $s1, 0x24($sp)
/* 71F8 800065F8 8FB20028 */  lw         $s2, 0x28($sp)
/* 71FC 800065FC 03E00008 */  jr         $ra
/* 7200 80006600 27BD0040 */   addiu     $sp, $sp, 0x40