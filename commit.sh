#!/bin/bash

rm -Rf docs/*
make html
mv _build/html/* docs/
touch docs/.nojekyll

git add .
git commit -m "auto commit sh"
git push origin master
