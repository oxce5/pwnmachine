FROM amitie10g/kali:desktop

COPY rei.jpeg /usr/share/backgrounds/kali-16x9/default
RUN chown kali:kali /usr/share/backgrounds/kali-16x9/default

RUN apt-get update && apt-get install -y \
	kali-linux-default \
	kali-linux-headless  \
	fonts-jetbrains-mono \
	alacritty \
	pipx \
	&& rm -rf /var/lib/apt/lists/*

RUN echo 'export PATH="/opt/bin:$PATH"' > /etc/profile.d/optbin.sh && \
	mkdir -p /etc/skel/.config/xfce4 && \
	echo "TerminalEmulator=alacritty" > /etc/skel/.config/xfce4/helpers.rc

COPY ./setup/files/alacritty.toml /etc/skel/.config/alacritty/alacritty.toml
COPY ./setup/sliver_server.sh /etc/my_init.d/95_sliver_server.sh
RUN chmod +x /etc/my_init.d/95_sliver_server.sh

