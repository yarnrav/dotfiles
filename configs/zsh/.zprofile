export SPICETIFY_INSTALL="/home/ya/.local/share/spicetify-cli"
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':'):$SPICETIFY_INSTALL"
export EDITOR="nvim"
export SHELL="zsh"
export OPENER="xdg-open"
export WM="dwm"
export COLORTERM="truecolor"
export BROWSER="firefox"
export TERMINAL="st-meta-256color"
export READER="zathura"
export VISUAL="nvim"
export VIDEO="mpv"
export IMAGE="sxiv"
export NNN_BMS='w:/mnt/ext/dwn/;p:/mnt/ext/Media/Pix/;d:/mnt/ext/Media/dox;v:/mnt/ext/Media/Videos;b:/mnt/ext/Media/Books'

LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
export LS_COLORS;
export MPD_HOST="::1"
export MPD_PORT="6600"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/passwords"
export ZDOTDIR="$HOME/.config/zsh"
export MYVIMRC='~/.config/vim/vimrc'  #or any other location you want
export VIMINIT='source $MYVIMRC'
export HISTFILE="$XDG_DATA_HOME"/bash/history
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export SUDO_ASKPASS="$HOME/scripts/dmenupass"
export NO_AT_BRIDGE=1
export GOPATH="/home/ya/.local/share/go"
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export STACK_ROOT="$XDG_DATA_HOME"/stack
export QT_QPA_PLATFORMTHEME="qt5ct"
#export QT_QPA_FB_DRM=1
#export QT_QPA_PLATFORM="linuxfb:fb=/dev/fb0:tty=/dev/tty2"
export GTK2_RC_FILES=/usr/share/themes/Arc-Dark/gtk-2.0/gtkrc
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
