# Zsh CPF/CNPJ Plugin

Este é um plugin personalizado para Zsh que gera CPFs e CNPJs válidos e os copia para a área de transferência.

## Instalação

Clone este repositório para o diretório de plugins do Zsh:

```bash
git clone https://github.com/brunoqs/zsh-cpf-cnpj.git ~/.oh-my-zsh/custom/plugins/zsh-cpf-cnpj
```

Atualize seu arquivo .zshrc para carregar o plugin:

```bash
plugins=(
    # outros plugins...
    zsh-cpf-cnpj
)
```

Reinicie o terminal ou recarregue o Zsh:

```bash
source ~/.zshrc
```

# Uso

Você pode usar os seguintes comandos para gerar CPFs e CNPJs válidos e copiá-los para a área de transferência:

```bash
cpf    # Gera um CPF válido e copia para o clipboard
cnpj   # Gera um CNPJ válido e copia para o clipboard
```
