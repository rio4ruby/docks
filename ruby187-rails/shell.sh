#!/bin/bash

app_path="$1"

#if [ -z ${app_path+x} ]; then
#   echo "z flag"
#fi

if [ -n "$app_path" ]; then
    echo "$app_path"
else
    echo "path to app is missing"
    exit
fi

docker run -it --mount type=bind,src=${app_path},dst=/srv/app ruby187/rails bash
