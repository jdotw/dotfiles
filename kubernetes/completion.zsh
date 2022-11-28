if [ -e $PATH/kubectl ]; then
  source <(kubectl completion zsh)
  source <(kubectl completion zsh | sed 's/kubectl/kk/g')
fi
