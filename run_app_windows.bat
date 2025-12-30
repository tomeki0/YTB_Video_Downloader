@echo off
echo "Abrindo aplicação..."
cd code || exit /b 1
call .venv\Scripts\activate
python main.py
pause
