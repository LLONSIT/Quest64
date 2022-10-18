.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osTimerServicesInit
/* 3F220 8003E620 3C018009 */  lui        $at, %hi(D_80095624)
/* 3F224 8003E624 240E0000 */  addiu      $t6, $zero, 0x0
/* 3F228 8003E628 240F0000 */  addiu      $t7, $zero, 0x0
/* 3F22C 8003E62C AC2F5624 */  sw         $t7, %lo(D_80095624)($at)
/* 3F230 8003E630 AC2E5620 */  sw         $t6, %lo(D_80095620)($at)
/* 3F234 8003E634 3C018009 */  lui        $at, %hi(D_80095628)
/* 3F238 8003E638 3C188007 */  lui        $t8, %hi(D_80070A90)
/* 3F23C 8003E63C 8F180A90 */  lw         $t8, %lo(D_80070A90)($t8)
/* 3F240 8003E640 AC205628 */  sw         $zero, %lo(D_80095628)($at)
/* 3F244 8003E644 3C018009 */  lui        $at, %hi(D_8009562C)
/* 3F248 8003E648 AC20562C */  sw         $zero, %lo(D_8009562C)($at)
/* 3F24C 8003E64C 3C198007 */  lui        $t9, %hi(D_80070A90)
/* 3F250 8003E650 AF180004 */  sw         $t8, 0x4($t8)
/* 3F254 8003E654 8F390A90 */  lw         $t9, %lo(D_80070A90)($t9)
/* 3F258 8003E658 3C098007 */  lui        $t1, %hi(D_80070A90)
/* 3F25C 8003E65C 240A0000 */  addiu      $t2, $zero, 0x0
/* 3F260 8003E660 8F280004 */  lw         $t0, 0x4($t9)
/* 3F264 8003E664 240B0000 */  addiu      $t3, $zero, 0x0
/* 3F268 8003E668 3C0C8007 */  lui        $t4, %hi(D_80070A90)
/* 3F26C 8003E66C AF280000 */  sw         $t0, 0x0($t9)
/* 3F270 8003E670 8D290A90 */  lw         $t1, %lo(D_80070A90)($t1)
/* 3F274 8003E674 3C0D8007 */  lui        $t5, %hi(D_80070A90)
/* 3F278 8003E678 3C188007 */  lui        $t8, %hi(D_80070A90)
/* 3F27C 8003E67C AD2A0010 */  sw         $t2, 0x10($t1)
/* 3F280 8003E680 AD2B0014 */  sw         $t3, 0x14($t1)
/* 3F284 8003E684 8D8C0A90 */  lw         $t4, %lo(D_80070A90)($t4)
/* 3F288 8003E688 8D8E0010 */  lw         $t6, 0x10($t4)
/* 3F28C 8003E68C 8D8F0014 */  lw         $t7, 0x14($t4)
/* 3F290 8003E690 AD8E0008 */  sw         $t6, 0x8($t4)
/* 3F294 8003E694 AD8F000C */  sw         $t7, 0xC($t4)
/* 3F298 8003E698 8DAD0A90 */  lw         $t5, %lo(D_80070A90)($t5)
/* 3F29C 8003E69C ADA00018 */  sw         $zero, 0x18($t5)
/* 3F2A0 8003E6A0 8F180A90 */  lw         $t8, %lo(D_80070A90)($t8)
/* 3F2A4 8003E6A4 03E00008 */  jr         $ra
/* 3F2A8 8003E6A8 AF00001C */   sw        $zero, 0x1C($t8)

glabel __osTimerInterrupt
/* 3F2AC 8003E6AC 3C0E8007 */  lui        $t6, %hi(D_80070A90)
/* 3F2B0 8003E6B0 8DCE0A90 */  lw         $t6, %lo(D_80070A90)($t6)
/* 3F2B4 8003E6B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F2B8 8003E6B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F2BC 8003E6BC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 3F2C0 8003E6C0 11EE0054 */  beq        $t7, $t6, .L8003E814
/* 3F2C4 8003E6C4 00000000 */   nop
.L8003E6C8:
/* 3F2C8 8003E6C8 3C188007 */  lui        $t8, %hi(D_80070A90)
/* 3F2CC 8003E6CC 8F180A90 */  lw         $t8, %lo(D_80070A90)($t8)
/* 3F2D0 8003E6D0 8F190000 */  lw         $t9, 0x0($t8)
/* 3F2D4 8003E6D4 17380006 */  bne        $t9, $t8, .L8003E6F0
/* 3F2D8 8003E6D8 AFB90024 */   sw        $t9, 0x24($sp)
/* 3F2DC 8003E6DC 0C011F34 */  jal        __osSetCompare
/* 3F2E0 8003E6E0 00002025 */   or        $a0, $zero, $zero
/* 3F2E4 8003E6E4 3C018009 */  lui        $at, %hi(D_80095630)
/* 3F2E8 8003E6E8 1000004A */  b          .L8003E814
/* 3F2EC 8003E6EC AC205630 */   sw        $zero, %lo(D_80095630)($at)
.L8003E6F0:
/* 3F2F0 8003E6F0 0C00FB64 */  jal        osGetCount
/* 3F2F4 8003E6F4 00000000 */   nop
/* 3F2F8 8003E6F8 AFA20020 */  sw         $v0, 0x20($sp)
/* 3F2FC 8003E6FC 3C098009 */  lui        $t1, %hi(D_80095630)
/* 3F300 8003E700 8D295630 */  lw         $t1, %lo(D_80095630)($t1)
/* 3F304 8003E704 8FA80020 */  lw         $t0, 0x20($sp)
/* 3F308 8003E708 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3F30C 8003E70C 3C018009 */  lui        $at, %hi(D_80095630)
/* 3F310 8003E710 01095023 */  subu       $t2, $t0, $t1
/* 3F314 8003E714 AFAA001C */  sw         $t2, 0x1C($sp)
/* 3F318 8003E718 AC285630 */  sw         $t0, %lo(D_80095630)($at)
/* 3F31C 8003E71C 8DEE0010 */  lw         $t6, 0x10($t7)
/* 3F320 8003E720 8FAB001C */  lw         $t3, 0x1C($sp)
/* 3F324 8003E724 240C0000 */  addiu      $t4, $zero, 0x0
/* 3F328 8003E728 01E0C825 */  or         $t9, $t7, $zero
/* 3F32C 8003E72C 01CC082B */  sltu       $at, $t6, $t4
/* 3F330 8003E730 8DEF0014 */  lw         $t7, 0x14($t7)
/* 3F334 8003E734 14200016 */  bnez       $at, .L8003E790
/* 3F338 8003E738 01606825 */   or        $t5, $t3, $zero
/* 3F33C 8003E73C 018E082B */  sltu       $at, $t4, $t6
/* 3F340 8003E740 14200003 */  bnez       $at, .L8003E750
/* 3F344 8003E744 01AF082B */   sltu      $at, $t5, $t7
/* 3F348 8003E748 10200011 */  beqz       $at, .L8003E790
/* 3F34C 8003E74C 00000000 */   nop
.L8003E750:
/* 3F350 8003E750 27380010 */  addiu      $t8, $t9, 0x10
/* 3F354 8003E754 AFB80018 */  sw         $t8, 0x18($sp)
/* 3F358 8003E758 8F2B0014 */  lw         $t3, 0x14($t9)
/* 3F35C 8003E75C 8F2A0010 */  lw         $t2, 0x10($t9)
/* 3F360 8003E760 016D082B */  sltu       $at, $t3, $t5
/* 3F364 8003E764 014C4023 */  subu       $t0, $t2, $t4
/* 3F368 8003E768 01014023 */  subu       $t0, $t0, $at
/* 3F36C 8003E76C 016D4823 */  subu       $t1, $t3, $t5
/* 3F370 8003E770 AF290014 */  sw         $t1, 0x14($t9)
/* 3F374 8003E774 AF280010 */  sw         $t0, 0x10($t9)
/* 3F378 8003E778 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3F37C 8003E77C 8DC40010 */  lw         $a0, 0x10($t6)
/* 3F380 8003E780 0C00FA09 */  jal        __osSetTimerIntr
/* 3F384 8003E784 8DC50014 */   lw        $a1, 0x14($t6)
/* 3F388 8003E788 10000022 */  b          .L8003E814
/* 3F38C 8003E78C 00000000 */   nop
.L8003E790:
/* 3F390 8003E790 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3F394 8003E794 8DF80000 */  lw         $t8, 0x0($t7)
/* 3F398 8003E798 8DEA0004 */  lw         $t2, 0x4($t7)
/* 3F39C 8003E79C AD580000 */  sw         $t8, 0x0($t2)
/* 3F3A0 8003E7A0 8FAB0024 */  lw         $t3, 0x24($sp)
/* 3F3A4 8003E7A4 8D6C0004 */  lw         $t4, 0x4($t3)
/* 3F3A8 8003E7A8 8D6D0000 */  lw         $t5, 0x0($t3)
/* 3F3AC 8003E7AC ADAC0004 */  sw         $t4, 0x4($t5)
/* 3F3B0 8003E7B0 8FA80024 */  lw         $t0, 0x24($sp)
/* 3F3B4 8003E7B4 AD000000 */  sw         $zero, 0x0($t0)
/* 3F3B8 8003E7B8 8FA90024 */  lw         $t1, 0x24($sp)
/* 3F3BC 8003E7BC AD200004 */  sw         $zero, 0x4($t1)
/* 3F3C0 8003E7C0 8FB90024 */  lw         $t9, 0x24($sp)
/* 3F3C4 8003E7C4 8F2E0018 */  lw         $t6, 0x18($t9)
/* 3F3C8 8003E7C8 11C00005 */  beqz       $t6, .L8003E7E0
/* 3F3CC 8003E7CC 00000000 */   nop
/* 3F3D0 8003E7D0 01C02025 */  or         $a0, $t6, $zero
/* 3F3D4 8003E7D4 8F25001C */  lw         $a1, 0x1C($t9)
/* 3F3D8 8003E7D8 0C00D080 */  jal        osSendMesg
/* 3F3DC 8003E7DC 00003025 */   or        $a2, $zero, $zero
.L8003E7E0:
/* 3F3E0 8003E7E0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3F3E4 8003E7E4 8DF80008 */  lw         $t8, 0x8($t7)
/* 3F3E8 8003E7E8 8DF9000C */  lw         $t9, 0xC($t7)
/* 3F3EC 8003E7EC 17000003 */  bnez       $t8, .L8003E7FC
/* 3F3F0 8003E7F0 00000000 */   nop
/* 3F3F4 8003E7F4 1320FFB4 */  beqz       $t9, .L8003E6C8
/* 3F3F8 8003E7F8 00000000 */   nop
.L8003E7FC:
/* 3F3FC 8003E7FC ADF80010 */  sw         $t8, 0x10($t7)
/* 3F400 8003E800 ADF90014 */  sw         $t9, 0x14($t7)
/* 3F404 8003E804 0C00FA26 */  jal        __osInsertTimer
/* 3F408 8003E808 8FA40024 */   lw        $a0, 0x24($sp)
/* 3F40C 8003E80C 1000FFAE */  b          .L8003E6C8
/* 3F410 8003E810 00000000 */   nop
.L8003E814:
/* 3F414 8003E814 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F418 8003E818 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3F41C 8003E81C 03E00008 */  jr         $ra
/* 3F420 8003E820 00000000 */   nop

glabel __osSetTimerIntr
/* 3F424 8003E824 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F428 8003E828 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F42C 8003E82C AFA40028 */  sw         $a0, 0x28($sp)
/* 3F430 8003E830 0C00F534 */  jal        __osDisableInt
/* 3F434 8003E834 AFA5002C */   sw        $a1, 0x2C($sp)
/* 3F438 8003E838 0C00FB64 */  jal        osGetCount
/* 3F43C 8003E83C AFA2001C */   sw        $v0, 0x1C($sp)
/* 3F440 8003E840 3C018009 */  lui        $at, %hi(D_80095630)
/* 3F444 8003E844 AC225630 */  sw         $v0, %lo(D_80095630)($at)
/* 3F448 8003E848 3C0E8009 */  lui        $t6, %hi(D_80095630)
/* 3F44C 8003E84C 8DCE5630 */  lw         $t6, %lo(D_80095630)($t6)
/* 3F450 8003E850 8FA9002C */  lw         $t1, 0x2C($sp)
/* 3F454 8003E854 8FA80028 */  lw         $t0, 0x28($sp)
/* 3F458 8003E858 01C0C825 */  or         $t9, $t6, $zero
/* 3F45C 8003E85C 03295821 */  addu       $t3, $t9, $t1
/* 3F460 8003E860 24180000 */  addiu      $t8, $zero, 0x0
/* 3F464 8003E864 0169082B */  sltu       $at, $t3, $t1
/* 3F468 8003E868 00385021 */  addu       $t2, $at, $t8
/* 3F46C 8003E86C 01485021 */  addu       $t2, $t2, $t0
/* 3F470 8003E870 AFAA0020 */  sw         $t2, 0x20($sp)
/* 3F474 8003E874 AFAB0024 */  sw         $t3, 0x24($sp)
/* 3F478 8003E878 0C011F34 */  jal        __osSetCompare
/* 3F47C 8003E87C 01602025 */   or        $a0, $t3, $zero
/* 3F480 8003E880 0C00F53C */  jal        __osRestoreInt
/* 3F484 8003E884 8FA4001C */   lw        $a0, 0x1C($sp)
/* 3F488 8003E888 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F48C 8003E88C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3F490 8003E890 03E00008 */  jr         $ra
/* 3F494 8003E894 00000000 */   nop

glabel __osInsertTimer
/* 3F498 8003E898 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3F49C 8003E89C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F4A0 8003E8A0 0C00F534 */  jal        __osDisableInt
/* 3F4A4 8003E8A4 AFA40038 */   sw        $a0, 0x38($sp)
/* 3F4A8 8003E8A8 3C0E8007 */  lui        $t6, %hi(D_80070A90)
/* 3F4AC 8003E8AC 8DCE0A90 */  lw         $t6, %lo(D_80070A90)($t6)
/* 3F4B0 8003E8B0 AFA20024 */  sw         $v0, 0x24($sp)
/* 3F4B4 8003E8B4 8FB80038 */  lw         $t8, 0x38($sp)
/* 3F4B8 8003E8B8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 3F4BC 8003E8BC AFAF0034 */  sw         $t7, 0x34($sp)
/* 3F4C0 8003E8C0 8F090014 */  lw         $t1, 0x14($t8)
/* 3F4C4 8003E8C4 8F080010 */  lw         $t0, 0x10($t8)
/* 3F4C8 8003E8C8 AFA9002C */  sw         $t1, 0x2C($sp)
/* 3F4CC 8003E8CC 11EE0029 */  beq        $t7, $t6, .L8003E974
/* 3F4D0 8003E8D0 AFA80028 */   sw        $t0, 0x28($sp)
/* 3F4D4 8003E8D4 8DEA0010 */  lw         $t2, 0x10($t7)
/* 3F4D8 8003E8D8 8DEB0014 */  lw         $t3, 0x14($t7)
/* 3F4DC 8003E8DC 010A082B */  sltu       $at, $t0, $t2
/* 3F4E0 8003E8E0 14200024 */  bnez       $at, .L8003E974
/* 3F4E4 8003E8E4 0148082B */   sltu      $at, $t2, $t0
/* 3F4E8 8003E8E8 14200003 */  bnez       $at, .L8003E8F8
/* 3F4EC 8003E8EC 0169082B */   sltu      $at, $t3, $t1
/* 3F4F0 8003E8F0 10200020 */  beqz       $at, .L8003E974
/* 3F4F4 8003E8F4 00000000 */   nop
.L8003E8F8:
/* 3F4F8 8003E8F8 27B90028 */  addiu      $t9, $sp, 0x28
/* 3F4FC 8003E8FC 8FB80034 */  lw         $t8, 0x34($sp)
/* 3F500 8003E900 AFB90020 */  sw         $t9, 0x20($sp)
/* 3F504 8003E904 8F2D0004 */  lw         $t5, 0x4($t9)
/* 3F508 8003E908 8F2C0000 */  lw         $t4, 0x0($t9)
/* 3F50C 8003E90C 8F0F0014 */  lw         $t7, 0x14($t8)
/* 3F510 8003E910 8F0E0010 */  lw         $t6, 0x10($t8)
/* 3F514 8003E914 3C188007 */  lui        $t8, %hi(D_80070A90)
/* 3F518 8003E918 01AF082B */  sltu       $at, $t5, $t7
/* 3F51C 8003E91C 018E4023 */  subu       $t0, $t4, $t6
/* 3F520 8003E920 01014023 */  subu       $t0, $t0, $at
/* 3F524 8003E924 01AF4823 */  subu       $t1, $t5, $t7
/* 3F528 8003E928 AF290004 */  sw         $t1, 0x4($t9)
/* 3F52C 8003E92C AF280000 */  sw         $t0, 0x0($t9)
/* 3F530 8003E930 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3F534 8003E934 8F180A90 */  lw         $t8, %lo(D_80070A90)($t8)
/* 3F538 8003E938 8D4B0000 */  lw         $t3, 0x0($t2)
/* 3F53C 8003E93C 1178000D */  beq        $t3, $t8, .L8003E974
/* 3F540 8003E940 AFAB0034 */   sw        $t3, 0x34($sp)
/* 3F544 8003E944 8FAC0028 */  lw         $t4, 0x28($sp)
/* 3F548 8003E948 8D6E0010 */  lw         $t6, 0x10($t3)
/* 3F54C 8003E94C 8FAD002C */  lw         $t5, 0x2C($sp)
/* 3F550 8003E950 8D6F0014 */  lw         $t7, 0x14($t3)
/* 3F554 8003E954 01CC082B */  sltu       $at, $t6, $t4
/* 3F558 8003E958 1420FFE7 */  bnez       $at, .L8003E8F8
/* 3F55C 8003E95C 00000000 */   nop
/* 3F560 8003E960 018E082B */  sltu       $at, $t4, $t6
/* 3F564 8003E964 14200003 */  bnez       $at, .L8003E974
/* 3F568 8003E968 01ED082B */   sltu      $at, $t7, $t5
/* 3F56C 8003E96C 1420FFE2 */  bnez       $at, .L8003E8F8
/* 3F570 8003E970 00000000 */   nop
.L8003E974:
/* 3F574 8003E974 8FB90038 */  lw         $t9, 0x38($sp)
/* 3F578 8003E978 8FA80028 */  lw         $t0, 0x28($sp)
/* 3F57C 8003E97C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 3F580 8003E980 3C188007 */  lui        $t8, %hi(D_80070A90)
/* 3F584 8003E984 AF280010 */  sw         $t0, 0x10($t9)
/* 3F588 8003E988 AF290014 */  sw         $t1, 0x14($t9)
/* 3F58C 8003E98C 8F180A90 */  lw         $t8, %lo(D_80070A90)($t8)
/* 3F590 8003E990 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3F594 8003E994 1158000D */  beq        $t2, $t8, .L8003E9CC
/* 3F598 8003E998 00000000 */   nop
/* 3F59C 8003E99C 254B0010 */  addiu      $t3, $t2, 0x10
/* 3F5A0 8003E9A0 AFAB001C */  sw         $t3, 0x1C($sp)
/* 3F5A4 8003E9A4 8D4D0014 */  lw         $t5, 0x14($t2)
/* 3F5A8 8003E9A8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 3F5AC 8003E9AC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3F5B0 8003E9B0 8FAF002C */  lw         $t7, 0x2C($sp)
/* 3F5B4 8003E9B4 018E4023 */  subu       $t0, $t4, $t6
/* 3F5B8 8003E9B8 01AF082B */  sltu       $at, $t5, $t7
/* 3F5BC 8003E9BC 01014023 */  subu       $t0, $t0, $at
/* 3F5C0 8003E9C0 01AF4823 */  subu       $t1, $t5, $t7
/* 3F5C4 8003E9C4 AD490014 */  sw         $t1, 0x14($t2)
/* 3F5C8 8003E9C8 AD480010 */  sw         $t0, 0x10($t2)
.L8003E9CC:
/* 3F5CC 8003E9CC 8FB90034 */  lw         $t9, 0x34($sp)
/* 3F5D0 8003E9D0 8FB80038 */  lw         $t8, 0x38($sp)
/* 3F5D4 8003E9D4 AF190000 */  sw         $t9, 0x0($t8)
/* 3F5D8 8003E9D8 8FAB0034 */  lw         $t3, 0x34($sp)
/* 3F5DC 8003E9DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 3F5E0 8003E9E0 8D6C0004 */  lw         $t4, 0x4($t3)
/* 3F5E4 8003E9E4 ADAC0004 */  sw         $t4, 0x4($t5)
/* 3F5E8 8003E9E8 8FAF0034 */  lw         $t7, 0x34($sp)
/* 3F5EC 8003E9EC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 3F5F0 8003E9F0 8DE80004 */  lw         $t0, 0x4($t7)
/* 3F5F4 8003E9F4 AD0E0000 */  sw         $t6, 0x0($t0)
/* 3F5F8 8003E9F8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3F5FC 8003E9FC 8FA90038 */  lw         $t1, 0x38($sp)
/* 3F600 8003EA00 AD490004 */  sw         $t1, 0x4($t2)
/* 3F604 8003EA04 0C00F53C */  jal        __osRestoreInt
/* 3F608 8003EA08 8FA40024 */   lw        $a0, 0x24($sp)
/* 3F60C 8003EA0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F610 8003EA10 8FA20028 */  lw         $v0, 0x28($sp)
/* 3F614 8003EA14 8FA3002C */  lw         $v1, 0x2C($sp)
/* 3F618 8003EA18 03E00008 */  jr         $ra
/* 3F61C 8003EA1C 27BD0038 */   addiu     $sp, $sp, 0x38
