glabel func_80031F1C
/* 32B1C 80031F1C AFA40000 */  sw         $a0, 0x0($sp)
/* 32B20 80031F20 00047400 */  sll        $t6, $a0, 16
/* 32B24 80031F24 AFA50004 */  sw         $a1, 0x4($sp)
/* 32B28 80031F28 0005C400 */  sll        $t8, $a1, 16
/* 32B2C 80031F2C 00182C03 */  sra        $a1, $t8, 16
/* 32B30 80031F30 000E2403 */  sra        $a0, $t6, 16
/* 32B34 80031F34 00054080 */  sll        $t0, $a1, 2
/* 32B38 80031F38 3C018009 */  lui        $at, %hi(D_80092D34)
/* 32B3C 80031F3C 01054021 */  addu       $t0, $t0, $a1
/* 32B40 80031F40 3C0B8009 */  lui        $t3, %hi(D_80092D20)
/* 32B44 80031F44 8D6B2D20 */  lw         $t3, %lo(D_80092D20)($t3)
/* 32B48 80031F48 A4242D34 */  sh         $a0, %lo(D_80092D34)($at)
/* 32B4C 80031F4C 00084180 */  sll        $t0, $t0, 6
/* 32B50 80031F50 3C018009 */  lui        $at, %hi(D_80092D36)
/* 32B54 80031F54 00884821 */  addu       $t1, $a0, $t0
/* 32B58 80031F58 A4252D36 */  sh         $a1, %lo(D_80092D36)($at)
/* 32B5C 80031F5C 00095040 */  sll        $t2, $t1, 1
/* 32B60 80031F60 3C018009 */  lui        $at, %hi(D_80092D30)
/* 32B64 80031F64 014B6021 */  addu       $t4, $t2, $t3
/* 32B68 80031F68 AC2C2D30 */  sw         $t4, %lo(D_80092D30)($at)
/* 32B6C 80031F6C 03E00008 */  jr         $ra
/* 32B70 80031F70 00000000 */   nop
