return {
	"lukas-reineke/headlines.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		-- -- Define custom highlight groups using Vimscript
		-- -- Theme below is for Tokyonight
		-- vim.cmd([[highlight Headline1 guibg=#41a6b5 guifg=#323449]])
		-- vim.cmd([[highlight Headline2 guibg=#4fd6be guifg=#323449]])
		-- vim.cmd([[highlight Headline3 guibg=#b4f9f8 guifg=#323449]])
		-- vim.cmd([[highlight Headline4 guibg=#7aa2f7 guifg=#323449]])
		-- vim.cmd([[highlight Headline5 guibg=#ff9e64 guifg=#323449]])
		-- vim.cmd([[highlight Headline6 guibg=#ff007c guifg=white]])

		-- For a dimmer background
		vim.cmd([[highlight Headline1 guifg=#f1fc79 guibg=#606430]])
		vim.cmd([[highlight Headline2 guifg=#37f499 guibg=#16613d]])
		vim.cmd([[highlight Headline3 guifg=#04d1f9 guibg=#015363]])
		vim.cmd([[highlight Headline4 guifg=#f16c75 guibg=#602b2e]])
		vim.cmd([[highlight Headline5 guifg=#7081d0 guibg=#2c3353]])
		vim.cmd([[highlight Headline6 guifg=#f265b5 guibg=#602848]])

		-- Defines the codeblock background color to something darker
		vim.cmd([[highlight CodeBlock guibg=#09090d]])
		-- When you add a line of dashes with --- this specifies the color, I'm not
		-- adding a "guibg" but you can do so if you want to add a background color
		vim.cmd([[highlight Dash guifg=white]])

		-- Setup headlines.nvim with the newly defined highlight groups
		require("headlines").setup({
			markdown = {
				-- If set to false, headlines will be a single line and there will be no
				-- "fat_headline_upper_string" and no "fat_headline_lower_string"
				fat_headlines = false,
				--
				-- Lines added above and below the header line makes it look thicker
				-- "lower half block" unicode symbol hex:2584
				-- "upper half block" unicode symbol hex:2580
				fat_headline_upper_string = "▄",
				fat_headline_lower_string = "▀",
				--
				-- You could add a full block if you really like it thick ;)
				-- fat_headline_upper_string = "█",
				-- fat_headline_lower_string = "█",
				--
				-- Other set of lower and upper symbols to try
				-- fat_headline_upper_string = "▃",
				-- fat_headline_lower_string = "-",
				--
				headline_highlights = {
					"Headline1",
					"Headline2",
					"Headline3",
					"Headline4",
					"Headline5",
					"Headline6",
				},

				bullets = { "󰎤", "󰎧", "󰎪", "󰎭", "󰎱", "󰎳" },
				-- bullets = { "󰎤", "󰎧", "󰎪", "󰎮", "󰎰", "󰎵" },
				-- bullets = { "◉", "○", "✸", "✿" },
			},
		})
	end,
}
