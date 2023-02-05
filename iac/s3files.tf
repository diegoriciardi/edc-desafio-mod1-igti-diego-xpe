resource "aws_s3_bucket_object" "job_spark" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/${var.script_pyspark_name}"
  acl    = "private"
  source = "../${var.script_pyspark_name}"
  etag   = filemd5("../${var.script_pyspark_name}")
}

resource "aws_s3_bucket_object" "delta_insert" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/${var.delta_pyspark_insert_name}"
  acl    = "private"
  source = "../etl/${var.delta_pyspark_insert_name}"
  etag   = filemd5("../etl/${var.delta_pyspark_insert_name}")
}

resource "aws_s3_bucket_object" "delta_upsert" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/${var.delta_pyspark_upsert_name}"
  acl    = "private"
  source = "../etl/${var.delta_pyspark_upsert_name}"
  etag   = filemd5("../etl/${var.delta_pyspark_upsert_name}")
}

resource "aws_s3_bucket_object" "tratamento_dados_rais" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/${var.tratamento_rais_pyspark_name}"
  acl    = "private"
  source = "../etl/${var.tratamento_rais_pyspark_name}"
  etag   = filemd5("../etl/${var.tratamento_rais_pyspark_name}")
}
