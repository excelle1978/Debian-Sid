sudo apt install build-essential libcairo2-dev libjpeg62-turbo-dev \
    libpng-dev libtool-bin libossp-uuid-dev libvncserver-dev \
    freerdp2-dev libssh2-1-dev libtelnet-dev libwebsockets-dev \
    libpulse-dev libvorbis-dev libwebp-dev libssl-dev \
    libpango1.0-dev libswscale-dev libavcodec-dev libavutil-dev \
    libavformat-dev
    
wget https://downloads.apache.org/guacamole/1.3.0/source/guacamole-server-1.3.0.tar.gz

tar -xvf guacamole-server-1.3.0.tar.gz
cd guacamole-server-1.3.0

sudo ./configure --with-init-dir=/etc/init.d --enable-allow-freerdp-snapshots
sudo make
sudo make install

sudo ldconfig
sudo systemctl daemon-reload

sudo systemctl start guacd
sudo systemctl enable guacd

sudo mkdir -p /etc/guacamole/{extensions,lib}
