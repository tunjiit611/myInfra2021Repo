terraform {
  backend "s3" {
    bucket = "tunjiit611bucket"
    key = "master"
    region = "us-east-1"
    dynamodb_table = "tunjiit611table"
  }
}
