.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osCreateViManager
/* 35440 80034840 3C0E8007 */  lui        $t6, %hi(D_80070170)
/* 35444 80034844 8DCE0170 */  lw         $t6, %lo(D_80070170)($t6)
/* 35448 80034848 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3544C 8003484C AFBF001C */  sw         $ra, 0x1C($sp)
/* 35450 80034850 15C00059 */  bnez       $t6, .L800349B8
/* 35454 80034854 AFA40030 */   sw        $a0, 0x30($sp)
/* 35458 80034858 0C00F988 */  jal        __osTimerServicesInit
/* 3545C 8003485C 00000000 */   nop
/* 35460 80034860 3C048009 */  lui        $a0, %hi(D_80095190)
/* 35464 80034864 3C058009 */  lui        $a1, %hi(D_800951A8)
/* 35468 80034868 24A551A8 */  addiu      $a1, $a1, %lo(D_800951A8)
/* 3546C 8003486C 24845190 */  addiu      $a0, $a0, %lo(D_80095190)
/* 35470 80034870 0C00CFC4 */  jal        osCreateMesgQueue
/* 35474 80034874 24060005 */   addiu     $a2, $zero, 0x5
/* 35478 80034878 3C018009 */  lui        $at, %hi(D_800951C0)
/* 3547C 8003487C 240F000D */  addiu      $t7, $zero, 0xD
/* 35480 80034880 A42F51C0 */  sh         $t7, %lo(D_800951C0)($at)
/* 35484 80034884 A02051C2 */  sb         $zero, %lo(D_800951C2)($at)
/* 35488 80034888 AC2051C4 */  sw         $zero, %lo(D_800951C4)($at)
/* 3548C 8003488C 3C018009 */  lui        $at, %hi(D_800951D8)
/* 35490 80034890 2418000E */  addiu      $t8, $zero, 0xE
/* 35494 80034894 3C058009 */  lui        $a1, %hi(D_80095190)
/* 35498 80034898 3C068009 */  lui        $a2, %hi(D_800951C0)
/* 3549C 8003489C A43851D8 */  sh         $t8, %lo(D_800951D8)($at)
/* 354A0 800348A0 A02051DA */  sb         $zero, %lo(D_800951DA)($at)
/* 354A4 800348A4 AC2051DC */  sw         $zero, %lo(D_800951DC)($at)
/* 354A8 800348A8 24C651C0 */  addiu      $a2, $a2, %lo(D_800951C0)
/* 354AC 800348AC 24A55190 */  addiu      $a1, $a1, %lo(D_80095190)
/* 354B0 800348B0 0C00CFEC */  jal        osSetEventMesg
/* 354B4 800348B4 24040007 */   addiu     $a0, $zero, 0x7
/* 354B8 800348B8 3C058009 */  lui        $a1, %hi(D_80095190)
/* 354BC 800348BC 3C068009 */  lui        $a2, %hi(D_800951D8)
/* 354C0 800348C0 24C651D8 */  addiu      $a2, $a2, %lo(D_800951D8)
/* 354C4 800348C4 24A55190 */  addiu      $a1, $a1, %lo(D_80095190)
/* 354C8 800348C8 0C00CFEC */  jal        osSetEventMesg
/* 354CC 800348CC 24040003 */   addiu     $a0, $zero, 0x3
/* 354D0 800348D0 2419FFFF */  addiu      $t9, $zero, -0x1
/* 354D4 800348D4 AFB90028 */  sw         $t9, 0x28($sp)
/* 354D8 800348D8 0C00F604 */  jal        osGetThreadPri
/* 354DC 800348DC 00002025 */   or        $a0, $zero, $zero
/* 354E0 800348E0 AFA20024 */  sw         $v0, 0x24($sp)
/* 354E4 800348E4 8FA80024 */  lw         $t0, 0x24($sp)
/* 354E8 800348E8 8FA90030 */  lw         $t1, 0x30($sp)
/* 354EC 800348EC 0109082A */  slt        $at, $t0, $t1
/* 354F0 800348F0 10200005 */  beqz       $at, .L80034908
/* 354F4 800348F4 00000000 */   nop
/* 354F8 800348F8 AFA80028 */  sw         $t0, 0x28($sp)
/* 354FC 800348FC 00002025 */  or         $a0, $zero, $zero
/* 35500 80034900 0C00F60C */  jal        osSetThreadPri
/* 35504 80034904 01202825 */   or        $a1, $t1, $zero
.L80034908:
/* 35508 80034908 0C00F534 */  jal        __osDisableInt
/* 3550C 8003490C 00000000 */   nop
/* 35510 80034910 3C018007 */  lui        $at, %hi(D_80070170)
/* 35514 80034914 3C0C8009 */  lui        $t4, %hi(D_80095190)
/* 35518 80034918 3C0B8009 */  lui        $t3, %hi(D_80093FE0)
/* 3551C 8003491C 258C5190 */  addiu      $t4, $t4, %lo(D_80095190)
/* 35520 80034920 240A0001 */  addiu      $t2, $zero, 0x1
/* 35524 80034924 256B3FE0 */  addiu      $t3, $t3, %lo(D_80093FE0)
/* 35528 80034928 AC2A0170 */  sw         $t2, %lo(D_80070170)($at)
/* 3552C 8003492C AC2B0174 */  sw         $t3, %lo(D_80070174)($at)
/* 35530 80034930 AC2C0178 */  sw         $t4, %lo(D_80070178)($at)
/* 35534 80034934 AC2C017C */  sw         $t4, %lo(D_8007017C)($at)
/* 35538 80034938 3C0D8009 */  lui        $t5, %hi(D_80094190)
/* 3553C 8003493C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 35540 80034940 3C018007 */  lui        $at, %hi(D_80070180)
/* 35544 80034944 25AD4190 */  addiu      $t5, $t5, %lo(D_80094190)
/* 35548 80034948 25AE1000 */  addiu      $t6, $t5, 0x1000
/* 3554C 8003494C 3C068003 */  lui        $a2, %hi(viMgrMain)
/* 35550 80034950 3C078007 */  lui        $a3, %hi(D_80070170)
/* 35554 80034954 AFA2002C */  sw         $v0, 0x2C($sp)
/* 35558 80034958 AC200180 */  sw         $zero, %lo(D_80070180)($at)
/* 3555C 8003495C AC200184 */  sw         $zero, %lo(D_80070184)($at)
/* 35560 80034960 AC200188 */  sw         $zero, %lo(D_80070188)($at)
/* 35564 80034964 24E70170 */  addiu      $a3, $a3, %lo(D_80070170)
/* 35568 80034968 24C649C8 */  addiu      $a2, $a2, %lo(viMgrMain)
/* 3556C 8003496C AFAE0010 */  sw         $t6, 0x10($sp)
/* 35570 80034970 01602025 */  or         $a0, $t3, $zero
/* 35574 80034974 00002825 */  or         $a1, $zero, $zero
/* 35578 80034978 0C00CEB8 */  jal        osCreateThread
/* 3557C 8003497C AFAF0014 */   sw        $t7, 0x14($sp)
/* 35580 80034980 0C00F82C */  jal        __osViInit
/* 35584 80034984 00000000 */   nop
/* 35588 80034988 3C048009 */  lui        $a0, %hi(D_80093FE0)
/* 3558C 8003498C 0C00CF0C */  jal        osStartThread
/* 35590 80034990 24843FE0 */   addiu     $a0, $a0, %lo(D_80093FE0)
/* 35594 80034994 0C00F53C */  jal        __osRestoreInt
/* 35598 80034998 8FA4002C */   lw        $a0, 0x2C($sp)
/* 3559C 8003499C 8FB80028 */  lw         $t8, 0x28($sp)
/* 355A0 800349A0 2401FFFF */  addiu      $at, $zero, -0x1
/* 355A4 800349A4 13010004 */  beq        $t8, $at, .L800349B8
/* 355A8 800349A8 00000000 */   nop
/* 355AC 800349AC 00002025 */  or         $a0, $zero, $zero
/* 355B0 800349B0 0C00F60C */  jal        osSetThreadPri
/* 355B4 800349B4 03002825 */   or        $a1, $t8, $zero
.L800349B8:
/* 355B8 800349B8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 355BC 800349BC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 355C0 800349C0 03E00008 */  jr         $ra
/* 355C4 800349C4 00000000 */   nop

glabel viMgrMain
/* 355C8 800349C8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 355CC 800349CC AFBF001C */  sw         $ra, 0x1C($sp)
/* 355D0 800349D0 AFA40038 */  sw         $a0, 0x38($sp)
/* 355D4 800349D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 355D8 800349D8 AFA0002C */  sw         $zero, 0x2C($sp)
/* 355DC 800349DC 0C00FA88 */  jal        __osViGetCurrentContext
/* 355E0 800349E0 AFA00028 */   sw        $zero, 0x28($sp)
/* 355E4 800349E4 AFA20034 */  sw         $v0, 0x34($sp)
/* 355E8 800349E8 8FAE0034 */  lw         $t6, 0x34($sp)
/* 355EC 800349EC 3C018009 */  lui        $at, %hi(D_800951F0)
/* 355F0 800349F0 95CF0002 */  lhu        $t7, 0x2($t6)
/* 355F4 800349F4 15E00004 */  bnez       $t7, .L80034A08
/* 355F8 800349F8 A42F51F0 */   sh        $t7, %lo(D_800951F0)($at)
/* 355FC 800349FC 24180001 */  addiu      $t8, $zero, 0x1
/* 35600 80034A00 3C018009 */  lui        $at, %hi(D_800951F0)
/* 35604 80034A04 A43851F0 */  sh         $t8, %lo(D_800951F0)($at)
.L80034A08:
/* 35608 80034A08 8FB90038 */  lw         $t9, 0x38($sp)
/* 3560C 80034A0C AFB90030 */  sw         $t9, 0x30($sp)
.L80034A10:
/* 35610 80034A10 8FA80030 */  lw         $t0, 0x30($sp)
/* 35614 80034A14 27A5002C */  addiu      $a1, $sp, 0x2C
/* 35618 80034A18 24060001 */  addiu      $a2, $zero, 0x1
/* 3561C 80034A1C 0C00D008 */  jal        osRecvMesg
/* 35620 80034A20 8D04000C */   lw        $a0, 0xC($t0)
/* 35624 80034A24 8FA9002C */  lw         $t1, 0x2C($sp)
/* 35628 80034A28 2401000D */  addiu      $at, $zero, 0xD
/* 3562C 80034A2C 95300000 */  lhu        $s0, 0x0($t1)
/* 35630 80034A30 12010005 */  beq        $s0, $at, .L80034A48
/* 35634 80034A34 2401000E */   addiu     $at, $zero, 0xE
/* 35638 80034A38 12010047 */  beq        $s0, $at, .L80034B58
/* 3563C 80034A3C 00000000 */   nop
/* 35640 80034A40 1000FFF3 */  b          .L80034A10
/* 35644 80034A44 00000000 */   nop
.L80034A48:
/* 35648 80034A48 0C00FA8C */  jal        __osViSwapContext
/* 3564C 80034A4C 00000000 */   nop
/* 35650 80034A50 3C0A8009 */  lui        $t2, %hi(D_800951F0)
/* 35654 80034A54 954A51F0 */  lhu        $t2, %lo(D_800951F0)($t2)
/* 35658 80034A58 3C018009 */  lui        $at, %hi(D_800951F0)
/* 3565C 80034A5C 254BFFFF */  addiu      $t3, $t2, -0x1
/* 35660 80034A60 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 35664 80034A64 15800010 */  bnez       $t4, .L80034AA8
/* 35668 80034A68 A42B51F0 */   sh        $t3, %lo(D_800951F0)($at)
/* 3566C 80034A6C 0C00FA88 */  jal        __osViGetCurrentContext
/* 35670 80034A70 00000000 */   nop
/* 35674 80034A74 AFA20034 */  sw         $v0, 0x34($sp)
/* 35678 80034A78 8FAD0034 */  lw         $t5, 0x34($sp)
/* 3567C 80034A7C 8DAE0010 */  lw         $t6, 0x10($t5)
/* 35680 80034A80 11C00005 */  beqz       $t6, .L80034A98
/* 35684 80034A84 00000000 */   nop
/* 35688 80034A88 01C02025 */  or         $a0, $t6, $zero
/* 3568C 80034A8C 8DA50014 */  lw         $a1, 0x14($t5)
/* 35690 80034A90 0C00D080 */  jal        osSendMesg
/* 35694 80034A94 00003025 */   or        $a2, $zero, $zero
.L80034A98:
/* 35698 80034A98 8FAF0034 */  lw         $t7, 0x34($sp)
/* 3569C 80034A9C 3C018009 */  lui        $at, %hi(D_800951F0)
/* 356A0 80034AA0 95F80002 */  lhu        $t8, 0x2($t7)
/* 356A4 80034AA4 A43851F0 */  sh         $t8, %lo(D_800951F0)($at)
.L80034AA8:
/* 356A8 80034AA8 3C198009 */  lui        $t9, %hi(D_8009562C)
/* 356AC 80034AAC 8F39562C */  lw         $t9, %lo(D_8009562C)($t9)
/* 356B0 80034AB0 8FA90028 */  lw         $t1, 0x28($sp)
/* 356B4 80034AB4 3C018009 */  lui        $at, %hi(D_8009562C)
/* 356B8 80034AB8 27280001 */  addiu      $t0, $t9, 0x1
/* 356BC 80034ABC 1120000C */  beqz       $t1, .L80034AF0
/* 356C0 80034AC0 AC28562C */   sw        $t0, %lo(D_8009562C)($at)
/* 356C4 80034AC4 0C00FB64 */  jal        osGetCount
/* 356C8 80034AC8 00000000 */   nop
/* 356CC 80034ACC AFA20024 */  sw         $v0, 0x24($sp)
/* 356D0 80034AD0 8FAA0024 */  lw         $t2, 0x24($sp)
/* 356D4 80034AD4 240C0000 */  addiu      $t4, $zero, 0x0
/* 356D8 80034AD8 3C018009 */  lui        $at, %hi(D_80095620)
/* 356DC 80034ADC AC2C5620 */  sw         $t4, %lo(D_80095620)($at)
/* 356E0 80034AE0 3C018009 */  lui        $at, %hi(D_80095624)
/* 356E4 80034AE4 01406825 */  or         $t5, $t2, $zero
/* 356E8 80034AE8 AC2D5624 */  sw         $t5, %lo(D_80095624)($at)
/* 356EC 80034AEC AFA00028 */  sw         $zero, 0x28($sp)
.L80034AF0:
/* 356F0 80034AF0 3C0B8009 */  lui        $t3, %hi(D_80095628)
/* 356F4 80034AF4 8D6B5628 */  lw         $t3, %lo(D_80095628)($t3)
/* 356F8 80034AF8 0C00FB64 */  jal        osGetCount
/* 356FC 80034AFC AFAB0024 */   sw        $t3, 0x24($sp)
/* 35700 80034B00 3C018009 */  lui        $at, %hi(D_80095628)
/* 35704 80034B04 AC225628 */  sw         $v0, %lo(D_80095628)($at)
/* 35708 80034B08 3C0E8009 */  lui        $t6, %hi(D_80095628)
/* 3570C 80034B0C 8DCE5628 */  lw         $t6, %lo(D_80095628)($t6)
/* 35710 80034B10 8FAF0024 */  lw         $t7, 0x24($sp)
/* 35714 80034B14 3C0B8009 */  lui        $t3, %hi(D_80095624)
/* 35718 80034B18 8D6B5624 */  lw         $t3, %lo(D_80095624)($t3)
/* 3571C 80034B1C 01CFC023 */  subu       $t8, $t6, $t7
/* 35720 80034B20 03004825 */  or         $t1, $t8, $zero
/* 35724 80034B24 3C0A8009 */  lui        $t2, %hi(D_80095620)
/* 35728 80034B28 012B6821 */  addu       $t5, $t1, $t3
/* 3572C 80034B2C 8D4A5620 */  lw         $t2, %lo(D_80095620)($t2)
/* 35730 80034B30 24080000 */  addiu      $t0, $zero, 0x0
/* 35734 80034B34 01AB082B */  sltu       $at, $t5, $t3
/* 35738 80034B38 00286021 */  addu       $t4, $at, $t0
/* 3573C 80034B3C 3C018009 */  lui        $at, %hi(D_80095620)
/* 35740 80034B40 018A6021 */  addu       $t4, $t4, $t2
/* 35744 80034B44 AC2C5620 */  sw         $t4, %lo(D_80095620)($at)
/* 35748 80034B48 3C018009 */  lui        $at, %hi(D_80095624)
/* 3574C 80034B4C AFB80024 */  sw         $t8, 0x24($sp)
/* 35750 80034B50 1000FFAF */  b          .L80034A10
/* 35754 80034B54 AC2D5624 */   sw        $t5, %lo(D_80095624)($at)
.L80034B58:
/* 35758 80034B58 0C00F9AB */  jal        __osTimerInterrupt
/* 3575C 80034B5C 00000000 */   nop
/* 35760 80034B60 1000FFAB */  b          .L80034A10
/* 35764 80034B64 00000000 */   nop
/* 35768 80034B68 00000000 */  nop
/* 3576C 80034B6C 00000000 */  nop
/* 35770 80034B70 00000000 */  nop
/* 35774 80034B74 00000000 */  nop
/* 35778 80034B78 00000000 */  nop
/* 3577C 80034B7C 00000000 */  nop
/* 35780 80034B80 8FBF001C */  lw         $ra, 0x1C($sp)
/* 35784 80034B84 8FB00018 */  lw         $s0, 0x18($sp)
/* 35788 80034B88 27BD0038 */  addiu      $sp, $sp, 0x38
/* 3578C 80034B8C 03E00008 */  jr         $ra
/* 35790 80034B90 00000000 */   nop
/* 35794 80034B94 00000000 */  nop
/* 35798 80034B98 00000000 */  nop
/* 3579C 80034B9C 00000000 */  nop