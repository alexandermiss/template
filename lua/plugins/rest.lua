return {
  "rest-nvim/rest.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http")
    end,
  },
  config = function ()
    vim.api.nvim_set_keymap('n', '<leader>R', '<cmd>Rest run<CR>', { noremap = true, silent = true })
  end
}
