local M = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = true,
            },
        },
    },
    config = function(_, opts)
        require("neo-tree").setup(opts)
        vim.cmd [[nnoremap \ :Neotree toggle<CR>]]
    end
}

return M
