#!/bin/bash

# bash /scripts/docker/env.sh 执行本脚本后，生成一个cookie.sh 导入cookie环境变量的脚本 /scripts/docker/cookie.sh
# source /scripts/docker/cookie.sh 导入cookie

# 在 auto_help.sh 前面插入以下命令
# bash /scripts/docker/env.sh
# source /scripts/docker/cookie.sh

cookieArr=(
"pin=fxxxx:pt=xxx;"
)

# cookie 数组拼接为一个字符串
cookieStr=""
for cookie in "${cookieArr[@]}" ; do
    cookieStr="${cookieStr}&${cookie}"
done

# 当前时间 0-23小时
current_hour=`date +"%H"`

#试用申请最低价格
JD_TRY_MIN_PRICE=100

if [ "$current_hour" -ge 12 ]
then
    JD_TRY_MIN_PRICE=80
elif [ "$current_hour" -ge 16 ]
then
    JD_TRY_MIN_PRICE=50
elif [ "$current_hour" -ge 20 ]
then
    JD_TRY_MIN_PRICE=30
fi

# cookie字符串写入另外一个脚本
CookieFile='/scripts/docker/cookie.sh'

if [ ! -f $CookieFile ]; then
  touch $CookieFile
fi

cat > ${CookieFile} <<- EOF
#!/bin/bash

export JD_COOKIE="${cookieStr:1}"
export IGOT_PUSH_KEY="60a40a4c1ea12833f30aefde"
export JD_TRY_MIN_PRICE="${JD_TRY_MIN_PRICE}"
export JD_TRY_GOOD_FILTERS="情趣@电话卡@手机卡@牙刷头@文具@一柒@手机卡@贴膜@手机壳@保护膜@教程@英语@镜片@奶粉@水晶头@手机壳@电话卡@尿@汽车@win@上网卡@情趣@购房@定制@伤疤@钢化膜@保护膜@手机膜@吊坠@手机壳@保护套@汽车@刷头@流量卡@辅导@培训@机油@眼镜@打印@装饰@摆设@游戏@液压@油画"
export JD_TRY_WANT_KEY_WORDS="显示器@显示屏@风扇@落地扇@路由器@笔记本电脑@无线鼠标@蓝牙音箱@机械键盘@U盘@固态硬盘@密码锁@指纹锁@台式电脑@内存条@电动牙刷@打印器@平板电脑@摄像头@硬盘@充电器@扩展坞@小米11@荣耀30Pro@蓝牙耳机@PD快充@快充PD@小风扇@挂脖风扇@小风扇@电饭锅@电磁炉@微波炉@烤箱@空调@洗衣机@空气净化器@冰箱@洗衣机@电视@智慧屏@手机@扫地机器人"

EOF

# shellcheck disable=SC1090
source "${CookieFile}"
