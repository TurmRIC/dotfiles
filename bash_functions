#!/bin/bash
#vim:filetype=sh

cvsclean() {
    find . -type l -exec rm {} \;
    for x in $(cvs -q status |grep '^? ' | sed -e 's/^? //') ; do chmod 777 -R $x ; rm -rf $x ; done
}

rr() {
    ssh $1 reboot
}

cvsout() {
    TAG=""
    if [ ! -z "${1}" ] ; then TAG="-r${1}" ; fi
    cvs -d cvs:/files/cvs/4D_Tintagel co ${TAG} 10_Processor_Module/14_Overlay/
}

rmrepo() {
    chmod -R +w ${1}
    rm -rf ${1}
}

cvsvimdiff() {
    cleandir=`pwd | sed 's/BUG_[0-9]*/clean/'`
    (cd ${cleandir} ; cvs up >/dev/null 2>&1)
    cleanfile="${cleandir}/${1}"
    vimdiff ${1} ${cleanfile}
}

release_to_msm() {
    ssh msm mkdir /tftpboot/tintagel/REL_4D_${1}
    scp REL_4D_${1}* msm:/tftpboot/tintagel/REL_4D_${1}/
}

set_config_file() {
    export CONFIG_FILE=`pwd`/$1
}

vman() {
    nvim -c "Man $1 $2" -c 'silent only'
}

upload_config() {
    scp ${2} msm:/tftpboot/tintagel/${1}.tlv
}
