resource "aws_key_pair" "deployer" {
  key_name   = "bastion-keyy"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_s3_bucket" "example" {
  bucket = "kaizen-aiperi"
  force_destroy = true
}

resource "aws_s3_object" "object" {
    depends_on = [ aws_s3_bucket.example ]
  bucket = "kaizen-aiperi"
  key    = "main.tf"
  source = "main.tf"
}