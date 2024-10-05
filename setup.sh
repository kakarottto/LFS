#!/bin/bash
echo "Dist:${DIST:?}"
echo "LFS: ${LFS}"

ls -ls $LFS/

mkdir -v $LFS/sources

sudo wget --input-file=build_env_list --continue --directory-prefix=$LFS/sources

mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac

mkdir -pv $LFS/tools

#the LFS guide wants me to add group, but i wont 
