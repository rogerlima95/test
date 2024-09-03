
# Node.js Hello World Application

Este projeto é uma aplicação simples "Hello World" em Node.js que serve arquivos estáticos. Ele inclui configuração para Docker e Kubernetes usando Helm.


## Pré-requisitos

- Docker
- Kubernetes com Minikube ou outro cluster configurado
- Helm 3.0+

## Como Construir a Imagem Docker

Para construir a imagem Docker da aplicação, execute o comando abaixo na raiz do projeto:

```bash
docker build -t node-docker-hello-world .
```

## Como Executar a Imagem Docker

Para rodar a imagem Docker localmente, execute:

```bash
docker run -p 80:80 node-docker-hello-world
```

A aplicação estará acessível em `http://localhost:80`.

## Implantação no Kubernetes com Helm

### Passo 1: Configurar Minikube (se estiver usando localmente)

Se você estiver usando Minikube, certifique-se de que ele está rodando:

```bash
minikube start
```

### Passo 2: Instalar o Helm Chart

Navegue até o diretório `helm` e instale o chart:

```bash
cd helm
helm install node-hello-world .
```

### Acesso à Aplicação

Após a instalação, você pode expor o serviço usando Minikube ou `kubectl port-forward`.

#### Usando Minikube

```bash
minikube service node-hello-world
```

#### Usando Port Forward

```bash
kubectl port-forward svc/node-hello-world 8080:80
```

Acesse a aplicação em `http://localhost:8080`.

## Desinstalação

Para desinstalar o _chart_ e remover a aplicação do cluster Kubernetes:

```bash
helm uninstall node-hello-world
```
