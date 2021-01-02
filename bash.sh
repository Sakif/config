#!/bin/bash

PS1="\W$> "

alias cls="clear"

cb () {
    tar cf "${PWD##*/}.cbt" *;
    mv -v "${PWD##*/}.cbt" ..;
}

txz () {
		tar cf "${PWD##*/}.tar" *;
		xz -9veT0 "${PWD##*/}.tar";
		mv -v "${PWD##*/}.tar.xz" ..;
}
