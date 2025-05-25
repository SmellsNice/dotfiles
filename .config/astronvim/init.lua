-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

local function set_transparency()
  vim.cmd [[
hi Normal guibg=NONE ctermbg=NONE
hi NormalNC guibg=NONE ctermbg=NONE
" hi Comment guibg=NONE ctermbg=NONE
" hi Constant guibg=NONE ctermbg=NONE
" hi Special guibg=NONE ctermbg=NONE
" hi Identifier guibg=NONE ctermbg=NONE
" hi Statement guibg=NONE ctermbg=NONE
" hi PreProc guibg=NONE ctermbg=NONE
" hi Type guibg=NONE ctermbg=NONE
" hi Underlined guibg=NONE ctermbg=NONE
" hi Todo guibg=NONE ctermbg=NONE
" hi String guibg=NONE ctermbg=NONE
" hi Function guibg=NONE ctermbg=NONE
" hi Conditional guibg=NONE ctermbg=NONE
" hi Repeat guibg=NONE ctermbg=NONE
" hi Operator guibg=NONE ctermbg=NONE
" hi Structure guibg=NONE ctermbg=NONE
hi WinSeparator guifg=#928374 guibg=NONE
hi Folded guibg=NONE ctermbg=NONE
hi FoldColumn guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi CursorLineFold guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi StatusLine guibg=NONE ctermbg=NONE
hi StatusLineNC guibg=NONE ctermbg=NONE 
hi VertSplit guibg=NONE ctermbg=NONE
hi TabLine guibg=NONE ctermbg=NONE
hi TabLineFill guibg=NONE ctermbg=NONE
hi TabLineSel guibg=NONE ctermbg=NONE
hi Pmenu guibg=NONE ctermbg=NONE
hi PmenuSel guibg=NONE ctermbg=NONE
hi NeoTreeNormal guibg=NONE ctermbg=NONE
hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
hi NeoTreeStatusLine guibg=NONE ctermbg=NONE
hi NeoTreeStatusLineNC guibg=NONE ctermbg=NONE
hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
hi NeoTreeMessage guifg=#928374
hi NeoTreeDotfile guifg=#928374
hi NeoTreeFadeText1 guifg=#928374
hi NeoTreeFadeText2 guifg=#928374
hi NeoTreeDimText guifg=#928374
hi NeoTreeTabInactive guifg=#928374 guibg=NONE 
hi NeoTreeTabSeparatorInactive guifg=#928374 guibg=NONE
hi NeoTreeTabSeparatorActive guifg=#928374 guibg=NONE
hi NormalFloat guibg=NONE ctermbg=NONE
hi NvimTreeNormal guibg=NONE ctermbg=NONE
hi WinBar guibg=NONE ctermbg=NONE
hi WinBarNC guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi DiagnosticVirtualTextOk guifg=#B8BB26 guibg=NONE
hi DiagnosticSignError guifg=#FB4934 guibg=NONE
hi DiagnosticSignWarn guifg=#FABD2F guibg=NONE
hi DiagnosticSignInfo guifg=#83A598 guibg=NONE
hi DiagnosticSignHint guifg=#689D6A guibg=NONE
hi DiagnosticSignOk guifg=#B8BB26 guibg=NONE
hi PmenuSel cterm=bold gui=bold guifg=#928374
]]
end

-- Apply transparency settings initially
set_transparency()
