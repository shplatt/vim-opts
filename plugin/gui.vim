if has("gui_running")
   set columns=105            " 
   set lines=75               "
   set guioptions-=T          " Disable toolbar
   set guitablabel=%t%m
   set number
   set relativenumber
   
   " Non-Nerd-Fonts
   "----------------
   set guifont=Fixed\ 8
   "set guifont=MiscFixed\ 8
   "set guifont=Monospace\ Bold\ 9
   "set guifont=ProggyTinyTT\ 12
   "set linespace=0 " default
   
   " Nerd Fonts (patched to include many symbols used for visual flare)
   "--------------------------------------------------------------------
   "set guifont=JetBrainsMonoNL\ Nerd\ Font\ Mono\ 10   linespace=-2
   "set guifont=ProggyCleanTTCE\ Nerd\ Font\ Mono\ 12   linespace=0
   "set guifont=FiraMono\ Nerd\ Font\ Mono\ Medium\ 10    linespace=-3

   " 'gf' in GUI opens new tab
   nmap gf         <c-w>gf:call TabFarRight()<CR>
   nmap gF         <c-w>gF:call TabFarRight()<CR>
   " Adjust GVIM window size
   map <C-Right>   :set columns+=1<CR>
   map <C-Left>    :set columns-=1<CR>
   map <C-Down>    :set lines+=1<CR>
   map <C-Up>      :set lines-=1<CR>
   map <C-S-Right> :set columns+=10<CR>
   map <C-S-Left>  :set columns-=10<CR>
   " Open new tab and move to far right
   map <C-S-T>     :tabe<CR>:call TabFarRight()<CR>

   colorscheme murphy
   syntax on
   hi Special guifg=Orange
   hi Comment guifg=#80a0dd
   hi Search term=reverse ctermfg=0 ctermbg=14
   hi MatchParen ctermbg=black ctermfg=white
   hi StatusLine cterm=reverse ctermfg=white ctermbg=blue guifg=White guibg=darkblue
   hi Folded guibg=black guifg=red
   hi LineNr guifg=#555555 guibg=#222222

endif
