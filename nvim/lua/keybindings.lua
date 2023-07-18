----------------------------------- 公共 -----------------------------------
-- 设置leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- 设置别名，便于后续设置
local map = vim.api.nvim_set_keymap
-- 复用参数
local opt = { noremap = true, silent = true }

----------------------------------- 自定义vim快捷键 -----------------------------------
------------------- 被覆盖/取消的原vim快捷键 -------------------
-- 【normal】[s] -- 删除光标当前字符，并进入插入模式 -- 取消掉
-- 【normal】[C-f] -- 下翻一屏 -- 替换为Telescope全局搜索
-- 【normal】[ C-u / C-d ] 上下翻动半屏 => 上下翻动9行
------------------- normal模式 -------------------
-- 系统剪切板的复制/粘贴（vim需要支持clipboard功能）
map('n', '<C-A-y>', '"+y', opt)
map('n', '<C-A-p>', '"*p', opt)
-- 上下滚动浏览
map('n', '<C-j>', '4j', opt)
map('n', '<C-k>', '4k', opt)
-- 翻动半屏 => 翻动9行
map('n', '<C-d>', '9j', opt)
map('n', '<C-u>', '9k', opt)
-- 取消 s 默认功能
map('n', 's', '', opt)
-- 分屏 水平 / 垂直
map('n', 'sh', ':sp<CR>', opt)
map('n', 'sv', ':vsp<CR>', opt)
-- 关闭 当前分屏 / 其他分屏
map('n', 'sc', '<C-w>c', opt)
map('n', 'so', '<C-w>o', opt)
-- 新建 水平 /垂直 分屏唤出terminal
map('n', '<leader>t', ':sp | terminal<CR>', opt)
map('n', '<leader>vt', ':vsp | terminal<CR>', opt)
-- Alt + hjkl  窗口之间跳转
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)
-- 快速保存
map('n', '<leader>s', ':w<CR>', opt)
-- 快捷退出vim
map('n', '<leader>q', ':q<CR>', opt)
map('n', '<leader>sq', ':wq<CR>', opt)
map('n', 'qq', ':q!<CR>', opt)
map('n', '<leader>Q', ':qa!<CR>', opt)

-- 使用 bufferline(https://github.com/akinsho/bufferline.nvim) 生成 buffer tab
-- bufferline: 左右切换 buffer tab
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)
-- 分屏的左下上右比例控制（terminal也视为一种分屏）
map('n', '<C-A-h>', ':vertical resize -3<CR>', opt)
map('n', '<C-A-j>', ':resize -3<CR>', opt)
map('n', '<C-A-k>', ':resize +3<CR>', opt)
map('n', '<C-A-l>', ':vertical resize +3<CR>', opt)
map('t', '<Esc>', '<C-\\><C-n>', opt)
map('t', '<A-h>', [[ <C-\><C-N><C-w>h ]], opt)
map('t', '<A-j>', [[ <C-\><C-N><C-w>j ]], opt)
map('t', '<A-k>', [[ <C-\><C-N><C-w>k ]], opt)
map('t', '<A-l>', [[ <C-\><C-N><C-w>l ]], opt)
-- 使用vim-bbye(https://github.com/moll/vim-bbye)关闭 buffer 但不关闭 buffer tab
map('n', '<C-w>', ':Bdelete!<CR>', opt)
map('n', '<leader>bl', ':BufferLineCloseRight<CR>', opt)
map('n', '<leader>bh', ':BufferLineCloseLeft<CR>', opt)
map('n', '<leader>bc', ':BufferLinePickClose<CR>', opt)

-- 使用Telescope(https://github.com/nvim-telescope/telescope.nvim)进行全局搜索
-- 查找文件
map('n', '<C-f>', ':Telescope find_files<CR>', opt)
-- 全局搜索
map('n', '<C-p>', ':Telescope live_grep<CR>', opt)

------------------- insert模式 -------------------
-- 退出insert模式
map('i', 'jk', '<ESC>', opt)
map('i', '<C-B>', '<LEFT>', opt)
map('i', '<C-F>', '<RIGHT>', opt)
------------------- visual模式 -------------------
-- 退出insert模式
map('v', 'jk', '<ESC>', opt)
map('v', '<C-A-y>', '"+y', opt)
-- visual模式下缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)
-- 上下移动选中文本
map('v', 'J', ":move '>+1<CR>gv-gv", opt)
map('v', 'K', ":move '<-2<CR>gv-gv", opt)
-- 在visual 模式里粘贴不要复制
map('v', 'p', '"_dP', opt)

----------------------------------- 插件快捷键 -----------------------------------
local pluginKeys = {}

------------------- lsp 回调函数快捷键设置 -------------------
pluginKeys.mapLSP = function(mapbuf)
    -- rename
    mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
    -- code action
    mapbuf('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
    -- go xx
    mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
    mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
    mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
    mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
    mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
    -- diagnostic
    mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
    mapbuf('n', 'gk', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
    mapbuf('n', 'gj', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
    mapbuf('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
    -- 没用到
    -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
    -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
    -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
    -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

------------------- nvim-tree -------------------
-- alt + m 键打开关闭tree
map('n', '<C-m>', ':NvimTreeToggle<CR>', opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
    -- 打开文件或文件夹
    { key = { '<CR>', 'o', '<2-LeftMouse>' }, action = 'edit' },
    -- 分屏打开文件
    { key = 'v', action = 'vsplit' },
    { key = 'h', action = 'split' },
    -- 显示隐藏文件
    { key = 'i', action = 'toggle_custom' }, -- 对应 filters 中的 custom (node_modules)
    { key = '.', action = 'toggle_dotfiles' }, -- Hide (dotfiles)
    -- 文件操作
    { key = '<F5>', action = 'refresh' },
    { key = 'a', action = 'create' },
    { key = 'd', action = 'remove' },
    { key = 'r', action = 'rename' },
    { key = 'x', action = 'cut' },
    { key = 'c', action = 'copy' },
    { key = 'p', action = 'paste' },
    { key = 's', action = 'system_open' },
}

------------------- Telescope 列表中 插入模式快捷键 -------------------
pluginKeys.telescopeList = {
    i = {
        -- 上下移动
        ['<C-j>'] = 'move_selection_next',
        ['<C-k>'] = 'move_selection_previous',
        ['<Down>'] = 'move_selection_next',
        ['<Up>'] = 'move_selection_previous',
        -- 历史记录
        ['<C-n>'] = 'cycle_history_next',
        ['<C-p>'] = 'cycle_history_prev',
        -- 关闭窗口
        ['<C-c>'] = 'close',
        -- 预览窗口上下滚动
        ['<C-u>'] = 'preview_scrolling_up',
        ['<C-d>'] = 'preview_scrolling_down',
    },
}

------------------- nvim-cmp 自动补全 -------------------
pluginKeys.cmp = function(cmp)
    return {
        -- 出现补全
        ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        -- 取消
        ['<A-,>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        -- 上一个
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        -- 下一个
        ['<C-j>'] = cmp.mapping.select_next_item(),
        -- 确认
        ['<CR>'] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace,
        }),
        -- 如果窗口内容太多，可以滚动
        ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    }
end

return pluginKeys
