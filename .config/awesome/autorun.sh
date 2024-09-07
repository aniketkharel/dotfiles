# xmonad
xmodmap ~/.Xmodmap
# wallpaper
feh --bg-fill ~/dot.org/wallpapers/arch.jpg
# Notifications
/usr/bin/dunst &
# Polkit
/usr/lib/polkit-kde-authentication-agent-1 &
# Wallpaper
nitrogen --restore &
# Dex
# dex -a -s /etc/xdg/autostart/:~/.config/autostart/ &
# Picom
picom --config ~/.config/picom/picom.conf -b &
# Network Applet
nm-applet --indicator &
# emacs
emacs --daemon &
# variety
variety &
