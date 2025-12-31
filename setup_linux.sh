#!/usr/bin/env bash

echo "=== YTB Video Downloader - Setup Linux ==="

# 1. Entrar na pasta do projeto
# O "|| exit" garante que o script pare se a pasta não existir
cd code || {
    echo "Erro: pasta 'code' não encontrada. Execute este script dentro da pasta 'code'."
    exit 1
}

echo "[1/4] Instalando dependências do sistema (precisa de senha sudo)..."

sudo apt update
sudo apt install -y python3 python3-venv python3-tk aria2

echo "[2/4] Criando ambiente virtual..."
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
    echo " -> Ambiente virtual criado."
else
    echo "  -> Ambiente virtual já existe."
fi

echo "[3/4] Instalando bibliotecas Python..."
# Ativa o venv APENAS para o escopo deste script
source .venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

echo ""
echo "=== Setup concluído com sucesso! ==="
echo ""
echo "Para iniciar o programa manualmente, rode no terminal: "
echo "  1. cd code"
echo "  2. source .venv/bin/activate"
echo "  3. python main.py"
