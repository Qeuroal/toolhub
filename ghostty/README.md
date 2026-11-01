# Ghostty

配置文件为 `config`，本机的 `~/.config/ghostty` 软链接指向本目录。

## 依赖安装

安装 Ghostty 和当前配置所用的全部字体：

```sh
cd "$HOME/projects/toolhub/ghostty"
make deps
```

`make deps` 先执行 `fonts`，再安装 `ghostty`；直接运行 `make` 也会执行 `deps`。只安装字体可运行：

```sh
make fonts
```

Makefile 自动识别系统：

- macOS：使用 `brew install --cask`，需要已安装 Homebrew。
- Arch Linux：读取 `/etc/os-release`，官方仓库包使用 `sudo pacman -S --needed`；霞鹜文楷来自 AUR，使用 `yay -S --needed`，需要已有 `yay`。
- 其他系统：报错退出。

| 配置中的字体 | Arch Linux 包 | macOS Cask | 用途 |
| --- | --- | --- | --- |
| `JetBrainsMonoNL Nerd Font` | `ttf-jetbrains-mono-nerd` | [font-jetbrains-mono-nerd-font](https://formulae.brew.sh/cask/font-jetbrains-mono-nerd-font) | 主字体、Nerd Font 图标和窗口标题字体 |
| `LXGW WenKai Mono` | [ttf-lxgw-wenkai](https://aur.archlinux.org/packages/ttf-lxgw-wenkai)（AUR） | [font-lxgw-wenkai](https://formulae.brew.sh/cask/font-lxgw-wenkai) | 中文等宽回退字体 |
| `Noto Sans Mono CJK SC` | `noto-fonts-cjk` | [font-noto-sans-mono-cjk-sc](https://formulae.brew.sh/cask/font-noto-sans-mono-cjk-sc) | 中文回退字体 |
| `Noto Sans Symbols 2` | [noto-fonts](https://archlinux.org/packages/extra/any/noto-fonts/files/) | [font-noto-sans-symbols-2](https://formulae.brew.sh/cask/font-noto-sans-symbols-2) | `U+2700–U+27BF` 符号映射 |

Ghostty 在 Arch Linux 使用 `ghostty` 包，在 macOS 使用 [ghostty Cask](https://formulae.brew.sh/cask/ghostty)。系统库、shell integration 和 terminfo 等由对应软件包提供或自动作为依赖安装，不单独列出。

`make deps` 和 `make fonts` 不修改当前配置或创建软链接；安装字体后重新打开 Ghostty。
