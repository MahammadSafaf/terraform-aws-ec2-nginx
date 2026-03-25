# 🚀 Terraform AWS EC2 Nginx Deployment Project

## 📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to automatically provision an AWS EC2 instance and deploy an Nginx web server with a custom webpage.

The infrastructure is fully automated and reproducible.

---

## 🏗️ Architecture

Terraform → AWS EC2 Instance → Security Group → Nginx Web Server → Public IP Access

---

## ⚙️ Technologies Used

- Terraform (Infrastructure as Code)
- AWS (EC2, Security Groups)
- Ubuntu Linux
- Nginx Web Server
- Git & GitHub

---

## 📁 Project Structure

terraform-aws-ec2-nginx/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md

---

## 🚀 Features

- Automatically provisions EC2 instance
- Configures security group (HTTP port 80 enabled)
- Installs and starts Nginx using user_data script
- Deploys a custom web page
- Outputs public IP after deployment

---

## ⚙️ How to Use This Project

### 1. Initialize Terraform
terraform init

### 2. Validate Configuration
terraform validate

### 3. Preview Changes
terraform plan

### 4. Deploy Infrastructure
terraform apply

Type yes when prompted.

---

## 🌐 Output

After successful deployment:

- EC2 instance will be running
- Public IP will be generated

Open browser:
http://<public-ip>

You will see:
Hello from Terraform DevOps Project

---

## 📸 Screenshots

- EC2 Instance Running in AWS Console
- Terraform Apply Successful Output
- Web page running in browser

---

## 🧠 Key Learnings

- Infrastructure as Code (IaC) using Terraform
- AWS EC2 provisioning automation
- Security group configuration
- Linux server setup using user_data
- Git & GitHub project management

---

## 👨‍💻 Author

DevOps Engineer (Learning Path)
Focused on AWS, Terraform, Linux, and CI/CD pipelines.

---

## ⭐ Future Improvements

- Add VPC and Subnets
- Use Terraform modules
- Add Load Balancer
- Implement CI/CD with GitHub Actions
