#!/bin/bash

hub="swr.cn-north-1.myhuaweicloud.com"

if [ -f config.yaml ]; then

    for images in $(cat config.yaml); do
        echo "[Start] sync  ${images} ......."

        sudo skopeo login --tls-verify=false -u ${HUB_USERNAME} -p ${HUB_PASSWORD} ${hub} \
        && sudo skopeo sync --src-tls-verify=false --dest-tls-verify=false --insecure-policy --src docker --dest docker ${images} ${hub}/chenby/

        echo "[End] ${images} done."
    done

else
    echo "[Error]not found config.yaml!"
fi

