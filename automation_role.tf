data "aws_iam_policy_document" "instance-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = [
          "ec2.amazonaws.com",
          "ssm.amazonaws.com"
        ]
    }
  }
}


data "aws_iam_policy" "Amazonssm" {
arn = "arn:aws:iam::aws:policy/service-role/AmazonSSMAutomationRole"
}


resource "aws_iam_role" "AutomationServiceRole" {
  name               = "AutomationServiceRole"
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.instance-assume-role-policy.json
}


resource "aws_iam_policy_attachment" "test-attach" {
  name       = "ExtraPolicyAttachment"
  roles      = ["${aws_iam_role.AutomationServiceRole.name}"]
  policy_arn = data.aws_iam_policy.Amazonssm.arn
}