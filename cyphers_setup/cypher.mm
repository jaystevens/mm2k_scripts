/read password.mm

/alias {wform} {grep Form who} {}

/alias {fi %1} {/variable {ficounter} {$1};/loop {1,$ficounter} {search $LoopCount.corpse};get gold all.corpse;get map all.corpse} {Dfinder}
/alias {fion} {/macro {kp 1} {fi 1};/macro {kp 2} {fi 2};/macro {kp 3} {fi 3};/macro {kp 4} {fi 4};/macro {kp 5} {fi 5};/macro {kp 6} {fi 6};/macro {kp 7} {fi 7};/macro {kp 8} {fi 8};/macro {kp 9} {fi 9};/macro {kp 0} {fi 10};} {fimac}
/alias {fioff} {unmacnr}
/alias {unmacnr} {/unmacro {kp 1} {fi 1};/unmacro {kp 2} {fi 2};/unmacro {kp 3} {fi 3};/unmacro {kp 4} {fi 4};/unmacro {kp 5} {fi 5};/unmacro {kp 6} {fi 6};/unmacro {kp 7} {fi 7};/unmacro {kp 8} {fi 8};/unmacro {kp 9} {fi 9};/unmacro {kp 0} {fi 10};} {fimac}

/alias {li %1} {/variable {licounter} {$1};/loop {1,$licounter} {look in $LoopCount.corpse}} {Dlooker}
/alias {lion} {/macro {kp 1} {li 1};/macro {kp 2} {li 2};/macro {kp 3} {li 3};/macro {kp 4} {li 4};/macro {kp 5} {li 5};/macro {kp 6} {li 6};/macro {kp 7} {li 7};/macro {kp 8} {li 8};/macro {kp 9} {li 9};/macro {kp 0} {li 10};} {limac}
/alias {lioff} {unmacnr} {limac}

/alias {filion} {/macro {kp 1} {fi 1;li 1};/macro {kp 2} {fi 2;li 2};/macro {kp 3} {fi 3;li 3};/macro {kp 4} {fi 4;li 4};/macro {kp 5} {fi 5;li 5};/macro {kp 6} {fi 6;li 6};/macro {kp 7} {fi 7;li 7};/macro {kp 8} {fi 8;li 8};/macro {kp 9} {fi 9;li 9};/macro {kp 0} {fi 10;li 10};} {filimac}
/alias {filioff} {unmacnr} {filimac}


/alias {f?} {grep Form who} {}
/action {%1 delivers a critical hit to %0} {moan $1} {crit}



/action {As you regain consciousness} {stand;sspell}
/alias {recam} {rem chameleon;wear chameleon} {recam}

/action {^The hatch seems to be closed.} {open hatch} {}

/alias {oc %0} {open cur $0}
/alias {uc %0} {unlock cur $0}

/alias {chatrcon} {callari;/chatsnoop ari;} {}
/alias {chatrcoff} {/unchat ari} {}
/action {Ari :rc %0} {$0} {}
/action {Ari chats to everybody, 'rc %0'} {$0} {}
/action {Ari chats to you, 'rc %0'} {$0} {}

/action {Gerrerd tells you, 'rc %0'} {$0} {gerrerdrc}
/disablegroup gerrerdrc

/alias {rcon} {/enablegroup gerrerdrc} {}
/alias {rcoff} {/disablegroup gerrerdrc} {}
/alias {snoopon} {/chatsnoop ari} {}
/alias {snoopoff} {/chatsnoop ari} {}
/alias {setariip %0} {/variable {ariip} {$0}} {callari}
/variable {ariip} {68.66.238.17} {callari}
/alias {callari} {/call $ariip} {callari}

/alias {ch %0} {/chata $0} {}

/action {^[CLAN]: %0 says, '%1'.} {/var {clanperson} {$0};/var {clantxt} {$1};/if {$cf=1} {ft [CLAN]: $0 '$1'.};/if {$cs=1} {'[CLAN]: $0 says, '$1'.};/if {$ct=1} {tell $ctell [CLAN]: $0 says, '$1'.}} {}
/alias {cson} {/var {cs} {1}} {}
/alias {csoff} {/var {cs} {0}} {}
csoff
/alias {setct %0} {/var {ctell} {$0}} {}
/alias {ct?} {$ctell} {}
/alias {cton} {/var {ct} {1}} {}
/alias {ctoff} {/var {ct} {0}} {}
setct cypher
ctoff
/alias {cfon} {/var {cf} {1} {}
/alias {cfoff} {/var {cf} {0} {}
cfoff

/alias {lcl %0} {tell $0 [CLAN]: $clanperson says,'$clantxt'.} {}


/action {%0 tells you, 'fooderoff'} {/disablegroup fooder} {}
/action {%0 tells you, 'fooderon'} {/enablegroup fooder} {}
/alias {fooderoff} {/disablegroup fooder} {}
/alias {fooderon} {/enablegroup fooder} {}
/event {createfoodevent} {3} {c create food} {fooder}
fooderoff

/action {^Mindreader exclaims, 'The Hippies... I must get away from the Hippies!'} {talk mindreader What Hippies?} {voider}
/action {Hazzy jumps up and down.} {high5 hazzy} {voider}
/alias {lall} {exam keyring;l i 1.vest;l i 2.vest;l i 1.purse;l i 2.purse} {lall}
/alias {gc} {c w;gocl} {}
/alias {ww} {grep Brigandine who;grep Rakar who;grep Conundrum who;grep Nymeran who} {}
/alias {id %0} {c id $0} {}

/action {A sly-looking man is standing here in jester's clothing.} {tag joker} {}
/alias {qq} {queststat} {}
/alias {qs} {questscore} {}
/action {You reel in pain as the magical energy ebbs through your veins.} {grumble} {}
/alias {dep?} {clan how many depics?} {}
/alias {mg} {emote gasps! He's out of Mana!} {}
/alias {ig %0} {ignore $0} {}
/alias {uig %0} {unignore $0} {}

/event {autoss} {300} {sspell} {autoss}
/alias {asson} {/enablegroup autoss} {autosscontrol}
/alias {assoff} {/disablegroup autoss} {autosscontrol}
assoff
/alias {sspell} {ssreset;af;/resetevent smartspellevent;/enablegroup ssevent} {smartspell}
/alias {respell} {ssreset;/resetevent smartspellevent;/enablegroup ssevent} {smartspell}

/alias {sspells} {ssreset;af;/resetevent smartspelleventsanc;/enablegroup sseventsanc} {smartspell}

/event {smartspelleventsanc} {3} {/disablegroup sseventsanc;smartspellersanc} {sseventsanc}
/event {smartspellevent} {3} {/disablegroup ssevent;smartspeller} {ssevent}
/disablegroup ssevent
/disablegroup sseventsanc

/alias {smartspeller} {/if {$blur=0 || $hrblur<" 5"} {c blur};/if {$infra=0 || $hrinfra<" 5"} {c infra};/if {$senselife=0 || $hrsenselife<" 5"} {c sense};/if {$detinvis=0 || $hrdetinvis<" 5"} {c det invis};/if {$lev=0 || $hrlev<" 5"} {c lev};/if {$armor=0 || $hrarmor<" 5"} {c armor};/if {$stoneskin=0 || $hrstoneskin<" 5"} {c stone};/if {$invis=0 || $hrinvis<" 5"} {c invis};/if {$bless=0 || $hrbless<" 5"} {c bless};/if {$pfg=0 || $hrpfg<" 5"} {c p f g};/if {$sanc=0 || $hrsanc<" 5"} {c sanc};/if {$fires=0 || $hrfires<" 5"} {c fires};} {smartspell}

/alias {smartspellersanc} {/if {$blur=0 || $hrblur<" 5"} {c blur};/if {$infra=0 || $hrinfra<" 5"} {c infra};/if {$senselife=0 || $hrsenselife<" 5"} {c sense};/if {$detinvis=0 || $hrdetinvis<" 5"} {c det invis};/if {$lev=0 || $hrlev<" 5"} {c lev};/if {$detmagic=0 || $hrdetmagic<" 5"} {c det magic};/if {$detalign=0 || $hrdetalign<" 5"} {c det align};/if {$armor=0 || $hrarmor<" 5"} {c armor};/if {$stoneskin=0 || $hrstoneskin<" 5"} {c stone};/if {$invis=0 || $hrinvis<" 5"} {c invis};/if {$bless=0 || $hrbless<" 5"} {c bless};/if {$pfg=0 || $hrpfg<" 5"} {c p f g};/if {$pfh=0 || $hrpfh<" 5"} {c p f h};/if {$pfc=0 || $hrpfc<" 5"} {c p f c};/if {$sanc=0 || $hrsanc<" 3"} {c sanc};/if {$fires=0 || $hrfires<" 5"} {c fires};} {smartspell}
/action {( %0t) protection from heat     makes you protected from fire} {/variable {hrpfh} {$0};/variable {pfh} {1}} {smartspellact}
/action {( %0t) protection from cold     makes you protected from cold} {/variable {hrpfc} {$0};/variable {pfc} {1}} {smartspellact}
/action {( %0t) infravision              makes you able to see in the dark} {/variable {hrinfra} {$0};/variable {infra} {1}} {smartspellact}
/action {( %0t) sense life               makes you able to sense life} {/variable {hrsenselife} {$0};/variable {senselife} {1}} {smartspellact}
/action {( %0t) detect invisibility      makes you able to sense the invisible} {/variable {hrdetinvis} {$0};/variable {detinvis} {1}} {smartspellact}
/action {( %0t) levitate                 makes you levitate} {/variable {hrlev} {$0};/variable {lev} {1}} {smartspell}
/action {( %0t) detect magic             makes you able to sense magical auras} {/variable {hrdetmagic} {$0};/variable {detmagic} {1}} {smartspellact}
/action {( %0t) detect alignment         makes you able to sense alignment} {/variable {hrdetalign} {$0};/variable {detalign} {1}} {smartspellact}
/action {( %0t) armor                    %1 to Armor Class} {/variable {hrarmor} {$0};/variable {armor} {1}} {smartspellact}
/action {( %0t) stone skin               %1 to Armor Class} {/variable {hrstoneskin} {$0};/variable {stoneskin} {1}} {smartspellact}
/action {( %0t) invisibility             %1 to Armor Class, makes you invisible} {/variable {hrinvis} {$0};/variable {invis} {1}} {smartspellact}
/action {( %0t) bless                    %1 to Save vs Spell} {/variable {hrbless} {$0};/variable {bless} {1}} {smartspellact}
/action {( %0t) bless                    %1 to Damroll} {/variable {hrbless} {$0};/variable {bless} {1}} {smartspellact}
/action {( %0t) bless                    %1 to Hitroll} {/variable {hrbless} {$0};/variable {bless} {1}} {smartspellact}
/action {( %0t) protection from evil     makes you protected from evil} {/variable {hrpfe} {$0};/variable {pfe} {1}} {smartspellact}
/action {( %0t) protection from good     makes you protected from good} {/variable {hrpfg} {$0};/variable {pfg} {1}} {smartspellact}
/action {( %0t) sanctuary                makes you sanctified} {/variable {hrsanc} {$0};/variable {sanc} {1}} {smartspellact}
/action {( %0t) strength                 +2 to Strength} {/variable {hrstr} {$0};/variable {str} {1}} {smartspellact}
/action {( %0t) fireshield               makes you protected by a shield of flame} {/variable {hrfires} {$0};/variable {fires} {1}} {smartspellact}
/action {( %0t) blurred image            makes you hard to diagnose} {/variable {hrblur} {$0};/variable {blur} {1}} {smartspellact}
/alias {ssreset} {/variable {detmagic} {1};/variable {blur} {1};/variable {fires} {1};/variable {str} {0};/variable {sanc} {1};/variable {pfc} {0} {smartspell};/variable {pfh} {0} {smartspell};/variable {infra} {0};/variable {pfg} {1} {smartspell};/variable {pfe} {1} {smartspell};/variable {senselife} {0};/variable {detinvis} {0};/variable {lev} {0};/variable {detalign} {0};/variable {armor} {0};/variable {stoneskin} {1};/variable {invis} {0};/variable {bless} {0}} {smartspell}
/variable {blur} {1} {smartspell}
/variable {fires} {1} {smartspell}
/variable {str} {0} {smartspell}
/variable {sanc} {1} {smartspell}
/variable {pfc} {0} {smartspell}
/variable {pfh} {0} {smartspell}
/variable {pfg} {1} {smartspell}
/variable {pfe} {1} {smartspell}
/variable {senselife} {0} {smartspell}
/variable {detinvis} {0} {smartspell}
/variable {lev} {0} {smartspell}
/variable {detmagic} {1} {smartspell}
/variable {detalign} {0} {smartspell}
/variable {armor} {0} {smartspell}
/variable {stoneskin} {1} {smartspell}
/variable {invis} {0} {smartspell}
/variable {bless} {0} {smartspell}
/variable {infra} {0} {smartspell}


/alias {clem %0} {cl *$0*} {}
/substitute {______STARTING GREP______} {@Chr(10)} {grepsub}
/substitute {~~~~~~GREP FINISHED~~~~~~} {@Chr(10)} {grepsub}

/alias {%0 gc %1} {give $0 coins $1} {}

/alias {curl %0} {c cure light $0} {}
/alias {curs %0} {c cure serious $0} {}
/alias {curc %0} {c cure critic $0} {}
/alias {caul %0} {c cause light $0} {}
/alias {caus %0} {c cause serious $0} {}
/alias {cauc %0} {c cause critic $0} {}

/alias {sleepb %0} {/loop {0,$0} {/if {$LoopCount>0 && $LoopCount<9} {ord z$LoopCount sleep}}} {bears}
/alias {sitb %0} {/loop {0,$0} {/if {$LoopCount>0 && $LoopCount<9} {ord z$LoopCount sit}}} {bears}
/alias {wakeb %0} {/loop {0,$0} {/if {$LoopCount>0 && $LoopCount<9} {wake Z$LoopCount}}} {bears}
/alias {sellb %0} {/loop {0,$0} {/if {$LoopCount>0 && $LoopCount<9} {sell Z$LoopCount}}} {bears}
/alias {buyb %0} {/loop {0,$0} {/if {$LoopCount>0 && $LoopCount<9} {buy bear Z$LoopCount;reform z$LoopCount $LoopCount}};reform Cypher 9;form} {bears}
/alias {standb %0} {/loop {0,$0} {/if {$LoopCount>0 && $LoopCount<9} {ord z$LoopCount stand}}} {bears}


/alias {prompt1} {prompt %W[%R%h/%H%rhp %G%a/%A%gm %C%v/%V%cmv %M%e%men%W]} {}
/alias {prompt2} {prompt %W[%R%h/%H%rhp %G%a/%A%gm %C%v/%V%cmv %M%e%men%W][%R%TP%W]} {}
/alias {prompt3} {prompt %W[%Y%x%yxp%W][%R%h/%H%rhp %G%a/%A%gm %C%v/%V%cmv %M%e%men%W][%R%TP%W]} {}
/alias {prompt4} {prompt %W[%Y%x%yxp%W][%R%h/%H%rhp %G%a/%A%gm %C%v/%V%cmv %M%e%men%W]} {}

/alias {connect} {/session exile lurker.net 4000} {}

/alias {reconon} {/enablegroup autokeep} {reconcontrol}
/alias {reconoff} {/disablegroup autokeep} {reconcontrol}

/alias {afkclass} {afk I'm At Class. I'll Be Back Later!} {}
/alias {afkbeep} {afk I'm not here right now but if you leave a message after the Beep I'll get right back to you...BEEP!...} {}
/event {connected?keepalive2} {180} {l} {autokeepalive2}
/alias {keepalive2on} {/enablegroup autokeepalive2} {keepalivecon2}
/alias {keepalive2off} {/disablegroup autokeepalive2} {keepalivecon2}
keepalive2off
/event {connected?} {20} {/if {@Connected()=0} {/enablegroup autokeep2;}} {autokeep}
/event {connected?3} {5} {/session exile lurker.net 4000} {autokeep2}
/action {Make your choice:} {1;/disablegroup autokeep2} {autokeep2}
/action {Reconnecting.} {/disablegroup autokeep2} {autokeep2}
/action {Come back in a minute or two.} {/enablegroup autorecon} {autorecongo}
/event {reconnect} {30} {/session exile_keepalive lurker.net 4000} {autorecon}
/event {reconnectoff} {5} {/if {@Connected()=1} {/disablegroup autorecon}} {autorecon}
/disablegroup autorecon
/disablegroup autokeep2
/action {**** CURRENT EXPERIENCE MULTIPLIER IS %0 ****} {/variable {xpmult} {$0}} {xpmult}
/alias {xpmult} {say Current Experience Multiplier is $xpmult} {xpmult}

/macro {kpslash} {wear tome} {macro}
/macro {kpstar} {wear book} {macro}
/action {^You sneeze violently! Looks like you've got a cold!} {say I Have a Cold!} {autocold}

/action {%0 says, 'curlme'} {c cure light $0;asmana} {autospell}
/action {%0 says, 'cursme'} {c cure serious $0;asmana} {autospell}
/action {%0 says, 'armorme'} {c arm $0;asmana} {autospell}
/action {%0 says, 'blessme'} {c bless $0;asmana} {autospell}
/action {%0 says, 'strme'} {say OFFLINE;#c str $0;#asmana} {autospell}
/action {%0 says, 'invisme} {c invis $0;asmana} {autospell}
/action {%0 says, 'levme'} {c lev $0;asmana} {autospell}
/action {%0 says, 'procoldme'} {c p f c $0;asmana} {autospell}
/action {%0 says, 'proheatme'} {c p f h $0;asmana} {autospell}
/action {%0 says, 'refme'} {c refresh $0;asmana} {autospell}
/action {%0 says, 'remcurseme'} {c remove curse $0;asmana} {autospell}
/action {%0 says, 'cureblindme'} {c cure blind $0;asmana} {autospell}
/action {%0 says, 'rempoime'} {c remove poison $0;asmana} {autospell}
/action {%0 says, 'sum4me %1'} {say OFFLINE;#c summon $1;#asmana} {autospell}
/action {%0 says, 'curcme'} {c cure critic $0;asmana} {autospell}
/action {%0 says, 'createfood'} {/5 c create food;asmana} {autospell}
/action {%0 says, 'breathme'} {c breath $0;asmana} {autospell}
/action {%0 asks, 'mana?} {asmana} {autospell}
/action {%0 asks, 'as?'} {as?} {autospellcontrol}
/action {[CLAN]: %0 says, 'as?'.} {/if {$autospell=1} {clan autospell is enabled!} {clan autospell is disabled!} {autospellcontrol}
/alias {assay} {ssdi;say autospell is enabled!;say Keywords: curlme, cursme, curcme, blessme, armorme, invisme, levme, procoldme, proheatme, refme, remcurseme, cureblindme, rempoime, createfood, breathme, sum4me <person>, as?, mana?.;asmana} {autospell}
/event {autospell} {180} {assay} {autospell}
/alias {ason} {/resetevent {autospell};assay;/variable {autospell} {1};/enablegroup autospell;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Auto Spell Triggers @ForeRed()ENABLED @AnsiReset()};assay} {autospellcontrol}
/alias {asoff} {/variable {autospell} {0};/disablegroup autospell;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Auto Spell Triggers @ForeRed()DISABLED @AnsiReset()}} {autospellcontrol}
/variable {autospell} {0}
/disablegroup autospell

/alias {asmana} {say Cur Mana:$autospellcurmana Max Mana:$autospellmaxmana} {autospell}
/alias {as?} {/if {$autospell=1} {assay} {say autospell is disabled!}} {autospellcontrol}
/alias {as??} {/if {$autospell=1} {/showme {@AnsiReset()@AnsiBold()@ForeMagenta()Auto Spell Triggers Are ON@AnsiReset()}} {/showme {@AnsiReset()@AnsiBold()@ForeMagenta()Auto Spell Triggers Are OFF@AnsiReset()}}} {}
/action {hp %0/%1m} {/variable {autospellcurmana} {$0};/variable {autospellmaxmana} {$1}} {autospellcontrol}
/variable {autospellcurmana} {0}
/variable {autospellmaxmana} {0}



/alias {keyhelp} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()lkey       ----- look at keys on keyring@Chr(10)dkey       ----- drop all keys@Chr(10)gdkey      ----- get all keys from keyring, drop all keys@Chr(10)pkey <key> ----- put <key> onto keyring@Chr(10)apkey      ----- get all keys off the gorund and put all keys into keyring@Chr(10)akey       ----- get all keys off the ground@Chr(10)pakey      ----- put all keys onto keyring@Chr(10)gakey      ----- get all keys from keyring@Chr(10)gkey <key> ----- get <key> from keyring@Chr(10)@AnsiReset()}} {keyring}
/alias {lkey} {exam keyring} {keyring}
/alias {dkey} {drop all.key;get keyring} {keyring}
/alias {gdkey} {gakey;dkey} {keyring}
/alias {pkey %0} {put $0 keyring} {keyring}
/alias {apkey} {akey;pakey} {keyring}
/alias {akey} {get all.key} {keyring}
/alias {pakey} {put all.key keyring} {keyring}
/alias {gakey} {get all.key keyring} {keyring}
/alias {gkey %0} {get $0 keyring} {keyring}

/alias {statsay}{/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {say $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}
/alias {stattell %0}{/variable {stattell} {$0};/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {tell $stattell $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}
/alias {statform}{/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {ft $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}
/alias {statclan}{/action {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp} {clan $0/$1hp $2/$3m $4/$5mv $6ac $7hr $8dr $9xp;/unact {%0/%1hp %2/%3m %4/%5mv %6ac %7hr %8dr %9xp}};stat} {statsay2}

/action {^You haven't been fighting in a while, and have entered Social Mode.} {Emote Has Entered Social Mode} {}
/alias {manamode} {get rope 3.vest;wear rope;put beads 3.vest;get aero 3.vest;get amulet 3.vest;rem neck;rem neck;put neck 3.vest;put neck 3.vest;wear amulet;wear aero;get mask 3.vest;wear mask;put helm 3.vest} {manamode}
/alias {unmanamode} {get beads 3.vest;wear beads;put rope 3.vest;get neck 3.vest;get neck 3.vest;rem aero;rem amulet;wear neck;wear neck;put amulet 3.vest;put aero 3.vest;get helm 3.vest;wear helm;put mask 3.vest} {manamode}

/act {^[CLAN]: %0 says, 'where is %1?'.} {/variable {clantell1} {1};/enableaction {^You can make out an image of %0...};look in gem $1} {illautosee}
/act {^You can make out an image of %0...} {/var tsperson $0;/act {%0} {/var tsroom $0;/unact %0;cl I spy in my all-seeing eye $tsperson in $tsroom;/disableaction {^You can make out an image of %0...}}} {illautosee}
/alias {trueon} {/enablegroup illautosee;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()True See Trigger @ForeRed()ENABLED @AnsiReset()}} {illautoseecontrol}
/alias {trueoff} {/disablegroup illautosee;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()True See Trigger @ForeRed()DISABLED @AnsiReset()}} {illautoseecontrol}
/disablegroup illautosee

/action {                           Welcome to Exile!} {gohome;packup;score;sum;l;uptime;cls;} {autopack}
/action {%0 failed an attempt at summoning you.} {t $0 Why are you trying to summon me?} {}

/action {A voice tells you, 'Have no fear, you have found release from Death's hold.'} {l;wear all;emote exclaims I'm alive!} {}
/action {%0 looks at you.} {talk $0 why are you looking at me?} {looker}
/action {Do you have an ANSI capable terminal? (Y/N/help):} {y} {}
/action {As you regain consciousness you realize that whoever tried to kill you didn't get a chance to finish the job ... this time.} {stand;c det invis;} {}
/action {Some kind of portal seems to be flickering in and out of existence here.} {emote exclaims a portal is here!} {}

/action {The trapdoor seems to be closed.} {open trapdoor} {}
/action {You experience an odd, unsettled feeling as %0 meets %1 end.} {say The lost soul of a $0 has just been made} {}
/action {The gods take pity on you and grant you the gift of life.} {l;wear all;wearslend;emote exclaims I'm alive!} {}
/action {You are very tired.  You need rest.} {c ref;c ref} {}
/action {You find a depiction} {get depiction all.corpse;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()found a depiction@Chr(10)@AnsiReset()}} {}
/action {You have gained enough experience to advance in your guild.} {emote Has LEVELD!!!!!} {leveled}
/action {You have been idle} {emote isn't ready yet.} {}
/action {^*** PRESS RETURN ***} {@Chr(10)} {autoreturn}

/action {^One miserable gold coin is lying here.} {get gold} {}
/action {^You are thirsty.} {drinkwater} {}
/action {^You are hungry.} {eatmush} {}
/action {^You find a hidden slab down.} {open slab} {}
/action {gold coins is lying here.} {get gold} {}
/action {^ENTER NEUTRAL PLAYER KILL AREA? (y/n)>} {y} {}
/alias {detme} {c detect magic;c detect invis;c detect align} {}
/alias {arion} {grep gerrerd who;grep thanatos who;grep vanyel who;} {}
/alias {cd %0} {close door $0} {}
/alias {cg %0} {close gate $0} {}
/alias {cprocold %1} {c protection from cold $1} {}
/alias {cproheat %1} {c protection from heat $1} {}
/alias {cprogood %1} {c protection from good $1} {}
/alias {cproevil %1} {c protection from evil $1} {}
/alias {cmprocold %1} {c mass protection from cold $1} {}
/alias {cmproheat %1} {c mass protection from heat $1} {}
/alias {drinkwater} {get grail pollen;drink grail;put grail pollen} {}
/alias {makemush} {/5 c create food} {}
/alias {eatmush} {/3 c create food;/3 get mushroom;/3 eat mushroom;/3 drop mushroom} {}
/alias {fgold} {get gold all.corpse} {}
/alias {gmc1} {get map all.corpse} {}
/alias {find} {gmc1;get gold corpse;se corpse;l i 1.corpse} {}
/alias {finde} {gmc1;se 1.corpse;se 2.corpse;se 3.corpse;se 4.corpse;get gold all.corpse} {}
/alias {finder} {gmc1;se 1.corpse;se 2.corpse;se 3.corpse;se 4.corpse;se 5.corpse;se 6.corpse;se 7.corpse;se 8.corpse;se 9.corpse;se 10.corpse;get gold all.corpse} {}
/alias {formsleep} {order followers sleep} {}
/alias {formstand} {order followers stand} {}
/alias {formwake} {order followers wake} {}
/alias {freed} {open reed;se reed;get pearl reed;don reed} {freed}
/alias {getcor} {get all 1.corpse} {}
/alias {gid} {get id 2.sack} {}
/alias {lari1} {last gerrerd} {}
/alias {lari2} {last thanatos} {}
/alias {lcor} {l i 1.corpse} {}
/alias {lcore} {l i 1.corpse;l i 2.corpse;l i 3.corpse;l i 4.corpse} {}
/alias {lcorer} {l i 1.corpse;l i 2.corpse;l i 3.corpse;l i 4.corpse;l i 5.corpse;l i 6.corpse;l i 7.corpse;l i 8.corpse;l i 9.corpse;l i 10.corpse} {}
/alias {ld %0} {lock door $0} {}
/alias {lg %0} {lock gate $0} {}


/alias {ltr} {l i trunk} {}
/alias {mikeon} {grep relkin who} {}
/alias {mymail} {receive} {}
/alias {od %0} {open door $0} {}
/alias {og %0} {open gate $0} {}
/alias {ol} {open locker} {}
/alias {opencur} {unlock cur;open cur;drop k} {}
/alias {opend} {unlock cur d;open cur d; drop k;d} {}
/alias {otr} {open trunk} {}
/remark {/alias {packup} {put all.true vest;put all.staff vest;put all.eye vest;put all.scr 2.vest;put all.pot 2.vest;put flask vest;put all.rat 2.vest;put all vest;put all 2.vest;put all purse;put all 2.purse;/2 get trans 2.vest;/2 get shape 2.vest;/2 get black 2.vest;get keyring all} {packup}}
/alias {packup} {put all sack}
/alias {packup2} {put boots 3.vest;put rope 3.vest;put amulet 3.vest;put aero 3.vest;put mask 3.vest;put crimson 3.vest;put suit 3.vest;wear suit;put sash 3.vest;rem vest;rem 3.vest;put power 3.vest;put belt 3.vest;put all.fort 3.vest;} {packup2}
/alias {qinfo} {queststat} {}
/alias {remslend} {rem slender;get shield 3.vest;get scepter 3.vest;wear shield;wear scepter} {}
/alias {runn} {retreat} {}
/alias {sacmail} {drop mail;sac mail} {mail}

/alias {sendmail} {@Chr(10)@Chr(10)$G-Cypher$w;\@s} {mail}
/alias {setprompt2} {prompt %W<%R%h/%H%rhp %G%a/%A%gm %C%v/%V%cmv %M%e%men%W>} {}


/alias {uld %0} {unlock door $0} {}
/alias {ulg %0} {unlock gate $0} {}
/alias {unstrmode} {get sapphire 3.vest;wear sapphire;put boots 3.vest;get neck 3.vest;rem crimson;wear neck;put crimson 3.vest;get tunic 3.vest;wear tunic;put suit 3.vest;get dragon 3.vest;rem sash;wear dragon;put sash 3.vest;get jar 3.vest;wear jar;put power 3.vest;get beads 3.vest;wear beads;put belt 3.vest;get ring 3.vest;get ring 3.vest;rem ring;rem ring;put fort 3.vest;put fort 3.vest;wear ring;wear ring} {}
/alias {wearslend} {get power 3.vest;wear power;get belt 3.vest;get fort all;get fort all;rem ring;rem ring;wear fort;wear fort;wear belt;get slend all;wear slend;rem power;put power 3.vest;wear jar;rem fort;rem fort;put fort 3.vest;put fort 3.vest;wear ring;wear ring;wear beads;put belt 3.vest;} {}
/alias {whog} {who -g} {}
/alias {whoi %0} {who -i $0} {}
/alias {laston} {last thanatos;last vanyel;last gerrerd;last relkin;last sinister;last mindreader;last duncan;last ashram} {}
/alias {whoon} {grep thanatos who;grep vanyel who;grep gerrerd who;grep relkin who;grep sinister who;grep mindreader who;grep duncan who;grep ashram who} {}
/alias {whoq} {who -q} {}
/alias {rebot} {/killall;/read cypher.mm}
/macro {kp0} {look} {}
/macro {kp1} {c word} {}
/macro {kp2} {south} {}
/macro {kp3} {get trans 2.vest} {}
/macro {kp4} {west} {}
/macro {kp5} {who} {}
/macro {kp6} {east} {}
/macro {kp7} {get shape 2.vest;q shape} {}
/macro {kp8} {north} {}
/macro {kp9} {flee} {}
/macro {kpplus} {down} {}
/macro {kpminus} {up} {}
/macro {kpdel} {rec trans} {}
/macro {F1} {} {}
/macro {F2} {clanwhere} {}
/macro {F3} {clanwho 5} {}
/macro {F4} {claninfo 5} {}
/macro {F5} {find} {}
/macro {F6} {finde} {}
/macro {F7} {finder} {}
/macro {F8} {} {}
/macro {F9} {lcor} {}
/macro {F10} {lcore} {}
/macro {F11} {lcorer} {}
/macro {F12} {who -z} {}

/event {keepalive} {300} {/session exile_keepalive lurker.net 4000} {keepmealive}
/action {^1) Enter the game.} {1} {keepmealive}
/alias {keepaliveon} {/enablegroup keepmealive;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Keep Alive @ForeRed()ENABLED @AnsiReset()}} {keepmealivecontrol}
/alias {keepaliveoff} {/disablegroup keepmealive;/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Keep Alive @ForeRed()DISABLED @AnsiReset()}} {keeepmealivecontrol}
/disablegroup keepmealive

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
/action {%8{%0xp lv}{%1/%2hp %3/%4m %5/%6mv %7en}} {/variable {prefix} {$8};/variable {xp} {$0};/variable {curhp} {$1};/variable {maxhp} {$2};/variable {curm} {$3};/variable {maxm} {$4};/variable {curmv} {$5};/variable {maxmv} {$6};/variable {en} {$7};/showme {@AnsiReset()@AnsiBold()$prefix@ForeWhite()[@ForeRed()$curhp/$maxhp@AnsiReset()@ForeRed()hp @AnsiBold()@ForeGreen()$curm/$maxm@AnsiReset()@ForeGreen()m @AnsiBold()@ForeCyan()$curmv/$maxmv@AnsiReset()@ForeCyan()mv @AnsiBold()@ForeMagenta()$en@AnsiReset()@ForeMagenta()en@AnsiBold()@ForeWhite()]@AnsiReset()}} {statbar1}
/gag {%8{%0xp lv}{%1/%2hp %3/%4m %5/%6mv %7en}} {statbargag1}
/alias {statgagoff} {/disablegroup statbargag1} {statbar1}
/alias {statgagon} {/enablegroup statbargag1} {statbar1}
/alias {promptset1} {prompt %W{%Y%x%yxp lv%W}{%R%h/%H%rhp %G%a/%A%gm %C%v/%V%cmv %M%e%men%W}} {statbar1}
/alias {resetme} {/variable {mestatus} {Standing} {statbar}} {statbar}
/alias {resetfinds} {/variable {Relics} {0} {statbar};/variable {Orbs} {0} {statbar};/variable {Gems} {0} {statbar}} {statbar}
/alias {resetsanc} {/variable {sancstatus} {Off} {statbar}} {statbar}
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
/disablegroup statbar1
/disablegroup statbargag1

/alias {rhtml} {/read HtmlLog2K.mst} {}
/alias {openlog %1.html} {HtmlLogOpenAppend $1.html} {}
/alias {closelog} {HtmlLogClose} {}

/read WherePortal1.00.mm
/read pk.mm
/read highlight.mm
/read find.mm
/read itemid207.mm


