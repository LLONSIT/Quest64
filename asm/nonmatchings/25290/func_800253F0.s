glabel func_800253F0
/* 25FF0 800253F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25FF4 800253F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25FF8 800253F8 00802825 */  or         $a1, $a0, $zero
/* 25FFC 800253FC 00057080 */  sll        $t6, $a1, 2
/* 26000 80025400 01C57023 */  subu       $t6, $t6, $a1
/* 26004 80025404 000E7080 */  sll        $t6, $t6, 2
/* 26008 80025408 01C57021 */  addu       $t6, $t6, $a1
/* 2600C 8002540C 000E70C0 */  sll        $t6, $t6, 3
/* 26010 80025410 01C57023 */  subu       $t6, $t6, $a1
/* 26014 80025414 000E7080 */  sll        $t6, $t6, 2
/* 26018 80025418 3C188009 */  lui        $t8, %hi(D_8008F978)
/* 2601C 8002541C 2718F978 */  addiu      $t8, $t8, %lo(D_8008F978)
/* 26020 80025420 25CF001C */  addiu      $t7, $t6, 0x1C
/* 26024 80025424 0C00E430 */  jal        alSeqpStop
/* 26028 80025428 01F82021 */   addu      $a0, $t7, $t8
/* 2602C 8002542C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26030 80025430 27BD0018 */  addiu      $sp, $sp, 0x18
/* 26034 80025434 03E00008 */  jr         $ra
/* 26038 80025438 00000000 */   nop
