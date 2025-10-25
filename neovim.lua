return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#13131D", -- Default background
                base01 = "#434353", -- Lighter background (status bars)
                base02 = "#13131D", -- Selection background
                base03 = "#434353", -- Comments, invisibles
                base04 = "#a1a2a7", -- Dark foreground
                base05 = "#c8c8c8", -- Default foreground
                base06 = "#c8c8c8", -- Light foreground
                base07 = "#a1a2a7", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#EA90A8", -- Variables, errors, red
                base09 = "#f6bfce", -- Integers, constants, orange
                base0A = "#D18BA2", -- Classes, types, yellow
                base0B = "#a6b2c7", -- Strings, green
                base0C = "#919ab7", -- Support, regex, cyan
                base0D = "#7c7ca8", -- Functions, keywords, blue
                base0E = "#9f859f", -- Keywords, storage, magenta
                base0F = "#e3aebf", -- Deprecated, brown/yellow
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
