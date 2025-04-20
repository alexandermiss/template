return {
  "github/copilot.vim",
  cmd = "Copilot",
  lazy = false,
  autoStart = true,
  -- event = "InsertEnter",
  config = function()
    vim.g.copilot_no_tab_map = true

    vim.g.copilot_filetypes = {
      ['*'] = false,
      python = true,
      yaml = true,
      go = true,
      rust = true,
      c = true,
      javascript = true,
      typescript = true,
      lua = true,
      json = true,
      sh = true,
      dockerfile = true,
      dart = true,
      http = true,
    }
  end,
}
