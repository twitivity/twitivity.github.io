#!/bin/bash

COLOR="\e[42m"
END="\e[0m"

echo -e "$COLOR git rm -r docs --force $END"
git rm -r docs --force
echo -e "$COLOR git commit -m 'removed old docs' $END"
git commit -m "Removed Old Docs"
echo -e "$COLOR git push -u origin master $END"
git push -u origin master

echo -e "$COLOR mkdocs build $END"
mkdocs build
echo -e "$COLOR touch docs/CNAME $END"
touch docs/CNAME
echo "$COLOR add CNAME $END"
echo "repo.twitivity.dev" >> docs/CNAME
echo -e "$COLOR git add docs $END"
git add docs
echo -e "$COLOR git commit -m 'updated docs' $END"
git commit -m "docs updated"
echo -e "$COLOR git push -u origin master $END"
git push -u origin master
echo -e "$COLOR DONE. $END"