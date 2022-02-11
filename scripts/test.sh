# mkdir -p ../.ssh
# echo "$SSH_PRIVATE_KEY" > ../.ssh/id_rsa
# chmod 400 ../.ssh/id_rsa

# echo "Host server_instance
# HostName $host
# StrictHostKeyChecking no
# User ec2-user
# IdentityFile ../.ssh/id_rsa
# ProxyCommand none" > ../.ssh/config

# if [[ $1 == "database" ]]; then
#     # private_ip=$(aws ssm get-parameters --names "$parameter_name" --query "Parameters[*].Value" --output text --debug)
#     echo "Host database_instance
#     HostName $private_ip
#     StrictHostKeyChecking no
#     User ec2-user
#     IdentityFile ../.ssh/id_rsa
#     ProxyCommand ssh timesheets_server_instance -W %h:%p'" > ../.ssh/config
#     echo "[$group]
#     database_instance" > ../inventory
# else
#     echo "[$group] 
#     server_instance" > ../inventory
# fi

# cat ../inventory
# cat ../.ssh/config

echo "hi" > ./text
echo "hello" >> ./text
cat ./text