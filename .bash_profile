# env系
eval "$(pyenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/Users/yoshiki/.nodebrew/current/bin 

#プロンプト設定(gitのブランチ表示込み)
git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}
PS1='\[\033[36m\]\u@\H\[\033[0m\]\[\033[32m\]\w\[\033[0m\]:\[\033[35m\]$(git_branch)\[\033[0m\]\n$ '

#alias
alias ls="ls -G"
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -Al"
