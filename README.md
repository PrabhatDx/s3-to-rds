# s3-to-rds
Creation of S3 bucket and push data to RDS
# AWS Data Pipeline

This project creates a data pipeline to read data from S3 and push it to RDS or Glue using a Dockerized Python script. The entire process is automated using Jenkins CI/CD pipeline and Terraform for infrastructure provisioning.

## Steps

### 1. Create GitHub Repository

1. Go to GitHub and create a new repository.
2. Clone the repository to your local machine.

### 2. Create Dockerfile

Create a `Dockerfile` in your repository with the following content:

Step 3: Write the Python Script
Create a script.py file to read data from S3 and push it to RDS or Glue:

Step 4: Create requirements.txt
Add the required Python packages to requirements.txt:

Step 5: Terraform Code for Resource Creation
Create a terraform/ directory and add the following files:
main.tf
provider.tf
ec2.tf
lambda.tf

Step 6: Jenkins CI/CD Pipeline
Set up Jenkins pipeline:

Create a new Jenkins pipeline job.

Step 7: Create and Test Lambda Function
Once the pipeline runs successfully, the Lambda function will be created and deployed. To test the Lambda function:

Go to AWS Lambda Console.
Select the data_pipeline function.
Create a test event and invoke the function.
