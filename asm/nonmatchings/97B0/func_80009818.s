glabel func_80009818
/* A418 80009818 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A41C 8000981C AFB10020 */  sw         $s1, 0x20($sp)
/* A420 80009820 AFB0001C */  sw         $s0, 0x1C($sp)
/* A424 80009824 00808025 */  or         $s0, $a0, $zero
/* A428 80009828 00A08825 */  or         $s1, $a1, $zero
/* A42C 8000982C AFBF0024 */  sw         $ra, 0x24($sp)
/* A430 80009830 AFA60030 */  sw         $a2, 0x30($sp)
/* A434 80009834 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* A438 80009838 24A5D0D0 */  addiu      $a1, $a1, %lo(D_8007D0D0)
/* A43C 8000983C 0C0029F6 */  jal        func_8000A7D8
/* A440 80009840 02002025 */   or        $a0, $s0, $zero
/* A444 80009844 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* A448 80009848 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* A44C 8000984C 8C450000 */  lw         $a1, 0x0($v0)
/* A450 80009850 8C460004 */  lw         $a2, 0x4($v0)
/* A454 80009854 00002025 */  or         $a0, $zero, $zero
/* A458 80009858 02003825 */  or         $a3, $s0, $zero
/* A45C 8000985C 0C002942 */  jal        func_8000A508
/* A460 80009860 AFB10010 */   sw        $s1, 0x10($sp)
/* A464 80009864 862E0002 */  lh         $t6, 0x2($s1)
/* A468 80009868 25CFFFFF */  addiu      $t7, $t6, -0x1
/* A46C 8000986C A62F0002 */  sh         $t7, 0x2($s1)
/* A470 80009870 86380002 */  lh         $t8, 0x2($s1)
/* A474 80009874 5700002B */  bnel       $t8, $zero, .L80009924
/* A478 80009878 8FBF0024 */   lw        $ra, 0x24($sp)
/* A47C 8000987C 9639000A */  lhu        $t9, 0xA($s1)
/* A480 80009880 57200024 */  bnel       $t9, $zero, .L80009914
/* A484 80009884 A6200000 */   sh        $zero, 0x0($s1)
/* A488 80009888 0C0080B9 */  jal        func_800202E4
/* A48C 8000988C 02002025 */   or        $a0, $s0, $zero
/* A490 80009890 0C002C5C */  jal        func_8000B170
/* A494 80009894 02002025 */   or        $a0, $s0, $zero
/* A498 80009898 96090060 */  lhu        $t1, 0x60($s0)
/* A49C 8000989C 3C028008 */  lui        $v0, %hi(D_8007C990)
/* A4A0 800098A0 2408FFFF */  addiu      $t0, $zero, -0x1
/* A4A4 800098A4 312AFFFE */  andi       $t2, $t1, 0xFFFE
/* A4A8 800098A8 2442C990 */  addiu      $v0, $v0, %lo(D_8007C990)
/* A4AC 800098AC A6080050 */  sh         $t0, 0x50($s0)
/* A4B0 800098B0 A60A0060 */  sh         $t2, 0x60($s0)
/* A4B4 800098B4 8C4B0000 */  lw         $t3, 0x0($v0)
/* A4B8 800098B8 3C038008 */  lui        $v1, %hi(D_8007BA68)
/* A4BC 800098BC 2463BA68 */  addiu      $v1, $v1, %lo(D_8007BA68)
/* A4C0 800098C0 256CFFFF */  addiu      $t4, $t3, -0x1
/* A4C4 800098C4 AC4C0000 */  sw         $t4, 0x0($v0)
/* A4C8 800098C8 8E0E0064 */  lw         $t6, 0x64($s0)
/* A4CC 800098CC 8C6D0000 */  lw         $t5, 0x0($v1)
/* A4D0 800098D0 3C078008 */  lui        $a3, %hi(D_8007BA6C)
/* A4D4 800098D4 8DCF0010 */  lw         $t7, 0x10($t6)
/* A4D8 800098D8 24E7BA6C */  addiu      $a3, $a3, %lo(D_8007BA6C)
/* A4DC 800098DC 8CF90000 */  lw         $t9, 0x0($a3)
/* A4E0 800098E0 01AFC021 */  addu       $t8, $t5, $t7
/* A4E4 800098E4 AC780000 */  sw         $t8, 0x0($v1)
/* A4E8 800098E8 8E080064 */  lw         $t0, 0x64($s0)
/* A4EC 800098EC 00002025 */  or         $a0, $zero, $zero
/* A4F0 800098F0 2405000A */  addiu      $a1, $zero, 0xA
/* A4F4 800098F4 8D090014 */  lw         $t1, 0x14($t0)
/* A4F8 800098F8 240600FF */  addiu      $a2, $zero, 0xFF
/* A4FC 800098FC 03295021 */  addu       $t2, $t9, $t1
/* A500 80009900 0C009A35 */  jal        func_800268D4
/* A504 80009904 ACEA0000 */   sw        $t2, 0x0($a3)
/* A508 80009908 10000006 */  b          .L80009924
/* A50C 8000990C 8FBF0024 */   lw        $ra, 0x24($sp)
/* A510 80009910 A6200000 */  sh         $zero, 0x0($s1)
.L80009914:
/* A514 80009914 960B0060 */  lhu        $t3, 0x60($s0)
/* A518 80009918 316CFFFC */  andi       $t4, $t3, 0xFFFC
/* A51C 8000991C A60C0060 */  sh         $t4, 0x60($s0)
/* A520 80009920 8FBF0024 */  lw         $ra, 0x24($sp)
.L80009924:
/* A524 80009924 8FB0001C */  lw         $s0, 0x1C($sp)
/* A528 80009928 8FB10020 */  lw         $s1, 0x20($sp)
/* A52C 8000992C 03E00008 */  jr         $ra
/* A530 80009930 27BD0028 */   addiu     $sp, $sp, 0x28
