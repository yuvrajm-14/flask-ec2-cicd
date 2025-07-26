import boto3

instance_id = "i-0aec8699c09b6ad41"  # Replace with your EC2 instance ID
region = "us-east-1"            # Example: Mumbai

ec2 = boto3.client('ec2', region_name=us-east-1)
response = ec2.start_instances(InstanceIds=[i-0aec8699c09b6ad41])
print("Starting EC2 instance:", response)

