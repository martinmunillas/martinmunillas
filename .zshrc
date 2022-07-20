export ZSH="/Users/martinmunilla/.oh-my-zsh"

ZSH_THEME="agnoster"
DEFAULT_USER=martinmunilla

plugins=( 
    git
    yarn
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_STRATEGY=(completion history)

source $ZSH/oh-my-zsh.sh

alias grsm="git reset $(git merge-base master $(git branch --show-current))"
alias trdb="yarn typeorm schema:drop && yarn migrate"
alias gcb="git branch | grep -v "master" | xargs git branch -D "

alias buit="nvm use 16 && ttab 'cd ~/buit/admin && yarn dev' && cd ~/buit/api && yarn dev"
