# Setup-a-Free-VPN-Service-on-AWS
# OpenVPN Access Server Setup on AWS EC2

This project provides a step-by-step guide to launch, configure, and use a **free** OpenVPN Access Server on an AWS EC2 instance. The setup enables you to establish a secure VPN tunnel for private and encrypted internet access.

---
![WhatsApp Image 2025-05-21 at 06 22 19_3a2ea5a3](https://github.com/user-attachments/assets/da15d4ba-eeb0-4919-ba2e-856915fa0b7f)

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Step 1: Launch OpenVPN Access Server](#step-1-launch-openvpn-access-server)
- [Step 2: Configure the Server](#step-2-configure-the-server)
- [Step 3: Connect Using VPN Client](#step-3-connect-using-vpn-client)
- [Security Group Configuration](#security-group-configuration)
- [Troubleshooting](#troubleshooting)
- [Useful Commands](#useful-commands)
- [FAQs](#faqs)
- [Notes & Best Practices](#notes--best-practices)
- [References](#references)

---

## Overview

OpenVPN Access Server is a robust, secure VPN solution that enables private network connectivity over public networks. By deploying it on an AWS EC2 instance (using the free tier eligible t2.micro), you can create your own VPN service at minimal cost.

---
![WhatsApp Image 2025-05-21 at 06 22 19_a8694212](https://github.com/user-attachments/assets/e9a848c3-8e42-414a-8bcd-c87c2b814bff)

## Prerequisites

- An active AWS account
- Basic knowledge of AWS EC2 and SSH
- Key pair (.pem file) for accessing your EC2 instance
- OpenVPN Connect app installed on your client device (mobile or desktop)

---

## Step 1: Launch OpenVPN Access Server

1. Login to AWS Management Console and open the EC2 Dashboard.
2. Change the region (optional) to **Asia Pacific (Singapore) ap-southeast-1** for best latency if you're in India.
3. Click **Launch Instance**.
4. Select **AWS Marketplace** and search for **OpenVPN Access Server**.
5. Choose the listing with **Free Tier Eligible** badge.
6. Select **t2.micro** instance type.
7. Create or select an existing key pair, download it securely.
8. Launch the instance and wait until the instance state is **running**.

---

## Step 2: Configure the Server

1. SSH into the instance:

    ```bash
    ssh -i "your-key.pem" openvpnas@your-ec2-public-ip
    ```

2. Accept the SSH prompt.
3. Access the Admin UI in your browser at:

    ```
    https://your-ec2-public-ip:943/admin
    ```

4. Login with default credentials or the ones you set.
5. Navigate to **Configuration > VPN Settings** and make required changes.
6. Save and apply settings.

---
![image](https://github.com/user-attachments/assets/ffc10ad0-8718-435c-a505-1795c2ac5d9e)

## Step 3: Connect Using VPN Client

1. Download **OpenVPN Connect** from your device’s app store.
2. Import VPN profile using the public IP of your EC2 instance.
3. Enter your VPN username (`openvpn`) and password.
4. Connect and enjoy a secure VPN tunnel.

---

## Security Group Configuration

Ensure your EC2 security group allows the following inbound ports:

| Protocol | Port | Purpose                   |
| -------- | ---- | -------------------------|
| TCP      | 943  | Admin and Client UI      |
| TCP      | 443  | VPN SSL Tunnel           |
| UDP      | 1194 | OpenVPN Tunnel Protocol  |

---

## Troubleshooting

- Verify security group ports are open.
- Restart OpenVPN server:

    ```bash
    sudo systemctl restart openvpnas
    ```

- Check server logs for errors:

    ```bash
    sudo journalctl -u openvpnas
    ```

- Consult [OpenVPN Setup Video Tutorial](https://www.youtube.com/watch?v=R7-dj5dvpzA)

---

## Useful Commands

| Command                                  | Description                  |
|-----------------------------------------|------------------------------|
| `sudo systemctl start openvpnas`        | Start OpenVPN server          |
| `sudo systemctl stop openvpnas`         | Stop OpenVPN server           |
| `sudo systemctl restart openvpnas`      | Restart OpenVPN server        |
| `sudo systemctl status openvpnas`       | Check OpenVPN server status   |
| `sudo journalctl -u openvpnas`           | View OpenVPN logs             |

---

## FAQs

- **How to reset VPN user password?**  
  Use Admin UI > User Management to reset.

- **Is this truly free?**  
  The AWS t2.micro instance and OpenVPN Access Server allow limited free usage; more users require licenses.

- **Can I restrict VPN access to specific IPs?**  
  Yes, configure security group inbound rules accordingly.

---

## Notes & Best Practices

- Securely store your AWS key pair (.pem).
- Restrict security group sources to trusted IPs when possible.
- Regularly update EC2 instance packages.
- Backup OpenVPN configurations periodically.
- Monitor server health and logs regularly.

---

## References

- [OpenVPN Access Server Documentation](https://openvpn.net/vpn-server-resources/)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)
- [YouTube Setup Tutorial](https://www.youtube.com/watch?v=R7-dj5dvpzA)

---


📞 Contact Information

| **Method** | **Details**                  |
|------------|------------------------------|
| Email      | ahmadtahir4235@gmail.com     |
| Phone      | +92 3000511136               |
| LinkedIn   | https://linkedin.com/in/m-ahmadtahir |

