resource "aws_glue_crawler" "crawlerdadosrais" {
  database_name = "dadosrais"
  name          = "rais"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://datalake-igti-diego-xpe-tf-producao-615564902404/processing-zone/rais/"
  }
}