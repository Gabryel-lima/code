# Claude Code com Ollama Local

Este projeto fornece um script de configuração automatizada para executar o [Claude Code (CLI da Anthropic)](https://github.com/anthropics/claude-code) utilizando o [Ollama](https://ollama.com/) local como back-end, especificamente com o modelo `qwen2.5-coder:32b`.

## Requisitos Prévios

- **Sistema Operacional:** Linux (ou WSL2 no Windows).
- **Claude Code (Versão Antiga):** É necessário fazer **downgrade** do Claude Code para versões anteriores (como 0.2.x), pois as versões recentes (2.1.x) bloqueiam o uso de endpoints locais e exigem login oficial com saldo na conta. Estou procurando a melhor forma automatizada de realizar esse downgrade.
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

> [!IMPORTANT]
> **Configuração Inicial:** Se você ficar preso na tela de seleção inicial do Claude Code (com 3 opções), selecione a **opção 2** (ou a que menciona 'Pay-as-you-go' / custo por uso da API). Isso liberará o acesso com sua conta. Como o modelo é definido automaticamente pelo script, ele será exibido como selecionado corretamente.

## Configurações de API

Para que o Claude Code funcione com o Ollama, o script define:
- `ANTHROPIC_AUTH_TOKEN=ollama`
- `ANTHROPIC_BASE_URL=http://localhost:11434/v1`
