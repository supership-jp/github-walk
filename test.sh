#!/bin/bash

echo "\$ghcred=$ghcred"
echo "\$ghorg=$ghorg"

set -x
set -e
test "$ghcred" != "" -a "$ghorg" != "" 

for target in teams teammembers repos allmembers ; do
  echo "--$target--"
  ./github-walk -c "$ghcred" -o "$ghorg" -t "$target"
  echo ""
done

