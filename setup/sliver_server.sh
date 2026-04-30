#!/bin/sh
ln -sf /opt/bin/* /home/kali/.local/bin

/opt/bin/sliver-server daemon &
echo "*** [*] Sliver server is up and running."
