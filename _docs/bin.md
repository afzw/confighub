# 自定义命令

### git-sync

同步当前git分支的内容到远程仓库。

- 使用方式

  ````sh
  gsync "COMMIT-MSG"
  ````

  - COMMIT-MSG: commit注释信息。

- 作用

  变基拉取远程仓库，然后提交本地修改。

