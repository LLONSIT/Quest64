glabel func_80030E10
/* 31A10 80030E10 240800FF */  addiu      $t0, $zero, 0xFF
/* 31A14 80030E14 90AE0000 */  lbu        $t6, 0x0($a1)
/* 31A18 80030E18 00001025 */  or         $v0, $zero, $zero
/* 31A1C 80030E1C 00801825 */  or         $v1, $a0, $zero
/* 31A20 80030E20 110E0009 */  beq        $t0, $t6, .L80030E48
/* 31A24 80030E24 240F00FF */   addiu     $t7, $zero, 0xFF
/* 31A28 80030E28 00A03025 */  or         $a2, $a1, $zero
/* 31A2C 80030E2C 90A70000 */  lbu        $a3, 0x0($a1)
.L80030E30:
/* 31A30 80030E30 A0670000 */  sb         $a3, 0x0($v1)
/* 31A34 80030E34 90C70001 */  lbu        $a3, 0x1($a2)
/* 31A38 80030E38 24420001 */  addiu      $v0, $v0, 0x1
/* 31A3C 80030E3C 24630001 */  addiu      $v1, $v1, 0x1
/* 31A40 80030E40 1507FFFB */  bne        $t0, $a3, .L80030E30
/* 31A44 80030E44 24C60001 */   addiu     $a2, $a2, 0x1
.L80030E48:
/* 31A48 80030E48 0082C021 */  addu       $t8, $a0, $v0
/* 31A4C 80030E4C A30F0000 */  sb         $t7, 0x0($t8)
/* 31A50 80030E50 03E00008 */  jr         $ra
/* 31A54 80030E54 00000000 */   nop