-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 设置leader key
--vim.g.mapleader = " "
--vim.g.maplocalleader = "\"

local map = vim.keymap.set

-- 复用参数
local opt = { noremap = true, silent = true }

-- https://neovim.io/doc/user/vimindex.html
--- 系统剪切板的复制/粘贴（vim需要支持clipboard功能）
-- map("n", "<C-A-y>", '"+y', opt) lazyvim已经默认复制粘贴到剪贴板了
-- map("n", "<C-A-p>", '"*p', opt)
------------------- insert模式 -------------------
-- 退出insert模式
map("i", "jk", "<ESC>", opt)
-- map("i", "<C-B>", "<LEFT>", opt)
-- map("i", "<C-F>", "<RIGHT>", opt)
------------------- visual模式 -------------------
-- 退出visual模式
map("v", "jk", "<ESC>", opt)
