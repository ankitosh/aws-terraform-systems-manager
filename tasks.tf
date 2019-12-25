resource "aws_ssm_maintenance_window_task" "task" {
  window_id        = "${aws_ssm_maintenance_window.production.id}"
  name             = "maintenance-window-task"
  description      = "This is a maintenance window task"
  task_type        = "RUN_COMMAND"
  task_arn         = "AWS-ApplyPatchBaseline"
  priority         = 1
  #service_role_arn  =  "${module.AutomationServiceRole.arn}"
  service_role_arn   = "arn:aws:iam::366775409521:role/AutomationServiceRole"#"${var.service_role_arn}"
  max_concurrency  = "4"
  max_errors       = "1"

  targets {
    key    = "WindowTargetIds"
    values = "${aws_ssm_maintenance_window_target.Windows_Targets.*.id}"
  }

  task_parameters {
    name   = "Operation"
    values = ["Install"]
  }
}


resource "aws_ssm_maintenance_window_task" "amaznlin" {
  window_id        = "${aws_ssm_maintenance_window.dev.id}"
  name             = "maintenance-window-amznlin-task"
  description      = "This is a Linux maintenance window task"
  task_type        = "RUN_COMMAND"
  task_arn         = "AWS-ApplyPatchBaseline"
  priority         = 1
  #service_role_arn  =  "${module.AutomationServiceRole.arn}"
  service_role_arn   = "arn:aws:iam::366775409521:role/AutomationServiceRole"#"${var.service_role_arn}"
  max_concurrency  = "4"
  max_errors       = "1"

  targets {
    key    = "WindowTargetIds"
    values = "${aws_ssm_maintenance_window_target.Linux_Targets.*.id}"
  }

  task_parameters {
    name   = "Operation"
    values = ["Install"]
  }
}