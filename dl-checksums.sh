#!/usr/bin/env sh
set -e
DIR=~/Downloads

MIRROR=https://github.com/CrunchyData/postgres-operator/releases/download

dl()
{
    local ver=$1
    local os=$2
    local dotexe=${3:-}
    # https://github.com/CrunchyData/postgres-operator/releases/download/v4.5.4/pgo
    local url=$MIRROR/v$ver/pgo${dotexe}
    local lfile=$DIR/pgo${dotexe}-${ver}
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $os $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux
    dl $ver mac -mac
    dl $ver windows .exe
}

dl_ver ${1:-4.7.10}
