
local M = {}

local c = require("darculasolid.palette")

M.setup = function()
  local groups = {

    -- Editor core
    Normal       = { fg = c.fg, bg = c.bg },
    NormalFloat  = { fg = c.fg, bg = c.statusline },
    FloatBorder  = { fg = c.split, bg = c.statusline },
    Cursor       = { fg = c.bg_solid, bg = c.cursor },
    CursorLine   = { bg = c.cursorline },
    CursorLineNr = { fg = c.linenr_cur, bold = true },
    LineNr       = { fg = c.linenr },
    SignColumn   = { bg = c.bg },
    WinSeparator = { fg = c.split },
    Visual       = { bg = c.visual },
    Search       = { bg = c.search },
    CurSearch    = { bg = c.search },
    IncSearch    = { bg = c.incsearch },
    MatchParen   = { bg = c.match },
    NonText      = { fg = c.split },
    EndOfBuffer  = { fg = c.bg },
    ColorColumn  = { bg = c.cursorline },
    Conceal      = { fg = c.comment },
    Folded       = { fg = c.comment, bg = c.fold },
    FoldColumn   = { fg = c.comment },
    Title        = { fg = c.Function, bold = true },
    Directory    = { fg = c.directory },
    Special      = { fg = c.comment },

    -- Syntax
    Comment    = { fg = c.comment, italic = true },
    Keyword    = { fg = c.keyword, bold = true },
    Function   = { fg = c.Function },
    String     = { fg = c.string },
    Character  = { fg = c.string },
    Number     = { fg = c.number },
    Float      = { fg = c.number },
    Boolean    = { fg = c.keyword, bold = true },
    Constant   = { fg = c.constant, italic = true },
    Identifier = { fg = c.variable },
    Variable   = { fg = c.fg },
    Type       = { fg = c.fg },
    Operator   = { fg = c.fg },
    Delimiter  = { fg = c.fg },
    Statement  = { fg = c.keyword, bold = true },
    PreProc    = { fg = c.keyword },
    Include    = { fg = c.keyword },
    Define     = { fg = c.keyword },
    Macro      = { fg = c.keyword },
    StorageClass = { fg = c.keyword },
    Structure  = { fg = c.keyword },
    Typedef    = { fg = c.keyword },
    Tag        = { fg = c.keyword },
    SpecialComment = { fg = c.comment, bold = true, italic = true },
    Todo       = { fg = c.annotation, bold = true },
    Underlined = { underline = true },
    Error      = { fg = c.diag_error },
    ErrorMsg   = { fg = c.diag_error },
    WarningMsg = { fg = c.diag_warn },

    -- Completion menu
    Pmenu         = { fg = c.fg, bg = c.statusline },
    PmenuSel      = { fg = c.fg, bg = c.cursorline },
    PmenuMatch    = { fg = c.Function },
    PmenuMatchSel = { fg = c.Function, bg = c.cursorline },
    PmenuKind     = { fg = c.keyword },
    PmenuKindSel  = { fg = c.keyword, bg = c.cursorline },
    PmenuExtra    = { fg = c.comment },
    PmenuExtraSel = { fg = c.comment, bg = c.cursorline },
    PmenuSbar     = { bg = c.cursorline },
    PmenuThumb    = { bg = c.comment },

    -- Statusline / Tabline
    StatusLine   = { fg = c.fg, bg = c.statusline },
    StatusLineNC = { fg = c.comment, bg = c.statusline },
    TabLine      = { fg = c.comment, bg = c.statusline },
    TabLineFill  = { bg = c.statusline },
    TabLineSel   = { fg = c.fg, bg = c.cursorline },

    -- Quick fix
    QuickFixLine = { bg = c.cursorline },

    -- Diagnostics
    DiagnosticError          = { fg = c.diag_error },
    DiagnosticWarn           = { fg = c.diag_warn },
    DiagnosticInfo           = { fg = c.diag_info },
    DiagnosticHint           = { fg = c.diag_hint },
    DiagnosticUnderlineError = { undercurl = true, sp = c.diag_error },
    DiagnosticUnderlineWarn  = { undercurl = true, sp = c.diag_warn },
    DiagnosticUnderlineInfo  = { undercurl = true, sp = c.diag_info },
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.diag_hint },

    -- Diff
    DiffAdd    = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_del },
    DiffText   = { bg = c.diff_text },
    Added      = { fg = c.sign_add },
    Removed    = { fg = c.sign_delete },
    Changed    = { fg = c.sign_change },

    -- Git signs
    GitSignsAdd    = { fg = c.sign_add },
    GitSignsChange = { fg = c.sign_change },
    GitSignsDelete = { fg = c.sign_delete },

    -- Fold / UFO
    UfoFoldedBg          = { bg = c.fold },
    UfoFoldedFg          = { fg = c.comment },
    UfoPreviewSbar       = { bg = c.cursorline },
    UfoPreviewThumb      = { bg = c.comment },
    UfoPreviewWinBar     = { bg = c.statusline },
    UfoPreviewCursorLine = { bg = c.cursorline },
    UfoFoldedEllipsis    = { fg = c.comment },
    UfoCursorFoldedLine  = { bg = c.cursorline },

    -- Mini.statusline
    MiniStatuslineModeNormal  = { fg = c.bg_solid, bg = c.normalmode, bold = true },
    MiniStatuslineModeInsert  = { fg = c.bg_solid, bg = c.insertmode, bold = true },
    MiniStatuslineModeVisual  = { fg = c.bg_solid, bg = c.visualmode, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg_solid, bg = c.replacemode, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg_solid, bg = c.commandmode, bold = true },
    MiniStatuslineModeOther   = { fg = c.bg_solid, bg = c.commandmode, bold = true },
    MiniStatuslineDevinfo     = { fg = c.fg, bg = c.cursorline },
    MiniStatuslineFilename    = { fg = c.fg, bg = c.statusline },
    MiniStatuslineFileinfo    = { fg = c.comment, bg = c.statusline },
    MiniStatuslineInactive    = { fg = c.linenr, bg = c.statusline },

    -- Render Markdown
    RenderMarkDownCode = { bg = c.bg },

    -- Rainbow delimiters
    RainbowDelimiterRed    = { fg = c.keyword },
    RainbowDelimiterOrange = { fg = "#e8ba35" },
    RainbowDelimiterYellow = { fg = "#e8ba35" },
    RainbowDelimiterGreen  = { fg = "#54a857" },
    RainbowDelimiterCyan   = { fg = "#56b6c2" },
    RainbowDelimiterBlue   = { fg = "#359ff4" },
    RainbowDelimiterViolet = { fg = "#6e7ed9" },

    -- Lazy
    LazySpecial = { fg = c.fg },

    -- Treesitter
    ["@comment"]               = { fg = c.comment, italic = true },
    ["@string"]                = { fg = c.string },
    ["@string.escape"]         = { fg = c.keyword },
    ["@character"]             = { fg = c.string },
    ["@number"]                = { fg = c.number },
    ["@boolean"]               = { fg = c.boolean, bold = true },
    ["@constant"]              = { fg = c.constant, italic = true },
    ["@constant.builtin"]      = { fg = c.constant },

    ["@string.yaml"]           = { fg = c.fg },
    ["@property.yaml"]         = { fg = c.boolean, bold = true },

    ["@function"]              = { fg = c.Function },
    ["@function.call"]         = { fg = c.Function },
    ["@function.builtin"]      = { fg = c.Function, italic = true },
    ["@method"]                = { fg = c.Function },
    ["@constructor"]           = { fg = c.keyword },

    ["@parameter"]             = { fg = c.variable },
    ["@variable"]              = { fg = c.variable },
    ["@variable.parameter"]    = { fg = c.variable },
    ["@field"]                 = { fg = c.property },
    ["@property"]              = { fg = c.property },
    ["@type"]                  = { fg = c.fg },
    ["@type.builtin"]          = { fg = c.fg },
    ["@namespace"]             = { fg = c.fg },

    ["@operator"]              = { fg = c.fg },
    ["@keyword"]               = { fg = c.keyword, bold = true },
    ["@keyword.function"]      = { fg = c.keyword, bold = true },
    ["@keyword.operator"]      = { fg = c.keyword },
    ["@keyword.return"]        = { fg = c.keyword, bold = true },

    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"]   = { fg = c.fg },
    ["@punctuation.special"]   = { fg = c.keyword },

    ["@markup.heading"]        = { fg = c.Function, bold = true },
    ["@markup.link"]           = { fg = c.number, underline = true },
    ["@markup.link.url"]       = { fg = c.number, underline = true },
    ["@markup.raw"]            = { fg = c.string },
    ["@markup.strong"]         = { bold = true },
    ["@markup.italic"]         = { italic = true },
    ["@markup.list"]           = { fg = c.keyword },
    ["@tag"]                   = { fg = c.keyword },
    ["@tag.attribute"]         = { fg = c.property },
    ["@tag.delimiter"]         = { fg = c.fg },

    -- LSP semantic tokens (generic)
    ["@lsp.type.class"]         = { fg = c.fg },
    ["@lsp.type.type"]          = { fg = c.fg },
    ["@lsp.type.interface"]     = { fg = c.fg },
    ["@lsp.type.enum"]          = { fg = c.fg },
    ["@lsp.type.namespace"]     = { fg = c.fg },
    ["@lsp.type.property"]      = { fg = c.property },
    ["@lsp.type.variable"]      = { fg = c.fg },
    ["@lsp.type.parameter"]     = { fg = c.fg },
    ["@lsp.type.enumMember"]    = { fg = c.constant, italic = true },

    -- Kotlin treesitter
    ["@attribute.kotlin"]          = { fg = c.annotation },
    ["@constructor.kotlin"]        = { fg = c.keyword },
    ["@type.kotlin"]               = { fg = c.fg },
    ["@type.builtin.kotlin"]       = { fg = c.fg },
    ["@function.kotlin"]           = { fg = c.Function },
    ["@function.call.kotlin"]      = { fg = c.fg },
    ["@keyword.kotlin"]            = { fg = c.keyword, bold = true },
    ["@keyword.return.kotlin"]     = { fg = c.keyword, bold = true },
    ["@variable.parameter.kotlin"] = { fg = c.variable },
    ["@property.kotlin"]           = { fg = c.property },
    ["@field.kotlin"]              = { fg = c.property },
    ["@string.kotlin"]             = { fg = c.string },
    ["@comment.kotlin"]            = { fg = c.comment, italic = true },

    -- Kotlin LSP semantic tokens
    ["@lsp.type.class.kotlin"]        = { fg = c.fg },
    ["@lsp.type.struct.kotlin"]       = { fg = c.fg },
    ["@lsp.type.type.kotlin"]         = { fg = c.fg },
    ["@lsp.type.interface.kotlin"]    = { fg = c.fg },
    ["@lsp.type.enum.kotlin"]         = { fg = c.fg },
    ["@lsp.type.enumMember.kotlin"]   = { fg = c.constant, italic = true },
    ["@lsp.type.function.kotlin"]     = { fg = c.Function },
    ["@lsp.type.method.kotlin"]       = { fg = c.fg },
    ["@lsp.type.property.kotlin"]     = { fg = c.property },
    ["@lsp.type.variable.kotlin"]     = { fg = c.fg },
    ["@lsp.type.parameter.kotlin"]    = { fg = c.fg },
    ["@lsp.type.namespace.kotlin"]    = { fg = c.fg },
    ["@lsp.type.keyword.kotlin"]      = { fg = c.keyword, bold = true },
    ["@lsp.mod.static.kotlin"]        = { fg = c.constant, italic = true },
    ["@lsp.mod.readonly.kotlin"]      = { fg = c.fg },
    ["@lsp.typemod.method.declaration.kotlin"] = { fg = c.Function },

  }
  return groups

end

return M
