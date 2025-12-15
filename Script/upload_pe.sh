#!/bin/sh
function uploadPE() {
    DIR=$1
    SERVER=$2
    sftp -P 10022 $SERVER <<EOF
lcd $DIR
cd /C:/$DIR
mput *
quit
EOF
}

# uploadPE style81_new pubuser@ralfss29.labs.lenovo.com
# uploadPE style81 pubuser@ralfss29.labs.lenovo.com
# uploadPE style81_new pubuser@id-pdfbuild.labs.lenovo.com
uploadPE style81 pubuser@id-pdfbuild.labs.lenovo.com
