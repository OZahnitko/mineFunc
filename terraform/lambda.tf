resource "aws_lambda_function" "faker" {
  function_name = "faker"
  role          = aws_iam_role.lambda.arn
  handler       = "index.handler"
  filename      = "../build/function.zip"
  runtime       = "nodejs14.x"

  provisioner "local-exec" {
    command = <<COMMAND
        #!/bin/bash
        sed -i "s/LAMBDA_FUNCTION_NAME=.*/LAMBDA_FUNCTION_NAME=${self.function_name}/" ../.env.production
    COMMAND
  }
}
