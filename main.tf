module "cloudtrail" {
  source = "./modules/cloudtrail"

  cloudtrail_name               = var.cloudtrail_name
  s3_bucket_name_prefix         = var.s3_bucket_name_prefix
  cloudwatch_log_group_name     = var.cloudwatch_log_group_name
  cloudwatch_log_retention_days = var.cloudwatch_log_retention_days
  cloudtrail_role_name          = var.cloudtrail_role_name
  cloudtrail_policy_name        = var.cloudtrail_policy_name
}

module "cloudwatch_logs" {
  source         = "./modules/cloudwatch_logs"
  log_group_name = module.cloudtrail.cloudtrail_log_group
}

module "sns" {
  source = "./modules/sns"
  email  = var.notification_email
}

module "alarm" {
  source         = "./modules/alarm"
  metric_name    = var.metric_name
  metric_namespace = var.metric_namespace
  alarm_name     = var.alarm_name
  alarm_description = var.alarm_description
  statistic      = var.statistic
  period         = var.period
  evaluation_periods = var.evaluation_periods
  threshold      = var.threshold
  comparison_operator = var.comparison_operator
  sns_topic_arn  = module.sns.topic_arn
  environment    = var.environment
}
