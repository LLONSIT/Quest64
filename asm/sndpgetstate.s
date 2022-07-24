.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSndpGetState
/* 3A4D0 800398D0 8C8E003C */  lw         $t6, 0x3C($a0)
/* 3A4D4 800398D4 8C830040 */  lw         $v1, 0x40($a0)
/* 3A4D8 800398D8 000E7880 */  sll        $t7, $t6, 2
/* 3A4DC 800398DC 01EE7823 */  subu       $t7, $t7, $t6
/* 3A4E0 800398E0 000F7900 */  sll        $t7, $t7, 4
/* 3A4E4 800398E4 01E3C021 */  addu       $t8, $t7, $v1
/* 3A4E8 800398E8 03E00008 */  jr         $ra
/* 3A4EC 800398EC 8F020028 */   lw        $v0, 0x28($t8)