#!/bin/bash

# Verificar se Ollama está instalado
if ! command -v ollama &> /dev/null; then
    echo "Ollama não encontrado. Instalando..."
    curl -fsSL https://ollama.com/install.sh | sh
else
    echo "Ollama já está instalado."
fi

# Verificar se o Claude Code está instalado
if ! command -v claude &> /dev/null; then
    echo "Claude Code não encontrado. Instalando via curl..."
    if command -v curl &> /dev/null; then
        curl -fsSL https://claude.ai/install.sh | bash
    else
        echo "ERRO: curl não encontrado. Por favor, instale curl para continuar."
        exit 1
    fi
else
    echo "Claude Code já está instalado."
fi

# Baixar o modelo qwen2.5-coder:32b se necessário
echo "Garantindo que o modelo qwen2.5-coder:32b esteja disponível no Ollama..."
ollama pull qwen2.5-coder:32b

# Configurar variáveis de ambiente para usar Ollama local
# Nota: Ollama normalmente usa http e a porta 11434, com sufixo /v1 para compatibilidade
export ANTHROPIC_AUTH_TOKEN=ollama
export ANTHROPIC_BASE_URL=http://localhost:11434/v1

echo "Iniciando Claude Code com o modelo qwen2.5-coder:32b..."
claude --model qwen2.5-coder:32b
echo "Configuração concluída. Claude Code está pronto para uso com o modelo qwen2.5-coder:32b via Ollama."
