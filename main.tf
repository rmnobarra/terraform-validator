variable "file_qtde" {
  type    = number
  default = 5
}

variable "file_name" {
  type    = string
  default = "file"

}

resource "local_file" "example" {
  count    = var.file_qtde
  filename = "${var.file_name}${count.index + 1}.txt"
  content  = "Arquivo ${count.index + 1}"
}

output "names" {
  value = local_file.example[*].filename
  
}
