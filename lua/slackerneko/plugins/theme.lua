local config = function()
    require("kanagawa").setup({
        colors = {
            theme = {
                all = {
                    ui = {
                        bg_gutter = "none"
                    }
                }
            }
        }
    })

    vim.cmd("colorscheme kanagawa-dragon")
end

return {
	"rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = config,
}
