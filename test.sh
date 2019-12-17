#!/bin/bash

echo "\$ghcred=$ghcred"
echo "\$ghorg=$ghorg"

set -x
set -e
test "$ghcred" != "" -a "$ghorg" != "" 

for target in teams repos allmembers ; do
  ./github-walk -c "$ghcred" -o "$ghorg" -t "$target"
done

