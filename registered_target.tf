resource "aws_ssm_maintenance_window_target" "Windows_Targets" {
  window_id     = "${aws_ssm_maintenance_window.dev.id}"
  name             = "maintenance-window-target"
  description      = "This is a maintenance window target"
  resource_type = "INSTANCE"

  targets {
    key    = "tag:Patch_Group"
    values = ["Windows_Test_Group_1"]
  }
}


resource "aws_ssm_maintenance_window_target" "Linux_Targets" {
  window_id     = "${aws_ssm_maintenance_window.dev.id}"
  name             = "maintenance-window-target"
  description      = "This is a maintenance window target"
  resource_type = "INSTANCE"

  targets {
    key    = "tag:Patch_Group"
    values = ["Linux_Test_Group_1"]
  }
}


resource "aws_ssm_maintenance_window_target" "Windows_Targets_Group_2" {
  window_id     = "${aws_ssm_maintenance_window.production.id}"
  name             = "maintenance-window-target"
  description      = "This is a maintenance window target"
  resource_type = "INSTANCE"

  targets {
    key    = "tag:Patch_Group"
    values = ["Windows_Prod_Group_2"]
  }
}


resource "aws_ssm_maintenance_window_target" "Linux_Targets_Group_2" {
  window_id     = "${aws_ssm_maintenance_window.production.id}"
  name             = "maintenance-window-target"
  description      = "This is a maintenance window target"
  resource_type = "INSTANCE"

  targets {
    key    = "tag:Patch_Group"
    values = ["Linux_Prod_Group_2"]
  }
}