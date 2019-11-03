#!/bin/sh
USER=philbywh
HOST=philbywhizz.com
DIR=www.whizz80.com/   # the directory where your web site files should go

hugo && rsync -avz --delete -e "ssh -p2683" public/ ${USER}@${HOST}:~/${DIR}

exit 0

