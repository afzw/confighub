-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 设置leader key
--vim.g.mapleader = " "
--vim.g.maplocalleader = "\"
-- 设置别名，便于后续设置
local map = vim.api.nvim_set_keymap
-- 复用参数
local opt = { noremap = true, silent = true }
--- 系统剪切板的复制/粘贴（vim需要支持clipboard功能）
map("n", "<C-A-y>", '"+y', opt)
map("n", "<C-A-p>", '"*p', opt)
-- 快速保存
map("n", "<leader>s", ":w<CR>", opt)
-- 快捷退出vim
map("n", "<leader>q", ":q<CR>", opt)
map("n", "<leader>sq", ":wq<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "<leader>Q", ":qa!<CR>", opt)
------------------- insert模式 -------------------
-- 退出insert模式
map("i", "jk", "<ESC>", opt)
map("i", "<C-B>", "<LEFT>", opt)
map("i", "<C-F>", "<RIGHT>", opt)
------------------- visual模式 -------------------
-- 退出insert模式
map("v", "jk", "<ESC>", opt)
