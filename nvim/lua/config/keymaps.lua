-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 设置leader key
--vim.g.mapleader = " "
--vim.g.maplocalleader = "\"

-- 设置别名，便于后续设置
-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     if opts.remap and not vim.g.vscode then
--       opts.remap = nil
--     end
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end

local map = vim.keymap.set

-- 复用参数
local opt = { noremap = true, silent = true }

-- https://neovim.io/doc/user/vimindex.html
--- 系统剪切板的复制/粘贴（vim需要支持clipboard功能）
-- map("n", "<C-A-y>", '"+y', opt) nvim已经默认复制粘贴到剪贴板了
-- map("n", "<C-A-p>", '"*p', opt)
------------------- insert模式 -------------------
-- 退出insert模式
map("i", "jk", "<ESC>", opt)
map("i", "<C-B>", "<LEFT>", opt)
map("i", "<C-F>", "<RIGHT>", opt)
------------------- visual模式 -------------------
-- 退出visual模式
map("v", "jk", "<ESC>", opt)
