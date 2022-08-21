#!/usr/bin/env bash

version=$(curl -sX GET https://api.github.com/repos/leventdev/Dropspace/commits/main | jq --raw-output '. | .sha')
version="${version#*v}"
version="${version#*release-}"
printf "%s" "${version}"

