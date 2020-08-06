#!/bin/bash

__dirname="${0%/*}"

access_token=${1:-$PERSONAL_ACCESS_TOKEN}
repos="${__dirname}/repos"
labels="${__dirname}/labels.yml"

if [ -z "${access_token}" ]; then
  echo "personal access token is required"
  exit 1
fi

while IFS= read -r repo; do
  github-label-sync --labels ${labels} --access-token ${access_token} ${repo}
done < "${repos}"
