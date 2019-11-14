resource "aws_ssm_patch_baseline" "windows" {
  name             = "windows-patch-baseline"
  description      = "windows-patch-baseline"
  approved_patches = ["KB123456", "KB456789"]
  rejected_patches = ["KB987654"]

  global_filter {
    key    = "PRODUCT"
    values = ["WindowsServer2016"]
  }

  global_filter {
    key    = "CLASSIFICATION"
    values = ["CriticalUpdates", "SecurityUpdates", "Updates"]
  }

  global_filter {
    key    = "MSRC_SEVERITY"
    values = ["Critical", "Important", "Moderate"]
  }

  approval_rule {
    approve_after_days = 2
    compliance_level   = "HIGH"

    patch_filter {
      key    = "PRODUCT"
      values = ["WindowsServer2016"]
    }

    patch_filter {
      key    = "CLASSIFICATION"
      values = ["CriticalUpdates", "SecurityUpdates", "Updates"]
    }

    patch_filter {
      key    = "MSRC_SEVERITY"
      values = ["Critical", "Important", "Moderate"]
    }
  }

  approval_rule {
    approve_after_days = 2

    patch_filter {
      key    = "PRODUCT"
      values = ["WindowsServer2016"]
    }
  }
}




resource "aws_ssm_patch_baseline" "amznlin2" {
  name             = "amznlin2-patch-baseline"
  description      = "amznlin2-patch-baseline"
  operating_system = "AMAZON_LINUX_2"

  global_filter {
    key    = "PRODUCT"
    values = ["AmazonLinux2"]
  }

  global_filter {
    key    = "CLASSIFICATION"
    values = ["Security","Bugfix","Enhancement"]
  }

  global_filter {
    key    = "SEVERITY"
    values = ["Critical", "Important", "Medium"]
  }

  approval_rule {
    approve_after_days = 2
    compliance_level   = "HIGH"

    patch_filter {
      key    = "PRODUCT"
      values = ["AmazonLinux2"]
    }

    patch_filter {
      key    = "CLASSIFICATION"
      values = ["Security","Bugfix","Enhancement"]
    }

    patch_filter {
      key    = "SEVERITY"
      values = ["Critical", "Important", "Medium"]
    }
  }

  approval_rule {
    approve_after_days = 2

    patch_filter {
      key    = "PRODUCT"
      values = ["AmazonLinux2"]
    }
  }
}