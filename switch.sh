#!/bin/bash
rm ~/.cache/i3lock/current
if [ "$1" == "dark" ]; then
	ln -s ~/.cache/i3lock/dark ~/.cache/i3lock/current
	ln -sf ~/solarized/xresources/dark ~/solarized/xresources/solarized
else
	ln -s ~/.cache/i3lock/light ~/.cache/i3lock/current
	ln -sf ~/solarized/xresources/light ~/solarized/xresources/solarized
fi

xrdb ~/.Xresources
i3-msg restart
