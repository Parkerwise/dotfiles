function _G.pcall_markdown_sugar()
  vim.cmd([[
    augroup markdown
      autocmd!
	  au BufEnter *.md :syn match todoCheckbox '\v(\s+)?(\#+)'hs=e-4 conceal cchar=✦ 
	  au BufEnter *.md :syn match todoCheckbox '\v(-)' conceal cchar=•
	  au BufEnter *.md :syn match todoCheckbox '\v(\s+)?(---|\*)'hs=e-4 conceal cchar=⎯
      au BufEnter *.md :syn match todoCheckbox '\v(\s+)?(-|\*)\s\[\s\]'hs=e-4 conceal cchar=
      au BufEnter *.md :syn match todoCheckbox '\v(\s+)?(-|\*)\s\[x\]'hs=e-4 conceal cchar=
      au BufEnter *.md :syn match todoCheckbox '\v(\s+)?(-|\*)\s\[-\]'hs=e-4 conceal cchar=󰅘
      au BufEnter *.md :syn match todoCheckbox '\v(\s+)?(-|\*)\s\[\.\]'hs=e-4 conceal cchar=⊡
      au BufEnter *.md :syn match todoCheckbox '\v(\s+)?(-|\*)\s\[o\]'hs=e-4 conceal cchar=⬕ 
	  :hi! clear Conceal 
      :setlocal conceallevel=2
      :hi Conceal ctermfg=12 guifg=#934592 ctermbg=NONE guibg=NONE
    augroup END
  ]])
end

pcall_markdown_sugar()
vim.opt.foldmethod="indent"
vim.opt.foldminlines=0
vim.opt.foldlevelstart=99
