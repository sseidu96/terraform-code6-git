user_data = <<-EOF
#!/bin/bash
# Author: Safiatu Seidu
# Date: March 11 2026
# This script installs Apache and creates a test web page

yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd

echo "Hello from Terraform - Safiatu Seidu DevOps Project" > /var/www/html/index.html
EOF