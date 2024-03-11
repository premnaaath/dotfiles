alias cat='cat -n'
alias vim='nvim'
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -alF'
alias ..='cd ..'
alias dev='cd $HOME/Developer/'
alias vc='cd $HOME/Developer/VC/'
alias oj='cd $HOME/Developer/OJ/'
alias cp-dir='pwd|pbcopy'
alias cp-file='pbcopy <'
alias cpp='f() { g++-13 $1 -DONPC && ./a.out }; f'
alias count='ls -1 | wc -l'
alias prop='stat -x'
alias bak='f() { mv "$1" "$1.bak" }; f'
alias C='clear'
alias Q='exit'

alias cvenv='python -m venv venv'
alias avenv='source venv/bin/activate'
alias jl='jupyter lab'
alias jl-i='pip install jupyterlab ipykernel'
alias jl-ls='jupyter kernelspec list'
alias jl-add='python -m ipykernel install --user --name=venv'
alias jl-delete='jupyter kernelspec uninstall venv'

alias github='open "https://github.com/sudo-prem"'
alias gg='lazygit'

alias mv='mv -i'
alias rm='rm -i'

alias brew-dep='brew uses --recursive --installed'
alias brew-upgrade='brew list --cask | xargs brew upgrade --cask'
alias brew-bundle='rm -rf $HOME/dotfiles/brew/Brewfile; brew bundle dump --file=$HOME/dotfiles/brew/Brewfile'
alias pip-freeze='rm -rf $HOME/dotfiles/misc/python/requirements.txt; pip freeze > $HOME/dotfiles/misc/python/requirements.txt'

alias check-port='function _check-port(){ lsof -i :$1 }; _check-port'
alias kill-port='sudo kill -9'
