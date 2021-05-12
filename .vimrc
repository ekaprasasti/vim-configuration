" default vim
set noerrorbells
set noswapfile
set nobackup
set number
set nowrap
set smartindent
set incsearch
set signcolumn=yes
set encoding=UTF-8

" Start General Vim Shortcut
  " Split Window
  nmap ss :split<Return><C-w>w
  nmap sv :vsplit<Return><C-w>w

  " Move window
  map sh <C-w>h
  map sk <C-w>k
  map sj <C-w>j
  map sl <C-w>l
" End General Vim Shortcut

" Start vim-plug
  call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tomasiser/vim-code-dark'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'tomasiser/vim-code-dark'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mileszs/ack.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'preservim/nerdcommenter'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'jiangmiao/auto-pairs'
  call plug#end()
" End vim-plug

" Start NerdTree
  let g:NERDTreeGitStatusConcealBrackets = 1
  let g:NERDTreeGitStatusShowClean = 1
  let g:NERDTreeShowLineNumbers=1
  let g:NERDTreeQuitOnOpen=1
  let NERDTreeShowHidden=1

  nnoremap <C-n> :NERDTree<CR>
  nnoremap <C-b> :NERDTreeToggle<CR>
  nnoremap <C-e> :NERDTreeFind<CR>
  vmap ++ <plug>NERDCommenterToggle
  nmap ++ <plug>NERDCommenterToggle
" End NerdTree

" Start CtrlP
  set runtimepath^=~/.vim/bundle/ctrlp.vim

  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" End CtrlP

" Start indent
  set ts=4 sw=2 et
  let g:indent_guides_start_level = 2
  let g:indent_guides_guid_size = 1

  set expandtab
  set tabstop=2
  set softtabstop=2
" End indent

" start coc config
  source ~/.vimrc_coc
" end coc config

" Start Styling
  syntax enable
  set t_Co=256
  set t_ut=
  colorscheme codedark

  let g:airline_theme = 'codedark'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline#extensions#hunks#enabled=0
  let g:airline#extensions#branch#enabled = 1
  let g:airline_powerline_fonts = 1
" End Styling

" manual installation
"
" iterm, solarize, powerline, powerlevel:
" https://gist.github.com/kevin-smets/8568070
"
" in ~/.tmux.conf
" set -g default-terminal screen-256color
"
" set custom key binding in iterm
" cmd + p send to :CtrlP
" ctrl + shift + f send to :Ag
" cmd + / send to ++
" cmd + > send to :bn
" cmd + < send to :bp
