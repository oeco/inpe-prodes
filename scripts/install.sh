#!/bin/bash

# create a symlink in TileMill folder, if don't exists 
if [ ! -h ~/Documents/MapBox/project/inpe-prodes ]; then
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  ln -s $DIR ~/Documents/MapBox/project/inpe-prodes
fi

# download data file
wget -c -P tmp https://dl.dropboxusercontent.com/u/3291375/ecolab/prodes.sqlite.zip

# expand it
unzip tmp/prodes.sqlite.zip -d data