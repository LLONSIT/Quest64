glabel func_80031800
/* 32400 80031800 00047080 */  sll        $t6, $a0, 2
/* 32404 80031804 01C47021 */  addu       $t6, $t6, $a0
/* 32408 80031808 3C0F8009 */  lui        $t7, %hi(D_80092A38)
/* 3240C 8003180C 25EF2A38 */  addiu      $t7, $t7, %lo(D_80092A38)
/* 32410 80031810 000E7080 */  sll        $t6, $t6, 2
/* 32414 80031814 2403FFFF */  addiu      $v1, $zero, -0x1
/* 32418 80031818 01CF3021 */  addu       $a2, $t6, $t7
/* 3241C 8003181C 24080010 */  addiu      $t0, $zero, 0x10
/* 32420 80031820 24630001 */  addiu      $v1, $v1, 0x1
.L80031824:
/* 32424 80031824 00001025 */  or         $v0, $zero, $zero
/* 32428 80031828 00002025 */  or         $a0, $zero, $zero
/* 3242C 8003182C 2465001A */  addiu      $a1, $v1, 0x1A
/* 32430 80031830 00C03825 */  or         $a3, $a2, $zero
.L80031834:
/* 32434 80031834 80F80002 */  lb         $t8, 0x2($a3)
/* 32438 80031838 24420001 */  addiu      $v0, $v0, 0x1
/* 3243C 8003183C 14B80003 */  bne        $a1, $t8, .L8003184C
/* 32440 80031840 00000000 */   nop
/* 32444 80031844 10000003 */  b          .L80031854
/* 32448 80031848 2404FFFF */   addiu     $a0, $zero, -0x1
.L8003184C:
/* 3244C 8003184C 1448FFF9 */  bne        $v0, $t0, .L80031834
/* 32450 80031850 24E70001 */   addiu     $a3, $a3, 0x1
.L80031854:
/* 32454 80031854 28610010 */  slti       $at, $v1, 0x10
/* 32458 80031858 14200005 */  bnez       $at, .L80031870
/* 3245C 8003185C 00000000 */   nop
/* 32460 80031860 10800003 */  beqz       $a0, .L80031870
/* 32464 80031864 00000000 */   nop
/* 32468 80031868 10000003 */  b          .L80031878
/* 3246C 8003186C 2404FFFF */   addiu     $a0, $zero, -0x1
.L80031870:
/* 32470 80031870 5080FFEC */  beql       $a0, $zero, .L80031824
/* 32474 80031874 24630001 */   addiu     $v1, $v1, 0x1
.L80031878:
/* 32478 80031878 54800003 */  bnel       $a0, $zero, .L80031888
/* 3247C 8003187C 308200FF */   andi      $v0, $a0, 0xFF
/* 32480 80031880 00A02025 */  or         $a0, $a1, $zero
/* 32484 80031884 308200FF */  andi       $v0, $a0, 0xFF
.L80031888:
/* 32488 80031888 03E00008 */  jr         $ra
/* 3248C 8003188C 00000000 */   nop
