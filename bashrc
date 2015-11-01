# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export LANG=en_CA.UTF-8
export TERM=xterm-256color

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias ll='ls -l --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'
fi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
export GREP_OPTIONS='--color'
export EDITOR=vim
export LESS="-F -X -R"

# Add the ELDK to the PATH
export PATH="$PATH:/opt/eldk/usr/bin:/opt/eldk/bin"

# Add TeX Live to the PATH
export PATH="$PATH:/usr/local/texlive/2011/bin/x86_64-linux"

if [ `hostname` = "PC2226" ]
then
    if [ -z "${SSH_AGENT_PID}" ]
    then
        export SSH_AGENT_PID=`pgrep ssh-agent`
        if [ -z "${SSH_AGENT_PID}" ]
        then
            eval `ssh-agent -s`
        fi
    fi

    ID_FINGER_PRINTS="/home/jeremyro/.ssh/identity_fingerprints"
    ssh-add -l > ${ID_FINGER_PRINTS} 2>/dev/null

    KEYS="/home/jeremyro/.ssh/identities/pc1895_key"
    if [ -s ${ID_FINGER_PRINTS} ] 
    then
        for KEY in ${KEYS}
        do
            FINGERPRINT=`ssh-keygen -f ${KEY} -l | awk '{print $2}'`
            if ! grep -q "${FINGERPRINT}" ${ID_FINGER_PRINTS}
            then
                ssh-add ${KEY}
            fi
        done
    fi
    rm ${ID_FINGER_PRINTS}
fi

#set postpends for gcc and clang for vecima build environment
export GCC_VERSION_POSTPEND=-4.8
export CLANG_VERSION_POSTPEND=-3.6
#export USE_CLANG=yes
# Make the ASAN and MSAN symbolizers work...
export MSAN_SYMBOLIZER_PATH="`which llvm-symbolizer-3.6`"
export ASAN_SYMBOLIZER_PATH="`which llvm-symbolizer-3.6`"
export ASAN_OPTIONS=symbolize=1
