# ----------------------
# General Aliases
# ----------------------
alias vi="lvim"
alias vim="lvim"
alias ohmyzsh="vi ${HOME}/.oh-my-zsh"
alias zshconf="vi ${HOME}/.zshrc"
alias nvimconf="vi ${HOME}/.config/nvim/init.vim"
alias lvimconf="vi ${HOME}/.config/lvim/config.lua"
alias tmuxconf="vi ${HOME}/.tmux.conf"

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add' alias gaa='git add --all' alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gdh='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --prettyformat:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

# ----------------------
# Functions
# ----------------------
gitpromote() { 
   git fetch && git checkout ${2} && git pull && git merge origin/${1} && git push; 
}

gpip(){
   PIP_REQUIRE_VIRTUALENV="0" python -m pip "$@"
}

