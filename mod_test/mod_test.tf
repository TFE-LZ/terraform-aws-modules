locals {
  params = var.params
}

resource "null_resource" "cluster" {
  # Changes to any instance of the cluster requires re-provisioning
#  triggers = {
#    cluster_instance_ids = "${join(",", aws_instance.cluster.*.id)}"
#  }

  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "ls -lart"
  }
}
