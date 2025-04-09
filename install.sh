#!/bin/bash

# ------------------------------------------------------------------------------
# Banner de atualização do Dify
# ------------------------------------------------------------------------------
echo -e "\e[32m     ____       __        __        __  __       \e[0m"
echo -e "\e[32m    /\\  _\\     /\\ \\      /\\ \\      /\\ \\/\\ \\      \e[0m"
echo -e "\e[32m    \\ \\ \\/  ___ \\ \\ \\____ \\ \\ \\____ \\ \\ \\_\\ \\     \e[0m"
echo -e "\e[32m     \\ \\ \\_/ __ \\\\ \\ '__`\\\\ \\ '__`\\ \\ \\  _  \\    \e[0m"
echo -e "\e[32m      \\ \\ \\_/\\ \\ \\\\ \\ \\L\\ \\\\ \\ \\L\\ \\ \\ \\ \\ \\ \\   \e[0m"
echo -e "\e[32m       \\ \\_\\\\ \\___/ \\ \\_,__/ \\ \\_,__/  \\ \\_\\ \\_\\  \e[0m"
echo -e "\e[32m        \\/_/ \\/__/   \\/___/   \\/___/    \\/_/\\/_/  \e[0m"
echo -e "\e[32m         Atualizando seu Dify via Docker Compose   \e[0m"
echo

# ------------------------------------------------------------------------------
# Passo 1: Navegar até o diretório do Dify (ajuste se necessário)
# ------------------------------------------------------------------------------
cd /opt/dify || {
  echo "ERRO: O diretório /opt/dify não foi encontrado!"
  echo "Verifique se o Dify está instalado em /opt/dify ou ajuste o script."
  exit 1
}

# ------------------------------------------------------------------------------
# Passo 2: Atualizar o repositório com git pull
# ------------------------------------------------------------------------------
echo "--------------------------------------------------"
echo "Atualizando repositório do Dify (git pull)..."
git pull

# ------------------------------------------------------------------------------
# Passo 3: Parar contêineres (sem remover volumes) e entrar na pasta 'docker'
# ------------------------------------------------------------------------------
echo "--------------------------------------------------"
cd docker || {
  echo "ERRO: O diretório /opt/dify/docker não foi encontrado!"
  exit 1
}
echo "Parando contêineres Docker (sem remover volumes)..."
docker compose down

# ------------------------------------------------------------------------------
# Passo 4: Baixar imagens atualizadas e subir contêineres novamente
# ------------------------------------------------------------------------------
echo "--------------------------------------------------"
echo "Baixando imagens mais recentes..."
docker compose pull

echo "Subindo contêineres em segundo plano..."
docker compose up -d

# ------------------------------------------------------------------------------
# Passo 5: Listar contêineres em execução
# ------------------------------------------------------------------------------
echo "--------------------------------------------------"
docker ps

# ------------------------------------------------------------------------------
# Mensagem final
# ------------------------------------------------------------------------------
echo -e "\e[32m--------------------------------------------------\e[0m"
echo -e "\e[32mDify atualizado com sucesso!\e[0m"
echo -e "\e[32mSeus dados e fluxos foram mantidos, pois os volumes não foram removidos.\e[0m"
