#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | sed -n '2p' | awk '{print $2}')
if [ $HYPRGAMEMODE = 1 ] ; then
    hyprctl --batch "\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        "
    exit
fi
hyprctl reload
