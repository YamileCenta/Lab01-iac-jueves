# lab01-iac-jueves

Bienvenidos a iac, el dia de hoy quiero desplegar mi pagina web con el contenido: WEB01
Quiero desplegar mi contenido en 1 servidor web en el puerto 8080

# Tarea de lab01 - Despliegue web 01 y 02

Se realizo el despliegue de dos webs haciendo uso de contenedores Docker con el uso de Nginx.

Cada una de las webs corre en un puerto diferente:
- **Web01** → Puerto **4000**
- **Web02** → Puerto **4001**

## Tecnologias usadas:
- Docker
- Nginx
- Git/Gitflow
- Conventional commits

## Configuracion de Dockerfile
Cada una de las web usa la siguiente configuracion base:
```
FROM nginx:alpine

COPY index.html /usr/share/nginx/html

EXPOSE 80
```
Se hizo el uso de alpine en lugar de trixie-perl como en el ejemplo debido a que ofrece una version más ligera y optimizada, usando menos recursos y ofreciendo velocidad en la construcción/descarga.

## Construccion de imagenes
Para la construccion de las imagenes se uso el siguiente comando:
### Web01
```
docker build -t web01 .
```
### Web02
```
docker build -t web02 .
```

## Ejecucion de Contenedores
### Ejecutar Web01
```
docker run -d -p 4000:80 --name web01-container web01
```
### Web02
```
docker run -d -p 4001:80 --name web02-container web02
```