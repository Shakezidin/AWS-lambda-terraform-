provider "aws" {
  region = "us-east-2"
  access_key = "AKIAQIMKLH3IIVXFTV4U"
  secret_key = "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"
}

resource "aws_lambda_function" "dev-golambda" {
  function_name     = "dev-golambda"
  handler           = "golambdabin"
  runtime           = "go1.x"
  role              = "arn:aws:iam::018006884048:role/lamda-role"
  filename          = "target/golambda.zip"
  source_code_hash  = "${base64sha256(filebase64("./target/golambda.zip"))}"
  memory_size       = 128
  timeout           = 10
}