terraform {
  backend "s3" {
    bucket = "tunjiit611bucket"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "tunjiit611table"
  }
}
