# ALB Setup with EC2 Instances

## Description

This project involves setting up an Application Load Balancer (ALB) in AWS, linked with EC2 instances hosted in public subnets within the same Virtual Private Cloud (VPC). The goal is to create a robust and scalable environment where incoming HTTP requests are evenly distributed across multiple EC2 instances. By the end of this project, the application will be accessible through the ALB's DNS, ensuring high availability and load distribution.

![image](https://github.com/user-attachments/assets/5eab8600-779b-49ee-a1e0-f971ecaa49d2)


## Prerequisites

Before starting this project, ensure you have the following:

- **AWS Account:** Access to an AWS account with necessary permissions to create VPCs, subnets, EC2 instances, and an ALB.
- **AWS CLI:** Installed and configured on your local machine.
- **IAM Role:** Appropriate IAM roles attached to your instances with necessary permissions.
- **VPC and Subnets:** A VPC with at least two public subnets.

## Project Steps

### 1. Create EC2 Instances in Public Subnets

- **Objective:** Spin up EC2 instances in public subnets within the same VPC. These instances will later be linked to the ALB.
- **Details:** 
    - Launch EC2 instances in your chosen public subnets.
    - Ensure these instances have public IP addresses for internet access.
  
### 2. Allow HTTP Access on Port 88

- **Objective:** Modify the security group associated with the EC2 instances to allow incoming HTTP traffic on port 88.
- **Details:** 
    - This step is crucial for allowing traffic to reach your web server running on the EC2 instances.

### 3. Attach a Bootstrap Script to EC2 Instances

- **Objective:** Automatically configure the EC2 instances with a web server and deploy a simple HTML application.
- **Details:** 
    - Use the following user data script during the EC2 instance launch to install Apache, start the web server, and deploy an HTML page.

### 4. Create the Application Load Balancer (ALB)

- **Objective:** Set up an ALB in the same VPC as your EC2 instances to distribute traffic.
- **Details:** 
    - Configure the ALB to listen on port 80 and forward requests to the target group containing your EC2 instances.

### 5. Create and Configure a Target Group

- **Objective:** Group the EC2 instances under a target group that the ALB will route traffic to.
- **Details:** 
    - Register the EC2 instances with the target group and associate the target group with the ALB.

### 6. Add Port 80 Access to the Load Balancer

- **Objective:** Allow incoming HTTP traffic on port 80 to your ALB.
- **Details:** 
    - Update the security group of the ALB to allow HTTP traffic on port 80 from the internet.

### 7. Verify ALB and Target Group Health

- **Objective:** Ensure the ALB is correctly routing traffic and that the EC2 instances are healthy.
- **Details:** 
    - Check the health status of the targets in the target group via the AWS Management Console or AWS CLI.

### 8. Test Your Application

- **Objective:** Confirm that the application is accessible through the ALB.
- **Details:** 
    - Access the application using the DNS name provided by the ALB.
    - Verify that the HTML page displays correctly, indicating successful routing and load balancing.

## Conclusion

After following these steps, your application should be accessible via the DNS name of the ALB, with traffic being evenly distributed across the EC2 instances. This setup ensures that your application is both highly available and scalable, ready to handle varying loads efficiently.
