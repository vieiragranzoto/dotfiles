# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pri/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
neofetch
# VirtualBox config
export WLR_NO_HARDWARE_CURSORS=1
export WLR_RENDERER_ALLOW_SOFTWARE=1
# Redirect to Sway after login
if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway
fi