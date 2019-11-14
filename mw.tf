resource "aws_ssm_maintenance_window" "production" {
  name     = "maintenance-window-Production"
  schedule = "cron(00 0-4 ? * SUN#4 *)"
  duration = 3
  cutoff   = 1
}

output "mw" {
  value = "${aws_ssm_maintenance_window.production.id}"
}

resource "aws_ssm_maintenance_window" "dev" {
  name     = "maintenance-window-Dev"
  schedule = "cron(00 0-4 ? * SUN#3 *)"
  duration = 3
  cutoff   = 1
}

output "dev" {
  value = "${aws_ssm_maintenance_window.dev.id}"
}
