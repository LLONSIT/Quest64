glabel func_80001800
/* 2400 80001800 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2404 80001804 AFB60038 */  sw         $s6, 0x38($sp)
/* 2408 80001808 3C168008 */  lui        $s6, %hi(D_8007B2E4)
/* 240C 8000180C 26D6B2E4 */  addiu      $s6, $s6, %lo(D_8007B2E4)
/* 2410 80001810 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2414 80001814 AFBE0040 */  sw         $fp, 0x40($sp)
/* 2418 80001818 AFB7003C */  sw         $s7, 0x3C($sp)
/* 241C 8000181C AFB50034 */  sw         $s5, 0x34($sp)
/* 2420 80001820 AFB40030 */  sw         $s4, 0x30($sp)
/* 2424 80001824 AFB3002C */  sw         $s3, 0x2C($sp)
/* 2428 80001828 AFB20028 */  sw         $s2, 0x28($sp)
/* 242C 8000182C AFB10024 */  sw         $s1, 0x24($sp)
/* 2430 80001830 AFB00020 */  sw         $s0, 0x20($sp)
/* 2434 80001834 3C018008 */  lui        $at, %hi(D_8007B348)
/* 2438 80001838 AC20B348 */  sw         $zero, %lo(D_8007B348)($at)
/* 243C 8000183C 3C018008 */  lui        $at, %hi(D_8007B2EC)
/* 2440 80001840 AC20B2EC */  sw         $zero, %lo(D_8007B2EC)($at)
/* 2444 80001844 8EC30000 */  lw         $v1, 0x0($s6)
/* 2448 80001848 AFA0005C */  sw         $zero, 0x5C($sp)
/* 244C 8000184C 306E0040 */  andi       $t6, $v1, 0x40
/* 2450 80001850 11C00041 */  beqz       $t6, .L80001958
/* 2454 80001854 306F0800 */   andi      $t7, $v1, 0x800
/* 2458 80001858 11E00009 */  beqz       $t7, .L80001880
/* 245C 8000185C 3C188008 */   lui       $t8, %hi(D_8007BA60)
/* 2460 80001860 9718BA60 */  lhu        $t8, %lo(D_8007BA60)($t8)
/* 2464 80001864 3C018008 */  lui        $at, %hi(D_80084EE4)
/* 2468 80001868 3C198008 */  lui        $t9, %hi(D_8007BA62)
/* 246C 8000186C 9739BA62 */  lhu        $t9, %lo(D_8007BA62)($t9)
/* 2470 80001870 AC384EE4 */  sw         $t8, %lo(D_80084EE4)($at)
/* 2474 80001874 3C018008 */  lui        $at, %hi(D_80084EE8)
/* 2478 80001878 0C000BA8 */  jal        func_80002EA0
/* 247C 8000187C AC394EE8 */   sw        $t9, %lo(D_80084EE8)($at)
.L80001880:
/* 2480 80001880 0C00B978 */  jal        func_8002E5E0
/* 2484 80001884 00002025 */   or        $a0, $zero, $zero
/* 2488 80001888 3C018009 */  lui        $at, %hi(D_800905C0)
/* 248C 8000188C 0C002F44 */  jal        func_8000BD10
/* 2490 80001890 AC2005C0 */   sw        $zero, %lo(D_800905C0)($at)
/* 2494 80001894 0C0046DC */  jal        func_80011B70
/* 2498 80001898 00000000 */   nop
/* 249C 8000189C 0C004888 */  jal        func_80012220
/* 24A0 800018A0 00000000 */   nop
/* 24A4 800018A4 0C000A46 */  jal        func_80002918
/* 24A8 800018A8 00000000 */   nop
/* 24AC 800018AC 0C001E94 */  jal        func_80007A50
/* 24B0 800018B0 00000000 */   nop
/* 24B4 800018B4 0C0022EC */  jal        func_80008BB0
/* 24B8 800018B8 00000000 */   nop
/* 24BC 800018BC 0C002D4C */  jal        func_8000B530
/* 24C0 800018C0 00000000 */   nop
/* 24C4 800018C4 0C0049E0 */  jal        func_80012780
/* 24C8 800018C8 00000000 */   nop
/* 24CC 800018CC 0C004054 */  jal        func_80010150
/* 24D0 800018D0 00000000 */   nop
/* 24D4 800018D4 0C004440 */  jal        func_80011100
/* 24D8 800018D8 00000000 */   nop
/* 24DC 800018DC 3C018008 */  lui        $at, %hi(D_8007B340)
/* 24E0 800018E0 0C004440 */  jal        func_80011100
/* 24E4 800018E4 AC22B340 */   sw        $v0, %lo(D_8007B340)($at)
/* 24E8 800018E8 3C018008 */  lui        $at, %hi(D_8007B33C)
/* 24EC 800018EC 0C004440 */  jal        func_80011100
/* 24F0 800018F0 AC22B33C */   sw        $v0, %lo(D_8007B33C)($at)
/* 24F4 800018F4 00024880 */  sll        $t1, $v0, 2
/* 24F8 800018F8 3C048008 */  lui        $a0, %hi(D_8007BC08)
/* 24FC 800018FC 01224823 */  subu       $t1, $t1, $v0
/* 2500 80001900 2484BC08 */  addiu      $a0, $a0, %lo(D_8007BC08)
/* 2504 80001904 00094900 */  sll        $t1, $t1, 4
/* 2508 80001908 3C018008 */  lui        $at, %hi(D_800859E8)
/* 250C 8000190C AC820000 */  sw         $v0, 0x0($a0)
/* 2510 80001910 24140002 */  addiu      $s4, $zero, 0x2
/* 2514 80001914 00290821 */  addu       $at, $at, $t1
/* 2518 80001918 0C007158 */  jal        func_8001C560
/* 251C 8000191C AC3459E8 */   sw        $s4, %lo(D_800859E8)($at)
/* 2520 80001920 0C005210 */  jal        func_80014840
/* 2524 80001924 00000000 */   nop
/* 2528 80001928 0C00617C */  jal        func_800185F0
/* 252C 8000192C 00000000 */   nop
/* 2530 80001930 0C006C34 */  jal        func_8001B0D0
/* 2534 80001934 00000000 */   nop
/* 2538 80001938 0C008A38 */  jal        func_800228E0
/* 253C 8000193C 00000000 */   nop
/* 2540 80001940 0C00787C */  jal        func_8001E1F0
/* 2544 80001944 00000000 */   nop
/* 2548 80001948 8ECA0000 */  lw         $t2, 0x0($s6)
/* 254C 8000194C 2401F7BF */  addiu      $at, $zero, -0x841
/* 2550 80001950 01411824 */  and        $v1, $t2, $at
/* 2554 80001954 AEC30000 */  sw         $v1, 0x0($s6)
.L80001958:
/* 2558 80001958 306C0400 */  andi       $t4, $v1, 0x400
/* 255C 8000195C 1180000C */  beqz       $t4, .L80001990
/* 2560 80001960 24140002 */   addiu     $s4, $zero, 0x2
/* 2564 80001964 3C048008 */  lui        $a0, %hi(D_8007BACC)
/* 2568 80001968 240D0001 */  addiu      $t5, $zero, 0x1
/* 256C 8000196C 240E0001 */  addiu      $t6, $zero, 0x1
/* 2570 80001970 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2574 80001974 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2578 80001978 2484BACC */  addiu      $a0, $a0, %lo(D_8007BACC)
/* 257C 8000197C 00002825 */  or         $a1, $zero, $zero
/* 2580 80001980 24060001 */  addiu      $a2, $zero, 0x1
/* 2584 80001984 0C00762C */  jal        func_8001D8B0
/* 2588 80001988 00003825 */   or        $a3, $zero, $zero
/* 258C 8000198C 8EC30000 */  lw         $v1, 0x0($s6)
.L80001990:
/* 2590 80001990 306F0020 */  andi       $t7, $v1, 0x20
/* 2594 80001994 11E00028 */  beqz       $t7, .L80001A38
/* 2598 80001998 2401FFDF */   addiu     $at, $zero, -0x21
/* 259C 8000199C 0061C024 */  and        $t8, $v1, $at
/* 25A0 800019A0 AED80000 */  sw         $t8, 0x0($s6)
/* 25A4 800019A4 3C028008 */  lui        $v0, %hi(D_8007B2F0)
/* 25A8 800019A8 9442B2F0 */  lhu        $v0, %lo(D_8007B2F0)($v0)
/* 25AC 800019AC 24040010 */  addiu      $a0, $zero, 0x10
/* 25B0 800019B0 24050004 */  addiu      $a1, $zero, 0x4
/* 25B4 800019B4 1040000B */  beqz       $v0, .L800019E4
/* 25B8 800019B8 3C068005 */   lui       $a2, %hi(D_8004D56C)
/* 25BC 800019BC 24130001 */  addiu      $s3, $zero, 0x1
/* 25C0 800019C0 1053000C */  beq        $v0, $s3, .L800019F4
/* 25C4 800019C4 24040010 */   addiu     $a0, $zero, 0x10
/* 25C8 800019C8 10540010 */  beq        $v0, $s4, .L80001A0C
/* 25CC 800019CC 24040020 */   addiu     $a0, $zero, 0x20
/* 25D0 800019D0 24010003 */  addiu      $at, $zero, 0x3
/* 25D4 800019D4 10410013 */  beq        $v0, $at, .L80001A24
/* 25D8 800019D8 24040020 */   addiu     $a0, $zero, 0x20
/* 25DC 800019DC 10000016 */  b          .L80001A38
/* 25E0 800019E0 03001825 */   or        $v1, $t8, $zero
.L800019E4:
/* 25E4 800019E4 0C008AC2 */  jal        func_80022B08
/* 25E8 800019E8 24C6D56C */   addiu     $a2, $a2, %lo(D_8004D56C)
/* 25EC 800019EC 10000012 */  b          .L80001A38
/* 25F0 800019F0 8EC30000 */   lw        $v1, 0x0($s6)
.L800019F4:
/* 25F4 800019F4 3C068005 */  lui        $a2, %hi(D_8004D5AC)
/* 25F8 800019F8 24C6D5AC */  addiu      $a2, $a2, %lo(D_8004D5AC)
/* 25FC 800019FC 0C008AC2 */  jal        func_80022B08
/* 2600 80001A00 24050004 */   addiu     $a1, $zero, 0x4
/* 2604 80001A04 1000000C */  b          .L80001A38
/* 2608 80001A08 8EC30000 */   lw        $v1, 0x0($s6)
.L80001A0C:
/* 260C 80001A0C 3C068005 */  lui        $a2, %hi(D_8004D674)
/* 2610 80001A10 24C6D674 */  addiu      $a2, $a2, %lo(D_8004D674)
/* 2614 80001A14 0C008AC2 */  jal        func_80022B08
/* 2618 80001A18 24050004 */   addiu     $a1, $zero, 0x4
/* 261C 80001A1C 10000006 */  b          .L80001A38
/* 2620 80001A20 8EC30000 */   lw        $v1, 0x0($s6)
.L80001A24:
/* 2624 80001A24 3C068005 */  lui        $a2, %hi(D_8004D714)
/* 2628 80001A28 24C6D714 */  addiu      $a2, $a2, %lo(D_8004D714)
/* 262C 80001A2C 0C008AC2 */  jal        func_80022B08
/* 2630 80001A30 24050004 */   addiu     $a1, $zero, 0x4
/* 2634 80001A34 8EC30000 */  lw         $v1, 0x0($s6)
.L80001A38:
/* 2638 80001A38 30790100 */  andi       $t9, $v1, 0x100
/* 263C 80001A3C 1320000B */  beqz       $t9, .L80001A6C
/* 2640 80001A40 24130001 */   addiu     $s3, $zero, 0x1
/* 2644 80001A44 3C048008 */  lui        $a0, %hi(D_80084EE4)
/* 2648 80001A48 3C058008 */  lui        $a1, %hi(D_80084EE8)
/* 264C 80001A4C 8CA54EE8 */  lw         $a1, %lo(D_80084EE8)($a1)
/* 2650 80001A50 8C844EE4 */  lw         $a0, %lo(D_80084EE4)($a0)
/* 2654 80001A54 0C009A13 */  jal        func_8002684C
/* 2658 80001A58 00003025 */   or        $a2, $zero, $zero
/* 265C 80001A5C 8EC80000 */  lw         $t0, 0x0($s6)
/* 2660 80001A60 2401FEFF */  addiu      $at, $zero, -0x101
/* 2664 80001A64 01011824 */  and        $v1, $t0, $at
/* 2668 80001A68 AEC30000 */  sw         $v1, 0x0($s6)
.L80001A6C:
/* 266C 80001A6C 3C028008 */  lui        $v0, %hi(D_8007B2E8)
/* 2670 80001A70 2442B2E8 */  addiu      $v0, $v0, %lo(D_8007B2E8)
/* 2674 80001A74 944B0000 */  lhu        $t3, 0x0($v0)
/* 2678 80001A78 2401FB7F */  addiu      $at, $zero, -0x481
/* 267C 80001A7C 00615024 */  and        $t2, $v1, $at
/* 2680 80001A80 24010004 */  addiu      $at, $zero, 0x4
/* 2684 80001A84 1561000D */  bne        $t3, $at, .L80001ABC
/* 2688 80001A88 AECA0000 */   sw        $t2, 0x0($s6)
/* 268C 80001A8C 354D4080 */  ori        $t5, $t2, 0x4080
/* 2690 80001A90 AECD0000 */  sw         $t5, 0x0($s6)
/* 2694 80001A94 240E0031 */  addiu      $t6, $zero, 0x31
/* 2698 80001A98 3C018008 */  lui        $at, %hi(D_8007B2EC)
/* 269C 80001A9C AC2EB2EC */  sw         $t6, %lo(D_8007B2EC)($at)
/* 26A0 80001AA0 3C018008 */  lui        $at, %hi(D_8007B2F0)
/* 26A4 80001AA4 240F0002 */  addiu      $t7, $zero, 0x2
/* 26A8 80001AA8 A42FB2F0 */  sh         $t7, %lo(D_8007B2F0)($at)
/* 26AC 80001AAC 3C018008 */  lui        $at, %hi(D_8007B2F2)
/* 26B0 80001AB0 2418002F */  addiu      $t8, $zero, 0x2F
/* 26B4 80001AB4 10000006 */  b          .L80001AD0
/* 26B8 80001AB8 A438B2F2 */   sh        $t8, %lo(D_8007B2F2)($at)
.L80001ABC:
/* 26BC 80001ABC 3C018008 */  lui        $at, %hi(D_8007B2F0)
/* 26C0 80001AC0 A420B2F0 */  sh         $zero, %lo(D_8007B2F0)($at)
/* 26C4 80001AC4 3C018008 */  lui        $at, %hi(D_8007B2F2)
/* 26C8 80001AC8 24190012 */  addiu      $t9, $zero, 0x12
/* 26CC 80001ACC A439B2F2 */  sh         $t9, %lo(D_8007B2F2)($at)
.L80001AD0:
/* 26D0 80001AD0 3C178008 */  lui        $s7, %hi(gameMode)
/* 26D4 80001AD4 26F7B2E0 */  addiu      $s7, $s7, %lo(gameMode)
/* 26D8 80001AD8 96E80000 */  lhu        $t0, 0x0($s7)
/* 26DC 80001ADC 3C158008 */  lui        $s5, %hi(D_8007BAB8)
/* 26E0 80001AE0 A4400000 */  sh         $zero, 0x0($v0)
/* 26E4 80001AE4 16680143 */  bne        $s3, $t0, .L80001FF4
/* 26E8 80001AE8 26B5BAB8 */   addiu     $s5, $s5, %lo(D_8007BAB8)
/* 26EC 80001AEC 3C1E8008 */  lui        $fp, %hi(D_8007B2F4)
/* 26F0 80001AF0 3C128008 */  lui        $s2, %hi(D_8007B2D0)
/* 26F4 80001AF4 3C108008 */  lui        $s0, %hi(D_8007B9E8)
/* 26F8 80001AF8 2610B9E8 */  addiu      $s0, $s0, %lo(D_8007B9E8)
/* 26FC 80001AFC 2652B2D0 */  addiu      $s2, $s2, %lo(D_8007B2D0)
/* 2700 80001B00 27DEB2F4 */  addiu      $fp, $fp, %lo(D_8007B2F4)
/* 2704 80001B04 27B1005C */  addiu      $s1, $sp, 0x5C
.L80001B08:
/* 2708 80001B08 3C048009 */  lui        $a0, %hi(D_80092870)
/* 270C 80001B0C 0C00C530 */  jal        func_800314C0
/* 2710 80001B10 80842870 */   lb        $a0, %lo(D_80092870)($a0)
/* 2714 80001B14 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 2718 80001B18 AC20B2F8 */  sw         $zero, %lo(D_8007B2F8)($at)
/* 271C 80001B1C 3C018008 */  lui        $at, %hi(D_80087200)
/* 2720 80001B20 0C004614 */  jal        func_80011850
/* 2724 80001B24 AC207200 */   sw        $zero, %lo(D_80087200)($at)
/* 2728 80001B28 3C098008 */  lui        $t1, %hi(D_80084F10)
/* 272C 80001B2C 95294F10 */  lhu        $t1, %lo(D_80084F10)($t1)
/* 2730 80001B30 312A0001 */  andi       $t2, $t1, 0x1
/* 2734 80001B34 11400003 */  beqz       $t2, .L80001B44
/* 2738 80001B38 00000000 */   nop
/* 273C 80001B3C 0C00717D */  jal        func_8001C5F4
/* 2740 80001B40 00000000 */   nop
.L80001B44:
/* 2744 80001B44 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 2748 80001B48 9442C592 */  lhu        $v0, %lo(D_8008C592)($v0)
/* 274C 80001B4C 304B0001 */  andi       $t3, $v0, 0x1
/* 2750 80001B50 1160000B */  beqz       $t3, .L80001B80
/* 2754 80001B54 304C0200 */   andi      $t4, $v0, 0x200
/* 2758 80001B58 11800005 */  beqz       $t4, .L80001B70
/* 275C 80001B5C 00000000 */   nop
/* 2760 80001B60 0C0072B3 */  jal        func_8001CACC
/* 2764 80001B64 00000000 */   nop
/* 2768 80001B68 10000005 */  b          .L80001B80
/* 276C 80001B6C 00000000 */   nop
.L80001B70:
/* 2770 80001B70 0C0073FA */  jal        func_8001CFE8
/* 2774 80001B74 00000000 */   nop
/* 2778 80001B78 0C002308 */  jal        func_80008C20
/* 277C 80001B7C 00000000 */   nop
.L80001B80:
/* 2780 80001B80 0C000BD8 */  jal        func_80002F60
/* 2784 80001B84 00000000 */   nop
/* 2788 80001B88 0C001ED9 */  jal        func_80007B64
/* 278C 80001B8C 00000000 */   nop
/* 2790 80001B90 0C0055B4 */  jal        func_800156D0
/* 2794 80001B94 00000000 */   nop
/* 2798 80001B98 0C0040B4 */  jal        func_800102D0
/* 279C 80001B9C 00000000 */   nop
/* 27A0 80001BA0 0C00310B */  jal        func_8000C42C
/* 27A4 80001BA4 00000000 */   nop
/* 27A8 80001BA8 0C003713 */  jal        func_8000DC4C
/* 27AC 80001BAC 00000000 */   nop
/* 27B0 80001BB0 8FCD0000 */  lw         $t5, 0x0($fp)
/* 27B4 80001BB4 3401D150 */  ori        $at, $zero, 0xD150
/* 27B8 80001BB8 3C0F8030 */  lui        $t7, %hi(D_80301000)
/* 27BC 80001BBC 01A10019 */  multu      $t5, $at
/* 27C0 80001BC0 25EF1000 */  addiu      $t7, $t7, %lo(D_80301000)
/* 27C4 80001BC4 00007012 */  mflo       $t6
/* 27C8 80001BC8 01CF2021 */  addu       $a0, $t6, $t7
/* 27CC 80001BCC 0C000477 */  jal        func_800011DC
/* 27D0 80001BD0 00000000 */   nop
/* 27D4 80001BD4 8FD80000 */  lw         $t8, 0x0($fp)
/* 27D8 80001BD8 3401D150 */  ori        $at, $zero, 0xD150
/* 27DC 80001BDC 8EC30000 */  lw         $v1, 0x0($s6)
/* 27E0 80001BE0 03010019 */  multu      $t8, $at
/* 27E4 80001BE4 3C088030 */  lui        $t0, %hi(D_80301000)
/* 27E8 80001BE8 25081000 */  addiu      $t0, $t0, %lo(D_80301000)
/* 27EC 80001BEC 306A0087 */  andi       $t2, $v1, 0x87
/* 27F0 80001BF0 0000C812 */  mflo       $t9
/* 27F4 80001BF4 03284821 */  addu       $t1, $t9, $t0
/* 27F8 80001BF8 15400037 */  bnez       $t2, .L80001CD8
/* 27FC 80001BFC AFA90058 */   sw        $t1, 0x58($sp)
/* 2800 80001C00 96AB0074 */  lhu        $t3, 0x74($s5)
/* 2804 80001C04 316C0001 */  andi       $t4, $t3, 0x1
/* 2808 80001C08 55800011 */  bnel       $t4, $zero, .L80001C50
/* 280C 80001C0C 8EC30000 */   lw        $v1, 0x0($s6)
/* 2810 80001C10 C6AC0014 */  lwc1       $f12, 0x14($s5)
/* 2814 80001C14 C6AE001C */  lwc1       $f14, 0x1C($s5)
/* 2818 80001C18 0C003F78 */  jal        func_8000FDE0
/* 281C 80001C1C 8EA60024 */   lw        $a2, 0x24($s5)
/* 2820 80001C20 5040000B */  beql       $v0, $zero, .L80001C50
/* 2824 80001C24 8EC30000 */   lw        $v1, 0x0($s6)
/* 2828 80001C28 8ECD0000 */  lw         $t5, 0x0($s6)
/* 282C 80001C2C 35AE0080 */  ori        $t6, $t5, 0x80
/* 2830 80001C30 0C005167 */  jal        func_8001459C
/* 2834 80001C34 AECE0000 */   sw        $t6, 0x0($s6)
/* 2838 80001C38 0C001835 */  jal        func_800060D4
/* 283C 80001C3C 00000000 */   nop
/* 2840 80001C40 3C018008 */  lui        $at, %hi(D_8007B2F0)
/* 2844 80001C44 10000090 */  b          .L80001E88
/* 2848 80001C48 A420B2F0 */   sh        $zero, %lo(D_8007B2F0)($at)
/* 284C 80001C4C 8EC30000 */  lw         $v1, 0x0($s6)
.L80001C50:
/* 2850 80001C50 306F1000 */  andi       $t7, $v1, 0x1000
/* 2854 80001C54 15E0008C */  bnez       $t7, .L80001E88
/* 2858 80001C58 00000000 */   nop
/* 285C 80001C5C 96B80074 */  lhu        $t8, 0x74($s5)
/* 2860 80001C60 3C088009 */  lui        $t0, %hi(D_80092876)
/* 2864 80001C64 33190001 */  andi       $t9, $t8, 0x1
/* 2868 80001C68 17200087 */  bnez       $t9, .L80001E88
/* 286C 80001C6C 00000000 */   nop
/* 2870 80001C70 95082876 */  lhu        $t0, %lo(D_80092876)($t0)
/* 2874 80001C74 3C0A8009 */  lui        $t2, %hi(D_8008C592)
/* 2878 80001C78 31091000 */  andi       $t1, $t0, 0x1000
/* 287C 80001C7C 11200082 */  beqz       $t1, .L80001E88
/* 2880 80001C80 00000000 */   nop
/* 2884 80001C84 954AC592 */  lhu        $t2, %lo(D_8008C592)($t2)
/* 2888 80001C88 3C0C8009 */  lui        $t4, %hi(D_80092874)
/* 288C 80001C8C 314B0001 */  andi       $t3, $t2, 0x1
/* 2890 80001C90 1560007D */  bnez       $t3, .L80001E88
/* 2894 80001C94 00000000 */   nop
/* 2898 80001C98 958C2874 */  lhu        $t4, %lo(D_80092874)($t4)
/* 289C 80001C9C 306E0001 */  andi       $t6, $v1, 0x1
/* 28A0 80001CA0 318D2000 */  andi       $t5, $t4, 0x2000
/* 28A4 80001CA4 15A00078 */  bnez       $t5, .L80001E88
/* 28A8 80001CA8 00000000 */   nop
/* 28AC 80001CAC 15C00076 */  bnez       $t6, .L80001E88
/* 28B0 80001CB0 240F0002 */   addiu     $t7, $zero, 0x2
/* 28B4 80001CB4 00132E00 */  sll        $a1, $s3, 24
/* 28B8 80001CB8 0005C603 */  sra        $t8, $a1, 24
/* 28BC 80001CBC A6EF0000 */  sh         $t7, 0x0($s7)
/* 28C0 80001CC0 03002825 */  or         $a1, $t8, $zero
/* 28C4 80001CC4 00002025 */  or         $a0, $zero, $zero
/* 28C8 80001CC8 0C009A35 */  jal        func_800268D4
/* 28CC 80001CCC 240600FF */   addiu     $a2, $zero, 0xFF
/* 28D0 80001CD0 1000006D */  b          .L80001E88
/* 28D4 80001CD4 00000000 */   nop
.L80001CD8:
/* 28D8 80001CD8 30790080 */  andi       $t9, $v1, 0x80
/* 28DC 80001CDC 1320006A */  beqz       $t9, .L80001E88
/* 28E0 80001CE0 30680002 */   andi      $t0, $v1, 0x2
/* 28E4 80001CE4 15000068 */  bnez       $t0, .L80001E88
/* 28E8 80001CE8 3C048008 */   lui       $a0, %hi(D_8007B2EC)
/* 28EC 80001CEC 2484B2EC */  addiu      $a0, $a0, %lo(D_8007B2EC)
/* 28F0 80001CF0 8C890000 */  lw         $t1, 0x0($a0)
/* 28F4 80001CF4 306B4000 */  andi       $t3, $v1, 0x4000
/* 28F8 80001CF8 3C198008 */  lui        $t9, %hi(D_8007B2F2)
/* 28FC 80001CFC 2522FFFF */  addiu      $v0, $t1, -0x1
/* 2900 80001D00 1440003C */  bnez       $v0, .L80001DF4
/* 2904 80001D04 AC820000 */   sw        $v0, 0x0($a0)
/* 2908 80001D08 11600008 */  beqz       $t3, .L80001D2C
/* 290C 80001D0C 3C048008 */   lui       $a0, %hi(D_80085368)
/* 2910 80001D10 2401BFFF */  addiu      $at, $zero, -0x4001
/* 2914 80001D14 240C0005 */  addiu      $t4, $zero, 0x5
/* 2918 80001D18 00616824 */  and        $t5, $v1, $at
/* 291C 80001D1C A6EC0000 */  sh         $t4, 0x0($s7)
/* 2920 80001D20 AECD0000 */  sw         $t5, 0x0($s6)
/* 2924 80001D24 10000002 */  b          .L80001D30
/* 2928 80001D28 01A01825 */   or        $v1, $t5, $zero
.L80001D2C:
/* 292C 80001D2C A6E00000 */  sh         $zero, 0x0($s7)
.L80001D30:
/* 2930 80001D30 346E0020 */  ori        $t6, $v1, 0x20
/* 2934 80001D34 31C20400 */  andi       $v0, $t6, 0x400
/* 2938 80001D38 AECE0000 */  sw         $t6, 0x0($s6)
/* 293C 80001D3C 14400004 */  bnez       $v0, .L80001D50
/* 2940 80001D40 01C01825 */   or        $v1, $t6, $zero
/* 2944 80001D44 35C30040 */  ori        $v1, $t6, 0x40
/* 2948 80001D48 AEC30000 */  sw         $v1, 0x0($s6)
/* 294C 80001D4C 30620400 */  andi       $v0, $v1, 0x400
.L80001D50:
/* 2950 80001D50 24845368 */  addiu      $a0, $a0, %lo(D_80085368)
/* 2954 80001D54 8C980000 */  lw         $t8, 0x0($a0)
/* 2958 80001D58 3C018008 */  lui        $at, %hi(D_80084EEC)
/* 295C 80001D5C AC384EEC */  sw         $t8, %lo(D_80084EEC)($at)
/* 2960 80001D60 8C990004 */  lw         $t9, 0x4($a0)
/* 2964 80001D64 3C018008 */  lui        $at, %hi(D_80084EF0)
/* 2968 80001D68 1040001D */  beqz       $v0, .L80001DE0
/* 296C 80001D6C AC394EF0 */   sw        $t9, %lo(D_80084EF0)($at)
/* 2970 80001D70 8EA20010 */  lw         $v0, 0x10($s5)
/* 2974 80001D74 3C038008 */  lui        $v1, %hi(currentTime)
/* 2978 80001D78 246359D0 */  addiu      $v1, $v1, %lo(currentTime)
/* 297C 80001D7C 94480006 */  lhu        $t0, 0x6($v0)
/* 2980 80001D80 A4480004 */  sh         $t0, 0x4($v0)
/* 2984 80001D84 8EA20010 */  lw         $v0, 0x10($s5)
/* 2988 80001D88 9449000A */  lhu        $t1, 0xA($v0)
/* 298C 80001D8C A4490008 */  sh         $t1, 0x8($v0)
/* 2990 80001D90 8C6A0000 */  lw         $t2, 0x0($v1)
/* 2994 80001D94 25442328 */  addiu      $a0, $t2, 0x2328
/* 2998 80001D98 0C004144 */  jal        func_80010510
/* 299C 80001D9C AC640000 */   sw        $a0, 0x0($v1)
/* 29A0 80001DA0 3C0C8008 */  lui        $t4, %hi(D_80084EE4)
/* 29A4 80001DA4 8D8C4EE4 */  lw         $t4, %lo(D_80084EE4)($t4)
/* 29A8 80001DA8 3C0D8008 */  lui        $t5, %hi(D_80084EE8)
/* 29AC 80001DAC 8DAD4EE8 */  lw         $t5, %lo(D_80084EE8)($t5)
/* 29B0 80001DB0 3C018008 */  lui        $at, %hi(D_8007BA60)
/* 29B4 80001DB4 3C0E8008 */  lui        $t6, %hi(D_80085370)
/* 29B8 80001DB8 A42CBA60 */  sh         $t4, %lo(D_8007BA60)($at)
/* 29BC 80001DBC 8DCE5370 */  lw         $t6, %lo(D_80085370)($t6)
/* 29C0 80001DC0 3C018008 */  lui        $at, %hi(D_8007BA62)
/* 29C4 80001DC4 A42DBA62 */  sh         $t5, %lo(D_8007BA62)($at)
/* 29C8 80001DC8 3C018008 */  lui        $at, %hi(D_8007BA64)
/* 29CC 80001DCC A42EBA64 */  sh         $t6, %lo(D_8007BA64)($at)
/* 29D0 80001DD0 3C018008 */  lui        $at, %hi(D_8007B2F0)
/* 29D4 80001DD4 240F0002 */  addiu      $t7, $zero, 0x2
/* 29D8 80001DD8 A42FB2F0 */  sh         $t7, %lo(D_8007B2F0)($at)
/* 29DC 80001DDC 8EC30000 */  lw         $v1, 0x0($s6)
.L80001DE0:
/* 29E0 80001DE0 34780100 */  ori        $t8, $v1, 0x100
/* 29E4 80001DE4 0C009922 */  jal        func_80026488
/* 29E8 80001DE8 AED80000 */   sw        $t8, 0x0($s6)
/* 29EC 80001DEC 10000026 */  b          .L80001E88
/* 29F0 80001DF0 00000000 */   nop
.L80001DF4:
/* 29F4 80001DF4 9739B2F2 */  lhu        $t9, %lo(D_8007B2F2)($t9)
/* 29F8 80001DF8 14590023 */  bne        $v0, $t9, .L80001E88
/* 29FC 80001DFC 3C028008 */   lui       $v0, %hi(D_8007B2F0)
/* 2A00 80001E00 9442B2F0 */  lhu        $v0, %lo(D_8007B2F0)($v0)
/* 2A04 80001E04 2404000F */  addiu      $a0, $zero, 0xF
/* 2A08 80001E08 24050002 */  addiu      $a1, $zero, 0x2
/* 2A0C 80001E0C 1040000A */  beqz       $v0, .L80001E38
/* 2A10 80001E10 3C068005 */   lui       $a2, %hi(D_8004D530)
/* 2A14 80001E14 1053000C */  beq        $v0, $s3, .L80001E48
/* 2A18 80001E18 2404000F */   addiu     $a0, $zero, 0xF
/* 2A1C 80001E1C 10540010 */  beq        $v0, $s4, .L80001E60
/* 2A20 80001E20 2404001F */   addiu     $a0, $zero, 0x1F
/* 2A24 80001E24 24010003 */  addiu      $at, $zero, 0x3
/* 2A28 80001E28 10410013 */  beq        $v0, $at, .L80001E78
/* 2A2C 80001E2C 2404001F */   addiu     $a0, $zero, 0x1F
/* 2A30 80001E30 10000015 */  b          .L80001E88
/* 2A34 80001E34 00000000 */   nop
.L80001E38:
/* 2A38 80001E38 0C008AC2 */  jal        func_80022B08
/* 2A3C 80001E3C 24C6D530 */   addiu     $a2, $a2, %lo(D_8004D530)
/* 2A40 80001E40 10000011 */  b          .L80001E88
/* 2A44 80001E44 00000000 */   nop
.L80001E48:
/* 2A48 80001E48 3C068005 */  lui        $a2, %hi(D_8004D570)
/* 2A4C 80001E4C 24C6D570 */  addiu      $a2, $a2, %lo(D_8004D570)
/* 2A50 80001E50 0C008AC2 */  jal        func_80022B08
/* 2A54 80001E54 24050002 */   addiu     $a1, $zero, 0x2
/* 2A58 80001E58 1000000B */  b          .L80001E88
/* 2A5C 80001E5C 00000000 */   nop
.L80001E60:
/* 2A60 80001E60 3C068005 */  lui        $a2, %hi(D_8004D5F8)
/* 2A64 80001E64 24C6D5F8 */  addiu      $a2, $a2, %lo(D_8004D5F8)
/* 2A68 80001E68 0C008AC2 */  jal        func_80022B08
/* 2A6C 80001E6C 24050002 */   addiu     $a1, $zero, 0x2
/* 2A70 80001E70 10000005 */  b          .L80001E88
/* 2A74 80001E74 00000000 */   nop
.L80001E78:
/* 2A78 80001E78 3C068005 */  lui        $a2, %hi(D_8004D698)
/* 2A7C 80001E7C 24C6D698 */  addiu      $a2, $a2, %lo(D_8004D698)
/* 2A80 80001E80 0C008AC2 */  jal        func_80022B08
/* 2A84 80001E84 24050002 */   addiu     $a1, $zero, 0x2
.L80001E88:
/* 2A88 80001E88 0C009996 */  jal        func_80026658
/* 2A8C 80001E8C 00000000 */   nop
/* 2A90 80001E90 0C00D3B4 */  jal        osGetTime
/* 2A94 80001E94 00000000 */   nop
/* 2A98 80001E98 3C048008 */  lui        $a0, %hi(D_8007BA28)
/* 2A9C 80001E9C 2484BA28 */  addiu      $a0, $a0, %lo(D_8007BA28)
/* 2AA0 80001EA0 AC820000 */  sw         $v0, 0x0($a0)
/* 2AA4 80001EA4 AC830004 */  sw         $v1, 0x4($a0)
/* 2AA8 80001EA8 3C0A8008 */  lui        $t2, %hi(D_8007BA20)
/* 2AAC 80001EAC 3C0B8008 */  lui        $t3, %hi(D_8007BA24)
/* 2AB0 80001EB0 8D6BBA24 */  lw         $t3, %lo(D_8007BA24)($t3)
/* 2AB4 80001EB4 8D4ABA20 */  lw         $t2, %lo(D_8007BA20)($t2)
/* 2AB8 80001EB8 3C058008 */  lui        $a1, %hi(D_8007BA30)
/* 2ABC 80001EBC 24A5BA30 */  addiu      $a1, $a1, %lo(D_8007BA30)
/* 2AC0 80001EC0 006B082B */  sltu       $at, $v1, $t3
/* 2AC4 80001EC4 004A6023 */  subu       $t4, $v0, $t2
/* 2AC8 80001EC8 01816023 */  subu       $t4, $t4, $at
/* 2ACC 80001ECC 006B6823 */  subu       $t5, $v1, $t3
/* 2AD0 80001ED0 ACAD0004 */  sw         $t5, 0x4($a1)
/* 2AD4 80001ED4 ACAC0000 */  sw         $t4, 0x0($a1)
/* 2AD8 80001ED8 3C018008 */  lui        $at, %hi(D_8007BA38)
/* 2ADC 80001EDC 3C188009 */  lui        $t8, %hi(D_8008C640)
/* 2AE0 80001EE0 8F18C640 */  lw         $t8, %lo(D_8008C640)($t8)
/* 2AE4 80001EE4 AC2CBA38 */  sw         $t4, %lo(D_8007BA38)($at)
/* 2AE8 80001EE8 AC2DBA3C */  sw         $t5, %lo(D_8007BA3C)($at)
/* 2AEC 80001EEC 2401FFFF */  addiu      $at, $zero, -0x1
/* 2AF0 80001EF0 1301000D */  beq        $t8, $at, .L80001F28
/* 2AF4 80001EF4 00000000 */   nop
/* 2AF8 80001EF8 0C00950F */  jal        func_8002543C
/* 2AFC 80001EFC 00002025 */   or        $a0, $zero, $zero
/* 2B00 80001F00 14400009 */  bnez       $v0, .L80001F28
/* 2B04 80001F04 00002025 */   or        $a0, $zero, $zero
/* 2B08 80001F08 3C058009 */  lui        $a1, %hi(D_8008C640)
/* 2B0C 80001F0C 0C0094B6 */  jal        func_800252D8
/* 2B10 80001F10 8CA5C640 */   lw        $a1, %lo(D_8008C640)($a1)
/* 2B14 80001F14 0C0094D9 */  jal        func_80025364
/* 2B18 80001F18 00002025 */   or        $a0, $zero, $zero
/* 2B1C 80001F1C 2419FFFF */  addiu      $t9, $zero, -0x1
/* 2B20 80001F20 3C018009 */  lui        $at, %hi(D_8008C640)
/* 2B24 80001F24 AC39C640 */  sw         $t9, %lo(D_8008C640)($at)
.L80001F28:
/* 2B28 80001F28 3C038008 */  lui        $v1, %hi(D_8007B348)
/* 2B2C 80001F2C 2463B348 */  addiu      $v1, $v1, %lo(D_8007B348)
/* 2B30 80001F30 8C620000 */  lw         $v0, 0x0($v1)
/* 2B34 80001F34 1440000C */  bnez       $v0, .L80001F68
/* 2B38 80001F38 24480001 */   addiu     $t0, $v0, 0x1
/* 2B3C 80001F3C AC680000 */  sw         $t0, 0x0($v1)
/* 2B40 80001F40 02002025 */  or         $a0, $s0, $zero
.L80001F44:
/* 2B44 80001F44 02202825 */  or         $a1, $s1, $zero
/* 2B48 80001F48 0C00D008 */  jal        osRecvMesg
/* 2B4C 80001F4C 02603025 */   or        $a2, $s3, $zero
/* 2B50 80001F50 8FA9005C */  lw         $t1, 0x5C($sp)
/* 2B54 80001F54 852A0000 */  lh         $t2, 0x0($t1)
/* 2B58 80001F58 566AFFFA */  bnel       $s3, $t2, .L80001F44
/* 2B5C 80001F5C 02002025 */   or        $a0, $s0, $zero
/* 2B60 80001F60 10000014 */  b          .L80001FB4
/* 2B64 80001F64 00000000 */   nop
.L80001F68:
/* 2B68 80001F68 02002025 */  or         $a0, $s0, $zero
.L80001F6C:
/* 2B6C 80001F6C 02202825 */  or         $a1, $s1, $zero
/* 2B70 80001F70 0C00D008 */  jal        osRecvMesg
/* 2B74 80001F74 02603025 */   or        $a2, $s3, $zero
/* 2B78 80001F78 8FAB005C */  lw         $t3, 0x5C($sp)
/* 2B7C 80001F7C 856C0000 */  lh         $t4, 0x0($t3)
/* 2B80 80001F80 568CFFFA */  bnel       $s4, $t4, .L80001F6C
/* 2B84 80001F84 02002025 */   or        $a0, $s0, $zero
/* 2B88 80001F88 964D0000 */  lhu        $t5, 0x0($s2)
/* 2B8C 80001F8C 29A10002 */  slti       $at, $t5, 0x2
/* 2B90 80001F90 10200008 */  beqz       $at, .L80001FB4
/* 2B94 80001F94 02002025 */   or        $a0, $s0, $zero
.L80001F98:
/* 2B98 80001F98 02202825 */  or         $a1, $s1, $zero
/* 2B9C 80001F9C 0C00D008 */  jal        osRecvMesg
/* 2BA0 80001FA0 02603025 */   or        $a2, $s3, $zero
/* 2BA4 80001FA4 964E0000 */  lhu        $t6, 0x0($s2)
/* 2BA8 80001FA8 29C10002 */  slti       $at, $t6, 0x2
/* 2BAC 80001FAC 5420FFFA */  bnel       $at, $zero, .L80001F98
/* 2BB0 80001FB0 02002025 */   or        $a0, $s0, $zero
.L80001FB4:
/* 2BB4 80001FB4 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 2BB8 80001FB8 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 2BBC 80001FBC 8FA50058 */  lw         $a1, 0x58($sp)
/* 2BC0 80001FC0 0C00D080 */  jal        osSendMesg
/* 2BC4 80001FC4 02603025 */   or        $a2, $s3, $zero
/* 2BC8 80001FC8 8FCF0000 */  lw         $t7, 0x0($fp)
/* 2BCC 80001FCC A6400000 */  sh         $zero, 0x0($s2)
/* 2BD0 80001FD0 39F80001 */  xori       $t8, $t7, 0x1
/* 2BD4 80001FD4 0C00D3B4 */  jal        osGetTime
/* 2BD8 80001FD8 AFD80000 */   sw        $t8, 0x0($fp)
/* 2BDC 80001FDC 3C018008 */  lui        $at, %hi(D_8007BA20)
/* 2BE0 80001FE0 AC22BA20 */  sw         $v0, %lo(D_8007BA20)($at)
/* 2BE4 80001FE4 AC23BA24 */  sw         $v1, %lo(D_8007BA24)($at)
/* 2BE8 80001FE8 96F90000 */  lhu        $t9, 0x0($s7)
/* 2BEC 80001FEC 1279FEC6 */  beq        $s3, $t9, .L80001B08
/* 2BF0 80001FF0 00000000 */   nop
.L80001FF4:
/* 2BF4 80001FF4 8EC80000 */  lw         $t0, 0x0($s6)
/* 2BF8 80001FF8 3C108008 */  lui        $s0, %hi(D_8007B9E8)
/* 2BFC 80001FFC 2610B9E8 */  addiu      $s0, $s0, %lo(D_8007B9E8)
/* 2C00 80002000 31090200 */  andi       $t1, $t0, 0x200
/* 2C04 80002004 11200003 */  beqz       $t1, .L80002014
/* 2C08 80002008 27B1005C */   addiu     $s1, $sp, 0x5C
/* 2C0C 8000200C 0C0094FC */  jal        func_800253F0
/* 2C10 80002010 00002025 */   or        $a0, $zero, $zero
.L80002014:
/* 2C14 80002014 02002025 */  or         $a0, $s0, $zero
.L80002018:
/* 2C18 80002018 02202825 */  or         $a1, $s1, $zero
/* 2C1C 8000201C 0C00D008 */  jal        osRecvMesg
/* 2C20 80002020 24060001 */   addiu     $a2, $zero, 0x1
/* 2C24 80002024 8FAA005C */  lw         $t2, 0x5C($sp)
/* 2C28 80002028 854B0000 */  lh         $t3, 0x0($t2)
/* 2C2C 8000202C 568BFFFA */  bnel       $s4, $t3, .L80002018
/* 2C30 80002030 02002025 */   or        $a0, $s0, $zero
/* 2C34 80002034 8EC30000 */  lw         $v1, 0x0($s6)
/* 2C38 80002038 2401FDFF */  addiu      $at, $zero, -0x201
/* 2C3C 8000203C 00002025 */  or         $a0, $zero, $zero
/* 2C40 80002040 306C0200 */  andi       $t4, $v1, 0x200
/* 2C44 80002044 11800009 */  beqz       $t4, .L8000206C
/* 2C48 80002048 00616824 */   and       $t5, $v1, $at
/* 2C4C 8000204C 0C00950F */  jal        func_8002543C
/* 2C50 80002050 AECD0000 */   sw        $t5, 0x0($s6)
/* 2C54 80002054 50400006 */  beql       $v0, $zero, .L80002070
/* 2C58 80002058 8ECE0000 */   lw        $t6, 0x0($s6)
.L8000205C:
/* 2C5C 8000205C 0C00950F */  jal        func_8002543C
/* 2C60 80002060 00002025 */   or        $a0, $zero, $zero
/* 2C64 80002064 1440FFFD */  bnez       $v0, .L8000205C
/* 2C68 80002068 00000000 */   nop
.L8000206C:
/* 2C6C 8000206C 8ECE0000 */  lw         $t6, 0x0($s6)
.L80002070:
/* 2C70 80002070 31CF0400 */  andi       $t7, $t6, 0x400
/* 2C74 80002074 51E00004 */  beql       $t7, $zero, .L80002088
/* 2C78 80002078 8FBF0044 */   lw        $ra, 0x44($sp)
/* 2C7C 8000207C 0C00AD44 */  jal        func_8002B510
/* 2C80 80002080 24040004 */   addiu     $a0, $zero, 0x4
/* 2C84 80002084 8FBF0044 */  lw         $ra, 0x44($sp)
.L80002088:
/* 2C88 80002088 8FB00020 */  lw         $s0, 0x20($sp)
/* 2C8C 8000208C 8FB10024 */  lw         $s1, 0x24($sp)
/* 2C90 80002090 8FB20028 */  lw         $s2, 0x28($sp)
/* 2C94 80002094 8FB3002C */  lw         $s3, 0x2C($sp)
/* 2C98 80002098 8FB40030 */  lw         $s4, 0x30($sp)
/* 2C9C 8000209C 8FB50034 */  lw         $s5, 0x34($sp)
/* 2CA0 800020A0 8FB60038 */  lw         $s6, 0x38($sp)
/* 2CA4 800020A4 8FB7003C */  lw         $s7, 0x3C($sp)
/* 2CA8 800020A8 8FBE0040 */  lw         $fp, 0x40($sp)
/* 2CAC 800020AC 03E00008 */  jr         $ra
/* 2CB0 800020B0 27BD0060 */   addiu     $sp, $sp, 0x60