#!/bin/sh -ex

VERSION=$1
echo "$VERSION"
URL="https://github.com/Redislabs-Solution-Architects/riot/releases/download/v${VERSION}/riot-${VERSION}.tgz"

echo "$URL"
SHA256_STRING=$(wget -O - "$URL" | shasum -a 256)
read -ra SHA256_ARRAY <<< "$SHA256_STRING"
SHA256="${SHA256_ARRAY[0]}"
echo "$SHA256"

sed -e "s/\${VERSION}/$VERSION/" -e "s/\${SHA256}/$SHA256/" riot.rb.template > riot.rb

git add riot.rb
git commit -m "Updated to release $VERSION"
git push