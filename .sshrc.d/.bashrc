#プロンプト設定(gitのブランチ表示込み)
git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}
PS1='\[\033[36m\]\u@\H\[\033[0m\]\[\033[32m\]\w\[\033[0m\]:\[\033[35m\]$(git_branch)\[\033[0m\]\n$ '
