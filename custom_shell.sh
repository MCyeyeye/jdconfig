#!/bin/sh

# install bash shell
# apk update
# apk upgrade
# apk add bash

# 不存在下载文件shell，到远程仓库下载该脚本
if [ ! -f "/scripts/docker/download_file.sh" ]; then
    wget -P /scripts/docker https://raw.githubusercontent.com/evan766/jdconfig/main/download_file.sh
fi

if [ -f "/scripts/docker/download_file.sh" ]; then
    /bin/bash /scripts/docker/download_file.sh
fi