#!/bin/bash

# 脚本保存的路径 默认是 /scripts
save_path="/scripts"

if [ "" != "$1" ]; then
    save_path=$1
fi

scripts=(
"https://raw.githubusercontent.com/evan766/jdconfig/main/runall.sh"
"https://raw.githubusercontent.com/evan766/jdconfig/main/evan_get_share_code.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/car/monk_shop_add_to_car.js"
# 蒙牛牧场
"https://raw.githubusercontent.com/monk-coder/dust/dust/member/monk_pasture.js"

#超级无线组队分奖品 25 3 * * 2
"https://raw.githubusercontent.com/monk-coder/dust/dust/i-chenzhe/z_shop_captain.js"

# 整点红包雨
"https://raw.githubusercontent.com/nianyuguai/longzhuzhu/main/qx/jd_super_redrain.js"

# OPPO
"https://raw.githubusercontent.com/monk-coder/dust/dust/normal/adolf_oppo.js"

# 半点京豆雨
"https://raw.githubusercontent.com/nianyuguai/longzhuzhu/main/qx/jd_half_redrain.js"
"https//raw.githubusercontent.com/monk-coder/dust/dust/i-chenzhe/z_fanslove.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/i-chenzhe/z_mother_jump.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/i-chenzhe/z_wish.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/i-chenzhe/z_xmf.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/car/adolf_haier.js"
# 申请试用
"https://raw.githubusercontent.com/ZCY01/daily_scripts/main/jd/jd_try.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/normal/monk_shop_follow_sku.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/normal/monk_shop_lottery.js"
"https://jdsharedresourcescdn.azureedge.net/jdresource/jd_tcl.js"
"https://jdsharedresourcescdn.azureedge.net/jdresource/jd_xgyl.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/member/adolf_oneplus.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/member/adolf_flp.js"
"https://raw.githubusercontent.com/monk-coder/dust/dust/normal/adolf_martin.js"
)

# 定义一个函数用于下载js脚本
downloadFile(){
    script_url=$1
    script_save_path=$2

    script_name=${script_url##*/}

    script_path="${script_save_path}/${script_name}"

    echo "正在下载: ${script_name}"

    script_tmp_name="${script_name}.tmp"
    
    tmp_script="${script_save_path}/${script_tmp_name}"

    wget -O "${tmp_script}" "${script_url}"

    echo "下载的临时文件 ${tmp_script}"

    # 下载成功
    if [ -f "${tmp_script}" ]; then
        mv "$tmp_script" "$script_path"
        echo "下载成功: ${script_name}"
    fi
}

# 遍历脚本数组，逐个下载
# shellcheck disable=SC2068
for url in ${scripts[@]}
do
    downloadFile "$url" "$save_path"
done

# 更新下载脚本
downloadShellUrl="https://raw.githubusercontent.com/evan766/jdconfig/main/download_file.sh"
downloadFile $downloadShellUrl "/scripts/docker"
downloadFile https://raw.githubusercontent.com/evan766/jdconfig/main/collect_share_code.sh "/scripts/docker"
