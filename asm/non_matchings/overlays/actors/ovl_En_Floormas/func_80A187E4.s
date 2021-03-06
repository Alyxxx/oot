glabel func_80A187E4
/* 012D4 80A187E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 012D8 80A187E8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 012DC 80A187EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012E0 80A187F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 012E4 80A187F4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 012E8 80A187F8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 012EC 80A187FC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 012F0 80A18800 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 012F4 80A18804 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 012F8 80A18808 0C0295B2 */  jal     func_800A56C8              
/* 012FC 80A1880C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01300 80A18810 1440000C */  bne     $v0, $zero, .L80A18844     
/* 01304 80A18814 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01308 80A18818 0C0295B2 */  jal     func_800A56C8              
/* 0130C 80A1881C 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 01310 80A18820 14400008 */  bne     $v0, $zero, .L80A18844     
/* 01314 80A18824 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01318 80A18828 0C0295B2 */  jal     func_800A56C8              
/* 0131C 80A1882C 3C0541C0 */  lui     $a1, 0x41C0                ## $a1 = 41C00000
/* 01320 80A18830 14400004 */  bne     $v0, $zero, .L80A18844     
/* 01324 80A18834 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01328 80A18838 0C0295B2 */  jal     func_800A56C8              
/* 0132C 80A1883C 3C054210 */  lui     $a1, 0x4210                ## $a1 = 42100000
/* 01330 80A18840 10400003 */  beq     $v0, $zero, .L80A18850     
.L80A18844:
/* 01334 80A18844 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01338 80A18848 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0133C 80A1884C 24053894 */  addiu   $a1, $zero, 0x3894         ## $a1 = 00003894
.L80A18850:
/* 01340 80A18850 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01344 80A18854 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01348 80A18858 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0134C 80A1885C 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01350 80A18860 2407071C */  addiu   $a3, $zero, 0x071C         ## $a3 = 0000071C
/* 01354 80A18864 3C01438C */  lui     $at, 0x438C                ## $at = 438C0000
/* 01358 80A18868 44813000 */  mtc1    $at, $f6                   ## $f6 = 280.00
/* 0135C 80A1886C C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 01360 80A18870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01364 80A18874 4606203C */  c.lt.s  $f4, $f6                   
/* 01368 80A18878 00000000 */  nop
/* 0136C 80A1887C 4502000F */  bc1fl   .L80A188BC                 
/* 01370 80A18880 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 01374 80A18884 0C00B821 */  jal     func_8002E084              
/* 01378 80A18888 24052000 */  addiu   $a1, $zero, 0x2000         ## $a1 = 00002000
/* 0137C 80A1888C 5040000B */  beql    $v0, $zero, .L80A188BC     
/* 01380 80A18890 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 01384 80A18894 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 01388 80A18898 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0138C 80A1889C 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 01390 80A188A0 55E00006 */  bnel    $t7, $zero, .L80A188BC     
/* 01394 80A188A4 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 01398 80A188A8 0C285E8E */  jal     func_80A17A38              
/* 0139C 80A188AC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 013A0 80A188B0 1000000B */  beq     $zero, $zero, .L80A188E0   
/* 013A4 80A188B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013A8 80A188B8 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
.L80A188BC:
/* 013AC 80A188BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 400.00
/* 013B0 80A188C0 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 013B4 80A188C4 460A403C */  c.lt.s  $f8, $f10                  
/* 013B8 80A188C8 00000000 */  nop
/* 013BC 80A188CC 45020004 */  bc1fl   .L80A188E0                 
/* 013C0 80A188D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013C4 80A188D4 0C285E02 */  jal     func_80A17808              
/* 013C8 80A188D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013CC 80A188DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A188E0:
/* 013D0 80A188E0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 013D4 80A188E4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 013D8 80A188E8 03E00008 */  jr      $ra                        
/* 013DC 80A188EC 00000000 */  nop
