
#####################################################################################################
#                                       Basic Admin Tool                                            #
#                                                                                                   #
# This is a basic shell command tool for system admin. These shell commmands are executed via irc   #
# trigger and outputs the resluts in irc.                                                           #                                        
#                                                                                                   #
# List of commands                                                                                  #
#                   nslookup | dig | host | ping | ping6 | uptime                                   #
# Tested on                                                                                         #
#                   Eggdroop 1.9.1 and Debian 11 | Ubuntu 20 | OpenBSD 6.9                          #                                                              
#                                                                                                   #
# Installation           								            #
#                  Basic installation - put the script in your bots script dir add the tcl to your  #                                                    
# bots conf file                                                                                    #
#                                                                                                   #
# The uptime script is actually adopted from ShellUptime.tcl v0.3 [07 Janvier 2002] script          #                                                                                    
#                                                                                                   #
#                           Error | irc.ircnow.org | error@ircnow.org                               #
#####################################################################################################

#------------ This is Configuration Section --------------------------------------------------------# 

#--- Trigger ------------# 

# What trigger you would use, ie: ! , . , ; or @ etc ...
set trigger "!"

#--- User flag ----------#
# you can a flag here to make it secure.#
set urflag "-"

###### PLEASE DONT TOUCH BELLOW YOU MAY BREAK IT OR MAKE IT SOMETHING  REALLY NICE BY ACCDIENT ;P #########

###############
# host        #
###############

bind pub $urflag ${trigger}host pub_host

proc pub_host {nick uhost hand channel test} {
if {[catch {exec host [lindex $test 0] } host]} { set host 0 }
if {[lindex $host 0] == "0"} { putserv "PRIVMSG $channel i think its working"; return 0 }
if {[lindex $host 0] != "0"} {
putserv "PRIVMSG $channel : Results for [lindex $test]"
putserv "PRIVMSG $channel : [lindex $host 0] [lindex $host 1] [lindex $host 2] [lindex $host 3]"
putserv "PRIVMSG $channel : [lindex $host 4] [lindex $host 5] [lindex $host 6] [lindex $host 7] [lindex $host 8] "
putserv "PRIVMSG $channel : [lindex $host 9] [lindex $host 10] [lindex $host 11] [lindex $host 12] [lindex $host 13] [lindex $host 14] [lindex $host 15]"
putserv "PRIVMSG $channel : [lindex $host 16] [lindex $host 17] [lindex $host 18] [lindex $host 19] [lindex $host 20] [lindex $host 21]"
#putserv "PRIVMSG $channel : [lindex $host 22] [lindex $host 23] [lindex $host 24] [lindex $host 25] [lindex $host 26] [lindex $host 27] [lindex $host 28]"
putserv "PRIVMSG $channel : End of Request"
return 0
 }
}

###############
# dig         #
###############
bind pub $urflag ${trigger}dig pub_dig

proc pub_dig {nick uhost hand channel test} {
if {[catch {exec dig [lindex $test 0] } dig]} { set dig 0 }
if {[lindex $dig 0] == "0"} { putserv "PRIVMSG $channel i think its working"; return 0 }
if {[lindex $dig 0] != "0"} {
putserv "PRIVMSG $channel : digging the dong of [lindex $test]"
putserv "PRIVMSG $channel : [lindex $dig 0] [lindex $dig 1] [lindex $dig 2] [lindex $dig 3]"
putserv "PRIVMSG $channel : [lindex $dig 4] [lindex $dig 5] [lindex $dig 6] [lindex $dig 7] [lindex $dig 8] "
putserv "PRIVMSG $channel : [lindex $dig 9] [lindex $dig 10] [lindex $dig 11] [lindex $dig 12] [lindex $dig 13] [lindex $dig 14] [lindex $dig 15]"
putserv "PRIVMSG $channel : [lindex $dig 16] [lindex $dig 17] [lindex $dig 18] [lindex $dig 19] [lindex $dig 20] [lindex $dig 21]"
putserv "PRIVMSG $channel : [lindex $dig 22] [lindex $dig 23] [lindex $dig 24] [lindex $dig 25] [lindex $dig 26] [lindex $dig 27] [lindex $dig 28]"
putserv "PRIVMSG $channel : [lindex $dig 29] [lindex $dig 30] [lindex $dig 31] [lindex $dig 32] [lindex $dig 33] "
putserv "PRIVMSG $channel : [lindex $dig 34] [lindex $dig 35] [lindex $dig 36] [lindex $dig 37] [lindex $dig 38] "
putserv "PRIVMSG $channel : [lindex $dig 39] [lindex $dig 40] [lindex $dig 41] [lindex $dig 42] [lindex $dig 43][lindex $dig 44] "
putserv "PRIVMSG $channel : [lindex $dig 45] [lindex $dig 46] [lindex $dig 47] [lindex $dig 48] [lindex $dig 49][lindex $dig 50] "
putserv "PRIVMSG $channel : [lindex $dig 51] [lindex $dig 52] [lindex $dig 56] [lindex $dig 57] [lindex $dig 58][lindex $dig 59] "
putserv "PRIVMSG $channel : [lindex $dig 60] [lindex $dig 61] [lindex $dig 62] [lindex $dig 63] [lindex $dig 67][lindex $dig 68] "
putserv "PRIVMSG $channel : [lindex $dig 69] [lindex $dig 70] [lindex $dig 71] [lindex $dig 72] [lindex $dig 73][lindex $dig 74] "
putserv "PRIVMSG $channel : [lindex $dig 75] [lindex $dig 76] [lindex $dig 76] [lindex $dig 77] [lindex $dig 78][lindex $dig 79] "
#putserv "PRIVMSG $channel : [lindex $dig 80] [lindex $dig 81] [lindex $dig 82] [lindex $dig 83] [lindex $dig 87][lindex $dig 88] "
#putserv "PRIVMSG $channel : [lindex $dig 89] [lindex $dig 90] [lindex $dig 91] [lindex $dig 92] [lindex $dig 93][lindex $dig 94] "
#putserv "PRIVMSG $channel : [lindex $dig 95] [lindex $dig 96] [lindex $dig 96] [lindex $dig 97] [lindex $dig 98][lindex $dig 99] "
putserv "PRIVMSG $channel : End of Request"
return 0
 }
}

###############
# nslookup    #
###############
bind pub $urflag ${trigger}nslookup pub_nslp

proc pub_nslp {nick uhost hand channel test} {
if {[catch {exec nslookup [lindex $test 0] } nslookup]} { set nslookup 0 }
if {[lindex $nslookup 0] == "0"} { putserv "PRIVMSG $channel i think its working"; return 0 }
if {[lindex $nslookup 0] != "0"} {
putserv "PRIVMSG $channel : NSLOOKUP for [lindex $test]:"
putserv "PRIVMSG $channel : [lindex $nslookup 0] [lindex $nslookup 1] [lindex $nslookup 2] [lindex $nslookup 3]"
putserv "PRIVMSG $channel : [lindex $nslookup 4] [lindex $nslookup 5] [lindex $nslookup 6] [lindex $nslookup 7] [lindex $nslookup 8] "
putserv "PRIVMSG $channel : [lindex $nslookup 9] [lindex $nslookup 10] [lindex $nslookup 11] [lindex $nslookup 12] [lindex $nslookup 13] [lindex $nslookup 14] [lindex $nslookup 15]"
putserv "PRIVMSG $channel : [lindex $nslookup 16] [lindex $nslookup 17] [lindex $nslookup 18] [lindex $nslookup 19] [lindex $nslookup 20] [lindex $nslookup 21]"
#putserv "PRIVMSG $channel : [lindex $nslookup 22] [lindex $nslookup 23] [lindex $nslookup 24] [lindex $nslookup 25] [lindex $nslookup 26] [lindex $nslookup 27] [lindex $nslookup 28]"
#putserv "PRIVMSG $channel : [lindex $nslookup 29] [lindex $nslookup 30] [lindex $nslookup 31] [lindex $nslookup 32] [lindex $nslookup 33] "
#putserv "PRIVMSG $channel : [lindex $nslookup 34] [lindex $nslookup 35] [lindex $nslookup 36] [lindex $nslookup 37] [lindex $nslookup 38] "
#putserv "PRIVMSG $channel :  [lindex $nslookup 39] [lindex $nslookup 40] [lindex $nslookup 41] [lindex $nslookup 42] [lindex $nslookup 43][lindex $nslookup 44] "
putserv "PRIVMSG $channel : End of Request"
return 0

 }
}
###############
# ping        #
###############

bind pub $urflag ${trigger}ping  pub_ping

proc pub_ping {nick uhost hand channel rest} {
if {[catch {exec ping -c 3 [lindex $rest 0] } ping]} { set ping 0 } 
if {[lindex $ping 0] == "0"} { putserv "PRIVMSG $channel :No reply from ([lindex $rest 0])or Invalid entry"; return 0 }
if {[lindex $ping 0] != "0"} {
putserv "PRIVMSG $channel :Ping reply from  [lindex $rest 0]:"
putserv "PRIVMSG $channel :[lindex $ping 0] [lindex $ping 1] [lindex $ping 2] [lindex $ping 3] [lindex $ping 4] [lindex $ping 5]"
putserv "PRIVMSG $channel :[lindex $ping 6] [lindex $ping 7] [lindex $ping 8] [lindex $ping 9] [lindex $ping 10] [lindex $ping 11] [lindex $ping 12] [lindex $ping 13]"
putserv "PRIVMSG $channel :[lindex $ping 14] [lindex $ping 15] [lindex $ping 16] [lindex $ping 17] [lindex $ping 18] [lindex $ping 19] [lindex $ping 20] [lindex $ping 21]"
putserv "PRIVMSG $channel :[lindex $ping 22] [lindex $ping 23] [lindex $ping 24] [lindex $ping 25] [lindex $ping 26] [lindex $ping 27] [lindex $ping 28] [lindex $ping 29]"
putserv "PRIVMSG $channel :[lindex $ping 30] [lindex $ping 31] [lindex $ping 32] [lindex $ping 33] [lindex $ping 34]"
putserv "PRIVMSG $channel :[lindex $ping 38] [lindex $ping 39] [lindex $ping 40] [lindex $ping 41] [lindex $ping 42] [lindex $ping 43]"
putserv "PRIVMSG $channel :[lindex $ping 44] [lindex $ping 45] [lindex $ping 46] [lindex $ping 47] [lindex $ping 48] [lindex $ping 49]"
return 0
  }
}

###############
# ping6       #
###############

bind pub $urflag ${trigger}ping6 pub_ping6

proc pub_ping6 {nick uhost hand channel rest2} {
if {[catch {exec ping6 -c 3 [lindex $rest2 0] } ping6]} { set ping6 0 }
if {[lindex $ping6 0] == "0"} { putserv "PRIVMSG $channel :No reply from ([lindex $rest2 0]) or Invalid entry"; return 0 }
if {[lindex $ping6 0] != "0"} {
putserv "PRIVMSG $channel :Ping Reply from [lindex $rest2 0]:"
putserv "PRIVMSG $channel :[lindex $ping6 0] [lindex $ping6 1] [lindex $ping6 2] [lindex $ping6 3] [lindex $ping6 4] [lindex $ping6 5]"
putserv "PRIVMSG $channel :[lindex $ping6 6] [lindex $ping6 7] [lindex $ping6 8] [lindex $ping6 9] [lindex $ping6 10] [lindex $ping6 11] [lindex $ping6 12] [lindex $ping6 13]"
putserv "PRIVMSG $channel :[lindex $ping6 14] [lindex $ping6 15] [lindex $ping6 16] [lindex $ping6 17] [lindex $ping6 18] [lindex $ping6 19] [lindex $ping6 20] [lindex $ping6 21]"
putserv "PRIVMSG $channel :[lindex $ping6 22] [lindex $ping6 23] [lindex $ping6 24] [lindex $ping6 25] [lindex $ping6 26] [lindex $ping6 27] [lindex $ping6 28] [lindex $ping6 29]"
putserv "PRIVMSG $channel :[lindex $ping6 30] [lindex $ping6 31] [lindex $ping6 32] [lindex $ping6 33] [lindex $ping6 34]"
putserv "PRIVMSG $channel :[lindex $ping6 38] [lindex $ping6 39] [lindex $ping6 40] [lindex $ping6 41] [lindex $ping6 42] [lindex $ping6 43]"
putserv "PRIVMSG $channel :[lindex $ping6 44] [lindex $ping6 45] [lindex $ping6 46] [lindex $ping6 47] [lindex $ping6 48] [lindex $ping6 49]"
return 0
 }
}


###############
# SHELLUPTIME #
###############

#Public Commande

bind pub $urflag ${trigger}uptime pub:shelluptime

proc shelluptime2 { } {
        if {[catch {exec uptime} uptime]} { set uptime "Uptime non disponible." }
        if {[catch {exec uname -s} machine]} { set machine [unames] }
        if {[catch {exec hostname} hostname]} { set hostname [info hostname] }
        return "Uptime for $hostname ($machine): is $uptime"
}

proc pub:shelluptime { nick host hand chan arg } {
        putserv "PRIVMSG $chan :[shelluptime2]"
}



putlog "Sys-Admins-IRC Loaded Sucessfully"
putlog "Sys-Admins-IRC  by \002 Error"

