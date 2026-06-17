# 🌐 Deploying an NGINX Web Server on AWS EC2

![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420)
![NGINX](https://img.shields.io/badge/NGINX-Web_Server-009639)
![Cloudflare](https://img.shields.io/badge/Cloudflare-DNS-F38020)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-yellow)

Deploying a production-style Linux web server on **AWS EC2**, configuring **NGINX**, and making it accessible through a **custom domain using Cloudflare DNS**.

---

# 📖 Overview

This project allowed me to apply several networking and cloud concepts together by deploying a web server on AWS and making it publicly accessible over the internet.

Instead of learning networking concepts individually, I wanted to understand how they work together in a real-world deployment.

By the end of this project I successfully:

- Launched an Ubuntu EC2 instance
- Connected securely using SSH
- Installed and configured NGINX
- Configured AWS Security Groups
- Connected my custom domain using Cloudflare DNS
- Accessed the server from anywhere using my own domain

---

# Skills Demonstrated

- Provisioning cloud infrastructure with AWS EC2
- Managing Linux servers
- SSH authentication using key pairs
- Installing and managing system services
- Configuring AWS Security Groups
- DNS management using Cloudflare
- Web server deployment with NGINX
- Basic networking troubleshooting

---

# 🌐 Architecture

```
                Internet
                    │
                    ▼
          maazkhancloud.com
                    │
                    ▼
           Cloudflare DNS
                    │
                    ▼
          EC2 Public IPv4 Address
                    │
                    ▼
      AWS Security Group (Port 80)
                    │
                    ▼
            Ubuntu EC2 Instance
                    │
                    ▼
                 NGINX
                    │
                    ▼
              Website Response
```

---

# Technologies Used

| Technology | Purpose |
|------------|---------|
| AWS EC2 | Cloud Virtual Machine |
| Ubuntu Server 24.04 LTS | Linux Operating System |
| NGINX | Web Server |
| Cloudflare DNS | Domain Name Management |
| SSH | Secure Remote Access |
| HTTP | Serve Web Pages |
| Linux | Server Administration |

---

# 🎯 Project Objectives

- Launch an Ubuntu EC2 Instance
- Generate an SSH Key Pair
- Connect securely to the server
- Install NGINX
- Start and enable the web server
- Configure Security Groups
- Point a custom domain to the EC2 instance
- Verify public access

---

# 📂 Project Structure

```
aws-ec2-nginx-web-server/

│
├── README.md
│
└── images/
    ├── ec2-instance-running.png
    ├── security-group-rules.png
    ├── ssh-connection.png
    ├── nginx-service-running.png
    ├── cloudflare-dns-record.png
    ├── nginx-welcome-ip.png
    └── domain-nginx-homepage.png
```

---

# 💻 Deployment Steps

## 1. Launch an EC2 Instance

- Ubuntu Server 24.04
- t3.micro
- Generated SSH Key Pair
- Enabled HTTP (80)
- Allowed SSH (22) from my own IP

### EC2 Instance

![EC2 Instance](images/ec2-instance-running.png)

---

## 2. Configure Security Groups

Configured inbound rules to allow:

- SSH (Port 22) from my own IP address for secure administration.
- HTTP (Port 80) from anywhere so the website could be publicly accessed.

| Protocol | Port | Source |
|----------|------|--------|
| SSH | 22 | My Public IP |
| HTTP | 80 | Anywhere (0.0.0.0/0) |

### Security Group Configuration

![Security Group](images/security-group-rules.png)

---

## 3. Connect Using SSH

Connected securely to the EC2 instance using the generated PEM key.

Commands used:

```bash
chmod 400 nginx-project-key.pem

ssh -i nginx-project-key.pem ubuntu@<EC2-Public-IP>
```

### SSH Connection

![SSH](images/ssh-connection.png)

---

## 4. Install NGINX

After connecting to the server, I updated the package list and installed NGINX, which would act as the web server responsible for serving HTTP requests.

Updated package lists

```bash
sudo apt update
```

Installed NGINX

```bash
sudo apt install -y nginx
```

Started the service

```bash
sudo systemctl start nginx
```

Enabled NGINX on boot

```bash
sudo systemctl enable nginx
```

Verified the service

```bash
sudo systemctl status nginx
```

### NGINX Service Status

![NGINX Status](images/nginx-service-running.png)

---

## 5. Configure Cloudflare DNS

After verifying that the web server was accessible using its public IPv4 address, I created an A Record in Cloudflare to map my domain to the EC2 instance.

This meant visitors could access the server using a human-readable domain name instead of remembering an IP address.

| Type | Name | Content |
|------|------|---------|
| A | @ | EC2 Public IPv4 |

### Cloudflare DNS Configuration

![Cloudflare DNS](images/cloudflare-dns-record.png)

---

## 6. Verify Web Server

### Access via EC2 Public IP

![NGINX IP](images/nginx-welcome-ip.png)

---

### Access using Custom Domain

Successfully accessed the web server using:

```
http://maazkhancloud.com
```

<img width="1435" height="772" alt="Screenshot 2026-06-18 at 00 21 31" src="https://github.com/user-attachments/assets/e0fad1f6-2879-45b2-8380-6a0ec52d001e" />


---

# 🧠 Networking Concepts Practised

This project helped reinforce several networking concepts including:

- DNS
- Public vs Private IP Addresses
- HTTP
- Linux Servers
- SSH Authentication
- AWS Security Groups
- Cloud Infrastructure
- NGINX
- Cloudflare DNS
- A Records

---

# 📚 What I Learned

This project helped me understand that visiting a website involves much more than simply typing a URL into a browser.

The request passes through several networking components before finally reaching the web server.

```
Browser
    │
    ▼
Cloudflare DNS
    │
    ▼
EC2 Public IP
    │
    ▼
AWS Security Group
    │
    ▼
HTTP Port 80
    │
    ▼
NGINX
    │
    ▼
Website
```

Seeing each stage working together made networking concepts much easier to understand than learning them individually.

```
Laptop
   │
   ▼
SSH
   │
   ▼
AWS EC2
   │
   ▼
Ubuntu
   │
   ▼
NGINX
```
---

# ⚠️ Challenges

Initially I attempted to SSH into the EC2 instance from my Ubuntu virtual machine, but authentication continually failed.

After troubleshooting, I discovered the private SSH key had been downloaded to my macOS host rather than the virtual machine.

Using the macOS Terminal immediately resolved the issue and highlighted the importance of understanding where authentication credentials are stored when working across multiple environments.

---

# 🚀 Outcome

Successfully deployed an NGINX web server on AWS EC2 and connected it to my own custom domain using Cloudflare DNS.

This project gave me practical experience with:

- AWS
- Linux
- SSH
- NGINX
- DNS
- Cloudflare
- HTTP
- Security Groups
- Cloud Networking

---

# Future Improvements

- Deploy a custom HTML website
- Configure HTTPS using SSL/TLS
- Enable the Cloudflare Proxy
- Assign an Elastic IP to the EC2 instance
- Automate deployment using GitHub Actions
- Provision infrastructure using Terraform

---
