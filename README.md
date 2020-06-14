# monitor-nginx-status
通过监控80端口是否被监听判断nginx状态，如果未监听则重启nginx

如果提示：<code>bash: netstat: command not found</code>，先安装net-tools工具包
<pre>apt-get install net-tools</pre>
通过监控80端口是否被监听判断nginx状态，如果未监听则重启nginx
循环执行，每10秒一次
后台运行该脚本
<pre>nohup bash ng-status.sh &> /dev/null &</pre>
调出该脚本ID
<pre>jobs</pre>
取消该脚本
<pre>fg ID</pre>
Ctrl + c
