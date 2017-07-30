# JLUEE #
此脚本是SBP的备份，融合我的一些些的小小的脚本。

## 介绍 ##
一个Shell脚本，集成SSR多用户管理，流量限制，加密更改等基本操作，方便一键生成用户信息。

## 更新日志 ##
- 2017-7-25 正式版本
- 2017-7-30 修改服务器定时重启
## 系统支持 ##
* Ubuntu 14
* Ubuntu 16

## 功能 ##
- 一键开启、关闭SSR服务
- 添加、删除、修改用户端口和密码
- 自由限制用户端口流量使用
- 自动修改防火墙规则
- 自助修改SSR加密方式、协议、混淆等参数
- 自动统计，方便查询每个用户端口的流量使用情况
- 一键生成多个用户端口信息
- 设置服务器定时重启，释放内存，cpu


## 安装 ##
    wget -N --no-check-certificate https://raw.githubusercontent.com/labrador0115/jluee/master/install.sh && bash install.sh

## 卸载 ##
    wget -N --no-check-certificate https://raw.githubusercontent.com/labrador0115/jluee/master/uninstall.sh && bash uninstall.sh
    
## 自检 ##
    wget -N --no-check-certificate https://raw.githubusercontent.com/labrador0115/jluee/master/self-check.sh && bash self-check.sh

## 参考资料 ##
[ShadowsocksR](https://github.com/FunctionClub/shadowsocksr)

[ShadowsocksR-manyuser mudbjson](https://github.com/breakwa11/shadowsocks-rss/wiki/Server-Setup(manyuser-with-mudbjson))

[SSR-Bash](https://github.com/FunctionClub/SSR-Bash)
