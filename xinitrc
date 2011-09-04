#Generic setup stuff
(sleep 300s && dropboxd) &

if [ $(tty) = /dev/tty1 ]; then
	
	sh ~/.fehbg &

	#dwm stuff
	conky | while read -r; do xsetroot -name "$REPLY"; done &
	while true; do
		dwm 2> ~/.dwm.log
	done
fi
