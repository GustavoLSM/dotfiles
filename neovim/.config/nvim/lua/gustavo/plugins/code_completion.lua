-- Code Completion
return {
    'neovim/nvim-lspconfig', -- Bridge NeoVim engine with the LSP engine
    dependencies = {
        'hrsh7th/nvim-cmp', -- Clone autocompletion engine
        'hrsh7th/cmp-nvim-lsp', -- Clone LSP source for autocompletion engine
        'hrsh7th/cmp-buffer', -- Clone text in buffer source for autocompletion engine
        'hrsh7th/cmp-path', -- Clone system path source for autocompletion engine
        'L3MON4D3/LuaSnip', -- Clone Snippets engine
        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'}, -- Bridge autocompletion engine with the LSP engine
    },
    config = function()
        -- Enable LSP diagnostics and shortcuts
        require('lsp-zero').on_attach(function(client, bufnr)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {}) -- LSP variable rename
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) -- Code actions
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- Documentation
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) -- Go to definition
        end)

        -- Enable code completion
        require('cmp').setup({
            sources = { -- Source for suggestions
                {name = 'nvim_lsp'}, -- Suggestions from LSP
                {name = 'path'}, -- Suggestion from system path
            },
            mapping = { -- Shortcus for code completion
                ['<C-Space>'] = require('cmp').mapping.complete(), -- Open suggestion menu
                ['<C-e>'] = require('cmp').mapping.abort(), -- Cancel auto complete
                ['<CR>'] = require('cmp').mapping.confirm({ select = true }), -- Confirm selected suggestion
            },
            snippet = { -- Enable snippet engine while writing
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
        })

        -- Load PHP LSP
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('lspconfig').intelephense.setup({
            capabilities = capabilities
        })
    end,
}
