set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'leafgarland/typescript-vim'
Plugin 'clausreinke/typescript-tools.vim'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
"AutoCompletePlugin
Plugin 'Valloric/YouCompleteMe'
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable                   " enable syntax processing

" TABS AND SPACES
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4
set expandtab                   " tabs are spaces
let g:typescript_indent_disable = 1 " Disable special typescript indents
" ifiletype plugin indent on       " load filetype-specific indent files

" UI
set number                      " show line number
set showcmd                     " show command in bottom bar
"set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when needed
set showmatch                   " highlight matching [{()}]

set virtualedit=all             " allows cursor position in invalid space
set cpoptions+=$                " visual indicator for i.e replace

let base16colorspace=16  " Access colors present in 256 colorspace
set t_Co=16 "background and colorscheme
set background=dark
colorscheme base16-flat

"Typescript settings
let g:typescript_compiler_options = '-sourcemap' "compiler options
autocmd QuickFixCmdPost [^l]* nested cwindow " shows Quickfix if :make fails
autocmd QuickFixCmdPost    l* nested lwindow
    au BufRead,BufNewFile *.ts        setlocal filetype=typescript
