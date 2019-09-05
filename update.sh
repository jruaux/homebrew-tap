#!/bin/sh -ex

TAG_NAME=$(okurl https://api.github.com/repos/Redislabs-Solution-Architects/riot/releases/latest | jq -r ".tag_name")
echo "$TAG_NAME"
URL="https://github.com/Redislabs-Solution-Architects/riot/releases/download/${TAG_NAME}/riot-${TAG_NAME}.tgz"

echo "$URL"
SHA256_STRING=$(wget -O - "$URL" | shasum -a 256)
read -ra SHA256_ARRAY <<< "$SHA256_STRING"
SHA256="${SHA256_ARRAY[0]}"
echo "$SHA256"

sed -e "s/\${VERSION}/$TAG_NAME/" -e "s/\${SHA256}/$SHA256/" riot.rb.template > riot.rb

git add riot.rb
git commit -m "Updated to release $TAG_NAME"
git push