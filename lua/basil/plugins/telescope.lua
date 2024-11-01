return {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },

        config = function()
                local builtin = require('telescope.builtin')
                local map = vim.keymap.set
                map('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
                map('n', '<leader>gg', builtin.live_grep, { desc = "Live Grep" })
        end
}
