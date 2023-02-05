resource "aws_glue_crawler" "crawlerdadosrais" {
  database_name = aws_glue_catalog_database.crawlerdadosrais.name
  name          = "rais"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://datalake-igti-diego-xpe-tf-producao-615564902404/processing-zone/rais/"
  }
}