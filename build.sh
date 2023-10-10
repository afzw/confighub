#!/bin/bash

# 运行结果前，执行运行的命令，有利于复杂脚本调试
# 脚本只要发生错误，就终止执行（包括管道命令）
set -euxo pipefail

# 拉取子模块
git submodule update --init

# 设置软链接（某软连接设置失败，继续执行）
set +e
rm -rf ~/.zshrc ~/.tmux.conf ~/.emacs.d ~/.doom.d ~/.asdf
ln -s $(pwd)/zsh/zshrc ~/.zshrc
ln -s $(pwd)/tmux/tmux.conf ~/.tmux.conf
ln -s $(pwd)/emacs ~/.emacs.d
ln -s $(pwd)/doom ~/.doom.d
ln -s $(pwd)/asdf ~/.asdf
set -e

# 使zsh配置生效
source ~/.zshrc
