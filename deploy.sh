#!/bin/bash
EC2_IP="98.84.96.248"
KEY_PATH="~/.ssh/time.pem"

ssh -o StrictHostKeyChecking=no -i $KEY_PATH ec2-user@$EC2_IP << 'EOF'
    docker pull yuvraj4/flaskapp:v1
    docker stop flaskapp || true
    docker rm flaskapp || true
    docker run -d --name flaskapp -p 80:5000 yuvraj4/flaskapp:v1
EOF

