provider "null" {}

# Repository 1
resource "null_resource" "opbackend_tf" {
  provisioner "local-exec" {
    command = "git -C /root/docker-shell/opbackend_tf pull"
  }
}

# Repository 2
resource "null_resource" "opfe_bo" {
  provisioner "local-exec" {
    command = "git -C /root/docker-shell/opfe-bo pull"
  }
}

# Repository 3
resource "null_resource" "opfe_aff_nuxt" {
  provisioner "local-exec" {
    command = "git -C /root/docker-shell/opfe-aff-nuxt pull"
  }
}

# Repository 4
resource "null_resource" "template_asia_fe" {
  provisioner "local-exec" {
    command = "git -C /root/docker-shell/template_asia_fe pull"
  }
}

