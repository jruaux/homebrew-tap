#!/bin/sh -ex

release() {
  CLASS=$1
  MODULE=$2
  VERSION=$3
  echo "$MODULE $VERSION"
  URL="https://github.com/redis-developer/riot/releases/download/v${VERSION}/riot-${MODULE}-${VERSION}.zip"

  echo "$URL"
  SHA256_STRING=$(wget -O - "$URL" | shasum -a 256)
  read -ra SHA256_ARRAY <<< "$SHA256_STRING"
  SHA256="${SHA256_ARRAY[0]}"
  echo "$SHA256"

  sed -e "s/\${CLASS}/$CLASS/g" -e "s/\${MODULE}/$MODULE/g" -e "s/\${VERSION}/$VERSION/g" -e "s/\${SHA256}/$SHA256/g" riot-module.rb.template > "riot-${MODULE}.rb"
  git add "riot-${MODULE}.rb"
}

release Db db $1
release File file $1
release Gen gen $1
release Redis redis $1
release Stream stream $1
git commit -m "Released version $1"
git push