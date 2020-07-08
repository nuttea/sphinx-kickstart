#!/bin/bash

echo "\n\nClean previous build in 'docs' folder\n"
rm -Rf docs/*

echo "\n\nBuild new stack RTD site and move to 'docs' folder\n"
make html
mv _build/html/* docs/
touch docs/.nojekyll

echo "\n\nCommit and Push to Master Branch\n"
git add .
git commit -m "auto commit sh"
git push origin master
