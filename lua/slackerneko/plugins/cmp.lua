return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer"
    },
    config = function()
        local cmp = require "cmp"

        cmp.setup({
            sources = cmp.config.sources({
                { name = "nvim_lsp_signature_help" },
                { name = "nvim_lua" },
                { name = "nvim_lsp" },
                { name = "path" },
                { name = "buffer", keyword_length = 3 }
            }),
            mapping = cmp.mapping.preset.insert{
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }
        })
    end,
}
