return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#1a1b1f",
                bg_dark = "#1a1b1f",
                bg_highlight = "#8a8c94",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#eff2f5",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#b8c4d0",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#8a8c94",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#7a92ae",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#b2c1d2",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#a8b6c4",
                -- green: Comments, strings, success states, git additions
                green = "#9eafc0",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#aabaca",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#7b8da3",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#a6b1bf",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#dbe0e6",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
