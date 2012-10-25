/alias {asson} {sspell;/resetevent sspellevent;/enablegroup sspellevent} {asscontrol}
/alias {assoff} {/disablegroup sspellevent} {asscontrol}
/event {ass} {300} {sspell} {sspellevent} 
/disablegroup sspellevent

/alias {sspell} {ssreset;af;/resetevent smartspellevent;/enablegroup ssevent} {smartspell}
/event {smartspellevent} {3} {/disablegroup ssevent;smartspeller} {ssevent}
/disablegroup ssevent
/alias {smartspeller} {/if {$stanceac=0 || $hrstanceac<" 3" || $stancehr=0 || $hrstancehr<" 3" || $stancedr=0 || $hrstancedr<" 3"} {steq;stance off ac;reeq};/if {$detinvis=0 || $bless=0 || $infra=0 || $pfe=0 || $pfh=0 || $lev=0 || $breath=0} {/variable {spelleqon} {1};get rose all;rem rage;wear rose};/if {$detinvis=0 || $hrdetinvis<" 3"} {c detect invis};/if {$str=0 || $hrstr<" 3"} {get thick all;quaff thick};/if {$sanc=0 || $hrsanc<" 1"} {c sanc};/if {$blesshr=0 || $hrblesshr<" 3"} {c bless};/if {$armor=0 || $hrarmor<" 3"} {c armor};/if {$infra=0 || $hrinfra<" 3"} {c infra};/if {$pfg=0 || $hrpfg<" 3"} {c p f g};/if {$pfe=0 || $hrpfe<" 3"} {c p f e};/if {$pfc=0 || $hrpfc<" 3"} {c p f c};/if {$pfh=0 || $hrpfh<" 3"} {c p f h};/if {$detalign=0 || $hrdetalign<" 3"} {c det align};/if {$lev=0 || $hrlev<" 3"} {c lev};/if {$breath=0 || $hrbreath<" 3"} {c breath};/if {$spelleqon=1} {/variable {spelleqon} {0};rem rose;wear rage;put rose 2.vest}} {smartspell}
/action {( %0hr) stance                   %1 to Armor Class} {/variable {hrstanceac} {$0};/variable {stanceac} {1}} {smartspellact}
/action {( %0hr) stance                   %1 to Hitroll} {/variable {hrstancehr} {$0};/variable {stancehr} {1}} {smartspellact}
/action {( %0hr) stance                   %1 to Damroll} {/variable {hrstancedr} {$0};/variable {stancedr} {1}} {smartspellact}
/action {( %0hr) detect invisibility      makes you able to sense the invisible} {/variable {hrdetinvis} {$0};/variable {detinvis} {1}} {smartspellact}
/action {( %0hr) strength                 %1 to Strength} {/variable {hrstr} {$0};/variable {str} {1}} {smartspellact}
/action {( %0hr) sanctuary                makes you sanctified} {/variable {hrsanc} {$0};/variable {sanc} {1}} {smartspellact}
/action {( %0hr) bless                    %1 to Hitroll} {/variable {hrblesshr} {$0};/variable {blesshr} {1}} {smartspellact}
/action {( %0hr) bless                    %1 to Save vs Spell} {/variable {hrblesshr} {$0};/variable {blesshr} {1}} {smartspellact}
/action {( %0hr) armor                    %1 to Armor Class} {/variable {hrarmor} {$0};/variable {armor} {1}} {smartspellact}
/action {( %0hr) infravision              makes you able to see in the dark} {/variable {hrinfra} {$0};/variable {infra} {1}} {smartspellact}
/action {( %0hr) protection from good     makes you protected from good} {/variable {hrpfg} {$0};/variable {pfg} {1}} {smartspellact}
/action {( %0hr) protection from evil     makes you protected from evil} {/variable {hrpfe} {$0};/variable {pfe} {1}} {smartspellact}
/action {( %0hr) protection from cold     makes you protected from cold} {/variable {hrpfc} {$0};/variable {pfc} {1}} {smartspellact}
/action {( %0hr) detect alignment         makes you able to sense alignment} {/variable {hrdetalign} {$0};/variable {detalign} {1}} {smartspellact}
/action {( %0hr) levitate                 makes you levitate} {/variable {hrlev} {$0};/variable {lev} {1}} {smartspellact}
/action {( %0hr) breathe water            makes you breathe water} {/variable {hrbreath} {$0};/variable {breath} {1}} {smartspellact}
/action {( %0hr) protection from heat     makes you protected from fire} {/variable {hrpfh} {$0};/variable {pfh} {1}} {smartspellact}
/disablegroup smartspellact1
/alias {ssreset} {/variable {spelleqon} {0};/variable {stanceac} {0} {smartspell};/variable {stancehr} {0} {smartspell};/variable {stancedr} {0} {smartspell};/variable {detinvis} {0} {smartspell};/variable {str} {0} {smartspell};/variable {sanc} {0} {smartspell};/variable {bless} {0} {smartspell};/variable {armor} {0} {smartspell};/variable {infra} {0} {smartspell};/variable {pfg} {0} {smartspell};/variable {pfe} {0} {smartspell};/variable {pfc} {0} {smartspell};/variable {detalign} {0} {smartspell};/variable {lev} {0} {smartspell};/variable {breath} {0} {smartspell};/variable {pfh} {0} {smartspell};} {smartspell}
/variable {spelleqon} {0} {smartspell}
/variable {stanceac} {0} {smartspell}
/variable {stancehr} {0} {smartspell}
/variable {stancedr} {0} {smartspell}
/variable {detinvis} {0} {smartspell}
/variable {str} {0} {smartspell}
/variable {sanc} {0} {smartspell}
/variable {bless} {0} {smartspell}
/variable {armor} {0} {smartspell}
/variable {infra} {0} {smartspell}
/variable {pfg} {0} {smartspell}
/variable {pfe} {0} {smartspell}
/variable {pfc} {0} {smartspell}
/variable {detalign} {0} {smartspell}
/variable {lev} {0} {smartspell}
/variable {breath} {0} {smartspell}
/variable {pfh} {0} {smartspell}