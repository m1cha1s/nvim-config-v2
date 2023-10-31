-- Setting the leader key
vim.g.mapleader = " "

-- Util

vim.keymap.set("n", "<leader>ef", vim.cmd.Ex, {})

-- Telescope

local telescopeBuiltin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescopeBuiltin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescopeBuiltin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescopeBuiltin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescopeBuiltin.help_tags, {})

-- LSP

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-l>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        {name= "nvim_lsp"},
        {name= "buffer"},
    },
})

