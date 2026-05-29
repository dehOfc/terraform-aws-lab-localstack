## Lab: Infraestrutura como Código (IaC) com Terraform e LocalStack

Este projeto demonstra a criação de uma VPC na AWS utilizando Terraform. Para garantir a segurança e a gratuidade dos testes, utilizei o LocalStack rodando via Docker para simular os serviços da AWS localmente.

**Ferramentas utilizadas:**

* Terraform (IaC)
* LocalStack (Simulador AWS)
* Docker / Docker Compose

**Como rodar:**
1. Inicie o ambiente: docker compose up
2. Execute o deploy: terraform apply

## Arquitetura de Rede

Este projeto foi desenhado seguindo boas práticas de isolamento de infraestrutura. A arquitetura atual é composta por:

* **VPC (Virtual Private Cloud):** Utiliza o bloco CIDR `10.0.0.0/16`, fornecendo uma rede privada robusta com capacidade para até 65.536 endereços IP, ideal para escalabilidade interna.
* **Subnet (Sub-rede):** Implementei uma sub-rede com o bloco CIDR `10.0.1.0/24` dentro da VPC. Esta segmentação é fundamental para o design de redes, permitindo o isolamento de recursos (como instâncias EC2) em uma zona específica (`us-east-1a`).

> **Nota Técnica:** A segmentação em `/24` (256 endereços) foi escolhida para demonstrar o controle sobre o tráfego de rede e o particionamento de sub-redes, seguindo conceitos fundamentais de endereçamento IP e roteamento.

---
