.DEFAULT_GOAL := deps

GHOSTTY_SYSTEM := $(shell uname -s)

.PHONY: fonts \
	deps

ifeq ($(GHOSTTY_SYSTEM),Darwin)
fonts:
	brew install --cask font-jetbrains-mono-nerd-font font-lxgw-wenkai \
		font-noto-sans-mono-cjk-sc font-noto-sans-symbols-2

deps: fonts
	brew install --cask ghostty
else ifeq ($(GHOSTTY_SYSTEM),Linux)
GHOSTTY_DISTRO := $(shell if test -r /etc/os-release; then . /etc/os-release; printf '%s' "$$ID"; fi)
ifneq ($(GHOSTTY_DISTRO),arch)
$(error Unsupported Linux distribution: $(GHOSTTY_DISTRO); expected Arch Linux)
endif

fonts:
	sudo pacman -S --needed ttf-jetbrains-mono-nerd noto-fonts-cjk noto-fonts
	yay -S --needed ttf-lxgw-wenkai

deps: fonts
	sudo pacman -S --needed ghostty
else
$(error Unsupported system: $(GHOSTTY_SYSTEM); expected macOS or Arch Linux)
endif
