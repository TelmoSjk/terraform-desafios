# Desafios - Devops Pro
## Desafio 01
Criar uma infraestrutura simples para a aplicação de monitoramento dos assuntos no Twitter. Essa infraestrutura tem os seguintes requisitos:

* Uma VPC independente na Digital Ocean
* Uma máquina virtual Linux com o Ubuntu e IP público
* Um firewall pra proteger a máquina virtual


Alguns requisitos que devem ser obedecidos:

- A imagem do sistema operacional da máquina virtual deve ser parametrizado
- O size da máquina deve ser parametrizado
- A região de toda a solução deve ser parametrizado
- O acesso na máquina virtual vai ser feito utilizando SSH através da chave cadastrada na Digital Ocean (o nome da chave é twitter-ssh) e o IP que vai ter acesso à máquina é o 239.13.117.114.
- As portas que devem ser liberadas no firewall são apenas as portas HTTP (80), HTTPS (443), DNS (53) e a SSH (22) aceitando apenas o IP que será usado pra acesso.
- A solução deve ser entregue no repositório “Desafios Terraform” que você criou dentro do diretório /terraform-bronze/01-Twitter_Trends_Scan.

## Desafio 02
Agora, vamos pra última etapa.

Vamos criar a infraestrutura que vai receber o Wordpress.

Pra isso, a infraestrutura precisa dos seguintes elementos:

* Uma VPC independente na Digital Ocean
* Uma máquina virtual Linux com o Ubuntu e IP público para o Wordpress.
* Um firewall pra proteger a máquina virtual com o Wordpress.
* Um banco de dados MySQL

Os requisitos que devem ser obedecidos são:

- A imagem do sistema operacional das máquinas virtuais deve ser parametrizado
- O size da máquina deve ser parametrizado
- O size do banco de dados deve ser parametrizado
- A região de toda a solução deve ser parametrizado
- O acesso na máquina virtual vai ser feito utilizando SSH através da chave cadastrada na Digital Ocean (o nome da chave é crm-ssh) e o IP que vai ter acesso à máquina é o 239.13.117.114.
- As portas que devem ser liberadas no firewall do Wordpress são apenas as portas HTTP (80), HTTPS (443), DNS (53) e a SSH (22) aceitando apenas o IP que será usado pra acesso.
- O banco de dados só deve permitir o acesso da máquina virtual com o Wordpress.
- A solução deve ser entregue no repositório “Desafios Terraform” que você criou dentro do diretório /terraform-bronze/02-Wordpress.

## Desafio 03
Agora é a hora de criar a infraestrutura que vai comportar o CRM das agências. O CRM possúi 3 componentes na sua arquitetura:

Camada de Front End
Camada de negócios
Banco de dados Postgre
Então a infraestrutura precisa dos seguintes elementos:

* Uma VPC independente na Digital Ocean
* Uma máquina virtual Linux com o Ubuntu e IP público para o front end.
* Uma máquina virtual Linux com o Ubuntu para a camada de negócios.
* Um firewall pra proteger a máquina virtual com o front end.
* Um firewall pra proteger a máquina virtual com a camada de negócios.
* Um banco de dados Postgre


Alguns requisitos que devem ser obedecidos:

- A imagem do sistema operacional das máquinas virtuais deve ser parametrizado
- O size das máquinas deve ser parametrizado
- O size do banco de dados deve ser parametrizado
- A região de toda a solução deve ser parametrizado
- O acesso nas máquinas virtuais vai ser feito utilizando SSH através da chave cadastrada na Digital Ocean (o nome da chave é crm-ssh) e o IP que vai ter acesso à máquina é o 239.13.117.114.
- As portas que devem ser liberadas no firewall do front end são apenas as portas HTTP (80), HTTPS (443), DNS (53) e a SSH (22) aceitando apenas o IP que será usado pra acesso.
- O acesso à máquina com a camada de negócios deve ser feito apenas pela máquina de front end pelas portas HTTP (80), HTTPS (443). Enquanto a porta DNS (53) será utilizada e a SSH (22) aceitando apenas o IP que será usado pra acesso.
- O banco de dados só deve permitir o acesso da máquina virtual com a camada de negócio.
- A solução deve ser entregue no repositório “Desafios Terraform” que você criou dentro do diretório /terraform-bronze/03-CRM.

## Desafio 04
A implantação do CRM foi um sucesso !!! Mas como se trata de uma aplicação crítica, foi definido que a infraestrutura precisaria suportar alta disponibilidade. Então faremos uma alteração na arquitetura do CRM adicionando redundância na solução e incluindo um load balancer na frente das máquinas de front end.


Todos os requisitos anteriores devem ser seguidos nessa solução também.

A solução deve ser entregue no repositório “Desafios Terraform” que você criou dentro do diretório /terraform-bronze/04-CRM-HA# terraform-desafios
