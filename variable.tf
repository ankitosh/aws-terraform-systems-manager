variable "service_role_arn" {
    default = "arn:aws:iam::YOUR-ACCOUNT-ID:role/AutomationServiceRole"
}

variable "access_key"
default = "${ var.access_key}"
}

variable "secret_key" {
    default = "${var.secret_key}"
 }
