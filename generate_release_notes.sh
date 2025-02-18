#!/bin/bash

# Define the last release tag
LAST_RELEASE_TAG=$(git describe --tags --abbrev=0)

# Get the current date
RELEASE_DATE=$(date +"%Y-%m-%d")

# Get the changes since the last release
CHANGES=$(git log --oneline $LAST_RELEASE_TAG..HEAD)

# Generate the release notes
echo "## Release v1.1.0 - $RELEASE_DATE" > release_notes.md
echo "### Changes since $LAST_RELEASE_TAG:" >> release_notes.md
echo "$CHANGES" >> release_notes.md

echo "Release notes generated in release_notes.md"