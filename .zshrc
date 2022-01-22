# Source
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Alias
alias vc="cd ~/Work/VC/"
alias oj="cd ~/Work/OJ/"

alias cpp='f() { g++-11 $1 -DONPC && ./a.out };f'
alias diskhealth='smartctl -a disk0'

alias g='s -p google'
alias gm='s -p gmail'
alias yt='s -p youtube'
alias stov='s -p stackoverflow'


# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_

autoload -U colors && colors
PS1="%{$fg[yellow]%}%2~ %{$fg[blue]%}➜ %{$fg[red]%}"
