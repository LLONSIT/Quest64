glabel corrupted
/* 47028 80046428 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4702C 8004642C AFA50034 */  sw         $a1, 0x34($sp)
/* 47030 80046430 93B80034 */  lbu        $t8, 0x34($sp)
/* 47034 80046434 93AE0035 */  lbu        $t6, 0x35($sp)
/* 47038 80046438 AFA40030 */  sw         $a0, 0x30($sp)
/* 4703C 8004643C 8FAA0030 */  lw         $t2, 0x30($sp)
/* 47040 80046440 AFBF0014 */  sw         $ra, 0x14($sp)
/* 47044 80046444 AFA60038 */  sw         $a2, 0x38($sp)
/* 47048 80046448 AFA00024 */  sw         $zero, 0x24($sp)
/* 4704C 8004644C AFA00018 */  sw         $zero, 0x18($sp)
/* 47050 80046450 05C10003 */  bgez       $t6, .L80046460
/* 47054 80046454 000E7883 */   sra       $t7, $t6, 2
/* 47058 80046458 25C10003 */  addiu      $at, $t6, 0x3
/* 4705C 8004645C 00017883 */  sra        $t7, $at, 2
.L80046460:
/* 47060 80046460 07010004 */  bgez       $t8, .L80046474
/* 47064 80046464 33190007 */   andi      $t9, $t8, 0x7
/* 47068 80046468 13200002 */  beqz       $t9, .L80046474
/* 4706C 8004646C 00000000 */   nop
/* 47070 80046470 2739FFF8 */  addiu      $t9, $t9, -0x8
.L80046474:
/* 47074 80046474 00194140 */  sll        $t0, $t9, 5
/* 47078 80046478 01E84821 */  addu       $t1, $t7, $t0
/* 4707C 8004647C AFA90028 */  sw         $t1, 0x28($sp)
/* 47080 80046480 A3A00023 */  sb         $zero, 0x23($sp)
/* 47084 80046484 914B0064 */  lbu        $t3, 0x64($t2)
/* 47088 80046488 1960005C */  blez       $t3, .L800465FC
/* 4708C 8004648C 00000000 */   nop
.L80046490:
/* 47090 80046490 93AC0023 */  lbu        $t4, 0x23($sp)
/* 47094 80046494 19800004 */  blez       $t4, .L800464A8
/* 47098 80046498 00000000 */   nop
/* 4709C 8004649C 240D0001 */  addiu      $t5, $zero, 0x1
/* 470A0 800464A0 10000004 */  b          .L800464B4
/* 470A4 800464A4 AFAD001C */   sw        $t5, 0x1C($sp)
.L800464A8:
/* 470A8 800464A8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 470AC 800464AC 8DD80060 */  lw         $t8, 0x60($t6)
/* 470B0 800464B0 AFB8001C */  sw         $t8, 0x1C($sp)
.L800464B4:
/* 470B4 800464B4 93B90023 */  lbu        $t9, 0x23($sp)
/* 470B8 800464B8 93AF0034 */  lbu        $t7, 0x34($sp)
/* 470BC 800464BC 132F000F */  beq        $t9, $t7, .L800464FC
/* 470C0 800464C0 00000000 */   nop
/* 470C4 800464C4 8FA80038 */  lw         $t0, 0x38($sp)
/* 470C8 800464C8 8FA90028 */  lw         $t1, 0x28($sp)
/* 470CC 800464CC 240D0001 */  addiu      $t5, $zero, 0x1
/* 470D0 800464D0 01095021 */  addu       $t2, $t0, $t1
/* 470D4 800464D4 914B0101 */  lbu        $t3, 0x101($t2)
/* 470D8 800464D8 07210004 */  bgez       $t9, .L800464EC
/* 470DC 800464DC 332C0007 */   andi      $t4, $t9, 0x7
/* 470E0 800464E0 11800002 */  beqz       $t4, .L800464EC
/* 470E4 800464E4 00000000 */   nop
/* 470E8 800464E8 258CFFF8 */  addiu      $t4, $t4, -0x8
.L800464EC:
/* 470EC 800464EC 018D7004 */  sllv       $t6, $t5, $t4
/* 470F0 800464F0 016EC024 */  and        $t8, $t3, $t6
/* 470F4 800464F4 13000038 */  beqz       $t8, .L800465D8
/* 470F8 800464F8 00000000 */   nop
.L800464FC:
/* 470FC 800464FC 8FA80038 */  lw         $t0, 0x38($sp)
/* 47100 80046500 93AF0023 */  lbu        $t7, 0x23($sp)
/* 47104 80046504 91090100 */  lbu        $t1, 0x100($t0)
/* 47108 80046508 11E90011 */  beq        $t7, $t1, .L80046550
/* 4710C 8004650C 00000000 */   nop
/* 47110 80046510 8FA40030 */  lw         $a0, 0x30($sp)
/* 47114 80046514 01002825 */  or         $a1, $t0, $zero
/* 47118 80046518 00003025 */  or         $a2, $zero, $zero
/* 4711C 8004651C 0C01152F */  jal        __osPfsRWInode
/* 47120 80046520 01E03825 */   or        $a3, $t7, $zero
/* 47124 80046524 AFA20018 */  sw         $v0, 0x18($sp)
/* 47128 80046528 8FAA0018 */  lw         $t2, 0x18($sp)
/* 4712C 8004652C 11400005 */  beqz       $t2, .L80046544
/* 47130 80046530 24010003 */   addiu     $at, $zero, 0x3
/* 47134 80046534 11410003 */  beq        $t2, $at, .L80046544
/* 47138 80046538 00000000 */   nop
/* 4713C 8004653C 10000030 */  b          .L80046600
/* 47140 80046540 01401025 */   or        $v0, $t2, $zero
.L80046544:
/* 47144 80046544 93B90023 */  lbu        $t9, 0x23($sp)
/* 47148 80046548 8FAD0038 */  lw         $t5, 0x38($sp)
/* 4714C 8004654C A1B90100 */  sb         $t9, 0x100($t5)
.L80046550:
/* 47150 80046550 8FAB0024 */  lw         $t3, 0x24($sp)
/* 47154 80046554 8FAC001C */  lw         $t4, 0x1C($sp)
/* 47158 80046558 29610002 */  slti       $at, $t3, 0x2
/* 4715C 8004655C 10200018 */  beqz       $at, .L800465C0
/* 47160 80046560 AFAC002C */   sw        $t4, 0x2C($sp)
/* 47164 80046564 29810080 */  slti       $at, $t4, 0x80
/* 47168 80046568 10200015 */  beqz       $at, .L800465C0
/* 4716C 8004656C 00000000 */   nop
.L80046570:
/* 47170 80046570 8FB8002C */  lw         $t8, 0x2C($sp)
/* 47174 80046574 8FAE0038 */  lw         $t6, 0x38($sp)
/* 47178 80046578 97AA0034 */  lhu        $t2, 0x34($sp)
/* 4717C 8004657C 00184840 */  sll        $t1, $t8, 1
/* 47180 80046580 01C94021 */  addu       $t0, $t6, $t1
/* 47184 80046584 950F0000 */  lhu        $t7, 0x0($t0)
/* 47188 80046588 15EA0004 */  bne        $t7, $t2, .L8004659C
/* 4718C 8004658C 00000000 */   nop
/* 47190 80046590 8FB90024 */  lw         $t9, 0x24($sp)
/* 47194 80046594 272D0001 */  addiu      $t5, $t9, 0x1
/* 47198 80046598 AFAD0024 */  sw         $t5, 0x24($sp)
.L8004659C:
/* 4719C 8004659C 8FAB002C */  lw         $t3, 0x2C($sp)
/* 471A0 800465A0 8FB80024 */  lw         $t8, 0x24($sp)
/* 471A4 800465A4 256C0001 */  addiu      $t4, $t3, 0x1
/* 471A8 800465A8 2B010002 */  slti       $at, $t8, 0x2
/* 471AC 800465AC 10200004 */  beqz       $at, .L800465C0
/* 471B0 800465B0 AFAC002C */   sw        $t4, 0x2C($sp)
/* 471B4 800465B4 29810080 */  slti       $at, $t4, 0x80
/* 471B8 800465B8 1420FFED */  bnez       $at, .L80046570
/* 471BC 800465BC 00000000 */   nop
.L800465C0:
/* 471C0 800465C0 8FAE0024 */  lw         $t6, 0x24($sp)
/* 471C4 800465C4 29C10002 */  slti       $at, $t6, 0x2
/* 471C8 800465C8 14200003 */  bnez       $at, .L800465D8
/* 471CC 800465CC 00000000 */   nop
/* 471D0 800465D0 1000000B */  b          .L80046600
/* 471D4 800465D4 24020002 */   addiu     $v0, $zero, 0x2
.L800465D8:
/* 471D8 800465D8 93A90023 */  lbu        $t1, 0x23($sp)
/* 471DC 800465DC 8FAA0030 */  lw         $t2, 0x30($sp)
/* 471E0 800465E0 25280001 */  addiu      $t0, $t1, 0x1
/* 471E4 800465E4 A3A80023 */  sb         $t0, 0x23($sp)
/* 471E8 800465E8 91590064 */  lbu        $t9, 0x64($t2)
/* 471EC 800465EC 310F00FF */  andi       $t7, $t0, 0xFF
/* 471F0 800465F0 01F9082A */  slt        $at, $t7, $t9
/* 471F4 800465F4 1420FFA6 */  bnez       $at, .L80046490
/* 471F8 800465F8 00000000 */   nop
.L800465FC:
/* 471FC 800465FC 8FA20024 */  lw         $v0, 0x24($sp)
.L80046600:
/* 47200 80046600 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47204 80046604 27BD0030 */  addiu      $sp, $sp, 0x30
/* 47208 80046608 03E00008 */  jr         $ra
/* 4720C 8004660C 00000000 */   nop
