/event {ssdiauto} {300} {ssdi} {ssdiauto}
/alias {ssdi} {ssdireset;af;/resetevent ssdievent;/enablegroup ssdievent} {ssdi}
/event {ssdievent} {3} {/disablegroup ssdievent;smartspellerdetinvis} {ssdievent}
/disablegroup ssdievent
/alias {smartspellerdetinvis} {/if {$detinvis=0 || $hrdetinvis<" 2"} {c det invis}} {ssdi}
/alias {ssdireset} {/variable {detinvis} {0};/variable {hrdetinvis} {0}} {ssdi}
