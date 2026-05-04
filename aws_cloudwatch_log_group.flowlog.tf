resource "aws_cloudwatch_log_group" "flowlog" {
  # checkov:skip=CKV_AWS_338: Retention period is configurable by the caller via var.log_retention_in_days
  name              = "${var.account_name}-flowlog"
  retention_in_days = var.log_retention_in_days
  kms_key_id        = var.kms_key_id
}
