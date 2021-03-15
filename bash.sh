#!/bin/env bash

PS1="\W$> "

alias cls="clear"
alias zstd="zstdmt -v --ultra -22"
alias ed="emacs -nw"
alias xmlf="xmlformat --overwrite"
alias xmlc="xmlformat --compress --overwrite"

cb () {
    tar cf "${PWD##*/}.cbt" *;
    mv -v "${PWD##*/}.cbt" ..;
}

txz () {
    tar cf "${PWD##*/}.tar" *;
    xz -9vveT0 "${PWD##*/}.tar";
    mv -v "${PWD##*/}.tar.xz" ..;
}
