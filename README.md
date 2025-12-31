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

Este é um **fork otimizado para Linux** do *Kobeni YT Downloader*, com correções de estabilidade, compatibilidade para sistemas Linux (Pop!_OS / Ubuntu e derivados).

---

## ✨ Principais melhorias deste fork

✅ Correção de crash ao fechar a janela (Tkinter after() loop)  
✅ Correção de ordem de inicialização da GUI  
✅ Remoção da dependência Windows-only (aria2c.exe)  
✅ Uso do aria2 do sistema via PATH  
✅ Código compatível com Linux  
✅ Mensagens de erro mais claras e seguras  
✅ Correção para exibir o menu de configurações

---

## 🚀 Funcionalidades

- **Downloads de Alta Qualidade:** Vídeos de 144p até 1080p.
- **Áudio:** Extração em 48k e 128k.
- **Downloads Paralelos:** Uso do `aria2` para downloads multi-thread rápidos e estáveis.
- **Fila de Downloads:** Aceita múltiplos links simultâneos.
- **Organização:** Renomeia arquivos automaticamente e mantém histórico em JSON.
- **Interface Gráfica:** Baseada em CustomTkinter, moderna e responsiva.

## 🐧 Compatibilidade e Requisitos

Este fork foi desenvolvido com foco em sistemas **Linux** (baseados em Debian/Ubuntu).

* **Sistemas Testados:** Pop!_OS 22.04+ e Ubuntu 22.04+.
* **Compatibilidade Estendida:** Deve funcionar nativamente em Linux Mint, Debian e derivados.
* **Requisito Principal:** Python 3.10 ou superior.

## 📦 Instalação

### 🐧 Linux (Instalação Automática - Recomendado)

#### 1️⃣ Clonar o repositório

```bash
git clone https://github.com/tomeki0/YTB_Video_Downloader
cd YTB_Video_Downloader
```

#### 2️⃣ Executar o setup automático

```bash
chmod +x setup_linux.sh
./setup_linux.sh
```

**O script irá:**
- ✅ Verificar Python 3.10+
- ✅ Instalar dependências do sistema (se necessário)
- ✅ Criar o ambiente virtual (`.venv`)
- ✅ Instalar as dependências Python

---

### 🛠️ Linux (Instalação Manual)

Caso o script automático apresente problemas, siga os passos abaixo:

#### 1️⃣ Abra um terminal no diretório do projeto

Navegue até o diretório raiz do projeto.

```bash
cd YTB_Video_Downloader
```

---

#### 2️⃣ Entre na pasta `code`

```bash
cd code
```

---

#### 3️⃣ Atualize a lista de pacotes do sistema

```bash
sudo apt update
```

> 💡 Esse comando garante que os repositórios do sistema estejam atualizados.

---

#### 4️⃣ Instale as dependências do sistema

```bash
sudo apt install -y python3 python3-venv python3-tk aria2
```

**Esses pacotes são necessários para:**
- 🐍 Executar o projeto em Python 3
- 📦 Criar ambientes virtuais
- 🖼️ Utilizar a interface gráfica (Tkinter)
- ⬇️ Realizar downloads com aria2

---

#### 5️⃣ Crie o ambiente virtual Python

Ainda dentro da pasta `code`, execute:

```bash
python3 -m venv .venv
```

> ✨ Isso criará um ambiente virtual isolado chamado `.venv`.  
> ⚠️ Se o diretório `.venv` já existir, este passo pode ser ignorado.

---

#### 6️⃣ Ative o ambiente virtual

```bash
source .venv/bin/activate
```

> ✅ Após a ativação, o terminal passará a usar o Python e o pip do ambiente virtual.

---

#### 7️⃣ Atualize o `pip`

```bash
pip install --upgrade pip
```

> 🔄 Isso garante que o gerenciador de pacotes Python esteja atualizado.

---

#### 8️⃣ Instale as dependências do projeto

```bash
pip install -r requirements.txt
```

> 🎉 Todas as bibliotecas necessárias ao projeto serão instaladas dentro do ambiente virtual.

---

## ▶️ Executar o Aplicativo

### 🚀 Execução Automática (Recomendado)

Dentro do diretório raiz do projeto: `YTB_Video_Downloader`

```bash
chmod +x run_app_linux.sh
./run_app_linux.sh
```

> 💡 O script de execução cuida automaticamente da ativação do ambiente virtual.

---

### 🛠️ Execução Manual

Caso prefira iniciar o programa manualmente, siga os passos abaixo:

#### 1️⃣ Entre na pasta `code`

```bash
cd code
```

---

#### 2️⃣ Ative o ambiente virtual

```bash
source .venv/bin/activate
```

> ✅ Certifique-se de que o ambiente virtual está ativado antes de executar o programa.

---

#### 3️⃣ Execute o programa

```bash
python main.py
```

> 🎉 A interface gráfica do aplicativo será iniciada!

---

## 🔍 Verificação do aria2

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

> ⚠️ Se o comando não for encontrado, verifique se o `aria2c` foi adicionado corretamente ao PATH.

---

## ⚙️ Tecnologias utilizadas

- Python 3.10+
- Requests – comunicação HTTP
- CustomTkinter – interface gráfica multiplataforma
- aria2c – gerenciador de downloads (paralelo e estável)
- Bibliotecas padrão do Python

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
