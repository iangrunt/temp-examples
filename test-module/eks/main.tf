resource "null_resource" "eks_cluster" {
  triggers = {
    destroy_eks_if_vpc_changed = var.vpc_id
  }
}
