glabel func_80024704
/* 25304 80024704 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 25308 80024708 AFB00020 */  sw         $s0, 0x20($sp)
/* 2530C 8002470C 3C108009 */  lui        $s0, %hi(D_8008F240)
/* 25310 80024710 2610F240 */  addiu      $s0, $s0, %lo(D_8008F240)
/* 25314 80024714 AFBF0024 */  sw         $ra, 0x24($sp)
/* 25318 80024718 3C058033 */  lui        $a1, %hi(D_80331AB0)
/* 2531C 8002471C 3C060006 */  lui        $a2, (0x68000 >> 16)
/* 25320 80024720 34C68000 */  ori        $a2, $a2, (0x68000 & 0xFFFF)
/* 25324 80024724 24A51AB0 */  addiu      $a1, $a1, %lo(D_80331AB0)
/* 25328 80024728 0C00D988 */  jal        alHeapInit
/* 2532C 8002472C 02002025 */   or        $a0, $s0, $zero
/* 25330 80024730 340E8000 */  ori        $t6, $zero, 0x8000
/* 25334 80024734 AFAE0010 */  sw         $t6, 0x10($sp)
/* 25338 80024738 00002025 */  or         $a0, $zero, $zero
/* 2533C 8002473C 00002825 */  or         $a1, $zero, $zero
/* 25340 80024740 02003025 */  or         $a2, $s0, $zero
/* 25344 80024744 0C00D998 */  jal        alHeapDBAlloc
/* 25348 80024748 24070001 */   addiu     $a3, $zero, 0x1
/* 2534C 8002474C 3C018009 */  lui        $at, %hi(D_8008F250)
/* 25350 80024750 340F8000 */  ori        $t7, $zero, 0x8000
/* 25354 80024754 AC22F250 */  sw         $v0, %lo(D_8008F250)($at)
/* 25358 80024758 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2535C 8002475C 00002025 */  or         $a0, $zero, $zero
/* 25360 80024760 00002825 */  or         $a1, $zero, $zero
/* 25364 80024764 02003025 */  or         $a2, $s0, $zero
/* 25368 80024768 0C00D998 */  jal        alHeapDBAlloc
/* 2536C 8002476C 24070001 */   addiu     $a3, $zero, 0x1
/* 25370 80024770 3C018009 */  lui        $at, %hi(D_8008F254)
/* 25374 80024774 24180040 */  addiu      $t8, $zero, 0x40
/* 25378 80024778 AC22F254 */  sw         $v0, %lo(D_8008F254)($at)
/* 2537C 8002477C AFB80010 */  sw         $t8, 0x10($sp)
/* 25380 80024780 00002025 */  or         $a0, $zero, $zero
/* 25384 80024784 00002825 */  or         $a1, $zero, $zero
/* 25388 80024788 02003025 */  or         $a2, $s0, $zero
/* 2538C 8002478C 0C00D998 */  jal        alHeapDBAlloc
/* 25390 80024790 24070001 */   addiu     $a3, $zero, 0x1
/* 25394 80024794 3C018009 */  lui        $at, %hi(D_8008F258)
/* 25398 80024798 24190040 */  addiu      $t9, $zero, 0x40
/* 2539C 8002479C AC22F258 */  sw         $v0, %lo(D_8008F258)($at)
/* 253A0 800247A0 AFB90010 */  sw         $t9, 0x10($sp)
/* 253A4 800247A4 00002025 */  or         $a0, $zero, $zero
/* 253A8 800247A8 00002825 */  or         $a1, $zero, $zero
/* 253AC 800247AC 02003025 */  or         $a2, $s0, $zero
/* 253B0 800247B0 0C00D998 */  jal        alHeapDBAlloc
/* 253B4 800247B4 24070001 */   addiu     $a3, $zero, 0x1
/* 253B8 800247B8 3C018009 */  lui        $at, %hi(D_8008F25C)
/* 253BC 800247BC 34088000 */  ori        $t0, $zero, 0x8000
/* 253C0 800247C0 AC22F25C */  sw         $v0, %lo(D_8008F25C)($at)
/* 253C4 800247C4 AFA80010 */  sw         $t0, 0x10($sp)
/* 253C8 800247C8 00002025 */  or         $a0, $zero, $zero
/* 253CC 800247CC 00002825 */  or         $a1, $zero, $zero
/* 253D0 800247D0 02003025 */  or         $a2, $s0, $zero
/* 253D4 800247D4 0C00D998 */  jal        alHeapDBAlloc
/* 253D8 800247D8 24070001 */   addiu     $a3, $zero, 0x1
/* 253DC 800247DC 3C018009 */  lui        $at, %hi(D_8008F260)
/* 253E0 800247E0 34098000 */  ori        $t1, $zero, 0x8000
/* 253E4 800247E4 AC22F260 */  sw         $v0, %lo(D_8008F260)($at)
/* 253E8 800247E8 AFA90010 */  sw         $t1, 0x10($sp)
/* 253EC 800247EC 00002025 */  or         $a0, $zero, $zero
/* 253F0 800247F0 00002825 */  or         $a1, $zero, $zero
/* 253F4 800247F4 02003025 */  or         $a2, $s0, $zero
/* 253F8 800247F8 0C00D998 */  jal        alHeapDBAlloc
/* 253FC 800247FC 24070001 */   addiu     $a3, $zero, 0x1
/* 25400 80024800 3C018009 */  lui        $at, %hi(D_8008F264)
/* 25404 80024804 340A8000 */  ori        $t2, $zero, 0x8000
/* 25408 80024808 AC22F264 */  sw         $v0, %lo(D_8008F264)($at)
/* 2540C 8002480C AFAA0010 */  sw         $t2, 0x10($sp)
/* 25410 80024810 00002025 */  or         $a0, $zero, $zero
/* 25414 80024814 00002825 */  or         $a1, $zero, $zero
/* 25418 80024818 02003025 */  or         $a2, $s0, $zero
/* 2541C 8002481C 0C00D998 */  jal        alHeapDBAlloc
/* 25420 80024820 24070001 */   addiu     $a3, $zero, 0x1
/* 25424 80024824 3C018009 */  lui        $at, %hi(D_8008F268)
/* 25428 80024828 3C048009 */  lui        $a0, %hi(D_8008F270)
/* 2542C 8002482C 3C058009 */  lui        $a1, %hi(D_8008F2A0)
/* 25430 80024830 AC22F268 */  sw         $v0, %lo(D_8008F268)($at)
/* 25434 80024834 24A5F2A0 */  addiu      $a1, $a1, %lo(D_8008F2A0)
/* 25438 80024838 2484F270 */  addiu      $a0, $a0, %lo(D_8008F270)
/* 2543C 8002483C 0C00CFC4 */  jal        osCreateMesgQueue
/* 25440 80024840 24060001 */   addiu     $a2, $zero, 0x1
/* 25444 80024844 3C048009 */  lui        $a0, %hi(D_8008F288)
/* 25448 80024848 3C058009 */  lui        $a1, %hi(D_8008F2A4)
/* 2544C 8002484C 24A5F2A4 */  addiu      $a1, $a1, %lo(D_8008F2A4)
/* 25450 80024850 2484F288 */  addiu      $a0, $a0, %lo(D_8008F288)
/* 25454 80024854 0C00CFC4 */  jal        osCreateMesgQueue
/* 25458 80024858 24060001 */   addiu     $a2, $zero, 0x1
/* 2545C 8002485C 3C018009 */  lui        $at, %hi(D_8008F698)
/* 25460 80024860 A020F698 */  sb         $zero, %lo(D_8008F698)($at)
/* 25464 80024864 0C00D9B0 */  jal        osAiSetFrequency
/* 25468 80024868 24045622 */   addiu     $a0, $zero, 0x5622
/* 2546C 8002486C 3C058009 */  lui        $a1, %hi(D_8008F5F8)
/* 25470 80024870 24A5F5F8 */  addiu      $a1, $a1, %lo(D_8008F5F8)
/* 25474 80024874 3C0C8002 */  lui        $t4, %hi(func_80024A48)
/* 25478 80024878 24030010 */  addiu      $v1, $zero, 0x10
/* 2547C 8002487C 240B0040 */  addiu      $t3, $zero, 0x40
/* 25480 80024880 258C4A48 */  addiu      $t4, $t4, %lo(func_80024A48)
/* 25484 80024884 240D0001 */  addiu      $t5, $zero, 0x1
/* 25488 80024888 3C048009 */  lui        $a0, %hi(D_8008F5A8)
/* 2548C 8002488C ACA20018 */  sw         $v0, 0x18($a1)
/* 25490 80024890 ACA30000 */  sw         $v1, 0x0($a1)
/* 25494 80024894 ACA30004 */  sw         $v1, 0x4($a1)
/* 25498 80024898 ACAB0008 */  sw         $t3, 0x8($a1)
/* 2549C 8002489C ACAC0010 */  sw         $t4, 0x10($a1)
/* 254A0 800248A0 A0AD001C */  sb         $t5, 0x1C($a1)
/* 254A4 800248A4 ACB00014 */  sw         $s0, 0x14($a1)
/* 254A8 800248A8 ACA00020 */  sw         $zero, 0x20($a1)
/* 254AC 800248AC 0C00DA2B */  jal        alInit
/* 254B0 800248B0 2484F5A8 */   addiu     $a0, $a0, %lo(D_8008F5A8)
/* 254B4 800248B4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 254B8 800248B8 8FB00020 */  lw         $s0, 0x20($sp)
/* 254BC 800248BC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 254C0 800248C0 03E00008 */  jr         $ra
/* 254C4 800248C4 00000000 */   nop
