### common ####

# shortcuts
alias c="clear"
alias k="kubectl"

# dotfiles
alias dotfiles_cd="cd $DOTFILES"
alias dotfiles_code="code $DOTFILES"
alias dotfiles_path="echo $DOTFILES"

# VSCode open
alias ohmyzshc="code ~/.oh-my-zsh"
alias zshc="code ~/.zshrc"

# Git
alias gst="git status"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
alias bump="commit bump"

# misspells
alias gti="git"
alias igt="git"
alias dcoekr="docker"
alias docekr="docker"


###  fzf  ###

is_in_git_repo() {
  git rev-parse HEAD > /dev/null 2>&1
}

unalias gb # unset alias from zsh git plugin
gb() {
  is_in_git_repo &&
    git branch -a -vv --color=always | grep -v '/HEAD\s' |
    fzf --height 40% --ansi --multi --tac | sed 's/^..//' | awk '{print $1}' |
    sed 's#^remotes/[^/]*/##' | xargs -r git checkout
}