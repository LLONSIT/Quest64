glabel func_8000932C
/* 9F2C 8000932C 3C0E8009 */  lui        $t6, %hi(D_8008C598)
/* 9F30 80009330 95CEC598 */  lhu        $t6, %lo(D_8008C598)($t6)
/* 9F34 80009334 3C188008 */  lui        $t8, %hi(D_8007D0B0)
/* 9F38 80009338 3C088008 */  lui        $t0, %hi(D_8007C998)
/* 9F3C 8000933C 000E7840 */  sll        $t7, $t6, 1
/* 9F40 80009340 030FC021 */  addu       $t8, $t8, $t7
/* 9F44 80009344 9718D0B0 */  lhu        $t8, %lo(D_8007D0B0)($t8)
/* 9F48 80009348 2508C998 */  addiu      $t0, $t0, %lo(D_8007C998)
/* 9F4C 8000934C 0018C8C0 */  sll        $t9, $t8, 3
/* 9F50 80009350 0338C821 */  addu       $t9, $t9, $t8
/* 9F54 80009354 0019C880 */  sll        $t9, $t9, 2
/* 9F58 80009358 0338C821 */  addu       $t9, $t9, $t8
/* 9F5C 8000935C 0019C8C0 */  sll        $t9, $t9, 3
/* 9F60 80009360 03281021 */  addu       $v0, $t9, $t0
/* 9F64 80009364 94490008 */  lhu        $t1, 0x8($v0)
/* 9F68 80009368 352A0001 */  ori        $t2, $t1, 0x1
/* 9F6C 8000936C A44A0008 */  sh         $t2, 0x8($v0)
/* 9F70 80009370 03E00008 */  jr         $ra
/* 9F74 80009374 00000000 */   nop
