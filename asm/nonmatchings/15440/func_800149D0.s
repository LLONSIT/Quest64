glabel func_800149D0
/* 155D0 800149D0 AFA50004 */  sw         $a1, 0x4($sp)
/* 155D4 800149D4 30AEFFFF */  andi       $t6, $a1, 0xFFFF
/* 155D8 800149D8 01C02825 */  or         $a1, $t6, $zero
/* 155DC 800149DC 00041202 */  srl        $v0, $a0, 8
/* 155E0 800149E0 304F000F */  andi       $t7, $v0, 0xF
/* 155E4 800149E4 000FC880 */  sll        $t9, $t7, 2
/* 155E8 800149E8 3C08800C */  lui        $t0, %hi(D_800C1B14)
/* 155EC 800149EC 309800FF */  andi       $t8, $a0, 0xFF
/* 155F0 800149F0 01194021 */  addu       $t0, $t0, $t9
/* 155F4 800149F4 3C0A8008 */  lui        $t2, %hi(D_8007BAC8)
/* 155F8 800149F8 8D081B14 */  lw         $t0, %lo(D_800C1B14)($t0)
/* 155FC 800149FC 8D4ABAC8 */  lw         $t2, %lo(D_8007BAC8)($t2)
/* 15600 80014A00 00184900 */  sll        $t1, $t8, 4
/* 15604 80014A04 01384821 */  addu       $t1, $t1, $t8
/* 15608 80014A08 00094880 */  sll        $t1, $t1, 2
/* 1560C 80014A0C 01093021 */  addu       $a2, $t0, $t1
/* 15610 80014A10 014F5821 */  addu       $t3, $t2, $t7
/* 15614 80014A14 916C0024 */  lbu        $t4, 0x24($t3)
/* 15618 80014A18 94CD0000 */  lhu        $t5, 0x0($a2)
/* 1561C 80014A1C 00001825 */  or         $v1, $zero, $zero
/* 15620 80014A20 24020002 */  addiu      $v0, $zero, 0x2
/* 15624 80014A24 018D082A */  slt        $at, $t4, $t5
/* 15628 80014A28 10200002 */  beqz       $at, .L80014A34
/* 1562C 80014A2C 3C0E8009 */   lui       $t6, %hi(D_8008C592)
/* 15630 80014A30 24030004 */  addiu      $v1, $zero, 0x4
.L80014A34:
/* 15634 80014A34 95CEC592 */  lhu        $t6, %lo(D_8008C592)($t6)
/* 15638 80014A38 34680002 */  ori        $t0, $v1, 0x2
/* 1563C 80014A3C 31CF0001 */  andi       $t7, $t6, 0x1
/* 15640 80014A40 11E00003 */  beqz       $t7, .L80014A50
/* 15644 80014A44 00000000 */   nop
/* 15648 80014A48 10000001 */  b          .L80014A50
/* 1564C 80014A4C 24020001 */   addiu     $v0, $zero, 0x1
.L80014A50:
/* 15650 80014A50 94D80002 */  lhu        $t8, 0x2($a2)
/* 15654 80014A54 0058C824 */  and        $t9, $v0, $t8
/* 15658 80014A58 57200003 */  bnel       $t9, $zero, .L80014A68
/* 1565C 80014A5C 94C90004 */   lhu       $t1, 0x4($a2)
/* 15660 80014A60 01001825 */  or         $v1, $t0, $zero
/* 15664 80014A64 94C90004 */  lhu        $t1, 0x4($a2)
.L80014A68:
/* 15668 80014A68 3C0B800C */  lui        $t3, %hi(D_800C1B26)
/* 1566C 80014A6C 346C0001 */  ori        $t4, $v1, 0x1
/* 15670 80014A70 00095040 */  sll        $t2, $t1, 1
/* 15674 80014A74 016A5821 */  addu       $t3, $t3, $t2
/* 15678 80014A78 956B1B26 */  lhu        $t3, %lo(D_800C1B26)($t3)
/* 1567C 80014A7C 00AB082A */  slt        $at, $a1, $t3
/* 15680 80014A80 50200003 */  beql       $at, $zero, .L80014A90
/* 15684 80014A84 00601025 */   or        $v0, $v1, $zero
/* 15688 80014A88 01801825 */  or         $v1, $t4, $zero
/* 1568C 80014A8C 00601025 */  or         $v0, $v1, $zero
.L80014A90:
/* 15690 80014A90 03E00008 */  jr         $ra
/* 15694 80014A94 00000000 */   nop
