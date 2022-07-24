.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel sins
/* 35D90 80035190 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 35D94 80035194 000E7902 */  srl        $t7, $t6, 4
/* 35D98 80035198 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 35D9C 8003519C 33190400 */  andi       $t9, $t8, 0x400
/* 35DA0 800351A0 AFA40000 */  sw         $a0, 0x0($sp)
/* 35DA4 800351A4 13200008 */  beqz       $t9, .L800351C8
/* 35DA8 800351A8 03001025 */   or        $v0, $t8, $zero
/* 35DAC 800351AC 330803FF */  andi       $t0, $t8, 0x3FF
/* 35DB0 800351B0 00084840 */  sll        $t1, $t0, 1
/* 35DB4 800351B4 00095023 */  negu       $t2, $t1
/* 35DB8 800351B8 3C038007 */  lui        $v1, %hi(D_8007098E)
/* 35DBC 800351BC 006A1821 */  addu       $v1, $v1, $t2
/* 35DC0 800351C0 10000006 */  b          .L800351DC
/* 35DC4 800351C4 8463098E */   lh        $v1, %lo(D_8007098E)($v1)
.L800351C8:
/* 35DC8 800351C8 304B03FF */  andi       $t3, $v0, 0x3FF
/* 35DCC 800351CC 000B6040 */  sll        $t4, $t3, 1
/* 35DD0 800351D0 3C038007 */  lui        $v1, %hi(D_80070190)
/* 35DD4 800351D4 006C1821 */  addu       $v1, $v1, $t4
/* 35DD8 800351D8 84630190 */  lh         $v1, %lo(D_80070190)($v1)
.L800351DC:
/* 35DDC 800351DC 304D0800 */  andi       $t5, $v0, 0x800
/* 35DE0 800351E0 11A00005 */  beqz       $t5, .L800351F8
/* 35DE4 800351E4 00601025 */   or        $v0, $v1, $zero
/* 35DE8 800351E8 00031023 */  negu       $v0, $v1
/* 35DEC 800351EC 00027400 */  sll        $t6, $v0, 16
/* 35DF0 800351F0 03E00008 */  jr         $ra
/* 35DF4 800351F4 000E1403 */   sra       $v0, $t6, 16
.L800351F8:
/* 35DF8 800351F8 03E00008 */  jr         $ra
/* 35DFC 800351FC 00000000 */   nop