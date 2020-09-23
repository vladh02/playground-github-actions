#!/bin/bash

set -e

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

main() {
    exec bash
    nvm install 12.18.4
    nvm use 12.18.4
}

main
