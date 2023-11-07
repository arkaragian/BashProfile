#!/bin/bash

# Specify the GitHub user and repository
#
function extract_zip {
    FILE=$1
    DESTINATION=$2

    #if directory exist
    if test -d $DESTINATION; then
        rm -rf $DESTINATION
    fi

    mkdir -p $DESTINATION

    unzip $FILE -d $DESTINATION
}

function get_gh_url {
    USER=$1
    REPO=$2
    ASSET_NAME_PATTERN=$3

    # Use GitHub API to get the latest release data
    API_URL="https://api.github.com/repos/$USER/$REPO/releases/latest"

    # Use curl to fetch the JSON response for the latest release
    echo "Querying $API_URL"
    RESPONSE=$(curl -s $API_URL)
    #echo $RESPONSE

    # grep all the browser download url. Then grep again the win-x64 one.
    #DOWNLOAD_URL_LINE=$(echo "$RESPONSE" | grep '"browser_download_url":' | grep 'omnisharp-win-x64-net6.0')
    DOWNLOAD_URL_LINE=$(echo "$RESPONSE" | grep '"browser_download_url":' | grep $ASSET_NAME_PATTERN)

    #echo $RESPONSE

    # use awk with : as a file seperator. However http address also contains a :
    # character thus we print the two fields as one to reconstruct the url

    DOWNLOAD_URL=$(echo "$DOWNLOAD_URL_LINE" | awk -F ":" '{print $2":"$3}' )

    #Remove leading " trailing " and any spaces. This is done by matching the first "
    #Then the last one. and removing the white space (the \s character) indiscriminately
    #this is made
    DOWNLOAD_URL=$(echo "$DOWNLOAD_URL" | sed -e 's/"//' -e 's/"$//' -e 's/\s//g')
}

# Download the latest release
# get_gh_url "OmniSharp" "omnisharp-roslyn" "omnisharp-win-x64-net6.0"
# echo "Downloading latest release from $DOWNLOAD_URL"
# curl -L -o omnisharp_release.zip "$DOWNLOAD_URL"
# extract_zip omnisharp_release.zip $USERPROFILE/bin/omnisharp

# The lua ls is something like: lua-language-server-3.7.1-win32-x64.zip just
# match the last part.
get_gh_url "LuaLS" "lua-language-server" "win32-x64.zip"
echo "Downloading latest release from $DOWNLOAD_URL"
curl -L -o luals.zip "$DOWNLOAD_URL"
extract_zip luals.zip $USERPROFILE/bin/lua-language-server

get_gh_url "Samsung" "netcoredbg" "netcoredbg-win64.zip"
echo "Downloading latest release from $DOWNLOAD_URL"
curl -L -o netcoredbg.zip "$DOWNLOAD_URL"
extract_zip netcoredbg.zip $USERPROFILE/bin/lua-language-server
