sudo apt update && sudo apt upgrade -y
sudo apt install apt-transport-https ca-certificates gnupg2 libvpx6 libwebp6 libx264-160 libx265-192 curl git -y
sudo wget -O- https://repo.jellyfin.org/jellyfin_team.gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/jellyfin.gpg
echo "deb [arch=$( dpkg --print-architecture ) signed-by=/usr/share/keyrings/jellyfin.gpg] https://repo.jellyfin.org/debian bullseye main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update

sudo apt install jellyfin -y
systemctl status jellyfin
sudo systemctl start jellyfin
sudo systemctl enable jellyfin
