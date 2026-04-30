#!/bin/bash
while [ ! -d /home/kali/.config/xfce4 ]; do
	sleep 1
done

mkdir -p /home/kali/.config/xfce4
echo "TerminalEmulator=alacritty" >/home/kali/.config/xfce4/helpers.rc
chown -R kali:kali /home/kali/.config/xfce4
