local M = {}

local function set_hi_grps()
    local hl = vim.api.nvim_set_hl

    local colors = {
        guiNO = "none",
        gui00 = "#202020",
        gui01 = "#252525",
        gui02 = "#464646",
        gui03 = "#525252",
        gui04 = "#ababab",
        gui05 = "#b9b9b9",
        gui06 = "#e3e3e3",
        gui07 = "#f7f7f7",
        gui08 = "#efefef",
        gui09 = "#999999",
        gui0A = "#a0a0a0",
        gui0B = "#bd9391",
        gui0C = "#868686",
        gui0D = "#686868",
        gui0E = "#8e8e8e",
        gui0F = "#5e5e5e",
        gui0G = "#8fa856",
        gui0H = "#eadeb4"
    }

    -- Standard Highlight groups
    hl(0, "Normal",                    { fg = colors.gui05, bg = colors.gui00 })
    hl(0, "Bold",                      { bold = true })
    hl(0, "Debug",                     { fg = colors.gui08 })
    hl(0, "Directory",                 { fg = colors.gui0D })
    hl(0, "Error",                     { fg = colors.gui00, bg = colors.gui08 })
    hl(0, "ErrorMsg",                  { fg = colors.gui08, bg = colors.gui00 })
    hl(0, "Exception",                 { fg = colors.gui08 })
    hl(0, "FoldColumn",                { fg = colors.gui0C, bg = colors.gui01 })
    hl(0, "Folded",                    { fg = colors.gui03, bg = colors.gui01 })
    hl(0, "IncSearch",                 { fg = colors.gui01, bg = colors.gui09 })
    hl(0, "Italic",                    { italic = true })
    hl(0, "Macro",                     { fg = colors.gui08 })
    hl(0, "MatchParen",                { bg = colors.gui03 })
    hl(0, "ModeMsg",                   { fg = colors.gui0B })
    hl(0, "MoreMsg",                   { fg = colors.gui0B })
    hl(0, "Question",                  { fg = colors.gui0D })
    hl(0, "Search",                    { fg = colors.gui01, bg = colors.gui0A })
    hl(0, "Substitute",                { fg = colors.gui01, bg = colors.gui0A })
    hl(0, "SpecialKey",                { fg = colors.gui03 })
    hl(0, "TooLong",                   { fg = colors.gui08 })
    hl(0, "Underlined",                { fg = colors.gui08, underline = true })
    hl(0, "Visual",                    { bg = colors.gui02 })
    hl(0, "VisualNOS",                 { fg = colors.gui08 })
    hl(0, "WarningMsg",                { fg = colors.gui08 })
    hl(0, "WildMenu",                  { fg = colors.gui08, bg = colors.gui0A })
    hl(0, "Title",                     { fg = colors.gui0D })
    hl(0, "Conceal",                   { fg = colors.gui0D, bg = colors.gui00 })
    hl(0, "Cursor",                    { fg = colors.gui00, bg = colors.gui05 })
    hl(0, "NonText",                   { fg = colors.gui03 })
    hl(0, "LineNr",                    { fg = colors.gui03, bg = colors.gui00 })
    hl(0, "SignColumn",                { fg = colors.gui03, bg = colors.gui00 })
    hl(0, "StatusLine",                { fg = "#868690", 	bg = "#303030" })
    hl(0, "StatusLineNC",              { fg = colors.gui03, bg = colors.gui01 })
    hl(0, "VertSplit",                 { fg = colors.gui02, bg = colors.gui02 })
    hl(0, "ColorColumn",               { bg = colors.gui01 })
    hl(0, "CursorColumn",              { bg = colors.gui01 })
    hl(0, "CursorLine",                { bg = colors.gui01 })
    hl(0, "CursorLineNr",              { fg = colors.gui04, bg = colors.gui01 })
    hl(0, "QuickFixLine",              { bg = colors.gui01 })
    hl(0, "PMenu",                     { fg = colors.gui05, bg = colors.gui01 })
    hl(0, "PMenuSel",                  { fg = colors.gui01, bg = colors.gui05 })
    hl(0, "TabLine",                   { fg = colors.gui03, bg = colors.gui01 })
    hl(0, "TabLineFill",               { fg = colors.gui03, bg = colors.gui01 })
    hl(0, "TabLineSel",                { fg = colors.gui0B, bg = colors.gui01 })

    -- Standard syntax highlighting
    hl(0, "Boolean",                   { fg = colors.gui09 })
    hl(0, "Character",                 { fg = colors.gui0B })
    hl(0, "Comment",                   { fg = colors.gui0G })
    hl(0, "Conditional",               { fg = colors.gui0E })
    hl(0, "Constant",                  { fg = colors.gui09 })
    hl(0, "Define",                    { fg = colors.gui0E })
    hl(0, "Delimiter",                 { fg = colors.gui0F })
    hl(0, "Float",                     { fg = colors.gui09 })
    hl(0, "Function",                  { fg = colors.gui08 })
    hl(0, "Identifier",                { fg = colors.gui08 })
    hl(0, "Include",                   { fg = colors.gui0D })
    hl(0, "Keyword",                   { fg = colors.gui0H, bold = true})
    hl(0, "Label",                     { fg = colors.gui0A })
    hl(0, "Number",                    { fg = colors.gui09 })
    hl(0, "Operator",                  { fg = colors.gui05 })
    hl(0, "PreProc",                   { fg = colors.gui0A })
    hl(0, "Repeat",                    { fg = colors.gui0A })
    hl(0, "Special",                   { fg = colors.gui0C })
    hl(0, "SpecialChar",               { fg = colors.gui0F })
    hl(0, "Statement",                 { fg = colors.gui08 })
    hl(0, "StorageClass",              { fg = colors.gui0A })
    hl(0, "String",                    { fg = colors.gui0B })
    hl(0, "Structure",                 { fg = colors.gui0E })
    hl(0, "Tag",                       { fg = colors.gui0A })
    hl(0, "Todo",                      { fg = colors.gui0A, bg = colors.gui01 })
    hl(0, "Type",                      { fg = colors.gui0A })
    hl(0, "Typedef",                   { fg = colors.gui0A })

    -- C highlighting
    hl(0, "cOperator",                 { fg = colors.gui0C })
    hl(0, "cPreCondit",                { fg = colors.gui0E })

    -- C# highlighting
    hl(0, "csClass",                   { fg = colors.gui0A })
    hl(0, "csAttribute",               { fg = colors.gui0A })
    hl(0, "csModifier",                { fg = colors.gui0E })
    hl(0, "csType",                    { fg = colors.gui08 })
    hl(0, "csUnspecifiedStatement",    { fg = colors.gui0D })
    hl(0, "csContextualStatement",     { fg = colors.gui0E })
    hl(0, "csNewDecleration",          { fg = colors.gui08 })

    -- CSS highlighting
    hl(0, "cssBraces",                 { fg = colors.gui05 })
    hl(0, "cssClassName",              { fg = colors.gui0E })
    hl(0, "cssColor",                  { fg = colors.gui0C })

    -- Diff highlighting
    hl(0, "DiffAdd",                   { fg = colors.gui0G, bg = colors.guiNO })
    hl(0, "DiffChange",                { fg = colors.gui03, bg = colors.gui01 })
    hl(0, "DiffDelete",                { fg = colors.gui0B, bg = colors.guiNO })
    hl(0, "DiffText",                  { fg = colors.gui0D, bg = colors.gui01 })
    hl(0, "DiffAdded",                 { fg = colors.gui0G, bg = colors.guiNO })
    hl(0, "DiffFile",                  { fg = colors.gui08, bg = colors.guiNO })
    hl(0, "DiffNewFile",               { fg = colors.gui0B, bg = colors.guiNO })
    hl(0, "DiffLine",                  { fg = colors.gui0H, bg = colors.guiNO })
    hl(0, "DiffRemoved",               { fg = colors.gui0B, bg = colors.guiNO })

	-- Fugitive highlighting
    hl(0, "fugitiveHunk",              { fg = colors.gui04, bg = colors.guiNO })
    hl(0, "fugitiveStagedHeading",     { fg = colors.gui0G, bg = colors.guiNO })
    hl(0, "fugitiveUnstagedHeading",   { fg = colors.gui0H, bg = colors.guiNO })
    hl(0, "fugitiveUnstagedModifier",  { fg = colors.gui0H, bg = colors.guiNO })

    -- Git highlighting
    hl(0, "gitcommitOverflow",         { fg = colors.gui08 })
    hl(0, "gitcommitSummary",          { fg = colors.gui0B })
    hl(0, "gitcommitComment",          { fg = colors.gui03 })
    hl(0, "gitcommitUntracked",        { fg = colors.gui03 })
    hl(0, "gitcommitDiscarded",        { fg = colors.gui03 })
    hl(0, "gitcommitSelected",         { fg = colors.gui03 })
    hl(0, "gitcommitHeader",           { fg = colors.gui0E })
    hl(0, "gitcommitSelectedType",     { fg = colors.gui0D })
    hl(0, "gitcommitUnmergedType",     { fg = colors.gui0D })
    hl(0, "gitcommitDiscardedType",    { fg = colors.gui0D })
    hl(0, "gitcommitBranch",           { fg = colors.gui09, bold = true })
    hl(0, "gitcommitUntrackedFile",    { fg = colors.gui0A })
    hl(0, "gitcommitUnmergedFile",     { fg = colors.gui08, bold = true })
    hl(0, "gitcommitDiscardedFile",    { fg = colors.gui08, bold = true })
    hl(0, "gitcommitSelectedFile",     { fg = colors.gui0B, bold = true })

    -- GitGutter highlighting
    hl(0, "GitGutterAdd",              { fg = colors.gui0B, bg = colors.gui01 })
    hl(0, "GitGutterChange",           { fg = colors.gui0D, bg = colors.gui01 })
    hl(0, "GitGutterDelete",           { fg = colors.gui08, bg = colors.gui01 })
    hl(0, "GitGutterChangeDelete",     { fg = colors.gui0E, bg = colors.gui01 })

    -- HTML highlighting
    hl(0, "htmlBold",                  { fg = colors.gui0A })
    hl(0, "htmlItalic",                { fg = colors.gui0E })
    hl(0, "htmlEndTag",                { fg = colors.gui05 })
    hl(0, "htmlTag",                   { fg = colors.gui05 })

    -- Markdown highlighting
    hl(0, "markdownCode",              { fg = colors.gui0B })
    hl(0, "markdownError",             { fg = colors.gui05, bg = colors.gui00 })
    hl(0, "markdownCodeBlock",         { fg = colors.gui0B })
    hl(0, "markdownHeadingDelimiter",  { fg = colors.gui0D })
    hl(0, "markdownBlockquote",        { fg = colors.gui0B })

    -- PHP highlighting
    hl(0, "phpMemberSelector",         { fg = colors.gui05 })
    hl(0, "phpComparison",             { fg = colors.gui05 })
    hl(0, "phpParent",                 { fg = colors.gui05 })
    hl(0, "phpMethodsVar",             { fg = colors.gui0C })

    -- Python highlighting
    hl(0, "pythonOperator",            { fg = colors.gui0E })
    hl(0, "pythonRepeat",              { fg = colors.gui0E })
    hl(0, "pythonInclude",             { fg = colors.gui0H })
    hl(0, "pythonStatement",           { fg = colors.gui0H, bold = true })

    -- Ruby highlighting
    hl(0, "rubyAttribute",             { fg = colors.gui0D })
    hl(0, "rubyConstant",              { fg = colors.gui0A })
    hl(0, "rubyInterpolationDelimiter",{ fg = colors.gui0F })
    hl(0, "rubyRegexp",                { fg = colors.gui0C })
    hl(0, "rubySymbol",                { fg = colors.gui0B })
    hl(0, "rubyStringDelimiter",       { fg = colors.gui0B })

    -- SASS highlighting
    hl(0, "sassidChar",                { fg = colors.gui08 })
    hl(0, "sassClassChar",             { fg = colors.gui09 })
    hl(0, "sassInclude",               { fg = colors.gui0H })
    hl(0, "sassMixing",                { fg = colors.gui0E })
    hl(0, "sassMixinName",             { fg = colors.gui0D })

    -- Spelling highlighting
    hl(0, "SpellBad",                  { undercurl = true, sp = colors.gui08 })
    hl(0, "SpellLocal",                { undercurl = true, sp = colors.gui0C })
    hl(0, "SpellCap",                  { undercurl = true, sp = colors.gui0D })
    hl(0, "SpellRare",                 { undercurl = true, sp = colors.gui0E })
end

function M.setup()
	vim.cmd('highlight clear')
	vim.cmd('syntax reset')

	vim.opt.termguicolors = true
	vim.o.background      = 'dark'
	vim.g.colors_name     = 'idler'

	set_hi_grps()
end

return M
