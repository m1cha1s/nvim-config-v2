local DARK  = true
local WHITE = false

local theme_mode = WHITE

local function SetTheme()
    if not theme_mode then
        return "latte"
    else
        return "mocha"
    end
end

require("catppuccin").setup({
	flavour=SetTheme(),
	transparent_background=true,
})

vim.cmd.colorscheme("catppuccin")
