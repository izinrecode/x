#!/bin/bash
# ==============================

# Banner / Figlet
read -p "Press Enter For Contitune : ENTER untuk melanjutkan installasi SSH EDUKASI!"

# Getting Proxy Template
wget -q -O /usr/local/bin/edu-proxy https://raw.githubusercontent.com/izinrecode/x/main/anjas.py
chmod +x /usr/local/bin/edu-proxy

# Installing Service
cat > /etc/systemd/system/edu-proxy-nontls.service << END 
[Unit]
Description=Python Proxy JOMBLOSSH
Documentation=https://t.me/JSTFREENET
Documentation=https://t.me/nge_gazzz
Documentation=https://t.me/JSTxNGE_GAZZZ
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/edu-proxy 2082
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable edu-proxy-nontls
systemctl restart edu-proxy-nontls

# Installing Service
cat > /etc/systemd/system/edu-proxy-tls.service << END 
[Unit]
Description=Python Proxy JOMBLOSSH
Documentation=https://t.me/JSTFREENET
Documentation=https://t.me/nge_gazzz
Documentation=https://t.me/JSTxNge_Gazzz
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/edu-proxy 2083
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable edu-proxy-tls
systemctl restart edu-proxy-tls

clear
rm -f gasss.sh
echo done

