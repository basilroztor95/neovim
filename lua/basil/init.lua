require("basil.set")
require("basil.remap")
require("basil.lazy")

local augroup = vim.api.nvim_create_augroup
local BasilGroup = augroup('Basil', {})
local yank_group = augroup('HighlightYank', {})

function R(name)
        require("plenary.reload").reload_module(name)
end

local autocmd = vim.api.nvim_create_autocmd
autocmd('TextYankPost', {
        group = yank_group,
        pattern = '*',
        callback = function()
                vim.highlight.on_yank({
                        higroup = 'IncSearch',
                        timeout = 40,
                })
        end,
})

autocmd({"BufWritePre"}, {
        group = BasilGroup,
        pattern = "*",
        command = [[%s/\s\+$//e]],
})

autocmd('LspAttach', {
        group = BasilGroup,
        callback = function(e)
                local opts = { buffer = e.buf }
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        end
})
