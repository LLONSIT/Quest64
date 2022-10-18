.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80038590
/* 39190 80038590 8C8E0004 */  lw         $t6, 0x4($a0)
/* 39194 80038594 00803025 */  or         $a2, $a0, $zero
/* 39198 80038598 00804025 */  or         $t0, $a0, $zero
/* 3919C 8003859C ACAE0000 */  sw         $t6, 0x0($a1)
/* 391A0 800385A0 8C8F000C */  lw         $t7, 0xC($a0)
/* 391A4 800385A4 00001025 */  or         $v0, $zero, $zero
/* 391A8 800385A8 00A01825 */  or         $v1, $a1, $zero
/* 391AC 800385AC ACAF0004 */  sw         $t7, 0x4($a1)
/* 391B0 800385B0 8C980010 */  lw         $t8, 0x10($a0)
/* 391B4 800385B4 24040010 */  addiu      $a0, $zero, 0x10
/* 391B8 800385B8 00A03825 */  or         $a3, $a1, $zero
/* 391BC 800385BC ACB80008 */  sw         $t8, 0x8($a1)
.L800385C0:
/* 391C0 800385C0 8CD90018 */  lw         $t9, 0x18($a2)
/* 391C4 800385C4 24420002 */  addiu      $v0, $v0, 0x2
/* 391C8 800385C8 24630008 */  addiu      $v1, $v1, 0x8
/* 391CC 800385CC AC790004 */  sw         $t9, 0x4($v1)
/* 391D0 800385D0 8CC90058 */  lw         $t1, 0x58($a2)
/* 391D4 800385D4 24C60008 */  addiu      $a2, $a2, 0x8
/* 391D8 800385D8 24E70002 */  addiu      $a3, $a3, 0x2
/* 391DC 800385DC AC690044 */  sw         $t1, 0x44($v1)
/* 391E0 800385E0 910A0098 */  lbu        $t2, 0x98($t0)
/* 391E4 800385E4 25080002 */  addiu      $t0, $t0, 0x2
/* 391E8 800385E8 A0EA008A */  sb         $t2, 0x8A($a3)
/* 391EC 800385EC 910B00A6 */  lbu        $t3, 0xA6($t0)
/* 391F0 800385F0 A0EB009A */  sb         $t3, 0x9A($a3)
/* 391F4 800385F4 8CCC00B0 */  lw         $t4, 0xB0($a2)
/* 391F8 800385F8 AC6C00A4 */  sw         $t4, 0xA4($v1)
/* 391FC 800385FC 8CCD0014 */  lw         $t5, 0x14($a2)
/* 39200 80038600 AC6D0008 */  sw         $t5, 0x8($v1)
/* 39204 80038604 8CCE0054 */  lw         $t6, 0x54($a2)
/* 39208 80038608 AC6E0048 */  sw         $t6, 0x48($v1)
/* 3920C 8003860C 910F0097 */  lbu        $t7, 0x97($t0)
/* 39210 80038610 A0EF008B */  sb         $t7, 0x8B($a3)
/* 39214 80038614 911800A7 */  lbu        $t8, 0xA7($t0)
/* 39218 80038618 A0F8009B */  sb         $t8, 0x9B($a3)
/* 3921C 8003861C 8CD900B4 */  lw         $t9, 0xB4($a2)
/* 39220 80038620 1444FFE7 */  bne        $v0, $a0, .L800385C0
/* 39224 80038624 AC7900A8 */   sw        $t9, 0xA8($v1)
/* 39228 80038628 03E00008 */  jr         $ra
/* 3922C 8003862C 00000000 */   nop

glabel func_80038630
/* 39230 80038630 8CAE0000 */  lw         $t6, 0x0($a1)
/* 39234 80038634 00801825 */  or         $v1, $a0, $zero
/* 39238 80038638 00803825 */  or         $a3, $a0, $zero
/* 3923C 8003863C AC8E0004 */  sw         $t6, 0x4($a0)
/* 39240 80038640 8CAF0004 */  lw         $t7, 0x4($a1)
/* 39244 80038644 00001025 */  or         $v0, $zero, $zero
/* 39248 80038648 00A03025 */  or         $a2, $a1, $zero
/* 3924C 8003864C AC8F000C */  sw         $t7, 0xC($a0)
/* 39250 80038650 8CB80008 */  lw         $t8, 0x8($a1)
/* 39254 80038654 00A04025 */  or         $t0, $a1, $zero
/* 39258 80038658 AC980010 */  sw         $t8, 0x10($a0)
/* 3925C 8003865C 24040010 */  addiu      $a0, $zero, 0x10
.L80038660:
/* 39260 80038660 8CD9000C */  lw         $t9, 0xC($a2)
/* 39264 80038664 24420002 */  addiu      $v0, $v0, 0x2
/* 39268 80038668 24630008 */  addiu      $v1, $v1, 0x8
/* 3926C 8003866C AC790010 */  sw         $t9, 0x10($v1)
/* 39270 80038670 8CC9004C */  lw         $t1, 0x4C($a2)
/* 39274 80038674 24C60008 */  addiu      $a2, $a2, 0x8
/* 39278 80038678 24E70002 */  addiu      $a3, $a3, 0x2
/* 3927C 8003867C AC690050 */  sw         $t1, 0x50($v1)
/* 39280 80038680 910A008C */  lbu        $t2, 0x8C($t0)
/* 39284 80038684 25080002 */  addiu      $t0, $t0, 0x2
/* 39288 80038688 A0EA0096 */  sb         $t2, 0x96($a3)
/* 3928C 8003868C 910B009A */  lbu        $t3, 0x9A($t0)
/* 39290 80038690 A0EB00A6 */  sb         $t3, 0xA6($a3)
/* 39294 80038694 8CCC00A4 */  lw         $t4, 0xA4($a2)
/* 39298 80038698 AC6C00B0 */  sw         $t4, 0xB0($v1)
/* 3929C 8003869C 8CCD0008 */  lw         $t5, 0x8($a2)
/* 392A0 800386A0 AC6D0014 */  sw         $t5, 0x14($v1)
/* 392A4 800386A4 8CCE0048 */  lw         $t6, 0x48($a2)
/* 392A8 800386A8 AC6E0054 */  sw         $t6, 0x54($v1)
/* 392AC 800386AC 910F008B */  lbu        $t7, 0x8B($t0)
/* 392B0 800386B0 A0EF0097 */  sb         $t7, 0x97($a3)
/* 392B4 800386B4 9118009B */  lbu        $t8, 0x9B($t0)
/* 392B8 800386B8 A0F800A7 */  sb         $t8, 0xA7($a3)
/* 392BC 800386BC 8CD900A8 */  lw         $t9, 0xA8($a2)
/* 392C0 800386C0 1444FFE7 */  bne        $v0, $a0, .L80038660
/* 392C4 800386C4 AC7900B4 */   sw        $t9, 0xB4($v1)
/* 392C8 800386C8 03E00008 */  jr         $ra
/* 392CC 800386CC 00000000 */   nop

glabel __getTrackByte
/* 392D0 800386D0 00851021 */  addu       $v0, $a0, $a1
/* 392D4 800386D4 904E0098 */  lbu        $t6, 0x98($v0)
/* 392D8 800386D8 00057880 */  sll        $t7, $a1, 2
/* 392DC 800386DC 008F3021 */  addu       $a2, $a0, $t7
/* 392E0 800386E0 51C0000D */  beql       $t6, $zero, .L80038718
/* 392E4 800386E4 8CC70018 */   lw        $a3, 0x18($a2)
/* 392E8 800386E8 00057880 */  sll        $t7, $a1, 2
/* 392EC 800386EC 008F3021 */  addu       $a2, $a0, $t7
/* 392F0 800386F0 8CC70058 */  lw         $a3, 0x58($a2)
/* 392F4 800386F4 90E30000 */  lbu        $v1, 0x0($a3)
/* 392F8 800386F8 24F80001 */  addiu      $t8, $a3, 0x1
/* 392FC 800386FC ACD80058 */  sw         $t8, 0x58($a2)
/* 39300 80038700 90590098 */  lbu        $t9, 0x98($v0)
/* 39304 80038704 272EFFFF */  addiu      $t6, $t9, -0x1
/* 39308 80038708 A04E0098 */  sb         $t6, 0x98($v0)
/* 3930C 8003870C 03E00008 */  jr         $ra
/* 39310 80038710 00601025 */   or        $v0, $v1, $zero
/* 39314 80038714 8CC70018 */  lw         $a3, 0x18($a2)
.L80038718:
/* 39318 80038718 240800FE */  addiu      $t0, $zero, 0xFE
/* 3931C 8003871C 90E30000 */  lbu        $v1, 0x0($a3)
/* 39320 80038720 24F80001 */  addiu      $t8, $a3, 0x1
/* 39324 80038724 ACD80018 */  sw         $t8, 0x18($a2)
/* 39328 80038728 15030018 */  bne        $t0, $v1, .L8003878C
/* 3932C 8003872C 00000000 */   nop
/* 39330 80038730 93040000 */  lbu        $a0, 0x0($t8)
/* 39334 80038734 27190001 */  addiu      $t9, $t8, 0x1
/* 39338 80038738 ACD90018 */  sw         $t9, 0x18($a2)
/* 3933C 8003873C 11040013 */  beq        $t0, $a0, .L8003878C
/* 39340 80038740 272E0001 */   addiu     $t6, $t9, 0x1
/* 39344 80038744 93230000 */  lbu        $v1, 0x0($t9)
/* 39348 80038748 ACCE0018 */  sw         $t6, 0x18($a2)
/* 3934C 8003874C 91C50000 */  lbu        $a1, 0x0($t6)
/* 39350 80038750 25CF0001 */  addiu      $t7, $t6, 0x1
/* 39354 80038754 0004CA00 */  sll        $t9, $a0, 8
/* 39358 80038758 ACCF0018 */  sw         $t7, 0x18($a2)
/* 3935C 8003875C 03237021 */  addu       $t6, $t9, $v1
/* 39360 80038760 01EE7823 */  subu       $t7, $t7, $t6
/* 39364 80038764 25F9FFFC */  addiu      $t9, $t7, -0x4
/* 39368 80038768 ACD90058 */  sw         $t9, 0x58($a2)
/* 3936C 8003876C A0450098 */  sb         $a1, 0x98($v0)
/* 39370 80038770 8CC70058 */  lw         $a3, 0x58($a2)
/* 39374 80038774 90E30000 */  lbu        $v1, 0x0($a3)
/* 39378 80038778 24F80001 */  addiu      $t8, $a3, 0x1
/* 3937C 8003877C ACD80058 */  sw         $t8, 0x58($a2)
/* 39380 80038780 904E0098 */  lbu        $t6, 0x98($v0)
/* 39384 80038784 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 39388 80038788 A04F0098 */  sb         $t7, 0x98($v0)
.L8003878C:
/* 3938C 8003878C 03E00008 */  jr         $ra
/* 39390 80038790 00601025 */   or        $v0, $v1, $zero

glabel __readVarLen
/* 39394 80038794 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 39398 80038798 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3939C 8003879C 01402025 */  or         $a0, $t2, $zero
/* 393A0 800387A0 0C00E1B4 */  jal        __getTrackByte
/* 393A4 800387A4 01602825 */   or        $a1, $t3, $zero
/* 393A8 800387A8 304E0080 */  andi       $t6, $v0, 0x80
/* 393AC 800387AC 11C0000A */  beqz       $t6, .L800387D8
/* 393B0 800387B0 00404825 */   or        $t1, $v0, $zero
/* 393B4 800387B4 3049007F */  andi       $t1, $v0, 0x7F
.L800387B8:
/* 393B8 800387B8 01402025 */  or         $a0, $t2, $zero
/* 393BC 800387BC 0C00E1B4 */  jal        __getTrackByte
/* 393C0 800387C0 01602825 */   or        $a1, $t3, $zero
/* 393C4 800387C4 000979C0 */  sll        $t7, $t1, 7
/* 393C8 800387C8 3058007F */  andi       $t8, $v0, 0x7F
/* 393CC 800387CC 30590080 */  andi       $t9, $v0, 0x80
/* 393D0 800387D0 1720FFF9 */  bnez       $t9, .L800387B8
/* 393D4 800387D4 01F84821 */   addu      $t1, $t7, $t8
.L800387D8:
/* 393D8 800387D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 393DC 800387DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 393E0 800387E0 01201025 */  or         $v0, $t1, $zero
/* 393E4 800387E4 03E00008 */  jr         $ra
/* 393E8 800387E8 00000000 */   nop

glabel func_800387EC
/* 393EC 800387EC 03E00008 */  jr         $ra
/* 393F0 800387F0 00000000 */   nop

glabel alCSeqNextEvent
/* 393F4 800387F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 393F8 800387F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 393FC 800387FC 00A08025 */  or         $s0, $a1, $zero
/* 39400 80038800 AFBF001C */  sw         $ra, 0x1C($sp)
/* 39404 80038804 00806025 */  or         $t4, $a0, $zero
/* 39408 80038808 2409FFFF */  addiu      $t1, $zero, -0x1
/* 3940C 8003880C 8C860010 */  lw         $a2, 0x10($a0)
/* 39410 80038810 24050010 */  addiu      $a1, $zero, 0x10
/* 39414 80038814 8FAB0024 */  lw         $t3, 0x24($sp)
/* 39418 80038818 00001025 */  or         $v0, $zero, $zero
/* 3941C 8003881C 8D8E0004 */  lw         $t6, 0x4($t4)
.L80038820:
/* 39420 80038820 004E7806 */  srlv       $t7, $t6, $v0
/* 39424 80038824 31F80001 */  andi       $t8, $t7, 0x1
/* 39428 80038828 53000010 */  beql       $t8, $zero, .L8003886C
/* 3942C 8003882C 24420001 */   addiu     $v0, $v0, 0x1
/* 39430 80038830 8D8E0014 */  lw         $t6, 0x14($t4)
/* 39434 80038834 0002C880 */  sll        $t9, $v0, 2
/* 39438 80038838 01991821 */  addu       $v1, $t4, $t9
/* 3943C 8003883C 51C00005 */  beql       $t6, $zero, .L80038854
/* 39440 80038840 8C6400B8 */   lw        $a0, 0xB8($v1)
/* 39444 80038844 8C6F00B8 */  lw         $t7, 0xB8($v1)
/* 39448 80038848 01E6C023 */  subu       $t8, $t7, $a2
/* 3944C 8003884C AC7800B8 */  sw         $t8, 0xB8($v1)
/* 39450 80038850 8C6400B8 */  lw         $a0, 0xB8($v1)
.L80038854:
/* 39454 80038854 0089082B */  sltu       $at, $a0, $t1
/* 39458 80038858 50200004 */  beql       $at, $zero, .L8003886C
/* 3945C 8003885C 24420001 */   addiu     $v0, $v0, 0x1
/* 39460 80038860 00804825 */  or         $t1, $a0, $zero
/* 39464 80038864 00405825 */  or         $t3, $v0, $zero
/* 39468 80038868 24420001 */  addiu      $v0, $v0, 0x1
.L8003886C:
/* 3946C 8003886C 5445FFEC */  bnel       $v0, $a1, .L80038820
/* 39470 80038870 8D8E0004 */   lw        $t6, 0x4($t4)
/* 39474 80038874 01802025 */  or         $a0, $t4, $zero
/* 39478 80038878 0C00E1B4 */  jal        __getTrackByte
/* 3947C 8003887C 01602825 */   or        $a1, $t3, $zero
/* 39480 80038880 240100FF */  addiu      $at, $zero, 0xFF
/* 39484 80038884 304A00FF */  andi       $t2, $v0, 0xFF
/* 39488 80038888 1441005A */  bne        $v0, $at, .L800389F4
/* 3948C 8003888C 00401825 */   or        $v1, $v0, $zero
/* 39490 80038890 01802025 */  or         $a0, $t4, $zero
/* 39494 80038894 0C00E1B4 */  jal        __getTrackByte
/* 39498 80038898 01602825 */   or        $a1, $t3, $zero
/* 3949C 8003889C 24010051 */  addiu      $at, $zero, 0x51
/* 394A0 800388A0 304600FF */  andi       $a2, $v0, 0xFF
/* 394A4 800388A4 14410014 */  bne        $v0, $at, .L800388F8
/* 394A8 800388A8 00401825 */   or        $v1, $v0, $zero
/* 394AC 800388AC 24190003 */  addiu      $t9, $zero, 0x3
/* 394B0 800388B0 A6190000 */  sh         $t9, 0x0($s0)
/* 394B4 800388B4 A20A0008 */  sb         $t2, 0x8($s0)
/* 394B8 800388B8 A2060009 */  sb         $a2, 0x9($s0)
/* 394BC 800388BC 01802025 */  or         $a0, $t4, $zero
/* 394C0 800388C0 0C00E1B4 */  jal        __getTrackByte
/* 394C4 800388C4 01602825 */   or        $a1, $t3, $zero
/* 394C8 800388C8 A202000B */  sb         $v0, 0xB($s0)
/* 394CC 800388CC 01802025 */  or         $a0, $t4, $zero
/* 394D0 800388D0 0C00E1B4 */  jal        __getTrackByte
/* 394D4 800388D4 01602825 */   or        $a1, $t3, $zero
/* 394D8 800388D8 A202000C */  sb         $v0, 0xC($s0)
/* 394DC 800388DC 01802025 */  or         $a0, $t4, $zero
/* 394E0 800388E0 0C00E1B4 */  jal        __getTrackByte
/* 394E4 800388E4 01602825 */   or        $a1, $t3, $zero
/* 394E8 800388E8 A202000D */  sb         $v0, 0xD($s0)
/* 394EC 800388EC 018B7021 */  addu       $t6, $t4, $t3
/* 394F0 800388F0 10000067 */  b          .L80038A90
/* 394F4 800388F4 A1C000A8 */   sb        $zero, 0xA8($t6)
.L800388F8:
/* 394F8 800388F8 2401002F */  addiu      $at, $zero, 0x2F
/* 394FC 800388FC 5461000E */  bnel       $v1, $at, .L80038938
/* 39500 80038900 2401002E */   addiu     $at, $zero, 0x2E
/* 39504 80038904 8D8F0004 */  lw         $t7, 0x4($t4)
/* 39508 80038908 24180001 */  addiu      $t8, $zero, 0x1
/* 3950C 8003890C 0178C804 */  sllv       $t9, $t8, $t3
/* 39510 80038910 01F97026 */  xor        $t6, $t7, $t9
/* 39514 80038914 11C00004 */  beqz       $t6, .L80038928
/* 39518 80038918 AD8E0004 */   sw        $t6, 0x4($t4)
/* 3951C 8003891C 240F0012 */  addiu      $t7, $zero, 0x12
/* 39520 80038920 1000005B */  b          .L80038A90
/* 39524 80038924 A60F0000 */   sh        $t7, 0x0($s0)
.L80038928:
/* 39528 80038928 24190004 */  addiu      $t9, $zero, 0x4
/* 3952C 8003892C 10000058 */  b          .L80038A90
/* 39530 80038930 A6190000 */   sh        $t9, 0x0($s0)
/* 39534 80038934 2401002E */  addiu      $at, $zero, 0x2E
.L80038938:
/* 39538 80038938 1461000B */  bne        $v1, $at, .L80038968
/* 3953C 8003893C 01802025 */   or        $a0, $t4, $zero
/* 39540 80038940 0C00E1B4 */  jal        __getTrackByte
/* 39544 80038944 01602825 */   or        $a1, $t3, $zero
/* 39548 80038948 01802025 */  or         $a0, $t4, $zero
/* 3954C 8003894C 0C00E1B4 */  jal        __getTrackByte
/* 39550 80038950 01602825 */   or        $a1, $t3, $zero
/* 39554 80038954 018B7021 */  addu       $t6, $t4, $t3
/* 39558 80038958 A1C000A8 */  sb         $zero, 0xA8($t6)
/* 3955C 8003895C 24180013 */  addiu      $t8, $zero, 0x13
/* 39560 80038960 1000004B */  b          .L80038A90
/* 39564 80038964 A6180000 */   sh        $t8, 0x0($s0)
.L80038968:
/* 39568 80038968 2401002D */  addiu      $at, $zero, 0x2D
/* 3956C 8003896C 14610048 */  bne        $v1, $at, .L80038A90
/* 39570 80038970 000B7880 */   sll       $t7, $t3, 2
/* 39574 80038974 018F6821 */  addu       $t5, $t4, $t7
/* 39578 80038978 8DA20018 */  lw         $v0, 0x18($t5)
/* 3957C 8003897C 240100FF */  addiu      $at, $zero, 0xFF
/* 39580 80038980 90440001 */  lbu        $a0, 0x1($v0)
/* 39584 80038984 24420001 */  addiu      $v0, $v0, 0x1
/* 39588 80038988 24590005 */  addiu      $t9, $v0, 0x5
/* 3958C 8003898C 14800004 */  bnez       $a0, .L800389A0
/* 39590 80038990 9045FFFF */   lbu       $a1, -0x1($v0)
/* 39594 80038994 A0450000 */  sb         $a1, 0x0($v0)
/* 39598 80038998 10000011 */  b          .L800389E0
/* 3959C 8003899C ADB90018 */   sw        $t9, 0x18($t5)
.L800389A0:
/* 395A0 800389A0 10810002 */  beq        $a0, $at, .L800389AC
/* 395A4 800389A4 248EFFFF */   addiu     $t6, $a0, -0x1
/* 395A8 800389A8 A04E0000 */  sb         $t6, 0x0($v0)
.L800389AC:
/* 395AC 800389AC 904F0002 */  lbu        $t7, 0x2($v0)
/* 395B0 800389B0 90430001 */  lbu        $v1, 0x1($v0)
/* 395B4 800389B4 904E0003 */  lbu        $t6, 0x3($v0)
/* 395B8 800389B8 000FCC00 */  sll        $t9, $t7, 16
/* 395BC 800389BC 0003C600 */  sll        $t8, $v1, 24
/* 395C0 800389C0 904F0004 */  lbu        $t7, 0x4($v0)
/* 395C4 800389C4 03191821 */  addu       $v1, $t8, $t9
/* 395C8 800389C8 000EC200 */  sll        $t8, $t6, 8
/* 395CC 800389CC 00781821 */  addu       $v1, $v1, $t8
/* 395D0 800389D0 24420005 */  addiu      $v0, $v0, 0x5
/* 395D4 800389D4 006F1821 */  addu       $v1, $v1, $t7
/* 395D8 800389D8 0043C823 */  subu       $t9, $v0, $v1
/* 395DC 800389DC ADB90018 */  sw         $t9, 0x18($t5)
.L800389E0:
/* 395E0 800389E0 018B7021 */  addu       $t6, $t4, $t3
/* 395E4 800389E4 A1C000A8 */  sb         $zero, 0xA8($t6)
/* 395E8 800389E8 24180014 */  addiu      $t8, $zero, 0x14
/* 395EC 800389EC 10000028 */  b          .L80038A90
/* 395F0 800389F0 A6180000 */   sh        $t8, 0x0($s0)
.L800389F4:
/* 395F4 800389F4 240F0001 */  addiu      $t7, $zero, 0x1
/* 395F8 800389F8 30790080 */  andi       $t9, $v1, 0x80
/* 395FC 800389FC 13200009 */  beqz       $t9, .L80038A24
/* 39600 80038A00 A60F0000 */   sh        $t7, 0x0($s0)
/* 39604 80038A04 A20A0008 */  sb         $t2, 0x8($s0)
/* 39608 80038A08 01802025 */  or         $a0, $t4, $zero
/* 3960C 80038A0C 0C00E1B4 */  jal        __getTrackByte
/* 39610 80038A10 01602825 */   or        $a1, $t3, $zero
/* 39614 80038A14 A2020009 */  sb         $v0, 0x9($s0)
/* 39618 80038A18 018B7021 */  addu       $t6, $t4, $t3
/* 3961C 80038A1C 10000005 */  b          .L80038A34
/* 39620 80038A20 A1CA00A8 */   sb        $t2, 0xA8($t6)
.L80038A24:
/* 39624 80038A24 018BC021 */  addu       $t8, $t4, $t3
/* 39628 80038A28 930F00A8 */  lbu        $t7, 0xA8($t8)
/* 3962C 80038A2C A2020009 */  sb         $v0, 0x9($s0)
/* 39630 80038A30 A20F0008 */  sb         $t7, 0x8($s0)
.L80038A34:
/* 39634 80038A34 92020008 */  lbu        $v0, 0x8($s0)
/* 39638 80038A38 240100C0 */  addiu      $at, $zero, 0xC0
/* 3963C 80038A3C 305900F0 */  andi       $t9, $v0, 0xF0
/* 39640 80038A40 13210012 */  beq        $t9, $at, .L80038A8C
/* 39644 80038A44 240100D0 */   addiu     $at, $zero, 0xD0
/* 39648 80038A48 13210010 */  beq        $t9, $at, .L80038A8C
/* 3964C 80038A4C 01802025 */   or        $a0, $t4, $zero
/* 39650 80038A50 0C00E1B4 */  jal        __getTrackByte
/* 39654 80038A54 01602825 */   or        $a1, $t3, $zero
/* 39658 80038A58 920E0008 */  lbu        $t6, 0x8($s0)
/* 3965C 80038A5C 24010090 */  addiu      $at, $zero, 0x90
/* 39660 80038A60 A202000A */  sb         $v0, 0xA($s0)
/* 39664 80038A64 31D800F0 */  andi       $t8, $t6, 0xF0
/* 39668 80038A68 17010009 */  bne        $t8, $at, .L80038A90
/* 3966C 80038A6C 01805025 */   or        $t2, $t4, $zero
/* 39670 80038A70 AFA90028 */  sw         $t1, 0x28($sp)
/* 39674 80038A74 0C00E1E5 */  jal        __readVarLen
/* 39678 80038A78 AFAB0024 */   sw        $t3, 0x24($sp)
/* 3967C 80038A7C 8FA90028 */  lw         $t1, 0x28($sp)
/* 39680 80038A80 8FAB0024 */  lw         $t3, 0x24($sp)
/* 39684 80038A84 10000002 */  b          .L80038A90
/* 39688 80038A88 AE02000C */   sw        $v0, 0xC($s0)
.L80038A8C:
/* 3968C 80038A8C A200000A */  sb         $zero, 0xA($s0)
.L80038A90:
/* 39690 80038A90 AE090004 */  sw         $t1, 0x4($s0)
/* 39694 80038A94 8D8F000C */  lw         $t7, 0xC($t4)
/* 39698 80038A98 AD890010 */  sw         $t1, 0x10($t4)
/* 3969C 80038A9C 24010012 */  addiu      $at, $zero, 0x12
/* 396A0 80038AA0 01E9C821 */  addu       $t9, $t7, $t1
/* 396A4 80038AA4 AD99000C */  sw         $t9, 0xC($t4)
/* 396A8 80038AA8 860E0000 */  lh         $t6, 0x0($s0)
/* 396AC 80038AAC 01805025 */  or         $t2, $t4, $zero
/* 396B0 80038AB0 000BC080 */  sll        $t8, $t3, 2
/* 396B4 80038AB4 51C10007 */  beql       $t6, $at, .L80038AD4
/* 396B8 80038AB8 240E0001 */   addiu     $t6, $zero, 0x1
/* 396BC 80038ABC 0C00E1E5 */  jal        __readVarLen
/* 396C0 80038AC0 01986821 */   addu      $t5, $t4, $t8
/* 396C4 80038AC4 8DAF00B8 */  lw         $t7, 0xB8($t5)
/* 396C8 80038AC8 01E2C821 */  addu       $t9, $t7, $v0
/* 396CC 80038ACC ADB900B8 */  sw         $t9, 0xB8($t5)
/* 396D0 80038AD0 240E0001 */  addiu      $t6, $zero, 0x1
.L80038AD4:
/* 396D4 80038AD4 AD8E0014 */  sw         $t6, 0x14($t4)
/* 396D8 80038AD8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 396DC 80038ADC 8FB00018 */  lw         $s0, 0x18($sp)
/* 396E0 80038AE0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 396E4 80038AE4 03E00008 */  jr         $ra
/* 396E8 80038AE8 00000000 */   nop

glabel alCSeqNew
/* 396EC 80038AEC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 396F0 80038AF0 AFB40028 */  sw         $s4, 0x28($sp)
/* 396F4 80038AF4 AFB30024 */  sw         $s3, 0x24($sp)
/* 396F8 80038AF8 AFB20020 */  sw         $s2, 0x20($sp)
/* 396FC 80038AFC AFB1001C */  sw         $s1, 0x1C($sp)
/* 39700 80038B00 AFB00018 */  sw         $s0, 0x18($sp)
/* 39704 80038B04 AFBF002C */  sw         $ra, 0x2C($sp)
/* 39708 80038B08 240E0001 */  addiu      $t6, $zero, 0x1
/* 3970C 80038B0C 00808025 */  or         $s0, $a0, $zero
/* 39710 80038B10 00A0A025 */  or         $s4, $a1, $zero
/* 39714 80038B14 AC850000 */  sw         $a1, 0x0($a0)
/* 39718 80038B18 AC800004 */  sw         $zero, 0x4($a0)
/* 3971C 80038B1C AC800010 */  sw         $zero, 0x10($a0)
/* 39720 80038B20 AC80000C */  sw         $zero, 0xC($a0)
/* 39724 80038B24 AC8E0014 */  sw         $t6, 0x14($a0)
/* 39728 80038B28 00808825 */  or         $s1, $a0, $zero
/* 3972C 80038B2C 00009025 */  or         $s2, $zero, $zero
/* 39730 80038B30 24130010 */  addiu      $s3, $zero, 0x10
/* 39734 80038B34 00006825 */  or         $t5, $zero, $zero
/* 39738 80038B38 00806025 */  or         $t4, $a0, $zero
.L80038B3C:
/* 3973C 80038B3C A22000A8 */  sb         $zero, 0xA8($s1)
/* 39740 80038B40 AD800058 */  sw         $zero, 0x58($t4)
/* 39744 80038B44 A2200098 */  sb         $zero, 0x98($s1)
/* 39748 80038B48 8E0F0000 */  lw         $t7, 0x0($s0)
/* 3974C 80038B4C 240E0001 */  addiu      $t6, $zero, 0x1
/* 39750 80038B50 01F2C021 */  addu       $t8, $t7, $s2
/* 39754 80038B54 8F020000 */  lw         $v0, 0x0($t8)
/* 39758 80038B58 01AE7804 */  sllv       $t7, $t6, $t5
/* 3975C 80038B5C 1040000A */  beqz       $v0, .L80038B88
/* 39760 80038B60 02827021 */   addu      $t6, $s4, $v0
/* 39764 80038B64 8E190004 */  lw         $t9, 0x4($s0)
/* 39768 80038B68 02005025 */  or         $t2, $s0, $zero
/* 3976C 80038B6C 01A05825 */  or         $t3, $t5, $zero
/* 39770 80038B70 032FC025 */  or         $t8, $t9, $t7
/* 39774 80038B74 AE180004 */  sw         $t8, 0x4($s0)
/* 39778 80038B78 0C00E1E5 */  jal        __readVarLen
/* 3977C 80038B7C AD8E0018 */   sw        $t6, 0x18($t4)
/* 39780 80038B80 10000002 */  b          .L80038B8C
/* 39784 80038B84 AD8200B8 */   sw        $v0, 0xB8($t4)
.L80038B88:
/* 39788 80038B88 AD800018 */  sw         $zero, 0x18($t4)
.L80038B8C:
/* 3978C 80038B8C 25AD0001 */  addiu      $t5, $t5, 0x1
/* 39790 80038B90 26310001 */  addiu      $s1, $s1, 0x1
/* 39794 80038B94 26520004 */  addiu      $s2, $s2, 0x4
/* 39798 80038B98 15B3FFE8 */  bne        $t5, $s3, .L80038B3C
/* 3979C 80038B9C 258C0004 */   addiu     $t4, $t4, 0x4
/* 397A0 80038BA0 8E190000 */  lw         $t9, 0x0($s0)
/* 397A4 80038BA4 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 397A8 80038BA8 44812800 */  mtc1       $at, $f5
/* 397AC 80038BAC 8F2F0040 */  lw         $t7, 0x40($t9)
/* 397B0 80038BB0 44802000 */  mtc1       $zero, $f4
/* 397B4 80038BB4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 397B8 80038BB8 448F3000 */  mtc1       $t7, $f6
/* 397BC 80038BBC 05E10004 */  bgez       $t7, .L80038BD0
/* 397C0 80038BC0 46803220 */   cvt.s.w   $f8, $f6
/* 397C4 80038BC4 44815000 */  mtc1       $at, $f10
/* 397C8 80038BC8 00000000 */  nop
/* 397CC 80038BCC 460A4200 */  add.s      $f8, $f8, $f10
.L80038BD0:
/* 397D0 80038BD0 460041A1 */  cvt.d.s    $f6, $f8
/* 397D4 80038BD4 46262283 */  div.d      $f10, $f4, $f6
/* 397D8 80038BD8 46205220 */  cvt.s.d    $f8, $f10
/* 397DC 80038BDC E6080008 */  swc1       $f8, 0x8($s0)
/* 397E0 80038BE0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 397E4 80038BE4 8FB40028 */  lw         $s4, 0x28($sp)
/* 397E8 80038BE8 8FB30024 */  lw         $s3, 0x24($sp)
/* 397EC 80038BEC 8FB20020 */  lw         $s2, 0x20($sp)
/* 397F0 80038BF0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 397F4 80038BF4 8FB00018 */  lw         $s0, 0x18($sp)
/* 397F8 80038BF8 03E00008 */  jr         $ra
/* 397FC 80038BFC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel alCSeqNewMarker
/* 39800 80038C00 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 39804 80038C04 AFB30020 */  sw         $s3, 0x20($sp)
/* 39808 80038C08 AFB10018 */  sw         $s1, 0x18($sp)
/* 3980C 80038C0C 00A08825 */  or         $s1, $a1, $zero
/* 39810 80038C10 27B30048 */  addiu      $s3, $sp, 0x48
/* 39814 80038C14 AFBF002C */  sw         $ra, 0x2C($sp)
/* 39818 80038C18 AFB50028 */  sw         $s5, 0x28($sp)
/* 3981C 80038C1C AFB40024 */  sw         $s4, 0x24($sp)
/* 39820 80038C20 AFB2001C */  sw         $s2, 0x1C($sp)
/* 39824 80038C24 AFB00014 */  sw         $s0, 0x14($sp)
/* 39828 80038C28 00803825 */  or         $a3, $a0, $zero
/* 3982C 80038C2C 00C09025 */  or         $s2, $a2, $zero
/* 39830 80038C30 8CE50000 */  lw         $a1, 0x0($a3)
/* 39834 80038C34 0C00E2BB */  jal        alCSeqNew
/* 39838 80038C38 02602025 */   or        $a0, $s3, $zero
/* 3983C 80038C3C 24150004 */  addiu      $s5, $zero, 0x4
/* 39840 80038C40 27B40140 */  addiu      $s4, $sp, 0x140
/* 39844 80038C44 27B00058 */  addiu      $s0, $sp, 0x58
/* 39848 80038C48 8FAE004C */  lw         $t6, 0x4C($sp)
.L80038C4C:
/* 3984C 80038C4C 27A40048 */  addiu      $a0, $sp, 0x48
/* 39850 80038C50 00801825 */  or         $v1, $a0, $zero
/* 39854 80038C54 AE2E0000 */  sw         $t6, 0x0($s1)
/* 39858 80038C58 8FAF0054 */  lw         $t7, 0x54($sp)
/* 3985C 80038C5C 02201025 */  or         $v0, $s1, $zero
/* 39860 80038C60 02202825 */  or         $a1, $s1, $zero
/* 39864 80038C64 AE2F0004 */  sw         $t7, 0x4($s1)
/* 39868 80038C68 8FB80058 */  lw         $t8, 0x58($sp)
/* 3986C 80038C6C AE380008 */  sw         $t8, 0x8($s1)
.L80038C70:
/* 39870 80038C70 8C680018 */  lw         $t0, 0x18($v1)
/* 39874 80038C74 24840004 */  addiu      $a0, $a0, 0x4
/* 39878 80038C78 24420010 */  addiu      $v0, $v0, 0x10
/* 3987C 80038C7C AC48FFFC */  sw         $t0, -0x4($v0)
/* 39880 80038C80 8C690058 */  lw         $t1, 0x58($v1)
/* 39884 80038C84 24630010 */  addiu      $v1, $v1, 0x10
/* 39888 80038C88 24A50004 */  addiu      $a1, $a1, 0x4
/* 3988C 80038C8C AC49003C */  sw         $t1, 0x3C($v0)
/* 39890 80038C90 908A0094 */  lbu        $t2, 0x94($a0)
/* 39894 80038C94 A0AA0088 */  sb         $t2, 0x88($a1)
/* 39898 80038C98 908B00A4 */  lbu        $t3, 0xA4($a0)
/* 3989C 80038C9C A0AB0098 */  sb         $t3, 0x98($a1)
/* 398A0 80038CA0 8C6C00A8 */  lw         $t4, 0xA8($v1)
/* 398A4 80038CA4 AC4C009C */  sw         $t4, 0x9C($v0)
/* 398A8 80038CA8 8C6D000C */  lw         $t5, 0xC($v1)
/* 398AC 80038CAC AC4D0000 */  sw         $t5, 0x0($v0)
/* 398B0 80038CB0 8C6E004C */  lw         $t6, 0x4C($v1)
/* 398B4 80038CB4 AC4E0040 */  sw         $t6, 0x40($v0)
/* 398B8 80038CB8 908F0095 */  lbu        $t7, 0x95($a0)
/* 398BC 80038CBC A0AF0089 */  sb         $t7, 0x89($a1)
/* 398C0 80038CC0 909800A5 */  lbu        $t8, 0xA5($a0)
/* 398C4 80038CC4 A0B80099 */  sb         $t8, 0x99($a1)
/* 398C8 80038CC8 8C7900AC */  lw         $t9, 0xAC($v1)
/* 398CC 80038CCC AC5900A0 */  sw         $t9, 0xA0($v0)
/* 398D0 80038CD0 8C680010 */  lw         $t0, 0x10($v1)
/* 398D4 80038CD4 AC480004 */  sw         $t0, 0x4($v0)
/* 398D8 80038CD8 8C690050 */  lw         $t1, 0x50($v1)
/* 398DC 80038CDC AC490044 */  sw         $t1, 0x44($v0)
/* 398E0 80038CE0 908A0096 */  lbu        $t2, 0x96($a0)
/* 398E4 80038CE4 A0AA008A */  sb         $t2, 0x8A($a1)
/* 398E8 80038CE8 908B00A6 */  lbu        $t3, 0xA6($a0)
/* 398EC 80038CEC A0AB009A */  sb         $t3, 0x9A($a1)
/* 398F0 80038CF0 8C6C00B0 */  lw         $t4, 0xB0($v1)
/* 398F4 80038CF4 AC4C00A4 */  sw         $t4, 0xA4($v0)
/* 398F8 80038CF8 8C6D0014 */  lw         $t5, 0x14($v1)
/* 398FC 80038CFC AC4D0008 */  sw         $t5, 0x8($v0)
/* 39900 80038D00 8C6E0054 */  lw         $t6, 0x54($v1)
/* 39904 80038D04 AC4E0048 */  sw         $t6, 0x48($v0)
/* 39908 80038D08 908F0097 */  lbu        $t7, 0x97($a0)
/* 3990C 80038D0C A0AF008B */  sb         $t7, 0x8B($a1)
/* 39910 80038D10 909800A7 */  lbu        $t8, 0xA7($a0)
/* 39914 80038D14 A0B8009B */  sb         $t8, 0x9B($a1)
/* 39918 80038D18 8C7900B4 */  lw         $t9, 0xB4($v1)
/* 3991C 80038D1C 1490FFD4 */  bne        $a0, $s0, .L80038C70
/* 39920 80038D20 AC5900A8 */   sw        $t9, 0xA8($v0)
/* 39924 80038D24 02602025 */  or         $a0, $s3, $zero
/* 39928 80038D28 0C00E1FD */  jal        alCSeqNextEvent
/* 3992C 80038D2C 02802825 */   or        $a1, $s4, $zero
/* 39930 80038D30 87A80140 */  lh         $t0, 0x140($sp)
/* 39934 80038D34 8FA90054 */  lw         $t1, 0x54($sp)
/* 39938 80038D38 11150003 */  beq        $t0, $s5, .L80038D48
/* 3993C 80038D3C 0132082B */   sltu      $at, $t1, $s2
/* 39940 80038D40 5420FFC2 */  bnel       $at, $zero, .L80038C4C
/* 39944 80038D44 8FAE004C */   lw        $t6, 0x4C($sp)
.L80038D48:
/* 39948 80038D48 8FBF002C */  lw         $ra, 0x2C($sp)
/* 3994C 80038D4C 8FB00014 */  lw         $s0, 0x14($sp)
/* 39950 80038D50 8FB10018 */  lw         $s1, 0x18($sp)
/* 39954 80038D54 8FB2001C */  lw         $s2, 0x1C($sp)
/* 39958 80038D58 8FB30020 */  lw         $s3, 0x20($sp)
/* 3995C 80038D5C 8FB40024 */  lw         $s4, 0x24($sp)
/* 39960 80038D60 8FB50028 */  lw         $s5, 0x28($sp)
/* 39964 80038D64 03E00008 */  jr         $ra
/* 39968 80038D68 27BD0150 */   addiu     $sp, $sp, 0x150

glabel func_80038D6C
/* 3996C 80038D6C 03E00008 */  jr         $ra
/* 39970 80038D70 8C82000C */   lw        $v0, 0xC($a0)

glabel func_80038D74
/* 39974 80038D74 8C8E0000 */  lw         $t6, 0x0($a0)
/* 39978 80038D78 44856000 */  mtc1       $a1, $f12
/* 3997C 80038D7C 3C018007 */  lui        $at, %hi(D_80071E50)
/* 39980 80038D80 8DCF0040 */  lw         $t7, 0x40($t6)
/* 39984 80038D84 D4261E50 */  ldc1       $f6, %lo(D_80071E50)($at)
/* 39988 80038D88 46006121 */  cvt.d.s    $f4, $f12
/* 3998C 80038D8C 448F5000 */  mtc1       $t7, $f10
/* 39990 80038D90 46262202 */  mul.d      $f8, $f4, $f6
/* 39994 80038D94 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 39998 80038D98 05E10005 */  bgez       $t7, .L80038DB0
/* 3999C 80038D9C 46805421 */   cvt.d.w   $f16, $f10
/* 399A0 80038DA0 44819800 */  mtc1       $at, $f19
/* 399A4 80038DA4 44809000 */  mtc1       $zero, $f18
/* 399A8 80038DA8 00000000 */  nop
/* 399AC 80038DAC 46328400 */  add.d      $f16, $f16, $f18
.L80038DB0:
/* 399B0 80038DB0 44863000 */  mtc1       $a2, $f6
/* 399B4 80038DB4 46304102 */  mul.d      $f4, $f8, $f16
/* 399B8 80038DB8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 399BC 80038DBC 04C10005 */  bgez       $a2, .L80038DD4
/* 399C0 80038DC0 468032A1 */   cvt.d.w   $f10, $f6
/* 399C4 80038DC4 44819800 */  mtc1       $at, $f19
/* 399C8 80038DC8 44809000 */  mtc1       $zero, $f18
/* 399CC 80038DCC 00000000 */  nop
/* 399D0 80038DD0 46325280 */  add.d      $f10, $f10, $f18
.L80038DD4:
/* 399D4 80038DD4 462A2203 */  div.d      $f8, $f4, $f10
/* 399D8 80038DD8 24020001 */  addiu      $v0, $zero, 0x1
/* 399DC 80038DDC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 399E0 80038DE0 4458F800 */  cfc1       $t8, $31
/* 399E4 80038DE4 44C2F800 */  ctc1       $v0, $31
/* 399E8 80038DE8 00000000 */  nop
/* 399EC 80038DEC 46204424 */  cvt.w.d    $f16, $f8
/* 399F0 80038DF0 4442F800 */  cfc1       $v0, $31
/* 399F4 80038DF4 00000000 */  nop
/* 399F8 80038DF8 30420078 */  andi       $v0, $v0, 0x78
/* 399FC 80038DFC 50400016 */  beql       $v0, $zero, .L80038E58
/* 39A00 80038E00 44028000 */   mfc1      $v0, $f16
/* 39A04 80038E04 44818800 */  mtc1       $at, $f17
/* 39A08 80038E08 44808000 */  mtc1       $zero, $f16
/* 39A0C 80038E0C 24020001 */  addiu      $v0, $zero, 0x1
/* 39A10 80038E10 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 39A14 80038E14 46304401 */  sub.d      $f16, $f8, $f16
/* 39A18 80038E18 44C2F800 */  ctc1       $v0, $31
/* 39A1C 80038E1C 00000000 */  nop
/* 39A20 80038E20 46208424 */  cvt.w.d    $f16, $f16
/* 39A24 80038E24 4442F800 */  cfc1       $v0, $31
/* 39A28 80038E28 00000000 */  nop
/* 39A2C 80038E2C 30420078 */  andi       $v0, $v0, 0x78
/* 39A30 80038E30 54400006 */  bnel       $v0, $zero, .L80038E4C
/* 39A34 80038E34 44D8F800 */   ctc1      $t8, $31
/* 39A38 80038E38 44028000 */  mfc1       $v0, $f16
/* 39A3C 80038E3C 44D8F800 */  ctc1       $t8, $31
/* 39A40 80038E40 03E00008 */  jr         $ra
/* 39A44 80038E44 00411025 */   or        $v0, $v0, $at
/* 39A48 80038E48 44D8F800 */  ctc1       $t8, $31
.L80038E4C:
/* 39A4C 80038E4C 03E00008 */  jr         $ra
/* 39A50 80038E50 2402FFFF */   addiu     $v0, $zero, -0x1
/* 39A54 80038E54 44028000 */  mfc1       $v0, $f16
.L80038E58:
/* 39A58 80038E58 00000000 */  nop
/* 39A5C 80038E5C 0442FFFB */  bltzl      $v0, .L80038E4C
/* 39A60 80038E60 44D8F800 */   ctc1      $t8, $31
/* 39A64 80038E64 44D8F800 */  ctc1       $t8, $31
/* 39A68 80038E68 03E00008 */  jr         $ra
/* 39A6C 80038E6C 00000000 */   nop

glabel func_80038E70
/* 39A70 80038E70 44852000 */  mtc1       $a1, $f4
/* 39A74 80038E74 44864000 */  mtc1       $a2, $f8
/* 39A78 80038E78 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 39A7C 80038E7C 468021A0 */  cvt.s.w    $f6, $f4
/* 39A80 80038E80 04C10004 */  bgez       $a2, .L80038E94
/* 39A84 80038E84 468042A0 */   cvt.s.w   $f10, $f8
/* 39A88 80038E88 44818000 */  mtc1       $at, $f16
/* 39A8C 80038E8C 00000000 */  nop
/* 39A90 80038E90 46105280 */  add.s      $f10, $f10, $f16
.L80038E94:
/* 39A94 80038E94 8C8E0000 */  lw         $t6, 0x0($a0)
/* 39A98 80038E98 460A3482 */  mul.s      $f18, $f6, $f10
/* 39A9C 80038E9C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 39AA0 80038EA0 8DCF0040 */  lw         $t7, 0x40($t6)
/* 39AA4 80038EA4 448F4000 */  mtc1       $t7, $f8
/* 39AA8 80038EA8 46009121 */  cvt.d.s    $f4, $f18
/* 39AAC 80038EAC 05E10004 */  bgez       $t7, .L80038EC0
/* 39AB0 80038EB0 46804420 */   cvt.s.w   $f16, $f8
/* 39AB4 80038EB4 44813000 */  mtc1       $at, $f6
/* 39AB8 80038EB8 00000000 */  nop
/* 39ABC 80038EBC 46068400 */  add.s      $f16, $f16, $f6
.L80038EC0:
/* 39AC0 80038EC0 3C018007 */  lui        $at, %hi(D_80071E58)
/* 39AC4 80038EC4 D4321E58 */  ldc1       $f18, %lo(D_80071E58)($at)
/* 39AC8 80038EC8 460082A1 */  cvt.d.s    $f10, $f16
/* 39ACC 80038ECC 46325202 */  mul.d      $f8, $f10, $f18
/* 39AD0 80038ED0 46282183 */  div.d      $f6, $f4, $f8
/* 39AD4 80038ED4 03E00008 */  jr         $ra
/* 39AD8 80038ED8 46203020 */   cvt.s.d   $f0, $f6

glabel __alCSeqNextDelta
/* 39ADC 80038EDC 8C8E0004 */  lw         $t6, 0x4($a0)
/* 39AE0 80038EE0 00A04825 */  or         $t1, $a1, $zero
/* 39AE4 80038EE4 2403FFFF */  addiu      $v1, $zero, -0x1
/* 39AE8 80038EE8 15C00003 */  bnez       $t6, .L80038EF8
/* 39AEC 80038EEC 8C820010 */   lw        $v0, 0x10($a0)
/* 39AF0 80038EF0 03E00008 */  jr         $ra
/* 39AF4 80038EF4 00001025 */   or        $v0, $zero, $zero
.L80038EF8:
/* 39AF8 80038EF8 00003025 */  or         $a2, $zero, $zero
/* 39AFC 80038EFC 240A0010 */  addiu      $t2, $zero, 0x10
/* 39B00 80038F00 8C850004 */  lw         $a1, 0x4($a0)
.L80038F04:
/* 39B04 80038F04 24CE0001 */  addiu      $t6, $a2, 0x1
/* 39B08 80038F08 00C57806 */  srlv       $t7, $a1, $a2
/* 39B0C 80038F0C 31F80001 */  andi       $t8, $t7, 0x1
/* 39B10 80038F10 53000010 */  beql       $t8, $zero, .L80038F54
/* 39B14 80038F14 01C57806 */   srlv      $t7, $a1, $t6
/* 39B18 80038F18 8C8B0014 */  lw         $t3, 0x14($a0)
/* 39B1C 80038F1C 0006C880 */  sll        $t9, $a2, 2
/* 39B20 80038F20 00993821 */  addu       $a3, $a0, $t9
/* 39B24 80038F24 51600006 */  beql       $t3, $zero, .L80038F40
/* 39B28 80038F28 8CE800B8 */   lw        $t0, 0xB8($a3)
/* 39B2C 80038F2C 8CEC00B8 */  lw         $t4, 0xB8($a3)
/* 39B30 80038F30 01826823 */  subu       $t5, $t4, $v0
/* 39B34 80038F34 ACED00B8 */  sw         $t5, 0xB8($a3)
/* 39B38 80038F38 8C850004 */  lw         $a1, 0x4($a0)
/* 39B3C 80038F3C 8CE800B8 */  lw         $t0, 0xB8($a3)
.L80038F40:
/* 39B40 80038F40 0103082B */  sltu       $at, $t0, $v1
/* 39B44 80038F44 50200003 */  beql       $at, $zero, .L80038F54
/* 39B48 80038F48 01C57806 */   srlv      $t7, $a1, $t6
/* 39B4C 80038F4C 01001825 */  or         $v1, $t0, $zero
/* 39B50 80038F50 01C57806 */  srlv       $t7, $a1, $t6
.L80038F54:
/* 39B54 80038F54 31F80001 */  andi       $t8, $t7, 0x1
/* 39B58 80038F58 1300000F */  beqz       $t8, .L80038F98
/* 39B5C 80038F5C 24CE0002 */   addiu     $t6, $a2, 0x2
/* 39B60 80038F60 8C8B0014 */  lw         $t3, 0x14($a0)
/* 39B64 80038F64 0006C880 */  sll        $t9, $a2, 2
/* 39B68 80038F68 00993821 */  addu       $a3, $a0, $t9
/* 39B6C 80038F6C 51600006 */  beql       $t3, $zero, .L80038F88
/* 39B70 80038F70 8CE800BC */   lw        $t0, 0xBC($a3)
/* 39B74 80038F74 8CEC00BC */  lw         $t4, 0xBC($a3)
/* 39B78 80038F78 01826823 */  subu       $t5, $t4, $v0
/* 39B7C 80038F7C ACED00BC */  sw         $t5, 0xBC($a3)
/* 39B80 80038F80 8C850004 */  lw         $a1, 0x4($a0)
/* 39B84 80038F84 8CE800BC */  lw         $t0, 0xBC($a3)
.L80038F88:
/* 39B88 80038F88 0103082B */  sltu       $at, $t0, $v1
/* 39B8C 80038F8C 50200003 */  beql       $at, $zero, .L80038F9C
/* 39B90 80038F90 01C57806 */   srlv      $t7, $a1, $t6
/* 39B94 80038F94 01001825 */  or         $v1, $t0, $zero
.L80038F98:
/* 39B98 80038F98 01C57806 */  srlv       $t7, $a1, $t6
.L80038F9C:
/* 39B9C 80038F9C 31F80001 */  andi       $t8, $t7, 0x1
/* 39BA0 80038FA0 1300000F */  beqz       $t8, .L80038FE0
/* 39BA4 80038FA4 24CE0003 */   addiu     $t6, $a2, 0x3
/* 39BA8 80038FA8 8C8B0014 */  lw         $t3, 0x14($a0)
/* 39BAC 80038FAC 0006C880 */  sll        $t9, $a2, 2
/* 39BB0 80038FB0 00993821 */  addu       $a3, $a0, $t9
/* 39BB4 80038FB4 51600006 */  beql       $t3, $zero, .L80038FD0
/* 39BB8 80038FB8 8CE800C0 */   lw        $t0, 0xC0($a3)
/* 39BBC 80038FBC 8CEC00C0 */  lw         $t4, 0xC0($a3)
/* 39BC0 80038FC0 01826823 */  subu       $t5, $t4, $v0
/* 39BC4 80038FC4 ACED00C0 */  sw         $t5, 0xC0($a3)
/* 39BC8 80038FC8 8C850004 */  lw         $a1, 0x4($a0)
/* 39BCC 80038FCC 8CE800C0 */  lw         $t0, 0xC0($a3)
.L80038FD0:
/* 39BD0 80038FD0 0103082B */  sltu       $at, $t0, $v1
/* 39BD4 80038FD4 50200003 */  beql       $at, $zero, .L80038FE4
/* 39BD8 80038FD8 01C57806 */   srlv      $t7, $a1, $t6
/* 39BDC 80038FDC 01001825 */  or         $v1, $t0, $zero
.L80038FE0:
/* 39BE0 80038FE0 01C57806 */  srlv       $t7, $a1, $t6
.L80038FE4:
/* 39BE4 80038FE4 31F80001 */  andi       $t8, $t7, 0x1
/* 39BE8 80038FE8 5300000F */  beql       $t8, $zero, .L80039028
/* 39BEC 80038FEC 24C60004 */   addiu     $a2, $a2, 0x4
/* 39BF0 80038FF0 8C8B0014 */  lw         $t3, 0x14($a0)
/* 39BF4 80038FF4 0006C880 */  sll        $t9, $a2, 2
/* 39BF8 80038FF8 00993821 */  addu       $a3, $a0, $t9
/* 39BFC 80038FFC 51600005 */  beql       $t3, $zero, .L80039014
/* 39C00 80039000 8CE500C4 */   lw        $a1, 0xC4($a3)
/* 39C04 80039004 8CEC00C4 */  lw         $t4, 0xC4($a3)
/* 39C08 80039008 01826823 */  subu       $t5, $t4, $v0
/* 39C0C 8003900C ACED00C4 */  sw         $t5, 0xC4($a3)
/* 39C10 80039010 8CE500C4 */  lw         $a1, 0xC4($a3)
.L80039014:
/* 39C14 80039014 00A3082B */  sltu       $at, $a1, $v1
/* 39C18 80039018 50200003 */  beql       $at, $zero, .L80039028
/* 39C1C 8003901C 24C60004 */   addiu     $a2, $a2, 0x4
/* 39C20 80039020 00A01825 */  or         $v1, $a1, $zero
/* 39C24 80039024 24C60004 */  addiu      $a2, $a2, 0x4
.L80039028:
/* 39C28 80039028 54CAFFB6 */  bnel       $a2, $t2, .L80038F04
/* 39C2C 8003902C 8C850004 */   lw        $a1, 0x4($a0)
/* 39C30 80039030 AC800014 */  sw         $zero, 0x14($a0)
/* 39C34 80039034 AD230000 */  sw         $v1, 0x0($t1)
/* 39C38 80039038 24020001 */  addiu      $v0, $zero, 0x1
/* 39C3C 8003903C 03E00008 */  jr         $ra
/* 39C40 80039040 00000000 */   nop
/* 39C44 80039044 00000000 */  nop
/* 39C48 80039048 00000000 */  nop
/* 39C4C 8003904C 00000000 */  nop
