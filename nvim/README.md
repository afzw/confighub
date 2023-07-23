# NeoVim

## Getting Started

### Prerequisites 

- 配置iTerm2，并安装使用Nerd Font。



### Download

```sh
brew install neovim
```



### Setting Sync

```sh
# 进入neovim的配置目录，没有就自行创建。
cd ~/.config/nvim
# 拉取个人的git仓库
git clone https://github.com/afzw/nvim-config.git
```



### plugin management

1. 安装`packer.nvim`，用于管理插件。

   ```sh
   git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

2. 安装插件依赖

   ```sh
   # ripgrep: 用于telescope
   brew install ripgrep
   # fd: 用于telescope
   brew install fd
   ```




## 快捷键

### 自定义覆盖/新增

| shortcut       | vim                              | custom            |
| -------------- | -------------------------------- | ----------------- |
| **normal**模式 |                                  |                   |
| s              | 删除光标当前字符，并进入插入模式 | 被取消            |
| ctrl + f       | 下翻一屏                         | Telescope全局搜索 |
| ctrl + u/d     | 上下翻动半屏                     | 上下翻动9行       |



### 个人常用快捷键

| shortcut                                        | function                                          |
| ----------------------------------------------- | ------------------------------------------------- |
| 空格                                            | Leader键                                          |
| **normal模式**                                  |                                                   |
| hjkl                                            | 左下右上移动                                      |
| ctrl + j / k                                    | 4j / 4k                                           |
| trl + u / d                                     | 9j / 9k                                           |
| sh / sv / sc / so                               | 水平分屏 / 垂直分屏 / 关闭当前分屏 / 关闭其他分屏 |
| `<leader>t` / `<leader>vt`                      | 水平/垂直唤出terminal                             |
| opt + h / j / k / l                             | 左下右上选择分屏（包括terminal）                  |
| `<leader>s`                                     | 快速保存                                          |
| `<leader>q` / `<leader>sq` / `qq` / `<leader>Q` | :q / :wq / q! / qa!                               |
| *bufferline*                                    |                                                   |
| ctrl + h / l                                    | 左右切换buffer tab                                |
| *vim-bbye*                                      | 暂时用不着                                        |
| *Telescope*                                     |                                                   |
| ctrl + f                                        | 查找文件                                          |
| ctrl + p                                        | 全局查找                                          |
| **insert**模式                                  |                                                   |
| jk                                              | 退出insert模式                                    |
| ctrl + h / l                                    | 跳到行首/行尾                                     |
| ctrl + i                                        | 删除光标前的单词                                  |
| ctrl + opt + y / p                              | 系统剪切板中的复制/粘贴                           |
| **visual**模式                                  |                                                   |
| jk                                              | 退出insert模式                                    |
| < / >                                           | 前/后缩进代码                                     |
| J / K                                           | 上下移动选中代码                                  |
|                                                 |                                                   |

