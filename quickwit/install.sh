#!/bin/bash

RELEASE_VERSION=v0.8.2

wget -N "https://github.com/quickwit-oss/quickwit/releases/download/${RELEASE_VERSION}/quickwit-${RELEASE_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
tar xzf quickwit-${RELEASE_VERSION}-x86_64-unknown-linux-gnu.tar.gz
mv quickwit-${RELEASE_VERSION}/quickwit ./
rm -rf quickwit-${RELEASE_VERSION} 
