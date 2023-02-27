#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install --lts
##sudo npm install -g pm2
pm2 stop example_app
cd ExampleApplication/
#npm install
pm2 start ./bin/www --name example_app