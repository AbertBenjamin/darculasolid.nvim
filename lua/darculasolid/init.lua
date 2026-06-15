local M = {}

M.setup = function()
  local groups = require("darculasolid.groups").setup()
  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end

  -- Fyler's git extension overrides FylerGit* groups in its ColorScheme hook
  -- (highlights_post) with hardcoded defaults. Re-apply our values on the next
  -- event-loop tick so the colorscheme wins.
  local c = require("darculasolid.palette")
  vim.schedule(function()
    vim.api.nvim_set_hl(0, "FylerGitModified",  { fg = c.sign_change })
    vim.api.nvim_set_hl(0, "FylerGitStaged",    { fg = c.sign_add })
    vim.api.nvim_set_hl(0, "FylerGitUntracked", { fg = c.git_untracked })
    vim.api.nvim_set_hl(0, "FylerGitDeleted",   { fg = c.sign_delete })
    vim.api.nvim_set_hl(0, "FylerGitRenamed",   { fg = c.sign_change })
    vim.api.nvim_set_hl(0, "FylerGitConflict",  { fg = c.diag_warn })
    vim.api.nvim_set_hl(0, "FylerGitIgnored",   { fg = c.comment })
  end)
end

return M
