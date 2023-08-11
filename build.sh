#!/bin/bash

# 运行结果前，执行运行的命令，有利于复杂脚本调试
# 脚本只要发生错误，就终止执行（包括管道命令）
set -euxo pipefail

# 设置软链接
ln -s ~/.config/zsh/.zshrc ~/.zshrc
ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf

# 使zsh配置生效
source ~/.zshrc

