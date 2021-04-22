#!/bin/sh

if [ "$DESKTOP_SESSION" = "gnome" ]; then 
   sleep 5s
   killall conky
   cd "$HOME/.config/conky"
   conky -c "$HOME/.config/conky/Process" &
   cd "$HOME/.conky/Sirius"
   conky -c "$HOME/.conky/Sirius/Sirius" &
   cd "$HOME/.conky/spoclo/spotify-top"
   conky -c "$HOME/.conky/spoclo/spotify-top/spoclo_rightedge.conky" &
   exit 0
fi
if [ "$DESKTOP_SESSION" = "i3" ]; then 
   sleep 5s
   killall conky
   cd "$HOME/.conky/i3"
   conky -c "$HOME/.conky/i3/Process" &
   exit 0
fi
if [ "$DESKTOP_SESSION" = "gnome-xorg" ]; then 
   sleep 5s
   killall conky
   cd "$HOME/.config/conky"
   conky -c "$HOME/.config/conky/Process" &
   cd "$HOME/.conky/Sirius"
   conky -c "$HOME/.conky/Sirius/Sirius" &
   cd "$HOME/.conky/spoclo/spotify-top"
   conky -c "$HOME/.conky/spoclo/spotify-top/spoclo_rightedge.conky" &
   exit 0
fi
if [ "$DESKTOP_SESSION" = "bspwm" ]; then 
   sleep 5s
   killall conky
   cd "$HOME/.conky/wm"
   conky -c "$HOME/.conky/wm/Spoclo" &
   exit 0
fi
