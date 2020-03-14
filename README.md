# dotfiles

## Installation

```sh
git clone https://github.com/ddyjis/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/.zshrc.zsh ~/.zshrc.zsh
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/.yabairc.zsh ~/.yabairc.zsh
ln -s ~/.dotfiles/.skhdrc.zsh ~/.skhdrc.zsh
```

## Oh-my-zsh

Starting from macOS Catalina, Mac now uses Zsh as the default shell. Oh-my-zsh is a framework for
managing zsh configuration.

[Repo](https://github.com/ohmyzsh/ohmyzsh)

## Powerlevel10k

Powerlevel10k is a theme for Zsh. It is fast and easy to configure.

[Repo](https://github.com/romkatv/powerlevel10k)

## Yabai

Yabai is a tiling window management for macOS. The installation is a bit troublesome as it requires
disabling System Integrity Protection in recovery mode. However, it worths the time setting it up
because it really enhances the efficiency of my work. If there is a way doing it with one single
command, why go for the old way with many mouse clicks or key presses?

Note: Yabai basically cannot live without skhd

[Repo](https://github.com/koekeishiya/yabai)

## skhd

skhd is a hotkey daemon for macOS. My settings allows most of the hotkeys can be pressed with left
hand alone. It would be even more easier to trigger the hotkeys if `Caps Lock` is set to `Control`.

[Repo](https://github.com/koekeishiya/skhd)
