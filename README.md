# Instância EC2 AWS Terraform e Projeto com Django Framework

Projeto criado com terraform para configurar o recurso de instância EC2.



Consulte **[Documentação Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build)** e **[Documentação Ansible](https://docs.ansible.com/ansible/latest/index.html)** para saber como implantar o projeto.

### 📋 Pré-requisitos

Ter as seguintes ferramentas instaladas:
- CLI Terraform
- AWS CLI
- Conta AWS e credenciais associadas

### 📦 Implantação

## Configurando as opções da AWS CLI

- Rodar o comando *aws configure*, inserir AWS Access Key Id e your AWS Secret Access Key. Isso fará com que o terraform saiba em qual conta deverá aplicar os recursos desse projeto.

## Inicializar o diretório de configuração

- Rodar o comando *terraform init* para baixar e instalar os provedores definidos nas configurações que estão no arquivo main.tf

## Criar infraestrutura

- Rodar o comando *terraform apply*. Esse comando irá apresentar o plano de execução com todas as alterações que serão realizadas a partir da configuração, comparando a última alteração realizada. Será apresentada a pergunta 
""Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:""
  
  
Digite *yes* e a instância será criada na sua conta.

## Iniciando o projeto com Ansible
- Rodar o comando *ansible-playbook playbook.yml -u ubuntu --private-key sua_private_key -i hosts.yml*. As tarefas serão criadas de acordo com o que foi definido no arquivo playbook.yml.

## Verificando se o projeto foi criado

Você pode usar esse projeto como base para criar a instância EC2 de acordo com as configurações que desejar e seu projeto em Django Framework.
