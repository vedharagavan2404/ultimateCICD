cluster_name = "my-eks-cluster"
cluster_version = "1.30"
node_groups = {
  general = {
    instance_types = ["t3.medium"]
    capacity_type  = "ON_DEMAND"
    scaling_config = {
      desired_size = 2
      max_size     = 4
      min_size     = 1
    }
  }
}
subnet_ids = ["subnet-005d7d11cc3da2b03", "subnet-0ff21185a4fbbff74", "subnet-06ece32b8b696d5ae", "subnet-059ec7b5e9bdc20c6",
"subnet-05319e4fe4f86c47d", "subnet-0d8327aecc8d5b676"]
vpc_id = "vpc-03d7e91d38a179c8f"

