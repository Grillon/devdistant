#/usr/bin/env sh
mkdir ~/npm-global
npm config set prefix '~/npm-global'
echo "export PATH=~/npm-global/bin:$PATH">>.profile
source ~/.profile
npm install -g jshint
