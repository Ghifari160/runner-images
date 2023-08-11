#!/bin/bash

function applyPatch {
    patch_file=$1

    echo "Applying $patch_file"
    git apply "$patch_file"
}

for file in patches/*
do
    applyPatch "$file"
done
