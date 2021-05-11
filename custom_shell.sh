#!/bin/sh

# install bash shell
# apk update
# apk upgrade
# apk add bash

export JD_COOKIE="pt_key=AAJgmck5ADAN4371Kx4QtuCBTgNfHt6joqUllfrtDn8rwFDkY88nhB1atNIHLWcH-1YlkSxV6Nc;pt_pin=782033078;&pt_key=AAJgmolXADDimtJbgimtDPmnTEfuuDe19kicaKgI3RD1KQLVHURWXA6sxWRjTLdj8ZSifADVuL0;pt_pin=jd_57ab27ad59c59;

rm -rf /scripts/download_file.sh
wget -P /scripts https://raw.githubusercontent.com/evan766/jdconfig/main/download_file.sh

if [ -f "/scripts/download_file.sh" ]; then
    /bin/bash /scripts/download_file.sh
fi


#download run all task shell
#wget -P /scripts https://raw.githubusercontent.com/evan766/jdconfig/main/runall.sh

#rm -rf /scripts/monk_pasture.js
#wget -P /scripts https://raw.githubusercontent.com/monk-coder/dust/dust/member/monk_pasture.js

#rm -rf  /scripts/z_shop_captain.js
#wget -P /scripts https://raw.githubusercontent.com/monk-coder/dust/dust/i-chenzhe/z_shop_captain.js

#rm -rf  /scripts/jd_super_redrain.js
#wget -P /scripts https://raw.githubusercontent.com/nianyuguai/longzhuzhu/main/qx/jd_super_redrain.js

#rm -rf  /scripts/jd_super_redrain.js
#wget -P /scripts https://raw.githubusercontent.com/nianyuguai/longzhuzhu/main/qx/jd_super_redrain.js

#wget -P /scripts https://raw.githubusercontent.com/monk-coder/dust/dust/normal/adolf_oppo.js

#wget -P /scripts https://raw.githubusercontent.com/monk-coder/dust/dust/car/adolf_haier.js
