glabel func_80024330
/* 24F30 80024330 AFA60008 */  sw         $a2, 0x8($sp)
/* 24F34 80024334 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 24F38 80024338 01C03025 */  or         $a2, $t6, $zero
/* 24F3C 8002433C 00803825 */  or         $a3, $a0, $zero
/* 24F40 80024340 AFA50004 */  sw         $a1, 0x4($sp)
/* 24F44 80024344 30CF0002 */  andi       $t7, $a2, 0x2
/* 24F48 80024348 11E00005 */  beqz       $t7, .L80024360
/* 24F4C 8002434C 00C01025 */   or        $v0, $a2, $zero
/* 24F50 80024350 24032710 */  addiu      $v1, $zero, 0x2710
/* 24F54 80024354 24040004 */  addiu      $a0, $zero, 0x4
/* 24F58 80024358 10000020 */  b          .L800243DC
/* 24F5C 8002435C 240A000A */   addiu     $t2, $zero, 0xA
.L80024360:
/* 24F60 80024360 30580004 */  andi       $t8, $v0, 0x4
/* 24F64 80024364 13000005 */  beqz       $t8, .L8002437C
/* 24F68 80024368 00002025 */   or        $a0, $zero, $zero
/* 24F6C 8002436C 2403000A */  addiu      $v1, $zero, 0xA
/* 24F70 80024370 24040001 */  addiu      $a0, $zero, 0x1
/* 24F74 80024374 10000019 */  b          .L800243DC
/* 24F78 80024378 240A000A */   addiu     $t2, $zero, 0xA
.L8002437C:
/* 24F7C 8002437C 28E1000A */  slti       $at, $a3, 0xA
/* 24F80 80024380 14200008 */  bnez       $at, .L800243A4
/* 24F84 80024384 2403000A */   addiu     $v1, $zero, 0xA
/* 24F88 80024388 240A000A */  addiu      $t2, $zero, 0xA
.L8002438C:
/* 24F8C 8002438C 006A0019 */  multu      $v1, $t2
/* 24F90 80024390 24840001 */  addiu      $a0, $a0, 0x1
/* 24F94 80024394 00001812 */  mflo       $v1
/* 24F98 80024398 00E3082A */  slt        $at, $a3, $v1
/* 24F9C 8002439C 1020FFFB */  beqz       $at, .L8002438C
/* 24FA0 800243A0 00000000 */   nop
.L800243A4:
/* 24FA4 800243A4 240A000A */  addiu      $t2, $zero, 0xA
/* 24FA8 800243A8 006A001A */  div        $zero, $v1, $t2
/* 24FAC 800243AC 15400002 */  bnez       $t2, .L800243B8
/* 24FB0 800243B0 00000000 */   nop
/* 24FB4 800243B4 0007000D */  break      7
.L800243B8:
/* 24FB8 800243B8 2401FFFF */  addiu      $at, $zero, -0x1
/* 24FBC 800243BC 15410004 */  bne        $t2, $at, .L800243D0
/* 24FC0 800243C0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 24FC4 800243C4 14610002 */  bne        $v1, $at, .L800243D0
/* 24FC8 800243C8 00000000 */   nop
/* 24FCC 800243CC 0006000D */  break      6
.L800243D0:
/* 24FD0 800243D0 00001812 */  mflo       $v1
/* 24FD4 800243D4 00000000 */  nop
/* 24FD8 800243D8 00000000 */  nop
.L800243DC:
/* 24FDC 800243DC 8FA50004 */  lw         $a1, 0x4($sp)
/* 24FE0 800243E0 10800090 */  beqz       $a0, .L80024624
/* 24FE4 800243E4 00803025 */   or        $a2, $a0, $zero
/* 24FE8 800243E8 30890003 */  andi       $t1, $a0, 0x3
/* 24FEC 800243EC 00094823 */  negu       $t1, $t1
/* 24FF0 800243F0 11200020 */  beqz       $t1, .L80024474
/* 24FF4 800243F4 01204025 */   or        $t0, $t1, $zero
/* 24FF8 800243F8 01244021 */  addu       $t0, $t1, $a0
.L800243FC:
/* 24FFC 800243FC 00E3001A */  div        $zero, $a3, $v1
/* 25000 80024400 14600002 */  bnez       $v1, .L8002440C
/* 25004 80024404 00000000 */   nop
/* 25008 80024408 0007000D */  break      7
.L8002440C:
/* 2500C 8002440C 2401FFFF */  addiu      $at, $zero, -0x1
/* 25010 80024410 14610004 */  bne        $v1, $at, .L80024424
/* 25014 80024414 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 25018 80024418 14E10002 */  bne        $a3, $at, .L80024424
/* 2501C 8002441C 00000000 */   nop
/* 25020 80024420 0006000D */  break      6
.L80024424:
/* 25024 80024424 00003810 */  mfhi       $a3
/* 25028 80024428 0000C812 */  mflo       $t9
/* 2502C 8002442C 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 25030 80024430 A0B90000 */  sb         $t9, 0x0($a1)
/* 25034 80024434 006A001A */  div        $zero, $v1, $t2
/* 25038 80024438 15400002 */  bnez       $t2, .L80024444
/* 2503C 8002443C 00000000 */   nop
/* 25040 80024440 0007000D */  break      7
.L80024444:
/* 25044 80024444 2401FFFF */  addiu      $at, $zero, -0x1
/* 25048 80024448 15410004 */  bne        $t2, $at, .L8002445C
/* 2504C 8002444C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 25050 80024450 14610002 */  bne        $v1, $at, .L8002445C
/* 25054 80024454 00000000 */   nop
/* 25058 80024458 0006000D */  break      6
.L8002445C:
/* 2505C 8002445C 00001812 */  mflo       $v1
/* 25060 80024460 24A50001 */  addiu      $a1, $a1, 0x1
/* 25064 80024464 1506FFE5 */  bne        $t0, $a2, .L800243FC
/* 25068 80024468 00000000 */   nop
/* 2506C 8002446C 50C0006E */  beql       $a2, $zero, .L80024628
/* 25070 80024470 240F00FF */   addiu     $t7, $zero, 0xFF
.L80024474:
/* 25074 80024474 00E3001A */  div        $zero, $a3, $v1
/* 25078 80024478 14600002 */  bnez       $v1, .L80024484
/* 2507C 8002447C 00000000 */   nop
/* 25080 80024480 0007000D */  break      7
.L80024484:
/* 25084 80024484 2401FFFF */  addiu      $at, $zero, -0x1
/* 25088 80024488 14610004 */  bne        $v1, $at, .L8002449C
/* 2508C 8002448C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 25090 80024490 14E10002 */  bne        $a3, $at, .L8002449C
/* 25094 80024494 00000000 */   nop
/* 25098 80024498 0006000D */  break      6
.L8002449C:
/* 2509C 8002449C 00005812 */  mflo       $t3
/* 250A0 800244A0 00003810 */  mfhi       $a3
/* 250A4 800244A4 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 250A8 800244A8 A0AB0000 */  sb         $t3, 0x0($a1)
/* 250AC 800244AC 006A001A */  div        $zero, $v1, $t2
/* 250B0 800244B0 15400002 */  bnez       $t2, .L800244BC
/* 250B4 800244B4 00000000 */   nop
/* 250B8 800244B8 0007000D */  break      7
.L800244BC:
/* 250BC 800244BC 2401FFFF */  addiu      $at, $zero, -0x1
/* 250C0 800244C0 15410004 */  bne        $t2, $at, .L800244D4
/* 250C4 800244C4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 250C8 800244C8 14610002 */  bne        $v1, $at, .L800244D4
/* 250CC 800244CC 00000000 */   nop
/* 250D0 800244D0 0006000D */  break      6
.L800244D4:
/* 250D4 800244D4 00001812 */  mflo       $v1
/* 250D8 800244D8 24A50004 */  addiu      $a1, $a1, 0x4
/* 250DC 800244DC 00000000 */  nop
/* 250E0 800244E0 00E3001A */  div        $zero, $a3, $v1
/* 250E4 800244E4 14600002 */  bnez       $v1, .L800244F0
/* 250E8 800244E8 00000000 */   nop
/* 250EC 800244EC 0007000D */  break      7
.L800244F0:
/* 250F0 800244F0 2401FFFF */  addiu      $at, $zero, -0x1
/* 250F4 800244F4 14610004 */  bne        $v1, $at, .L80024508
/* 250F8 800244F8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 250FC 800244FC 14E10002 */  bne        $a3, $at, .L80024508
/* 25100 80024500 00000000 */   nop
/* 25104 80024504 0006000D */  break      6
.L80024508:
/* 25108 80024508 00003810 */  mfhi       $a3
/* 2510C 8002450C 00006012 */  mflo       $t4
/* 25110 80024510 A0ACFFFD */  sb         $t4, -0x3($a1)
/* 25114 80024514 00000000 */  nop
/* 25118 80024518 006A001A */  div        $zero, $v1, $t2
/* 2511C 8002451C 15400002 */  bnez       $t2, .L80024528
/* 25120 80024520 00000000 */   nop
/* 25124 80024524 0007000D */  break      7
.L80024528:
/* 25128 80024528 2401FFFF */  addiu      $at, $zero, -0x1
/* 2512C 8002452C 15410004 */  bne        $t2, $at, .L80024540
/* 25130 80024530 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 25134 80024534 14610002 */  bne        $v1, $at, .L80024540
/* 25138 80024538 00000000 */   nop
/* 2513C 8002453C 0006000D */  break      6
.L80024540:
/* 25140 80024540 00001812 */  mflo       $v1
/* 25144 80024544 00000000 */  nop
/* 25148 80024548 00000000 */  nop
/* 2514C 8002454C 00E3001A */  div        $zero, $a3, $v1
/* 25150 80024550 14600002 */  bnez       $v1, .L8002455C
/* 25154 80024554 00000000 */   nop
/* 25158 80024558 0007000D */  break      7
.L8002455C:
/* 2515C 8002455C 2401FFFF */  addiu      $at, $zero, -0x1
/* 25160 80024560 14610004 */  bne        $v1, $at, .L80024574
/* 25164 80024564 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 25168 80024568 14E10002 */  bne        $a3, $at, .L80024574
/* 2516C 8002456C 00000000 */   nop
/* 25170 80024570 0006000D */  break      6
.L80024574:
/* 25174 80024574 00003810 */  mfhi       $a3
/* 25178 80024578 00006812 */  mflo       $t5
/* 2517C 8002457C A0ADFFFE */  sb         $t5, -0x2($a1)
/* 25180 80024580 00000000 */  nop
/* 25184 80024584 006A001A */  div        $zero, $v1, $t2
/* 25188 80024588 15400002 */  bnez       $t2, .L80024594
/* 2518C 8002458C 00000000 */   nop
/* 25190 80024590 0007000D */  break      7
.L80024594:
/* 25194 80024594 2401FFFF */  addiu      $at, $zero, -0x1
/* 25198 80024598 15410004 */  bne        $t2, $at, .L800245AC
/* 2519C 8002459C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 251A0 800245A0 14610002 */  bne        $v1, $at, .L800245AC
/* 251A4 800245A4 00000000 */   nop
/* 251A8 800245A8 0006000D */  break      6
.L800245AC:
/* 251AC 800245AC 00001812 */  mflo       $v1
/* 251B0 800245B0 00000000 */  nop
/* 251B4 800245B4 00000000 */  nop
/* 251B8 800245B8 00E3001A */  div        $zero, $a3, $v1
/* 251BC 800245BC 14600002 */  bnez       $v1, .L800245C8
/* 251C0 800245C0 00000000 */   nop
/* 251C4 800245C4 0007000D */  break      7
.L800245C8:
/* 251C8 800245C8 2401FFFF */  addiu      $at, $zero, -0x1
/* 251CC 800245CC 14610004 */  bne        $v1, $at, .L800245E0
/* 251D0 800245D0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 251D4 800245D4 14E10002 */  bne        $a3, $at, .L800245E0
/* 251D8 800245D8 00000000 */   nop
/* 251DC 800245DC 0006000D */  break      6
.L800245E0:
/* 251E0 800245E0 00003810 */  mfhi       $a3
/* 251E4 800245E4 00007012 */  mflo       $t6
/* 251E8 800245E8 A0AEFFFF */  sb         $t6, -0x1($a1)
/* 251EC 800245EC 00000000 */  nop
/* 251F0 800245F0 006A001A */  div        $zero, $v1, $t2
/* 251F4 800245F4 15400002 */  bnez       $t2, .L80024600
/* 251F8 800245F8 00000000 */   nop
/* 251FC 800245FC 0007000D */  break      7
.L80024600:
/* 25200 80024600 2401FFFF */  addiu      $at, $zero, -0x1
/* 25204 80024604 15410004 */  bne        $t2, $at, .L80024618
/* 25208 80024608 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2520C 8002460C 14610002 */  bne        $v1, $at, .L80024618
/* 25210 80024610 00000000 */   nop
/* 25214 80024614 0006000D */  break      6
.L80024618:
/* 25218 80024618 00001812 */  mflo       $v1
/* 2521C 8002461C 14C0FF95 */  bnez       $a2, .L80024474
/* 25220 80024620 00000000 */   nop
.L80024624:
/* 25224 80024624 240F00FF */  addiu      $t7, $zero, 0xFF
.L80024628:
/* 25228 80024628 30580001 */  andi       $t8, $v0, 0x1
/* 2522C 8002462C A0A70000 */  sb         $a3, 0x0($a1)
/* 25230 80024630 13000011 */  beqz       $t8, .L80024678
/* 25234 80024634 A0AF0001 */   sb        $t7, 0x1($a1)
/* 25238 80024638 24020001 */  addiu      $v0, $zero, 0x1
/* 2523C 8002463C 8FA50004 */  lw         $a1, 0x4($sp)
/* 25240 80024640 1080000D */  beqz       $a0, .L80024678
/* 25244 80024644 00803025 */   or        $a2, $a0, $zero
/* 25248 80024648 24030020 */  addiu      $v1, $zero, 0x20
/* 2524C 8002464C 90B90000 */  lbu        $t9, 0x0($a1)
.L80024650:
/* 25250 80024650 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 25254 80024654 57200004 */  bnel       $t9, $zero, .L80024668
/* 25258 80024658 00001025 */   or        $v0, $zero, $zero
/* 2525C 8002465C 10000002 */  b          .L80024668
/* 25260 80024660 A0A30000 */   sb        $v1, 0x0($a1)
/* 25264 80024664 00001025 */  or         $v0, $zero, $zero
.L80024668:
/* 25268 80024668 10C00003 */  beqz       $a2, .L80024678
/* 2526C 8002466C 24A50001 */   addiu     $a1, $a1, 0x1
/* 25270 80024670 5440FFF7 */  bnel       $v0, $zero, .L80024650
/* 25274 80024674 90B90000 */   lbu       $t9, 0x0($a1)
.L80024678:
/* 25278 80024678 24820001 */  addiu      $v0, $a0, 0x1
/* 2527C 8002467C 03E00008 */  jr         $ra
/* 25280 80024680 00000000 */   nop
/* 25284 80024684 00000000 */  nop
/* 25288 80024688 00000000 */  nop
/* 2528C 8002468C 00000000 */  nop