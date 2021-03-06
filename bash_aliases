#!/bin/bash
#vim:filetype=sh

if [ "${INSIDE_CONTAINER}" = "no" ]
then
    alias vim='tvim'
    alias nvim='nvim -p'
    alias gvim='gvim -p'
    alias irc_tunnel_dalcenti='ssh -Nf -nL 5557:localhost:5557 dalcenti'
    alias tunnel_dalcenti='ssh -D 2048 -f -C -q -N dalcenti'
    alias irc_tunnel_rndirc='ssh -Nf -nL 5556:localhost:5556 rndirc'
    alias man='vman'
    alias ssh_vm='ssh tier3support@`vm_ip.py`'
    alias root_vm='ssh root@`vm_ip.py`'
else
    alias vim='vim -p'
    alias neptune_init='. ./yocto-init-build-env -l meta-neptune -d ../neptune-build -s /home/ssd_mount/workspace/neptune-sstate-cache'
    alias ssh_vm='ssh tier3support@`vm_ip.py`'
    alias root_vm='ssh root@`vm_ip.py`'
fi

alias cim='vim -p `ls ../include/*.h` `ls *.h` `ls *.c`'
alias diff='diff --color=auto --strip-trailing-cr -U 10 -X ~/.diffexcludes -I "\$Id:.*\$"'
alias cvsdiff='cvs diff -I "\$Id:.*\$"'
alias cgrep='grep -I --exclude-from=/home/jeremyro/.grepexcludes'
alias egrep='grep -IE --exclude-from=/home/jeremyro/.grepexcludes'
alias grep='grep --color'
alias ack='ack --ignore-dir "git" --ignore-dir ".mocks" --follow'
alias can-has='apt search'
alias sqlite3='sqlite3 -init ~/.sqlite_config'
alias irc_tunnel_dalcenti='ssh -Nf -nL 5557:localhost:5557 dalcenti'
alias tunnel_dalcenti='ssh -D 2048 -f -C -q -N dalcenti'
alias irc_tunnel_rndirc='ssh -Nf -nL 5556:localhost:5556 rndirc'
alias snmpwalk='snmpwalk -v2c -m +VCM-TERRACEQAM-MIB'
alias snmptranslate='snmptranslate -m +VCM-TERRACEQAM-MIB'
alias top='htop'
alias du='ncdu'
