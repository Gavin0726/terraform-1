module "backend-core" {
    source = "./backend/ec2"
    
}


output "PrivateIP" {
    value = module.backend-core.PrivateIP
}

