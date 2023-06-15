local options = {
    termguicolors=true,
    title=true,
    number=true,
    wrap=true,
    showmatch=true,
    list=true,
    listchars="tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲",
    matchtime=3,
    ignorecase=true,
    smartcase=true,
    wrapscan=true,
    hlsearch=true,
    incsearch=true,
    inccommand="split",
    smartindent=true,
    expandtab=true,
    tabstop=4,
    softtabstop=4,
    shiftwidth=4,
    wildmode="list:longest",
    infercase=true,
    wildmenu=true,
    backspace="indent,eol,start",
    hidden=true,
    textwidth=0,
    history=500,
    encoding="utf-8",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.termguicolors = true
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("filetype plugin indent on")
vim.cmd("filetype plugin on")

vim.cmd("let g:netrw_liststyle=1")
vim.cmd("let g:netrw_banner=0")
vim.cmd('let g:netrw_sizestyle="H"')
vim.cmd('let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"')
vim.cmd("let g:netrw_preview=1")

