#!/bin/sh

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
