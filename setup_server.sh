#!/bin/bash

set -e

main() {
    nvm install 12.18.4
    nvm use 12.18.4
}

NVM_DIR="$HOME/mynvm"
rm -rf "$NVM_DIR"
git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
pushd  "$NVM_DIR"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`

popd
chmod +x "$NVM_DIR/nvm.sh"
. "$NVM_DIR/nvm.sh" --no-use


main

npm install

npm start:pm2

echo "SETUP_NODE_NVM_NVM: $NVM_DIR/nvm.sh"
echo "SETUP_NODE_NVM_NODE: $(which node)"
echo "SETUP_NODE_NVM_NPM: $(which npm)"
