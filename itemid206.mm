/remark {	ItemID 2.06				}
/remark {	Released Febuary 19, 2004		}
/remark {	Created By: Cypher (Jason Stevens)	}
/remark {	Email: jay@wizardofthent.com		}
/remark {	Web  : http://www.wizardofthenet.com	}
/remark {	The Contents of this file are 		}
/remark {	copyright 2001-2003 Jason Stevens	}
/variable {ITEMIDVERSION} {2.06} {ITEM_ID_206}
/variable {ITEMIDRELEASE} {Febuary 19, 2004} {ITEM_ID_206}

/action {Trap is: %0  Trap Difficulty: %1 (1=Simple, 5=Complex)} {/var ItemTrap $0;/var ItemTrapDifficulty $1} {ITEM_ID_206}
/action {^Hours of light: %0} {/var ItemLight $0} {ITEM_ID_206}
/action {^Thrown weapon causes %0 rounds of lag.} {/var ItemLag $0} {ITEM_ID_206}
/action {^Thrown weapon causes %0 round of lag.} {/var ItemLag $0} {ITEM_ID_206}
/action {^Can hold %0 keys.} {/var ItemKeys $0} {ITEM_ID_206}
/action {^This Wand casts:  %0} {/var ItemWandCasts $0} {ITEM_ID_206}
/action {^It has %0 maximum charges and %1 remaining.} {/var ItemTotalCharges $0;/var ItemCurCharges $1} {ITEM_ID_206}
/action {^It has %0 maximum charge and %1 remaining.} {/var ItemTotalCharges $0;/var ItemCurCharges $1} {ITEM_ID_206}
/action {, for an average per-round damage of %0} {/var ItemAvg $0} {ITEM_ID_206}
/action {^Class Restrictions: %0} {/var ItemAttr $0} {ITEM_ID_206}
/action {Item type: Treasure} {/var ItemTreasure 1} {ITEM_ID_206}
/action {Level: %0} {/var ItemLevel $0} {ITEM_ID_206}
/action {^You feel informed:} {idreset} {ITEM_ID_206}
/action {^   Affects: %0 by %1} {/math {ItemAffectCount} {$ItemAffectCount + 1};/var {@ConCat(ItemAffect,$ItemAffectCount)} {$0 by $1};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Stat))} {$0};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Num))} {$1}} {ITEM_ID_206}
/action {^Class Restrictions: %0} {/var ItemAttr $0} {ITEM_ID_206}
/action {^Damage Dice is: %0D%1,} {/var ItemDice {$0D$1}} {ITEM_ID_206}
/action {Item Type: %0} {/var ItemType $0}
/action {Effects: %0} {/var ItemEffects $0}
/action {Item Type: %0   Effects: %1} {/var ItemType $0;/var ItemEffects $1} {ITEM_ID_206}
/action {Object: %0} {/var ObjectName $0} {ITEM_ID_206}
/action {^Item is: %0} {/var ItemIs $0} {ITEM_ID_206}
/action {^Maximum weight stored: %0} {/var ItemMaxWeight $0} {ITEM_ID_206}
/action {^Object: %0  Worn: %1  Item type: %2} {/var ObjectName $0;/var ItemWorn $1;/var ItemType $2} {ITEM_ID_206}
/action {^Object: %0  Item type: %1} {/var ObjectName $0;/var ItemType $1} {ITEM_ID_206}
/action {^Object: %0  Worn: %1} {/var ObjectName $0;/var ItemWorn $1}
/action {This %0 casts:  %1} {/if {$0="Potion" || $0="Scroll"} {/var ItemCast $1;/var ItemPot 1} {/var ItemSpell $1}} {ITEM_ID_206}
/action {^Weight: %0 Value: %1 Level: %2 Size: %3} {/var ItemWeight $0;/var ItemValue $1;/var ItemLevel $2;/var ItemSize $3} {ITEM_ID_206}
/action {^You recognize the handiwork on the weapon:} {/var ItemAffectCount 0;/empty ItemAttr;/empty ItemDice;/empty ItemSpell;/empty ItemAC;/empty ItemIs;/empty ItemAvg;/empty ItemAffect1;/empty ItemValue;/empty ItemTreasure;/empty ItemAttr} {ITEM_ID_206}
/action {damage of %0} {/var ItemAvg $0} {ITEM_ID_206}
/action {per-round damage of %0} {/var ItemAvg $0} {ITEM_ID_206}
/action {per-round damage of %0.0} {/var ItemAvg $0} {ITEM_ID_206}
/action {^Durability: %0 Condition: %1} {/var ItemDurability $0;/var ItemCondition $1} {ITEM_ID_206}


/remark {/action {^   Affects: Permanent %0} {/math {ItemAffectCount} {$ItemAffectCount+1};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Stat))} {Permanent};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Num))} {$0}} {ITEM_ID_206}}
/remark {/action {^   Affects: Permanent %0} {/math {ItemAffectCount} {$ItemAffectCount+1};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Stat))} {Permanent};/var {temp1len} {@Len($0)};/var {temp1left} {@Left($0,1)};/var {temp1left} {@Upper($temp1left)};/math {temp1lenright} {$temp1len-1};/var {temp1right} {@Right($0,$temp1lenright)};/variable {temp1} {@ConCat($temp1left,$temp1right)};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Num))} {$temp1}} {ITEM_ID_206}}

/remark { 	Permanent(Detect Magic)		}
/action {^   Affects: Permanent %0} {/variable {permtemp} {$0};/math {ItemAffectCount} {$ItemAffectCount+1};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Stat))} {Permanent};/if {@WordCount($permtemp) >= 1} {/var {tempword1} {@Word($permtemp,1)};/variable {templen1} {@Len($tempword1)};/var {templeft1} {@Left($tempword1,1)};/var {templeft1} {@Upper($templeft1)};/math {templenright1} {$templen1 -1};/var {tempright1} {@Right($tempword1,$templenright1)};/variable {temp1} {@ConCat($templeft1,$tempright1)};};/if {@WordCount($permtemp) >= 2} {/var {tempword2} {@Word($permtemp,2)};/variable {templen2} {@Len($tempword2)};/var {templeft2} {@Left($tempword2,1)};/var {templeft2} {@Upper($templeft2)};/math {templenright2} {$templen2 -1};/var {tempright2} {@Right($tempword2,$templenright2)};/variable {temp2} {@ConCat($templeft2,$tempright2)};};/if {@WordCount($permtemp) >= 3} {/var {tempword3} {@Word($permtemp,3)};/variable {templen3} {@Len($tempword3)};/var {templeft3} {@Left($tempword3,1)};/var {templeft3} {@Upper($templeft3)};/math {templenright3} {$templen3 -1};/var {tempright3} {@Right($tempword3,$templenright3)};/variable {temp3} {@ConCat($templeft3,$tempright3)};};/if {@WordCount($permtemp) = 4} {/var {tempword4} {@Word($permtemp,4)};/variable {templen4} {@Len($tempword4)};/var {templeft4} {@Left($tempword4,1)};/var {templeft4} {@Upper($templeft4)};/math {templenright4} {$templen4 -1};/var {tempright4} {@Right($tempword4,$templenright4)};/variable {temp4} {@ConCat($templeft4,$tempright4)};};/empty tempy;/if {@WordCount($permtemp) >= 1} {/var {tempy} {@ConCat($tempy,$temp1)}};/if {@WordCount($permtemp) >= 2} {/var {tempy} {@ConCat($tempy, $temp2)}};/if {@WordCount($permtemp) >= 3} {/var {tempy} {@ConCat($tempy, $temp3)}};/if {@WordCount($permtemp) = 4} {/var {tempy} {@ConCat($tempy, $temp4)}};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Num))} {$tempy}} {ITEM_ID_206}

/remark {	Detect Magic(Permanent)		}
/remark {/action {^   Affects: Permanent %0} {/variable {permtemp} {$0};/math {ItemAffectCount} {$ItemAffectCount+1};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Num))} {Permanent};/if {@WordCount($permtemp) >= 1} {/var {tempword1} {@Word($permtemp,1)};/variable {templen1} {@Len($tempword1)};/var {templeft1} {@Left($tempword1,1)};/var {templeft1} {@Upper($templeft1)};/math {templenright1} {$templen1 -1};/var {tempright1} {@Right($tempword1,$templenright1)};/variable {temp1} {@ConCat($templeft1,$tempright1)};};/if {@WordCount($permtemp) >= 2} {/var {tempword2} {@Word($permtemp,2)};/variable {templen2} {@Len($tempword2)};/var {templeft2} {@Left($tempword2,1)};/var {templeft2} {@Upper($templeft2)};/math {templenright2} {$templen2 -1};/var {tempright2} {@Right($tempword2,$templenright2)};/variable {temp2} {@ConCat($templeft2,$tempright2)};};/if {@WordCount($permtemp) >= 3} {/var {tempword3} {@Word($permtemp,3)};/variable {templen3} {@Len($tempword3)};/var {templeft3} {@Left($tempword3,1)};/var {templeft3} {@Upper($templeft3)};/math {templenright3} {$templen3 -1};/var {tempright3} {@Right($tempword3,$templenright3)};/variable {temp3} {@ConCat($templeft3,$tempright3)};};/if {@WordCount($permtemp) = 4} {/var {tempword4} {@Word($permtemp,4)};/variable {templen4} {@Len($tempword4)};/var {templeft4} {@Left($tempword4,1)};/var {templeft4} {@Upper($templeft4)};/math {templenright4} {$templen4 -1};/var {tempright4} {@Right($tempword4,$templenright4)};/variable {temp4} {@ConCat($templeft4,$tempright4)};};/empty tempy;/if {@WordCount($permtemp) >= 1} {/var {tempy} {@ConCat($tempy,$temp1)}};/if {@WordCount($permtemp) >= 2} {/var {tempy} {@ConCat($tempy, $temp2)}};/if {@WordCount($permtemp) >= 3} {/var {tempy} {@ConCat($tempy, $temp3)}};/if {@WordCount($permtemp) = 4} {/var {tempy} {@ConCat($tempy, $temp4)}};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Stat))} {$tempy}} {ITEM_ID_206}}


/remark {/alias {fidb} {getid;f $BriefID} {ITEM_ID_206}}

/alias {finditemal} {/empty ItemAlign;/loop {0,@Math(@Len($ItemEffects)-1)} {/if {"@Mid($ItemEffects,$LoopCount,1)"="-"} {/var Temp @Mid($ItemEffects,@Math($LoopCount+1),1);/var ItemAlign @ConCat($ItemAlign,A$Temp )}}} {ITEM_ID_206}
/alias {finditemnots} {/empty ItemNots;/if {@IsEmpty($ItemAttr)=0} {/loop {0,@Math(@Len($ItemAttr)-1)} {/if {"@Mid($ItemAttr,$LoopCount,1)"="_"} {/var Temp @Mid($ItemAttr,@Math($LoopCount+1),1);/var {Tempo} {H};/if {$Temp=$Tempo} {/var ItemNots @ConCat($ItemNots,2$Temp )} {/var ItemNots @ConCat($ItemNots,!$Temp )}}}}} {ITEM_ID_206}
/alias {getid} {/empty {BriefID};/if {@IsEmpty($ObjectName)=0} {/var BriefID $ObjectName:};/if {$ItemLevel != 0} {/var BriefID @ConCat($BriefID, Lev($ItemLevel))};/if {@IsEmpty($ItemWorn)=0} {/var {len} {@Len($ItemWorn)};/if {$len>6} {/var {ItemWorn} {@Left($ItemWorn,5)};/var {ItemWorn} {@RTrim($ItemWorn)}};/var BriefID @ConCat($BriefID, Worn(@RTrim($ItemWorn)))};/if {@IsEmpty($ItemType)=0} {/var BriefID @ConCat($BriefID, Type($ItemType))};/if {@IsEmpty($ItemLight)=0} {/var BriefID @ConCat($BriefID, Hours($ItemLight))};/if {@IsEmpty($ItemMaxWeight)=0} {/var BriefID @ConCat($BriefID, Holds($ItemMaxWeight))};/if {@IsEmpty($ItemTreasure)=0} {/var BriefID @ConCat($BriefID, Value($ItemValue))};/if {@IsEmpty($ItemPot)=0} {/var BriefID @ConCat($BriefID, Casts($ItemCast))};/if {@IsEmpty($ItemDice)=0} {/var BriefID @ConCat($BriefID, Dice($ItemDice))};/if {@IsEmpty($ItemAvg)=0} {/var BriefID @ConCat($BriefID, Avg($ItemAvg))};/if {@IsEmpty($ItemSpell)=0} {/var BriefID @ConCat($BriefID, Casts($ItemSpell))};/if {@IsEmpty($ItemSpell)=0} {/var BriefID @ConCat($BriefID, Charges($ItemCurCharges of $ItemTotalCharges))};/if {@IsEmpty($ItemWandCasts)=0} {/var BriefID @ConCat($BriefID, Casts($ItemWandCasts))};/if {@IsEmpty($ItemWandCasts)=0} {/var BriefID @ConCat($BriefID, Charges($ItemCurCharges of $ItemTotalCharges))};/if {$ItemAffectCount > 0} {/loop {1,$ItemAffectCount} {/var BriefID {@ConCat($BriefID, @Var(@ConCat(ItemAffect,@ConCat($LoopCount,Stat)))(@Var(@ConCat(ItemAffect,@ConCat($LoopCount,Num)))))}}};finditemnots;/if {@IsEmpty($ItemNots) = 0} {/var BriefID @ConCat($BriefID, @RTrim($ItemNots))};finditemal;/if {@IsEmpty($ItemAlign) != 1} {/var BriefID @ConCat($BriefID, @RTrim($ItemAlign))};/if {@IsEmpty($ItemIs)=0} {/var BriefID @ConCat($BriefID, Specs($ItemIs))};/if {@IsEmpty($ItemAttr)=0} {/var BriefID @ConCat($BriefID, Class Restrictions($ItemAttr))};/if {@IsEmpty($ItemLag)=0} {/var BriefID @ConCat($BriefID, Rounds of Lag($ItemLag))};/if {@IsEmpty($ItemDurability)=0} {/var BriefID @ConCat($BriefID, Dur $ItemDurability)};/if {@IsEmpty($ItemCondition)=0} {/var BriefID @ConCat($BriefID, Con $ItemCondition)};/if {@IsEmpty($ItemKeys)=0} {/var BriefID @ConCat($BriefID, Holds($ItemKeys))};/if {@IsEmpty($ItemTrapDifficulty)=0} {/var BriefID @ConCat($BriefID, Difficulty($ItemTrapDifficulty))};/if {@IsEmpty($ItemTrap)=0} {/var BriefID @ConCat($BriefID, Trap is $ItemTrap)}} {ITEM_ID_206}
/alias {getid2} {/empty BriefID2;/if {@IsEmpty($ObjectName)=0} {/var BriefID2 $ObjectName:};/if {@IsEmpty($ItemLevel)= 0} {/var BriefID2 @ConCat($BriefID2, Lev($ItemLevel))};/if {@IsEmpty($ItemWorn)=0} {/var {len} {@Len($ItemWorn)};/if {$len>6} {/var {ItemWorn} {@Left($ItemWorn,5)};/var {ItemWorn} {@RTrim($ItemWorn)}};/var BriefID2 @ConCat($BriefID2, Worn(@RTrim($ItemWorn)))};/if {@IsEmpty($ItemType)=0} {/var BriefID2 @ConCat($BriefID2, Type($ItemType))};/if {@IsEmpty($ItemLight)=0} {/var BriefID2 @ConCat($BriefID2, Hours($ItemLight))};/if {@IsEmpty($ItemMaxWeight)=0} {/var BriefID2 @ConCat($BriefID2, Holds($ItemMaxWeight))};/if {@IsEmpty($ItemWeight)=0} {/var BriefID2 @ConCat($BriefID2, Weight($ItemWeight))};/if {@IsEmpty($ItemValue)=0} {/var BriefID2 @ConCat($BriefID2, Value($ItemValue))};/if {@IsEmpty($ItemSize)=0} {/var BriefID2 @ConCat($BriefID2, Size($ItemSize))};/if {@IsEmpty($ItemPot)=0} {/var BriefID2 @ConCat($BriefID2, Casts($ItemCast))};/if {@IsEmpty($ItemDice)=0} {/var BriefID2 @ConCat($BriefID2, Dice($ItemDice))};/if {@IsEmpty($ItemAvg)=0} {/var BriefID2 @ConCat($BriefID2, Avg($ItemAvg))};/if {@IsEmpty($ItemSpell)=0} {/var BriefID2 @ConCat($BriefID2, Casts($ItemSpell))};/if {@IsEmpty($ItemSpell)=0} {/var BriefID2 @ConCat($BriefID2, Charges($ItemCurCharges of $ItemTotalCharges))};/if {@IsEmpty($ItemWandCasts)=0} {/var BriefID2 @ConCat($BriefID2, Casts($ItemWandCasts))};/if {@IsEmpty($ItemWandCasts)=0} {/var BriefID2 @ConCat($BriefID2, Charges($ItemCurCharges of $ItemTotalCharges))};/if {$ItemAffectCount > 0} {/loop {1,$ItemAffectCount} {/var BriefID2 {@ConCat($BriefID2, @Var(@ConCat(ItemAffect,@ConCat($LoopCount,Stat)))(@Var(@ConCat(ItemAffect,@ConCat($LoopCount,Num)))))}}};finditemnots;/if {@IsEmpty($ItemNots) = 0} {/var BriefID2 @ConCat($BriefID2, @RTrim($ItemNots))};finditemal;/if {@IsEmpty($ItemAlign) != 1} {/var BriefID2 @ConCat($BriefID2, @RTrim($ItemAlign))};/if {@IsEmpty($ItemIs)=0} {/var BriefID2 @ConCat($BriefID2, Specs($ItemIs))};/if {@IsEmpty($ItemAttr)=0} {/var BriefID2 @ConCat($BriefID2, Class Restrictions($ItemAttr))};/if {@IsEmpty($ItemLag)=0} {/var BriefID2 @ConCat($BriefID2, Rounds of Lag($ItemLag))};/if {@IsEmpty($ItemDurability)=0} {/var BriefID2 @ConCat($BriefID2, Dur $ItemDurability)};/if {@IsEmpty($ItemCondition)=0} {/var BriefID2 @ConCat($BriefID2, Con $ItemCondition)};/if {@IsEmpty($ItemKeys)=0} {/var BriefID2 @ConCat($BriefID2, Holds($ItemKeys))};/if {@IsEmpty($ItemTrapDifficulty)=0} {/var BriefID2 @ConCat($BriefID2, Difficulty($ItemTrapDifficulty))};/if {@IsEmpty($ItemTrap)=0} {/var BriefID2 @ConCat($BriefID2, Trap is $ItemTrap)}} {ITEM_ID_206}
/alias {idreset} {/empty BriefID;/empty BriefID2;/empty ItemTrap;/empty ItemTrapDifficulty;/empty ItemLight;/empty ItemLag;/empty ItemKeys;/empty ItemWandCasts;/empty ItemTotalCharges;/empty ItemCurCharges;/empty ItemAvg;/empty ItemAttr;/empty ItemTreasure;/empty ItemLevel;/empty ItemAffectCount;/empty ItemAffect;/empty ItemDice;/empty ItemType;/empty ItemEffects;/empty ObjectName;/empty ItemIs;/empty ItemMaxWeight;/empty ItemWorn;/empty ItemCast;/empty ItemPot;/empty ItemSpell;/empty ItemLevel;/empty ItemValue;/empty ItemSize;/empty ItemWeight;/empty ItemDurability;/empty ItemCondition;/empty ItemAlign;/empty ItemNots} {ITEM_ID_206}
/alias {idapray %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {pray $BriefID2 $0}} {ITEM_ID_206}
/alias {idawhisp %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {whisper $0 $BriefID2}} {ITEM_ID_206}
/alias {idashout %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {shout $BriefID2 $0}} {ITEM_ID_206}
/alias {idaauc %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {auction $BriefID2 $0}} {ITEM_ID_206}
/alias {idach %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {ch $BriefID2 $0}} {ITEM_ID_206}
/alias {idaclan %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {clan $BriefID2 $0}} {ITEM_ID_206}
/alias {idaform %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {f $BriefID2 $0}} {ITEM_ID_206}
/alias {idagos %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {gos $BriefID2 $0}} {ITEM_ID_206}
/alias {idagui %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {gui $BriefID2 $0}} {ITEM_ID_206}
/alias {idame %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta() $BriefID2 $0 @AnsiReset()}}} {ITEM_ID_206}
/alias {idasay %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {say $BriefID2 $0}} {ITEM_ID_206}
/alias {idatell %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {tell $0 $BriefID2}} {ITEM_ID_206}
/alias {idawiz %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {wiz $BriefID2 $0}} {ITEM_ID_206}
/alias {idamusic %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {music $BriefID2 $0}} {ITEM_ID_206}
/alias {idaemote %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {emote emote's $BriefID2 $0}} {ITEM_ID_206}
/alias {idaquest %0} {getid2;/if {@IsEmpty($BriefID2)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {quest $BriefID2 $0}} {ITEM_ID_206}
/alias {idpray %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {pray $BriefID $0}} {ITEM_ID_206}
/alias {idwhisp %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {whisper $0 $BriefID}} {ITEM_ID_206}
/alias {idshout %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {shout $BriefID $0}} {ITEM_ID_206}
/alias {idauc %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {auction $BriefID $0}} {ITEM_ID_206}
/alias {idch %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {ch $BriefID $0}} {ITEM_ID_206}
/alias {idclan %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {clan $BriefID $0}} {ITEM_ID_206}
/alias {idform %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {f $BriefID $0}} {ITEM_ID_206}
/alias {idgos %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {gos $BriefID $0}} {ITEM_ID_206}
/alias {idgui %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {gui $BriefID $0}} {ITEM_ID_206}
/alias {idme %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta() $BriefID $0 @AnsiReset()}}} {ITEM_ID_206}
/alias {idsay %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {say $BriefID $0}} {ITEM_ID_206}
/alias {idtell %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {tell $0 $BriefID}} {ITEM_ID_206}
/alias {idwiz %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {wiz $BriefID $0}} {ITEM_ID_206}
/alias {idmusic %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {music $BriefID $0}} {ITEM_ID_206}
/alias {idemote %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {emote emote's $BriefID $0}} {ITEM_ID_206}
/alias {idquest %0} {getid;/if {@IsEmpty($BriefID)=1} {/showme {@Chr(10)@Chr(10)@AnsiReset()@AnsiBold()@ForeMagenta()ID Buffer Empty@AnsiReset()@Chr(10)}} {quest $BriefID $0}} {ITEM_ID_206}
/alias {idhelp} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Commands          @ForeBlue()- - - - - - - - -  @ForeCyan()What they do... @Chr(10)@ForeBlue()---------------------------------------------------------------------------------------------------@Chr(10)@ForeCyan()Idhelp            @ForeBlue()- - - - - - - - -  @ForeCyan()This listing@Chr(10)Idpray            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to the Pray Channel @Chr(10)IdCh              @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Chat Sessions @Chr(10)Idgos             @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Gossip Channel @Chr(10)Idwiz             @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Wiz Channel @Chr(10)Idclan            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Clan Channel @Chr(10)Idgui             @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Guild Channel @Chr(10)Idform            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to FormTalk @Chr(10)Idme              @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Your screen @Chr(10)Idauc             @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Auction Channel @Chr(10)Idemote           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Emote Channel @Chr(10)Idmusic           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Music Channel @Chr(10)Idquest           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to Quest Channel @Chr(10)Idsay             @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information people in your room @Chr(10)Idshout           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ID information to people in your zone @Chr(10)Idwhisp <person>  @ForeBlue()- - - - - - - - -  @ForeCyan()Whispers ID information to <person> @Chr(10)Idtell  <person>  @ForeBlue()- - - - - - - - -  @ForeCyan()Tells    ID information to <person> @Chr(10) @Chr(10)Idapray           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to the Pray Channel @Chr(10)IdaCh             @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Chat Sessions @Chr(10)Idagos            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Gossip Channel @Chr(10)Idawiz            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Wiz Channel @Chr(10)Idaclan           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Clan Channel @Chr(10)Idagui            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Guild Channel @Chr(10)Idaform           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to FormTalk @Chr(10)Idame             @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Your screen @Chr(10)Idaauc            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Auction Channel @Chr(10)Idaemote          @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Emote Channel @Chr(10)Idamusic          @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Music Channel @Chr(10)Idaquest          @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to Quest Channel @Chr(10)Idasay            @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information people in your room @Chr(10)Idashout          @ForeBlue()- - - - - - - - -  @ForeCyan()Displays ALL ID information to people in your zone @Chr(10)Idawhisp <person> @ForeBlue()- - - - - - - - -  @ForeCyan()Whispers ALL ID information to <person> @Chr(10)Idatell  <person> @ForeBlue()- - - - - - - - -  @ForeCyan()Tells    ALL ID information to <person> @Chr(10) @Chr(10)Idreset           @ForeBlue()- - - - - - - - -  @ForeCyan()Resets Item ID Buffer @Chr(10)@Chr(10)Idon              @ForeBlue()- - - - - - - - -  @ForeCyan()Enable  Item ID @Chr(10)Idoff             @ForeBlue()- - - - - - - - -  @ForeCyan()Disable Item ID @Chr(10)Idabout           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays information about ItemID @Chr(10)Idversion         @ForeBlue()- - - - - - - - -  @ForeCyan()Displays Current Item ID Version@Chr(10)@AnsiReset()}} {ITEM_ID_206}/alias {listlookup} {/loop {1,$AffectLookup} {/if {@IsEmpty(@GetArray(Affects,$LoopCount,1))=0} {room $LoopCount: @GetArray(Affects,$LoopCount,1),@GetArray(Affects,$LoopCount,2)}}} {ITEM_ID_206}
/alias {lookupaff %0} {/empty Temp;/loop {1,$AffectLookup} {/if {@IsEmpty(@GetArray(Affects,$LoopCount,1))=0} {/if {"@GetArray(Affects,$LoopCount,1)" = $0} {/varTemp @GetArray(Affects,$LoopCount,2)}}};/if {@IsEmpty($Temp)}{/var Temp $0}} {ITEM_ID_206}
/alias {teidb %0} {/var BriefID {$ObjectName:};/if {$ItemLevel != 0} {/var BriefID @ConCat($BriefID, Lev($ItemLevel))};/var BriefID @ConCat($BriefID, Worn(@Lower(@RTrim($ItemWorn))));/if {@IsEmpty($ItemAC)=0} {/var BriefID @ConCat($BriefID, Ac($ItemAC))};/if {@IsEmpty($ItemDice)=0} {/var BriefID @ConCat($BriefID, $ItemDice)};/if {@IsEmpty($ItemSpell)=0} {/var BriefID @ConCat($BriefID, Spell($ItemSpell));/var BriefID @ConCat($BriefID, Lvl($ItemSpellLevel));/var BriefID @ConCat($BriefID, Charges($ItemCurCharges of $ItemTotalCharges))};finditemnots;/if {@IsEmpty($ItemNots) = 0} {/var BriefID @ConCat($BriefID, @RTrim($ItemNots))};finditemal;/if {@IsEmpty($ItemAlign) != 1} {/var BriefID @ConCat($BriefID, @RTrim($ItemAlign))};/var BriefID @ConCat($BriefID, Cond($ItemCondition));te $0 $BriefID} {ITEM_ID_206}
/alias {idoff} {/disablegroup ITEM_ID_206;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Item ID is Now @ForeRed()OFF@AnsiReset()}} {ITEM_ID_206CONFIG}
/alias {idon} {/enablegroup ITEM_ID_206;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Item ID is Now @ForeRed()ON@AnsiReset()}} {ITEM_ID_206CONFIG}
/alias {idversion} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Cypher Item ID $ITEMIDVERSION @Chr(10)@AnsiReset()}} {ITEM_ID_206}
/alias {idabout} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Cypher Item ID $ITEMIDVERSION @Chr(10)Released on $ITEMIDRELEASE @Chr(10)Created By: Cypher (Jason Stevens) @Chr(10)Homepage: http://www.wizardofthenet.com @Chr(10)Email: jay@Chr(64)wizardofthenet.com @Chr(10)@AnsiReset()}} {ITEM_ID_206}
idreset