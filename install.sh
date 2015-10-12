#!/usr/bin/env bash

if [ $# = 1 ]
then
    install_dir=${1}
else
    if [ -e "install.sh" -a -e "README.md" ]
    then
        install_dir=`pwd`
    else
        echo "Must set an install dir"
    fi
fi

install_files() {
    local src_dir=${1}
    local dest_dir=${2}
    local dest_prefix=${3}
    for file in `ls ${src_dir}`
    do
        if [ -f ${src_dir}/${file} ]
        then
            echo "rm ${dest_dir}/${dest_prefix}${file} 2>/dev/null"
            echo "ln -s ${src_dir}/${file} ${dest_dir}/${dest_prefix}${file}"
        elif [ -d ${src_dir}/${file} ]
        then
            echo "mkdir ~/${file}"
            install_files "${src_dir}/${file}/" "${dest_dir}/${dest_prefix}${file}/"
        fi
    done
}

install_files "${install_dir}" "~" "."
