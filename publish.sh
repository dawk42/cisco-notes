#!/usr/bin/env bash
file=$1
comment=$2
git add $file
git commit -m "$comment"
git push 
