#!/bin/bash

hub="swr.cn-north-1.myhuaweicloud.com"
repo="$hub/chenby"

if [ -f images.yaml ]; then
   echo "[Start] sync......."
   
   sudo skopeo login --tls-verify=false -u ${HUB_USERNAME} -p ${HUB_PASSWORD} ${hub} \
   && sudo skopeo --tls-verify=false --insecure-policy sync --src yaml --dest docker images.yaml $repo
   
   echo "[End] done."
   
else
    echo "[Error]not found images.yaml!"
fi
