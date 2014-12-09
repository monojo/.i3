#!/usr/bin/env bash

if [ -d "$HOME/.i3/" ]; then
	echo ".i3 exist"
else
	echo "no .i3 dir, creating it"
	mkdir $HOME/.i3
fi

rm -f $HOME/.i3/config
rm -f $HOME/.i3/i3status.conf
rm -f $HOME/.Xresources

ln -s $PWD/config $HOME/.i3/config
ln -s $PWD/i3status.conf $HOME/.i3/i3status.conf
ln -s $PWD/Xresources $HOME/.Xresources
