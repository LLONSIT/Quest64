glabel func_80008948
/* 9548 80008948 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 954C 8000894C AFBF001C */  sw         $ra, 0x1C($sp)
/* 9550 80008950 00047140 */  sll        $t6, $a0, 5
/* 9554 80008954 01C47021 */  addu       $t6, $t6, $a0
/* 9558 80008958 3C0F8008 */  lui        $t7, %hi(D_8007BD30)
/* 955C 8000895C 25EFBD30 */  addiu      $t7, $t7, %lo(D_8007BD30)
/* 9560 80008960 000E7080 */  sll        $t6, $t6, 2
/* 9564 80008964 01CF1821 */  addu       $v1, $t6, $t7
/* 9568 80008968 8C620080 */  lw         $v0, 0x80($v1)
/* 956C 8000896C 24010002 */  addiu      $at, $zero, 0x2
/* 9570 80008970 2404001E */  addiu      $a0, $zero, 0x1E
/* 9574 80008974 90580004 */  lbu        $t8, 0x4($v0)
/* 9578 80008978 57010009 */  bnel       $t8, $at, .L800089A0
/* 957C 8000897C 90480005 */   lbu       $t0, 0x5($v0)
/* 9580 80008980 A4600000 */  sh         $zero, 0x0($v1)
/* 9584 80008984 0C008BF4 */  jal        func_80022FD0
/* 9588 80008988 AFA30020 */   sw        $v1, 0x20($sp)
/* 958C 8000898C 8FA30020 */  lw         $v1, 0x20($sp)
/* 9590 80008990 2459001E */  addiu      $t9, $v0, 0x1E
/* 9594 80008994 10000016 */  b          .L800089F0
/* 9598 80008998 A4790002 */   sh        $t9, 0x2($v1)
/* 959C 8000899C 90480005 */  lbu        $t0, 0x5($v0)
.L800089A0:
/* 95A0 800089A0 240C0003 */  addiu      $t4, $zero, 0x3
/* 95A4 800089A4 240D000F */  addiu      $t5, $zero, 0xF
/* 95A8 800089A8 31090002 */  andi       $t1, $t0, 0x2
/* 95AC 800089AC 11200006 */  beqz       $t1, .L800089C8
/* 95B0 800089B0 24640014 */   addiu     $a0, $v1, 0x14
/* 95B4 800089B4 A4600000 */  sh         $zero, 0x0($v1)
/* 95B8 800089B8 8C4A0010 */  lw         $t2, 0x10($v0)
/* 95BC 800089BC 854B0002 */  lh         $t3, 0x2($t2)
/* 95C0 800089C0 1000000B */  b          .L800089F0
/* 95C4 800089C4 A46B0002 */   sh        $t3, 0x2($v1)
.L800089C8:
/* 95C8 800089C8 240E0001 */  addiu      $t6, $zero, 0x1
/* 95CC 800089CC 240F0001 */  addiu      $t7, $zero, 0x1
/* 95D0 800089D0 A46C0000 */  sh         $t4, 0x0($v1)
/* 95D4 800089D4 A46D0002 */  sh         $t5, 0x2($v1)
/* 95D8 800089D8 AFAF0014 */  sw         $t7, 0x14($sp)
/* 95DC 800089DC AFAE0010 */  sw         $t6, 0x10($sp)
/* 95E0 800089E0 24050001 */  addiu      $a1, $zero, 0x1
/* 95E4 800089E4 24060001 */  addiu      $a2, $zero, 0x1
/* 95E8 800089E8 0C00762C */  jal        func_8001D8B0
/* 95EC 800089EC 24070001 */   addiu     $a3, $zero, 0x1
.L800089F0:
/* 95F0 800089F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 95F4 800089F4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 95F8 800089F8 03E00008 */  jr         $ra
/* 95FC 800089FC 00000000 */   nop