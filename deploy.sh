#!usr/bin/env sh

set -e
npm run build
cd dist
echo > .nojekyll
git init
git chechout -B main
git add -A
git commit -m 'deploy'
cd -