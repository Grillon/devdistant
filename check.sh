#!/usr/bin/env sh
if [ $# -ne 1 ];then
echo "
Ce programme permet de se connecter a une image etape

utilisation : $0 id_image
"
exit 1
fi
docker run -t -i $1 /bin/bash
