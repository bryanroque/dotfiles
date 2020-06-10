" this removes default mappings
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

" bd for bi-directional
" map <Leader>w <Plug>(easymotion-bd-w)
" map <Leader>W <Plug>(easymotion-bd-W)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

map <Leader>f <Plug>(easymotion-bd-f)
map <Leader>w <Plug>(easymotion-bd-w)

" colors
hi link EasyMotionTarget Search
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search
hi link EasyMotionShade Comment
