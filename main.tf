# resource "null_resource" "files" {
#   provisioner "local-exec" {
#     command = "sudo apt-get update && sudo apt-get install -y tree"
#   }
#   triggers = {
#     run_every_time = uuid()
#   }
# }

resource "null_resource" "files" {
  provisioner "local-exec" {
    command = "sudo ls"
  }
  triggers = {
    run_every_time = uuid()
  }
}
