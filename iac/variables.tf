variable "bucket_name" {
  default = "datalake-igti-diego-xpe-tf"
}

variable "environment" {
  default = "producao"
}

variable "accountid" {
  default = "615564902404"
}

variable "region" {
  default = "us-east-1"
}

variable "lambda_function_name" {
  default = "IGTIexecutaEMRaovivo"
}

variable "script_pyspark_name" {
  default = "job_spark_from_tf.py"
}

variable "delta_pyspark_insert_name" {
  default = "01_delta_spark_insert_from_tf.py"
}

variable "delta_pyspark_upsert_name" {
  default = "02_delta_spark_upsert_from_tf.py"
}

variable "tratamento_rais_pyspark_name" {
  default = "03_tratamento_rais_2020_spark_from_tf.py"
}

variable "lambda_function_desafio_name" {
  default = "DesafioIGTIMod1ExecutaEMR"
}
