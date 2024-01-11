#
# ~/.bashrc
#
# All of the below Alias's have been removed for now as using ZSH is being used instead.
#Alias for having icons when you CD etc.
#alias ls='logo-ls'
#alias la='logo-ls -A'
#alias ll='logo-ls -al'
# equivalents with Git Status on by Default
#alias lsg='logo-ls -D'
#alias lag='logo-ls -AD'
#alias llg='logo-ls -alD'

#this is used for the transparency

#this allows us to reload Xresources with the rel command
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"

#Alias for allowing me to spawn a new window with the current window properties / directory
alias copyterm="st >/dev/null 2>&1 & disown"

#Alias for updating both Pipenv and Pyenv
alias py-update="pyenv update && pip install --upgrade --upgrade-strategy eager --user pipenv"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# This has been replaced by the logo-ls
# alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#this creates the bartib link so it can be used wherever without having to define the specific path

# pnpm
export PNPM_HOME="/home/mothership/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

      #curl to path added, mainly for use in Nvim and ActivtyWatch
export PATH="/usr/bin/curl:$PATH"

#ALL OF THE BELOW HAS BEEN SUPERSEEDED BY PIPENV, THIS IS NOW WHAT IS BEING USED FOR THE MAIN python environments.
#export PATH="$PATH:/home/mothership/.local/bin"

############ ALL OF THIS HAS BEEN REMOVED FROM BASHRC BECAUSE IT EXISTS IN ZSHRC, I AM LEAVINGI IT HERE INCASE #######
############# I DECIDE TO COME BACK TO BASH - ALOT WAS ADDED BEFORE I KNEW THAT ZSHRC DOES THIS ITSELF ###############

#PYTHON STUFF FROM GPT (PYENV) REALSIED I HAVE ALL THIS AT THE BOTTOM ALREADY SO NO NEED TO RE-ADD
#This is what GPT has told me to put in my path for PYENV
#export PATH="$HOME/.local/bin:$PATH"
#export PYENV_ROOT="$HOME/.pyenv"

#this is used for the virutalwrapper in python.. it said on the archwiki docs sooo...
#!/bin/bashexport WORKON_HOME=~/.virtualenvs
#source /usr/bin/virtualenvwrapper.sh #adding the _lazy here should increase speed as it will only load virtualenvwrapper the first time the functions called.

#This is to fix the path for Python PIP files.. weird configuration that i don't really understand.
#I thin i understand and now since i am using virutaenvironments for python i don't think this is necessary as all of the
#required pip dependencies will be downloaded within that environment...
#export PATH="/home/mothership/.local:$PATH"
#export PATH="/user/lib/python3.11:$PATH"


#BELOW IS FOR PYENV, THIS ALLOWS MULTIPLE VERSIONS OF PYTHON TO EXIST.

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#
#
#
## Load pyenv configuration
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"
#eval "$(pyenv init -)"
## Add pipenv autocompletion
#_pipenv_completion() {
#    local IFS=$'\n'
#    local response
#
#    response=$(env COMP_WORDS="${COMP_WORDS[*]}" COMP_CWORD=$COMP_CWORD _PIPENV_COMPLETE=bash_complete $1)
#
#    for completion in $response; do
#        IFS=',' read type value <<< "$completion"
#
#        if [[ $type == 'dir' ]]; then
#            COMPREPLY=()
#            compopt -o dirnames
#        elif [[ $type == 'file' ]]; then
#            COMPREPLY=()
#            compopt -o default
#        elif [[ $type == 'plain' ]]; then
#            COMPREPLY+=($value)
#        fi
#    done
#
#    return 0
#}
#
#_pipenv_completion_setup() {
#    complete -o nosort -F _pipenv_completion pipenv
#}
#
#_pipenv_completion_setup;
#
