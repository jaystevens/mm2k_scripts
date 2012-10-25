/alias {findton} {/enablegroup findt} {findtcontrol}
/alias {findtoff} {/disablegroup findt} {findtcontrol}

/action {a dog bone} {get bone all.cor} {findt}
/action {a toothpick} {get tooth all.cor} {findt}
/action {an old lace hanky} {get hanky all.cor} {findt}
/action {A fuzzy ball is lying here.} {get all.ball} {findt}
/action {a fur ball} {get ball all.cor} {findt}
/action {A curtain of fish scales is hanging here.} {get all.fish} {findt}
/action {A sparkling pineapple windchime is hanging here.} {get all.pine} {findt}
/action {a huge crabshell} {get shell all.cor} {findt}

/action {You are carrying:} {findtoff} {findtcontrol}
/action {%0a tiny velvet purse%1} {findton} {findtcontrol}

findtoff