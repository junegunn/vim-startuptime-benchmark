set runtimepath^=$TEST_DIR

filetype off

set rtp+=$TEST_DIR/Vundle.vim
call vundle#begin()
let vundle#bundle_dir = expand('$TEST_DIR/bundle')

" My plugins
Plugin 'junegunn/vim-easy-align'
Plugin 'junegunn/vim-github-dashboard'
Plugin 'junegunn/vim-emoji'
Plugin 'junegunn/vim-pseudocl'
Plugin 'junegunn/vim-slash'
Plugin 'junegunn/vim-fnr'
Plugin 'junegunn/vim-peekaboo'
Plugin 'junegunn/vim-journal'
Plugin 'junegunn/seoul256.vim'
Plugin 'junegunn/gv.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/vader.vim'
Plugin 'junegunn/vim-ruby-x'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'junegunn/vim-after-object'
Plugin 'junegunn/vim-xmark'

" Colors
Plugin 'tomasr/molokai'
Plugin 'chriskempson/vim-tomorrow-theme'

" Edit
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'rhysd/vim-grammarous'
Plugin 'junegunn/vim-online-thesaurus'

" Tmux
Plugin 'tpope/vim-tbone'

" Browsing
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'

Plugin 'majutsushi/tagbar'
Plugin 'justinmk/vim-gtfo'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'

" Lang
Plugin 'vim-ruby/vim-ruby'
Plugin 'kovisoft/paredit'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-slamhound'
Plugin 'fatih/vim-go'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-rails'
Plugin 'derekwyatt/vim-scala'
Plugin 'ensime/ensime-vim'
Plugin 'honza/dockerfile.vim'
Plugin 'solarnz/thrift.vim'
Plugin 'dag/vim-fish'
Plugin 'chrisbra/unicode.vim'

" Lint
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on
syntax enable
