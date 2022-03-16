export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"  
eval "$(pyenv virtualenv-init -)"



alias ..='cd ..'
alias ...='cd ../../'
alias ...='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias myprofile='cd && open ~/.zshrc'
alias cdl='cd ~/Downloads'
alias cdk='cd ~/Desktop'




alias sj='cd && jupyter notebook'
alias black='black --line-length 100'ß


# Load version control information
autoload -U colors && colors
PS1="%B%{$fg[red]%}%* %{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~ %{$reset_color%}$%b "
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
#PROMPT='% ${PWD/#$HOME/~}$ '
RPROMPT=\$vcs_info_msg_0_

export PYTHONBREAKPOINT=ipdb.set_trace
