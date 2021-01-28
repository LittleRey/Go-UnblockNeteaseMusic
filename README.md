# heroku-UnblockNeteaseMusic
## 利用caddy进行反代

一键部署在Heroku上：[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

# 特性

### 具体参数说明

```shell
./UnblockNeteaseMusic -h

  -b	force the best music quality
  -c string
    	specify server cert,such as : "server.crt" (default "./server.crt")
  -e	replace song url
  -k string
    	specify server cert key ,such as : "server.key" (default "./server.key")
  -l string
    	specify log file ,such as : "/var/log/unblockNeteaseMusic.log"
  -m int
    	specify running mode（1:hosts） ,such as : "1" (default 1)
  -o string
    	specify server source,such as : "kuwo" (default "kuwo")
  -p int
    	specify server port,such as : "80" (default 80)
  -sl int
    	specify the number of songs searched on other platforms(the range is 0 to 3) ,such as : "1"
  -sp int
    	specify server tls port,such as : "443" (default 443)
  -v	display version info

```

# 重要提示

### IOS信任证书步骤

1. 安装证书--设置-描述文件-安装
2. 通用-关于本机-证书信任设置-启动完全信任

### 已知

1. 
2.
# 感谢

[Golang版本](https://github.com/cnsilvan/UnblockNeteaseMusic)以及为它贡献的所有coder

# 声明
该项目只能用作学习，请自行开通会员以支持平台购买更多的版权
