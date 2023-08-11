#!/bin/bash

function usage {
    cat << EOF
update.sh
Usage: update.sh REF
Arguments:
    REF         Git reference (commit hash, branch, tag, "HEAD")
EOF

    exit 1
}

ref=$1

if [[ -z "$ref" ]]; then
    usage
fi

echo "Entering runner-images"
cd runner-images

echo "Updating runner-images"
git checkout main
git fetch --all
git pull
git checkout $ref

echo "Entering root directory"
cd ..

echo "Copying runner-images/images/linux to images/linux"
cp -R runner-images/images/linux/ images/linux/

echo "Copying runner-images/helpers/ to helpers/"
cp -R runner-images/helpers/ helpers/
