/remark {	WherePortal 2.00			}
/remark {	Released December 19, 2003		}
/remark {	Created By: Cypher (Jason Stevens)	}
/remark {	Email: jay@wizardofthent.com		}
/remark {	Web  : http://www.wizardofthenet.com	}
/remark {	The Contents of this file are 		}
/remark {	copyright 2001-2003 Jason Stevens	}


/action {^The Mortician tells you, '%0} {/if {$0 != "I see a Portal from the Realm of the Dead at...'"} {/math {wpcount} {$wpcount+1};/variable {wp$wpcount} {$0};/if {$wpcount = 4} {/variable {wpcount} {0}}}} {whereportal}
/alias {wherep} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()@Chr(10)The Mortician tells you, 'I see a Portal from the Realm of the Dead at...' @Chr(10)@Chr(10)The Mortician tells you, '$wp1 @Chr(10)The Mortician tells you, '$wp2 @Chr(10)The Mortician tells you, '$wp3 @Chr(10)The Mortician tells you, '$wp4 @AnsiReset()@Chr(10)@Chr(10)} {whereportal}
/alias {sayp} {say The Mortician tells you, 'I see a Portal from the Realm of the Dead at...';say The Mortician tells you, '$wp1;say The Mortician tells you, '$wp2;say The Mortician tells you, '$wp3;say The Mortician tells you, '$wp4} {whereportal}
/alias {tellp %9} {tell $9 The Mortician tells you, 'I see a Portal from the Realm of the Dead at...';tell $9 The Mortician tells you, '$wp1;tell $9 The Mortician tells you, '$wp2;tell $9 The Mortician tells you, '$wp3;tell $9 The Mortician tells you, '$wp4} {whereportal}
/alias {wphelp} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeRed()Commands        - - - - -  What they do....@Chr(10)-------------------------------------------------@Chr(10)@ForeMagenta()wphelp          @ForeRed()- - - - -  @ForeGreen()This Listing@Chr(10)@ForeMagenta()wherep          @ForeRed()- - - - -  @ForeGreen()Displays Portals Using Showme@Chr(10)@ForeMagenta()sayp            @ForeRed()- - - - -  @ForeGreen()Displays Portals Using Say@Chr(10)@ForeMagenta()tellp <person>  @ForeRed()- - - - -  @ForeGreen()Sends Portals to <person> in tells@Chr(10)@ForeMagenta()wpabout         @ForeRed()- - - - -  @ForeGreen()Displays information about WherePortal@Chr(10)@ForeMagenta()wpversion       @ForeRed()- - - - -  @ForeGreen()Displays Current WherePortal Version@Chr(10)@AnsiReset()}} {whereportal}
/alias {wpversion} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Cypher WherePortal 2.00@Chr(10)@AnsiReset()}} {whereportal}
/alias {wpabout} {/showme {@Chr(10)@AnsiReset()@AnsiBold()@ForeCyan()Cypher WhererPortal 2.00 @Chr(10)Released on December 19, 2003 @Chr(10)Created By: Cypher (Jason Stevens) @Chr(10)Homepage: http://www.wizardofthenet.com @Chr(10)Email: jay@Chr(64)wizardofthenet.com @Chr(10)@AnsiReset()}} {whereportal}
/variable {wp1} {SomePlace'} {}
/variable {wp2} {or SomePlace Else'} {}
/variable {wp3} {or SomePlace Else'} {}
/variable {wp4} {or SomePlace Else'} {}
/variable {wpcount} {0}
