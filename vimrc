	syntax enable
	set tabstop=4
	set softtabstop=4
	set expandtab
	set number
    set mouse=a
    set showcmd
   
    "Enable the list of buffers
    let g:airline#extensions#tabline#enabled = 1

    "Show just the filename
    let g:airline#extensions#tabline#fnamemod = ':t' 

    " This allows buffers to be hidden if you've modified a buffer.
    " This is almost a must if you wish to use buffers in this way.
    set hidden

    " To open a new empty buffer
    " This replaces :tabnew which I used to bind to this mapping
    nmap <leader>T :enew<cr>

    " Move to the next buffer
    nmap <leader>l :bnext<CR>

    " Move to the previous buffer
    nmap <leader>h :bprevious<CR>

    " Close the current buffer and move to the previous one
    " This replicates the idea of closing a tab
    nmap <leader>bq :bp <BAR> bd #<CR>

    " Show all open buffers and their status
    nmap <leader>bl :ls<CR>
    
    nmap <leader>r :r ~/header.txt <cr>

	filetype indent on
	set wildmenu
	set lazyredraw
	set showmatch
	
	set incsearch
	set hlsearch

    if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

    endif
	
    call plug#begin()
	Plug 'junegunn/vim-easy-align'
    Plug 'scrooloose/syntastic'
	Plug 'altercation/vim-colors-solarized'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'ervandew/supertab'
	call plug#end()
