return {
    "yonatanperel/lake-dweller.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("lake-dweller").setup({
            variant = "pond-dweller", -- "lake-dweller", "pond-dweller", or "ocean-dweller"
        })
        vim.cmd.colorscheme("lake-dweller")
    end,
}