output "log_group_arn" {
  value = aws_cloudwatch_log_group.faker.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.faker.function_name
}
