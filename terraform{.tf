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
    access_key="AKIAQAR763YWF4KUBFDT"
    secret_key="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"

}
resource "aws_instance" "aws"{
    ami="ami-0ed99df77a82560e6"
    instance_type="t2.micro"
}
output "public_ip"{
    value = aws_instance.aws.public_ip
}