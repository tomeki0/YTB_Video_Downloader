@echo off
setlocal

echo ==========================================
echo  YT Video Downloader - Setup Windows
echo ==========================================
echo.

REM ---------- 1. Verificar Python ----------
python --version >nul 2>&1
if errorlevel 1 (
    echo ✗ Python nao encontrado.
    echo Instale Python 3.10+ em:
    echo https://www.python.org/downloads/windows/
    echo.
    pause
    exit /b 1
)

REM ---------- 2. Verificar versao do Python ----------
python - <<EOF >nul 2>&1
import sys
exit(0 if sys.version_info >= (3,10) else 1)
EOF

if errorlevel 1 (
    echo ✗ Python 3.10 ou superior e necessario.
    echo.
    pause
    exit /b 1
)

echo ✓ Python encontrado

REM ---------- 3. Criar ambiente virtual ----------
if not exist ".venv" (
    echo Criando ambiente virtual (.venv)...
    python -m venv .venv
) else (
    echo ✓ Ambiente virtual ja existe
)

REM ---------- 4. Ativar venv ----------
call .venv\Scripts\activate.bat

REM ---------- 5. Atualizar pip ----------
python -m pip install --upgrade pip

REM ---------- 6. Instalar dependencias Python ----------
if exist requirements.txt (
    echo Instalando dependencias do requirements.txt...
    pip install -r requirements.txt
) else (
    echo ✗ requirements.txt nao encontrado!
    pause
    exit /b 1
)

REM ---------- 7. Verificar aria2 ----------
where aria2c >nul 2>&1
if errorlevel 1 (
    echo.
    echo ✗ aria2c nao encontrado no PATH
    echo.
    echo Baixe o aria2 em:
    echo https://aria2.github.io/
    echo.
    echo Depois, adicione a pasta do aria2c.exe ao PATH do Windows.
    echo.
) else (
    echo ✓ aria2c encontrado
)

echo.
echo ==========================================
echo  Setup concluido com sucesso
echo ==========================================
echo.

