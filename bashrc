# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export LANG=en_CA.UTF-8
if [[ -n "$TMUX" ]]
then
    export TERM
else
    export TERM=xterm-256color
fi

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

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
    xterm-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]
then
    if [ -n "$TMUX" ]
    then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;36m\]$(short_pwd.py)\[\033[00m\]\$ '
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;36m\]$(short_pwd.py)\[\033[00m\]\$ '
    fi
else
    if [ -n "$TMUX" ]
    then
        PS1='${debian_chroot:+($debian_chroot)}$(short_pwd.py)\$ '
    else
        PS1='${debian_chroot:+($debian_chroot)}\u@\h:$(short_pwd.py)\$ '
    fi
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Detect if we are inside a container or not
if cat /proc/1/cgroup | grep memory | grep -q init.scope
then
    export INSIDE_CONTAINER=no
else
    export INSIDE_CONTAINER=yes
fi

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
    LS_COLORS=${LS_COLORS}:'di=1;96' ; export LS_COLORS
    alias ls='ls --color=auto'
    alias ll='ls -l --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'
fi

set -o vi

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
        export SSH_AUTH_SOCK=`ls /tmp/ssh-*/agent.*`
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

# Setup a persistent ssh agent socket when requested (on interactive ssh only)
if [[ -n "$SSH_TTY" && -S "$SSH_AUTH_SOCK" ]]; then
    ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
fi

# Launch TMUX when an interactive shell is asked for from the local machine. 
# SSH sessions may want a unique tmux, or they may not
if [ "${INSIDE_CONTAINER}" = "no" ]
then
    if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
        echo Local TMUX sessions:
        tmux list-sessions
    else
        if command -v tmux>/dev/null; then
            #[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
            case $- in *i*)
                [ -z "$TMUX" ] && exec tmux
            esac
        fi
    fi
fi
