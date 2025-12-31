@echo off

echo ==========================================
echo  YT Video Downloader - Setup Windows
echo ==========================================
echo.


REM 1. Entrar na pasta do projeto
echo [1/4] Entrando na pasta do projeto...
cd code
if errorlevel 1 (
    echo Erro: pasta "code" nao encontrada.
    pause
    exit /b 1
)

echo [2/4] Verificando Python...
python --version
if errorlevel 1 (
    echo Erro: Python nao encontrado no PATH.
    echo Instale Python 3.10+ e marque "Add Python to PATH".
    pause
    exit /b 1
)

echo [3/4] Criando ambiente virtual...
if not exist .venv (
    python -m venv .venv
    echo  -> Ambiente virtual criado.
) else (
    echo  -> Ambiente virtual ja existe.
)

echo [4/4] Configurando ambiente e instalando dependencias...

REM ---- aria2c no PATH do venv ----
set "ARIA2_PATH=%CD%\auxiliaries\aria2c"

echo Adicionando aria2c ao activate.bat do venv...

findstr /C:"aria2c" .venv\Scripts\activate.bat >nul
if errorlevel 1 (
    echo set "PATH=%ARIA2_PATH%;%%PATH%%" >> .venv\Scripts\activate.bat
)

REM Ativa venv apenas para instalar dependencias
call .venv\Scripts\activate.bat

python -m pip install --upgrade pip
python -m pip install -r requirements.txt

echo.
echo ==========================================
echo  Setup concluido com sucesso
echo ==========================================
echo.

echo Proximos passos (manual):
echo Dentro do diretorio do projeto, abra o terminal e execute:
echo.
echo   cd code
echo   .venv\Scripts\activate
echo   where aria2c
echo   python main.py
echo.
pause


