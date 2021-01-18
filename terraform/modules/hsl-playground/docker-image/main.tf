resource "null_resource" "docker-image" {
  provisioner "local-exec" {
    command = <<EOT
      echo "--- building docker image"
      docker build -t "gcr.io/${var.project_id}/${var.name}:${var.tag}" -t "gcr.io/${var.project_id}/${var.name}:latest" ../hsl-playground

      echo "--- pushing docker image to registry"
      docker push "gcr.io/${var.project_id}/${var.name}" --all-tags
    EOT

    interpreter = ["/bin/bash", "-c"]
  }

  triggers = {
    image = "gcr.io/${var.project_id}/${var.name}:${var.tag}"
  }
}
