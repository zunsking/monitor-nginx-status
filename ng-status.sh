#! /bin/bash
####################################################
#Author:https://github.com/zunsking
#如果提示：bash: netstat: command not found，先安装net-tools工具包
#apt-get install net-tools
#通过监控80端口是否被监听判断nginx状态，如果未监听则重启nginx
#循环执行，每10秒一次
#后台运行该脚本
#nohup bash ng-status.sh &> /dev/null &
#调出该脚本ID
#jobs
#取消该脚本
#fg ID
#Ctrl + c
####################################################
while true; do
netstat -nlp |grep :80
if [ $? -ne 0 ];then
echo "start nginx..."
service nginx restart
else
echo "nginx is runing..."
fi
sleep 10
done
