# confighub

## 简介
在${HOME}目录下拉取该项目，将项目名称替换为`.config`（即使用该项目替换掉原${HOME}目录下的`.config`文件）。



## 使用

### 前置条件配置

- 首先自行下载git（推荐使用系统的包管理工具）。

- 拉取本项目至${HOME}目录，易名本项目为`.config`，替换系统原有的`.config`目录。
  ```sh
  # 在${HOME}目录下
  mv .config .config.bak # 将原来的.config目录备份
  mv confighub .config
  ```



### 启动`build.sh`脚本自动构建，使配置生效。

```sh
# 在${HOME}目录下
.config/build.sh
```



## 其他

`_bin`目录下是一些自制的shell脚本。

`_manual`目录下是手动维护的一些程序配置。
