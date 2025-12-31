#!/usr/bin/env bash

echo "=== YTB Video Downloader - Setup Linux ==="

# 1. Entrar na pasta do projeto
cd code || {
    echo "Erro: pasta 'code' não encontrada."
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
    echo " -> Ambiente virtual já existe."
fi

echo "[3/4] Instalando bibliotecas Python..."

# Ativa o venv APENAS para este script
source .venv/bin/activate

# Usa explicitamente python3 para evitar qualquer ambiguidade
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

echo
echo "=== Setup concluído com sucesso! ==="
echo
echo "Próximos passos (manual):"
echo "Dentro do diretório do projeto, execute:"
echo
echo "  cd code"
echo "  source .venv/bin/activate"
echo "  python3 main.py"
