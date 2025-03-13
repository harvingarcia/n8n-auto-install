#!/bin/bash

#############################################################
#                    Power by YN1ZHG, QRA Harvin            #
#############################################################

# Iniciar instalación de N8N
echo "Iniciando la instalación de N8N..."
echo "Verificando dependencias..."

# Verificar si Docker y Docker Compose están instalados
if ! command -v docker &> /dev/null
then
    echo "Docker no está instalado. Instalando Docker..."
    # Aquí añades el comando para instalar Docker si no está instalado
    exit 1
fi

if ! command -v docker-compose &> /dev/null
then
    echo "Docker Compose no está instalado. Instalando Docker Compose..."
    # Aquí añades el comando para instalar Docker Compose si no está instalado
    exit 1
fi

# Paso 1: Generar archivo docker-compose.yml
echo "Creando archivo docker-compose.yml..."

cat > docker-compose.yml <<EOF
version: "3"
services:
  n8n:
    image: n8nio/n8n
    container_name: n8n
    environment:
      - N8N_BASIC_AUTH_ACTIVE=false
      - N8N_HOST=0.0.0.0
      - N8N_PORT=5678
      - NODE_ENV=production
    ports:
      - "443:5678"  # Puerto 443 mapeado al contenedor
    volumes:
      - /home/node/.n8n
    restart: always
EOF

# Paso 2: Iniciar el contenedor de N8N sin SSL
echo "Iniciando N8N sin SSL..."
docker-compose up -d

# Esperar a que el contenedor se inicie
echo "Esperando que el contenedor de N8N se inicie..."
sleep 10

# Paso 3: Confirmar que el contenedor está corriendo
docker ps

echo "Instalación completa. Accede a N8N en http://localhost:443"
