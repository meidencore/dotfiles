-- Utilities for creating configurations
local util = require "formatter.util"

function format_prettier()
   return {
     exe = "prettier",
     args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
     stdin = true
   }
end

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in

  filetype = {
      typescript = { format_prettier },
      typescriptreact = { format_prettier },
      javascript = { format_prettier },
      javascriptreact = { format_prettier },
    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  },
  try_node_modules = true,
}

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
   
