# Here Xfce is kept as default
session=${1:-i3}

case $session in
    i3|i3wm           ) exec i3;;
    gdm|gdm3          ) exec gdm3;;
    lightdm           ) exec lightdm;;
    kde               ) exec startkde;;
    xfce|xfce4        ) exec startxfce4;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac

xsetroot -solid "#333333"

