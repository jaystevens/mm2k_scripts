/alias {statsay}{/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {say $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}
/alias {stattell %0}{/variable {stattell} {$0};/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {tell $stattell $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}
/alias {statform}{/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {ft $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}
/alias {statclan}{/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {clan $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}
/action {, for an average per-round damage of %0} {/var ItemAvg $0} {Item ID}
/action {Armor Class: %0 %1} {/var armorclass $0} {report}
/action {Class Restrictions: %0} {/var ItemAttr $0} {Item ID}
/action {Cypher tells the form, 'stab %0'} {bs $0} {}
/action {Do you have an ANSI capable terminal? (Y/N/help):} {y} {}
/action {Hitroll: %0 %1} {/var hitroll $0} {report}
/action {Item type: Treasure} {/var ItemTreasure 1} {Item ID}
/action {Level: %0} {/var ItemLevel $0} {Item ID}
/action {Save vs Spells: %0 %1} {/var svs $0} {report}
/action {You experience an odd, unsettled feeling as %0 meets %1 end.} {say The lost soul of a $0 has just been made} {}
/action {You feel informed:} {/var ItemAffectCount 0;/empty ItemAttr;/empty ItemDice;/empty ItemSpell;/empty ItemAC;/empty ItemIs;/empty ItemAvg;/empty ItemAffect1;/empty ItemValue;/empty ItemTreasure;/empty ItemMaxWeight;/empty ItemAttr;/empty ItemPot} {Item ID}
/action {You have been idle} {emote isn't ready yet.} {}
/action {You sense something is concealed} {'Is There a Relic on this mob?} {}
/action {^   Affects: %0 by %1} {/math {ItemAffectCount} {$ItemAffectCount + 1};/var {@ConCat(ItemAffect,$ItemAffectCount)} {$0 by $1};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Stat))} {$0};/var {@ConCat(ItemAffect,@ConCat($ItemAffectCount,Num))} {$1}} {Item ID}
/action {^A sly-looking man is standing here in jester's clothing} {tag joker} {}
/action {^Class Restrictions: %0} {/var ItemAttr $0} {Item ID}
/action {^Damage Dice is : %0D%1,} {/var ItemDice {$0d$1}} {Item ID}
/action {^Item Type: %0   Effects: %1} {/var ItemType $0;/var ItemEffects $1} {Item ID}
/action {^Item is: %0} {/var ItemIs $0} {Item ID}
/action {^Maximum weight stored: %0} {/var ItemMaxWeight $0} {Item ID}
/action {^Object: %0  Item type: %1} {/var ObjectName $0;/var ItemEquip $1} {Item ID}
/action {^Object: %0  Worn: %1} {/var ObjectName $0;/var ItemEquip $1} {Item ID}
/action {^This Potion casts:  %0} {/var ItemCast $0;/var ItemPot 1} {Item ID}
/action {^This Staff casts:  %1} {/var ItemSpell $1} {Item ID}
/action {^Weight: %0 Value: %1 Level: %2 Size: %3} {/var ItemWeight $0;/var ItemValue $1;/var ItemLevel $2} {Item ID}
/action {^You are hungry} {get rat all;eat rat} {}
/action {^You are thirsty} {/3 dri flask} {}
/action {^You recognize the handiwork on the weapon:} {/var ItemAffectCount 0;/empty ItemAttr;/empty ItemDice;/empty ItemSpell;/empty ItemAC;/empty ItemIs;/empty ItemAvg;/empty ItemAffect1;/empty ItemValue;/empty ItemTreasure;/empty ItemAttr} {Item ID}
/action {damage of %0} {/var ItemAvg $1} {Item ID}
/action {per-round damage of %0} {/var ItemAvg $0} {Item ID}
/action {per-round damage of %0.0} {/var ItemAvg $0} {Item ID}
/action {sanctuary                makes you sanctified} {/variable {sancstatus} {On} {statbar}} {statbar}
/action {y/n} {y} {}
/alias {11} {/10 l $9} {}
/alias {2} {/10 l $9;/10 l 2.$9} {}
/alias {2selg} {e;s;s;s;s;s;s;s;s;e;e;s;e;e;s;e;e;e;e;n;n;e;e;e;e;e;e;e;e;e;e;e;s;u;} {}
/alias {2zyx} {n;e;e;n;u;n;n;open gate;n;n;n;n;n;n;n;w;w;w;w;w;n;n;e;e;e;e;e;e;e;n;e;n;n;n;w;n;e;e;n;n;w;n;n;n;n;open door;n;close door to south;e;n;n;n;n;n;w;} {}
/alias {3} {/10 l $9;/10 l 2.$9;/10 l 3.$9} {}
/alias {4} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9} {}
/alias {5} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9;/10 l 5.$9} {}
/alias {6} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9;/10 l 5.$9;/10 l 6.$9} {}
/alias {7} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9;/10 l 5.$9;/10 l 6.$9;/10 l 7.$9} {}
/alias {Fish} {s;e;e;e;s;e;s;s;s;s;w;w;s;s;w;w;w;w;w;w;w;n;n;w;w;w;s;s;w;w;n;n;w;w;w;w;s;s;s} {}
/alias {Packup} {put all.trans poll;put all.true velv;put all.ring bag;put all.spider bag;put tome bag;put ikrah bag;put tarnished bag;put owl bag} {}
/alias {Spellup} {emote needs a bit of help from the SpElLuP GoDs before he is ready for combat!!;c infra;c invis;c detect invis;c lev;c stone;emote has been blessed, and is ready to do battle!} {}
/alias {att} {rem orn;wear sword} {}
/alias {bandit2} {;n;n;n;w;s;w;w;n;e;n;w;n;n;e;e;e;e;n;e;e;e;e;e;e} {}
/alias {bandits} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;n;n;n;n;n;n;n;w;u;n;w;w;n;n;e;e;e;n;n;y} {}
/alias {bb} {c bli $8} {}
/alias {bees} {n;e;e;e;e;e;e;e;e;e;e;e;e;n;n;n;n;e;e;n;u;u;y} {}
/alias {bsm} {wear clo;rem ada;wear clo;wear vol;rem carm;wear met;wear cares;sneak} {}
/alias {ch %7} {/chata @Var(lightblue)$7@Var(lightred)} {}
/alias {cows} {n;e;e;e;e;e;e;e;e;e;e;e;n;n;n;n;n;n;n;w;w;n;n;w;w;w;w;open gate;n;e;e} {}
/alias {crystal} {n;n;e;e;e;n;n;n;n;n;n;w;w;n;w;n;n;w;w;s;s;w;s;w;w;w;w;n;w;w;w;w;w} {}
/alias {despair} {n;e;e;n;u;s;open gate;s;s;s;s;s;s;s;w;s;s;e;e;e;s;e;e;u;u;n;n;e;pick door e;open door e;e;close door w;open door e;e;close door w;u;s;sea;pick tap; open tap;} {}
/alias {dshai} {s;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;n;n;n;n;w;n;w;n;n;n;n;e;e;} {}
/alias {dshaicpk} {s;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;n;n;n;n;w;n;w;n;n;n;n;e;e;e;e;e;n;n;n;u;n;n;w;w;u;s;e;e;n;n;u;s;u;s;s;s;u;u;u;u;n;n;u;u;u;u;n;u;e;e;s;s;w;w;u;e;e;} {}
/alias {dshaigrove} {s;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;n;n;n;n;w;n;w;n;n;n;n;e;e;e;e;e;n;n;n;u;n;n;w;w;u;s;e;e;n;n;u;s;u;} {}
/alias {dwarf} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;e;n;n;e;n;e;u;u;w;w;u;e;u;n;d;d;d;e;d;d;s;e;d;w;d} {}
/alias {elftrash} {n;e;e;n;u;e;pick gate; open gate; e;e;e;e;n;e;e;s;s;} {}
/alias {erinyes} {n;e;e;n;u;s;open gate;s;s;s;s;s;s;s;w;s;s;e;e;e;s;e;e;u;u;n;n;e;pick door e;open door e;e;close door w;open door e;e;close door w;u;s;sea;pick tap; open tap;} {}
/alias {f} {track $8} {}
/alias {fidb} {getid;f $BriefID} {Item ID}
/alias {finditemal} {/empty ItemAlign;/loop {0,@Math(@Len($ItemEffects)-1)} {/if {"@Mid($ItemEffects,$LoopCount,1)"="-"} {/var Temp @Mid($ItemEffects,@Math($LoopCount+1),1);/var ItemAlign @ConCat($ItemAlign,A$Temp )}}} {Item ID}
/alias {finditemnots} {/empty ItemNots;/if {@IsEmpty($ItemAttr)=0} {/loop {0,@Math(@Len($ItemAttr)-1)} {/if {"@Mid($ItemAttr,$LoopCount,1)"="_"} {/var Temp @Mid($ItemAttr,@Math($LoopCount+1),1);/var {Tempo} {H};/if {$Temp=$Tempo} {/var ItemNots @ConCat($ItemNots,2$Temp )} {/var ItemNots @ConCat($ItemNots,!$Temp )}}}}} {Item ID}
/alias {fort} {n;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;n;e;e;s;e;e;s;s;s;s;s;s;y;s;e;e;e;s;e;s;s;s;s;w;w;s;s;w;w;w;w;w;w;n;e;n;w;w;w;s;w;w;n;w;w;w;w;s;s;s;pick gate s; open gate s; s; close gate} {}
/alias {g} {scan;scan} {}
/alias {gamb} {l1;get rack all.corp} {}
/alias {gazebo} {n;e;e;n;u;e;pick gate; open gate; e;e;n;e;e;n;n;n;e;e;n;} {}
/alias {getid} {/var BriefID $ObjectName:;/if {$ItemLevel != 0} {/var BriefID @ConCat($BriefID, Lev($ItemLevel))};/var BriefID @ConCat($BriefID, Loc/Type(@Lower(@RTrim($ItemEquip))));/if {@IsEmpty($ItemMaxWeight)=0} {/var BriefID @ConCat($BriefID, Holds($ItemMaxWeight))};/if {@IsEmpty($ItemTreasure)=0} {/var BriefID @ConCat($BriefID, Value($ItemValue))};/if {@IsEmpty($ItemPot)=0} {/var BriefID @ConCat($BriefID, Casts($ItemCast))};/if {@IsEmpty($ItemDice)=0} {/var BriefID @ConCat($BriefID, Dice($ItemDice))};/if {@IsEmpty($ItemAvg)=0} {/var BriefID @ConCat($BriefID, Avg($ItemAvg))};/if {@IsEmpty($ItemSpell)=0} {/var BriefID @ConCat($BriefID, Spell($ItemSpell))};/if {@IsEmpty($ItemSpell)=0} {/var BriefID @ConCat($BriefID, Charges($ItemCurCharges of $ItemTotalCharges))};/if {$ItemAffectCount > 0} {/loop {1,$ItemAffectCount} {/var BriefID {@ConCat($BriefID, @Var(@ConCat(ItemAffect,@ConCat($LoopCount,Stat)))(@Var(@ConCat(ItemAffect,@ConCat($LoopCount,Num)))))}}};finditemnots;/if {@IsEmpty($ItemNots) = 0} {/var BriefID @ConCat($BriefID, @RTrim($ItemNots))};finditemal;/if {@IsEmpty($ItemAlign) != 1} {/var BriefID @ConCat($BriefID, @RTrim($ItemAlign))};/if {@IsEmpty($ItemIs)=0} {/var BriefID@ConCat($BriefID, Specs($ItemIs))};/if {@IsEmpty($ItemAttr)=0} {/var BriefID @ConCat($BriefID, Class Restrictions($ItemAttr))}} {Item ID}
/alias {gigantic} {n;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;n;e;e;s;e;e;s;s;s;s;s;s;y;s;e;e;e;s;e;s;s;s;s;w;w;s;s;w;w;w;w;w;w;n;e;n;w;w;} {}
/alias {golem} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;e;d;n;e;e;n;n;n;n;w;w;u;w;d;n;n;u} {}
/alias {gorilla} {n;w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;n;n;e;u;w;w;u;u;u;n} {}
/alias {hannah} {n;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;e;e;e;s;e;u} {}
/alias {hive} {n;e;e;e;e;e;e;e;e;e;e;e;n;n;n;n;e;e;n;u;u;y} {}
/alias {idauc} {getid;auction $BriefID} {Item ID}
/alias {idch} {getid;ch $BriefID} {Item ID}
/alias {idclan} {getid;clan $BriefID} {Item ID}
/alias {idform} {getid;ft $BriefID} {Item ID}
/alias {idgos} {getid;gos $BriefID} {Item ID}
/alias {idgui} {getid;gui $BriefID} {Item ID}
/alias {idhelp} {/showme {@Chr(10)@Var(lightred)Commands  - - - - - -  What they do... @Chr(10)-------------------------------------------------------@Chr(10)@Var(purple)Idhelp@Var(lightred)  - - - - - - -  @Var(green)This listing@Chr(10)@Var(purple)Chidb@Var(lightred)  - - - - - - - - @Var(green)Displays ID informationto Chat Sessions@Chr(10)@Var(purple)Idclan@Var(lightred)  - - - - - - - - @Var(green)Displays ID information to Clan Channel@Chr(10)@Var(purple)Idform@Var(lightred)  - - - - - - - -  @Var(green)Displays ID information to FormTalk @Chr(10)@Var(purple)Idme@Var(lightred)  - - - - - - - - - @Var(green)Displays ID information to Your screen @Chr(10)@Var(purple)Idsay@Var(lightred)  - - - - - - -  @Var(green)Says ID information people in your room @Chr(10)@Var(purple)Idauc@Var(lightred)  - - - - - - - - @Var(green)Displays ID information to Auction Channel @Chr(10)@Var(purple)}} {Item ID}
/alias {idme} {getid;/showme $BriefID} {Item ID}
/alias {idsay} {getid;say $BriefID} {Item ID}
/alias {idtell %0} {getid;tell $0 $BriefID} {Item ID}
/alias {idwiz} {getid;wiz $BriefID} {Item ID}
/alias {ikrah} {n;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;s;s;e;e;s;s;e;e;e;s;s;s;w} {}
/alias {j} {k $8} {}
/alias {kaelon} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;w;w;w;s;w;u;w;s;e;u;y;} {}
/alias {l1} {sea cor;get gol all.cor} {}
/alias {l2} {sea cor;sea 2.cor;get gol all.cor} {}
/alias {l3} {sea cor;sea 2.cor;sea 3.cor;get gol all.cor} {}
/alias {l4} {sea cor;sea 2.cor;sea 3.cor;sea 4.cor;get gol all.cor} {}
/alias {laby} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;n;n;n;n;n;n;n;w;u;n;w;w;n;n;e;e;e;n} {}
/alias {lava} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;n;n;n;n;n;n;n;n;w;u;n;w;w;n;n;e;e;e;e;e;e;s;s;e;e;n;y} {}
/alias {listlookup} {/loop {1,$AffectLookup} {/if {@IsEmpty(@GetArray(Affects,$LoopCount,1))=0} {room $LoopCount: @GetArray(Affects,$LoopCount,1),@GetArray(Affects,$LoopCount,2)}}} {Item ID}
/alias {lizwake} {ord liz wake;ord 2.liz wake;ord 3.liz wake;ord 4.liz wake;ord 5.liz wake;ord 6.liz wake;ord 7.liz wake;ord 8.liz wake} {}
/alias {lookupaff %0} {/empty Temp;/loop {1,$AffectLookup} {/if {@IsEmpty(@GetArray(Affects,$LoopCount,1))=0} {/if {"@GetArray(Affects,$LoopCount,1)" = $0} {/varTemp @GetArray(Affects,$LoopCount,2)}}};/if {@IsEmpty($Temp)}{/var Temp $0}} {Item ID}
/alias {masou} {n;e;e;n;u;n;n;open gate;n;e;e;d;open gate;n;d;e;n;d;n;n;e;s;e;e;n;n;w;n;w;n;n;e} {}
/alias {mau} {n;e;e;n;u;n;n;open gate;n;e;e;d;open gate;n;d;e;n;d;n;n;e;s;e;n;n;w;n;e;n;w;w;n;e;} {}
/alias {mm} {wear ada;rem clo;wear ada;wear blood;wear leg;rem silv;wear carm} {}
/alias {mystic} {n;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;n;e;e;s;e;e;s;s;s;s;s;s;y;s;w;} {}
/alias {nbl} {s;w;w;w;w;w;w;w;w;w;w;w;w;s;s;e;e;s;s;open wall w} {}
/alias {p %5} {/10 l $5} {}
/alias {packitup} {put all.true ves;put all.pot bask;put all.dar pur;put all.opa trop;put all.trap 5.pur;get flask all;get aru all} {}
/alias {packup} {c detect invis;put all.true ves;put all.opal pur;put all.pot bask;put all.trap trop;put all.spid 2.pur;put leg 2.pur;put all.rat 3.pur;put all 2.ves;get dagger all;get all.spark bask;get flask all} {}
/alias {phant} {n;e;e;e;e;e;n;n;n;n;n;pick grate;open grate;d;y;n;n;w;w;w;n;n;n;w;u;u;u;} {}
/alias {pit1} {n;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;n;e;e;s;e;e;s;s;s;s;s;s;y} {}
/alias {pit2} {s;e;e;e;e;e;e;e;e;e;s;s;s;s;e;e;s;s;s;s;s;s;s;s;w;w;w;w;w;s;s;s;s;s;s;s;w;w;w;w;w;w;w;n;n;w;w;w;w;w;w;n;w;w;w;w;w;w;s;w;w;w;w;w;w;w;w;w;s;s;s;s;s;s;s;s;pick gate s;steal key guard;open gate s;s;y} {}
/alias {pk %8} {/alias {f} {track $8};/alias {j} {k $8};/macro {keypdF2} {throw dar};/alias {bb} {c bli $8};/alias {g} {scan;scan} } {}
/alias {pkspell} {stand;sn;get rose all;rem rage;wear rose;c bles;get silv bask;q silv;c armor;c lev;c det invis;c sense;c p f g;c p f e;c sanc;rem rose;wear rage} {}
/alias {precarious} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;n;n} {}
/alias {prowl} {s;w;w;w;w;w;s;s;s;e;e;e;e;e;n;open grating;d;close grating;scan;} {}
/alias {redwood} {put all 2.belt;put all vest;put all belt;e;s;s;s;s;s;s;d;d;d;d;s;e;e;e;e;e;n;n;n;n;n;n;e;e;e;e;e;e;e;e;e;e;n;n;n;n;open leaf;d;d;d;n;n;n;n;n;n;n;d;y;steal key badger;u} {}
/alias {reeq} {wear soul;rem spid;wear soul;wear grea;wear vasp;put spid 2.pur;put spid 2.pur;put leg 2.pur;put tal 2.pur} {}
/alias {relik %9} {/alias {11} {/10 l $9};/alias {2} {/10 l $9;/10 l 2.$9};/alias {3} {/10 l $9;/10 l 2.$9;/10 l 3.$9};/alias {4} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9};/alias {5} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9;/10 l 5.$9};/alias {6} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9;/10 l 5.$9;/10 l 6.$9};/alias {7} {/10 l $9;/10 l 2.$9;/10 l 3.$9;/10 l 4.$9;/10 l 5.$9;/10 l 6.$9;/10 l 7.$9} {}} {}
/alias {roam} {n;e;e;e;e;e;n;n;n;n;n;pick grate;open grate;d;y;s;s;} {}
/alias {rogue} {n;e;e;e;e;e;e;e;e;e;e;e;n;n;n;n;n;n;n;e;e;n;n;w;w;e;n;w;n;n;} {}
/alias {rogues} {n;e;e;e;e;e;e;e;e;e;e;e;n;n;n;n;n;n;n;e;e;n;n;w;w;e;n;w;n;n;} {}
/alias {savannah} {n;n;e;e;e;n;n;n;n;n;n;w;w;n;w;n;n;w;w;w;w;w;n;w;w;w;w;n;u} {}
/alias {searchall} {sea co;sea 2.co;sea 3.co;sea 4.co;sea 5.co;sea 6.co;sea 7.co;sea 8.co;sea 9.co;sea 10.co} {}
/alias {selg} {e;s;s;s;s;s;s;s;s;e;e;s;e;e;s;e;e;e;e;n;n;e;e;e;} {}
/alias {sexplore} {s;w;w;w;w;w;s;s;s;e;e;e;e;e;n;open grating;d;close grating;s;y;e;e;s;e;e;} {}
/alias {shive} {n;e;e;e;e;e;e;e;e;e;e;e;e;n;n;n;n;n;e;e;n;u;u;y} {}
/alias {sice} {n;e;e;n;u;u;n;n;n;n;} {}
/alias {socean} {n;e;e;n;u;s;open gate;s;s;s;s;s;s;s;w;s;s;} {}
/alias {soceana} {n;e;e;n;u;s;open gate;s;s;s;s;s;s;s;w;s;s;} {}
/alias {sorrow} {n;e;e;n;u;u;n;n;n;n;} {}
/alias {speedcabbot} {s;w;w;w;w;w;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;w;w;w;s;s;} {}
/alias {speedcloud} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;w;w;w;s;w;u;w;s;e;u;y;n;u;n;u;n;n;n;n;n;d;} {}
/alias {speeddwarf} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;e;n;n;e;n;e;u;u;w;w;u;e;u;n;d;d;d;e;d;d;s;e;d;w;d} {}
/alias {speedgiant} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;} {}
/alias {speedglass} {w;n;n;n;n;n;n;e;e;e;n;n;n;n;n;n;n;w;w;n;w;n;n;n;n;s;e;n;n;y;n;n;n;n;n;n;hold hole;steal key 2.gate;unlock gate up;open gate up;up;close gate d;lock gate d;n;u;e;e;e;e;e;n;n;n;n;n;n;n;n;w;w;w;w;w;w;open door s;s;l glass} {}
/alias {speedglass2} {e;n;n;n;n;n;w;w;w;w;w;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;e;e;e;n;n;n;n;n;n;n;w;w;n;w;n;n;n;n;s;e;n;n;y;n;n;n;n;n;n;hold hole;steal key 2.gate;unlock gate up;open gate up;up;close gate d;lock gate d;n;u;e;e;e;e;e;n;n;n;n;n;n;n;n;w;w;w;w;w;w;open door s;s;l glass} {}
/alias {speedgrove} {n;e;e;n;u;n;n;open gate;n;n;n;n;n;n;n;w;w;w;w;w;n;n;e;e;e;e;e;e;e;} {}
/alias {speedhannah} {n;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;e;e;e;s;e;u} {}
/alias {speedikrah} {n;e;e;e;e;e;e;e;e;e;e;e;s;e;e;e;s;s;e;e;s;s;e;e;e;s;s;s;w} {}
/alias {speedsprite} {w;n;n;n;n;n;n;n;n;n;n;w;n;n;n;n;n;n;n;u;n;n;d;n;d;n;d;e;n;u;n;n;n;n;w;w;n;u;w;u;u;n;w;w;w;s;w;u;w;s;e;u;y;} {}
/alias {speedswamp} {s;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;s;s;s;s;w;w;w;w;w;w;w;w;n;n;} {}
/alias {speedtiger} {n;e;e;e;e;e;n;n;n;n;n;pick grate;open grate;d;y;n;n;w;w;w;n;n;n;w;u;u;u;} {}
/alias {speedtree} {n;e;e;e;e;e;e;e;e;e;e;e;n;n;n;n;n;n;n;e;e;n;n;w;w;e;n;w;n;n;} {}
/alias {spellup} {;get rose all;rem met;wear rose;c san;c bless;c p f g;c p f e;c p f c;c sen;c det inv;c det ali;c lev;c bre;rem rose;wear met} {}
/alias {sstory} {n;e;e;n;u;u;s;s;s;e;s;s;s;s;s;s;s;u;s;s;s;} {}
/alias {steq} {get spid 2.pur;get spid 2.pur;get leg 2.pur;get tal 2.pur;wear spid;rem soul;wear spid;wear leg;wear tal} {}
/alias {swraith} {n;e;e;n;u;n;n;open gate;n;e;e;d;open gate;n;d;e;n;d;n;n;e;s;s;s;e;e;e;open slab;e} {}
/alias {teidb %0} {/var BriefID {$ObjectName:};/if {$ItemLevel != 0} {/var BriefID @ConCat($BriefID, Lev($ItemLevel))};/var BriefID @ConCat($BriefID, Loc(@Lower(@RTrim($ItemEquip))));/if {@IsEmpty($ItemAC)=0} {/var BriefID @ConCat($BriefID, Ac($ItemAC))};/if {@IsEmpty($ItemDice)=0} {/var BriefID @ConCat($BriefID, $ItemDice)};/if {@IsEmpty($ItemSpell)=0} {/var BriefID @ConCat($BriefID, Spell($ItemSpell));/var BriefID @ConCat($BriefID, Lvl($ItemSpellLevel));/var BriefID @ConCat($BriefID, Charges($ItemCurCharges of $ItemTotalCharges))};finditemnots;/if {@IsEmpty($ItemNots) = 0} {/var BriefID @ConCat($BriefID, @RTrim($ItemNots))};finditemal;/if {@IsEmpty($ItemAlign) != 1} {/var BriefID @ConCat($BriefID, @RTrim($ItemAlign))};/var BriefID @ConCat($BriefID, Cond($ItemCondition));te $0 $BriefID} {Item ID}
/alias {trudge} {s;w;w;w;w;w;s;s;s;e;e;e;e;e;n;open grating;d;close grating;n;y;w;n;n;w;n;scan;} {}
/alias {vak} {s;w;w;w;w;w;s;s;s;e;e;e;e;e;s;open grating;d;close grating;s;y;e;e;s;e;e;open grating;s;close grating;s;s;s;u;u;u;n;n;} {}
/alias {valk} {s;w;w;w;w;w;s;s;s;e;e;e;e;e;n;open grating;d;close grating;s;y;e;e;s;e;e;open grating;s;close grating;s;s;s;u;u;u;n;n;} {}
/alias {vid} {n;e;e;n;u;e;pick gate; open gate; e;e;e;e;n;e;e;s;s;open trash;d;e;e;e;n;n;e;s;s;e;} {}
/alias {willow} {n;e;e;n;u;n;n;open gate;n;n;n;n;n;n;n;w;w;w;w;w;n;n;e;e;e;e;e;e;e;} {}
/macro {F2} {throw dar} {}
/variable {armorclass} {25} {}
/variable {bblue} {[0;34m} {Color}
/variable {bcyan} {[0;36m} {Color}
/variable {bgray} {[1;30m} {Color}
/variable {bgreen} {[0;32m} {Color}
/variable {bks} {} {Color}
/variable {black} {[0m[1;30m} {Color}
/variable {blue} {[1;34m} {Color}
/variable {bpurple} {[0;35m} {Color}
/variable {bred} {[1;31m} {Color}
/variable {briwhite} {[1;37m} {Color}
/variable {bwhite} {[1;37m} {Color}
/variable {colset} {[0m} {Color}
/variable {cyan} {[1;36m} {Color}
/variable {darkblue} {[0;34m} {Color}
/variable {darkcyan} {[0;36m} {Color}
/variable {darkgray} {[1;30m} {Color}
/variable {darkgreen} {[0;32m} {Color}
/variable {darkpurp} {[0;35m} {Color}
/variable {darkred} {[0;31m} {Color}
/variable {darkyellow} {[33m} {Color}
/variable {green} {[1;32m} {Color}
/variable {hitroll} {92} {}
/variable {lightblue} {[1;34m} {Color}
/variable {lightcyan} {[1;36m} {Color}
/variable {lightgreen} {[1;32m} {Color}
/variable {lightpurp} {[1;35m} {Color}
/variable {lightred} {[1;31m} {Color}
/variable {lightyellow} {[1;33m} {Color}
/variable {mestatus} {Standing} {stabar}
/variable {purple} {[1;35m} {Color}
/variable {red} {[0;31m} {Color}
/variable {svs} {-6} {}
/variable {white} {[0;37m} {Color}
/variable {yellow} {[1;33m} {Color}
/baritem {Relics} {Relic: $Relics} {1} {8} {11} {0} {statbar}
/barseparator {relic} {9} {statbar}
/baritem {Orbs} {Orbs: $Orbs} {10} {8} {11} {0} {statbar}
/barseparator {orbs} {17} {statbar}
/baritem {Gems} {Gems: $Gems} {18} {8} {11} {0} {statbar}
/barseparator {gems} {25} {statbar}
/baritem {Sancstat} {Sanc:$sancstatus} {26} {8} {10} {0} {statbar}
/barseparator {sanc} {34} {statbar}
/baritem {sumstat} {Sum: $sumstatus} {35} {8} {15} {0} {statbar}
/barseparator {sum} {43} {statbar}
/baritem {mestat} {$mestatus} {44} {8} {11} {0} {statbar}
/barseparator {me} {52} {statbar}
/baritem {tickstatus} {Tick: $tickstatus} {53} {10} {12} {0} {statbar_tick}
/barseparator {tick} {63} {statbar_tick}
/baritem {target} {KILL: $8} {64} {8} {13} {0} {statbar}
/action {You will remain here for 1 more tick.} {/variable {tick} {74};/enablebaritem tickstatus;/enablebaritem tick;/enablegroup tickevent} {statbar_tick}
/event {tick} {1} {/math {tick} {$tick-1};/if {$tick=0} {/variable {tickstatus} {TICK};/disablegroup tickevent;/variable {tick2} {0};/enablegroup tick2event} {/variable {tickstatus} {$tick}}} {tickevent}
/event {tick2} {1} {/math {tick2} {$tick2+1};/if {$tick2=3} {/disablebaritem tickstatus;/disablebaritem tick;/disablegroup tick2event}} {tick2event}
/disablegroup tickevent
/disablegroup tick2event
/disablebaritem tickstatus
/disablebaritem tick
/variable {tickstatus} {74} {statbar}
/alias {duemail %0} {mail $0;You Have not paid your clan dues.;Please mail me 1 silver bar ASAP.;@Chr(10);-Gerrerd-;\@s} {duemailer}
/variable {mestatus} {Standing} {statbar}
/variable {sumstatus} {OFF} {statbar}
/variable {sancstatus} {Off} {statbar}
/variable {Relics} {0} {statbar}
/variable {Orbs} {0} {statbar}
/variable {Gems} {0} {statbar}
/alias {resetme} {/variable {mestatus} {Standing} {statbar}} {statbar}
/alias {resetfinds} {/variable {Relics} {0} {statbar};/variable {Orbs} {0} {statbar};/variable {Gems} {0} {statbar}} {statbar}
/alias {resetsanc} {/variable {sancstatus} {Off} {statbar}} {statbar}
/action {A white aura momentarily surrounds you.} {/variable {sancstatus} {On} {statbar}} {statbar}
/action {The white aura around your body fades.} {/variable {sancstatus} {Off} {statbar}} {statbar}
/action {sanctuary                makes you sanctified} {/variable {sancstatus} {On} {statbar}} {statbar}
/action {Your current summon state is: LPK} {/variable {sumstatus} {LPK} {statbar}} {statbar}
/action {Your current summon state is: NPK} {/variable {sumstatus} {NPK} {statbar}} {statbar}
/action {Your current summon state is: CPK} {/variable {sumstatus} {CPK} {statbar}} {statbar}
/action {Your current summon state is: OFF} {/variable {sumstatus} {OFF} {statbar}} {statbar}
/action {You can no longer be summoned.} {/variable {sumstatus} {OFF} {statbar}} {statbar}
/action {You can now be summoned to LPK rooms.} {/variable {sumstatus} {LPK} {statbar}} {statbar}
/action {You can now be summoned to NPK rooms.} {/variable {sumstatus} {NPK} {statbar}} {statbar}
/action {You can now be summoned to CPK rooms.} {/variable {sumstatus} {CPK} {statbar}} {statbar}
/action {You rest your tired bones.} {/variable {mestatus} {Resting} {statbar}} {statbar}
/action {You sit down and rest your tired bones.} {/variable {mestatus} {Resting} {statbar}} {statbar}
/action {You awaken, and stand up.} {/variable {mestatus} {Standing} {statbar}} {statbar}
/action {You stop resting, and stand up.} {/variable {mestatus} {Standing} {statbar}} {statbar}
/action {You go to sleep.} {/variable {mestatus} {Sleeping} {statbar}} {statbar}
/action {You are too restless to sleep, and you awaken.} {/variable {mestatus} {Standing} {statbar}} {statbar}
/action {You stand up.} {/variable {mestatus} {Standing} {statbar}} {statbar}
/action {You feel very sleepy...  Zzzz.....} {/variable {mestatus} {Sleeping} {statbar}} {statbar}
/action {You are standing.} {/variable {mestatus} {Standing} {statbar}} {statbar}
/action {You are sleeping.} {/variable {mestatus} {Sleeping} {statbar}} {statbar}
/action {You are sitting.} {/variable {mestatus} {Sitting} {statbar}} {statbar}
/action {You are resting.} {/variable {mestatus} {Resting} {stabar}} {statbar}
/action {You stop resting, and sit up.} {/variable {mestatus} {Sitting} {statbar}} {statbar}
/action {You sit down.} {/variable {mestatus} {Sitting} {statbar}} {statbar}
/action {hp} {/updatestatusbar} {statbar}
/event {statbarupdater} {1} {/updatestatusbar} {statbar}
/action {You find a blue orb hidden in the corpse} {/math {Orbs} {$Orbs + 1};get orb all.corpse} {FIND}
/action {You find a depiction} {get depiction all.cor} {}
/action {You find a gem of true seeing hidden in the corpse} {/math {Gems} {$Gems + 1};get true all.corp;put all.true ves} {FIND}
/action {You find an ancient relic of unknown origin hidden} {/math {Relics} {$Relics + 1};get relic all.corp} {FIND}
