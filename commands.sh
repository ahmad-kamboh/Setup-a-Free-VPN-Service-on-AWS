#!/bin/bash

# update system packages
sudo yum update -y

# install wget if not installed
sudo yum install -y wget

# Download OpenVPN Access Server (example for Amazon Linux 2, adjust if needed)
# For actual AWS Marketplace AMI, this step is usually not needed

# Start and enable OpenVPN Access Server service
sudo systemctl start openvpnas
sudo systemctl enable openvpnas

# Check service status
sudo systemctl status openvpnas

echo "OpenVPN Access Server setup script completed."
echo "Access your OpenVPN Admin UI at https://$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4):943/admin"

chmod +x setup_openvpn.sh

./setup_openvpn.sh
