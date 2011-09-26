# Print private welcome message
. $HOME/.msg

# Check for an interactive session
[ -z "$PS1" ] && return

PS1='\[\033[1;32m\]\W/\[\033[0m\] '

#	Enable Tab completion with sudo
complete -cf sudo

#	Set system-wide editor to vim
export EDITOR=vim

#	Overwriting basic commands
alias ls='ls -ph --color=auto'
alias rm='rm -I'
alias temp='acpi -t'
alias tarballpack='tar cvzf $1 $2'
alias tarballunpack='tar xzvf'
alias maxbright='sudo setpci -s 00:02.0 f4.b=ff'
alias dwmcompile='cd ~/dotfiles/dwm; cp config.h src/config.h; makepkg -efi --skipinteg; cd -'
alias m='mplayer'
alias sus='sudo pm-suspend'
alias t='tmux'
alias v='vim'
alias monitor-vga='xrandr --output LVDS1 --off --output VGA1 --auto'
alias monitor-eee='xrandr --output LVDS1 --auto --output VGA1 --off'
alias monitor-dual='xrandr --output LVDS1 --auto --output VGA1 --auto; xrandr --output VGA1 --right-of LVDS1'
alias monitor-copy='xrandr --output VGA1 --auto --same-as LVDS1'
alias vp='vim -u ~/.vimrc-p'
alias kindle='wine C:\\Program\ Files\ \(x86\)\\Amazon\\Kindle\\Kindle.exe'
alias speaker1="sudo sed -i 's/defaults.ctl.card\ ./defaults.ctl.card\ 1/' /usr/share/alsa/alsa.conf; sudo sed -i 's/defaults.pcm.card\ ./defaults.pcm.card\ 1/' /usr/share/alsa/alsa.conf"
alias speaker0="sudo sed -i 's/defaults.ctl.card\ ./defaults.ctl.card\ 0/' /usr/share/alsa/alsa.conf; sudo sed -i 's/defaults.pcm.card\ ./defaults.pcm.card\ 0/' /usr/share/alsa/alsa.conf"

#	Upgrading with bauerbill & pacman
#alias u='sudo bauerbill -Syu --rebase --aur --build-as patty'
#alias i='sudo bauerbill -S --aur --build-as patty'
alias r='sudo pacman -Rs'
#alias clean='rm -rf /tmp/bauerbill'
#alias search='bauerbill -Ss --aur'

#   Upgrading with yaourt
alias u='yaourt -Syua --noconfirm'
alias i='yaourt -S --noconfirm'

