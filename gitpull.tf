provider "null" {}

# Repository 1
resource "null_resource" "opbackend_tf" {
  triggers = {
    repository_path = "/root/docker-shell/opbackend_tf" # Update with the actual path to the repository
  }

  provisioner "local-exec" {
    command = "git -C ${self.triggers.repository_path} pull"
  }

  provisioner "local-exec" {
    command = "docker-compose -f ${self.triggers.repository_path}/docker-compose.yml up -d"
    working_dir = "${self.triggers.repository_path}"
  }
}

# Repository 2
resource "null_resource" "opfe_bo" {
  triggers = {
    repository_path = "/root/docker-shell/opfe-bo" # Update with the actual path to the repository
  }

  provisioner "local-exec" {
    command = "git -C ${self.triggers.repository_path} pull"
  }

  provisioner "local-exec" {
    command = "docker-compose -f ${self.triggers.repository_path}/docker-compose.yml up -d"
    working_dir = "${self.triggers.repository_path}"
  }
}

# Repository 3
resource "null_resource" "opfe_aff_nuxt" {
  triggers = {
    repository_path = "/root/docker-shell/opfe-aff-nuxt" # Update with the actual path to the repository
  }

  provisioner "local-exec" {
    command = "git -C ${self.triggers.repository_path} pull"
  }

  provisioner "local-exec" {
    command = "docker-compose -f ${self.triggers.repository_path}/docker-compose.yml up -d"
    working_dir = "${self.triggers.repository_path}"
  }
}

# Repository 4
resource "null_resource" "template_asia_fe" {
  triggers = {
    repository_path = "/root/docker-shell/template_asia_fe" # Update with the actual path to the repository
  }

  provisioner "local-exec" {
    command = "git -C ${self.triggers.repository_path} pull"
  }

  provisioner "local-exec" {
    command = "docker-compose -f docker-compose.yml up -d"
  }
}

