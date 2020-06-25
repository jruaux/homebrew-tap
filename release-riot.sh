#!/bin/sh -ex

CLASS=$1
MODULE=$2
VERSION=$3
echo "$MODULE $VERSION"
URL="https://github.com/Redislabs-Solution-Architects/riot/releases/download/v${VERSION}/riot-${MODULE}-${VERSION}.tgz"

echo "$URL"
SHA256_STRING=$(wget -O - "$URL" | shasum -a 256)
read -ra SHA256_ARRAY <<< "$SHA256_STRING"
SHA256="${SHA256_ARRAY[0]}"
echo "$SHA256"

sed -e "s/\${CLASS}/$CLASS/g" -e "s/\${MODULE}/$MODULE/g" -e "s/\${VERSION}/$VERSION/g" -e "s/\${SHA256}/$SHA256/g" riot-module.rb.template > "riot-${MODULE}.rb"

git add "riot-${MODULE}.rb"
git commit -m "Updated riot-$MODULE to release $VERSION"
git push