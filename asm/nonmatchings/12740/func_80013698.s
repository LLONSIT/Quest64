glabel func_80013698
/* 14298 80013698 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1429C 8001369C AFB00018 */  sw         $s0, 0x18($sp)
/* 142A0 800136A0 00808025 */  or         $s0, $a0, $zero
/* 142A4 800136A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 142A8 800136A8 8E0E0080 */  lw         $t6, 0x80($s0)
/* 142AC 800136AC 02002025 */  or         $a0, $s0, $zero
/* 142B0 800136B0 0C004F4C */  jal        func_80013D30
/* 142B4 800136B4 AFAE0024 */   sw        $t6, 0x24($sp)
/* 142B8 800136B8 02002025 */  or         $a0, $s0, $zero
/* 142BC 800136BC 0C004F4F */  jal        func_80013D3C
/* 142C0 800136C0 8FA50024 */   lw        $a1, 0x24($sp)
/* 142C4 800136C4 C6080010 */  lwc1       $f8, 0x10($s0)
/* 142C8 800136C8 C60A001C */  lwc1       $f10, 0x1C($s0)
/* 142CC 800136CC C604000C */  lwc1       $f4, 0xC($s0)
/* 142D0 800136D0 C6060018 */  lwc1       $f6, 0x18($s0)
/* 142D4 800136D4 460A4481 */  sub.s      $f18, $f8, $f10
/* 142D8 800136D8 46062001 */  sub.s      $f0, $f4, $f6
/* 142DC 800136DC E7B20030 */  swc1       $f18, 0x30($sp)
/* 142E0 800136E0 C6060020 */  lwc1       $f6, 0x20($s0)
/* 142E4 800136E4 C6040014 */  lwc1       $f4, 0x14($s0)
/* 142E8 800136E8 46000202 */  mul.s      $f8, $f0, $f0
/* 142EC 800136EC E7A00034 */  swc1       $f0, 0x34($sp)
/* 142F0 800136F0 46062081 */  sub.s      $f2, $f4, $f6
/* 142F4 800136F4 46021282 */  mul.s      $f10, $f2, $f2
/* 142F8 800136F8 E7A2002C */  swc1       $f2, 0x2C($sp)
/* 142FC 800136FC 0C00D3D8 */  jal        _nsqrtf
/* 14300 80013700 460A4300 */   add.s     $f12, $f8, $f10
/* 14304 80013704 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 14308 80013708 44808000 */  mtc1       $zero, $f16
/* 1430C 8001370C E7A00028 */  swc1       $f0, 0x28($sp)
/* 14310 80013710 46106032 */  c.eq.s     $f12, $f16
/* 14314 80013714 00000000 */  nop
/* 14318 80013718 45000005 */  bc1f       .L80013730
/* 1431C 8001371C 00000000 */   nop
/* 14320 80013720 46100032 */  c.eq.s     $f0, $f16
/* 14324 80013724 00000000 */  nop
/* 14328 80013728 45030006 */  bc1tl      .L80013744
/* 1432C 8001372C C7AC0034 */   lwc1      $f12, 0x34($sp)
.L80013730:
/* 14330 80013730 0C008C84 */  jal        func_80023210
/* 14334 80013734 C7AE0028 */   lwc1      $f14, 0x28($sp)
/* 14338 80013738 44808000 */  mtc1       $zero, $f16
/* 1433C 8001373C E6000024 */  swc1       $f0, 0x24($s0)
/* 14340 80013740 C7AC0034 */  lwc1       $f12, 0x34($sp)
.L80013744:
/* 14344 80013744 C7B2002C */  lwc1       $f18, 0x2C($sp)
/* 14348 80013748 46106032 */  c.eq.s     $f12, $f16
/* 1434C 8001374C 00000000 */  nop
/* 14350 80013750 45000005 */  bc1f       .L80013768
/* 14354 80013754 00000000 */   nop
/* 14358 80013758 46109032 */  c.eq.s     $f18, $f16
/* 1435C 8001375C 00000000 */  nop
/* 14360 80013760 45030006 */  bc1tl      .L8001377C
/* 14364 80013764 C60C0060 */   lwc1      $f12, 0x60($s0)
.L80013768:
/* 14368 80013768 0C008C84 */  jal        func_80023210
/* 1436C 8001376C C7AE002C */   lwc1      $f14, 0x2C($sp)
/* 14370 80013770 44808000 */  mtc1       $zero, $f16
/* 14374 80013774 E6000028 */  swc1       $f0, 0x28($s0)
/* 14378 80013778 C60C0060 */  lwc1       $f12, 0x60($s0)
.L8001377C:
/* 1437C 8001377C 460C8032 */  c.eq.s     $f16, $f12
/* 14380 80013780 00000000 */  nop
/* 14384 80013784 45020007 */  bc1fl      .L800137A4
/* 14388 80013788 C6000024 */   lwc1      $f0, 0x24($s0)
/* 1438C 8001378C C6040064 */  lwc1       $f4, 0x64($s0)
/* 14390 80013790 46048032 */  c.eq.s     $f16, $f4
/* 14394 80013794 00000000 */  nop
/* 14398 80013798 45030027 */  bc1tl      .L80013838
/* 1439C 8001379C C6020068 */   lwc1      $f2, 0x68($s0)
/* 143A0 800137A0 C6000024 */  lwc1       $f0, 0x24($s0)
.L800137A4:
/* 143A4 800137A4 460C003C */  c.lt.s     $f0, $f12
/* 143A8 800137A8 00000000 */  nop
/* 143AC 800137AC 45020010 */  bc1fl      .L800137F0
/* 143B0 800137B0 C60C0064 */   lwc1      $f12, 0x64($s0)
/* 143B4 800137B4 0C00D87C */  jal        cosf
/* 143B8 800137B8 E60C0024 */   swc1      $f12, 0x24($s0)
/* 143BC 800137BC C7A60028 */  lwc1       $f6, 0x28($sp)
/* 143C0 800137C0 46003203 */  div.s      $f8, $f6, $f0
/* 143C4 800137C4 E7A80034 */  swc1       $f8, 0x34($sp)
/* 143C8 800137C8 0C00D5A0 */  jal        sinf
/* 143CC 800137CC C60C0060 */   lwc1      $f12, 0x60($s0)
/* 143D0 800137D0 C7B20034 */  lwc1       $f18, 0x34($sp)
/* 143D4 800137D4 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 143D8 800137D8 44808000 */  mtc1       $zero, $f16
/* 143DC 800137DC 46120102 */  mul.s      $f4, $f0, $f18
/* 143E0 800137E0 46045181 */  sub.s      $f6, $f10, $f4
/* 143E4 800137E4 10000013 */  b          .L80013834
/* 143E8 800137E8 E606001C */   swc1      $f6, 0x1C($s0)
/* 143EC 800137EC C60C0064 */  lwc1       $f12, 0x64($s0)
.L800137F0:
/* 143F0 800137F0 4600603C */  c.lt.s     $f12, $f0
/* 143F4 800137F4 00000000 */  nop
/* 143F8 800137F8 4502000F */  bc1fl      .L80013838
/* 143FC 800137FC C6020068 */   lwc1      $f2, 0x68($s0)
/* 14400 80013800 0C00D87C */  jal        cosf
/* 14404 80013804 E60C0024 */   swc1      $f12, 0x24($s0)
/* 14408 80013808 C7A80028 */  lwc1       $f8, 0x28($sp)
/* 1440C 8001380C 46004483 */  div.s      $f18, $f8, $f0
/* 14410 80013810 E7B20034 */  swc1       $f18, 0x34($sp)
/* 14414 80013814 0C00D5A0 */  jal        sinf
/* 14418 80013818 C60C0064 */   lwc1      $f12, 0x64($s0)
/* 1441C 8001381C C7A40034 */  lwc1       $f4, 0x34($sp)
/* 14420 80013820 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 14424 80013824 44808000 */  mtc1       $zero, $f16
/* 14428 80013828 46040182 */  mul.s      $f6, $f0, $f4
/* 1442C 8001382C 46065201 */  sub.s      $f8, $f10, $f6
/* 14430 80013830 E608001C */  swc1       $f8, 0x1C($s0)
.L80013834:
/* 14434 80013834 C6020068 */  lwc1       $f2, 0x68($s0)
.L80013838:
/* 14438 80013838 C60E006C */  lwc1       $f14, 0x6C($s0)
/* 1443C 8001383C 460E103C */  c.lt.s     $f2, $f14
/* 14440 80013840 00000000 */  nop
/* 14444 80013844 45020033 */  bc1fl      .L80013914
/* 14448 80013848 4602703C */   c.lt.s    $f14, $f2
/* 1444C 8001384C C6000028 */  lwc1       $f0, 0x28($s0)
/* 14450 80013850 4602003C */  c.lt.s     $f0, $f2
/* 14454 80013854 00000000 */  nop
/* 14458 80013858 45020016 */  bc1fl      .L800138B4
/* 1445C 8001385C 4600703C */   c.lt.s    $f14, $f0
/* 14460 80013860 E6020028 */  swc1       $f2, 0x28($s0)
/* 14464 80013864 C7B20028 */  lwc1       $f18, 0x28($sp)
/* 14468 80013868 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 1446C 8001386C 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14470 80013870 46009107 */  neg.s      $f4, $f18
/* 14474 80013874 E4B00000 */  swc1       $f16, 0x0($a1)
/* 14478 80013878 E4A40004 */  swc1       $f4, 0x4($a1)
/* 1447C 8001387C 0C008CBD */  jal        func_800232F4
/* 14480 80013880 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 14484 80013884 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14488 80013888 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 1448C 8001388C C4A60000 */  lwc1       $f6, 0x0($a1)
/* 14490 80013890 C60A000C */  lwc1       $f10, 0xC($s0)
/* 14494 80013894 C6120014 */  lwc1       $f18, 0x14($s0)
/* 14498 80013898 46065200 */  add.s      $f8, $f10, $f6
/* 1449C 8001389C E6080018 */  swc1       $f8, 0x18($s0)
/* 144A0 800138A0 C4A40004 */  lwc1       $f4, 0x4($a1)
/* 144A4 800138A4 46049280 */  add.s      $f10, $f18, $f4
/* 144A8 800138A8 10000054 */  b          .L800139FC
/* 144AC 800138AC E60A0020 */   swc1      $f10, 0x20($s0)
/* 144B0 800138B0 4600703C */  c.lt.s     $f14, $f0
.L800138B4:
/* 144B4 800138B4 00000000 */  nop
/* 144B8 800138B8 45020051 */  bc1fl      .L80013A00
/* 144BC 800138BC C6080028 */   lwc1      $f8, 0x28($s0)
/* 144C0 800138C0 E60E0028 */  swc1       $f14, 0x28($s0)
/* 144C4 800138C4 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 144C8 800138C8 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 144CC 800138CC 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 144D0 800138D0 46003207 */  neg.s      $f8, $f6
/* 144D4 800138D4 E4B00000 */  swc1       $f16, 0x0($a1)
/* 144D8 800138D8 E4A80004 */  swc1       $f8, 0x4($a1)
/* 144DC 800138DC 0C008CBD */  jal        func_800232F4
/* 144E0 800138E0 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 144E4 800138E4 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 144E8 800138E8 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 144EC 800138EC C4A40000 */  lwc1       $f4, 0x0($a1)
/* 144F0 800138F0 C612000C */  lwc1       $f18, 0xC($s0)
/* 144F4 800138F4 C6060014 */  lwc1       $f6, 0x14($s0)
/* 144F8 800138F8 46049280 */  add.s      $f10, $f18, $f4
/* 144FC 800138FC E60A0018 */  swc1       $f10, 0x18($s0)
/* 14500 80013900 C4A80004 */  lwc1       $f8, 0x4($a1)
/* 14504 80013904 46083480 */  add.s      $f18, $f6, $f8
/* 14508 80013908 1000003C */  b          .L800139FC
/* 1450C 8001390C E6120020 */   swc1      $f18, 0x20($s0)
/* 14510 80013910 4602703C */  c.lt.s     $f14, $f2
.L80013914:
/* 14514 80013914 00000000 */  nop
/* 14518 80013918 45020039 */  bc1fl      .L80013A00
/* 1451C 8001391C C6080028 */   lwc1      $f8, 0x28($s0)
/* 14520 80013920 C6000028 */  lwc1       $f0, 0x28($s0)
/* 14524 80013924 44805800 */  mtc1       $zero, $f11
/* 14528 80013928 44805000 */  mtc1       $zero, $f10
/* 1452C 8001392C 46000121 */  cvt.d.s    $f4, $f0
/* 14530 80013930 462A203C */  c.lt.d     $f4, $f10
/* 14534 80013934 00000000 */  nop
/* 14538 80013938 4502001A */  bc1fl      .L800139A4
/* 1453C 8001393C 4602003C */   c.lt.s    $f0, $f2
/* 14540 80013940 4600703C */  c.lt.s     $f14, $f0
/* 14544 80013944 00000000 */  nop
/* 14548 80013948 4502002D */  bc1fl      .L80013A00
/* 1454C 8001394C C6080028 */   lwc1      $f8, 0x28($s0)
/* 14550 80013950 E60E0028 */  swc1       $f14, 0x28($s0)
/* 14554 80013954 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 14558 80013958 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 1455C 8001395C 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14560 80013960 46003207 */  neg.s      $f8, $f6
/* 14564 80013964 E4B00000 */  swc1       $f16, 0x0($a1)
/* 14568 80013968 E4A80004 */  swc1       $f8, 0x4($a1)
/* 1456C 8001396C 0C008CBD */  jal        func_800232F4
/* 14570 80013970 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 14574 80013974 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14578 80013978 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 1457C 8001397C C4A40000 */  lwc1       $f4, 0x0($a1)
/* 14580 80013980 C612000C */  lwc1       $f18, 0xC($s0)
/* 14584 80013984 C6060014 */  lwc1       $f6, 0x14($s0)
/* 14588 80013988 46049280 */  add.s      $f10, $f18, $f4
/* 1458C 8001398C E60A0018 */  swc1       $f10, 0x18($s0)
/* 14590 80013990 C4A80004 */  lwc1       $f8, 0x4($a1)
/* 14594 80013994 46083480 */  add.s      $f18, $f6, $f8
/* 14598 80013998 10000018 */  b          .L800139FC
/* 1459C 8001399C E6120020 */   swc1      $f18, 0x20($s0)
/* 145A0 800139A0 4602003C */  c.lt.s     $f0, $f2
.L800139A4:
/* 145A4 800139A4 00000000 */  nop
/* 145A8 800139A8 45020015 */  bc1fl      .L80013A00
/* 145AC 800139AC C6080028 */   lwc1      $f8, 0x28($s0)
/* 145B0 800139B0 E6020028 */  swc1       $f2, 0x28($s0)
/* 145B4 800139B4 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 145B8 800139B8 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 145BC 800139BC 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 145C0 800139C0 46002287 */  neg.s      $f10, $f4
/* 145C4 800139C4 E4B00000 */  swc1       $f16, 0x0($a1)
/* 145C8 800139C8 E4AA0004 */  swc1       $f10, 0x4($a1)
/* 145CC 800139CC 0C008CBD */  jal        func_800232F4
/* 145D0 800139D0 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 145D4 800139D4 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 145D8 800139D8 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 145DC 800139DC C4A80000 */  lwc1       $f8, 0x0($a1)
/* 145E0 800139E0 C606000C */  lwc1       $f6, 0xC($s0)
/* 145E4 800139E4 C6040014 */  lwc1       $f4, 0x14($s0)
/* 145E8 800139E8 46083480 */  add.s      $f18, $f6, $f8
/* 145EC 800139EC E6120018 */  swc1       $f18, 0x18($s0)
/* 145F0 800139F0 C4AA0004 */  lwc1       $f10, 0x4($a1)
/* 145F4 800139F4 460A2180 */  add.s      $f6, $f4, $f10
/* 145F8 800139F8 E6060020 */  swc1       $f6, 0x20($s0)
.L800139FC:
/* 145FC 800139FC C6080028 */  lwc1       $f8, 0x28($s0)
.L80013A00:
/* 14600 80013A00 E608002C */  swc1       $f8, 0x2C($s0)
/* 14604 80013A04 8FBF001C */  lw         $ra, 0x1C($sp)
/* 14608 80013A08 8FB00018 */  lw         $s0, 0x18($sp)
/* 1460C 80013A0C 03E00008 */  jr         $ra
/* 14610 80013A10 27BD0038 */   addiu     $sp, $sp, 0x38
