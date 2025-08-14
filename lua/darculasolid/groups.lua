
local M = {}

local colors = require("darculasolid.palette")

M.setup = function()
  local groups = {

    -- Standard
    Normal  = { fg = colors.fg, bg = colors.bg },
    Comment = { fg = colors.comment, italic = true },
    Function = { fg = colors.Function },
    Cursor = { fg = colors.cursor, bg = colors.bg },
    CursorLine = { bg = colors.cursorline },
    Keyword = { fg = colors.keyword },
    Visual = { bg = colors.visual },
    Boolean = { fg = colors.keyword },
    Search = { bg = colors.search },
    CurSearch = { bg = colors.search },

    -- qf list
    QuickFixLine = { fg = colors.directory },

    -- menu
    Pmenu          = { bg = colors.statusline },
    PmenuSel      = { fg = colors.fg, bg = colors.cursorline },
    PmenuMatch   = {},
    PmenuMatchSel= {},
    PmenuKind   = {},
    PmenuKindSel= {},
    PmenuExtra  = {},
    PmenuExtraSel = {},
    PmenuSbar    = {},
    PmenuThumb  = {},

    -- fold
    Fold = {},
    UfoFoldedBg = {},
    UfoFoldedFg  = {},
    UfoPreviewSbar= {},
    UfoPreviewThumb= {},
    UfoPreviewWinBar = {},
    UfoPreviewCursorLine = {},
    UfoFoldedEllipsis = {},
    UfoCursorFoldedLine = {},

    Special = { fg = colors.keyword },

    -- file structure
    Directory = { fg = colors.directory },

    Identifier = { fg = colors.variable },
    Variable = { fg = colors.fg },
    Constant = { italic = true },

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
    MiniStatuslineDevinfo  = { fg = colors.bg, bg = colors.comment },
    MiniStatuslineFilename  = { fg = colors.fg, bg = colors.statusline },
    MiniStatuslineFileinfo  = { fg = colors.boolean, bg = colors.statusline },
    MiniStatuslineInactive  = { fg = colors.linenr, bg = colors.statusline },

    RenderMarkDownCode = { bg = colors.bg },

    RainbowDelimiterRed = {},
    RainbowDelimiterOrange = {},
    RainbowDelimiterYellow = { fg = "#e8ba35" },
    RainbowDelimiterGreen = { fg = "#54a857" },
    RainbowDelimiterCyan = { fg = "" },
    RainbowDelimiterBlue = { fg = "#359ff4" },
    RainbowDelimiterViolet = {fg = "#6e7ed9"},

    -- git diff
    Added = { fg = colors.added },
    Removed = { fg = colors.removed },
    Changed = { fg = colors.changed },

    -- Treesitter
    ["@comment"]            = { fg = colors.comment, italic = true },
    ["@string"]             = { fg = colors.string },
    ["@string.escape"]      = { fg = colors.keyword },
    ["@character"]          = { fg = colors.string },
    ["@number"]             = { fg = colors.number },
    ["@boolean"]            = { fg = colors.boolean },
    ["@constant"]           = { fg = colors.constant, italic = true },
    ["@constant.builtin"]   = { fg = colors.constant },


    ["@function"]           = { fg = colors.Function },
    ["@function.call"]      = { fg = colors.Function },
    ["@function.builtin"]   = { fg = colors.Function, italic = true },
    ["@method"]             = { fg = colors.Function },
    ["@constructor"]        = { fg = colors.keyword },

    ["@parameter"]          = { fg = colors.variable },
    ["@variable"]           = { fg = colors.variable },
    ["@variable.parameter"] = { fg = colors.variable },
    ["@field"]              = { fg = colors.variable },
    ["@property"]           = { fg = colors.property },
    ["@type"]               = { fg = colors.keyword },
    ["@type.builtin"]       = { fg = colors.keyword },
    ["@namespace"]          = { fg = colors.directory },

    ["@operator"]           = { fg = colors.fg },
    ["@keyword"]            = { fg = colors.keyword },
    ["@keyword.function"]   = { fg = colors.keyword },
    ["@keyword.operator"]   = { fg = colors.keyword },
    ["@keyword.return"]     = { fg = colors.keyword },

    ["@punctuation.delimiter"] = { fg = colors.keyword },
    ["@punctuation.bracket"]   = { fg = colors.fg },
    ["@punctuation.special"]   = { fg = colors.keyword },

    --Lsp
    -- Kotlin-Specific Treesitter Highlights
    ["@attribute.kotlin"]        = { fg = colors.annotation },
    ["@constructor.kotlin"]      = { fg = colors.keyword },
    ["@type.kotlin"]             = { fg = colors.fg },
    ["@type.builtin.kotlin"]     = { fg = colors.fg },
    ["@function.kotlin"]         = { fg = colors.Function },
    ["@function.call.kotlin"]    = { fg = colors.fg },
    ["@keyword.kotlin"]          = { fg = colors.keyword },
    ["@keyword.return.kotlin"]   = { fg = colors.keyword },
    ["@variable.parameter.kotlin"] = { fg = colors.variable },
    ["@property.kotlin"]         = { fg = colors.variable },
    ["@field.kotlin"]            = { fg = colors.variable },
    ["@string.kotlin"]           = { fg = colors.string },
    ["@comment.kotlin"]          = { fg = colors.comment, italic = true },

    -- Kotlin LSP Semantic Tokens
    ["@lsp.type.class.kotlin"]        = { fg = colors.fg },
    ["@lsp.type.interface.kotlin"]    = { fg = colors.fg },
    ["@lsp.type.enum.kotlin"]         = { fg = colors.fg },
    ["@lsp.type.enumMember.kotlin"]   = { fg = colors.constant },
    ["@lsp.type.function.kotlin"]     = { fg = colors.Function },
    ["@lsp.type.method.kotlin"]       = { fg = colors.fg },
    ["@lsp.type.property.kotlin"]     = { fg = colors.variable },
    ["@lsp.type.variable.kotlin"]     = { fg = colors.fg },
    ["@lsp.type.parameter.kotlin"]    = { fg = colors.fg },
    ["@lsp.type.namespace.kotlin"]    = { fg = colors.fg },
    ["@lsp.type.keyword.kotlin"]      = { fg = colors.keyword },
    ["@lsp.mod.static.kotlin"]        = { fg = colors.Function, bold = true },
    ["@lsp.mod.readonly.kotlin"]      = { fg = colors.fg },

    -- ["@lsp.type.method.kotlin"] = {},
    -- ["@lsp.mod.declaration.kotlin"] = { fg = colors.fg },
    ["@lsp.typemod.method.declaration.kotlin"] = { fg = colors.Function },

  }

  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  vim.api.nvim_set_hl(0, "SnacksIndentChunk", { link = "RainbowDelimiterBlue" })




end

return M
