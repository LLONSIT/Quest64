glabel func_80015B8C
/* 1678C 80015B8C 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 16790 80015B90 AFB00020 */  sw         $s0, 0x20($sp)
/* 16794 80015B94 00808025 */  or         $s0, $a0, $zero
/* 16798 80015B98 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1679C 80015B9C 3C0F8005 */  lui        $t7, %hi(D_8004CDA8)
/* 167A0 80015BA0 25EFCDA8 */  addiu      $t7, $t7, %lo(D_8004CDA8)
/* 167A4 80015BA4 8DE10000 */  lw         $at, 0x0($t7)
/* 167A8 80015BA8 27AE0050 */  addiu      $t6, $sp, 0x50
/* 167AC 80015BAC 8DE80004 */  lw         $t0, 0x4($t7)
/* 167B0 80015BB0 ADC10000 */  sw         $at, 0x0($t6)
/* 167B4 80015BB4 8DE10008 */  lw         $at, 0x8($t7)
/* 167B8 80015BB8 ADC80004 */  sw         $t0, 0x4($t6)
/* 167BC 80015BBC 8DE8000C */  lw         $t0, 0xC($t7)
/* 167C0 80015BC0 ADC10008 */  sw         $at, 0x8($t6)
/* 167C4 80015BC4 8DE10010 */  lw         $at, 0x10($t7)
/* 167C8 80015BC8 3C0A8005 */  lui        $t2, %hi(D_8004CDBC)
/* 167CC 80015BCC 254ACDBC */  addiu      $t2, $t2, %lo(D_8004CDBC)
/* 167D0 80015BD0 ADC8000C */  sw         $t0, 0xC($t6)
/* 167D4 80015BD4 ADC10010 */  sw         $at, 0x10($t6)
/* 167D8 80015BD8 8D410000 */  lw         $at, 0x0($t2)
/* 167DC 80015BDC 27A9003C */  addiu      $t1, $sp, 0x3C
/* 167E0 80015BE0 8D4D0004 */  lw         $t5, 0x4($t2)
/* 167E4 80015BE4 AD210000 */  sw         $at, 0x0($t1)
/* 167E8 80015BE8 8D410008 */  lw         $at, 0x8($t2)
/* 167EC 80015BEC AD2D0004 */  sw         $t5, 0x4($t1)
/* 167F0 80015BF0 8D4D000C */  lw         $t5, 0xC($t2)
/* 167F4 80015BF4 AD210008 */  sw         $at, 0x8($t1)
/* 167F8 80015BF8 8D410010 */  lw         $at, 0x10($t2)
/* 167FC 80015BFC AD2D000C */  sw         $t5, 0xC($t1)
/* 16800 80015C00 AD210010 */  sw         $at, 0x10($t1)
/* 16804 80015C04 9603000A */  lhu        $v1, 0xA($s0)
/* 16808 80015C08 8E020028 */  lw         $v0, 0x28($s0)
/* 1680C 80015C0C 30790001 */  andi       $t9, $v1, 0x1
/* 16810 80015C10 572000F1 */  bnel       $t9, $zero, .L80015FD8
/* 16814 80015C14 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16818 80015C18 1040009B */  beqz       $v0, .L80015E88
/* 1681C 80015C1C 30780002 */   andi      $t8, $v1, 0x2
/* 16820 80015C20 57000006 */  bnel       $t8, $zero, .L80015C3C
/* 16824 80015C24 44807000 */   mtc1      $zero, $f14
/* 16828 80015C28 844E0050 */  lh         $t6, 0x50($v0)
/* 1682C 80015C2C 2401FFFF */  addiu      $at, $zero, -0x1
/* 16830 80015C30 55C10007 */  bnel       $t6, $at, .L80015C50
/* 16834 80015C34 8C430064 */   lw        $v1, 0x64($v0)
/* 16838 80015C38 44807000 */  mtc1       $zero, $f14
.L80015C3C:
/* 1683C 80015C3C 44808000 */  mtc1       $zero, $f16
/* 16840 80015C40 44809000 */  mtc1       $zero, $f18
/* 16844 80015C44 1000003A */  b          .L80015D30
/* 16848 80015C48 C6000018 */   lwc1      $f0, 0x18($s0)
/* 1684C 80015C4C 8C430064 */  lw         $v1, 0x64($v0)
.L80015C50:
/* 16850 80015C50 C4440000 */  lwc1       $f4, 0x0($v0)
/* 16854 80015C54 C606000C */  lwc1       $f6, 0xC($s0)
/* 16858 80015C58 946F0000 */  lhu        $t7, 0x0($v1)
/* 1685C 80015C5C 24010001 */  addiu      $at, $zero, 0x1
/* 16860 80015C60 46062481 */  sub.s      $f18, $f4, $f6
/* 16864 80015C64 55E10007 */  bnel       $t7, $at, .L80015C84
/* 16868 80015C68 C464001C */   lwc1      $f4, 0x1C($v1)
/* 1686C 80015C6C 8C480068 */  lw         $t0, 0x68($v0)
/* 16870 80015C70 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 16874 80015C74 C5080094 */  lwc1       $f8, 0x94($t0)
/* 16878 80015C78 10000010 */  b          .L80015CBC
/* 1687C 80015C7C 460A4401 */   sub.s     $f16, $f8, $f10
/* 16880 80015C80 C464001C */  lwc1       $f4, 0x1C($v1)
.L80015C84:
/* 16884 80015C84 C4460024 */  lwc1       $f6, 0x24($v0)
/* 16888 80015C88 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 1688C 80015C8C 44812800 */  mtc1       $at, $f5
/* 16890 80015C90 46062202 */  mul.s      $f8, $f4, $f6
/* 16894 80015C94 44802000 */  mtc1       $zero, $f4
/* 16898 80015C98 460042A1 */  cvt.d.s    $f10, $f8
/* 1689C 80015C9C C4480004 */  lwc1       $f8, 0x4($v0)
/* 168A0 80015CA0 46245182 */  mul.d      $f6, $f10, $f4
/* 168A4 80015CA4 460042A1 */  cvt.d.s    $f10, $f8
/* 168A8 80015CA8 C6080010 */  lwc1       $f8, 0x10($s0)
/* 168AC 80015CAC 46265100 */  add.d      $f4, $f10, $f6
/* 168B0 80015CB0 460042A1 */  cvt.d.s    $f10, $f8
/* 168B4 80015CB4 462A2181 */  sub.d      $f6, $f4, $f10
/* 168B8 80015CB8 46203420 */  cvt.s.d    $f16, $f6
.L80015CBC:
/* 168BC 80015CBC 46129282 */  mul.s      $f10, $f18, $f18
/* 168C0 80015CC0 C4480008 */  lwc1       $f8, 0x8($v0)
/* 168C4 80015CC4 C6040014 */  lwc1       $f4, 0x14($s0)
/* 168C8 80015CC8 46108182 */  mul.s      $f6, $f16, $f16
/* 168CC 80015CCC E7B20088 */  swc1       $f18, 0x88($sp)
/* 168D0 80015CD0 46044381 */  sub.s      $f14, $f8, $f4
/* 168D4 80015CD4 E7B00084 */  swc1       $f16, 0x84($sp)
/* 168D8 80015CD8 460E7102 */  mul.s      $f4, $f14, $f14
/* 168DC 80015CDC 46065200 */  add.s      $f8, $f10, $f6
/* 168E0 80015CE0 E7AE0080 */  swc1       $f14, 0x80($sp)
/* 168E4 80015CE4 0C00D3D8 */  jal        _nsqrtf
/* 168E8 80015CE8 46044300 */   add.s     $f12, $f8, $f4
/* 168EC 80015CEC 8E0C002C */  lw         $t4, 0x2C($s0)
/* 168F0 80015CF0 C7B20088 */  lwc1       $f18, 0x88($sp)
/* 168F4 80015CF4 C7B00084 */  lwc1       $f16, 0x84($sp)
/* 168F8 80015CF8 958B0028 */  lhu        $t3, 0x28($t4)
/* 168FC 80015CFC C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 16900 80015D00 000B4880 */  sll        $t1, $t3, 2
/* 16904 80015D04 03A95021 */  addu       $t2, $sp, $t1
/* 16908 80015D08 C5420050 */  lwc1       $f2, 0x50($t2)
/* 1690C 80015D0C 46121282 */  mul.s      $f10, $f2, $f18
/* 16910 80015D10 00000000 */  nop
/* 16914 80015D14 46101182 */  mul.s      $f6, $f2, $f16
/* 16918 80015D18 00000000 */  nop
/* 1691C 80015D1C 460E1202 */  mul.s      $f8, $f2, $f14
/* 16920 80015D20 46005483 */  div.s      $f18, $f10, $f0
/* 16924 80015D24 46003403 */  div.s      $f16, $f6, $f0
/* 16928 80015D28 46004383 */  div.s      $f14, $f8, $f0
/* 1692C 80015D2C C6000018 */  lwc1       $f0, 0x18($s0)
.L80015D30:
/* 16930 80015D30 C602001C */  lwc1       $f2, 0x1C($s0)
/* 16934 80015D34 C6040020 */  lwc1       $f4, 0x20($s0)
/* 16938 80015D38 46000282 */  mul.s      $f10, $f0, $f0
/* 1693C 80015D3C E7B20088 */  swc1       $f18, 0x88($sp)
/* 16940 80015D40 E7A40070 */  swc1       $f4, 0x70($sp)
/* 16944 80015D44 46021182 */  mul.s      $f6, $f2, $f2
/* 16948 80015D48 C7A40070 */  lwc1       $f4, 0x70($sp)
/* 1694C 80015D4C E7B00084 */  swc1       $f16, 0x84($sp)
/* 16950 80015D50 E7AE0080 */  swc1       $f14, 0x80($sp)
/* 16954 80015D54 E7A00078 */  swc1       $f0, 0x78($sp)
/* 16958 80015D58 E7A20074 */  swc1       $f2, 0x74($sp)
/* 1695C 80015D5C 46065200 */  add.s      $f8, $f10, $f6
/* 16960 80015D60 46042282 */  mul.s      $f10, $f4, $f4
/* 16964 80015D64 0C00D3D8 */  jal        _nsqrtf
/* 16968 80015D68 460A4300 */   add.s     $f12, $f8, $f10
/* 1696C 80015D6C 44803000 */  mtc1       $zero, $f6
/* 16970 80015D70 C7AC0078 */  lwc1       $f12, 0x78($sp)
/* 16974 80015D74 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 16978 80015D78 46060032 */  c.eq.s     $f0, $f6
/* 1697C 80015D7C C7B00084 */  lwc1       $f16, 0x84($sp)
/* 16980 80015D80 C7B20088 */  lwc1       $f18, 0x88($sp)
/* 16984 80015D84 C7AA0074 */  lwc1       $f10, 0x74($sp)
/* 16988 80015D88 45010011 */  bc1t       .L80015DD0
/* 1698C 80015D8C 00000000 */   nop
/* 16990 80015D90 460000A1 */  cvt.d.s    $f2, $f0
/* 16994 80015D94 46006121 */  cvt.d.s    $f4, $f12
/* 16998 80015D98 460051A1 */  cvt.d.s    $f6, $f10
/* 1699C 80015D9C 46222203 */  div.d      $f8, $f4, $f2
/* 169A0 80015DA0 C7AA0070 */  lwc1       $f10, 0x70($sp)
/* 169A4 80015DA4 46223103 */  div.d      $f4, $f6, $f2
/* 169A8 80015DA8 46204320 */  cvt.s.d    $f12, $f8
/* 169AC 80015DAC 460051A1 */  cvt.d.s    $f6, $f10
/* 169B0 80015DB0 460C9480 */  add.s      $f18, $f18, $f12
/* 169B4 80015DB4 46202220 */  cvt.s.d    $f8, $f4
/* 169B8 80015DB8 46223103 */  div.d      $f4, $f6, $f2
/* 169BC 80015DBC E7A80074 */  swc1       $f8, 0x74($sp)
/* 169C0 80015DC0 46088400 */  add.s      $f16, $f16, $f8
/* 169C4 80015DC4 462022A0 */  cvt.s.d    $f10, $f4
/* 169C8 80015DC8 E7AA0070 */  swc1       $f10, 0x70($sp)
/* 169CC 80015DCC 460A7380 */  add.s      $f14, $f14, $f10
.L80015DD0:
/* 169D0 80015DD0 46129182 */  mul.s      $f6, $f18, $f18
/* 169D4 80015DD4 E7AE0080 */  swc1       $f14, 0x80($sp)
/* 169D8 80015DD8 E7B00084 */  swc1       $f16, 0x84($sp)
/* 169DC 80015DDC 46108102 */  mul.s      $f4, $f16, $f16
/* 169E0 80015DE0 E7B20088 */  swc1       $f18, 0x88($sp)
/* 169E4 80015DE4 460E7282 */  mul.s      $f10, $f14, $f14
/* 169E8 80015DE8 46043200 */  add.s      $f8, $f6, $f4
/* 169EC 80015DEC 0C00D3D8 */  jal        _nsqrtf
/* 169F0 80015DF0 460A4300 */   add.s     $f12, $f8, $f10
/* 169F4 80015DF4 8E0D002C */  lw         $t5, 0x2C($s0)
/* 169F8 80015DF8 C7B20088 */  lwc1       $f18, 0x88($sp)
/* 169FC 80015DFC C7B00084 */  lwc1       $f16, 0x84($sp)
/* 16A00 80015E00 95B9002E */  lhu        $t9, 0x2E($t5)
/* 16A04 80015E04 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 16A08 80015E08 C60A0018 */  lwc1       $f10, 0x18($s0)
/* 16A0C 80015E0C 0019C080 */  sll        $t8, $t9, 2
/* 16A10 80015E10 03B87021 */  addu       $t6, $sp, $t8
/* 16A14 80015E14 C5C2003C */  lwc1       $f2, 0x3C($t6)
/* 16A18 80015E18 3C018007 */  lui        $at, %hi(D_80071498)
/* 16A1C 80015E1C D42C1498 */  ldc1       $f12, %lo(D_80071498)($at)
/* 16A20 80015E20 46121182 */  mul.s      $f6, $f2, $f18
/* 16A24 80015E24 46003483 */  div.s      $f18, $f6, $f0
/* 16A28 80015E28 46101102 */  mul.s      $f4, $f2, $f16
/* 16A2C 80015E2C 460051A1 */  cvt.d.s    $f6, $f10
/* 16A30 80015E30 460E1202 */  mul.s      $f8, $f2, $f14
/* 16A34 80015E34 46002403 */  div.s      $f16, $f4, $f0
/* 16A38 80015E38 462C3102 */  mul.d      $f4, $f6, $f12
/* 16A3C 80015E3C 46004383 */  div.s      $f14, $f8, $f0
/* 16A40 80015E40 46009221 */  cvt.d.s    $f8, $f18
/* 16A44 80015E44 46282280 */  add.d      $f10, $f4, $f8
/* 16A48 80015E48 C604001C */  lwc1       $f4, 0x1C($s0)
/* 16A4C 80015E4C 46002221 */  cvt.d.s    $f8, $f4
/* 16A50 80015E50 462051A0 */  cvt.s.d    $f6, $f10
/* 16A54 80015E54 462C4282 */  mul.d      $f10, $f8, $f12
/* 16A58 80015E58 E6060018 */  swc1       $f6, 0x18($s0)
/* 16A5C 80015E5C 460081A1 */  cvt.d.s    $f6, $f16
/* 16A60 80015E60 46265100 */  add.d      $f4, $f10, $f6
/* 16A64 80015E64 C60A0020 */  lwc1       $f10, 0x20($s0)
/* 16A68 80015E68 460051A1 */  cvt.d.s    $f6, $f10
/* 16A6C 80015E6C 46202220 */  cvt.s.d    $f8, $f4
/* 16A70 80015E70 462C3102 */  mul.d      $f4, $f6, $f12
/* 16A74 80015E74 E608001C */  swc1       $f8, 0x1C($s0)
/* 16A78 80015E78 46007221 */  cvt.d.s    $f8, $f14
/* 16A7C 80015E7C 46282280 */  add.d      $f10, $f4, $f8
/* 16A80 80015E80 462051A0 */  cvt.s.d    $f6, $f10
/* 16A84 80015E84 E6060020 */  swc1       $f6, 0x20($s0)
.L80015E88:
/* 16A88 80015E88 8E02002C */  lw         $v0, 0x2C($s0)
/* 16A8C 80015E8C 3C0B8008 */  lui        $t3, %hi(D_800871E0)
/* 16A90 80015E90 256B71E0 */  addiu      $t3, $t3, %lo(D_800871E0)
/* 16A94 80015E94 944F002A */  lhu        $t7, 0x2A($v0)
/* 16A98 80015E98 24070A00 */  addiu      $a3, $zero, 0xA00
/* 16A9C 80015E9C 31E80001 */  andi       $t0, $t7, 0x1
/* 16AA0 80015EA0 5100000A */  beql       $t0, $zero, .L80015ECC
/* 16AA4 80015EA4 C608000C */   lwc1      $f8, 0xC($s0)
/* 16AA8 80015EA8 C604001C */  lwc1       $f4, 0x1C($s0)
/* 16AAC 80015EAC 3C018007 */  lui        $at, %hi(D_800714A0)
/* 16AB0 80015EB0 D42A14A0 */  ldc1       $f10, %lo(D_800714A0)($at)
/* 16AB4 80015EB4 46002221 */  cvt.d.s    $f8, $f4
/* 16AB8 80015EB8 8E02002C */  lw         $v0, 0x2C($s0)
/* 16ABC 80015EBC 462A4181 */  sub.d      $f6, $f8, $f10
/* 16AC0 80015EC0 46203120 */  cvt.s.d    $f4, $f6
/* 16AC4 80015EC4 E604001C */  swc1       $f4, 0x1C($s0)
/* 16AC8 80015EC8 C608000C */  lwc1       $f8, 0xC($s0)
.L80015ECC:
/* 16ACC 80015ECC C60A0018 */  lwc1       $f10, 0x18($s0)
/* 16AD0 80015ED0 C6040010 */  lwc1       $f4, 0x10($s0)
/* 16AD4 80015ED4 460A4180 */  add.s      $f6, $f8, $f10
/* 16AD8 80015ED8 C608001C */  lwc1       $f8, 0x1C($s0)
/* 16ADC 80015EDC 46082280 */  add.s      $f10, $f4, $f8
/* 16AE0 80015EE0 E606000C */  swc1       $f6, 0xC($s0)
/* 16AE4 80015EE4 C6060014 */  lwc1       $f6, 0x14($s0)
/* 16AE8 80015EE8 C6040020 */  lwc1       $f4, 0x20($s0)
/* 16AEC 80015EEC E60A0010 */  swc1       $f10, 0x10($s0)
/* 16AF0 80015EF0 46043200 */  add.s      $f8, $f6, $f4
/* 16AF4 80015EF4 E6080014 */  swc1       $f8, 0x14($s0)
/* 16AF8 80015EF8 944C0014 */  lhu        $t4, 0x14($v0)
/* 16AFC 80015EFC 51800036 */  beql       $t4, $zero, .L80015FD8
/* 16B00 80015F00 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16B04 80015F04 C60C000C */  lwc1       $f12, 0xC($s0)
/* 16B08 80015F08 C60E0010 */  lwc1       $f14, 0x10($s0)
/* 16B0C 80015F0C 8E060014 */  lw         $a2, 0x14($s0)
/* 16B10 80015F10 0C003B98 */  jal        func_8000EE60
/* 16B14 80015F14 AFAB0010 */   sw        $t3, 0x10($sp)
/* 16B18 80015F18 8E09002C */  lw         $t1, 0x2C($s0)
/* 16B1C 80015F1C 3C038008 */  lui        $v1, %hi(D_800871E0)
/* 16B20 80015F20 24010001 */  addiu      $at, $zero, 0x1
/* 16B24 80015F24 95220014 */  lhu        $v0, 0x14($t1)
/* 16B28 80015F28 246371E0 */  addiu      $v1, $v1, %lo(D_800871E0)
/* 16B2C 80015F2C 10410005 */  beq        $v0, $at, .L80015F44
/* 16B30 80015F30 24010002 */   addiu     $at, $zero, 0x2
/* 16B34 80015F34 50410026 */  beql       $v0, $at, .L80015FD0
/* 16B38 80015F38 C4640004 */   lwc1      $f4, 0x4($v1)
/* 16B3C 80015F3C 10000026 */  b          .L80015FD8
/* 16B40 80015F40 8FBF0024 */   lw        $ra, 0x24($sp)
.L80015F44:
/* 16B44 80015F44 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 16B48 80015F48 C4660004 */  lwc1       $f6, 0x4($v1)
/* 16B4C 80015F4C 24190008 */  addiu      $t9, $zero, 0x8
/* 16B50 80015F50 4606503C */  c.lt.s     $f10, $f6
/* 16B54 80015F54 00000000 */  nop
/* 16B58 80015F58 4502001F */  bc1fl      .L80015FD8
/* 16B5C 80015F5C 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16B60 80015F60 44800000 */  mtc1       $zero, $f0
/* 16B64 80015F64 960A000A */  lhu        $t2, 0xA($s0)
/* 16B68 80015F68 8E020034 */  lw         $v0, 0x34($s0)
/* 16B6C 80015F6C A6190004 */  sh         $t9, 0x4($s0)
/* 16B70 80015F70 354D0001 */  ori        $t5, $t2, 0x1
/* 16B74 80015F74 A60D000A */  sh         $t5, 0xA($s0)
/* 16B78 80015F78 E6000020 */  swc1       $f0, 0x20($s0)
/* 16B7C 80015F7C E600001C */  swc1       $f0, 0x1C($s0)
/* 16B80 80015F80 10400007 */  beqz       $v0, .L80015FA0
/* 16B84 80015F84 E6000018 */   swc1      $f0, 0x18($s0)
/* 16B88 80015F88 2418000F */  addiu      $t8, $zero, 0xF
/* 16B8C 80015F8C A4580000 */  sh         $t8, 0x0($v0)
/* 16B90 80015F90 8E020034 */  lw         $v0, 0x34($s0)
/* 16B94 80015F94 944E0008 */  lhu        $t6, 0x8($v0)
/* 16B98 80015F98 31CFFFFE */  andi       $t7, $t6, 0xFFFE
/* 16B9C 80015F9C A44F0008 */  sh         $t7, 0x8($v0)
.L80015FA0:
/* 16BA0 80015FA0 0C004FC8 */  jal        func_80013F20
/* 16BA4 80015FA4 24040001 */   addiu     $a0, $zero, 0x1
/* 16BA8 80015FA8 8E080030 */  lw         $t0, 0x30($s0)
/* 16BAC 80015FAC 02002025 */  or         $a0, $s0, $zero
/* 16BB0 80015FB0 850C0020 */  lh         $t4, 0x20($t0)
/* 16BB4 80015FB4 05820008 */  bltzl      $t4, .L80015FD8
/* 16BB8 80015FB8 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16BBC 80015FBC 0C005FE8 */  jal        func_80017FA0
/* 16BC0 80015FC0 8E050028 */   lw        $a1, 0x28($s0)
/* 16BC4 80015FC4 10000004 */  b          .L80015FD8
/* 16BC8 80015FC8 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16BCC 80015FCC C4640004 */  lwc1       $f4, 0x4($v1)
.L80015FD0:
/* 16BD0 80015FD0 E6040010 */  swc1       $f4, 0x10($s0)
/* 16BD4 80015FD4 8FBF0024 */  lw         $ra, 0x24($sp)
.L80015FD8:
/* 16BD8 80015FD8 8FB00020 */  lw         $s0, 0x20($sp)
/* 16BDC 80015FDC 27BD0090 */  addiu      $sp, $sp, 0x90
/* 16BE0 80015FE0 03E00008 */  jr         $ra
/* 16BE4 80015FE4 00000000 */   nop
