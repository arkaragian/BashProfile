#!/bin/sh

#cp bash_profile $HOME/.bashrc
## In windows domain environments
cp bash_profile $HOMESHARE/.bashrc
rm -rf $HOMESHARE/bash_config
cp -r bash_config/ $HOMESHARE/bash_config
