glabel func_80030668
/* 31268 80030668 3C0A8006 */  lui        $t2, %hi(D_8005F9F8)
/* 3126C 8003066C 254AF9F8 */  addiu      $t2, $t2, %lo(D_8005F9F8)
/* 31270 80030670 00047100 */  sll        $t6, $a0, 4
/* 31274 80030674 01C47021 */  addu       $t6, $t6, $a0
/* 31278 80030678 000E7080 */  sll        $t6, $t6, 2
/* 3127C 8003067C 01C47021 */  addu       $t6, $t6, $a0
/* 31280 80030680 000E70C0 */  sll        $t6, $t6, 3
/* 31284 80030684 01C47023 */  subu       $t6, $t6, $a0
/* 31288 80030688 000E7080 */  sll        $t6, $t6, 2
/* 3128C 8003068C 3C038009 */  lui        $v1, %hi(D_80090618)
/* 31290 80030690 006E1821 */  addu       $v1, $v1, $t6
/* 31294 80030694 84630618 */  lh         $v1, %lo(D_80090618)($v1)
/* 31298 80030698 00001025 */  or         $v0, $zero, $zero
/* 3129C 8003069C 00002825 */  or         $a1, $zero, $zero
/* 312A0 800306A0 00037880 */  sll        $t7, $v1, 2
/* 312A4 800306A4 01E37821 */  addu       $t7, $t7, $v1
/* 312A8 800306A8 000F7840 */  sll        $t7, $t7, 1
/* 312AC 800306AC 25F8000C */  addiu      $t8, $t7, 0xC
/* 312B0 800306B0 18600023 */  blez       $v1, .L80030740
/* 312B4 800306B4 A5580006 */   sh        $t8, 0x6($t2)
/* 312B8 800306B8 0004C900 */  sll        $t9, $a0, 4
/* 312BC 800306BC 0324C821 */  addu       $t9, $t9, $a0
/* 312C0 800306C0 0019C880 */  sll        $t9, $t9, 2
/* 312C4 800306C4 0324C821 */  addu       $t9, $t9, $a0
/* 312C8 800306C8 0019C8C0 */  sll        $t9, $t9, 3
/* 312CC 800306CC 0324C823 */  subu       $t9, $t9, $a0
/* 312D0 800306D0 3C0C8009 */  lui        $t4, %hi(D_800905E0)
/* 312D4 800306D4 258C05E0 */  addiu      $t4, $t4, %lo(D_800905E0)
/* 312D8 800306D8 0019C880 */  sll        $t9, $t9, 2
/* 312DC 800306DC 032C3821 */  addu       $a3, $t9, $t4
/* 312E0 800306E0 00E04025 */  or         $t0, $a3, $zero
/* 312E4 800306E4 240B00FF */  addiu      $t3, $zero, 0xFF
.L800306E8:
/* 312E8 800306E8 910D003C */  lbu        $t5, 0x3C($t0)
/* 312EC 800306EC 00057080 */  sll        $t6, $a1, 2
/* 312F0 800306F0 00003025 */  or         $a2, $zero, $zero
/* 312F4 800306F4 116D000C */  beq        $t3, $t5, .L80030728
/* 312F8 800306F8 01C57023 */   subu      $t6, $t6, $a1
/* 312FC 800306FC 000E70C0 */  sll        $t6, $t6, 3
/* 31300 80030700 00EE2021 */  addu       $a0, $a3, $t6
/* 31304 80030704 9089003C */  lbu        $t1, 0x3C($a0)
/* 31308 80030708 29210080 */  slti       $at, $t1, 0x80
.L8003070C:
/* 3130C 8003070C 50200003 */  beql       $at, $zero, .L8003071C
/* 31310 80030710 9089003D */   lbu       $t1, 0x3D($a0)
/* 31314 80030714 24C60001 */  addiu      $a2, $a2, 0x1
/* 31318 80030718 9089003D */  lbu        $t1, 0x3D($a0)
.L8003071C:
/* 3131C 8003071C 24840001 */  addiu      $a0, $a0, 0x1
/* 31320 80030720 5569FFFA */  bnel       $t3, $t1, .L8003070C
/* 31324 80030724 29210080 */   slti      $at, $t1, 0x80
.L80030728:
/* 31328 80030728 0046082A */  slt        $at, $v0, $a2
/* 3132C 8003072C 10200002 */  beqz       $at, .L80030738
/* 31330 80030730 24A50001 */   addiu     $a1, $a1, 0x1
/* 31334 80030734 00C01025 */  or         $v0, $a2, $zero
.L80030738:
/* 31338 80030738 14A3FFEB */  bne        $a1, $v1, .L800306E8
/* 3133C 8003073C 25080018 */   addiu     $t0, $t0, 0x18
.L80030740:
/* 31340 80030740 000278C0 */  sll        $t7, $v0, 3
/* 31344 80030744 25F8001C */  addiu      $t8, $t7, 0x1C
/* 31348 80030748 A5580004 */  sh         $t8, 0x4($t2)
/* 3134C 8003074C 03E00008 */  jr         $ra
/* 31350 80030750 00000000 */   nop
