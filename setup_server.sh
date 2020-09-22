#!/bin/bash

set -e

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

nvm install 12.18.4

nvm use 12.18.4