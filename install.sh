#!/bin/bash

# ------------------------------------------------------------------------------
# 0. Banner inicial com "MAM"
# ------------------------------------------------------------------------------

WHITE="\e[97m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

echo -e "${WHITE}                     __       __ ______ __    __ __    __  ______                       ${RESET}"
echo -e "${WHITE}                    |  \     /  \      \  \  |  \  \  |  \/      \                      ${RESET}"
echo -e "${WHITE}                    | ▓▓\   /  ▓▓\▓▓▓▓▓▓ ▓▓\ | ▓▓ ▓▓  | ▓▓  ▓▓▓▓▓▓\                     ${RESET}"
echo -e "${WHITE}                    | ▓▓▓\ /  ▓▓▓ | ▓▓ | ▓▓▓\| ▓▓ ▓▓__| ▓▓ ▓▓__| ▓▓                     ${RESET}"
echo -e "${WHITE}                    | ▓▓▓▓\  ▓▓▓▓ | ▓▓ | ▓▓▓▓\ ▓▓ ▓▓    ▓▓ ▓▓    ▓▓                     ${RESET}"
echo -e "${WHITE}                    | ▓▓\▓▓ ▓▓ ▓▓ | ▓▓ | ▓▓\▓▓ ▓▓ ▓▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓▓                     ${RESET}"
echo -e "${WHITE}                    | ▓▓ \▓▓▓| ▓▓_| ▓▓_| ▓▓ \▓▓▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓                     ${RESET}"
echo -e "${WHITE}                    | ▓▓  \▓ | ▓▓   ▓▓ \ ▓▓  \▓▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓                     ${RESET}"
echo -e "${WHITE}                     \▓▓      \▓▓\▓▓▓▓▓▓\▓▓   \▓▓\▓▓   \▓▓\▓▓   \▓▓    __               ${RESET}"
echo -e "${WHITE}    ______  __    __ ________  ______  __       __  ______   ______   ______   ______   ${RESET}"
echo -e "${WHITE}  /      \|  \  |  \        \/      \|  \     /  \/      \ /      \ /      \ /      \   ${RESET}"
echo -e "${WHITE} |  ▓▓▓▓▓▓\ ▓▓  | ▓▓\▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓\ ▓▓\   /  ▓▓  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ${RESET}"
echo -e "${WHITE} | ▓▓__| ▓▓ ▓▓  | ▓▓  | ▓▓  | ▓▓  | ▓▓ ▓▓▓\ /  ▓▓▓ ▓▓__| ▓▓ ▓▓   \▓▓ ▓▓__| ▓▓ ▓▓  | ▓▓  ${RESET}"
echo -e "${WHITE} | ▓▓    ▓▓ ▓▓  | ▓▓  | ▓▓  | ▓▓  | ▓▓ ▓▓▓▓\  ▓▓▓▓ ▓▓    ▓▓ ▓▓     | ▓▓    ▓▓ ▓▓  | ▓▓  ${RESET}"
echo -e "${WHITE} | ▓▓▓▓▓▓▓▓ ▓▓  | ▓▓  | ▓▓  | ▓▓  | ▓▓ ▓▓\▓▓ ▓▓ ▓▓ ▓▓▓▓▓▓▓▓ ▓▓   __| ▓▓▓▓▓▓▓▓ ▓▓  | ▓▓  ${RESET}"
echo -e "${WHITE} | ▓▓  | ▓▓ ▓▓__/ ▓▓  | ▓▓  | ▓▓__/ ▓▓ ▓▓ \▓▓▓| ▓▓ ▓▓  | ▓▓ ▓▓__/  \ ▓▓  | ▓▓ ▓▓__/ ▓▓  ${RESET}"
echo -e "${WHITE} | ▓▓  | ▓▓\▓▓    ▓▓  | ▓▓   \▓▓    ▓▓ ▓▓  \▓ | ▓▓ ▓▓  | ▓▓\▓▓    ▓▓ ▓▓  | ▓▓\▓▓    ▓▓  ${RESET}"
echo -e "${WHITE}  \▓▓   \▓▓ \▓▓▓▓▓▓    \▓▓    \▓▓▓▓▓▓ \▓▓      \▓▓\▓▓   \▓▓ \▓▓▓▓▓▓ \▓▓   \▓▓ \▓▓▓▓▓▓   ${RESET}"
echo -e "${WHITE}        __       __ __ __ __                                  // ______  ______         ${RESET}"
echo -e "${WHITE}       |  \     /  \  \  \  \                                   |      \/      \        ${RESET}"
echo -e "${WHITE}       | ▓▓\   /  ▓▓\▓▓ ▓▓\▓▓ ______  _______   __/ /_   ______  \▓▓▓▓▓▓  ▓▓▓▓▓▓\       ${RESET}"
echo -e "${WHITE}       | ▓▓▓\ /  ▓▓▓  \ ▓▓  \/      \|       \ |      \ /      \  | ▓▓ | ▓▓__| ▓▓       ${RESET}"
echo -e "${WHITE}       | ▓▓▓▓\  ▓▓▓▓ ▓▓ ▓▓ ▓▓  ▓▓▓▓▓▓\ ▓▓▓▓▓▓▓\ \▓▓▓▓▓▓\  ▓▓▓▓▓▓\ | ▓▓ | ▓▓    ▓▓       ${RESET}"
echo -e "${WHITE}       | ▓▓\▓▓ ▓▓ ▓▓ ▓▓ ▓▓ ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓/      ▓▓ ▓▓   \▓▓ | ▓▓ | ▓▓▓▓▓▓▓▓       ${RESET}"
echo -e "${WHITE}       | ▓▓ \▓▓▓| ▓▓ ▓▓ ▓▓ ▓▓ ▓▓__/ ▓▓ ▓▓  | ▓▓  ▓▓▓▓▓▓▓ ▓▓      _| ▓▓_| ▓▓  | ▓▓       ${RESET}"
echo -e "${WHITE}       | ▓▓  \▓ | ▓▓ ▓▓ ▓▓ ▓▓\▓▓    ▓▓ ▓▓  | ▓▓\▓▓    ▓▓ ▓▓     |   ▓▓ \ ▓▓  | ▓▓       ${RESET}"
echo -e "${WHITE}        \▓▓      \▓▓\▓▓\▓▓\▓▓ \▓▓▓▓▓▓ \▓▓   \▓▓ \▓▓▓▓▓▓▓\▓▓      \▓▓▓▓▓▓\▓▓   \▓▓       ${RESET}"
echo -e "${WHITE}                                                                                        ${RESET}"
echo -e "${GREEN}                                .-----------------------.                               ${RESET}"
echo -e "${GREEN}                               |  INICIANDO ATUALIZAÇÃO  |                              ${RESET}"
echo -e "${GREEN}                                '-----------------------'                               ${RESET}"
echo -e "${YELLOW}                            Auto Instalador UPDATE/DifyAI V1                           ${RESET}"
echo -e "${YELLOW}                              https://automilionaria.trade                             ${RESET}"

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
echo -e "${GREEN}                                .-----------------------.                               ${RESET}"
echo -e "${GREEN}                               |  ATUALIZAÇÃO CONCLUÍDA  |                              ${RESET}"
echo -e "${GREEN}                               |       COM SUCESSO       |                              ${RESET}"
echo -e "${GREEN}                                '-----------------------'                               ${RESET}"
echo -e "${GREEN}                                         DifyAI V1                                      ${RESET}"
echo -e "${GREEN}                               https://automilionaria.trade                             ${RESET}"

  echo
echo "========================================"
echo -e "       ${GREEN}ACESSE ATRAVÉS DOS LINKS ABAIXO${RESET}"
echo -e "       ${INFO} - \e[33mSeus dados e fluxos foram mantidos, pois os volumes não foram removidos.\e[0m"
echo -e "       ${INFO} - Para ir para sua dashboard: \e[33mMétodo MAM: https://automilionaria.trade\e[0m"
echo "========================================"
echo
