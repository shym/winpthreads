#!/bin/sh

echo 'share: ['

for file in $(ls include/*.h src/*.h src/*.c | sort | sed -e 's|/|\\\\|g'); do
  echo "  \"$file\" {\"$file\"}"
done

echo ']'
