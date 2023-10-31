module "dev-demo-app" {
        source = "./modules/demo-app"
        env_name = "dev"
        instance_type = "t2.micro"
        table_name = "Multistage_dynamodb"
        bucket_name = "multistage-s3-bucket-amoghk2699"
        ami_id = "ami-0fc5d935ebf8bc3bc"
}


module "prd-demo-app" {

        source = "./modules/demo-app"
        env_name = "prd"
        instance_type = "t2.micro"
        table_name = "Multistage_dynamodb"
        bucket_name = "multistage-s3-bucket-amoghk2699"
        ami_id = "ami-0fc5d935ebf8bc3bc"
}

module "qa-demo-app" {

        source = "./modules/demo-app"
        env_name = "qa"
        instance_type = "t2.micro"
        table_name = "Multistage_dynamodb"
        bucket_name = "multistage-s3-bucket-amoghk2699"
        ami_id = "ami-0fc5d935ebf8bc3bc"
}
