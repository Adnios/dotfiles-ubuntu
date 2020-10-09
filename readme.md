# Config

## Table of Contexts

<!-- vim-markdown-toc GFM -->

* [交换 esc 和 caps](#交换-esc-和-caps)
* [解决风扇问题](#解决风扇问题)
* [GPU](#gpu)
* [开机自动挂载 C 盘和 D 盘](#开机自动挂载-c-盘和-d-盘)
* [睡眠问题](#睡眠问题)
* [蓝牙](#蓝牙)
* [字体](#字体)
* [软件](#软件)
* [配置](#配置)
* [QQ](#qq)
* [fonts](#fonts)
* [vim](#vim)
    * [fzf](#fzf)
    * [lazygit](#lazygit)
    * [tagbar](#tagbar)
    * [配置](#配置-1)
* [杂项](#杂项)
* [笔记系统](#笔记系统)
* [问题](#问题)
* [emacs](#emacs)

<!-- vim-markdown-toc -->

## 交换 esc 和 caps

1. 最简单的方法： nvim /etc/default/keyboard 将改行修改为这样即可 XKBOPTIONS="caps:swapescape"
2. apt 安装 xcape，通过 key.sh 脚本实现，按一次 cpas 为 esc，长按为 ctrl

## 解决风扇问题

1. 关闭睿频：sudo nvim /sys/devices/system/cpu/intel_pstate/no_turbo,1 为关闭，默认为 0
2. 限制 CPU 最大频率为 50%:sudo nvim /sys/devices/system/cpu/intel_pstate/max_perf_pct, 默认为 100
3. 查看 CPU 频率：watch -n 0 "cat /proc/cpuinfo | grep -i mhz"

## GPU

按照网上教程安装第一步成功了，但是找不到适合 tensorflow1.2 版本和 Ubuntu 18 的 CUDA，今天又发现无法调整屏幕亮度，通过 sudo /usr/bin/nvidia-uninstall 卸载了，恢复原样。

英美达官网下载最新 NVIDIA, 安装成功后，亮度无法调整，网上搜索，有解决办法。sudo nvim /usr/share/X11/xorg.conf.d/10-nvidia-brightness.conf, 此方法时灵时不灵，网上还有一种是创建 10-nvidia.conf 文件，新装的 Ubuntu 可能存在 10-nvidia.conf 文件，将其中内容改为和前一个文件相同即可解决。

重装系统后安装完 nvidia-440,i3 分辨率变大，Ubuntu 没有变化，安装完 lightdm 就正常了

## 开机自动挂载 C 盘和 D 盘

编辑 /etc/fstab 文件

## 睡眠问题

是 NVIDIA 原因，suspend 用不了，suspend 后黑屏，打开 NVIDIA 设置，关闭 Application Profiles 中 Enable application profiles 选项

i3 合上盖子是黑屏，lightdm 合上盖子是 suspend. 在 /etc/systemd/logind.conf 设置

重新装系统以后，系统默认自动息屏，合上盖子自动 logout，但是锁屏界面比较奇怪，不是 lightdm。

## 蓝牙

安装 blueman-manager 即可，连接一次后，以后自动连接

## 字体

source code pro 字体设置。alacritty 配置中之前字体设置为 source code pro 没有任何问题，装了百度输入法后 nerd 有部分符号乱码了。重新安装了一遍该字体的 nerd. 在 alacritty 字体设置为 saurce code pro Nerd

## 软件

- i3lock
- xautolock
- lightdm 登录界面，默认的存在问题，从 i3 退出以后便无法再次进入，lightdm 配置 https://randomblog.hu/customizing-the-ubuntu-18-04-login-lock-screen-with-lightdm/ ，背景图片的配置无效，直接将 /usr/share/background 文件夹中的图片修改
- alacritty  配置文件在~/.config/alacritty/alacritty.yml, 参考了 https://github.com/theniceboy/.config
- compton 透明化，~/.config/compton.conf,pkill compton 可以杀死该进程，透明化看视屏不好用，已删
- ranger, 通过 apt 安装了好多插件 catdoc docx2txt xlsx2csv w3m 等等，按照网上的博客安装的
    * trash 一个 python 文件，需要 pip install trash-cli
- feh
- xfce4, xfce4-volumed, xfce4-power-manager, 音量亮度调整，通知气泡
- 其他见 install.sh 文件，参考 https://github.com/unix121/i3wm-themer
- smplayer 视频播放器自带，[  ], 可以倍速减速
- sudo apt install network-manager,nmtui 连接 wlan,nmtui Ubuntu 自带
- autojump, apt 安装，添加 zsh 插件 autojump，跳转目录必须是之前访问过的。
- nmtui 连接 wifi
- foxitreader 通过 sudo 进行安装，否则找不到 foxitreader 命令
- refind 双系统引导，更新后会失效，需要`sudo refind-install`，配置文件在 /boot/efi/refind/ 目录，网上美化教程很多

## 配置

- 参考 https://github.com/unix121/i3wm-themer
- assign [class = " "] 可以在终端通过 xprop 得到 class 名字
- /sys/class/backlight/acpi_video0/brightness 调整亮度
- touchpad 配置，在 /etc/X11/ 新建 xorg.conf.d 文件夹，创建 90-touchpad.con 文件
- 在 Ubuntu 更新到最新版 neivim 后，系统没有自动将 vim 和 nvim 绑定，导致 ranger 中无法用 nvim 打开文件，手动绑定 sudo ln -s /usr/bin/nvim /usr/local/bin/vim


## QQ

Appimage 启动后中文乱码，安装文泉驿自己即可 sudo apt-get install fonts-wqy-microhei


## fonts

- https://wugh.github.io/posts/2013/11/linux-fontconfig/
- 新建了一个 fontconfig 配置文件
- 解决终端中英文字体问题

## vim

### fzf

1. rg 安装，https://github.com/BurntSushi/ripgrep#installation ，下载 deb 安装
2. .zshrc 中 fzf 使用 ag，若.gitignore 忽略全部，报错；换成 rg 正常了

### lazygit

按照官方 github 教程安装

### tagbar

1. 需要安装 ctags，sudo apt install ctags

### 配置

1. learn from thinkvim
2. github theniceboy
3. mainly made by myself

## 杂项

1. 开机 alacrity 快捷键启动延迟
    - 搜狗输入法开机同步词库导致
2. 休眠后谷歌浏览器黑屏，https://www.zhihu.com/question/53077892 关闭硬件加速

## 笔记系统

- picgo-core + typora 配置，自定义命令`/usr/local/bin/node /usr/local/lib/node_modules/picgo/bin/picgo upload`
- 在 typora 配置好以后，在 vim 中安装一个 coc-picgo, 直接可以用，但是没有 gitee 图床，默认是 smms，而且没有配置就可以上传图片，有点危险

## 问题

- 开机偶尔键盘失灵，亮度无法调整
- 替换 window，typora 偶尔黑屏
- caps 开机使用一段时间后的转换失效
- vim 偶尔出现 bug

## emacs

- 中文问题在 /etc/default/locale 里加上 LC_CTYPE=zh_CN.UTF-8，然后重启就可以了，
- 此方法可以输入中文， 但是浏览器的字体变得奇怪
- 之后将修改为中文，就完美解决浏览器 +emacs 的问题了
    ```
    LANG="zh_CN.uft8"
    LANGUAGE="zh_CN.utf8"
    LC_NUMERIC="zh_CN.UTF-8"
    LC_TIME="zh_CN.UTF-8"
    LC_MONETARY="zh_CN.UTF-8"
    LC_PAPER="zh_CN.UTF-8"
    LC_IDENTIFICATION="zh_CN.UTF-8"
    LC_NAME="zh_CN.UTF-8"
    LC_ADDRESS="zh_CN.UTF-8"
    LC_TELEPHONE="zh_CN.UTF-8"
    LC_MEASUREMENT="zh_CN.UTF-8"

    LC_CTYPE=zh_CN.UTF-8

    ```
