#!/bin/sh

#https://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

echo "Checking home location.."

if [ -z ${HOMESHARE+x} ]; then
    TARGET=$HOME
else
    echo "HOMESHARE was defined.."
    TARGET=$HOMESHARE
fi

read -p "Files will be deployed to the following location: \"$TARGET\". Do you wish to proceed? " yn

case $yn in
    [Yy]* ) echo "Installing..."; break;;
    [Nn]* ) echo "Exiting......"; exit;;
    * ) echo "Please answer yes or no.";;
esac



#cp bash_profile $HOME/.bashrc
## In windows domain environments
cp bash_profile $TARGET/.bash_profile
cp bash_local $TARGET/.bashrc_local

rm -rf $TARGET/bash_config
cp -r bash_config/ $TARGET/bash_config
