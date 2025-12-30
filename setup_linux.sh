#!/usr/bin/env bash

set -e

echo "=== YTB Video Downloader - Setup Linux ==="

# 🔹 ENTRAR NA PASTA DO PROJETO
cd code || exit 1

 ---------- 1. Verificar Python ----------
if ! command -v python3 >/dev/null 2>&1; then
    echo "✗ Python3 não encontrado."
    echo "Instale com:"
    echo "  sudo apt install python3"
    exit 1
fi

PY_VERSION=$(python3 - <<EOF
import sys
print(f"{sys.version_info.major}.{sys.version_info.minor}")
EOF
)

REQUIRED_VERSION="3.10"

if [[ "$(printf '%s\n' "$REQUIRED_VERSION" "$PY_VERSION" | sort -V | head -n1)" != "$REQUIRED_VERSION" ]]; then
    echo "✗ Python $REQUIRED_VERSION+ é necessário (encontrado: $PY_VERSION)"
    exit 1
fi

echo "✓ Python $PY_VERSION encontrado"

# ---------- 2. python3-venv ----------
if ! python3 -m venv --help >/dev/null 2>&1; then
    echo "Instalando python3-venv..."
    sudo apt update
    sudo apt install -y python3-venv
else
    echo "✓ python3-venv disponível"
fi

# ---------- 3. Tkinter ----------
python3 - <<EOF
try:
    import tkinter
except ImportError:
    raise SystemExit(1)
EOF

if [ $? -ne 0 ]; then
    echo "Instalando python3-tk..."
    sudo apt install -y python3-tk
else
    echo "✓ Tkinter disponível"
fi

# ---------- 4. aria2 ----------
if ! command -v aria2c >/dev/null 2>&1; then
    echo "Instalando aria2..."
    sudo apt install -y aria2
else
    echo "✓ aria2 encontrado"
fi

# ---------- 5. Criar ambiente virtual ----------
if [ ! -d ".venv" ]; then
    echo "Criando ambiente virtual (.venv)..."
    python3 -m venv .venv
else
    echo "✓ Ambiente virtual já existe"
fi

# ---------- 6. Ativar venv ----------
source .venv/bin/activate

# ---------- 7. Atualizar pip ----------
pip install --upgrade pip

# ---------- 8. Instalar dependências Python ----------
if [ -f "requirements.txt" ]; then
    echo "Instalando dependências do requirements.txt..."
    pip install -r requirements.txt
else
    echo "✗ requirements.txt não encontrado!"
    exit 1
fi

echo ""
echo "=== Setup concluído com sucesso ==="
echo ""


