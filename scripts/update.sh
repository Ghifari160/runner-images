#!/bin/bash

temp=$(mktemp -d)

git clone https://github.com/actions/runner-images $temp
mkdir -p images/linux
cp -R $temp/images/linux/ images/linux/
rm -rf $temp
