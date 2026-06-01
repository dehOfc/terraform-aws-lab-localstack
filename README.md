# Lab: Infraestrutura como Código (IaC) com Terraform e LocalStack

Este é o meu primeiro projeto prático focando em **Infraestrutura como Código (IaC)**. Como estudante de ADS, decidi sair da teoria e criar um ambiente que simulasse o trabalho real de um engenheiro DevOps, usando ferramentas essenciais do mercado.

## 🎯 O objetivo
O objetivo deste projeto foi aprender a provisionar recursos de nuvem (AWS) localmente, sem custos, para entender como a infraestrutura é construída e organizada.

## 💡 Por que este projeto?
Como entusiasta de Cloud Computing e certificado **Oracle Cloud Infrastructure (OCI) Associate**, decidi construir este laboratório na AWS para ampliar meu domínio sobre o ecossistema líder de mercado. 
Acredito que, ao entender os conceitos de rede e infraestrutura na AWS, consigo aplicar esse conhecimento em qualquer outra nuvem, como na OCI.

## 🛠️ O que eu aprendi na prática
* **Terraform:** Como declarar infraestrutura em arquivos (`.tf`) em vez de criar tudo manualmente pelo console.
* **LocalStack + Docker:** Como ter um "servidor AWS" rodando dentro do meu próprio computador para testar minhas configurações.
* **Organização Profissional:** Aprendi a dividir o código em arquivos menores (`network.tf`, `compute.tf`, `providers.tf`), o que facilita muito a manutenção.
* **Git e versionamento:** Como subir meu código, tratar conflitos com `git pull --rebase` e manter arquivos sensíveis longe do GitHub usando o `.gitignore`.

## 🏗️ Arquitetura do ambiente
* **Rede:** Criei uma VPC com uma sub-rede segmentada e um Security Group para proteger o acesso (firewall).
* **Computação:** Provisionei uma instância EC2 que já nasce configurada com um servidor web simples através de automação (`user_data`).

## 🚀 Próximos passos
Como iniciante, este foi um grande passo para mim. Pretendo aprimorar esse ambiente com:
1. Mais segurança nas regras de firewall.
2. Explorar conceitos de Kubernetes (K8s).
3. Automatizar a validação desse código (CI/CD).

---
*Projeto desenvolvido como parte do meu aprendizado em Cloud e DevOps.*
