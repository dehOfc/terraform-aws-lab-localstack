resource "aws_instance" "meu_servidor" {
    # AMI básica para o localstack
    ami           = "ami0c55b159cbfafe1f0"
    instance_type = "t2.micro"

    # Conecta o servidor à sub-rede que criei no arquivo network.tf
    subnet_id = aws_subnet.minha_subnet.id

    # Conecta o servidor ao Security Group que criei no arquivo network.tf
    vpc_security_group_ids = [aws_security_group.web_sg.id]

    tags = {
        Name = "Servidor-Web-DevOps"
    }

    user_data = <<-EOF
            #!/bin/bash
            echo "<h1>Projeto DevOps do André - Servidor Ativo!</h1>" > index.html
            python3 -m http.server 80 &
            EOF
}