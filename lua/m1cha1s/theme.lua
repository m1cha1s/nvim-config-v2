local DARK  = true
local LIGHT = false

local theme_mode = LIGHT

local function SetTheme()
    if not theme_mode then
        return "latte"
    else
        return "mocha"
    end
end

if false then
    require("catppuccin").setup({
        flavour=SetTheme(),
        transparent_background=true,
    })
else
    require("rose-pine").setup({
        variant = "auto",
        dark_variant = "main",
    })
end

vim.cmd.colorscheme("rose-pine")
