/alias {statbarhelp} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()resetme     ---------- Reset Standing status @Chr(10)resetfinds  ---------- Reset Relic/Orb/Gem Counter @Chr(10)resetsanc   ---------- Reset Sanc Status @Chr(10)resetsum    ---------- Reset Sum Status @Chr(10)statbarhelp ---------- This! @Chr(10)@AnsiReset()}} {}
/action {A white aura momentarily surrounds you.} {/variable {sancstatus} {On} {statbar}} {statbar}
/action {The white aura around your body fades.} {/variable {sancstatus} {Off} {statbar}} {statbar}
/action {You find a blue orb hidden in the corpse} {/math {Orbs} {$Orbs + 1};/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()found a blue orb@Chr(10)@AnsiReset()};get orb all.corpse} {FIND}
/action {You find a gem of true seeing hidden in the corpse} {/math {Gems} {$Gems + 1};/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()found a gem@Chr(10)@AnsiReset()};get true all.corp} {FIND}
/action {You find an ancient relic of unknown origin hidden} {/math {Relics} {$Relics + 1};/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()found a relic@Chr(10)@AnsiReset()};get relic all.corp} {FIND}
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
/action {%0 charges into you, knocking you to the ground.} {/variable {mestatus} {Sitting} {statbar}} {statbar}
/alias {resetme} {/variable {mestatus} {Standing} {statbar}} {statbar}
/alias {resetfinds} {/variable {Relics} {0} {statbar};/variable {Orbs} {0} {statbar};/variable {Gems} {0} {statbar}} {statbar}
/alias {resetsanc} {/variable {sancstatus} {Off} {statbar}} {statbar}
/alias {resetsum} {/variable {sumstatus} {Off} {statbar}} {statbar}
/action {hp} {/updatestatusbar} {statbar}
/event {statbarupdate} {1} {/updatestatusbar} {statbar}
/baritem {Relics} {Relic: $Relics} {1} {8} {11} {0} {statbar}
/barseparator {relic} {9} {statbar}
/baritem {Orbs} {Orbs: $Orbs} {10} {8} {11} {0} {statbar}
/barseparator {orbs} {17} {statbar}
/baritem {Gems} {Gems: $Gems} {18} {8} {11} {0} {statbar}
/barseparator {gems} {25} {statbar}
/baritem {Sancstat} {Sanc: $sancstatus} {26} {9} {10} {0} {statbar}
/barseparator {sanc} {35} {statbar}
/baritem {sumstat} {Sum: $sumstatus} {36} {8} {13} {0} {statbar}
/barseparator {sum} {44} {statbar}
/baritem {mestat} {$mestatus} {45} {8} {11} {0} {statbar}
/barseparator {me} {53} {statbar}
/baritem {tickstatus} {Tick: $tickstatus} {54} {10} {12} {0} {statbar_tick}
/barseparator {tick} {64} {statbar_tick}
/action {Your eyes pop open as someone's life force flows into you.} {/disablebaritem tickstatus;/disablebaritem tick;/disablegroup tickevent;/disablegroup tick2event} {statbar_tick}
/action {You will remain here for 1 more tick.} {/variable {tick} {75};/enablebaritem tickstatus;/enablebaritem tick;/enablegroup tickevent} {statbar_tick}
/event {tick} {1} {/math {tick} {$tick-1};/if {$tick=0} {/variable {tickstatus} {TICK};/disablegroup tickevent;/variable {tick2} {0};/enablegroup tick2event} {/variable {tickstatus} {$tick}}} {tickevent}
/event {tick2} {1} {/math {tick2} {$tick2+1};/if {$tick2=3} {/disablebaritem tickstatus;/disablebaritem tick;/disablegroup tick2event}} {tick2event}
/disablegroup tickevent
/disablegroup tick2event
/disablebaritem tickstatus
/disablebaritem tick
/variable {tickstatus} {75} {statbar}
/variable {mestatus} {Standing} {statbar}
/variable {sumstatus} {OFF} {statbar}
/variable {xp} {0} {statbar}
/variable {sancstatus} {Off} {statbar}
/variable {Relics} {0} {statbar}
/variable {Orbs} {0} {statbar}
/variable {Gems} {0} {statbar}
