#!/bin/bash
set -e
export DISPLAY=:99.0
sh -e /etc/init.d/xvfb start || true

npm run clean
npm run build
npm test
npm run test:coverage
export PATH="$HOME/miniconda/bin:$PATH"
npm run build:example
#npm run docs
