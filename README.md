# Instalação das dependências

## Terminator

### Tema

* [Guvbox](https://github.com/egel/terminator-gruvbox)

### Fonte

```sh
FuraCode Nerd Font Retina 13
```

## Neovim

### Instalação do gerenciador de pacotes Paq

```sh
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim
```

* Git do gerenciador de pacotes [Paq](https://github.com/savq/paq-nvim)

### Instalação dos plugins do Neovim

```sh
:PaqInstall
```

### Instalação das dependências do LSP

```sh
npm install -g bash-language-server
npm install -g vscode-langservers-extracted
npm install -g typescript typescript-language-server
npm install -g ansible-language-server
pip3 install ansible-lint
pip3 install pyright
```

## ZSH

### Instalação do oh-my-zsh e plugins
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
* [Dependências fzf](https://github.com/junegunn/fzf#using-git)

### Plugin do Poetry

```sh
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
```

## Tmux

### Instalação do gerenciador de pacotes TPM

```sh
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

* Git do gerenciador de pacotes [TPM](https://github.com/tmux-plugins/tpm)
