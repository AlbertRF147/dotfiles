noremap <SPACE> <Nop>
let mapleader =" "
noremap <Leader>q :q<CR>
noremap <Leader>w <C-w>
noremap <Leader><Leader> <C-^>
noremap <Leader>s :w<CR>

" Easy insert mode escape
:inoremap jj <Esc>

" Pane controls
noremap <C-w>v <C-w>v<C-w>k

" Vertical help
command -nargs=* -complete=help Help vertical belowright help <args>

" Center search results
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Remove trailing whitespaces
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

let tips = ['gD => declaration', 'gd => definition', 'K => hover', 'gi => implementation', '<C-k> => signature help', '<space>wa => add workspace folder', '<space>wr => remove workspace folder', '<space>wl => list workspace folder', '<space>D => type definition', '<space>rn => rename', '<space>ca => code action', 'gr => references', '<space>e => show line diagnostics', '[d => next diagnostic', ']d => prev diagnostic', '<space>l => view diagnostics list', '<space>f => format']

" Modal creation function
noremap <F6> :call ModalWindow(tips)<CR>

" Telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Compe mappings
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" Qubit
nnoremap <leader>e1 :!qubit pull<CR>
nnoremap <leader>e2 :!qubit push<CR>

" VSnip mappings
imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand)'         : '<C-j>'
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" Jump forward or backward
imap <expr> <S-l>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<S-l>'
smap <expr> <S-l>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<S-l>'
imap <expr> <S-h> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-h>'
smap <expr> <S-h> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-h>'

" Undo tree
nnoremap <Leader>u :UndotreeToggle<CR>
if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Harpoon
nnoremap <silent><leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
"nnoremap <silent><leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <silent><C-1> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><C-2> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><C-3> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><C-4> :lua require("harpoon.ui").nav_file(4)<CR>
"nnoremap <silent><leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
"nnoremap <silent><leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
"nnoremap <silent><leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
"nnoremap <silent><leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>
nnoremap <silent><C-l> :lua require("harpoon.ui").nav_next()<CR>
nnoremap <silent><C-h> :lua require("harpoon.ui").nav_prev()<CR>
