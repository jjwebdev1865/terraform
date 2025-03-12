Steps for implementation

1) deploy a VPC and a subnet
    * completed in part one of project, video 46

2) Deploy a internet gateway and associate it with the VPC
    * completed in part two of project, video 47

3) setup a route table with a route to the IGW and associated it with the subnet
    * completed in part two of project, video 47

4) Deploy a EC2 instance inside of the created subnet and associate a public IP
    * completed in part three of project, video 49

5) associate a public IP and a security group that allows a public ingress
    * completed in part four of project, video 51
    * work done in the compute.tf file of 06-resource project

6) Change the EC2 instance to use a publicly available NGINX AMI
    * go to console and look at the ami catalog
    * search nginx -> Bitnami package. its a free option. select t2.micro
        - need to get the ami-id after installing, i did not do this.
        - im using the one from his example
7) destroy everything