local colors = require 'material.colors'
vim.cmd('hi LineNr guibg=none guifg=#ffffff')
require('material').setup({
    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { --[[ italic = true ]] },
        strings = { --[[ bold = true ]] },
        keywords = { --[[ underline = true ]] },
        functions = { --[[ bold = true, undercurl = true ]] },
        variables = {},
        operators = {},
        types = {},
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        -- "eyeliner",
        -- "fidget",
        -- "flash",
        -- "gitsigns",
        -- "harpoon",
        -- "hop",
        -- "illuminate",
        -- "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        -- "neotest",
	"neo-tree",
        -- "neorg",
        -- "noice",
        -- "nvim-cmp",
        -- "nvim-navic",
        -- "nvim-tree",
        -- "nvim-web-devicons",
        -- "rainbow-delimiters",
        -- "sneak",
        -- "telescope",
        -- "trouble",
        -- "which-key",
        -- "nvim-notify",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = true, -- Enable higher contrast text for lighter style
        darker = true -- Enable higher contrast text for darker style
    },

--    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)


    custom_highlights = {
        LineNr = { bg = '#FF0000', fg = '#FFFFFF' },
        CursorLine = { fg = colors.editor.constrast , underline = true },

        -- This is a list of possible values
        YourHighlightGroup = {
            fg = "#SOME_COLOR", -- foreground color
            bg = "#SOME_COLOR", -- background color
            sp = "#SOME_COLOR", -- special color (for colored underlines, undercurls...)
            bold = false, -- make group bold
            italic = false, -- make group italic
            underline = false, -- make group underlined
            undercurl = false, -- make group undercurled
            underdot = false, -- make group underdotted
            underdash = false, -- make group underslashed
            striketrough = false, -- make group striked trough
            reverse = false, -- reverse the fg and bg colors
            link = "SomeOtherGroup" -- link to some other highlight group
        }
    },

    -- Custom colors must be a function that takes in the default colors table as
    -- a paramter, and then modifies them.
    -- To see the available colors, see lua/material/colors/init.lua
    custom_colors = function(colors)
        colors.editor.bg = "#SOME_COLOR"
        colors.main.purple = "#SOME_COLOR"
        colors.lsp.error = "#SOME_COLOR"
    end
})
