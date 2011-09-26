. $HOME/.bashrc

dropboxd &

# Startx only if no other session exists and login is on tty1
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
  logout
fi
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty2 ]]; then
  startx
  logout
fi
