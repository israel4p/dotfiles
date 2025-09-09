# Instalação das dependências

## Alacritty

### Fonte

```sh
FiraCode Nerd Font Retina
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

### Dependências do LSP

```sh
npm install -g neovim
npm install -g pyright
npm install -g bash-language-server
apt install python3-autopep8
```

## ZSH

### Instalação do oh-my-zsh e plugins
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
* [Dependências fzf](https://github.com/junegunn/fzf#using-git)

### Plugin autocomplete uv

```sh
git clone https://github.com/lipov3cz3k/zsh-uv.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-uv
```

* [zsh-uv](https://github.com/lipov3cz3k/zsh-uv)

## Tmux

### Instalação do gerenciador de pacotes TPM

```sh
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

* Git do gerenciador de pacotes [TPM](https://github.com/tmux-plugins/tpm)
