glabel func_8002263C
/* 2323C 8002263C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 23240 80022640 3C038008 */  lui        $v1, %hi(D_8007B2FC)
/* 23244 80022644 2463B2FC */  addiu      $v1, $v1, %lo(D_8007B2FC)
/* 23248 80022648 AFB1000C */  sw         $s1, 0xC($sp)
/* 2324C 8002264C AFB00008 */  sw         $s0, 0x8($sp)
/* 23250 80022650 8C620000 */  lw         $v0, 0x0($v1)
/* 23254 80022654 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 23258 80022658 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
/* 2325C 8002265C 244E0008 */  addiu      $t6, $v0, 0x8
/* 23260 80022660 AC6E0000 */  sw         $t6, 0x0($v1)
/* 23264 80022664 AC400004 */  sw         $zero, 0x4($v0)
/* 23268 80022668 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2326C 8002266C 8C620000 */  lw         $v0, 0x0($v1)
/* 23270 80022670 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
/* 23274 80022674 3C0E0030 */  lui        $t6, (0x300000 >> 16)
/* 23278 80022678 24580008 */  addiu      $t8, $v0, 0x8
/* 2327C 8002267C AC780000 */  sw         $t8, 0x0($v1)
/* 23280 80022680 AC4E0004 */  sw         $t6, 0x4($v0)
/* 23284 80022684 AC590000 */  sw         $t9, 0x0($v0)
/* 23288 80022688 8C620000 */  lw         $v0, 0x0($v1)
/* 2328C 8002268C 3C18B900 */  lui        $t8, (0xB900031D >> 16)
/* 23290 80022690 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
/* 23294 80022694 244F0008 */  addiu      $t7, $v0, 0x8
/* 23298 80022698 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2329C 8002269C AC400004 */  sw         $zero, 0x4($v0)
/* 232A0 800226A0 AC580000 */  sw         $t8, 0x0($v0)
/* 232A4 800226A4 8C620000 */  lw         $v0, 0x0($v1)
/* 232A8 800226A8 3C0F0001 */  lui        $t7, (0x10001 >> 16)
/* 232AC 800226AC 35EF0001 */  ori        $t7, $t7, (0x10001 & 0xFFFF)
/* 232B0 800226B0 24590008 */  addiu      $t9, $v0, 0x8
/* 232B4 800226B4 AC790000 */  sw         $t9, 0x0($v1)
/* 232B8 800226B8 3C0EF700 */  lui        $t6, (0xF7000000 >> 16)
/* 232BC 800226BC AC4E0000 */  sw         $t6, 0x0($v0)
/* 232C0 800226C0 AC4F0004 */  sw         $t7, 0x4($v0)
/* 232C4 800226C4 8C620000 */  lw         $v0, 0x0($v1)
/* 232C8 800226C8 00868021 */  addu       $s0, $a0, $a2
/* 232CC 800226CC 321903FF */  andi       $t9, $s0, 0x3FF
/* 232D0 800226D0 24580008 */  addiu      $t8, $v0, 0x8
/* 232D4 800226D4 AC780000 */  sw         $t8, 0x0($v1)
/* 232D8 800226D8 00197380 */  sll        $t6, $t9, 14
/* 232DC 800226DC 30AF03FF */  andi       $t7, $a1, 0x3FF
/* 232E0 800226E0 000FC080 */  sll        $t8, $t7, 2
/* 232E4 800226E4 3C01F600 */  lui        $at, (0xF6000000 >> 16)
/* 232E8 800226E8 01C16825 */  or         $t5, $t6, $at
/* 232EC 800226EC 01B8C825 */  or         $t9, $t5, $t8
/* 232F0 800226F0 AFB80024 */  sw         $t8, 0x24($sp)
/* 232F4 800226F4 AFAE0028 */  sw         $t6, 0x28($sp)
/* 232F8 800226F8 AC590000 */  sw         $t9, 0x0($v0)
/* 232FC 800226FC 8FB80024 */  lw         $t8, 0x24($sp)
/* 23300 80022700 308E03FF */  andi       $t6, $a0, 0x3FF
/* 23304 80022704 000E7B80 */  sll        $t7, $t6, 14
/* 23308 80022708 01F8C825 */  or         $t9, $t7, $t8
/* 2330C 8002270C AFB9001C */  sw         $t9, 0x1C($sp)
/* 23310 80022710 AFAF0020 */  sw         $t7, 0x20($sp)
/* 23314 80022714 AC590004 */  sw         $t9, 0x4($v0)
/* 23318 80022718 8C620000 */  lw         $v0, 0x0($v1)
/* 2331C 8002271C 00A78821 */  addu       $s1, $a1, $a3
/* 23320 80022720 322F03FF */  andi       $t7, $s1, 0x3FF
/* 23324 80022724 000F5080 */  sll        $t2, $t7, 2
/* 23328 80022728 01AAC825 */  or         $t9, $t5, $t2
/* 2332C 8002272C 244E0008 */  addiu      $t6, $v0, 0x8
/* 23330 80022730 AC6E0000 */  sw         $t6, 0x0($v1)
/* 23334 80022734 AFB90010 */  sw         $t9, 0x10($sp)
/* 23338 80022738 AFAA0014 */  sw         $t2, 0x14($sp)
/* 2333C 8002273C AFA20050 */  sw         $v0, 0x50($sp)
/* 23340 80022740 AC590000 */  sw         $t9, 0x0($v0)
/* 23344 80022744 8FA90020 */  lw         $t1, 0x20($sp)
/* 23348 80022748 3C06F600 */  lui        $a2, (0xF6000000 >> 16)
/* 2334C 8002274C 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 23350 80022750 012AC825 */  or         $t9, $t1, $t2
/* 23354 80022754 AC590004 */  sw         $t9, 0x4($v0)
/* 23358 80022758 8C620000 */  lw         $v0, 0x0($v1)
/* 2335C 8002275C 0126C025 */  or         $t8, $t1, $a2
/* 23360 80022760 030AC825 */  or         $t9, $t8, $t2
/* 23364 80022764 244E0008 */  addiu      $t6, $v0, 0x8
/* 23368 80022768 AC6E0000 */  sw         $t6, 0x0($v1)
/* 2336C 8002276C AC590000 */  sw         $t9, 0x0($v0)
/* 23370 80022770 8FAF001C */  lw         $t7, 0x1C($sp)
/* 23374 80022774 26290001 */  addiu      $t1, $s1, 0x1
/* 23378 80022778 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2337C 8002277C 8C620000 */  lw         $v0, 0x0($v1)
/* 23380 80022780 8FB80010 */  lw         $t8, 0x10($sp)
/* 23384 80022784 244E0008 */  addiu      $t6, $v0, 0x8
/* 23388 80022788 AC6E0000 */  sw         $t6, 0x0($v1)
/* 2338C 8002278C AC580000 */  sw         $t8, 0x0($v0)
/* 23390 80022790 8FAF0024 */  lw         $t7, 0x24($sp)
/* 23394 80022794 8FB90028 */  lw         $t9, 0x28($sp)
/* 23398 80022798 032F7025 */  or         $t6, $t9, $t7
/* 2339C 8002279C AC4E0004 */  sw         $t6, 0x4($v0)
/* 233A0 800227A0 8C620000 */  lw         $v0, 0x0($v1)
/* 233A4 800227A4 26190002 */  addiu      $t9, $s0, 0x2
/* 233A8 800227A8 332F03FF */  andi       $t7, $t9, 0x3FF
/* 233AC 800227AC 24580008 */  addiu      $t8, $v0, 0x8
/* 233B0 800227B0 AC780000 */  sw         $t8, 0x0($v1)
/* 233B4 800227B4 26380002 */  addiu      $t8, $s1, 0x2
/* 233B8 800227B8 000F7380 */  sll        $t6, $t7, 14
/* 233BC 800227BC 331903FF */  andi       $t9, $t8, 0x3FF
/* 233C0 800227C0 00197880 */  sll        $t7, $t9, 2
/* 233C4 800227C4 01C64025 */  or         $t0, $t6, $a2
/* 233C8 800227C8 010F7025 */  or         $t6, $t0, $t7
/* 233CC 800227CC 248F0003 */  addiu      $t7, $a0, 0x3
/* 233D0 800227D0 313803FF */  andi       $t8, $t1, 0x3FF
/* 233D4 800227D4 AC4E0000 */  sw         $t6, 0x0($v0)
/* 233D8 800227D8 31EE03FF */  andi       $t6, $t7, 0x3FF
/* 233DC 800227DC 00184880 */  sll        $t1, $t8, 2
/* 233E0 800227E0 000EC380 */  sll        $t8, $t6, 14
/* 233E4 800227E4 0309C825 */  or         $t9, $t8, $t1
/* 233E8 800227E8 AC590004 */  sw         $t9, 0x4($v0)
/* 233EC 800227EC 8C620000 */  lw         $v0, 0x0($v1)
/* 233F0 800227F0 01097025 */  or         $t6, $t0, $t1
/* 233F4 800227F4 26180001 */  addiu      $t8, $s0, 0x1
/* 233F8 800227F8 244F0008 */  addiu      $t7, $v0, 0x8
/* 233FC 800227FC AC6F0000 */  sw         $t7, 0x0($v1)
/* 23400 80022800 331903FF */  andi       $t9, $t8, 0x3FF
/* 23404 80022804 AC4E0000 */  sw         $t6, 0x0($v0)
/* 23408 80022808 24AE0003 */  addiu      $t6, $a1, 0x3
/* 2340C 8002280C 31D803FF */  andi       $t8, $t6, 0x3FF
/* 23410 80022810 00197B80 */  sll        $t7, $t9, 14
/* 23414 80022814 0018C880 */  sll        $t9, $t8, 2
/* 23418 80022818 01F97025 */  or         $t6, $t7, $t9
/* 2341C 8002281C AC4E0004 */  sw         $t6, 0x4($v0)
/* 23420 80022820 8C620000 */  lw         $v0, 0x0($v1)
/* 23424 80022824 3C19803B */  lui        $t9, %hi(D_803A8FF8)
/* 23428 80022828 27398FF8 */  addiu      $t9, $t9, %lo(D_803A8FF8)
/* 2342C 8002282C 24580008 */  addiu      $t8, $v0, 0x8
/* 23430 80022830 AC780000 */  sw         $t8, 0x0($v1)
/* 23434 80022834 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 23438 80022838 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2343C 8002283C AC590004 */  sw         $t9, 0x4($v0)
/* 23440 80022840 8C620000 */  lw         $v0, 0x0($v1)
/* 23444 80022844 0010C080 */  sll        $t8, $s0, 2
/* 23448 80022848 330F0FFF */  andi       $t7, $t8, 0xFFF
/* 2344C 8002284C 000FCB00 */  sll        $t9, $t7, 12
/* 23450 80022850 0011C080 */  sll        $t8, $s1, 2
/* 23454 80022854 244E0008 */  addiu      $t6, $v0, 0x8
/* 23458 80022858 AC6E0000 */  sw         $t6, 0x0($v1)
/* 2345C 8002285C 330F0FFF */  andi       $t7, $t8, 0xFFF
/* 23460 80022860 03217025 */  or         $t6, $t9, $at
/* 23464 80022864 01CFC825 */  or         $t9, $t6, $t7
/* 23468 80022868 24980001 */  addiu      $t8, $a0, 0x1
/* 2346C 8002286C 00187080 */  sll        $t6, $t8, 2
/* 23470 80022870 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 23474 80022874 24B80001 */  addiu      $t8, $a1, 0x1
/* 23478 80022878 AC590000 */  sw         $t9, 0x0($v0)
/* 2347C 8002287C 000FCB00 */  sll        $t9, $t7, 12
/* 23480 80022880 00187080 */  sll        $t6, $t8, 2
/* 23484 80022884 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 23488 80022888 032FC025 */  or         $t8, $t9, $t7
/* 2348C 8002288C AC580004 */  sw         $t8, 0x4($v0)
/* 23490 80022890 8C620000 */  lw         $v0, 0x0($v1)
/* 23494 80022894 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* 23498 80022898 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 2349C 8002289C 244E0008 */  addiu      $t6, $v0, 0x8
/* 234A0 800228A0 AC6E0000 */  sw         $t6, 0x0($v1)
/* 234A4 800228A4 AC400004 */  sw         $zero, 0x4($v0)
/* 234A8 800228A8 AC590000 */  sw         $t9, 0x0($v0)
/* 234AC 800228AC 8C620000 */  lw         $v0, 0x0($v1)
/* 234B0 800228B0 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 234B4 800228B4 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 234B8 800228B8 244F0008 */  addiu      $t7, $v0, 0x8
/* 234BC 800228BC AC6F0000 */  sw         $t7, 0x0($v1)
/* 234C0 800228C0 AC4E0004 */  sw         $t6, 0x4($v0)
/* 234C4 800228C4 AC580000 */  sw         $t8, 0x0($v0)
/* 234C8 800228C8 8FB00008 */  lw         $s0, 0x8($sp)
/* 234CC 800228CC 8FB1000C */  lw         $s1, 0xC($sp)
/* 234D0 800228D0 03E00008 */  jr         $ra
/* 234D4 800228D4 27BD0068 */   addiu     $sp, $sp, 0x68
/* 234D8 800228D8 00000000 */  nop
/* 234DC 800228DC 00000000 */  nop
