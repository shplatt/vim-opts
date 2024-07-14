" My VIM options - make changes on https://github.com/shplatt/vim-opts

set   autoindent             " always set autoindenting on
set nobackup                 " Don't create a backup file
set   bs=2                   " allow backspacing over everything in insert mode
set   clipboard=autoselect   " Visual mode automatically places selection on clipboard
set noesckeys                " Don't allow function/arrow keys in insert mode
set   expandtab              " Expand tab key presses to spaces 
set   history=50             " keep 50 lines of command line history
set   ignorecase             " Ignore case during all searches
set   incsearch              " Enable incremental search
set   isfname-=,             " Don't want comma to be part of a file name
set   joinspaces             " Join cmd inserts 2 spaces after .?!
set   mouse=a                " Enable mouse in terminal windows
set   nrformats-=octal       " I mean who uses octal anyway?!
set   ruler                  " show the cursor position all the time
set   scrolloff=3            " keep 3 lines visible at top and bottom
set   shiftwidth=1           " << and >> indent by 1 char
set noshowmatch              " Don't briefly jump to matching ), }, ], etc.
set   sidescroll=1           " Horiz. scroll step - only used when wrap is off
set   smartcase              " Override ignorecase when upper case in search patt.
set   spelllang=en_us        " Mercan
set   tabpagemax=15          " Increase # tabs opened using -p cmd line switch
set   ts=3                   " Set tab stop to 3
set   updatecount=20         " Update swapfile after this many chars typed
set   updatetime=2000        " Update swapfile after this many miliseconds have passed
set   vb t_vb=               " No bells... not even visually
set   viminfo='100,\"50      " read/write a .viminfo file, store no more than 50 lines of regs
set   wildmenu               " Show completion menu
set   wildmode=list:longest  " Cmd-line completion completes the longest string; displays wildmenu
set   wrapmargin=2           " Start wrapping 2 chars from right of window
set nowritebackup            " Don't create a backup file

set   formatoptions=tcq2r    " t   Auto-wrap text
                             " c   Auto-wrap comments
                             " q   gq formats comments
                             " r   Insert comment leader after <enter>
                             " 2   First line has one indent; remaining lines follow second line

set statusline=%<%f\ %y\ \(%n\)%a%h%m%r%=0x%B\ \ \ L:%l/%L\ C:%c%V\ \ \ %P
set comments=s1:/*,mb:*,ex:*/,://,b:#,b:##,b:###,:%,:XCOMM,n:>,fb:-,b:@

"
" Project paths
set path  =,,                     " Current directory
set path +=.                      " Directory of current file
set path +=./..                   " Directory above current file
set path +=./../..                " Two directories above current file
set path +=./*                    " All subdirectories in directory of current file
set path +=$WS_TOP/*/ip/rtl       " rtl dir in current workspace
set path +=$WS_TOP/*/ip/rtl/*     " rtl subdirs in current workspace
set path +=$WS_TOP/tsbs/*/rtl     " All TSB rtl dirs in current workspace
set path +=$WS_TOP/tsbs/*/rtl/*   " All TSB rtl subdirs in current workspace
set path +=$WS_TOP/cadips/*/rtl   " All cadip rtl dirs in current workspace
set path +=$WS_TOP/cadips/*/rtl/* " All cadip rtl subdirs in current workspace

" Abbreviations
ia teh the
ia aff always_ff @ (posedge clk or negedge rstb)   if (!rstb)   beginend<BS><BS><BS>else   beginend<esc>
ia fsm always_comb   beginstate_d = state;case (state)   IDLE   : begin         end<BS><BS><BS><BS><BS><BS><BS><BS><BS>default: state_d = IDLE;<BS><BS><BS>endcaseend<ESC>
ia fi+ for (int i=0; i<NUM; i++)<ESC>
ia fi- for (int i=NUM-1; i>=0; i--)<ESC>
ia fj+ for (int j=0; j<NUM; j++)<ESC>
ia fj- for (int j=NUM-1; j>=0; j--)<ESC>

ia svm <esc>:set paste!<cr>i
   \module %<bs><bs><bs>#()();
   \//---------------------------------------------------------------------------------------------
   \//  Variables
   \//---------------------------------------------------------------------------------------------
   \//---------------------------------------------------------------------------------------------
   \//  Flops
   \//---------------------------------------------------------------------------------------------
   \always_ff @ (posedge clk or negedge rstb)
   \   if (!rstb)
   \      begin
   \      end
   \   else
   \      begin
   \      end
   \
   \endmodule<esc>:set paste!<cr><c-l>


" Plugin: Ctrl-P
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.HWCM', '.WS_CD_STOP']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_switch_buffer = 'Et'
