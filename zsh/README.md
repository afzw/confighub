# zsh配置

## Getting Started

1. 下载&安装

   [官网地址](https://ohmyz.sh/)。

2. 修改shell为zsh

   ```sh
   # 查看系统中有哪些shell
   cat /etc/shells
   
   # 修改默认shell
   chsh /bin/zsh
   ```

3. 安装on-my-zsh

   ```sh
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

## Advancement
1. 安装powerline-status
  > 需要python3, pip3
  ```sh
  pip install powerline-status --user
  ```

## plugins
1. 高亮插件`zsh-syntax-highlighting`
  - 在oh-my-zsh的插件目录下，克隆插件代码
  ```sh
  cd ~/.oh-my-zsh/custom/plugins/
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
  ```
  - 编辑`.zshrc`文件
  在plugin选项中加入`zsh-syntax-highlighting`，请注意该插件必须放在最后！
  然后在`.zshrc`文件的最后一行添加`source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`
  执行命令，使立即生效：
  ```sh
  source ~/.zshrc
  ```

