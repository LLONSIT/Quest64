glabel func_800086E4
/* 92E4 800086E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 92E8 800086E8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 92EC 800086EC AFB00020 */  sw         $s0, 0x20($sp)
/* 92F0 800086F0 00047140 */  sll        $t6, $a0, 5
/* 92F4 800086F4 01C47021 */  addu       $t6, $t6, $a0
/* 92F8 800086F8 3C0F8008 */  lui        $t7, %hi(D_8007BD30)
/* 92FC 800086FC 25EFBD30 */  addiu      $t7, $t7, %lo(D_8007BD30)
/* 9300 80008700 000E7080 */  sll        $t6, $t6, 2
/* 9304 80008704 01CF8021 */  addu       $s0, $t6, $t7
/* 9308 80008708 8E190080 */  lw         $t9, 0x80($s0)
/* 930C 8000870C 24180002 */  addiu      $t8, $zero, 0x2
/* 9310 80008710 A6180000 */  sh         $t8, 0x0($s0)
/* 9314 80008714 93280005 */  lbu        $t0, 0x5($t9)
/* 9318 80008718 240A000F */  addiu      $t2, $zero, 0xF
/* 931C 8000871C 3C018008 */  lui        $at, %hi(D_8007BACC)
/* 9320 80008720 31090002 */  andi       $t1, $t0, 0x2
/* 9324 80008724 51200004 */  beql       $t1, $zero, .L80008738
/* 9328 80008728 A60A0002 */   sh        $t2, 0x2($s0)
/* 932C 8000872C 1000002C */  b          .L800087E0
/* 9330 80008730 A6000002 */   sh        $zero, 0x2($s0)
/* 9334 80008734 A60A0002 */  sh         $t2, 0x2($s0)
.L80008738:
/* 9338 80008738 C424BACC */  lwc1       $f4, %lo(D_8007BACC)($at)
/* 933C 8000873C 3C018008 */  lui        $at, %hi(D_8007BAD4)
/* 9340 80008740 C6060014 */  lwc1       $f6, 0x14($s0)
/* 9344 80008744 C428BAD4 */  lwc1       $f8, %lo(D_8007BAD4)($at)
/* 9348 80008748 C60A001C */  lwc1       $f10, 0x1C($s0)
/* 934C 8000874C 46062301 */  sub.s      $f12, $f4, $f6
/* 9350 80008750 0C008C84 */  jal        func_80023210
/* 9354 80008754 460A4381 */   sub.s     $f14, $f8, $f10
/* 9358 80008758 C6100024 */  lwc1       $f16, 0x24($s0)
/* 935C 8000875C 3C018007 */  lui        $at, %hi(D_80071130)
/* 9360 80008760 D4321130 */  ldc1       $f18, %lo(D_80071130)($at)
/* 9364 80008764 46100301 */  sub.s      $f12, $f0, $f16
/* 9368 80008768 3C018007 */  lui        $at, %hi(D_80071138)
/* 936C 8000876C 240B000F */  addiu      $t3, $zero, 0xF
/* 9370 80008770 26040014 */  addiu      $a0, $s0, 0x14
/* 9374 80008774 460060A1 */  cvt.d.s    $f2, $f12
/* 9378 80008778 24050001 */  addiu      $a1, $zero, 0x1
/* 937C 8000877C 4632103C */  c.lt.d     $f2, $f18
/* 9380 80008780 24060001 */  addiu      $a2, $zero, 0x1
/* 9384 80008784 24070001 */  addiu      $a3, $zero, 0x1
/* 9388 80008788 240C0001 */  addiu      $t4, $zero, 0x1
/* 938C 8000878C 45000005 */  bc1f       .L800087A4
/* 9390 80008790 240D0001 */   addiu     $t5, $zero, 0x1
/* 9394 80008794 D4241138 */  ldc1       $f4, %lo(D_80071138)($at)
/* 9398 80008798 46241180 */  add.d      $f6, $f2, $f4
/* 939C 8000879C 46203320 */  cvt.s.d    $f12, $f6
/* 93A0 800087A0 460060A1 */  cvt.d.s    $f2, $f12
.L800087A4:
/* 93A4 800087A4 3C018007 */  lui        $at, %hi(D_80071140)
/* 93A8 800087A8 D4281140 */  ldc1       $f8, %lo(D_80071140)($at)
/* 93AC 800087AC 3C018007 */  lui        $at, %hi(D_80071148)
/* 93B0 800087B0 4622403C */  c.lt.d     $f8, $f2
/* 93B4 800087B4 00000000 */  nop
/* 93B8 800087B8 45020005 */  bc1fl      .L800087D0
/* 93BC 800087BC E60C0010 */   swc1      $f12, 0x10($s0)
/* 93C0 800087C0 D42A1148 */  ldc1       $f10, %lo(D_80071148)($at)
/* 93C4 800087C4 462A1401 */  sub.d      $f16, $f2, $f10
/* 93C8 800087C8 46208320 */  cvt.s.d    $f12, $f16
/* 93CC 800087CC E60C0010 */  swc1       $f12, 0x10($s0)
.L800087D0:
/* 93D0 800087D0 A60B0002 */  sh         $t3, 0x2($s0)
/* 93D4 800087D4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 93D8 800087D8 0C00762C */  jal        func_8001D8B0
/* 93DC 800087DC AFAD0014 */   sw        $t5, 0x14($sp)
.L800087E0:
/* 93E0 800087E0 8E020080 */  lw         $v0, 0x80($s0)
/* 93E4 800087E4 24010002 */  addiu      $at, $zero, 0x2
/* 93E8 800087E8 94430002 */  lhu        $v1, 0x2($v0)
/* 93EC 800087EC 10610007 */  beq        $v1, $at, .L8000880C
/* 93F0 800087F0 24010005 */   addiu     $at, $zero, 0x5
/* 93F4 800087F4 1061001E */  beq        $v1, $at, .L80008870
/* 93F8 800087F8 24010006 */   addiu     $at, $zero, 0x6
/* 93FC 800087FC 10610035 */  beq        $v1, $at, .L800088D4
/* 9400 80008800 02002025 */   or        $a0, $s0, $zero
/* 9404 80008804 10000049 */  b          .L8000892C
/* 9408 80008808 02002025 */   or        $a0, $s0, $zero
.L8000880C:
/* 940C 8000880C 0C008490 */  jal        func_80021240
/* 9410 80008810 90440007 */   lbu       $a0, 0x7($v0)
/* 9414 80008814 14400005 */  bnez       $v0, .L8000882C
/* 9418 80008818 02002025 */   or        $a0, $s0, $zero
/* 941C 8000881C 8E0E0080 */  lw         $t6, 0x80($s0)
/* 9420 80008820 00001025 */  or         $v0, $zero, $zero
/* 9424 80008824 10000004 */  b          .L80008838
/* 9428 80008828 95C50008 */   lhu       $a1, 0x8($t6)
.L8000882C:
/* 942C 8000882C 8E0F0080 */  lw         $t7, 0x80($s0)
/* 9430 80008830 24020001 */  addiu      $v0, $zero, 0x1
/* 9434 80008834 95E5000A */  lhu        $a1, 0xA($t7)
.L80008838:
/* 9438 80008838 0C002280 */  jal        func_80008A00
/* 943C 8000883C AFA20028 */   sw        $v0, 0x28($sp)
/* 9440 80008840 8FA20028 */  lw         $v0, 0x28($sp)
/* 9444 80008844 5440003C */  bnel       $v0, $zero, .L80008938
/* 9448 80008848 8FBF0024 */   lw        $ra, 0x24($sp)
/* 944C 8000884C 8E180080 */  lw         $t8, 0x80($s0)
/* 9450 80008850 0C0084A8 */  jal        func_800212A0
/* 9454 80008854 93040007 */   lbu       $a0, 0x7($t8)
/* 9458 80008858 3C028008 */  lui        $v0, %hi(D_8007BAB8)
/* 945C 8000885C 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* 9460 80008860 94590008 */  lhu        $t9, 0x8($v0)
/* 9464 80008864 37280040 */  ori        $t0, $t9, 0x40
/* 9468 80008868 10000032 */  b          .L80008934
/* 946C 8000886C A4480008 */   sh        $t0, 0x8($v0)
.L80008870:
/* 9470 80008870 0C002E76 */  jal        func_8000B9D8
/* 9474 80008874 94440006 */   lhu       $a0, 0x6($v0)
/* 9478 80008878 54400005 */  bnel       $v0, $zero, .L80008890
/* 947C 8000887C 8E020080 */   lw        $v0, 0x80($s0)
/* 9480 80008880 8E090080 */  lw         $t1, 0x80($s0)
/* 9484 80008884 1000000F */  b          .L800088C4
/* 9488 80008888 95250008 */   lhu       $a1, 0x8($t1)
/* 948C 8000888C 8E020080 */  lw         $v0, 0x80($s0)
.L80008890:
/* 9490 80008890 24010007 */  addiu      $at, $zero, 0x7
/* 9494 80008894 3C038008 */  lui        $v1, %hi(D_8007B2E4)
/* 9498 80008898 944A0006 */  lhu        $t2, 0x6($v0)
/* 949C 8000889C 2463B2E4 */  addiu      $v1, $v1, %lo(D_8007B2E4)
/* 94A0 800088A0 9445000A */  lhu        $a1, 0xA($v0)
/* 94A4 800088A4 15410007 */  bne        $t2, $at, .L800088C4
/* 94A8 800088A8 00000000 */   nop
/* 94AC 800088AC 8C6B0000 */  lw         $t3, 0x0($v1)
/* 94B0 800088B0 240D0016 */  addiu      $t5, $zero, 0x16
/* 94B4 800088B4 3C018008 */  lui        $at, %hi(D_8007B2EC)
/* 94B8 800088B8 356C8080 */  ori        $t4, $t3, 0x8080
/* 94BC 800088BC AC6C0000 */  sw         $t4, 0x0($v1)
/* 94C0 800088C0 AC2DB2EC */  sw         $t5, %lo(D_8007B2EC)($at)
.L800088C4:
/* 94C4 800088C4 0C002280 */  jal        func_80008A00
/* 94C8 800088C8 02002025 */   or        $a0, $s0, $zero
/* 94CC 800088CC 1000001A */  b          .L80008938
/* 94D0 800088D0 8FBF0024 */   lw        $ra, 0x24($sp)
.L800088D4:
/* 94D4 800088D4 0C002280 */  jal        func_80008A00
/* 94D8 800088D8 94450008 */   lhu       $a1, 0x8($v0)
/* 94DC 800088DC 3C028009 */  lui        $v0, %hi(D_800905C8)
/* 94E0 800088E0 244205C8 */  addiu      $v0, $v0, %lo(D_800905C8)
/* 94E4 800088E4 3C0F8005 */  lui        $t7, %hi(D_8004C280)
/* 94E8 800088E8 3C188005 */  lui        $t8, %hi(D_8004C288)
/* 94EC 800088EC 240E0002 */  addiu      $t6, $zero, 0x2
/* 94F0 800088F0 25EFC280 */  addiu      $t7, $t7, %lo(D_8004C280)
/* 94F4 800088F4 2718C288 */  addiu      $t8, $t8, %lo(D_8004C288)
/* 94F8 800088F8 3C038008 */  lui        $v1, %hi(D_8007B2E4)
/* 94FC 800088FC AC4E0000 */  sw         $t6, 0x0($v0)
/* 9500 80008900 AC4F0008 */  sw         $t7, 0x8($v0)
/* 9504 80008904 AC58000C */  sw         $t8, 0xC($v0)
/* 9508 80008908 2419FFFF */  addiu      $t9, $zero, -0x1
/* 950C 8000890C 3C018009 */  lui        $at, %hi(D_800905C4)
/* 9510 80008910 2463B2E4 */  addiu      $v1, $v1, %lo(D_8007B2E4)
/* 9514 80008914 AC3905C4 */  sw         $t9, %lo(D_800905C4)($at)
/* 9518 80008918 8C680000 */  lw         $t0, 0x0($v1)
/* 951C 8000891C 35090010 */  ori        $t1, $t0, 0x10
/* 9520 80008920 10000004 */  b          .L80008934
/* 9524 80008924 AC690000 */   sw        $t1, 0x0($v1)
/* 9528 80008928 02002025 */  or         $a0, $s0, $zero
.L8000892C:
/* 952C 8000892C 0C002280 */  jal        func_80008A00
/* 9530 80008930 94450008 */   lhu       $a1, 0x8($v0)
.L80008934:
/* 9534 80008934 8FBF0024 */  lw         $ra, 0x24($sp)
.L80008938:
/* 9538 80008938 8FB00020 */  lw         $s0, 0x20($sp)
/* 953C 8000893C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9540 80008940 03E00008 */  jr         $ra
/* 9544 80008944 00000000 */   nop
