#!/bin/env bash

PS1="\W$> "

alias cls="clear"

cb () {
    tar cf "${PWD##*/}.cbt" *;
    mv -v "${PWD##*/}.cbt" ..;
}

txz () {
    tar cf "${PWD##*/}.tar" *;
    xz -9vveT0 "${PWD##*/}.tar";
    mv -v "${PWD##*/}.tar.xz" ..;
}

compress_xml() {
		for i in `find . -name *.xml -type f`; do
				xmlformat --compress --overwrite "$i";
		done;
}

format_xml () {
		for i in `find . -name *.xml -type f`; do
				xmlformat --overwrite "$i";
		done;
}
