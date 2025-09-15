# Usando a imagem oficial do N8N
FROM n8nio/n8n:latest

# Copiar o workflow WhatsApp.json para dentro do container
COPY WhatsApp.json /home/node/.n8n/workflows/WhatsApp.json

# Configurações do N8N
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Configuração do Redis (Upstash)
ENV REDIS_URL=redis://default:AflIAAIncDFiYzQyNjA0MDI4ZDk0ODc5OWZjOTc0MzE1ZTc0ODMzMHAxNjM4MTY@vital-teal-63816.upstash.io:6379

