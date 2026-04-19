locals {
  name = join(var.delimiter, [var.stage, var.namespace, var.name, var.random_string])
}
