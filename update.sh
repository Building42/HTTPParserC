#!/bin/bash

#
# This script will download the latest version of LLHTTP and integrate
# it into the project. You will still have to perform a few manual
# steps like updating the version number to complete the integration.
#

set -eu

# Determine the project folder
PROJECT_FOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCES_FOLDER="$PROJECT_FOLDER/Sources"

# Create a temporary folder
TEMP_CODE_FOLDER=$(mktemp -d /tmp/LLHTTP.XXXXXX)
cd "$TEMP_CODE_FOLDER"

# Clone and build the project
git clone https://github.com/nodejs/llhttp.git
cd llhttp
npm ci
make

# Generate the release files
VERSION=$(cat package.json | grep \"version\" | cut -d'"' -f 4)
RELEASE="$VERSION" make release

# Copy the build files
cp $TEMP_CODE_FOLDER/llhttp/release/include/*.h "$SOURCES_FOLDER"
cp $TEMP_CODE_FOLDER/llhttp/release/src/*.c "$SOURCES_FOLDER"

# Rename HTTP definitions to prevent a name clash when using CocoaPods
# NOTE: be careful of any incorrect string replacements (requires manual checks)
find "$SOURCES_FOLDER" -type f -exec gsed -i -e '/^\s*XX/!s/\bHTTP_/LLHTTP_/g' {} \;
