glabel func_80013F20
/* 14B20 80013F20 3C198005 */  lui        $t9, %hi(D_8004CCB0)
/* 14B24 80013F24 240E000F */  addiu      $t6, $zero, 0xF
/* 14B28 80013F28 3C018008 */  lui        $at, %hi(D_80086C2C)
/* 14B2C 80013F2C 2739CCB0 */  addiu      $t9, $t9, %lo(D_8004CCB0)
/* 14B30 80013F30 0004C0C0 */  sll        $t8, $a0, 3
/* 14B34 80013F34 AC2E6C2C */  sw         $t6, %lo(D_80086C2C)($at)
/* 14B38 80013F38 03191021 */  addu       $v0, $t8, $t9
/* 14B3C 80013F3C C4440000 */  lwc1       $f4, 0x0($v0)
/* 14B40 80013F40 3C018008 */  lui        $at, %hi(D_80086C30)
/* 14B44 80013F44 E4246C30 */  swc1       $f4, %lo(D_80086C30)($at)
/* 14B48 80013F48 C4460004 */  lwc1       $f6, 0x4($v0)
/* 14B4C 80013F4C 3C018008 */  lui        $at, %hi(D_80086C34)
/* 14B50 80013F50 E4266C34 */  swc1       $f6, %lo(D_80086C34)($at)
/* 14B54 80013F54 03E00008 */  jr         $ra
/* 14B58 80013F58 00000000 */   nop
