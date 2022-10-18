.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alCents2Ratio
/* 450F0 800444F0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 450F4 800444F4 44811000 */  mtc1       $at, $f2
/* 450F8 800444F8 04800004 */  bltz       $a0, .L8004450C
/* 450FC 800444FC 3C018007 */   lui       $at, %hi(D_80072324)
/* 45100 80044500 3C018007 */  lui        $at, %hi(D_80072320)
/* 45104 80044504 10000003 */  b          .L80044514
/* 45108 80044508 C4202320 */   lwc1      $f0, %lo(D_80072320)($at)
.L8004450C:
/* 4510C 8004450C C4202324 */  lwc1       $f0, %lo(D_80072324)($at)
/* 45110 80044510 00042023 */  negu       $a0, $a0
.L80044514:
/* 45114 80044514 10800008 */  beqz       $a0, .L80044538
.L80044518:
/* 45118 80044518 308E0001 */   andi      $t6, $a0, 0x1
/* 4511C 8004451C 11C00003 */  beqz       $t6, .L8004452C
/* 45120 80044520 00047843 */   sra       $t7, $a0, 1
/* 45124 80044524 46001082 */  mul.s      $f2, $f2, $f0
/* 45128 80044528 00000000 */  nop
.L8004452C:
/* 4512C 8004452C 46000002 */  mul.s      $f0, $f0, $f0
/* 45130 80044530 15E0FFF9 */  bnez       $t7, .L80044518
/* 45134 80044534 01E02025 */   or        $a0, $t7, $zero
.L80044538:
/* 45138 80044538 03E00008 */  jr         $ra
/* 4513C 8004453C 46001006 */   mov.s     $f0, $f2
