export LANG="en_US.utf8"
export LC_ALL="en_US.utf8"
setterm -blank 0 -powersave off -powerdown 0
xset -dpms
xset s off
xcompmgr &
exec startfluxbox
