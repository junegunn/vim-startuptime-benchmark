set runtimepath^=$TEST_DIR

call plug#begin('$TEST_DIR/bundle')

" My plugins
Plug 'junegunn/vim-easy-align',       { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity']      }
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
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }
Plug 'junegunn/vim-ruby-x', { 'on': 'RubyX' }
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
Plug 'tpope/vim-commentary',        { 'on': '<Plug>Commentary' }
Plug 'mbbill/undotree',             { 'on': 'UndotreeToggle'   }
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'rhysd/vim-grammarous'
Plug 'junegunn/vim-online-thesaurus'

" Tmux
Plug 'tpope/vim-tbone'

" Browsing
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'majutsushi/tagbar',   { 'on': 'TagbarToggle' }
Plug 'justinmk/vim-gtfo'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" Lang
Plug 'vim-ruby/vim-ruby'
Plug 'kovisoft/paredit',    { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
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
Plug 'tpope/vim-rails',      { 'for': []      }
Plug 'derekwyatt/vim-scala'
Plug 'ensime/ensime-vim',    { 'for': 'scala' }
Plug 'honza/dockerfile.vim'
Plug 'solarnz/thrift.vim'
Plug 'dag/vim-fish'
Plug 'chrisbra/unicode.vim', { 'for': 'journal' }

" Lint
Plug 'scrooloose/syntastic', { 'on': 'SyntasticCheck' }

call plug#end()
" plug#end() does `filetype plugin indent on` and `syntax enable`
