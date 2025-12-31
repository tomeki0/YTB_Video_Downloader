<p align="center">
<img src="assets/app_icon.ico" alt="YTB Video Downloader Icon" width="120">
</p>

<h1 align="center">YT Video Downloader – Linux Fork 🐧</h1>

<p align="center">
<em>Ferramenta de automação para download de vídeos e músicas do YouTube.</em><br>
</p>

<p align="center">
<img src="https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white" alt="Python 3.10+">
<img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
<img src="https://img.shields.io/badge/Status-Stable-success?style=for-the-badge" alt="Status">
<img src="https://img.shields.io/badge/Linux-Supported-important?style=for-the-badge&logo=linux">
</p>

---

## 📖 Sobre este fork

Este é um fork Linux-friendly do Kobeni YT Downloader, com correções de estabilidade, compatibilidade e boas práticas para sistemas Linux (Pop!_OS / Ubuntu e derivados).

O objetivo do fork é fazer o projeto rodar corretamente no Linux, sem gambiarras Windows-only e sem erros de GUI.

---

## ✨ Principais melhorias deste fork

✅ Correção de crash ao fechar a janela (Tkinter after() loop)  
✅ Correção de ordem de inicialização da GUI  
✅ Remoção da dependência Windows-only (aria2c.exe)  
✅ Uso do aria2 do sistema via PATH  
✅ Código compatível com Linux e preparado para cross-platform  
✅ Mensagens de erro mais claras e seguras
✅ Correção para exibir o menu de configurações

---

## 🚀 O que o programa faz

Principais funcionalidades:

- Gera links diretos de download a partir de vídeos do YouTube
- Suporte a múltiplas qualidades:
  - Vídeo: 144p até 1080p
  - Áudio: 48k e 128k
- Downloads paralelos 
- Aceita múltiplos links em fila
- Renomeia arquivos automaticamente após o download
- Interface gráfica simples e estável

---

## ⚙️ Tecnologias utilizadas

- Python 3.10+
- Requests – comunicação HTTP
- CustomTkinter – interface gráfica multiplataforma
- aria2c – gerenciador de downloads (paralelo e estável)
- Bibliotecas padrão do Python

---

## 🐧 Compatibilidade

**Testado em:**
- Pop!_OS 22.04+
- Ubuntu 22.04+
- Windows 11

**Deve funcionar em:**
- Linux Mint
- Debian-based distros

---

## 🔧 Requisitos

### Sistema
- Linux ou Windows
- Python 3.10 ou superior

> ⚠️ **Importante:** Este fork não utiliza `aria2c.exe`. O aria2 deve estar instalado no sistema e disponível no PATH.

---

## Instalação

### 🐧 Linux (recomendado)

#### 1. Clonar o repositório

```bash
git clone https://github.com/tomeki0/YTB_Video_Downloader
cd YTB_Video_Downloader
```

#### 2. Executar o setup automático

```bash
chmod +x setup_linux.sh
./setup_linux.sh
```

O script irá:
- Verificar Python 3.10+
- Instalar dependências do sistema (se necessário)
- Criar o ambiente virtual (`.venv`)
- Instalar as dependências Python

---

### 🪟 Windows

#### 1. Clonar o repositório

```Powershell/CMD
git clone https://github.com/tomeki0/YTB_Video_Downloader
cd YTB_Video_Downloader
```

#### 2. Executar o setup automático

```bat
setup_windows.bat
```

> ⚠️ No Windows, o `aria2c` precisa estar no PATH.  
> **Download:** https://aria2.github.io/

---

## Executar o Aplicativo

Dentro do diretorio raiz do projeto: YTB_Video_Downloader

### Linux

```bash
chmod +x run_app_linux.sh
./run_app_linux.sh
```

### Windows

```bat
./run_app_windows.bat
Ou executar arquivo .bat
```

> Os scripts de execução cuidam automaticamente da ativação do ambiente virtual.

---

## Verificação do aria2

### Linux

```bash
which aria2c
aria2c --version
```

**Saída esperada:**

```
/usr/bin/aria2c
aria2 version 1.36.0
```

### Windows

```bat
where aria2c
aria2c --version
```

> Se o comando não for encontrado, verifique se o `aria2c` foi adicionado corretamente ao PATH.

---

## 🧠 O que foi modificado tecnicamente

- Controle explícito de ciclo de vida da GUI (`_running`, `_refresh_job`)
- Cancelamento correto de callbacks Tkinter (`after_cancel`)
- Implementação do método `on_close`
- Substituição de caminhos fixos por `shutil.which("aria2c")`
- Tratamento seguro de `None` para dependências externas
- Remoção de referências a `.exe` no código

---

## ⚠️ Aviso Legal

Este software pode violar os Termos de Serviço do YouTube.

O desenvolvedor original e o mantenedor deste fork não se responsabilizam pelo uso indevido.

**Use por sua conta e risco.**

---

## 📜 Créditos

- **Projeto original:** YuReN31_
- **Fork e correções Linux:** Tomeki0

---

## 🛠️ Status do Fork

- ✅ Funcional no PopOs / Ubuntu
- ✅ GUI estável
- ✅ Downloads operacionais

---

## 📄 Licença

MIT License

---

<p align="center">
Feito com ❤️ para a comunidade Linux
</p>
