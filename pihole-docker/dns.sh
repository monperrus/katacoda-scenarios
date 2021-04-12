sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved

echo "namserver 127.0.0.1" > /etc/resolv.conf
