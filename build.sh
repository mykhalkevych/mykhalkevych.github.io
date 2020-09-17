#!/usr/bin/env bash
echo "Fetching last changes"
# git fetch
# echo "Switch to a branch develop and pull last changes"
# git checkout develop
# git pull origin develop
echo "Run build"
npm run build
echo "Copy js file into dir build/main"
cp dist/portfolio/* build/
cd build/
git add .
git commit -m "deploy"
git push origin master
