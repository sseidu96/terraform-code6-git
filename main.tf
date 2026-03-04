resource "aws_lightsail_instance" "serve1" {
    name = "dev-server"
    blueprint_id = "ubuntu_18_04"
    bundle_id = "medium_1_0"
    availability_zone = "us-east-1a"
     user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              systemctl start apache2
              systemctl enable apache2
              echo '<h1>This is deployed by Safiatu Seidu </h1>' > /var/www/html/index.html
              EOF
}
  
