" FIX (with library)
" This should be executed BEFORE all others!
for f in glob('~/.vim/fix/*.vim', 0, 1)
   execute 'source' f
endfor


" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Helpful tool for git view
Plugin 'tpope/vim-unimpaired'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugin vim-colorschemes
Plugin 'flazz/vim-colorschemes'

" YouCompleteMe 
Plugin 'Valloric/YouCompleteMe'

" NERD tree
Plugin 'scrooloose/nerdtree'

" Tern For Vim
Plugin 'marijnh/tern_for_vim'

" Vim Airline Bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Ultisnip
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'

" Powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Git Glutter
Plugin 'airblade/vim-gitgutter'

" Image preview for Vim
Plugin 'ashisha/image.vim'

" JS ctags
Plugin 'ramitos/jsctags'

" Tagbar
Plugin 'majutsushi/tagbar'

" Vim Devicons
Plugin 'ryanoasis/vim-devicons'

" <<< TEXT MANUPULATION >>>

" Surround text with parentheses or quotation marks
Plugin 'tpope/vim-surround'

" Indentation helper
Plugin 'nathanaelkane/vim-indent-guides'

" Auto insert closing brackets
Plugin 'Raimondi/delimitMate'

" NERD Commenter
Plugin 'scrooloose/nerdcommenter'

" Vim EasyMotion
Plugin 'easymotion/vim-easymotion'

" <<< LANGUAGE SUPPORT >>>

" General Syntax Check
Plugin 'scrooloose/syntastic'

" JavaScript Support
Plugin 'pangloss/vim-javascript'

" JSX Syntax
Plugin 'mxw/vim-jsx'

" JavaScript Library Syntax
Plugin 'othree/javascript-libraries-syntax.vim'

" VIM Go
Plugin 'fatih/vim-go'

" VIM Crystal
Plugin 'rhysd/vim-crystal'

" React Snippet
Plugin 'justinj/vim-react-snippets'

" Emmet
Plugin 'mattn/emmet-vim'

" <<< EXTENSION >>>

" Use dash inside vim
Plugin 'rizzatti/dash.vim'

" Instant Markdown preview, requires `npm -g install instant-markdown-d` 
Plugin 'suan/vim-instant-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" GUI compatibility setups
if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        "set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h18
        set guifont=Meslo\ LG\ S\ Regular\ Nerd\ Font\ Complete:h18
        set encoding=utf-8
    endif
endif



" Basic Settings
set showcmd
" Syntax Highlight
syntax on
colorscheme monokai
" Tab related
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set cindent
" Wrap
set whichwrap+=<,>,h,l,[,]
" Stop indening when pasting with the mouse
set pastetoggle=<f5>
" Stop tab converting in Makefiles
autocmd Filetype make setlocal noexpandtab
" Show line number
set number
" Highlight search result
set hlsearch
" Set mapleader for later nnoremap <leader> settings
let mapleader = ','

" Run custom presource configs so that they could be used in source/*.vim files
for f in glob('~/.vim/presource-config/*.vim', 0, 1)
    execute 'source' f
endfor

" Run splitted configs
for f in glob('~/.vim/source/*.vim', 0, 1)
    execute 'source' f
endfor
 
" Run custom vimscripts (they are run AFTER source files)
for f in glob('~/.vim/custom/*.vim', 0, 1)
    execute 'source' f
endfor
