#!/bin/bash
for f in *; do
	bash ../../../internal/tooling/StandardizeAudio.sh "$f"
done
