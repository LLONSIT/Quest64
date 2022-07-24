.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel osInvalDCache
/* 37060 80036460 18A0001F */  blez       $a1, .L800364E0
/* 37064 80036464 00000000 */   nop
/* 37068 80036468 240B2000 */  addiu      $t3, $zero, 0x2000
/* 3706C 8003646C 00AB082B */  sltu       $at, $a1, $t3
/* 37070 80036470 1020001D */  beqz       $at, .L800364E8
/* 37074 80036474 00000000 */   nop
/* 37078 80036478 00804025 */  or         $t0, $a0, $zero
/* 3707C 8003647C 00854821 */  addu       $t1, $a0, $a1
/* 37080 80036480 0109082B */  sltu       $at, $t0, $t1
/* 37084 80036484 10200016 */  beqz       $at, .L800364E0
/* 37088 80036488 00000000 */   nop
/* 3708C 8003648C 310A000F */  andi       $t2, $t0, 0xF
/* 37090 80036490 11400007 */  beqz       $t2, .L800364B0
/* 37094 80036494 2529FFF0 */   addiu     $t1, $t1, -0x10
/* 37098 80036498 010A4023 */  subu       $t0, $t0, $t2
/* 3709C 8003649C BD150000 */  cache      0x15, 0x0($t0)
/* 370A0 800364A0 0109082B */  sltu       $at, $t0, $t1
/* 370A4 800364A4 1020000E */  beqz       $at, .L800364E0
/* 370A8 800364A8 00000000 */   nop
/* 370AC 800364AC 25080010 */  addiu      $t0, $t0, 0x10
.L800364B0:
/* 370B0 800364B0 312A000F */  andi       $t2, $t1, 0xF
/* 370B4 800364B4 11400006 */  beqz       $t2, .L800364D0
/* 370B8 800364B8 00000000 */   nop
/* 370BC 800364BC 012A4823 */  subu       $t1, $t1, $t2
/* 370C0 800364C0 BD350010 */  cache      0x15, 0x10($t1)
/* 370C4 800364C4 0128082B */  sltu       $at, $t1, $t0
/* 370C8 800364C8 14200005 */  bnez       $at, .L800364E0
/* 370CC 800364CC 00000000 */   nop
.L800364D0:
/* 370D0 800364D0 BD110000 */  cache      0x11, 0x0($t0)
/* 370D4 800364D4 0109082B */  sltu       $at, $t0, $t1
/* 370D8 800364D8 1420FFFD */  bnez       $at, .L800364D0
/* 370DC 800364DC 25080010 */   addiu     $t0, $t0, 0x10
.L800364E0:
/* 370E0 800364E0 03E00008 */  jr         $ra
/* 370E4 800364E4 00000000 */   nop
.L800364E8:
/* 370E8 800364E8 3C088000 */  lui        $t0, 0x8000
/* 370EC 800364EC 010B4821 */  addu       $t1, $t0, $t3
/* 370F0 800364F0 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800364F4:
/* 370F4 800364F4 BD010000 */  cache      0x01, 0x0($t0)
/* 370F8 800364F8 0109082B */  sltu       $at, $t0, $t1
/* 370FC 800364FC 1420FFFD */  bnez       $at, .L800364F4
/* 37100 80036500 25080010 */   addiu     $t0, $t0, 0x10
/* 37104 80036504 03E00008 */  jr         $ra
/* 37108 80036508 00000000 */   nop
/* 3710C 8003650C 00000000 */  nop
