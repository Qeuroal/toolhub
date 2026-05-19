# 设置开机自启动服务

1. 将 `./mihomo.service` 复制到 `/lib/systemd/system/mihomo.service`
1. 将"订阅文件"复制到 `~/.config/mihomo/` 中, 重命名为 `config.yaml`
   > [!NOTE]
   > 注意备份原有的 `config.yaml`
1. 运行 `sudo systemctl daemon-reload`
1. 运行 `sudo systemd start `

# 可运行文件

1. 下载[官网](https://github.com/MetaCubeX/mihomo/releases/)最新的 `mihomo-linux-amd64-<version>-<version>.gz` 文件, 文件名为 `mihomo-linux-amd64.gz`
1. 解压: `gzip -dk ./mihomo-linux-amd64.gz`
1. 重命名: `mv ./mihomo-linux-amd64 ./mihomo`
1. 赋予可运行权限: `chmod +x ./mihomo`
1. 移动文件: `sudo mv ./mihomo /usr/local/bin`

# 配置文件路径

`$HOME/.config/mihomo/`

# web 配置网址

- [metacubexd](https://metacubex.github.io/metacubexd/#/setup)
- [yacd](https://yacd.metacubex.one/#/proxies)
   教程:
   - [魔法师云撸猫](https://mcreadme.gitbook.io/mc/base/yacd)
- [zash](https://board.zash.run.place/#/setup)

