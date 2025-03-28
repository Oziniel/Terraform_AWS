# AWS Infra Portfolio

Este repositório contém exemplos de infraestrutura na AWS utilizando Terraform e AWS CLI.

## Estrutura do Repositório

```
aws-infra-portfolio/
│── ec2/           # Provisionamento de instâncias EC2
│── ecs/           # Configuração de cluster ECS e serviços
│── vpc/           # Infraestrutura de rede com VPC, subnets, etc.
│── s3/            # Criação e configuração de buckets S3
│── rds/           # Provisionamento de banco de dados RDS
│── iam/           # Configuração de roles e policies
│── scripts/       # Automação com scripts Bash/Python
│── README.md      # Documentação do projeto
```

## Requisitos

- Terraform instalado
- AWS CLI configurado
- Conta AWS com permissões adequadas

## Como Usar

1. Clone este repositório:
   ```sh
   git clone https://github.com/Oziniel/lab_aws.git
   ```
2. Acesse o diretório desejado e aplique a infraestrutura com Terraform:
   ```sh
   cd ec2
   terraform init
   terraform apply
   ```

## Contribuição

Sinta-se à vontade para contribuir enviando PRs ou abrindo issues!
