#!/usr/bin/env bash


mkdir -p "./docs/"
shopt -s extglob dotglob
mv !(docs) docs
shopt -u dotglob
git clone https://$GITHUB_USER_NAME:$GITHUB_ACCESS_TOKEN@github.com/auth0/auth0-docs.git auth0-docs-repo
shopt -s dotglob nullglob;
mv auth0-docs-repo/* .
#rmdir auth0-docs-repo
