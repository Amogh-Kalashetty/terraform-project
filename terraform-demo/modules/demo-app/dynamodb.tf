resource "aws_dynamodb_table" "multipstage_dynamodb" {
    name = "${var.env_name}-${var.table_name}"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "emailID"

    attribute {
      name = "emailID"
      type = "S"
    }

}
