#!/bin/sh

# 运行结果前，执行运行的命令，有利于复杂脚本调试
# 脚本只要发生错误，就终止执行（包括管道命令）
set -euxo pipefail

message=$1 # First parameter will be the commit message
currentBranch=$(git symbolic-ref --short -q HEAD) # Getting the current branch

git stash
git pull origin $currentBranch --rebase
git stash pop
git add .

if [ ! -z "$1" ] # checking if the commit message is present. If not then aborting.
then
  git commit -m "$message"
else
  git commit -m "uncommented commit"
fi

git push origin $currentBranch
