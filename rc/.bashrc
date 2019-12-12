alias c="cd"
alias et="exit"

case "${OSTYPE}" in
  darwin*)
    alias ls="ls -G"
    export LSCOLORS=Exgxfxfxcxegexabagacad
    ;;
  linux*)
    alias ls="ls --color"
    eval `dircolors ~/.colorrc`
    ;;
esac
alias l="ls"
alias s="ls"
alias sl="ls"
alias ll="ls -l"

