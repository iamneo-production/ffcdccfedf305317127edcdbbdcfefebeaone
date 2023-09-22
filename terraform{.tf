terraform{
    required_providers{
        aws={
            source="hashicorp/aws"
            version="~4.0"
        }
    }
}
provider "aws"{
    region="ap-northeast-1"
    access_key=""
    secret_key=""

}
resource "aws_instance" "aws"{
    ami="ami-0ed99df77a82560e6"
    instance_type="t2.micro"
}
output "public_ip"{
    value = aws_instance.aws.public_ip
}