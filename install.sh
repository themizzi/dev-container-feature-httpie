#!/bin/bash
set -e

# The install.sh script is the installation entrypoint for any dev container 'features' in this repository. 
#
# The tooling will parse the devcontainer-features.json + user devcontainer, and write 
# any build-time arguments into a feature-set scoped "devcontainer-features.env"
# The author is free to source that file and use it however they would like.
set -a
. ./devcontainer-features.env
set +a

if [ ! -z ${_BUILD_ARG_HTTPIE} ]; then
    echo "Activating feature 'helloworld'"

    if [ ! -z ${_BUILD_ARG_HTTPIE_APT_UPDATE} ]; then
        apt update
    fi
    
    apt install python3 python3-pip
    pip3 install httpie
fi
