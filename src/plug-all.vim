set runtimepath^=$TEST_DIR

call plug#begin('$TEST_DIR/bundle')

" My plugins
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-slash'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-journal'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vader.vim'
Plug 'junegunn/vim-ruby-x'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-after-object'
Plug 'junegunn/vim-xmark'

" Colors
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'

" Edit
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'rhysd/vim-grammarous'
Plug 'junegunn/vim-online-thesaurus'

" Tmux
Plug 'tpope/vim-tbone'

" Browsing
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'

Plug 'majutsushi/tagbar'
Plug 'justinmk/vim-gtfo'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" Lang
Plug 'vim-ruby/vim-ruby'
Plug 'kovisoft/paredit'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-slamhound'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-rails'
Plug 'derekwyatt/vim-scala'
Plug 'ensime/ensime-vim'
Plug 'honza/dockerfile.vim'
Plug 'solarnz/thrift.vim'
Plug 'dag/vim-fish'
Plug 'chrisbra/unicode.vim'

" Lint
Plug 'scrooloose/syntastic'

call plug#end()
" plug#end() does `filetype plugin indent on` and `syntax enable`
