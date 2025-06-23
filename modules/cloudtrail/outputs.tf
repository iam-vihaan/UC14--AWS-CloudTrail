output "cloudtrail_bucket_name" {
  value = aws_s3_bucket.trail_bucket.bucket
}

output "cloudtrail_log_group" {
  value = aws_cloudwatch_log_group.trail.name
}

output "cloudtrail_role_arn" {
  value = aws_iam_role.cloudtrail_role.arn
}
