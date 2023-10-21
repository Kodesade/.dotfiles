local api = require("nvim-tree")

api.setup({
        actions = {
                open_file = {
                        quit_on_open = true,
                }
        }
})

vim.api.nvim_set_keymap('n',"<F2>", ':NvimTreeToggle<CR>',{})
