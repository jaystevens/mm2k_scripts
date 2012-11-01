/remark {   Pets 1.01                               }
/remark {   Released October 26, 2012               }
/remark {   Created By: Cypher (Jason Stevens)      }
/remark {   Email: jay@wizardofthent.com            }
/remark {   Web  : http://www.wizardofthenet.com    }
/remark {   The Contents of this file are           }
/remark {   copyright 2001-2012 Jason Stevens       }
/variable {PETSVERSION} {1.01} {PETS_100}
/variable {PETSRELEASE} {October 26, 2012} {PETS_100}

/remark { I don't know how to easily and reliably handle this, it would take more code/work than I think should be done here. }
/remark { /alias {petsid %1 %2 %3 %4 %5 %6} {clearpets2;/var Pet1 $1;/var Pet2 $2;/var Pet3 $3;/var Pet4 $4;/var Pet5 $5;/var Pet6 $6;showpets}  {PETS_100} }

/alias {petid1 %1} {/var Pet1 $1;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet1 is now '$1'@AnsiReset()}} {PETS_100}
/alias {petid2 %1} {/var Pet2 $1;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet2 is now '$1'@AnsiReset()}} {PETS_100}
/alias {petid3 %1} {/var Pet3 $1;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet3 is now '$1'@AnsiReset()}} {PETS_100}
/alias {petid4 %1} {/var Pet4 $1;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet4 is now '$1'@AnsiReset()}} {PETS_100}
/alias {petid5 %1} {/var Pet5 $1;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet5 is now '$1'@AnsiReset()}} {PETS_100}
/alias {petid6 %1} {/var Pet6 $1;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet6 is now '$1'@AnsiReset()}} {PETS_100}
/alias {clearpetid1} {/empty Pet1;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet1 is now Empty@AnsiReset()}} {PETS_100}
/alias {clearpetid2} {/empty Pet2;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet2 is now Empty@AnsiReset()}} {PETS_100}
/alias {clearpetid3} {/empty Pet3;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet3 is now Empty@AnsiReset()}} {PETS_100}
/alias {clearpetid4} {/empty Pet4;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet4 is now Empty@AnsiReset()}} {PETS_100}
/alias {clearpetid5} {/empty Pet5;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet5 is now Empty@AnsiReset()}} {PETS_100}
/alias {clearpetid6} {/empty Pet6;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet6 is now Empty@AnsiReset()}} {PETS_100}
/alias {showpets} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeGreen()Pet1: $Pet1@Chr(10)Pet2: $Pet2@Chr(10)Pet3: $Pet3@Chr(10)Pet4: $Pet4@Chr(10)Pet5: $Pet5@Chr(10)Pet6: $Pet6}} {PETS_100}
/alias {clearpets} {clearpets2;/showme {@AnsiReset()@AnsiBold()@ForeGreen()Pet1-6 are now Empty@AnsiReset()}} {PETS_100}
/alias {clearpets2} {/empty Pet1;/empty Pet2;/empty Pet3;/empty Pet4;/empty Pet5;/empty Pet6} {PETS_100}

/alias {setupmypets} {/var Pet1 DW1;/var Pet2 DW2;/var Pet3 DW3;/var Pet4 DW4;/var Pet5 DW5;/var Pet6 DW6} {PETS_100}
/alias {buyliz} {buy lizard DW1;buy lizard DW2;buy lizard DW3;buy lizard DW4;buy lizard DW5;buy lizard DW6;setupmypets} {PETS_100}
/alias {buybears} {buy bear DW1;buy bear DW2;buy bear DW3;buy bear DW4;buy bear DW5;buy bear DW6;setupmypets} {PETS_100}

/alias {restpets} {/if {@IsEmpty($Pet1)=0} {order $Pet1 rest};/if {@IsEmpty($Pet2)=0} {order $Pet2 rest};/if {@IsEmpty($Pet3)=0} {order $Pet3 rest};/if {@IsEmpty($Pet4)=0} {order $Pet4 rest};/if {@IsEmpty($Pet5)=0} {order $Pet5 rest};/if {@IsEmpty($Pet6)=0} {order $Pet6 rest}} {PETS_100}
/alias {standpets} {/if {@IsEmpty($Pet1)=0} {order $Pet1 stand};/if {@IsEmpty($Pet2)=0} {order $Pet2 stand};/if {@IsEmpty($Pet3)=0} {order $Pet3 stand};/if {@IsEmpty($Pet4)=0} {order $Pet4 stand};/if {@IsEmpty($Pet5)=0} {order $Pet5 stand};/if {@IsEmpty($Pet6)=0} {order $Pet6 stand}} {PETS_100}
/alias {sleeppets} {/if {@IsEmpty($Pet1)=0} {order $Pet1 sleep};/if {@IsEmpty($Pet2)=0} {order $Pet2 sleep};/if {@IsEmpty($Pet3)=0} {order $Pet3 sleep};/if {@IsEmpty($Pet4)=0} {order $Pet4 sleep};/if {@IsEmpty($Pet5)=0} {order $Pet5 sleep};/if {@IsEmpty($Pet6)=0} {order $Pet6 sleep}} {PETS_100}
/alias {wakepets} {/if {@IsEmpty($Pet1)=0} {order $Pet1 wake};/if {@IsEmpty($Pet2)=0} {order $Pet2 wake};/if {@IsEmpty($Pet3)=0} {order $Pet3 wake};/if {@IsEmpty($Pet4)=0} {order $Pet4 wake};/if {@IsEmpty($Pet5)=0} {order $Pet5 wake};/if {@IsEmpty($Pet6)=0} {order $Pet6 wake}} {PETS_100}

/alias {petshelp} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Commands          @ForeBlue()- - - - - - - - -  @ForeCyan()What they do...@Chr(10)@ForeBlue()---------------------------------------------------------------------------------------------------@Chr(10)@ForeCyan()petshelp            @ForeBlue()- - - - - - - - -  @ForeCyan()This listing@Chr(10)petid1              @ForeBlue()- - - - - - - - -  @ForeCyan()Set Pet1 name to use @Chr(10)petid2              @ForeBlue()- - - - - - - - -  @ForeCyan()Set Pet2 name to use @Chr(10)petid3              @ForeBlue()- - - - - - - - -  @ForeCyan()Set Pet3 name to use @Chr(10)petid4              @ForeBlue()- - - - - - - - -  @ForeCyan()Set Pet4 name to use @Chr(10)petid5              @ForeBlue()- - - - - - - - -  @ForeCyan()Set Pet5 name to use @Chr(10)petid6              @ForeBlue()- - - - - - - - -  @ForeCyan()Set Pet6 name to use @Chr(10)clearpetid1         @ForeBlue()- - - - - - - - -  @ForeCyan()Clear Pet1 name @Chr(10)clearpetid2         @ForeBlue()- - - - - - - - -  @ForeCyan()Clear Pet2 name @Chr(10)clearpetid3         @ForeBlue()- - - - - - - - -  @ForeCyan()Clear Pet3 name @Chr(10)clearpetid4         @ForeBlue()- - - - - - - - -  @ForeCyan()Clear Pet4 name @Chr(10)clearpetid5         @ForeBlue()- - - - - - - - -  @ForeCyan()Clear Pet5 name @Chr(10)clearpetid6         @ForeBlue()- - - - - - - - -  @ForeCyan()Clear Pet6 name @Chr(10)showpets            @ForeBlue()- - - - - - - - -  @ForeCyan()Display configured pet names @Chr(10)clearpets           @ForeBlue()- - - - - - - - -  @ForeCyan()Clear configured pet names @Chr(10)@Chr(10)buyliz              @ForeBlue()- - - - - - - - -  @ForeCyan()buy 6 lizards @Chr(10)buybears            @ForeBlue()- - - - - - - - -  @ForeCyan()buy 6 bears @Chr(10)@Chr(10)restpets            @ForeBlue()- - - - - - - - -  @ForeCyan()make all pets rest @Chr(10)standpets           @ForeBlue()- - - - - - - - -  @ForeCyan()make all pets stand @Chr(10)sleeppets           @ForeBlue()- - - - - - - - -  @ForeCyan()make all pets sleep @Chr(10)wakepets            @ForeBlue()- - - - - - - - -  @ForeCyan()make all pets wake @Chr(10)@Chr(10)petsabout           @ForeBlue()- - - - - - - - -  @ForeCyan()Displays information about Pets @Chr(10)petsversion         @ForeBlue()- - - - - - - - -  @ForeCyan()Displays Current Pets Version@Chr(10)@AnsiReset()}} {PETS_100}

/alias {petsversion} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Cypher Pets $PETSVERSION @Chr(10)@AnsiReset()}} {PETS_100}
/alias {petsabout} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Cypher Pets $PETSVERSION @Chr(10)Released on $PETSRELEASE @Chr(10)Created By: Cypher (Jason Stevens) @Chr(10)Homepage: http://www.wizardofthenet.com @Chr(10)Email: jay@Chr(64)wizardofthenet.com @Chr(10)@AnsiReset()}} {PETS_100}

clearpets2