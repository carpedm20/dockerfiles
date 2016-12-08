#!/bin/sh

rm -rf /tmp/* /tmp/.* &> /dev/null

trap 'kill 0' EXIT
trap 'exit 0' SIGTERM

( Xvfb :1 -screen 0 854x480x16 &> /tmp/xvfb.log || true ) &

export DISPLAY=:1.0

cd $MALMO_PATH/Minecraft && ./gradlew runClient --offline &

mkdir -p ~/.vnc
x11vnc -storepasswd ${VNC_PASS} ~/.vnc/passwd
x11vnc -q -usepw -bg -forever -shared -display :1

wait
