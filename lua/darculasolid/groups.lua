
local M = {}

local colors = require("darculasolid.palette")

M.setup = function()
  return {

    -- Standard
    Normal  = { fg = colors.fg, bg = colors.bg },
    Comment = { fg = colors.comment, italic = true },
    Function = { fg = colors.Function },
    Cursor = { fg = colors.cursor, bg = colors.bg },
    CursorLine = { bg = colors.cursorline },
    Keyword = { fg = colors.keyword },

    -- file structure
    Directory = { fg = colors.directory },

    Identifier = { fg = colors.variable },
    Variable = { fg = colors.variable },

    -- diagnostics
    DiagnosticError = { fg = colors.diag_error, bg = colors.bg },
    DiagnosticWarn = { fg = colors.diag_warn, bg = colors.bg },
    DiagnosticInfo = { fg = colors.diag_info, bg = colors.bg },
    DiagnosticHint = { fg = colors.diag_hint, bg = colors.bg },

    -- statusline
    MiniStatuslineModeNormal  = { fg = colors.bg, bg = colors.normalmode },
    MiniStatuslineModeInsert = { fg = colors.bg, bg = colors.insertmode },
    MiniStatuslineModeVisual  = { fg = colors.bg, bg = colors.visual },
    MiniStatuslineModeReplace  = { fg = colors.bg, bg = colors.replacemode },
    MiniStatuslineModeCommand  = { fg = colors.bg, bg = colors.commandmode },
    MiniStatuslineModeOther  = { fg = colors.bg, bg = colors.commandmode },
    MiniStatuslineDevinfo  = { fg = colors.bg, bg = colors.Function },
    MiniStatuslineFilename  = {},
    MiniStatuslineFileinfo  = { fg = colors.bg, bg = colors.comment },
    MiniStatuslineInactive  = {},

    -- RainbowDelimiterRed = {},
    -- RainbowDelimiterOrange = {},
    -- RainbowDelimiterYellow = {},
    -- RainbowDelimiterGreen = {},
    -- RainbowDelimiterCyan = {},
    -- RainbowDelimiterBlue = {},
    -- RainbowDelimiterViolet = {},

    --Treesitter
    ["@string"] = { fg = colors.string },

    --Lsp
    ["@lsp"] = {}

  }
end

return M
