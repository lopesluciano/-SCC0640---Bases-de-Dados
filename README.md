# Projeto PostgreSQL com Docker

Este é um projeto para configurar um banco de dados PostgreSQL usando Docker.

## Como Usar

1. Clone este repositório:

 ```bash
 git clone https://github.com/lopesluciano/-SCC0640---Bases-de-Dados/edit/master/README.md
```


2.Navegue até o diretório do projeto:

```bash
cd meu-projeto-postgres
```


3.Inicie o container do PostgreSQL:

```bash
sudo docker-compose up -d
```

4.Acesse o banco de dados usando o DBeaver ou outra ferramenta de sua escolha.
 
 No DBeaver:
 
 Database > New Database Connection > PostgreSQL 
 Na janela de configuração preencher as informações assim como constam no arquivo docker-compose.yml

OBS: Para desativar o docker 

```bash
sudo docker stop postgres
```

## Como Instalar PostgreSQL (Debian e Ubuntu)

Para instalar o cliente PostgreSQL no Ubuntu, você pode seguir estes passos:

    Atualize a lista de pacotes:

```bash
sudo apt update
```

Instale o PostgreSQL: Use o seguinte comando para instalar apenas as ferramentas do cliente (psql):

```bash
sudo apt install postgresql
```

Isso instalará tanto o servidor PostgreSQL quanto o cliente psql, que é a interface de linha de comando para PostgreSQL.

Verifique a instalação: Para verificar se o cliente PostgreSQL foi instalado corretamente, execute:

```bash
psql --version
```

Você deverá ver a versão instalada do psql.

Inicie e ative o serviço PostgreSQL

Inicie o serviço PostgreSQL (geralmente ele inicia automaticamente após a instalação, não iniciar se for usar docker posteriormente, pois utilizam a mesma porta de rede) e ative-o para iniciar na inicialização:

```bash
    sudo systemctl start postgresql
    sudo systemctl enable postgresql
```

## Como Instalar Docker (Debian e Ubuntu)
Passo 1: Atualize seu sistema

Abra um terminal e certifique-se de que seu índice de pacotes está atualizado:

```bash
sudo apt update
sudo apt upgrade -y
```

Passo 2: Instale pacotes necessários

Instale os pacotes exigidos para a instalação do Docker:

```bash
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
```

Passo 3: Adicione a chave GPG oficial do Docker

Adicione a chave GPG oficial do Docker para garantir que os pacotes baixados sejam genuínos:

```bash
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
```

Passo 4: Adicione o repositório do Docker

Adicione o repositório do Docker às suas fontes APT:

```bash
echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
```
Passo 5: Atualize o índice de pacotes novamente

Após adicionar o repositório do Docker, atualize o índice de pacotes novamente:

```bash
sudo apt update
```

Passo 6: Instale o Docker

Agora, você pode instalar o Docker:

```bash
sudo apt install docker-ce -y
```

Passo 7: Inicie e ative o Docker

Inicie o serviço Docker e ative-o para iniciar na inicialização:

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

Passo 8: Verifique a instalação

Para verificar se o Docker está instalado e em execução, você pode executar:

```bash
sudo docker --version
```
