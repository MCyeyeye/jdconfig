#/bin/sh

#delete old run all task shell
rm -rf /scripts/runall.sh

#download run all task shell
wget -P /scripts https://raw.githubusercontent.com/evan766/jdconfig/main/runall.sh

rm -rf /scripts/monk_pasture.js
wget -P /scripts https://raw.githubusercontent.com/evan766/jdconfig/main/monk_pasture.js
