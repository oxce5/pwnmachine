#!/bin/sh
ln -sf /opt/bin/* /home/kali/.local/bin
find /home/kali/.cache -not -path "*/DankMaterialShell/*" | xargs chown kali:kali 2>/dev/null || true

if [ ! -x /opt/bin/sliver-server ]; then
    echo "*** [!] Error: Sliver server not found or not executable." >&2
fi

/opt/bin/sliver-server daemon &
echo "*** [*] Sliver server is up and running."
