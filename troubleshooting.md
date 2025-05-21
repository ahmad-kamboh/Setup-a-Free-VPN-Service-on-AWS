# Troubleshooting

- If you face errors accessing the admin page or connecting:
  - Check security groups on your EC2 instance to allow ports: 943, 1194 (UDP/TCP), 443.
  - Restart OpenVPN server: `sudo systemctl restart openvpnas`
  - See video tutorial here:  
  https://www.youtube.com/watch?v=R7-dj5dvpzA
