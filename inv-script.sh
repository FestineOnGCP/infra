echo [all] >> inventory.txt
aws ec2 describe-instances --query 'Reservations[*].Instances[*].PublicIpAddress' --filter 'Name=tag:Udacity,Values=Project' --output text >> inventory.txt