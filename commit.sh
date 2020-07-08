#!/bin/bash

echo "Clean previous build in 'docs' folder"
rm -Rf docs/*

echo "Build new stack RTD site and move to 'docs' folder"
make html
mv _build/html/* docs/
touch docs/.nojekyll

echo "Commit and Push to Master Branch"
git add .
git commit -m "auto commit sh"
git push origin master
