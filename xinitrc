#Generic setup stuff
urxvtd &
(sleep 1m && dropboxd) &
xset +fp /usr/share/fonts/local
xset fp rehash

if [ $(tty) = /dev/tty1 ]; then
	
	sh ~/.fehbg &

	#dwm stuff
	conky | while read -r; do xsetroot -name "$REPLY"; done &
	while true; do
		dwm 2> ~/.dwm.log
	done
fi
if [ $(tty) = /dev/tty2 ]; then
	exec chromium
fi
