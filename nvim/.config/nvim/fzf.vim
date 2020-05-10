nnoremap <C-p> :call FilesOrGFiles()<CR>
nnoremap <C-y> :Buffers<CR>
" <C-_> is actually <C-/>
nnoremap <C-_> :BLines<CR>

fun! FilesOrGFiles()
    let is_git = system('git status')
    if v:shell_error
        :Files
    else
        :GFiles 
    endif
endfun

if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p 70% ' }
  let g:fzf_preview_window = 'right:45%'
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
endif

