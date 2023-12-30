resource "aws_instance" "mera_project" {
        ami = "ami-0c7217cdde317cfec"
        instance_type = "t2.micro"
        tags = {
                Name = "terrform-project-instace"
        }
}
