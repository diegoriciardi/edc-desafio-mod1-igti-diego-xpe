resource "aws_s3_bucket" "datalake" {
  # parametros de configuracao do recurso escolhido
  bucket = "${var.bucket_name}-${var.environment}-${var.accountid}"
  acl    = "private"

  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket" "stream" {
  # parametros de configuracao do recurso escolhido
  bucket = "${var.bucket_name}-${var.bucket_stream_name}"
  acl    = "private"

  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}