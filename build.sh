#!/bin/bash

# 运行结果前，执行运行的命令，有利于复杂脚本调试
# 脚本只要发生错误，就终止执行（包括管道命令）
set -euxo pipefail

source ~/.config/.zshrc
