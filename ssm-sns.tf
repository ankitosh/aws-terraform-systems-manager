resource "aws_sns_topic" "patching" {
  name = "Patch-Dev"
}

resource "aws_sns_topic" "patching2" {
  name = "Patch-Prod"
}
