" My key maps - make changes on https://github.com/shplatt/vim-opts

" j and k should behave the same regardless of long line wrapping
nmap j            gj
nmap k            gk

" Format paragraph
map Q             gqip

" Search for visual selection
vnoremap *        y/<C-R>"<CR>

" Stay in visual mode when left or right shifting
vmap <silent> >   >gv
vmap <silent> <   <gv

" Don't really use ( and ) as is...  Would rather have it behave like [( and ])
nmap (            [(
nmap )            ])


" Zip to a file in the arg list
nmap ,a           :argu<space> 

" Switch between two buffers
nmap ,b           :b#<CR>

" Treat the current file as a "document" - set the text width
nmap ,d           :set tw=95<CR>

" Display the arg list
nmap ,l           :ls<CR>

" Toggle terminal pasting (in xterm or similar)
nmap ,p           :set paste!<CR>

" Toggle spell checking
nmap ,s           :set spell!<CR>

" Set tab stop for viewing files w/ tabs   >:(
nmap ,t           :set ts=8<CR>

" Open up all buffers in tabs
nmap ,T           :tab al<CR>

" Want simpler redo (why I don't like emacs!)
nmap ,u           <C-R>

" Enter/exit virtual edit mode
nmap ,v           :set ve=all<CR>
nmap ,vv          :set ve=<CR>

" Toggle between two windows (inside same VIM)
nmap ,w           <C-W>p

" Start NERDTree
nmap ;n           :NERDTree<CR>

" Don't want errors for these:
nmap :Q           :q
nmap :W           :w
nmap :Rew         :rew
nmap :Set         :set
nmap :Tabe        :tabe


" Diff the current file (use 'u'ndo to go back)
nmap <C-D>        1G!Gdiff % -<CR>

" Get VIM help for the word under the cursor
nmap <C-K>        yiw:he <C-R>0<CR>

" Toggle search highlighting
nmap <C-N>        :set hls!<CR>

" Ctrl-Insert copies to clipboard
vmap <C-Insert>   "+y

" Shift-Insert pastes from clipboard
nmap <S-Insert>   "+P
imap <S-Insert>   <C-R>+

" Remove this annoying "feature".
nmap <ESC>h       h

" Circular windows navigation
nnoremap <Tab>    <C-W>w
nnoremap <S-Tab>  <C-W>W

" Toggle line wrapping and horizontal scrollbar
nnoremap <silent><expr> <F2> ':set wrap! go'.'-+'[&wrap]."=b\r"

" Toggle highlighting for word under cursor
nnoremap <F10>    :set invhls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>/<BS>


" Control-Shift-PageUp drags the active tab page to the left (wraps around)
imap <C-S-PageUp> :call DragTagLeft()<CR>
nmap <C-S-PageUp> :call DragTagLeft()<CR>
imap <A-Left> :call DragTagLeft()<CR>
nmap <A-Left> :call DragTagLeft()<CR>
function! DragTagLeft()
   let n = tabpagenr()
   execute 'tabmove' (n == 1 ? "" : n - 2)
   " Use this line to allow tabs to wrap around
   "execute 'tabmove' (n == 1 ? "" : n - 2)
   " Use this line to not allow tabs to wrap around
   execute 'tabmove' (n == 1 ? 0 : n - 2)
   " force a redraw of the tab line
   let &showtabline = &showtabline
endfunction

" Control-Shift-PageDown drags the active tab page to the right (wraps around)
imap <C-S-PageDown> :call DragTagRight()<CR>
nmap <C-S-PageDown> :call DragTagRight()<CR>
imap <A-Right> :call DragTagRight()<CR>
nmap <A-Right> :call DragTagRight()<CR>
function! DragTagRight()
   let n = tabpagenr()
   "execute 'tabmove' (n == tabpagenr('$') ? 0 : n)
   execute 'tabmove' (n == tabpagenr('$') ? "" : n)
   " force a redraw of the tab line
   let &showtabline = &showtabline
endfunction

" Control-Shift-Home puts the active tab page the furthest left
imap <C-S-Home> :call TabFarLeft()<CR>
nmap <C-S-Home> :call TabFarLeft()<CR>
imap <A-Home> :call TabFarLeft()<CR>
nmap <A-Home> :call TabFarLeft()<CR>
function! TabFarLeft()
   execute 'tabmove' 0
   " force a redraw of the tab line
   let &showtabline = &showtabline
endfunction

" Control-Shift-End puts the active tab page the furthest right
imap <C-S-End> :call TabFarRight()<CR>
nmap <C-S-End> :call TabFarRight()<CR>
imap <A-End> :call TabFarRight()<CR>
nmap <A-End> :call TabFarRight()<CR>
function! TabFarRight()
   execute 'tabmove' ""
   " force a redraw of the tab line
   let &showtabline = &showtabline
endfunction
