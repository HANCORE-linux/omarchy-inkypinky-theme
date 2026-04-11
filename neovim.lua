return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				custom_highlights = function(colors)
					return {
						WinSeparator = { fg = colors.overlay1 },
						BlinkCmpDocBorder = { fg = colors.blue },
						BlinkCmpKind = { fg = colors.blue },
						BlinkCmpMenu = { fg = colors.text },
						BlinkCmpMenuBorder = { fg = colors.blue, bg = colors.base },
						BlinkCmpSignatureHelpActiveParameter = { fg = colors.mauve },
						BlinkCmpSignatureHelpBorder = { fg = colors.blue },
					}
				end,
				floating_border = "on",
				integrations = {
					blink_cmp = true,
				},
				color_overrides = {
					mocha = {
						base = "#13131D",
						mantle = "#13131D",
						-- crust = "#000000",
					},
				},
				transparent_background = true,
			})
			vim.cmd.colorscheme("catppuccin-nvim")
		end,
	},
}