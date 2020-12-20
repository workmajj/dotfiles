#!/usr/bin/env bash
set -euo pipefail

hash rsync 2>&- || { echo "requires rsync - aborting"; exit 1; }

VERSION=$(rsync --version | head -n 1 | perl -ne '$_ =~ m/version ([0-9])\./; print "$1\n";')

if [ ! "$VERSION" -ge 3 ]; then
  echo "requires rsync version 3 or later - aborting"
  exit 1
fi

SRC="$HOME/" # trailing slash so rsync doesn't create as subdir

if [ ! -r "$SRC" ]; then
  echo "cannot read from source $SRC - aborting"
  exit 1
fi

DISK="/Volumes/Backup"

if [ ! -d "$DISK" ]; then
  echo "cannot access disk at $DISK - aborting"
  exit 1
fi

NAME=$(echo "$HOME" | rev | cut -d'/' -f1 | rev) # /foo/bar/baz/name => name
DATE=$(date '+%Y-%m-%d')
DEST="$DISK/$NAME-$DATE/" # .../name-YYYY-MM-DD/

if [ -d "$DEST" ]; then
  echo "destination $DEST already exists - aborting"
  exit 1
fi

mkdir "$DEST"

if [ ! -w "$DEST" ]; then
  echo "cannot write to destination $DEST - aborting"
  exit 1
fi

# rsync --dry-run \
rsync \
  --archive \
  --human-readable \
  --prune-empty-dirs \
  --stats \
  --progress \
  --exclude ".DS_Store" \
  --exclude ".localized" \
  --include "/.ssh" \
  --exclude "/.*" \
  --exclude "/Applications" \
  --exclude "/Library" \
  --exclude "/Public" \
  "$SRC" "$DEST"
