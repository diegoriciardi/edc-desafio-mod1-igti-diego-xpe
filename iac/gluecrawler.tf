resource "aws_glue_crawler" "crawlerdadosrais" {
  database_name = "dadosrais"
  name          = "rais"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://datalake-igti-diego-xpe-tf-producao-615564902404/processing-zone/rais/"
  }
}

resource "aws_glue_catalog_database" "stream" {
  name = "streamingdb"
}

resource "aws_glue_crawler" "stream" {
  database_name = aws_glue_catalog_database.stream.name
  name = "firehose_stream_s3_crawler"
  role = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.stream.bucket}/firehose/"
  }

  configuration = <<EOF
{
  "Version": 1.0,
  "Grouping": {
    "TableGroupPolicy": "CombineCompatibleSchemas"
  }
}
EOF

  tags = {
    IES = "IGTI"
    CURSO = "EDC"
  }

}