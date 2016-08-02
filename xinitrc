#sudo rdmsr -p7 0x1a0 -f 38:38
sudo modprobe msr
sudo wrmsr -p7 0x1a0 0x850089
sudo disable-ht
LC_ALL=en_US.utf8
LANG=en_US.utf8
#xset -b # Disable the system bell
nitrogen --restore
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
autocutsel &

#openbox &

#xfwm4 &
xfdesktop &
#compton -cf --backend  xr_glx_hybrid --vsync opengl &

#metacity &
#compiz --replace &

xfce4-panel &
compton -cf --backend  xr_glx_hybrid --vsync opengl --xrender-sync-fence --vsync-aggressive --xrender-sync -m .9 &
#exec xfce4-session
exec dwm
