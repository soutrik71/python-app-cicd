#!/bin/sh
comment=$1
branch=$2
echo "Hello USER- ready for git push"
git status
git add . -v
git commit -m "${comment}"
git push -u origin $branch
echo "Complete git push"