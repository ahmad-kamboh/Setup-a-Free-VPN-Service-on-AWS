# Step 1 — Launch OpenVPN Access Server from AWS Marketplace

1. Sign in to the AWS Management Console and go to the EC2 service.
2. If you're in India, change your AWS region to **Asia Pacific (Singapore) ap-southeast-1**.
3. Click **Launch Instance**.
4. In the EC2 dashboard, choose **AWS Marketplace** and search for "OpenVPN".
5. Select the OpenVPN Access Server marked **Free Tier Eligible**.
6. Click **Continue**.
7. Choose **t2.micro** instance type.
8. Click **Review and Launch**.
9. Create a new key pair or use an existing one.
10. Download your key pair (`.pem` file).
11. Click **Launch Instance** and wait for the instance status to become **running**.
