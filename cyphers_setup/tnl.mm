/action {^XP to Level: %0              Gold Carried: %1} {/variable {xptnl} {$0}} {xptnl}
/alias {tnl} {sc;/resetevent xptnleve;/enablegroup xptnleve} {xptnl}
/event {xptnlevent} {1} {tnl2;/disablegroup xptnleve} {xptnleve}
/disablegroup xptnleve
/alias {tnl2} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()XP TNL: $xptnl @AnsiReset()@Chr(10)}} {xptnl}
/variable {xptnl} {SCORE DUMMY!} {xptnl}