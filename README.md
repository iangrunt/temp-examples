```
(base) /tmp/new_dir_20230815151841_3815 0 $ terragrunt apply

Initializing the backend...
Initializing modules...
- eks in eks

Initializing provider plugins...
- Finding latest version of hashicorp/null...
- Installing hashicorp/null v3.2.1...
- Installed hashicorp/null v3.2.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.eks["dev"].null_resource.eks_cluster will be created
  + resource "null_resource" "eks_cluster" {
      + id       = (known after apply)
      + triggers = {
          + "destroy_eks_if_vpc_changed" = "vpc-12345"
        }
    }

  # module.eks["staging"].null_resource.eks_cluster will be created
  + resource "null_resource" "eks_cluster" {
      + id       = (known after apply)
      + triggers = {
          + "destroy_eks_if_vpc_changed" = "vpc-12345"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.eks["dev"].null_resource.eks_cluster: Creating...
module.eks["staging"].null_resource.eks_cluster: Creating...
module.eks["staging"].null_resource.eks_cluster: Creation complete after 0s [id=7067854526538491366]
module.eks["dev"].null_resource.eks_cluster: Creation complete after 0s [id=6175270662913108884]
```
