return {
    -- File browsing
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.3', dependencies = { 'nvim-lua/plenary.nvim' }},
    -- Theme
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    -- LSP
    {"VonHeikemen/lsp-zero.nvim", branch="v3.x"},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {"neovim/nvim-lspconfig", dependencies = {
        {"hrsh7th/cmp-nvim-lsp"},
    }},
    {"hrsh7th/nvim-cmp", dependencies = {
        {"L3MON4D3/LuaSnip"},
    }},
    -- Autopairs
    { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
}
