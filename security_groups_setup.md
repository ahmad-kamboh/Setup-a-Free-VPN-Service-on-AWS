# Configuring Security Groups for OpenVPN on AWS

To allow OpenVPN to function properly, you need to configure your EC2 instance’s security group.

**Required Ports:**

- TCP 943: Admin Web UI and Client Web UI
- TCP 443: SSL VPN (OpenVPN clients connect here)
- UDP 1194: OpenVPN tunnel port

**Steps:**

1. Go to EC2 dashboard > Security Groups.
2. Select the security group attached to your OpenVPN instance.
3. Edit inbound rules and add these:
   - Type: Custom TCP Rule, Port Range: 943, Source: Anywhere (0.0.0.0/0)
   - Type: Custom TCP Rule, Port Range: 443, Source: Anywhere (0.0.0.0/0)
   - Type: Custom UDP Rule, Port Range: 1194, Source: Anywhere (0.0.0.0/0)
4. Save rules.

*Note:* For better security, restrict the source IPs to your trusted networks.
