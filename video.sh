#!/bin/sh

# /usr/lib/mc/ext.d/video.sh videos start with omxplayer
# $1 - action
# $2 - type of file

action=$1
filetype=$2

#[ -n "${MC_XDG_OPEN}" ] || MC_XDG_OPEN="xdg-open"

do_view_action() {
    filetype=$1

    case "${filetype}" in
    *)
        mplayer -identify -vo null -ao null -frames 0 "${MC_EXT_FILENAME}" 2>&1 | \
            sed -n 's/^ID_//p'
        ;;
    esac
}

do_open_action() {
    filetype=$1

    case "${filetype}" in
    ram)
        omxplayer -b --vol=-200 "${MC_EXT_FILENAME}"
        ;;
    *)
        if [ -n "$DISPLAY" ]; then
            omxplayer -b --vol=-200 "${MC_EXT_FILENAME}"
        else
            omxplayer -b --vol=-200 "${MC_EXT_FILENAME}"
        fi
        #(gtv "${MC_EXT_FILENAME}" >/dev/null 2>&1 &)
        #(xanim "${MC_EXT_FILENAME}" >/dev/null 2>&1 &)
        ;;
    esac
}

case "${action}" in
view)
    do_view_action "${filetype}"
    ;;
open)
#    ("${MC_XDG_OPEN}" "${MC_EXT_FILENAME}" >/dev/null 2>&1) || \
        do_open_action "${filetype}"
    ;;
*)
    ;;
esac
