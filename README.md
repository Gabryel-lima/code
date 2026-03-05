# Claude Code com Ollama Local

Este projeto fornece um script de configuração automatizada para executar o [Claude Code (CLI da Anthropic)](https://github.com/anthropics/claude-code) utilizando o [Ollama](https://ollama.com/) local como back-end, especificamente com o modelo `qwen2.5-coder:32b`.

## Requisitos Prévios

- **Sistema Operacional:** Linux (ou WSL2 no Windows).
- **curl:** Necessário para a instalação do Claude Code.
- **curl:** Para a instalação automatizada do Ollama.

## Como Usar

1. Dê permissão de execução ao script:
   ```bash
   chmod +x setup.sh
   ```

2. Execute o script:
   ```bash
   ./setup.sh
   ```

O script irá:
- Verificar e instalar o **Ollama** se necessário.
- Verificar e instalar o **Claude Code** via npm.
- Baixar o modelo **qwen2.5-coder:32b**.
- Configurar as variáveis de ambiente `ANTHROPIC_AUTH_TOKEN` e `ANTHROPIC_BASE_URL`.
- Iniciar o Claude Code apontando para o seu Ollama local.

## Configurações de API

Para que o Claude Code funcione com o Ollama, o script define:
- `ANTHROPIC_AUTH_TOKEN=ollama`
- `ANTHROPIC_BASE_URL=http://localhost:11434/v1`
