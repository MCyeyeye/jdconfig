#!/bin/bash

bash /scripts/docker/env.sh
source /scripts/docker/cookie.sh

logPath="/scripts/logs"
scriptPath="/scripts"

# 经过修改的 get_share_code.js, 所有
collect_share_code_js="${scriptPath}/evan_get_share_code.js"

if [ ! -f "${file}" ]; then
   wget -P $scriptPath https://raw.githubusercontent.com/evan766/jdconfig/main/evan_get_share_code.js
fi

jsFuncArr=(
"getJDFruit"
"getJdPet"
"getPlantBean"
"getJxFactory"
"getJdFactory"
"getJxNc"
"getJdZZ"
"getJoy"
"getSgmh"
"getCFD"
"getJdCash"
)

logfiles=(
  "jd_fruit.log"
  "jd_pet.log"
  "jd_plantBean.log"
  "jd_dreamFactory.log"
  "jd_jdfactory.log"
  "jd_jxnc.log"
  "jd_jdzz.log"
  "jd_crazy_joy.log"
  "jd_sgmh.log"
  "jd_cfd.log"
  "jd_cash.log"
)

for file in "${logfiles[@]}"
do
    if [ ! -f "${file}" ]; then
       touch "$file"
    fi
done

funCount=0
for func in "${jsFuncArr[@]}"
do
  echo "正在收集 $func"
   export "COLLECT_SHARE_CODE_JS_FUNC=${func}" && node ${collect_share_code_js}  |ts >> ${logPath}/"${logfiles[${funCount}]}"  2>&1
   funCount=$funCount+1
done

# 从各个log收集互助码到 ${logPath}/sharecodeCollection.log
bash /scripts/docker/auto_help.sh collect
# export 互助码到环境变量
bash scripts/auto_help.sh export