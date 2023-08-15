variable "clusters" {
  type = map(object({
    name        = string
    agent_count = number
  }))
}

module "eks" {
  source = "./eks"

  for_each = var.clusters
  vpc_id   = "vpc-12345"
}
