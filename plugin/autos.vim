" My autocommands - make changes on https://github.com/shplatt/vim-opts

if has("autocmd")
   autocmd BufRead *.txt  set tw=95
   autocmd BufRead *.doc  set tw=95
   autocmd BufRead *.v[h] set ff=unix
   autocmd BufRead *.v[h] set filetype=verilog
   autocmd BufRead *.[fF] set syntax=c
   autocmd BufRead Makefile set ts=8 noexpandtab wm=0
   autocmd BufNewFile,BufEnter *.txt set wm=8
   autocmd BufNewFile,BufEnter *.txt se fo=crq2
   autocmd BufNewFile,BufEnter *.txt se comments+=n://
   autocmd BufNewFile,BufEnter *.c set wm=8
   autocmd BufNewFile,BufEnter *.c se fo=crq2
   autocmd BufNewFile,BufEnter *.h set wm=8
   autocmd BufNewFile,BufEnter *.h se fo=crq2
   autocmd BufNewFile,BufEnter leclint.rpt set syntax=off

   autocmd BufEnter *.sv,*.svh,*.svi set formatoptions-=t
   autocmd BufEnter *.sv,*.svh,*.svi set tw=95
   autocmd BufEnter *.sv,*.svh,*.svi set commentstring=//\ %s " used by vim-commentary
   autocmd BufEnter *.sv,*.svh,*.svi set indentexpr=          " SV indentation bugs me, turning off
   autocmd BufEnter *.sv,*.svh,*.svi set comments+=n://
   autocmd BufEnter *.sv,*.svh,*.svi set includeexpr=substitute(v:fname,'$','.sv','')
   autocmd BufEnter *.sv,*.svh,*.svi
                     \ let b:match_words = '\<if\>:\<else\>'
                        \ . ',\<begin\>:\<end\>'
                        \ . ',\<task\>:\<endtask\>'
                        \ . ',\<case\>:\<endcase\>'
                        \ . ',\<function\>:\<endfunction\>'
                        \ . ',\<class\>:\<endclass\>'
                        \ . ',\<module\>:\<endmodule\>'
                        \ . ',\<program\>:\<endprogram\>'
                        \ . ',\<package\>:\<endpackage\>'
                        \ . ',\<clocking\>:\<endclocking\>'
                        \ . ',\<interface\>:\<endinterface\>'
                        \ . ',\<generate\>:\<endgenerate\>'
                        \ . ',\<fork\>:\<join\>\|\<join_none\>\|\<join_any\>'

   set viewoptions-=options
   set viewoptions-=cursor
   augroup remember_folds
     autocmd!
     autocmd BufWinLeave * mkview
     autocmd BufWinEnter * silent! loadview
   augroup END

   " Added 2021-3-1
   " Don't want to open a file with last cursor position
   " This started after migrating to CentOS 7
   au! redhat BufReadPost

endif
