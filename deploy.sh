#!/bin/sh
USER=philbywh
HOST=philbywhizz.com
PORT=2683
DIR=www.whizz80.com/   # the directory where your web site files should go

hugo && rsync -avz --delete -e "ssh -p${PORT}" public/ ${USER}@${HOST}:~/${DIR}

exit 0

