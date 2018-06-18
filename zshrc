
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Ensure language is set correctly
export LANG=en_CA.UTF-8

# Detect if we are inside a container or not
if cat /proc/1/cgroup | grep memory | grep -q init.scope
then
    export INSIDE_CONTAINER="no"
else
    export INSIDE_CONTAINER="yes"
fi

# Alias definitions.
if [ -f ~/.zsh_aliases ]
then
    source ~/.zsh_aliases
fi

# Shell Functions.
if [ -f ~/.zsh_functions ]
then
    source ~/.zsh_functions
fi

export EDITOR=vim
export LESS="-F -X -R"

setopt nonomatch

# Set up the prompt
host=`hostname`
setopt prompt_subst
if [ ${host} != 'vcmos-builder' ]
then
    precmd() { PROMPT=$(common_prompt.py); print -Pn "\e]2;%{$(short_pwd.py)%}\a"; }
else
    PROMPT='%F{154}%n%F{188}@%F{208}%M%F{188}:%F{214}%~%F{188}> '
fi

setopt histignorealldups sharehistory

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=50000
setopt appendhistory autocd extendedglob nomatch

bindkey -v
# End of lines configured by zsh-newuser-install

# Add my bin dir to the path
export PATH="$PATH:$HOME/bin"
# Add TeX Live to the PATH
export PATH="$PATH:/usr/local/texlive/2011/bin/x86_64-linux"

zstyle :compinstall filename '/home/jeremyro/.zshrc'
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
LS_COLORS=${LS_COLORS}':di=01;96'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Setup an ssh agent when starting on my work PC
if [ ${host} = "PC2226" -o ${host} = "pc2581" -o ${host} = "PC2581" ]
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
