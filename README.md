# Shell-Script-Intalacao-Nextcloud-MariaDB
Shell script para instalação e configuração "padrão" Nextcloud com MariaDB em Debian 11

**Importante:** este é um trabalho em andamento.

**Ainda mais importante:** Se você realmente planeja usar isso, não se esqueça de editar os arquivos de configuração de acordo com suas necessidades (arquivos de serviço, arquivos de configuração YAML, etc.). Os arquivos de configuração fornecidos aqui são apenas arquivos genéricos.

Este script baixa os arquivos no diretório atual. Você poderia mudar isso.

Quaisquer sugestões e contribuições são bem-vindas.

# Como usar isso?

* chmod +x nextcloud_mariadb.sh

* sudo ./nextcloud_mariadb.sh

## Instalação completa

A instalação completa instalará o seguinte:

* Nextcloud

* MariaDB

# Acesso

* http://localhost/nextcloud
* http://seu-host-name/nextcloud

* Basta criar um usuario e senha no momento do login, exemplo: User (Admin) senha (Admin)

# Acesso banco de dados de acordo com confi desponibilizada no script

* Database user: nextcloud
* Database name: nextcloud
* Database password: nextdbpass
* Lembre-se de alterá-las
* Porta de acesso padrão MariaDB: 3306
