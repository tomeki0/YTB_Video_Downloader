<p align="center">
  <img src="assets/app_icon.ico" alt="YTB Video Downloader Icon" width="120">
</p>

<h1 align="center">YTB Video Downloader</h1>

<p align="center">
  <em>Projeto educacional e experimental, com foco em aprendizado e uso pessoal.</em><br>
  Ferramenta de automação para download de vídeos e músicas do YouTube.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white" alt="Python 3.10+">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/Status-Stable-success?style=for-the-badge" alt="Status">
  <img src="https://img.shields.io/badge/Linux-Supported-important?style=for-the-badge&logo=linux">
  <img src="https://img.shields.io/badge/Windows-Supported-informational?style=for-the-badge&logo=windows">
</p>

---

## ⚙️ Tecnologias utilizadas

- Python 3.10+
- Requests – comunicação HTTP
- CustomTkinter – interface gráfica multiplataforma
- aria2c – gerenciador de downloads (paralelo e estável)
- Bibliotecas padrão do Python

> ⚠️ Este projeto NÃO utiliza Selenium.  
> Todo o processo funciona via requests e chamadas diretas ao aria2.

---

## 🚀 O que o programa faz

Principais funcionalidades:

- Gera links diretos de download a partir de vídeos do YouTube
- Suporte a múltiplas qualidades:
  - Vídeo: 144p até 1080p
  - Áudio: 48k e 128k
- Downloads paralelos usando aria2
- Aceita múltiplos links em fila
- Renomeia arquivos automaticamente após o download
- Armazena informações localmente em JSON
- Interface gráfica simples e estável

---

## 🖥️ Sistemas suportados

- Linux (Pop!_OS, Ubuntu e derivados Debian)
- Windows

Este fork removeu dependências exclusivas do Windows e utiliza o aria2 instalado no sistema.

---

## 📦 Instalação e uso

### Linux

```bash
chmod +x setup_linux.sh
./setup_linux.sh
./run_linux.sh
