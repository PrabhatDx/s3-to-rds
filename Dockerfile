# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install boto3
psycopg2-binary
sqlalchemy


# Run main.py when the container launches
CMD import boto3
import botocore

def read_s3_data(demo-bucket-py, main.py,471112983657 ,3b03da175457c9b105633c496572c5f4b2680c487d599dca07ba97403b4a3292 ,ap-south-1):
    # Initialize a session using Amazon S3
    session = boto3.Session(
        aws_access_key_id=471112983657,
        aws_secret_access_key=3b03da175457c9b105633c496572c5f4b2680c487d599dca07ba97403b4a3292,
        region_name=ap-south-1
    )

    # Create an S3 client
    s3 = session.client('s3')

    try:
        # Fetch the object from the bucket
        obj = s3.get_object(Bucket=demo-bucket-py, Key=main.py)
        # Read the object's content
        data = obj['Body'].read().decode('utf-8')
        return data
    except botocore.exceptions.ClientError as e:
        # Error handling
        print(f"Error reading object {main.py} from bucket {demo-bucket-py}. Error: {e}")
        return None

if __name__ == "main.py":
    # Replace these variables with your actual values
    bucket_name = 'demo-bucket-py'
    object_key = 'main.py'
    aws_access_key_id = '471112983657'
    aws_secret_access_key = '3b03da175457c9b105633c496572c5f4b2680c487d599dca07ba97403b4a3292'
    region_name = 'ap-south-1'

    # Read data from S3
    data = read_s3_data(demo-bucket-py, main.py,471112983657 ,3b03da175457c9b105633c496572c5f4b2680c487d599dca07ba97403b4a3292, ap-south-1)
    if data:
        print("Data read from S3:
        print(data)
