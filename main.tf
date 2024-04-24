resource "local_file" "role_config" {
  count    = length(var.server_roles)
  filename = "${path.module}/${var.server_roles[count.index]}-config.txt"
  content  = "Configuration for the ${var.server_roles[count.index]} role."
}
