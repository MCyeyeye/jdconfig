#!/bin/sh

# 脚本保存的路径 默认是 /scripts
script_save_path="/scripts"

#远程脚本url数组
scripts[0]="https://raw.githubusercontent.com/monk-coder/dust/dust/car/adolf_haier.js"
scripts[1]="https://raw.githubusercontent.com/monk-coder/dust/dust/car/monk_shop_add_to_car.js"

# 定义一个函数用于下载js脚本
downloadFile(){
    
    script_url=$1

    script_name=${script_url##*/}

    script_path="${script_save_path}/${script_name}"

    echo "正在下载: ${script_name}"

    script_tmp_name="${script_name}.tmp"

    wget ${script_url} -P $script_save_path -O $script_tmp_name
    
    tmp_script="${script_save_path}/${script_tmp_name}"

    echo "下载的临时文件 ${tmp_script}"

    # 下载成功
    if [ -f $tmp_script ]; then
        mv $tmp_script $script_path
        echo "下载成功: ${script_name}"
    fi
}

# 遍历脚本数组，逐个下载
for url in ${scripts[@]}
do
    downloadFile $url
done
