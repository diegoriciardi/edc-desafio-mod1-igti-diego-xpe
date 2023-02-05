resource "aws_lambda_function" "executa_emr_desafio_mod1" {
    filename = "lambda_function_desafio_payload.zip"
    function_name = var.lambda_function_desafio_name
    role = aws_iam_role.lambda.arn
    handler = "lambda_function_desafio.handler"
    memory_size = 128
    timeout = 30

    source_code_hash = filebase64sha256("lambda_function_desafio_payload.zip")

    runtime = "python3.8"

    tags = {
      IES = "IGTI"
      CURSO = "EDC"
    }
}

