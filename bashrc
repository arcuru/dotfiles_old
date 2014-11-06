
#   Check for an interactive session
[ -z "$PS1" ] && return

#   Setting command prompt
PS1='\[\033[1;32m\]\W/\[\033[0m\] '

#	Enable Tab completion with sudo
complete -cf sudo

#	Set system-wide editor to vim
export EDITOR=vim

#	Overwriting basic commands
alias ls='ls -ph --color=auto'
alias rm='rm -I'

#   Adding a few useful timesavers
alias tarballpack='tar cvzf $1 $2'
alias tarballunpack='tar xzvf'
alias t='tmux'
alias v='vim'
alias vp='vim -u ~/.vimrc-p'
alias u='yaourt -Syua --noconfirm'
alias i='yaourt -S --noconfirm'

# Not needed for Linode
#alias sus='sudo pm-suspend'
#alias m='mplayer -af scaletempo'
#alias maxbright='sudo setpci -s 00:02.0 f4.b=ff'
#alias dwmcompile='cd ~/dotfiles/dwm; cp config.h src/config.h; makepkg -efi --skipinteg; cd -'
#alias monitor-vga='xrandr --output LVDS1 --off --output VGA1 --auto'
#alias monitor-eee='xrandr --output LVDS1 --auto --output VGA1 --off'
#alias monitor-dual='xrandr --output LVDS1 --auto --output VGA1 --auto; xrandr --output VGA1 --right-of LVDS1'
#alias monitor-copy='xrandr --output VGA1 --auto --same-as LVDS1'

