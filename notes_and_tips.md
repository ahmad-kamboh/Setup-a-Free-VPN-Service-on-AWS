# Notes and Tips for OpenVPN AWS Setup

- Always keep your `.pem` key file secure; never share it publicly.
- Limit security group inbound rules to your trusted IPs for better security.
- Regularly update your EC2 instance packages and OpenVPN server.
- Backup your OpenVPN configuration and user data periodically.
- Consider setting up CloudWatch logs for monitoring OpenVPN server health.
- If you face issues accessing the Admin UI, ensure ports 943 and 443 are open.
- Test your VPN connection from multiple client devices (mobile, desktop).
