# Load Xresources
xrdb -merge .Xresources

# Set US Swedish keyboard layout
setxkbmap usse

# Use tab and backslash as hyper when pressed together with other key (with usse xkb)
xcape -e "Hyper_L=Tab;Hyper_R=backslash"

# Start notify-osd for notify-send to work
/usr/lib/notify-osd-customizable/notify-osd &

# Start Redshift if not already running
pgrep redshift &> /dev/null || redshift &> /dev/null &

# Random background image slideshow
/data/Scripts/wallpaper-slideshow.sh &

# Use unclutter to hide the mouse when not used
unclutter -root -idle 3 &

# Start XMonad
exec xmonad
