return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "java", "go", "javascript", "typescript", "c", "c_sharp", "lua", "python"
            },
            highlight = {
                enable = true,  -- Enable Tree-sitter highlighting
                additional_vim_regex_highlighting = false, -- Disable Vim regex highlighting
            },
        })
    end,
}
