output "vpc_name" {
  value = module.network.vpc_name
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "vm_name" {
  value = module.compute.instance_name
}

output "vm_external_ip" {
  value = module.compute.external_ip
}

output "bucket_name" {
  value = module.storage.bucket_name
}