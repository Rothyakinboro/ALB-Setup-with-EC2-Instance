#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd
echo '<h1>Welcome to <your name> Website from $(hostname -f)</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Welcome to <your name> Website from $(hostname -f)!</h1> <p>Ec2 Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html
