#!/usr/bin/env bash

# set -x

grep -n "__block," /usr/include/unistd.h &>/dev/null
if [ $? -eq 0 ]; then
    echo "applying workaround for buggy unistd.h"
    ../tools/fix_unistd_issue.sh
fi

mkdir -p m4
aclocal
autoconf

which glibtoolize &>/dev/null

if [ $? -eq 0 ]; then
    glibtoolize -c -i
else
    libtoolize -c -i
fi

automake -a -c

