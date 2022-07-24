.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViGetCurrentFramebuffer
/* 353A0 800347A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 353A4 800347A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 353A8 800347A8 0C00F534 */  jal        __osDisableInt
/* 353AC 800347AC AFB00018 */   sw        $s0, 0x18($sp)
/* 353B0 800347B0 3C0E8007 */  lui        $t6, %hi(D_80070A80)
/* 353B4 800347B4 8DCE0A80 */  lw         $t6, %lo(D_80070A80)($t6)
/* 353B8 800347B8 00408025 */  or         $s0, $v0, $zero
/* 353BC 800347BC 02002025 */  or         $a0, $s0, $zero
/* 353C0 800347C0 8DCF0004 */  lw         $t7, 0x4($t6)
/* 353C4 800347C4 0C00F53C */  jal        __osRestoreInt
/* 353C8 800347C8 AFAF0020 */   sw        $t7, 0x20($sp)
/* 353CC 800347CC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 353D0 800347D0 8FA20020 */  lw         $v0, 0x20($sp)
/* 353D4 800347D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 353D8 800347D8 03E00008 */  jr         $ra
/* 353DC 800347DC 27BD0028 */   addiu     $sp, $sp, 0x28
/* 353E0 800347E0 00000000 */  nop
/* 353E4 800347E4 00000000 */  nop
/* 353E8 800347E8 00000000 */  nop
/* 353EC 800347EC 00000000 */  nop
/* 353F0 800347F0 00000000 */  nop
/* 353F4 800347F4 00000000 */  nop
/* 353F8 800347F8 00000000 */  nop
/* 353FC 800347FC 00000000 */  nop
/* 35400 80034800 00000000 */  nop
/* 35404 80034804 00000000 */  nop
/* 35408 80034808 00000000 */  nop
/* 3540C 8003480C 00000000 */  nop
/* 35410 80034810 00000000 */  nop
/* 35414 80034814 00000000 */  nop
/* 35418 80034818 00000000 */  nop
/* 3541C 8003481C 00000000 */  nop
/* 35420 80034820 00000000 */  nop
/* 35424 80034824 00000000 */  nop
/* 35428 80034828 00000000 */  nop
/* 3542C 8003482C 00000000 */  nop
/* 35430 80034830 00000000 */  nop
/* 35434 80034834 00000000 */  nop
/* 35438 80034838 00000000 */  nop
/* 3543C 8003483C 00000000 */  nop