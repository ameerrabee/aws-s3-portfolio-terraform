# AWS Static Portfolio Website with Terraform

## Project Overview
This project is a static personal portfolio website built with HTML and CSS and deployed on AWS using Amazon S3. The infrastructure was provisioned using Terraform.

## Objective
The goal of this project was to gain hands-on experience with AWS and Infrastructure as Code by deploying a real website using Terraform instead of manual setup in the AWS console.

## Tools Used
- AWS S3
- Terraform
- HTML
- CSS
- Git
- GitHub
- AWS CLI

## Project Files
- `index.html` – main website page
- `style.css` – website styling
- `main.tf` – Terraform resources
- `variables.tf` – Terraform variables
- `outputs.tf` – Terraform outputs
- `terraform.tfvars` – variable values

## Steps Completed
1. Built a personal static website using HTML and CSS
2. Configured AWS CLI credentials
3. Created an S3 bucket using Terraform
4. Enabled static website hosting using Terraform
5. Configured a public bucket policy using Terraform
6. Uploaded website files to S3 using Terraform
7. Opened the live website endpoint
8. Documented the entire project in GitHub

## Skills Demonstrated
- AWS cloud deployment
- Amazon S3 static website hosting
- Infrastructure as Code with Terraform
- Public access policy configuration
- GitHub documentation

## Screenshots

### Local Website Preview
![Local Preview](screenshots/local-site-preview.png)

### Terraform Init Success
![Terraform Init](screenshots/terraform-init-success.png)

### Terraform Validate Success
![Terraform Validate](screenshots/terraform-validate-success.png)

### Terraform Plan
![Terraform Plan](screenshots/terraform-plan.png)

### Terraform Apply Success
![Terraform Apply](screenshots/terraform-apply-success.png)

### S3 Bucket Created
![S3 Bucket](screenshots/s3-bucket-created.png)

### S3 Files Uploaded
![S3 Files](screenshots/s3-files-uploaded.png)

### Static Website Hosting Enabled
![Hosting Enabled](screenshots/s3-static-hosting-enabled.png)

### Live AWS Website
![Live Site](screenshots/live-aws-site.png)

## Live Website
http://ameer-s3-portfolio-2026-0412.s3-website-us-east-1.amazonaws.com/
## What I Learned
This project helped me understand how to use Terraform to provision AWS infrastructure, configure an S3 bucket for static website hosting, manage public access permissions, and deploy website files using Infrastructure as Code.