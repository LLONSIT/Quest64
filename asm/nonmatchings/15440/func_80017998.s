.section .late_rodata
glabel D_800714F0
/* 720F0 800714F0 3FF3333333333333 */ .double 1.19999999999999996

glabel D_800714F8
/* 720F8 800714F8 3FC999999999999A */ .double 0.200000000000000011


.section .text
glabel func_80017998
/* 18598 80017998 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1859C 8001799C AFB10030 */  sw         $s1, 0x30($sp)
/* 185A0 800179A0 AFB0002C */  sw         $s0, 0x2C($sp)
/* 185A4 800179A4 00808025 */  or         $s0, $a0, $zero
/* 185A8 800179A8 00A08825 */  or         $s1, $a1, $zero
/* 185AC 800179AC AFBF0034 */  sw         $ra, 0x34($sp)
/* 185B0 800179B0 8E080030 */  lw         $t0, 0x30($s0)
/* 185B4 800179B4 8E03002C */  lw         $v1, 0x2C($s0)
/* 185B8 800179B8 85020000 */  lh         $v0, 0x0($t0)
/* 185BC 800179BC 0442003C */  bltzl      $v0, .L80017AB0
/* 185C0 800179C0 AE000034 */   sw        $zero, 0x34($s0)
/* 185C4 800179C4 C5040008 */  lwc1       $f4, 0x8($t0)
/* 185C8 800179C8 3C098008 */  lui        $t1, %hi(D_800871D0)
/* 185CC 800179CC 252971D0 */  addiu      $t1, $t1, %lo(D_800871D0)
/* 185D0 800179D0 E5240000 */  swc1       $f4, 0x0($t1)
/* 185D4 800179D4 C506000C */  lwc1       $f6, 0xC($t0)
/* 185D8 800179D8 44800000 */  mtc1       $zero, $f0
/* 185DC 800179DC 00027080 */  sll        $t6, $v0, 2
/* 185E0 800179E0 E5260004 */  swc1       $f6, 0x4($t1)
/* 185E4 800179E4 C468001C */  lwc1       $f8, 0x1C($v1)
/* 185E8 800179E8 01C27021 */  addu       $t6, $t6, $v0
/* 185EC 800179EC 3C0F800C */  lui        $t7, %hi(D_800C1B90)
/* 185F0 800179F0 E5280008 */  swc1       $f8, 0x8($t1)
/* 185F4 800179F4 C60C0018 */  lwc1       $f12, 0x18($s0)
/* 185F8 800179F8 25EF1B90 */  addiu      $t7, $t7, %lo(D_800C1B90)
/* 185FC 800179FC 000E7040 */  sll        $t6, $t6, 1
/* 18600 80017A00 460C0032 */  c.eq.s     $f0, $f12
/* 18604 80017A04 01CF5021 */  addu       $t2, $t6, $t7
/* 18608 80017A08 45020007 */  bc1fl      .L80017A28
/* 1860C 80017A0C C60E0020 */   lwc1      $f14, 0x20($s0)
/* 18610 80017A10 C60A0020 */  lwc1       $f10, 0x20($s0)
/* 18614 80017A14 460A0032 */  c.eq.s     $f0, $f10
/* 18618 80017A18 00000000 */  nop
/* 1861C 80017A1C 4503000C */  bc1tl      .L80017A50
/* 18620 80017A20 C6220010 */   lwc1      $f2, 0x10($s1)
/* 18624 80017A24 C60E0020 */  lwc1       $f14, 0x20($s0)
.L80017A28:
/* 18628 80017A28 AFAA0038 */  sw         $t2, 0x38($sp)
/* 1862C 80017A2C 0C008C84 */  jal        func_80023210
/* 18630 80017A30 AFA8003C */   sw        $t0, 0x3C($sp)
/* 18634 80017A34 3C098008 */  lui        $t1, %hi(D_800871D0)
/* 18638 80017A38 252971D0 */  addiu      $t1, $t1, %lo(D_800871D0)
/* 1863C 80017A3C 8FA8003C */  lw         $t0, 0x3C($sp)
/* 18640 80017A40 8FAA0038 */  lw         $t2, 0x38($sp)
/* 18644 80017A44 10000002 */  b          .L80017A50
/* 18648 80017A48 46000086 */   mov.s     $f2, $f0
/* 1864C 80017A4C C6220010 */  lwc1       $f2, 0x10($s1)
.L80017A50:
/* 18650 80017A50 C6100014 */  lwc1       $f16, 0x14($s0)
/* 18654 80017A54 95040002 */  lhu        $a0, 0x2($t0)
/* 18658 80017A58 95050004 */  lhu        $a1, 0x4($t0)
/* 1865C 80017A5C 8E06000C */  lw         $a2, 0xC($s0)
/* 18660 80017A60 8E070010 */  lw         $a3, 0x10($s0)
/* 18664 80017A64 AFA8003C */  sw         $t0, 0x3C($sp)
/* 18668 80017A68 AFB10020 */  sw         $s1, 0x20($sp)
/* 1866C 80017A6C AFA9001C */  sw         $t1, 0x1C($sp)
/* 18670 80017A70 AFAA0018 */  sw         $t2, 0x18($sp)
/* 18674 80017A74 E7A20014 */  swc1       $f2, 0x14($sp)
/* 18678 80017A78 0C005DFE */  jal        func_800177F8
/* 1867C 80017A7C E7B00010 */   swc1      $f16, 0x10($sp)
/* 18680 80017A80 C6120018 */  lwc1       $f18, 0x18($s0)
/* 18684 80017A84 8FA8003C */  lw         $t0, 0x3C($sp)
/* 18688 80017A88 AE020034 */  sw         $v0, 0x34($s0)
/* 1868C 80017A8C E4520028 */  swc1       $f18, 0x28($v0)
/* 18690 80017A90 8E180034 */  lw         $t8, 0x34($s0)
/* 18694 80017A94 C604001C */  lwc1       $f4, 0x1C($s0)
/* 18698 80017A98 E704002C */  swc1       $f4, 0x2C($t8)
/* 1869C 80017A9C 8E190034 */  lw         $t9, 0x34($s0)
/* 186A0 80017AA0 C6060020 */  lwc1       $f6, 0x20($s0)
/* 186A4 80017AA4 10000002 */  b          .L80017AB0
/* 186A8 80017AA8 E7260030 */   swc1      $f6, 0x30($t9)
/* 186AC 80017AAC AE000034 */  sw         $zero, 0x34($s0)
.L80017AB0:
/* 186B0 80017AB0 960B0000 */  lhu        $t3, 0x0($s0)
/* 186B4 80017AB4 960E0002 */  lhu        $t6, 0x2($s0)
/* 186B8 80017AB8 3C0D800C */  lui        $t5, %hi(D_800C38F4)
/* 186BC 80017ABC 000B6080 */  sll        $t4, $t3, 2
/* 186C0 80017AC0 01AC6821 */  addu       $t5, $t5, $t4
/* 186C4 80017AC4 8DAD38F4 */  lw         $t5, %lo(D_800C38F4)($t5)
/* 186C8 80017AC8 000E7880 */  sll        $t7, $t6, 2
/* 186CC 80017ACC 01EE7823 */  subu       $t7, $t7, $t6
/* 186D0 80017AD0 000F7880 */  sll        $t7, $t7, 2
/* 186D4 80017AD4 01AF1821 */  addu       $v1, $t5, $t7
/* 186D8 80017AD8 94640000 */  lhu        $a0, 0x0($v1)
/* 186DC 80017ADC 50800033 */  beql       $a0, $zero, .L80017BAC
/* 186E0 80017AE0 81050040 */   lb        $a1, 0x40($t0)
/* 186E4 80017AE4 8E220064 */  lw         $v0, 0x64($s1)
/* 186E8 80017AE8 C6220024 */  lwc1       $f2, 0x24($s1)
/* 186EC 80017AEC C6240004 */  lwc1       $f4, 0x4($s1)
/* 186F0 80017AF0 C4480018 */  lwc1       $f8, 0x18($v0)
/* 186F4 80017AF4 46001421 */  cvt.d.s    $f16, $f2
/* 186F8 80017AF8 C446001C */  lwc1       $f6, 0x1C($v0)
/* 186FC 80017AFC 46004021 */  cvt.d.s    $f0, $f8
/* 18700 80017B00 24010001 */  addiu      $at, $zero, 0x1
/* 18704 80017B04 46200280 */  add.d      $f10, $f0, $f0
/* 18708 80017B08 46305482 */  mul.d      $f18, $f10, $f16
/* 1870C 80017B0C 00000000 */  nop
/* 18710 80017B10 46023202 */  mul.s      $f8, $f6, $f2
/* 18714 80017B14 46209320 */  cvt.s.d    $f12, $f18
/* 18718 80017B18 10810006 */  beq        $a0, $at, .L80017B34
/* 1871C 80017B1C 46082380 */   add.s     $f14, $f4, $f8
/* 18720 80017B20 24010002 */  addiu      $at, $zero, 0x2
/* 18724 80017B24 10810013 */  beq        $a0, $at, .L80017B74
/* 18728 80017B28 00000000 */   nop
/* 1872C 80017B2C 1000001F */  b          .L80017BAC
/* 18730 80017B30 81050040 */   lb        $a1, 0x40($t0)
.L80017B34:
/* 18734 80017B34 3C018007 */  lui        $at, %hi(D_800714F0)
/* 18738 80017B38 D43214F0 */  ldc1       $f18, %lo(D_800714F0)($at)
/* 1873C 80017B3C 46006421 */  cvt.d.s    $f16, $f12
/* 18740 80017B40 C62A0008 */  lwc1       $f10, 0x8($s1)
/* 18744 80017B44 46328182 */  mul.d      $f6, $f16, $f18
/* 18748 80017B48 94640002 */  lhu        $a0, 0x2($v1)
/* 1874C 80017B4C 8E260000 */  lw         $a2, 0x0($s1)
/* 18750 80017B50 44077000 */  mfc1       $a3, $f14
/* 18754 80017B54 AFA8003C */  sw         $t0, 0x3C($sp)
/* 18758 80017B58 2405001E */  addiu      $a1, $zero, 0x1E
/* 1875C 80017B5C E7AA0010 */  swc1       $f10, 0x10($sp)
/* 18760 80017B60 46203120 */  cvt.s.d    $f4, $f6
/* 18764 80017B64 0C0064D5 */  jal        func_80019354
/* 18768 80017B68 E7A40014 */   swc1      $f4, 0x14($sp)
/* 1876C 80017B6C 1000000E */  b          .L80017BA8
/* 18770 80017B70 8FA8003C */   lw        $t0, 0x3C($sp)
.L80017B74:
/* 18774 80017B74 3C018007 */  lui        $at, %hi(D_800714F8)
/* 18778 80017B78 D42A14F8 */  ldc1       $f10, %lo(D_800714F8)($at)
/* 1877C 80017B7C 46006221 */  cvt.d.s    $f8, $f12
/* 18780 80017B80 94640002 */  lhu        $a0, 0x2($v1)
/* 18784 80017B84 462A4402 */  mul.d      $f16, $f8, $f10
/* 18788 80017B88 8E250000 */  lw         $a1, 0x0($s1)
/* 1878C 80017B8C 44067000 */  mfc1       $a2, $f14
/* 18790 80017B90 8E270008 */  lw         $a3, 0x8($s1)
/* 18794 80017B94 AFA8003C */  sw         $t0, 0x3C($sp)
/* 18798 80017B98 462084A0 */  cvt.s.d    $f18, $f16
/* 1879C 80017B9C 0C0065CE */  jal        func_80019738
/* 187A0 80017BA0 E7B20010 */   swc1      $f18, 0x10($sp)
/* 187A4 80017BA4 8FA8003C */  lw         $t0, 0x3C($sp)
.L80017BA8:
/* 187A8 80017BA8 81050040 */  lb         $a1, 0x40($t0)
.L80017BAC:
/* 187AC 80017BAC 240600FF */  addiu      $a2, $zero, 0xFF
/* 187B0 80017BB0 04A20004 */  bltzl      $a1, .L80017BC4
/* 187B4 80017BB4 8FBF0034 */   lw        $ra, 0x34($sp)
/* 187B8 80017BB8 0C009A35 */  jal        func_800268D4
/* 187BC 80017BBC 91040041 */   lbu       $a0, 0x41($t0)
/* 187C0 80017BC0 8FBF0034 */  lw         $ra, 0x34($sp)
.L80017BC4:
/* 187C4 80017BC4 8FB0002C */  lw         $s0, 0x2C($sp)
/* 187C8 80017BC8 8FB10030 */  lw         $s1, 0x30($sp)
/* 187CC 80017BCC 03E00008 */  jr         $ra
/* 187D0 80017BD0 27BD0050 */   addiu     $sp, $sp, 0x50
