#creating terraform tfvars file

region              = "eu-west-2"
access_key          = "AKIATX534MZUCSZGYLSP"
secret_access_key   = "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"
project_name        = "website"
vpc_cidr            = "10.0.0.0/16"
instance_tenancy    = "default"
pub_sub_cidr1       = "10.0.10.0/16"
pub_sub_cidr2       = "10.0.11.0/24"
priv_app_sub_cidr1  = "10.0.12.0/24"
priv_app_sub_cidr2  = "10.0.13.0/24"
instance_type       = "t2.micro"
ami_id              = "ami-038056f5d3df2259d"
az1                 = "eu-west-2a"
az2                 = "eu-west-2b"
az3                 = "eu-west-2c"
az4                 = "eu-west-2c"
instance_per_subnet = 2
ingressrules        = [80, 22]
egressrules         = [0]
DBingressrules      = [3306, 80, 22]
DBegress            = [0]
allocated_storage   = 20
Engine_type         = "mysql"
Engine_version      = "8.0.33"
instance_class      = "db.t2.micro"
db_instance_az      = "eu-west-2a"