return {
  "hedyhli/outline.nvim",
  config = function()
    vim.keymap.set("n", "<F2>", "<cmd>Outline<CR>",
      { desc = "Toggle Outline" })

    require("outline").setup {
      -- Your setup opts here (leave empty to use defaults)
    }
  end,
}
