# 直接定位到第100行
less -N -m +100g xx.log
# 定位到最后一行
less -N -m +GG xx.log
# 直接定位到50%的位置
less -N -m +50p xx.log

# look for port by PID
netstat -antup | grep PID
# for windows
netstat -aon | findstr "8080"

-a (all)显示所有选项，默认不显示LISTEN相关
-t (tcp)仅显示tcp相关选项
-u (udp)仅显示udp相关选项
-n 拒绝显示别名，能显示数字的全部转化成数字。
-l 仅列出有在 Listen (监听) 的服務状态

-p 显示建立相关链接的程序名
-r 显示路由信息，路由表
-e 显示扩展信息，例如uid等
-s 按各个协议进行统计
-c 每隔一个固定时间，执行该netstat命令