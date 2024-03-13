#!/bin/bash

printf 'share: [\n'

for file in include/*.h src/*.[ch]; do
  f="${file//\//\\\\}"
  printf '  "%s" {"%s"}\n' "$f" "$f"
done

printf ']\n'
