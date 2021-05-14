#!/bin/bash

# bash env.sh 执行本脚本后，生成一个cookie.sh 导入cookie环境变量的脚本 /scripts/docker/cookie.sh
# source /scripts/docker/cookie.sh 导入cookie

# 在 auto_help.sh 前面插入以下命令
# bash /scripts/docker/env.sh
# source /scripts/docker/cookie.sh

cookieArr=(
"pt_key=AAJgnBGZADAqFPu0LHCoMQVwk3A3T_LnYkGfg039LlomRgFkVNLErkLHx3ZtL-dd_vKgM8XH4tA;pt_pin=jd_57438217ea797;"
'pt_key=AAJgmr3sADAWu5zCuGY_MtCnyEYwLa34uPsdixEXgwg05B7LLf70sjFo6NUagGYE6P8qSPftAlg;pt_pin=wdNeBcDEbdsgVRp;'
'pt_key=AAJgnYKMADCa3wG_p72ROEEPcvAUc9lgf6R6yO7dN-vj2W2lvED0E66ovQY87zxs04EfRX8ORdI;pt_pin=jd_5303d63f2787f;'
'pt_key=AAJgjCO5ADCAnodKBFe5cQrzZ336OaUbk2dJ2IVwD_Kbiwftsx6ZIwOToTe9E0FBORI3qq2DK7Q;pt_pin=jd_48afebfcad2f5;'
'pt_key=AAJgkNxKADA8OR7b7eq4L7G0pDv23jnQVyNYUSc1-yaO5aFYQ2nQUDZCZAVlB0fYv_rbGBopmII;pt_pin=jd_522e5be56c1e1;'
'pt_key=AAJgmck5ADAN4371Kx4QtuCBTgNfHt6joqUllfrtDn8rwFDkY88nhB1atNIHLWcH-1YlkSxV6Nc;pt_pin=782033078;'
'pt_key=AAJgmolXADDimtJbgimtDPmnTEfuuDe19kicaKgI3RD1KQLVHURWXA6sxWRjTLdj8ZSifADVuL0;pt_pin=jd_57ab27ad59c59;'
'pt_pin=jd_5ec249b81ca55;pt_key=AAJgld6gADCikwd_W004rGjY6AHSgW0QJOaGH2GmD9e892IlUpx1hYRlZGO5mpmcZ0hd5nCIAXU;'
'pt_pin=%E5%8F%AF%E5%96%8F%E5%84%BF;pt_key=AAJgiM57ADAf7PAzGRRzK92jFZG-JwyOCCKjoL3qTBasRZCcELitRw3-sbq4F7iRWV6wYyLqasE;'
'pt_pin=jd_iaofSEReGwMu;pt_key=AAJglJ36ADCk7AfHOrjQ2G8xJ267o1kqqpJPBc5hJ5ineT-f3KtdtC5nN-x5xafpNq-XjznAofE;'
'pt_key=AAJgniEWADBXfPV47Y7BsLNzPSsXIQ7Ud6wMDquFVmOLoNZRK6xDRwdOkaMJPvdr53F3g2N6aJM;pt_pin=jd_PkxAyJJKfkAi;'
'pt_key=AAJgm1LyADDwbvddrbROG_zMZVLhYHfEumoSaU9VQ0AFNdwUb2T_PNgeAPqQ4S9kJm9IqibeMJc;pt_pin=593852250_m;'
'pt_key=AAJgnKnWADAKx3MgQYSO06lDfoK4_NiYUnLVz_4aPGY_NHZ6WY5z2r9bg9ucFUNScro8wUr7vN0;pt_pin=%E9%80%89%E4%BB%80%E4%B9%88%E9%A2%9C%E8%89%B2;'
'pt_key=AAJgnKlfADBUmO3pmuU_Vu2Kzzcz3vLE1HoQ5YRDEQNuZEy73e5XWWMtpie14CUr_PMLsz-baZc;pt_pin=jd_7a6c0e854544c;'
'pt_key=AAJgm1RaADA8bGb6ztNzfdqzxfAYLvcu0c5KfAhyKP-KQxTxdH7sdJ--Om_8EJFqlJOYZP04PUs;pt_pin=%E5%A5%BD%E5%90%8D%E8%AE%A9%E7%8C%AA%E5%8F%96;'
'pt_key=AAJgjXISADBtV8pKirEy8BUsjRPrRcoo61i4MWt1EbU7fXN3qIrbeOw--XS0yhmS2mYi8ALcH_U;pt_pin=jd_kPoGVfFTiBZL;'
)

cookieStr=""
for cookie in "${cookieArr[@]}" ; do
    cookieStr="${cookieStr}&${cookie}"
done


CookieFile='/scripts/docker/cookie.sh'
cat > ${CookieFile} <<- EOF
#!/bin/bash

export JD_COOKIE="${cookieStr:1}"
EOF

# shellcheck disable=SC1090
source "${CookieFile}"