#!/bin/bash

access_token=${1:-$PERSONAL_ACCESS_TOKEN}
repos="./repos"

if [ -z "$access_token" ]; then
  echo "personal access token is required"
  exit 1
fi

while IFS= read -r repo; do
  npx github-label-sync --allow-added-labels --labels labels.yml --access-token $access_token $repo 
done < "$repos"