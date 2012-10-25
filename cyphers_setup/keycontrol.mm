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