#!/usr/bin/env bash

set -x

parcel build index.html --public-url /amigo-lists/ --no-cache
git add dist
git commit -m "Deploy - $(date)"
git subtree push --prefix dist origin gh-pages
