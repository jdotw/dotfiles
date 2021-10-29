alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias ls="exa --git --color=automatic -a -l -b"

alias diff="/usr/local/bin/diff"

GCC_PARALLEL=$(($(sysctl -n hw.ncpu) - 1))
export PATH="$PATH:/Applications/ARM/bin"
alias make="make -j$GCC_PARALLEL"
