variable "s3_bucket_name_prefix" {
  description = "Prefix for the S3 bucket used to store CloudTrail logs"
  type        = string
  default     = "cloudtrail-activity-logs"
}

variable "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch Log Group for CloudTrail"
  type        = string
  default     = "/aws/cloudtrail/activity"
}

variable "cloudwatch_log_retention_days" {
  description = "Number of days to retain logs in CloudWatch"
  type        = number
  default     = 7
}

variable "cloudtrail_role_name" {
  description = "Name of the IAM role for CloudTrail to publish logs to CloudWatch"
  type        = string
  default     = "cloudtrail-cloudwatch-role"
}

variable "cloudtrail_policy_name" {
  description = "Name of the IAM policy for CloudTrail"
  type        = string
  default     = "cloudtrail-cloudwatch-policy"
}

variable "cloudtrail_name" {
  description = "Name of the CloudTrail trail"
  type        = string
  default     = "account-activity-trail"
}
