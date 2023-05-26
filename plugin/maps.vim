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
nmap ;n           :NERDTree

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
