#Xresources load.. hopefull?
#
#
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#setting background with feh

#~/.fehbg &

#This is the code for the vertical second monitor

~/scripts/xrandrvertical.sh &

#The script below works correctly but not when the monitor is flipped vertically
#~/.paperview ~/scenes/Lucy 2 1080 0 2560 1440 ~/scenes/MatrixPurple 2 0 0 1080 1920 &

~/scripts/dynamicBackground.sh &
#The above script handles if you just want a specific background, this one below will randomly select a background on startup:
#while true
#do
#    scene=$(ls -d ~/scenes/*/ | shuf -n 1)
#    timeout 600 paperview $scene 6 0 0 2560 1440 ~/scenes/MatrixPurple 5 2560 0 1080 1920 # See Multi-Monitor Use above for multiple monitor support
#done

#Using Xrandr sctipt to set the monitor configuration, was gonna use script but hey

#Script for auto-starting aw-qt (the tracking tool).
#This hasn't been working since i swapped Neovim version, think i have to manually go back and install the nvim pluggin - but also not too bothered right now.
#~/scripts/aw-qt_track_start.sh &

#Auto Launch script for Piper (Logitech G Pro Wirless Controller) ///Actually wasn't needed but the piperAuto script still exists but maybe renamed for use at a later date.

#~/scripts/piperAuto.sh &
#
#No need for austostart patch now (hopefully)
~/dwm-bar/dwm_bar.sh &
#Executed later
exec dwm
