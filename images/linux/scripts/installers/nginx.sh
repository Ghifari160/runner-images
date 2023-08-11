#!/bin/bash -e
################################################################################
##  File:  nginx.sh
##  Desc:  Installs Nginx
################################################################################

# Install Nginx
apt-get install nginx -y

if [[ ! -f /run/systemd/container ]]; then
    # Disable nginx.service
    systemctl is-active --quiet nginx.service && systemctl stop nginx.service
    systemctl disable nginx.service
fi

invoke_tests "WebServers" "Nginx"
