# Frequently Asked Questions (FAQ) - OpenVPN on AWS

**Q1: How do I reset my OpenVPN password?**  
A: Login to the OpenVPN Admin UI, go to User Management > Users, select the user, and reset the password.

**Q2: How can I increase VPN performance?**  
A: Use an instance type with more CPU and memory, and ensure your security group rules allow proper traffic flow.

**Q3: Is OpenVPN free on AWS?**  
A: The OpenVPN Access Server has a free tier with limited simultaneous connections (usually 2). For more users, a license is required.

**Q4: How to update OpenVPN Access Server?**  
A: Follow OpenVPN's official documentation for updating the Access Server software.

**Q5: How do I troubleshoot connection issues?**  
A: Check EC2 security groups, OpenVPN logs, and ensure your client config matches the server IP and credentials.
