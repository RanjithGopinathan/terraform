# terraform

To run the code

step 1: Add the access key and secret access key to the main.tf

step 2: import the key pair

Initialize terraform

step 3: terraform init

step 4: terraform validate

step 5: terraform plan

step 6: terraform apply

After deployment 

step 7: SSH using the public IP

step 8: copy the private key (.pem file) into machine using filezilla or scp

step 9: ssh -i {key-pair.pem} ec2-user@{private_instance_ip}

step 10: mysql -h {RDS-end-point} -u username -p password
