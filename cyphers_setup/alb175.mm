/action {%0.%1} {/loop {1,$zonerow} {/var {ZONE} {@GetArray(zonelist,$LoopCount,1)};/var {ZONESIZE} {@GetArray(zonelist,$LoopCount,2)};/variable {MobLine} {$0};/loop {1,$ZONESIZE} {/var {MobArray} {@GetArray($ZONE,$LoopCount,1)};/var {MobArrayName} {@GetArray($ZONE,$LoopCount,2)};/if {$MobArray=$MobLine} {/assign {$ZONE} {$LoopCount,3} {@Math(@GetArray($ZONE,$LoopCount,3)+1)}}}}}} {alb175}
/alias {al} {/loop {1,$zonerow} {/var {ZONE} {@GetArray(zonelist,$LoopCount,1)};/var {ZONESIZE} {@GetArray(zonelist,$LoopCount,2)};/var {MobQ} {1};/loop {1,$ZONESIZE} {/var {MobQ} {1};/while {$MobQ <= @GetArray($ZONE,$LoopCount,3)} {exam $MobQ.@GetArray($ZONE,$LoopCount,2);/math {MobQ} {$MobQ+1}}}}} {alb175}
/alias {al7} {/10 al} {alb175}
/action {+---------------------+} {RA3} {alb175}
/alias {RA3} {/loop {1,$zonerow} {/var {ZONE} {@GetArray(zonelist,$LoopCount,1)};/var {ZONESIZE} {@GetArray(zonelist,$LoopCount,2)};/loop {1,$ZONESIZE} {/assign {$ZONE} {$LoopCount,3} {0}}} {alb175}
/macro {F8} {al} {alb175}


/variable {ArrayCol} {3}
/variable {zonecol} {2}

/variable {zonerow} {2}

/variable {caymoussize} {24}
/variable {othersize} {1}

/array {zonelist} {$zonerow,$zonecol} {alb175}
/assign {zonelist} {1,1} {caymous}
/assign {zonelist} {1,2} {$caymoussize}
/assign {zonelist} {2,1} {other}
/assign {zonelist} {2,2} {$othersize}}





/array {caymous} {$caymoussize,$ArrayCol} {alb175}
/assign {caymous} {1,1} {A janitor is here, busily sweeping the streets of the town}
/assign {caymous} {1,2} {janitor}
/assign {caymous} {2,1} {A Caymus Harbor town guardsman is here, watching the area}
/assign {caymous} {2,2} {Guard}
/assign {caymous} {3,1} {The town crier is here, calling out the latest news of Caymus Harbor}
/assign {caymous} {3,2} {crier}
/assign {caymous} {4,1} {A young waif is here, scrounging about and hoping for a handout}
/assign {caymous} {4,2} {waif}
/assign {caymous} {5,1} {A beggar is here, calling out for any change you can possibly spare}
/assign {caymous} {5,2} {beg}
/assign {caymous} {6,1} {A bison is grazing on some grass}
/assign {caymous} {6,2} {bison}
/assign {caymous} {7,1} {An adorable little bear cub is here, looking for something to maul}
/assign {caymous} {7,2} {cub}
/assign {caymous} {8,1} {A pickpocket is standing here, trying to look nonchalant and unobtrusive}
/assign {caymous} {8,2} {pickpocket}
/assign {caymous} {9,1} {A student is here, hoping a master will offer to take him as an apprentice}
/assign {caymous} {9,2} {student}
/assign {caymous} {10,1} {An apprentice is here, trying to avoid his studies}
/assign {caymous} {10,2} {apprentice}
/assign {caymous} {11,1} {A mage is standing here, concentrating on a shopping list}
/assign {caymous} {11,2} {mage}
/assign {caymous} {12,1} {A choirboy is here, taking a break from his singing lessons}
/assign {caymous} {12,2} {choir}
/assign {caymous} {13,1} {A priest is walking along here, mumbling prayers for the Patriarch's health}
/assign {caymous} {13,2} {priest}
/assign {caymous} {14,1} {A monk is here, mumbling soft chants and prayers}
/assign {caymous} {14,2} {monk}
/assign {caymous} {15,1} {A squire is here, looking bored and annoyed at having to run errands}
/assign {caymous} {15,2} {squire}
/assign {caymous} {16,1} {A page is here, running errands for some lord or lady of the town}
/assign {caymous} {16,2} {page}
/assign {caymous} {17,1} {A knight is here, waiting for some adventure to come his way}
/assign {caymous} {17,2} {knight}
/assign {caymous} {18,1} {A dockworker is here, trying to look busy as he shuffles about}
/assign {caymous} {18,2} {dock}
/assign {caymous} {19,1} {A ferocious brownish lizard is here, growling at you}
/assign {caymous} {19,2} {lizard}
/assign {caymous} {20,1} {A sailor is here, enjoying the salty air and sea-breeze}
/assign {caymous} {20,2} {sail}
/assign {caymous} {21,1} {A seagull is here, eyeing you with curiosity}
/assign {caymous} {21,2} {seagull}
/assign {caymous} {22,1} {The Ferry ticket taker is here, welcoming passengers}
/assign {caymous} {22,2} {ticket}
/assign {caymous} {23,1} {Shaerannah stands here, dagger in hand, waiting expectantly}
/assign {caymous} {23,2} {shaer}
/assign {caymous} {24,1} {A rather shady-looking character stands here, avoiding your gaze}
/assign {caymous} {24,2} {tony}



/variable {otherrow} {1}
/array {other} {$otherrow,$ArrayCol} {alb175}
/assign {other} {1,1} {Asclepius is here, healing the wounded}
/assign {other} {1,2} {asc}

/variable {version} {ALB 17.5}

