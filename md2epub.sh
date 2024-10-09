#!/bin/bash
# Remove filename extension
OUT="${1%.*}"

# Read title and author
read -p "TITLE: " -r TITLE
read -p "AUTHOR: " -r AUTH

echo CONVERTING TO EPUB...

METADATA="---\ntitle: $TITLE\nauthor: $AUTH\n..."

# Save metadata to file
echo -e $METADATA > $OUT-title.yaml

# Convert html to epub
pandoc -t epub3 -o $OUT.epub --metadata-file $OUT-title.yaml $1

# Cleanup
rm $OUT-title.yaml

# Print output file name
echo "EPUB FILE SAVED AS \"$OUT.epub\""
