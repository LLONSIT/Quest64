glabel func_800195E0
/* 1A1E0 800195E0 3C018007 */  lui        $at, %hi(D_80071598)
/* 1A1E4 800195E4 D42E1598 */  ldc1       $f14, %lo(D_80071598)($at)
/* 1A1E8 800195E8 C4800030 */  lwc1       $f0, 0x30($a0)
/* 1A1EC 800195EC C4840018 */  lwc1       $f4, 0x18($a0)
/* 1A1F0 800195F0 C4820034 */  lwc1       $f2, 0x34($a0)
/* 1A1F4 800195F4 C488001C */  lwc1       $f8, 0x1C($a0)
/* 1A1F8 800195F8 46002180 */  add.s      $f6, $f4, $f0
/* 1A1FC 800195FC C48C0038 */  lwc1       $f12, 0x38($a0)
/* 1A200 80019600 C4900020 */  lwc1       $f16, 0x20($a0)
/* 1A204 80019604 46000121 */  cvt.d.s    $f4, $f0
/* 1A208 80019608 46024280 */  add.s      $f10, $f8, $f2
/* 1A20C 8001960C E4860018 */  swc1       $f6, 0x18($a0)
/* 1A210 80019610 462E2182 */  mul.d      $f6, $f4, $f14
/* 1A214 80019614 460C8480 */  add.s      $f18, $f16, $f12
/* 1A218 80019618 E48A001C */  swc1       $f10, 0x1C($a0)
/* 1A21C 8001961C 3C018007 */  lui        $at, %hi(D_800715A0)
/* 1A220 80019620 460012A1 */  cvt.d.s    $f10, $f2
/* 1A224 80019624 46006121 */  cvt.d.s    $f4, $f12
/* 1A228 80019628 462E5402 */  mul.d      $f16, $f10, $f14
/* 1A22C 8001962C E4920020 */  swc1       $f18, 0x20($a0)
/* 1A230 80019630 C48A0024 */  lwc1       $f10, 0x24($a0)
/* 1A234 80019634 94820000 */  lhu        $v0, 0x0($a0)
/* 1A238 80019638 3C058008 */  lui        $a1, %hi(D_8007B2FC)
/* 1A23C 8001963C 3C18800F */  lui        $t8, %hi(D_800EBD1C)
/* 1A240 80019640 24A5B2FC */  addiu      $a1, $a1, %lo(D_8007B2FC)
/* 1A244 80019644 46203220 */  cvt.s.d    $f8, $f6
/* 1A248 80019648 462E2182 */  mul.d      $f6, $f4, $f14
/* 1A24C 8001964C 462084A0 */  cvt.s.d    $f18, $f16
/* 1A250 80019650 E4880030 */  swc1       $f8, 0x30($a0)
/* 1A254 80019654 46005421 */  cvt.d.s    $f16, $f10
/* 1A258 80019658 E4920034 */  swc1       $f18, 0x34($a0)
/* 1A25C 8001965C 46203220 */  cvt.s.d    $f8, $f6
/* 1A260 80019660 E4880038 */  swc1       $f8, 0x38($a0)
/* 1A264 80019664 D43215A0 */  ldc1       $f18, %lo(D_800715A0)($at)
/* 1A268 80019668 2841000A */  slti       $at, $v0, 0xA
/* 1A26C 8001966C 46328100 */  add.d      $f4, $f16, $f18
/* 1A270 80019670 462021A0 */  cvt.s.d    $f6, $f4
/* 1A274 80019674 10200006 */  beqz       $at, .L80019690
/* 1A278 80019678 E4860024 */   swc1      $f6, 0x24($a0)
/* 1A27C 8001967C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1A280 80019680 44810000 */  mtc1       $at, $f0
/* 1A284 80019684 94820000 */  lhu        $v0, 0x0($a0)
/* 1A288 80019688 E480002C */  swc1       $f0, 0x2C($a0)
/* 1A28C 8001968C E4800028 */  swc1       $f0, 0x28($a0)
.L80019690:
/* 1A290 80019690 908E003C */  lbu        $t6, 0x3C($a0)
/* 1A294 80019694 2718BD1C */  addiu      $t8, $t8, %lo(D_800EBD1C)
/* 1A298 80019698 30590001 */  andi       $t9, $v0, 0x1
/* 1A29C 8001969C 000E7880 */  sll        $t7, $t6, 2
/* 1A2A0 800196A0 13200014 */  beqz       $t9, .L800196F4
/* 1A2A4 800196A4 01F81821 */   addu      $v1, $t7, $t8
/* 1A2A8 800196A8 3C058008 */  lui        $a1, %hi(D_8007B2FC)
/* 1A2AC 800196AC 24A5B2FC */  addiu      $a1, $a1, %lo(D_8007B2FC)
/* 1A2B0 800196B0 8CA40000 */  lw         $a0, 0x0($a1)
/* 1A2B4 800196B4 3C09FB00 */  lui        $t1, (0xFB000000 >> 16)
/* 1A2B8 800196B8 24880008 */  addiu      $t0, $a0, 0x8
/* 1A2BC 800196BC ACA80000 */  sw         $t0, 0x0($a1)
/* 1A2C0 800196C0 AC890000 */  sw         $t1, 0x0($a0)
/* 1A2C4 800196C4 906E0000 */  lbu        $t6, 0x0($v1)
/* 1A2C8 800196C8 906B0002 */  lbu        $t3, 0x2($v1)
/* 1A2CC 800196CC 90680001 */  lbu        $t0, 0x1($v1)
/* 1A2D0 800196D0 000E7E00 */  sll        $t7, $t6, 24
/* 1A2D4 800196D4 000B6200 */  sll        $t4, $t3, 8
/* 1A2D8 800196D8 018FC025 */  or         $t8, $t4, $t7
/* 1A2DC 800196DC 00084C00 */  sll        $t1, $t0, 16
/* 1A2E0 800196E0 03095025 */  or         $t2, $t8, $t1
/* 1A2E4 800196E4 354B00DC */  ori        $t3, $t2, 0xDC
/* 1A2E8 800196E8 AC8B0004 */  sw         $t3, 0x4($a0)
/* 1A2EC 800196EC 03E00008 */  jr         $ra
/* 1A2F0 800196F0 00000000 */   nop
.L800196F4:
/* 1A2F4 800196F4 8CA40000 */  lw         $a0, 0x0($a1)
/* 1A2F8 800196F8 3C0EFB00 */  lui        $t6, (0xFB000000 >> 16)
/* 1A2FC 800196FC 248D0008 */  addiu      $t5, $a0, 0x8
/* 1A300 80019700 ACAD0000 */  sw         $t5, 0x0($a1)
/* 1A304 80019704 AC8E0000 */  sw         $t6, 0x0($a0)
/* 1A308 80019708 90780000 */  lbu        $t8, 0x0($v1)
/* 1A30C 8001970C 906F0002 */  lbu        $t7, 0x2($v1)
/* 1A310 80019710 906D0001 */  lbu        $t5, 0x1($v1)
/* 1A314 80019714 00184E00 */  sll        $t1, $t8, 24
/* 1A318 80019718 000FCA00 */  sll        $t9, $t7, 8
/* 1A31C 8001971C 03295025 */  or         $t2, $t9, $t1
/* 1A320 80019720 000D7400 */  sll        $t6, $t5, 16
/* 1A324 80019724 014E6025 */  or         $t4, $t2, $t6
/* 1A328 80019728 358F0020 */  ori        $t7, $t4, 0x20
/* 1A32C 8001972C AC8F0004 */  sw         $t7, 0x4($a0)
/* 1A330 80019730 03E00008 */  jr         $ra
/* 1A334 80019734 00000000 */   nop
